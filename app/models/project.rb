class Project < ApplicationRecord
    validates :nombre, :descripcion, :estado, presence: true
end
