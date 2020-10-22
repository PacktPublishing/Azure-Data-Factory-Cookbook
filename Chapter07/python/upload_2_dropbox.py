# This script is based on https://github.com/dropbox/dropbox-sdk-python/blob/master/example/back-up-and-restore/backup-and-restore-example.py
import sys
import dropbox
import os
import glob

from dropbox.files import WriteMode
from dropbox.exceptions import ApiError, AuthError

# Access token
access_token = '<enter your generated access token>'  

source_dir = '.'  
dropbox_dir = '/DataFromAzure'  

# Uploads contents of LOCALDIR to Dropbox
def uploadToDropbox():
    src_files = glob.glob('./**/*.csv', recursive=True)
    for full_file_name in src_files:
        #full_file_name = os.path.join(source_dir, file_name)
        if os.path.isfile(full_file_name):
            file_name = os.path.basename(full_file_name)
            destination_file = dropbox_dir + "/" + file_name
            with open(full_file_name, 'rb') as f:
                print("Uploading " + full_file_name + " to Dropbox as " + destination_file)
                try:
                    dbx.files_upload(f.read(), destination_file, mode=WriteMode('overwrite'))
                except ApiError as err:
                    if (err.error.is_path() and
                        err.error.get_path().error.is_insufficient_space()):
                        sys.exit("ERROR: Cannot back up; insufficient space.")
                    elif err.user_message_text:
                        print(err.user_message_text)
                        sys.exit()
                    else:
                        print(err)
                        sys.exit()


# Check File Details
def checkFileDetails():
    print("Checking file details")

    for entry in dbx.files_list_folder('').entries:
        print("File list is : ")
        print(entry.name)


# Run the script 
if __name__ == '__main__':
    # Verify access_token is present
    if (len(access_token) == 0):
        sys.exit("ERROR: Please fill in the access_token value")

    # Create an instance of a Dropbox class
    print("Instantiate a Dropbox object...")
    dbx = dropbox.Dropbox(access_token)

    # Check that the access token 
    try:
        dbx.users_get_current_account()
    except AuthError as err:
        sys.exit(
            "ERROR: Invalid access token; try re-generating an access token from the app console on the web.")

    try:
        checkFileDetails()
    except Error as err:
        sys.exit("Error while checking file details")

    print("Copying files")
    uploadToDropbox()

    print("Done!")
