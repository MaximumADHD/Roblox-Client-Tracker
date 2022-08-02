--[[
	This component listens for changes to the Studio selection.

	Props:
		WidgetEnabled: boolean -- whether the 9SliceEditor widget is shown
		InstanceUnderEditChanged: function -- called when instance under edit changed
		SliceRectChanged: function -- called when slice rect changed
		LoadingChanged: function -- called when loading status changed
]]

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local SliceRectUtil = require(Plugin.Src.Util.SliceRectUtil)
local Types = require(Plugin.Src.Types)
local Orientation = require(Plugin.Src.Util.Orientation)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics
local Localization = ContextServices.Localization

local Promise = Framework.Util.Promise

local AlertDialog = require(Plugin.Src.Components.AlertDialog)

local GuiService = game:GetService("GuiService")
local SelectionService = game:GetService("Selection")
local RunService = game:GetService("RunService")

local FFlag9SliceEditorRespectImageRectSize = game:GetFastFlag("9SliceEditorRespectImageRectSize")

local InstanceUnderEditManager = Roact.PureComponent:extend("InstanceUnderEditManager")

local LEFT = Orientation.Left.rawValue()
local RIGHT = Orientation.Right.rawValue()
local TOP = Orientation.Top.rawValue()
local BOTTOM = Orientation.Bottom.rawValue()

