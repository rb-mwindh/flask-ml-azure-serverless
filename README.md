# flask-ml-azure-serverless
Deploy Flask Machine Learning Application on Azure App Services

![continuous-delivery](https://user-images.githubusercontent.com/58792/85061538-f7352780-b174-11ea-8001-b0561c5bad73.jpg)

## To run it locally follow these steps

**Requirement:** run on Python3.6

```
$ sudo add-apt-repository ppa:deadsnakes/ppa
$ sudo apt update
$ sudo apt install python3.6-dev python3.6-venv
```


1.  ~~Create virtual environment and source~~

```bash
/usr/bin/python3.6 -m venv ~/.flask-ml-azure
source ~/.flask-ml-azure/bin/activate
```

2.  ~~Run `make install`~~

3.  ~~Run `python app.py`~~

As a newby, I struggled with `Makefile` so much that I started googling "I hate makefile so, so much!" ;)

Instead, I implemented a shell script that performs all required tasks to get started with python3.6

Just run
```
$ ./setup.sh

/usr/bin/python3.6
Requirement already satisfied: pip in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (21.3.1)
WARNING: You are using pip version 21.3.1; however, version 22.3.1 is available.
You should consider upgrading via the '/home/testuser/.flask-ml-azure/bin/python3.6 -m pip install --upgrade pip' command.
Requirement already satisfied: Flask==1.0.2 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from -r requirements.txt (line 1)) (1.0.2)
Requirement already satisfied: pandas==1.1.5 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from -r requirements.txt (line 2)) (1.1.5)
Requirement already satisfied: scikit-learn==0.20.3 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from -r requirements.txt (line 3)) (0.20.3)
Requirement already satisfied: pylint==2.6.2 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from -r requirements.txt (line 4)) (2.6.2)
Requirement already satisfied: click>=5.1 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from Flask==1.0.2->-r requirements.txt (line 1)) (8.0.4)
Requirement already satisfied: Jinja2>=2.10 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from Flask==1.0.2->-r requirements.txt (line 1)) (3.0.3)
Requirement already satisfied: itsdangerous>=0.24 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from Flask==1.0.2->-r requirements.txt (line 1)) (2.0.1)
Requirement already satisfied: Werkzeug>=0.14 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from Flask==1.0.2->-r requirements.txt (line 1)) (2.0.3)
Requirement already satisfied: pytz>=2017.2 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from pandas==1.1.5->-r requirements.txt (line 2)) (2022.6)
Requirement already satisfied: python-dateutil>=2.7.3 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from pandas==1.1.5->-r requirements.txt (line 2)) (2.8.2)
Requirement already satisfied: numpy>=1.15.4 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from pandas==1.1.5->-r requirements.txt (line 2)) (1.19.5)
Requirement already satisfied: scipy>=0.13.3 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from scikit-learn==0.20.3->-r requirements.txt (line 3)) (1.5.4)
Requirement already satisfied: toml>=0.7.1 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from pylint==2.6.2->-r requirements.txt (line 4)) (0.10.2)
Requirement already satisfied: astroid<2.5,>=2.4.0 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from pylint==2.6.2->-r requirements.txt (line 4)) (2.4.2)
Requirement already satisfied: mccabe<0.7,>=0.6 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from pylint==2.6.2->-r requirements.txt (line 4)) (0.6.1)
Requirement already satisfied: isort<6,>=4.2.5 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from pylint==2.6.2->-r requirements.txt (line 4)) (5.10.1)
Requirement already satisfied: typed-ast<1.5,>=1.4.0 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from astroid<2.5,>=2.4.0->pylint==2.6.2->-r requirements.txt (line 4)) (1.4.3)
Requirement already satisfied: wrapt~=1.11 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from astroid<2.5,>=2.4.0->pylint==2.6.2->-r requirements.txt (line 4)) (1.14.1)
Requirement already satisfied: six~=1.12 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from astroid<2.5,>=2.4.0->pylint==2.6.2->-r requirements.txt (line 4)) (1.16.0)
Requirement already satisfied: lazy-object-proxy==1.4.* in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from astroid<2.5,>=2.4.0->pylint==2.6.2->-r requirements.txt (line 4)) (1.4.3)
Requirement already satisfied: importlib-metadata in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from click>=5.1->Flask==1.0.2->-r requirements.txt (line 1)) (4.8.3)
Requirement already satisfied: MarkupSafe>=2.0 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from Jinja2>=2.10->Flask==1.0.2->-r requirements.txt (line 1)) (2.0.1)
Requirement already satisfied: dataclasses in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from Werkzeug>=0.14->Flask==1.0.2->-r requirements.txt (line 1)) (0.8)
Requirement already satisfied: zipp>=0.5 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from importlib-metadata->click>=5.1->Flask==1.0.2->-r requirements.txt (line 1)) (3.6.0)
Requirement already satisfied: typing-extensions>=3.6.4 in /home/testuser/.flask-ml-azure/lib/python3.6/site-packages (from importlib-metadata->click>=5.1->Flask==1.0.2->-r requirements.txt (line 1)) (4.1.1)
WARNING: You are using pip version 21.3.1; however, version 22.3.1 is available.
You should consider upgrading via the '/home/testuser/.flask-ml-azure/bin/python3.6 -m pip install --upgrade pip' command.
 * Serving Flask app "app" (lazy loading)
 * Environment: production
   WARNING: Do not use the development server in a production environment.
   Use a production WSGI server instead.
 * Debug mode: on
 * Running on all addresses.
   WARNING: This is a development server. Do not use it in a production deployment.
 * Running on http://192.168.67.3:5000/ (Press CTRL+C to quit)
 * Restarting with stat
 * Debugger is active!
 * Debugger PIN: 123-456-789
```

