local PrivateRoot = script.Parent
local StoryRoot = PrivateRoot.Parent
local IAPExperienceRoot = StoryRoot.Parent
local Packages = IAPExperienceRoot.Parent

local Roact = require(Packages.Roact)
local UIBlox = require(Packages.UIBlox)
local withSelectionCursorProvider = UIBlox.App.SelectionImage.withSelectionCursorProvider
local ShimmerPanel = UIBlox.App.Loading.ShimmerPanel
local CursorKind = UIBlox.App.SelectionImage.CursorKind
local Images = UIBlox.App.ImageSet.Images
local ImageSetLabel = UIBlox.Core.ImageSet.Label

local RobuxPackage = require(IAPExperienceRoot.BuyRobux.RobuxPackage)

local ROBUX_IMAGE = Images["icons/graphic/robuxcoin6_xxlarge"]

local SCALE = 0.65

local RobuxPackageContainer = Roact.PureComponent:extend("RobuxPackageContainer")

function RobuxPackageContainer:init()
	self.screenRef = Roact.createRef()
	self.state = {
		screenSize = Vector2.new(0, 0),
		selected = false,
	}

	self.changeScreenSize = function(rbx)
		if self.state.screenSize ~= rbx.AbsoluteSize then
			self:setState({
				screenSize = rbx.AbsoluteSize,
			})
		end
	end
end

function RobuxPackageContainer:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
		[Roact.Ref] = self.screenRef,
		[Roact.Change.AbsoluteSize] = self.changeScreenSize,
	}, {
		Padding = Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 50),
		}),
		RobuxPackage = Roact.createElement(RobuxPackage, {
			ref = Roact.createRef(),
			scale = if self.props.controls.consoleSize then 1.0 else 0.65,
			selected = self.state.selected or self.props.controls.selected,
			robuxAmount = if not self.props.controls.loading then 22500 else nil,
			currencyAmountStr = if not self.props.controls.loading then "$199.99" else nil,
			robuxMoreAmount = if not self.props.controls.loading then 5000 else nil,
			robuxImage = ROBUX_IMAGE,
			onActivated = function()
				print("Robux Package Activated!")
			end,
			onHover = function(packageId: string, didHover: boolean)
				self:setState({ selected = didHover })
			end,
		}),
	})
end

return {
	controls = {
		consoleSize = true,
		loading = false,
		selected = false,
	},
	story = RobuxPackageContainer,
}
