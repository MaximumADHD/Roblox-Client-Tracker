--[[
	This is the Vote component for AssetPreview component.

	Necessary properties:
	position = UDim2
	size = UDim2
	voting = table, a table contains the voting data
	assetId = num

	Optionlal properties:
	layoutOrder = num
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Util = Plugin.Core.Util
local Images = require(Util.Images)
local Constants = require(Util.Constants)
local ContextGetter = require(Util.ContextGetter)
local ContextHelper = require(Util.ContextHelper)

local RoundButton = require(Plugin.Core.Components.RoundButton)

local withTheme = ContextHelper.withTheme

local MainViewButtons = Roact.PureComponent:extend("MainViewButtons")

-- Determined by how many buttons we have and the padding.
local TOTAL_WIDTH = 62
local TOTAL_HEIGHT = 28

local INLINE_PADDING = 6

local BUTTON_STATUS = {
	default = 0,
	hovered = 1,
	disabled = 2,
}

function MainViewButtons:init(props)
	self.state = {
		treeViewButtonStatus = BUTTON_STATUS.default,

		fullScreenButtonStatus = BUTTON_STATUS.default,
		showFullScreen = false,
	}

	self.onTreeViewButtonActivated = function()
		local newTreeViewStatus = not self.props.showTreeView

		self.props.onTreeviewStatusToggle(newTreeViewStatus)
	end

	self.onFullScreenButtonActivated = function()
		--TODO: Implemente in the future.
		print("FullScreenButton Activated -----------------------")
	end

	self.onTreeViewButtonEnter = function()
		self:setState({
			treeViewButtonStatus = BUTTON_STATUS.hovered
		})
	end

	self.onTreeViewButtonLeave = function()
		self:setState({
			treeViewButtonStatus = BUTTON_STATUS.default
		})
	end

	self.onFullScreenButtonEnter = function()
		self:setState({
			fullScreenButtonStatus = BUTTON_STATUS.hovered
		})
	end

	self.onFullScreenButtonLeave = function()
		self:setState({
			fullScreenButtonStatus = BUTTON_STATUS.default
		})
	end
end

local function getButtonBGColorAndTrans(buttonsTheme, buttonStatus, toggleStatus)
	local buttonBGColor
	local buttonTrans

	-- TODO: Confirm how do we want it look for hover, disabled, toggled status of the buttons.
	local defaultTrans = buttonsTheme.backgroundTrans
	if toggleStatus then
		defaultTrans = defaultTrans + 0.3
	end

	if buttonStatus == BUTTON_STATUS.default then
		buttonBGColor = buttonsTheme.backgroundColor
		buttonTrans = defaultTrans
	elseif buttonStatus == BUTTON_STATUS.hovered then
		buttonBGColor = buttonsTheme.backgroundColor
		buttonTrans = defaultTrans + 0.3
	else -- BUTTON_STATUS.disabled
		buttonBGColor = buttonsTheme.backgroundDisabledColor
		buttonTrans = defaultTrans
	end

	return buttonBGColor, buttonTrans
end

function MainViewButtons:render()
	return withTheme(function(theme)
		local props = self.props
		local state = self.state

		local position = props.position or UDim2.new(1, 0, 1, 0)

		local buttonsTheme = theme.assetPreview.previewButtons

		local treeViewButtonBGColor, treeViewbButtonTrans = getButtonBGColorAndTrans(buttonsTheme,
				state.treeViewButtonStatus,
				props.showTreeView)
		local fullScreenButtonBGColor, fullScreenButtonTrans = getButtonBGColorAndTrans(buttonsTheme,
				state.fullScreenButtonStatus,
				state.showFullScreen)

		return Roact.createElement("Frame", {
			Position = position,
			AnchorPoint = Vector2.new(1, 1),
			Size = UDim2.new(0, TOTAL_WIDTH, 0, TOTAL_HEIGHT),
			ZIndex = props.ZIndex or 1,

			BackgroundTransparency = 1,
			BorderSizePixel = 0,
		},{
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				VerticalAlignment = Enum.VerticalAlignment.Center,

				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, INLINE_PADDING),
			}),

			TreeViewBGButton = Roact.createElement(RoundButton, {
				Size = UDim2.new(0, Constants.MAINVIEW_BUTTON_WIDTH, 0, Constants.MAINVIEW_BUTTON_HEIGHT),

				BackgroundTransparency = treeViewbButtonTrans,
				BackgroundColor3 = treeViewButtonBGColor,
				BorderSizePixel = 0,

				LayoutOrder = 1,
				AutoButtonColor = false,

				[Roact.Event.Activated] = self.onTreeViewButtonActivated,
				[Roact.Event.MouseEnter] = self.onTreeViewButtonEnter,
				[Roact.Event.MouseLeave] = self.onTreeViewButtonLeave,
			}, {
				TreeViewImageLabel = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0, 16, 0, 16),

					Image = Images.HIERARCHY,
					BackgroundTransparency = 1,
				})
			}),

			-- TODO: Enable it and implemente the detail
			--[[FullScreenBGButton = Roact.createElement(RoundButton, {
				Active = false,

				Size = UDim2.new(0, Constants.MAINVIEW_BUTTON_WIDTH, 0, Constants.MAINVIEW_BUTTON_HEIGHT),

				BackgroundTransparency = fullScreenButtonTrans,
				BackgroundColor3 = fullScreenButtonBGColor,
				BorderSizePixel = 0,

				LayoutOrder = 2,
				AutoButtonColor = false,

				[Roact.Event.Activated] = self.onFullScreenButtonActivated,
				[Roact.Event.MouseEnter] = self.onFullScreenButtonEnter,
				[Roact.Event.MouseLeave] = self.onFullScreenButtonLeave,
			}, {
				FullScreenImageLabel = Roact.createElement("ImageLabel", {
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0, 16, 0, 16),

					Image = Images.FULLSCREEN,
					BackgroundTransparency = 1,
				})
			}),]]
		})
	end)
end

return MainViewButtons