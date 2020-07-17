package com.problemasPropuestos.ds;

public class EjercicioNueve {

    public int numbers[];
    public int suma = 0;

    public EjercicioNueve(String numbers) {
        
        int nums[] = new int[numbers.split(",").length];
        int i = 0;
        for (String item : numbers.split(",")) {
            nums[i++] = Integer.parseInt(item);
        }
        this.numbers = nums;
    }

    public int sumaTotal() {
        
        for (int number : this.numbers) {
            this.suma += number;
        }
        return this.suma;
    }

}
