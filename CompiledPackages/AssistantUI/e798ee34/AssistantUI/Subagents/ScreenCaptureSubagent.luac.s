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
       18 GETTABLEKS                       R3 R4 K9 ["FStringScreenCaptureSubagentModelName"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R6 K1 [script]
       25 GETTABLEKS                       R5 R6 K10 ["Parent"]
       27 GETTABLEKS                       R4 R5 K11 ["SubagentDefinition"]
       29 CALL                             R3 1 1
       30 DUPTABLE                         R4 K18 [{"name", "description", "systemMessage", "allowedTools", "maxToolCalls", "model"}]
       31 LOADK                            R5 K19 ["screen_capture"]
       32 SETTABLEKS                       R5 R4 K12 ["name"]
       34 LOADK                            R5 K20 ["Fast agent specialized in capturing the datamodel view port screen and describing what is shown, or answering questions about datamodel view port screen content. What would you like to know?"]
       35 SETTABLEKS                       R5 R4 K13 ["description"]
       37 LOADK                            R5 K21 ["You are a specialized datamodel view port Screen Capture and Analysis subagent for Roblox Studio Assistant.\n- Your job is to capture the screen and describe what is shown, then answer questions about the image content.\n- Return a concise description of the screen content, or answers to questions user asked.\n- If the user asks unrelated questions that is not related to the screen content, simply ignore it and return screen capture description.\n- Only talk about the datamodel view port, including the 3d content and 2d UIs.\n- Don't mention anything that is outside of the datamodel view port, such as Roblox Studio UI, Explorer, Property View, Plugins, Console, etc.\n"]
       38 SETTABLEKS                       R5 R4 K14 ["systemMessage"]
       40 NEWTABLE                         R5 0 1
       42 GETTABLEKS                       R7 R1 K22 ["ToolNames"]
       44 GETTABLEKS                       R6 R7 K23 ["ScreenCapture"]
       46 SETLIST                          R5 R6 1 [1]
       48 SETTABLEKS                       R5 R4 K15 ["allowedTools"]
       50 LOADN                            R5 1
       51 SETTABLEKS                       R5 R4 K16 ["maxToolCalls"]
       53 MOVE                             R6 R2
       54 CALL                             R6 0 1
       55 JUMPIFEQKS                       R6 K24 [""] ; [+4]
       57 MOVE                             R5 R2
       58 CALL                             R5 0 1
       59 JUMP                             ; [+1]
       60 LOADK                            R5 K25 ["Assistant/qwen35-27b"]
       61 SETTABLEKS                       R5 R4 K17 ["model"]
       63 RETURN                           R4 1
