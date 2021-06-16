-- Importing HttpService only for GenerateGUID
local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)

local function newId()
	return HttpService:GenerateGUID()
end

local function connectAction(connections, action, entry, item)
	table.insert(connections, action.Triggered:Connect(function()
		for _, connection in ipairs(connections) do
			connection:Disconnect()
		end
		if entry.ItemSelected then
			entry.ItemSelected(item)
		-- AnimationClipMenu has selection function for items in the dropdown menus
		elseif item.ItemSelected then
			item.ItemSelected(item.Value)
		end
	end))
end

--[[
	Creates a SubMenu for a PluginMenu used for selecting between items.
	Parameters:
		PluginMenu menu: The menu to add this SubMenu to.
		string name: The name of this SubMenu.
		table Items: A list of Items formatted like so:
		{
			Name = "Human readable text",
			Value = 0, -- Any variant for determining equality
		}
		item CurrentItem = The current item variant that is selected, if any.
			Used to show a check mark for the item that is selected.
		callback itemSelected(item) = A callback for when an item is selected by the user.
]]
local function makeSelectionSubMenu(plugin, connections, entry)
	local subMenu = plugin:CreatePluginMenu(newId(), entry.Name)

	for _, item in ipairs(entry.Items) do
		if item == Constants.MENU_SEPARATOR then
			subMenu:AddSeparator()
		else
			local isCurrent = entry.CurrentItem == item.Value
			local icon = Constants.MENU_ICONS[item]
			local selectAction = subMenu:AddNewAction(newId(), item.Name, icon)
			selectAction.Checked = isCurrent
			connectAction(connections, selectAction, entry, item)
		end
	end

	return subMenu
end

local function makeSubMenu(plugin, entry)
	local subMenu = plugin:CreatePluginMenu(newId(), entry.Name)

	for _, action in ipairs(entry.Actions) do
		subMenu:AddAction(action)
	end

	return subMenu
end

--[[
	Creates a PluginMenu made up of PluginActions, or SubMenus of
	PluginActions.

	Parameters:
		plugin = The Roblox plugin instance that this menu belongs to
		name = unique name for this PluginMenu
		actions = an array of PluginActions and/or SubMenus in the following expected format:
		{
			[pluginAction],
			...,
			[SubMenu Name] = {
				[pluginAction],
				...,
			}
			...,
			[pluginAction],
		}
]]
local function makePluginMenu(plugin, name, entries)
	local menu = plugin:CreatePluginMenu(name)
	local subMenus = {}
	local connections = {}

	for _, entry in ipairs(entries) do
		if type(entry) == "table" then
			local subMenu
			if entry.SubActions then
				subMenu = makeSubMenu(plugin, entry)
			elseif entry.Items then
				subMenu = makeSelectionSubMenu(plugin, connections, entry)
			else
				local action = menu:AddNewAction(newId(), entry.Name)
				action.Checked = entry.IsEnabled
				-- Confusing naming. Checked means its the selected option. Enabled means the user can click on it. 
				if entry.IsAvailable ~= nil then 
					action.Enabled = entry.IsAvailable
				end
				connectAction(connections, action, entry, entry.Name)
			end

			if subMenu then
				table.insert(subMenus, subMenu)
				menu:AddMenu(subMenu)
			end
		elseif typeof(entry) == "Instance" and entry.ClassName == "PluginAction" then
			menu:AddAction(entry)
		else
			menu:AddSeparator()
		end
	end

	menu:ShowAsync()
	for _, subMenu in ipairs(subMenus) do
		subMenu:Destroy()
	end
	menu:Destroy()
end

return makePluginMenu