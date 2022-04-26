--[[
	Header shown at the top of the asset configuration page.

	Props:
		string Title = The text to display for this header
]]

local FFlagToolboxAssetConfigurationMatchPluginFlow = game:GetFastFlag("ToolboxAssetConfigurationMatchPluginFlow")

if not FFlagToolboxAssetConfigurationMatchPluginFlow then
	return nil
end

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)

local ContextServices = require(Packages.Framework).ContextServices
local withContext = ContextServices.withContext

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)

local HEADER_HEIGHT = 45
local HEADER_TEXT_SIZE = 24

local Header = Roact.PureComponent:extend("Header")

function Header:render()
	local props = self.props

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, HEADER_HEIGHT),
	}, {
		UIPadding = Roact.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, -5),
		}),

		Header = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Font = Constants.FONT,
			LayoutOrder = props.LayoutOrder or 1,
			Text = props.Title,
			TextColor3 = props.Stylizer.publishAsset.textColor,
			TextSize = HEADER_TEXT_SIZE,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			Size = UDim2.new(0, 0, 0, HEADER_HEIGHT),
		})
	})
end

Header = withContext({
	Stylizer = ContextServices.Stylizer,
})(Header)

return Header
