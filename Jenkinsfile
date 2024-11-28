pipeline {
    agent any
    environment {
        // Change the docker image and tag as required
        DOCKER_IMAGE = 'nrfubuntu' 
        DOCKER_TAG = 'v5'
    }

    stages {
        stage('Synchronize Git Submodules Code') {
            steps {
                echo "Checking out code and synchronizing submodules..."
                sh """git submodule sync
                git submodule update --init --recursive
                """
                }
        }

        stage('Build Docker Image') {
            steps {
                echo "Building Docker image from Dockerfile..."
                // Capture logs of the Docker build step
                sh """
                    mkdir -p ${WORKSPACE}/output
                    docker images rm ${DOCKER_IMAGE}:${DOCKER_TAG}
                    docker buildx build --no-cache -t ${DOCKER_IMAGE}:${DOCKER_TAG} -f docker/Dockerfile.nrf.ubuntu . > ${WORKSPACE}/output/html_report.txt
                """
            }
        }
    }

    post {
        success {
            // If build is OK then run the image and check the status of the Docker with the BASH script
            echo "Build was successful OK and ready to push"
            sh """
            ./buil_test.sh ${DOCKER_IMAGE} ${DOCKER_IMAGE}_Container
            """
        }
        unsuccessful{
            echo "Build was unsuccessful KO"
        }
        always {
            script {
                // Archive the log file to be accessible as an artifact
                archiveArtifacts allowEmptyArchive: true, artifacts: 'output/html_report.txt', followSymlinks: false
                
                // Publish the log as an HTML report (Jenkins automatically formats this for you)
                publishHTML(
                    target: [
                        allowMissing: false,
                        alwaysLinkToLastBuild: true,
                        keepAll: true,
                        reportDir: 'output/',
                        reportFiles: 'html_report.txt', // The text log file will be shown as HTML in Jenkins
                        reportName: 'Build Log Report'
                    ]
                )
            }
        }
        cleanup {
            echo "Cleaning up workspace..."
            sh "rm -rf ${WORKSPACE}/output"
        }
    }
}
