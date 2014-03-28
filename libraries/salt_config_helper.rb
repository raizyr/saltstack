module SaltConfigHelper
  def get_config(configname, default_value)
    _attributes = @master || @minion
    if _attributes.has_key?(configname)
      "#{configname}: #{_attributes[configname]}"
    else
      "#{configname}: #{default_value}"
    end
  end
end
