package dev.nicoloarena.cinemille.dto;

import dev.nicoloarena.cinemille.model.Person;

public class PersonDTO {

    private String firstName;

    private String lastName;

    public PersonDTO(Person person) {
        this.firstName = person.getFirstName();
        this.lastName = person.getLastName();
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
}
