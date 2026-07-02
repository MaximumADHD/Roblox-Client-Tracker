MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["SubagentDefinition"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Tools"]
       20 GETTABLEKS                       R3 R3 K9 ["ToolTypes"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Flags"]
       27 GETTABLEKS                       R4 R4 K11 ["FStringScreenCaptureSubagentModelName"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K12 ["SubagentNames"]
       32 GETTABLEKS                       R5 R2 K13 ["ToolNames"]
       34 DUPTABLE                         R6 K23 [{["name"], ["description"] = "Fast agent specialized in capturing the datamodel view port screen and describing what is shown, or answering questions about datamodel view port screen content. What would you like to know? Note You are not able to process attachted images like IMAGEID_xxxx, you can only capture the screen.", ["systemMessage"] = "You are a specialized datamodel view port Screen Capture and Analysis subagent for Roblox Studio Assistant.\n- Your job is to capture the screen and describe what is shown, then answer questions about the image content.\n- Return a concise description of the screen content, or answers to questions user asked.\n- If the user asks unrelated questions that is not related to the screen content, simply ignore it and return screen capture description.\n- Only talk about the datamodel view port, including the 3d content and 2d UIs.\n- Don't mention anything that is outside of the datamodel view port, such as Roblox Studio UI, Explorer, Property View, Plugins, Console, etc.\n", ["allowedTools"], ["maxToolCalls"] = 1, ["model"]}]
       35 GETTABLEKS                       R7 R4 K24 ["ScreenCapture"]
       37 SETTABLEKS                       R7 R6 K14 ["name"]
       39 NEWTABLE                         R7 0 1
       41 GETTABLEKS                       R8 R5 K24 ["ScreenCapture"]
       43 SETLIST                          R7 R8 1 [1]
       45 SETTABLEKS                       R7 R6 K19 ["allowedTools"]
       47 MOVE                             R8 R3
       48 CALL                             R8 0 1
       49 JUMPIFEQKS                       R8 K25 [""] ; [+4]
       51 MOVE                             R7 R3
       52 CALL                             R7 0 1
       53 JUMP                             ; [+1]
       54 LOADK                            R7 K26 ["Assistant/qwen35-27b"]
       55 SETTABLEKS                       R7 R6 K22 ["model"]
       57 RETURN                           R6 1
