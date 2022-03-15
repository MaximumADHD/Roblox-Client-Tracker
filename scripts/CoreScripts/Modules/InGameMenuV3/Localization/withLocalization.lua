local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t

local LocalizationConsumer = require(script.Parent.LocalizationConsumer)

local function withLocalization(stringsToBeLocalized)
	assert(t.table(stringsToBeLocalized))

	return function(render)
		assert(t.callback(render))

		return Roact.createElement(LocalizationConsumer, {
			render = render,
			stringsToBeLocalized = stringsToBeLocalized,
		})
	end
end

return withLocalization