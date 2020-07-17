package com.problemasPropuestos.ds;

public class EjercicioCuatro {
    
    public final float distancia;
    public final float velocidad;
    
    public EjercicioCuatro(float distancia, float velocidad){
        this.distancia = distancia;
        this.velocidad = velocidad;
    }
    
    public float calcularTiempo(){
        return this.distancia/this.velocidad;
    }
}
