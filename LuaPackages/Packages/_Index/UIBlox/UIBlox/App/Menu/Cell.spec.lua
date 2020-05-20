return function()
	local Menu = script.Parent
	local App = Menu.Parent
	local UIBloxRoot = App.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local Images = require(UIBloxRoot.App.ImageSet.Images)

	local Cell = require(script.Parent.Cell)

	describe("lifecycle", function()
		it("should mount and unmount without issue with only required props", function()
			local element = mockStyleComponent({
				Cell = Roact.createElement(Cell, {
					text = "Test String",
					onActivated = function()
						print("Test")
					end,

					elementHeight = 50,
					hasRoundTop = true,
					hasRoundBottom = true,
					hasDivider = false,

					layoutOrder = 1,
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)

			Roact.unmount(instance)
			folder:Destroy()
		end)

		it("should mount and unmount without issue with all props", function()
			local element = mockStyleComponent({
				Cell = Roact.createElement(Cell, {
					icon = Images["component_assets/circle_17"],
					text = "Test String",
					keyCodeLabel = Enum.KeyCode.Tab,
					selected = false,
					onActivated = function()
						print("Test")
					end,
					iconColorOverride = Color3.new(1, 0, 0),
					textColorOverride = Color3.new(1, 0, 0),

					elementHeight = 60,
					hasRoundTop = false,
					hasRoundBottom = false,
					hasDivider = true,

					layoutOrder = 4,
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)

			Roact.unmount(instance)
			folder:Destroy()
		end)

		it("should correctly hold what it's given", function()
			local instanceRef = Roact.createRef()

			local folder = Instance.new("Folder")
			local element =  mockStyleComponent({
				Frame = Roact.createElement("Frame", {
					[Roact.Ref] = instanceRef,
				}, {
					Cell = Roact.createElement(Cell, {
						text = "someSampleText",
						icon = Images["component_assets/circle_17"],
						onActivated = function()
							print("Test")
						end,

						elementHeight = 50,
						hasRoundTop = true,
						hasRoundBottom = true,
						hasDivider = false,

						layoutOrder = 13,
					}),
				}),
			})

			local instance = Roact.mount(element, folder)

			local cell = instanceRef.current.Cell
			local icon = cell.LeftAlignedContent.Icon
			local text = cell.LeftAlignedContent.Text

			expect(cell.LayoutOrder).to.equal(13)
			expect(icon.ImageRectOffset).to.equal(Images["component_assets/circle_17"].ImageRectOffset)
			expect(text.Text).to.equal("someSampleText")

			Roact.unmount(instance)
		end)
	end)
end