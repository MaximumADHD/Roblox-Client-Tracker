--!strict
local VRRoot = script.Parent
local CoreRoot = VRRoot.Parent
local UIBlox = CoreRoot.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local Packages = UIBlox.Parent
local React = require(Packages.React)

local Constants = require(VRRoot.Constants)

local LERP_SPEED = 7.2

local function GetUserCFrameWorldSpace(userCFrameType, VRService)
	local userCFrame: CFrame = VRService:GetUserCFrame(userCFrameType)
	local currentCamera = workspace.CurrentCamera :: Camera

	if not currentCamera.HeadLocked then
		local headCFrame = VRService:GetUserCFrame(Enum.UserCFrame.Head)
		userCFrame = headCFrame:Inverse() * userCFrame
	end

	return currentCamera.CFrame * (CFrame.new(userCFrame.p * currentCamera.HeadScale) * (userCFrame - userCFrame.p))
end

local function usePanel3DRenderStep(props: Constants.Panel3DProps, basePart: Constants.Ref<Part | nil>)
	local lastOffset: Constants.Ref<CFrame?> = React.useRef(props.offset)
	local lastLookCFrame: Constants.Ref<CFrame?> = React.useRef(nil)
	local followView: Constants.Ref<boolean?> = React.useRef(false)

	local VRService = props.vrService

	React.useEffect(function()
		lastOffset.current = props.offset
	end, {})

	local renderSteppedCallback = React.useCallback(function(deltaSeconds)
		local currentCamera = workspace.CurrentCamera :: Camera

		local finalPosition
		local cameraCF = currentCamera.CFrame
		local cameraHeadScale = currentCamera.HeadScale
		local userNonPrimaryHand = nil

		if props.anchoring == Constants.AnchoringTypes.Head then
			-- positions at the bottom of the screen and follow's the user's sight direction
			userNonPrimaryHand = VRService:GetUserCFrame(Enum.UserCFrame.Head)

			local userHeadCameraCF
			if UIBloxConfig.vrApplyHeadScale then
				userHeadCameraCF = GetUserCFrameWorldSpace(Enum.UserCFrame.Head, VRService)
			else
				userHeadCameraCF = cameraCF * userNonPrimaryHand
			end

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

			if UIBloxConfig.vrApplyHeadScale then
				finalPosition = userHeadCameraCF.Position + lastLookCFrame.current.LookVector * cameraHeadScale * 2
			else
				finalPosition = userHeadCameraCF.Position + lastLookCFrame.current.LookVector * (cameraHeadScale + 1)
			end
			finalPosition = Vector3.new(finalPosition.X, userHeadCameraCF.Position.Y, finalPosition.Z)

			local alignedPanel = props.alignedPanel
			if alignedPanel then
				-- Panel should align to another in-game VR Panel3D with an offset that follows the user's sight direction
				local panelPart = alignedPanel:GetPart()
				local shouldAlignToPanel = panelPart
					and alignedPanel:IsPositionLockedType()
					and (alignedPanel:IsVisible() or alignedPanel.alwaysUpdatePosition)
				if shouldAlignToPanel then
					-- finalPosition should be calculated by panelPart's position + an offset that's based on other panel's LookVector.
					-- lookVectorOffset is based on finalPositions calculated in alignedPanel:EvaluatePositioning() and above,
					-- since both finalPositions are equal to userHeadCameraCF.Position + a lookVector offset
					local lookVectorOffset = 0
					if UIBloxConfig.vrApplyHeadScale then
						lookVectorOffset = (cameraHeadScale * 2)
							- (alignedPanel.distance * cameraHeadScale + panelPart.Size.Z * 0.5)
					else
						lookVectorOffset = (cameraHeadScale + 1) - (alignedPanel.distance * cameraHeadScale)
					end
					local shiftedPanelPartPosition = panelPart.Position
						+ lookVectorOffset * alignedPanel.LastFollowCF.LookVector

					finalPosition = Vector3.new(shiftedPanelPartPosition.X, finalPosition.Y, shiftedPanelPartPosition.Z)
				end
			end
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

			local scaledPosition = userNonPrimaryHand.Position * cameraHeadScale
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
				local vrCameraCF
				if UIBloxConfig.vrApplyHeadScale then
					vrCameraCF = GetUserCFrameWorldSpace(Enum.UserCFrame.Head, VRService)
				else
					vrCameraCF = cameraCF * VRService:GetUserCFrame(Enum.UserCFrame.Head)
				end

				panelCFrame =
					CFrame.new(finalPosition + lastOffset.current.Position * cameraHeadScale, vrCameraCF.Position)
			else
				local rotX, rotY, rotZ = userNonPrimaryHand:ToOrientation()
				local scaledlastOffset = CFrame.new(lastOffset.current.Position * cameraHeadScale)
				panelCFrame = CFrame.new(finalPosition) * CFrame.Angles(-rotX, rotY, -rotZ) * scaledlastOffset
			end
		end

		if basePart.current ~= nil then
			basePart.current.CFrame = panelCFrame
			if UIBloxConfig.vrApplyHeadScale then
				-- The smallest part size is 0.05
				-- Don't go smaller than this otherwise there will be a discrepancy between
				-- the physical and visual positions, and the laser pointer cursor will look off
				basePart.current.Size =
					Vector3.new(props.partSize.X * cameraHeadScale, props.partSize.Y * cameraHeadScale, 0.05)
			else
				basePart.current.Size = Vector3.new(props.partSize.X, props.partSize.Y, 0) * cameraHeadScale
			end
		end
	end, { props.anchoring, props.faceCamera, props.lerp, props.offset, props.partSize, props.alignedPanel } :: { any })

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
