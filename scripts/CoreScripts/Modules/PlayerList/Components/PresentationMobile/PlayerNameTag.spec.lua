return function()
	local Players = game:GetService("Players")
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)

	local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals)
	local expect = JestGlobals.expect

	local waitUntil = require(CorePackages.Workspace.Packages.TestUtils).waitUntil

	local Components = script.Parent.Parent
	local PlayerList = Components.Parent
	local CreateLayoutValues = require(PlayerList.CreateLayoutValues)

	local TestProviders = require(PlayerList.TestProviders)

	local PlayerNameTag = require(script.Parent.PlayerNameTag)

	local FFlagRefactorPlayerNameTag = require(PlayerList.Flags.FFlagRefactorPlayerNameTag)


	it("should create and destroy without errors", function()
		local container = Instance.new("Folder")

		local element = Roact.createElement(TestProviders, {}, {
			PlayerNameTag = Roact.createElement(PlayerNameTag, {
				player = Players.LocalPlayer :: Player,
				isTitleEntry = false,
				isHovered = false,

				textStyle = {
					Color = Color3.new(1, 1, 1),
					Transparency = 1,
				},
				textFont = {
					Size = 20,
					MinSize = 20,
					Font = Enum.Font.Gotham,
				},
			})
		})
		local instance = Roact.mount(element, container)

		if FFlagRefactorPlayerNameTag then
			waitUntil(function()
				Roact.act(function() end)
				local nameTag = container:FindFirstChildWhichIsA("TextLabel", true) :: TextLabel
				expect(nameTag.Text).toEqual("combinedName12345678")
				return true
			end, 1)
		end

		Roact.unmount(instance)
	end)

	it("should create and destroy without errors tenfoot", function()
		local layoutValues = CreateLayoutValues(true)

		local container = Instance.new("Folder")

		local element = Roact.createElement(TestProviders, {
			layoutValues = layoutValues
		}, {
			PlayerNameTag = Roact.createElement(PlayerNameTag, {
				player = Players.LocalPlayer :: Player,
				isTitleEntry = true,
				isHovered = true,

				textStyle = layoutValues.DefaultTextStyle,
				textFont = {
					Size = 32,
					MinSize = 32,
					Font = Enum.Font.Gotham,
				},
			})
		})
		local instance = Roact.mount(element, container)

		if FFlagRefactorPlayerNameTag then
			waitUntil(function()
				Roact.act(function() end)
				local nameTag = container:FindFirstChildWhichIsA("TextLabel", true) :: TextLabel
				expect(nameTag.Text).toEqual("combinedName12345678")
				return true
			end, 1)
		end

		Roact.unmount(instance)
	end)
end
