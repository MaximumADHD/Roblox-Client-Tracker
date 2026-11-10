local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local getTestIdTag = require(Foundation.Utility.getTestIdTag)
local useTokens = require(Foundation.Providers.Style.useTokens)

export type BaseTileContentProps = {
	title: React.ReactElement,
	metadata: React.ReactElement?,
	contentAction: React.ReactElement?,
	footer: React.ReactElement?,
	isContained: boolean,
	onAbsoluteSizeChanged: ((instance: GuiObject) -> ())?,
	LayoutOrder: number,
	testId: string,
}

local FILL_WIDTH = UDim2.fromScale(1, 0)

local function slotFrame(layoutOrder: number, child: React.ReactElement)
	-- lute-lint-ignore(noEnginePrimitives) UIBLOX-5675
	return React.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = layoutOrder,
		Size = FILL_WIDTH,
	}, child)
end

local function BaseTileContent(props: BaseTileContentProps)
	local tokens = useTokens()
	local hasContentAction = props.contentAction ~= nil
	local contentGap = tokens.Gap.Small
	local padding = UDim.new(0, if props.isContained then tokens.Padding.Medium else tokens.Padding.Small)
	local containedPadding = if props.isContained then padding else nil
	local contentActionWidth = tokens.Size.Size_1200

	local title = slotFrame(1, props.title)
	local metadata = if props.metadata ~= nil then slotFrame(2, props.metadata) else nil
	-- lute-lint-ignore(noEnginePrimitives) UIBLOX-5675
	local footer = if props.footer ~= nil
		then React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = 3,
			Size = FILL_WIDTH,
			[React.Tag] = getTestIdTag(`{props.testId}--footer`),
		}, {
			Padding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, contentGap),
			}),
			Content = props.footer,
		})
		else nil

	local children: { [string]: React.ReactNode } = {
		Padding = React.createElement("UIPadding", {
			PaddingTop = padding,
			PaddingBottom = containedPadding,
			PaddingLeft = containedPadding,
			PaddingRight = containedPadding,
		}),
		Layout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Footer = footer,
	}

	if hasContentAction then
		-- lute-lint-ignore(noEnginePrimitives) UIBLOX-5675
		children.Header = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			LayoutOrder = 1,
			Size = FILL_WIDTH,
		}, {
			Layout = React.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, contentGap),
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Top,
			}),
			-- lute-lint-ignore(noEnginePrimitives) UIBLOX-5675
			Text = React.createElement("Frame", {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 1,
				Size = UDim2.new(1, -(contentActionWidth + contentGap), 0, 0),
			}, {
				Layout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}),
				Title = title,
				Metadata = metadata,
			}),
			-- lute-lint-ignore(noEnginePrimitives) UIBLOX-5675
			ContentAction = React.createElement("Frame", {
				BackgroundTransparency = 1,
				BorderSizePixel = 0,
				LayoutOrder = 2,
				Size = UDim2.fromOffset(contentActionWidth, tokens.Size.Size_800),
				[React.Tag] = getTestIdTag(`{props.testId}--content-action`),
			}, {
				Content = props.contentAction,
			}),
		})
	else
		-- Without a content action the title and metadata stack directly in the content list
		children.Title = title
		children.Metadata = metadata
	end

	-- lute-lint-ignore(noEnginePrimitives) UIBLOX-5675
	return React.createElement("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		LayoutOrder = props.LayoutOrder,
		Size = FILL_WIDTH,
		[React.Change.AbsoluteSize] = props.onAbsoluteSizeChanged :: unknown,
		[React.Tag] = getTestIdTag(`{props.testId}--content`),
	}, children)
end

return React.memo(BaseTileContent)
