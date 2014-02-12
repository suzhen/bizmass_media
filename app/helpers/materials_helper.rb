module MaterialsHelper
	def photogenic?(material)
		material.album.effect == "photo"
	end
end
