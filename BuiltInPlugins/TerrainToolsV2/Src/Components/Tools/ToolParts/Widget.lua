--[[
	This script enforces consistency in two-column settings. One widget will use UIListLayout to ensure everything
	looks good and size must be passed in. Position is expected to be handled externally by another UIListLayout

	Required Props:
		Text - Left hand display name
		Content - Right hand content
		Size - Size of your content (will be deprecated if Expandable List starts working)
	OptionalProps:
		Padding - UIListLayout Padding
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)

local UILibrary = Plugin.Packages.UILibrary
local TexturePath = "rbxasset://textures/TerrainTools/"

local Widget = Roact.Component:extend(script.Name)

function Widget:render()
	local size = self.props.Size or UDim2.new(0, 270, 0, 20) -- Widget size
	local text = self.props.Text or "" -- Left label
	local content = self.props.Content or {} -- Right content
	local padding = self.props.Padding or UDim.new(0, 0) -- Right content padding
	local fillDirection = self.props.FillDirection or Enum.FillDirection.Horizontal -- Right content fill direction

	local visible = (self.props.Visible == nil) or self.props.Visible
	table.insert(content, 
		Roact.createElement("UIListLayout", {
			Padding = padding, 
			FillDirection = fillDirection,
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		})
	)
	
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = size,
		Visible = visible,
	}, {
		Roact.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal, 
		}),
		-- Left Side
		Roact.createElement("Frame", {
			Size = UDim2.new(0, 110, 1, 0),
			BackgroundTransparency = 1,
		}, {
			Roact.createElement("TextLabel", {
				Text = text,
				Size = UDim2.new(0, 81, 1, 0),
				Position = UDim2.new(0, 20, 0, 0),
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
			}),
		}),

		-- Right Side 
		Roact.createElement("Frame", {
			Size = UDim2.new(0, 160, 1, 0),
			BackgroundTransparency = 1, 
		}, content),

	})
end

return Widget