pipeline
{

agent any
stages 
{
    stage('scm checkout')
    {steps {git branch: 'master', url: 'https://github.com/pkumbhre/maven-project.git'} }

    stage('execute unit test freamework')
    {steps { withMaven(globalMavenSettingsConfig: 'fdf275d4-f2a4-4fb4-9ae9-ad81b44a9f78', jdk: 'LOCALJDK', maven: 'LOCALMVN', mavenSettingsConfig: '8782b035-171f-4ccc-8f28-f6b6f0d24ac1', traceability: true) {
    sh 'mvn test'
}
            
           }
    }

    stage('buid the code')
    {steps{withMaven(globalMavenSettingsConfig: 'fdf275d4-f2a4-4fb4-9ae9-ad81b44a9f78', jdk: 'LOCALJDK', maven: 'LOCALMVN', mavenSettingsConfig: '8782b035-171f-4ccc-8f28-f6b6f0d24ac1', traceability: true) {
    sh 'mvn package'
} }}

//    stage('Deploy to tomcat')
//    {steps{sshagent(['tomcat=cicd']) {
//    sh 'scp -o StrictHostKeyChecking=no  */*/*.war ec2-user@3.122.59.181:/usr/share/tomcat/webapps/'}} }

}

}
