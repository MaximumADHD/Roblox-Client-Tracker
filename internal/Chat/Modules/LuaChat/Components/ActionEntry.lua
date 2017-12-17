

local Modules = script.Parent.Parent
local Create = require(Modules.Create)
local Constants = require(Modules.Constants)
local Text = require(Modules.Text)

local ListEntry = require(Modules.Components.ListEntry)

local ICON_CELL_WIDTH = 60
local HEIGHT = 48

local LABEL_SPACING = 12

local ActionEntry = {}

function ActionEntry.new(appState, icon, localizationKey, size)
	local self = {}

	size = size or 24

	setmetatable(self, {__index = ActionEntry})

	local text = appState.localization:Format(localizationKey)

	local listEntry = ListEntry.new(appState, HEIGHT)
	self.rbx = listEntry.rbx

	local iconFrame = Create.new"Frame" {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Size = UDim2.new(0, ICON_CELL_WIDTH, 1, 0),
		Position = UDim2.new(0, 0, 0, 0),
		Create.new"ImageLabel" {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, size, 0, size),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Image = icon,
			BorderSizePixel = 0,
		},
	}
	iconFrame.Parent = self.rbx

	local label = Create.new"TextLabel" {
		Name = "Label",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -ICON_CELL_WIDTH, 1, 0),
		Position = UDim2.new(0, ICON_CELL_WIDTH, 0, 0),
		TextSize = Constants.Font.FONT_SIZE_18,
		TextColor3 = Constants.Color.GRAY1,
		Font = Enum.Font.SourceSans,
		Text = text,
		TextXAlignment = Enum.TextXAlignment.Left,
	}
	label.Parent = self.rbx

	local labelEffectiveWidth = Text.GetTextWidth(text, Enum.Font.SourceSans, Constants.Font.FONT_SIZE_18) + LABEL_SPACING
	local value = Create.new"TextLabel" {
		Name = "Value",
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -ICON_CELL_WIDTH-12-labelEffectiveWidth, 1, 0),
		Position = UDim2.new(0, ICON_CELL_WIDTH+labelEffectiveWidth, 0, 0),
		TextSize = Constants.Font.FONT_SIZE_18,
		TextColor3 = Constants.Color.GRAY2,
		Font = Enum.Font.SourceSans,
		Text = "",
		TextXAlignment = Enum.TextXAlignment.Right,
		ClipsDescendants = true,
	}
	value.Parent = self.rbx

	local divider = Create.new"Frame" {
		Name = "Divider",
		BackgroundColor3 = Constants.Color.GRAY4,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 1),
		Position = UDim2.new(0, 0, 1, -1),
	}
	divider.Parent = self.rbx
	self.divider = divider

	self.tapped = Instance.new("BindableEvent")
	self.tapped.Parent = self.rbx

	listEntry.tapped:Connect(function()
		self.tapped:Fire()
	end)

	value:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
		self:AdjustLayout()
	end)

	return self
end

function ActionEntry:SetDividerOffset(dividerOffset)
	self.divider.Size = UDim2.new(1, -dividerOffset, 0, 1)
	self.divider.Position = UDim2.new(0, dividerOffset, 1, -1)
end

function ActionEntry:AdjustLayout()
	local text = self.rbx.Value.Text
	local valueWidth = Text.GetTextWidth(text, Enum.Font.SourceSans, Constants.Font.FONT_SIZE_18)
	if valueWidth > self.rbx.Value.AbsoluteSize.X then
		self.rbx.Value.TextXAlignment = Enum.TextXAlignment.Right
	else
		self.rbx.Value.TextXAlignment = Enum.TextXAlignment.Left
	end
end

function ActionEntry:Update(state)
	self.rbx.Value.Text = state
	self:AdjustLayout()
end

return ActionEntry
