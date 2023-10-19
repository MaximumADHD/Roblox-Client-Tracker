local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local TextChatService = game:GetService("TextChatService")
local Packages = ExperienceChat.Parent
local React = require(Packages.React)

local UIBlox = require(Packages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle

local List = require(Packages.llama).List
local Dictionary = require(Packages.llama).Dictionary

local Config = require(ExperienceChat.Config)
local AutocompleteEntry = require(script.Parent.AutocompleteEntry)

local SCROLLBAR_SIZE = 4
local TEXTBOX_PADDING = 10
local AUTOCOMPLETE_PADDING = 8

return function(props)
	local scrollViewRef = React.useRef(nil :: ScrollingFrame?)

	local style = useStyle()
	local theme = style.Theme

	local createChildren = React.useCallback(function(results)
		local children = Dictionary.map(results, function(result, index)
			return React.createElement(AutocompleteEntry, {
				result = result,
				layoutOrder = index,
				chatInputBarSettings = props.chatInputBarSettings,
				setTransparency = props.setTransparency,
				transparencyValue = props.transparencyValue,
				isDividerVisible = List.count(results) ~= index,
				selectedIndex = props.selectedIndex,
				autocompleteType = props.autocompleteType,
				onAutocompleteDropdownHover = props.onAutocompleteDropdownHover,
				onAutocompleteSelected = props.onAutocompleteSelected,
			}),
				result
		end)

		children["$layout"] = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		})

		return children
	end)

	-- function to calculate new canvas position
	local function setCanvasPosition()
		if scrollViewRef.current then
			local autocompleteDropdown = props.autocompleteDropdownRef.current
			local autocompleteFrameSizeY = autocompleteDropdown and autocompleteDropdown.AbsoluteSize.Y
				or Config.AutocompleteFrameDefaultSizeY

			-- we do this because sometimes the autocompleteEntry frame will not be the text size + padding (e.g. if the alias name is long and wraps two lines)
			local autocompleteEntrySizeY = props.chatInputBarSettings.TextSize + AUTOCOMPLETE_PADDING * 2
			local desiredCanvasPositionYBottom = 0
			if
				autocompleteDropdown
				and autocompleteDropdown:FindFirstChild("ScrollBarFrame")
				and autocompleteDropdown.ScrollBarFrame:FindFirstChild("ScrollViewFrame")
				and autocompleteDropdown.ScrollBarFrame.ScrollViewFrame:FindFirstChild("ScrollView")
				and autocompleteDropdown.ScrollBarFrame.ScrollViewFrame.ScrollView:FindFirstChild("OffsetFrame")
			then
				local offsetFrame = autocompleteDropdown.ScrollBarFrame.ScrollViewFrame.ScrollView.OffsetFrame
				for _, childFrame in ipairs(offsetFrame:GetChildren()) do
					if childFrame.ClassName == "Frame" and childFrame.LayoutOrder <= props.selectedIndex then
						desiredCanvasPositionYBottom += childFrame.AbsoluteSize.Y
						if childFrame.LayoutOrder == props.selectedIndex then
							autocompleteEntrySizeY = childFrame.AbsoluteSize.Y
						end
					end
				end
			end

			local currentCanvasPositionYTop = scrollViewRef.current.CanvasPosition.Y
			local currentCanvasPositionYBottom = currentCanvasPositionYTop + autocompleteFrameSizeY
			local desiredCanvasPositionYTop = desiredCanvasPositionYBottom - autocompleteEntrySizeY

			local newCanvasPositionY = currentCanvasPositionYTop

			if desiredCanvasPositionYBottom > currentCanvasPositionYBottom then
				newCanvasPositionY = desiredCanvasPositionYBottom - autocompleteFrameSizeY
			end

			if desiredCanvasPositionYTop < currentCanvasPositionYTop then
				newCanvasPositionY = desiredCanvasPositionYTop
			end
			return Vector2.new(0, newCanvasPositionY)
		end

		return Vector2.new(0, 0) -- if no ref, default to top of scroll frame
	end

	local chatLayoutVerticalAlignment = nil
	local chatWindowEnabled = false
	local chatWindowConfiguration = TextChatService:FindFirstChildOfClass("ChatWindowConfiguration")
	if chatWindowConfiguration then
		chatLayoutVerticalAlignment = chatWindowConfiguration.VerticalAlignment
		chatWindowEnabled = chatWindowConfiguration.Enabled
	end
	local chatWindowIsTopandDisabled = chatLayoutVerticalAlignment == Enum.VerticalAlignment.Top
		and not chatWindowEnabled

	local chatInputBarSizeY = props.textBoxRef.current
		and props.textBoxRef.current.AbsoluteSize.Y :: number + TEXTBOX_PADDING * 2

	local chatWindow = (
		props.autocompleteDropdownRef.current and props.autocompleteDropdownRef.current:FindFirstAncestor("appLayout")
	)
			and props.autocompleteDropdownRef.current:FindFirstAncestor("appLayout").chatWindow
		or nil

	return React.createElement("Frame", {
		AnchorPoint = chatWindowIsTopandDisabled and Vector2.new(0, 0) or Vector2.new(0, 1),
		BackgroundTransparency = 1,
		Size = UDim2.new(
			0.95,
			0,
			0,
			(
				#props.results > 3 and Config.AutocompleteFrameDefaultSizeY
				or #props.results * Config.AutocompleteEntryDefaultSizeY
			)
		),
		Position = UDim2.new(0, 0, 0, chatWindowIsTopandDisabled and chatInputBarSizeY or 0),
		ZIndex = 2,
		Visible = props.activated and #props.results > 0,
		ref = props.autocompleteDropdownRef,
	}, {
		UISizeConstraint = React.createElement("UISizeConstraint", {
			MaxSize = Vector2.new(
				Config.ChatWindowMaxWidth,
				(chatWindow and not chatWindowIsTopandDisabled) and chatWindow.AbsoluteSize.Y or math.huge
			),
		}),
		ScrollBarFrame = React.createElement("Frame", {
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = props.setTransparency(0, props.transparencyValue),
			BackgroundColor3 = props.chatInputBarSettings.BackgroundColor3,
			ZIndex = 2,
		}, {
			Border = React.createElement("UIStroke", {
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Color = Config.ChatInputBarBorderColor3,
				Transparency = props.setTransparency(Config.ChatInputBarBorderTransparency, props.transparencyValue),
			}),
			Corner = React.createElement("UICorner", {
				CornerRadius = UDim.new(0, 3),
			}),
			ScrollViewFrame = React.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				ZIndex = 2,
			}, {
				ScrollView = React.createElement("ScrollingFrame", {
					Size = UDim2.new(1, -SCROLLBAR_SIZE, 1, 0),
					AutomaticCanvasSize = Enum.AutomaticSize.Y,
					CanvasSize = UDim2.new(0, 0, 0, (#props.results * Config.AutocompleteEntryDefaultSizeY)),
					CanvasPosition = setCanvasPosition(),
					BackgroundTransparency = 1,
					ScrollBarImageColor3 = theme.UIEmphasis.Color,
					ScrollBarImageTransparency = props.setTransparency(0, props.transparencyValue),
					BorderSizePixel = 0,
					ScrollBarThickness = SCROLLBAR_SIZE,
					VerticalScrollBarInset = Enum.ScrollBarInset.Always,
					ClipsDescendants = false,
					Selectable = true,
					ZIndex = 2,
					ref = scrollViewRef,
				}, {
					OffsetFrame = React.createElement("Frame", {
						Size = UDim2.new(1, 2 * SCROLLBAR_SIZE, 1, 0),
						BackgroundTransparency = 1,
					}, createChildren(props.results)),
				}),
			}),
		}),
	})
end
