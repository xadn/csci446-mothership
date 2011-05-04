APP_TITLE = "Space Armada!"
Time::DATE_FORMATS[:datetime] = "%B %d, %Y %I:%M%p"
Time::DATE_FORMATS[:short_datetime] = "%b %d, %Y %I:%M%p"
Time::DATE_FORMATS[:date] = "%B %d, %Y"

INTEGRATION_CONFIG = YAML.load(File.read("#{Rails.root}/config/integration.yml"))