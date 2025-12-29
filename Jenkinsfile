pipeline {
  agent any

  environment {
    AWS_DEFAULT_REGION = 'ap-south-1'
    AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
    AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
  }

  stages {

    stage('Clone Repo') {
      steps {
        git branch: 'main',
            url: 'https://github.com/Daniel18-dan/aws_terraform_task_1_2_3.git'
      }
    }

    stage('Terraform Init') {
      steps {
        sh '''
          cd task-03
          terraform init
        '''
      }
    }

    stage('Terraform Plan') {
      steps {
        sh '''
          cd task-03
          terraform plan -out=tfplan
        '''
      }
    }

    stage('Manual Approval') {
      steps {
        input message: 'Terraform plan completed. Do you want to APPLY changes?',
              ok: 'Approve & Apply'
      }
    }

    stage('Terraform Apply') {
      steps {
        sh '''
          cd task-03
          terraform apply tfplan
        '''
      }
    }
  }
}
