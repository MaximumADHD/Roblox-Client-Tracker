local Button = script.Parent
local App = Button.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local RoactGamepad = require(Packages.RoactGamepad)
local t = require(Packages.t)

local FitFrame = require(Packages.FitFrame)
local FitFrameOnAxis = FitFrame.FitFrameOnAxis

local PrimaryContextualButton = require(Button.PrimaryContextualButton)
local PrimarySystemButton = require(Button.PrimarySystemButton)
local IconButton = require(Button.IconButton)
local withStyle = require(UIBlox.Core.Style.withStyle)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getPageMargin = require(App.Container.getPageMargin)
local UIBloxConfig = require(UIBlox.UIBloxConfig)
local validateButtonProps = require(Button.validateButtonProps)
local validateIconButtonProps = IconButton.validateProps

local ActionBar = Roact.PureComponent:extend("ActionBar")

local BUTTON_PADDING = 12
local BUTTON_HEIGHT = 48
local ICON_SIZE = 36

function ActionBar:init()
	self.buttonRefs = RoactGamepad.createRefCache()

	self.state = {
		frameWidth = 0
	}

	self.updateFrameSize = function(rbx)
		local frameWidth = rbx.AbsoluteSize.X
		if frameWidth ~= self.state.frameWidth then
			self:setState({
				frameWidth = frameWidth,
			})
		end
	end
end

ActionBar.validateProps = t.strictInterface({
	-- buttons: A table of button tables that contain props that PrimaryContextualButton allow.
	button = t.optional(t.strictInterface({
		props = validateButtonProps,
	})),

	-- icons: A table of button tables that contain props that IconButton allow.
	icons = t.optional(t.array(t.strictInterface({
		props = validateIconButtonProps
	}))),

	-- Children
	[Roact.Children] = t.optional(t.table),

	-- optional parameters for RoactGamepad
	NextSelectionLeft = t.optional(t.table),
	NextSelectionRight = t.optional(t.table),
	NextSelectionUp = t.optional(t.table),
	NextSelectionDown = t.optional(t.table),
	[Roact.Ref] = t.optional(t.table),
})

function ActionBar:render()

	return withStyle(function(stylePalette)
		local margin = getPageMargin(self.state.frameWidth)
		local contentWidth = self.state.frameWidth - margin * 2
		local iconSize = IconSize.Medium

		local iconNumber = 0
		if self.props.icons and #self.props.icons then
			iconNumber = #self.props.icons
		end

		local buttonTable = {}

		if iconNumber ~= 0 then
			for iconButtonIndex, iconButton in ipairs(self.props.icons) do
				local newProps = {
					layoutOrder = iconButtonIndex,
					iconSize = iconSize,
				}
				local iconButtonProps = Cryo.Dictionary.join(newProps, iconButton.props)

				if UIBloxConfig.enableExperimentalGamepadSupport then
					local gamepadFrameProps = {
						Size = UDim2.fromOffset(ICON_SIZE,ICON_SIZE),
						BackgroundTransparency = 1,
						[Roact.Ref] = self.buttonRefs[iconButtonIndex],
						NextSelectionUp = nil,
						NextSelectionDown = nil,
						NextSelectionLeft = iconButtonIndex > 1 and self.buttonRefs[iconButtonIndex - 1] or nil,
						NextSelectionRight = iconButtonIndex < iconNumber and self.buttonRefs[iconButtonIndex + 1] or nil,
						inputBindings = {
							[Enum.KeyCode.ButtonA] = iconButtonProps.onActivated,
						},
					}

					table.insert(buttonTable, Roact.createElement(RoactGamepad.Focusable.Frame, gamepadFrameProps, {
						Roact.createElement(IconButton, iconButtonProps)
					}))
				else
					table.insert(buttonTable, Roact.createElement(IconButton, iconButtonProps))
				end
			end
		end

		if self.props.button then
			local button = self.props.button

			local buttonSize = UDim2.fromOffset(contentWidth - iconNumber * (ICON_SIZE + BUTTON_PADDING), BUTTON_HEIGHT)

			local newProps = {
				layoutOrder = iconNumber + 1,
				size = buttonSize,
			}
			local buttonProps = Cryo.Dictionary.join(newProps, button.props)

			if UIBloxConfig.enableExperimentalGamepadSupport then
				local gamepadFrameProps = {
					Size = buttonSize,
					BackgroundTransparency = 1,
					[Roact.Ref] = self.buttonRefs[iconNumber + 1],
					NextSelectionUp = nil,
					NextSelectionDown = nil,
					NextSelectionLeft = iconNumber and self.buttonRefs[iconNumber] or nil,
					NextSelectionRight = nil,
					inputBindings = {
						[Enum.KeyCode.ButtonA] = buttonProps.onActivated,
					},
				}

				table.insert(buttonTable, Roact.createElement(RoactGamepad.Focusable.Frame, gamepadFrameProps, {
					Roact.createElement(iconNumber == 0 and PrimarySystemButton or PrimaryContextualButton, buttonProps)
				}))
			else
				table.insert(buttonTable,
				Roact.createElement(iconNumber == 0 and PrimarySystemButton or PrimaryContextualButton, buttonProps))
			end
		end

		if self.props[Roact.Children] then
			buttonTable = self.props[Roact.Children]
		end

		return Roact.createElement(UIBloxConfig.enableExperimentalGamepadSupport and
			RoactGamepad.Focusable[FitFrameOnAxis] or FitFrameOnAxis, {
			BackgroundTransparency = 1,
			minimumSize = UDim2.new(1, 0, 0, BUTTON_HEIGHT),
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Position = UDim2.new(0, 0, 1, -24),
			AnchorPoint = Vector2.new(0, 1),
			contentPadding = UDim.new(0, BUTTON_PADDING),
			[Roact.Ref] = self.props[Roact.Ref],
			[Roact.Change.AbsoluteSize] = self.updateFrameSize,
			margin = {
				left = margin,
				right = margin,
				top = 0,
				bottom = 0
			},

			NextSelectionLeft = self.props.NextSelectionLeft,
			NextSelectionRight = self.props.NextSelectionRight,
			NextSelectionUp = self.props.NextSelectionUp,
			NextSelectionDown = self.props.NextSelectionDown,
		},
			buttonTable
		)
	end)
end

return ActionBar
