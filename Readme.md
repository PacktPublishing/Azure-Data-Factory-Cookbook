# Azure Data Factory Cookbook

<a href="https://www.packtpub.com/product/Azure-Data-Factory-Cookbook/9781800565296?utm_source=github&utm_medium=repository&utm_campaign=9781800565296"><img src="https://static.packt-cdn.com/products/9781800565296/cover/smaller" alt="Azure Data Factory Cookbook" height="256px" align="right"></a>

This is the code repository for [Azure Data Factory Cookbook](https://www.packtpub.com/product/Azure-Data-Factory-Cookbook/9781800565296?utm_source=github&utm_medium=repository&utm_campaign=9781800565296), published by Packt.

**Build and manage ETL and ELT pipelines with Microsoft Azure's serverless data integration service**

## What is this book about?

Azure Data Factory (ADF) is a modern data integration tool available on Microsoft Azure. This Azure Data Factory Cookbook helps you get up and running by showing you how to create and execute your first job in ADF. You’ll learn how to branch and chain activities, create custom activities, and schedule pipelines. This book will help you to discover the benefits of cloud data warehousing, Azure Synapse Analytics, and Azure Data Lake Gen2 Storage, which are frequently used for big data analytics. With practical recipes, you’ll learn how to actively engage with analytical tools from Azure Data Services and leverage your on-premise infrastructure with cloud-native tools to get relevant business insights.

As you advance, you’ll be able to integrate the most commonly used Azure Services into ADF and understand how Azure services can be useful in designing ETL pipelines. The book will take you through the common errors that you may encounter while working with ADF and show you how to use the Azure portal to monitor pipelines. You’ll also understand error messages and resolve problems in connectors and data flows with the debugging capabilities of ADF.

By the end of this book, you’ll be able to use ADF as the main ETL and orchestration tool for your data warehouse or data platform projects.

This book covers the following exciting features:

- Create an orchestration and transformation job in ADF
- Develop, execute, and monitor data flows using Azure Synapse
- Create big data pipelines using Azure Data Lake and ADF
- Build a machine learning app with Apache Spark and ADF
- Migrate on-premises SSIS jobs to ADF
- Integrate ADF with commonly used Azure services such as Azure ML, Azure Logic Apps, and Azure Functions
- Run big data compute jobs within HDInsight and Azure Databricks
- Copy data from AWS S3 and Google Cloud Storage to Azure Storage using ADF's built-in connectors

If you feel this book is for you, get your [copy](https://www.amazon.com/dp/1800565291) today!

<a href="https://www.packtpub.com/?utm_source=github&utm_medium=banner&utm_campaign=GitHubBanner"><img src="https://raw.githubusercontent.com/PacktPublishing/GitHub/master/GitHub.png" alt="https://www.packtpub.com/" border="5" /></a>

## Instructions and Navigations

All of the code is organized into folders.

The code will look like the following:

```
from pyspark.ml.evaluation import RegressionEvaluator
regEval = RegressionEvaluator(predictionCol="predictions", labelCol="rating", metricName="mse")
predictedTestDF = alsModel.transform(testDF)
testMse = regEval.evaluate(predictedTestDF)

print('MSE on the test set is {0}'.format(testMse))

```

**Following is what you need for this book:**
This book is for ETL developers, data warehouse and ETL architects, software professionals, and anyone who wants to learn about the common and not-so-common challenges faced while developing traditional and hybrid ETL solutions using Microsoft's Azure Data Factory. You’ll also find this book useful if you are looking for recipes to improve or enhance your existing ETL pipelines. Basic knowledge of data warehousing is expected. You'll need an Azure subscription to follow all the recipes mentioned in the book. If you're using a paid subscription, make sure to pause or delete the services after using them to avoid high usage costs.

With the following software and hardware list you can run all code files present in the book (Chapter 1-10).

### Software and Hardware List

| Chapter | Software required                                     | OS required                        |
| ------- | ----------------------------------------------------- | ---------------------------------- |
| 1 - 10  | An Azure Subscription, SQL Server Management Studio   | Windows, Mac OS X, and Linux (Any) |
|         | AWS and Google Cloud Subscription, Visual Studio 2019 |                                    |

We also provide a PDF file that has color images of the screenshots/diagrams used in this book. [Click here to download it](https://static.packt-cdn.com/downloads/9781800565296_ColorImages.pdf).

### Related products <Other books you may enjoy>

- ETL with Azure Cookbook [[Packt]](https://www.packtpub.com/product/etl-with-azure-cookbook/9781800203310) [[Amazon]](https://www.amazon.com/dp/1800203314)

- Mastering Azure Machine Learning [[Packt]](https://www.packtpub.com/product/mastering-azure-machine-learning/9781789807554) [[Amazon]](https://www.amazon.com/dp/1789807557)

## Get to Know the Authors

**Dmitry Anoshin** is an Analytics and Data Engineer Leader with over 10 years of experience working in Business Intelligence, Data Warehouse and Data Integration, BigData, Cloud, and ML space across North America and Europe. He has worked on leading Data Engineering initiatives while working on a petabyte size data platform built using Cloud and BigData technologies for supporting machine learning experiments, data science models, business intelligence reporting, and data exchange with internal and external partners. With expertise in data modeling, Dmitry also has a background in handling privacy compliance and security-critical datasets. He is also an active speaker at data conferences and helps people to adopt cloud analytics.

**Dmitry Foshin** is a business intelligence team leader, whose main goals are delivering business insights to the management team through data engineering, analytics, and visualization. He has led and executed complex full-stack BI solutions (from ETL processes to building DWH and reporting) using Azure technologies, Data Lake, Data Factory, Data Bricks, MS Office 365, Power BI, and Tableau. He has also successfully launched numerous data analytics projects – both on-premises and cloud – that help achieve corporate goals in international FMCG companies, banking, and manufacturing industries.

**Roman Storchak** has a PhD, and is a chief data offi cer whose main interest lies in building data-driven cultures through making analytics easy. He has led teams that have built ETL-heavy products in AdTech and retail and often uses Azure Stack, Power BI, and Data Factory.

**Xenia Ireton** is a soft ware engineer at Microsoft and has extensive knowledge in the field of data engineering, big data pipelines, data warehousing, and systems architecture.
