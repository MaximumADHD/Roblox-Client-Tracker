-- TODO: RIDE-3497 TestHarness should discover tests in the datamodel
local Plugin = script.Parent.Parent.Parent

local Test = require(Plugin.Src.Classes.Test)
local CacheTest = require(Plugin.Src.Actions.CacheTest)

return function(instance)
	return function(store)
		store:dispatch(CacheTest(Test.mock("FakeTest")))
	end
end
