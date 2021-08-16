local Plugin = script.Parent.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)
local Util = Framework.Util
local Action = Util.Action

local Models = Plugin.Src.Models
local TableTab = require(Models.Watch.TableTab)

local Dash = Framework.Dash
local includes = Dash.includes

export type Props = {
	currentTab : string
}

return Action(script.Name, function(currentTab : string) : Props
	assert(includes(TableTab, currentTab))
	return {
		currentTab = currentTab
	}
end)
