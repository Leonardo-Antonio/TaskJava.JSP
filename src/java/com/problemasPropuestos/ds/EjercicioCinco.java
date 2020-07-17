package com.problemasPropuestos.ds;

public class EjercicioCinco {

    public final String text;

    public EjercicioCinco(String text) {

        this.text = text;
    }
    
    public boolean capicua(){
        
        boolean valid = this.restricciones();
        return this.text.equals(this.reversa()) && valid;
    }
    
    private boolean restricciones(){
        
        //boolean numbers = this.text.matches("^[0-9]$");
        boolean positivo = Integer.parseInt(this.text) > 0;
        return positivo;
    }

    private String reversa() {

        String caracteres[] = new String[text.length()];
        String reversa[] = new String[text.length()];
        String cadena = "";
        int i = 0;
        for (char item : text.toCharArray()) {
            caracteres[i++] = Character.toString(item);
        }
        i = 0;
        for (int x = text.length() - 1; x >= 0; x--) {
            reversa[i++] = caracteres[x];
        }
        for( String caracter : reversa ){
            cadena += caracter;
        }
        return cadena;
    }    
}
