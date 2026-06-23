PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["is_start"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["startScreenRecording"]
        6 CALL                             R2 0 0
        7 LOADK                            R2 K2 ["Success"]
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K3 ["stopScreenRecording"]
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+1]
       14 RETURN                           R2 1
       15 GETIMPORT                        R3 K5 [error]
       17 LOADK                            R4 K6 ["Error, unable to get the file path of the recorded video"]
       18 LOADN                            R5 0
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["VideoCapture"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADK                            R4 K1 ["VideoCaptureTool_CaptureVideo"]
        3 DUPCLOSURE                       R5 K2 [PROTO_0]
        4 CAPTURE                          UPVAL U0
        5 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        7 CALL                             R2 3 1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U2
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K4 ["define"]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R6 4
       17 GETTABLEKS                       R6 R6 K5 ["VideoCapture"]
       19 NAMECALL                         R4 R4 K6 ["setName"]
       21 CALL                             R4 2 1
       22 LOADK                            R6 K7 ["Start or Stop recording a video of the game."]
       23 NAMECALL                         R4 R4 K8 ["setDescription"]
       25 CALL                             R4 2 1
       26 LOADK                            R6 K9 ["is_start"]
       27 DUPTABLE                         R7 K12 [{"type", "description"}]
       28 LOADK                            R8 K13 ["boolean"]
       29 SETTABLEKS                       R8 R7 K10 ["type"]
       31 LOADK                            R8 K14 ["true to start recording, false to stop recording and return the file path of the recorded video."]
       32 SETTABLEKS                       R8 R7 K11 ["description"]
       34 NAMECALL                         R4 R4 K15 ["addArgument"]
       36 CALL                             R4 3 1
       37 DUPTABLE                         R6 K21 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       38 LOADK                            R7 K22 ["Start/Stop Video Capture"]
       39 SETTABLEKS                       R7 R6 K16 ["title"]
       41 LOADB                            R7 0
       42 SETTABLEKS                       R7 R6 K17 ["readOnlyHint"]
       44 LOADB                            R7 0
       45 SETTABLEKS                       R7 R6 K18 ["destructiveHint"]
       47 LOADB                            R7 0
       48 SETTABLEKS                       R7 R6 K19 ["idempotentHint"]
       50 LOADB                            R7 0
       51 SETTABLEKS                       R7 R6 K20 ["openWorldHint"]
       53 NAMECALL                         R4 R4 K23 ["setAnnotations"]
       55 CALL                             R4 2 1
       56 MOVE                             R6 R3
       57 NAMECALL                         R4 R4 K24 ["setHandler"]
       59 CALL                             R4 2 1
       60 NAMECALL                         R4 R4 K25 ["build"]
       62 CALL                             R4 1 1
       63 DUPTABLE                         R5 K29 [{"availableDataModelTypes", "definition", "displayNameFunction"}]
       64 GETUPVAL                         R7 1
       65 CALL                             R7 0 1
       66 JUMPIFNOT                        R7 ; [+10]
       67 NEWTABLE                         R6 0 1
       69 GETUPVAL                         R7 5
       70 GETTABLEKS                       R7 R7 K30 ["Types"]
       72 GETTABLEKS                       R7 R7 K31 ["Client"]
       74 SETLIST                          R6 R7 1 [1]
       76 JUMPIF                           R6 ; [+1]
       77 LOADNIL                          R6
       78 SETTABLEKS                       R6 R5 K26 ["availableDataModelTypes"]
       80 SETTABLEKS                       R4 R5 K27 ["definition"]
       82 GETUPVAL                         R7 6
       83 CALL                             R7 0 1
       84 JUMPIFNOT                        R7 ; [+2]
       85 LOADNIL                          R6
       86 JUMP                             ; [+2]
       87 DUPCLOSURE                       R6 K32 [PROTO_2]
       88 CAPTURE                          UPVAL U7
       89 SETTABLEKS                       R6 R5 K28 ["displayNameFunction"]
       91 RETURN                           R5 1

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
       58 GETTABLEKS                       R8 R2 K6 ["Util"]
       60 GETTABLEKS                       R8 R8 K19 ["ToolBuilder"]
       62 GETTABLEKS                       R9 R2 K6 ["Util"]
       64 GETTABLEKS                       R9 R9 K20 ["ToolResult"]
       66 GETTABLEKS                       R10 R4 K21 ["ToolNames"]
       68 DUPCLOSURE                       R11 K22 [PROTO_3]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R5
       77 RETURN                           R11 1
