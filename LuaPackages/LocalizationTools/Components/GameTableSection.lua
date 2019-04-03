local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)

local LabeledButton = require(script.Parent.LabeledButton)
local UploadDialogContent = require(script.Parent.UploadDialogContent)
local UploadDownloadFlow = require(script.Parent.Parent.GameTable.UploadDownloadFlow)
local Collapsible = require(script.Parent.Collapsible)

local GameTableSection = Roact.Component:extend("GameTableSection")

local StudioLocalizationPluginCleanGameIdLogic = settings():GetFFlag("StudioLocalizationPluginCleanGameIdLogic")


--[[
	To determine if this feature is available, we have to wait for
	a web request.  While waiting, we don't draw any UI.  That way
	it looks more continuous, because we don't draw the wrong thing and then
	supplant it after a second.

	To accomplish this, the "available" state has three possible values:
]]
local Availability = {
	UNDETERMINED = "UNDETERMINED",
	AVAILABLE = "AVAILABLE",
	NOT_AVAILABLE = "NOT_AVAILABLE",
}


function GameTableSection:init()
	self.state = {
		Available = Availability.UNDETERMINED,
		NonInteractive = false,
		ShowProgressIndicator = false,
	}

	local flow = UploadDownloadFlow.new({
		SetMessage = self.props.SetMessage,
		OpenCSV = self.props.OpenCSV,
		ShowDialog = self.props.ShowDialog,
		UploadPatch = self.props.UploadPatch,
		DownloadGameTable = self.props.DownloadGameTable,
		SaveCSV = self.props.SaveCSV,
		UpdateBusyMode = function(nonInteractive, showProgressIndicator)
			self:setState({
				NonInteractive = nonInteractive,
				ShowProgressIndicator = showProgressIndicator,
			})
		end,
		MakeRenderDialogContent = function(patchInfo)
			return function(okayCallback, cancelCallback)
				return Roact.createElement(UploadDialogContent, {
					PatchInfo = patchInfo,
					OkayCallback = okayCallback,
					CancelCallback = cancelCallback,
				})
			end
		end,
	})

	self._OnDownload = function()
		flow:OnDownload(game.gameId):catch(
			function(errorInfo)
				if errorInfo:hasWarningMessage() then
					warn(errorInfo:getWarningMessage())
				end
			end)
	end

	self._OnReplace = function()
		flow:OnUpload(self.props.ComputeReplacePatch, game.gameId):catch(
			function(errorInfo)
				if errorInfo:hasWarningMessage() then
					warn(errorInfo:getWarningMessage())
				end
			end)
	end

	self._OnUpdate = function()
		flow:OnUpload(self.props.ComputeUpdatePatch, game.gameId):catch(
			function(errorInfo)
				if errorInfo:hasWarningMessage() then
					warn(errorInfo:getWarningMessage())
				end
			end)
	end

	if not StudioLocalizationPluginCleanGameIdLogic then
		local function checkIfAvailable()
			self.props.UpdateGameTableInfo():andThen(
				function(available)
					if available then
						if self._idChangedConnection then
							self._idChangedConnection:Disconnect()
							self._idChangedConnection = nil
						end
						self:setState({Available = Availability.AVAILABLE})
					else
						self:setState({Available = Availability.NOT_AVAILABLE})
					end
				end,
				function(errorMessage)
					self:setState({Available = Availability.NOT_AVAILABLE})
				end
			)
		end

		self._idChangedConnection = self.props.GameIdChangedSignal:Connect(checkIfAvailable)
		spawn(checkIfAvailable)
	end

	self.progressSpinnerRef = Roact.createRef()
end


function GameTableSection:didMount()
	local function checkTableAvailability()
		self.props.CheckTableAvailability(game.gameId):andThen(
			function(available)
				if available then
					self:setState({Available = Availability.AVAILABLE})
				else
					self:setState({Available = Availability.NOT_AVAILABLE})
				end
			end,
			function(errorMessage)
				self:setState({Available = Availability.NOT_AVAILABLE})
			end
		)
	end

	if StudioLocalizationPluginCleanGameIdLogic then
		self._idChangedConnection = self.props.GameIdChangedSignal:Connect(checkTableAvailability)
		coroutine.resume(coroutine.create(checkTableAvailability))
	end
end


