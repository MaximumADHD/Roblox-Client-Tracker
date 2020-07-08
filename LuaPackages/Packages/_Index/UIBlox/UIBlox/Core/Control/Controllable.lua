--[[
	Creates a Roact wrapper component that tracks state based on Roact input events to a UI control component.
]]
local ControlRoot = script.Parent
local CoreRoot = ControlRoot.Parent
local UIBloxRoot = CoreRoot.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local Cryo = require(Packages.Cryo)
local t = require(Packages.t)

local ControlState = require(ControlRoot.Enum.ControlState)
local StateTable = require(UIBloxRoot.StateTable.StateTable)

local Controllable = Roact.PureComponent:extend("Controllable")

function Controllable:init()
	self.isMounted = false
	local initialState = ControlState.Initialize
	self.state = {
		currentState = initialState
	}
	local stateTableName = string.format("Controllable(%s)", tostring(self))

	self.setDisabled = function(isDisabled)
		if isDisabled then
			self.stateTable.events.Disable()
		else
			self.stateTable.events.Enable()
		end
	end

	self.stateTable = StateTable.new(stateTableName, initialState, {},
	{
		[ControlState.Initialize] = {
			Enable = { nextState = ControlState.Default },
			Disable = { nextState = ControlState.Disabled },
		},
		[ControlState.Default] = {
			OnPressed = { nextState = ControlState.Pressed },
			StartHover = { nextState = ControlState.Hover },
			OnSelectionGained = { nextState = ControlState.Selected },
			Disable = { nextState = ControlState.Disabled },
		},
		[ControlState.Hover] = {
			OnSelectionGained = { nextState = ControlState.Selected },
			OnPressed = { nextState = ControlState.Pressed },
			EndHover = { nextState = ControlState.Default },
			Disable = { nextState = ControlState.Disabled },
		},
		[ControlState.Pressed] = {
			OnSelectionGained = { nextState = ControlState.SelectedPressed },
			OnReleased = { nextState = ControlState.Default },
			OnReleasedHover = { nextState = ControlState.Hover },
			Disable = { nextState = ControlState.Disabled },
		},
		[ControlState.Selected] = {
			OnSelectionLost = { nextState = ControlState.Default },
			OnPressed = { nextState = ControlState.SelectedPressed },
			Disable = { nextState = ControlState.Disabled },
		},
		[ControlState.SelectedPressed] = {
			OnSelectionLost = { nextState = ControlState.Default },
			OnReleased = { nextState = ControlState.Selected },
			Disable = { nextState = ControlState.Disabled },
		},
		[ControlState.Disabled] = {
			Enable = { nextState = ControlState.Default },
		},
	})

	self.stateTable:onStateChange(function(oldState, newState)
		self:setState({
			currentState = newState,
		})
		if self.props.onStateChanged then
			self.props.onStateChanged(oldState, newState)
		end
	end)
end

local validateProps = t.strictInterface({
	-- The component that is controlled
	controlComponent = t.strictInterface({
		-- the actual UI control component
		component = t.union(t.callback, t.string, t.table),

		-- the props to pass to the UI control component
		props = t.optional(t.table),

		-- child components
		children = t.optional(t.table),
	}),

	--callback function that's called when state changes
	onStateChanged = t.callback,

	--disables state changes, and disables activating the UI control component
	isDisabled = t.optional(t.boolean),

	--A Boolean value that determines whether user events are ignored and sink input
	userInteractionEnabled = t.optional(t.boolean),
})

Controllable.defaultProps = {
	userInteractionEnabled = true,
	isDisabled = false,
}

function Controllable:render()
	assert(validateProps(self.props))

	local controlComponent = self.props.controlComponent
	local userInteractionEnabled = self.props.userInteractionEnabled

	if self.state.currentState == ControlState.Initialize then
		return nil
	end

	local newChildProps = Cryo.Dictionary.join(
		self.props,
		controlComponent.props or {},
		{
			Selectable = true,
			Active = not self.props.isDisabled,
			[Roact.Event.MouseEnter] = function(...)
				if not userInteractionEnabled then
					return nil
				end
				self.stateTable.events.StartHover()
				if controlComponent.props[Roact.Event.MouseEnter] ~= nil then
					return controlComponent.props[Roact.Event.MouseEnter](...)
				end
			end,
			[Roact.Event.MouseLeave] = function(...)
				if not userInteractionEnabled then
					return nil
				end
				self.stateTable.events.EndHover()
				if controlComponent.props[Roact.Event.MouseLeave] ~= nil then
					return controlComponent.props[Roact.Event.MouseLeave](...)
				end
			end,
			[Roact.Event.InputBegan] = function(...)
				if not userInteractionEnabled then
					return nil
				end
				local inputObject = select(2, ...)
				if inputObject.UserInputType == Enum.UserInputType.MouseButton1 or
					inputObject.UserInputType == Enum.UserInputType.Touch or
					inputObject.KeyCode == Enum.KeyCode.ButtonA then
					self.stateTable.events.OnPressed()
				end
				if controlComponent.props[Roact.Event.InputBegan] ~= nil then
					return controlComponent.props[Roact.Event.InputBegan](...)
				end
			end,
			[Roact.Event.InputEnded] = function(...)
				if not userInteractionEnabled then
					return nil
				end
				local inputObject = select(2, ...)
				if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
					self.stateTable.events.OnReleasedHover()
				elseif inputObject.UserInputType == Enum.UserInputType.Touch or
					inputObject.KeyCode == Enum.KeyCode.ButtonA or
					inputObject.UserInputType == Enum.UserInputType.MouseMovement then
					self.stateTable.events.OnReleased()
				end
				if controlComponent.props[Roact.Event.InputEnded] ~= nil then
					return controlComponent.props[Roact.Event.InputEnded](...)
				end
			end,
			[Roact.Event.SelectionGained] = function(...)
				if not userInteractionEnabled then
					return nil
				end
				self.stateTable.events.OnSelectionGained()
				if controlComponent.props[Roact.Event.SelectionGained] ~= nil then
					return controlComponent.props[Roact.Event.SelectionGained](...)
				end
			end,
			[Roact.Event.SelectionLost] = function(...)
				if not userInteractionEnabled then
					return nil
				end
				self.stateTable.events.OnSelectionLost()
				if controlComponent.props[Roact.Event.SelectionLost] ~= nil then
					return controlComponent.props[Roact.Event.SelectionLost](...)
				end
			end,
			[Roact.Event.Activated] = function(...)
				if not userInteractionEnabled then
					return nil
				end
				if controlComponent.props[Roact.Event.Activated] then
					if self.state.currentState ~= ControlState.Disabled then
						return controlComponent.props[Roact.Event.Activated](...)
					end
				end
			end,

			userInteractionEnabled = Cryo.None,
			isDisabled = Cryo.None,
			onStateChanged = Cryo.None,
			[Roact.Children] = Cryo.None,
			controlComponent = Cryo.None,
		}
	)

	return Roact.createElement(controlComponent.component, newChildProps, controlComponent.children)
end

function Controllable:didMount()
	self.isMounted = true
	self.setDisabled(self.props.isDisabled)
end

function Controllable:didUpdate(previousProps)
	if self.props.isDisabled ~= previousProps.isDisabled then
		self.setDisabled(self.props.isDisabled)
	end
end

function Controllable:willUnmount()
	self.isMounted = false
end

return Controllable
