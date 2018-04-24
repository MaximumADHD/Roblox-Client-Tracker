local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local Constants = require(Modules.LuaApp.Constants)
local FitChildren = require(Modules.LuaApp.FitChildren)
local FitTextLabel = require(Modules.LuaApp.Components.FitTextLabel)

local SectionHeader = Roact.PureComponent:extend("SectionHeader")

local TEXT_SIZE = 26
local TEXT_FONT = Enum.Font.SourceSansLight
local DEFAULT_SIZE = UDim2.new(1, 0, 0, TEXT_SIZE)

function SectionHeader:render()
	local text = self.props.text
	local layoutOrder = self.props.LayoutOrder
	local size = self.props.Size

	return Roact.createElement(FitTextLabel, {
		LayoutOrder = layoutOrder,
		Size = size or DEFAULT_SIZE,
		BackgroundTransparency = 1,
		TextSize = TEXT_SIZE,
		TextColor3 = Constants.Color.GRAY1,
		Font = TEXT_FONT,
		Text = text,
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		fitAxis = FitChildren.FitAxis.Height,
	})
end

return SectionHeader