/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.entity;

/**
 *
 * @author jonatan rodriguez
 */
public class Resultado {
    
    private int id;
    private String Nombre;
    private int Aciertos;
    private int Errores;

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public int getAciertos() {
        return Aciertos;
    }

    public void setAciertos(int Aciertos) {
        this.Aciertos = Aciertos;
    }

    public int getErrores() {
        return Errores;
    }

    public void setErrores(int Errores) {
        this.Errores = Errores;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
}
