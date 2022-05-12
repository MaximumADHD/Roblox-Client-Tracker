local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local Roact = dependencies.Roact
local Cryo = dependencies.Cryo
local UIBlox = dependencies.UIBlox
local Text = dependencies.Text
local Components = SocialLibraries.Components
local AlertViewLabel = require(Components.AlertView.AlertViewLabel)
local AlertViewTextbox = require(Components.AlertView.AlertViewTextbox)
local AlertViewSoakArea = require(Components.AlertView.AlertViewSoakArea)
local FitFrameVertical = require(script.Parent.Parent.FitFrameVertical)
local InteractiveAlert = UIBlox.App.Dialog.Alert.InteractiveAlert
local CheckboxList = UIBlox.App.InputButton.CheckboxList

local AlertViewBuilder = Roact.Component:extend("AlertViewBuilder")


--[[
	A component that wraps around AlertView and provides an interface to allow for the easy creation of AlertView
	modals.
	If this component does not support your use case, you will have to interface with AlertView directly.
	It handles the state of the textboxes and checkboxes and injects that information into the callback functions
	provided for the buttons.

	Props:
	title: string; Title displayed at top of modal. Required.
	bodyText: string; Main body text of modal. Default empty string.
	childComponentWidth: number; The width in pixels of child components of this alert (eg textboxes, checkboxes, etc)
								Default 220.
	checkboxHeight: number; The height of a checkbox in this Alert. Default 50.
	buttons: [
		{
			buttonType: ButtonType; Type of button to display. Default to ButtonType.Secondary
			props = {
				text: string; Text to display on the button. Required.
				onActivated: function; Callback function that gets injected with (texts, checkboxStatuses),
										where texts is a dictionary string -> string representing the text of the
										textbox with a given key and checkboxStatuses is a numerical index -> bool
										representing whether each checkbox is checked upon activating the button.
										Can return a bool indicating whether the modal should remain open.
										(i.e. onModalClose will be called if the bool is false).
										This can be helpful if the text entered into the textbox
										is unacceptable for whatever reason. If the function returns nil, then
										the modal will close (i.e. onModalClose will be called).
										Default does nothing and returns false.
			}
		}
	]; 1-D array of buttons to be rendered.
	checkboxes = [
			{
				label: string; Label for the checkbox. The checkboxes will be displayed in the order
							   in which they are given in the array. Default empty string.
			}
		]
	}; List of checkboxes where the index is used to identify the checkbox
	textboxes = {
		TextboxKey = {
			belowText: string; Text to be rendered below the textbox. Renders nothing if nil or empty string. Default nil.
			warningText: string; Text to be rendered in red below the textbox (and below belowTextboxText, if provided).
								This text appears in red and should be provided as a warning/caution relating to user
								input. Renders nothing if nil or empty string. Default nil.
			LayoutOrder: int; LayoutOrder for the checkbox. Required.
		}
	}; Dictionary of key-value pairs where key is used to identify the textbox
	onModalOpen: function; Callback function that fires after the modal mounts. Default does nothing.
	onModalClose: function; Callback function that fires when a button is clicked and the clicked button's callback
							function returns false or nil. This function is responsible for closing the modal and any
							other necessary cleaning up. Default does nothing.
	onModalStayOpen: function; Callback function that fires when a button is clicked and the clicked button's callback
							this runs if the modal does not close after a click event.
	onActivated: function; Callback function that fires when any button is activated.
]]

AlertViewBuilder.defaultProps = {
	bodyText = "",
	buttons = {},
	checkboxes = {},
	textboxes = {},
	displayTextbox = false,
	onActivated = function() end,
	onModalClose = function() end,
	onModalStayOpen = function() end,
	onModalOpen = function() end,
	title = "",

	checkboxHeight = 50,
	childComponentWidth = 220,

	soakAreaColor3 = Color3.fromRGB(255, 0, 255),
	soakAreaTransparency = 0.5,

	inputLengthExceeded = nil,
}

function AlertViewBuilder:init()
	local checkboxStatuses = {}
	local numCheckboxes, numTextboxes = 0, 0
	for key, _ in pairs(self.props.checkboxes) do
		checkboxStatuses[key] = false
		numCheckboxes = numCheckboxes + 1
	end
	self.refs = {}
	for key, _ in pairs(self.props.textboxes) do
		self.refs[key] = Roact.createRef()
		numTextboxes = numTextboxes + 1
	end
	self.state = {
		checkboxStatuses = checkboxStatuses,
		numCheckboxes = numCheckboxes,
		numTextboxes = numTextboxes,
	}
	self.calcTextboxTextHeight = function(styles, text)
		local fontSize = styles.Font.Body.RelativeSize * styles.Font.BaseSize
		local font = styles.Font.Body.Font
		local textHeight = 0
		if text and text ~= "" then
			textHeight = Text.GetTextHeight(text, font, fontSize, self.props.childComponentWidth)
		end

		return textHeight
	end
end

function AlertViewBuilder:didMount()
	if type(self.props.onModalOpen) == "function" then
		self.props.onModalOpen()
	end
end

function AlertViewBuilder:reset()
	for _, ref in pairs(self.refs) do
		if ref.current then
			ref.current.Text = ""
		end
	end
	local falseDictionary = {}
	for key, _ in pairs(self.state.checkboxStatuses) do
		falseDictionary[key] = false
	end
	self:setState({
		checkboxStatuses = falseDictionary
	})
end

