class Project < ApplicationRecord
    validates :nombre, :descripcion, :fecha_inicio, :fecha_termino, :estado, presence: true
end
