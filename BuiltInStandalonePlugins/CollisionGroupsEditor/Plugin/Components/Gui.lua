local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Resources = Plugin.Resources
local Framework = require(Plugin.Packages.Framework)
local ContextServices = Framework.ContextServices

local StudioUI = Framework.StudioUI
local DockWidget = StudioUI.DockWidget

local contains = require(script.Parent.Parent.contains)

local MainView = require(script.Parent.MainView)

local Gui = Roact.Component:extend("Gui")

function Gui:init()
	self.state = {
		GroupRenaming = "",
		GroupRenameDialogOpen = false,
		Theme = "",
		UISelectedGroupId = "",
	}
	self.state.Groups = self:GetGroups()
end

function Gui:setStateAndRefresh(state)
	self:setState(state)
	self:setState({Groups = self:GetGroups()})
end

function Gui:GetGroups()
	local plugin = self.props.plugin
	local groups = plugin:GetItem("Groups")
	if groups == nil then
		groups = {}
	end
	local selectedGroupIds = plugin:GetItem("SelectedGroupIds")
	if selectedGroupIds == nil then
		selectedGroupIds = {}
	end

	for _, group in pairs(groups) do
		group.Renaming = self.state.GroupRenaming == group.Name
		group.UISelected = self.state.UISelectedGroupId == group.Id
		group.Selected = contains(selectedGroupIds, group.Id)

		group.OnDeleted = function()
			if group.Name == "Default" then
				return
			end
			plugin:Invoke("DeleteCollisionGroup", group.Name)
		end

		group.OnRenamed = function(newName)
			if group.Name == "Default" then
				return
			end
			if newName then
				self:setStateAndRefresh({GroupRenameDialogOpen = true})
				local renameBlob = {}
				renameBlob.oldName = group.Name
				renameBlob.newName = newName
				plugin:Invoke("RenameCollisionGroup", renameBlob)
			else
				if self.state.GroupRenaming == "" then
					self:setStateAndRefresh({GroupRenaming = group.Name})
				else
					self:setStateAndRefresh({GroupRenaming = ""})
				end
			end
		end

		group.OnMembershipSet = function()
			plugin:Invoke("AddSelectedPartsToCollisionGroup", group.Name)
		end

		group.OnSelected = function(gui)
			if group.Name ~= "Default" then
				plugin:Invoke("SelectPartsInCollisionGroup", group.Name)
			end
			self:setStateAndRefresh({UISelectedGroupId = group.Id})
		end

		group.GetCollidesWith = function(otherGroup)
			for _, collision in pairs(group.Collisions) do
				if collision.Name == otherGroup.Name then
					return collision.Collides
				end
			end
		end

		group.ToggleCollidesWith = function(otherGroup)
			local toggleCollisionBlob = {}
			toggleCollisionBlob.groupName = group.Name
			toggleCollisionBlob.otherGroupName = otherGroup.Name
			plugin:Invoke("ToggleCollidesWith", toggleCollisionBlob)
		end
	end

	return groups
end

function Gui:render()
	local props = self.props
	local plugin = props.Plugin:get()
	local localization = props.Localization
	local style = props.Stylizer

	return Roact.createElement(MainView, {
		Groups = self.state.Groups,
		GroupRenameDialogOpen = self.state.GroupRenameDialogOpen,

		OnGroupRenameDialogClosed = function()
			self:setState({GroupRenameDialogOpen = false})
		end,

		OnGroupAdded = function(groupName)
			plugin:Invoke("CreateCollisionGroup", groupName)
		end,
		OnGroupDeleted = function()
			for _, group in pairs(self.state.Groups) do
				if group.Id == self.state.UISelectedGroupId then
					group.OnDeleted()
					return
				end
			end
		end,
		OnGroupRenamed = function()
			for _, group in pairs(self.state.Groups) do
				if group.Id == self.state.UISelectedGroupId then
					group.OnRenamed()
					return
				end
			end
		end,
	})
end

function Gui:didMount()
	self:setState({plugin = self.props.Plugin:get()})
	self.setStateAndRefreshConnection = self.props.plugin:OnInvoke("SetStateAndRefresh", function(digestedState)
		if digestedState == nil then
			digestedState = {}
		end
		self:setStateAndRefresh(digestedState)
	end)
	self.setStateAndRefreshConnection.Name = "setStateAndRefresh"
end

function Gui:willUnmount()
	self.setStateAndRefreshConnection:Disconnect()
end

Gui = ContextServices.withContext({
	Plugin = ContextServices.Plugin,
	Stylizer = ContextServices.Stylizer,
	Localization = ContextServices.Localization,
	Mouse = ContextServices.Mouse,
})(Gui)

return Gui
