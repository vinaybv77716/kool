pipeline{
    agent any
    stages{
        stage("checkout_stage"){
            steps{
                echo 'checkout_done'
                git url:"https://github.com/vinaybv77716/kool.git" , branch:"main"
            }
        }


         stage("Create_a_tar_file"){
            steps{
                echo 'Create_a_tar_file'
                sh 'tar -czvf dox.tar.gz *'
                
            }
        }


        stage("Build_a_image"){
            steps{
                echo 'Build_a_image_using_Dockerfile'
                sh 'docker build -t bvvinay/kool:latest'
                
            }
        }



         stage("Login_&_push"){
            steps{
                echo 'Login_&_push_the_image_to_docker_hub'
                sh 'docker login -u bvvinay -p Bvv@22188'
                sh 'docker push bvvinay/kool:latest'
                
            }
        }


         stage("Apply_the_deployment"){
            steps{
                echo 'Apply_the_deployment_done'
                sh   'kubectl apply -f deployment.yaml'
            }
        }


         stage("Apply_the_svc"){
            steps{
                echo 'svc_done'
              sh 'kubectl apply -f service.yaml'
            }
        }


        
    }
}