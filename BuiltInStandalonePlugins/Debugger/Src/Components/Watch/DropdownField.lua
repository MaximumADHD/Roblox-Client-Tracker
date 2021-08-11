local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local RoactRodux = require(Plugin.Packages.RoactRodux)
local Framework = require(Plugin.Packages.Framework)
local Cryo = require(Plugin.Packages.Cryo)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Localization = ContextServices.Localization

local Stylizer = Framework.Style.Stylizer

local UI = Framework.UI
local Pane = UI.Pane

local DropdownMenu = UI.DropdownMenu
local Checkbox = UI.Checkbox
local Separator = UI.Separator

local Actions = Plugin.Src.Actions
local ScopeFilterChange = require(Actions.Watch.ScopeFilterChange)

local DropdownField = Roact.PureComponent:extend("DropdownField")

-- Type Declarations
export type VariableScope = string

-- Constants
local VariableScope = {
	LocalScope = "Local",
	UpvalueScope = "Upvalue",
	GlobalScope = "Global",
}
local DROPDOWN_WIDTH = 200
local ALLSCOPE_KEY = "AllScopes"

-- Local Functions
local function hasValue(tab, val)
	for k, v in pairs(tab) do
		if v == val then
			return true
		end
	end
	return false
end

local function areAllScopesChecked(states)
	for _, checked in pairs(states) do
		if not checked then
			return false
		end
	end
	return true
end

local function areAnyScopesChecked(states)
	for _, checked in pairs(states) do
		if checked then
			return true
		end
	end
	return false
end

local function getAllScopesCheckbox(states)
	if areAllScopesChecked(states) then
		return true
	elseif areAnyScopesChecked(states) then
		return Checkbox.Indeterminate
	else
		return false
	end
end

-- DropdownField
function DropdownField:init()	
	self.keyTexts = {
		[1] = ALLSCOPE_KEY,
		[2] = VariableScope.LocalScope,
		[3] = VariableScope.UpvalueScope,
		[4] = VariableScope.GlobalScope,
	}
			
	self.state = {
		isOpen = false,
	}
	
	self.onScopeClick = function(key)
		local props = self.props
		local enabledScopes = {}
		local newKeyStates = Cryo.Dictionary.join(props.KeyStates, {
			[key] = not props.KeyStates[key],
		})
		for k, v in pairs(newKeyStates) do
			if (v == true) then
				table.insert(enabledScopes, self.keyTexts[k])
			end
		end
		props.onScopeFilterChange(enabledScopes)
	end
	
	self.onAllScopeClick = function(key)
		local props = self.props
		local newAllScopesChecked = not areAllScopesChecked(props.KeyStates)
		local enabledScopes = {}
		if newAllScopesChecked then
			for k, v in ipairs(self.keyTexts) do
				if (k ~= 1) then
					table.insert(enabledScopes, v)
				end
			end
		end
		props.onScopeFilterChange(enabledScopes)
	end
	
	self.onRenderItem = function(item, index, activated)
		local props = self.props
		local localization = props.Localization
		local style = props.Stylizer
		
		return Roact.createElement(Pane, {
			BackgroundColor3 = style.BackgroundColor,
			AutomaticSize = Enum.AutomaticSize.Y,
			LayoutOrder = index,
		}, {
			CheckboxView = Roact.createElement(Checkbox, {
				LayoutOrder = 1,
				Key = index,
				Checked = index == 1 and getAllScopesCheckbox(props.KeyStates) or props.KeyStates[index],
				OnClick = index == 1 and self.onAllScopeClick or self.onScopeClick,
				Text = localization:getText("Watch", self.keyTexts[index]),
			}),
			SeparatorView = index == 1 and Roact.createElement(Separator, {
				LayoutOrder = 2,
				Position = UDim2.new(0.5, 0, 1, 0),
				DominantAxis = Enum.DominantAxis.Width,
				Style = style.Separator,
			}),
		})
	end
	
	self.selectItem = function(value, index)
		self:setState({
			isOpen = false,
		})
	end
	
	self.openMenu = function()
		self:setState({
			isOpen = true,
		})
	end
	
	self.closeMenu = function()
		self:setState({
			isOpen = false,
		})
	end
end

function DropdownField:render()
	local props = self.props
	local style = props.Stylizer
	local localization = props.Localization
		
	local buttonText = ""
	if props.NumScopes == 3 then
		buttonText = localization:getText("Watch", self.keyTexts[1])
	else
		buttonText = localization:getText("Watch", "DropdownButtonText", {NumScopes = props.NumScopes})
	end
		
	return Roact.createElement("Frame", {
		Size = UDim2.new(0, DROPDOWN_WIDTH, 1, 0),
		BackgroundColor3 = style.BackgroundColor,
		BorderSizePixel = 2,
		BorderColor3 = style.BorderColor,
		LayoutOrder = props.LayoutOrder,
	}, {
		ButtonView = Roact.createElement("TextButton", {
			Text = buttonText,
			TextSize = style.TextSize,
			Font = style.Font,
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = style.BackgroundColor,
			BorderSizePixel = 0,
			[Roact.Event.Activated] = self.openMenu,
		}),
		DropdownView = Roact.createElement(DropdownMenu, {
			Width = DROPDOWN_WIDTH,
			Hide = not self.state.isOpen,
			Items = self.keyTexts,
			OnItemActivated = self.selectItem,
			OnFocusLost = self.closeMenu,
			OnRenderItem = self.onRenderItem,
		}),
	})
end

-- RoactRodux Connection
DropdownField = withContext({
	Localization = Localization,
	Stylizer = Stylizer,
})(DropdownField)

DropdownField = RoactRodux.connect(
	function(state, props)
		local enabledScopes = state.Watch.listOfEnabledScopes
		local newKeyStates = {}
		newKeyStates[2] = hasValue(enabledScopes, VariableScope.LocalScope)
		newKeyStates[3] = hasValue(enabledScopes, VariableScope.UpvalueScope)
		newKeyStates[4] = hasValue(enabledScopes, VariableScope.GlobalScope)
		return {
			NumScopes = #enabledScopes,
			KeyStates = newKeyStates,
		}
	end,

	function(dispatch)
		return {
			onScopeFilterChange = function(enabledScopes)
				return dispatch(ScopeFilterChange(enabledScopes))
			end,
		}
	end
)(DropdownField)

return DropdownField
