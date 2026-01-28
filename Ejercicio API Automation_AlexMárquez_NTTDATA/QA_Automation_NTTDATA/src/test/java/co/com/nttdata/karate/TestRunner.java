package co.com.nttdata.karate;

import com.intuit.karate.junit5.Karate;

class TestRunner {
    @Karate.Test
    Karate testLogin() {
        // Al usar Karate.run(), el framework genera automáticamente
        // los archivos .json compatibles con reportes de Cucumber.
        return Karate.run("login").relativeTo(getClass());
    }
}