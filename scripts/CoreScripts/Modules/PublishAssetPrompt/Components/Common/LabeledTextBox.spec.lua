return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local UIBlox = require(CorePackages.UIBlox)

	local LabeledTextBox = require(script.Parent.LabeledTextBox)

	describe("LabeledTextBox", function()
		it("should create and destroy without errors", function()
			local element = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				LabeledTextBox = Roact.createElement(LabeledTextBox, {
					labelText = "Test",
					onTextUpdated = function() end,
					textBoxRef = Roact.createRef(),
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
