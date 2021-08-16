local Plugin = script.Parent.Parent.Parent.Parent
-- local Types = require(Plugin.Src.Types) -- Uncomment to access types
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local SelectInput = UI.SelectInput

local Actions = Plugin.Src.Actions
local SetCurrentThread = require(Actions.Callstack.SetCurrentThread)

local SelectInputField = Roact.PureComponent:extend("SelectInputField")

-- SelectInputField
function SelectInputField:init()
	local props = self.props

	self.selectItem = function(item, index)
		local threadId = props.IndexMap[index]
		props.onActivate(threadId)
	end
end

function SelectInputField:render()
	local props = self.props

	return Roact.createElement(SelectInput, {
		Size = props.Size,
		Items = props.Items,
		PlaceholderText = props.PlaceholderText,
		SelectedIndex = props.CurrentThreadIndex,
		OnItemActivated = self.selectItem,
	})
end

-- RoactRodux Connection
SelectInputField = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = Stylizer,
})(SelectInputField)

SelectInputField = RoactRodux.connect(
	function(state, props)
		if state.Common.currentThreadId == -1 then
			return {
				Items = {},
				IndexMap = {},
				CurrentThreadIndex = nil,
			}
		else
			assert(#state.Common.debuggerStateTokenHistory >= 1)
			local address = state.Common.debuggerStateTokenHistory[#state.Common.debuggerStateTokenHistory]
			local callstackVars = state.Callstack.stateTokenToCallstackVars[address]
			local threadList = callstackVars and callstackVars.threadList
			local selectTextIndexToThreadId = {}
			local threadDisplayStrings = {}
			for _, thread in ipairs(threadList) do 
				table.insert(selectTextIndexToThreadId, thread.threadId)
				table.insert(threadDisplayStrings, thread.displayString)
			end
			
			local currentThreadId = state.Common.currentThreadId
			local currentThreadIndex = nil
			for threadIndex, threadId in ipairs(selectTextIndexToThreadId) do
				if threadId == currentThreadId then
					currentThreadIndex = threadIndex
				end
			end
			
			return {
				Items = threadDisplayStrings,
				IndexMap = selectTextIndexToThreadId,
				CurrentThreadIndex = currentThreadIndex,
			}
		end
	end,

	function(dispatch)
		return {
			onActivate = function(threadId)
				return dispatch(SetCurrentThread(threadId))
			end,
		}
	end
)(SelectInputField)

return SelectInputField
