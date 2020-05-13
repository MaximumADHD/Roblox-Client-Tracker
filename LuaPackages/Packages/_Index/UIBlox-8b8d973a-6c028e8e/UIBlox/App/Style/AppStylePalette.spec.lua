return function()
	local Style = script.Parent
	local AppStylePalette = require(script.Parent.AppStylePalette)
	local validateStye = require(Style.Validator.validateStyle)

	it("should be able to create a style palette", function()
		local stylePalette = AppStylePalette.new()
		stylePalette:updateTheme("dark")
		stylePalette:updateFont("gotham")
		local appStyle = stylePalette:currentStyle()
		expect(validateStye(appStyle)).equal(true)
	end)

	it("should be able to create a style palette and be able to update theme", function()
		local stylePalette = AppStylePalette.new()
		stylePalette:updateTheme("dark")
		stylePalette:updateFont("gotham")
		local appStyle = stylePalette:currentStyle()
		expect(validateStye(appStyle)).equal(true)

		stylePalette:updateTheme("light")
		local newAppStyle = stylePalette:currentStyle()
		expect(validateStye(newAppStyle)).equal(true)
	end)

	it("should be able to create a style palette and be able to update theme", function()
		local stylePalette = AppStylePalette.new()
		stylePalette:updateTheme("dark")
		stylePalette:updateFont("gotham")
		local appStyle = stylePalette:currentStyle()
		expect(validateStye(appStyle)).equal(true)

		stylePalette:updateFont("gotham")
		local newAppStyle = stylePalette:currentStyle()
		expect(validateStye(newAppStyle)).equal(true)
	end)

	it("should be able to create a style palette and be able to merge an old one in", function()
		local stylePalette = AppStylePalette.new()
		stylePalette:updateTheme("dark")
		stylePalette:updateFont("gotham")
		local appStyle = stylePalette:currentStyle()
		expect(validateStye(appStyle)).equal(true)

		local newstylePalette = AppStylePalette.new(stylePalette)
		local newAppStyle = newstylePalette:currentStyle()
		expect(validateStye(newAppStyle)).equal(true)
	end)
end