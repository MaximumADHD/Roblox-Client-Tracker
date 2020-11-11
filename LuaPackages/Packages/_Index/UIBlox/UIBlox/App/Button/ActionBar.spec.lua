return function()
	local Button = script.Parent
	local App = Button.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local Images = require(App.ImageSet.Images)

	local icon = Images["icons/common/robux_small"]
	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local ActionBar = require(Button.ActionBar)

	it("should create and destroy ActionBar with one button without errors", function()
		local element = mockStyleComponent({
			ActionBar = Roact.createElement(ActionBar, {
		button = {
		  props = {
			onActivated = function() end,
			text = "Button",
		  },
		}
	  })
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy ActionBar with one button and one icon button without errors", function()
		local element = mockStyleComponent({
			ActionBar = Roact.createElement(ActionBar, {
		button = {
		  props = {
			onActivated = function() end,
			text = "Button",
			icon = icon,
		  },
		},
		icons = {
		  {
			props = {
			  anchorPoint = Vector2.new(0.5, 0.5),
			  position = UDim2.fromScale(0.5, 0.5),
			  icon = icon,
			  userInteractionEnabled = true,
			  onActivated = function()
				print("Text Button Clicked!")
			  end,
			}
		  }
		}
	  })
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy ActionBar with one button and two icon button without errors", function()
		local element = mockStyleComponent({
			ActionBar = Roact.createElement(ActionBar, {
		button = {
		  props = {
			onActivated = function() end,
			text = "Button",
			icon = icon,
		  },
		},
		icons = {
		  {
			props = {
			  anchorPoint = Vector2.new(0.5, 0.5),
			  position = UDim2.fromScale(0.5, 0.5),
			  icon = icon,
			  userInteractionEnabled = true,
			  onActivated = function()
				print("Text Button Clicked!")
			  end,
			}
		  },
		  {
			props = {
			  anchorPoint = Vector2.new(0.5, 0.5),
			  position = UDim2.fromScale(0.5, 0.5),
			  icon = icon,
			  userInteractionEnabled = true,
			  onActivated = function()
				print("Text Button Clicked!")
			  end,
			}
		  }
		}
	  })
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy a ActionBar with children without errors", function()
		local element = mockStyleComponent({
			ActionBar = Roact.createElement(ActionBar, {}, {
				ChildFrame = Roact.createElement("Frame", {})
			})
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
