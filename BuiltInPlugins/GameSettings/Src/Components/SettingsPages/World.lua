--[[
	Settings page for World settings.
		- Jump power
		- or Jump Height
		- Gravity
		- Walk speed
		- Max slope angle

	Settings:
		bool UseJumpPower - whether to use jump power or jump height settings
		float JumpPower
		float JumpHeight
		float Gravity
		float WalkSpeed
		float MaxSlopeAngle - maximum incline angle (in degrees) that the avatar can walk up
]]

local PageName = "World"

local DFIntJumpPowerInstantControllerMultiplierPercent =  tonumber(settings():GetFVariable("JumpPowerInstantControllerMultiplierPercent"))
local FFlagGameSettingsReorganizeHeaders = settings():GetFFlag("GameSettingsReorganizeHeaders")
local DFFlagGameSettingsFixMetricConversionLabels = settings():GetFFlag("GameSettingsFixMetricConversionLabels")

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local getMouse = require(Plugin.Src.Consumers.getMouse)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local MathUtil = require(Plugin.Src.Util.MathUtil)

local RoactStudioWidgets = Plugin.RoactStudioWidgets
local StudioWidgetTitledFrame = require(Plugin.UILibrary.Components.TitledFrame)
local StudioWidgetRoundTextBox = require(Plugin.UILibrary.Components.RoundTextBox)
local StudioWidgetRadioButtonSet = require(RoactStudioWidgets.RadioButtonSet)
local StudioWidgetSeparator = require(RoactStudioWidgets.Separator)
local StudioWidgetText = require(RoactStudioWidgets.Text)
local StudioWidgetButtonBarWithToolTip = require(RoactStudioWidgets.ButtonBarWithToolTip)

local Header = require(Plugin.Src.Components.Header)

local TITLED_FRAME_GUTTER_WIDTH = 180
local INPUT_BOX_OFFSET = 160
local METRIC_LABEL_OFFSET= 170
local ROW_HEIGHT = 35

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.createSettingsPage)

--Loads settings values into props by key
local function loadValuesToProps(getValue)
	return {
		WorkspaceUseJumpPower = getValue("workspaceUseJumpPower"),
		WorkspaceJumpPower = getValue("workspaceJumpPower") or 0,
		WorkspaceJumpHeight = getValue("workspaceJumpHeight") or 0,
		WorkspaceGravity = getValue("workspaceGravity") or 0,
		WorkspaceWalkSpeed = getValue("workspaceWalkSpeed") or 0,
		WorkspaceMaxSlopeAngle = getValue("workspaceMaxSlopeAngle") or 0
	}
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue)
	return {
		WorkspaceUseJumpPowerChanged = setValue("workspaceUseJumpPower"),
		WorkspaceJumpPowerChanged = setValue("workspaceJumpPower"),
		WorkspaceJumpHeightChanged = setValue("workspaceJumpHeight"),
		WorkspaceGravityChanged = setValue("workspaceGravity"),
		WorkspaceWalkSpeedChanged = setValue("workspaceWalkSpeed"),
		WorkspaceMaxSlopeAngleChanged = setValue("workspaceMaxSlopeAngle")
	}
end

local function studToMetric(studs)
	studs = tonumber(studs) or 0
	local ConvertToMetric = 0.28;
	local metric = studs * ConvertToMetric;
	return tostring(MathUtil.round(metric))
end

