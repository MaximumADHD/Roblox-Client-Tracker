MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K7 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["SubagentDefinition"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Tools"]
       25 GETTABLEKS                       R4 R4 K10 ["ToolTypes"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["SubagentNames"]
       30 GETTABLEKS                       R5 R3 K12 ["ToolNames"]
       32 GETTABLEKS                       R6 R1 K13 ["FFlagAssistantScreenCaptureSubagentPluginGuis"]
       34 JUMPIFNOT                        R6 ; [+5]
       35 GETTABLEKS                       R6 R1 K14 ["FFlagAssistantCapturePluginGuiTool"]
       37 JUMPIFNOT                        R6 ; [+2]
       38 GETTABLEKS                       R6 R1 K15 ["FFlagAssistantListPluginGuisTool"]
       40 NEWTABLE                         R7 0 1
       42 GETTABLEKS                       R8 R5 K16 ["ScreenCapture"]
       44 SETLIST                          R7 R8 1 [1]
       46 JUMPIFNOT                        R6 ; [+16]
       47 GETTABLEKS                       R10 R5 K17 ["ListPluginGuis"]
       49 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
       51 MOVE                             R9 R7
       52 GETIMPORT                        R8 K20 [table.insert]
       54 CALL                             R8 2 0
       55 GETTABLEKS                       R10 R5 K21 ["CapturePluginGui"]
       57 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
       59 MOVE                             R9 R7
       60 GETIMPORT                        R8 K20 [table.insert]
       62 CALL                             R8 2 0
       63 DUPTABLE                         R8 K28 [{"name", "description", "systemMessage", "allowedTools", "maxToolCalls", "model"}]
       64 GETTABLEKS                       R9 R4 K16 ["ScreenCapture"]
       66 SETTABLEKS                       R9 R8 K22 ["name"]
       68 JUMPIFNOT                        R6 ; [+2]
       69 LOADK                            R9 K29 ["Fast agent specialized in capturing Roblox Studio screen content and describing what is shown, or answering questions about it. It can capture the datamodel view port, or an individual built-in or third-party user plugin. Note you are not able to process attached images like IMAGEID_xxxx, you can only capture the screen."]
       70 JUMP                             ; [+1]
       71 LOADK                            R9 K30 ["Fast agent specialized in capturing the datamodel view port screen and describing what is shown, or answering questions about datamodel view port screen content. What would you like to know? Note You are not able to process attachted images like IMAGEID_xxxx, you can only capture the screen."]
       72 SETTABLEKS                       R9 R8 K23 ["description"]
       74 JUMPIFNOT                        R6 ; [+5]
       75 GETTABLEKS                       R9 R5 K31 ["replaceTokens"]
       77 LOADK                            R10 K32 ["You are a specialized Screen Capture and Analysis subagent for Roblox Studio Assistant.\n- Your job is to capture the screen and describe what is shown, then return a concise description of the screen content, or answers to questions the user asked.\n- If the user asks questions that are not related to the screen content, simply ignore them and return the screen capture description.\n- {ToolNames.ScreenCapture} captures the datamodel view port, including the 3d content and 2d UIs. Use this to answer questions about the view port, including in-game content and UI.\n- {ToolNames.ListPluginGuis} lists the pluginGuiId for each plugin GUI that exists, including both built-in and third-party user plugins. {ToolNames.CapturePluginGui} screenshots one of them by that id. Use these to answer questions about Studio or plugin UI.\n- Describe only what you actually captured: if the capture fails, do not attempt to answer the questions. Instead, report which capture type was attempted and the reason why it failed\n"]
       78 CALL                             R9 1 1
       79 JUMP                             ; [+1]
       80 LOADK                            R9 K33 ["You are a specialized datamodel view port Screen Capture and Analysis subagent for Roblox Studio Assistant.\n- Your job is to capture the screen and describe what is shown, then answer questions about the image content.\n- Return a concise description of the screen content, or answers to questions user asked.\n- If the user asks unrelated questions that is not related to the screen content, simply ignore it and return screen capture description.\n- Only talk about the datamodel view port, including the 3d content and 2d UIs.\n- Don't mention anything that is outside of the datamodel view port, such as Roblox Studio UI, Explorer, Property View, Plugins, Console, etc.\n"]
       81 SETTABLEKS                       R9 R8 K24 ["systemMessage"]
       83 SETTABLEKS                       R7 R8 K25 ["allowedTools"]
       85 JUMPIFNOT                        R6 ; [+2]
       86 LOADN                            R9 4
       87 JUMP                             ; [+1]
       88 LOADN                            R9 1
       89 SETTABLEKS                       R9 R8 K26 ["maxToolCalls"]
       91 GETTABLEKS                       R10 R1 K34 ["FStringScreenCaptureSubagentModelName"]
       93 JUMPIFEQKS                       R10 K35 [""] ; [+4]
       95 GETTABLEKS                       R9 R1 K34 ["FStringScreenCaptureSubagentModelName"]
       97 JUMP                             ; [+1]
       98 LOADK                            R9 K36 ["Assistant/qwen35-27b"]
       99 SETTABLEKS                       R9 R8 K27 ["model"]
      101 RETURN                           R8 1
