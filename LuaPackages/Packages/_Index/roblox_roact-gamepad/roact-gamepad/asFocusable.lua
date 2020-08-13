--!nonstrict
-- Manages groups of selectable elements, reacting to selection changes for
-- individual items and triggering events for group selection changes
local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)

local FocusContext = require(script.Parent.FocusContext)
local forwardRef = require(script.Parent.forwardRef)
local FocusNode = require(script.Parent.FocusNode)
local getEngineInterface = require(script.Parent.getEngineInterface)

local InternalApi = require(script.Parent.FocusControllerInternalApi)

local nonHostProps = {
	parentFocusNode = Cryo.None,
	parentNeighbors = Cryo.None,
	focusController = Cryo.None,

	onFocusGained = Cryo.None,
	onFocusLost = Cryo.None,
	onFocusChanged = Cryo.None,
	inputBindings = Cryo.None,

	restorePreviousChildFocus = Cryo.None,
	defaultChild = Cryo.None,
}

local function checkFocusManager(props)
	if props.focusController ~= nil and props.parentFocusNode ~= nil then
		return false, "Cannot attach a new focusController beneath an existing one"
	end

	return true
end

local focusableValidateProps = t.intersection(t.interface({
	parentFocusNode = t.optional(t.table),
	focusController = t.optional(t.table),
	[Roact.Ref] = t.table,

	restorePreviousChildFocus = t.boolean,
	inputBindings = t.table,
	defaultChild = t.optional(t.table),

	onFocusGained = t.optional(t.callback),
	onFocusLost = t.optional(t.callback),
	onFocusChanged = t.optional(t.callback),
}), checkFocusManager)

local focusableDefaultProps = {
	restorePreviousChildFocus = false,
	inputBindings = {},
}

