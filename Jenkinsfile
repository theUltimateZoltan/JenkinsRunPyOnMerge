pipeline {
    agent any

    triggers {
        github(event: 'pull_request', action: 'open') {
            gitHubBranchSource(repoOwner: 'theUltimateZoltan', repoName: 'JenkinsRunPyOnMerge')
        }
    }

    stages {
        stage('Build') {
            steps {
                sh 'python /usr/local/bin/main.py'
            }
        }
    }
}