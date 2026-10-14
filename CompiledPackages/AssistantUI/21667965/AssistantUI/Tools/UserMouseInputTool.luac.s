PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mouseInput"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 LOADK                            R1 K1 ["Success"]
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["mouseInput"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 0
        5 LOADK                            R2 K1 ["Success"]
        6 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["mouseInput"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 0
        5 LOADK                            R2 K1 ["Success"]
        6 RETURN                           R2 1

PROTO_4:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["targetDataModel"]
        3 JUMPIF                           R3 ; [+1]
        4 LOADNIL                          R3
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K1 ["FFlagAssistantUseNewDMNetworking"]
        8 JUMPIFNOT                        R5 ; [+6]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["forTarget"]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R6 R6 K1 ["FFlagAssistantUseNewDMNetworking"]
       20 JUMPIFNOT                        R6 ; [+8]
       21 GETUPVAL                         R6 2
       22 MOVE                             R8 R4
       23 MOVE                             R9 R0
       24 NAMECALL                         R6 R6 K3 ["InvokeAsync"]
       26 CALL                             R6 3 1
       27 MOVE                             R5 R6
       28 JUMP                             ; [+5]
       29 GETUPVAL                         R6 3
       30 MOVE                             R7 R3
       31 MOVE                             R8 R0
       32 CALL                             R6 2 1
       33 MOVE                             R5 R6
       34 GETUPVAL                         R6 4
       35 CALL                             R6 0 1
       36 MOVE                             R8 R5
       37 NAMECALL                         R6 R6 K4 ["addText"]
       39 CALL                             R6 2 1
       40 NAMECALL                         R6 R6 K5 ["build"]
       42 CALL                             R6 1 1
       43 RETURN                           R6 1

PROTO_5:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["FFlagDisableUserInputConfirmation"]
        4 NOT                              R1 R2
        5 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        7 RETURN                           R0 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["destroying"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["FFlagAssistantUseNewDMNetworking"]
        9 JUMPIFNOT                        R5 ; [+35]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["invoke"]
       13 MOVE                             R6 R1
       14 LOADK                            R7 K4 ["UserMouseInputTool.SendUserInput"]
       15 CALL                             R5 2 1
       16 MOVE                             R4 R5
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K5 ["new"]
       20 CALL                             R5 0 1
       21 NAMECALL                         R6 R1 K6 ["GetIdentity"]
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K7 ["Identity"]
       27 GETTABLEKS                       R7 R7 K8 ["Standalone"]
       29 JUMPIFEQ                         R6 R7 ; [+9]
       31 DUPCLOSURE                       R10 K9 [PROTO_1]
       32 CAPTURE                          UPVAL U4
       33 NAMECALL                         R8 R4 K10 ["Connect"]
       35 CALL                             R8 2 -1
       36 NAMECALL                         R6 R5 K11 ["Add"]
       38 CALL                             R6 -1 0
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R5
       41 NAMECALL                         R6 R2 K12 ["Once"]
       43 CALL                             R6 2 0
       44 JUMP                             ; [+9]
       45 GETTABLEKS                       R5 R0 K13 ["networkingOLD"]
       47 LOADK                            R8 K14 ["UserMouseInputTool_SendUserInput"]
       48 DUPCLOSURE                       R9 K15 [PROTO_3]
       49 CAPTURE                          UPVAL U4
       50 NAMECALL                         R6 R5 K16 ["OnHostInvokeAsync"]
       52 CALL                             R6 3 1
       53 MOVE                             R3 R6
       54 NEWCLOSURE                       R5 P3
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          REF R4
       58 CAPTURE                          REF R3
       59 CAPTURE                          UPVAL U6
       60 GETUPVAL                         R6 7
       61 GETTABLEKS                       R6 R6 K17 ["define"]
       63 CALL                             R6 0 1
       64 GETUPVAL                         R8 8
       65 GETTABLEKS                       R8 R8 K18 ["UserMouseInput"]
       67 NAMECALL                         R6 R6 K19 ["setName"]
       69 CALL                             R6 2 1
       70 LOADK                            R8 K20 ["Send one or more mouse actions in order: moveTo, mouseButtonDown, mouseButtonUp, mouseButtonClick, scrollUp, scrollDown, or wait. For mouseButtonDown, mouseButtonUp, and mouseButtonClick, set mouse_button to \"left\" or \"right\". After the first step that sets position (x/y or instance_path), later steps may omit coordinates and reuse that position."]
       71 NAMECALL                         R6 R6 K21 ["setDescription"]
       73 CALL                             R6 2 1
       74 LOADK                            R8 K22 ["actions"]
       75 DUPTABLE                         R9 K28 [{["type"] = "array", ["description"] = "Ordered list of mouse actions to perform.", ["items"]}]
       76 DUPTABLE                         R10 K32 [{["type"] = "object", ["properties"], ["required"]}]
       77 DUPTABLE                         R11 K39 [{"action", "x", "y", "mouse_button", "instance_path", "wait_time_ms"}]
       78 DUPTABLE                         R12 K43 [{["type"] = "string", ["enum"], ["description"] = "The mouse action for this step."}]
       79 NEWTABLE                         R13 0 7
       81 LOADK                            R14 K44 ["moveTo"]
       82 LOADK                            R15 K45 ["mouseButtonDown"]
       83 LOADK                            R16 K46 ["mouseButtonUp"]
       84 LOADK                            R17 K47 ["mouseButtonClick"]
       85 LOADK                            R18 K48 ["scrollUp"]
       86 LOADK                            R19 K49 ["scrollDown"]
       87 LOADK                            R20 K50 ["wait"]
       88 SETLIST                          R13 R14 7 [1]
       90 SETTABLEKS                       R13 R12 K41 ["enum"]
       92 SETTABLEKS                       R12 R11 K33 ["action"]
       94 DUPTABLE                         R12 K53 [{["type"] = "number", ["description"] = "Screen X coordinate. Omit if instance_path is set or a prior step already established position (reused for scroll, mouse button actions, etc.)."}]
       95 SETTABLEKS                       R12 R11 K34 ["x"]
       97 DUPTABLE                         R12 K55 [{["type"] = "number", ["description"] = "Screen Y coordinate. Omit if instance_path is set or a prior step already established position (reused for scroll, mouse button actions, etc.)."}]
       98 SETTABLEKS                       R12 R11 K35 ["y"]
      100 DUPTABLE                         R12 K57 [{["type"] = "string", ["enum"], ["description"] = "Required when action is mouseButtonDown, mouseButtonUp, or mouseButtonClick."}]
      101 NEWTABLE                         R13 0 2
      103 LOADK                            R14 K58 ["left"]
      104 LOADK                            R15 K59 ["right"]
      105 SETLIST                          R13 R14 2 [1]
      107 SETTABLEKS                       R13 R12 K41 ["enum"]
      109 SETTABLEKS                       R12 R11 K36 ["mouse_button"]
      111 DUPTABLE                         R12 K61 [{["type"] = "string", ["description"] = "The instance path that the mouse should be moved to. for example: \"LocalPlayer.PlayerGui.Frame\", \"game.Workspace.Folder.Frame\". The path should start with game, LocalPlayer, or Workspace. If instance_path is provided, x and y will be ignored, vice versa."}]
      112 SETTABLEKS                       R12 R11 K37 ["instance_path"]
      114 DUPTABLE                         R12 K63 [{["type"] = "number", ["description"] = "Delay in milliseconds before the next step. Required for wait; range 0 to 10000."}]
      115 SETTABLEKS                       R12 R11 K38 ["wait_time_ms"]
      117 SETTABLEKS                       R11 R10 K30 ["properties"]
      119 NEWTABLE                         R11 0 1
      121 LOADK                            R12 K33 ["action"]
      122 SETLIST                          R11 R12 1 [1]
      124 SETTABLEKS                       R11 R10 K31 ["required"]
      126 SETTABLEKS                       R10 R9 K27 ["items"]
      128 NAMECALL                         R6 R6 K64 ["addArgument"]
      130 CALL                             R6 3 1
      131 DUPTABLE                         R8 K72 [{["title"] = "User Mouse Input", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      132 NAMECALL                         R6 R6 K73 ["setAnnotations"]
      134 CALL                             R6 2 1
      135 MOVE                             R8 R5
      136 NAMECALL                         R6 R6 K74 ["setHandler"]
      138 CALL                             R6 2 1
      139 NAMECALL                         R6 R6 K75 ["build"]
      141 CALL                             R6 1 1
      142 DUPTABLE                         R7 K79 [{"availableDataModelTypes", "definition", "getPreExecuteWarning"}]
      143 NEWTABLE                         R8 0 1
      145 GETUPVAL                         R9 9
      146 GETTABLEKS                       R9 R9 K80 ["Types"]
      148 GETTABLEKS                       R9 R9 K81 ["Client"]
      150 SETLIST                          R8 R9 1 [1]
      152 SETTABLEKS                       R8 R7 K76 ["availableDataModelTypes"]
      154 SETTABLEKS                       R6 R7 K77 ["definition"]
      156 DUPCLOSURE                       R8 K82 [PROTO_5]
      157 CAPTURE                          UPVAL U0
      158 SETTABLEKS                       R8 R7 K78 ["getPreExecuteWarning"]
      160 CLOSEUPVALS                      R3
      161 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Bin"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["DataModelType"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Flags"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K8 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["ModelContextProtocol"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K6 ["Util"]
       44 GETTABLEKS                       R7 R7 K13 ["NetworkingIdentity"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K6 ["Util"]
       51 GETTABLEKS                       R8 R8 K14 ["TestAutomationUtils"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K15 ["Tools"]
       58 GETTABLEKS                       R9 R9 K16 ["ToolTypes"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R2 K17 ["Remote"]
       63 GETTABLEKS                       R10 R5 K6 ["Util"]
       65 GETTABLEKS                       R10 R10 K18 ["ToolBuilder"]
       67 GETTABLEKS                       R11 R5 K6 ["Util"]
       69 GETTABLEKS                       R11 R11 K19 ["ToolResult"]
       71 GETTABLEKS                       R12 R8 K20 ["ToolNames"]
       73 DUPCLOSURE                       R13 K21 [PROTO_0]
       74 CAPTURE                          VAL R7
       75 DUPCLOSURE                       R14 K22 [PROTO_6]
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R3
       86 RETURN                           R14 1
