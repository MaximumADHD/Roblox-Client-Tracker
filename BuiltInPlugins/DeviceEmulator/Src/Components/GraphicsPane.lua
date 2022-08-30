--[[
	Graphics Settings Pane
]]

local main = script.Parent.Parent.Parent
-- local _Types = require(main.Src.Types) -- uncomment to use types
local Roact = require(main.Packages.Roact)

local Framework = require(main.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local UI = Framework.UI
local Pane = UI.Pane
local SimpleExpandablePane = UI.SimpleExpandablePane
local Slider = UI.Slider
local Checkbox = UI.Checkbox

local GraphicsPane = Roact.PureComponent:extend("GraphicsPane")

local UserGameSettings = UserSettings():GetService("UserGameSettings")
local RenderSettings = settings().Rendering

local SavedQualityLevelChanged = UserGameSettings:GetPropertyChangedSignal("SavedQualityLevel")
local GraphicsQualityLevelChanged = UserGameSettings:GetPropertyChangedSignal("GraphicsQualityLevel")
local GRAPHICS_QUALITY_LEVELS = RenderSettings:GetMaxQualityLevel() - 1

export type Props = {
	OnClick: () -> (),
	Text: string,
}

type _Props = Props & {
	Localization: any,
	Stylizer: any,
}


function GraphicsPane:init(_props)
  self.state = {
		graphicsQuality = UserGameSettings.GraphicsQualityLevel,
		graphicsQualityAutoMode = UserGameSettings.GraphicsQualityLevel == 0,
	}

  self.setGraphicsQuality = function(graphicsQuality)
		local newValue = math.clamp(graphicsQuality, 1, GRAPHICS_QUALITY_LEVELS)
		local oldValue = UserGameSettings.GraphicsQualityLevel

		UserGameSettings.GraphicsQualityLevel = newValue
		RenderSettings.QualityLevel = newValue

		return newValue, newValue - oldValue
	end

  self.toggleGraphicsQualityAutomatic = function()
		local newGraphicsQualityAutoMode = not self.state.graphicsQualityAutoMode
		if newGraphicsQualityAutoMode then
			UserGameSettings.GraphicsQualityLevel = 0
			RenderSettings.QualityLevel = 0
		else
			UserGameSettings.GraphicsQualityLevel = self.state.graphicsQuality
			RenderSettings.QualityLevel = self.state.graphicsQuality
		end
		self:setState({
			graphicsQualityAutoMode = newGraphicsQualityAutoMode
		})
	end

	local onQualityChanged = function()
		local quality = UserGameSettings.GraphicsQualityLevel
		if quality ~= 0 then
			self:setState({
				graphicsQuality = quality,
			})				
		end
		self:setState({
			graphicsQualityAutoMode = quality == 0,
		})
	end

	self.graphicsQualityLevelChangedConnection = GraphicsQualityLevelChanged:Connect(onQualityChanged)
	self.savedQualityLevelChangedConnection = SavedQualityLevelChanged:Connect(onQualityChanged)
end

function GraphicsPane:willUnmount()
	self.graphicsQualityLevelChangedConnection:Disconnect()
	self.savedQualityLevelChangedConnection:Disconnect()
end

function GraphicsPane:render()
  local props = self.props
	local state = self.state
  local localization = props.Localization

  return Roact.createElement(Pane, {
		AutomaticSize = Enum.AutomaticSize.Y,
		Layout = Enum.FillDirection.Vertical,
		Padding = 10,
		Spacing = 10,
	}, {
		GraphicsQualityPane = Roact.createElement(SimpleExpandablePane, {
			AlwaysExpanded = true,
			LayoutOrder = 1,
			Style = "Box",
			Text = localization:getText("GraphicsQuality", "GraphicsQualityLabel"),
		}, {
			Roact.createElement(Slider, {
				AnchorPoint = Vector2.new(0.5, 0.5),
				Disabled = state.graphicsQualityAutoMode,
				Value = state.graphicsQuality,
				Min = 0,
				Max = GRAPHICS_QUALITY_LEVELS,
				OnValueChanged = self.setGraphicsQuality,
				Size = UDim2.new(0, 200, 0, 20),
				Padding = UDim.new(10, 10),
				SnapIncrement = 1,
				VerticalDragTolerance = 0,
			}),
			Roact.createElement(Checkbox, {
				Checked = state["graphicsQualityAutoMode"],
				Key = "graphicsQualityAutoMode",
				OnClick = self.toggleGraphicsQualityAutomatic,
				Text = localization:getText("GraphicsQuality", "AutoGraphicsQualityLabel"),
			})
		})
	})
end

GraphicsPane = withContext({
	Localization = Localization,
	Stylizer = ContextServices.Stylizer,
})(GraphicsPane)

return GraphicsPane