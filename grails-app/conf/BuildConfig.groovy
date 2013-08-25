grails.servlet.version = "2.5" // Change depending on target container compliance (2.5 or 3.0)
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.target.level = 1.6
grails.project.source.level = 1.6
//grails.project.war.file = "target/${appName}-${appVersion}.war"

// uncomment (and adjust settings) to fork the JVM to isolate classpaths
//grails.project.fork = [
//   run: [maxMemory:1024, minMemory:64, debug:false, maxPerm:256]
//]

grails.project.dependency.resolution = {
    // inherit Grails' default dependencies
    inherits("global") {
        // specify dependency exclusions here; for example, uncomment this to disable ehcache:
        // excludes 'ehcache'
    }
    log "error" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
    checksums true // Whether to verify checksums on resolve
    legacyResolve false // whether to do a secondary resolve on plugin installation, not advised and here for backwards compatibility

    repositories {
        inherits true // Whether to inherit repository definitions from plugins

        grailsPlugins()
        grailsHome()
        grailsCentral()

        mavenLocal()
        mavenCentral()

        // uncomment these (or add new ones) to enable remote dependency resolution from public Maven repositories
        //mavenRepo "http://snapshots.repository.codehaus.org"
        //mavenRepo "http://repository.codehaus.org"
        //mavenRepo "http://download.java.net/maven/2/"
        //mavenRepo "http://repository.jboss.com/maven2/"
    }

    dependencies {
        // specify dependencies here under either 'build', 'compile', 'runtime', 'test' or 'provided' scopes e.g.

        // runtime 'mysql:mysql-connector-java:5.1.22'
        runtime 'junit:junit:4.11'
        runtime 'log4j:log4j:1.2.17'

        runtime 'javax.servlet:servlet-api:2.5'
        runtime 'org.apache.commons:commons-lang3:3.1'
        runtime 'commons-collections:commons-collections:3.2.1'
        runtime 'commons-digester:commons-digester:2.1'
        runtime 'javax.servlet.jsp.jstl:jstl-api:1.2'
        runtime 'javax.servlet.jsp:jsp-api:2.1'
        runtime 'commons-fileupload:commons-fileupload:1.2.1'
        runtime 'commons-io:commons-io:1.3.1'
        runtime 'commons-beanutils:commons-beanutils:1.8.0'
        runtime 'org.codehaus.groovy:groovy-all:1.7.5'
        runtime 'com.lowagie:itext:2.1.7'
        runtime 'javax.servlet:jstl:1.2'
        runtime 'org.apache.poi:poi:3.8'
        runtime 'taglibs:standard:1.1.2'
        runtime 'net.sf.jasperreports:jasperreports:3.7.2'
        runtime 'com.lowagie:itextasian:1.0'
        runtime 'com.lowagie:itextasian:1.0'
    }

    plugins {
        runtime ":hibernate:$grailsVersion"
        runtime ":jquery:1.8.3"
        runtime ":resources:1.2"

        // Uncomment these (or add new ones) to enable additional resources capabilities
        //runtime ":zipped-resources:1.0"
        //runtime ":cached-resources:1.0"
        //runtime ":yui-minify-resources:0.1.5"

        build ":tomcat:$grailsVersion"

        runtime ":database-migration:1.3.2"

        compile ':cache:1.0.1'
    }
}
