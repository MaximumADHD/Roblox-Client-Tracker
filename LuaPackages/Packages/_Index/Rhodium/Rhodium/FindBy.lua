--!strict
local Rhodium = script:FindFirstAncestor("Rhodium")

local LuauTagUtils = require(Rhodium.Parent.LuauTagUtils)
local XPath = require(Rhodium.XPath)
local By = require(Rhodium.By)

local function FindBy(locatorType: By.By, ...: string): nil | Instance | { Instance }
	if locatorType == By.TAGS then
		local instance = LuauTagUtils.getUnique(...)
		return instance
	elseif locatorType == By.TAGS_ANY then
		local instance = LuauTagUtils.getAny(...)
		return instance
	elseif locatorType == By.TAGS_ALL then
		local instance = LuauTagUtils.getAll(...)
		return instance
	elseif locatorType == By.XPATH then
		local object = ...
		local path = XPath.new(object)
		local instance = path:getFirstInstance()
		return instance
	else
		error(string.format("Invalid locator type: %s", locatorType))
	end
end

-- once Luau has overloaded function resolution (planned in Q3 2022), we
-- should be able to provide a more accurate type for the FindBy function.

-- type FindBy = ("tags", ...string) -> Instance
-- 	& ("xpath", string, Instance?) -> Instance
-- 	& ("tags_any", ...string) -> { Instance }
-- 	& ("tags_all", ...string) -> { Instance }

-- return (FindBy :: any) :: FindBy

return FindBy
