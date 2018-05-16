local FlagSettings = {}

function FlagSettings.IsLuaHomePageEnabled()
	return settings():GetFFlag("UseLuaHomePageOniPad") or settings():GetFFlag("UseLuaHomePageOniPhone")
			or settings():GetFFlag("UseLuaHomePageOnAndroidTablet") or settings():GetFFlag("UseLuaHomePageOnAndroidPhone")
end

function FlagSettings.IsLuaGamesPageEnabled()
	return settings():GetFFlag("UseLuaGamesPageOniPad") or settings():GetFFlag("UseLuaGamesPageOniPhone")
			or settings():GetFFlag("UseLuaGamesPageOnAndroidTablet") or settings():GetFFlag("UseLuaGamesPageOnAndroidPhone")
end

function FlagSettings.IsLuaBottomBarEnabled()
	return UserSettings().GameSettings:InStudioMode()
end

return FlagSettings