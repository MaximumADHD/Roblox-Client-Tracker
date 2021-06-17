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
local PartialHyperlink = UILibrary.Studio.PartialHyperlink

local RadioButtonSet = require(Plugin.Src.Components.RadioButtonSet)

local Header = require(Plugin.Src.Components.Header)
local PlatformSelect = require(Plugin.Src.Components.PlatformSelect)
local CheckBoxSet = require(Plugin.Src.Components.CheckBoxSet)

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddErrors = require(Plugin.Src.Actions.AddErrors)
local Constants = require(Plugin.Src.Resources.Constants)
local Theming = require(Plugin.Src.ContextServices.Theming)

local createMenuPage = require(Plugin.Src.Components.createMenuPage)

local GuiService = game:GetService("GuiService")

local FFlagStudioAllowRemoteSaveBeforePublish = game:GetFastFlag("StudioAllowRemoteSaveBeforePublish")
local FFlagUpdatePublishPlacePluginToDevFrameworkContext = game:GetFastFlag("UpdatePublishPlacePluginToDevFrameworkContext")
local FFlagStudioPromptOnFirstPublish = game:GetFastFlag("StudioPromptOnFirstPublish")
local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")
local FFlagLuobuDevPublishLuaTempOptIn = game:GetFastFlag("LuobuDevPublishLuaTempOptIn")
local FFlagUseLayoutIteratorGameSettingsPublishPlace = game:GetFastFlag("UseLayoutIteratorGameSettingsPublishPlace")

local shouldShowDevPublishLocations = require(Plugin.Src.Util.PublishPlaceAsUtilities).shouldShowDevPublishLocations
local getOptInLocationsRequirementsLink = require(Plugin.Src.Util.PublishPlaceAsUtilities).getOptInLocationsRequirementsLink
local KeyProvider = (FFlagLuobuDevPublishLua or FFlagLuobuDevPublishLuaTempOptIn) and require(Plugin.Src.Util.KeyProvider) or nil
local optInLocationsKey = (FFlagLuobuDevPublishLua or FFlagLuobuDevPublishLuaTempOptIn) and KeyProvider.getOptInLocationsKeyName() or nil
local chinaKey = (FFlagLuobuDevPublishLua or FFlagLuobuDevPublishLuaTempOptIn) and KeyProvider.getChinaKeyName() or nil

local Framework = require(Plugin.Packages.Framework)
local Tooltip = Framework.UI.Tooltip
local Image = Framework.UI.Decoration.Image
local HoverArea = Framework.UI.HoverArea
local LinkText = Framework.UI.LinkText
local LayoutOrderIterator = Framework.Util.LayoutOrderIterator

-- TODO: jbousellam - remove with FFlagLuobuDevPublishLuaTempOptIn
local function calculateTextSize(text, textSize, font)
	local hugeFrameSizeNoTextWrapping = Vector2.new(5000, 5000)
	return game:GetService('TextService'):GetTextSize(text, textSize, font, hugeFrameSizeNoTextWrapping)
