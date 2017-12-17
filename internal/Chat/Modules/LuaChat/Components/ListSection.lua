local function findAncestor(child, name)
	local parent = child.Parent
	while parent and parent.Name ~= name do
		parent = parent.Parent
	end
	return parent
end

local DIVIDER_SIZE_LARGE = 26
local DIVIDER_SIZE_SMALL = 12

local Modules = findAncestor(script, "LuaChat")
local Create = require(Modules.Create)
local Constants = require(Modules.Constants)

local ListSection = {}

ListSection.__index = ListSection

function ListSection.new(appState, labelKey, layoutOrder)
	local self = {}
	setmetatable(self, ListSection)

	local labelHeight = labelKey and DIVIDER_SIZE_LARGE or DIVIDER_SIZE_SMALL

	self.rbx = Create.new"Frame" {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, labelHeight),
		LayoutOrder = layoutOrder,
	}

	if labelKey then
		local labelText = appState.localization:Format(labelKey)
		local label = Create.new"TextLabel" {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Position = UDim2.new(0, 12, 1, 0),
			BorderSizePixel = 0,
			Text = labelText,
			TextColor3 = Constants.Color.GRAY2,
			TextSize = Constants.Font.FONT_SIZE_14,
			Font = Enum.Font.SourceSans,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Center,
			AnchorPoint = Vector2.new(0,1),
		}
		label.Parent = self.rbx
	end

	local divider = Create.new"Frame" {
		Name = "Divider",
		BackgroundColor3 = Constants.Color.GRAY4,
		BorderSizePixel = 0,
		Size = UDim2.new(1, 0, 0, 1),
		Position = UDim2.new(0, 0, 1, -1),
	}
	divider.Parent = self.rbx
	return self
end

return ListSection
