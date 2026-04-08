local MomentsCreationFlow = script:FindFirstAncestor("MomentsCreationFlow")
local Packages = MomentsCreationFlow.Parent

local Foundation = require(Packages.Foundation)
local MomentsCommon = require(Packages.MomentsCommon)
local React = require(Packages.React)

local Icon = Foundation.Icon
local View = Foundation.View

local CaptureView = require(MomentsCreationFlow.Components.CaptureView)
local DescriptionView = require(MomentsCreationFlow.Components.DescriptionView)
local EditCTABar = require(MomentsCreationFlow.Components.EditCTABar)
local GalleryView = require(MomentsCreationFlow.Components.GalleryView)
local MusicChip = require(MomentsCreationFlow.Components.MusicChip)
local MusicOverlay = require(MomentsCreationFlow.Components.MusicOverlay)
local PlaybackControls = require(MomentsCreationFlow.Components.PlaybackControls)
local PreviewView = require(MomentsCreationFlow.Components.PreviewView)
local TextOverlayDisplay = MomentsCommon.TextOverlayDisplay
local ExitConfirmationDialog = require(MomentsCreationFlow.Components.Dialogs.ExitConfirmationDialog)
local TextFilteredDialog = require(MomentsCreationFlow.Components.Dialogs.TextFilteredDialog)
local TextOverlayEditor = require(MomentsCreationFlow.Components.TextOverlay.TextOverlayEditor)
local TextOverlayView = require(MomentsCreationFlow.Components.TextOverlay.TextOverlayView)
local TrimmingView = require(MomentsCreationFlow.Components.TrimmingView)

local ClearEdits = require(MomentsCreationFlow.Actions.ClearEdits)
local CreationFlowStateUpdated = require(MomentsCreationFlow.Actions.CreationFlowStateUpdated)
local MusicEditUpdated = require(MomentsCreationFlow.Actions.MusicEditUpdated)
local SelectedCaptureUpdated = require(MomentsCreationFlow.Actions.SelectedCaptureUpdated)
local TextOverlayEditsUpdated = require(MomentsCreationFlow.Actions.TextOverlayEditsUpdated)
local TrimEditUpdated = require(MomentsCreationFlow.Actions.TrimEditUpdated)

local useAutoDismissState = require(MomentsCreationFlow.Hooks.useAutoDismissState)
local useCallback = React.useCallback
local useDeviceInsets = MomentsCommon.Hooks.useDeviceInsets
local useDispatch = MomentsCommon.Hooks.useDispatch
local useFormFactor = MomentsCommon.Hooks.useFormFactor
local useMemo = React.useMemo
local useRef = React.useRef
local useSelector = MomentsCommon.Hooks.useSelector
local useToggleState = MomentsCommon.Hooks.useToggleState
local useTokens = Foundation.Hooks.useTokens
local useUnifiedPlayback = MomentsCommon.Hooks.useUnifiedPlayback

local CreationFlowContext = require(MomentsCreationFlow.Context.CreationFlowContext)

local getContentFromCapture = require(MomentsCreationFlow.Utils.getContentFromCapture)
local makeMomentMetadata = require(MomentsCreationFlow.Utils.makeMomentMetadata)
local makeRegistrationInfo = require(MomentsCreationFlow.Utils.makeRegistrationInfo)

local CreationFlowState = require(MomentsCreationFlow.Enums.CreationFlowState)
local DialogType = require(MomentsCreationFlow.Enums.DialogType)
local FormFactor = MomentsCommon.Enums.FormFactor

local Constants = require(MomentsCreationFlow.Constants)
local CreationFlowLocalization = require(MomentsCreationFlow.Enums.CreationFlowLocalization)
local EventNames = require(MomentsCreationFlow.Analytics.EventNames)

type Edits = MomentsCommon.Edits
type TextOverlayEdit = MomentsCommon.TextOverlayEdit
type TrimEdit = MomentsCommon.TrimEdit
type MusicEdit = MomentsCommon.MusicEdit

local MAX_WIDTH = 600
local MAX_HEIGHT = 700
local PUBLISH_DEBOUNCE_DELAY = 0.5 --seconds

