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

local GetPlayerAcceptances = require(Plugin.Src.Thunks.GetPlayerAcceptances)

local AddChange = require(Plugin.Src.Actions.AddChange)
local AddErrors = require(Plugin.Src.Actions.AddErrors)
local Constants = require(Plugin.Src.Resources.Constants)

local createMenuPage = require(Plugin.Src.Components.createMenuPage)

local GuiService = game:GetService("GuiService")

local FFlagStudioAllowRemoteSaveBeforePublish = game:GetFastFlag("StudioAllowRemoteSaveBeforePublish")
local FFlagStudioPromptOnFirstPublish = game:GetFastFlag("StudioPromptOnFirstPublish")
local FIntLuobuDevPublishAnalyticsHundredthsPercentage = game:GetFastInt("LuobuDevPublishAnalyticsHundredthsPercentage")
local FFlagRemoveUILibraryStyledDropdownPt1 = game:GetFastFlag("RemoveUILibraryStyledDropdownPt1")

local shouldShowDevPublishLocations = require(Plugin.Src.Util.PublishPlaceAsUtilities).shouldShowDevPublishLocations
local getOptInLocationsRequirementsLink = require(Plugin.Src.Util.PublishPlaceAsUtilities).getOptInLocationsRequirementsLink
local sendAnalyticsToKibana = require(Plugin.Src.Util.PublishPlaceAsUtilities).sendAnalyticsToKibana
local getPlayerAppDownloadLink = require(Plugin.Src.Util.PublishPlaceAsUtilities).getPlayerAppDownloadLink
local KeyProvider = require(Plugin.Src.Util.KeyProvider)
local optInLocationsKey = KeyProvider.getOptInLocationsKeyName()
local chinaKey = KeyProvider.getChinaKeyName()
local seriesNameKey = KeyProvider.getLuobuStudioDevPublishKeyName()
local checkboxToggleKey = KeyProvider.getCheckboxToggleKeyName()
local selectedKey = KeyProvider.getSelectedKeyName()
local termsOfUseDialogKey = KeyProvider.getTermsOfUseDialogKeyName()
local buttonClickedKey = KeyProvider.getButtonClickedKeyName()

local Framework = require(Plugin.Packages.Framework)
local Button = Framework.UI.Button
local HoverArea = Framework.UI.HoverArea
local Image = Framework.UI.Decoration.Image
local SelectInput = Framework.UI.SelectInput
local StyledDialog = Framework.StudioUI.StyledDialog
local TextLabel = Framework.UI.Decoration.TextLabel
local TextWithInlineLink = Framework.UI.TextWithInlineLink
local Tooltip = Framework.UI.Tooltip

local LayoutOrderIterator = Framework.Util.LayoutOrderIterator

local function PaddedTextLabel(props)
	assert(FFlagRemoveUILibraryStyledDropdownPt1)
	return Roact.createElement(TextLabel, {
		BackgroundTransparency = 1,
		LayoutOrder = props.LayoutOrder,
		Size = UDim2.new(1, 0, 0, props.Height),
		Style = props.Style,
		Text = props.Text,
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left,
	},	{
		-- This padding ensures the text is not lined up right along the edge of the TextLabel
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, props.Padding),
			PaddingLeft = UDim.new(0, props.Padding),
		}),
	})
end

