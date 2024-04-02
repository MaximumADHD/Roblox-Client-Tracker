local Control = script.Parent
local Core = Control.Parent
local UIBlox = Core.Parent

local ControlStateEnum = require(Control.Enum.ControlState)
local ControlStateEventEnum = require(Control.Enum.ControlStateEvent)

local StateTable = require(UIBlox.StateTable.StateTable)

type Table = { [any]: any }
type StateTransition = { [ControlStateEvent]: { nextState: ControlState } }
type StateMapping = { [ControlState]: StateTransition }
type ControlState = ControlStateEnum.ControlState
type ControlStateEvent = ControlStateEventEnum.ControlStateEvent
export type onGuiControlStateChange = (oldState: ControlState, newState: ControlState) -> ()

local function createGuiControlStateTable(onGuiControlStateChange: onGuiControlStateChange): Table
	local stateTable
	-- Original state table from controllable
	stateTable = StateTable.new("GuiStateTable", ControlStateEnum.Initialize, {}, {
		[ControlStateEnum.Initialize] = {
			[ControlStateEventEnum.Idle] = { nextState = ControlStateEnum.Default },
			[ControlStateEventEnum.Enabled] = { nextState = ControlStateEnum.Default },
			[ControlStateEventEnum.Disabled] = { nextState = ControlStateEnum.Disabled },
		} :: StateTransition,
		[ControlStateEnum.Default] = {
			[ControlStateEventEnum.PrimaryPressed] = { nextState = ControlStateEnum.Pressed },
			[ControlStateEventEnum.PointerHover] = { nextState = ControlStateEnum.Hover },
			[ControlStateEventEnum.SelectionGained] = { nextState = ControlStateEnum.Selected },
			[ControlStateEventEnum.Disabled] = { nextState = ControlStateEnum.Disabled },
		} :: StateTransition,
		[ControlStateEnum.Hover] = {
			[ControlStateEventEnum.SelectionGained] = { nextState = ControlStateEnum.Selected },
			[ControlStateEventEnum.PrimaryPressed] = { nextState = ControlStateEnum.Pressed },
			[ControlStateEventEnum.PointerHoverEnd] = { nextState = ControlStateEnum.Default },
			[ControlStateEventEnum.Disabled] = { nextState = ControlStateEnum.Disabled },
		} :: StateTransition,
		[ControlStateEnum.Pressed] = {
			[ControlStateEventEnum.SelectionGained] = { nextState = ControlStateEnum.SelectedPressed },
			[ControlStateEventEnum.PrimaryReleasedHover] = { nextState = ControlStateEnum.Hover },
			[ControlStateEventEnum.PrimaryReleased] = { nextState = ControlStateEnum.Default },
			[ControlStateEventEnum.Disabled] = { nextState = ControlStateEnum.Disabled },
		} :: StateTransition,
		[ControlStateEnum.Selected] = {
			[ControlStateEventEnum.SelectionLost] = { nextState = ControlStateEnum.Default },
			[ControlStateEventEnum.PrimaryPressed] = { nextState = ControlStateEnum.SelectedPressed },
			[ControlStateEventEnum.Disabled] = { nextState = ControlStateEnum.Disabled },
		} :: StateTransition,
		[ControlStateEnum.SelectedPressed] = {
			[ControlStateEventEnum.SelectionLost] = { nextState = ControlStateEnum.Default },
			[ControlStateEventEnum.PrimaryReleasedHover] = { nextState = ControlStateEnum.Selected },
			[ControlStateEventEnum.PrimaryReleased] = { nextState = ControlStateEnum.Selected },
			[ControlStateEventEnum.Disabled] = { nextState = ControlStateEnum.Disabled },
		} :: StateTransition,
		[ControlStateEnum.Disabled] = {
			[ControlStateEventEnum.Enabled] = { nextState = ControlStateEnum.Default },
		} :: StateTransition,
	} :: StateMapping)
	stateTable:onStateChange(onGuiControlStateChange)

	return stateTable
end

return createGuiControlStateTable
