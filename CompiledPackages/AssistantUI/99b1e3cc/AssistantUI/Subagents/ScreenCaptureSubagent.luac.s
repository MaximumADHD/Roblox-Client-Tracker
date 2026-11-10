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
       34 JUMPIFNOT                        R6 ; [+2]
       35 GETTABLEKS                       R6 R1 K14 ["FFlagAssistantCapturePluginGuiTool"]
       37 NEWTABLE                         R7 0 1
       39 GETTABLEKS                       R8 R5 K15 ["ScreenCapture"]
       41 SETLIST                          R7 R8 1 [1]
       43 JUMPIFNOT                        R6 ; [+16]
       44 GETTABLEKS                       R10 R5 K16 ["ListPluginGuis"]
       46 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
       48 MOVE                             R9 R7
       49 GETIMPORT                        R8 K19 [table.insert]
       51 CALL                             R8 2 0
       52 GETTABLEKS                       R10 R5 K20 ["CapturePluginGui"]
       54 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
       56 MOVE                             R9 R7
       57 GETIMPORT                        R8 K19 [table.insert]
       59 CALL                             R8 2 0
       60 DUPTABLE                         R8 K27 [{"name", "description", "systemMessage", "allowedTools", "maxToolCalls", "model"}]
       61 GETTABLEKS                       R9 R4 K15 ["ScreenCapture"]
       63 SETTABLEKS                       R9 R8 K21 ["name"]
       65 JUMPIFNOT                        R6 ; [+2]
       66 LOADK                            R9 K28 ["Fast agent specialized in capturing Roblox Studio screen content and describing what is shown, or answering questions about it. It can capture the datamodel view port, or an individual built-in or third-party user plugin. Note you are not able to process attached images like IMAGEID_xxxx, you can only capture the screen."]
       67 JUMP                             ; [+1]
       68 LOADK                            R9 K29 ["Fast agent specialized in capturing the datamodel view port screen and describing what is shown, or answering questions about datamodel view port screen content. What would you like to know? Note You are not able to process attachted images like IMAGEID_xxxx, you can only capture the screen."]
       69 SETTABLEKS                       R9 R8 K22 ["description"]
       71 JUMPIFNOT                        R6 ; [+5]
       72 GETTABLEKS                       R9 R5 K30 ["replaceTokens"]
       74 LOADK                            R10 K31 ["You are a specialized Screen Capture and Analysis subagent for Roblox Studio Assistant.\n- Your job is to capture the screen and describe what is shown, then return a concise description of the screen content, or answers to questions the user asked.\n- If the user asks questions that are not related to the screen content, simply ignore them and return the screen capture description.\n- {ToolNames.ScreenCapture} captures the datamodel view port, including the 3d content and 2d UIs. Use this to answer questions about the view port, including in-game content and UI.\n- {ToolNames.ListPluginGuis} lists the pluginGuiId for each plugin GUI that exists, including both built-in and third-party user plugins. {ToolNames.CapturePluginGui} screenshots one of them by that id. Use these to answer questions about Studio or plugin UI.\n- Describe only what you actually captured: if the capture fails, do not attempt to answer the questions. Instead, report which capture type was attempted and the reason why it failed\n"]
       75 CALL                             R9 1 1
       76 JUMP                             ; [+1]
       77 LOADK                            R9 K32 ["You are a specialized datamodel view port Screen Capture and Analysis subagent for Roblox Studio Assistant.\n- Your job is to capture the screen and describe what is shown, then answer questions about the image content.\n- Return a concise description of the screen content, or answers to questions user asked.\n- If the user asks unrelated questions that is not related to the screen content, simply ignore it and return screen capture description.\n- Only talk about the datamodel view port, including the 3d content and 2d UIs.\n- Don't mention anything that is outside of the datamodel view port, such as Roblox Studio UI, Explorer, Property View, Plugins, Console, etc.\n"]
       78 SETTABLEKS                       R9 R8 K23 ["systemMessage"]
       80 SETTABLEKS                       R7 R8 K24 ["allowedTools"]
       82 JUMPIFNOT                        R6 ; [+2]
       83 LOADN                            R9 4
       84 JUMP                             ; [+1]
       85 LOADN                            R9 1
       86 SETTABLEKS                       R9 R8 K25 ["maxToolCalls"]
       88 GETTABLEKS                       R10 R1 K33 ["FStringScreenCaptureSubagentModelName"]
       90 JUMPIFEQKS                       R10 K34 [""] ; [+4]
       92 GETTABLEKS                       R9 R1 K33 ["FStringScreenCaptureSubagentModelName"]
       94 JUMP                             ; [+1]
       95 LOADK                            R9 K35 ["Assistant/qwen35-27b"]
       96 SETTABLEKS                       R9 R8 K26 ["model"]
       98 RETURN                           R8 1
