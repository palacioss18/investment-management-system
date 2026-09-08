package com.app;

import com.inversiones.model.Cliente;
import com.inversiones.model.Inversion;
import com.inversiones.model.PlazoFijo;
import com.inversiones.model.FondoComunInversion;

import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        Cliente cliente = new Cliente(1, "jose", 100000.0);

        // Instanciamos un Plazo Fijo y un Fondo Común
        Inversion pf = new PlazoFijo(50000.0, 30, 38.0);
        Inversion fci = new FondoComunInversion(20000.0, 15, 10.0, 11.5); // Subió de $10 a $11.50 por cuotaparte

        // Polimorfismo en acción: las metemos en una misma lista de tipo Inversion
        List<Inversion> portafolio = new ArrayList<>();
        portafolio.add(pf);
        portafolio.add(fci);

        System.out.println("--- Resumen de Inversiones para " + cliente.getNombre() + " ---");

        // Recorremos la lista llamando a calcularGanancia()
        // Java ejecuta la versión correspondiente a cada objeto automáticamente
        double gananciaTotal = 0.0;
        for (Inversion inv : portafolio) {
            double ganancia = inv.calcularGanancia();
            gananciaTotal += ganancia;
            System.out.println("Monto invertido: $" + inv.getMonto() + " | Ganancia estimada: $" + ganancia);
        }

        System.out.println("----------------------------------------------");
        System.out.println("Ganancia total proyectada del portafolio: $" + gananciaTotal);
    }
}