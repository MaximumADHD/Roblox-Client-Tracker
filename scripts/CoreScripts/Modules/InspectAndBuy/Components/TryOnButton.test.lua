local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)

local InspectAndBuyFolder = script.Parent.Parent
local TestContainer = require(InspectAndBuyFolder.Test.TestContainer)

local TryOnButton = require(script.Parent.TryOnButton)

it("should create and destroy without errors", function()
	local element = Roact.createElement(TestContainer, nil, {
		Roact.createElement(TryOnButton, {
			tryOnButtonRef = Roact.createRef(),
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
