return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Scales = require(Modules.LuaApp.Reducers.AvatarEditor.Scales)
	local SetScales = require(Modules.LuaApp.Actions.SetScales)
	local SetAvatarHeight = require(Modules.LuaApp.Actions.SetAvatarHeight)
	local SetAvatarWidth = require(Modules.LuaApp.Actions.SetAvatarWidth)
	local SetAvatarHeadSize = require(Modules.LuaApp.Actions.SetAvatarHeadSize)

	it("all scales should be 1.0 by default", function()
		local state = Scales(nil, {})

		expect(state).to.be.a("table")
		expect(state.Height).to.equal(1.00)
		expect(state.Width).to.equal(1.00)
		expect(state.Depth).to.equal(1.00)
		expect(state.Head).to.equal(1.00)
	end)

	it("should be updated using SetScales", function()
		local state = Scales(nil, {})

        state = Scales(state, SetScales({
			Height = 2.00,
			Width = 1.50,
			Depth = 1.00,
			Head = 0.50
		}))

		expect(state).to.be.a("table")
		expect(state.Height).to.equal(2.00)
		expect(state.Width).to.equal(1.50)
		expect(state.Depth).to.equal(1.00)
		expect(state.Head).to.equal(0.50)
	end)

    it("only height should be updated using SetAvatarHeight", function()
        local state = Scales(nil, {})

        state = Scales(state, SetAvatarHeight(1.20))

        expect(state).to.be.a("table")
        expect(state.Height).to.equal(1.20)
        expect(state.Width).to.equal(1.00)
        expect(state.Depth).to.equal(1.00)
        expect(state.Head).to.equal(1.00)
    end)

    it("only headsize should be updated using SetAvatarHeadSize", function()
        local state = Scales(nil, {})

        state = Scales(state, SetAvatarHeadSize(0.80))

        expect(state).to.be.a("table")
        expect(state.Height).to.equal(1.00)
        expect(state.Width).to.equal(1.00)
        expect(state.Depth).to.equal(1.00)
        expect(state.Head).to.equal(0.80)
    end)

    it("only width and depth should be updated using SetAvatarWidth", function()
        local state = Scales(nil, {})

        state = Scales(state, SetAvatarWidth(0.75, 1.05))

        expect(state).to.be.a("table")
        expect(state.Height).to.equal(1.00)
        expect(state.Width).to.equal(0.75)
        expect(state.Depth).to.equal(1.05)
        expect(state.Head).to.equal(1.00)
    end)

	it("should be unchanged by other actions", function()
		local state = Scales(nil, {})

		state = Scales(state, {
            type = "Do the thing!",
            scales =
            {
                Height = 2.00,
                Width = 1.50,
                Depth = 1.25,
                Head = 0.50
            }
		})

        expect(state).to.be.a("table")
        expect(state.Height).to.equal(1.00)
        expect(state.Width).to.equal(1.00)
        expect(state.Depth).to.equal(1.00)
        expect(state.Head).to.equal(1.00)
	end)
end