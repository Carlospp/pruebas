class Employee < ActiveRecord::Base

belongs_to :position
#Validaciones de nombre
 validates :nombre, :presence => {:message => "Usted debe ingresar un nombre"}, length: {minimum: 2, maximum: 50, :message => "El nombre debe tener entre 2 y 50 caracteres"}
 #Validaciones de apellido
 validates :apellido, :presence => {:message => "Usted debe ingresar un apellido"}, length: {minimum: 2, maximum: 50, :message => "El apellido debe tener entre 2 y 50 caracteres"}
 #Validaciones de dni
  validates :dni, :presence => {:message => "Usted debe ingresar un dni"}, :numericality => {:only_integer => true, :message => "El dni debe ser numérica"}, :uniqueness => {:message => "Usted ha ingresado un dni repetido"}
end
