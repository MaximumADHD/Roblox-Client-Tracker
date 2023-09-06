local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local jest = globals.jest

local watchForErrors = require(script.Parent.watchForErrors)

return function()
	local bindableEvent = Instance.new("BindableEvent")
	local mockScriptContext = {
		Error = bindableEvent.Event,
	}

	local errorSpy = jest.fn()
	bindableEvent.Event:Connect(function(...)
		errorSpy(...)
	end)

	local mockInstance = Instance.new("Folder")

	local mockAnalyticsService = {
		ReportCounter = jest.fn(),
	}

	local Analytics = require(script.Parent.Analytics)

	beforeAll(function()
		Analytics.with(mockAnalyticsService)
	end)

	afterEach(function()
		mockAnalyticsService.ReportCounter.mockClear()
	end)

	watchForErrors(mockScriptContext, mockInstance, true)

	it("should match instance", function()
		bindableEvent:Fire("error message", "stack trace", mockInstance)
		task.wait()

		expect(mockAnalyticsService.ReportCounter).toHaveBeenCalled()
	end)

	it("should match stacktrace when instance doesnt match", function()
		bindableEvent:Fire("error message", "blah blah ExperienceChat blah", Instance.new("Folder"))
		task.wait()

		expect(mockAnalyticsService.ReportCounter).toHaveBeenCalled()
	end)

	it("should not match for unrelated errors", function()
		bindableEvent:Fire("error message", "blah blah blah", Instance.new("Folder"))
		task.wait()

		expect(mockAnalyticsService.ReportCounter).never.toHaveBeenCalled()
	end)
end
