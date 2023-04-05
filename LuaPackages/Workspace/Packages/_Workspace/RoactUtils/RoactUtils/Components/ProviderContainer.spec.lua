return function()
	local RoactUtils = script:FindFirstAncestor("RoactUtils")
	local Packages = RoactUtils.Parent
	local React = require(Packages.React)
	local ReactRoblox = require(Packages.Dev.ReactRoblox)

	local ProviderContainer = require(script.Parent.ProviderContainer)

	local function Foo()
		return React.createElement("Frame")
	end

	it("should create and destroy without errors, without providers", function()
		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)
		local element = React.createElement(ProviderContainer, {})

		ReactRoblox.act(function()
			root:render(element)
		end)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)

	it("should create and destroy without errors, with providers", function()
		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)
		local element = React.createElement(ProviderContainer, {
			providers = {
				{ class = Foo },
			},
		})

		ReactRoblox.act(function()
			root:render(element)
		end)

		ReactRoblox.act(function()
			root:unmount()
		end)
	end)
end
