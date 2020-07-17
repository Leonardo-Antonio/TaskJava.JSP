package com.problemasPropuestos.ds;

public class EjercicioSeis {
    
    public final int cantidad;
    public int resto = 0;
    public final String billetes[] = {"Cien soles: ", "Cincuenta soles: ", "Veinte soles: ",
                                      "Diez soles: ", "Cinco soles: ", "Uno sol: "}; 
    
    public EjercicioSeis(int cant){
        
        this.cantidad = cant;
    }
    public int[] devolucion(){
        return new int[] {this.cien(), this.cincuenta(), this.veinte(), this.diez(), this.cinco(), this.uno()};  
    }
    
    private int cien(){
        this.resto = this.cantidad % 100;
        return this.cantidad/100;
    }
    
    private int cincuenta(){
        int vuelto = (this.resto / 50);
        this.resto = this.resto % 50;
        return vuelto;
    }
    
    private int veinte(){
        int vuelto = this.resto / 20;
        this.resto = this.resto % 20;
        return vuelto;
    }
    
    private int diez(){
        int vuelto = this.resto / 10;
        this.resto = this.resto % 10;
        return vuelto;
    }
    
    private int cinco(){
        int vuelto = this.resto / 5;
        this.resto = this.resto % 5;
        return vuelto;
    }
    
    private int uno(){
        int vuelto = this.resto / 1;
        this.resto = this.resto % 1;
        return vuelto;
    }
}
