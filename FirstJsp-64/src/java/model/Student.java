
package model;


public class Student {
  
    private int id; 
    private String name;
    private String email;
    private String contact;

    public Student() {
    }

    public Student(int id, String name, String email, String contact) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.contact = contact;
    }

    public Student(String name, String email, String contact) {
        this.name = name;
        this.email = email;
        this.contact = contact;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContactNo() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    } 
    
    
    
    
}
