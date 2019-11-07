return function()
	local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
	local Root = script.Parent.Parent.Parent
	local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")
	local Roact = require(LuaPackages.Roact)

	local PromptState = require(script.Parent.Parent.Parent.PromptState)

	local UnitTestContainer = require(script.Parent.Parent.Parent.Test.UnitTestContainer)

	local PromptButtons = require(script.Parent.PromptButtons)
	PromptButtons = PromptButtons.getUnconnected()

	local function noop()
	end

	it("should create and destroy without errors with one button", function()
		local element = Roact.createElement(UnitTestContainer, nil, {
			Roact.createElement(PromptButtons, {
				layoutOrder = 1,
				onClose = noop,
				promptState = PromptState.PurchaseComplete,
				price = 1,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors with two buttons", function()
		local element = Roact.createElement(UnitTestContainer, nil, {
			Roact.createElement(PromptButtons, {
				layoutOrder = 1,
				onClose = noop,
				promptState = PromptState.PromptPurchase,
				price = 1,
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end