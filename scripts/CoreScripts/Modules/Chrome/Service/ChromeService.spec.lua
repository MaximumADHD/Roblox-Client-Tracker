return function()
	local ChromeService = require(script.Parent.ChromeService)
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	describe("Unibar Layout Signal", function()
		it("non-null initial values", function()
			local chromeService: ChromeService.ChromeService = ChromeService.new()
			local layoutSignal = chromeService:layout()
			local layout = layoutSignal:get()

			expect(layoutSignal)
			expect(layout)
			local count = 0
			for k, v in ChromeService.MenuStatus do
				count = count + 1
				expect(layout[v])
			end
			expect(count > 0).toBeTruthy()
		end)

		it("sends update signals", function()
			local chromeService: ChromeService.ChromeService = ChromeService.new()
			local layoutSignal = chromeService:layout()

			local layoutValue
			layoutSignal:connect(function(layout)
				layoutValue = layout
			end)

			chromeService:setMenuAbsolutePosition(Vector2.new(100, 200))

			expect(layoutValue)
			for k, rect in layoutValue do
				expect(rect.Min.X).toBe(100)
				expect(rect.Min.Y).toBe(200)
			end
		end)

		it("sends minimal signal updates", function()
			local chromeService: ChromeService.ChromeService = ChromeService.new()
			local layoutSignal = chromeService:layout()

			local count = 0
			layoutSignal:connect(function(layout)
				count = count + 1
			end)

			chromeService:setMenuAbsolutePosition(Vector2.new(100, 200))
			chromeService:setMenuAbsolutePosition(Vector2.new(100, 200))
			chromeService:setMenuAbsolutePosition(Vector2.new(100, 200))
			expect(count).toBe(1)

			chromeService:setMenuAbsolutePosition(Vector2.new(200, 200))
			chromeService:setMenuAbsolutePosition(Vector2.new(200, 200))
			expect(count).toBe(2)

			chromeService:setMenuAbsoluteSize(Vector2.new(500, 500), Vector2.new(1000, 1000))
			chromeService:setMenuAbsoluteSize(Vector2.new(500, 500), Vector2.new(1000, 1000))
			expect(count).toBe(3)
			chromeService:setMenuAbsoluteSize(Vector2.new(500, 600), Vector2.new(1000, 1000))
			expect(count).toBe(4)
		end)

		it("correctly calculated Rect", function()
			local chromeService: ChromeService.ChromeService = ChromeService.new()
			local layoutSignal = chromeService:layout()

			chromeService:setMenuAbsolutePosition(Vector2.new(100, 200))
			chromeService:setMenuAbsoluteSize(Vector2.new(500, 50), Vector2.new(1000, 50))

			local layout = layoutSignal:get()
			expect(layout[ChromeService.MenuStatus.Closed].Width).toBe(500)
			expect(layout[ChromeService.MenuStatus.Open].Width).toBe(1000)
			expect(layout[ChromeService.MenuStatus.Closed].Min.X).toBe(100)
			expect(layout[ChromeService.MenuStatus.Open].Min.X).toBe(100)
			expect(layout[ChromeService.MenuStatus.Closed].Min.Y).toBe(200)
			expect(layout[ChromeService.MenuStatus.Open].Min.Y).toBe(200)
		end)
	end)
end
