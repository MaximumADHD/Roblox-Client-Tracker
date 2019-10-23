--[[
	Makes this:
	 ---------
	|  _-_-_  |
	|  |___|  |
	|  Button |
	|_________|
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Constants = require(Plugin.Src.Util.Constants)

local Theme = require(Plugin.Src.ContextServices.Theming)
local withTheme = Theme.withTheme

local UILibrary = Plugin.Packages.UILibrary
local Localizing = require(UILibrary.Localizing)
local withLocalization = Localizing.withLocalization

local ToolButton = Roact.Component:extend(script.Name)

function ToolButton:init()
	self.state = {
		isHovered = false
	}
	self.mouseEnter = function()
		self:setState({isHovered = true})
	end
	self.mouseLeave = function()
		self:setState({isHovered = false})
	end
end

function ToolButton:render()
	return withLocalization(function(localization)
		return withTheme(function(theme)
			local toolName = self.props.Name
			local localizedName = localization:getText("ToolName", toolName)
			local layoutOrder = self.props.LayoutOrder
			local image = Constants[toolName]
			local isCurrentTool = self.props.currentTool == toolName

			local isHovered = self.state.isHovered
			local transparency = isCurrentTool and 0.5 or 1
			if isHovered then
				transparency = .75
			end
			return Roact.createElement("ImageButton", {
				Name = toolName,
				BorderSizePixel = 1,
				BackgroundTransparency = transparency,
				LayoutOrder = layoutOrder,
				[Roact.Event.MouseEnter] = self.mouseEnter,
				[Roact.Event.MouseLeave] = self.mouseLeave,
				[Roact.Event.Activated] = function()
					self.props.OnClick(toolName)
				end,
			}, {
				-- Displays proper formatting within img button
				Roact.createElement("ImageLabel", {
					BackgroundTransparency = 1,
					Image = image,
					ScaleType = Enum.ScaleType.Fit,
					Size = UDim2.new(0, 26, 0, 27),
					AnchorPoint = Vector2.new(.5, 0),
					Position = UDim2.new(.5, 0, 0, 0),
				}),

				Roact.createElement("TextLabel", {
					BackgroundTransparency = 1,
					Text = localizedName,
					TextXAlignment = Enum.TextXAlignment.Center,
					TextColor3 = theme.textColor,
					Size = UDim2.new(1, 0, 0, 15),
					Position = UDim2.new(0, 0, 1, -15),
				}),
			})
		end)
	end)
end

return ToolButton