-- Categorias
-- Insertar
DELIMITER //
create procedure procInsertCategory(IN v_description VARCHAR (45))
begin 
     insert into tbl_categorias (cat_descripcion) values (v_description);
end//
DELIMITER ;

-- Actualizar
DELIMITER //
create procedure procUpdateCategory (IN v_id INT, IN v_description VARCHAR(45))
begin
     update tbl_categorias
     set cat_description = v_description
     where cat_id = v_id;
end//
DELIMITER ;

-- Mostrar
DELIMITER //
create procedure procSelectCategory ()
begin
     select cat_id, cat_descripcion from tbl_categorias;
end//
DELIMITER ;

-- Eliminar
DELIMITER //
create procedure procDeleteCategory(IN v_id INT)
begin
     delete from tbl_categorias where cat_id = v_id;
end//
 feature-create-sp-users

 feature-create-sp-providers
 develop
DELIMITER ;
-- -------------------------------------------------------------------------------------------------------------------------------------------
-- Proveedores
-- Insertar
DELIMITER //
create procedure procInsertProviders(IN v_nit VARCHAR(45), IN v_nombre VARCHAR(100))
begin 
     insert into tbl_proveedores (prov_nit, prov_nombre) values (v_nit, v_nombre);
end//
DELIMITER ;

-- Actualizar
DELIMITER //
create procedure procUpdateProviders(IN v_id INT, IN v_nit VARCHAR(45), IN v_nombre VARCHAR(100))
begin
     update tbl_proveedores
     set prov_nit = v_nit, prov_nombre = v_nombre
     where prov_id = v_id;
end//
DELIMITER ;

-- Mostrar
DELIMITER //
create procedure procSelectProviders()
begin
     select prov_id, prov_nit, prov_nombre from tbl_proveedores;
end//
DELIMITER ;

-- Eliminar
DELIMITER //
create procedure procDeleteProviders(IN v_id INT)
begin
     delete from tbl_proveedores where prov_id = v_id;
end//
DELIMITER ;
-- -------------------------------------------------------------------------------------------------------------------------------------------
-- Usuarios
 feature-create-sp-users
-- Insertar
DELIMITER //
create procedure procInsertUser(IN v_correo VARCHAR(80), IN v_contrasena TEXT, IN v_salt TEXT, IN v_estado VARCHAR(15))
begin 
     insert into tbl_usuarios (usu_correo, usu_contrasena, usu_salt, usu_estado)
     values (v_correo, v_contrasena, v_salt, v_estado);
end//
DELIMITER ;

-- Actualizar
DELIMITER //
create procedure procUpdateUser(IN v_id INT, IN v_correo VARCHAR(80), IN v_contrasena TEXT, IN v_salt TEXT, IN v_estado VARCHAR(15))
begin
     update tbl_usuarios
     set usu_correo = v_correo, usu_contrasena = v_contrasena, usu_salt = v_salt, usu_estado = v_estado
     where usu_id = v_id;
end//
DELIMITER ;

-- Mostrar
DELIMITER //
create procedure procSelectUser()
begin
     select usu_id, usu_correo, usu_contrasena, usu_salt, usu_estado from tbl_usuarios;
end//
DELIMITER ;

-- Eliminar
DELIMITER //
create procedure procDeleteUser(IN v_id INT)
begin
     delete from tbl_usuarios where usu_id = v_id;
end//
DELIMITER ;
-- -------------------------------------------------------------------------------------------------------------------------------------------
-- Productos


-- Productos

DELIMITER ;
 develop
 develop
