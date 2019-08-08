--[[
	A controller component which serves either:
		* A list of developer subscriptions
		* A specific developer subscription's details
	Otherwise, acts as a bridge between those served components
	and the page (which has control over the store)

	Props:
		table DeveloperSubscriptions = the developer subscriptions as a list
		func OnDeveloperSubscriptionsChanged = function to call with the new
			list of developer subscriptions whenever they change
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Roact)

-- HttpService is only used here to generate GUIDs
-- web requests are made through Networking/Requests files
local HttpService = game:GetService("HttpService")

local DeveloperSubscriptionList = require(script.Parent.DeveloperSubscriptionList)
local DeveloperSubscriptionDetails = require(script.Parent.DeveloperSubscriptionDetails)

local DeveloperSubscriptionWidget = Roact.Component:extend("DeveloperSubscriptionWidget")

function DeveloperSubscriptionWidget:init()
	function self.onDeveloperSubscriptionEdited(developerSubscription)
		self:setState({
			isEditingSubscription = true,
			editedSubscriptionKey = developerSubscription.Key,
		})
	end

	function self.onDeveloperSubscriptionChanged(developerSubscription)
		self.props.OnDeveloperSubscriptionChanged(developerSubscription)
	end

	function self.onDeveloperSubscriptionCreated()
		-- when we create a developer subscription, we grant it
		-- a temporary key. ultimately, its key will be based
		-- upon its id as given by the backend, but for now we
		-- just need to put it into our table for later
		local key = "TEMPORARY_"..HttpService:GenerateGUID()

		local newDeveloperSubscription = {
			IsNew = true,
			Key = key,
			Price = 0,
			Subscribers = 0,
			Active = false,
			Id = -1,
			Image = "None",
		}

		-- in this case, we can borrow the functionality of this
		-- function in order to join this new sub to the store
		self.onDeveloperSubscriptionChanged(newDeveloperSubscription)

		-- now switch state, there's a chance that the new
		-- subscription isn't in the store as we understand it, but
		-- we just show nothing until the store gives it to us
		self:setState({
			isEditingSubscription = true,
			editedSubscriptionKey = key,
		})
	end

	function self.onEditFinished()
		-- do stuff with the edited subscription?
		self:setState({
			isEditingSubscription = false,
		})
	end

	self.state = {
		isEditingSubscription = false,
		editedSubscriptionKey = nil,
	}
end

function DeveloperSubscriptionWidget:render()
	local props = self.props

    local developerSubscriptions = props.DeveloperSubscriptions

	if not self.state.isEditingSubscription then
		return Roact.createElement(DeveloperSubscriptionList, {
			DeveloperSubscriptions = developerSubscriptions,
			ModeratedDevSubs = props.ModeratedDevSubs,
			OnDeveloperSubscriptionEdited = self.onDeveloperSubscriptionEdited,
			OnDeveloperSubscriptionCreated = self.onDeveloperSubscriptionCreated,
		})
	else
		local editedSubscription = developerSubscriptions[self.state.editedSubscriptionKey]
		local moderatedDevSub = props.ModeratedDevSubs[self.state.editedSubscriptionKey]
		local devSubErrors = props.DevSubsErrors[self.state.editedSubscriptionKey] or {}

        if editedSubscription then
			return Roact.createElement(DeveloperSubscriptionDetails, {
				DeveloperSubscription = editedSubscription,
				ModeratedDevSub = moderatedDevSub,
				DevSubErrors = devSubErrors,
				
				OnEditFinished = self.onEditFinished,

				OnDeveloperSubscriptionValueChanged = self.props.OnDeveloperSubscriptionValueChanged,
				OnDevSubDiscontinued = self.props.OnDevSubDiscontinued,
				ModerateDevSub = self.props.ModerateDevSub
			})
		else
			return nil
		end
	end
end

return DeveloperSubscriptionWidget