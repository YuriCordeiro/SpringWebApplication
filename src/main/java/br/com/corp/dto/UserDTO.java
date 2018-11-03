package br.com.corp.dto;

import javax.persistence.*;

@Entity
@Table(name = "ECOMERCE_USER")
public class UserDTO {

    @Id
    @Column(name = "USER_ID", length = 100)
    private String email;

    @Column(name = "PASSWORD", length = 20)
    private String password;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "PERSON_ID")
    private PersonDTO person;

    /**
     * Empty Constructor
     */
    public UserDTO() {
    }

    /**
     * Constructor using fields
     *
     * @param email
     * @param password
     * @param person
     */
    public UserDTO(String email, String password, PersonDTO person) {
        this.email = email;
        this.password = password;
        this.person = person;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public PersonDTO getPerson() {
        return person;
    }

    public void setPerson(PersonDTO person) {
        this.person = person;
    }
}
