--!strict
-- Manages groups of selectable elements, reacting to selection changes for
-- individual items and triggering events for group selection changes
local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)

local FocusContext = require(script.Parent.FocusContext)
local forwardRef = require(script.Parent.forwardRef)
local FocusNode = require(script.Parent.FocusNode)

local function identity(value)
	return value
end

local nonHostProps = {
	onFocusGained = Cryo.None,
	onFocusLost = Cryo.None,
	onFocusChanged = Cryo.None,

	selectionRule = Cryo.None,
	inputBindings = Cryo.None,

	parentFocusNode = Cryo.None,
}

local focusableValidateProps = t.interface({
	parentFocusNode = t.optional(t.table),

	onFocusGained = t.optional(t.callback),
	onFocusLost = t.optional(t.callback),
	onFocusChanged = t.optional(t.callback),

	selectionRule = t.optional(t.callback), -- fn(ref) -> ref
	inputBindings = t.optional(t.table),
})

local focusableDefaultProps = {
	selectionRule = identity,
	inputBindings = {},
}


--[[
	Identifies an instance as a focusable element or a group of focusable
	elements. Injects a navigation context object that propagates its own
	navigational props to any children that are also selectable.
]]
local function asFocusable(innerComponent)
	local componentName = ("Gamepad.Focusable(%s)"):format(tostring(innerComponent))

	-- Selection container component; groups together children and reacts to changes
	-- in GuiService.SelectedObject
	local Focusable = Roact.Component:extend(componentName)

	Focusable.validateProps = focusableValidateProps
	Focusable.defaultProps = focusableDefaultProps

	function Focusable:init()
		self.focused = false

		if self.props.parentFocusNode ~= nil then
			self.focusNode = FocusNode.new(self.props)
		end
	end

	function Focusable:gainFocus()
		self.focused = true

		if self.props.onFocusGained ~= nil then
			self.props.onFocusGained()
		end

		if self.props.onFocusChanged ~= nil then
			self.props.onFocusChanged(true)
		end
	end

	function Focusable:loseFocus()
		self.focused = false

		if self.props.onFocusLost ~= nil then
			self.props.onFocusLost()
		end

		if self.props.onFocusChanged ~= nil then
			self.props.onFocusChanged(false)
		end
	end

	function Focusable:render()
		-- If this component is not provided a parent node, then it should
		-- behave exactly like the innerComponent that it wraps
		if self.props.parentFocusNode == nil then
			return Roact.createElement(innerComponent, Cryo.Dictionary.join(
				self.props,
				nonHostProps
			))
		end

		local ref = self.props[Roact.Ref]
		local childDefaultNavProps = {
			NextSelectionLeft = ref,
			NextSelectionRight = ref,
			NextSelectionDown = ref,
			NextSelectionUp = ref,

			[Roact.Ref] = ref,
		}

		local parentNavProps = {
			NextSelectionLeft = self.props.parentFocusNode.left,
			NextSelectionRight = self.props.parentFocusNode.right,
			NextSelectionDown = self.props.parentFocusNode.down,
			NextSelectionUp = self.props.parentFocusNode.up,
		}

		local innerProps = Cryo.Dictionary.join(
			childDefaultNavProps,
			parentNavProps,
			self.props,
			nonHostProps
		)

		return Roact.createElement(FocusContext.Provider, {
			value = self.focusNode,
		}, {
			Focusable = Roact.createElement(innerComponent, innerProps)
		})
	end

	function Focusable:didUpdate(prevProps)
		-- TODO: Determine if we need to be resilient to nav props changing
		-- if parentFocusNode is removed, deregister and clean up our FocusNode
		-- if parentFocusNode is added, create a new FocusNode and register it
		-- if parentFocusNode is CHANGED, deregister from old and register on new?
		-- otherwise, call an update function on FocusNode
	end

	function Focusable:didMount()
		if self.props.parentFocusNode ~= nil then
			self.props.parentFocusNode:registerChild(self.props[Roact.Ref], self.focusNode)

			self.disconnectFocusListener = self.focusNode:subscribeToFocusChange(function(newFocusedState)
				if not self.focused and newFocusedState then
					self:gainFocus()
				elseif self.focused and not newFocusedState then
					self:loseFocus()
				end
			end)
		end
	end

	function Focusable:willUnmount()
		if self.props.parentFocusNode ~= nil then
			self.props.parentFocusNode:deregisterChild(self.focusNode)

			-- Disconnect the subscription to the selectionChanged signal
			self.disconnectFocusListener()
		end
	end

	return forwardRef(function(props, ref)
		return Roact.createElement(FocusContext.Consumer, {
			render = function(parentFocusNode)
				local propsWithNav = Cryo.Dictionary.join(props, {
					parentFocusNode = parentFocusNode,
					[Roact.Ref] = ref,
				})

				return Roact.createElement(Focusable, propsWithNav)
			end,
		})
	end)
end

return asFocusable