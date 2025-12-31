pipeline {
  agent any

  parameters {
    choice(
      name: 'ENVIRONMENT',
      choices: ['DEV', 'UAT', 'PROD'],
      description: 'Select environment'
    )
    choice(
      name: 'ACTION',
      choices: ['plan', 'apply'],
      description: 'Terraform action'
    )
  }

  environment {
    AWS_DEFAULT_REGION    = 'ap-south-1'
    AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
    AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
  }

  stages {

    stage('Clone Repository') {
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
        sh """
          cd task-03
          terraform plan -var="environment=${ENVIRONMENT}"
        """
      }
    }

    stage('Manual Approval') {
      when {
        expression { params.ACTION == 'apply' }
      }
      steps {
        input message: "Approve Terraform APPLY for ${ENVIRONMENT} environment?"
      }
    }

    stage('Terraform Apply') {
      when {
        expression { params.ACTION == 'apply' }
      }
      steps {
        sh """
          cd task-03
          terraform apply -var="environment=${ENVIRONMENT}"
        """
      }
    }
  }
}
