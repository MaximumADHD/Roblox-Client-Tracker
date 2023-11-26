MAIN:
  PREPVARARGS 0
  LOADK R0 K0 ["local userInputService = game:GetService(\"UserInputService\")

local delayBeforeStart = 3
local delayBetweenSwitching = 1

local AnimationInfo = {
	displayName = nil,
	faceAnimationAssetId = \"-1\",
	bodyAnimationAssetId = \"-1\",
}

AnimationInfo.__index = AnimationInfo

function AnimationInfo.new(tbl)
	local newListItemInfo = tbl or {}
	setmetatable(newListItemInfo, AnimationInfo)
	return newListItemInfo
end

local animationsListMoods = { -- moods expressions:
	AnimationInfo.new({
		displayName = \"mood_neutral\",
		faceAnimationAssetId = \"7715096377\",
		bodyAnimationAssetId = \"3333331310\"
	}), AnimationInfo.new({
		displayName = \"mood_1\",
		faceAnimationAssetId = \"7715102557\",
		bodyAnimationAssetId = \"-1\"
	}), AnimationInfo.new({
		displayName = \"mood_2\",
		faceAnimationAssetId = \"7715106138\",
		bodyAnimationAssetId = \"-1\"
	}), AnimationInfo.new({
		displayName = \"mood_3\",
		faceAnimationAssetId = \"7715109713\",
		bodyAnimationAssetId = \"-1\"
	}), AnimationInfo.new({
		displayName = \"mood_4\",
		faceAnimationAssetId = \"7715114351\",
		bodyAnimationAssetId = \"-1\"
	}), AnimationInfo.new({
		displayName = \"mood_5\",
		faceAnimationAssetId = \"7715119645\",
		bodyAnimationAssetId = \"-1\"
	}), AnimationInfo.new({
		displayName = \"mood_6\",
		faceAnimationAssetId = \"7715122816\",
		bodyAnimationAssetId = \"-1\"
	}), AnimationInfo.new({
		displayName = \"mood_8\",
		faceAnimationAssetId = \"7715129652\",
		bodyAnimationAssetId = \"-1\"
	}), AnimationInfo.new({
		displayName = \"mood_9\",
		faceAnimationAssetId = \"7715137283\",
		bodyAnimationAssetId = \"-1\"
	}), AnimationInfo.new({
		displayName = \"mood_11\",
		faceAnimationAssetId = \"7715145252\",
		bodyAnimationAssetId = \"-1\"
	}), AnimationInfo.new({
		displayName = \"mood_12\",
		faceAnimationAssetId = \"7715148763\",
		bodyAnimationAssetId = \"-1\"
	}), AnimationInfo.new({
		displayName = \"mood_13\",
		faceAnimationAssetId = \"7715155442\",
		bodyAnimationAssetId = \"-1\"
	}), AnimationInfo.new({
		displayName = \"mood_15\",
		faceAnimationAssetId = \"7715163042\",
		bodyAnimationAssetId = \"-1\"
	}), AnimationInfo.new({
		displayName = \"mood_16\",
		faceAnimationAssetId = \"7715166020\",
		bodyAnimationAssetId = \"-1\"
	}), AnimationInfo.new({
		displayName = \"mood_17\",
		faceAnimationAssetId = \"7715171634\",
		bodyAnimationAssetId = \"-1\"
	}), AnimationInfo.new({
		displayName = \"mood_18\",
		faceAnimationAssetId = \"7715175106\",
		bodyAnimationAssetId = \"-1\"
	}), AnimationInfo.new({
		displayName = \"mood_19\",
		faceAnimationAssetId = \"7715178118\",
		bodyAnimationAssetId = \"-1\"
	}), AnimationInfo.new({
		displayName = \"mood_20\",
		faceAnimationAssetId = \"7715183102\",
		bodyAnimationAssetId = \"-1\"
	})}



local character = script.Parent
local humanoid = character:WaitForChild(\"Humanoid\")

function StopPlayback()
	local playingAnims = humanoid:GetPlayingAnimationTracks()
	for i, track in pairs(playingAnims) do
		if track.Name == \"head\" then
			track:Stop()
		end
	end
end


function PlayFaceAndBodyAnimsByIds(targetFaceAnim, targetBodyAnim)
	local humanoid = character:WaitForChild(\"Humanoid\")

	StopPlayback()

	local faceAnimation
	local faceAnimationTrack

	-- play the face animation
	if targetFaceAnim ~= \"-1\" and targetFaceAnim ~= nil then
		faceAnimation = Instance.new(\"Animation\")
		faceAnimation.AnimationId = \"rbxassetid://\" .. targetFaceAnim
		faceAnimationTrack = humanoid:LoadAnimation(faceAnimation)
		faceAnimationTrack.Looped = true
		faceAnimationTrack.Name = \"head\"
		faceAnimationTrack:Play()
	end

	local bodyAnimation
	local bodyAnimationTrack

	-- play the body animation
	local bodyAnim = script:GetAttribute(\"BodyAnimate\")
	if bodyAnim and targetBodyAnim ~= \"-1\" and targetBodyAnim ~= nil then
		bodyAnimation = Instance.new(\"Animation\")
		bodyAnimation.AnimationId = \"http://www.roblox.com/asset/?id=\" .. targetBodyAnim
		bodyAnimationTrack = humanoid:LoadAnimation(bodyAnimation)
		bodyAnimationTrack.Looped = true
		bodyAnimationTrack.Name = \"body\"
		bodyAnimationTrack:Play()
	end
end


wait(delayBeforeStart)


while true do
	for index = 1, #animationsListMoods do
	local item = animationsListMoods[index]
	PlayFaceAndBodyAnimsByIds(item.faceAnimationAssetId, item.bodyAnimationAssetId)

	print(\"playing: \"..item.displayName)
	wait(delayBetweenSwitching)
	end
end"]
  RETURN R0 1