local DEFAULT_TEXT_OVERLAY_EDIT: TextOverlayEdit = {
	position = UDim2.fromScale(0.5, 0.5),
	rotation = 0,
	scale = 1,
	text = "",
	textOverlayStyle = {
		font = Enum.Font.BuilderSansMedium,
		fontColor = Color3.new(0, 0, 0),
		fontSize = 16,
		textXAlignment = Enum.TextXAlignment.Center,
	},
	zIndex = 1,
}

type CreationFlowScreenProps = {
	excludeGallery: boolean?,
}

return function(props: CreationFlowScreenProps): React.ReactElement?
	local dispatch = useDispatch()
	local deviceInsets = useDeviceInsets()
	local tokens = useTokens()
	local formFactor = useFormFactor()
	local isFitMode = useToggleState(false)
	local showLabels, onInteraction = useAutoDismissState()
	local creationFlowContext = React.useContext(CreationFlowContext)

	local resolution, setResolution = React.useState(Vector2.new(0, 0))
	local itemSize, setItemSize = React.useState(Vector2.new(0, 0))
	local activeModal, setActiveModal = React.useState({ modalType = nil, modalProps = nil })

	local onAbsoluteSizeChanged = useCallback(function(rbx: GuiObject)
		setItemSize(rbx.AbsoluteSize)
	end, {})

	local captures: { Capture } = creationFlowContext.captures

	local lastPublishTime = useRef(0)

	local editFlowState = useSelector(function(state)
		return state[Constants.RoduxKey].CreationFlow.currentState
	end)

	local currCapture = useSelector(function(state)
		return state[Constants.RoduxKey].CreationFlow.capture
	end)

	local textOverlayEdits = useSelector(function(state)
		return state[Constants.RoduxKey].CreationFlow.textOverlayEdits
	end)

	local trimEdit = useSelector(function(state)
		return state[Constants.RoduxKey].CreationFlow.trimEdit
	end)

	local musicEdit = useSelector(function(state)
		return state[Constants.RoduxKey].CreationFlow.musicEdit
	end)

	local description = useSelector(function(state)
		return state[Constants.RoduxKey].CreationFlow.description
	end)

	local textOverlayEditsTemp: { TextOverlayEdit }?, setTextOverlayEditsTemp =
		React.useState(nil :: { TextOverlayEdit }?)
	local trimEditTemp: TrimEdit?, setTrimEditTemp = React.useState(nil :: TrimEdit?)
	local musicEditTemp: MusicEdit?, setMusicEditTemp = React.useState(nil :: MusicEdit?)

	local activeMusicEdit = useMemo(function()
		return musicEditTemp or musicEdit
	end, { musicEditTemp, musicEdit })

	local activeTrimEdit = useMemo(function()
		return trimEditTemp or trimEdit
	end, { trimEditTemp, trimEdit })

	local playbackController = useUnifiedPlayback(true, {
		autoplay = true,
		edits = {
			trim = activeTrimEdit,
			music = activeMusicEdit,
		},
		looping = true,
		content = if currCapture then getContentFromCapture(currCapture) else nil,
		captureType = if currCapture then currCapture.CaptureType else nil,
	})

	local onEditsStart = useCallback(function()
		creationFlowContext.fireEvent(EventNames.EditingFlowNextButtonPressed, {
			editFlowState = editFlowState,
		})
		dispatch(CreationFlowStateUpdated(CreationFlowState.Preview))
		onInteraction()
		creationFlowContext.fireEvent(EventNames.MomentsEditingFlowContinueToEditButtonPressed)
	end, { onInteraction, editFlowState })

	local onEditsComplete = useCallback(function()
		creationFlowContext.fireEvent(EventNames.EditingFlowNextButtonPressed, {
			editFlowState = editFlowState,
		})
		dispatch(CreationFlowStateUpdated(CreationFlowState.Description))
		isFitMode.disable()

		creationFlowContext.fireEvent(EventNames.MomentsEditingFlowContinueToDescriptionButtonPressed)
	end, { editFlowState })

	local runTextFilter = useCallback(function(inputText: string)
		local isTextFiltered = creationFlowContext.isTextFiltered(inputText)
		if isTextFiltered then
			setActiveModal({
				modalType = DialogType.TextFiltered,
				modalProps = {
					onConfirm = function()
						setActiveModal(nil)
					end,
				},
			})
		end
		return isTextFiltered
	end, {})

	local onPublish = useCallback(function()
		if runTextFilter(description) then
			return
		end

		local currentTime = os.clock()
		local timeSinceLastPublish = currentTime - lastPublishTime.current
		if timeSinceLastPublish < PUBLISH_DEBOUNCE_DELAY then
			return
		end

		lastPublishTime.current = currentTime

		local edits: Edits = { trim = trimEdit, music = musicEdit, textOverlays = textOverlayEdits }
		local metadata = makeMomentMetadata(currCapture, description, edits)
		local registrationInfo = makeRegistrationInfo(currCapture, metadata)

		creationFlowContext.createMoment(currCapture, metadata, registrationInfo)

		if props.excludeGallery then
			dispatch(ClearEdits(CreationFlowState.Preview))
		else
			dispatch(ClearEdits(CreationFlowState.Gallery))
		end

		creationFlowContext.fireEvent(EventNames.MomentsEditingFlowPublished)

		creationFlowContext.exitCreationFlow()
	end, {
		currCapture,
		description,
		musicEdit,
		creationFlowContext,
		textOverlayEdits,
		trimEdit,
		props.excludeGallery,
	})

	local onReturnToEditing = useCallback(function()
		creationFlowContext.fireEvent(EventNames.EditingFlowReturnButtonPressed, {
			editFlowState = editFlowState,
		})

		dispatch(CreationFlowStateUpdated(CreationFlowState.Preview))
	end, { editFlowState })

	local onReturnToGallery = useCallback(function()
		creationFlowContext.fireEvent(EventNames.EditingFlowReturnButtonPressed, {
			editFlowState = editFlowState,
		})

		local function onExitCreation()
			setActiveModal(nil)
			dispatch(ClearEdits(CreationFlowState.Gallery))
			isFitMode.disable()
		end

		setActiveModal({
			modalType = DialogType.ExitCreationConfirmation,
			modalProps = {
				onCancel = function()
					setActiveModal(nil)
				end,
				onConfirm = onExitCreation,
			},
		})
	end, { editFlowState })

	local onTrimDiscard = useCallback(function()
		setTrimEditTemp(nil)
		dispatch(CreationFlowStateUpdated(CreationFlowState.Preview))
		creationFlowContext.fireEvent(EventNames.EditingFlowTrimBackButtonPressed)
	end, { creationFlowContext })

	local onTrimSave = useCallback(function()
		dispatch(TrimEditUpdated(trimEditTemp))
		setTrimEditTemp(nil)
		dispatch(CreationFlowStateUpdated(CreationFlowState.Preview))
		creationFlowContext.fireEvent(EventNames.EditingFlowTrimDoneButtonPressed)
	end, { trimEditTemp, creationFlowContext })

	local onTrimUpdate = useCallback(function(trimEditToUpdate: TrimEdit?)
		setTrimEditTemp(trimEditToUpdate)
	end, {})

	local onMusicDiscard = useCallback(function()
		setMusicEditTemp(nil)
		dispatch(CreationFlowStateUpdated(CreationFlowState.Preview))
		creationFlowContext.fireEvent(EventNames.EditingFlowMusicBackButtonPressed)
	end, {})

	local onMusicSave = useCallback(function()
		dispatch(MusicEditUpdated(musicEditTemp))
		setMusicEditTemp(nil)
		dispatch(CreationFlowStateUpdated(CreationFlowState.Preview))
		creationFlowContext.fireEvent(EventNames.EditingFlowMusicDoneButtonPressed)
	end, { musicEditTemp })

	local onMusicUpdate = useCallback(function(musicEditToUpdate: MusicEdit?)
		setMusicEditTemp(musicEditToUpdate)
	end, {})

	local onTextOverlayDiscard = useCallback(function()
		setTextOverlayEditsTemp(nil)
		dispatch(CreationFlowStateUpdated(CreationFlowState.Preview))
		creationFlowContext.fireEvent(EventNames.EditingFlowTextOverlayBackButtonPressed)
	end, { textOverlayEditsTemp, creationFlowContext })

	local onTextOverlaySave = useCallback(function()
		local inputText = textOverlayEditsTemp and textOverlayEditsTemp[1] and textOverlayEditsTemp[1].text
		if inputText == "" then
			dispatch(TextOverlayEditsUpdated(nil))
		elseif runTextFilter(inputText) then
			return
		else
			dispatch(TextOverlayEditsUpdated(textOverlayEditsTemp))
		end

		dispatch(CreationFlowStateUpdated(CreationFlowState.Preview))
		creationFlowContext.fireEvent(EventNames.EditingFlowTextOverlayDoneButtonPressed)
		setTextOverlayEditsTemp(nil)
	end, { textOverlayEditsTemp, creationFlowContext, runTextFilter })

	local onTextOverlayUpdated = useCallback(function(edits: { TextOverlayEdit }?)
		setTextOverlayEditsTemp(edits)
	end, {})

	local onTextOverlayDragEnd = useCallback(function(edits: { TextOverlayEdit }?)
		dispatch(TextOverlayEditsUpdated(edits))
	end, {})

	local onTextOverlayActivated = useCallback(function()
		setTextOverlayEditsTemp(textOverlayEdits)
		dispatch(CreationFlowStateUpdated(CreationFlowState.TextOverlay))
	end, { textOverlayEdits })

	React.useEffect(function()
		if editFlowState == CreationFlowState.TextOverlay then
			setTextOverlayEditsTemp(textOverlayEdits or { DEFAULT_TEXT_OVERLAY_EDIT })
		end
	end, { textOverlayEdits, editFlowState })

	local onMusicChipActivated = useCallback(function()
		dispatch(CreationFlowStateUpdated(CreationFlowState.Music))
		creationFlowContext.fireEvent(EventNames.EditingFlowMusicButtonPressed)
	end, {})

	local onCaptureSelected = useCallback(function(capture)
		dispatch(SelectedCaptureUpdated(capture))
		onInteraction()
		creationFlowContext.fireEvent(EventNames.EditingFlowGalleryItemSelected)
	end, { onInteraction, creationFlowContext })

	local onRenderFailed = React.useCallback(function()
		return React.createElement(View, {
			Size = UDim2.fromScale(1, 1),
			stateLayer = { affordance = Foundation.Enums.StateLayerAffordance.None },
		}, {
			ModeratedText = React.createElement("TextLabel", {
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Position = UDim2.fromScale(0.5, 0.5),
				Size = UDim2.fromScale(1, 1),
				Text = creationFlowContext.getLocalization(CreationFlowLocalization.PostRemovedTitle),
				TextColor3 = tokens.Color.Extended.White.White_70,
			}),
		}) :: any
	end, {})

	local onCloseButton = useCallback(function()
		local function onExitCreation()
			creationFlowContext.fireEvent(EventNames.MomentsEditingFlowExited)
			setActiveModal(nil)
			if props.excludeGallery then
				dispatch(ClearEdits(CreationFlowState.Preview))
			else
				dispatch(ClearEdits(CreationFlowState.Gallery))
			end
			creationFlowContext.exitCreationFlow()
		end

		if currCapture then
			setActiveModal({
				modalType = DialogType.ExitCreationConfirmation,
				modalProps = {
					onCancel = function()
						setActiveModal(nil)
					end,
					onConfirm = onExitCreation,
				},
			})
		else
			onExitCreation()
		end
	end, { currCapture, creationFlowContext, props.excludeGallery })

	React.useEffect(function()
		creationFlowContext.setScreenOrientation(Enum.ScreenOrientation.Portrait)

		return function()
			creationFlowContext.setScreenOrientation(Enum.ScreenOrientation.Sensor)
		end
	end, {})

	React.useEffect(function()
		if
			editFlowState == CreationFlowState.Gallery
			or editFlowState == CreationFlowState.Music
			or editFlowState == CreationFlowState.Description
		then
			isFitMode.disable()
		end
	end, { editFlowState })

	local renderModal = React.useCallback(function()
		if not activeModal then
			return nil
		end

		if activeModal.modalType == DialogType.ExitCreationConfirmation then
			return React.createElement(ExitConfirmationDialog, activeModal.modalProps)
		elseif activeModal.modalType == DialogType.TextFiltered then
			return React.createElement(TextFilteredDialog, activeModal.modalProps)
		end
		return nil
	end, { activeModal })

	return React.createElement(View, {
		backgroundStyle = tokens.Color.Common.Scrim,
		tag = "anchor-center-center position-center-center size-full-full",
	}, {
		CreationFlowView = React.createElement(View, {
			tag = "anchor-center-center bg-surface-0 position-center-center radius-large size-full-full",
			sizeConstraint = {
				MaxSize = if formFactor == FormFactor.Wide then Vector2.new(MAX_WIDTH, MAX_HEIGHT) else nil,
			},
		}, {
			CloseButtonContainer = React.createElement(View, {
				tag = "auto-xy anchor-top-right position-top-right",
			}, {
				Padding = React.createElement("UIPadding", {
					PaddingTop = UDim.new(0, deviceInsets.top + tokens.Padding.Medium),
					PaddingRight = UDim.new(0, deviceInsets.right + tokens.Padding.Medium),
				}),

				CloseButton = React.createElement(View, {
					LayoutOrder = 1,
					onActivated = onCloseButton,
					tag = "size-1100-1100 bg-over-media-0 padding-medium radius-circle",
				}, {
					CloseIcon = React.createElement(Icon, {
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.fromScale(0.5, 0.5),
						name = "icons/navigation/close_small",
						size = Foundation.Enums.IconSize.Small,
						style = tokens.Color.ActionEmphasis.Foreground,
						ZIndex = 2,
					}),
				}),
			}),

			MainViewContainer = React.createElement(View, {
				tag = "size-full",
			}, {
				MainView = React.createElement(View, {
					tag = "size-full col align-x-center",
				}, {
					PreviewContainer = React.createElement("CanvasGroup", {
						LayoutOrder = 1,
						Size = UDim2.fromScale(1, 1),
						BackgroundTransparency = tokens.Color.None.Transparency,
					}, {
						UIFlexItem = React.createElement("UIFlexItem", {
							FlexMode = Enum.UIFlexMode.Custom,
							ShrinkRatio = if currCapture then 1 else 2,
						}),

						UICorner = React.createElement("UICorner", {
							CornerRadius = UDim.new(0, tokens.Radius.Large),
						}),

						ClickCapture = React.createElement(View, {
							tag = "size-full",
							onActivated = onInteraction,
							stateLayer = { affordance = Foundation.Enums.StateLayerAffordance.None },
							ZIndex = 0,
						}),

						PreviewMediaOverlay = React.createElement(View, {
							tag = "auto-y anchor-bottom-center col position-bottom-center size-full-0",
							ZIndex = 5,
						}, {
							OtherControls = React.createElement(View, {
								tag = "auto-y padding-x-large padding-bottom-large size-full-0",
								LayoutOrder = 1,
							}, {
								Padding = React.createElement("UIPadding", {
									PaddingLeft = UDim.new(0, math.max(deviceInsets.right, tokens.Padding.Large)),
									PaddingRight = UDim.new(0, math.max(deviceInsets.right, tokens.Padding.Large)),
								}),

								MusicIndicator = if musicEdit
										and (
											editFlowState == CreationFlowState.Preview
											or editFlowState == CreationFlowState.Description
										)
									then React.createElement(View, {
										tag = "anchor-bottom-left auto-xy position-bottom-left",
									}, {
										MusicChip = React.createElement(MusicChip, {
											musicAssetId = musicEdit.assetId,
											onActivated = onMusicChipActivated,
										}),
									})
									else nil,
							}),

							PlaybackControls = if currCapture
									and currCapture.CaptureType == Enum.CaptureType.Video
									and showLabels
									and (
										editFlowState == CreationFlowState.Gallery
										or editFlowState == CreationFlowState.Preview
									)
								then React.createElement(PlaybackControls, {
									layoutOrder = 2,
									playbackController = playbackController,
									toggleFitMode = isFitMode.toggle,
									isFitMode = isFitMode.enabled,
								})
								else nil,
						}),

						TextOverlayEditor = if editFlowState == CreationFlowState.TextOverlay
							then React.createElement(TextOverlayEditor, {
								layoutOrder = 2,
								onTextOverlayDiscard = onTextOverlayDiscard,
								onTextOverlaySave = onTextOverlaySave,
								onTextOverlayUpdated = onTextOverlayUpdated,
								textOverlayEdits = textOverlayEditsTemp,
							})
							else nil,

						CaptureView = React.createElement(CaptureView, {
							capture = currCapture,
							playbackController = playbackController,
							onAbsoluteSizeChanged = onAbsoluteSizeChanged,
							onRenderFailed = onRenderFailed,
							onResolutionChanged = setResolution,
							scaleType = if isFitMode.enabled then Enum.ScaleType.Fit else Enum.ScaleType.Crop,
						}, {
							TextOverlayDisplay = React.createElement(TextOverlayDisplay, {
								draggable = editFlowState == CreationFlowState.Preview,
								editable = editFlowState == CreationFlowState.TextOverlay,
								itemResolution = resolution,
								itemSize = itemSize,
								scaleType = if isFitMode.enabled then Enum.ScaleType.Fit else Enum.ScaleType.Crop,
								onTextOverlayActivated = onTextOverlayActivated,
								onTextOverlayDragEnd = onTextOverlayDragEnd,
								textOverlayEdits = textOverlayEdits,
								zIndex = 3,
							}),
						}),

						EditCTABar = if editFlowState == CreationFlowState.Preview
							then React.createElement(EditCTABar, {
								captureType = if currCapture then currCapture.CaptureType else nil,
								showText = showLabels,
								zIndex = 4,
							})
							else nil,
					}),

					GalleryView = if editFlowState == CreationFlowState.Gallery
						then React.createElement(GalleryView, {
							layoutOrder = 2,
							captures = captures,
							selectedCapture = currCapture,
							onCaptureSelected = onCaptureSelected,
							onNextCallback = onEditsStart,
						})
						else nil,

					PreviewView = if editFlowState == CreationFlowState.Preview
						then React.createElement(PreviewView, {
							layoutOrder = 2,
							onContinueCallback = onEditsComplete,
							onReturnToGalleryCallback = if not props.excludeGallery then onReturnToGallery else nil,
						})
						else nil,

					TrimmingView = if editFlowState == CreationFlowState.Trimming
						then React.createElement(TrimmingView, {
							layoutOrder = 2,
							playbackController = playbackController,
							onTrimDiscard = onTrimDiscard,
							onTrimSave = onTrimSave,
							onTrimUpdate = onTrimUpdate,
							selectedCapture = currCapture,
							trimEdit = activeTrimEdit,
						})
						else nil,

					TextOverlayView = if editFlowState == CreationFlowState.TextOverlay
						then React.createElement(TextOverlayView, {
							layoutOrder = 2,
							onTextOverlayDiscard = onTextOverlayDiscard,
							onTextOverlaySave = onTextOverlaySave,
						})
						else nil,

					DescriptionView = if editFlowState == CreationFlowState.Description
						then React.createElement(DescriptionView, {
							layoutOrder = 2,
							onPublish = onPublish,
							onReturnToEditing = onReturnToEditing,
						})
						else nil,
				}),

				MusicView = if editFlowState == CreationFlowState.Music
					then React.createElement(View, {
						Size = UDim2.fromScale(1, 1),
						LayoutOrder = 2,
					}, {
						MusicOverlay = React.createElement(MusicOverlay, {
							musicEdit = activeMusicEdit,
							playbackController = playbackController,
							onMusicDiscard = onMusicDiscard,
							onMusicSave = onMusicSave,
							onMusicUpdate = onMusicUpdate,
						}),
					})
					else nil,
			}),
		}),

		Modal = renderModal(),
	})
end
