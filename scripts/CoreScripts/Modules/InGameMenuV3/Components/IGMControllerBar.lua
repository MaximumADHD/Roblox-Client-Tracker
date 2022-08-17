--!nonstrict
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local UIBlox = require(CorePackages.UIBlox)
local ControllerBar = UIBlox.App.Bar.ControllerBar

local SetControllerBarHeight = require(script.Parent.Parent.Actions.SetControllerBarHeight)
local InGameMenu = script.Parent.Parent
local withLocalization = require(InGameMenu.Localization.withLocalization)

local Constants = require(script.Parent.Parent.Resources.Constants)

local IGMControllerBar = Roact.PureComponent:extend("IGMControllerBar")

local localizationKeys = {
	cancel = "CoreScripts.InGameMenu.ControllerBar.Cancel",
	respawn = "CoreScripts.InGameMenu.ControllerBar.Respawn",
	openMoreMenu = "CoreScripts.InGameMenu.ControllerBar.OpenMoreMenu",
	closeMoreMenu = "CoreScripts.InGameMenu.ControllerBar.CloseMoreMenu",
	back = "CoreScripts.InGameMenu.ControllerBar.Back",
	respawnCharacter = "CoreScripts.InGameMenu.ControllerBar.RespawnCharacter",
	leave = "CoreScripts.InGameMenu.ControllerBar.Leave",
}

IGMControllerBar.validateProps = t.strictInterface({
	isMenuOpen = t.boolean,
	isMainPageMoreMenuOpen = t.boolean,
	currentPage = t.string,
	respawnDialogOpen = t.boolean,
	inputType = t.string,
	screenSize = t.Vector2,
	setControllerBarHeight = t.callback,
})

function IGMControllerBar:didMount()
	-- using localizationKeys here because we just want to see if nil vs non-nil
	if self:getHints(localizationKeys) then
		self.props.setControllerBarHeight(Constants.ControllerBarHeight)
	else
		self.props.setControllerBarHeight(0)
	end
end

function IGMControllerBar:didUpdate()
	-- using localizationKeys here because we just want to see if nil vs non-nil
	if self:getHints(localizationKeys) then
		self.props.setControllerBarHeight(Constants.ControllerBarHeight)
	else
		self.props.setControllerBarHeight(0)
	end
end

function IGMControllerBar:willUnmount()
	self.props.setControllerBarHeight(0)
end


function IGMControllerBar:getHints(localize)
	if self.props.inputType == Constants.InputType.Gamepad then
		if self.props.respawnDialogOpen then
			return {
				leftHint = {
					text = localize.cancel,
					keyCode = Enum.KeyCode.ButtonB,
				},
				rightHints = {
					{
						text = localize.respawn,
						keyCode = Enum.KeyCode.ButtonA,
					},
				}
			}
		elseif self.props.isMenuOpen then
			if self.props.currentPage == "MainPage" then

				local leftStickHintText
				if not self.props.isMainPageMoreMenuOpen then
					leftStickHintText = localize.openMoreMenu
				else
					leftStickHintText = localize.closeMoreMenu
				end

				return {
					leftHint = {
						text = localize.back,
						keyCode = Enum.KeyCode.ButtonB,
					},
					rightHints = {
						{
							text = leftStickHintText,
							keyCode = Enum.KeyCode.ButtonL3,
						},
						{
							text = localize.respawnCharacter,
							keyCode = Enum.KeyCode.ButtonY,
						},
						{
							text = localize.leave,
							keyCode = Enum.KeyCode.ButtonX,
						},
					}
				}
			end
		end
	end
	return nil
end

function IGMControllerBar:render()
	return withLocalization(localizationKeys)(function(localize)
		local hints = self:getHints(localize)
		if hints then
			return Roact.createElement(ControllerBar, hints)
		else
			return nil
		end
	end)
end

local function mapStateToProps(state, props)
	return {
		isMenuOpen = state.isMenuOpen,
		isMainPageMoreMenuOpen = state.isMainPageMoreMenuOpen,
		currentPage = state.menuPage,
		respawnDialogOpen = state.respawn.dialogOpen,
		inputType = state.displayOptions.inputType,
		screenSize = state.screenSize,
	}
end

return RoactRodux.connect(mapStateToProps, function(dispatch)
	return {
		setControllerBarHeight = function(height)
			dispatch(SetControllerBarHeight(height))
		end,
	}
end) (IGMControllerBar)
