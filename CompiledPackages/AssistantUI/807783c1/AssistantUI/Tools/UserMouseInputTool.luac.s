PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+15]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["getDataModelType"]
        6 CALL                             R2 0 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["Types"]
       10 GETTABLEKS                       R3 R3 K2 ["Client"]
       12 JUMPIFEQ                         R2 R3 ; [+5]
       14 GETIMPORT                        R2 K4 [error]
       16 LOADK                            R3 K5 ["This tool is only available in play mode with client datamodel focused."]
       17 CALL                             R2 1 0
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K6 ["mouseInput"]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 0
       23 LOADK                            R2 K7 ["Success"]
       24 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+4]
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R3 R1 K0 ["targetDataModel"]
        6 JUMPIF                           R3 ; [+1]
        7 LOADNIL                          R3
        8 GETUPVAL                         R4 1
        9 MOVE                             R5 R3
       10 MOVE                             R6 R0
       11 CALL                             R4 2 1
       12 GETUPVAL                         R5 2
       13 CALL                             R5 0 1
       14 MOVE                             R7 R4
       15 NAMECALL                         R5 R5 K1 ["addText"]
       17 CALL                             R5 2 1
       18 NAMECALL                         R5 R5 K2 ["build"]
       20 CALL                             R5 1 1
       21 RETURN                           R5 1

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
       29 DUPTABLE                         R7 K13 [{"type", "description", "items"}]
       30 LOADK                            R8 K14 ["array"]
       31 SETTABLEKS                       R8 R7 K10 ["type"]
       33 LOADK                            R8 K15 ["Ordered list of mouse actions to perform."]
       34 SETTABLEKS                       R8 R7 K11 ["description"]
       36 DUPTABLE                         R8 K18 [{"type", "properties", "required"}]
       37 LOADK                            R9 K19 ["object"]
       38 SETTABLEKS                       R9 R8 K10 ["type"]
       40 DUPTABLE                         R9 K26 [{"action", "x", "y", "mouse_button", "instance_path", "wait_time_ms"}]
       41 DUPTABLE                         R10 K28 [{"type", "enum", "description"}]
       42 LOADK                            R11 K29 ["string"]
       43 SETTABLEKS                       R11 R10 K10 ["type"]
       45 NEWTABLE                         R11 0 7
       47 LOADK                            R12 K30 ["moveTo"]
       48 LOADK                            R13 K31 ["mouseButtonDown"]
       49 LOADK                            R14 K32 ["mouseButtonUp"]
       50 LOADK                            R15 K33 ["mouseButtonClick"]
       51 LOADK                            R16 K34 ["scrollUp"]
       52 LOADK                            R17 K35 ["scrollDown"]
       53 LOADK                            R18 K36 ["wait"]
       54 SETLIST                          R11 R12 7 [1]
       56 SETTABLEKS                       R11 R10 K27 ["enum"]
       58 LOADK                            R11 K37 ["The mouse action for this step."]
       59 SETTABLEKS                       R11 R10 K11 ["description"]
       61 SETTABLEKS                       R10 R9 K20 ["action"]
       63 DUPTABLE                         R10 K38 [{"type", "description"}]
       64 LOADK                            R11 K39 ["number"]
       65 SETTABLEKS                       R11 R10 K10 ["type"]
       67 LOADK                            R11 K40 ["Screen X coordinate. Omit if instance_path is set or a prior step already established position (reused for scroll, mouse button actions, etc.)."]
       68 SETTABLEKS                       R11 R10 K11 ["description"]
       70 SETTABLEKS                       R10 R9 K21 ["x"]
       72 DUPTABLE                         R10 K38 [{"type", "description"}]
       73 LOADK                            R11 K39 ["number"]
       74 SETTABLEKS                       R11 R10 K10 ["type"]
       76 LOADK                            R11 K41 ["Screen Y coordinate. Omit if instance_path is set or a prior step already established position (reused for scroll, mouse button actions, etc.)."]
       77 SETTABLEKS                       R11 R10 K11 ["description"]
       79 SETTABLEKS                       R10 R9 K22 ["y"]
       81 DUPTABLE                         R10 K28 [{"type", "enum", "description"}]
       82 LOADK                            R11 K29 ["string"]
       83 SETTABLEKS                       R11 R10 K10 ["type"]
       85 NEWTABLE                         R11 0 2
       87 LOADK                            R12 K42 ["left"]
       88 LOADK                            R13 K43 ["right"]
       89 SETLIST                          R11 R12 2 [1]
       91 SETTABLEKS                       R11 R10 K27 ["enum"]
       93 LOADK                            R11 K44 ["Required when action is mouseButtonDown, mouseButtonUp, or mouseButtonClick."]
       94 SETTABLEKS                       R11 R10 K11 ["description"]
       96 SETTABLEKS                       R10 R9 K23 ["mouse_button"]
       98 DUPTABLE                         R10 K38 [{"type", "description"}]
       99 LOADK                            R11 K29 ["string"]
      100 SETTABLEKS                       R11 R10 K10 ["type"]
      102 LOADK                            R11 K45 ["The instance path that the mouse should be moved to. for example: \"LocalPlayer.PlayerGui.Frame\", \"game.Workspace.Folder.Frame\". The path should start with game, LocalPlayer, or Workspace. If instance_path is provided, x and y will be ignored, vice versa."]
      103 SETTABLEKS                       R11 R10 K11 ["description"]
      105 SETTABLEKS                       R10 R9 K24 ["instance_path"]
      107 DUPTABLE                         R10 K38 [{"type", "description"}]
      108 LOADK                            R11 K39 ["number"]
      109 SETTABLEKS                       R11 R10 K10 ["type"]
      111 LOADK                            R11 K46 ["Delay in milliseconds before the next step. Required for wait; range 0 to 10000."]
      112 SETTABLEKS                       R11 R10 K11 ["description"]
      114 SETTABLEKS                       R10 R9 K25 ["wait_time_ms"]
      116 SETTABLEKS                       R9 R8 K16 ["properties"]
      118 NEWTABLE                         R9 0 1
      120 LOADK                            R10 K20 ["action"]
      121 SETLIST                          R9 R10 1 [1]
      123 SETTABLEKS                       R9 R8 K17 ["required"]
      125 SETTABLEKS                       R8 R7 K12 ["items"]
      127 NAMECALL                         R4 R4 K47 ["addArgument"]
      129 CALL                             R4 3 1
      130 DUPTABLE                         R6 K53 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
      131 LOADK                            R7 K54 ["User Mouse Input"]
      132 SETTABLEKS                       R7 R6 K48 ["title"]
      134 LOADB                            R7 0
      135 SETTABLEKS                       R7 R6 K49 ["readOnlyHint"]
      137 LOADB                            R7 0
      138 SETTABLEKS                       R7 R6 K50 ["destructiveHint"]
      140 LOADB                            R7 0
      141 SETTABLEKS                       R7 R6 K51 ["idempotentHint"]
      143 LOADB                            R7 0
      144 SETTABLEKS                       R7 R6 K52 ["openWorldHint"]
      146 NAMECALL                         R4 R4 K55 ["setAnnotations"]
      148 CALL                             R4 2 1
      149 MOVE                             R6 R3
      150 NAMECALL                         R4 R4 K56 ["setHandler"]
      152 CALL                             R4 2 1
      153 NAMECALL                         R4 R4 K57 ["build"]
      155 CALL                             R4 1 1
      156 DUPTABLE                         R5 K62 [{"availableDataModelTypes", "definition", "getPreExecuteWarning", "displayNameFunction"}]
      157 GETUPVAL                         R7 0
      158 CALL                             R7 0 1
      159 JUMPIFNOT                        R7 ; [+10]
      160 NEWTABLE                         R6 0 1
      162 GETUPVAL                         R7 1
      163 GETTABLEKS                       R7 R7 K63 ["Types"]
      165 GETTABLEKS                       R7 R7 K64 ["Client"]
      167 SETLIST                          R6 R7 1 [1]
      169 JUMPIF                           R6 ; [+1]
      170 LOADNIL                          R6
      171 SETTABLEKS                       R6 R5 K58 ["availableDataModelTypes"]
      173 SETTABLEKS                       R4 R5 K59 ["definition"]
      175 DUPCLOSURE                       R6 K65 [PROTO_2]
      176 CAPTURE                          UPVAL U6
      177 SETTABLEKS                       R6 R5 K60 ["getPreExecuteWarning"]
      179 GETUPVAL                         R7 7
      180 CALL                             R7 0 1
      181 JUMPIFNOT                        R7 ; [+2]
      182 LOADNIL                          R6
      183 JUMP                             ; [+2]
      184 DUPCLOSURE                       R6 K66 [PROTO_3]
      185 CAPTURE                          UPVAL U8
      186 SETTABLEKS                       R6 R5 K61 ["displayNameFunction"]
      188 RETURN                           R5 1

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
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R4 K10 ["TestAutomationUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K11 ["Tools"]
       32 GETTABLEKS                       R5 R5 K12 ["ToolTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Resources"]
       39 GETTABLEKS                       R6 R6 K14 ["Localization"]
       41 GETTABLEKS                       R6 R6 K15 ["Translator"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K16 ["Flags"]
       48 GETTABLEKS                       R7 R7 K17 ["FFlagAssistantBackgroundDataModelToolCall"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K16 ["Flags"]
       55 GETTABLEKS                       R8 R8 K18 ["FFlagAssistantSplitToolsAndWidgets"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K16 ["Flags"]
       62 GETTABLEKS                       R9 R9 K19 ["FFlagDisableUserInputConfirmation"]
       64 CALL                             R8 1 1
       65 GETTABLEKS                       R9 R2 K6 ["Util"]
       67 GETTABLEKS                       R9 R9 K20 ["ToolBuilder"]
       69 GETTABLEKS                       R10 R2 K6 ["Util"]
       71 GETTABLEKS                       R10 R10 K21 ["ToolResult"]
       73 GETTABLEKS                       R11 R4 K22 ["ToolNames"]
       75 DUPCLOSURE                       R12 K23 [PROTO_4]
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R5
       85 RETURN                           R12 1
