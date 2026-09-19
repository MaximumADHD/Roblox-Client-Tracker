PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^%s*(.-)%s*$"]
        4 LOADK                            R4 K4 ["%1"]
        5 CALL                             R1 3 1
        6 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 NAMECALL                         R1 R0 K2 ["GetPivot"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R1 R1 K3 ["Position"]
       10 RETURN                           R1 1
       11 LOADK                            R3 K4 ["BasePart"]
       12 NAMECALL                         R1 R0 K1 ["IsA"]
       14 CALL                             R1 2 1
       15 JUMPIFNOT                        R1 ; [+3]
       16 GETTABLEKS                       R1 R0 K3 ["Position"]
       18 RETURN                           R1 1
       19 GETIMPORT                        R1 K6 [error]
       21 LOADK                            R2 K7 ["%* has no position to aim at - target_path must be a Model or a BasePart"]
       22 GETTABLEKS                       R4 R0 K8 ["ClassName"]
       24 NAMECALL                         R2 R2 K9 ["format"]
       26 CALL                             R2 2 1
       27 LOADN                            R3 0
       28 CALL                             R1 2 0
       29 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+7]
        5 NAMECALL                         R1 R0 K2 ["GetBoundingBox"]
        7 CALL                             R1 1 2
        8 GETTABLEKS                       R4 R2 K4 ["Magnitude"]
       10 DIVK                             R3 R4 K3 [2]
       11 RETURN                           R3 1
       12 LOADK                            R3 K5 ["BasePart"]
       13 NAMECALL                         R1 R0 K1 ["IsA"]
       15 CALL                             R1 2 1
       16 JUMPIFNOT                        R1 ; [+6]
       17 GETTABLEKS                       R2 R0 K6 ["Size"]
       19 GETTABLEKS                       R2 R2 K4 ["Magnitude"]
       21 DIVK                             R1 R2 K3 [2]
       22 RETURN                           R1 1
       23 LOADN                            R1 0
       24 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["tools"]
        4 GETTABLEKS                       R2 R2 K1 ["screenCapture"]
        6 GETTABLEKS                       R2 R2 K2 ["getImageDataBase64Async"]
        8 MOVE                             R3 R0
        9 DUPTABLE                         R4 K5 [{"maxSize", "format"}]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K6 ["getScreenCaptureSize"]
       13 CALL                             R5 0 1
       14 SETTABLEKS                       R5 R4 K3 ["maxSize"]
       16 GETUPVAL                         R5 3
       17 SETTABLEKS                       R5 R4 K4 ["format"]
       19 CALL                             R2 2 -1
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["tools"]
        3 GETTABLEKS                       R1 R1 K1 ["screenCapture"]
        5 GETTABLEKS                       R1 R1 K2 ["captureScreenshot"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 1
        8 NAMECALL                         R0 R0 K1 ["await"]
       10 CALL                             R0 1 2
       11 JUMPIFNOT                        R0 ; [+1]
       12 JUMPIF                           R1 ; [+13]
       13 GETIMPORT                        R2 K3 [error]
       15 LOADK                            R3 K4 ["screen capture failed: %*"]
       16 FASTCALL1                        TOSTRING R1 ; [+3]
       17 MOVE                             R6 R1
       18 GETIMPORT                        R5 K6 [tostring]
       20 CALL                             R5 1 1
       21 NAMECALL                         R3 R3 K7 ["format"]
       23 CALL                             R3 2 1
       24 LOADN                            R4 0
       25 CALL                             R2 2 0
       26 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["CameraType"]
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 2
        6 SETTABLEKS                       R1 R0 K1 ["CFrame"]
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["findInstanceByPath"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+9]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R3 K3 ["Instance not found: %*"]
        9 MOVE                             R5 R0
       10 NAMECALL                         R3 R3 K4 ["format"]
       12 CALL                             R3 2 1
       13 LOADN                            R4 0
       14 CALL                             R2 2 0
       15 GETIMPORT                        R2 K6 [workspace]
       17 GETTABLEKS                       R2 R2 K7 ["CurrentCamera"]
       19 JUMPIF                           R2 ; [+5]
       20 GETIMPORT                        R3 K2 [error]
       22 LOADK                            R4 K8 ["There is no camera to aim - is the experience running?"]
       23 LOADN                            R5 0
       24 CALL                             R3 2 0
       25 LOADK                            R6 K9 ["Model"]
       26 NAMECALL                         R4 R1 K10 ["IsA"]
       28 CALL                             R4 2 1
       29 JUMPIFNOT                        R4 ; [+6]
       30 NAMECALL                         R3 R1 K11 ["GetPivot"]
       32 CALL                             R3 1 1
       33 GETTABLEKS                       R3 R3 K12 ["Position"]
       35 JUMP                             ; [+19]
       36 LOADK                            R6 K13 ["BasePart"]
       37 NAMECALL                         R4 R1 K10 ["IsA"]
       39 CALL                             R4 2 1
       40 JUMPIFNOT                        R4 ; [+3]
       41 GETTABLEKS                       R3 R1 K12 ["Position"]
       43 JUMP                             ; [+11]
       44 GETIMPORT                        R4 K2 [error]
       46 LOADK                            R5 K14 ["%* has no position to aim at - target_path must be a Model or a BasePart"]
       47 GETTABLEKS                       R7 R1 K15 ["ClassName"]
       49 NAMECALL                         R5 R5 K4 ["format"]
       51 CALL                             R5 2 1
       52 LOADN                            R6 0
       53 CALL                             R4 2 0
       54 LOADNIL                          R3
       55 GETTABLEKS                       R4 R2 K16 ["CameraType"]
       57 GETTABLEKS                       R5 R2 K17 ["CFrame"]
       59 GETTABLEKS                       R7 R5 K12 ["Position"]
       61 SUB                              R6 R7 R3
       62 GETTABLEKS                       R8 R6 K18 ["Magnitude"]
       64 LOADK                            R9 K19 [0.1]
       65 JUMPIFNOTLT                      R9 R8 ; [+4]
       67 GETTABLEKS                       R7 R6 K20 ["Unit"]
       69 JUMP                             ; [+3]
       70 LOADK                            R7 K21 [{0, 0.3, 1}]
       71 GETTABLEKS                       R7 R7 K20 ["Unit"]
       73 LOADK                            R13 K9 ["Model"]
       74 NAMECALL                         R11 R1 K10 ["IsA"]
       76 CALL                             R11 2 1
       77 JUMPIFNOT                        R11 ; [+7]
       78 NAMECALL                         R11 R1 K23 ["GetBoundingBox"]
       80 CALL                             R11 1 2
       81 GETTABLEKS                       R13 R12 K18 ["Magnitude"]
       83 DIVK                             R10 R13 K22 [2]
       84 JUMP                             ; [+12]
       85 LOADK                            R13 K13 ["BasePart"]
       86 NAMECALL                         R11 R1 K10 ["IsA"]
       88 CALL                             R11 2 1
       89 JUMPIFNOT                        R11 ; [+6]
       90 GETTABLEKS                       R11 R1 K24 ["Size"]
       92 GETTABLEKS                       R11 R11 K18 ["Magnitude"]
       94 DIVK                             R10 R11 K22 [2]
       95 JUMP                             ; [+1]
       96 LOADN                            R10 0
       97 MULK                             R9 R10 K22 [2]
       98 LOADN                            R10 8
       99 LOADN                            R11 40
      100 FASTCALL                         MATH_CLAMP ; [+2]
      101 GETIMPORT                        R8 K27 [math.clamp]
      103 CALL                             R8 3 1
      104 GETIMPORT                        R9 K30 [Enum.CameraType.Scriptable]
      106 SETTABLEKS                       R9 R2 K16 ["CameraType"]
      108 GETIMPORT                        R9 K32 [CFrame.lookAt]
      110 MUL                              R11 R7 R8
      111 ADD                              R10 R3 R11
      112 MOVE                             R11 R3
      113 CALL                             R9 2 1
      114 SETTABLEKS                       R9 R2 K17 ["CFrame"]
      116 GETIMPORT                        R9 K35 [task.wait]
      118 CALL                             R9 0 0
      119 NEWCLOSURE                       R9 P0
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R4
      122 CAPTURE                          VAL R5
      123 RETURN                           R9 1

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["target_path"]
        2 JUMPIFNOT                        R2 ; [+8]
        3 GETIMPORT                        R3 K3 [string.gsub]
        5 MOVE                             R4 R2
        6 LOADK                            R5 K4 ["^%s*(.-)%s*$"]
        7 LOADK                            R6 K5 ["%1"]
        8 CALL                             R3 3 1
        9 JUMPIFNOTEQKS                    R3 K6 [""] ; [+4]
       11 GETUPVAL                         R3 0
       12 CALL                             R3 0 1
       13 RETURN                           R3 1
       14 GETUPVAL                         R3 1
       15 GETIMPORT                        R4 K3 [string.gsub]
       17 MOVE                             R5 R2
       18 LOADK                            R6 K4 ["^%s*(.-)%s*$"]
       19 LOADK                            R7 K5 ["%1"]
       20 CALL                             R4 3 1
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K8 [pcall]
       24 GETUPVAL                         R5 0
       25 CALL                             R4 1 2
       26 MOVE                             R6 R3
       27 CALL                             R6 0 0
       28 JUMPIF                           R4 ; [+9]
       29 GETIMPORT                        R6 K10 [error]
       31 FASTCALL1                        TOSTRING R5 ; [+3]
       32 MOVE                             R8 R5
       33 GETIMPORT                        R7 K12 [tostring]
       35 CALL                             R7 1 1
       36 LOADN                            R8 0
       37 CALL                             R6 2 0
       38 RETURN                           R5 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["content_delta"] ; [+14]
        4 GETTABLEKS                       R1 R0 K2 ["delta"]
        6 JUMPIFNOT                        R1 ; [+31]
        7 GETTABLEKS                       R2 R1 K0 ["type"]
        9 JUMPIFNOTEQKS                    R2 K3 ["text_delta"] ; [+28]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R4 R1 K4 ["text"]
       14 CONCAT                           R2 R3 R4
       15 SETUPVAL                         R2 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R1 R0 K0 ["type"]
       19 JUMPIFNOTEQKS                    R1 K5 ["message_stop"] ; [+4]
       21 LOADB                            R1 1
       22 SETUPVAL                         R1 1
       23 RETURN                           R0 0
       24 GETTABLEKS                       R1 R0 K0 ["type"]
       26 JUMPIFNOTEQKS                    R1 K6 ["error"] ; [+11]
       28 GETTABLEKS                       R3 R0 K6 ["error"]
       30 ORK                              R2 R3 K7 ["stream error"]
       31 FASTCALL1                        TOSTRING R2 ; [+2]
       32 GETIMPORT                        R1 K9 [tostring]
       34 CALL                             R1 1 1
       35 SETUPVAL                         R1 2
       36 LOADB                            R1 1
       37 SETUPVAL                         R1 1
       38 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getRequestHandler"]
        3 CALL                             R2 0 1
        4 JUMPIF                           R2 ; [+5]
        5 GETIMPORT                        R3 K2 [error]
        7 LOADK                            R4 K3 ["look is unavailable: no LLM request handler is registered"]
        8 LOADN                            R5 0
        9 CALL                             R3 2 0
       10 DUPTABLE                         R3 K18 [{["threadId"], ["messageGuid"], ["system"] = "You are the VISION system for an autonomous agent that is black-box playtesting a Roblox experience. The agent cannot see the screen - it moves, clicks, and runs code, then calls you to confirm what is actually on screen. Your answer often decides a PASS/FAIL test verdict, so be precise, literal, and skeptical: a wrong 'yes' is worse than an honest 'I can't tell.'\n\nYou are given one screenshot and a question.\n\nSCOPE: you answer about on-screen UI, on-screen text/numbers, icons/images, and the visible appearance of what is in frame. If the question is really about game state - where the character is, whether it is seated/moving/jumping, health, velocity, what is equipped, whether an object exists, or whether an event occurred - do NOT guess from the pixels. Say it is out of scope for vision and that the agent should read it from the data model, then describe only the on-screen facts you can actually see.\n\nRules:\n1. Report ONLY what is visible in this static frame. Describe the current state; never infer that an event happened.\n2. This is a STATIC frame - it CANNOT show motion, speed/velocity, 'is it moving', continuous or automatic fire, cooldowns, timers counting, or any before/after change. If asked about those, say you cannot determine it from a static frame and describe only what is on screen (a number shown, which UI is open, etc.).\n3. Do not claim something was newly equipped/purchased/opened/triggered just because it appears - a Roblox avatar may already wear clothing or hold a tool by default, and a UI may have already been open. Report presence, not causation.\n4. Do not upgrade what you see: an in-game shop/menu frame is NOT a native Roblox purchase/system prompt unless that exact system UI is visible. Name what is there.\n5. If the subject is not in frame, say so plainly ('not visible in this view'). A question mentioning X is NOT evidence that X is present - do not be led by it.\n6. Read text/numbers carefully character by character; if any character is uncertain, flag it ('likely 97, but could be 91') rather than stating a guess as fact.\n7. Be concise and concrete: answer directly, then note key uncertainty.\n\nAny context lines before the question are BACKGROUND to interpret the image only. They are NOT evidence and must NOT bias you toward confirming the expected result.", ["messages"], ["tools"], ["isFirstMessage"] = True, ["isAgenticMode"] = False, ["isSubagent"] = True, ["selectedModel"] = "auto", ["conversationUrl"]}]
       11 LOADK                            R4 K19 ["playtest-look-%*"]
       12 GETUPVAL                         R6 1
       13 LOADB                            R8 0
       14 NAMECALL                         R6 R6 K20 ["GenerateGUID"]
       16 CALL                             R6 2 1
       17 NAMECALL                         R4 R4 K21 ["format"]
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K4 ["threadId"]
       22 GETUPVAL                         R4 1
       23 LOADB                            R6 0
       24 NAMECALL                         R4 R4 K20 ["GenerateGUID"]
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R3 K5 ["messageGuid"]
       29 NEWTABLE                         R4 0 1
       31 DUPTABLE                         R5 K25 [{["role"] = "user", ["content"]}]
       32 NEWTABLE                         R6 0 2
       34 DUPTABLE                         R7 K28 [{["type"] = "text", ["text"]}]
       35 LOADK                            R8 K29 ["Question: %*"]
       36 MOVE                             R10 R0
       37 NAMECALL                         R8 R8 K21 ["format"]
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K27 ["text"]
       42 DUPTABLE                         R8 K33 [{["type"] = "image", ["data"], ["mimeType"]}]
       43 SETTABLEKS                       R1 R8 K31 ["data"]
       45 LOADK                            R9 K34 ["image/%*"]
       46 GETUPVAL                         R11 2
       47 NAMECALL                         R9 R9 K21 ["format"]
       49 CALL                             R9 2 1
       50 SETTABLEKS                       R9 R8 K32 ["mimeType"]
       52 SETLIST                          R6 R7 2 [1]
       54 SETTABLEKS                       R6 R5 K24 ["content"]
       56 SETLIST                          R4 R5 1 [1]
       58 SETTABLEKS                       R4 R3 K8 ["messages"]
       60 NEWTABLE                         R4 0 0
       62 SETTABLEKS                       R4 R3 K9 ["tools"]
       64 GETUPVAL                         R4 3
       65 GETTABLEKS                       R4 R4 K35 ["FStringPlaytestConversationURL"]
       67 SETTABLEKS                       R4 R3 K17 ["conversationUrl"]
       69 LOADK                            R4 K36 [""]
       70 LOADB                            R5 0
       71 LOADNIL                          R6
       72 GETIMPORT                        R7 K38 [pcall]
       74 NEWCLOSURE                       R8 P0
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R3
       77 CAPTURE                          REF R4
       78 CAPTURE                          REF R5
       79 CAPTURE                          REF R6
       80 CALL                             R7 1 2
       81 JUMPIF                           R7 ; [+13]
       82 GETIMPORT                        R9 K2 [error]
       84 LOADK                            R10 K39 ["look failed: %*"]
       85 FASTCALL1                        TOSTRING R8 ; [+3]
       86 MOVE                             R13 R8
       87 GETIMPORT                        R12 K41 [tostring]
       89 CALL                             R12 1 1
       90 NAMECALL                         R10 R10 K21 ["format"]
       92 CALL                             R10 2 1
       93 LOADN                            R11 0
       94 CALL                             R9 2 0
       95 GETIMPORT                        R10 K44 [os.clock]
       97 CALL                             R10 0 1
       98 GETUPVAL                         R12 3
       99 GETTABLEKS                       R12 R12 K46 ["FIntPlaytestLookTimeoutMs"]
      101 DIVK                             R11 R12 K45 [1000]
      102 ADD                              R9 R10 R11
      103 JUMPIF                           R5 ; [+10]
      104 GETIMPORT                        R10 K44 [os.clock]
      106 CALL                             R10 0 1
      107 JUMPIFNOTLT                      R10 R9 ; [+6]
      109 GETIMPORT                        R10 K49 [task.wait]
      111 LOADK                            R11 K50 [0.1]
      112 CALL                             R10 1 0
      113 JUMPBACK                         ; [-11]
      114 JUMPIFNOT                        R6 ; [+9]
      115 GETIMPORT                        R10 K2 [error]
      117 LOADK                            R11 K39 ["look failed: %*"]
      118 MOVE                             R13 R6
      119 NAMECALL                         R11 R11 K21 ["format"]
      121 CALL                             R11 2 1
      122 LOADN                            R12 0
      123 CALL                             R10 2 0
      124 JUMPIF                           R5 ; [+5]
      125 GETIMPORT                        R10 K2 [error]
      127 LOADK                            R11 K51 ["look timed out waiting for the vision model"]
      128 LOADN                            R12 0
      129 CALL                             R10 2 0
      130 MOVE                             R10 R4
      131 GETIMPORT                        R11 K54 [string.gsub]
      133 MOVE                             R12 R10
      134 LOADK                            R13 K55 ["^%s*(.-)%s*$"]
      135 LOADK                            R14 K56 ["%1"]
      136 CALL                             R11 3 1
      137 MOVE                             R4 R11
      138 JUMPIFNOTEQKS                    R4 K36 [""] ; [+6]
      140 GETIMPORT                        R10 K2 [error]
      142 LOADK                            R11 K57 ["look returned an empty answer"]
      143 LOADN                            R12 0
      144 CALL                             R10 2 0
      145 CLOSEUPVALS                      R4
      146 RETURN                           R4 1

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["query"]
        2 FASTCALL1                        TYPE R3 ; [+2]
        3 GETIMPORT                        R2 K2 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+11]
        8 GETTABLEKS                       R2 R0 K0 ["query"]
       10 GETIMPORT                        R3 K5 [string.gsub]
       12 MOVE                             R4 R2
       13 LOADK                            R5 K6 ["^%s*(.-)%s*$"]
       14 LOADK                            R6 K7 ["%1"]
       15 CALL                             R3 3 1
       16 MOVE                             R1 R3
       17 JUMP                             ; [+1]
       18 LOADK                            R1 K8 [""]
       19 JUMPIFNOTEQKS                    R1 K8 [""] ; [+6]
       21 GETIMPORT                        R2 K10 [error]
       23 LOADK                            R3 K11 ["query is required: ask a specific question about what is on screen"]
       24 LOADN                            R4 0
       25 CALL                             R2 2 0
       26 GETUPVAL                         R2 0
       27 CALL                             R2 0 1
       28 GETUPVAL                         R4 1
       29 MOVE                             R5 R1
       30 GETUPVAL                         R6 2
       31 LOADNIL                          R7
       32 MOVE                             R8 R0
       33 CALL                             R6 2 -1
       34 CALL                             R4 -1 1
       35 NAMECALL                         R2 R2 K12 ["addText"]
       37 CALL                             R2 2 1
       38 NAMECALL                         R2 R2 K13 ["build"]
       40 CALL                             R2 1 -1
       41 RETURN                           R2 -1

