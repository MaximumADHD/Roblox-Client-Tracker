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
local CollaboratorsWidget = require(PermissionsDirectory.CollaboratorsWidget)
local PermissionsConstants = require(PermissionsDirectory.PermissionsConstants)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local getNetwork = require(Util.ContextGetter).getNetwork
local ContextHelper = require(Util.ContextHelper)
local withTheme = ContextHelper.withTheme
local getUserId = require(Util.getUserId)

local Requests = Plugin.Core.Networking.Requests
local GetPackageCollaboratorsRequest = require(Requests.GetPackageCollaboratorsRequest)

local GetUsername = require(Plugin.Core.Thunks.GetUsername)
local SearchCollaborators = require(Plugin.Core.Thunks.SearchCollaborators)
local GetGroupRoleInfo = require(Plugin.Core.Thunks.GetGroupRoleInfo)

local SetCollaborators = require(Plugin.Core.Actions.SetCollaborators)
local SetGroupMetadata = require(Plugin.Core.Actions.SetGroupMetadata)
local AddChange = require(Plugin.Core.Actions.AddChange)

local Permissions = Roact.PureComponent:extend("Permissions")

function Permissions:init()
    self.state = {
        OwnerType = Enum.CreatorType[self.props.Owner.type]
    }
end


function Permissions:didMount()
    self.props.GetPackageCollaboratorsRequest(getNetwork(self), self.props.AssetId)
    if self.state.OwnerType == Enum.CreatorType.User then
        self.props.GetUsername(self.props.Owner.targetId)
    else
        self.props.GetGroupRoleInfo(getNetwork(self), self.props.Owner.targetId)
    end
end

--Uses props to display current settings values
function Permissions:render()
	local orderIterator = LayoutOrderIterator.new()
    
    --[[
        hasPermission will be changed in the future to support users with "Edit" permissions.
        Current compare currentUserId with owner user Id. This will change to the permissions of the current user
        when the backend endpoint returns information about the owner in additon to collaborators.
    ]] 
	local hasPermission = false
	if self.state.OwnerType == Enum.CreatorType.User and getUserId() == self.props.Owner.targetId then
		hasPermission = true
	elseif self.state.OwnerType == Enum.CreatorType.Group and getUserId() == self.props.GroupMetadata.Owner.Id then
		hasPermission = true
	end
    
    local isUserOwnedPackage = self.state.OwnerType == Enum.CreatorType.User

    return withTheme(function(theme)
        return Roact.createElement(StyledScrollingFrame, {
                Size = self.props.Size,
                
                BackgroundTransparency = 1,
                LayoutOrder = self.props.LayoutOrder,
                BackgroundColor3 = theme.assetConfig.packagePermissions.backgroundColor,

                [Roact.Ref] = self.baseFrameRefs,
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
                    
                    CanManage = hasPermission,
                    
                    GroupMetadata = self.props.GroupMetadata,
                    Permissions = self.props.Permissions,
                    PermissionsChanged = self.props.PermissionsChanged,
                }),
				
				Separator = Roact.createElement(Separator, {
                    LayoutOrder = orderIterator:getNextOrder(),
                    Size = UDim2.new(1, 0, 0, 0),
                }),

				SearchbarWidget = hasPermission and isUserOwnedPackage and Roact.createElement(CollaboratorSearchWidget, {
                    LayoutOrder = orderIterator:getNextOrder(),
                    Enabled = true,

                    GroupMetadata = self.props.GroupMetadata,
                    SearchRequested = self.props.SearchRequested,
                    SearchData = self.props.SearchData,
                    Permissions = self.props.Permissions,

                    PermissionsChanged = self.props.PermissionsChanged,
                }),
                CollaboratorListWidget = hasPermission and isUserOwnedPackage and Roact.createElement(CollaboratorsWidget, {
                    LayoutOrder = orderIterator:getNextOrder(),
                    Enabled = true,
        
                    OwnerId = self.props.Owner.targetId,
                    OwnerType = self.state.OwnerType,
                    
                    CanManage = hasPermission,
        
                    GroupMetadata = self.props.GroupMetadata,
                    Permissions = self.props.Permissions,
                    PermissionsChanged = self.props.PermissionsChanged,
                    GroupMetadataChanged = self.props.GroupMetadataChanged,
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
        PermissionsChanged = function(newPermissions)
            dispatch(SetCollaborators(newPermissions))
            dispatch(AddChange("permissions", newPermissions))
        end,
        GetPackageCollaboratorsRequest = function(networkInterface, assetId)
            dispatch(GetPackageCollaboratorsRequest(networkInterface, assetId))
		end,
        GroupMetadataChanged = function(groupMetadata)
            dispatch(SetGroupMetadata(groupMetadata))
        end,

        GetGroupRoleInfo = function(networkInterface, groupId)
            dispatch(GetGroupRoleInfo(networkInterface, groupId))
        end,
    }
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Permissions)
