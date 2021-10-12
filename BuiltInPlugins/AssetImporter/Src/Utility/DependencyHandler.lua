--[[
    A suite of functions for handling dependency values (values of changed properties within the same list view that another setting may rely on)
--]]
local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local Dash = Framework.Dash
local assign = Dash.assign

-- WorldForward/WorldUp handling
local function getAxesToFilter(value)
    if value == Enum.NormalId.Top or value == Enum.NormalId.Bottom then
		return {Top = true, Bottom = true}
	elseif value == Enum.NormalId.Right or value == Enum.NormalId.Left then
		return {Right = true, Left = true}
	else
		return {Front = true, Back = true}
	end
end

local function getAxesFilterTable(depValues)
    local filterTable = {}
    for _, value in pairs(depValues) do
        assign(filterTable, getAxesToFilter(value))
    end
    return filterTable
end

local propertyToHandlerMap = {
    WorldForward = getAxesFilterTable,
    WorldUp = getAxesFilterTable,
}

local function dependentsHandler(propertyName, depValues)
    if propertyToHandlerMap[propertyName] then
        return propertyToHandlerMap[propertyName](depValues)
    end
    return nil
end

return dependentsHandler
