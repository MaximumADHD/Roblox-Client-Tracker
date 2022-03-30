local Plugin = script.Parent.Parent.Parent

local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local TestHelpers = Framework.TestHelpers
local MockToastNotificationService = TestHelpers.Instances.MockToastNotificationService
local provideMockContext = TestHelpers.provideMockContext

local getFFlagPivotEditorFixTests = require(Plugin.Src.Flags.getFFlagPivotEditorFixTests)

local TestHelper = require(Plugin.Src.Utility.TestHelper)
local ToastNotification = require(Plugin.Src.Utility.ToastNotification)

local TestRunner = {}

local function createContextItems(store)
	store = store or TestHelper.createTestStore()
	return {
		ContextServices.Store.new(store),
		ToastNotification.new(MockToastNotificationService.new()),
	}, store
end

function TestRunner.runComponentTest(component, testRunner, store)
	assert(getFFlagPivotEditorFixTests(), "Requires FFlagPivotEditorFixTests")

	local container = TestHelper.getTempScreenGui()
	local contextItems, storeObject = createContextItems(store)
	local element = provideMockContext(contextItems, {
		test = component
	})
	local handle = Roact.mount(element, container)

	local success, result = pcall(function()
		if testRunner then
			testRunner(container, storeObject)
		end
	end)

	Roact.unmount(handle)

	if not store then
		storeObject:destruct()
	end

	for _, item in ipairs(contextItems) do
		item:destroy()
	end

	if not success then
		error(result)
	end
end

return TestRunner
