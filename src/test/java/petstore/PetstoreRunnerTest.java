package petstore;

import com.intuit.karate.junit5.Karate;

public class PetstoreRunnerTest {

    @Karate.Test
    Karate testPetstoreRunner() {
        return Karate.run("classpath:petstore/petstore.feature");
    }
}
