PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["is_start"]
        2 JUMPIFNOT                        R2 ; [+15]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantMCPVideoCapture"]
        6 JUMPIFNOT                        R2 ; [+5]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["startMCPVideoRecording"]
       10 CALL                             R2 0 0
       11 JUMP                             ; [+4]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K3 ["startScreenRecording"]
       15 CALL                             R2 0 0
       16 LOADK                            R2 K4 ["Success"]
       17 RETURN                           R2 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K1 ["FFlagAssistantMCPVideoCapture"]
       21 JUMPIFNOT                        R2 ; [+22]
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R2 R2 K5 ["stopMCPVideoRecording"]
       25 CALL                             R2 0 1
       26 JUMPIFNOT                        R2 ; [+12]
       27 GETTABLEKS                       R3 R2 K6 ["artifacts"]
       29 GETTABLEKS                       R3 R3 K7 ["video"]
       31 JUMPIFEQKS                       R3 K8 [""] ; [+7]
       33 GETUPVAL                         R3 2
       34 MOVE                             R5 R2
       35 NAMECALL                         R3 R3 K9 ["JSONEncode"]
       37 CALL                             R3 2 -1
       38 RETURN                           R3 -1
       39 GETIMPORT                        R3 K11 [error]
       41 LOADK                            R4 K12 ["Error, unable to get the file path of the recorded video"]
       42 LOADN                            R5 0
       43 CALL                             R3 2 0
       44 GETUPVAL                         R2 1
       45 GETTABLEKS                       R2 R2 K13 ["stopScreenRecording"]
       47 CALL                             R2 0 1
       48 JUMPIFNOT                        R2 ; [+1]
       49 RETURN                           R2 1
       50 GETIMPORT                        R3 K11 [error]
       52 LOADK                            R4 K12 ["Error, unable to get the file path of the recorded video"]
       53 LOADN                            R5 0
       54 CALL                             R3 2 0
       55 RETURN                           R0 0

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
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        9 CALL                             R2 3 1
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U3
       13 GETUPVAL                         R4 4
       14 GETTABLEKS                       R4 R4 K4 ["define"]
       16 CALL                             R4 0 1
       17 GETUPVAL                         R6 5
       18 GETTABLEKS                       R6 R6 K5 ["VideoCapture"]
       20 NAMECALL                         R4 R4 K6 ["setName"]
       22 CALL                             R4 2 1
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K7 ["FFlagAssistantMCPVideoCapture"]
       26 JUMPIFNOT                        R7 ; [+2]
       27 LOADK                            R6 K8 ["Start or stop recording a video of the game.\nWhen stopping, returns JSON with recording_id, status (\"completed\" or \"partial\"), artifact paths (video, manifest, frame_times), and known capture warnings. Status \"partial\" means capture ended early (for example the duration limit); it is not evidence that gameplay ended. Media is not inlined—retrieve it from the returned file paths only when needed."]
       28 JUMP                             ; [+1]
       29 LOADK                            R6 K9 ["Start or Stop recording a video of the game."]
       30 NAMECALL                         R4 R4 K10 ["setDescription"]
       32 CALL                             R4 2 1
       33 LOADK                            R6 K11 ["is_start"]
       34 DUPTABLE                         R7 K15 [{["type"] = "boolean", ["description"]}]
       35 GETUPVAL                         R9 0
       36 GETTABLEKS                       R9 R9 K7 ["FFlagAssistantMCPVideoCapture"]
       38 JUMPIFNOT                        R9 ; [+2]
       39 LOADK                            R8 K16 ["true to start recording, false to stop recording and return a compact JSON handoff with recording_id, status, artifact file paths, and capture warnings."]
       40 JUMP                             ; [+1]
       41 LOADK                            R8 K17 ["true to start recording, false to stop recording and return the file path of the recorded video."]
       42 SETTABLEKS                       R8 R7 K14 ["description"]
       44 NAMECALL                         R4 R4 K18 ["addArgument"]
       46 CALL                             R4 3 1
       47 DUPTABLE                         R6 K26 [{["title"] = "Start/Stop Video Capture", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       48 NAMECALL                         R4 R4 K27 ["setAnnotations"]
       50 CALL                             R4 2 1
       51 MOVE                             R6 R3
       52 NAMECALL                         R4 R4 K28 ["setHandler"]
       54 CALL                             R4 2 1
       55 NAMECALL                         R4 R4 K29 ["build"]
       57 CALL                             R4 1 1
       58 DUPTABLE                         R5 K32 [{"availableDataModelTypes", "definition"}]
       59 NEWTABLE                         R6 0 1
       61 GETUPVAL                         R7 6
       62 GETTABLEKS                       R7 R7 K33 ["Types"]
       64 GETTABLEKS                       R7 R7 K34 ["Client"]
       66 SETLIST                          R6 R7 1 [1]
       68 SETTABLEKS                       R6 R5 K30 ["availableDataModelTypes"]
       70 SETTABLEKS                       R4 R5 K31 ["definition"]
       72 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["DataModelType"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Flags"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R0 K13 ["Parent"]
       29 GETTABLEKS                       R5 R5 K14 ["ModelContextProtocol"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Util"]
       36 GETTABLEKS                       R6 R6 K15 ["TestAutomationUtils"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R7 R0 K16 ["Tools"]
       43 GETTABLEKS                       R7 R7 K17 ["ToolTypes"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R7 R4 K10 ["Util"]
       48 GETTABLEKS                       R7 R7 K18 ["ToolBuilder"]
       50 GETTABLEKS                       R8 R4 K10 ["Util"]
       52 GETTABLEKS                       R8 R8 K19 ["ToolResult"]
       54 GETTABLEKS                       R9 R6 K20 ["ToolNames"]
       56 DUPCLOSURE                       R10 K21 [PROTO_2]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R2
       64 RETURN                           R10 1
