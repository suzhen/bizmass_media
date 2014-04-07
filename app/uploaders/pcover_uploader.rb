# encoding: utf-8

class PcoverUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :normal do
         #process :cover_crop
         process :resize_to_fit => [130, 100]
  end

  def extension_white_list
     %w(jpg jpeg gif png)
  end
 
end
