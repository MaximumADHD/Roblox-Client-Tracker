--[[
    Settings page for Places settings:
        - Create place
        - List of places in game
        - Edit Place

	Settings:
        - Name
        - Server Fill
        - Max Players
        - Version History

	Errors:
		name: "Empty", "TooLong"
		description: "TooLong"
		devices: "NoDevices"
]]

local PageName = "Places"

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)

local Framework = Plugin.Framework

local FrameworkUI = require(Framework.UI)
local Button = FrameworkUI.Button
local HoverArea = FrameworkUI.HoverArea
local Separator = FrameworkUI.Separator

local FrameworkUtil = require(Framework.Util)
local LayoutOrderIterator = FrameworkUtil.LayoutOrderIterator
local FitFrameOnAxis = FrameworkUtil.FitFrame.FitFrameOnAxis

local UILibrary = require(Plugin.UILibrary)
local GetTextSize = UILibrary.Util.GetTextSize
local deepJoin = UILibrary.Util.deepJoin
local TitledFrame = UILibrary.Component.TitledFrame
local RoundTextBox = UILibrary.Component.RoundTextBox

local Header = require(Plugin.Src.Components.Header)
local ServerFill = require(Plugin.Src.Components.ServerFill)
local TableWithMenu = require(Plugin.Src.Components.TableWithMenu)

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddErrors = require(Plugin.Src.Actions.AddErrors)
local DiscardChanges = require(Plugin.Src.Actions.DiscardChanges)
local DiscardError = require(Plugin.Src.Actions.DiscardError)
local DiscardErrors = require(Plugin.Src.Actions.DiscardErrors)
local SetEditPlaceId = require(Plugin.Src.Actions.SetEditPlaceId)

local ReloadPlaces = require(Plugin.Src.Thunks.ReloadPlaces)

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.DEPRECATED_createSettingsPage)

local MAX_NAME_LENGTH = 50
local MIN_PLAYER_COUNT = 1
local MAX_PLAYER_COUNT = 100
local MIN_SOCIAL_SLOT_COUNT = 1
local MAX_SOCIAL_SLOT_COUNT = 10

local AssetManagerService = game:GetService("AssetManagerService")
local StudioService = game:GetService("StudioService")

local nameErrors = {
	Empty = "ErrorNameEmpty",
}

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
	local errors = state.Settings.Errors
	local loadedProps = {
		Places = getValue("places"),
		EditPlaceId = state.EditAsset.editPlaceId,

		PlaceNameError = errors.placeName,
		PlacePlayerCountError = errors.placePlayerCount,
		PlaceCustomSocialSlotCountError = errors.placeCustomSocialSlotsCount,
	}
	return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)
	local dispatchFuncs = {
		dispatchReloadPlaces = function()
			dispatch(ReloadPlaces())
		end,

		dispatchSetEditPlaceId = function(placeId)
			dispatch(SetEditPlaceId(placeId))
		end,

		dispatchSetPlaceName = function(places, placeId, placeName)
			local nameLength = utf8.len(placeName)
			if nameLength == 0 then
				dispatch(AddErrors({placeName = "Empty"}))
			else
				local newPlaces = deepJoin(places, {
					[placeId] = {
						name = placeName,
					}
				})
				dispatch(AddChange("places", newPlaces))
				dispatch(DiscardError("placeName"))
				if nameLength > MAX_NAME_LENGTH then
					dispatch(AddErrors({placeName = "TooLong"}))
				end
			end
		end,

		dispatchSetPlaceMaxPlayerCount = function(places, placeId, maxPlayerCount)
			local numberPlayerCount = tonumber(maxPlayerCount)

			if not numberPlayerCount then
				dispatch(AddErrors({placePlayerCount = "Error"}))
			elseif numberPlayerCount and (numberPlayerCount < MIN_PLAYER_COUNT or numberPlayerCount > MAX_PLAYER_COUNT) then
				dispatch(AddErrors({placePlayerCount = "Error"}))
			else
				local newPlaces = deepJoin(places, {
					[placeId] = {
						maxPlayerCount = numberPlayerCount,
					}
				})
				dispatch(AddChange("places", newPlaces))
				dispatch(DiscardError("placePlayerCount"))
			end
		end,

		dispatchSetSocialSlotType = function(places, placeId, socialSlotType)
			local newPlaces = deepJoin(places, {
				[placeId] = {
					socialSlotType = socialSlotType,
				}
			})
			dispatch(AddChange("places", newPlaces))
		end,

		dispatchSetCustomSocialSlotsCount = function(places, placeId, customSocialSlotsCount)
			local numberCustomSocialSlotsCount = tonumber(customSocialSlotsCount)

			if not numberCustomSocialSlotsCount then
				dispatch(AddErrors({placeCustomSocialSlotsCount = "Error"}))
			elseif numberCustomSocialSlotsCount and
			(numberCustomSocialSlotsCount < MIN_SOCIAL_SLOT_COUNT or numberCustomSocialSlotsCount > MAX_SOCIAL_SLOT_COUNT) then
				dispatch(AddErrors({placeCustomSocialSlotsCount = "Error"}))
			else
				local newPlaces = deepJoin(places, {
					[placeId] = {
						customSocialSlotsCount = numberCustomSocialSlotsCount,
					}
				})
				dispatch(AddChange("places", newPlaces))
				dispatch(DiscardError("placeCustomSocialSlotsCount"))
			end
		end,

		dispatchDiscardChanges = function()
			dispatch(DiscardChanges())
		end,

		dispatchDiscardErrors = function()
			dispatch(DiscardErrors())
		end,
	}

	return dispatchFuncs
