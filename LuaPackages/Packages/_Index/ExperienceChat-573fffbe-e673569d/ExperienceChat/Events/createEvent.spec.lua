local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect
local jest = globals.jest

local createEvent = require(script.Parent.createEvent)

return function()
	describe("given an action creator and bindable event", function()
		local fireAction = function(bindableEvent)
			local boundEventCreator = createEvent(bindableEvent)
			local myEvent = boundEventCreator(function(arg)
				return { foo = "bar", arg = arg }
			end)

			local spy = jest.fn()
			bindableEvent.Event:Connect(function(action)
				spy(action)
			end)

			myEvent("hello world")
			task.wait()

			return spy
		end

		it("should not fire action when bindableEvent does not have isConnected attribute", function()
			local bindableEvent = Instance.new("BindableEvent")

			local spy = fireAction(bindableEvent)
			expect(spy).never.toHaveBeenCalled()
		end)

		it("should always fire action when bindableEvent has isConnected attribute", function()
			local bindableEvent = Instance.new("BindableEvent")
			bindableEvent:SetAttribute("isConnected", true)

			local spy = fireAction(bindableEvent)
			expect(spy).toHaveBeenCalledWith({ foo = "bar", arg = "hello world" })
		end)
	end)
end
