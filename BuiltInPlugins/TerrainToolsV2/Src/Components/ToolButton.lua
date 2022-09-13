--[[
	Makes this:
	 ---------
	|  _-_-_  |
	|  |___|  |
	|  Button |
	|_________|
]]
local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Roact = require(Plugin.Packages.Roact)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local ContextItems = require(Plugin.Src.ContextItems)

local Constants = require(Plugin.Src.Util.Constants)

local BACKGROUND_TRANSPARENCY = 1
local BACKGROUND_SELECTED_TRANSPARENCY = 0.5
local BACKGROUND_HOVERED_TRANSPARENCY = 0.75

local ToolButton = Roact.PureComponent:extend(script.Name)

function ToolButton:init()
	self.state = {
		isHovered = false,
	}

	self.mouseEnter = function()
		self:setState({
			isHovered = true,
		})
	end

	self.mouseLeave = function()
		self:setState({
			isHovered = false,
		})
	end

	self.onClick = function()
		if self.props.OnClick then
			self.props.OnClick(self.props.ToolId)
		end
	end
end

function ToolButton:render()
	local theme = self.props.Theme:get()
	local localization = self.props.Localization

	local toolId = self.props.ToolId
	local text = localization:getText("ToolName", toolId)
	local layoutOrder = self.props.LayoutOrder
	local mockForUnitTests =  self.props.IsUnitTest or false
	local FFlagHighDpiIcons = game:GetFastFlag("SVGLuaIcons") and (mockForUnitTests or  not game:GetService("StudioHighDpiService"):IsNotHighDPIAwareBuild())
	local image
	if FFlagHighDpiIcons then 
		image = string.format(Constants.HighDpiToolIconsWithTheme1[toolId], settings().Studio.Theme.Name)
	else
		image = Constants.ToolIcons[toolId]
	end

	local isCurrentTool = self.props.IsCurrentTool
	local isHovered = self.state.isHovered

	local transparency = isCurrentTool and BACKGROUND_SELECTED_TRANSPARENCY or BACKGROUND_TRANSPARENCY
	if isHovered then
		transparency = BACKGROUND_HOVERED_TRANSPARENCY
	end

	return Roact.createElement("ImageButton", {
		BorderSizePixel = 1,
		BackgroundTransparency = transparency,
		LayoutOrder = layoutOrder,
		[Roact.Event.MouseEnter] = self.mouseEnter,
		[Roact.Event.MouseLeave] = self.mouseLeave,
		[Roact.Event.Activated] = self.onClick,
	}, {
		-- Displays proper formatting within img button
		Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Image = image,
			ScaleType = Enum.ScaleType.Fit,
			Size = UDim2.new(0, 26, 0, 27),
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.new(0.5, 0, 0, 0),
		}),

		Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Text = text,
			Font = theme.font,
			TextSize = theme.textSize,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextColor3 = theme.textColor,
			Size = UDim2.new(1, 0, 0, 15),
			Position = UDim2.new(0, 0, 1, -15),
		}),
	})
end

ToolButton = withContext({
	Theme = ContextItems.UILibraryTheme,
	Localization = ContextServices.Localization,
})(ToolButton)

return ToolButton
