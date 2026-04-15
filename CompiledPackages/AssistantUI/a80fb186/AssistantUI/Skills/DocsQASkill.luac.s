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
       14 GETIMPORT                        R5 K1 [script]
       16 GETTABLEKS                       R4 R5 K7 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["SkillDefinition"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Tools"]
       25 GETTABLEKS                       R4 R5 K10 ["ToolTypes"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["SkillNames"]
       30 GETTABLEKS                       R5 R3 K12 ["ToolNames"]
       32 GETTABLEKS                       R6 R1 K13 ["ROBLOX_ENGINE_DOCS_BASE_URL"]
       34 DUPTABLE                         R7 K17 [{"name", "description", "content"}]
       35 GETTABLEKS                       R8 R4 K18 ["DocsQA"]
       37 SETTABLEKS                       R8 R7 K14 ["name"]
       39 LOADK                            R9 K19 ["Look up Roblox Engine API documentation using the %* tool. Use when you need accurate, up-to-date details about classes, datatypes, enums, globals, or libraries."]
       40 GETTABLEKS                       R11 R5 K20 ["HttpGet"]
       42 NAMECALL                         R9 R9 K21 ["format"]
       44 CALL                             R9 2 1
       45 MOVE                             R8 R9
       46 SETTABLEKS                       R8 R7 K15 ["description"]
       48 GETTABLEKS                       R8 R5 K22 ["replaceTokens"]
       50 LOADK                            R9 K23 ["ROBLOX ENGINE API DOCUMENTATION LOOKUP\n\nUse the {ToolNames.HttpGet} tool to fetch official Roblox Engine API docs as clean markdown.\n\nFETCHING SPECIFIC API PAGES:\nThe API name in the URL is PascalCase and matches the Roblox API name exactly. URL patterns:\n\tClasses:    {ENGINE_DOCS_URL}/classes/<ClassName>.md\n\tDatatypes:  {ENGINE_DOCS_URL}/datatypes/<TypeName>.md\n\tEnums:      {ENGINE_DOCS_URL}/enums/<EnumName>.md\n\tGlobals:    {ENGINE_DOCS_URL}/globals/<GlobalName>.md\n\tLibraries:  {ENGINE_DOCS_URL}/libraries/<LibName>.md\n\nExamples:\n\t{ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/classes/ServerScriptService.md\")\n\t{ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/datatypes/Vector3.md\")\n\t{ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/enums/Material.md\")\n\t{ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/globals/RobloxGlobals.md\")\n\t{ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/libraries/task.md\")\n\nEach .md page contains the full reference: description, constructors, properties, methods, events, parameters, return types, and code samples.\n\nWORKFLOW:\n1. Prefer fetching the .md page directly when you know or can infer the API name.\n\n2. Only fall back to the index if you genuinely do not know which API to look up:\n\t{ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/llms.txt\")\n\tThe index lists all classes, datatypes, enums, globals, and libraries with one-line summaries.\n\n3. If the user references a deprecated API, fetch the deprecated inventory directly:\n\t{ToolNames.HttpGet}(url: \"{ENGINE_DOCS_URL}/deprecated.md\")\n\tIt maps every deprecated property, method, event, and class to its modern replacement.\n\nRULES:\n- URLs must end with .md or be llms.txt — the tool rejects anything else.\n- Do NOT guess API names you are unsure about; use the index to confirm first."]
       51 DUPTABLE                         R10 K25 [{"ENGINE_DOCS_URL"}]
       52 SETTABLEKS                       R6 R10 K24 ["ENGINE_DOCS_URL"]
       54 CALL                             R8 2 1
       55 SETTABLEKS                       R8 R7 K16 ["content"]
       57 RETURN                           R7 1
