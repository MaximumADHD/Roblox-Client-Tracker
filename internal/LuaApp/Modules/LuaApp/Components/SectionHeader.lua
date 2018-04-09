local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local Constants = require(Modules.LuaApp.Constants)
local FitChildren = require(Modules.LuaApp.FitChildren)
local FitTextLabel = require(Modules.LuaApp.Components.FitTextLabel)

local SectionHeader = Roact.PureComponent:extend("SectionHeader")

local TEXT_SIZE = 26
local TEXT_FONT = Enum.Font.SourceSansLight

function SectionHeader:render()
	local text = self.props.text
	local layoutOrder = self.props.LayoutOrder

	return Roact.createElement(FitChildren.FitFrame, {
		Size = UDim2.new(1, 0, 0, 0),
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		ClipsDescendants = false,
	}, {
		Title = Roact.createElement(FitTextLabel, {
			BackgroundTransparency = 1,
			TextSize = TEXT_SIZE,
			TextColor3 = Constants.Color.GRAY1,
			Font = TEXT_FONT,
			Text = text,
			TextWrapped = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,

			fitAxis = FitChildren.FitAxis.Both,
		}),
	})
end

return SectionHeader