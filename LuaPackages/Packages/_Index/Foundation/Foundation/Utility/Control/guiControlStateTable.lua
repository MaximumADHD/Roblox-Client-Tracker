local Foundation = script:FindFirstAncestor("Foundation")

local Control = script.Parent

local ControlState = require(Foundation.Enums.ControlState)
local ControlStateEvent = require(Foundation.Enums.ControlStateEvent)

local StateTable = require(Control.StateTable.StateTable)
type TransitionTable<S, E> = StateTable.TransitionTable<S, E>

type StateTransition = { [ControlStateEvent]: { nextState: ControlState } }
type StateMapping = { [ControlState]: StateTransition }
type ControlState = ControlState.ControlState
type ControlStateEvent = ControlStateEvent.ControlStateEvent

local transitionTable: TransitionTable<ControlState, ControlStateEvent> = {
	Initialize = {
		Idle = { nextState = ControlState.Default },
		Enabled = { nextState = ControlState.Default },
		Disabled = { nextState = ControlState.Disabled },
	},
	Default = {
		PrimaryPressed = { nextState = ControlState.Pressed },
		PointerHover = { nextState = ControlState.Hover },
		SelectionGained = { nextState = ControlState.Selected },
		Disabled = { nextState = ControlState.Disabled },
	},
	Hover = {
		SelectionGained = { nextState = ControlState.Selected },
		PrimaryPressed = { nextState = ControlState.Pressed },
		PointerHoverEnd = { nextState = ControlState.Default },
		Disabled = { nextState = ControlState.Disabled },
	},
	Pressed = {
		SelectionGained = { nextState = ControlState.SelectedPressed },
		PrimaryReleasedHover = { nextState = ControlState.Hover },
		PrimaryReleased = { nextState = ControlState.Default },
		Disabled = { nextState = ControlState.Disabled },
	},
	Selected = {
		SelectionLost = { nextState = ControlState.Default },
		PrimaryPressed = { nextState = ControlState.SelectedPressed },
		Disabled = { nextState = ControlState.Disabled },
	},
	SelectedPressed = {
		SelectionLost = { nextState = ControlState.Default },
		PrimaryReleasedHover = { nextState = ControlState.Selected },
		PrimaryReleased = { nextState = ControlState.Selected },
		Disabled = { nextState = ControlState.Disabled },
	},
	Disabled = {
		Enabled = { nextState = ControlState.Default },
	},
}

return transitionTable
