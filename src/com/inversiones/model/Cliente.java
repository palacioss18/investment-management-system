package com.inversiones.model;

public class Cliente{
    //ATRIBUTOS PRIVADO
    private int id;
    private String nombre;
    private double saldo;

    //CONSTRUCTOR
    public Cliente(int id,String nombre,double saldo){
        this.id = id;
        this.nombre = nombre;
        this.saldo = saldo;
    }

    //GETTERS Y SETTERS
    public int getId(){
        return id;
    }

    public String getNombre(){
        return nombre;
    }

    public double getSaldo(){
        return saldo;
    }

    public void setSaldo(double saldo){
        if(saldo > 0){
            this.saldo = saldo;
        }
    }

}