local function createInputRow(title, label, value, minValue, maxValue, updateFunc, layoutOrder, mouse, metricsUnitText)
	return Roact.createElement(StudioWidgetTitledFrame, {
		Title = title,
		MaxHeight = ROW_HEIGHT,
		LayoutOrder = layoutOrder,
		TitleTextYAlignment = Enum.TextYAlignment.Center
	}, {
		Label = Roact.createElement(StudioWidgetText, {
			Enabled = true,
			Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
			Position = UDim2.new(0, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			Text = label,
		}),
		InputBox = Roact.createElement(StudioWidgetRoundTextBox, {
			Enabled = true,
			ShowToolTip = false,
			Text = tostring(value),
			MaxLength = 100,
			Position = UDim2.new(0, INPUT_BOX_OFFSET, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			Width = 150,
			Height = ROW_HEIGHT,
			PaddingBottom = UDim.new(0, 0),
			PaddingTop = UDim.new(0, 0),
			Mouse = mouse,

			FocusChanged = function(focused)
				if not focused then
					local newValue = tonumber(value) or minValue or maxValue
					newValue = (newValue and minValue) and math.max(newValue, minValue) or newValue
					newValue = (newValue and maxValue) and math.min(newValue, maxValue) or newValue
					updateFunc(MathUtil.round(newValue))
				end
			end,

			SetText = function(text)
				updateFunc(text)
			end,
		}),
		MetricLabel = Roact.createElement(StudioWidgetText, {
			Enabled = true,
			Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
			Position = UDim2.new(0, INPUT_BOX_OFFSET+METRIC_LABEL_OFFSET, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			Text = metricsUnitText and "(" .. studToMetric(value) .. " " .. metricsUnitText .. ")" or "",
		}),
	})
end

local function applyPreset(props, gravity, shouldJumpPowerBeUsed, jumpPower, jumpHeight, walkSpeed, maxSlope)
	if nil ~= gravity then
		props.WorkspaceGravityChanged(gravity)
	end

	if nil ~= shouldJumpPowerBeUsed then
		props.WorkspaceUseJumpPowerChanged(shouldJumpPowerBeUsed)
	else
		shouldJumpPowerBeUsed = props.WorkspaceUseJumpPower
	end

	if shouldJumpPowerBeUsed then
		if nil ~= jumpPower then
			props.WorkspaceJumpPowerChanged(jumpPower)
		end
		if nil ~= gravity or nil ~= jumpPower then
			props.WorkspaceJumpHeightChanged(MathUtil.round(MathUtil.calculateJumpHeightFromPower(gravity or props.WorkspaceGravity, jumpPower or props.WorkspaceJumpPower)))
		end
	else
		if nil ~= jumpHeight then
			props.WorkspaceJumpHeightChanged(jumpHeight)
		end
		if nil ~= gravity or nil ~= jumpHeight then
			props.WorkspaceJumpPowerChanged(MathUtil.round(MathUtil.calculateJumpPowerFromHeight(gravity or props.WorkspaceGravity, jumpHeight or props.WorkspaceJumpHeight)))
		end
	end

	if nil ~= walkSpeed then
		props.WorkspaceWalkSpeedChanged(walkSpeed)
	end

	if nil ~= maxSlope then
		props.WorkspaceMaxSlopeAngleChanged(maxSlope)
	end
end

local function createPresetsWidgets(order, worldPanelProps, mouse)
	return Roact.createElement(StudioWidgetButtonBarWithToolTip, {
		ButtonBarButtons = {
			{
				Name="Classic", Enabled=true, ShowPressed=true, Mouse=mouse,
				Value={
					ToolTip = "Classic Roblox, heavier gravity, higher jump",
					ApplyPreset = function() applyPreset(worldPanelProps, 196.2, true, 50, nil, 16, 89) end
				}
			}, {
				Name="Realistic", Enabled=true, ShowPressed=true, Mouse=mouse,
				Value={
					ToolTip = "Real world gravity, athletic human",
					ApplyPreset = function() applyPreset(worldPanelProps, 35, true, 13, nil, 16) end
				}
			}, {
				Name="Action", Enabled=true, ShowPressed=true, Mouse=mouse,
				Value={
					ToolTip = "Slightly heavier gravity, jump higher, walk faster",
					ApplyPreset = function() applyPreset(worldPanelProps, 75, true, 31, nil, 18) end
				}
			}
		},
		ButtonClicked = function(value)
			value.ApplyPreset()
		end,
		LayoutOrder = order,
		Title = "Presets"
	})
end

local function createJumpSelectWidgets(incrementNextLayoutOrderFunc, props, mouse)
	local JumpSelectPadding  = UDim.new(0, 10)
	local JumpSelectRowHeight = 20

	local function createInputBox(enabled, value, minValue, maxValue, changedFunc)
		return Roact.createElement(StudioWidgetRoundTextBox, {
			ShowToolTip = false,
			Enabled = enabled,
			ShowTextWhenDisabled = true,
			LayoutOrder = incrementNextLayoutOrderFunc(),
			Text = tostring(value),
			MaxLength = 100,
			Width = 150,
			Height = JumpSelectRowHeight,
			PaddingBottom = UDim.new(0, 0),
			PaddingTop = UDim.new(0, 0),
			Mouse = mouse,

			FocusChanged = function(focused)
				if not focused then
					local newValue = tonumber(value) or minValue or maxValue
					newValue = (newValue and minValue) and math.max(newValue, minValue) or newValue
					newValue = (newValue and maxValue) and math.min(newValue, maxValue) or newValue
					changedFunc(MathUtil.round(newValue))
				end
			end,

			SetText = function(text)
				changedFunc(text)
			end,
		})
	end

	local function setJumpPower(newJumpPower)
		applyPreset(props, nil, nil, newJumpPower)
	end

	local function setJumpHeight(newJumpHeight)
		applyPreset(props, nil, nil, nil, newJumpHeight)
	end

	local function createMetricLabel(enabled, text)
		return Roact.createElement(StudioWidgetText, {
			Enabled = enabled,
			Size = UDim2.new(1, 0, 0, JumpSelectRowHeight),
			Text = text
		})
	end

	return Roact.createElement("Frame", {
		LayoutOrder = incrementNextLayoutOrderFunc(),
		Size = UDim2.new(1, 0, 0, 50),
		BackgroundTransparency = 1,
	}, {
		JumpSelect = Roact.createElement(StudioWidgetRadioButtonSet, {
			Title = "Jump",
			Buttons = {{
					Id = false,
					Title = "Jump Height:",
				}, {
					Id = true,
					Title = "Jump Power:",
				},
			},
			LayoutOrder = incrementNextLayoutOrderFunc(),
			Enabled = true,
			Selected = props.WorkspaceUseJumpPower,
			Mouse = mouse,
			SelectionChanged = function(button)
				props.WorkspaceUseJumpPowerChanged(button.Id)
			end,
		}),

		JumpInput = Roact.createElement("Frame", {
			Position = UDim2.new(0, TITLED_FRAME_GUTTER_WIDTH+INPUT_BOX_OFFSET, 0, 0),
			BackgroundTransparency = 1,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				Padding = JumpSelectPadding,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),
			JumpHeightInputBox = createInputBox(not props.WorkspaceUseJumpPower, props.WorkspaceJumpHeight, 0, nil, setJumpHeight),
			JumpPowerInputBox = createInputBox(props.WorkspaceUseJumpPower, props.WorkspaceJumpPower, 0, 1000, setJumpPower),
		}),

		MetricLabels = Roact.createElement("Frame", {
			Position = UDim2.new(0, TITLED_FRAME_GUTTER_WIDTH+INPUT_BOX_OFFSET+METRIC_LABEL_OFFSET, 0, 0),
			BackgroundTransparency = 1,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				Padding = JumpSelectPadding,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			JumpHeightMetricLabel = createMetricLabel(not props.WorkspaceUseJumpPower, "(" .. studToMetric(props.WorkspaceJumpHeight) .. " meters)"),
			JumpPowerMetricLabel = (not DFFlagGameSettingsFixMetricConversionLabels) and createMetricLabel(props.WorkspaceUseJumpPower, "(" .. studToMetric(props.WorkspaceJumpPower) .. " meters/second)") or nil
		}),
	})
end

local function createJumpDistanceWidgets(incrementNextLayoutOrderFunc, props)
	local function calculateJumpDistance()
		local gravity = tonumber(props.WorkspaceGravity) or 0
		if gravity <= 0 then
			return nil
		end

		local jumpPower = props.WorkspaceUseJumpPower and (tonumber(props.WorkspaceJumpPower) or 0) or MathUtil.calculateJumpPowerFromHeight(gravity, props.WorkspaceJumpHeight)
		local timeInAir = 2 * ((jumpPower * DFIntJumpPowerInstantControllerMultiplierPercent * 0.01) / gravity)
		return timeInAir * (tonumber(props.WorkspaceWalkSpeed) or 0)
	end

	local function createLabel(xOffset, text)
		return Roact.createElement(StudioWidgetText, {
			Enabled = true,
			Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
			Position = UDim2.new(0, xOffset, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			Text = text,
		})
	end

	return Roact.createElement(StudioWidgetTitledFrame, {
		Title = "",
		MaxHeight = 10,
		LayoutOrder = incrementNextLayoutOrderFunc(),
		TitleTextYAlignment = Enum.TextYAlignment.Center
	}, {
		JumpDistanceLabel = createLabel(0, "Max Jump Distance:"),
		JumpDistanceValue = createLabel(INPUT_BOX_OFFSET, tostring(MathUtil.round(calculateJumpDistance()))),
		JumpDistanceMetricValue = createLabel(INPUT_BOX_OFFSET+METRIC_LABEL_OFFSET, "(" .. studToMetric(calculateJumpDistance()) .. " meters)"),
	})
end

--Uses props to display current settings values
local function displayContents(page, localized)
	local props = page.props
	local mouse = getMouse(page).getNativeMouse()

	local function changeGravity(newGravity)
		applyPreset(props, newGravity)
	end

	local nextLayoutOrder = 0
	local function incrementNextLayoutOrder()
		nextLayoutOrder = nextLayoutOrder + 1
		return nextLayoutOrder
	end

	return {
		Header = FFlagGameSettingsReorganizeHeaders and
		Roact.createElement(Header, {
			Title = localized.Category[PageName],
			LayoutOrder = -1,
		}),

		Presets = createPresetsWidgets(incrementNextLayoutOrder(), props, mouse),
		Separator1 = Roact.createElement(StudioWidgetSeparator, {
			LayoutOrder = incrementNextLayoutOrder(),
		}),
		Gravity = createInputRow("Gravity", "Workspace Gravity:", props.WorkspaceGravity, 0.1, 1000, changeGravity, incrementNextLayoutOrder(), mouse, DFFlagGameSettingsFixMetricConversionLabels and "meters/second^2" or "meters/second2"),
		Separator2 = Roact.createElement(StudioWidgetSeparator, {
			LayoutOrder = incrementNextLayoutOrder(),
		}),
		JumpSelect = createJumpSelectWidgets(incrementNextLayoutOrder, props, mouse),
		WalkSpeed = createInputRow("Walk", "Walk Speed:", props.WorkspaceWalkSpeed, 0, nil, props.WorkspaceWalkSpeedChanged, incrementNextLayoutOrder(), mouse, "meters/second"),
		JumpDistance = createJumpDistanceWidgets(incrementNextLayoutOrder, props),
		MaxSlopeAngle = createInputRow("Slope", "Max Slope Angle:", props.WorkspaceMaxSlopeAngle, 0, 89, props.WorkspaceMaxSlopeAngleChanged, incrementNextLayoutOrder(), mouse)
	}
end

local SettingsPage = createSettingsPage(PageName, loadValuesToProps, dispatchChanges)

local function World(props)
	return Roact.createElement(SettingsPage, {
		ContentHeightChanged = props.ContentHeightChanged,
		SetScrollbarEnabled = props.SetScrollbarEnabled,
		LayoutOrder = props.LayoutOrder,
		Content = displayContents,

		AddLayout = true,
	})
end

return World