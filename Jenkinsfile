pipeline {
    agent any

    triggers {
        githubPullRequest { cron('H/5 * * * *') }
    }

    stages {
        stage('Build') {
            steps {
                sh 'python /usr/local/bin/main.py'
            }
        }
    }
}