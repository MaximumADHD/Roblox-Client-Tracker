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
local TitledFrame = UILibrary.Component.TitledFrame
local RoundTextBox = UILibrary.Component.RoundTextBox

local Header = require(Plugin.Src.Components.Header)
local ServerFill = require(Plugin.Src.Components.ServerFill)
local TableWithMenu = require(Plugin.Src.Components.TableWithMenu)

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddErrors = require(Plugin.Src.Actions.AddErrors)
local AddWarning = require(Plugin.Src.Actions.AddWarning)
local DiscardWarning = require(Plugin.Src.Actions.DiscardWarning)

local createSettingsPage = require(Plugin.Src.Components.SettingsPages.DEPRECATED_createSettingsPage)

local MAX_NAME_LENGTH = 50

local AssetManagerService = game:GetService("AssetManagerService")
local StudioService = game:GetService("StudioService")

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
	local loadedProps = {
		Places = getValue("places")
	}
	return loadedProps
end

--Implements dispatch functions for when the user changes values
local function dispatchChanges(setValue, dispatch)

end

local function displayPlaceListPage(props, localization)
	local theme = props.Theme:get("Plugin")

	local layoutIndex = LayoutOrderIterator.new()

	local buttonText = localization:getText("General", "ButtonCreate")
	local buttonTextExtents = GetTextSize(buttonText, theme.fontStyle.Header.TextSize, theme.fontStyle.Header.Font)

	local placeTableHeaders = {
		localization:getText("Places", "PlaceVersion"),
		localization:getText("Places", "PlaceName"),
		localization:getText("Places", "MaxPlayers"),
	}

	local placesData = {}
	for _, place in pairs(props.Places) do
		local row = { place.id, place.name, place.universeId }
		table.insert(placesData, row)
	end

	return
	{
		Header = Roact.createElement(Header, {
			Title = localization:getText("General", "Category"..PageName),
			LayoutOrder = layoutIndex:getNextOrder(),
		}),

		CreateButton = Roact.createElement(Button, {
			Style = "RoundPrimary",
			Text = buttonText,
			Size = UDim2.new(0, buttonTextExtents.X + theme.createButton.PaddingX,
			0, buttonTextExtents.Y + theme.createButton.PaddingY),
			LayoutOrder = layoutIndex:getNextOrder(),
			OnClick = function()
				AssetManagerService:AddNewPlace()
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
			OnItemClicked = function(key, row)
				if key == "EditKey" then
					--TODO: Switch to Edit Page behavior
					print(row)
				elseif key == "VerisonHistoryKey" then
					StudioService:ShowPlaceHistoryVersionDialog()
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
					--TODO: back functionality
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
				Text = "",
				TextSize = theme.fontStyle.Normal.TextSize,
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
				VerticalAlignment = Enum.VerticalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
			}),

			TextBox = Roact.createElement(RoundTextBox, {
				Active = true,
				LayoutOrder = 1,
				ShowToolTip = false,
				Size = UDim2.new(0, theme.placePage.textBox.length, 0, theme.textBox.height),
				Text = "",
				TextSize = theme.fontStyle.Normal.TextSize,
			}),

			MaxPlayersSubText = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtext, {
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
            Selected = "Custom",
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
					StudioService:ShowPlaceHistoryVersionDialog()
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

	return displayPlaceListPage(props, localization)
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
