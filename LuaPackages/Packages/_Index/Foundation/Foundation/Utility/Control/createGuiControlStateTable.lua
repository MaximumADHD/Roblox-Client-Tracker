local Foundation = script:FindFirstAncestor("Foundation")
local Control = script.Parent

local ControlState = require(Foundation.Enums.ControlState)
local StateTable = require(Control.StateTable.StateTable)

type Table = { [any]: any }
type ControlState = ControlState.ControlState
export type onGuiControlStateChange = (newState: ControlState) -> ()

local initialState: ControlState = ControlState.Initialize
local guiControlStateTable = require(Control.guiControlStateTable)

local function createGuiControlStateTable(onGuiControlStateChange: onGuiControlStateChange): Table
	local stateTable = StateTable.new("GuiStateTable", initialState, guiControlStateTable)
	stateTable:onStateChange(onGuiControlStateChange)
	return stateTable
end

return createGuiControlStateTable
