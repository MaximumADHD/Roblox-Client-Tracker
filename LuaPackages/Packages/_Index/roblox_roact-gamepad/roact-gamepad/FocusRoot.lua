--!strict
-- Manages groups of selectable elements, reacting to selection changes for
-- individual items and triggering events for group selection changes
local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)
local t = require(Packages.t)

local FocusContext = require(script.Parent.FocusContext)
local FocusNode = require(script.Parent.FocusNode)
local getEngineInterface = require(script.Parent.getEngineInterface)

local FocusRoot = Roact.Component:extend("FocusRoot")

FocusRoot.validateProps = t.strictInterface({
	selectionRule = t.optional(t.callback),
	[Roact.Children] = t.optional(t.table),
})

FocusRoot.defaultProps = {
	selectionRule = function(value)
		return value
	end,
}

function FocusRoot:init()
	self.ref = Roact.createRef()
	self.focusNode = FocusNode.newRoot(self.ref, self.props.selectionRule)

	local isRooted = false
	self.onAncestryChanged = function(instance)
		local descendantOfGame = instance:IsDescendantOf(game)
		if descendantOfGame and not isRooted then
			isRooted = true
			local focusManager = self.focusNode.focusManager
			focusManager:initialize(getEngineInterface(instance))
			self.focusNode:focus()
		end
	end
end

function FocusRoot:render()
	return Roact.createElement("Folder", {
		[Roact.Event.AncestryChanged] = self.onAncestryChanged,
		[Roact.Ref] = self.ref,
	}, {
		Provider = Roact.createElement(FocusContext.Provider, {
			value = self.focusNode,
		}, self.props[Roact.Children])
	})
end

function FocusRoot:didMount()
	-- This change may not trigger naturally, depending on the state of the tree
	-- that the component is parented to
	self.onAncestryChanged(self.ref:getValue())
end

function FocusRoot:willUnmount()
	self.focusNode.focusManager:teardown()
end

return FocusRoot