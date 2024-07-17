--!nonstrict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local t = require(CorePackages.Packages.t)

local Components = script.Parent.Parent
local TopBar = Components.Parent
local Constants = require(TopBar.Constants)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TenFootInterface = require(RobloxGui.Modules.TenFootInterface)

local FFlagEnableChromeBackwardsSignalAPI = require(TopBar.Flags.GetFFlagEnableChromeBackwardsSignalAPI)()
local SetKeepOutArea = require(TopBar.Actions.SetKeepOutArea)
local RemoveKeepOutArea = require(TopBar.Actions.RemoveKeepOutArea)

local GetFFlagFixChromeReferences = require(RobloxGui.Modules.Flags.GetFFlagFixChromeReferences)

local Chrome = TopBar.Parent.Chrome
local ChromeEnabled = require(Chrome.Enabled)
local ChromeService = if GetFFlagFixChromeReferences() then 
	if ChromeEnabled() then require(Chrome.Service) else nil
	else if ChromeEnabled then require(Chrome.Service) else nil

local HEALTHBAR_SIZE = UDim2.new(0, 80, 0, 6)
local HEALTHBAR_SIZE_TENFOOT = UDim2.new(0, 220, 0, 16)

local HEALTHBAR_OFFSET = 4
local HEALTHBAR_OFFSET_TENFOOT = 0

local HealthBar = Roact.PureComponent:extend("HealthBar")

HealthBar.validateProps = t.strictInterface({
	layoutOrder = t.integer,

	healthEnabled = t.boolean,
	health = t.number,
	maxHealth = t.number,

	setKeepOutArea = t.callback,
	removeKeepOutArea = t.callback,
})

local function color3ToVector3(color3)
	return Vector3.new(color3.r, color3.g, color3.b)
end

local healthColorToPosition = {
	[color3ToVector3(Constants.HealthRedColor)] = 0.1,
	[color3ToVector3(Constants.HealthYellowColor)] = 0.5,
	[color3ToVector3(Constants.HealthGreenColor)] = 0.8,
}
local redHealthFraction = 0.1
local redHealthColor = Constants.HealthRedColor
local greenHealthFraction = 0.8
local greenHealthColor = Constants.HealthGreenColor

local function getHealthBarColor(healthPercent)
	if healthPercent <= redHealthFraction then
		return redHealthColor
	elseif healthPercent >= greenHealthFraction then
		return greenHealthColor
	end

	-- Shepard's Interpolation
	local numeratorSum = Vector3.new(0,0,0)
	local denominatorSum = 0
	for colorSampleValue, samplePoint in pairs(healthColorToPosition) do
		local distance = healthPercent - samplePoint
		if distance == 0 then
			-- If we are exactly on an existing sample value then we don't need to interpolate
			return Color3.new(colorSampleValue.x, colorSampleValue.y, colorSampleValue.z)
		else
			local wi = 1 / (distance*distance)
			numeratorSum = numeratorSum + wi * colorSampleValue
			denominatorSum = denominatorSum + wi
		end
	end
	local result = numeratorSum / denominatorSum
	return Color3.new(result.x, result.y, result.z)
end

function HealthBar:init()
	self.rootRef = Roact.createRef()
	if ChromeService then
		self:setState({
			chromeMenuOpen = ChromeService:status():get() == ChromeService.MenuStatus.Open
		})
	end
end

function HealthBar:didMount()
	if ChromeService then
		self.chromeMenuStatusConn = ChromeService:status():connect(function()
			self:setState({
				chromeMenuOpen = ChromeService:status():get() == ChromeService.MenuStatus.Open
			})
		end)
	end
end

function HealthBar:onUnmount()
	if self.chromeMenuStatusConn then
		self.chromeMenuStatusConn:Disconnect()
		self.chromeMenuStatusConn = nil
	end
end

function HealthBar:render()
	local healthVisible = self.props.healthEnabled
		and self.props.health < self.props.maxHealth

	healthVisible = healthVisible and not self.state.chromeMenuOpen

	local healthPercent = 1
	if self.props.isDead then
		healthPercent = 0
	elseif self.props.maxHealth > 0 then
		healthPercent = self.props.health / self.props.maxHealth
	end

	local healthBarSize = HEALTHBAR_SIZE
	if TenFootInterface:IsEnabled() then
		healthBarSize = HEALTHBAR_SIZE_TENFOOT
	end

	local healthBarOffset = HEALTHBAR_OFFSET
	if TenFootInterface:IsEnabled() then
		healthBarOffset = HEALTHBAR_OFFSET_TENFOOT
	end

	local healthBarBase = "rbxasset://textures/ui/TopBar/HealthBarBase.png"
	local healthBar = "rbxasset://textures/ui/TopBar/HealthBar.png"
	local sliceCenter = Rect.new(3, 3, 4, 4)
	if TenFootInterface:IsEnabled() then
		healthBarBase = "rbxasset://textures/ui/TopBar/HealthBarBaseTV.png"
		healthBar = "rbxasset://textures/ui/TopBar/HealthBarTV.png"
		sliceCenter = Rect.new(8, 8, 9, 9)
	end

	local onAreaChanged = function(rbx)
		if healthVisible and rbx then
			self.props.setKeepOutArea(Constants.HealthBarKeepOutAreaId, rbx.AbsolutePosition, rbx.AbsoluteSize)
		else
			self.props.removeKeepOutArea(Constants.HealthBarKeepOutAreaId)
		end
	end

	if FFlagEnableChromeBackwardsSignalAPI then
		if self.rootRef.current then
			onAreaChanged(self.rootRef.current)
		end
	end

	local healthBarColor = getHealthBarColor(healthPercent)
	return Roact.createElement("Frame", {
		Visible = healthVisible,
		BackgroundTransparency = 1,
		Size = UDim2.new(healthBarSize.X, UDim.new(1, 0)),
		LayoutOrder = self.props.layoutOrder,
		[Roact.Change.AbsoluteSize] = if FFlagEnableChromeBackwardsSignalAPI then onAreaChanged else nil,
		[Roact.Change.AbsolutePosition] = if FFlagEnableChromeBackwardsSignalAPI then onAreaChanged else nil,
		[Roact.Ref] = self.rootRef,
	}, {
		Padding = not ChromeEnabled and Roact.createElement("UIPadding", {
			PaddingTop = UDim.new(0, healthBarOffset),
		}) or nil,

		HealthBar = Roact.createElement("ImageLabel", {
			BackgroundTransparency = 1,
			Image = healthBarBase,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = sliceCenter,
			Size = healthBarSize,
			Position = UDim2.fromScale(0, 0.5),
			AnchorPoint = Vector2.new(0, 0.5),
		}, {
			Fill = Roact.createElement("ImageLabel", {
				BackgroundTransparency = 1,
				Image = healthBar,
				ImageColor3 = healthBarColor,
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = sliceCenter,
				Size = UDim2.fromScale(healthPercent, 1),
			}),
		})
	})
end

local function mapStateToProps(state)
	return {
		health = state.health.currentHealth,
		maxHealth = state.health.maxHealth,
		healthEnabled = state.coreGuiEnabled[Enum.CoreGuiType.Health],
	}
end


local function mapDispatchToProps(dispatch)
	return {
		setKeepOutArea = function(id, position, size)
			return dispatch(SetKeepOutArea(id, position, size))
		end,
		removeKeepOutArea = function(id)
			return dispatch(RemoveKeepOutArea(id))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(HealthBar)