end

local function createPlaceTableData(places)
	local data = {}

	for _, place in pairs(places) do
		local rowData = {
			index = place.index + 1,
			row = {
				place.currentSavedVersion,
				place.name,
				place.maxPlayerCount
			},
		}
		data[place.id] = rowData
	end

	return data
end

local function displayPlaceListPage(props, localization)
	local theme = props.Theme:get("Plugin")

	local layoutIndex = LayoutOrderIterator.new()

	local buttonText = localization:getText("General", "ButtonCreate")
	local buttonTextExtents = GetTextSize(buttonText, theme.fontStyle.Header.TextSize, theme.fontStyle.Header.Font)

	local dispatchReloadPlaces = props.dispatchReloadPlaces

	local placeTableHeaders = {
		localization:getText("Places", "PlaceVersion"),
		localization:getText("Places", "PlaceName"),
		localization:getText("Places", "MaxPlayers"),
	}

	local places = props.Places and props.Places or {}
    local placesData = createPlaceTableData(places)

	return
	{
		Header = Roact.createElement(Header, {
			Title = localization:getText("General", "Category"..PageName),
			LayoutOrder = layoutIndex:getNextOrder(),
		}),

		CreateButton = Roact.createElement(Button, {
			Style = "GameSettingsPrimaryButton",
			Text = buttonText,
			Size = UDim2.new(0, buttonTextExtents.X + theme.createButton.PaddingX,
			0, buttonTextExtents.Y + theme.createButton.PaddingY),
			LayoutOrder = layoutIndex:getNextOrder(),
			OnClick = function()
				AssetManagerService:AddNewPlace()
				dispatchReloadPlaces()
			end,
		}, {
			Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
		}),

		PlacesTable = Roact.createElement(TableWithMenu, {
			LayoutOrder = layoutIndex:getNextOrder(),
			Headers = placeTableHeaders,
			Data = placesData,
			MenuItems = {
				{ Key = "EditKey", Text = localization:getText("General", "ButtonEdit") },
				{ Key = "VerisonHistoryKey", Text = localization:getText("Places", "VersionHistory") },
			},
			OnItemClicked = function(key, id)
				if key == "EditKey" then
					props.dispatchSetEditPlaceId(id)
				elseif key == "VerisonHistoryKey" then
					StudioService:ShowPlaceVersionHistoryDialog()
				end
			end,
		})
	}
end

