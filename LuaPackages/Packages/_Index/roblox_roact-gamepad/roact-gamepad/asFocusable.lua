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

local nonHostProps = {
	parentFocusNode = Cryo.None,
	focusController = Cryo.None,

	onFocusGained = Cryo.None,
	onFocusLost = Cryo.None,
	onFocusChanged = Cryo.None,

	restorePreviousChildFocus = Cryo.None,
	defaultChild = Cryo.None,
	inputBindings = Cryo.None,
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
		self.focusNode = FocusNode.new(self.props)

		local isRooted = false
		-- If this Focusable needs to behave as a root, it is responsible for
		-- initializing the FocusManager. Once it becomes a descendant of
		-- `game`, we initialize the FocusManager which determines which sort of
		-- PlayerGui this focus tree is contained under
		self.rootAncestryChanged = function(instance)
			if not isRooted and instance:IsDescendantOf(game) then
				isRooted = true
				self.focusNode:initializeRoot(getEngineInterface(instance))
			end
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

	-- For internal use. Determines whether or not this Focusable is supposed to
	-- be the root of a focusable tree, determined by whether or not it has
	-- parent or focus props provided
	function Focusable:isRoot()
		return self.props.focusController ~= nil and self.props.parentFocusNode == nil
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

		local contextNavProps
		if self:isRoot() then
			local existingAncestryChangedEvent = self.props[Roact.Event.AncestryChanged]
			contextNavProps = {
				[Roact.Event.AncestryChanged] = function(instance)
					self.rootAncestryChanged(instance)

					if existingAncestryChangedEvent ~= nil then
						existingAncestryChangedEvent(instance)
					end
				end
			}
		else
			contextNavProps = {
				NextSelectionLeft = self.props.parentFocusNode.left,
				NextSelectionRight = self.props.parentFocusNode.right,
				NextSelectionDown = self.props.parentFocusNode.down,
				NextSelectionUp = self.props.parentFocusNode.up,
			}
		end

		local innerProps = Cryo.Dictionary.join(
			childDefaultNavProps,
			contextNavProps,
			self.props,
			nonHostProps
		)

		return Roact.createElement(FocusContext.Provider, {
			value = self.focusNode,
		}, {
			[componentName] = Roact.createElement(innerComponent, innerProps)
		})
	end

	function Focusable:didUpdate(prevProps)
		-- TODO: are there prop changes that we need to respond to by updating
		-- our focusNode?
	end

	function Focusable:didMount()
		self.focusNode:attachToTree(self.props.parentFocusNode, function(newFocusedState)
			if not self.focused and newFocusedState then
				self:gainFocus()
			elseif self.focused and not newFocusedState then
				self:loseFocus()
			end
		end)

		if self:isRoot() then
			-- Ancestry change may not trigger if the UI elements we're mounting
			-- to were previously mounted to the DataModel already
			self.rootAncestryChanged(self.props[Roact.Ref]:getValue())
		end
	end

	function Focusable:willUnmount()
		self.focusNode:detachFromTree()

		if self:isRoot() then
			self.focusNode:teardownRoot()
		end
	end

	return forwardRef(function(props, ref)
		return Roact.createElement(FocusContext.Consumer, {
			render = function(parentFocusNode)
				if parentFocusNode == nil and props.focusController == nil then
					-- If this component can't be the root, and there's no
					-- parent, behave like the underlying component and ignore
					-- all focus logic
					local hostPropsOnly = Cryo.Dictionary.join(props, nonHostProps)
					return Roact.createElement(innerComponent, hostPropsOnly)
				end

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