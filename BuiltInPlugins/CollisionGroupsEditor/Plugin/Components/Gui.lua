local Roact = require(script.Parent.Parent.Parent.modules.roact)

local PhysicsService = game:GetService("PhysicsService")
local ChangeHistoryService = game:GetService("ChangeHistoryService")

local FFlagStudioYoWhatTheHeckWhyNoUndoInTheCollisionGroupsEditorBro = settings():GetFFlag("StudioYoWhatTheHeckWhyNoUndoInTheCollisionGroupsEditorBro")

local getGroups = require(script.Parent.Parent.getGroups)
local getSelectedParts = require(script.Parent.Parent.getSelectedParts)
local getPartsInGroup = require(script.Parent.Parent.getPartsInGroup)
local contains = require(script.Parent.Parent.contains)
local getSelectedGroups = require(script.Parent.Parent.getSelectedGroups)

local getGroupsChanged do
	local lastGroups

	local function getNamesChanged(groups)
		for index = 1, #groups do
			local lastGroup = lastGroups[index]
			local group = groups[index]
			if lastGroup.name ~= group.name then
				return true
			end
		end
		return false
	end

	getGroupsChanged = function()
		if not lastGroups then
			lastGroups = PhysicsService:GetCollisionGroups()
			return false
		end

		local groups = PhysicsService:GetCollisionGroups()
		local result = false

		if #groups ~= #lastGroups then
			result = true
		end

		if (not result) and getNamesChanged(groups) then
			result = true
		end

		lastGroups = groups
		return result
	end
end

local DescriptionMessage = require(script.Parent.DescriptionMessage)
local Table = require(script.Parent.Table)
local Padding = require(script.Parent.Padding)
local Modal = require(script.Parent.Modal)

local Gui = Roact.Component:extend("CollisionGroupsEditorGui")

function Gui:init()
	self.state = {
		GroupRenaming = "",
		Theme = "",
	}

	self.state.Groups = self:GetGroups()
end

function Gui:Modal(message, func)
	self:SetStateAndRefresh{
		ModalActive = true,
		ModalMessage = message,
		ModalFunction = func,
	}
end

function Gui:SetStateAndRefresh(state)
	self:setState(state)
	self:setState{Groups = self:GetGroups()}
end

function Gui:GetGroups()
	local groups = getGroups()
	local selectedGroups = getSelectedGroups(groups)

	for _, group in pairs(groups) do
		group.Renaming = (self.state.GroupRenaming == group.Name)
		group.Selected = contains(selectedGroups, group)

		group.OnDeleted = function()
			if group.Name == "Default" then return end

			local message = string.format("Are you sure you want to delete group\n\n\"%s?\"", group.Name)

			self:Modal(message, function()
				if FFlagStudioYoWhatTheHeckWhyNoUndoInTheCollisionGroupsEditorBro then
					ChangeHistoryService:SetWaypoint("Deleting collision group")
					PhysicsService:RemoveCollisionGroup(group.Name)
					ChangeHistoryService:SetWaypoint("Deleted collision group")
				else
					PhysicsService:RemoveCollisionGroup(group.Name)
				end

				self:SetStateAndRefresh{}
			end)
		end

		group.OnRenamed = function(newName)
			if group.Name == "Default" then return end

			if newName then
				if FFlagStudioYoWhatTheHeckWhyNoUndoInTheCollisionGroupsEditorBro then
					ChangeHistoryService:SetWaypoint("Renaming collision group")
					PhysicsService:RenameCollisionGroup(group.Name, newName)
					ChangeHistoryService:SetWaypoint("Renamed collision group")
				else
					PhysicsService:RenameCollisionGroup(group.Name, newName)
				end
				self:SetStateAndRefresh{GroupRenaming = ""}
			else
				if self.state.GroupRenaming == "" then
					self:SetStateAndRefresh{GroupRenaming = group.Name}
				else
					self:SetStateAndRefresh{GroupRenaming = ""}
				end
			end
		end

		group.OnMembershipSet = function()
			if FFlagStudioYoWhatTheHeckWhyNoUndoInTheCollisionGroupsEditorBro then
				ChangeHistoryService:SetWaypoint("Setting part membership to collision group")
				for _, part in pairs(getSelectedParts()) do
					PhysicsService:SetPartCollisionGroup(part, group.Name)
				end
				ChangeHistoryService:SetWaypoint("Set part membership to collision group")
			else
				for _, part in pairs(getSelectedParts()) do
					PhysicsService:SetPartCollisionGroup(part, group.Name)
				end
			end
			self:SetStateAndRefresh{}
		end

		group.OnSelected = function(gui)
			game:GetService("Selection"):Set(getPartsInGroup(group.Name))
		end

		group.GetCollidesWith = function(otherGroup)
			for _, collision in pairs(group.Collisions) do
				if collision.Name == otherGroup.Name then
					return collision.Collides
				end
			end
		end

		group.ToggleCollidesWith = function(otherGroup)
			local collides = not PhysicsService:CollisionGroupsAreCollidable(group.Name, otherGroup.Name)

			if FFlagStudioYoWhatTheHeckWhyNoUndoInTheCollisionGroupsEditorBro then
				ChangeHistoryService:SetWaypoint("Setting group collision state")
				PhysicsService:CollisionGroupSetCollidable(group.Name, otherGroup.Name, collides)
				ChangeHistoryService:SetWaypoint("Set group collision state")
			else
				PhysicsService:CollisionGroupSetCollidable(group.Name, otherGroup.Name, collides)
			end
			self:SetStateAndRefresh{}
		end
	end

	return groups
