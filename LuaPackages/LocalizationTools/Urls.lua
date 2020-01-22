game:DefineFastFlag("LocalizationToolsBaseUrlFixEnabled", false)

local function MakeUrlGetter(subdomain)
	if game:GetFastFlag("LocalizationToolsBaseUrlFixEnabled") then
		return function(BaseUrl)
			if BaseUrl:find("https://www.") then
				BaseUrl = BaseUrl:sub(13)
			elseif BaseUrl:find("http://www.") then
				BaseUrl = BaseUrl:sub(12)
			end

			return string.format("https://%s.%s", subdomain, BaseUrl)
		end
	else
		return function(BaseUrl)
			local newUrl = BaseUrl
			newUrl = string.gsub(newUrl, "http://", "https://")
			newUrl = string.gsub(newUrl, "//m.", "//")
			newUrl = string.gsub(newUrl, "https://roblox.com", "https://".. subdomain ..".roblox.com")
			newUrl = string.gsub(newUrl, "https://www.roblox.com", "https://".. subdomain ..".roblox.com")
			newUrl = string.gsub(newUrl, "https://www.gametest", "https://".. subdomain ..".gametest")
			newUrl = string.gsub(newUrl, "https://www.sitetest", "https://".. subdomain ..".sitetest")
			newUrl = string.gsub(newUrl, "https://gametest", "https://".. subdomain ..".gametest")
			newUrl = string.gsub(newUrl, "https://sitetest", "https://".. subdomain ..".sitetest")
			return newUrl
		end
	end
end

return {
	GetApiUrlFromBaseUrl = MakeUrlGetter("api"),
	GetGameInternationalizationUrlFromBaseUrl = MakeUrlGetter("gameinternationalization"),
	GetLocalizationTablesFromBaseUrl = MakeUrlGetter("localizationtables"),
	GetTranslationRolesUrlFromBaseUrl = MakeUrlGetter("translationroles"),
	GetLocaleUrlFromBaseUrl = MakeUrlGetter("locale"),
}