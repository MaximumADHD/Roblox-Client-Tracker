--[[
	A context menu with each item representing an action.

	Required Props:
		Plugin plugin: A Plugin ContextItem, which is provided via withContext.
		table menuActions: A list of actions to be displayed in the menu. Actions can be a PluginAction
			instance created externally, or a table containing action properties that will be used to create
			a new action. The table can have the following fields:

			string Text = The action text displayed in the menu. Required if ShowSeparator is false.
			function OnItemClicked = A callback that is invoked whenever the action is clicked. Required if 
				ShowSeparator is false.
			string Id = An optional unique identifier for the action. If not specified, a GUID will 
				automatically be assigned to the action.
			string Icon = An optional icon displayed to the left of the action in the menu.
			boolean Enabled = Optionally controls whether an actional is selectable or not. Defaults to true.
			boolean Checked = Optionally shows acheck mark to the left of the action in the menu.
			boolean ShowSeparator = Optionally shows a separator instead of an action.
			table Data = Optional data associated with the action.

	Optional Props:
		table orderToDisplayActions: Specifies the order in which actions should be displayed. If this parameter is specified,
			menuActions must be a dictionary with the key being the string, and the value being the menuAction.
]]

-- Importing HttpService only for GenerateGUID
local HttpService = game:GetService("HttpService")

type MenuAction = PluginAction | {
	Text: string,
	OnItemClicked: (action: MenuAction) -> any?,
	Id: string,
	Icon: string,
	Enabled: boolean,
	Checked: boolean,
	ShowSeparator: boolean,
	Data: { any },
}

export type Props = {
	plugin: Plugin,
	menuActions: { string: MenuAction },
	submenus: { any },
}

local function newId()
	return HttpService:GenerateGUID()
end

local addActionToMenu

local function createPluginMenu(plugin, menuActions, orderToDisplayActions, subMenus)
	local menu = plugin:CreatePluginMenu(newId(), menuActions.Text, menuActions.Icon)

	if orderToDisplayActions then
		for _, actionKey in ipairs(orderToDisplayActions) do
			local actionInfo = menuActions[actionKey]
			addActionToMenu(plugin, menu, actionInfo, subMenus)
		end
	else
		for _, actionInfo in ipairs(menuActions) do
			addActionToMenu(plugin, menu, actionInfo, subMenus)
		end
	end

	return menu
end

function addActionToMenu(plugin, menu, actionInfo, subMenus)
	if typeof(actionInfo) == "table" then
		if #actionInfo > 0 then
			local subMenu = createPluginMenu(plugin, actionInfo, nil, subMenus)
			table.insert(subMenus, subMenu)
			menu:AddMenu(subMenu)
		elseif actionInfo.ShowSeparator then
			menu:AddSeparator()
		else
			if actionInfo.Id == nil then
				actionInfo.Id = newId()
			end

			local action = menu:AddNewAction(actionInfo.Id, actionInfo.Text, actionInfo.Icon)
			action.Enabled = (actionInfo.Enabled == nil) and true or actionInfo.Enabled
			action.Checked = actionInfo.Checked

			action.Triggered:connect(function()
				actionInfo.OnItemClicked(actionInfo)
			end)
		end
	elseif typeof(actionInfo) == "Instance" and actionInfo:IsA("PluginAction") then
		menu:AddAction(actionInfo)
	elseif actionInfo then -- Ignore false/nil for when plugins do {xyz, fflag and abc, ...}
		error("Unsupported action " .. tostring(actionInfo))
	end
end

return function(plugin: Plugin, menuActions: { MenuAction }, orderToDisplayActions: { string }?)
	local subMenus = {}
	local menu = createPluginMenu(plugin, menuActions, orderToDisplayActions, subMenus)

	menu:ShowAsync()
	for _, subMenu in ipairs(subMenus) do
		subMenu:Destroy()
	end
	menu:Destroy()
end
