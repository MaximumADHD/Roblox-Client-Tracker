local Root = script.Parent.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Roact = PurchasePromptDeps.Roact

local LocalizationService = require(Root.Localization.LocalizationService)

local LocalizationContextConsumer = require(script.Parent.LocalizationContextConsumer)

local function NumberLocalizer(props)
	local number = props.number
	local render = props.render

	assert(typeof(number) == "number", "prop 'number' must be provided")
	assert(typeof(render) == "function", "Render prop must be a function")

	return Roact.createElement(LocalizationContextConsumer, {
		render = function(localizationContext)
			return render(LocalizationService.formatNumber(localizationContext, number))
		end,
	})
end

return NumberLocalizer
