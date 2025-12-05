export type CheckedState = boolean | "Indeterminate"

local CheckedStateEnum = {
	Checked = true :: boolean,
	Unchecked = false :: boolean,
	Indeterminate = "Indeterminate" :: "Indeterminate",
}

return CheckedStateEnum
