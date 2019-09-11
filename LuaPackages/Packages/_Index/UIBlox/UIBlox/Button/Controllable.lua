--[[
	Creates a Roact wrapper component that tracks state based on Roact input events to a UI control component.
	Notable props:
		controlComponent = {
			component = the actual UI control component
			props = the props to pass to the UI control component
			children = child components
		}
		stateChanged = callback function that's called when state changes
		disabled = disables state changes, and disables activating the UI control component
]]
local GenericControlRoot = script.Parent
local UIBloxRoot = GenericControlRoot.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local Cryo = require(UIBloxRoot.Parent.Cryo)
local t = require(UIBloxRoot.Parent.t)

local ControlState = require(script.Parent.ControlState)
local StateTable = require(UIBloxRoot.StateTable.StateTable)

local Controllable = Roact.PureComponent:extend("Controllable")

function Controllable:init()
	local initialState = ControlState.Initialize
	self.state = {
		currentState = initialState
	}
	local stateTableName = string.format("Controllable(%s)", tostring(self))

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
		if self.props.stateChanged then
			self.props.stateChanged(oldState, newState)
		end
	end)
end

local isComponent = t.union(t.table, t.string, t.callback)
function Controllable:render()
	local controlComponent = self.props.controlComponent

	if self.state.currentState == ControlState.Initialize then
		return nil
	end

	if not controlComponent then
		return nil
	end

	assert(isComponent(controlComponent.component))
	local newChildProps = Cryo.Dictionary.join(
		self.props,
		controlComponent.props or {},
		{
			Selectable = true,
			[Roact.Event.MouseEnter] = function(...)
				self.stateTable.events.StartHover()
				if self.props[Roact.Event.MouseEnter] ~= nil then
					return self.props[Roact.Event.MouseEnter](...)
				end
			end,
			[Roact.Event.MouseLeave] = function(...)
				self.stateTable.events.EndHover()
				if self.props[Roact.Event.MouseLeave] ~= nil then
					return self.props[Roact.Event.MouseLeave](...)
				end
			end,
			[Roact.Event.InputBegan] = function(...)
				local inputObject = select(2, ...)
				if inputObject.UserInputType == Enum.UserInputType.MouseButton1 or
					inputObject.UserInputType == Enum.UserInputType.Touch or
					inputObject.KeyCode == Enum.KeyCode.ButtonA then
					self.stateTable.events.OnPressed()
				end
				if self.props[Roact.Event.InputBegan] ~= nil then
					return self.props[Roact.Event.InputBegan](...)
				end
			end,
			[Roact.Event.InputEnded] = function(...)
				local inputObject = select(2, ...)
				if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
					self.stateTable.events.OnReleasedHover()
				elseif inputObject.UserInputType == Enum.UserInputType.Touch or
					inputObject.KeyCode == Enum.KeyCode.ButtonA or
					inputObject.UserInputType == Enum.UserInputType.MouseMovement then
					self.stateTable.events.OnReleased()
				end
				if self.props[Roact.Event.InputEnded] ~= nil then
					return self.props[Roact.Event.InputEnded](...)
				end
			end,
			[Roact.Event.SelectionGained] = function(...)
				self.stateTable.events.OnSelectionGained()
				if self.props[Roact.Event.SelectionGained] ~= nil then
					return self.props[Roact.Event.SelectionGained](...)
				end
			end,
			[Roact.Event.SelectionLost] = function(...)
				self.stateTable.events.OnSelectionLost()
				if self.props[Roact.Event.SelectionLost] ~= nil then
					return self.props[Roact.Event.SelectionLost](...)
				end
			end,
			disabled = Cryo.None,
			stateChanged = Cryo.None,
			[Roact.Children] = Cryo.None,
			controlComponent = Cryo.None,
		}
	)

	if self.props[Roact.Event.Activated] ~= nil then
		newChildProps[Roact.Event.Activated] = function(...)
			if self.state.currentState ~= ControlState.Disabled then
				return self.props[Roact.Event.Activated](...)
			end
		end
	end

	return Roact.createElement(controlComponent.component, newChildProps, controlComponent.children)
end

function Controllable:didMount()
	if self.props.disabled then
		self.stateTable.events.Disable()
	else
		self.stateTable.events.Enable()
	end
end

function Controllable:didUpdate(previousProps)
	if self.props.disabled ~= previousProps.disabled then
		if self.props.disabled then
			self.stateTable.events.Disable()
		else
			self.stateTable.events.Enable()
		end
	end
end

return Controllable
