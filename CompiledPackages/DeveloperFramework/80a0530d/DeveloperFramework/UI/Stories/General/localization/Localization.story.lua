local Framework = script:FindFirstAncestor("UI").Parent
local React = require(Framework.Util.React)
local ContextServices = require(Framework.UI.ContextServices)
local Plugin = ContextServices.Plugin
local Localization = ContextServices.Localization

local stringResourceTable = script.Parent.SourceStrings
local translationResourceTable = script.Parent.LocalizedStrings

local pluginItem = Plugin.new(plugin)
local localization = Localization.new({
	stringResourceTable = stringResourceTable,
	translationResourceTable = translationResourceTable,
	pluginName = "TestFramework",
})

function Label(props: { name: string })
	local localization = Localization:use()
	return React.createElement("TextLabel", {
		[React.Tag] = "X-Fit X-Pad",
		Text = localization:getText("Example", "Hello", {
			Name = props.name,
		}),
	})
end

return ContextServices.provide({ pluginItem, localization }, {
	Label = React.createElement(Label, {
		name = "ZeroIndex",
	}),
})
