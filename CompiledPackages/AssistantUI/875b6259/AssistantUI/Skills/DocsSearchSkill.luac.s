MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K7 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["SkillDefinition"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Tools"]
       25 GETTABLEKS                       R4 R4 K10 ["ToolTypes"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["SkillNames"]
       30 GETTABLEKS                       R5 R2 K12 ["Sources"]
       32 GETTABLEKS                       R6 R3 K13 ["ToolNames"]
       34 GETTABLEKS                       R7 R1 K14 ["ROBLOX_ENGINE_DOCS_BASE_URL"]
       36 DUPTABLE                         R8 K19 [{"name", "source", "description", "content"}]
       37 GETTABLEKS                       R9 R4 K20 ["DocsSearch"]
       39 SETTABLEKS                       R9 R8 K15 ["name"]
       41 GETTABLEKS                       R9 R5 K21 ["Roblox"]
       43 SETTABLEKS                       R9 R8 K16 ["source"]
       45 LOADK                            R10 K22 ["Look up Roblox Engine API documentation using the %* tool. Use when you need accurate, up-to-date details about classes, datatypes, enums, globals, or libraries."]
       46 GETTABLEKS                       R12 R6 K23 ["HttpGet"]
       48 NAMECALL                         R10 R10 K24 ["format"]
       50 CALL                             R10 2 1
       51 MOVE                             R9 R10
       52 SETTABLEKS                       R9 R8 K17 ["description"]
       54 GETTABLEKS                       R9 R6 K25 ["replaceTokens"]
       56 LOADK                            R10 K26 ["ROBLOX ENGINE API DOCUMENTATION LOOKUP\n\nUse the {ToolNames.HttpGet} tool to fetch official Roblox Engine API docs as clean markdown.\n\nThe tool supports an optional query parameter that searches the fetched content for a keyword.\nWhen a query is provided, only matching sections are returned (or a short \"no match\" message),\nsaving context window space. Misses are cheap — they cost one line in context.\nPrefer using query unless you already know you need the full document.\n\nFETCHING SPECIFIC API PAGES:\nThe API name in the URL is PascalCase and matches the Roblox API name exactly. URL patterns:\n\tClasses:    {ENGINE_DOCS_URL}/classes/<ClassName>.md\n\tDatatypes:  {ENGINE_DOCS_URL}/datatypes/<TypeName>.md\n\tEnums:      {ENGINE_DOCS_URL}/enums/<EnumName>.md\n\tGlobals:    {ENGINE_DOCS_URL}/globals/<GlobalName>.md\n\tLibraries:  {ENGINE_DOCS_URL}/libraries/<LibName>.md\n\nWORKFLOW:\n1. If you KNOW the exact API and need the full reference:\n\t{ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/classes/Part.md\")\n\n2. If you need to SEARCH for a specific property/method across pages, use the query parameter:\n\t{ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/classes/Part.md\", query: \"Anchored\")\n\t{ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/classes/BasePart.md\", query: \"Anchored\")\n   This lets you check multiple pages cheaply — misses cost almost nothing. \n   If you find a match you can just pass in only the url to get the full reference.\n\n3. If you want more context around a match without returning the full document:\n\t{ToolNames.HttpGet}(url: \"...\", query: \"Anchored\", context_lines: 10)\n\n4. If you want the full document when the query matches, without a second call:\n\t{ToolNames.HttpGet}(url: \"...\", query: \"Anchored\", return_full: true)\n   Returns the full doc only if the query is found; still returns \"no match\" if not found.\n\n5. If you don't know which API to look up, use the index:\n\t{ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/llms.txt\")\n\tThe index lists all classes, datatypes, enums, globals, and libraries with one-line summaries.\n\tNote: the index does NOT list individual methods or properties. If searching for a method,\n\tsearch the index for related class/domain terms instead, then fetch the candidate class doc.\n\n6. If the user references a deprecated API:\n\t{ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/deprecated.md\")\n\tIt maps every deprecated property, method, event, and class to its modern replacement.\n\nRULES:\n- URLs must end with .md or be llms.txt — the tool rejects anything else.\n- Do NOT guess API names you are unsure about; use the index to confirm first.\n- Prefer using query parameter when checking multiple pages to save context."]
       57 DUPTABLE                         R11 K28 [{"ENGINE_DOCS_URL"}]
       58 SETTABLEKS                       R7 R11 K27 ["ENGINE_DOCS_URL"]
       60 CALL                             R9 2 1
       61 SETTABLEKS                       R9 R8 K18 ["content"]
       63 RETURN                           R8 1
