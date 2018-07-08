/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author Juan
 */
public class Pedido {
    
    private int cantidadProductos;
    private String fecha;
    private String hora;
    private String direccion;
    private float valor;
    private Comprador comprador;
    private Producto producto;

    public Pedido(int cantidadProductos, String fecha, String hora, String direccion) {
        this.cantidadProductos = cantidadProductos;
        this.fecha = fecha;
        this.hora = hora;
        this.direccion = direccion;
    }

    public Pedido() {
        this.cantidadProductos = 0;
        this.fecha = "";
        this.hora = "";
        this.direccion = "";
    }

    public int getCantidadProductos() {
        return cantidadProductos;
    }

    public void setCantidadProductos(int cantidadProductos) {
        this.cantidadProductos = cantidadProductos;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }

    public Comprador getComprador() {
        return comprador;
    }

    public void setComprador(Comprador comprador) {
        this.comprador = comprador;
    }

    public Producto getProducto() {
        return producto;
    }

    public void setProducto(Producto producto) {
        this.producto = producto;
    }
    
    
    
    
}
