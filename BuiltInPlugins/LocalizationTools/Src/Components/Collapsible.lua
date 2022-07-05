--[[
	A collapsible widget for advanced options
]]
local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local FFlagRemoveUILibraryFitContent = Framework.SharedFlags.getFFlagRemoveUILibraryFitContent()

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local UI = Framework.UI
local Pane = UI.Pane

local FitToContent
if not FFlagRemoveUILibraryFitContent then
	local UILibrary = require(Plugin.Packages.UILibrary)
    local createFitToContent = UILibrary.Component.createFitToContent
    FitToContent = createFitToContent("Frame", "UIListLayout", {
        SortOrder = Enum.SortOrder.LayoutOrder,
    })
end

local Collapsible = Roact.PureComponent:extend("Collapsible")

function Collapsible:init()
	self.state = {
		open = false,
	}

	self.onActivated = function()
		local props = self.props
		local active = props.Active

		if not active then
			return
		end
		self:setState(function(prevState)
			return {
				open = not prevState.open,
			}
		end)
	end
end

function Collapsible:render()
	local props = self.props
	local state = self.state

	local open = state.open
	local theme = props.Stylizer
	local title = props.Title
	local renderContent = props.RenderContent
	local layoutOrder = props.LayoutOrder
	local active = props.Active

	local topBar = Roact.createElement("TextButton", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 0, theme.TopBarHeight),
		Text = "",
		[Roact.Event.Activated] = self.onActivated,
	}, {
		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
		}),
		IconFrame = Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			LayoutOrder = 1,
			Size = UDim2.new(0, theme.TopBarHeight, 1, 0),
		}, {
			Icon = Roact.createElement("ImageLabel", {
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				ImageColor3 = theme.IconColor,
				Image = open and theme.IconImageOpen or theme.IconImageClosed,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(0, theme.IconSize, 0, theme.IconSize),
			}),
		}),
		Title = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			Size = UDim2.new(0, 200, 1, 0),
			Text = title,
			TextColor3 = active and theme.TextColor
				or theme.DisabledTextColor,
			TextXAlignment = Enum.TextXAlignment.Left,
		})
	})

	local content = open and renderContent() or nil

	if FFlagRemoveUILibraryFitContent then
		return Roact.createElement(Pane, {
			AutomaticSize = Enum.AutomaticSize.Y,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			Layout = Enum.FillDirection.Vertical,
			LayoutOrder = layoutOrder,
		}, {
			TopBar = topBar,
			Content = content,
		})
	else
		return Roact.createElement(FitToContent, {
			BackgroundTransparency = 1,
			LayoutOrder = layoutOrder,
		}, {
			TopBar = topBar,
			Content = content,
		})
	end
end

Collapsible = withContext({
	Stylizer = ContextServices.Stylizer,
})(Collapsible)

return Collapsible
