package com.inversiones.model;

public class FondoComunInversion extends Inversion {
    //ATRIBUTOS
    private double ValorCuotaparteInicial;
    private double ValorCuotaparteActual;

    //CONSTRUCTOR
    public FondoComunInversion(double monto,int dias,double ValorCuotaParteInicial,double ValorCuotaparteActual){
        super(monto,dias);
        this.ValorCuotaparteInicial = ValorCuotaParteInicial;
        this.ValorCuotaparteActual = ValorCuotaparteActual;
    }

    //METODOS
    @Override
    public double calcularGanancia(){
        double cuotapartesCompradas = getMonto() / ValorCuotaparteInicial;

        double ValorActualTotal = cuotapartesCompradas * ValorCuotaparteActual;

        return ValorActualTotal - getMonto();
    }

    //GETTERS
    public double ValorCuotaparteInicial(){
        return this.ValorCuotaparteInicial;
    }

    public double ValorCuotaparteActual(){
        return this.ValorCuotaparteActual;
    }


}
