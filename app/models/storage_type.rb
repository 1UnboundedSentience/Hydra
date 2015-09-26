class StorageType < ActiveRecord::Base
  self.inheritance_column = :provider

  def self.providers
    %w(AWSS3 LocalHD)
  end

  def put
    raise 'Abstract Method'
  end

  def get
    raise 'Abstract Method'
  end

  def delete
    raise 'Abstract Method'
  end
end
