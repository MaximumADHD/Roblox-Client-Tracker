return function()
	local StylePalette = require(script.Parent.StylePalette)

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
		Normal = Enum.Font.Gotham,
		Title = Enum.Font.GothamBold,
	}

	it("should connect and fire signal for style change without errors", function()
		local testStyle = {
			Theme = testTheme,
			Font = testFont,
		}
		local appStyle = StylePalette.new(testStyle)

		expect(appStyle.style).to.be.a("table")

		local testValue = "some test theme"
		local testTable = {
			Theme = testValue,
		}
		local disconnect = appStyle.signal:subscribe(function(newValues)
			expect(newValues).to.be.a("table")
			expect(newValues.Theme).to.equal(testValue)
		end)

		appStyle:update(testTable)

		expect(appStyle.style).to.be.a("table")
		expect(appStyle.style.Theme).to.equal(testValue)
		disconnect()
	end)

end