package api.pet;

import com.intuit.karate.junit5.Karate;

public class PetRunner {

    @Karate.Test
    Karate testPostEscenarioSimple() {
        return Karate.run("Tests/post-escenario-simple").relativeTo(getClass());
    }

    @Karate.Test
    Karate testPostEscenarioOutline() {
        return Karate.run("Tests/post-escenario-outline").relativeTo(getClass());
    }

    @Karate.Test
    Karate testGetEscenarioSimple() {
        return Karate.run("CRUD/get-escenario-simple").relativeTo(getClass());
    }

    @Karate.Test
    Karate testPutEscenarioSimple() {
        return Karate.run("Tests/put-escenario-simple").relativeTo(getClass());
    }

    @Karate.Test
    Karate testDeleteEscenarioSimple() {
        return Karate.run("delete-escenario-simple").relativeTo(getClass());
    }

    @Karate.Test
    Karate testGetEscenarioNegativo() {

        return Karate.run("Tests/get-escenario-negativo").relativeTo(getClass());
    }

    @Karate.Test
    Karate testPostEscenarioCustom() {

        return Karate.run("Tests/post-escenario-custom").relativeTo(getClass());
    }

    @Karate.Test
    Karate testPostJsonEscenario() {

        return Karate.run("CRUD/post-json-escenario").relativeTo(getClass());
    }

    @Karate.Test
    Karate petflow() {

        return Karate.run("CRUD/pet-flow").relativeTo(getClass());
    }
}