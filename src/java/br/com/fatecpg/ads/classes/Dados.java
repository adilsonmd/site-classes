/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.ads.classes;

import java.util.ArrayList;

/**
 *
 * @author Uno
 */
public class Dados {
    private static ArrayList<Cliente> cl = new ArrayList<>();
    private static ArrayList<Fornecedor> fo = new ArrayList<>();
    
    public static ArrayList<Cliente> getCliente() {
        return cl;
    }
    
    public static ArrayList<Fornecedor> getFornecedor() {
        return fo;
    }
}