local groupsLoaded = false
--Uses props to display current settings values
local function displayContents(parent)
	local props = parent.props

	local theme = props.Theme:get("Plugin")
	local localization = props.Localization
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
	local optInLocations = props.OptInLocations
	local optInLocationsChanged = props.OptInLocationsChanged
	local playerAcceptance = props.PlayerAcceptance

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

	local layoutOrder = LayoutOrderIterator.new()

	local displayResult = {
		Header = Roact.createElement(Header, {
			Title = localization:getText("MenuItem", "BasicInfo"),
			LayoutOrder = layoutOrder:getNextOrder(),
		}),

		Name = Roact.createElement(TitledFrame, {
			Title = localization:getText("PageTitle", "Name"),
			MaxHeight = 60,
			LayoutOrder = layoutOrder:getNextOrder(),
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
			LayoutOrder = layoutOrder:getNextOrder(),
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
			LayoutOrder = layoutOrder:getNextOrder(),
		}),

		Creator = Roact.createElement(TitledFrame, {
			Title = localization:getText("PageTitle", "Creator"),
			MaxHeight = 38,
			TextSize = Constants.TEXT_SIZE,
			ZIndex = 2,
			LayoutOrder = layoutOrder:getNextOrder(),
		}, {
			DEPRECATED_Selector = not FFlagRemoveUILibraryStyledDropdownPt1 and Roact.createElement(StyledDropDown, {
				ButtonText = creatorItem.Text,
				ItemHeight = 38,
				Items = dropdownItems,
				ListWidth = 330,
				MaxItems = 4,
				OnItemClicked = function(item) creatorChanged(item.Key) end,
				Position = UDim2.new(0, 0, 0, 0),
				SelectedItem = creatorItem.Key,
				ShowRibbon = not theme.isDarkerTheme,
				Size = UDim2.new(0, theme.DROPDOWN_WIDTH, 0, theme.DROPDOWN_HEIGHT),
				TextSize = Constants.TEXT_SIZE,
			}),

			Selector = FFlagRemoveUILibraryStyledDropdownPt1 and Roact.createElement(SelectInput, {
				Items = dropdownItems,
				OnItemActivated = function(item)
					creatorChanged(item.Key)
				end,
				OnRenderItem = function(item, index, activated)
					local mainText = item.Text
					local theme = props.Theme:get("Plugin")

					return Roact.createElement(Button, {
						OnClick = activated,
						LayoutOrder = index,
						Size = UDim2.new(1, 0, 0, theme.selectInput.button.height),
					}, {
						UILayout = Roact.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Vertical,
							Padding = UDim.new(0, 0),
							SortOrder = Enum.SortOrder.LayoutOrder,
							VerticalAlignment = Enum.VerticalAlignment.Top,
						}),

						MainTextLabel = Roact.createElement(PaddedTextLabel, {
							Height = theme.selectInput.fontStyle.Normal.TextSize,
							LayoutOrder = 0,
							Padding = theme.selectInput.padding,
							Style = "Normal",
							Text = mainText,
						}),
					})
				end,
				PlaceholderText = creatorItem.Text,
				Width = theme.selectInput.width.creator,
			}),
		}),

		Separator2 = Roact.createElement(Separator, {
			LayoutOrder = layoutOrder:getNextOrder(),
		}),

		Genre = Roact.createElement(TitledFrame, {
			Title = localization:getText("PageTitle", "Genre"),
			MaxHeight = 38,
			TextSize = Constants.TEXT_SIZE,
			ZIndex = 2,
			LayoutOrder = layoutOrder:getNextOrder(),
		}, {
			DEPRECATED_Selector = not FFlagRemoveUILibraryStyledDropdownPt1 and Roact.createElement(StyledDropDown, {
				ButtonText = localization:getText("Genre", genre),
				ItemHeight = 38,
				Items = genres,
				ListWidth = 210,
				MaxItems = 4,
				OnItemClicked = function(item) genreChanged(item.Key) end,
				Position = UDim2.new(0, 0, 0, 0),
				SelectedItem = genre,
				ShowRibbon = not theme.isDarkerTheme,
				Size = UDim2.new(0, 220, 0, 38),
				TextSize = Constants.TEXT_SIZE,
			}),

			Selector = FFlagRemoveUILibraryStyledDropdownPt1 and Roact.createElement(SelectInput, {
				Items = genres,
				OnItemActivated = function(item)
					genreChanged(item.Key)
				end,
				OnRenderItem = function(item, index, activated)
					local mainText = item.Text
					local theme = props.Theme:get("Plugin")

					return Roact.createElement(Button, {
						OnClick = activated,
						LayoutOrder = index,
						Size = UDim2.new(1, 0, 0, theme.selectInput.button.height),
					}, {
						UILayout = Roact.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Vertical,
							Padding = UDim.new(0, 0),
							SortOrder = Enum.SortOrder.LayoutOrder,
							VerticalAlignment = Enum.VerticalAlignment.Top,
						}),

						MainTextLabel = Roact.createElement(PaddedTextLabel, {
							Height = theme.selectInput.fontStyle.Normal.TextSize,
							LayoutOrder = 0,
							Padding = theme.selectInput.padding,
							Style = "Normal",
							Text = mainText,
						}),
					})
				end,
				PlaceholderText = localization:getText("Genre", genre),
				Width = theme.selectInput.width.genre,
			}),
		}),

		Separator4 = Roact.createElement(Separator, {
			LayoutOrder = layoutOrder:getNextOrder(),
		}),

		Devices = Roact.createElement(PlatformSelect, {
			LayoutOrder = layoutOrder:getNextOrder(),
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
				LayoutOrder = layoutOrder:getNextOrder(),
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

			displayResult.Playability = Roact.createElement(RadioButtonSet, {
				Buttons = playabilityButtons,
				Description = localization:getText("General", "PlayabilityHeader"),
				Enabled = true,
				LayoutOrder = layoutOrder:getNextOrder(),
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
				Title = localization:getText("General", "TitlePlayability"),
			})
			if shouldShowDevPublishLocations() then
				displayResult.Separator5 = Roact.createElement(Separator, {
					LayoutOrder = layoutOrder:getNextOrder(),
				})

				displayResult.OptInLocations = Roact.createElement(CheckBoxSet, {
					Title = localization:getText(optInLocationsKey, "TitleOptInLocations"),
					LayoutOrder = layoutOrder:getNextOrder(),
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
					}},
					Enabled = optInLocations ~= nil,
					EntryClicked = function(box)
						if not playerAcceptance then
							parent:setState({
								showDialog = true,
							})
						else
							local newLocations = Cryo.Dictionary.join(optInLocations, {
								[box.Id] = (box.Selected) and Cryo.None or not box.Selected,
							})
							local points = {
								[optInLocationsKey] = box.Id,
								[selectedKey] = not box.Selected,
							}
							sendAnalyticsToKibana(seriesNameKey, FIntLuobuDevPublishAnalyticsHundredthsPercentage, checkboxToggleKey, points)
							optInLocationsChanged(newLocations)
						end
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
				})

				displayResult.Dialog = Roact.createElement(StyledDialog, {
					Enabled = parent.state.showDialog,
					Modal = true,
					Title = "",
					MinContentSize = Vector2.new(theme.dialog.minSize.width, theme.dialog.minSize.height),
					Buttons = {
						{ Key = "OK", Text = localization:getText("General", "ReplyOK") }
					},
					OnButtonPressed = function()
						parent:setState({
							showDialog = false,
						})
						local points = {
							[buttonClickedKey] = "OK",
						}
						sendAnalyticsToKibana(seriesNameKey, FIntLuobuDevPublishAnalyticsHundredthsPercentage, termsOfUseDialogKey, points)
					end,
					OnClose = function()
						parent:setState({
							showDialog = false
						})
						local points = {
							[buttonClickedKey] = "Close",
						}
						sendAnalyticsToKibana(seriesNameKey, FIntLuobuDevPublishAnalyticsHundredthsPercentage, termsOfUseDialogKey, points)
					end,
					ButtonHorizontalAlignment = Enum.HorizontalAlignment.Center,
				}, {
					Layout = Roact.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						VerticalAlignment = Enum.VerticalAlignment.Center,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),

					Header = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Title, {
						Position = UDim2.new(0.5, 0, 0, 45),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Size = UDim2.new(1, 0, 0, 60),
						BackgroundTransparency = 1,
						Text = localization:getText("General", "TermsDialogHeader"),
						TextWrapped = true,
					})),

					Body = Roact.createElement(TextWithInlineLink, {
						OnLinkClicked = function()
							local url = getPlayerAppDownloadLink("China")
							GuiService:OpenBrowserWindow(url)
						end,
						Text = localization:getText("General", "TermsDialogBody"),
						LinkText = localization:getText("General", "TermsDialogBodyLink"),
						LinkPlaceholder = "[link]",
						MaxWidth = theme.textWithInlineLink.maxWidth,
						TextProps = Cryo.Dictionary.join(theme.fontStyle.Normal,{
							BackgroundTransparency = 1,
						}),
					})
				})
			end
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
		OptInLocations = shouldShowDevPublishLocations() and getValue(optInLocationsKey) or {},
		PlayerAcceptance = state.Policy.PlayerAcceptance,
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
			if shouldShowDevPublishLocations() then
				dispatch(AddChange(optInLocationsKey, locations))
			end
		end,

		IsFriendsOnlyChanged = setValue("isFriendsOnly"),
		IsActiveChanged = setValue("isActive"),

		GetPlayerAcceptances = function(apiImpl)
			if not shouldShowDevPublishLocations() then
				return
			end

			dispatch(GetPlayerAcceptances(apiImpl))
		end,
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
