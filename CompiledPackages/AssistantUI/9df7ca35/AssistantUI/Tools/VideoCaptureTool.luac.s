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
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R3 R1 K0 ["targetDataModel"]
        3 JUMPIF                           R3 ; [+1]
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["forTarget"]
        8 MOVE                             R5 R3
        9 CALL                             R4 1 1
       10 GETUPVAL                         R5 1
       11 MOVE                             R7 R4
       12 MOVE                             R8 R0
       13 NAMECALL                         R5 R5 K2 ["InvokeAsync"]
       15 CALL                             R5 3 1
       16 GETUPVAL                         R6 2
       17 CALL                             R6 0 1
       18 MOVE                             R8 R5
       19 NAMECALL                         R6 R6 K3 ["addText"]
       21 CALL                             R6 2 1
       22 NAMECALL                         R6 R6 K4 ["build"]
       24 CALL                             R6 1 1
       25 RETURN                           R6 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["destroying"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["invoke"]
        7 MOVE                             R4 R1
        8 LOADK                            R5 K3 ["VideoCaptureTool.CaptureVideo"]
        9 CALL                             R3 2 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["new"]
       13 CALL                             R4 0 1
       14 NAMECALL                         R5 R1 K5 ["GetIdentity"]
       16 CALL                             R5 1 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K6 ["Identity"]
       20 GETTABLEKS                       R6 R6 K7 ["Standalone"]
       22 JUMPIFEQ                         R5 R6 ; [+9]
       24 DUPCLOSURE                       R9 K8 [PROTO_1]
       25 CAPTURE                          UPVAL U3
       26 NAMECALL                         R7 R3 K9 ["Connect"]
       28 CALL                             R7 2 -1
       29 NAMECALL                         R5 R4 K10 ["Add"]
       31 CALL                             R5 -1 0
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R4
       34 NAMECALL                         R5 R2 K11 ["Once"]
       36 CALL                             R5 2 0
       37 NEWCLOSURE                       R5 P2
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          VAL R3
       40 CAPTURE                          UPVAL U5
       41 GETUPVAL                         R6 6
       42 GETTABLEKS                       R6 R6 K12 ["define"]
       44 CALL                             R6 0 1
       45 GETUPVAL                         R8 7
       46 GETTABLEKS                       R8 R8 K13 ["VideoCapture"]
       48 NAMECALL                         R6 R6 K14 ["setName"]
       50 CALL                             R6 2 1
       51 GETUPVAL                         R9 8
       52 GETTABLEKS                       R9 R9 K15 ["FFlagAssistantMCPVideoCapture"]
       54 JUMPIFNOT                        R9 ; [+2]
       55 LOADK                            R8 K16 ["Start or stop recording a video of the game during a playtest.\nPrefer screenshots for most visual checks — they are much cheaper; for changes over time, a few screenshots usually suffice. Use video capture only when the question is about how something looks while it's in motion or changing — smoothness, timing, or brief events that still frames would miss — or when recording a sequence for the user to review. If the question is just whether something changed, use screenshots.\nCall with is_start=true, perform the actions, then call with is_start=false. When stopping, returns JSON with recording_id, status (\"completed\" or \"partial\"), artifact paths (video, manifest, frame_times), and known capture warnings. Status \"partial\" means capture ended early (for example the duration limit); it is not evidence that gameplay ended. Media is not inlined—retrieve it from the returned file paths only when needed."]
       56 JUMP                             ; [+1]
       57 LOADK                            R8 K17 ["Start or Stop recording a video of the game."]
       58 NAMECALL                         R6 R6 K18 ["setDescription"]
       60 CALL                             R6 2 1
       61 LOADK                            R8 K19 ["is_start"]
       62 DUPTABLE                         R9 K23 [{["type"] = "boolean", ["description"]}]
       63 GETUPVAL                         R11 8
       64 GETTABLEKS                       R11 R11 K15 ["FFlagAssistantMCPVideoCapture"]
       66 JUMPIFNOT                        R11 ; [+2]
       67 LOADK                            R10 K24 ["true to start recording, false to stop recording and return a compact JSON handoff with recording_id, status, artifact file paths, and capture warnings."]
       68 JUMP                             ; [+1]
       69 LOADK                            R10 K25 ["true to start recording, false to stop recording and return the file path of the recorded video."]
       70 SETTABLEKS                       R10 R9 K22 ["description"]
       72 NAMECALL                         R6 R6 K26 ["addArgument"]
       74 CALL                             R6 3 1
       75 LOADK                            R8 K27 ["Start/Stop Video Capture"]
       76 NAMECALL                         R6 R6 K28 ["setTitle"]
       78 CALL                             R6 2 1
       79 DUPTABLE                         R8 K35 [{["title"] = "Start/Stop Video Capture", ["readOnlyHint"] = False, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       80 NAMECALL                         R6 R6 K36 ["setAnnotations"]
       82 CALL                             R6 2 1
       83 MOVE                             R8 R5
       84 NAMECALL                         R6 R6 K37 ["setHandler"]
       86 CALL                             R6 2 1
       87 NAMECALL                         R6 R6 K38 ["build"]
       89 CALL                             R6 1 1
       90 DUPTABLE                         R7 K41 [{"availableDataModelTypes", "definition"}]
       91 NEWTABLE                         R8 0 1
       93 GETUPVAL                         R9 9
       94 GETTABLEKS                       R9 R9 K42 ["Types"]
       96 GETTABLEKS                       R9 R9 K43 ["Client"]
       98 SETLIST                          R8 R9 1 [1]
      100 SETTABLEKS                       R8 R7 K39 ["availableDataModelTypes"]
      102 SETTABLEKS                       R6 R7 K40 ["definition"]
      104 RETURN                           R7 1

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
       79 DUPCLOSURE                       R16 K26 [PROTO_4]
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R15
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R14
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R6
       90 RETURN                           R16 1
