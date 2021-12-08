--[[
	A text label that fits within the 2 column layout of the plugin.
	It resizes vertically to fit the text.
Props
	LayoutOrder : number = 1
	Text : String
	Type : String = "Info" - What information is the label showing? i.e. information, warnings or errors
	                         Use InfoLabel.Info, .Warning and .Error
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = require(Plugin.Src.ContextItems)

local Constants = require(Plugin.Src.Util.Constants)

local TextService = game:GetService("TextService")

-- Given a TextLabel, get the bounds of its text when wrapped with its current width
local function getLabelTextBounds(label)
	return TextService:GetTextSize(label.Text, label.TextSize, label.Font, Vector2.new(label.AbsoluteSize.x, 10000))
end

local InfoLabel = Roact.PureComponent:extend(script.Name)

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
		container.Size = UDim2.new(1, -Constants.SIDE_PADDING, 0, getLabelTextBounds(label).y)
	end
end

function InfoLabel:didMount()
	self.updateHeight()
end

function InfoLabel:didUpdate()
	self.updateHeight()
end

function InfoLabel:render()
	local theme = self.props.Theme:get()

	local layoutOrder = self.props.LayoutOrder or 1
	local text = self.props.Text or ""

	local textColor = theme.textColor

	local infoType = self.props.Type or InfoLabel.Info
	if infoType == InfoLabel.Error then
		textColor = theme.errorColor
	elseif infoType == InfoLabel.Warning then
		textColor = theme.warningColor
	end -- else info or invalid type uses standard text color

	return Roact.createElement("Frame", {
		LayoutOrder = layoutOrder,
		Size = UDim2.new(1, -Constants.SIDE_PADDING, 0, 16),
		BackgroundTransparency = 1,

		[Roact.Ref] = self.containerRef,
	}, {
		Label = Roact.createElement("TextLabel", {
			Position = UDim2.new(0, Constants.SIDE_PADDING, 0, 0),
			Size = UDim2.new(1, -Constants.SIDE_PADDING, 1, 0),
			BackgroundTransparency = 1,

			Text = text,
			TextSize = theme.textSize,
			Font = theme.font,
			TextWrapped = true,
			TextColor3 = textColor,
			TextXAlignment = Enum.TextXAlignment.Left,

			[Roact.Ref] = self.labelRef,
			[Roact.Change.AbsoluteSize] = self.updateHeight,
		}),
	})
end


InfoLabel = withContext({
	Theme = ContextItems.UILibraryTheme,
})(InfoLabel)



return InfoLabel
