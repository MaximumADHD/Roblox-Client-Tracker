local Modules = game:GetService("CoreGui").RobloxGui.Modules

local Roact = require(Modules.Common.Roact)

local Constants = require(Modules.LuaApp.Constants)
local FitChildren = require(Modules.LuaApp.FitChildren)
local SectionHeader = require(Modules.LuaApp.Components.SectionHeader)
local LocalizedTextLabel = require(Modules.LuaApp.Components.LocalizedTextLabel)

local SectionHeaderWithSeeAll = Roact.PureComponent:extend("SectionHeaderWithSeeAll")

local TEXT_MARGIN = 7

local BUTTON_WIDTH = 90
local BUTTON_HEIGHT = 24
local BUTTON_TEXT_SIZE = 18
local BUTTON_FONT = Enum.Font.SourceSans
local TOTAL_HEIGHT = 33

local SEE_ALL_BUTTON_ASSET_DEFAULT = "rbxasset://textures/ui/LuaApp/9-slice/gr-btn-blue-3px.png"
local SEE_ALL_BUTTON_ASSET_PRESSED = "rbxasset://textures/ui/LuaApp/9-slice/gr-btn-blue-3px-pressed.png"

function SectionHeaderWithSeeAll:init()
	self.state = {
		isSeeAllPressed = false,
	}
	self.onSelected = function()
		self.props.onSelected(self.props.value)
	end
	self.onBegan = function()
		self:setState({
			isSeeAllPressed = true
		})
	end
	self.onEnded = function()
		self:setState({
			isSeeAllPressed = false
		})
	end
end

function SectionHeaderWithSeeAll:render()
	local text = self.props.text
	local onSelected = self.props.onSelected
	local layoutOrder = self.props.LayoutOrder
	local isSeeAllPressed = self.state.isSeeAllPressed

	local seeAllButtonAsset
	if isSeeAllPressed then
		seeAllButtonAsset = SEE_ALL_BUTTON_ASSET_PRESSED
	else
		seeAllButtonAsset = SEE_ALL_BUTTON_ASSET_DEFAULT
	end

	return Roact.createElement(FitChildren.FitFrame, {
		Size = UDim2.new(1, 0, 0, TOTAL_HEIGHT),
		fitAxis = FitChildren.FitAxis.Height,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Title = Roact.createElement(SectionHeader, {
			Size = UDim2.new(1, -BUTTON_WIDTH, 0, 0),
			text = text,
		}),
		Spacer = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, TEXT_MARGIN),
			LayoutOrder = 2,
		}, {
			Button = Roact.createElement("ImageButton", {
				Size = UDim2.new(0, BUTTON_WIDTH, 0, BUTTON_HEIGHT),
				Position = UDim2.new(1, -BUTTON_WIDTH, 0, -BUTTON_HEIGHT),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(3,3,4,4),
				Image = seeAllButtonAsset,
				AutoButtonColor = true,
				[Roact.Event.Activated] = onSelected and self.onSelected or nil,
				[Roact.Event.InputBegan] = self.onBegan,
				[Roact.Event.InputEnded] = self.onEnded,
			}, {
				Text = Roact.createElement(LocalizedTextLabel, {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Text = "Feature.GamePage.ActionSeeAll",
					TextSize = BUTTON_TEXT_SIZE,
					Font = BUTTON_FONT,
					TextColor3 = Constants.Color.WHITE,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
				}),
			}),
		})
	})
end

return SectionHeaderWithSeeAll