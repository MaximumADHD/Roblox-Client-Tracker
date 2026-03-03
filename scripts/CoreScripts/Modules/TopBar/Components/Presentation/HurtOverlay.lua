local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local t = require(CorePackages.Packages.t)
local Signals = require(CorePackages.Packages.Signals)
local Otter = require(CorePackages.Packages.Otter)

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CachedPolicyService = require(CorePackages.Workspace.Packages.CachedPolicyService)

local CoreGuiModules = RobloxGui:FindFirstChild("Modules")
local CommonModules = CoreGuiModules:FindFirstChild("Common")

local Components = script.Parent.Parent
local TopBar = Components.Parent
local Constants = require(TopBar.Constants)

local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local FFlagTopBarSignalizeHealthBar = CoreGuiCommon.Flags.FFlagTopBarSignalizeHealthBar
local FFlagUseNewHurtOverlayImage = CoreGuiCommon.Flags.FFlagUseNewHurtOverlayImage
local FFlagUseNewHurtOverlayAnimation = CoreGuiCommon.Flags.FFlagUseNewHurtOverlayAnimation

local MOTOR_OPTIONS = {
	frequency = 0.75,
	dampingRatio = 1,
}

local RED_OVERLAY_COLOR = Color3.fromRGB(187, 0, 4)
local WHITE_OVERLAY_COLOR = Color3.new(1, 1, 1)

local ANIMATION_IN_DURATION = 0.1
local ANIMATION_OUT_DURATION = 0.5

local HurtOverlay = Roact.PureComponent:extend("HurtOverlay")

HurtOverlay.validateProps = t.strictInterface(if FFlagTopBarSignalizeHealthBar then {} else {
	healthEnabled = t.boolean,
	health = t.number,
	maxHealth = t.number,
	isDead = t.boolean,
})

function HurtOverlay:init()

	self.animationBinding, self.animationBindingUpdate = Roact.createBinding(0)

	if not FFlagUseNewHurtOverlayAnimation then
		self.positionBinding = self.animationBinding:map(function(animation)
			return UDim2.new(-10 * animation, 0, -10 * animation, 0)
		end)
		self.sizeBinding = self.animationBinding:map(function(animation)
			return UDim2.new(1 + 19 * animation, 0, 1 + 19 * animation, 0)
		end)
	end

	if FFlagTopBarSignalizeHealthBar then
		self.isAnimating, self.setIsAnimating = Roact.createBinding(false)
		self.health, self.setHealth = Roact.createBinding(Constants.InitialHealth)
		self.maxHealth, self.setMaxHealth = Roact.createBinding(Constants.InitialHealth)	
		self.isDead, self.setIsDead = Roact.createBinding(false)
		self.prevHealth = self.health:getValue()
		self.prevIsDead = self.isDead:getValue()

		self.showHurtOverlay = Roact.joinBindings({self.isAnimating, self.health, self.maxHealth, self.isDead}):map(function(values) 
			local isAnimating = values[1]
			local currentHealth = values[2]
			local maxHealth = values[3]
			local isDead = values[4]
			local prevHealth = self.prevHealth
			local prevIsDead = self.prevIsDead

			self.prevHealth = currentHealth
			self.prevIsDead = isDead

			if currentHealth < prevHealth then
				if not (isDead and prevIsDead) then
					local healthChange = prevHealth - currentHealth
					if healthChange / maxHealth >= Constants.HealthPercentForOverlay then
						if FFlagUseNewHurtOverlayAnimation then 
							self.setIsAnimating(true)
							self.motor:setGoal(Otter.ease(0, { duration = ANIMATION_IN_DURATION }))
							self.motor:start()
						else
							self.motor:setGoal(Otter.instant(0))
							self.motor:step(0)
							self.motor:setGoal(Otter.spring(1, MOTOR_OPTIONS))
							self.motor:start()
							self.setIsAnimating(true)
						end
						return true
					end
				end
			end

			return isAnimating
		end) 


		if CoreGuiCommon.Stores.GetLocalHumanoidStore then 
			self.localHumanoidStore = CoreGuiCommon.Stores.GetLocalHumanoidStore(false)
			self.disposeHealthConnection = Signals.createEffect(function(scope) 
				local healthValue = self.localHumanoidStore.getHealthValue(scope)

				self.setHealth(healthValue.health or Constants.InitialHealth)
				self.setMaxHealth(healthValue.maxHealth or Constants.InitialHealth)
				self.setIsDead(healthValue.isDead)
			end)
		end
	else
		self.state = {
			isAnimating = false,
		}
	end

	self.motor = Otter.createSingleMotor(if FFlagUseNewHurtOverlayAnimation then 1 else 0)
	self.motor:onStep(function(value)
		self.animationBindingUpdate(value)
	end)
	self.motor:onComplete(if FFlagUseNewHurtOverlayAnimation then 
		function(value)
			if value == 0 then 
				self.motor:setGoal(Otter.ease(1, { duration = ANIMATION_OUT_DURATION }))
				self.motor:start()
			elseif value == 1 then
				if FFlagTopBarSignalizeHealthBar then
					self.setIsAnimating(false)
				else
					self:setState({
						isAnimating = false,
					})
				end
			end
		end
	else
		function()
			if FFlagTopBarSignalizeHealthBar then
				self.setIsAnimating(false)
			else
				self:setState({
					isAnimating = false,
				})
			end
		end)

	if FFlagTopBarSignalizeHealthBar then
		local function getHealthEnabled()
			return StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Health)
		end

		self.coreGuiChangedSignalConn = StarterGui.CoreGuiChangedSignal:Connect(
			function(coreGuiType: Enum.CoreGuiType, enabled: boolean)
				if coreGuiType == Enum.CoreGuiType.Health or coreGuiType == Enum.CoreGuiType.All then
					self:setState({
						mountHurtOverlay = enabled,
					})
				end
			end
		)
		self:setState({
			mountHurtOverlay = getHealthEnabled(),
		})
	end
