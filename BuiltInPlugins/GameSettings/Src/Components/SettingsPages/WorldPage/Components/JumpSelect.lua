--[[
	Widget to configure the jump power / height and switch between whether power or height is used

	Props:
		UseJumpPower (bool) - Whether or not JumpPower is the active of the two (power/height)
		JumpPower (number) - Current jump power
		JumpHeight (number) - Current jump height
		SetUseJumpPower (function) - Invoked with whether the user has set JumpPower to active or not
		SetJumpPower (function) - Invoked with the jump power the user has selected
		SetJumpHeight (function) - Invoked with the jump height the user has selected
	Optional Props:
		LayoutOrder (number)
]]

local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local ContextServices = require(Plugin.Framework.ContextServices)

local WorldRootPhysics = require(Page.ContextServices.WorldRootPhysics)

local formatNumberForDisplay = require(Page.Util.formatNumberForDisplay)

local RoactStudioWidgets = Plugin.RoactStudioWidgets
local StudioWidgetRoundTextBox = require(RoactStudioWidgets.RoundTextBox)
local StudioWidgetRadioButtonSet = require(RoactStudioWidgets.RadioButtonSet)
local StudioWidgetText = require(RoactStudioWidgets.Text)

local TITLED_FRAME_GUTTER_WIDTH = 180
local INPUT_BOX_OFFSET = 160
local METRIC_LABEL_OFFSET = 170

local JumpSelect = Roact.PureComponent:extend("JumpSelect")

function JumpSelect:render()
	local props = self.props
	local layoutOrder = props.LayoutOrder
	local useJumpPower = props.UseJumpPower
	local jumpPower = props.JumpPower
	local jumpHeight = props.JumpHeight
	local setUseJumpPower = props.SetUseJumpPower
	local setJumpPower = props.SetJumpPower
	local setJumpHeight = props.SetJumpHeight

	local localization = props.Localization
	local mouse = props.Mouse:get()
	local worldRootPhysicsController = props.WorldRootPhysics:get()

	local padding  = UDim.new(0, 10)
	local rowHeight = 20

	return Roact.createElement("Frame", {
		LayoutOrder = layoutOrder,
		Size = UDim2.new(1, 0, 0, 50),
		BackgroundTransparency = 1,
	}, {
		JumpSelect = Roact.createElement(StudioWidgetRadioButtonSet, {
			Title = localization:getText("General", "TitleJump"),
			Buttons = {{
					Id = false,
					Title = localization:getText("General", "JumpHeight"),
				}, {
					Id = true,
					Title = localization:getText("General", "JumpPower"),
				},
			},
			Enabled = true,
			Selected = useJumpPower,
			Mouse = mouse,
			SelectionChanged = function(button)
				setUseJumpPower(button.Id)
			end,
		}),

		JumpInput = Roact.createElement("Frame", {
			Position = UDim2.new(0, TITLED_FRAME_GUTTER_WIDTH+INPUT_BOX_OFFSET, 0, 0),
			BackgroundTransparency = 1,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				Padding = padding,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			JumpHeightInputBox = Roact.createElement(StudioWidgetRoundTextBox, {
				ShowToolTip = false,
				Enabled = not useJumpPower,
				ShowTextWhenDisabled = true,
				LayoutOrder = 1,
				Text = formatNumberForDisplay(jumpHeight),
				MaxLength = 100,
				Width = 150,
				Height = rowHeight,
				PaddingBottom = UDim.new(0, 0),
				PaddingTop = UDim.new(0, 0),
				Mouse = mouse,

				FocusChanged = function(focused)
					if not focused then
						local newValue = math.clamp(jumpHeight, 0, math.huge)
						setJumpHeight(newValue)
					end
				end,

				SetText = function(newValue)
					newValue = tonumber(newValue) or 0
					setJumpHeight(newValue)
				end,
			}),

			JumpPowerInputBox = Roact.createElement(StudioWidgetRoundTextBox, {
				ShowToolTip = false,
				Enabled = useJumpPower,
				ShowTextWhenDisabled = true,
				LayoutOrder = 2,
				Text = formatNumberForDisplay(jumpPower),
				MaxLength = 100,
				Width = 150,
				Height = rowHeight,
				PaddingBottom = UDim.new(0, 0),
				PaddingTop = UDim.new(0, 0),
				Mouse = mouse,

				FocusChanged = function(focused)
					if not focused then
						local newValue = math.clamp(jumpPower, 0, 1000)
						setJumpPower(newValue)
					end
				end,

				SetText = function(newValue)
					newValue = tonumber(newValue) or 0
					setJumpPower(newValue)
				end,
			}),
		}),

		MetricLabels = Roact.createElement("Frame", {
			Position = UDim2.new(0, TITLED_FRAME_GUTTER_WIDTH+INPUT_BOX_OFFSET+METRIC_LABEL_OFFSET, 0, 0),
			BackgroundTransparency = 1,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				Padding = padding,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			JumpHeightMetricLabel = Roact.createElement(StudioWidgetText, {
				Enabled = not useJumpPower,
				Size = UDim2.new(1, 0, 0, rowHeight),
				Text = localization:getText("General", "UnitsMeters1",
					{formatNumberForDisplay(worldRootPhysicsController.convertStudsToMeters(jumpHeight))})
			})
		}),
	})
end

ContextServices.mapToProps(JumpSelect, {
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
	WorldRootPhysics = WorldRootPhysics,
})

return JumpSelect