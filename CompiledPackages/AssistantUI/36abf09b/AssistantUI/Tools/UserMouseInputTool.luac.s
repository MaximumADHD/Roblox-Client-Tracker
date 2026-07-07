PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantBackgroundDataModelToolCall"]
        3 JUMPIF                           R2 ; [+15]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["getDataModelType"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["Types"]
       11 GETTABLEKS                       R3 R3 K3 ["Client"]
       13 JUMPIFEQ                         R2 R3 ; [+5]
       15 GETIMPORT                        R2 K5 [error]
       17 LOADK                            R3 K6 ["This tool is only available in play mode with client datamodel focused."]
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K7 ["mouseInput"]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 LOADK                            R2 K8 ["Success"]
       25 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["FFlagAssistantBackgroundDataModelToolCall"]
        3 JUMPIFNOT                        R4 ; [+4]
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R3 R1 K1 ["targetDataModel"]
        7 JUMPIF                           R3 ; [+1]
        8 LOADNIL                          R3
        9 GETUPVAL                         R4 1
       10 MOVE                             R5 R3
       11 MOVE                             R6 R0
       12 CALL                             R4 2 1
       13 GETUPVAL                         R5 2
       14 CALL                             R5 0 1
       15 MOVE                             R7 R4
       16 NAMECALL                         R5 R5 K2 ["addText"]
       18 CALL                             R5 2 1
       19 NAMECALL                         R5 R5 K3 ["build"]
       21 CALL                             R5 1 1
       22 RETURN                           R5 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["FFlagDisableUserInputConfirmation"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        7 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["UserMouseInput"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADK                            R4 K1 ["UserMouseInputTool_SendUserInput"]
        3 DUPCLOSURE                       R5 K2 [PROTO_0]
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        9 CALL                             R2 3 1
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U3
       14 GETUPVAL                         R4 4
       15 GETTABLEKS                       R4 R4 K4 ["define"]
       17 CALL                             R4 0 1
       18 GETUPVAL                         R6 5
       19 GETTABLEKS                       R6 R6 K5 ["UserMouseInput"]
       21 NAMECALL                         R4 R4 K6 ["setName"]
       23 CALL                             R4 2 1
       24 LOADK                            R6 K7 ["Send one or more mouse actions in order: moveTo, mouseButtonDown, mouseButtonUp, mouseButtonClick, scrollUp, scrollDown, or wait. For mouseButtonDown, mouseButtonUp, and mouseButtonClick, set mouse_button to \"left\" or \"right\". After the first step that sets position (x/y or instance_path), later steps may omit coordinates and reuse that position."]
       25 NAMECALL                         R4 R4 K8 ["setDescription"]
       27 CALL                             R4 2 1
       28 LOADK                            R6 K9 ["actions"]
       29 DUPTABLE                         R7 K15 [{["type"] = "array", ["description"] = "Ordered list of mouse actions to perform.", ["items"]}]
       30 DUPTABLE                         R8 K19 [{["type"] = "object", ["properties"], ["required"]}]
       31 DUPTABLE                         R9 K26 [{"action", "x", "y", "mouse_button", "instance_path", "wait_time_ms"}]
       32 DUPTABLE                         R10 K30 [{["type"] = "string", ["enum"], ["description"] = "The mouse action for this step."}]
       33 NEWTABLE                         R11 0 7
       35 LOADK                            R12 K31 ["moveTo"]
       36 LOADK                            R13 K32 ["mouseButtonDown"]
       37 LOADK                            R14 K33 ["mouseButtonUp"]
       38 LOADK                            R15 K34 ["mouseButtonClick"]
       39 LOADK                            R16 K35 ["scrollUp"]
       40 LOADK                            R17 K36 ["scrollDown"]
       41 LOADK                            R18 K37 ["wait"]
       42 SETLIST                          R11 R12 7 [1]
       44 SETTABLEKS                       R11 R10 K28 ["enum"]
       46 SETTABLEKS                       R10 R9 K20 ["action"]
       48 DUPTABLE                         R10 K40 [{["type"] = "number", ["description"] = "Screen X coordinate. Omit if instance_path is set or a prior step already established position (reused for scroll, mouse button actions, etc.)."}]
       49 SETTABLEKS                       R10 R9 K21 ["x"]
       51 DUPTABLE                         R10 K42 [{["type"] = "number", ["description"] = "Screen Y coordinate. Omit if instance_path is set or a prior step already established position (reused for scroll, mouse button actions, etc.)."}]
       52 SETTABLEKS                       R10 R9 K22 ["y"]
       54 DUPTABLE                         R10 K44 [{["type"] = "string", ["enum"], ["description"] = "Required when action is mouseButtonDown, mouseButtonUp, or mouseButtonClick."}]
       55 NEWTABLE                         R11 0 2
       57 LOADK                            R12 K45 ["left"]
       58 LOADK                            R13 K46 ["right"]
       59 SETLIST                          R11 R12 2 [1]
       61 SETTABLEKS                       R11 R10 K28 ["enum"]
       63 SETTABLEKS                       R10 R9 K23 ["mouse_button"]
       65 DUPTABLE                         R10 K48 [{["type"] = "string", ["description"] = "The instance path that the mouse should be moved to. for example: \"LocalPlayer.PlayerGui.Frame\", \"game.Workspace.Folder.Frame\". The path should start with game, LocalPlayer, or Workspace. If instance_path is provided, x and y will be ignored, vice versa."}]
       66 SETTABLEKS                       R10 R9 K24 ["instance_path"]
       68 DUPTABLE                         R10 K50 [{["type"] = "number", ["description"] = "Delay in milliseconds before the next step. Required for wait; range 0 to 10000."}]
       69 SETTABLEKS                       R10 R9 K25 ["wait_time_ms"]
       71 SETTABLEKS                       R9 R8 K17 ["properties"]
       73 NEWTABLE                         R9 0 1
       75 LOADK                            R10 K20 ["action"]
       76 SETLIST                          R9 R10 1 [1]
       78 SETTABLEKS                       R9 R8 K18 ["required"]
       80 SETTABLEKS                       R8 R7 K14 ["items"]
       82 NAMECALL                         R4 R4 K51 ["addArgument"]
       84 CALL                             R4 3 1
       85 DUPTABLE                         R6 K59 [{["title"] = "User Mouse Input", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       86 NAMECALL                         R4 R4 K60 ["setAnnotations"]
       88 CALL                             R4 2 1
       89 MOVE                             R6 R3
       90 NAMECALL                         R4 R4 K61 ["setHandler"]
       92 CALL                             R4 2 1
       93 NAMECALL                         R4 R4 K62 ["build"]
       95 CALL                             R4 1 1
       96 DUPTABLE                         R5 K67 [{"availableDataModelTypes", "definition", "getPreExecuteWarning", "displayNameFunction"}]
       97 GETUPVAL                         R7 0
       98 GETTABLEKS                       R7 R7 K68 ["FFlagAssistantBackgroundDataModelToolCall"]
      100 JUMPIFNOT                        R7 ; [+10]
      101 NEWTABLE                         R6 0 1
      103 GETUPVAL                         R7 1
      104 GETTABLEKS                       R7 R7 K69 ["Types"]
      106 GETTABLEKS                       R7 R7 K70 ["Client"]
      108 SETLIST                          R6 R7 1 [1]
      110 JUMPIF                           R6 ; [+1]
      111 LOADNIL                          R6
      112 SETTABLEKS                       R6 R5 K63 ["availableDataModelTypes"]
      114 SETTABLEKS                       R4 R5 K64 ["definition"]
      116 DUPCLOSURE                       R6 K71 [PROTO_2]
      117 CAPTURE                          UPVAL U0
      118 SETTABLEKS                       R6 R5 K65 ["getPreExecuteWarning"]
      120 GETUPVAL                         R7 0
      121 GETTABLEKS                       R7 R7 K72 ["FFlagAssistantSplitToolsAndWidgets"]
      123 JUMPIFNOT                        R7 ; [+2]
      124 LOADNIL                          R6
      125 JUMP                             ; [+2]
      126 DUPCLOSURE                       R6 K73 [PROTO_3]
      127 CAPTURE                          UPVAL U6
      128 SETTABLEKS                       R6 R5 K66 ["displayNameFunction"]
      130 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["DataModelType"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["ModelContextProtocol"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Util"]
       30 GETTABLEKS                       R5 R5 K11 ["TestAutomationUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Tools"]
       37 GETTABLEKS                       R6 R6 K13 ["ToolTypes"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K14 ["Resources"]
       44 GETTABLEKS                       R7 R7 K15 ["Localization"]
       46 GETTABLEKS                       R7 R7 K16 ["Translator"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R3 K6 ["Util"]
       51 GETTABLEKS                       R7 R7 K17 ["ToolBuilder"]
       53 GETTABLEKS                       R8 R3 K6 ["Util"]
       55 GETTABLEKS                       R8 R8 K18 ["ToolResult"]
       57 GETTABLEKS                       R9 R5 K19 ["ToolNames"]
       59 DUPCLOSURE                       R10 K20 [PROTO_4]
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R6
       67 RETURN                           R10 1
