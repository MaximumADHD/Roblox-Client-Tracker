return function()
	local Plugin = script.Parent.Parent.Parent
	local settingFromState = require(Plugin.Src.Networking.settingFromState)

	it("should return the state itself if there is no Changed value", function()
		local state = {
			Current = {
				Setting = "Value",
			},
			Changed = {},
		}

		expect(settingFromState(state, "Setting")).to.equal("Value")
	end)

	it("should return the Changed value if it exists", function()
		local state = {
			Current = {
				Setting = "Value",
			},
			Changed = {
				Setting = "OtherValue",
			},
		}

		expect(settingFromState(state, "Setting")).to.equal("OtherValue")
	end)

	it("should return nil if setting doesn't exist", function()
		local state = {
			Current = {},
			Changed = {},
		}

		expect(settingFromState(state, "Setting")).never.to.be.ok()
	end)
end