end

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

	local layoutOrder = FFlagUseLayoutIteratorGameSettingsPublishPlace and LayoutOrderIterator.new() or nil

	local displayResult = {
		Header = Roact.createElement(Header, {
			Title = localization:getText("MenuItem", "BasicInfo"),
			LayoutOrder = FFlagUseLayoutIteratorGameSettingsPublishPlace and layoutOrder:getNextOrder() or 0,
		}),

		Name = Roact.createElement(TitledFrame, {
			Title = localization:getText("PageTitle", "Name"),
			MaxHeight = 60,
			LayoutOrder = FFlagUseLayoutIteratorGameSettingsPublishPlace and layoutOrder:getNextOrder() or 1,
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
			LayoutOrder = FFlagUseLayoutIteratorGameSettingsPublishPlace and layoutOrder:getNextOrder() or 2,
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
			LayoutOrder = FFlagUseLayoutIteratorGameSettingsPublishPlace and layoutOrder:getNextOrder() or 3,
		}),

		Creator = Roact.createElement(TitledFrame, {
			Title = localization:getText("PageTitle", "Creator"),
			MaxHeight = 38,
			TextSize = Constants.TEXT_SIZE,
			ZIndex = 2,
			LayoutOrder = FFlagUseLayoutIteratorGameSettingsPublishPlace and layoutOrder:getNextOrder() or 4,
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
			LayoutOrder = FFlagUseLayoutIteratorGameSettingsPublishPlace and layoutOrder:getNextOrder() or 5,
		}),

		Genre = Roact.createElement(TitledFrame, {
			Title = localization:getText("PageTitle", "Genre"),
			MaxHeight = 38,
			TextSize = Constants.TEXT_SIZE,
			ZIndex = 2,
			LayoutOrder = FFlagUseLayoutIteratorGameSettingsPublishPlace and layoutOrder:getNextOrder() or 6,
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
			LayoutOrder = FFlagUseLayoutIteratorGameSettingsPublishPlace and layoutOrder:getNextOrder() or 9,
		}),

		Devices = Roact.createElement(PlatformSelect, {
			LayoutOrder = FFlagUseLayoutIteratorGameSettingsPublishPlace and layoutOrder:getNextOrder() or 10,
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
				LayoutOrder = FFlagUseLayoutIteratorGameSettingsPublishPlace and layoutOrder:getNextOrder() or 7,
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
					LayoutOrder = FFlagUseLayoutIteratorGameSettingsPublishPlace and layoutOrder:getNextOrder() or 8,
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
					LayoutOrder = FFlagUseLayoutIteratorGameSettingsPublishPlace and layoutOrder:getNextOrder() or 8,
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

			displayResult.Separator5 = (not FFlagLuobuDevPublishLuaTempOptIn and FFlagLuobuDevPublishLua) and shouldShowDevPublishLocations()
			and Roact.createElement(Separator, {
				LayoutOrder = FFlagUseLayoutIteratorGameSettingsPublishPlace and layoutOrder:getNextOrder() or 11,
			}) or nil

			displayResult.OptInLocations = (not FFlagLuobuDevPublishLuaTempOptIn and FFlagLuobuDevPublishLua) and shouldShowDevPublishLocations()
			and Roact.createElement(CheckBoxSet, {
				Title = localization:getText(optInLocationsKey, "TitleOptInLocations"),
				LayoutOrder = FFlagUseLayoutIteratorGameSettingsPublishPlace and layoutOrder:getNextOrder() or 12,
				MaxHeight = theme.optInLocations.height,
				Boxes = {{
						Id = chinaKey,
						Title = localization:getText(optInLocationsKey, chinaKey),
						Selected = optInLocations and optInLocations.China or false,
						LinkTextFrame = Roact.createElement("Frame", {
							BackgroundTransparency = 1,
							Size = UDim2.new(0, theme.requirementsLink.length, 0, theme.requirementsLink.height),
							Position = UDim2.new(0, 0, 0, theme.requirementsLink.paddingY),
						}, {
							-- TODO: Implement PartialHyperlink changes into DevFramework since we want to deprecate UILibrary eventually.
							-- Look at the changes in FFlagLubouDevPublishLua that use this.
							LinkText = Roact.createElement(PartialHyperlink, {
								HyperLinkText = localization:getText(optInLocationsKey, "RequirementsLinkText"),
								NonHyperLinkText = localization:getText(optInLocationsKey, "ChinaRequirements"),
								Style = "RequirementsLink",
								Mouse = props.Mouse:get(),
								OnClick = function()
									local url = getOptInLocationsRequirementsLink(chinaKey)
									GuiService:OpenBrowserWindow(url)
								end,
							})
						}),
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

			local layoutOrder2 = (FFlagUseLayoutIteratorGameSettingsPublishPlace and FFlagLuobuDevPublishLuaTempOptIn and shouldShowDevPublishLocations()) and LayoutOrderIterator.new() or nil

			displayResult.Separator7 = (not FFlagLuobuDevPublishLua and FFlagLuobuDevPublishLuaTempOptIn) and shouldShowDevPublishLocations() and Roact.createElement(Separator, {
				LayoutOrder = FFlagUseLayoutIteratorGameSettingsPublishPlace and layoutOrder:getNextOrder() or 11,
			}) or nil

			displayResult.TempOptInLocations = (not FFlagLuobuDevPublishLua and FFlagLuobuDevPublishLuaTempOptIn) and shouldShowDevPublishLocations() and Roact.createElement(TitledFrame, {
				Title = localization:getText(optInLocationsKey, "TitleOptInLocations"),
				MaxHeight = 60,
				LayoutOrder = FFlagUseLayoutIteratorGameSettingsPublishPlace and layoutOrder:getNextOrder() or 12,
				TextSize = theme.tempOptInLink.TextSize,
			}, {
				UILayout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Top,
				}),
				Text = Roact.createElement("TextLabel", {
					Size = UDim2.new(0, calculateTextSize(localization:getText(optInLocationsKey, "TempLinkDescription"), theme.tempOptInLink.TextSize, theme.tempOptInLink.Font).X, 0, theme.tempOptInLink.TextSize),
					BackgroundTransparency = 1,
					TextColor3 = theme.tempOptInLink.TextColor3,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextSize = theme.tempOptInLink.TextSize,
					Font = theme.tempOptInLink.Font,
					Text = localization:getText(optInLocationsKey, "TempLinkDescription"),
					LayoutOrder = layoutOrder2 and layoutOrder2:getNextOrder() or 1,
				}),
				LinkText = Roact.createElement(LinkText, {
					Text = "roblox.cn",
					Style = "LinkTextStyle",
					OnClick = function()
						GuiService:OpenBrowserWindow("https://roblox.cn/")
					end,
					LayoutOrder = layoutOrder2 and layoutOrder2:getNextOrder() or 2,
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