PROTO_13:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["FStringScreenCaptureFormat"]
        7 JUMPIFEQKS                       R4 K3 [""] ; [+5]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K2 ["FStringScreenCaptureFormat"]
       12 JUMP                             ; [+1]
       13 LOADK                            R3 K4 ["png"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R3
       19 DUPCLOSURE                       R5 K5 [PROTO_7]
       20 CAPTURE                          UPVAL U3
       21 LOADK                            R8 K6 ["PlaytestLookTool_Capture"]
       22 NEWCLOSURE                       R9 P2
       23 CAPTURE                          VAL R4
       24 CAPTURE                          VAL R5
       25 NAMECALL                         R6 R1 K7 ["OnHostInvokeAsync"]
       27 CALL                             R6 3 1
       28 NEWCLOSURE                       R7 P3
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          VAL R3
       32 CAPTURE                          UPVAL U0
       33 NEWCLOSURE                       R8 P4
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          VAL R7
       36 CAPTURE                          VAL R6
       37 GETUPVAL                         R9 7
       38 GETTABLEKS                       R9 R9 K8 ["define"]
       40 CALL                             R9 0 1
       41 GETUPVAL                         R11 8
       42 GETTABLEKS                       R11 R11 K9 ["PlaytestLook"]
       44 NAMECALL                         R9 R9 K10 ["setName"]
       46 CALL                             R9 2 1
       47 GETUPVAL                         R11 9
       48 NAMECALL                         R9 R9 K11 ["setDescription"]
       50 CALL                             R9 2 1
       51 LOADK                            R11 K12 ["query"]
       52 DUPTABLE                         R12 K17 [{["type"] = "string", ["description"] = "A specific, NEUTRAL question about on-screen UI, text or appearance, e.g. 'Which menu is open and what buttons are visible?' or 'What number is shown on the ammo counter?' - not a yes/no that presumes the answer."}]
       53 NAMECALL                         R9 R9 K18 ["addArgument"]
       55 CALL                             R9 3 1
       56 LOADK                            R11 K19 ["target_path"]
       57 DUPTABLE                         R12 K21 [{["type"] = "string", ["description"] = "Optional. Instance path of a 3D object to aim the camera at, e.g. 'Workspace.NPCs.Shopkeeper'. Omit for screen-space GUI."}]
       58 NAMECALL                         R9 R9 K22 ["addOptionalArgument"]
       60 CALL                             R9 3 1
       61 DUPTABLE                         R11 K31 [{["title"] = "Look", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       62 NAMECALL                         R9 R9 K32 ["setAnnotations"]
       64 CALL                             R9 2 1
       65 MOVE                             R11 R8
       66 NAMECALL                         R9 R9 K33 ["setHandler"]
       68 CALL                             R9 2 1
       69 NAMECALL                         R9 R9 K34 ["build"]
       71 CALL                             R9 1 1
       72 DUPTABLE                         R10 K37 [{"definition", "getPreExecuteWarning"}]
       73 SETTABLEKS                       R9 R10 K35 ["definition"]
       75 DUPCLOSURE                       R11 K38 [PROTO_13]
       76 SETTABLEKS                       R11 R10 K36 ["getPreExecuteWarning"]
       78 RETURN                           R10 1

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
       15 GETTABLEKS                       R3 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["AssistantHarness"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Flags"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Parent"]
       29 GETTABLEKS                       R5 R5 K13 ["ModelContextProtocol"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Parent"]
       36 GETTABLEKS                       R6 R6 K14 ["Promise"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K9 [require]
       41 GETTABLEKS                       R7 R0 K15 ["Subagents"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K9 [require]
       46 GETTABLEKS                       R8 R0 K16 ["Util"]
       48 GETTABLEKS                       R8 R8 K17 ["TestAutomationUtils"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K9 [require]
       53 GETTABLEKS                       R9 R0 K18 ["Tools"]
       55 GETTABLEKS                       R9 R9 K19 ["ToolTypes"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K9 [require]
       60 GETTABLEKS                       R10 R0 K16 ["Util"]
       62 GETTABLEKS                       R10 R10 K20 ["ToolUtils"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K9 [require]
       67 GETTABLEKS                       R11 R0 K21 ["Types"]
       69 CALL                             R10 1 1
       70 GETTABLEKS                       R11 R4 K16 ["Util"]
       72 GETTABLEKS                       R11 R11 K22 ["ToolBuilder"]
       74 GETTABLEKS                       R12 R4 K16 ["Util"]
       76 GETTABLEKS                       R12 R12 K23 ["ToolResult"]
       78 GETTABLEKS                       R13 R8 K24 ["ToolNames"]
       80 GETTABLEKS                       R14 R13 K25 ["replaceTokens"]
       82 LOADK                            R15 K26 ["Read the game's on-screen UI and visual content. This is a NARROW tool - it is only reliable for three things: (a) GUI actually rendered on screen (HUD, menus, dialogs, prompts, buttons); (b) text, numbers and labels shown on screen (ammo, cash, score, item names); (c) icons/images and the visible appearance of one object you aim at with target_path (colour, texture, open/closed, lit, damaged).\nFor ANYTHING else the data model is exact and look is not - do not use look for character state (position, seating, health, velocity, what is equipped), movement or jumping, whether an object exists or where it is, any instance property, or whether an event happened. Read those with {ToolNames.ExecuteLuau} / {ToolNames.InspectInstance} / {ToolNames.GameTree}. A look asked outside (a)-(c) will usually be refused or wrong, and it still costs you a turn.\nSTATIC FRAME: look returns one still image - the current view, or one aimed shot if you pass target_path. It cannot show motion, speed, jumping, auto-fire, cooldowns, timers, or that something happened.\nCOSTS A TURN and the budget is limited: one look per thing you check, and treat the answer as your observation for that check. NEVER repeat a query you already asked - if a look did not answer it, change your action or read the data model; looking again returns the same thing.\nAsk what IS on screen ('Which menu is open and what buttons are visible?'), never a leading yes/no. Pass target_path to aim at a 3D object - you need NOT walk to it. Omit it for HUD/menus."]
       83 CALL                             R14 1 1
       84 DUPCLOSURE                       R15 K27 [PROTO_0]
       85 DUPCLOSURE                       R16 K28 [PROTO_1]
       86 DUPCLOSURE                       R17 K29 [PROTO_2]
       87 DUPCLOSURE                       R18 K30 [PROTO_14]
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R14
       98 RETURN                           R18 1
