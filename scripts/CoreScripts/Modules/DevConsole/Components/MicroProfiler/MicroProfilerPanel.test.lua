local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it

local Roact = require(CorePackages.Packages.Roact)

local MicroProfilerPanel = require(script.Parent.MicroProfilerPanel)

it("should create and destroy without errors", function()
	local element = Roact.createElement(MicroProfilerPanel, {
		Sections = {
			{
				Name = "Section_01",
				Rows = { {} },
			},
			{
				Name = "Section_02",
				Rows = { {} },
			},
		},
	})

	local instance = Roact.mount(element)
	Roact.unmount(instance)
end)
