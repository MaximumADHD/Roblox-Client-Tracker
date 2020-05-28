local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)
local RoactRodux = require(Plugin.RoactRodux)
local Cryo = require(Plugin.Cryo)

local ContextServices = require(Plugin.Framework.ContextServices)

local UILibrary = require(Plugin.UILibrary)

local TextService = game:GetService("TextService")
--even though this is deprecated, the warning message will only be up for a while before being removed
local GuiService = game:GetService("GuiService")

local PermissionsConstants = require(Page.Util.PermissionsConstants)
local LOADING = require(Plugin.Src.Keys.loadingInProgress)
local DEFAULT_ADD_ACTION = PermissionsConstants.PlayKey

local UserHeadshotThumbnail = require(Plugin.Src.Components.AutoThumbnails.UserHeadshotThumbnail)
local Searchbar = require(Page.Components.SearchBar)

local createFitToContent = UILibrary.Component.createFitToContent
local Hyperlink = UILibrary.Studio.Hyperlink

local GetUserCollaborators = require(Page.Selectors.GetUserCollaborators)
local AddUserCollaborator = require(Page.Thunks.AddUserCollaborator)
local SearchCollaborators= require(Page.Thunks.SearchCollaborators)

local FitToContent = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 32),
})

local TextFitToContent = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 0),
	FillDirection = Enum.FillDirection.Horizontal,
})

local PADDING = 16

local CollaboratorSearchWidget = Roact.PureComponent:extend("CollaboratorSearchWidget")

function CollaboratorSearchWidget:isLoading()
	local props = self.props
	local searchData = props.SearchData

	local cachedSearchResults = searchData.CachedSearchResults
	local searchTerm = searchData.SearchText

	return searchData.LocalUserGroups == LOADING
		or searchData.LocalUserFriends == LOADING
		or cachedSearchResults[searchTerm] == LOADING
		or (cachedSearchResults[searchTerm] == nil and searchTerm ~= "")
end

function CollaboratorSearchWidget:getMatches()
	local props = self.props

	local searchData = props.SearchData
	local userCollaborators = props.UserCollaborators

	local cachedSearchResults = searchData.CachedSearchResults
	local searchTerm = searchData.SearchText

	local userCollaboratorLookup = {}
	for _,userId in ipairs(userCollaborators) do
		userCollaboratorLookup[userId] = true
	end
	local function userAlreadyCollaborator(userId)
		return userCollaboratorLookup[userId] ~= nil
	end

	local matches = { Users = {} }
	if cachedSearchResults[searchTerm] and cachedSearchResults[searchTerm] ~= LOADING then
		local rawUserMatches = cachedSearchResults[searchTerm][PermissionsConstants.UserSubjectKey]

		local userMatches = {}
		for _,v in pairs(rawUserMatches) do
			local subjectId = v[PermissionsConstants.SubjectIdKey]
			if not userAlreadyCollaborator(subjectId) then
				table.insert(userMatches, v)
			end
		end

		matches.Users = userMatches
	end

	return matches
end

function CollaboratorSearchWidget:getResults()
	local props = self.props

	local searchData = props.SearchData

	local localization = props.Localization

	local searchTerm = searchData.SearchText

	if searchTerm == "" then
		return {}
	end

	local matches = self:getMatches()

	local results = {}
	if #matches.Users > 0  then
		local userResults = {}

		for _, user in pairs(matches.Users) do
			if #userResults + 1 > PermissionsConstants.MaxSearchResultsPerSubjectType then break end

			table.insert(userResults, {
				Icon = Roact.createElement(UserHeadshotThumbnail, {
					Id = user[PermissionsConstants.SubjectIdKey],
					Size = UDim2.new(1, 0, 1, 0),
				}),
				Name = user[PermissionsConstants.SubjectNameKey],
				Key = {
					Type = PermissionsConstants.UserSubjectKey,
					Id = user[PermissionsConstants.SubjectIdKey],
					Name = user[PermissionsConstants.SubjectNameKey]
				},
			})
		end

		userResults.LayoutOrder = 0

		results[localization:getText("AccessPermissions", "UsersCollaboratorType")] = userResults
	end

	return results
end

