return function()
	local Style = script.Parent
	local Core = Style.Parent
	local UIBlox = Core.Parent
	--Note: remove along with styleRefactorConfig
	local UIBloxConfig = require(UIBlox.UIBloxConfig)
	local styleRefactorConfig = UIBloxConfig.styleRefactorConfig

	if not styleRefactorConfig then
		return
	end
	---
	local Packages = UIBlox.Parent
	local Roact = require(Packages.Roact)

	local StyleProvider = require(script.Parent.StyleProvider)

	local testTheme = {
		Background1 = {
			Color = Color3.fromRGB(0, 0, 0),
			Transparency = 0,
		},
		Background2 = {
			Color = Color3.fromRGB(0, 0, 0),
			Transparency = 0,
		},
		Background3 = {
			Color = Color3.fromRGB(0, 0, 0),
			Transparency = 0,
		},
		Background4 = {
			Color = Color3.fromRGB(0, 0, 0),
			Transparency = 0.3, -- Alpha 0.7
		},
	}

	local testFont = {
		Normal = {
			Font = Enum.Font.GothamSemibold,
			RelativeSize = 1,
			RelativeMinSize = 1,
		},
		Title = {
			Font = Enum.Font.GothamBold,
			RelativeSize = 1,
			RelativeMinSize = 1,
		},
	}

	local testStyle = {
		Theme = testTheme,
		Font = testFont,
	}

	it("should create and destroy without errors", function()
		local someComponent = Roact.createElement("TextLabel", {
			Text = "test",
		})
		local styleProvider = Roact.createElement(StyleProvider, {
			style = testStyle,
		}, {
			SomeComponent = someComponent,
		})

		local roactInstance = Roact.mount(styleProvider)
		Roact.unmount(roactInstance)
	end)
end