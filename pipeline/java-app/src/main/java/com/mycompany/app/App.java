package com.mycompany.app;

/**
 * Hello CI/CD Pipeline and Jenkins!
 */
public class App
{

    private final String message = "Hello CI/CD Pipeline and Jenkins!";

    public App() {}

    public static void main(String[] args) {
        System.out.println(new App().getMessage());
    }

    private final String getMessage() {
        return message;
    }

}