function CollaboratorSearchWidget:render()
	local props = self.props

	local layoutOrder = props.LayoutOrder
	local writable = props.Writable

	local userCollaborators = props.UserCollaborators
	local addUserCollaborator = props.AddUserCollaborator
	local searchCollaborators = props.SearchCollaborators

	local theme = props.Theme:get("Plugin")
	local localization = props.Localization
	local mouse = props.Mouse

	local results = self:getResults()
	local isLoading = self:isLoading()

	local numCollaborators = #userCollaborators
	local maxCollaborators = game:GetFastInt("MaxAccessPermissionsCollaborators")
	local tooManyCollaborators = numCollaborators >= maxCollaborators

	local tooManyCollaboratorsText = localization:getText("AccessPermissions", "CollaboratorSearchbarTooManyText1",{
		maxNumCollaborators = maxCollaborators,
	})

	local WarningTextSize = TextService:GetTextSize(localization:getText("AccessPermissions", "PermissionsUpdateMessage"),
		theme.fontStyle.Smaller.TextSize, theme.fontStyle.Smaller.Font, Vector2.new(math.huge, math.huge))

	local HyperlinkTextSize = TextService:GetTextSize(localization:getText("AccessPermissions", "UpdateHyperlinkText"),
		theme.fontStyle.Smaller.TextSize, theme.fontStyle.Smaller.Font, Vector2.new(math.huge, math.huge))

	return Roact.createElement(FitToContent, {
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
	}, {
		WarningLayout = Roact.createElement(TextFitToContent, {
			BackgroundTransparency = 1,
			LayoutOrder = 0,
		}, {
			Title = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Subtitle, {
				LayoutOrder = 0,

				Size = UDim2.new(1, -WarningTextSize.X - HyperlinkTextSize.X - PADDING, 0, theme.fontStyle.Subtitle.TextSize),

				Text = localization:getText("General", "TitleCollaborators"),
				TextXAlignment = Enum.TextXAlignment.Left,

				BackgroundTransparency = 1,
			})),

			WarningText = Roact.createElement("TextLabel", Cryo.Dictionary.join(theme.fontStyle.Smaller, {
				LayoutOrder = 1,

				Size = UDim2.new(0, WarningTextSize.X + PADDING, 0, theme.fontStyle.Smaller.TextSize),

				Text = localization:getText("AccessPermissions", "PermissionsUpdateMessage"),
				TextXAlignment = Enum.TextXAlignment.Left,

				BackgroundTransparency = 1,
			})),

			Hyperlink = Roact.createElement(Hyperlink, {
				LayoutOrder = 2,
				Enabled = true,

				Text = localization:getText("AccessPermissions", "UpdateHyperlinkText"),
				TextSize = theme.fontStyle.Smaller.TextSize,

				OnClick = function()
					GuiService:OpenBrowserWindow("https://devforum.roblox.com/t/introducing-game-permissions/428956")
				end,
				Mouse = mouse:get(),
			}),
		}),

		Searchbar = Roact.createElement(Searchbar, {
			LayoutOrder = 1,
			Enabled = writable and not tooManyCollaborators,

			HeaderHeight = 25,
			ItemHeight = 50,

			ErrorText = tooManyCollaborators and tooManyCollaboratorsText or nil,
			DefaultText = localization:getText("AccessPermissions", "CollaboratorSearchbarDefaultText"),
			NoResultsText = localization:getText("AccessPermissions", "CollaboratorSearchbarNoResultsText"),
			LoadingMore = isLoading,

			onSearchRequested = function(text)
				searchCollaborators(text, true)
			end,
			onTextChanged = function(text)
				searchCollaborators(text, false)
			end,
			OnItemClicked = function(key)
				if key.Type == PermissionsConstants.UserSubjectKey then
					addUserCollaborator(key.Id, key.Name, DEFAULT_ADD_ACTION)
				else
					assert(false)
				end
			end,

			Results = results,
		}),
	})
end

ContextServices.mapToProps(CollaboratorSearchWidget, {
	Theme = ContextServices.Theme,
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
})

CollaboratorSearchWidget = RoactRodux.connect(
	function(state, props)
		return {
			UserCollaborators = GetUserCollaborators(state),
			SearchData = state.CollaboratorSearch,
		}
	end,
	function(dispatch)
		return {
			AddUserCollaborator = function(...)
				dispatch(AddUserCollaborator(...))
			end,
			SearchCollaborators = function(...)
				dispatch(SearchCollaborators(...))
			end,
		}
	end
)(CollaboratorSearchWidget)


return CollaboratorSearchWidget