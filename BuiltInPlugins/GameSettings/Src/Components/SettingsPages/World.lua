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

local DFIntJumpPowerInstantControllerMultiplierPercent =  tonumber(settings():GetFVariable("JumpPowerInstantControllerMultiplierPercent"));

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local getMouse = require(Plugin.Src.Consumers.getMouse)
local withTheme = require(Plugin.Src.Consumers.withTheme)

local RoactStudioWidgets = Plugin.RoactStudioWidgets
local StudioWidgetTitledFrame = require(RoactStudioWidgets.TitledFrame)
local StudioWidgetRoundTextBox = require(RoactStudioWidgets.RoundTextBox)
local StudioWidgetRadioButtonSet = require(RoactStudioWidgets.RadioButtonSet)
local StudioWidgetSeparator = require(RoactStudioWidgets.Separator)
local StudioWidgetButtonBar = require(RoactStudioWidgets.ButtonBar)
local StudioWidgetText = require(RoactStudioWidgets.Text)

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

local function truncate(numToTruncate, numDecimalPlaces)
	numDecimalPlaces = numDecimalPlaces or 2
	local numToTruncatePositive = math.abs(numToTruncate)
	if numDecimalPlaces > 0 then
		local mult = 10^numDecimalPlaces
		local result = math.floor(numToTruncatePositive * mult) / mult
		return numToTruncate >= 0 and result or -result
	end
	return numToTruncate >= 0 and math.floor(numToTruncate) or -math.floor(numToTruncatePositive)
end

local function studToMetric(studs)
	local ConvertToMetric = 0.28;
	local metric = (0.01*DFIntJumpPowerInstantControllerMultiplierPercent) * (studs or 0) * ConvertToMetric;
	return tostring(truncate(metric))
end

local function createInputRow(title, label, value, updateFunc, layoutOrder, mouse, metricsUnitText)
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

			SetText = function(text)
				updateFunc(tonumber(text))
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

local function createPresetsWidgets(incrementNextLayoutOrderFunc, props, mouse)
	local function createDescription(text)
		return Roact.createElement(StudioWidgetText, {
			Enabled = true,
			LayoutOrder = incrementNextLayoutOrderFunc(),
			Size = UDim2.new(1, 0, 0, ROW_HEIGHT),
			Text = text,
		})
	end

	return Roact.createElement(StudioWidgetTitledFrame, {
		Title = "Presets",
		MaxHeight = 180,
		LayoutOrder = incrementNextLayoutOrderFunc(),
	}, {
		Roact.createElement(StudioWidgetButtonBar, {
			Padding = 10,
			Buttons = {
				{
					Name="Blox",
					Enabled=true,
					Value={
						[props.WorkspaceGravityChanged]=196.2, [props.WorkspaceJumpHeightChanged]=7.36, [props.WorkspaceJumpPowerChanged]=50, [props.WorkspaceWalkSpeedChanged]=16, [props.WorkspaceMaxSlopeAngleChanged]=89,
					},
					ShowPressed=true,
					Mouse=mouse
				}, {
					Name="Reality",
					Enabled=true,
					Value={
						[props.WorkspaceGravityChanged]=35, [props.WorkspaceJumpHeightChanged]=3.8, [props.WorkspaceJumpPowerChanged]=16, [props.WorkspaceWalkSpeedChanged]=11, [props.WorkspaceMaxSlopeAngleChanged]=50,
					},
					ShowPressed=true,
					Mouse=mouse
				}, {
					Name="Imagination",
					Enabled=true,
					Value={
						[props.WorkspaceGravityChanged]=70, [props.WorkspaceJumpHeightChanged]=6, [props.WorkspaceJumpPowerChanged]=34.64, [props.WorkspaceWalkSpeedChanged]=14, [props.WorkspaceMaxSlopeAngleChanged]=50,
					},
					ShowPressed=true,
					Mouse=mouse
				}, {
					Name="Platformer",
					Enabled=true,
					Value={
						[props.WorkspaceGravityChanged]=100, [props.WorkspaceJumpHeightChanged]=8, [props.WorkspaceJumpPowerChanged]=29, [props.WorkspaceWalkSpeedChanged]=18, [props.WorkspaceMaxSlopeAngleChanged]=70,
					},
					ShowPressed=true,
					Mouse=mouse
				}
			},
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			FillDirection = Enum.FillDirection.Vertical,
			AnchorPoint = Vector2.new(0, 0),
			Position = UDim2.new(0, 0, 0, 0),
			ButtonClicked = function(changeTable) -- changeTable is the table which is assigned to the button's 'Value' field
				for changeFunction, newValue in pairs(changeTable) do
					changeFunction(newValue)
				end
			end,
			ShowPressed = true
		}),

		Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 140, 0, 0),
		}, {
			Layout = Roact.createElement("UIListLayout", {
				Padding = UDim.new(0, 10),
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
			}),
			createDescription("Classic Roblox, heavier gravity, higher jump"),
			createDescription("Real world gravity, athletic human"),
			createDescription("Real world gravity, jump higher/walk faster"),
		})
	})
