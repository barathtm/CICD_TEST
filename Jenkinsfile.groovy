pipeline {
        agent Agent2
        stages {
            stage('Test_gitsync_3') {
                steps {
                    script {
                            build job: 'Test_gitsync_3'
                        }
                    }
               }   
            }
       }