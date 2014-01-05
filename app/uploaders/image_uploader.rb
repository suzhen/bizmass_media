# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
          process :resize_to_fit => [225, 129]
  end

  version :normal do
         process :resize_to_fill => [749,429]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end


end
