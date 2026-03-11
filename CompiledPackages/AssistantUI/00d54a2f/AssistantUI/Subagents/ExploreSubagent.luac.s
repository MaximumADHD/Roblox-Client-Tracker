MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Tools"]
       11 GETTABLEKS                       R2 R3 K7 ["ToolTypes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Flags"]
       18 GETTABLEKS                       R3 R4 K9 ["FStringSubagentExploreModelName"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R5 R6 K10 ["Parent"]
       27 GETTABLEKS                       R4 R5 K11 ["SubagentDefinition"]
       29 CALL                             R3 1 1
       30 DUPTABLE                         R4 K18 [{"name", "description", "systemMessage", "allowedTools", "maxToolCalls", "model"}]
       31 LOADK                            R5 K19 ["explore"]
       32 SETTABLEKS                       R5 R4 K12 ["name"]
       34 LOADK                            R5 K20 ["Fast agent specialized for exploring codebases and searching for information. Use this when you need to:\n- Find files by patterns (e.g., \"scripts with 'player' in the name\")\n- Search code for keywords or patterns (e.g., \"how are touch events handled?\")\n- Answer questions about the codebase structure\n- Query the current game state via Luau execution\n- Understand existing game architecture before making changes\n- Gather context from multiple files before deciding on an approach"]
       35 SETTABLEKS                       R5 R4 K13 ["description"]
       37 LOADK                            R5 K21 ["You are a specialized Explore subagent for Roblox Studio Assistant.\nYour job is to explore the codebase and game state, then return a concise summary to the main agent.\n\nTOOLS:\n- script_search: Find scripts by name\n- script_grep: Search script content for keywords\n- script_read: Read script contents\n- execute_luau: Run Luau to query game state (RETURN values, do not print)\n- inspect_instance: Get detailed properties/attributes of an instance\n- search_game_tree: Browse the game hierarchy\n\nHOW TO WORK:\n1. Call tools to gather information. Do NOT output any text while exploring.\n2. Be efficient: call multiple tools in parallel when possible.\n3. Try different name variations (e.g., \"Player\", \"player\", \"PLAYER\").\n4. Look for related components (e.g., if asked about spawning, also check character handling).\n5. When you have enough information, write your final answer.\n\nOUTPUT RULES (CRITICAL):\n- You may ONLY output text once: your final summary. No intermediate commentary.\n- Keep your summary SHORT and DENSE. Aim for 5-15 sentences. Never exceed 30 sentences.\n- Use plain text only. NO markdown, NO headers (#), NO bold (**), NO code blocks (```), NO bullet points (-).\n- Use numbered lists (1. 2. 3.) or commas to organize information.\n- State facts directly. Do not repeat the question or say \"Here is what I found\".\n- Include script paths and key details so the main agent can act on your findings.\n- If the answer is simple, give a simple answer. Do not pad with unnecessary detail."]
       38 SETTABLEKS                       R5 R4 K14 ["systemMessage"]
       40 NEWTABLE                         R5 0 6
       42 GETTABLEKS                       R7 R1 K22 ["ToolNames"]
       44 GETTABLEKS                       R6 R7 K23 ["FileSearch"]
       46 GETTABLEKS                       R8 R1 K22 ["ToolNames"]
       48 GETTABLEKS                       R7 R8 K24 ["GrepSearch"]
       50 GETTABLEKS                       R9 R1 K22 ["ToolNames"]
       52 GETTABLEKS                       R8 R9 K25 ["ReadFile"]
       54 GETTABLEKS                       R10 R1 K22 ["ToolNames"]
       56 GETTABLEKS                       R9 R10 K26 ["ExecuteLuau"]
       58 GETTABLEKS                       R11 R1 K22 ["ToolNames"]
       60 GETTABLEKS                       R10 R11 K27 ["InspectInstance"]
       62 GETTABLEKS                       R12 R1 K22 ["ToolNames"]
       64 GETTABLEKS                       R11 R12 K28 ["GameTree"]
       66 SETLIST                          R5 R6 6 [1]
       68 SETTABLEKS                       R5 R4 K15 ["allowedTools"]
       70 LOADN                            R5 50
       71 SETTABLEKS                       R5 R4 K16 ["maxToolCalls"]
       73 MOVE                             R5 R2
       74 CALL                             R5 0 1
       75 SETTABLEKS                       R5 R4 K17 ["model"]
       77 RETURN                           R4 1
