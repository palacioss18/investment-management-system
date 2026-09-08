package com.inversiones.model;

//HERENCIA
public class PlazoFijo extends Inversion{
    //ATRIBUTO
    private double tna; //TASA NOMINAL ANUAL

    //CONSTRUCTOR
    public PlazoFijo(double monto,int dias,double tna){
        super(monto,dias); //LLAMA AL CONSTRUCTOR INVERSION
        this.tna = tna;
    }

    //POLIMORFISMO
    @Override
    public double calcularGanancia(){
        return getMonto() * (tna / 100.00) * (getDias() / 365.0);
    }
}