return function()
	local Bar = script.Parent
	local Core = Bar.Parent
	local UIBlox = Core.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)

	local ThreeSectionBar = require(script.Parent.ThreeSectionBar)

	describe("a header with no children", function()
		it("should mount and unmount without issue", function()
			local folder = Instance.new("Folder")
			local tree = Roact.createElement(ThreeSectionBar)
			local instance = Roact.mount(tree, folder)

			Roact.unmount(instance)
			folder:Destroy()
		end)

		it("should accept empty tables instead of nil without issue", function()
			local folder = Instance.new("Folder")
			local tree = Roact.createElement(ThreeSectionBar,
			{
				renderLeftChildren = function()
					return {}
				end,
				renderCenterChildren = function()
					return {}
				end,
				renderRightChildren = function()
					return {}
				end,
			})
			local instance = Roact.mount(tree, folder)

			Roact.unmount(instance)
			folder:Destroy()
		end)

		it("should fill its container by default", function()
			local mockWidth = 182
			local mockHeight = 374

			local frame = Instance.new("Frame")
			frame.Size = UDim2.new(0, mockWidth, 0, mockHeight)

			local tree = Roact.createElement(ThreeSectionBar)
			local instance = Roact.mount(tree, frame)

			local guiObject = frame:FindFirstChildWhichIsA("GuiObject", true)
			expect(guiObject.AbsoluteSize.X).to.equal(mockWidth)
			expect(guiObject.AbsoluteSize.Y).to.equal(mockHeight)

			Roact.unmount(instance)
			frame:Destroy()
		end)

		it("should respect the Size property", function()
			local mockWidth = 182
			local mockHeight = 374
			local newHeight = 100

			local frame = Instance.new("Frame")
			frame.Size = UDim2.new(0, mockWidth, 0, mockHeight)

			local tree = Roact.createElement(ThreeSectionBar, {
				Size = UDim2.new(0.5, 0, 0, newHeight),
			})
			local instance = Roact.mount(tree, frame)

			local guiObject = frame:FindFirstChildWhichIsA("GuiObject", true)
			expect(guiObject.AbsoluteSize.X).to.equal(mockWidth / 2)
			expect(guiObject.AbsoluteSize.Y).to.equal(newHeight)

			Roact.unmount(instance)
			frame:Destroy()
		end)

		it("should pass on other Frame properties", function()
			local folder = Instance.new("Folder")

			local position = UDim2.new(0.5, 100, 0.25, 200)
			local color = Color3.fromRGB(50, 100, 150)
			local transparency = 0.25

			local instance = Roact.mount(Roact.createElement(ThreeSectionBar, {
				Position = position,
				BackgroundColor3 = color,
				BackgroundTransparency = transparency,
			}), folder)

			local frame = folder:FindFirstChildWhichIsA("Frame", true)
			expect(frame.Position).to.equal(position)
			expect(frame.BackgroundColor3).to.equal(color)
			expect(frame.BackgroundTransparency).to.equal(transparency)

			Roact.unmount(instance)
			folder:Destroy()
		end)
	end)

	describe("a header with left children", function()
		it("should mount and unmount without issue", function()
			local folder = Instance.new("Folder")
			local left = Roact.createElement("Frame")
			local tree = Roact.createElement(ThreeSectionBar, {
				renderLeftChildren = function()
					return {
						left = left,
					}
				end,
			})
			local instance = Roact.mount(tree, folder)

			local leftSection = folder:FindFirstChild("left", true)
			expect(leftSection).to.be.ok()

			Roact.unmount(instance)
			folder:Destroy()
		end)
	end)

	describe("a header with right children", function()
		it("should mount and unmount without issue", function()
			local folder = Instance.new("Folder")
			local right = Roact.createElement("Frame")
			local tree = Roact.createElement(ThreeSectionBar, {
				renderRightChildren = function()
					return {
						right = right,
					}
				end,
			})
			local instance = Roact.mount(tree, folder)

			local rightSection = folder:FindFirstChild("right", true)
			expect(rightSection).to.be.ok()

			Roact.unmount(instance)
			folder:Destroy()
		end)
	end)

	describe("a header with left and right children", function()
		it("should mount and unmount without issue", function()
			local folder = Instance.new("Folder")
			local left = Roact.createElement("Frame")
			local right = Roact.createElement("Frame")
			local tree = Roact.createElement(ThreeSectionBar, {
				renderLeftChildren = function()
					return {
						left = left,
					}
				end,
				renderRightChildren = function()
					return {
						right = right
					}
				end,
			})
			local instance = Roact.mount(tree, folder)

			local leftSection = folder:FindFirstChild("left", true)
			expect(leftSection).to.be.ok()
			local rightSection = folder:FindFirstChild("right", true)
			expect(rightSection).to.be.ok()

			Roact.unmount(instance)
			folder:Destroy()
		end)

		it("should fill its container by default", function()
			local mockWidth = 182
			local mockHeight = 374

			local frame = Instance.new("Frame")
			frame.Size = UDim2.new(0, mockWidth, 0, mockHeight)

			local left = Roact.createElement("Frame", {Size = UDim2.new(0, 50, 0, 50)})
			local right = Roact.createElement("Frame", {Size = UDim2.new(0, 50, 0, 50)})

			local tree = Roact.createElement(ThreeSectionBar, {
				renderLeftChildren = function()
					return {
						left = left,
					}
				end,
				renderRightChildren = function()
					return {
						right = right,
					}
				end,
			})
			local instance = Roact.mount(tree, frame)

			local guiObject = frame:FindFirstChildWhichIsA("GuiObject", true)
			expect(guiObject.AbsoluteSize.X).to.equal(mockWidth)
			expect(guiObject.AbsoluteSize.Y).to.equal(mockHeight)

			Roact.unmount(instance)
			frame:Destroy()
		end)

		it("should respect the Size property", function()
			local mockWidth = 182
			local mockHeight = 374
			local newHeight = 100

			local frame = Instance.new("Frame")
			frame.Size = UDim2.new(0, mockWidth, 0, mockHeight)

			local left = Roact.createElement("Frame", {Size = UDim2.new(0, 50, 0, 50)})
			local right = Roact.createElement("Frame", {Size = UDim2.new(0, 50, 0, 50)})

			local tree = Roact.createElement(ThreeSectionBar, {
				Size = UDim2.new(0.5, 0, 0, newHeight),
				renderLeftChildren = function()
					return {
						left = left,
					}
				end,
				renderRightChildren = function()
					return {
						right = right,
					}
				end,
			})
			local instance = Roact.mount(tree, frame)

			local guiObject = frame:FindFirstChildWhichIsA("GuiObject", true)
			expect(guiObject.AbsoluteSize.X).to.equal(mockWidth / 2)
			expect(guiObject.AbsoluteSize.Y).to.equal(newHeight)

			Roact.unmount(instance)
			frame:Destroy()
		end)

		it("should use the ElementSpacing to space out elements", function()
			local folder = Instance.new("Folder")

			local elementWidth = 50
			local spacing = 10
			local smallPadding = 12
			local expectedPosition = elementWidth + spacing + smallPadding

			local left1 = Roact.createElement("Frame", {Size = UDim2.new(0, elementWidth, 0, 50), LayoutOrder = 1})
			local left2 = Roact.createElement("Frame", {Size = UDim2.new(0, elementWidth, 0, 50), LayoutOrder = 2})
			local right = Roact.createElement("Frame", {Size = UDim2.new(0, elementWidth, 0, 50)})

			local tree = Roact.createElement(ThreeSectionBar, {
				ElementSpacing = spacing,
				renderLeftChildren = function()
					return {
						left1 = left1,
						left2 = left2,
					}
				end,
				renderRightChildren = function()
					return {
						right1 = right,
						right2 = right,
					}
				end,
			})
			local instance = Roact.mount(tree, folder)

			local x1 = folder:FindFirstChild("left1", true).AbsolutePosition.X
			local x2 = folder:FindFirstChild("left2", true).AbsolutePosition.X

			expect(x1).to.equal(0)
			expect(x2).to.equal(expectedPosition)

			Roact.unmount(instance)
			folder:Destroy()
		end)
	end)

	describe("a header with center children", function()
		it("should mount and unmount without issue", function()
			local folder = Instance.new("Folder")
			local center = Roact.createElement("Frame")
			local tree = Roact.createElement(ThreeSectionBar, {
				renderCenterChildren = function()
					return {
						center = center,
					}
				end,
			})
			local instance = Roact.mount(tree, folder)

			local centerSection = folder:FindFirstChild("center", true)
			expect(centerSection).to.be.ok()

			Roact.unmount(instance)
			folder:Destroy()
		end)

		it("should expand the center child to fill the space", function()
			local mockWidth = 182
			local mockHeight = 374
			local smallPadding = 12

			local frame = Instance.new("Frame")
			frame.Size = UDim2.new(0, mockWidth, 0, mockHeight)

			local center = Roact.createElement("Frame", {Size=UDim2.new(1,0,1,0)})
			local tree = Roact.createElement(ThreeSectionBar, {
				renderCenterChildren = function()
					return {
						center1 = center,
					}
				end,
			})
			local instance = Roact.mount(tree, frame)

			local center1 = frame:FindFirstChild("center1", true)

			expect(center1.AbsoluteSize.X).to.equal(mockWidth - smallPadding * 2)
			expect(center1.AbsoluteSize.Y).to.equal(mockHeight)

			Roact.unmount(instance)
			frame:Destroy()
		end)

		it("should resize the center child when the parent is resized", function()
			local mockWidth = 200
			local mockHeight = 300
			local smallPadding = 12

			local screen = Instance.new("ScreenGui")
			local frame = Instance.new("Frame")
			frame.Size = UDim2.new(0, mockWidth, 0, mockHeight)
			frame.Parent = screen

			local center = Roact.createElement("Frame", {Size=UDim2.new(1,0,1,0)})
			local tree = Roact.createElement(ThreeSectionBar, {
				renderCenterChildren = function()
					return {
						center1 = center,
					}
				end,
			})
			local instance = Roact.mount(tree, frame)

			local center1 = frame:FindFirstChild("center1", true)

			expect(center1.AbsoluteSize.X).to.equal(mockWidth - smallPadding*2)
			expect(center1.AbsoluteSize.Y).to.equal(mockHeight)

			frame.Size = UDim2.new(0, mockWidth / 2, 0, mockHeight / 3)
			local _ = frame.AbsoluteSize --Force an update of AbsoluteSize

			expect(center1.AbsoluteSize.X).to.equal((mockWidth / 2) - smallPadding *2)
			expect(center1.AbsoluteSize.Y).to.equal(mockHeight / 3)

			Roact.unmount(instance)
			frame:Destroy()
		end)
	end)

	describe("a header with all the children", function()
		it("should mount and unmount without issue", function()
			local folder = Instance.new("Folder")
			local left = Roact.createElement("Frame")
			local center = Roact.createElement("Frame")
			local right = Roact.createElement("Frame")
			local tree = Roact.createElement(ThreeSectionBar, {
				renderLeftChildren = function()
					return {
						left = left,
					}
				end,
				renderCenterChildren = function()
					return {
						center = center,
					}
				end,
				renderRightChildren = function()
					return {
						right = right,
					}
				end,
			})
			local instance = Roact.mount(tree, folder)

			local leftSection = folder:FindFirstChild("left", true)
			expect(leftSection).to.be.ok()
			local centerSection = folder:FindFirstChild("center", true)
			expect(centerSection).to.be.ok()
			local rightSection = folder:FindFirstChild("right", true)
			expect(rightSection).to.be.ok()

			Roact.unmount(instance)
			folder:Destroy()
		end)

		it("should mount nested children", function()
			local folder = Instance.new("Folder")
			local child = Roact.createElement("Frame")
			local left = Roact.createElement("Frame", {}, {leftChild = child})
			local center = Roact.createElement("Frame", {}, {centerChild = child})
			local right = Roact.createElement("Frame", {}, {rightChild = child})
			local tree = Roact.createElement(ThreeSectionBar, {
				renderLeftChildren = function()
					return {
						left = left,
					}
				end,
				renderCenterChildren = function()
					return {
						center = center,
					}
				end,
				renderRightChildren = function()
					return {
						right = right,
					}
				end,
			})
			local instance = Roact.mount(tree, folder)

			local leftChild = folder:FindFirstChild("leftChild", true)
			expect(leftChild).to.be.ok()
			local centerChild = folder:FindFirstChild("centerChild", true)
			expect(centerChild).to.be.ok()
			local rightChild = folder:FindFirstChild("rightChild", true)
			expect(rightChild).to.be.ok()

			Roact.unmount(instance)
			folder:Destroy()
		end)

		it("should center the center child between the left and right", function()
			local mockWidth = 500
			local mockHeight = 374

			local leftWidth = 100
			local rightWidth = 50
			local spacing = 10
			local expectedWidth = 500 - 2*leftWidth - 2*spacing
			local mediumPadding = 24

			local frame = Instance.new("Frame")
			frame.Size = UDim2.new(0, mockWidth, 0, mockHeight)

			local left = Roact.createElement("Frame", {Size=UDim2.new(0,leftWidth,1,0)})
			local center = Roact.createElement("Frame", {Size=UDim2.new(1,0,1,0)})
			local right = Roact.createElement("Frame", {Size=UDim2.new(0,rightWidth,1,0)})
			local tree = Roact.createElement(ThreeSectionBar, {
				ElementSpacing= spacing,
				renderLeftChildren = function()
					return {
						left = left,
					}
				end,
				renderCenterChildren = function()
					return {
						center1 = center,
					}
				end,
				renderRightChildren = function()
					return {
						right = right,
					}
				end,
			})
			local instance = Roact.mount(tree, frame)

			local center1 = frame:FindFirstChild("center1", true)

			expect(center1.AbsoluteSize.X).to.equal(expectedWidth - mediumPadding * 2)

			Roact.unmount(instance)
			frame:Destroy()
		end)

		it("should prevent the center child from setting a negative size", function()
			local mockWidth = 500
			local mockHeight = 374

			local sideWidth = 300

			local frame = Instance.new("Frame")
			frame.Size = UDim2.new(0, mockWidth, 0, mockHeight)

			local left = Roact.createElement("Frame", {Size=UDim2.new(0,sideWidth,1,0)})
			local center = Roact.createElement("Frame", {Size=UDim2.new(1,0,1,0)})
			local right = Roact.createElement("Frame", {Size=UDim2.new(0,sideWidth,1,0)})
			local tree = Roact.createElement(ThreeSectionBar, {
				renderLeftChildren = function()
					return {
						left = left,
					}
				end,
				renderCenterChildren = function()
					return {
						center1 = center,
					}
				end,
				renderRightChildren = function()
					return {
						right = right,
					}
				end,
			})
			local instance = Roact.mount(tree, frame)

			local center1 = frame:FindFirstChild("center1", true)

			expect(center1.AbsoluteSize.X).to.equal(0)

			Roact.unmount(instance)
			frame:Destroy()
		end)

		it("should allow the children to set relative heights", function()
			local mockWidth = 500
			local mockHeight = 374

			local frame = Instance.new("Frame")
			frame.Size = UDim2.new(0, mockWidth, 0, mockHeight)

			local left = Roact.createElement("Frame", {Size=UDim2.new(0,50,1,0)})
			local center = Roact.createElement("Frame", {Size=UDim2.new(1,0,1,0)})
			local right = Roact.createElement("Frame", {Size=UDim2.new(0,50,1,0)})
			local tree = Roact.createElement(ThreeSectionBar, {
				renderLeftChildren = function()
					return {
						left1 = left,
					}
				end,
				renderCenterChildren = function()
					return {
						center1 = center,
					}
				end,
				renderRightChildren = function()
					return {
						right1 = right,
					}
				end,
			})
			local instance = Roact.mount(tree, frame)

			local left1 = frame:FindFirstChild("left1", true)
			local center1 = frame:FindFirstChild("center1", true)
			local right1 = frame:FindFirstChild("right1", true)

			expect(left1.AbsoluteSize.Y).to.equal(mockHeight)
			expect(center1.AbsoluteSize.Y).to.equal(mockHeight)
			expect(right1.AbsoluteSize.Y).to.equal(mockHeight)

			Roact.unmount(instance)
			frame:Destroy()
		end)

	end)

	describe("SidePadding should be respected", function()
		it("when setting SidePadding", function()
			local folder = Instance.new("Folder")

			local elementWidth = 50
			local barWidth = 300
			local sidePadding = 100

			local left = function()
				return {
					left = Roact.createElement("Frame", {Size = UDim2.new(0, elementWidth, 0, 50), LayoutOrder = 2})
				}
			end

			local right = function ()
				return {
					right = Roact.createElement("Frame", {Size = UDim2.new(0, elementWidth, 0, 50), LayoutOrder = 2})
				}
			end

			local instance = Roact.mount(Roact.createElement(ThreeSectionBar, {
				SidePadding = sidePadding,
				Size = UDim2.new(0, barWidth, 0, 100),
				renderLeftChildren = left,
				renderRightChildren = right,
			}), folder)

			local l1 = folder:FindFirstChild("left", true).AbsolutePosition.X
			local r1 = folder:FindFirstChild("right", true).AbsolutePosition.X

			expect(l1).to.equal(sidePadding)
			expect(r1).to.equal(barWidth - sidePadding - elementWidth)

			Roact.unmount(instance)
			folder:Destroy()
		end)

		it("when using the auto-generated SidePadding on small-sized screens", function()
			local folder = Instance.new("Folder")

			local elementWidth = 50
			local barWidth = 320
			local smallPadding = 12

			local left = function()
				return {
					left = Roact.createElement("Frame", {Size = UDim2.new(0, elementWidth, 0, 50), LayoutOrder = 2}),
				}
			end

			local right = function()
				return {
					right = Roact.createElement("Frame", {Size = UDim2.new(0, elementWidth, 0, 50), LayoutOrder = 2}),
				}
			end

			local instance = Roact.mount(Roact.createElement(ThreeSectionBar, {
				Size = UDim2.new(0, barWidth, 0, 100),
				renderLeftChildren = left,
				renderRightChildren = right,
			}), folder)

			local l1 = folder:FindFirstChild("left", true).AbsolutePosition.X
			local r1 = folder:FindFirstChild("right", true).AbsolutePosition.X

			expect(l1).to.equal(smallPadding)
			expect(r1).to.equal(barWidth - smallPadding - elementWidth)

			Roact.unmount(instance)
			folder:Destroy()
		end)

		it("when using the auto-generated SidePadding on medium-sized screens", function()
			local folder = Instance.new("Folder")

			local elementWidth = 50
			local barWidth = 400
			local mediumPadding = 24

			local left = function()
				return {
					left = Roact.createElement("Frame", {Size = UDim2.new(0, elementWidth, 0, 50), LayoutOrder = 2})
				}
			end

			local right = function()
				return {
					right = Roact.createElement("Frame", {Size = UDim2.new(0, elementWidth, 0, 50), LayoutOrder = 2})
				}
			end

			local instance = Roact.mount(Roact.createElement(ThreeSectionBar, {
				Size = UDim2.new(0, barWidth, 0, 100),
				renderLeftChildren = left,
				renderRightChildren = right,
			}), folder)

			local l1 = folder:FindFirstChild("left", true).AbsolutePosition.X
			local r1 = folder:FindFirstChild("right", true).AbsolutePosition.X

			expect(l1).to.equal(mediumPadding)
			expect(r1).to.equal(barWidth - mediumPadding - elementWidth)

			Roact.unmount(instance)
			folder:Destroy()
		end)

		it("when using the auto-generated SidePadding on large-sized screens", function()
			local folder = Instance.new("Folder")

			local elementWidth = 50
			local barWidth = 600
			local largePadding = 48

			local left = function()
				return {
					left = Roact.createElement("Frame", {Size = UDim2.new(0, elementWidth, 0, 50), LayoutOrder = 2})
				}
			end
			local right = function()
				return {
					right = Roact.createElement("Frame", {Size = UDim2.new(0, elementWidth, 0, 50), LayoutOrder = 2})
				}
			end

			local instance = Roact.mount(Roact.createElement(ThreeSectionBar, {
				Size = UDim2.new(0, barWidth, 0, 100),
				renderLeftChildren = left,
				renderRightChildren = right,
			}), folder)

			local l1 = folder:FindFirstChild("left", true).AbsolutePosition.X
			local r1 = folder:FindFirstChild("right", true).AbsolutePosition.X

			expect(l1).to.equal(largePadding)
			expect(r1).to.equal(barWidth - largePadding - elementWidth)

			Roact.unmount(instance)
			folder:Destroy()
		end)

	end)
end