4.  In a separate shell run: `./make_prediction.sh`

## To run it in Azure Pipelines

1.  Refer to [Azure Official Documentation guide here throughout](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops)

2. Launch Azure Shell  

![1-launch-azure-shell](https://user-images.githubusercontent.com/58792/89555246-cc169e00-d7dd-11ea-8164-88caa1b8beba.png)

3.  Create Github Repo with Azure Pipelines Enabled (Could be a fork of this repo)

![2-create-Github-Repo](https://user-images.githubusercontent.com/58792/89555912-a3db6f00-d7de-11ea-9d2f-5ac030b43ec9.png)

4. Clone the repo into Azure Cloud Shell

*Note:  You make need to follow this YouTube video guide on how to [setup SSH keys and configure cloudshell environment](https://www.youtube.com/watch?v=3vtBAfPjQus)*

5.  Create virtual environment and source

```bash
python3 -m venv ~/.flask-ml-azure
source ~/.flask-ml-azure/bin/activate
```

2.  Run `make install`

3.  Create an app service and initially deploy your app in Cloud Shell

`az webapp up -n <your-appservice>`

![3-flask-ml-service](https://user-images.githubusercontent.com/58792/89557009-2e709e00-d7e0-11ea-9b31-9090c8067a10.png)

4. Verify deployed application works by browsing to deployed url: `https://<your-appservice>.azurewebsites.net/`

You will see this output:

![4-deployed-app](https://user-images.githubusercontent.com/58792/89557343-a8088c00-d7e0-11ea-891c-4d88333b8097.png)

5.  Verify Machine Learning predictions work

Change the line in `make_predict_azure_app.sh` to match the deployed prediction
`-X POST https://<yourappname>.azurewebsites.net:$PORT/predict `

![5-successful-prediction](https://user-images.githubusercontent.com/58792/89557573-02a1e800-d7e1-11ea-8318-1c628e13dae7.png)

6. [Create an Azure DevOps project and connect to Azure, (as official documentation describes)](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops)

![6-devops](https://user-images.githubusercontent.com/58792/89558313-097d2a80-d7e2-11ea-8b65-df052b300331.png)

7.  Connect to Azure Resource Manager

![7-service-connection](https://user-images.githubusercontent.com/58792/89558869-d0918580-d7e2-11ea-8ffe-52cfaf95fe16.png)

8.  Configure connection to previously deployed resource group

![8-azure-pipelines-setup](https://user-images.githubusercontent.com/58792/89560149-988b4200-d7e4-11ea-9e25-3554ac2bd8fd.png)

9.  Create new Python Pipeline with Github Integration

![9-newpipeline](https://user-images.githubusercontent.com/58792/89560429-f750bb80-d7e4-11ea-9f85-241d65d25c55.png)

![10-github-integration](https://user-images.githubusercontent.com/58792/89560627-5282ae00-d7e5-11ea-8b0b-bdecfff0e4d3.png)


This process will create a YAML file that looks roughly like the YAML output shown below.  Refer to the [official Azure Pipeline YAML documentation for more information about it](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops#yaml-pipeline-explained).

```
# Python to Linux Web App on Azure
# Build your Python project and deploy it to Azure as a Linux Web App.
# Change python version to one thats appropriate for your application.
# https://docs.microsoft.com/azure/devops/pipelines/languages/python

trigger:
- master

variables:
  # Azure Resource Manager connection created during pipeline creation
  azureServiceConnectionId: '<youridhere>'
  
  # Web app name
  webAppName: 'flask-ml-service'

  # Agent VM image name
  vmImageName: 'ubuntu-latest'

  # Environment name
  environmentName: 'flask-ml-service'

  # Project root folder. Point to the folder containing manage.py file.
  projectRoot: $(System.DefaultWorkingDirectory)
  
  # Python version: 3.7
  pythonVersion: '3.7'

stages:
- stage: Build
  displayName: Build stage
  jobs:
  - job: BuildJob
    pool:
      vmImage: $(vmImageName)
    steps:
    - task: UsePythonVersion@0
      inputs:
        versionSpec: '$(pythonVersion)'
      displayName: 'Use Python $(pythonVersion)'
    
    - script: |
        python -m venv antenv
        source antenv/bin/activate
        python -m pip install --upgrade pip
        pip install setup
        pip install -r requirements.txt
      workingDirectory: $(projectRoot)
      displayName: "Install requirements"

    - task: ArchiveFiles@2
      displayName: 'Archive files'
      inputs:
        rootFolderOrFile: '$(projectRoot)'
        includeRootFolder: false
        archiveType: zip
        archiveFile: $(Build.ArtifactStagingDirectory)/$(Build.BuildId).zip
        replaceExistingArchive: true

    - upload: $(Build.ArtifactStagingDirectory)/$(Build.BuildId).zip
      displayName: 'Upload package'
      artifact: drop

- stage: Deploy
  displayName: 'Deploy Web App'
  dependsOn: Build
  condition: succeeded()
  jobs:
  - deployment: DeploymentJob
    pool:
      vmImage: $(vmImageName)
    environment: $(environmentName)
    strategy:
      runOnce:
        deploy:
          steps:
          
          - task: UsePythonVersion@0
            inputs:
              versionSpec: '$(pythonVersion)'
            displayName: 'Use Python version'

          - task: AzureWebApp@1
            displayName: 'Deploy Azure Web App : flask-ml-service'
            inputs:
              azureSubscription: $(azureServiceConnectionId)
              appName: $(webAppName)
              package: $(Pipeline.Workspace)/drop/$(Build.BuildId).zip
  ```
10.  Verify Continuous Delivery of Azure Pipelines by changing `app.py`

You can watch this [YouTube Walkthrough of this process](https://www.youtube.com/watch?v=3KF9DltYvZU)

11.  Add a lint step (this gates your code against syntax failure)

```
    - script: |
        python -m venv antenv
        source antenv/bin/activate
        make install
        make lint
      workingDirectory: $(projectRoot)
      displayName: 'Run lint tests'
```

You can watch this [YouTube Walkthrough of this process](https://www.youtube.com/watch?v=TItOatTfAOc)


### [Cloud Computing for Data Analysis Book](https://leanpub.com/cloud4data)
This book is being written "just in time", with a weekly release schedule.

![cloud4data books](https://d2sofvawe08yqg.cloudfront.net/cloud4data/hero2x?1578933644)






