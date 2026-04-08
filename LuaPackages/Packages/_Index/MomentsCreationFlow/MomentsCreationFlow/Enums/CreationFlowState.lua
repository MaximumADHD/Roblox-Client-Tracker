export type CreationFlowState = "Gallery" | "Preview" | "Music" | "TextOverlay" | "Trimming" | "Description"

local CreationFlowState = {
	Gallery = "Gallery" :: "Gallery",
	Preview = "Preview" :: "Preview",
	Music = "Music" :: "Music",
	TextOverlay = "TextOverlay" :: "TextOverlay",
	Trimming = "Trimming" :: "Trimming",
	Description = "Description" :: "Description",
}

return CreationFlowState
