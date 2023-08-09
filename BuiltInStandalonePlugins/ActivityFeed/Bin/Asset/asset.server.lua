if not plugin then
	return
end

-- we need this so that the unit tests do not timeout
local main = script.Parent.Parent.Parent
local TestLoader = require(main.Packages.TestLoader)
TestLoader.launch("ActivityFeed", main.Src)
if TestLoader.isCli() then
	return
end
