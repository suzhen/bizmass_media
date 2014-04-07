# encoding: utf-8

class CoverUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
          process :resize_to_fit => [145, 90]
   end

  version :preview do
           process :resize_to_fit => [130, 100]
  end

  version :normal do
         #process :cover_crop
         process :resize_to_fill => [290,179]
  end

  # def cover_crop
  #   if model.cover_crop_x.present?
  #     manipulate! do |img|
  #       x = model.cover_crop_x
  #       y = model.cover_crop_y
  #       w = model.cover_crop_w
  #       h = model.cover_crop_h
  #       img.resize("420x300")
  #       crop_params = "#{w}x#{h}+#{x}+#{y}"
  #       img.crop(crop_params)
  #       img
  #     end
  #   end
  # end


   def extension_white_list
     %w(jpg jpeg gif png)
   end
 

  # protected
  #  def secure_token
  #   var = :"@#{mounted_as}_secure_token"
  #   model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  #  end

end
