MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["SkillDefinition"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["SkillNames"]
       12 GETTABLEKS                       R2 R0 K7 ["Sources"]
       14 DUPTABLE                         R3 K12 [{"name", "source", "description", "content"}]
       15 GETTABLEKS                       R4 R1 K13 ["OpenCloudUsage"]
       17 SETTABLEKS                       R4 R3 K8 ["name"]
       19 GETTABLEKS                       R4 R2 K14 ["Roblox"]
       21 SETTABLEKS                       R4 R3 K9 ["source"]
       23 LOADK                            R4 K15 ["IMPORTANT: Before assuming ANY Roblox resource (developer products, badges, game passes, data stores, etc.) cannot be created or managed programmatically, call this skill. Studio can create and manage many of these via the Open Cloud API. Attempt use of those APIs before suggesting the user do it manually in the Creator Dashboard.\n\nRetrieves guidance on how to use Roblox Open Cloud APIs from within Studio, including authentication, available endpoints, and troubleshooting.\n\nNo API key or external credentials are needed. Studio provides credentials automatically via HttpService:RequestAccessTokenScopesAsync(scopes). Full authentication instructions are in the skill result.\n\nAn index of all available Open Cloud functionality can be found by using the http_get tool with https://create.roblox.com/docs/cloud/llms.txt. Call this skill before any Open Cloud request for the full authentication guide and to discover available endpoints."]
       24 SETTABLEKS                       R4 R3 K10 ["description"]
       26 LOADK                            R4 K16 ["Access Open Cloud by executing a Luau script making a request to the relevant Open Cloud endpoints with HttpService.\nThe Authorization header should be set to the result of calling game:GetService(\"HttpService\"):RequestAccessTokenScopesAsync(<requiredScopes>), where scopes is an array of the OAuth2 scopes needed for the request (e.g., {\"universe:read\"}). The returned token already has the \"Bearer \" prefix so no additional prefix is necessary.\nCurrent supported scopes are:\n  - developer-product:read\n  - developer-product:write\n  - game-pass:read\n  - game-pass:write\n  - universe:read\nAvailable Open Cloud APIs are described here: https://create.roblox.com/docs/cloud/llms.txt\nUse the http_get tool to fetch this URL and read the API listing. Any URLs referenced within the llms.txt response should also be fetched via http_get to get the detailed API documentation needed for your request.\nERROR HANDLING:\n\"Scope '<scope>' has been denied\"\n  → The scope needs to be enabled in the Assistant Plugin's MCP Scope Permissions dialog.\n    Ask the user to enable it and retry after they confirm it's enabled.\nHTTP 403\n  → The required scope needs to be enabled in the Assistant Plugin's MCP Scope Permissions\n    dialog. Ask the user to enable it and retry after they confirm it's enabled.\nHTTP 401\n  → The token is invalid or expired. Re-call RequestAccessTokenScopesAsync to get a fresh\n    token and retry the request."]
       27 SETTABLEKS                       R4 R3 K11 ["content"]
       29 RETURN                           R3 1
