-- TODO: jbousellam - remove with FFlagUpdateConvertToPackageToDFContextServices
local Plugin = script.Parent.Parent.Parent

local withTheme = require(Plugin.Src.ContextServices.Theming).withTheme
local withLocalization = require(Plugin.Packages.UILibrary).Localizing.withLocalization

local withContext = function(func)
    return withTheme(function(theme)
        return withLocalization(function(localization)
            return func(localization,theme)
        end)
    end)
end
return withContext