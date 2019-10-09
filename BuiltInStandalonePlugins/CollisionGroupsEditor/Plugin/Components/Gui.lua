local Roact = require(script.Parent.Parent.Parent.modules.Roact)
local UILibrary = require(script.Parent.Parent.Parent.modules.UILibrary)
local Resources = script.Parent.Parent.Parent.Resources

local HttpService = game:GetService("HttpService")

local contains = require(script.Parent.Parent.contains)
local withLocalization = UILibrary.Localizing.withLocalization

local Table = require(script.Parent.Table)
local Padding = require(script.Parent.Padding)
local Modal = require(script.Parent.Modal)
local ServiceWrapper = require(script.Parent.ServiceWrapper)

local Gui = Roact.Component:extend("CollisionGroupsEditorGui")

function Gui:init()
	self.state = {
		GroupRenaming = "",
		Theme = "",
	}

	self.state.Groups = self:GetGroups()
end

function Gui:Modal(messageKey, messageArgs, func)
	self:SetStateAndRefresh{
		ModalActive = true,
		ModalFunction = func,
		modalMessageKey = messageKey,
		modalMessageArgs = messageArgs,
	}
end

function Gui:SetStateAndRefresh(state)
	self:setState(state)
	self:setState{Groups = self:GetGroups()}
end

function Gui:GetGroups()
	local groupsJsonString = self.props.plugin:GetItem("Groups")
	if (groupsJsonString == '') then 
		groupsJsonString = "{}"
	end
	local selectedGroupsIdsJsonString = self.props.plugin:GetItem("SelectedGroupIds")
	if (selectedGroupsIdsJsonString == '') then 
		selectedGroupsIdsJsonString = "{}"
	end

	local groups = HttpService:JSONDecode(groupsJsonString)
	local selectedGroupIds = HttpService:JSONDecode(selectedGroupsIdsJsonString)

	for _, group in pairs(groups) do
		group.Renaming = (self.state.GroupRenaming == group.Name)
		group.Selected = contains(selectedGroupIds, group.Id)

		group.OnDeleted = function()
			if group.Name == "Default" then return end

			local messageKey = "ConfirmDeletion"
			local messageArgs = {group.Name}

			self:Modal(messageKey, messageArgs, function()
				self.props.plugin:Fire("DeleteCollisionGroup", group.Name)
			end)
		end

		group.OnRenamed = function(newName)
			if group.Name == "Default" then return end

			if newName then
				local jsonBlob = {}
				jsonBlob.oldName = group.Name
				jsonBlob.newName = newName
				local jsonBlobString = HttpService:JSONEncode(jsonBlob)
				self.props.plugin:Fire("RenameCollisionGroup", jsonBlobString)
			else
				if self.state.GroupRenaming == "" then
					self:SetStateAndRefresh({GroupRenaming = group.Name})
				else
					self:SetStateAndRefresh({GroupRenaming = ""})
				end
			end
		end

		group.OnMembershipSet = function()
			self.props.plugin:Fire("AddSelectedPartsToCollisionGroup", group.Name)
		end

		group.OnSelected = function(gui)
			self.props.plugin:Fire("SelectPartsInCollisionGroup", group.Name)
		end

		group.GetCollidesWith = function(otherGroup)
			for _, collision in pairs(group.Collisions) do
				if collision.Name == otherGroup.Name then
					return collision.Collides
				end
			end
		end

		group.ToggleCollidesWith = function(otherGroup)
			local jsonBlob = {}
			jsonBlob.groupName = group.Name
			jsonBlob.otherGroupName = otherGroup.Name
			local jsonBlobString = HttpService:JSONEncode(jsonBlob)
			self.props.plugin:Fire("ToggleCollidesWith", jsonBlobString)
		end
	end

	return groups
end

function Gui:render()
	local props = self.props

	local plugin = props.plugin

	local localization = UILibrary.Studio.Localization.new({
		stringResourceTable = Resources.TranslationDevelopmentTable,
		translationResourceTable = Resources.TranslationReferenceTable,
		pluginName = "CGE",
	})

	return Roact.createElement(ServiceWrapper, {
		plugin = plugin,
		localization = localization,
	}, {
		Roact.createElement("Frame", {
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
					self.props.plugin:Fire("CreateCollisionGroup", groupName)
				end,
			}),

			ModalPortal = Roact.createElement(Roact.Portal, {
				target = self.props.Window,
			}, {
				Modal = Roact.createElement(Modal, {
					Active = self.state.ModalActive,
					Message = self.state.ModalMessage,

					messageKey = self.state.modalMessageKey,
					messageArgs = self.state.modalMessageArgs,

					Function = self.state.ModalFunction,
					CleanUpFunction = function()
						self:SetStateAndRefresh({
							ModalActive = false,
						})
					end,
				}),
			}),
		})
	})
end

function Gui:didMount()
	self.SetStateAndRefreshConn = self.props.plugin:Bind("SetStateAndRefresh", function(jsonBlobString)
		local jsonBlob = HttpService:JSONDecode(jsonBlobString)
		self:SetStateAndRefresh(jsonBlob)
	end)

	self.ThemeChangedConn = settings().Studio.ThemeChanged:Connect(function(theme)
		self:SetStateAndRefresh({Theme = theme})
	end)
end

function Gui:willUnmount()
	self.SetStateAndRefreshConn:Disconnect()
	self.ThemeChangedConn:Disconnect()
end

return Gui
