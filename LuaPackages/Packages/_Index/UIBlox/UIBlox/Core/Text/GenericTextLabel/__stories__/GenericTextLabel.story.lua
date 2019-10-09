local LoadingRoot = script.Parent.Parent
local UIBloxRoot = LoadingRoot.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(UIBloxRoot.Parent.Roact)
local UIBloxStyle = require(Packages.UIBloxResources.UIBloxStyle)
local GothamFont = UIBloxStyle.Font
local DarkTheme = UIBloxStyle.Theme

local TestStyle = require(UIBloxRoot.Style.Validator.TestStyle)
local StyleProvider = require(UIBloxRoot.Style.StyleProvider)

local GenericTextLabel = require(UIBloxRoot.Core.Text.GenericTextLabel.GenericTextLabel)

return function(target)
	local styleProvider = Roact.createElement(StyleProvider, {
		style = TestStyle,
	}, {
		GenericTextLabel = Roact.createElement(GenericTextLabel, {
			Text = "Phantom Forces [Sniper Update!]",
			Size = UDim2.new(0, 150, 0, 45),
			colorStyle = DarkTheme.SystemPrimaryDefault,
			fontStyle = GothamFont.Header1,
			fluidSizing = true,
		}),
	})

	local handle = Roact.mount(styleProvider, target, "GenericTextLabel")
	return function()
		Roact.unmount(handle)
	end
end