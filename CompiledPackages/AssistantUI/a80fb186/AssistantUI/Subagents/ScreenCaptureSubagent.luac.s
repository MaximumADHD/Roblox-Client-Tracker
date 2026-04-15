MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K6 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["SubagentDefinition"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Tools"]
       20 GETTABLEKS                       R3 R4 K9 ["ToolTypes"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Flags"]
       27 GETTABLEKS                       R4 R5 K11 ["FStringScreenCaptureSubagentModelName"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["SubagentNames"]
       32 GETTABLEKS                       R5 R2 K13 ["ToolNames"]
       34 DUPTABLE                         R6 K20 [{"name", "description", "systemMessage", "allowedTools", "maxToolCalls", "model"}]
       35 GETTABLEKS                       R7 R4 K21 ["ScreenCapture"]
       37 SETTABLEKS                       R7 R6 K14 ["name"]
       39 LOADK                            R7 K22 ["Fast agent specialized in capturing the datamodel view port screen and describing what is shown, or answering questions about datamodel view port screen content. What would you like to know?"]
       40 SETTABLEKS                       R7 R6 K15 ["description"]
       42 LOADK                            R7 K23 ["You are a specialized datamodel view port Screen Capture and Analysis subagent for Roblox Studio Assistant.\n- Your job is to capture the screen and describe what is shown, then answer questions about the image content.\n- Return a concise description of the screen content, or answers to questions user asked.\n- If the user asks unrelated questions that is not related to the screen content, simply ignore it and return screen capture description.\n- Only talk about the datamodel view port, including the 3d content and 2d UIs.\n- Don't mention anything that is outside of the datamodel view port, such as Roblox Studio UI, Explorer, Property View, Plugins, Console, etc.\n"]
       43 SETTABLEKS                       R7 R6 K16 ["systemMessage"]
       45 NEWTABLE                         R7 0 1
       47 GETTABLEKS                       R8 R5 K21 ["ScreenCapture"]
       49 SETLIST                          R7 R8 1 [1]
       51 SETTABLEKS                       R7 R6 K17 ["allowedTools"]
       53 LOADN                            R7 1
       54 SETTABLEKS                       R7 R6 K18 ["maxToolCalls"]
       56 MOVE                             R8 R3
       57 CALL                             R8 0 1
       58 JUMPIFEQKS                       R8 K24 [""] ; [+4]
       60 MOVE                             R7 R3
       61 CALL                             R7 0 1
       62 JUMP                             ; [+1]
       63 LOADK                            R7 K25 ["Assistant/qwen35-27b"]
       64 SETTABLEKS                       R7 R6 K19 ["model"]
       66 RETURN                           R6 1
