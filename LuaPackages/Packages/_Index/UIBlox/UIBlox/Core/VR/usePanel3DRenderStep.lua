--!strict
local VRService = game:GetService("VRService")

local VRRoot = script.Parent
local CoreRoot = VRRoot.Parent
local UIBlox = CoreRoot.Parent

local Packages = UIBlox.Parent
local React = require(Packages.React)

local Constants = require(VRRoot.Constants)

local LERP_SPEED = 7.2

local function usePanel3DRenderStep(props: Constants.Panel3DProps, basePart: Constants.Ref<Part | nil>)
	local lastOffset: Constants.Ref<CFrame?> = React.useRef(props.offset)
	local lastLookCFrame: Constants.Ref<CFrame?> = React.useRef(nil)
	local followView: Constants.Ref<boolean?> = React.useRef(false)

	React.useEffect(function()
		lastOffset.current = props.offset
	end, {})

	local renderSteppedCallback = React.useCallback(function(deltaSeconds)
		local finalPosition
		local cameraCF = workspace.CurrentCamera.CFrame
		local userNonPrimaryHand = nil

		if props.anchoring == Constants.AnchoringTypes.Head then
			-- positions at the bottom of the screen and follow's the user's sight direction
			userNonPrimaryHand = VRService:GetUserCFrame(Enum.UserCFrame.Head)

			local userHeadCameraCF = cameraCF * userNonPrimaryHand

			if lastLookCFrame.current == nil then
				lastLookCFrame.current = userHeadCameraCF
			end
			-- tell Luau this is indeed not nil
			assert(lastLookCFrame.current ~= nil, "lastLookCFrame should not be nil.")

			if lastLookCFrame.current.LookVector:Dot(userHeadCameraCF.LookVector) < 0.85 then
				followView.current = true
			elseif lastLookCFrame.current.LookVector:Dot(userHeadCameraCF.LookVector) > 0.99 then
				followView.current = false
			end

			if followView.current then
				lastLookCFrame.current = lastLookCFrame.current:Lerp(userHeadCameraCF, LERP_SPEED * deltaSeconds)
			end

			finalPosition = userHeadCameraCF.Position
				+ lastLookCFrame.current.LookVector * workspace.CurrentCamera.HeadScale * 2
			finalPosition = Vector3.new(finalPosition.X, userHeadCameraCF.Position.Y, finalPosition.Z)
		elseif props.anchoring == Constants.AnchoringTypes.Wrist then
			-- Always try to use non-primary hand for anchoring the menu, defaults to LeftHand when using head tracking.
			if
				VRService:GetUserCFrameEnabled(Enum.UserCFrame.RightHand)
				and (VRService.GuiInputUserCFrame == Enum.UserCFrame.LeftHand)
			then
				userNonPrimaryHand = VRService:GetUserCFrame(Enum.UserCFrame.RightHand)
			elseif VRService:GetUserCFrameEnabled(Enum.UserCFrame.LeftHand) then
				userNonPrimaryHand = VRService:GetUserCFrame(Enum.UserCFrame.LeftHand)
			end
			if not userNonPrimaryHand then
				userNonPrimaryHand = VRService:GetUserCFrame(Enum.UserCFrame.Head) -- fallback
			end

			local scaledPosition = userNonPrimaryHand.Position * workspace.CurrentCamera.HeadScale
			local wristCF = cameraCF * CFrame.new(scaledPosition)
			finalPosition = wristCF.Position
		else -- Constants.AnchoringTypes.World
			return
		end

		if props.lerp and lastOffset.current ~= nil then
			lastOffset.current = lastOffset.current:Lerp(props.offset, LERP_SPEED * deltaSeconds)
		else
			lastOffset.current = props.offset
		end

		local panelCFrame = nil
		if lastOffset.current ~= nil then
			if props.faceCamera then
				local vrCameraCF = cameraCF * VRService:GetUserCFrame(Enum.UserCFrame.Head)
				panelCFrame = CFrame.new(
					finalPosition + lastOffset.current.Position * workspace.CurrentCamera.HeadScale,
					vrCameraCF.Position
				)
			else
				local rotX, rotY, rotZ = userNonPrimaryHand:ToOrientation()
				local scaledlastOffset = CFrame.new(lastOffset.current.Position * workspace.CurrentCamera.HeadScale)
				panelCFrame = CFrame.new(finalPosition) * CFrame.Angles(-rotX, rotY, -rotZ) * scaledlastOffset
			end
		end

		if basePart.current ~= nil then
			basePart.current.CFrame = panelCFrame
			basePart.current.Size = Vector3.new(props.partSize.X, props.partSize.Y, 0)
				* workspace.CurrentCamera.HeadScale
		end
	end, { props.anchoring, props.faceCamera, props.lerp, props.offset, props.partSize } :: { any })

	React.useEffect(function()
		if props.anchoring ~= Constants.AnchoringTypes.World then
			local connection = props.movementUpdateEvent:Connect(renderSteppedCallback)
			return function()
				connection:Disconnect()
			end
		end
		return function() end -- FIXME Luau: ERROR: Not all codepaths in this function return '() -> ()'
	end, { props.anchoring, renderSteppedCallback } :: { any })
end

return usePanel3DRenderStep
