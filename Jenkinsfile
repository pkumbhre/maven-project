pipeline
{

agent any
stages 
{
    stage('scm checkout')
    {steps {git branch: 'master', url: 'https://github.com/pkumbhre/maven-project.git'} }

    stage('execute unit test freamework')
    {steps {withMaven(globalMavenSettingsConfig: 'fdf275d4-f2a4-4fb4-9ae9-ad81b44a9f78', jdk: 'LOCALJDK', maven: 'LOCALMVN', mavenSettingsConfig: 'a64.06a39-b855-4d12-b3e4-3d6b1b9f6ed2', traceability: true)
            {
    sh 'mvn test'
}
           }
    }

}

}
