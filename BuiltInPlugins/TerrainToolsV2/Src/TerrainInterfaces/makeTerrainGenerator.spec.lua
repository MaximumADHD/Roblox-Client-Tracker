local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers

local MockTerrain = require(TestHelpers.MockTerrain)

local makeTerrainGenerator = require(script.Parent.makeTerrainGenerator)

return function()
	local terrain = MockTerrain.new()
	local generateSettings = {
		position = Vector3.new(0, 0, 0),
		size = Vector3.new(1024, 512, 1025),
		biomeSelection = {},
		biomeSize = 100,
		haveCaves = false,
		seed = 0,
	}

	it("should return a table with methods and signals", function()
		local generator = makeTerrainGenerator(terrain, generateSettings)

		expect(generator.start).to.be.ok()
		expect(generator.pause).to.be.ok()
		expect(generator.resume).to.be.ok()
		expect(generator.cancel).to.be.ok()
		expect(generator.progressSignal).to.be.ok()
		expect(generator.getProgress).to.be.ok()
		expect(generator.pauseSignal).to.be.ok()
		expect(generator.isPaused).to.be.ok()
		expect(generator.finishSignal).to.be.ok()
		expect(generator.isFinished).to.be.ok()
	end)

	it("should require a terrain instance", function()
		expect(function()
			makeTerrainGenerator(nil, generateSettings)
		end).to.throw()
	end)

	it("should require a settings table", function()
		expect(function()
			makeTerrainGenerator(terrain, nil)
		end).to.throw()
	end)
end
