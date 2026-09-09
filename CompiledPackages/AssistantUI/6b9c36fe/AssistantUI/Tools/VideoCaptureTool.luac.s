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
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADK                            R4 K1 ["VideoCaptureTool_CaptureVideo"]
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
       16 GETTABLEKS                       R6 R6 K5 ["VideoCapture"]
       18 NAMECALL                         R4 R4 K6 ["setName"]
       20 CALL                             R4 2 1
       21 LOADK                            R6 K7 ["Start or Stop recording a video of the game."]
       22 NAMECALL                         R4 R4 K8 ["setDescription"]
       24 CALL                             R4 2 1
       25 LOADK                            R6 K9 ["is_start"]
       26 DUPTABLE                         R7 K14 [{["type"] = "boolean", ["description"] = "true to start recording, false to stop recording and return the file path of the recorded video."}]
       27 NAMECALL                         R4 R4 K15 ["addArgument"]
       29 CALL                             R4 3 1
       30 DUPTABLE                         R6 K23 [{["title"] = "Start/Stop Video Capture", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       31 NAMECALL                         R4 R4 K24 ["setAnnotations"]
       33 CALL                             R4 2 1
       34 MOVE                             R6 R3
       35 NAMECALL                         R4 R4 K25 ["setHandler"]
       37 CALL                             R4 2 1
       38 NAMECALL                         R4 R4 K26 ["build"]
       40 CALL                             R4 1 1
       41 DUPTABLE                         R5 K29 [{"availableDataModelTypes", "definition"}]
       42 NEWTABLE                         R6 0 1
       44 GETUPVAL                         R7 4
       45 GETTABLEKS                       R7 R7 K30 ["Types"]
       47 GETTABLEKS                       R7 R7 K31 ["Client"]
       49 SETLIST                          R6 R7 1 [1]
       51 SETTABLEKS                       R6 R5 K27 ["availableDataModelTypes"]
       53 SETTABLEKS                       R4 R5 K28 ["definition"]
       55 RETURN                           R5 1

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
       35 GETTABLEKS                       R5 R2 K6 ["Util"]
       37 GETTABLEKS                       R5 R5 K13 ["ToolBuilder"]
       39 GETTABLEKS                       R6 R2 K6 ["Util"]
       41 GETTABLEKS                       R6 R6 K14 ["ToolResult"]
       43 GETTABLEKS                       R7 R4 K15 ["ToolNames"]
       45 DUPCLOSURE                       R8 K16 [PROTO_2]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R6
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R1
       51 RETURN                           R8 1
