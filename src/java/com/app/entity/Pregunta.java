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
public class Pregunta {
    
    private int id;
    private String Pregunta;
    private String Respuesta1;
    private String Respuesta2;
    private String Respuesta3;
    private String RespuestaCorrecta;

    public String getPregunta() {
        return Pregunta;
    }

    public void setPregunta(String Pregunta) {
        this.Pregunta = Pregunta;
    }

    public String getRespuesta1() {
        return Respuesta1;
    }

    public void setRespuesta1(String Respuesta1) {
        this.Respuesta1 = Respuesta1;
    }

    public String getRespuesta2() {
        return Respuesta2;
    }

    public void setRespuesta2(String Respuesta2) {
        this.Respuesta2 = Respuesta2;
    }

    public String getRespuesta3() {
        return Respuesta3;
    }

    public void setRespuesta3(String Respuesta3) {
        this.Respuesta3 = Respuesta3;
    }

    public String getRespuestaCorrecta() {
        return RespuestaCorrecta;
    }

    public void setRespuestaCorrecta(String RespuestaCorrecta) {
        this.RespuestaCorrecta = RespuestaCorrecta;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
}
