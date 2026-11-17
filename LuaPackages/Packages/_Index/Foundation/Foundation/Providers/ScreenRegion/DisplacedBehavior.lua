export type DisplacedBehavior = "Suspend" | "Dismiss"

local DisplacedBehaviorEnum = {
	-- Hides the entry until there is room again.
	Suspend = "Suspend" :: "Suspend",
	-- Hides the entry for good and asks its owner to close it.
	Dismiss = "Dismiss" :: "Dismiss",
}

return DisplacedBehaviorEnum
