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

	local StyleProvider = require(Style.StyleProvider)

	local withStyle = require(script.Parent.withStyle)

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
		local someTestElement = Roact.Component:extend("someTestElement")
		-- luacheck: ignore unused argument self
		function someTestElement:render()
			return withStyle(function(style)
				expect(style).to.be.a("table")
				return Roact.createElement("Frame", {
					Size = UDim2.new(0, 100, 0, 100),
				})
			end)
		end

		local element = Roact.createElement(StyleProvider, {
			style = testStyle,
		}, {
			someTestElement = Roact.createElement(someTestElement),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end