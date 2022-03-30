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
local Pages = require(InGameMenu.Components.Pages)

local Direction = require(InGameMenu.Enums.Direction)

local GetFFlagInGameMenuControllerDevelopmentOnly = require(InGameMenu.Flags.GetFFlagInGameMenuControllerDevelopmentOnly)

local IS_PAGE_SELECTABLE
if GetFFlagInGameMenuControllerDevelopmentOnly() then
	IS_PAGE_SELECTABLE = false
else
	IS_PAGE_SELECTABLE = nil
end

local ImageSetButton = UIBlox.Core.ImageSet.Button

local TITLE_HEIGHT = 48

local function renderWithSelectionCursor(props, getSelectionCursor)

	return withStyle(function(style)
		local titleChildren = {
			ExtraChildren = props.titleChildren,
			BackButton = props.enableBackButton and Roact.createElement(ImageSetButton, {
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
				SelectionImageObject = GetFFlagInGameMenuControllerDevelopmentOnly()
					and getSelectionCursor(CursorKind.RoundedRect) or nil,
			}) or nil,
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
			Selectable = IS_PAGE_SELECTABLE,
		}, {
			PageTitleContainer = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, TITLE_HEIGHT),
				BackgroundTransparency = style.Theme.BackgroundDefault.Transparency,
				BackgroundColor3 = style.Theme.BackgroundDefault.Color,
				BorderSizePixel = 0,
			}, {
				PageTitle = Roact.createElement(UIBlox.App.Text.StyledTextLabel, {
					fontStyle = style.Font.Header1,
					colorStyle = style.Theme.TextEmphasis,
					textXAlignment = Enum.TextXAlignment.Center,
					size = UDim2.new(1, 0, 1, 0),
					text = props.pageTitle,
				})
			}, titleChildren),
			PageContainer = Roact.createElement("Frame", {
				AnchorPoint = Vector2.new(0, 1),
				BackgroundTransparency = 1,
				Position = GetFFlagInGameMenuControllerDevelopmentOnly()
					and UDim2.new(0, Constants.Zone.ContentOffset, 1, 0)
					or UDim2.new(0, 0, 1, 0),
				Size = GetFFlagInGameMenuControllerDevelopmentOnly()
					and UDim2.new(1, -Constants.Zone.ContentOffset, 1, -TITLE_HEIGHT)
					or UDim2.new(1, 0, 1, -TITLE_HEIGHT),
			}, props[Roact.Children]),
			ZonePortal = GetFFlagInGameMenuControllerDevelopmentOnly() and Roact.createElement(ZonePortal, {
				targetZone = 0,
				direction = Direction.Left,
			}) or nil,
		})
	end)
end

local function Page(props)
	if GetFFlagInGameMenuControllerDevelopmentOnly() then
		return withSelectionCursorProvider(function(getSelectionCursor)
			return renderWithSelectionCursor(props, getSelectionCursor)
		end)
	else
		return renderWithSelectionCursor(props)
	end
end

return RoactRodux.UNSTABLE_connect2(function(state)
	local page = Pages.pagesByKey[state.menuPage]
	return {
		enableBackButton = page and page.navigationDepth > 1,
	}
end, function(dispatch)
	return {
		navigateUp = function()
			dispatch(NavigateUp)
		end,
	}
end)(Page)
