--[[
	Publish page for Basic Info settings.
		- Game name and description
		- Game privacy settings (who is allowed to play the game)
		- Playable Devices (which devices can run this game)
		- Genre
		- Thumbnails (Screenshots and Video)
		- Game Icon

	Settings:
		string Name - The game name
		bool IsActive - Whether the game is public or private
		bool IsFriendsOnly - Whether the game is open to everyone or only friends/group members
		string Group - The name of the group that owns this game, if one does
		string Description - The game description
		string Genre - The genre of this game
		table Devices - A table of which devices are playable
		table Thumbnails - A table of this game's thumbnails
		list Order - The order in which this game's thumbnails display
		string GameIcon - The rbxassetid url of the game's icon, or "None" if no icon exists.

	Errors:
		name: "Empty", "TooLong"
		description: "TooLong"
		devices: "NoDevices"
]]


local MAX_NAME_LENGTH = 50
local MAX_DESCRIPTION_LENGTH = 1000

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Cryo = require(Plugin.Packages.Cryo)

local UILibrary = require(Plugin.Packages.UILibrary)
local TitledFrame = UILibrary.Component.TitledFrame
local RoundTextBox = UILibrary.Component.RoundTextBox
local StyledDropDown = UILibrary.Component.StyledDropdown
local Separator = UILibrary.Component.Separator

local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)

local Header = require(Plugin.Src.Components.Header)
local PlatformSelect = require(Plugin.Src.Components.PlatformSelect)
local CheckBoxSet = require(Plugin.Src.Components.CheckBoxSet)

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddErrors = require(Plugin.Src.Actions.AddErrors)
local Constants = require(Plugin.Src.Resources.Constants)
local Theming = require(Plugin.Src.ContextServices.Theming)

local createMenuPage = require(Plugin.Src.Components.createMenuPage)

local FFlagStudioAllowRemoteSaveBeforePublish = game:GetFastFlag("StudioAllowRemoteSaveBeforePublish")
local FFlagUpdatePublishPlacePluginToDevFrameworkContext = game:GetFastFlag("UpdatePublishPlacePluginToDevFrameworkContext")
local FFlagStudioPromptOnFirstPublish = game:GetFastFlag("StudioPromptOnFirstPublish")
local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")

local shouldShowDevPublishLocations = require(Plugin.Src.Util.PublishPlaceAsUtilities).shouldShowDevPublishLocations
local KeyProvider = FFlagLuobuDevPublishLua and require(Plugin.Src.Util.KeyProvider) or nil
local optInLocationsKey = FFlagLuobuDevPublishLua and KeyProvider.getOptInLocationsKeyName() or nil
local chinaKey = FFlagLuobuDevPublishLua and KeyProvider.getChinaKeyName() or nil

local Framework = require(Plugin.Packages.Framework)
local Tooltip = Framework.UI.Tooltip
local Image = Framework.UI.Decoration.Image
local HoverArea = Framework.UI.HoverArea

