local Plugin = script.Parent.Parent.Parent
local Framework = require(Plugin.Packages.Framework)

type status = {
	DebugMessage: string,
    StatusLevel: string,
    StatusType: string
}

export type StatusMap = {
	Errors: {status},
	Warnings: {status}
}

export type Props = {
	statuses: StatusMap
}

return Framework.Util.Action(script.Name, function(statuses: StatusMap)
	return {
		statuses = statuses,
	}
end)