function GameTableSection:render()
	return Theming.withTheme(function(theme)
		local content
		if self.state.Available == Availability.AVAILABLE then
			local progressSpinner
			if self.state.ShowProgressIndicator then
				progressSpinner = Roact.createElement("ImageLabel", {
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0, 81, 0, 81),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					ZIndex = 10,
					Image = theme.ProgressSpinnerImageUrl,
					ImageRectSize = Vector2.new(80, 80),
					ImageRectOffset = Vector2.new(0.5, 0.5),

					[Roact.Ref] = self.progressSpinnerRef,
				})
			end

			content = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 200),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 2,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
					Padding = UDim.new(0, 5),
				}),

				Padding = Roact.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 15),
					PaddingTop = UDim.new(0, 15),
				}),

				Content = Roact.createElement("Frame", {
					Size = UDim2.new(1, 0, 0, 75),
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					LayoutOrder = 2,
				}, {
					Container = Roact.createElement("Frame", {
						Size = UDim2.new(0, 205, 0, 40),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						LayoutOrder = 2,
					}, {
						Layout = Roact.createElement("UIListLayout", {
							SortOrder = Enum.SortOrder.LayoutOrder,
							FillDirection = Enum.FillDirection.Vertical,
							Padding = UDim.new(0, 5),
						}),

						Download = Roact.createElement(LabeledButton, {
							LabelWidth = 200,
							ButtonWidth = 100,
							Padding = 5,
							Height = 35,
							LabelText = "Download table as CSV",
							ButtonText = "Download",
							LayoutOrder = 1,
							TextColor3 = theme.BrightText,
							Disabled = self.state.NonInteractive,
							OnClick = self._OnDownload,
						}),

						Update = Roact.createElement(LabeledButton, {
							LabelWidth = 200,
							ButtonWidth = 100,
							Padding = 5,
							Height = 35,
							LabelText = "Update with new content from CSV",
							ButtonText = "Update",
							LayoutOrder = 2,
							TextColor3 = theme.BrightText,
							Disabled = self.state.NonInteractive,
							OnClick = self._OnUpdate,
						}),

						AdvancedContainer = Roact.createElement(Collapsible, {
							Size = UDim2.new(0, 205, 0, 40),
							Title = "Advanced",
							LayoutOrder = 3,
							RenderContent = function()
								return Roact.createElement(LabeledButton, {
									LabelWidth = 200,
									ButtonWidth = 100,
									Padding = 5,
									Height = 35,
									LabelText = "Replace entire cloud table with CSV",
									ButtonText = "Replace",
									LayoutOrder = 2,
									Disabled = self.state.NonInteractive,
									OnClick = self._OnReplace,
								})
							end
						}),
					}),

					ProgressSpinner = progressSpinner,
				}),
			})
		elseif self.state.Available == Availability.NOT_AVAILABLE then
			content = Roact.createElement("Frame", {
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 0,
				BorderSizePixel = 1,
				BorderColor3 = theme.Border,
				BackgroundColor3 = theme.MainBackground,
				LayoutOrder = 2,
			}, {
				Layout = Roact.createElement("UIPadding", {
					PaddingTop = UDim.new(0.5, 0),
					PaddingBottom = UDim.new(0.5, 0),
					PaddingLeft = UDim.new(0.5, 0),
					PaddingRight = UDim.new(0.5, 0),
				}),

				TextLabel = Roact.createElement("TextLabel", {
					Text = "Publish this place to upload a table",
					BorderColor3 = theme.Border,
					BackgroundColor3 = theme.MainBackground,
					TextColor3 = theme.BrightText,
				}),
			})
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(0, 320, 0, 200),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = self.props.LayoutOrder,
		}, {
			ContentFrameContainer = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
			}, {
				Layout = Roact.createElement("UIListLayout", {
					SortOrder = Enum.SortOrder.LayoutOrder,
					FillDirection = Enum.FillDirection.Vertical,
					Padding = UDim.new(0, 3),
				}),

				SectionLabel = Roact.createElement("TextLabel", {
					Text = "Cloud Localization Table",
					Size = UDim2.new(1, 0, 0, 20),
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					TextXAlignment = Enum.TextXAlignment.Left,
					LayoutOrder = 1,
					TextColor3 = theme.BrightText,
				}),

				Content = content,
			})
		})
	end)
end

local function createSpinnerTask(spinner)
	local bailFlag = false
	local spinnerTask = {
		bail = function()
			bailFlag = true
		end
	}

	spawn(function()
		while not bailFlag do
			wait(0.01)
			spinner.Rotation = spinner.Rotation + 7
		end
	end)

	return spinnerTask
end

function GameTableSection:didUpdate()
	local spinner = self.progressSpinnerRef.current

	if self._currentSpinnerTask then
		self._currentSpinnerTask.bail()
	end

	if spinner then
		self._currentSpinnerTask = createSpinnerTask(spinner)
	end
end

function GameTableSection:willUnmount()
	if self._idChangedConnection then
		self._idChangedConnection:Disconnect()
	end

	if self._currentSpinnerTask then
		self._currentSpinnerTask.bail()
	end
end

return GameTableSection
