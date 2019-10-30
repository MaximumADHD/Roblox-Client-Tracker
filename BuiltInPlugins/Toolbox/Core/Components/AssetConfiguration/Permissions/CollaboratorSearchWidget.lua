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

local FFlagStudioAllowPkgPermsForOtherUsrsAndGrps = game:GetFastFlag("StudioAllowPkgPermsForOtherUsrsAndGrps")

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

local FitToContent = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 32),
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
	local cachedSearchResults = searchData.cachedSearchResults
	local searchTerm = searchData.SearchText

	return searchData.localUserFriends == LOADING 
		or (FFlagStudioAllowPkgPermsForOtherUsrsAndGrps and
			(searchData.localUserGroups == LOADING
			or cachedSearchResults[searchTerm] == LOADING
			or (cachedSearchResults[searchTerm] == nil and searchTerm ~= "")))
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
	
	local matches
	if not FFlagStudioAllowPkgPermsForOtherUsrsAndGrps then
		matches = {Users={}}
	else
		matches = {Users={}, Groups={}}
	end

	local matchedUsers = {}
	local userMatches = {}
	if FFlagStudioAllowPkgPermsForOtherUsrsAndGrps then
		if cachedSearchResults and cachedSearchResults[searchTerm] and cachedSearchResults[searchTerm] ~= LOADING then
			local rawUserMatches = cachedSearchResults[searchTerm][PermissionsConstants.UserSubjectKey]

			for _,v in pairs(rawUserMatches) do
				local subjectId = v[PermissionsConstants.SubjectIdKey]
				if not permissions[PermissionsConstants.UserSubjectKey][subjectId] then
					table.insert(userMatches, v)
					matchedUsers[subjectId] = true
				end
			end
			
			local rawGroupMatches = cachedSearchResults[searchTerm][PermissionsConstants.GroupSubjectKey]
			local groupMatches = {}

			local rawMyGroups = typeof(searchData.LocalUserGroups) == "table" and getMatchesFromTable(searchTerm, searchData.LocalUserGroups) or {}
			table.sort(rawMyGroups, compare)

			local matchedGroups = {}
			for _,v in pairs(rawGroupMatches) do
				if not groupMetadata[v[PermissionsConstants.SubjectIdKey]] then
					table.insert(groupMatches, v)
					matchedGroups[v[PermissionsConstants.SubjectIdKey]] = true
				end
			end

			-- Insert your groups after exact match (if it exists), but before the rest of the web results (if they exist)
			local firstGroupIsExactMatch = #matchedGroups > 0 and matchedGroups[1][PermissionsConstants.SubjectNameKey]:lower() == searchTerm:lower()
			local position = math.min(firstGroupIsExactMatch and 1 or 2, #groupMatches + 1)
			for _,v in pairs(rawMyGroups) do
				-- Group web search already matched this. Don't duplicate it
				
				if not (matchedGroups[v[PermissionsConstants.SubjectIdKey]] or groupMetadata[v[PermissionsConstants.SubjectIdKey]]) then
					table.insert(groupMatches, position, v)
					position = position + 1
				end
			end

			matches.Groups = groupMatches
		end
	end

	local rawFriendMatches = typeof(searchData.localUserFriends) == "table" and getMatchesFromTable(searchTerm, searchData.localUserFriends) or {}
	table.sort(rawFriendMatches, compare)

	-- Insert friends after exact match (if it exists), but before the rest of the web results (if they exist)
	local firstUserIsExactMatch = #matchedUsers > 0 and matchedUsers[1][PermissionsConstants.SubjectNameKey]:lower() == searchTerm:lower()
	local position = math.min(firstUserIsExactMatch and 1 or 2, #userMatches + 1)
	for _,v in pairs(rawFriendMatches) do
		local subjectId = v[PermissionsConstants.SubjectIdKey]
		if not ((permissions and permissions[PermissionsConstants.UserSubjectKey][subjectId]) or matchedUsers[subjectId]) then
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
		if not FFlagStudioAllowPkgPermsForOtherUsrsAndGrps then
			results = {Users={LayoutOrder=0}}
		else
			results = {Users={LayoutOrder=0}, Groups={LayoutOrder=1}}
		end
		for _, user in pairs(matches.Users) do
			if #results.Users + 1 > PermissionsConstants.MaxSearchResultsPerSubjectType then break end
			
			table.insert(results.Users, {
				Icon = Roact.createElement(CollaboratorThumbnail, {
					Image = Urls.constructAvatarHeadshotThumbnailUrl(user[PermissionsConstants.SubjectIdKey], AssetConfigConstants.rbxThumbSizes.AvatarHeadshotImageSize),
					Size = UDim2.new(1, 0, 1, 0),
					UseMask = true,
				}),
				Name = user[PermissionsConstants.SubjectNameKey],
				Key = {Type=PermissionsConstants.UserSubjectKey, Id=user[PermissionsConstants.SubjectIdKey], Name=user[PermissionsConstants.SubjectNameKey]},
			})
		end

		if FFlagStudioAllowPkgPermsForOtherUsrsAndGrps then
			for _, group in pairs(matches.Groups) do
				if #results.Groups + 1 > PermissionsConstants.MaxSearchResultsPerSubjectType then break end
				table.insert(results.Groups, {
					Icon = Roact.createElement(CollaboratorThumbnail, {
						Image = thumbnailLoader.getThumbnail(PermissionsConstants.GroupSubjectKey, group[PermissionsConstants.SubjectIdKey]),
						Size = UDim2.new(1, 0, 1, 0),
					}),
					Name = group[PermissionsConstants.SubjectNameKey],
					Key = {Type=PermissionsConstants.GroupSubjectKey, Id=group[PermissionsConstants.SubjectIdKey], Name=group[PermissionsConstants.SubjectNameKey]},
				})
			end
		end

		if not FFlagStudioAllowPkgPermsForOtherUsrsAndGrps then
			results = {
				[localized.PackagePermissions.Collaborators.UsersCollaboratorType] = #results.Users > 0 and results.Users or nil,
			}
		else
			results = {
				[localized.PackagePermissions.UsersCollaboratorType] = #results.Users > 0 and results.Users or nil,
				[localized.PackagePermissions.GroupsCollaboratorType] = #results.Groups > 0 and results.Groups or nil,
			}
		end
	end

	return results
end

local function PublishWarning(props)
	local function calculateTextSize(text, textSize, font)
		return game:GetService('TextService'):GetTextSize(text, textSize, font, Vector2.new(1,1)*math.huge)
	end

	return withTheme(function(theme)
		return withLocalization(function(_, localized)
			local hyperlinkText = localized.PublishingIsRequired.HyperlinkText
			local nonHyperlinkText = localized.PublishingIsRequired.FormattableSentence({
				requiredForWhat = localized.PublishingIsRequired.AddingCollaborators,
			})

			local hyperLinkTextSize = calculateTextSize(hyperlinkText, theme.fontStyle.Normal.TextSize, theme.fontStyle.Normal.Font)
			

			return Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, hyperLinkTextSize.Y),
				BackgroundTransparency = 1,
			}, {
				Hyperlink = Roact.createElement(Hyperlink, {
					Text = hyperlinkText,
					Size = UDim2.new(0, hyperLinkTextSize.X, 0, hyperLinkTextSize.Y),
					Enabled = true,
					Mouse = props.Mouse,

					OnClick = function()
						StudioService:ShowPublishToRoblox()
					end
				}),
				TextLabel = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Normal, {
					BackgroundTransparency = 1,
					Position = UDim2.new(0, hyperLinkTextSize.X, 0, 0),
					Size = UDim2.new(1, 0, 1, 0),
					TextXAlignment = Enum.TextXAlignment.Left,
					Text = nonHyperlinkText,
				}))
			})
		end)
	end)
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
			local isPublished = game.GameId ~= 0
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

				CollaboratorSearchBar = isPublished and Roact.createElement(CollaboratorSearchBar, {
					LayoutOrder = 1,
					Enabled = props.Enabled and not tooManyCollaborators,

					HeaderHeight = 25,
					ItemHeight = 50,

					ErrorText = tooManyCollaborators and tooManyCollaboratorsText or nil,
					DefaultText = localized.PackagePermissions.Searchbar.SearchByUser,
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

				PublishWarning = (not isPublished) and Roact.createElement(PublishWarning, {
					LayoutOrder = 1,
					Mouse = getMouse(self),
				})
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