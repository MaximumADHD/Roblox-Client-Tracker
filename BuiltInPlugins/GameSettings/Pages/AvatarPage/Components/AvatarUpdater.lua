local Page = script.Parent.Parent
local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

local LifetimeManagerAvatar = require(Page.Util.LifetimeManagerAvatar)

local AvatarUpdater = Roact.Component:extend("ComponentAvatarUpdater")

function AvatarUpdater:applyRigUpdates()
	if self.props.StateTemplates and self.props.StateTemplates.templates then
		LifetimeManagerAvatar.apply(self.props.StateTemplates.templates)
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
	LifetimeManagerAvatar:destroy()
end

return AvatarUpdater
