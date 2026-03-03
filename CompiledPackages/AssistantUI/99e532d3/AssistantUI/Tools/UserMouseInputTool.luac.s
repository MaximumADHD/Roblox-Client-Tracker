PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getDataModelType"]
        3 CALL                             R2 0 1
        4 JUMPIFEQKS                       R2 K1 ["Client"] ; [+5]
        6 GETIMPORT                        R2 K3 [error]
        8 LOADK                            R3 K4 ["This tool is only available in play mode with client datamodel focused."]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K5 ["mouseInput"]
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 LOADK                            R2 K6 ["Success"]
       16 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K0 ["addText"]
        9 CALL                             R2 2 1
       10 NAMECALL                         R2 R2 K1 ["build"]
       12 CALL                             R2 1 1
       13 RETURN                           R2 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 NOT                              R1 R2
        4 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        6 RETURN                           R0 1

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
        6 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        8 CALL                             R2 3 1
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U2
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K4 ["define"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R7 4
       17 GETTABLEKS                       R6 R7 K5 ["UserMouseInput"]
       19 NAMECALL                         R4 R4 K6 ["setName"]
       21 CALL                             R4 2 1
       22 LOADK                            R6 K7 ["Send a mouse user input to the game."]
       23 NAMECALL                         R4 R4 K8 ["setDescription"]
       25 CALL                             R4 2 1
       26 LOADK                            R6 K9 ["action"]
       27 DUPTABLE                         R7 K13 [{"type", "enum", "description"}]
       28 LOADK                            R8 K14 ["string"]
       29 SETTABLEKS                       R8 R7 K10 ["type"]
       31 NEWTABLE                         R8 0 5
       33 LOADK                            R9 K15 ["moveTo"]
       34 LOADK                            R10 K16 ["click"]
       35 LOADK                            R11 K17 ["rightClick"]
       36 LOADK                            R12 K18 ["scrollUp"]
       37 LOADK                            R13 K19 ["scrollDown"]
       38 SETLIST                          R8 R9 5 [1]
       40 SETTABLEKS                       R8 R7 K11 ["enum"]
       42 LOADK                            R8 K20 ["The mouse action to send to the game."]
       43 SETTABLEKS                       R8 R7 K12 ["description"]
       45 NAMECALL                         R4 R4 K21 ["addArgument"]
       47 CALL                             R4 3 1
       48 LOADK                            R6 K22 ["x"]
       49 DUPTABLE                         R7 K23 [{"type", "description"}]
       50 LOADK                            R8 K24 ["number"]
       51 SETTABLEKS                       R8 R7 K10 ["type"]
       53 LOADK                            R8 K25 ["The x coordinate to move the mouse to. Required if action is moveTo, click, or rightClick."]
       54 SETTABLEKS                       R8 R7 K12 ["description"]
       56 NAMECALL                         R4 R4 K26 ["addOptionalArgument"]
       58 CALL                             R4 3 1
       59 LOADK                            R6 K27 ["y"]
       60 DUPTABLE                         R7 K23 [{"type", "description"}]
       61 LOADK                            R8 K24 ["number"]
       62 SETTABLEKS                       R8 R7 K10 ["type"]
       64 LOADK                            R8 K28 ["The y coordinate to move the mouse to. Required if action is moveTo, click, or rightClick."]
       65 SETTABLEKS                       R8 R7 K12 ["description"]
       67 NAMECALL                         R4 R4 K26 ["addOptionalArgument"]
       69 CALL                             R4 3 1
       70 LOADK                            R6 K29 ["instance_path"]
       71 DUPTABLE                         R7 K23 [{"type", "description"}]
       72 LOADK                            R8 K14 ["string"]
       73 SETTABLEKS                       R8 R7 K10 ["type"]
       75 LOADK                            R8 K30 ["The instance path that the mouse should be moved to. for example: \"LocalPlayer.PlayerGui.Frame\", \"game.Workspace.Folder.Frame\". The path should start with game, LocalPlayer, or Workspace. If instance_path is provided, x and y will be ignored, vice versa."]
       76 SETTABLEKS                       R8 R7 K12 ["description"]
       78 NAMECALL                         R4 R4 K26 ["addOptionalArgument"]
       80 CALL                             R4 3 1
       81 MOVE                             R6 R3
       82 NAMECALL                         R4 R4 K31 ["setHandler"]
       84 CALL                             R4 2 1
       85 NAMECALL                         R4 R4 K32 ["build"]
       87 CALL                             R4 1 1
       88 DUPTABLE                         R5 K36 [{"definition", "getPreExecuteWarning", "displayNameFunction"}]
       89 SETTABLEKS                       R4 R5 K33 ["definition"]
       91 DUPCLOSURE                       R6 K37 [PROTO_2]
       92 CAPTURE                          UPVAL U5
       93 SETTABLEKS                       R6 R5 K34 ["getPreExecuteWarning"]
       95 DUPCLOSURE                       R6 K38 [PROTO_3]
       96 CAPTURE                          UPVAL U6
       97 SETTABLEKS                       R6 R5 K35 ["displayNameFunction"]
       99 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Tools"]
       18 GETTABLEKS                       R3 R4 K9 ["ToolTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Resources"]
       25 GETTABLEKS                       R5 R6 K11 ["Localization"]
       27 GETTABLEKS                       R4 R5 K12 ["Translator"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R1 K13 ["Util"]
       32 GETTABLEKS                       R4 R5 K14 ["ToolBuilder"]
       34 GETTABLEKS                       R6 R1 K13 ["Util"]
       36 GETTABLEKS                       R5 R6 K15 ["ToolResult"]
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R8 R0 K13 ["Util"]
       42 GETTABLEKS                       R7 R8 K16 ["DataModelType"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R9 R0 K13 ["Util"]
       49 GETTABLEKS                       R8 R9 K17 ["TestAutomationUtils"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R10 R0 K18 ["Flags"]
       56 GETTABLEKS                       R9 R10 K19 ["FFlagDisableUserInputConfirmation"]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R9 R2 K20 ["ToolNames"]
       61 DUPCLOSURE                       R10 K21 [PROTO_4]
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R3
       69 RETURN                           R10 1