function InstanceUnderEditManager:init(props)
	self.state = {
		-- String if we should show an alert, otherwise nil
		showingAlertTitleKey = nil,
		showingAlertMessageKey = nil,
	}

	self.instanceUnderEdit = nil
	self.instanceWatchedForImageChange = nil
	self.lastSliceOffsets = nil

	self.showAlertDialog = function(title, message, messageReplacements)
		self:setState({
			showingAlertTitleKey = title,
			showingAlertMessageKey = message,
			showingAlertMessageReplacements = messageReplacements,
		})
	end

	self.closeAlertDialog = function()
		self:setState({
			showingAlertTitleKey = Roact.None,
			showingAlertMessageKey = Roact.None,
			showingAlertMessageReplacements = Roact.None,
		})
	end

	self.imageUnderEditConnections = {}
	self.clearCurrentImageUnderEdit = function()
		for _, con in ipairs(self.imageUnderEditConnections) do
			if con then
				con:Disconnect()
			end
		end
		self.imageUnderEditConnections = {}
	end

	self.getOffsetsForResizedImage = function(oldOffsets: Types.SliceOffsetsType, newSize: Vector2): Types.SliceOffsetsType
		local offsets = {}
		offsets[LEFT] = math.clamp(oldOffsets[LEFT], 0, newSize.X)
		offsets[RIGHT] = math.clamp(oldOffsets[RIGHT], 0, math.max(0, newSize.X - offsets[LEFT]))
		offsets[TOP] = math.clamp(oldOffsets[TOP], 0, newSize.Y)
		offsets[BOTTOM] = math.clamp(oldOffsets[BOTTOM], 0, math.max(0, newSize.Y - offsets[TOP]))
		return offsets
	end

	self.getImageDimensionsForInstance = function(instance: Types.GuiImageInstance): Vector2
		if FFlag9SliceEditorRespectImageRectSize and instance.ImageRectSize.X > 0 and instance.ImageRectSize.Y > 0 then
			return instance.ImageRectSize
		end
		return instance.ContentImageSize
	end

	self.getImageUnderEdit = function(): Types.GuiImageInstance?
		return self.instanceUnderEdit
	end

	self.onSliceCenterChanged = function()
		local instance = self.getImageUnderEdit()

		if instance ~= nil then
			local sliceRect = SliceRectUtil.getSliceRectFromSliceCenter(instance.SliceCenter)
			self.props.SliceRectChanged(sliceRect)

			local croppedDimensions: Vector2 = self.getImageDimensionsForInstance(instance)
			self.lastSliceOffsets = SliceRectUtil.getOffsetsFromSliceRect(sliceRect, croppedDimensions)
		end
	end

	self.getInstanceProperty = function(property)
		local instance = self.getImageUnderEdit()
		return instance and instance[property]
	end

	self.onImageRectOffsetChanged = function()
		self.props.InstancePropertyChanged("ImageRectOffset", self.getInstanceProperty("ImageRectOffset"))
	end

	self.clampSliceCenterToDimensions = function(sliceCenter: Rect, dimensions: Vector2): Rect
		return Rect.new(math.clamp(sliceCenter.Min.X, 0, dimensions.X),
			math.clamp(sliceCenter.Min.Y, 0, dimensions.Y),
			math.clamp(sliceCenter.Max.X, 0, dimensions.X),
			math.clamp(sliceCenter.Max.Y, 0, dimensions.Y))
	end

	self.onImageRectSizeChanged = function()
		local instance = self.getImageUnderEdit()
		if not instance then
			return
		end

		local imageRectSize = instance.ImageRectSize
		self.props.InstancePropertyChanged("ImageRectSize", imageRectSize)

		if imageRectSize.X > 0 and imageRectSize.Y > 0 then
			-- Clamp SliceRect if needed
			instance.SliceCenter = self.clampSliceCenterToDimensions(instance.SliceCenter, imageRectSize)
		end
	end

	self.onImageColor3Changed = function()
		self.props.InstancePropertyChanged("ImageColor3", self.getInstanceProperty("ImageColor3"))
	end

	self.onResampleModeChanged = function()
		self.props.InstancePropertyChanged("ResampleMode", self.getInstanceProperty("ResampleMode"))
	end

	self.openInstanceInEditor = function(instance)
		-- instance can be nil
		-- Disconnect changed events from previous instance:
		self.clearCurrentImageUnderEdit()

		local pixelSize = Vector2.new(0, 0)
		local sliceRect = {0, 0, 0, 0}
		local revertSliceRect = {0, 0, 0, 0}
		local title = self.props.Localization:getText("Plugin", "Name")
		local info = {
			title = title,
			pixelDimensions = pixelSize,
			sliceRect = sliceRect,
			revertSliceRect = revertSliceRect,
		}

		if instance ~= nil then
			pixelSize = instance.ContentImageSize -- Uncropped
			local croppedPixelSize = self.getImageDimensionsForInstance(instance)

			-- When opening an image to edit, if SliceCenter is zero, change it to the image content size.
			if instance.SliceCenter == Rect.new(0, 0, 0, 0) then
				instance.SliceCenter = Rect.new(0, 0, croppedPixelSize.X, croppedPixelSize.Y)
			end

			-- Connect to changed events from this instance:
			table.insert(self.imageUnderEditConnections, instance:GetPropertyChangedSignal("SliceCenter"):Connect(self.onSliceCenterChanged))
			if FFlag9SliceEditorRespectImageRectSize then
				table.insert(self.imageUnderEditConnections, instance:GetPropertyChangedSignal("ImageRectOffset"):Connect(self.onImageRectOffsetChanged))
				table.insert(self.imageUnderEditConnections, instance:GetPropertyChangedSignal("ImageRectSize"):Connect(self.onImageRectSizeChanged))
				table.insert(self.imageUnderEditConnections, instance:GetPropertyChangedSignal("ImageColor3"):Connect(self.onImageColor3Changed))
				table.insert(self.imageUnderEditConnections, instance:GetPropertyChangedSignal("ResampleMode"):Connect(self.onResampleModeChanged))
			end

			sliceRect = SliceRectUtil.getSliceRectFromSliceCenter(instance.SliceCenter)
			revertSliceRect = SliceRectUtil.copySliceRect(sliceRect)

			title = title .. ": " .. tostring(instance.Name)

			self.lastSliceOffsets = SliceRectUtil.getOffsetsFromSliceRect(sliceRect, croppedPixelSize)

			if FFlag9SliceEditorRespectImageRectSize then
				info = {
					title = title,
					pixelDimensions = pixelSize,
					sliceRect = sliceRect,
					revertSliceRect = revertSliceRect,
					imageRectOffset = instance.ImageRectOffset,
					imageRectSize = instance.ImageRectSize,
					imageColor3 = instance.ImageColor3,
					resampleMode = instance.ResampleMode,
				}
			end
		end

		self.instanceUnderEdit = instance

		if FFlag9SliceEditorRespectImageRectSize then
			self.props.InstanceUnderEditChanged(instance, info)
		else
			self.props.InstanceUnderEditChanged(instance, title, pixelSize, sliceRect, revertSliceRect)
		end
	end

	self.loadingToken = 0
	self.newLoadingToken = function(): number
		self.loadingToken += 1
		return self.loadingToken
	end

	self.createPromiseForImageLoaded = function(instance)
		self.openInstanceInEditor(nil)
		local thisToken: number = self.newLoadingToken()

		return Promise.new(function(resolve, reject)
			if not instance or not (instance:IsA("ImageLabel") or instance:IsA("ImageButton")) then
				reject(false, thisToken)
				return
			end

			-- Listen for Image changed event on any selected ImageLabel or ImageButton instance.
			self.connectImageChangedConnection(instance)

			if instance.IsLoaded then
				resolve(instance, thisToken)
				return
			end

			self.props.LoadingChanged(true)

			local startt = tick()
			local waitTimeout = 5
			while tick() - startt < waitTimeout do
				if instance.IsLoaded and instance.ContentImageSize ~= Vector2.new(0, 0) then
					if thisToken == self.loadingToken then
						-- This promise is the most recent promise.
						resolve(instance)
					else
						-- A newer promise has already been started, so ignore this one.
						reject(false, thisToken)
					end

					return
				end
				wait(1)
			end

			-- Timeout occured when trying to load
			reject(true, thisToken)
		end)
	end

	self.createAndRunPromiseForImageLoaded = function(inst: Instance, shouldResetSliceCenter: boolean)
		self.disconnectImageChangedConnection()
		
		local promise = self.createPromiseForImageLoaded(inst)

		local resolveCallback = function(instance)
			if not self._isMounted then
				return
			end

			-- Instance should be loaded now.
			assert(instance.IsLoaded)

			if shouldResetSliceCenter then
				if self.lastSliceOffsets ~= nil then
					local imageDimensions = self.getImageDimensionsForInstance(instance) -- cropped
					local newOffsets = self.getOffsetsForResizedImage(self.lastSliceOffsets, imageDimensions)
					local sliceRect: Types.SliceRectType = SliceRectUtil.getSliceRectFromOffsets(newOffsets, imageDimensions)
					instance.SliceCenter = SliceRectUtil.getSliceCenterFromSliceRect(sliceRect)
				else
					instance.SliceCenter = Rect.new(0, 0, 0, 0)
				end
			end

			self.openInstanceInEditor(instance)
			self.props.LoadingChanged(false)
		end

		local rejectedCallback = function(timedOut: boolean, token)
			if token ~= self.loadingToken then
				-- This was an old request, ignore it.
				return
			end
			
			if not self._isMounted then
				return
			end

			if timedOut then
				print(self.props.Localization:getText("Plugin", "ImageLoadErrorMessage"))
			end

			self.props.LoadingChanged(false)
		end

		promise:andThen(resolveCallback, rejectedCallback)
	end

	self.onImageChanged = function()
		-- Wait until after the next frame is rendered, so that the IsLoaded property is updated.
		-- RenderStepped is fired before each frame is rendered, so wait for it twice.
		for i = 1, 2 do
			RunService.RenderStepped:Wait()
		end

		if not self._isMounted then -- Check if still mounted because we just yielded the thread.
			return
		end

		local instance = self.instanceWatchedForImageChange
		if instance ~= nil then
			self.createAndRunPromiseForImageLoaded(instance, true)
		end
	end

	self.onSelectionChanged = function()
		local selections = SelectionService:Get()
		if #selections > 1 then
			return
		end

		if #selections == 0 then
			self.disconnectImageChangedConnection()
			self.openInstanceInEditor(nil)
			return
		end

		local selection = selections[1]

		assert(selection)

		if selection == self.instanceUnderEdit then
			-- This instance is already being edited.
			return
		end

		self.createAndRunPromiseForImageLoaded(selection, false)
	end

	self.connectImageChangedConnection = function(instance)
		if not self.imageChangedConnection then
			self.instanceWatchedForImageChange = instance
			self.imageChangedConnection = instance:GetPropertyChangedSignal("Image"):Connect(self.onImageChanged)
		end
	end

	self.disconnectImageChangedConnection = function()
		if self.imageChangedConnection then
			self.imageChangedConnection:Disconnect()
			self.imageChangedConnection = nil
		end
		self.instanceWatchedForImageChange = nil
	end

	self.startListeningToSelection = function()
		if not self.selectionChangedConnection then
			self.selectionChangedConnection = SelectionService.SelectionChanged:Connect(self.onSelectionChanged)
		end
	end

	self.stopListeningToSelection = function()
		if self.selectionChangedConnection then
			self.selectionChangedConnection:Disconnect()
			self.selectionChangedConnection = nil
		end
	end

	self.onSliceCenterEditButtonClicked = function(selectedInstance)
		if not (selectedInstance:IsA("ImageLabel") or selectedInstance:IsA("ImageButton")) then
			self.showAlertDialog("ErrorMessageTitle", "InvalidInstanceErrorMessage")
			return
		end
	
		if not selectedInstance.IsLoaded then
			self.showAlertDialog("ErrorMessageTitle", "ImageLoadedErrorMessage", {
				contentId = selectedInstance.Image,
			})
			return
		end

		local pixelSize = selectedInstance.ContentImageSize
		if not pixelSize or pixelSize == Vector2.new(0, 0) then
			self.showAlertDialog("ErrorMessageTitle", "ImageContentDimensionsErrorMessage")
			return
		end

		self.openInstanceInEditor(selectedInstance)

		self.connectImageChangedConnection(selectedInstance)
	end

	if props.WidgetEnabled then
		self.startListeningToSelection()
	end

	self.onOpen9SliceEditorConnection = GuiService.Open9SliceEditor:Connect(self.onSliceCenterEditButtonClicked)
