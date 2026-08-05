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
       27 DUPTABLE                         R7 K14 [{["type"] = "boolean", ["description"] = "true to start recording, false to stop recording and return the file path of the recorded video."}]
       28 NAMECALL                         R4 R4 K15 ["addArgument"]
       30 CALL                             R4 3 1
       31 DUPTABLE                         R6 K23 [{["title"] = "Start/Stop Video Capture", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       32 NAMECALL                         R4 R4 K24 ["setAnnotations"]
       34 CALL                             R4 2 1
       35 MOVE                             R6 R3
       36 NAMECALL                         R4 R4 K25 ["setHandler"]
       38 CALL                             R4 2 1
       39 NAMECALL                         R4 R4 K26 ["build"]
       41 CALL                             R4 1 1
       42 DUPTABLE                         R5 K30 [{"availableDataModelTypes", "definition", "displayNameFunction"}]
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K31 ["FFlagAssistantBackgroundDataModelToolCall"]
       46 JUMPIFNOT                        R7 ; [+10]
       47 NEWTABLE                         R6 0 1
       49 GETUPVAL                         R7 5
       50 GETTABLEKS                       R7 R7 K32 ["Types"]
       52 GETTABLEKS                       R7 R7 K33 ["Client"]
       54 SETLIST                          R6 R7 1 [1]
       56 JUMPIF                           R6 ; [+1]
       57 LOADNIL                          R6
       58 SETTABLEKS                       R6 R5 K27 ["availableDataModelTypes"]
       60 SETTABLEKS                       R4 R5 K28 ["definition"]
       62 GETUPVAL                         R7 1
       63 GETTABLEKS                       R7 R7 K34 ["FFlagAssistantSplitToolsAndWidgets"]
       65 JUMPIFNOT                        R7 ; [+2]
       66 LOADNIL                          R6
       67 JUMP                             ; [+2]
       68 DUPCLOSURE                       R6 K35 [PROTO_2]
       69 CAPTURE                          UPVAL U6
       70 SETTABLEKS                       R6 R5 K29 ["displayNameFunction"]
       72 RETURN                           R5 1

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
       59 DUPCLOSURE                       R10 K20 [PROTO_3]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R6
       67 RETURN                           R10 1
