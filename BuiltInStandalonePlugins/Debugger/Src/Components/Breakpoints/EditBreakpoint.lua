local Plugin = script.Parent.Parent.Parent.Parent
-- local Types = require(Plugin.Src.Types) -- Uncomment to access types
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local EditDebugpoint = require(Plugin.Src.Components.Breakpoints.EditDebugpoint)

local EditBreakpoint = Roact.PureComponent:extend("EditBreakpoint")

function EditBreakpoint:init()
	self:setState(function(state)
		return {
			scriptName = "Workspace/CoolGame/Upper",
			lineNumber = 8,
			enabled = true,
			conditionDetails = "a==2",
			logDetails = "a.. str(b)",
		}
	end)
	self.updateEnable = function()
		self:setState(function(state)
			return {
				enabled = not state.enabled
			}
		end)
	end
	self.updateCondition = function(newValue: string)
		self:setState(function(state)
			return {
				conditionDetails = newValue
			}
		end)
	end
	self.updateLogMessage = function(newValue: string)
		self:setState(function(state)
			return {
				logDetails = newValue
			}
		end)
	end
end

function EditBreakpoint:render()
	local props = self.props
	local state = self.state
	local localization = props.Localization
	
	return Roact.createElement(EditDebugpoint,{
		ScriptName = state.scriptName,
		LineNumber = state.lineNumber,
		Enabled = state.enabled,
		InputItems = {
			{
				DetailsText = state.conditionDetails,
				PlaceholderText = localization:getText("EditDebugpoint", "ConditionPlaceholder"),
				LabelText = localization:getText("EditDebugpoint", "ConditionLabel"),
				OnDetailsChange = self.updateCondition,
			},
			{
				DetailsText = state.logDetails,
				PlaceholderText = localization:getText("EditDebugpoint", "LogPlaceholder"),
				LabelText = localization:getText("EditDebugpoint", "LogLabel"),
				TooltipText = localization:getText("EditDebugpoint", "LogTooltip"),
				OnDetailsChange = self.updateLogMessage,
			},
		},
		OnEnableChange = self.updateEnable,
	})
end

EditBreakpoint = withContext({
	Analytics = Analytics,
	Localization = Localization,
})(EditBreakpoint)

return EditBreakpoint
