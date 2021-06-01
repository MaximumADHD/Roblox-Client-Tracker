local Root = script.Parent.Parent

local Packages = Root.Parent
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local LocaleService = require(Root.Locale.LocaleService)

local LocaleConsumer = require(script.Parent.LocaleConsumer)

local validateProps = t.strictInterface({
	keys = t.table,
	render = t.callback,
})

local validateItem = t.strictInterface({
	key = t.string,
	params = t.optional(t.table),
})

local function MultiTextLocalizer(props)
	assert(validateProps(props))
	for _, item in pairs(props.keys) do
		assert(validateItem(item))
	end

	local render = props.render

	return Roact.createElement(LocaleConsumer, {
		render = function(LocaleContext)
			local textMap = {}
			for key, item in pairs(props.keys) do
				textMap[key] = LocaleService.getString(LocaleContext, item.key, item.params)
			end
			return render(textMap)
		end,
	})
end

return MultiTextLocalizer