function AlertViewBuilder:makeButtonTable()
	local buttonTable = { buttons = {} }
	-- Merge additional props into the props provided
	for rowIndex, button in ipairs(self.props.buttons) do
		table.insert(buttonTable.buttons, {})
		local updatedButton = Cryo.Dictionary.join(button, {
			props = Cryo.Dictionary.join(button.props, {
				layoutOrder = rowIndex,
				-- Grabs information about the textboxes and checkboxes and injects it into the callback
				onActivated = function()
					self.props.onActivated()
					local texts = {}
					for key, ref in pairs(self.refs) do
						texts[key] = ref.current and ref.current.Text or ""
					end
					local leaveModalOpen = button.props.onActivated(texts, self.state.checkboxStatuses)
					if not leaveModalOpen then
						self:reset()
						self:setState({
							displayingModal = false,
						})
						self.props.onModalClose()
					else
						self.props.onModalStayOpen()
					end
				end,
			})
		})
		buttonTable.buttons[rowIndex] = updatedButton
	end

	return buttonTable
end

function AlertViewBuilder:makeTextboxList(styles)
	-- No UIBlox textboxes yet so continue to use the custom implementation
	-- No JIRA ticket to link to so here are the designs
	-- https://app.abstract.com/projects/6a298910-056a-11e9-ab69-db0f06009678/branches/master/collections/8be2b057-c02f-49cf-b8fd-e368b1ed07e7
	local textboxDisplay = {}

	local textCounterColor = styles.Theme.TextDefault.Color
	if self.props.inputLengthExceeded then
		textCounterColor = styles.Theme.Alert.Color
	end

	for key, textbox in pairs(self.props.textboxes) do
		local belowTextHeight = self.calcTextboxTextHeight(styles, textbox.belowText)
		local warningTextHeight = self.calcTextboxTextHeight(styles, textbox.warningText)

		textboxDisplay[key] = Roact.createElement(FitFrameVertical, {
			width = UDim.new(1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			LayoutOrder = textbox.LayoutOrder,
		}, {
			[key] = Roact.createElement(AlertViewTextbox, {
				onTextChanged = textbox.onTextChanged,
				PlaceholderText = textbox.PlaceholderText,
				Text = textbox.Text,
				LayoutOrder = 1,
				[Roact.Ref] = self.refs[key],
			}),
			[key .. " Below Text"] = (textbox.belowText and textbox.belowText ~= "" ) and Roact.createElement(AlertViewLabel, {
				BackgroundTransparency = 1,
				Text = textbox.belowText,
				LayoutOrder = 2,
				TextXAlignment = textbox.belowTextAlignment or Enum.TextXAlignment.Left,
				Size = UDim2.new(1, 0, 0, belowTextHeight),
				TextColor3 = textCounterColor,
			}) or nil,
			[key .. " Warning Text"] = (textbox.warningText and textbox.warningText ~= "") and
			Roact.createElement(AlertViewLabel, {
				BackgroundTransparency = 1,
				Text = textbox.warningText,
				LayoutOrder = 3,
				TextXAlignment = Enum.TextXAlignment.Left,
				Size = UDim2.new(1, 0, 0, warningTextHeight),
				TextColor3 = styles.Theme.Alert.Color,
			}) or nil,
		})
	end
	return textboxDisplay
end

function AlertViewBuilder:makeCheckboxList()
	return Roact.createElement(CheckboxList, {
		checkboxes = self.props.checkboxes,
		atMost = self.state.numCheckboxes + 1,
		elementSize = UDim2.new(0, self.props.childComponentWidth, 0, self.props.checkboxHeight),
		onActivated = function(selectedIndicies)
			self:setState({
				checkboxStatuses = Cryo.Dictionary.join(self.state.checkboxStatuses, selectedIndicies)
			})
		end
	})
end

function AlertViewBuilder:makeMiddleContent(styles)
	local textboxLayout = self:makeTextboxList(styles)
	local checkboxLayout = self:makeCheckboxList()
	local checkboxFrameHeight = self.state.numCheckboxes * self.props.checkboxHeight

	-- Returning nil prevents the Alert from having an extra blank area
	-- when we have nothing to put in the middle
	if self.state.numTextboxes == 0 and self.state.numCheckboxes == 0 then
		return nil
	end

	return function()
		return Roact.createElement(FitFrameVertical, {
			width = UDim.new(1, 0),
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
		}, {
			Textboxes = Roact.createElement(FitFrameVertical, {
				width = UDim.new(1, 0),
				BorderSizePixel = 0,
				BackgroundTransparency = 1,
				LayoutOrder = 1
			}, textboxLayout),
			Checkboxes = Roact.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, checkboxFrameHeight),
				BackgroundTransparency = 1,
				LayoutOrder = 2,
			}, checkboxLayout),
		})
	end
end

function AlertViewBuilder:render()
	assert(self.props.displayTextbox or not self.props.mandatoryInput)

	return UIBlox.Style.withStyle(function(styles)
		local buttonTableLayout = self:makeButtonTable()
		local middleContent = self:makeMiddleContent(styles)
		-- An empty string of body text creates a blank area in the Alert so make it nil if there is nothing to show
		local bodyText = self.props.bodyText ~= "" and self.props.bodyText or nil

		return Roact.createElement(AlertViewSoakArea, {
			BackgroundColor3 = self.props.soakAreaColor3,
			BackgroundTransparency = self.props.soakAreaTransparency,
			Visible = self.state.displayingModal,
		}, {
			alertView = Roact.createElement(InteractiveAlert, {
				title = self.props.title,
				bodyText = bodyText,
				middleContent = middleContent,
				buttonStackInfo = buttonTableLayout,
				screenSize = Vector2.new(0, 0)
			})
		})
	end)
end

return AlertViewBuilder
