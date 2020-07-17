package com.problemasPropuestos.ds;

public class EjercicioDiez {

    protected int numbers[];
    protected int cant[] = new int[2];
    public final String resultsType[] = {"Cantidad de pares: ", "Cantidad de Inpares: ",
        "Pares: ", "Inpares: ", "Suma total: "};

    public EjercicioDiez(String numbers) {

        this.numbers = new int[numbers.split(",").length];
        int i = 0;
        for (String number : numbers.split(",")) {
            this.numbers[i++] = Integer.parseInt(number);
        }
    }

    public int[][] resultFinal(){
        int par_in[][] = this.pares_inpares();
        int resultF[][] = new int[5][]; 
        resultF[0] = new int[1];
        resultF[1] = new int[1];
        resultF[4] = new int[1];
        resultF[0][0] = this.cant[0];
        resultF[1][0] = this.cant[1];
        resultF[2] = par_in[0];
        resultF[3] = par_in[1];
        resultF[4][0] = this.suma();
        return resultF;
    }

    private int[][] pares_inpares() {

        for (int number : this.numbers) {
            cant[0] = number % 2 == 0 ? cant[0] + 1 : cant[0];
            cant[1] = number % 2 != 0 ? cant[1] + 1 : cant[1];
        }
        int par_inpar[][] = new int[2][];
        par_inpar[0] = new int[cant[0]];
        par_inpar[1] = new int[cant[1]];

        int i = 0;
        int y = 0;

        for (int number : this.numbers) {
            if (number % 2 == 0) {
                par_inpar[0][i++] = number;
            } else {
                par_inpar[1][y++] = number;
            }
        }
        return par_inpar;
    }

    private int suma() {
        int total = 0;
        for (int number : this.numbers) {
            total += number;
        }
        return total;
    }
}
