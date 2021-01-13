local TEST_DELAY_SECONDS = 0.1

local Workspace = game:GetService("Workspace")

local Plugin = script.Parent.Parent

local Element = require(Plugin.Rhodium.Element)
local Test = require(Plugin.RhodiumTestsDeprecated.Test)

local LoadAnimationData = require(Plugin.SrcDeprecated.Thunks.LoadAnimationData)
local UpdateRootInstance = require(Plugin.SrcDeprecated.Thunks.UpdateRootInstance)

local TestHelpers = {
	plugin = nil
}

function TestHelpers.init(plugin)
	assert(Workspace:FindFirstChild("Dummy"), "Rhodium Testing requires a 'Dummy' rig in Workspace.")
	TestHelpers.plugin = plugin
	TestHelpers.delay()
end

function TestHelpers.loadAnimation(store, animation)
	store:dispatch(UpdateRootInstance(Workspace.Dummy))
	store:dispatch(LoadAnimationData(animation))
end

function TestHelpers.delay()
	wait(TEST_DELAY_SECONDS)
end

function TestHelpers.clickInstance(instance)
	local element = Element.new(instance)
	element:click()
	TestHelpers.delay()
end

function TestHelpers.runTest(testRunner)
	local test = Test.new(TestHelpers.plugin)
	local success, result = test:run(testRunner)
	test:destroy()

	if not success then
		error(result)
	end
end

return TestHelpers
