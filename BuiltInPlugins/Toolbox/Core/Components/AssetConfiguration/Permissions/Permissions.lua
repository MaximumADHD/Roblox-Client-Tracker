--[[
	This component is top most parent for managing Package Permissions for User and Group Owned Packages.
	This component should only be renendered if the current user is the Owner of a Packgae or the Owner of group,
	if this is a group package.

	Necessary Properties:
		Size = UDim2, determines the size of the Permissions page.
		LayoutOrder = num, determines the layout order of this Permissions page in its parent.
	Optional Properties:

	*Note:
		FIXME(mwang) Hook up network calls/actions/reducers/Roact-Rodux
		Several of the other props are currently nil, but will be retrieved from network calls/reducers.
]]


local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Roact = require(Libs.Roact)

local UILibrary = require(Libs.UILibrary)
local StyledScrollingFrame = UILibrary.Component.StyledScrollingFrame
local Separator = UILibrary.Component.Separator
local LayoutOrderIterator = UILibrary.Util.LayoutOrderIterator

local PermissionsDirectory = Plugin.Core.Components.AssetConfiguration.Permissions
local PackageOwnerWidget = require(PermissionsDirectory.PackageOwnerWidget)
local CollaboratorSearchWidget = require(PermissionsDirectory.CollaboratorSearchWidget)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextHelper = require(Util.ContextHelper)
local withLocalization = ContextHelper.withLocalization
local withTheme = ContextHelper.withTheme

local Permissions = Roact.PureComponent:extend("Permissions")

--Uses props to display current settings values
function Permissions:render()
    local orderIterator = LayoutOrderIterator.new()

	return withTheme(function(theme)
		return withLocalization(function(localization)
			return Roact.createElement(StyledScrollingFrame, {
					Size = self.props.Size,
                    
                    BackgroundTransparency = 1,
                    LayoutOrder = self.props.LayoutOrder,
                    BackgroundColor3 = theme.packagePermissions.backgroundColor,

                    [Roact.Ref] = self.baseFrameRefs
				}, {
                    Padding = Roact.createElement("UIPadding", {
                        PaddingTop = UDim.new(0, Constants.PERMISSIONS_UI_EDGE_PADDING),
                        PaddingBottom = UDim.new(0, Constants.PERMISSIONS_UI_EDGE_PADDING),
                        PaddingLeft = UDim.new(0, Constants.PERMISSIONS_UI_EDGE_PADDING),
                        PaddingRight = UDim.new(0, Constants.PERMISSIONS_UI_EDGE_PADDING),
                    }),

					UIListLayout = Roact.createElement("UIListLayout", {
						Padding = UDim.new(0, Constants.PERMISSIONS_TAB_LIST_PADDING),
						SortOrder = Enum.SortOrder.LayoutOrder,
					}),

					OwnerWidget = Roact.createElement(PackageOwnerWidget, {
						LayoutOrder = orderIterator:getNextOrder(),
						
						Enabled = true,
						OwnerName = self.props.OwnerName,
						OwnerId = self.props.OwnerId,
						OwnerType = Enum.CreatorType.User,
						
						IsGroupOwner = self.props.StudioUserId == self.props.GroupOwnerUserId,
						CanManage = self.props.CanManage,
						
						GroupMetadata = self.props.GroupMetadata,
						Permissions = self.props.Permissions,
						PermissionsChanged = self.props.PermissionsChanged,
						Thumbnails = self.props.Thumbnails,
					}),

					Separator = Roact.createElement(Separator, {
						LayoutOrder = orderIterator:getNextOrder(),
						Size = UDim2.new(1, 0, 0, 0),
					}),

					-- FIXME(mwang) Only display the search bar and collaborators list if the Package is User owned.
					SearchbarWidget = Roact.createElement(CollaboratorSearchWidget, {
						LayoutOrder = orderIterator:getNextOrder(),
						Enabled = true,
					}),
				})
		end)
	end)
end

return Permissions