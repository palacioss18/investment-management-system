package com.inversiones.app;

import com.inversiones.model.Cliente;
import com.inversiones.model.Inversion;
import com.inversiones.model.PlazoFijo;

public class Main{
    public static void main (String[] args){
        //CREA UN CLIENTE
        Cliente cliente = new Cliente(1,"jose",100000.0);

        //CREAMOS UNA INVERSION DE TIPO PLAZOFIJO
        Inversion miPlazoFijo = new PlazoFijo(500000.0,30,38.0);

        System.out.println("Cliente; "+ cliente.getNombre());
        System.out.println("Saldo actual: $" + cliente.getSaldo());
        System.out.println("Ganancia estimada del Plazo Fijo: $" + miPlazoFijo.calcularGanancia());
    }
}