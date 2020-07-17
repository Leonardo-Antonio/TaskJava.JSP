package com.problemasPropuestos.ds;

public class EjercicioUno {
    
    float num1, num2;
    float resp[] = new float[3];
    
    public EjercicioUno(float num1, float num2){
        
        this.num1 = num1;
        this.num2 = num2;
    }
    
    public float[] main(){
        
        return this.diferencia(this.promedio());
    }
    
    private float promedio(){
        
        return (this.num1 + this.num2)/2;
    }
    
    private float[] diferencia(float prom){
        
        this.resp[0] = this.num1 > this.num2 ? this.num1 : this.num2;
        this.resp[1] = this.resp[0] == this.num1 ? this.num2 : this.num1;
        this.resp[2] = prom;
        return this.resp;
    }
    
}
