local Plugin = script.Parent.Parent.Parent
local Packages = Plugin.Packages

local PermissionTypes = {}

export type PermissionResult = {
	action: string?,
	subjectId: string,
	subjectType: string,
}

export type PermissionResultList = { PermissionResult }

return PermissionTypes
