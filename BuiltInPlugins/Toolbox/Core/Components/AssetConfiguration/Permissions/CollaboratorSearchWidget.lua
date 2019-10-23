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

local UILibrary = require(Libs.UILibrary)
local createFitToContent = UILibrary.Component.createFitToContent
local withLocalization = UILibrary.Localizing.withLocalization
local LayoutOrderIterator = UILibrary.Util.LayoutOrderIterator

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextHelper = require(Util.ContextHelper)
local withLocalization = ContextHelper.withLocalization
local withTheme = ContextHelper.withTheme

local PermissionsDirectory = Plugin.Core.Components.AssetConfiguration.Permissions
local CollaboratorSearchBar = require(PermissionsDirectory.CollaboratorSearchBar)

local FitToContent = createFitToContent("Frame", "UIListLayout", {
	SortOrder = Enum.SortOrder.LayoutOrder,
	Padding = UDim.new(0, 32),
})

local CollaboratorSearchWidget = Roact.PureComponent:extend("CollaboratorSearchWidget")

function CollaboratorSearchWidget:render()
	local orderiterator = LayoutOrderIterator.new()

	return withTheme(function(theme)
		return withLocalization(function(_, localized)
	
			return Roact.createElement(FitToContent, {
				BackgroundTransparency = 1,
				LayoutOrder = self.props.LayoutOrder,
			}, {
				Title = Roact.createElement("TextLabel", {
					LayoutOrder = orderiterator:getNextOrder(),
					
					Text = localized.PackagePermissions.ShareWith,
					TextXAlignment = Enum.TextXAlignment.Left,
					
					BackgroundTransparency = 1,

					Font = Constants.FONT,
					TextSize = Constants.FONT_SIZE_TITLE,
					TextColor3 = theme.packagePermissions.subTextColor,
				}),

				CollaboratorSearchBar = Roact.createElement(CollaboratorSearchBar, {
					LayoutOrder = orderiterator:getNextOrder(),
					Enabled = true,

					HeaderHeight = 25,
					ItemHeight = 50,

					ErrorText = tooManyCollaborators and tooManyCollaboratorsText or nil,
					DefaultText = localized.PackagePermissions.SearchByUser,
					NoResultsText = localized.PackagePermissions.NoResults,
					LoadingMore = false,
					
					-- FIXME(mwang) 10/1/2019, hooking up network calls, comeback and adjust the On*() functions.
					onSearchRequested = function(text)
						-- props.SearchRequested(text, true)
					end,
					onTextChanged = function(text)
						-- props.SearchRequested(text, false)
					end,
					OnItemClicked = function(item)
						-- 	collaboratorAdded(key.Type, key.Id, key.Name, DEFAULT_ADD_ACTION)
					end,

					Results = results,
				}),
			})
		end)
	end)
end

return CollaboratorSearchWidget