# encoding: UTF-8
module BizmassMedia
	module APIEntities

		class Category < Grape::Entity
		   expose :name
		   expose :id
		end

		class Album < Grape::Entity
           expose :id
           expose :name
           expose :cover do |album|
           		album.cover_url(:normal)
           end
		end

		class Material < Grape::Entity
			expose :id
			expose :description
			expose :image do |material|
           		material.image_url(:normal)
           end
		end

		class Meta < Grape::Entity
			expose :count
			expose :page_count
		end

	end
end