local groupsLoaded = false
-- remove DEPRECATED_localization parameter with FFlagUpdatePublishPlacePluginToDevFrameworkContext
--Uses props to display current settings values
local function displayContents(parent, DEPRECATED_localization)
	local props = FFlagLuobuDevPublishLua and parent.props or parent

	local theme = FFlagUpdatePublishPlacePluginToDevFrameworkContext and props.Theme:get("Plugin") or nil
	local localization = FFlagUpdatePublishPlacePluginToDevFrameworkContext and props.Localization or DEPRECATED_localization
	local description = props.Description
	local descriptionChanged = props.DescriptionChanged
	local descriptionError = props.DescriptionError
	local devices = props.Devices
	local devicesChanged = props.DevicesChanged
	local devicesError = props.DevicesError
	local genre = props.Genre
	local genreChanged = props.GenreChanged
	local name = props.Name
	local nameChanged = props.NameChanged
	local nameError = props.NameError
	local creatorId = props.CreatorId
	local groups = props.Groups
	local creatorChanged = props.CreatorChanged
	local isFriendsOnlyChanged = props.IsFriendsOnlyChanged
	local isActiveChanged = props.IsActiveChanged
	local optInLocations = FFlagLuobuDevPublishLua and props.OptInLocations or nil
	local optInLocationsChanged = FFlagLuobuDevPublishLua and props.OptInLocationsChanged or nil

	local genres = Cryo.List.map(Constants.GENRE_IDS, function(name)
		return {Key = name, Text = localization:getText("Genre", name)}
	end)

	local dropdownItems = { { Type = Constants.SUBJECT_TYPE.USER, Key = 0, Text = localization:getText("GroupDropdown", "Me"), }, }

	local creatorItem = dropdownItems[1]

	if groups and next(groups) ~= nil then
		for _, group in pairs(groups) do
			table.insert(dropdownItems, { Type = Constants.SUBJECT_TYPE.GROUP, Key = group.groupId, Text = group.name, })
		end
		if not groupsLoaded then
			groupsLoaded = true
			for _, item in ipairs(dropdownItems) do
				if game.CreatorId == item.Key and game.CreatorType == Enum.CreatorType.Group then
					creatorChanged(item.Key)
				end
			end
		end
	end

	for _, item in ipairs(dropdownItems) do
		if creatorId == item.Key then
			creatorItem = item
		end
	end

	local nameLength = utf8.len(name)
	local descriptionLength = utf8.len(description)

	local displayResult = {
		Header = Roact.createElement(Header, {
			Title = localization:getText("MenuItem", "BasicInfo"),
			LayoutOrder = 0,
		}),

		Name = Roact.createElement(TitledFrame, {
			Title = localization:getText("PageTitle", "Name"),
			MaxHeight = 60,
			LayoutOrder = 1,
			TextSize = Constants.TEXT_SIZE,
		}, {
			TextBox = Roact.createElement(RoundTextBox, {
				Active = true,
				ErrorMessage = nameError and localization:getText("Error", nameError, { tostring(nameLength), tostring(MAX_NAME_LENGTH) }),
				MaxLength = MAX_NAME_LENGTH,
				Text = name,
				TextSize = Constants.TEXT_SIZE,
				SetText = nameChanged,
			}),
		}),

		Description = Roact.createElement(TitledFrame, {
			Title = localization:getText("PageTitle", "Description"),
			MaxHeight = 150,
			LayoutOrder = 2,
			TextSize = Constants.TEXT_SIZE,
		}, {
			TextBox = Roact.createElement(RoundTextBox, {
				Active = true,
				Height = 130,
				Multiline = true,
				MaxLength = MAX_DESCRIPTION_LENGTH,
				Text = description,
				TextSize = Constants.TEXT_SIZE,
				SetText = descriptionChanged,
				ErrorMessage = descriptionError and localization:getText("Error", descriptionError, { tostring(descriptionLength), tostring(MAX_DESCRIPTION_LENGTH) }),
			}),
		}),

		Separator1 = Roact.createElement(Separator, {
			LayoutOrder = 3,
		}),

		Creator = Roact.createElement(TitledFrame, {
			Title = localization:getText("PageTitle", "Creator"),
			MaxHeight = 38,
			TextSize = Constants.TEXT_SIZE,
			ZIndex = 2,
			LayoutOrder = 4,
		}, {
			Selector = FFlagUpdatePublishPlacePluginToDevFrameworkContext and
				Roact.createElement(StyledDropDown, {
					Size = UDim2.new(0, theme.DROPDOWN_WIDTH, 0, theme.DROPDOWN_HEIGHT),
					Position = UDim2.new(0, 0, 0, 0),
					ItemHeight = 38,
					ButtonText = creatorItem.Text,
					Items = dropdownItems,
					MaxItems = 4,
					TextSize = Constants.TEXT_SIZE,
					SelectedItem = creatorItem.Key,
					ShowRibbon = not theme.isDarkerTheme,
					OnItemClicked = function(item) creatorChanged(item.Key) end,
					ListWidth = 330,
				}) or 
				Theming.withTheme(function(theme)
				return Roact.createElement(StyledDropDown, {
					Size = UDim2.new(0, theme.DROPDOWN_WIDTH, 0, theme.DROPDOWN_HEIGHT),
					Position = UDim2.new(0, 0, 0, 0),
					ItemHeight = 38,
					ButtonText = creatorItem.Text,
					Items = dropdownItems,
					MaxItems = 4,
					TextSize = Constants.TEXT_SIZE,
					SelectedItem = creatorItem.Key,
					ShowRibbon = not theme.isDarkerTheme,
					OnItemClicked = function(item) creatorChanged(item.Key) end,
					ListWidth = 330,
				})
			end),
		}),

		Separator2 = Roact.createElement(Separator, {
			LayoutOrder = 5,
		}),

		Genre = Roact.createElement(TitledFrame, {
			Title = localization:getText("PageTitle", "Genre"),
			MaxHeight = 38,
			TextSize = Constants.TEXT_SIZE,
			ZIndex = 2,
			LayoutOrder = 6,
		}, {
			Selector = FFlagUpdatePublishPlacePluginToDevFrameworkContext and
				Roact.createElement(StyledDropDown, {
					Size = UDim2.new(0, 220, 0, 38),
					Position = UDim2.new(0, 0, 0, 0),
					ItemHeight = 38,
					ButtonText = localization:getText("Genre", genre),
					Items = genres,
					MaxItems = 4,
					TextSize = Constants.TEXT_SIZE,
					SelectedItem = genre,
					ShowRibbon = not theme.isDarkerTheme,
					OnItemClicked = function(item) genreChanged(item.Key) end,
					ListWidth = 210,
				}) or
				Theming.withTheme(function(theme)
				return Roact.createElement(StyledDropDown, {
					Size = UDim2.new(0, 220, 0, 38),
					Position = UDim2.new(0, 0, 0, 0),
					ItemHeight = 38,
					ButtonText = localization:getText("Genre", genre),
					Items = genres,
					MaxItems = 4,
					TextSize = Constants.TEXT_SIZE,
					SelectedItem = genre,
					ShowRibbon = not theme.isDarkerTheme,
					OnItemClicked = function(item) genreChanged(item.Key) end,
					ListWidth = 210,
				})
			end),
		}),

		Separator4 = Roact.createElement(Separator, {
			LayoutOrder = 9,
		}),

		Devices = Roact.createElement(PlatformSelect, {
			LayoutOrder = 10,
			Devices = devices,
			DevicesError = devicesError,
			DeviceSelected = function(id, selected)
				local newDevices = Cryo.Dictionary.join(devices, {
					[id] = selected,
				})
				devicesChanged(newDevices)
			end,
		}),
	}

	if FFlagStudioAllowRemoteSaveBeforePublish then
		if props.IsPublish then
			-- Add playability controls
			displayResult.Separator3 = Roact.createElement(Separator, {
				LayoutOrder = 7,
			})

			local playabilityButtons = {
				{
					Id = "Public",
					Title = localization:getText("General", "PlayabilityPublic"),
					Description = localization:getText("General", "PlayabilityPublicDesc"),
				}, {
					Id = "Friends",
					Title = localization:getText("General", "PlayabilityFriends"),
					Description = localization:getText("General", "PlayabilityFriendsDesc"),
				}, {
					Id = "Private",
					Title = localization:getText("General", "PlayabilityPrivate"),
					Description = localization:getText("General", "PlayabilityPrivateDesc"),
				},
			}

			local selectedButton = "Private"
			if props.IsFriendsOnly and props.IsActive then
				selectedButton = "Friends"
			elseif props.IsActive then
				selectedButton = "Public"
			end

			displayResult.Playability = FFlagUpdatePublishPlacePluginToDevFrameworkContext and
				Roact.createElement(RadioButtonSet, {
					Title = localization:getText("General", "TitlePlayability"),
					Description = localization:getText("General", "PlayabilityHeader"),
					LayoutOrder = 8,
					Buttons = playabilityButtons,
					Enabled = true,
					Selected = selectedButton,
					SelectionChanged = function(button)
						if button.Id == "Friends" then
							isFriendsOnlyChanged(true)
							isActiveChanged(true)
						elseif button.Id == "Public" then
							isFriendsOnlyChanged(false)
							isActiveChanged(true)
						elseif button.Id == "Private" then
							isFriendsOnlyChanged(false)
							isActiveChanged(false)
						end
					end,
				}) or Theming.withTheme(function(theme)
				return Roact.createElement(RadioButtonSet, {
					Title = localization:getText("General", "TitlePlayability"),
					Description = localization:getText("General", "PlayabilityHeader"),
					LayoutOrder = 8,
					Buttons = playabilityButtons,
					Enabled = true,
					Selected = selectedButton,
					SelectionChanged = function(button)
						if button.Id == "Friends" then
							isFriendsOnlyChanged(true)
							isActiveChanged(true)
						elseif button.Id == "Public" then
							isFriendsOnlyChanged(false)
							isActiveChanged(true)
						elseif button.Id == "Private" then
							isFriendsOnlyChanged(false)
							isActiveChanged(false)
						end
					end,
				})
			end)

			displayResult.Separator5 = FFlagLuobuDevPublishLua and shouldShowDevPublishLocations()
			and Roact.createElement(Separator, {
				LayoutOrder = 11,
			}) or nil

			displayResult.OptInLocations = FFlagLuobuDevPublishLua and shouldShowDevPublishLocations()
			and Roact.createElement(CheckBoxSet, {
				Title = localization:getText(optInLocationsKey, "TitleOptInLocations"),
				LayoutOrder = 12,
				MaxHeight = theme.optInLocations.height,
				Boxes = {{
						Id = chinaKey,
						Title = localization:getText(optInLocationsKey, chinaKey),
						Selected = optInLocations and optInLocations.China or false
					},
				},
				Enabled = optInLocations ~= nil,
				--Functionality
				EntryClicked = function(box)
					local newLocations = Cryo.Dictionary.join(optInLocations, {
						[box.Id] = (box.Selected) and Cryo.None or not box.Selected,
					})
					optInLocationsChanged(newLocations)
				end,
				Tooltip = Roact.createElement(Image, {
					Size = UDim2.fromOffset(theme.tooltipIcon.size, theme.tooltipIcon.size),
					Position = UDim2.new(0, 0, 0, theme.tooltipIcon.paddingY),
					Style = "TooltipStyle",
					StyleModifier = parent.state.StyleModifier,
				}, {
					Roact.createElement(Tooltip, {
						Text = localization:getText(optInLocationsKey, "Tooltip"),
					}),
					Roact.createElement(HoverArea, {
						Cursor = "PointingHand",
						MouseEnter = parent.onMouseEnter,
						MouseLeave = parent.onMouseLeave,
					}),
				}),
			}) or nil
		else
			-- Dialog is in save mode, not publish mode
			-- Hide the controls that are only used on publish
			displayResult.Separator1 = nil
			displayResult.Description = nil
			displayResult.Separator2 = nil
			displayResult.Genre = nil
			displayResult.Separator3 = nil
			displayResult.Devices = nil
			displayResult.Separator4 = nil
		end

		-- Creator has already been set and can not be changed in "first publish" mode, hide the control
		if FFlagStudioPromptOnFirstPublish and props.IsFirstPublish then
			displayResult.Creator = nil
			displayResult.Separator2 = nil
		end
	end

	return displayResult