end

function HurtOverlay:renderOverlay()
	local overlayVisible = nil
	if not FFlagTopBarSignalizeHealthBar then 
		overlayVisible = self.props.healthEnabled and self.state.isAnimating
	end

	local hurtOverlayImage = if FFlagUseNewHurtOverlayImage 
		then "rbxasset://textures/ui/TopBar/HurtOverlayAsset.png" 
		else "rbxasset://textures/ui/TopBar/WhiteOverlayAsset.png"
	local hurtOverlayColor = RED_OVERLAY_COLOR
	if CachedPolicyService:IsSubjectToChinaPolicies() then
		hurtOverlayColor = WHITE_OVERLAY_COLOR
	end

	return Roact.createElement("ImageLabel", {
		Visible = if FFlagTopBarSignalizeHealthBar then self.showHurtOverlay else overlayVisible,
		BackgroundTransparency = 1,
		Image = hurtOverlayImage,
		ImageColor3 = hurtOverlayColor,
		ImageTransparency = if FFlagUseNewHurtOverlayAnimation then self.animationBinding else nil,
		Size = if FFlagUseNewHurtOverlayAnimation then UDim2.fromScale(1, 1) else self.sizeBinding,
		AnchorPoint = if FFlagUseNewHurtOverlayAnimation then Vector2.new(0.5, 0.5) else nil, 
		Position = if FFlagUseNewHurtOverlayAnimation then UDim2.fromScale(0.5, 0.5) else self.positionBinding,
	})
end

function HurtOverlay:render()
	if FFlagTopBarSignalizeHealthBar then
		return if self.state.mountHurtOverlay then self:renderOverlay() else nil
	else
		return self:renderOverlay()
	end
end

function HurtOverlay:didUpdate(prevProps, prevState)
	if FFlagTopBarSignalizeHealthBar then 
		return
	end

	if self.props.health < prevProps.health then
		if not (self.props.isDead and prevProps.isDead) then
			local healthChange = prevProps.health - self.props.health
			if healthChange / self.props.maxHealth >= Constants.HealthPercentForOverlay then
				self.motor:setGoal(Otter.instant(0))
				self.motor:step(0)
				self.motor:setGoal(Otter.spring(1, MOTOR_OPTIONS))
				self.motor:start()
				self:setState({
					isAnimating = true,
				})
			end
		end
	end
end

if FFlagTopBarSignalizeHealthBar then
	function HurtOverlay:onUnmount()
		self.coreGuiChangedSignalConn:Disconnect()
		self.disposeHealthConnection()
	end
end

local function mapStateToProps(state)
	return {
		health = state.health.currentHealth,
		maxHealth = state.health.maxHealth,
		isDead = state.health.isDead,
		healthEnabled = state.coreGuiEnabled[Enum.CoreGuiType.Health],
	}
end

if FFlagTopBarSignalizeHealthBar then 
	return HurtOverlay
else
	return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(HurtOverlay)
end