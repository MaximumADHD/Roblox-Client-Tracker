--[[
	
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local Cryo = require(Plugin.Cryo)
local withTheme = require(Plugin.Src.Consumers.withTheme)
local withLocalization = require(Plugin.Src.Consumers.withLocalization)
local getThumbnailLoader = require(Plugin.Src.Consumers.getThumbnailLoader)

local PermissionsConstants = require(Plugin.Src.Components.Permissions.PermissionsConstants)
local LOADING = require(Plugin.Src.Keys.loadingInProgress)
local DEFAULT_ADD_ACTION = PermissionsConstants.PlayKey
local MY_FRIENDS_KEY = "MyFriends"

local createFitToContent = require(Plugin.Src.Components.createFitToContent)
local Searchbar = require(Plugin.Src.Components.Permissions.SearchBar)
local CollaboratorThumbnail = require(Plugin.Src.Components.Permissions.CollaboratorThumbnail)

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
	local cachedSearchResults = searchData.CachedSearchResults
	local searchTerm = searchData.SearchText

	return searchData.LocalUserGroups == LOADING
		or searchData.LocalUserFriends == LOADING
		or cachedSearchResults[searchTerm] == LOADING
		or (cachedSearchResults[searchTerm] == nil and searchTerm ~= "")
end

local function getMatches(searchData, permissions, groupMetadata)
	local cachedSearchResults = searchData.CachedSearchResults
	local searchTerm = searchData.SearchText

	local function compare(a,b)
		local a,b = a[PermissionsConstants.SubjectNameKey]:lower(), b[PermissionsConstants.SubjectNameKey]:lower()

		if a == b then return false end
		if a == searchTerm:lower() then return true end
		if b == searchTerm:lower() then return false end

		return a < b
	end

	local matches = {Users={}, Groups={}}
	if cachedSearchResults[searchTerm] and cachedSearchResults[searchTerm] ~= LOADING then
		local rawGroupMatches = cachedSearchResults[searchTerm][PermissionsConstants.GroupSubjectKey]
		local rawUserMatches = cachedSearchResults[searchTerm][PermissionsConstants.UserSubjectKey]
		local userMatches = {}
		local groupMatches = {}

		local rawFriendMatches = typeof(searchData.LocalUserFriends) == "table" and getMatchesFromTable(searchTerm, searchData.LocalUserFriends) or {}
		local rawMyGroups = typeof(searchData.LocalUserGroups) == "table" and getMatchesFromTable(searchTerm, searchData.LocalUserGroups) or {}
		table.sort(rawFriendMatches, compare)
		table.sort(rawMyGroups, compare)

		local matchedUsers = {}
		for _,v in pairs(rawUserMatches) do
			local subjectId = v[PermissionsConstants.SubjectIdKey]
			if not permissions[PermissionsConstants.UserSubjectKey][subjectId] then
				table.insert(userMatches, v)
				matchedUsers[subjectId] = true
			end
		end

		-- Insert friends after exact match (if it exists), but before the rest of the web results (if they exist)
		local firstUserIsExactMatch = #matchedUsers > 0 and matchedUsers[1][PermissionsConstants.SubjectNameKey]:lower() == searchTerm:lower()
		local position = math.min(firstUserIsExactMatch and 1 or 2, #userMatches + 1)
		for _,v in pairs(rawFriendMatches) do
			local subjectId = v[PermissionsConstants.SubjectIdKey]
			if not (permissions[PermissionsConstants.UserSubjectKey][subjectId] or matchedUsers[subjectId]) then
				table.insert(userMatches, position, v)
				position = position + 1
			end
		end

		matches.Users = userMatches
		
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

	return matches
end

local function getResults(searchTerm, matches, thumbnailLoader, localized)
	local results
	if searchTerm == "" then
		return {}
		
		-- TODO (awarwick) 6/3/2019 V2 Access Permissions
		--[[
		results = {
			[localized.AccessPermissions.Collaborators.FriendsCollaboratorType] = {
				{
					Icon = Roact.createElement(CollaboratorThumbnail, {
						Image = "rbxasset://textures/GameSettings/friendsIcon.png",
						Size = UDim2.new(1, 0, 1, 0),
					}),
					Name = localized.AccessPermissions.Collaborators.MyFriendsCollaborator,
					Key = MY_FRIENDS_KEY,
				},
				LayoutOrder = 0,
			}
		}
		]]
	else
		results = {Users={LayoutOrder=0}, Groups={LayoutOrder=1}}
		for _, user in pairs(matches.Users) do
			if #results.Users + 1 > PermissionsConstants.MaxSearchResultsPerSubjectType then break end
			table.insert(results.Users, {
				Icon = Roact.createElement(CollaboratorThumbnail, {
					Image = thumbnailLoader.getThumbnail(PermissionsConstants.UserSubjectKey, user[PermissionsConstants.SubjectIdKey]),
					Size = UDim2.new(1, 0, 1, 0),
					UseMask = true,
				}),
				Name = user[PermissionsConstants.SubjectNameKey],
				Key = {Type=PermissionsConstants.UserSubjectKey, Id=user[PermissionsConstants.SubjectIdKey], Name=user[PermissionsConstants.SubjectNameKey]},
			})
		end
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

		results = {
			[localized.AccessPermissions.Collaborators.UsersCollaboratorType] = #results.Users > 0 and results.Users or nil,
			[localized.AccessPermissions.Collaborators.GroupsCollaboratorType] = #results.Groups > 0 and results.Groups or nil,
		}
	end

	return results
end

local CollaboratorSearchWidget = Roact.PureComponent:extend("CollaboratorSearchWidget")

function CollaboratorSearchWidget:render()
	local props = self.props
	local searchData = props.SearchData
	local searchTerm = searchData.SearchText

	local thumbnailLoader = getThumbnailLoader(self)

	local matches = getMatches(searchData, props.Permissions, props.GroupMetadata)
	local isLoading = getIsLoading(searchData)

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
		return withLocalization(function(localized)
			local results = getResults(searchTerm, matches, thumbnailLoader, localized)
	
			return Roact.createElement(FitToContent, {
				BackgroundTransparency = 1,
				LayoutOrder = props.LayoutOrder,
			}, {
				Title = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtitle, {
					LayoutOrder = 0,
					
					Text = localized.Title.Collaborators,
					TextXAlignment = Enum.TextXAlignment.Left,
					
					BackgroundTransparency = 1,
				})),

				Searchbar = Roact.createElement(Searchbar, {
					LayoutOrder = 1,
					Enabled = props.Enabled,

					HeaderHeight = 25,
					ItemHeight = 50,

					DefaultText = localized.AccessPermissions.Searchbar.DefaultText,
					NoResultsText = localized.AccessPermissions.Searchbar.NoResultsText,
					LoadingMore = isLoading,

					onSearchRequested = function(text)
						props.SearchRequested(text, true)
					end,
					onTextChanged = function(text)
						props.SearchRequested(text, false)
					end,
					OnItemClicked = function(key)
						if key == MY_FRIENDS_KEY then
							print("TODO: enable friends option")
						else
							collaboratorAdded(key.Type, key.Id, key.Name, DEFAULT_ADD_ACTION)
						end
					end,
					
					Results = results,
				})
			})
		end)
	end)
end

return CollaboratorSearchWidget