end

function Gui:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = settings().Studio.Theme:GetColor(Enum.StudioStyleGuideColor.MainBackground),
	}, {
		Padding = Roact.createElement(Padding, {Padding = UDim.new(0, 8)}),

		Layout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		Table = Roact.createElement(Table, {
			Groups = self.state.Groups,
			Window = self.props.Window,

			OnGroupAdded = function(groupName)
				if FFlagStudioYoWhatTheHeckWhyNoUndoInTheCollisionGroupsEditorBro then
					ChangeHistoryService:SetWaypoint("Creating collision group")
					PhysicsService:CreateCollisionGroup(groupName)
					ChangeHistoryService:SetWaypoint("Created collision group")
				else
					PhysicsService:CreateCollisionGroup(groupName)
				end
				self:SetStateAndRefresh{}
			end,
		}),

		ModalPortal = Roact.createElement(Roact.Portal, {
			target = self.props.Window,
		}, {
			Modal = Roact.createElement(Modal, {
				Active = self.state.ModalActive,
				Message = self.state.ModalMessage,
				Function = self.state.ModalFunction,
				CleanUpFunction = function()
					self:SetStateAndRefresh{
						ModalActive = false,
					}
				end,
			}),
		}),
	})
end

function Gui:didMount()
	self.SelectionChangedConn = game:GetService("Selection").SelectionChanged:Connect(function()
		self:SetStateAndRefresh{}
	end)

	self.ThemeChangedConn = settings().Studio.ThemeChanged:Connect(function(theme)
		self:SetStateAndRefresh{Theme = theme}
	end)

	if FFlagStudioYoWhatTheHeckWhyNoUndoInTheCollisionGroupsEditorBro then
		self.UndoConn = ChangeHistoryService.OnUndo:Connect(function()
			self:SetStateAndRefresh{}
		end)

		self.RedoConn = ChangeHistoryService.OnRedo:Connect(function()
			self:SetStateAndRefresh{}
		end)
	end

	self.PollingGroupChanges = true
	spawn(function()
		while self.PollingGroupChanges do
			if getGroupsChanged() then
				self:SetStateAndRefresh{}
			end
			wait(1)
		end
	end)
end

function Gui:willUnmount()
	self.SelectionChangedConn:Disconnect()
	self.ThemeChangedConn:Disconnect()
	self.PollingGroupChanges = false

	if FFlagStudioYoWhatTheHeckWhyNoUndoInTheCollisionGroupsEditorBro then
		self.UndoConn:Disconnect()
		self.RedoConn:Disconnect()
	end
end

return Gui