class Brewery < ApplicationRecord
  has_many :deals 
  has_many :clients, through: :deals
  enum region: [	"Región de Arica y Parinacota",	"Región de Tarapacá",	"Región de Antofagasta.",	"Región de Atacama.",	"Región de Coquimbo",	"Región de Valparaíso",	"Región Metropolitana de Santiago.",	"Región del Libertador General Bernardo O’Higgins.",	"Región del Maule.",	"Región del Ñuble",	"Región del Biobío.",	"Región de La Araucanía.",	"Región de Los Ríos.",	"Región de Los Lagos.",	"Región de Aysén del General Carlos Ibáñez del Campo.",	"Región de Magallanes y la Antártica Chilena."	]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
