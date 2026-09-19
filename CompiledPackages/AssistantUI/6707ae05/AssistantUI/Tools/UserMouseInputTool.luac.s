PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["mouseInput"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 LOADK                            R2 K1 ["Success"]
        6 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["targetDataModel"]
        3 JUMPIF                           R3 ; [+1]
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 0
        6 MOVE                             R5 R3
        7 MOVE                             R6 R0
        8 CALL                             R4 2 1
        9 GETUPVAL                         R5 1
       10 CALL                             R5 0 1
       11 MOVE                             R7 R4
       12 NAMECALL                         R5 R5 K1 ["addText"]
       14 CALL                             R5 2 1
       15 NAMECALL                         R5 R5 K2 ["build"]
       17 CALL                             R5 1 1
       18 RETURN                           R5 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["FFlagDisableUserInputConfirmation"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        7 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADK                            R4 K1 ["UserMouseInputTool_SendUserInput"]
        3 DUPCLOSURE                       R5 K2 [PROTO_0]
        4 CAPTURE                          UPVAL U0
        5 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        7 CALL                             R2 3 1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K4 ["define"]
       14 CALL                             R4 0 1
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K5 ["UserMouseInput"]
       18 NAMECALL                         R4 R4 K6 ["setName"]
       20 CALL                             R4 2 1
       21 LOADK                            R6 K7 ["Send one or more mouse actions in order: moveTo, mouseButtonDown, mouseButtonUp, mouseButtonClick, scrollUp, scrollDown, or wait. For mouseButtonDown, mouseButtonUp, and mouseButtonClick, set mouse_button to \"left\" or \"right\". After the first step that sets position (x/y or instance_path), later steps may omit coordinates and reuse that position."]
       22 NAMECALL                         R4 R4 K8 ["setDescription"]
       24 CALL                             R4 2 1
       25 LOADK                            R6 K9 ["actions"]
       26 DUPTABLE                         R7 K15 [{["type"] = "array", ["description"] = "Ordered list of mouse actions to perform.", ["items"]}]
       27 DUPTABLE                         R8 K19 [{["type"] = "object", ["properties"], ["required"]}]
       28 DUPTABLE                         R9 K26 [{"action", "x", "y", "mouse_button", "instance_path", "wait_time_ms"}]
       29 DUPTABLE                         R10 K30 [{["type"] = "string", ["enum"], ["description"] = "The mouse action for this step."}]
       30 NEWTABLE                         R11 0 7
       32 LOADK                            R12 K31 ["moveTo"]
       33 LOADK                            R13 K32 ["mouseButtonDown"]
       34 LOADK                            R14 K33 ["mouseButtonUp"]
       35 LOADK                            R15 K34 ["mouseButtonClick"]
       36 LOADK                            R16 K35 ["scrollUp"]
       37 LOADK                            R17 K36 ["scrollDown"]
       38 LOADK                            R18 K37 ["wait"]
       39 SETLIST                          R11 R12 7 [1]
       41 SETTABLEKS                       R11 R10 K28 ["enum"]
       43 SETTABLEKS                       R10 R9 K20 ["action"]
       45 DUPTABLE                         R10 K40 [{["type"] = "number", ["description"] = "Screen X coordinate. Omit if instance_path is set or a prior step already established position (reused for scroll, mouse button actions, etc.)."}]
       46 SETTABLEKS                       R10 R9 K21 ["x"]
       48 DUPTABLE                         R10 K42 [{["type"] = "number", ["description"] = "Screen Y coordinate. Omit if instance_path is set or a prior step already established position (reused for scroll, mouse button actions, etc.)."}]
       49 SETTABLEKS                       R10 R9 K22 ["y"]
       51 DUPTABLE                         R10 K44 [{["type"] = "string", ["enum"], ["description"] = "Required when action is mouseButtonDown, mouseButtonUp, or mouseButtonClick."}]
       52 NEWTABLE                         R11 0 2
       54 LOADK                            R12 K45 ["left"]
       55 LOADK                            R13 K46 ["right"]
       56 SETLIST                          R11 R12 2 [1]
       58 SETTABLEKS                       R11 R10 K28 ["enum"]
       60 SETTABLEKS                       R10 R9 K23 ["mouse_button"]
       62 DUPTABLE                         R10 K48 [{["type"] = "string", ["description"] = "The instance path that the mouse should be moved to. for example: \"LocalPlayer.PlayerGui.Frame\", \"game.Workspace.Folder.Frame\". The path should start with game, LocalPlayer, or Workspace. If instance_path is provided, x and y will be ignored, vice versa."}]
       63 SETTABLEKS                       R10 R9 K24 ["instance_path"]
       65 DUPTABLE                         R10 K50 [{["type"] = "number", ["description"] = "Delay in milliseconds before the next step. Required for wait; range 0 to 10000."}]
       66 SETTABLEKS                       R10 R9 K25 ["wait_time_ms"]
       68 SETTABLEKS                       R9 R8 K17 ["properties"]
       70 NEWTABLE                         R9 0 1
       72 LOADK                            R10 K20 ["action"]
       73 SETLIST                          R9 R10 1 [1]
       75 SETTABLEKS                       R9 R8 K18 ["required"]
       77 SETTABLEKS                       R8 R7 K14 ["items"]
       79 NAMECALL                         R4 R4 K51 ["addArgument"]
       81 CALL                             R4 3 1
       82 DUPTABLE                         R6 K59 [{["title"] = "User Mouse Input", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       83 NAMECALL                         R4 R4 K60 ["setAnnotations"]
       85 CALL                             R4 2 1
       86 MOVE                             R6 R3
       87 NAMECALL                         R4 R4 K61 ["setHandler"]
       89 CALL                             R4 2 1
       90 NAMECALL                         R4 R4 K62 ["build"]
       92 CALL                             R4 1 1
       93 DUPTABLE                         R5 K66 [{"availableDataModelTypes", "definition", "getPreExecuteWarning"}]
       94 NEWTABLE                         R6 0 1
       96 GETUPVAL                         R7 4
       97 GETTABLEKS                       R7 R7 K67 ["Types"]
       99 GETTABLEKS                       R7 R7 K68 ["Client"]
      101 SETLIST                          R6 R7 1 [1]
      103 SETTABLEKS                       R6 R5 K63 ["availableDataModelTypes"]
      105 SETTABLEKS                       R4 R5 K64 ["definition"]
      107 DUPCLOSURE                       R6 K69 [PROTO_2]
      108 CAPTURE                          UPVAL U5
      109 SETTABLEKS                       R6 R5 K65 ["getPreExecuteWarning"]
      111 RETURN                           R5 1

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
       40 GETTABLEKS                       R6 R3 K6 ["Util"]
       42 GETTABLEKS                       R6 R6 K14 ["ToolBuilder"]
       44 GETTABLEKS                       R7 R3 K6 ["Util"]
       46 GETTABLEKS                       R7 R7 K15 ["ToolResult"]
       48 GETTABLEKS                       R8 R5 K16 ["ToolNames"]
       50 DUPCLOSURE                       R9 K17 [PROTO_3]
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R2
       57 RETURN                           R9 1
