local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)


local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local Components = Plugin.Src.Components
local TextInput = require(Components.TextInput)

local UI = require(Plugin.Packages.Framework.UI)
local Container = UI.Container
local Decoration = UI.Decoration

local CustomEventTab = Roact.PureComponent:extend("CustomEventTab")

function CustomEventTab:render()
	local props = self.props
	local layout = props.Theme:get("Layout")
	local style = props.Theme:get("Style")
	-- TODO: Switch over to TextInput
	-- TODO: Convert to using theme when layout/theme is finalized
	-- sworzalla 4/13/20
	return Roact.createElement(Container, {
		Background = Decoration.Box,
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		Layout = Roact.createElement("UIListLayout", layout.Vertical),
		Info = Roact.createElement("TextLabel", {
			Text = "Send a JSON blob to Notification Service",
		}),
		NameInput = Roact.createElement("TextBox", {
			Text = "JSON Blob -- " .. "time",
			Size = UDim2.new(.9, 0, 0, 20),
			LayoutOrder = 1,
		}),
		JSONInput = Roact.createElement("TextBox", {
			Size = UDim2.new(.9, 0, 0, 250),
			MultiLine = true,
			TextXAlignment = Enum.TextXAlignment.Left,
			TextYAlignment = Enum.TextYAlignment.Top,
			LayoutOrder = 2,
		},{
			Warning = Roact.createElement("TextLabel", {
				Size = UDim2.new(0, 75, 0, 10),
				Text = "Error: JSON Invalid",
				TextColor3 = style.Color.RED,
				BackgroundTransparency = 1,
				Active = true, -- will be checking this on focus lost
				Position = UDim2.new(0.5, -36, 1, -15),
			})
		})
	})
end

ContextServices.mapToProps(CustomEventTab,{
	Theme = ContextServices.Theme,
})

return CustomEventTab