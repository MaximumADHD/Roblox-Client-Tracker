--[[
    This component is top most parent for managing Package Permissions for User and Group Owned Packages.
    This component should only be renendered if the current user is the Owner of a Package or the Owner of group,
    if this is a group package.

    Necessary Properties:
        Size = UDim2, determines the size of the Permissions page.
        LayoutOrder = num, determines the layout order of this Permissions page in its parent.
    Optional Properties:

]]
local FFlagToolboxWithContext = game:GetFastFlag("ToolboxWithContext")

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Libs = Plugin.Libs
local Roact = require(Libs.Roact)
local RoactRodux = require(Libs.RoactRodux)

local Framework = require(Libs.Framework)
local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext

local LayoutOrderIterator = Framework.Util.LayoutOrderIterator
local ScrollingFrame = Framework.UI.ScrollingFrame

local Separator = require(Libs.Framework).UI.Separator

local PermissionsDirectory = Plugin.Core.Components.AssetConfiguration.Permissions
local PackageOwnerWidget = require(PermissionsDirectory.PackageOwnerWidget)
local CollaboratorSearchWidget = require(PermissionsDirectory.CollaboratorSearchWidget)
local CollaboratorsWidget = require(PermissionsDirectory.CollaboratorsWidget)
local PermissionsConstants = require(PermissionsDirectory.PermissionsConstants)

local Util = Plugin.Core.Util
local Constants = require(Util.Constants)
local ContextHelper = require(Util.ContextHelper)
local withLocalization = ContextHelper.withLocalization

local SearchCollaborators = require(Plugin.Core.Thunks.SearchCollaborators)

local SetCollaborators = require(Plugin.Core.Actions.SetCollaborators)
local SetGroupMetadata = require(Plugin.Core.Actions.SetGroupMetadata)
local AddChange = require(Plugin.Core.Actions.AddChange)

local Permissions = Roact.PureComponent:extend("Permissions")

function Permissions:init()
    self.state = {
        OwnerType = Enum.CreatorType[self.props.Owner.type]
    }
end

--Uses props to display current settings values
function Permissions:render()
    return withLocalization(function(localization, localized)
        return self:renderContent(nil, localization, localized)
    end)
end

function Permissions:renderContent(theme, localization, localized)
    theme = self.props.Stylizer

    local orderIterator = LayoutOrderIterator.new()

    local canViewCollaborators = self.props.CurrentUserPackagePermission == PermissionsConstants.OwnKey or self.props.CurrentUserPackagePermission == PermissionsConstants.EditKey
    local canManagePermissions = self.props.CurrentUserPackagePermission == PermissionsConstants.OwnKey
    local isUserOwnedPackage = self.state.OwnerType == Enum.CreatorType.User

    -- Text Label should only have 2 lines max
    local textLabelYSize = Constants.FONT_SIZE_MEDIUM * 2

    return Roact.createElement(ScrollingFrame, {
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        EnableScrollBarBackground = true,
        LayoutOrder = self.props.LayoutOrder,
        Size = self.props.Size,
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
            OwnerName = self.props.Owner.username,
            OwnerId = self.props.Owner.targetId,
            OwnerType = self.state.OwnerType,

            CanManage = canManagePermissions,

            GroupMetadata = self.props.GroupMetadata,
            Permissions = self.props.Permissions,
            PermissionsChanged = self.props.PermissionsChanged,
        }),

        Separator = Roact.createElement(Separator, {
            LayoutOrder = orderIterator:getNextOrder(),
        }),

        SearchbarWidget = canManagePermissions and isUserOwnedPackage and Roact.createElement(CollaboratorSearchWidget, {
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
            TextSize = Constants.FONT_SIZE_MEDIUM,
            TextColor3 = theme.assetConfig.packagePermissions.subTextColor,
            TextWrapped = true,

            BackgroundTransparency = 1,
        }),

        CollaboratorListWidget = canViewCollaborators and isUserOwnedPackage and Roact.createElement(CollaboratorsWidget, {
            LayoutOrder = orderIterator:getNextOrder(),
            Enabled = true,

            OwnerId = self.props.Owner.targetId,
            OwnerType = self.state.OwnerType,

            CanManage = canManagePermissions,

            GroupMetadata = self.props.GroupMetadata,
            Permissions = self.props.Permissions,
            PermissionsChanged = self.props.PermissionsChanged,
            GroupMetadataChanged = self.props.GroupMetadataChanged,
        }),
    })
end

local function mapStateToProps(state, props)
    local groupMetadata = {}
    local permissions = state.collaborators or {}
    local currentUserPackagePermission = PermissionsConstants.NoAccessKey

    if state[props.Owner.targetId] then
        if Enum.CreatorType[props.Owner.type] == Enum.CreatorType.Group then
            groupMetadata = state[props.Owner.targetId].groupMetadata
        end
    end

    if props.AssetId ~= nil then
        if state.packagePermissions and state.packagePermissions[props.AssetId] then
            currentUserPackagePermission = state.packagePermissions[props.AssetId]
        end
    end

    local owner = state.assetConfigData and state.assetConfigData.Creator or props.Owner

    return {
        Owner = owner,
        GroupMetadata = groupMetadata,
        Permissions = permissions,
        CurrentUserPackagePermission = currentUserPackagePermission,
    }
end

local function mapDispatchToProps(dispatch)
    return {
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
    }
end

if FFlagToolboxWithContext then
    Permissions = withContext({
            Stylizer = ContextServices.Stylizer,
        })(Permissions)
else
    ContextServices.mapToProps(Permissions, {
            Stylizer = ContextServices.Stylizer,
        })
end

return RoactRodux.connect(mapStateToProps, mapDispatchToProps)(Permissions)
