--[[
	This component manages the search bar used for only User-Owned packages to search for collaborators.
	User-Owned packages can only be shared with friends.

	Necessary Propreties:
		LayoutOrder = num, 
		Enabled = bool, is the search bar enabled?

		SearchRequested = function, this is a callback for when a search request is made from the search bar
		SearchData = table, contains search results
		Permissions = table, containing permission information (Revoked, UseView, Edit)
		PermissionsChanged = function, callback function that is called when a new user is added.		
]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local UILibrary = require(Libs.UILibrary)
local createFitToContent = UILibrary.Component.createFitToContent
local withLocalization = UILibrary.Localizing.withLocalization
local LayoutOrderIterator = UILibrary.Util.LayoutOrderIterator

local Util = Plugin.Core.Util
local LOADING = require(Util.Keys).LoadingInProgress
local Urls = require(Util.Urls)
local Constants = require(Util.Constants)
local AssetConfigConstants = require(Util.AssetConfigConstants)
local getNetwork = require(Util.ContextGetter).getNetwork
local ContextHelper = require(Util.ContextHelper)
local withLocalization = ContextHelper.withLocalization
local withTheme = ContextHelper.withTheme

local PermissionsDirectory = Plugin.Core.Components.AssetConfiguration.Permissions
local CollaboratorSearchBar = require(PermissionsDirectory.CollaboratorSearchBar)
local PermissionsConstants = require(PermissionsDirectory.PermissionsConstants)
local CollaboratorThumbnail = require(PermissionsDirectory.CollaboratorThumbnail)

local DEFAULT_ADD_ACTION = PermissionsConstants.UseViewKey
local ELEMENT_PADDING = 24

-- TODO: enable friends option
local MY_FRIENDS_KEY = nil

local FitToContent = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, ELEMENT_PADDING),
})

local function getMatchesFromTable(text, t)
	local matches = {}

	for _,v in pairs(t) do
		if v[PermissionsConstants.SubjectNameKey]:lower():match(text:lower()) then
			table.insert(matches, v)
		end
	end
	return matches
end

local function getIsLoading(searchData)
	return searchData.localUserFriends == LOADING
end

