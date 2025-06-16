import org.gradle.api.tasks.Delete
import org.gradle.api.file.Directory

// Configura os repositórios para todos os projetos (raiz e subprojetos)
allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

// Define um novo diretório build fora da pasta do projeto (subindo 2 níveis)
val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()

// Aplica o novo diretório build para o projeto raiz
rootProject.layout.buildDirectory.set(newBuildDir)

// Aplica o novo diretório build para todos os subprojetos, cada um em sua subpasta
subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.set(newSubprojectBuildDir)
}

// Garante que os subprojetos sejam avaliados após o módulo ":app"
subprojects {
    project.evaluationDependsOn(":app")
}

// Registra a task "clean" para apagar o novo diretório build definido no projeto raiz
tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}

