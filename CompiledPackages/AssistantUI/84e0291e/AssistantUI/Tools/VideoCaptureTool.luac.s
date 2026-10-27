PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["is_start"]
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantMCPVideoCapture"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["startMCPVideoRecording"]
       10 CALL                             R1 0 0
       11 JUMP                             ; [+4]
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K3 ["startScreenRecording"]
       15 CALL                             R1 0 0
       16 LOADK                            R1 K4 ["Success"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantMCPVideoCapture"]
       21 JUMPIFNOT                        R1 ; [+22]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K5 ["stopMCPVideoRecording"]
       25 CALL                             R1 0 1
       26 JUMPIFNOT                        R1 ; [+12]
       27 GETTABLEKS                       R2 R1 K6 ["artifacts"]
       29 GETTABLEKS                       R2 R2 K7 ["video"]
       31 JUMPIFEQKS                       R2 K8 [""] ; [+7]
       33 GETUPVAL                         R2 2
       34 MOVE                             R4 R1
       35 NAMECALL                         R2 R2 K9 ["JSONEncode"]
       37 CALL                             R2 2 -1
       38 RETURN                           R2 -1
       39 GETIMPORT                        R2 K11 [error]
       41 LOADK                            R3 K12 ["Error, unable to get the file path of the recorded video"]
       42 LOADN                            R4 0
       43 CALL                             R2 2 0
       44 GETUPVAL                         R1 1
       45 GETTABLEKS                       R1 R1 K13 ["stopScreenRecording"]
       47 CALL                             R1 0 1
       48 JUMPIFNOT                        R1 ; [+1]
       49 RETURN                           R1 1
       50 GETIMPORT                        R2 K11 [error]
       52 LOADK                            R3 K12 ["Error, unable to get the file path of the recorded video"]
       53 LOADN                            R4 0
       54 CALL                             R2 2 0
       55 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

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
       14 LOADK                            R7 K4 ["VideoCaptureTool.CaptureVideo"]
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
       47 LOADK                            R8 K14 ["VideoCaptureTool_CaptureVideo"]
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
       65 GETTABLEKS                       R8 R8 K18 ["VideoCapture"]
       67 NAMECALL                         R6 R6 K19 ["setName"]
       69 CALL                             R6 2 1
       70 GETUPVAL                         R9 0
       71 GETTABLEKS                       R9 R9 K20 ["FFlagAssistantMCPVideoCapture"]
       73 JUMPIFNOT                        R9 ; [+2]
       74 LOADK                            R8 K21 ["Start or stop recording a video of the game.\nWhen stopping, returns JSON with recording_id, status (\"completed\" or \"partial\"), artifact paths (video, manifest, frame_times), and known capture warnings. Status \"partial\" means capture ended early (for example the duration limit); it is not evidence that gameplay ended. Media is not inlined—retrieve it from the returned file paths only when needed."]
       75 JUMP                             ; [+1]
       76 LOADK                            R8 K22 ["Start or Stop recording a video of the game."]
       77 NAMECALL                         R6 R6 K23 ["setDescription"]
       79 CALL                             R6 2 1
       80 LOADK                            R8 K24 ["is_start"]
       81 DUPTABLE                         R9 K28 [{["type"] = "boolean", ["description"]}]
       82 GETUPVAL                         R11 0
       83 GETTABLEKS                       R11 R11 K20 ["FFlagAssistantMCPVideoCapture"]
       85 JUMPIFNOT                        R11 ; [+2]
       86 LOADK                            R10 K29 ["true to start recording, false to stop recording and return a compact JSON handoff with recording_id, status, artifact file paths, and capture warnings."]
       87 JUMP                             ; [+1]
       88 LOADK                            R10 K30 ["true to start recording, false to stop recording and return the file path of the recorded video."]
       89 SETTABLEKS                       R10 R9 K27 ["description"]
       91 NAMECALL                         R6 R6 K31 ["addArgument"]
       93 CALL                             R6 3 1
       94 LOADK                            R8 K32 ["Start/Stop Video Capture"]
       95 NAMECALL                         R6 R6 K33 ["setTitle"]
       97 CALL                             R6 2 1
       98 DUPTABLE                         R8 K40 [{["title"] = "Start/Stop Video Capture", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       99 NAMECALL                         R6 R6 K41 ["setAnnotations"]
      101 CALL                             R6 2 1
      102 MOVE                             R8 R5
      103 NAMECALL                         R6 R6 K42 ["setHandler"]
      105 CALL                             R6 2 1
      106 NAMECALL                         R6 R6 K43 ["build"]
      108 CALL                             R6 1 1
      109 DUPTABLE                         R7 K46 [{"availableDataModelTypes", "definition"}]
      110 NEWTABLE                         R8 0 1
      112 GETUPVAL                         R9 9
      113 GETTABLEKS                       R9 R9 K47 ["Types"]
      115 GETTABLEKS                       R9 R9 K48 ["Client"]
      117 SETLIST                          R8 R9 1 [1]
      119 SETTABLEKS                       R8 R7 K44 ["availableDataModelTypes"]
      121 SETTABLEKS                       R6 R7 K45 ["definition"]
      123 CLOSEUPVALS                      R3
      124 RETURN                           R7 1

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
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["Bin"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["DMNetworking"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["ModelContextProtocol"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R0 K14 ["Util"]
       34 GETTABLEKS                       R7 R7 K15 ["DataModelType"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K10 [require]
       39 GETTABLEKS                       R8 R0 K16 ["Flags"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K10 [require]
       44 GETTABLEKS                       R9 R0 K14 ["Util"]
       46 GETTABLEKS                       R9 R9 K17 ["NetworkingIdentity"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K10 [require]
       51 GETTABLEKS                       R10 R0 K14 ["Util"]
       53 GETTABLEKS                       R10 R10 K18 ["TestAutomationUtils"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K10 [require]
       58 GETTABLEKS                       R11 R0 K19 ["Tools"]
       60 GETTABLEKS                       R11 R11 K20 ["ToolTypes"]
       62 CALL                             R10 1 1
       63 GETTABLEKS                       R11 R4 K21 ["Remote"]
       65 GETTABLEKS                       R12 R5 K14 ["Util"]
       67 GETTABLEKS                       R12 R12 K22 ["ToolBuilder"]
       69 GETTABLEKS                       R13 R5 K14 ["Util"]
       71 GETTABLEKS                       R13 R13 K23 ["ToolResult"]
       73 GETTABLEKS                       R14 R10 K24 ["ToolNames"]
       75 DUPCLOSURE                       R15 K25 [PROTO_0]
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R9
       78 CAPTURE                          VAL R1
       79 DUPCLOSURE                       R16 K26 [PROTO_5]
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R15
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R13
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R14
       89 CAPTURE                          VAL R6
       90 RETURN                           R16 1
