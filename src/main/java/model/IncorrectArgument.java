package model;

public class IncorrectArgument extends Exception {
    String error;
    public IncorrectArgument(){
        super();
    }
    public IncorrectArgument(String error){
        System.err.println(error);
    }
}
