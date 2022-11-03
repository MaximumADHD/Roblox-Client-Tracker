local Root = script.Parent
local Packages = Root.Parent

local Roact = require(Packages.Roact)
local LocalizationProvider = require(Packages.Localization).LocalizationProvider
local Signal = require(Packages.AppCommonLib).Signal

return function(element)
	return Roact.createElement(LocalizationProvider, {
		localization = {
			Format = function(_, key, _)
				return key
			end,
			changed = Signal.new(),
		},
	}, {
		TestElement1 = element,
	})
end