local function getMatches(searchData, permissions, groupMetadata)

	local cachedSearchResults = searchData.cachedSearchResults
	local searchTerm = searchData.searchText

	local function compare(a,b)
		local a,b = a[PermissionsConstants.SubjectNameKey]:lower(), b[PermissionsConstants.SubjectNameKey]:lower()

		if a == b then return false end
		if a == searchTerm:lower() then return true end
		if b == searchTerm:lower() then return false end

		return a < b
	end

	local matches = {Users={}}

	local matchedUsers = {}
	local userMatches = {}

	local rawFriendMatches = typeof(searchData.localUserFriends) == "table" and getMatchesFromTable(searchTerm, searchData.localUserFriends) or {}
	table.sort(rawFriendMatches, compare)

	-- Insert friends after exact match (if it exists), but before the rest of the web results (if they exist)
	local firstUserIsExactMatch = #matchedUsers > 0 and matchedUsers[1][PermissionsConstants.SubjectNameKey]:lower() == searchTerm:lower()
	local position = math.min(firstUserIsExactMatch and 1 or 2, #userMatches + 1)
	for _,v in pairs(rawFriendMatches) do
		local subjectId = v[PermissionsConstants.SubjectIdKey]
		if not ((permissions 
		and permissions[PermissionsConstants.UserSubjectKey][subjectId] 
		and permissions[PermissionsConstants.UserSubjectKey][subjectId][PermissionsConstants.ActionKey] ~= PermissionsConstants.NoAccessKey) 
		or matchedUsers[subjectId]) then
			table.insert(userMatches, position, v)
			position = position + 1
		end
	end

	matches.Users = userMatches

	return matches
end

local function getResults(searchTerm, matches, localized)
	local results
	if searchTerm == "" then
		return {}
	else
		results = {Users={LayoutOrder=0}}
		for _, user in pairs(matches.Users) do
			if #results.Users + 1 > PermissionsConstants.MaxSearchResultsPerSubjectType then break end

			table.insert(results.Users, {
				Icon = Roact.createElement(CollaboratorThumbnail, {
					Image = Urls.constructRBXThumbUrl(AssetConfigConstants.rbxThumbTypes["AvatarHeadShot"], user[PermissionsConstants.SubjectIdKey], AssetConfigConstants.rbxThumbSizes.AvatarHeadshotImageSize),
					Size = UDim2.new(1, 0, 1, 0),
					UseMask = true,
				}),
				Name = user[PermissionsConstants.SubjectNameKey],
				Key = {Type=PermissionsConstants.UserSubjectKey, Id=user[PermissionsConstants.SubjectIdKey], Name=user[PermissionsConstants.SubjectNameKey]},
			})
		end

		results = {
			[localized.PackagePermissions.Collaborators.UsersCollaboratorType] = #results.Users > 0 and results.Users or nil,
		}
	end

	return results
end

local CollaboratorSearchWidget = Roact.PureComponent:extend("CollaboratorSearchWidget")

function CollaboratorSearchWidget:render()	
	local props = self.props
	local searchData = props.SearchData

	local searchTerm = searchData.SearchText

	local matches = getMatches(searchData, props.Permissions, props.GroupMetadata)
	local isLoading = getIsLoading(searchData)

	local numCollaborators = -1 -- Offset and don't count the owner
	if (props.GroupMetadata) then
		for _,_ in pairs(props.GroupMetadata) do
			numCollaborators = numCollaborators + 1
		end
	end

	if (props.Permissions[PermissionsConstants.UserSubjectKey]) then
		for _,_ in pairs(props.Permissions[PermissionsConstants.UserSubjectKey]) do
			numCollaborators = numCollaborators + 1
		end
	end

	--[[
		FIXME(mwang) 10/23/2019 200 is a placeholder. This value is carried over from Game Settings.
		This can be removed/changed at a later point when info is available.
	]]

	local maxCollaborators = 200
	local tooManyCollaborators = numCollaborators >= maxCollaborators

	local function collaboratorAdded(collaboratorType, collaboratorId, collaboratorName, action)
		local newPermissions
		if collaboratorType == PermissionsConstants.UserSubjectKey then
			newPermissions = Cryo.Dictionary.join(props.Permissions, {
				[collaboratorType] = Cryo.Dictionary.join(props.Permissions[collaboratorType], {
					[collaboratorId] = {
						[PermissionsConstants.SubjectNameKey] = collaboratorName,
						[PermissionsConstants.SubjectIdKey] = collaboratorId,
						[PermissionsConstants.ActionKey] = action,
					}
				})
			})
		elseif collaboratorType == PermissionsConstants.GroupSubjectKey then
			props.GroupCollaboratorAdded(collaboratorId, collaboratorName, action)
		else
			error("Unsupported type: "..tostring(collaboratorType))
		end

		if newPermissions then
			props.PermissionsChanged(newPermissions)
		end
	end

	return withTheme(function(theme)
		return withLocalization(function(localization, localized)
			local results = getResults(searchTerm, matches, localized)
			local tooManyCollaboratorsText = localization:getLocalizedTooManyCollaborators(maxCollaborators)

			return Roact.createElement(FitToContent, {
				BackgroundTransparency = 1,
				LayoutOrder = props.LayoutOrder,
			}, {
				Title = Roact.createElement("TextLabel", {
					LayoutOrder = 0,

					Text = localized.PackagePermissions.Title.ShareWith,
					TextXAlignment = Enum.TextXAlignment.Left,

					BackgroundTransparency = 1,
					Font = Constants.FONT,
					TextSize = Constants.FONT_SIZE_TITLE,
					TextColor3 = theme.assetConfig.packagePermissions.subTextColor,
				}),

				CollaboratorSearchBar = Roact.createElement(CollaboratorSearchBar, {
					LayoutOrder = 1,
					Enabled = props.Enabled and not tooManyCollaborators,

					HeaderHeight = 25,
					ItemHeight = 50,

					ErrorText = tooManyCollaborators and tooManyCollaboratorsText or nil,
					DefaultText = localized.PackagePermissions.Searchbar.Default,
					NoResultsText = localized.PackagePermissions.Searchbar.NoResults,
					LoadingMore = isLoading,

					onSearchRequested = function(text)
						props.SearchRequested(getNetwork(self), text, true)
					end,
					onTextChanged = function(text)
						props.SearchRequested(getNetwork(self), text, false)
					end,
					OnItemClicked = function(key)
						if key == MY_FRIENDS_KEY then
							print("TODO: enable friends option")
						else
							collaboratorAdded(key.Type, key.Id, key.Name, DEFAULT_ADD_ACTION)
						end
					end,

					Results = results,
				}),
			})
		end)
	end)
end

local function mapStateToProps(state, props)
	return {
        SearchData = {
            searchText = state.searchText,
            cachedSearchResults = state.cachedSearchResults,
            localUserFriends = state.localUserFriends,
        },
	}
end

return RoactRodux.connect(mapStateToProps)(CollaboratorSearchWidget)
