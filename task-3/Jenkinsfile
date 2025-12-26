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
        git branch: 'main', url: 'https://github.com/Daniel18-dan/aws_terraform_task_1_2_3.git'
      }
    }

    stage('Terraform Init') {
      steps {
        sh '''
          cd task-3
          terraform init
        '''
      }
    }

    stage('Terraform Plan') {
      steps {
        sh '''
          cd task-3
          terraform plan
        '''
      }
    }

    stage('Terraform Apply') {
      steps {
        sh '''
          cd task-3
          terraform apply -auto-approve
        '''
      }
    }
  }
}