end

function InstanceUnderEditManager:didMount()
	self._isMounted = true
end

function InstanceUnderEditManager:didUpdate(previousProps, previousState)
	if self.props.WidgetEnabled and not previousProps.WidgetEnabled then
		self.startListeningToSelection()
	elseif not self.props.WidgetEnabled and previousProps.WidgetEnabled then
		-- On widget hidden, disconnect all signals:
		self.stopListeningToSelection()
		self.clearCurrentImageUnderEdit()

		self.disconnectImageChangedConnection()
	end
end

function InstanceUnderEditManager:willUnmount()
	self._isMounted = false
	self.stopListeningToSelection()
	self.clearCurrentImageUnderEdit()

	self.disconnectImageChangedConnection()

	if self.onOpen9SliceEditorConnection then
		self.onOpen9SliceEditorConnection:Disconnect()
		self.onOpen9SliceEditorConnection = nil
	end
end

function InstanceUnderEditManager:render()
	local state = self.state

	if state.showingAlertTitleKey then
		return Roact.createElement(AlertDialog, {
			Enabled = true,
			TitleKey = state.showingAlertTitleKey,
			MessageKey = state.showingAlertMessageKey,
			MessageKeyFormatTable = state.showingAlertMessageReplacements,
			OnClose = self.closeAlertDialog, 
		})
	end

	return nil
end

InstanceUnderEditManager = withContext({
	Analytics = Analytics,
	Localization = Localization,
	Stylizer = ContextServices.Stylizer,
})(InstanceUnderEditManager)

return InstanceUnderEditManager
