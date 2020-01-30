return function()
	local FFlagLuaInviteModalEnabled = settings():GetFFlag("LuaInviteModalEnabledV384")
	if not FFlagLuaInviteModalEnabled then
		return
	end

	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)

	local ShareGameAppReducer = require(script.Parent.Parent.AppReducer)

	local FullModalShareGameComponent = require(script.Parent.FullModalShareGameComponent)

	local function createStore()
		return Rodux.Store.new(ShareGameAppReducer, nil, { Rodux.thunkMiddleware })
	end

	describe("createElement", function()
		it("should mount and unmount without issue", function()
			local fullModalElement = Roact.createElement(FullModalShareGameComponent, {
				store = createStore(),
			})
			local fullModalInstance = Roact.mount(fullModalElement)
			Roact.unmount(fullModalInstance)
		end)
	end)

	describe("mount and reconcile w/ isVisible", function()
		it("should mount and reconcile without issue", function()
			local function createModal(isVisible)
				return Roact.createElement(FullModalShareGameComponent, {
					store = createStore(),
					isVisible = isVisible,
				})
			end

			local folder = Instance.new("Folder")
			local instance = Roact.mount(createModal(false), folder)

			expect(instance).to.be.ok()
			expect(folder:FindFirstChildOfClass("ScreenGui", true).Enabled).to.equal(false)


			local newInstance = Roact.update(instance, createModal(true))

			expect(newInstance).to.be.ok()
			expect(folder:FindFirstChildOfClass("ScreenGui", true).Enabled).to.equal(true)
		end)
	end)

end