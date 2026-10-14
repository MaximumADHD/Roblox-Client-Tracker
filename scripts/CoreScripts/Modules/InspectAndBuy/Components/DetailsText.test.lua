local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)

local InspectAndBuyFolder = script.Parent.Parent
local TestContainer = require(InspectAndBuyFolder.Test.TestContainer)

local DetailsText = require(script.Parent.DetailsText)

it("should create and destroy without errors", function()
	local element = Roact.createElement(TestContainer, nil, {
		DetailsText = Roact.createElement(DetailsText, {}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
