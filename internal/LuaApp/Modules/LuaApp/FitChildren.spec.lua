return function()
	local Modules = game:GetService("CoreGui").RobloxGui.Modules
	local Roact = require(Modules.Common.Roact)

	local FitChildren = require(script.parent.FitChildren)

	describe("FitFrame", function()
		it("should create and destroy without errors", function()
			local element = Roact.createElement(FitChildren.FitFrame)
			local instance = Roact.reify(element)
			Roact.teardown(instance)
		end)

		it("should be sized based on its contents", function()
			local element = Roact.createElement(FitChildren.FitFrame, {}, {
				frame1 = Roact.createElement("Frame", {
					Size = UDim2.new(0, 50, 0, 50),
					Position = UDim2.new(0, 200, 0, 50),
				}),
				frame2 = Roact.createElement("Frame", {
					Size = UDim2.new(0, 50, 0, 50),
					Position = UDim2.new(0, 25, 0, 150),
				}),
			})
			local container = Instance.new("Folder")
			Roact.reify(element, container, "FitTest")

			expect(container.FitTest.Size.X.Offset).to.equal(250)
			expect(container.FitTest.Size.Y.Offset).to.equal(200)
		end)

		it("should account for UIPadding", function()
			-- Normally, UIPadding pushes the contents inward from the specified size, fitting it inside a smaller,
			-- internal rectangle. However, with FitChildren that internal rectangle is specified by the children,
			-- so we need to do that math in reverse, and extrapolate what containing rectangle, with the specified
			-- padding, would result in this internal rectangle. To make sure the math on this is right, we do the
			-- math for normal padding here, and then test that FitChildren will properly reverse it.
			local baseX = 200
			local paddingXScale = 0.1
			local paddingXOffset = 10
			local internalX = baseX - (baseX * paddingXScale + paddingXOffset)
			local baseY = 300
			local paddingYScale = 0.25
			local paddingYOffset = 7
			local internalY = baseY - (baseY * paddingYScale + paddingYOffset)

			local element = Roact.createElement(FitChildren.FitFrame, {}, {
				padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, paddingXOffset),
					PaddingRight = UDim.new(paddingXScale, 0),
					PaddingTop = UDim.new(0, paddingYOffset),
					PaddingBottom = UDim.new(paddingYScale, 0),
				}),
				frame = Roact.createElement("Frame", {
					Size = UDim2.new(0, internalX, 0, internalY),
				}),
			})
			local container = Instance.new("Folder")
			Roact.reify(element, container, "FitTest")

			expect(container.FitTest.Size.X.Offset).to.equal(baseX)
			expect(container.FitTest.Size.Y.Offset).to.equal(baseY)
		end)

		it("should get the same results for 0 padding as it would for not having a UIPadding", function()
			local element = Roact.createElement(FitChildren.FitFrame, {}, {
				padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 0),
					PaddingRight = UDim.new(0, 0),
					PaddingTop = UDim.new(0, 0),
					PaddingBottom = UDim.new(0, 0),
				}),
				frame = Roact.createElement("Frame", {
					Size = UDim2.new(0, 100, 0, 200),
				}),
			})
			local container = Instance.new("Folder")
			Roact.reify(element, container, "FitTest")

			expect(container.FitTest.Size.X.Offset).to.equal(100)
			expect(container.FitTest.Size.Y.Offset).to.equal(200)
		end)

		it("should resize when one of its children changes", function()
			local element = Roact.createElement(FitChildren.FitFrame, {}, {
				frame1 = Roact.createElement("Frame", {
					Size = UDim2.new(0, 50, 0, 50),
					Position = UDim2.new(0, 200, 0, 50),
				}),
				frame2 = Roact.createElement("Frame", {
					Size = UDim2.new(0, 50, 0, 50),
					Position = UDim2.new(0, 25, 0, 150),
				}),
			})
			local container = Instance.new("Folder")
			Roact.reify(element, container, "FitTest")
			container.FitTest.frame1.Position = UDim2.new(0, 300, 0, 50)

			expect(container.FitTest.Size.X.Offset).to.equal(350)
			expect(container.FitTest.Size.Y.Offset).to.equal(200)
		end)

		it("should only resize one axis when specified as such", function()
			local element = Roact.createElement(FitChildren.FitFrame, {
				Size = UDim2.new(0, 100, 0, 100),
				fitAxis = FitChildren.FitAxis.Width,
			}, {
				frame1 = Roact.createElement("Frame", {
					Size = UDim2.new(0, 50, 0, 50),
					Position = UDim2.new(0, 200, 0, 50),
				}),
				frame2 = Roact.createElement("Frame", {
					Size = UDim2.new(0, 50, 0, 50),
					Position = UDim2.new(0, 25, 0, 150),
				}),
			})
			local container = Instance.new("Folder")
			Roact.reify(element, container, "FitTest")

			expect(container.FitTest.Size.X.Offset).to.equal(250)
			expect(container.FitTest.Size.Y.Offset).to.equal(100)
		end)

		it("should update if the props change", function()
			local component = Roact.Component:extend("TestComponent")
			local setUseHeight

			function component:init()
				self.state = {
					useHeight = false,
				}
				setUseHeight = function()
					self:setState({
						useHeight = true
					})
				end
			end

			function component:render()
				return Roact.createElement(FitChildren.FitFrame, {
					Size = UDim2.new(0, 100, 0, 100),
					fitAxis = self.state.useHeight and FitChildren.FitAxis.Height or FitChildren.FitAxis.Width,
				}, {
					frame1 = Roact.createElement("Frame", {
						Size = UDim2.new(0, 50, 0, 50),
						Position = UDim2.new(0, 200, 0, 50),
					}),
					frame2 = Roact.createElement("Frame", {
						Size = UDim2.new(0, 50, 0, 50),
						Position = UDim2.new(0, 25, 0, 150),
					}),
				})
			end

			local element = Roact.createElement(component)
			local container = Instance.new("Folder")
			Roact.reify(element, container, "FitTest")

			expect(container.FitTest.Size.X.Offset).to.equal(250)
			expect(container.FitTest.Size.Y.Offset).to.equal(100)

			setUseHeight()

			expect(container.FitTest.Size.X.Offset).to.equal(100)
			expect(container.FitTest.Size.Y.Offset).to.equal(200)
		end)

		it("should update if children are added", function()
			local component = Roact.Component:extend("TestComponent")
			local setExtraChild

			function component:init()
				self.state = {
					extraChild = false,
				}
				setExtraChild = function()
					self:setState({
						extraChild = true
					})
				end
			end

			function component:render()
				if self.state.extraChild then
					return Roact.createElement(FitChildren.FitFrame, {
						Size = UDim2.new(0, 100, 0, 100),
					}, {
						frame1 = Roact.createElement("Frame", {
							Size = UDim2.new(0, 50, 0, 50),
							Position = UDim2.new(0, 200, 0, 50),
						}),
						frame2 = Roact.createElement("Frame", {
							Size = UDim2.new(0, 50, 0, 50),
							Position = UDim2.new(0, 25, 0, 150),
						}),
					})
				else
					return Roact.createElement(FitChildren.FitFrame, {
						Size = UDim2.new(0, 100, 0, 100),
					}, {
						frame1 = Roact.createElement("Frame", {
							Size = UDim2.new(0, 50, 0, 50),
							Position = UDim2.new(0, 200, 0, 50),
						}),
					})
				end
			end

			local element = Roact.createElement(component)
			local container = Instance.new("Folder")
			Roact.reify(element, container, "FitTest")

			expect(container.FitTest.Size.X.Offset).to.equal(250)
			expect(container.FitTest.Size.Y.Offset).to.equal(100)

			setExtraChild()

			expect(container.FitTest.Size.X.Offset).to.equal(250)
			expect(container.FitTest.Size.Y.Offset).to.equal(200)
		end)
	end)

	describe("FitScrollingFrame", function()
		it("should create and destroy without errors", function()
			local element = Roact.createElement(FitChildren.FitScrollingFrame)
			local instance = Roact.reify(element)
			Roact.teardown(instance)
		end)

		it("should resize the specified props on the specified axis", function()
			local element = Roact.createElement(FitChildren.FitScrollingFrame, {
				Size = UDim2.new(0, 100, 0, 100),
				fitFields = {
					Size = FitChildren.FitAxis.Width,
					CanvasSize = FitChildren.FitAxis.Both,
				},
			}, {
				frame1 = Roact.createElement("Frame", {
					Size = UDim2.new(0, 50, 0, 50),
					Position = UDim2.new(0, 200, 0, 50),
				}),
				frame2 = Roact.createElement("Frame", {
					Size = UDim2.new(0, 50, 0, 50),
					Position = UDim2.new(0, 25, 0, 150),
				}),
			})
			local container = Instance.new("Folder")
			Roact.reify(element, container, "FitTest")

			expect(container.FitTest.Size.X.Offset).to.equal(250)
			expect(container.FitTest.Size.Y.Offset).to.equal(100)
			expect(container.FitTest.CanvasSize.X.Offset).to.equal(250)
			expect(container.FitTest.CanvasSize.Y.Offset).to.equal(200)
		end)
	end)
end