local function displayEditPlacePage(props, localization)
	local theme = props.Theme:get("Plugin")

	local layoutIndex = LayoutOrderIterator.new()

	local maxPlayersSubText = localization:getText("Places", "MaxPlayersSubText")
	local maxPlayersSubTextSize = GetTextSize(maxPlayersSubText, theme.fontStyle.Subtext.TextSize, theme.fontStyle.Subtext.Font)
	local viewButtonText = localization:getText("General", "ButtonView")
	local viewButtonTextExtents = GetTextSize(viewButtonText, theme.fontStyle.Header.TextSize, theme.fontStyle.Header.Font)

	local places = props.Places
	local editPlaceId = props.EditPlaceId

	local placeName = places[editPlaceId].name
	local placeNameError
	if props.PlaceNameError and nameErrors[props.PlaceNameError] then
		placeNameError = localization:getText("General", nameErrors[props.PlaceNameError])
	end

	local maxPlayerCount = places[editPlaceId].maxPlayerCount
	local placePlayerCountError
	if props.PlacePlayerCountError then
		placePlayerCountError = localization:getText("Places", "NumberError", {minRange = MIN_PLAYER_COUNT, maxRange = MAX_PLAYER_COUNT, })
	end

	local serverFill = places[editPlaceId].socialSlotType
	local customSocialSlotsCount = places[editPlaceId].customSocialSlotsCount
	local placeCustomSocialSlotCountError
	if props.PlaceCustomSocialSlotCountError then
		placeCustomSocialSlotCountError = localization:getText("Places", "NumberError", {minRange = MIN_SOCIAL_SLOT_COUNT, maxRange = MAX_SOCIAL_SLOT_COUNT, })
	end

	local dispatchSetPlaceName = props.dispatchSetPlaceName
	local dispatchSetPlaceMaxPlayerCount = props.dispatchSetPlaceMaxPlayerCount
	local dispatchSetSocialSlotType = props.dispatchSetSocialSlotType
	local dispatchSetCustomSocialSlotsCount = props.dispatchSetCustomSocialSlotsCount

	return {
		HeaderFrame = Roact.createElement(FitFrameOnAxis, {
			LayoutOrder = layoutIndex:getNextOrder(),
			BackgroundTransparency = 1,
			axis = FitFrameOnAxis.Axis.Vertical,
			minimumSize = UDim2.new(1, 0, 0, 0),
			contentPadding = UDim.new(0, theme.settingsPage.headerPadding),
		}, {
			BackButton = Roact.createElement("ImageButton", {
				Size = UDim2.new(0, theme.backButton.size, 0, theme.backButton.size),
				LayoutOrder = 0,

				Image = theme.backButton.image,

				BackgroundTransparency = 1,

				[Roact.Event.Activated] = function()
					props.dispatchDiscardChanges()
					props.dispatchDiscardErrors()
					props.dispatchSetEditPlaceId(0)
				end,
			}, {
				Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
			}),

			Roact.createElement(Separator, {
				LayoutOrder = 1
			}),

			Header = Roact.createElement(Header, {
				Title = localization:getText("Places", "EditPlace"),
				LayoutOrder = 2,
			}),
		}),

		Name = Roact.createElement(TitledFrame, {
			Title = localization:getText("General", "TitleName"),
			MaxHeight = 60,
			LayoutOrder = layoutIndex:getNextOrder(),
			TextSize = theme.fontStyle.Normal.TextSize,
		}, {
			TextBox = Roact.createElement(RoundTextBox, {
				Active = true,
				MaxLength = MAX_NAME_LENGTH,
				ErrorMessage = placeNameError,
				Text = placeName,
				TextSize = theme.fontStyle.Normal.TextSize,

				SetText = function(name)
					dispatchSetPlaceName(places, editPlaceId, name)
				end,
			}),
		}),

		MaxPlayers = Roact.createElement(TitledFrame, {
			Title = localization:getText("Places", "MaxPlayers"),
			MaxHeight = 60,
			LayoutOrder = layoutIndex:getNextOrder(),
			TextSize = theme.fontStyle.Normal.TextSize,
		}, {
			HeaderLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			TextBox = Roact.createElement(RoundTextBox, {
				Active = true,
				LayoutOrder = 1,
				ShowToolTip = placePlayerCountError and true or false,
				Size = UDim2.new(0, theme.placePage.textBox.length, 0, theme.textBox.height),
				Text = maxPlayerCount,
				ErrorMessage = placePlayerCountError,
				TextSize = theme.fontStyle.Normal.TextSize,

				SetText = function(playerCount)
					dispatchSetPlaceMaxPlayerCount(places, editPlaceId, playerCount)
				end,
			}),

			MaxPlayersSubText = not placePlayerCountError and Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtext, {
				Size = UDim2.new(1, 0, 0, maxPlayersSubTextSize.Y),
				LayoutOrder = 2,

				BackgroundTransparency = 1,

				Text = maxPlayersSubText,

				TextYAlignment = Enum.TextYAlignment.Center,
				TextXAlignment = Enum.TextXAlignment.Left,

				TextWrapped = true,
			})),
		}),

		ServerFill = Roact.createElement(ServerFill, {
            LayoutOrder = layoutIndex:getNextOrder(),
			Enabled = true,

			CustomSocialSlotsCount = customSocialSlotsCount,
			Selected = serverFill,
			ErrorMessage = placeCustomSocialSlotCountError,

			OnSocialSlotTypeChanged = function(button)
				dispatchSetSocialSlotType(places, editPlaceId, button.Id)
			end,
			OnCustomSocialSlotsCountChanged = function(customSocialSlotsCount)
				dispatchSetCustomSocialSlotsCount(places, editPlaceId, customSocialSlotsCount)
			end,
        }),

		VersionHistory = Roact.createElement(TitledFrame, {
			Title = localization:getText("Places", "VersionHistory"),
			MaxHeight = 60,
			LayoutOrder = layoutIndex:getNextOrder(),
			TextSize = theme.fontStyle.Normal.TextSize,
		}, {
			ViewButton = Roact.createElement(Button, {
				Style = "RoundPrimary",
				Text = viewButtonText,
				Size = UDim2.new(0, viewButtonTextExtents.X + theme.viewButton.PaddingX,
				0, viewButtonTextExtents.Y + theme.viewButton.PaddingY),
				LayoutOrder = layoutIndex:getNextOrder(),
				OnClick = function()
					StudioService:ShowPlaceVersionHistoryDialog()
				end,
			}, {
				Roact.createElement(HoverArea, {Cursor = "PointingHand"}),
			}),
		})
	}
end

--Uses props to display current settings values
local function displayContents(page, localization)
	local props = page.props

	local editPlaceId = props.EditPlaceId

	if editPlaceId == 0 then
		return displayPlaceListPage(props, localization)
	else
		return displayEditPlacePage(props, localization)
	end
end

local SettingsPage = createSettingsPage(PageName, loadValuesToProps, dispatchChanges)

local function Places(props)
	return Roact.createElement(SettingsPage, {
		ContentHeightChanged = props.ContentHeightChanged,
		SetScrollbarEnabled = props.SetScrollbarEnabled,
		LayoutOrder = props.LayoutOrder,
		Content = displayContents,

		AddLayout = true,
	})
end

return Places
