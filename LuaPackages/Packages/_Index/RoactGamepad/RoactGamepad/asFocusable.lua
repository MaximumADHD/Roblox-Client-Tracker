--!nonstrict
-- Manages groups of selectable elements, reacting to selection changes for
-- individual items and triggering events for group selection changes
local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)

local FocusContext = require(script.Parent.FocusContext)
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

	innerRef = Cryo.None,
	restorePreviousChildFocus = Cryo.None,
	defaultChild = Cryo.None,
}

-- Small optimization to avoid creation of a bunch of empty tables and avoid a
-- lot of nil checks
local EMPTY = {}

local function checkFocusManager(props)
	if props.focusController ~= nil and props.parentFocusNode ~= nil then
		return false, "Cannot attach a new focusController beneath an existing one"
	end

	return true
end

local focusableValidateProps = t.intersection(t.interface({
	parentFocusNode = t.optional(t.table),
	focusController = t.optional(t.table),
	innerRef = t.optional(t.table),

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
		self.defaultRef = Roact.createRef()

		local parentNeighbors = self.props.parentNeighbors or EMPTY
		self:setState({
			focusNode = FocusNode.new(self.props, self:getRef()),
			parentNeighbors = parentNeighbors,
			neighbors = {
				NextSelectionLeft = self.props.NextSelectionLeft or parentNeighbors.NextSelectionLeft,
				NextSelectionRight = self.props.NextSelectionRight or parentNeighbors.NextSelectionRight,
				NextSelectionUp = self.props.NextSelectionUp or parentNeighbors.NextSelectionUp,
				NextSelectionDown = self.props.NextSelectionDown or parentNeighbors.NextSelectionDown,
			},
			needsDescendantAddedRefocusCounter = 0,
			needsDescendantRemovedRefocusCounter = 0,
		})

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
				if self:getFocusControllerInternal():needsDescendantAddedRefocus() then
					self:setState(function(state)
						return {
							needsDescendantAddedRefocusCounter = state.needsDescendantAddedRefocusCounter + 1
						}
					end)
				end

				local existingCallback = self.props[Roact.Event.DescendantAdded]
				if existingCallback ~= nil then
					existingCallback(descendant)
				end
			end

			self.refreshFocusOnDescendantRemoved = function(descendant)
				if self:getFocusControllerInternal():needsDescendantRemovedRefocus() then
					self:setState(function(state)
						return {
							needsDescendantRemovedRefocusCounter = state.needsDescendantRemovedRefocusCounter + 1
						}
					end)
				end

				local existingCallback = self.props[Roact.Event.DescendantRemoving]
				if existingCallback ~= nil then
					existingCallback(descendant)
				end
			end
		end
	end

	function Focusable.getDerivedStateFromProps(nextProps, state)
		-- If neighbors changed, incorporate this change into component state so
		-- that it gets passed down via context to children in this update
		local prevNeighbors = state.neighbors or EMPTY
		local parentNeighbors = nextProps.parentNeighbors or EMPTY
		local newLeft = nextProps.NextSelectionLeft or parentNeighbors.NextSelectionLeft
		local newRight = nextProps.NextSelectionRight or parentNeighbors.NextSelectionRight
		local newUp = nextProps.NextSelectionUp or parentNeighbors.NextSelectionUp
		local newDown = nextProps.NextSelectionDown or parentNeighbors.NextSelectionDown
		if
			newLeft ~= prevNeighbors.NextSelectionLeft
			or newRight ~= prevNeighbors.NextSelectionRight
			or newDown ~= prevNeighbors.NextSelectionDown
			or newUp ~= prevNeighbors.NextSelectionUp
		then
			return {
				-- Note that this value only lives in state for the sake of
				-- comparing it in this function; we can't do it with prev/next
				-- props in didUpdate because we need to update these values
				-- _before_ passing them down to children
				parentNeighbors = parentNeighbors,
				neighbors = {
					NextSelectionLeft = newLeft,
					NextSelectionRight = newRight,
					NextSelectionUp = newUp,
					NextSelectionDown = newDown,
				},
			}
		end

		return nil
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
		return self.state.focusNode.focusController[InternalApi]
	end

	function Focusable:getRef()
		return self.props.innerRef or self.defaultRef
	end

	function Focusable:render()
		local ref = self:getRef()
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
				self.props.parentNeighbors or EMPTY,
				self.props,
				nonHostProps
			)
		end

		-- We pass the inner component as a single child (instead of part of a
		-- table of children) because it causes Roact to reuse the key provided
		-- to _this_ component when naming the resulting object. This means that
		-- Focusable avoids disrupting the naming of the Instance hierarchy
		return Roact.createElement(FocusContext.Provider, {
			value = self.state,
		}, Roact.createElement(innerComponent, innerProps))
	end

	function Focusable:didMount()
		-- self.state.focusNode:updateNavProps(self.props)
		self.state.focusNode:attachToTree(self.props.parentFocusNode, self.updateFocusedState)

		if self:isRoot() then
			-- Ancestry change may not trigger if the UI elements we're mounting
			-- to were previously mounted to the DataModel already
			self.ancestryChanged(self:getRef():getValue())
		end
	end

	function Focusable:didUpdate(_prevProps, prevState)
		-- Apply the changes from the gamepad props themselves. These only
		-- affect navigation behavior for this node's ref and do not need to
		-- cascade to other parts of the tree
		self.state.focusNode:updateNavProps(self.props)

		-- If the ref changed, then for now we simply get angry and throw an
		-- error; we'll likely have to manage this another way anyways!
		local nextRef = self.props.innerRef or self.defaultRef
		if self.state.focusNode.ref ~= nextRef then
			error("Cannot change the ref passed to a Focusable component", 0)
		end

		if self.state.needsDescendantAddedRefocusCounter ~= prevState.needsDescendantAddedRefocusCounter then
			self:getFocusControllerInternal():descendantAddedRefocus()
		end

		if self.state.needsDescendantRemovedRefocusCounter ~= prevState.needsDescendantRemovedRefocusCounter then
			self:getFocusControllerInternal():descendantRemovedRefocus()
		end
	end

	function Focusable:willUnmount()
		self.state.focusNode:detachFromTree()

		if self:isRoot() then
			self:getFocusControllerInternal():teardown()
		end
	end

	return Roact.forwardRef(function(props, ref)
		return Roact.createElement(FocusContext.Consumer, {
			render = function(navContext)
				if navContext == nil and props.focusController == nil then
					-- If this component can't be the root, and there's no
					-- parent, behave like the underlying component and ignore
					-- all focus logic
					local hostPropsOnly = Cryo.Dictionary.join(props, nonHostProps, {
						[Roact.Ref] = ref,
					})
					return Roact.createElement(innerComponent, hostPropsOnly)
				end

				local propsWithNav = Cryo.Dictionary.join(props, {
					parentFocusNode = navContext and navContext.focusNode or nil,
					parentNeighbors = navContext and navContext.neighbors or nil,
					innerRef = ref,
				})

				return Roact.createElement(Focusable, propsWithNav)
			end,
		})
	end)
end

return asFocusable
