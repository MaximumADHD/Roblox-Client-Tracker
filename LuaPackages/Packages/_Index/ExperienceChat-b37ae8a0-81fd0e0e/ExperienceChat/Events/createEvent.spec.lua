local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local jest = globals.jest

local createEvent = require(script.Parent.createEvent)

return function()
	describe("given a bindable event", function()
		local bindableEvent = Instance.new("BindableEvent")
		local boundEventCreator = createEvent(bindableEvent)

		describe("given an action creator", function()
			local myEvent = boundEventCreator(function(arg)
				return { foo = "bar", arg = arg }
			end)

			it("should fire the event with the new action, respecting args", function()
				local spy = jest.fn()
				bindableEvent.Event:Connect(function(action)
					spy(action)
				end)

				myEvent("hello world")
				task.wait()

				expect(spy).toHaveBeenCalledWith({ foo = "bar", arg = "hello world" })
			end)
		end)
	end)
end
