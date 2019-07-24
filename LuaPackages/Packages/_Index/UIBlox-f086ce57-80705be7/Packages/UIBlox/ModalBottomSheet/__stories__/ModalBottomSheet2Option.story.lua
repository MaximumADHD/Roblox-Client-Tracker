local Packages = script.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)
local ModalBottomSheet = require(script.Parent.Parent.ModalBottomSheet)
local StyleProvider = require(Packages.UIBlox.Style.StyleProvider)
local UIBloxStyle = require(Packages.UIBloxResources.UIBloxStyle)

local doSomething = function(a)
	print(a)
end

local dummyModalButtons2 = {
	{
		icon = "rbxassetid://2583107839",
		text = "option 1",
		onActivated = doSomething,
	},
	{
		icon = "rbxassetid://2583107839",
		text = "option 2",
		onActivated = doSomething,
	},
}

local function mountWithStyle(tree, target, name)
	local styledTree = Roact.createElement(StyleProvider, {
		style = UIBloxStyle
	}, {
		oneChild = tree,
	})

	return Roact.mount(styledTree, target, name)
end

local overlayComponent = Roact.Component:extend("overlayComponent")

function overlayComponent:render()
	local ModalContainer = self.props.ModalContainer
	local showModal = self.state.showModal

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		Layout = Roact.createElement("UIListLayout", {

		}),
		TestButton1 = Roact.createElement("TextButton", {
			Text = "Spawn 2 Choice",
			Size = UDim2.new(1,0,0.2,0),
			BackgroundColor3 = Color3.fromRGB(222,0,222),
			AutoButtonColor = false,
			[Roact.Event.Activated] = function()
				self:setState({
					showModal = true,
				})
			end
		}),
		modal = showModal and Roact.createElement(Roact.Portal, {
			target = ModalContainer,
		}, {
			sheet = Roact.createElement(ModalBottomSheet, {
				bottomGap = 10,
				onDismiss = function()
					self:setState({
						showModal = false,
					})
				end,
				buttonModels = dummyModalButtons2,
			})
		})
	})
end

return function(target)
	local ModalContainer = Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		ZIndex = 10,
	})

	Roact.mount(ModalContainer, target, "ModalContainer")

	local handle = mountWithStyle(Roact.createElement(overlayComponent, {
		ModalContainer = target:FindFirstChild("ModalContainer"),
	}), target, "preview")

	return function()
		Roact.unmount(handle)
	end
end
