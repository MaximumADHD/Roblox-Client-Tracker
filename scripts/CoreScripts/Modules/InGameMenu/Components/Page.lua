local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = InGameMenuDependencies.UIBlox

local withStyle = UIBlox.Core.Style.withStyle
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local CursorKind = UIBlox.App.SelectionImage.CursorKind
local InGameMenu = script.Parent.Parent
local NavigateUp = require(InGameMenu.Thunks.NavigateUp)
local Assets = require(InGameMenu.Resources.Assets)
local Constants = require(InGameMenu.Resources.Constants)

local ZonePortal = require(InGameMenu.Components.ZonePortal)
local Direction = require(InGameMenu.Enums.Direction)

local ImageSetButton = UIBlox.Core.ImageSet.ImageSetButton

local TITLE_HEIGHT = 28
local TITLE_TOP_PADDING = 28
local TITLE_BOTTOM_PADDING = 12
local TOTAL_TITLE_SPACE = TITLE_TOP_PADDING + TITLE_HEIGHT + TITLE_BOTTOM_PADDING

local ThemedTextLabel = require(script.Parent.ThemedTextLabel)

local function renderWithSelectionCursor(props, getSelectionCursor)
	return withStyle(function(style)
		local titleChildren = {
			ExtraChildren = props.titleChildren,
			BackButton = Roact.createElement(ImageSetButton, {
				BackgroundTransparency = 1,
				Image = Assets.Images.NavigateBack,
				AnchorPoint = Vector2.new(0, 0.5),
				ImageColor3 = style.Theme.IconEmphasis.Color,
				ImageTransparency = style.Theme.IconEmphasis.Transparency,
				Position = UDim2.new(0, 4, 0.5, 0),
				Size = UDim2.new(0, 36, 0, 36),
				NextSelectionDown = props.NextSelectionDown,
				[Roact.Event.Activated] = props.navigateUp,
				[Roact.Ref] = props.buttonRef,
				SelectionImageObject = getSelectionCursor(CursorKind.RoundedRect),
			}),
		}

		return Roact.createElement("TextButton", {
			AutoButtonColor = false,
			Text = "",
			BackgroundColor3 = style.Theme.BackgroundContrast.Color,
			BackgroundTransparency = style.Theme.BackgroundContrast.Transparency,
			BorderSizePixel = 0,
			Position = props.position,
			Size = UDim2.new(1, 0, 1, 0),
			Visible = props.visible and not props.pageIsModal,
			ZIndex = props.zIndex,
			Selectable = false,
		}, {
			PageTitle = Roact.createElement(ThemedTextLabel, {
				fontKey = "Header1",
				themeKey = "TextEmphasis",

				AnchorPoint = Vector2.new(0.5, 0),
				Position = UDim2.new(0.5, 0, 0, TITLE_TOP_PADDING),
				Size = UDim2.new(1, -48, 0, TITLE_HEIGHT),
				Text = props.pageTitle,
			}, titleChildren),
			PageContainer = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0, 1),
				BackgroundTransparency = 1,
				Position = UDim2.new(0, Constants.Zone.ContentOffset, 1, 0),
				Size = UDim2.new(1, -Constants.Zone.ContentOffset, 1, -TOTAL_TITLE_SPACE),
			}, props[Roact.Children]),
			ZonePortal = Roact.createElement(ZonePortal, {
				targetZone = 0,
				direction = Direction.Left,
			}),
		})
	end)
end

local function Page(props)
	return withSelectionCursorProvider(function(getSelectionCursor)
		return renderWithSelectionCursor(props, getSelectionCursor)
	end)
end

return RoactRodux.UNSTABLE_connect2(nil, function(dispatch)
	return {
		navigateUp = function()
			dispatch(NavigateUp)
		end,
	}
end)(Page)
