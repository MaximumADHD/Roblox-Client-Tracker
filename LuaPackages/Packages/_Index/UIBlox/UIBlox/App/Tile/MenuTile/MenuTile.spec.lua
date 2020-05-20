return function()
	local MenuTileRoot = script.Parent
	local Tile = MenuTileRoot.Parent
	local App = Tile.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local Images = require(App.ImageSet.Images)
	local MenuTile = require(MenuTileRoot.MenuTile)

	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local function onActivatedDummy() end

	describe("mount/unmount", function()
		it("should mount and unmount with default properties", function()
			local menuTileWithStyle = mockStyleComponent({
				MenuTileTest = Roact.createElement(MenuTile, {
					-- required
					icon = Images["icons/menu/shop_large"],
					onActivated = onActivatedDummy,
					title = "Shop",
				})
			})
			local handle = Roact.mount(menuTileWithStyle)
			expect(handle).to.be.ok()
			Roact.unmount(handle)
		end)

		it("should mount and unmount with valid properties", function()
			local menuTileWithStyle = mockStyleComponent({
				MenuTileTest = Roact.createElement(MenuTile, {
					-- required
					icon = Images["icons/menu/shop_large"],
					onActivated = onActivatedDummy,
					title = "Shop",
					-- optional
					badgeValue = "0",
					layoutOrder = 2,
					position = UDim2.new(0, 50, 0,100),
					size = UDim2.new(1, 30, 1, 50),
				})
			})
			local handle = Roact.mount(menuTileWithStyle)
			expect(handle).to.be.ok()
			Roact.unmount(handle)
		end)

		-- skipping this until https://jira.rbx.com/browse/MOBLUAPP-2424 is merged to CI
		itSKIP("mount should throw when created with invalid properties", function()
			local function expectToThrowForInvalidProps(props)
				-- make sure we start with valid props
				local testProps = {
					icon = Images["icons/menu/shop_large"],
					onActivated = onActivatedDummy,
					title = "Shop"
				}
				-- add/replace props passed in
				for name, _ in pairs(props) do
					testProps[name] = props[name]
				end

				local menuTileWithStyle = mockStyleComponent({
					MenuTileTest = Roact.createElement(MenuTile, testProps)
				})

				expect(function()
					Roact.mount(menuTileWithStyle)
				end).to.throw()
			end

			expectToThrowForInvalidProps({ icon = 1 })
			expectToThrowForInvalidProps({ onActivated= 2 })
			expectToThrowForInvalidProps({ title = 3 })
			expectToThrowForInvalidProps({ badgeValue = onActivatedDummy })
			expectToThrowForInvalidProps({ layoutOrder = "3" })
			expectToThrowForInvalidProps({ position = 3 })
			expectToThrowForInvalidProps({ size = 3 })
			expectToThrowForInvalidProps({ NotInTheInterface = "Really it is not there" })
		end)
	end)
end
