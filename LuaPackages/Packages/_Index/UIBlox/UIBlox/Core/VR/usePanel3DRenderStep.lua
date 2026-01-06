local VRRoot = script.Parent
local CoreRoot = VRRoot.Parent
local UIBlox = CoreRoot.Parent

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
	if props.anchoring == Constants.AnchoringTypes.PanelManaged and props.connectPanelManagerFunction then
		return
	end

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

			local userHeadCameraCF = GetUserCFrameWorldSpace(Enum.UserCFrame.Head, VRService)

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

			finalPosition = userHeadCameraCF.Position + lastLookCFrame.current.LookVector * cameraHeadScale * 2
			finalPosition = Vector3.new(finalPosition.X, userHeadCameraCF.Position.Y, finalPosition.Z)

			local alignedPanel = props.alignedPanel
			if alignedPanel then
				-- Panel should align to another in-game VR Panel3D with an offset that follows the user's sight direction
				local panelPart = alignedPanel:GetPart()
				local shouldAlignToPanel = panelPart
					and alignedPanel:IsPositionLockedType()
					and (alignedPanel:IsVisible() or alignedPanel.alwaysUpdatePosition)
				if shouldAlignToPanel then
					-- finalPosition should be calculated according to panelPart's position and camera height
					finalPosition = Vector3.new(
						panelPart.Position.X,
						userHeadCameraCF.Position.Y - 0.4 * cameraHeadScale,
						panelPart.Position.Z
					)
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

		if props.offsetCallback then
			finalPosition = props.offsetCallback({
				finalPosition = finalPosition,
				cameraHeadScale = cameraHeadScale,
			})
		end

		if props.lerp and lastOffset.current ~= nil then
			lastOffset.current = lastOffset.current:Lerp(props.offset, LERP_SPEED * deltaSeconds)
		else
			lastOffset.current = props.offset
		end

		local panelCFrame = nil
		if lastOffset.current ~= nil then
			if props.faceCamera then
				local vrCameraCF = GetUserCFrameWorldSpace(Enum.UserCFrame.Head, VRService)
				panelCFrame =
					CFrame.new(finalPosition + lastOffset.current.Position * cameraHeadScale, vrCameraCF.Position)
			else
				local rotX, rotY, rotZ = userNonPrimaryHand:ToOrientation()
				local scaledlastOffset = CFrame.new(lastOffset.current.Position * cameraHeadScale)
				panelCFrame = CFrame.new(finalPosition) * CFrame.Angles(-rotX, rotY, -rotZ) * scaledlastOffset
			end
		end

		if props.tiltCallback then
			panelCFrame = props.tiltCallback({
				panelCFrame = panelCFrame,
				cameraHeadScale = cameraHeadScale,
			})
		end

		if basePart.current ~= nil then
			basePart.current.CFrame = panelCFrame
			-- The smallest part size is 0.05
			-- Don't go smaller than this otherwise there will be a discrepancy between
			-- the physical and visual positions, and the laser pointer cursor will look off
			basePart.current.Size =
				Vector3.new(props.partSize.X * cameraHeadScale, props.partSize.Y * cameraHeadScale, 0.05)
		end
	end, {
		props.anchoring,
		props.faceCamera,
		props.lerp,
		props.offset,
		props.partSize,
		props.alignedPanel,
		props.offsetCallback,
		props.tiltCallback,
	} :: { any })

	React.useEffect(function()
		if props.anchoring ~= Constants.AnchoringTypes.World then
			local cameraCFrameChangedConn
			local alignedPartCFrameChangedConn
			local currentCameraChangedConn
			local function onCurrentCameraChanged()
				if cameraCFrameChangedConn then
					cameraCFrameChangedConn:Disconnect()
				end
				if workspace.CurrentCamera then
					cameraCFrameChangedConn = (workspace.CurrentCamera :: Camera)
						:GetPropertyChangedSignal("CFrame")
						:Connect(function()
							renderSteppedCallback(0)
						end)
				end
			end

			currentCameraChangedConn =
				workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(onCurrentCameraChanged)
			onCurrentCameraChanged()

			if props.alignedPanel then
				local panelPart = props.alignedPanel:GetPart()
				if panelPart then
					alignedPartCFrameChangedConn = panelPart:GetPropertyChangedSignal("CFrame"):Connect(function()
						renderSteppedCallback(0)
					end)
				end
			end

			local connection = props.movementUpdateEvent:Connect(renderSteppedCallback)

			return function()
				connection:Disconnect()
				currentCameraChangedConn:Disconnect()
				if cameraCFrameChangedConn then
					cameraCFrameChangedConn:Disconnect()
				end
				if alignedPartCFrameChangedConn then
					alignedPartCFrameChangedConn:Disconnect()
				end
			end
		end
		return function() end -- FIXME Luau: ERROR: Not all codepaths in this function return '() -> ()'
	end, { props.anchoring, renderSteppedCallback } :: { any })
end

return usePanel3DRenderStep
