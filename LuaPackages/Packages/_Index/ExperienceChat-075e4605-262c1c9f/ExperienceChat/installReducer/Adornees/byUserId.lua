local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Actions = ExperienceChat.Actions
local AdorneeAdded = require(Actions.AdorneeAdded)
local PlayerRemoved = require(Actions.PlayerRemoved)
local HumanoidDied = require(Actions.HumanoidDied)

export type State = {
	[string]: Instance | Model,
}

local function findFirstChildByNameAndClass(instance: Instance | Model, name: string, class: string): Instance?
	for _, child in ipairs(instance:GetChildren()) do
		if child.Name == name and child:IsA(class) then
			return child
		end
	end

	return nil
end

return Rodux.createReducer({}, {
	[AdorneeAdded.name] = function(state: State, action: AdorneeAdded.Action)
		local head = findFirstChildByNameAndClass(action.character, "Head", "BasePart")
		local adornee = if action.humanoid.Health == 0 then head else action.character

		return Dictionary.join(state, {
			[action.userId] = adornee,
		})
	end :: any,

	[HumanoidDied.name] = function(state: State, action)
		local character = state[action.userId]
		local adornee: Model | Instance
		if character then
			adornee = findFirstChildByNameAndClass(character, "Head", "BasePart") or character
		end

		return Dictionary.join(state, {
			[action.userId] = adornee,
		})
	end :: any,

	[PlayerRemoved.name] = function(state: State, action: PlayerRemoved.Action)
		return Dictionary.removeKey(state, action.userId)
	end :: any,
})
