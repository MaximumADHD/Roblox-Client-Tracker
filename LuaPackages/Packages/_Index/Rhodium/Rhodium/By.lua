--!strict
export type By = "tags" | "tags_any" | "tags_all" | "xpath"

-- these specific string literals are inferred as `string`, so
-- we cast them to their literal string type to help the type checker
return {
	TAGS = "tags" :: "tags",
	TAGS_ANY = "tags_any" :: "tags_any",
	TAGS_ALL = "tags_all" :: "tags_all",
	XPATH = "xpath" :: "xpath",
}