--[[
	Identifies an instance as a focusable element or a group of focusable
	elements. Injects a navigation context object that propagates its own
	navigational props to any children that are also selectable.
]]
local function asFocusable(innerComponent)
	local componentName = ("Focusable(%s)"):format(tostring(innerComponent))

	-- Selection container component; groups together children and reacts to changes
	-- in GuiService.SelectedObject
	local Focusable = Roact.Component:extend(componentName)

	Focusable.validateProps = focusableValidateProps
	Focusable.defaultProps = focusableDefaultProps

	function Focusable:init()
		self.focused = false
		self.navContext = {
			focusNode = FocusNode.new(self.props),
			neighbors = {
				NextSelectionLeft = self.props.NextSelectionLeft,
				NextSelectionRight = self.props.NextSelectionRight,
				NextSelectionUp = self.props.NextSelectionUp,
				NextSelectionDown = self.props.NextSelectionDown,
			}
		}

		self.updateFocusedState = function(newFocusedState)
			if not self.focused and newFocusedState then
				self:gainFocus()
			elseif self.focused and not newFocusedState then
				self:loseFocus()
			end
		end

		if self:isRoot() then
			local isRooted = false
			-- If this Focusable needs to behave as a root, it is responsible for
			-- initializing the FocusManager. Once it becomes a descendant of
			-- `game`, we initialize the FocusManager which determines which sort of
			-- PlayerGui this focus tree is contained under
			self.ancestryChanged = function(instance)
				if not isRooted and instance:IsDescendantOf(game) then
					isRooted = true
					self:getFocusControllerInternal():initialize(getEngineInterface(instance))
				end
			end

			-- This function is called separately, since we don't want to falsely
			-- trigger an existing callback in props when we call
			-- `ancestryChanged` in didMount
			self.ancestryChangedListener = function(instance)
				self.ancestryChanged(instance)

				local existingCallback = self.props[Roact.Event.AncestryChanged]
				if existingCallback ~= nil then
					existingCallback(instance)
				end
			end

			self.refreshFocusOnDescendantAdded = function(descendant)
				self:getFocusControllerInternal():descendantAddedRefocus()

				local existingCallback = self.props[Roact.Event.DescendantAdded]
				if existingCallback ~= nil then
					existingCallback(descendant)
				end
			end

			self.refreshFocusOnDescendantRemoved = function(descendant)
				self:getFocusControllerInternal():descendantRemovedRefocus()

				local existingCallback = self.props[Roact.Event.DescendantRemoving]
				if existingCallback ~= nil then
					existingCallback(descendant)
				end
			end
		end
	end

	function Focusable:willUpdate(nextProps)
		-- Here, we need to carefully update the navigation context according to
		-- the incoming props. There are three different categories of prop
		-- changes we have to deal with.

		-- 1. Apply the changes from the navigation props themselves. These only
		--    affect navigation behavior for this node's ref and do not need to
		--    cascade to other parts of the tree
		self.navContext.focusNode:updateNavProps(nextProps)

		-- 2. If neighbors changed, we need to cascade this change through
		--    context, so we make sure the value that we pass to context has a
		--    _new_ identity
		if
			nextProps.NextSelectionLeft ~= self.navContext.neighbors.NextSelectionLeft
			or nextProps.NextSelectionRight ~= self.navContext.neighbors.NextSelectionRight
			or nextProps.NextSelectionDown ~= self.navContext.neighbors.NextSelectionDown
			or nextProps.NextSelectionUp ~= self.navContext.neighbors.NextSelectionUp
		then
			self.navContext = {
				focusNode = self.navContext.focusNode,
				neighbors = {
					NextSelectionLeft = nextProps.NextSelectionLeft,
					NextSelectionRight = nextProps.NextSelectionRight,
					NextSelectionUp = nextProps.NextSelectionUp,
					NextSelectionDown = nextProps.NextSelectionDown,
				}
			}
		end

		-- 3. Finally, if the ref changed, then for now we simply get angry and
		--    throw an error; we'll likely have to manage this another way
		--    anyways!
		if self.navContext.focusNode.ref ~= nextProps[Roact.Ref] then
			error("Cannot change the ref passed to a Focusable component", 0)
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

	-- Determines whether or not this Focusable is supposed to be the root of a
	-- focusable tree, determined by whether or not it has parent or focus props
	-- provided
	function Focusable:isRoot()
		return self.props.focusController ~= nil and self.props.parentFocusNode == nil
	end

	function Focusable:getFocusControllerInternal()
		return self.navContext.focusNode.focusController[InternalApi]
	end

	function Focusable:render()
		local ref = self.props[Roact.Ref]
		local childDefaultNavProps = {
			NextSelectionLeft = ref,
			NextSelectionRight = ref,
			NextSelectionDown = ref,
			NextSelectionUp = ref,

			[Roact.Ref] = ref,
		}

		local innerProps
		if self:isRoot() then
			local rootNavProps = {
				[Roact.Event.AncestryChanged] = self.ancestryChangedListener,
				[Roact.Event.DescendantAdded] = self.refreshFocusOnDescendantAdded,
				[Roact.Event.DescendantRemoving] = self.refreshFocusOnDescendantRemoved,
			}

			innerProps = Cryo.Dictionary.join(
				childDefaultNavProps,
				self.props,
				rootNavProps,
				nonHostProps
			)
		else
			innerProps = Cryo.Dictionary.join(
				childDefaultNavProps,
				self.props.parentNeighbors or {},
				self.props,
				nonHostProps
			)
		end

		-- We pass the inner component as a single child (instead of part of a
		-- table of children) because it causes Roact to reuse the key provided
		-- to _this_ component when naming the resulting object. This means that
		-- Focusable avoids disrupting the naming of the Instance hierarchy
		return Roact.createElement(FocusContext.Provider, {
			value = self.navContext,
		}, Roact.createElement(innerComponent, innerProps))
	end

	function Focusable:didMount()
		self.navContext.focusNode:attachToTree(self.props.parentFocusNode, self.updateFocusedState)

		if self:isRoot() then
			-- Ancestry change may not trigger if the UI elements we're mounting
			-- to were previously mounted to the DataModel already
			self.ancestryChanged(self.props[Roact.Ref]:getValue())
		end
	end

	function Focusable:willUnmount()
		self.navContext.focusNode:detachFromTree()

		if self:isRoot() then
			self:getFocusControllerInternal():teardown()
		end
	end

	return forwardRef(function(props, ref)
		return Roact.createElement(FocusContext.Consumer, {
			render = function(navContext)
				if navContext == nil and props.focusController == nil then
					-- If this component can't be the root, and there's no
					-- parent, behave like the underlying component and ignore
					-- all focus logic
					local hostPropsOnly = Cryo.Dictionary.join(props, nonHostProps)
					return Roact.createElement(innerComponent, hostPropsOnly)
				end

				local propsWithNav = Cryo.Dictionary.join(props, {
					parentFocusNode = navContext and navContext.focusNode or nil,
					parentNeighbors = navContext and navContext.neighbors or nil,
					[Roact.Ref] = ref,
				})

				return Roact.createElement(Focusable, propsWithNav)
			end,
		})
	end)
end

return asFocusable