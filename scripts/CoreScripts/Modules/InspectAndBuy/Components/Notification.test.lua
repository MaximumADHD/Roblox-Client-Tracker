local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local Roact = require(CorePackages.Packages.Roact)

local InspectAndBuyFolder = script.Parent.Parent
local TestContainer = require(InspectAndBuyFolder.Test.TestContainer)

local Notification = require(script.Parent.Notification)

it("should create and destroy without errors", function()
	local element = Roact.createElement(TestContainer, nil, {
		Roact.createElement(Notification, {
			noticeKey = "InGame.InspectMenu.Description.SingleBundleNotice",
		}),
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
