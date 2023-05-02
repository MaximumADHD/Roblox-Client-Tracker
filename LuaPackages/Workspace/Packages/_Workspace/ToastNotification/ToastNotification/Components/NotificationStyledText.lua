local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle

local React = require(CorePackages.Packages.React)

--[[ Example Text Property Format:
{
	text = "This is test text",
	styledElements = {
		{
			styledElementType = "highlight",
			offset = 5,
			length = 2,
		},
		{
			styledElementType = "highlight",
			offset = 7,
			length = 6,
		}
	}
}
]]

type StyledText = {
	text: string,
	styledElements: {
		[number]: {
			styledElementType: string,
			offset: number,
			length: number,
		},
	},
}

type NotificationStyledTextProps = {
	Text: StyledText?,
	TextColor3: Color3?,
	TextTransparency: number?,
	Font: Enum.Font?,
	AutomaticSize: Enum.AutomaticSize?,
	Size: UDim2?,
	TextSize: number?,
	Position: UDim2?,
	AnchorPoint: Vector2?,
}

local applyFormatting: {
	[string]: (string) -> string,
} = {
	highlight = function(text: string)
		return "<b>" .. text .. "</b>"
	end,
}

local function formatString(styledText: StyledText): string
	local rawText = styledText.text
	local elements = styledText.styledElements
	local slice: {
		[number]: {
			Position: number,
			ReferenceCount: number,
			Format: string,
		},
	} = {
		{
			Position = 0,
			ReferenceCount = 0,
			Format = "highlight",
		},
		{
			Position = #styledText.text,
			ReferenceCount = 0,
			Format = "highlight",
		},
	}

	for _, element in pairs(elements) do
		table.insert(slice, {
			Position = element.offset,
			ReferenceCount = 1,
			Format = element.styledElementType,
		})
		table.insert(slice, {
			Position = element.offset + element.length,
			ReferenceCount = -1,
			Format = element.styledElementType,
		})
	end
	table.sort(slice, function(a, b)
		return a.Position < b.Position
	end)

	local activeFormat = {}
	for format in pairs(applyFormatting) do
		activeFormat[format] = 0
	end

	local fullText = ""
	for i = 1, #slice - 1 do
		local sliceStart = slice[i]
		local sliceEnd = slice[i + 1]
		if sliceStart.Format then
			activeFormat[sliceStart.Format] += sliceStart.ReferenceCount
		end
		if sliceStart.Position == sliceEnd.Position then
			continue
		end
		local text = rawText:sub(sliceStart.Position + 1, sliceEnd.Position)
		for format, apply in pairs(applyFormatting) do
			if activeFormat[format] > 0 then
				text = apply(text)
			end
		end
		fullText = fullText .. text
	end

	return fullText
end

return function(props: NotificationStyledTextProps)
	local style = useStyle()
	local richText = if props.Text then formatString(props.Text) else ""

	return React.createElement("TextLabel", {
		RichText = true,
		Text = richText,
		BackgroundTransparency = 1,

		TextColor3 = props.TextColor3 or style.Theme.TextDefault.Color,
		TextTransparency = props.TextTransparency or style.Theme.TextDefault.Transparency,
		Font = props.Font or style.Font.Body.Font,

		AutomaticSize = props.AutomaticSize,
		Size = props.Size,
		TextSize = props.TextSize,
		Position = props.Position,
		AnchorPoint = props.AnchorPoint,
	})
end
