local Root = script.Parent.Parent.Parent

local LuaPackages = Root.Parent
local Roact = require(LuaPackages.Roact)

local LocalizationService = require(Root.Localization.LocalizationService)

local LocalizationContextConsumer = require(script.Parent.LocalizationContextConsumer)

local function TextLocalizer(props)
	local key = props.key
	local params = props.params
	local render = props.render

	assert(typeof(key) == "string", "String key must be provided")
	assert(typeof(render) == "function", "Render prop must be a function")

	return Roact.createElement(LocalizationContextConsumer, {
		render = function(localizationContext)
			return render(LocalizationService.getString(localizationContext, key, params))
		end,
	})
end

return TextLocalizer