end

--Loads settings values into props by key
local function loadValuesToProps(getValue, state)
	-- Set in settings reducer.
	local errors = state.NewGameSettings.errors
	local groupInfo = state.GroupsHavePermission.groupInfo
	return {
		NameError = errors.name,
		DescriptionError = errors.description,
		DevicesError = errors.playableDevices,
		IsCurrentlyActive = state.NewGameSettings.current.isActive,
		Groups = groupInfo.groups,

		Name = getValue("name"),
		Description = getValue("description"),
		Genre = getValue("genre"),
		Devices = getValue("playableDevices") or {},
		RootPlaceId = getValue("rootPlaceId"),
		IsActive = getValue("isActive"),
		IsFriendsOnly = getValue("isFriendsOnly"),
		CreatorId = getValue("creatorId"),
		OptInLocations = FFlagUpdatePublishPlacePluginToDevFrameworkContext and FFlagLuobuDevPublishLua and shouldShowDevPublishLocations() and getValue(optInLocationsKey) or {},
	}
end

--Implements dispatch functions for when the user changes values
local function dispatchForProps(setValue, dispatch)
	return {
		CreatorChanged = setValue("creatorId"),

		GenreChanged = setValue("genre"),

		NameChanged = function(text)
			dispatch(AddChange("name", text))
			local nameLength = utf8.len(text)
			local whitespaceTrimmedString, _ = string.gsub(text, " ", "")
			if nameLength == 0 or string.len(whitespaceTrimmedString) == 0 then
				dispatch(AddErrors({name = "NameEmpty"}))
			elseif nameLength > MAX_NAME_LENGTH then
				dispatch(AddErrors({name = "NameTooLong"}))
			end
		end,

		DescriptionChanged = function(text)
			dispatch(AddChange("description", text))
			local descriptionLength = utf8.len(text)
			if descriptionLength > MAX_DESCRIPTION_LENGTH then
				dispatch(AddErrors({description = "DescriptionTooLong"}))
			end
		end,

		DevicesChanged = function(devices)
			dispatch(AddChange("playableDevices", devices))
			for _, value in pairs(devices) do
				if value then
					return
				end
			end
			dispatch(AddErrors({playableDevices = "NoDevices"}))
		end,

		OptInLocationsChanged = function(locations)
			if FFlagUpdatePublishPlacePluginToDevFrameworkContext and FFlagLuobuDevPublishLua and shouldShowDevPublishLocations() then
				dispatch(AddChange(optInLocationsKey, locations))
			end
		end,

		IsFriendsOnlyChanged = setValue("isFriendsOnly"),
		IsActiveChanged = setValue("isActive"),
	}
end

local basePage = createMenuPage(loadValuesToProps, dispatchForProps)

local function BasicInfo(props)
	return Roact.createElement(basePage, {
		Content = displayContents,
		AddLayout = true,
		IsPublish = props.IsPublish,
		IsFirstPublish = props.IsFirstPublish,
	})
end

return BasicInfo
