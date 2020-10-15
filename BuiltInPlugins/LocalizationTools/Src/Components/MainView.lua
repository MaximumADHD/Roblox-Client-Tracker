--[[
	Localization Tools plugin main view
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local ContextServices = require(Plugin.Packages.Framework.ContextServices)

local UILibrary = require(Plugin.Packages.UILibrary)
local createFitToContent = UILibrary.Component.createFitToContent
local FitToContent = createFitToContent("Frame", "UIListLayout", {
    SortOrder = Enum.SortOrder.LayoutOrder,
})
local ProgressSpinner = require(Plugin.Src.Components.ProgressSpinner)

local MessageFrame = require(Plugin.Src.Components.MessageFrame)
local CloudTableSection = require(Plugin.Src.Components.CloudTableSection)
local EmbeddedTableSection = require(Plugin.Src.Components.EmbeddedTableSection)

local FlagsList = require(Plugin.Src.Util.FlagsList)

local MainView = Roact.PureComponent:extend("MainView")

function MainView:render()
	local props = self.props
	local theme
	if FlagsList:get("FFlagRefactorDevFrameworkTheme") then
		theme = props.Stylizer
	else
		theme = props.Theme:get("MainView")
	end

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 0, 0, 0),
	}, {
		MessageFrame = Roact.createElement(MessageFrame),

		ScrollingFrame = Roact.createElement("ScrollingFrame", {
			BackgroundColor3 = theme.ScrollingFrameackground,
			BackgroundTransparency = 0,
			BorderColor3 = theme.ScrollBarBorderColor,
			BorderSizePixel = 1,
			CanvasSize = UDim2.new(1, 0, 0, theme.ScrollingFrameCanvasHeight),
			ClipsDescendants = true,
			ScrollBarImageTransparency = 0,
			ScrollBarImageColor3 = theme.ScrollBarColor,
			ScrollingDirection = Enum.ScrollingDirection.XY,
			Size = UDim2.new(1, 0, 1, theme.ScrollingFrameHeight - 1),
		}, {
			Container = Roact.createElement(FitToContent, {
				BackgroundTransparency = 0,
				BackgroundColor3 = theme.MainBackground,
				BorderSizePixel = 0,
			}, {
				Padding = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0, theme.PaddingTop),
					PaddingBottom = UDim.new(0, theme.Padding),
					PaddingLeft = UDim.new(0, theme.Padding),
					PaddingRight = UDim.new(0, theme.PaddingRight),
				}),
				CloudTableSection = Roact.createElement(CloudTableSection, {
					LayoutOrder = 1,
				}),
				EmbeddedTableSection = Roact.createElement(EmbeddedTableSection, {
					LayoutOrder = 2,
				}),
				ExtendedBackground = Roact.createElement("Frame", {
					BackgroundColor3 = theme.MainBackground,
					BorderSizePixel = 0,
					LayoutOrder = 3,
					Size = UDim2.new(1, 0, 0, theme.EmptyFrameHeight),
				})
			}),
		}),

		ProgressSpinner = Roact.createElement(ProgressSpinner),
	})
end

ContextServices.mapToProps(MainView, {
	Stylizer = FlagsList:get("FFlagRefactorDevFrameworkTheme") and ContextServices.Stylizer or nil,
	Theme = (not FlagsList:get("FFlagRefactorDevFrameworkTheme")) and ContextServices.Theme or nil,
})

return MainView
