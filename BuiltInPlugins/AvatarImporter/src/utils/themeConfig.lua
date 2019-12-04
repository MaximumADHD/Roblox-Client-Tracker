local Studio = settings().Studio

local function themeConfig(config)
	return config[Studio.Theme.Name]
end

return themeConfig