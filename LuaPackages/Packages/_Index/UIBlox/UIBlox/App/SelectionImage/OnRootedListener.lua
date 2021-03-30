local Packages = script.Parent.Parent.Parent.Parent
local t = require(Packages.t)
local Roact = require(Packages.Roact)

--[[
	This is a child component that listens for the event "all parents have been set".
	In didMount, parents of the mounted component are not required to be set, therefore we can't do ancestry checks (like
	checking to see if the mounted component is a child of CoreGui or PlayerGui). This component makes it easy to do this
	check and trigger functions when all parents are assigned after didMount.
]]
local OnRootedListener = Roact.Component:extend("OnRootedListener")
OnRootedListener.validateProps = t.strictInterface({
	onRooted = t.callback,
})

function OnRootedListener:init()
	self.onAncestryChanged = function(instance)
		if instance:IsDescendantOf(game) then
			self.props.onRooted(instance)
		end
	end
end

function OnRootedListener:render()
	return Roact.createElement("Folder", {
		[Roact.Event.AncestryChanged] = self.onAncestryChanged,
	})
end

return OnRootedListener