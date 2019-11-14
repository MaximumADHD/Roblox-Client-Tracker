--[[
    This component is top most parent for managing Package Permissions for User and Group Owned Packages.
    This component should only be renendered if the current user is the Owner of a Package or the Owner of group,
    if this is a group package.

    Necessary Properties:
        Size = UDim2, determines the size of the Permissions page.
        LayoutOrder = num, determines the layout order of this Permissions page in its parent.
    Optional Properties:

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
local getUserId = require(Util.getUserId)
local ContextHelper = require(Util.ContextHelper)
local withLocalization = ContextHelper.withLocalization
local withTheme = ContextHelper.withTheme

local GetUsername = require(Plugin.Core.Thunks.GetUsername)
local SearchCollaborators = require(Plugin.Core.Thunks.SearchCollaborators)
local GetGroupRoleInfo = require(Plugin.Core.Thunks.GetGroupRoleInfo)

local SetCollaborators = require(Plugin.Core.Actions.SetCollaborators)
local SetGroupMetadata = require(Plugin.Core.Actions.SetGroupMetadata)
local AddChange = require(Plugin.Core.Actions.AddChange)

local TextService = game:GetService("TextService")

local Permissions = Roact.PureComponent:extend("Permissions")

function Permissions:init()
    self.state = {
        OwnerType = Enum.CreatorType[self.props.Owner.type]
    }
end


function Permissions:didMount()
    if self.state.OwnerType == Enum.CreatorType.User then
        self.props.GetUsername(self.props.Owner.targetId)
    else
        self.props.GetGroupRoleInfo(getNetwork(self), self.props.Owner.targetId)
    end
end

--Uses props to display current settings values
function Permissions:render()
	local orderIterator = LayoutOrderIterator.new()
    
    local hasPermission = self.props.currentUserPackagePermission == PermissionsConstants.OwnKey
    local isUserOwnedPackage = self.state.OwnerType == Enum.CreatorType.User
    
    -- Text Label should only have 2 lines max
    local textLabelYSize = Constants.FONT_SIZE_SMALL * 2

    return withTheme(function(theme)
        return withLocalization(function(localization, localized)
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

                RevokedWarningMessage = Roact.createElement("TextLabel", {
                    LayoutOrder = orderIterator:getNextOrder(),
                    Size = UDim2.new(1, 0, 0, textLabelYSize),
                    
                    Text = isUserOwnedPackage and localized.PackagePermissions.Warning.UserOwned or localized.PackagePermissions.Warning.GroupOwned,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    
                    Font = Constants.FONT,
                    TextSize = Constants.FONT_SIZE_SMALL,
                    TextColor3 = theme.assetConfig.packagePermissions.subTextColor,
                    TextWrapped = true,
                    
                    BackgroundTransparency = 1,
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
    end)
end

local function mapStateToProps(state, props)
    local groupMetadata = {}
    local localUsername = {}
    local permissions = state.collaborators or {}
    local currentUserPackagePermission = PermissionsConstants.NoAccessKey

    if state[props.Owner.targetId] then
        if Enum.CreatorType[props.Owner.type] == Enum.CreatorType.Group then
            groupMetadata = state[props.Owner.targetId].groupMetadata
        else
            localUsername = state[props.Owner.targetId].localUsername
        end
    end

    if props.AssetId ~= nil then
        if state.packagePermissions and state.packagePermissions[props.AssetId] then
            currentUserPackagePermission = state.packagePermissions[props.AssetId]
        end
    end

    return { 
        OwnerName = state.ownerUsername,
        GroupMetadata = groupMetadata,
        LocalUsername = localUsername,
        Permissions = permissions,
        currentUserPackagePermission = currentUserPackagePermission,
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
        GroupMetadataChanged = function(groupMetadata)
            dispatch(SetGroupMetadata(groupMetadata))
            dispatch(AddChange("groupMetadata", groupMetadata))
        end,
        GetGroupRoleInfo = function(networkInterface, groupId)
            dispatch(GetGroupRoleInfo(networkInterface, groupId))
        end,
    }
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Permissions)
