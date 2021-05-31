<?php

class Producto extends Conectar
{
    public function get_productos()
    {
        $conectar = parent::Conexion();
        parent::set_names();
        $sql = "SELECT * FROM tm_producto where estado = 1";
        $sql = $conectar->prepare($sql);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }

    public function get_producto_x_id($prod_id)
    {
        $conectar = parent::Conexion();
        parent::set_names();
        $sql = "SELECT * FROM tm_producto where estado =1 and prod_id =?";
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $prod_id);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }

    public function delete_producto($prod_id)
    {
        $conectar = parent::Conexion();
        parent::set_names();
        $sql = "UPDATE tm_producto SET estado=0,fecha_eliminacion=now() where prod_id = ?";
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $prod_id);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }

    public function insert_producto($prod_nombre,$prod_descripcion)
    {
        $conectar = parent::Conexion();
        parent::set_names();
        $sql = "INSERT INTO tm_producto(prod_nombre,prod_descripcion) VALUES(?,?); ";
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $prod_nombre);
        $sql->bindValue(2, $prod_descripcion);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }

    public function update_producto($prod_id,$prod_nombre,$prod_descripcion)
    {
        $conectar = parent::Conexion();
        parent::set_names();
        $sql = "UPDATE tm_producto SET prod_nombre=?,prod_descripcion=?,fecha_modificacion=now() where prod_id = ?";
        $sql = $conectar->prepare($sql);
        $sql->bindValue(1, $prod_nombre);
        $sql->bindValue(2, $prod_descripcion);
        $sql->bindValue(3, $prod_id);
        $sql->execute();
        return $resultado = $sql->fetchAll();
    }

}
