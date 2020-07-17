package com.problemasPropuestos.ds;
     
public class EjercicioTres {
    
    public final String Figura[] = {"Cuadrado", "Rectángulo", "Triangulo", "Circulo"};
    
    public float Cuadrado(float lado){
        return lado * lado;
    }
    
    public float Triangulo(float b, float a){
        return (b*a)/2;
    }
    
    public float Rectángulo(float b, float a){
        return b*a;
    }
    
    public double Circulo(float r){
        return Math.PI * Math.pow(r, 2);
    }
}
