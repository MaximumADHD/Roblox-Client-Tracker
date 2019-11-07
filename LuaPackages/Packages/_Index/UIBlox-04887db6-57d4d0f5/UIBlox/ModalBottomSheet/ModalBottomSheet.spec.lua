return function()
	local ComponentRoot = script.Parent
	local UIBloxRoot = ComponentRoot.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local Images = require(UIBloxRoot.ImageSet.Images)

	local ModalBottomSheet = require(script.Parent.ModalBottomSheet)

	describe("lifecycle", function()
		it("should mount and unmount without issue", function()
			local element = mockStyleComponent({
				ModalBottomSheet = Roact.createElement(ModalBottomSheet, {
					buttonModels = {},
					screenWidth = 100,
					onDismiss = function() end,
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
					ModalBottomSheet = Roact.createElement(ModalBottomSheet, {
						onDismiss = function() end,
						screenWidth = 1000,
						buttonModels = {
							{
								icon = Images["buttons/buttonFill"],
								text = "someSampleText",
							},
						},
					}),
				}),
			})

			local instance = Roact.mount(element, folder)

			local modalBottomSheet = instanceRef.current.ModalBottomSheet
			local button = modalBottomSheet.SheetContent["button 1"]

			local icon = button.buttonContents:FindFirstChildWhichIsA("ImageLabel")
			expect(icon.ImageRectOffset).to.equal(Images["buttons/buttonFill"].ImageRectOffset)
			local text = button.buttonContents:FindFirstChildWhichIsA("TextLabel")
			expect(text.Text).to.equal("someSampleText")

			Roact.unmount(instance)
		end)
	end)
end