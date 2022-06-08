local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

export type Payload = {
	MenuHover : boolean
}

return Action(script.Name, function(menuHover : boolean) : Payload
	assert(type(menuHover) == "boolean", ("Expected menuHover to be a boolean, received %s"):format(type(menuHover)))
	return {
		MenuHover = menuHover,
	}
end)
