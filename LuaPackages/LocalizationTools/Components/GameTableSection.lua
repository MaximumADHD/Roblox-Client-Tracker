local Roact = require(game:GetService("CorePackages").Roact)
local Theming = require(script.Parent.Parent.Theming)

local LabeledButton = require(script.Parent.LabeledButton)
local LabeledCheckbox = require(script.Parent.LabeledCheckbox)
local UploadDialogContent = require(script.Parent.UploadDialogContent)
local UploadDownloadFlow = require(script.Parent.Parent.GameTable.UploadDownloadFlow)

local GameTableSection = Roact.Component:extend("GameTableSection")

local StudioEnableAutoscrapingCheckbox = settings():GetFFlag("StudioEnableAutoscrapingCheckbox")

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
		Autoscraping = false,
		NonInteractive = false,
		ShowProgressIndicator = false,
	}

	local flow = UploadDownloadFlow.new({
		SetMessage = self.props.SetMessage,
		OpenCSV = self.props.OpenCSV,
		ComputePatch = self.props.ComputePatch,
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
		flow:OnDownload():catch(function() end)
	end

	self._OnUpload = function()
		flow:OnUpload():catch(function() end)
	end

	local function checkIfAvailable()
		self.props.UpdateGameTableInfo():andThen(
			function(available, autoscraping)
				if available then
					if self._idChangedConnection then
						self._idChangedConnection:Disconnect()
						self._idChangedConnection = nil
					end
					self:setState({
						Available = Availability.AVAILABLE,
						Autoscraping = autoscraping,
					})
				else
					self:setState({Available = Availability.NOT_AVAILABLE})
				end
			end,
			function(errorMessage)
				self:setState({Available = Availability.NOT_AVAILABLE})
			end
		)
	end

	self._idChangedConnection = self.props.PlaceIdChangedSignal:Connect(function()
		spawn(function()
			--[[When the PlaceId signal changed event gets fired, the gameId is still not right,
			So, spawning a function in order to wait for the GameId to kick in.  Then test for
			availability to edit]]
			checkIfAvailable()
		end)
	end)

	spawn(checkIfAvailable)

	self.progressSpinnerRef = Roact.createRef()
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

			local autoscrapingCheckbox
			if StudioEnableAutoscrapingCheckbox then
				autoscrapingCheckbox = Roact.createElement(LabeledCheckbox, {
					Size = UDim2.new(0, 266, 0, 30),
					LayoutOrder = 1,
					LabelText = "Autoscraping",
					Checked = self.state.Autoscraping,

					OnClicked = function()
						local newValue = not self.state.Autoscraping
						self:setState({
							Autoscraping = newValue
						})

						self.props.SetAutoscraping(newValue):andThen(
							function()
								self.props.SetMessage("Autoscraping: "..(newValue and "on" or "off"))
							end,
							function(errorMessage)
								self.props.SetMessage(errorMessage)
							end)
					end,
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

				AutoscrapingCheckbox = autoscrapingCheckbox,

				Content = Roact.createElement("Frame", {
					Size = UDim2.new(0, 266, 0, 75),
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
							LabelWidth = 160,
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

						Upload = Roact.createElement(LabeledButton, {
							LabelWidth = 160,
							ButtonWidth = 100,
							Padding = 5,
							Height = 35,
							LabelText = "Upload CSV file to the web",
							ButtonText = "Upload",
							LayoutOrder = 2,
							TextColor3 = theme.BrightText,
							Disabled = self.state.NonInteractive,
							OnClick = self._OnUpload,
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
			Size = UDim2.new(0, 285, 0, 118),
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
					Text = "Game Localization Table",
					Size = UDim2.new(0, 300, 0, 20),
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
