--[[
    This component is top most parent for managing Package Permissions for User and Group Owned Packages.
    This component should only be renendered if the current user is the Owner of a Package or the Owner of group,
    if this is a group package.

    Necessary Properties:
        Size = UDim2, determines the size of the Permissions page.
        LayoutOrder = num, determines the layout order of this Permissions page in its parent.
    Optional Properties:

    *Note:
        FIXME(mwang) Hook up network calls/actions/reducers/Roact-Rodux
        Several of the other props are currently nil, but will be retrieved from network calls/reducers.
]]

local FFlagStudioAllowPkgPermsForOtherUsrsAndGrps = game:DefineFastFlag("StudioAllowPkgPermsForOtherUsrsAndGrps", false)

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Cryo = require(Libs.Cryo)
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local UILibrary = require(Libs.UILibrary)
local StyledScrollingFrame = UILibrary.Component.StyledScrollingFrame
local Separator = UILibrary.Component.Separator
local LayoutOrderIterator = UILibrary.Util.LayoutOrderIterator

local PermissionsDirectory = Plugin.Core.Components.AssetConfiguration.Permissions
local PackageOwnerWidget = require(PermissionsDirectory.PackageOwnerWidget)
local CollaboratorSearchWidget = require(PermissionsDirectory.CollaboratorSearchWidget)
local PermissionsConstants = require(PermissionsDirectory.PermissionsConstants)
local CollaboratorsWidget = require(PermissionsDirectory.CollaboratorsWidget)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local getNetwork = require(Util.ContextGetter).getNetwork
local ContextHelper = require(Util.ContextHelper)
local withTheme = ContextHelper.withTheme
local getUserId = require(Util.getUserId)

local GetUsername = require(Plugin.Core.Thunks.GetUsername)
local SearchCollaborators = require(Plugin.Core.Thunks.SearchCollaborators)
local GetPackageCollaborators = require(Plugin.Core.Thunks.GetPackageCollaborators)

local Permissions = Roact.PureComponent:extend("Permissions")

function Permissions:init()
    self.state = {
        OwnerType = Enum.CreatorType[self.props.Owner.type]
    }
end


function Permissions:didMount()
    if self.state.OwnerType == Enum.CreatorType.User then
        self.props.GetUsername(self.props.Owner.targetId)
        self.props.GetPackageCollaborators(getNetwork(self), self.props.AssetId)
    end
end

--Uses props to display current settings values
function Permissions:render()
	local orderIterator = LayoutOrderIterator.new()
	
	local hasPermission = false
	if self.state.OwnerType == Enum.CreatorType.User and getUserId() == self.props.Owner.targetId then
		hasPermission = true
	elseif self.state.OwnerType == Enum.CreatorType.Group and getUserId() == self.props.GroupMetadata.Owner.Id then
		hasPermission = true
	end

    self.props.Enabled = true

    return withTheme(function(theme)
        return Roact.createElement(StyledScrollingFrame, {
                Size = self.props.Size,
                
                BackgroundTransparency = 1,
                LayoutOrder = self.props.LayoutOrder,
                BackgroundColor3 = theme.assetConfig.packagePermissions.backgroundColor,

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
                    
                    Enabled = hasPermission,
                    OwnerName = self.props.OwnerName,
                    OwnerId = self.props.Owner.targetId,
                    OwnerType = self.state.OwnerType,
                    
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

				SearchbarWidget = self.state.OwnerType == Enum.CreatorType.User and Roact.createElement(CollaboratorSearchWidget, {
                    LayoutOrder = orderIterator:getNextOrder(),
                    Enabled = true,

                    GroupMetadata = self.props.GroupMetadata,
                    SearchRequested = self.props.SearchRequested,
                    SearchData = self.props.SearchData,
                    Thumbnails = self.props.Thumbnails,
                    Permissions = self.props.Permissions,

                    PermissionsChanged = self.props.PermissionsChanged,
                }),

                CollaboratorsWidget = self.state.OwnerType == Enum.CreatorType.User and Roact.createElement(CollaboratorsWidget, {
                    LayoutOrder = orderIterator:getNextOrder(),
                    Enabled = true,
        
                    -- StudioUserId = self.props.StudioUserId,
                    -- GroupOwnerUserId = self.props.GroupOwnerUserId,
                    -- OwnerId = self.props.OwnerId,
                    -- OwnerType = self.props.OwnerType,
                    CanManage = hasPermission,
        
                    GroupMetadata = self.props.GroupMetadata,
                    Permissions = self.props.Permissions,
                    PermissionsChanged = self.props.PermissionsChanged,
                    -- GroupMetadataChanged = self.props.GroupMetadataChanged,
                    -- Thumbnails = self.props.Thumbnails,
                }),
            })
    end)
end

local function mapStateToProps(state, props)
    local groupMetadata = {}
    local localUsername = {}
    local permissions = state.collaborators or {}

    if state[props.Owner.targetId] then
        if Enum.CreatorType[props.Owner.type] == Enum.CreatorType.Group then
            groupMetadata = state[props.Owner.targetId].groupMetadata
        else
            localUsername = state[props.Owner.targetId].localUsername
        end
    end

    return { 
        OwnerName = state.ownerUsername,
        GroupMetadata = groupMetadata,
        LocalUsername = localUsername,
        Permissions = permissions,
    }
end

local function mapDispatchToProps(dispatch)
    return {
        GetUsername = function(userId)
            dispatch(GetUsername(userId))
        end,

        SearchRequested = function(...)
            dispatch(SearchCollaborators(...))
        end,

        PermissionsChanged = function(...)
            dispatch(PermissionsChanged(...))
        end,

        GetPackageCollaborators = function(networkInterface, assetId)
            dispatch(GetPackageCollaborators(networkInterface, assetId))
        end,
    }
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Permissions)
