pipeline {
  agent any
  tools {
    go {'go-1.14'}
  }
  environment {
    XDG_CACHE_HOME = '/tmp/.cache'
    CGO_ENABLED='0'
  }
  
  stages {
    stage('Get dependencies') { 
      steps {
        sh "go get \"github.com/aws/aws-lambda-go/lambda\""
      }
    }
    stage('Build') { 
      steps {
        sh 'GOOS=linux GOARCH=amd64 go build -o golambda lambdaYo.go'
        sh 'zip lambdaYo.go.zip lambdaYo.go'
      }
    }
    stage('Publish') { 
      steps { 
        archiveArtifacts 'lambdaYo.go.zip'
      }
    }
  }
}
