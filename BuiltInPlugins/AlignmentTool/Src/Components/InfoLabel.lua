--[[
	A text label that spans the width of its container, and resizes vertically
	to fit the height of wrapped text.
]]
local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

local SharedFlags = Framework.SharedFlags
local FFlagDevFrameworkMigrateTextLabels = SharedFlags.getFFlagDevFrameworkMigrateTextLabels()

-- TODO delete this file when flag is removed
if FFlagDevFrameworkMigrateTextLabels then
	return nil
end

local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local TextService = game:GetService("TextService")

-- Given a TextLabel, get the bounds of its text when wrapped with its current width
local function getLabelTextBounds(label)
	return TextService:GetTextSize(label.Text, label.TextSize, label.Font, Vector2.new(label.AbsoluteSize.X, 10000))
end

local SIDE_PADDING = 20

local InfoLabel = Roact.PureComponent:extend("InfoLabel")

InfoLabel.Info = "Info"
InfoLabel.Error = "Error"
InfoLabel.Warning = "Warning"

function InfoLabel:init()
	self.containerRef = Roact.createRef()
	self.labelRef = Roact.createRef()

	self.updateHeight = function()
		local container = self.containerRef.current
		local label = self.labelRef.current
		if not container or not label then
			return
		end
		container.Size = UDim2.new(1, -SIDE_PADDING, 0, getLabelTextBounds(label).y)
	end
end

function InfoLabel:didMount()
	self.updateHeight()
end

function InfoLabel:didUpdate()
	self.updateHeight()
end

function InfoLabel:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder or 1
	local text = props.Text or ""
	local theme = props.Stylizer

	local infoType = props.Type
	local textColor
	if infoType == InfoLabel.Error then
		textColor = theme.ErrorTextColor
	elseif infoType == InfoLabel.Warning then
		textColor = theme.WarningTextColor
	elseif infoType == InfoLabel.Info then
		textColor = theme.InfoTextColor
	else
		textColor = theme.InfoLabel.TextColor
	end

	return Roact.createElement("Frame", {
		LayoutOrder = layoutOrder,
		Size = UDim2.new(1, -SIDE_PADDING, 0, 16),
		BackgroundTransparency = 1,

		[Roact.Ref] = self.containerRef,
	}, {
		Label = Roact.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,

			Text = text,
			TextWrapped = true,
			TextColor3 = textColor,
			TextXAlignment = Enum.TextXAlignment.Left,

			[Roact.Ref] = self.labelRef,
			[Roact.Change.AbsoluteSize] = self.updateHeight,
		}),
	})
end

InfoLabel = withContext({
	Stylizer = ContextServices.Stylizer,
})(InfoLabel)

return InfoLabel
