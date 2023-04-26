local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local globals = require(Packages.Dev.Jest).Globals
local expect = globals.expect

local waitForFirst = require(script.Parent.waitForFirst)

return function()
	it("SHOULD wait for the first event to be fired", function()
		local didFire = false
		local function fireEvent()
			didFire = true
		end

		local bindableEvent = Instance.new("BindableEvent")
		bindableEvent.Name = "MockBindableEvent"
		bindableEvent.Event:Connect(fireEvent)

		task.spawn(function()
			waitForFirst(bindableEvent.Event)
			task.wait()
			expect(didFire).toEqual(true)
		end)

		bindableEvent:Fire()
	end)
end
