type MenuAction = PluginAction | {id: string, text: string, enabled: boolean}

export type Props = {
	plugin : Plugin,
	name : string,
	menuActions : {string : MenuAction},
	callback : (string, any) -> (),
	extraParameters : any,
}

return function (plugin : Plugin, name : string, menuActions : {string : MenuAction}, callback : (string, any) -> (), extraParameters : any)
	local menu = plugin:CreatePluginMenu(name)
	for _, actionInfo in pairs(menuActions) do
		local action = nil
		if typeof(actionInfo) == "table" then
			action = menu:AddNewAction(actionInfo.id, actionInfo.text)
		else
			-- This is a PluginAction instance
			action = menu:AddAction(actionInfo)
		end
		action.Triggered:connect(function() callback(actionInfo.id, extraParameters) end)
	end

	menu:ShowAsync()
	menu:Destroy()
end
