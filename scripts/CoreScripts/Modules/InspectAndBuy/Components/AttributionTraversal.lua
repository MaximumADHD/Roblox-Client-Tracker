--[[
	InspectAndBuy overlay that appears when pressing the attribution
	item info row of an asset that was created in an experience.
	The overlay will show a thumnail of the place with the option
	to close the overlay or to teleport to the creation experience.
]]

local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local UIBlox = require(CorePackages.Packages.UIBlox)
local React = require(CorePackages.Packages.React)

local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType = UIBlox.App.Button.Enum.ButtonType
local ImageSetLabel = UIBlox.Core.ImageSet.ImageSetLabel
local useStyle = UIBlox.Core.Style.useStyle

local useSelector = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useSelector
local useDispatch = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useDispatch
local RobloxTranslator = require(CoreGui.RobloxGui.Modules.RobloxTranslator)
local useScreenSize = require(CoreGui.RobloxGui.Modules.Common.Hooks.useScreenSize)
local ExperienceService = require(CorePackages.Workspace.Packages.ExperienceService).ExperienceService

local InspectAndBuyFolder = script.Parent.Parent
local CloseOverlay = require(InspectAndBuyFolder.Actions.CloseOverlay)

local THUMBNAIL_HEIGHT = 150

local function AttributionTraversal(props)
	local dispatch = useDispatch()
	local screenSize = useScreenSize()
	local style = useStyle()

	local onClose = React.useCallback(function()
		dispatch(CloseOverlay())
	end, { dispatch })

	local goToExperience = React.useCallback(function()
		local gameParams = {
			placeId = props.rootPlaceId,
		}

		ExperienceService:LaunchExperience(gameParams)
		dispatch(CloseOverlay())
	end, { dispatch, props.rootPlaceId })

	local locale = useSelector(function(state)
		return state.locale
	end)

	local theme = style.Theme
	local font = style.Font
	local experienceName = props.name or ""

	return React.createElement(InteractiveAlert, {
		title = RobloxTranslator:FormatByKeyForLocale("InGame.InspectMenu.Attribution.GoToExperience", locale),
		middleContent = function()
			return React.createElement("Frame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
			}, {
				UIListLayout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Padding = UDim.new(0, style.Tokens.Global.Space_150),
				}),
				ExperienceThumbnailFrame = React.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.fromOffset(THUMBNAIL_HEIGHT, THUMBNAIL_HEIGHT),
					BackgroundColor3 = theme.BackgroundContrast.Color,
					BorderSizePixel = 0,
					LayoutOrder = 1,
					ClipsDescendants = true,
				}, {
					ExperienceThumbnail = React.createElement(ImageSetLabel, {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.fromScale(0.5, 0.5),
						Image = string.format(
							"rbxthumb://type=GameIcon&id=%s&w=%d&h=%d",
							tostring(props.universeId),
							THUMBNAIL_HEIGHT,
							THUMBNAIL_HEIGHT
						),
						Size = UDim2.fromScale(1, 1),
						BorderSizePixel = 0,
						BackgroundTransparency = 1,
					}, {
						RoundCorner = React.createElement("UICorner", {
							CornerRadius = UDim.new(0, style.Tokens.Semantic.Radius.Medium),
						}),
					}),
				}),
				BodyText = React.createElement(StyledTextLabel, {
					text = RobloxTranslator:FormatByKeyForLocale(
						"InGame.InspectMenu.Attribution.GoToDescription",
						locale,
						{ EXPERIENCE_NAME = experienceName }
					),
					fontStyle = font.Body,
					colorStyle = theme.TextDefault,
					layoutOrder = 2,
					automaticSize = Enum.AutomaticSize.Y,
					size = UDim2.fromScale(1, 0),
					textXAlignment = Enum.TextXAlignment.Center,
					lineHeight = 1,
				}),
			})
		end,
		buttonStackInfo = {
			buttons = {
				{
					props = {
						onActivated = onClose,
						text = RobloxTranslator:FormatByKeyForLocale("InGame.InspectMenu.Action.Cancel", locale),
						layoutOrder = 0,
					},
					isDefaultChild = true,
				},
				{
					buttonType = ButtonType.PrimaryContextual,
					props = {
						onActivated = goToExperience,
						text = RobloxTranslator:FormatByKeyForLocale("InGame.InspectMenu.Action.Go", locale),
						layoutOrder = 2,
					},
					isDefaultChild = false,
				},
			},
		},
		isMiddleContentFocusable = false,
		screenSize = screenSize,
	})
end

return AttributionTraversal
