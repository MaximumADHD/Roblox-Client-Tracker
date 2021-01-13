return function()
	local KnobFolder = script.Parent
	local Control = KnobFolder.Parent
	local App = Control.Parent
	local UIBlox = App.Parent
	local Roact = require(UIBlox.Parent.Roact)
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local Knob = require(script.Parent.Knob)

	describe("lifecycle", function()
		it("should mount and unmount without issue with only required props", function()
			local element = mockStyleComponent({
				Knob1 = Roact.createElement(Knob.ContextualKnob,{
					onActivated = print
				}),
				Knob2 = Roact.createElement(Knob.SystemKnob,{
					onActivated = print
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)

			Roact.unmount(instance)
			folder:Destroy()
		end)

	end)
end