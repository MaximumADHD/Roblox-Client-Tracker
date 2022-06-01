local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox

local Images = UIBlox.App.ImageSet.Images
local IconSize = UIBlox.App.ImageSet.Enum.IconSize
local IconButton = UIBlox.App.Button.IconButton

local ShareInviteLinkButton = Roact.PureComponent:extend("ShareInviteLinkButton")

function ShareInviteLinkButton:render()
    return Roact.createElement(IconButton, {
        size = UDim2.fromOffset(0, 0),
        iconSize = IconSize.Medium,
        icon = Images["icons/actions/share"],
    })
end

return ShareInviteLinkButton
