local Translator = {
	FormatByKey = function(_, key)
		return key
	end,
}

local Localization = require(script.Localization)
return Localization((Translator :: any) :: Translator)
