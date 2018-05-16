local CoreGui = game:GetService("CoreGui")

local Modules = CoreGui.RobloxGui.Modules

local Roact = require(Modules.Common.Roact)
local RoactRodux = require(Modules.Common.RoactRodux)

local DeviceOrientationMode = require(Modules.LuaApp.DeviceOrientationMode)
local PageIndex = require(Modules.LuaApp.PageIndex)
local Constants = require(Modules.LuaApp.Constants)

local FitChildren = require(Modules.LuaApp.FitChildren)

local SetAppPage = require(Modules.LuaApp.Actions.SetAppPage)

local LocalizedFitTextLabel = require(Modules.LuaApp.Components.LocalizedFitTextLabel)
local AppPageLocalizationKeys = require(Modules.LuaApp.AppPageLocalizationKeys)

local ICON_SIZE = 24

local BottomBarButton = Roact.PureComponent:extend("BottomBarButton")

function BottomBarButton:init()
	self.onButtonActivated = function()
		if self.props.currentPage ~= self.props.associatedPageType then
			self.props.store:Dispatch(SetAppPage(self.props.associatedPageType))
		-- else
			-- refresh page
		end
	end
end

function BottomBarButton:render()
	local defaultImage = self.props.defaultImage
	local selectedImage = self.props.selectedImage
	local associatedPageType = self.props.associatedPageType

	local deviceOrientation = self.props.deviceOrientation
	local currentPage = self.props.currentPage

	local totalPages = PageIndex.GetTotalPages(deviceOrientation)
	local pageIndex = PageIndex.GetIndexByPageType(associatedPageType,
		deviceOrientation) or 1
	local isLandscape = deviceOrientation == DeviceOrientationMode.Landscape

	local iconImage, textColor
	if associatedPageType == currentPage then
		iconImage = selectedImage
		textColor = Constants.Color.BLUE_PRESSED
	else
		iconImage = defaultImage
		textColor = Constants.Color.GRAY2
	end

	return Roact.createElement("ImageButton", {
		AnchorPoint = Vector2.new(0, 1),
		Position = UDim2.new((pageIndex - 1)/totalPages, 0, 1, 0),
		Size = UDim2.new(1/totalPages, 0, 1, -1),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ImageTransparency = 1,
		AutoButtonColor = false,
		LayoutOrder = pageIndex,
		[Roact.Event.Activated] = self.onButtonActivated,
	}, {
		ButtonFrame = Roact.createElement(FitChildren.FitFrame, {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(0, 0, 1, 0),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,

			fitAxis = FitChildren.FitAxis.Width,
		},{
			Icon = Roact.createElement("ImageLabel", {
				Image = iconImage,
				AnchorPoint = isLandscape and Vector2.new(0, 0.5) or Vector2.new(0.5, 0),
				Position = isLandscape and UDim2.new(0, 0, 0.5, 0) or UDim2.new(0.5, 0, 0, 5),
				Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}),
			Title = Roact.createElement(LocalizedFitTextLabel, {
				AnchorPoint = isLandscape and Vector2.new(0, 0.5) or Vector2.new(0.5, 1),
				Position = isLandscape and UDim2.new(0, ICON_SIZE + 8, 0.5, 0) or UDim2.new(0.5, 0, 1, -5),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				Text = AppPageLocalizationKeys[associatedPageType],
				TextColor3 = textColor,
				TextSize = isLandscape and 14 or 13,
				TextXAlignment = isLandscape and Enum.TextXAlignment.Left or Enum.TextXAlignment.Center,
				TextYAlignment = isLandscape and Enum.TextYAlignment.Center or Enum.TextYAlignment.Bottom,
				Font = Enum.Font.SourceSans,

				fitAxis = FitChildren.FitAxis.Width,
			}),
		}),
	})
end

BottomBarButton = RoactRodux.connect(function(store)
	local state = store:GetState()

	return {
		deviceOrientation = state.DeviceOrientation,
		currentPage = state.AppRouter.currentPage,
		store = store,
	}
end)(BottomBarButton)

return BottomBarButton
