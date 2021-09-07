--[[
	This component is responsible for configuring the asset's access field.

	Props:
	onDropDownSelect, function, will return current selected item if selected.
]]

local FFlagWidenDropDown = game:DefineFastFlag("WidenDropDown", false)

local Plugin = script.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local Roact = require(Packages.Roact)
local UILibrary = require(Packages.UILibrary)
local RoactRodux = require(Packages.RoactRodux)

local Util = Plugin.Src.Util
local Constants = require(Util.Constants)

local StyledDropdownMenu = UILibrary.Component.StyledDropdown

local Thunks = Plugin.Src.Thunks
local GetAssetConfigGroupDataRequest = require(Thunks.GetAssetConfigGroupDataRequest)
local GetMyGroupsRequest = require(Thunks.GetMyGroupsRequest)
local withContext = require(Plugin.Src.ContextServices.withContext)

local getNetwork = require(Plugin.Src.ContextServices.NetworkContext).getNetwork

local ConfigAccess = Roact.PureComponent:extend("ConfigAccess")
local DROP_DOWN_WIDTH = 220
local DROP_DOWN_HEIGHT = 38

local CURRENT_USER_DROPDOWN_INDEX = 1

function ConfigAccess:didMount()
	-- Initial request
	self.props.getMyGroups(getNetwork(self))
end

function ConfigAccess:render()
	return withContext(function(localization, theme)
		local props = self.props

		local Title = props.Title
		local LayoutOrder = props.LayoutOrder
		local TotalHeight = props.TotalHeight
		local owner = props.owner or {}
		local onDropDownSelect = props.onDropDownSelect

		self.dropdownContent = Constants.getOwnerDropDownContent(props.groupsArray, localization)

		-- We have a bug, on here: https://developer.roblox.com/api-reference/enum/CreatorType
		-- User is 0, however in source code, User is 1.
		-- TODO: Notice UX to change the website.
		local ownerIndex;
		if game:GetFastFlag("FixPackageOwnerDefault") then
			-- if owner is not set, default to type of game creator
			local ownerType = owner.typeId or Constants.CREATOR_ENUM_TO_OWNER_TYPE[game.CreatorType]
			if ownerType == Constants.OWNER_TYPES.User then
				-- if the owner selected is a user, it must be the current user
				ownerIndex = CURRENT_USER_DROPDOWN_INDEX
			else
				assert(ownerType == Constants.OWNER_TYPES.Group)
				-- if owner id is not set, default to owner of game
				local ownerGroupId = owner.groupId or game.CreatorId

				-- find index of group in dropdown that corresponds to selected owner id
				for index, creator in pairs(self.dropdownContent) do
					if creator.creatorId == ownerGroupId then
						ownerIndex = index
						-- dropdown uses strings for creator types for some reason
						assert(creator.creatorType == "Group")
					end
				end
			end
			assert(ownerIndex)
			if next(owner) == nil then
				-- owner has not been set, so select current ownerIndex
				onDropDownSelect(self.dropdownContent[ownerIndex])
			end
		else
			ownerIndex = (owner.typeId or 1)
			if game.CreatorType == Enum.CreatorType.Group and ownerIndex == 1 then
				for pos, group in pairs(self.dropdownContent) do
					if group.creatorId == game.CreatorId then
						ownerIndex = pos
						onDropDownSelect(self.dropdownContent[ownerIndex])
					end
				end
			end
		end

		local publishAssetTheme = theme.publishAsset

		local ownerName;
		if ownerIndex > #self.dropdownContent or (game.CreatorType == Enum.CreatorType.Group and #self.dropdownContent == 1) then
			ownerName = ""
		else
			ownerName = self.dropdownContent[ownerIndex].Text
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, TotalHeight),

			BackgroundTransparency = 1,
			BackgroundColor3 = Color3.fromRGB(227, 227, 227),
			BorderSizePixel = 0,

			LayoutOrder = LayoutOrder
		}, {
			UIListLayout = Roact.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalAlignment = Enum.HorizontalAlignment.Left,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 0),
			}),

			Title = Roact.createElement("TextLabel", {
				Size = UDim2.new(0, Constants.TITLE_GUTTER_WIDTH, 1, 0),

				BackgroundTransparency = 1,
				BorderSizePixel = 0,

				Text = Title,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
				TextSize = Constants.FONT_SIZE_TITLE,
				TextColor3 = publishAssetTheme.titleTextColor,
				Font = Constants.FONT,
				LayoutOrder = 1,
			}),

			DropDown = Roact.createElement(StyledDropdownMenu, {
				Size = UDim2.new(0, DROP_DOWN_WIDTH, 0, DROP_DOWN_HEIGHT),
				MaxItems = 5,
				ItemHeight = DROP_DOWN_HEIGHT,
				ButtonText = ownerName,
				TextSize = Constants.FONT_SIZE_TITLE,
				SelectedItem =  publishAssetTheme.highlightDropdownSelectedItem and self.dropdownContent[ownerIndex].Key,
				ScrollBarThickness = Constants.SCROLLBAR_BACKGROUND_THICKNESS,
				ShowRibbon = publishAssetTheme.showDropdownRibbon,
				ScrollBarPadding = Constants.SCROLLBAR_PADDING,
				Items = self.dropdownContent,
				OnItemClicked = onDropDownSelect,
				LayoutOrder = 2,
				ListWidth = (FFlagWidenDropDown and DROP_DOWN_WIDTH) or 0,
			}),
		})
	end)
end

local function mapStateToProps(state, props)
	state = state or {}

	return {
		groupsArray = state.GroupReducer.groupsArray or {}
	}
end

local function mapDispatchToProps(dispatch)
	return {
		getGroupsData = function(networkInterface, groupId)
			dispatch(GetAssetConfigGroupDataRequest(networkInterface, groupId))
		end,

		getMyGroups = function(networkInterface)
			dispatch(GetMyGroupsRequest(networkInterface))
		end,
	}
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(ConfigAccess)
