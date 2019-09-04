local paths = require(script.Parent.Parent.Paths)

local AvatarUpdater = paths.Roact.Component:extend("ComponentAvatarUpdater")

function AvatarUpdater:applyRigUpdates()
    if self.props.StateTemplates and self.props.StateTemplates.templates then
        paths.LifetimeManagerAvatar.apply(self.props.StateTemplates.templates)
    end
end

function AvatarUpdater:didMount()
    self:applyRigUpdates()
end

function AvatarUpdater:render()
    return nil
end

function AvatarUpdater:didUpdate()
   self:applyRigUpdates()
end

function AvatarUpdater:willUnmount()
    paths.LifetimeManagerAvatar:destroy()
end

return AvatarUpdater