end

local function createJumpSelectWidgets(incrementNextLayoutOrderFunc, props, mouse)
	local JumpSelectPadding  = UDim.new(0, 10)
	local JumpSelectRowHeight = 20

	local function createInputBox(enabled, value, changedFunc)
		return Roact.createElement(StudioWidgetRoundTextBox, {
			ShowToolTip = false,
			Enabled = enabled,
			LayoutOrder = incrementNextLayoutOrderFunc(),
			Text = tostring(value),
			MaxLength = 100,
			Width = 150,
			Height = JumpSelectRowHeight,
			PaddingBottom = UDim.new(0, 0),
			PaddingTop = UDim.new(0, 0),
			Mouse = mouse,

			SetText = function(text)
				changedFunc(tonumber(text))
			end,
		})
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
					Title = "Jump Height",
				}, {
					Id = true,
					Title = "Jump Power",
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
			JumpHeightInputBox = createInputBox(not props.WorkspaceUseJumpPower, props.WorkspaceJumpHeight, props.WorkspaceJumpHeightChanged),
			JumpPowerInputBox = createInputBox(props.WorkspaceUseJumpPower, props.WorkspaceJumpPower, props.WorkspaceJumpPowerChanged),
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
			JumpPowerMetricLabel = createMetricLabel(props.WorkspaceUseJumpPower, "(" .. studToMetric(props.WorkspaceJumpPower) .. " meters/second)")
		}),
	})
end

local function createJumpDistanceWidgets(incrementNextLayoutOrderFunc, props)
	local function calculateJumpDistance()
		local jumpPower = props.WorkspaceUseJumpPower and props.WorkspaceJumpPower or game.Workspace:CalculateJumpPower(props.WorkspaceGravity, props.WorkspaceJumpHeight)
		local timeInAir = 2 * (jumpPower / props.WorkspaceGravity);
    	return timeInAir * props.WorkspaceWalkSpeed;
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
		JumpDistanceValue = createLabel(INPUT_BOX_OFFSET, tostring(truncate(calculateJumpDistance()))),
		JumpDistanceMetricValue = createLabel(INPUT_BOX_OFFSET+METRIC_LABEL_OFFSET, "(" .. studToMetric(calculateJumpDistance()) .. " meters)"),
	})
end

--Uses props to display current settings values
local function displayContents(page)
	local props = page.props
	local mouse = getMouse(page).getNativeMouse()

	local nextLayoutOrder = 0
	local function incrementNextLayoutOrder()
		nextLayoutOrder = nextLayoutOrder + 1
		return nextLayoutOrder
	end

	return {
		Presets = createPresetsWidgets(incrementNextLayoutOrder, props, mouse),
		Separator1 = Roact.createElement(StudioWidgetSeparator, {
			LayoutOrder = incrementNextLayoutOrder(),
		}),
		Gravity = createInputRow("Gravity", "Workspace Gravity:", props.WorkspaceGravity, props.WorkspaceGravityChanged, incrementNextLayoutOrder(), mouse, "meters/second2"),
		Separator2 = Roact.createElement(StudioWidgetSeparator, {
			LayoutOrder = incrementNextLayoutOrder(),
		}),
		JumpSelect = createJumpSelectWidgets(incrementNextLayoutOrder, props, mouse),
		WalkSpeed = createInputRow("Walk", "Walk Speed:", props.WorkspaceWalkSpeed, props.WorkspaceWalkSpeedChanged, incrementNextLayoutOrder(), mouse, "meters/second"),
		JumpDistance = createJumpDistanceWidgets(incrementNextLayoutOrder, props),
		MaxSlopeAngle = createInputRow("Slope", "Max Slope Angle:", props.WorkspaceMaxSlopeAngle, props.WorkspaceMaxSlopeAngleChanged, incrementNextLayoutOrder(), mouse)
	}
end

local SettingsPage = createSettingsPage("World", loadValuesToProps, dispatchChanges)

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