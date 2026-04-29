local Foundation = script:FindFirstAncestor("Foundation")
local Flags = require(Foundation.Utility.Flags)

local Popover = require(script.Popover)
local PopoverAnchor = require(script.Anchor)
local PopoverContent = require(script.Content)

export type PopoverProps = Popover.PopoverProps
export type PopoverAnchorProps = PopoverAnchor.PopoverAnchorProps
export type PopoverContentProps = PopoverContent.PopoverContentProps

return {
	Root = Popover,
	Anchor = PopoverAnchor,
	Content = if Flags.FoundationPopoverPluginSupport then require(script.PopoverContentProxy) else PopoverContent,
}
