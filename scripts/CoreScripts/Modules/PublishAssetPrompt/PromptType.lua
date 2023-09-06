export type PromptType = "PublishAssetSingleStep" | "PublishAvatar"
-- This is basically an enum that's defined in Lua. It allows us to pass in different values for prompt type without worrying about misspellings.
-- For example usage, see thunk OpenPublishAssetPrompt.lua
-- Other prompts should be added to PromptType as: | "Prompt2" | "Prompt3" ...

local PromptType = {
	PublishAssetSingleStep = "PublishAssetSingleStep" :: "PublishAssetSingleStep",
	PublishAvatar = "PublishAvatar" :: "PublishAvatar",
}

return PromptType
