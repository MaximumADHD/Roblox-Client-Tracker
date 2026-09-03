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
       32 DUPTABLE                         R6 K22 [{["name"], ["description"] = "Fast agent specialized in capturing the datamodel view port screen and describing what is shown, or answering questions about datamodel view port screen content. What would you like to know? Note You are not able to process attachted images like IMAGEID_xxxx, you can only capture the screen.", ["systemMessage"] = "You are a specialized datamodel view port Screen Capture and Analysis subagent for Roblox Studio Assistant.\n- Your job is to capture the screen and describe what is shown, then answer questions about the image content.\n- Return a concise description of the screen content, or answers to questions user asked.\n- If the user asks unrelated questions that is not related to the screen content, simply ignore it and return screen capture description.\n- Only talk about the datamodel view port, including the 3d content and 2d UIs.\n- Don't mention anything that is outside of the datamodel view port, such as Roblox Studio UI, Explorer, Property View, Plugins, Console, etc.\n", ["allowedTools"], ["maxToolCalls"] = 1, ["model"]}]
       33 GETTABLEKS                       R7 R4 K23 ["ScreenCapture"]
       35 SETTABLEKS                       R7 R6 K13 ["name"]
       37 NEWTABLE                         R7 0 1
       39 GETTABLEKS                       R8 R5 K23 ["ScreenCapture"]
       41 SETLIST                          R7 R8 1 [1]
       43 SETTABLEKS                       R7 R6 K18 ["allowedTools"]
       45 GETTABLEKS                       R8 R1 K24 ["FStringScreenCaptureSubagentModelName"]
       47 JUMPIFEQKS                       R8 K25 [""] ; [+4]
       49 GETTABLEKS                       R7 R1 K24 ["FStringScreenCaptureSubagentModelName"]
       51 JUMP                             ; [+1]
       52 LOADK                            R7 K26 ["Assistant/qwen35-27b"]
       53 SETTABLEKS                       R7 R6 K21 ["model"]
       55 RETURN                           R6 1
