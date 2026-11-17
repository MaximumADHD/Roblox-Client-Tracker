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
        0 GETTABLEKS                       R1 R0 K0 ["target_path"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETIMPORT                        R2 K3 [string.gsub]
        5 MOVE                             R3 R1
        6 LOADK                            R4 K4 ["^%s*(.-)%s*$"]
        7 LOADK                            R5 K5 ["%1"]
        8 CALL                             R2 3 1
        9 JUMPIFNOTEQKS                    R2 K6 [""] ; [+4]
       11 GETUPVAL                         R2 0
       12 CALL                             R2 0 1
       13 RETURN                           R2 1
       14 GETUPVAL                         R2 1
       15 GETIMPORT                        R3 K3 [string.gsub]
       17 MOVE                             R4 R1
       18 LOADK                            R5 K4 ["^%s*(.-)%s*$"]
       19 LOADK                            R6 K5 ["%1"]
       20 CALL                             R3 3 1
       21 CALL                             R2 1 1
       22 GETUPVAL                         R4 0
       23 FASTPCALL                        pcall 1 ; [+2]
       24 GETIMPORT                        R3 K8 [pcall]
       26 CALL                             R3 1 2
       27 MOVE                             R5 R2
       28 CALL                             R5 0 0
       29 JUMPIF                           R3 ; [+9]
       30 GETIMPORT                        R5 K10 [error]
       32 FASTCALL1                        TOSTRING R4 ; [+3]
       33 MOVE                             R7 R4
       34 GETIMPORT                        R6 K12 [tostring]
       36 CALL                             R6 1 1
       37 LOADN                            R7 0
       38 CALL                             R5 2 0
       39 RETURN                           R4 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_13:
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
       72 NEWCLOSURE                       R8 P0
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R3
       75 CAPTURE                          REF R4
       76 CAPTURE                          REF R5
       77 CAPTURE                          REF R6
       78 FASTPCALL                        pcall 1 ; [+2]
       79 GETIMPORT                        R7 K38 [pcall]
       81 CALL                             R7 1 2
       82 JUMPIF                           R7 ; [+13]
       83 GETIMPORT                        R9 K2 [error]
       85 LOADK                            R10 K39 ["look failed: %*"]
       86 FASTCALL1                        TOSTRING R8 ; [+3]
       87 MOVE                             R13 R8
       88 GETIMPORT                        R12 K41 [tostring]
       90 CALL                             R12 1 1
       91 NAMECALL                         R10 R10 K21 ["format"]
       93 CALL                             R10 2 1
       94 LOADN                            R11 0
       95 CALL                             R9 2 0
       96 GETIMPORT                        R10 K44 [os.clock]
       98 CALL                             R10 0 1
       99 GETUPVAL                         R12 3
      100 GETTABLEKS                       R12 R12 K46 ["FIntPlaytestLookTimeoutMs"]
      102 DIVK                             R11 R12 K45 [1000]
      103 ADD                              R9 R10 R11
      104 JUMPIF                           R5 ; [+10]
      105 GETIMPORT                        R10 K44 [os.clock]
      107 CALL                             R10 0 1
      108 JUMPIFNOTLT                      R10 R9 ; [+6]
      110 GETIMPORT                        R10 K49 [task.wait]
      112 LOADK                            R11 K50 [0.1]
      113 CALL                             R10 1 0
      114 JUMPBACK                         ; [-11]
      115 JUMPIFNOT                        R6 ; [+9]
      116 GETIMPORT                        R10 K2 [error]
      118 LOADK                            R11 K39 ["look failed: %*"]
      119 MOVE                             R13 R6
      120 NAMECALL                         R11 R11 K21 ["format"]
      122 CALL                             R11 2 1
      123 LOADN                            R12 0
      124 CALL                             R10 2 0
      125 JUMPIF                           R5 ; [+5]
      126 GETIMPORT                        R10 K2 [error]
      128 LOADK                            R11 K51 ["look timed out waiting for the vision model"]
      129 LOADN                            R12 0
      130 CALL                             R10 2 0
      131 MOVE                             R10 R4
      132 GETIMPORT                        R11 K54 [string.gsub]
      134 MOVE                             R12 R10
      135 LOADK                            R13 K55 ["^%s*(.-)%s*$"]
      136 LOADK                            R14 K56 ["%1"]
      137 CALL                             R11 3 1
      138 MOVE                             R4 R11
      139 JUMPIFNOTEQKS                    R4 K36 [""] ; [+6]
      141 GETIMPORT                        R10 K2 [error]
      143 LOADK                            R11 K57 ["look returned an empty answer"]
      144 LOADN                            R12 0
      145 CALL                             R10 2 0
      146 CLOSEUPVALS                      R4
      147 RETURN                           R4 1

PROTO_14:
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
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K12 ["FOCUSED"]
       30 MOVE                             R5 R0
       31 NAMECALL                         R2 R2 K13 ["InvokeAsync"]
       33 CALL                             R2 3 1
       34 GETUPVAL                         R3 2
       35 CALL                             R3 0 1
       36 GETUPVAL                         R5 3
       37 MOVE                             R6 R1
       38 MOVE                             R7 R2
       39 CALL                             R5 2 1
       40 NAMECALL                         R3 R3 K14 ["addText"]
       42 CALL                             R3 2 1
       43 NAMECALL                         R3 R3 K15 ["build"]
       45 CALL                             R3 1 -1
       46 RETURN                           R3 -1

PROTO_15:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K3 ["FStringScreenCaptureFormat"]
        9 JUMPIFEQKS                       R5 K4 [""] ; [+5]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["FStringScreenCaptureFormat"]
       14 JUMP                             ; [+1]
       15 LOADK                            R4 K5 ["png"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R4
       21 DUPCLOSURE                       R6 K6 [PROTO_7]
       22 CAPTURE                          UPVAL U3
       23 NEWCLOSURE                       R7 P2
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R6
       26 GETUPVAL                         R8 4
       27 GETTABLEKS                       R8 R8 K7 ["invoke"]
       29 MOVE                             R9 R2
       30 LOADK                            R10 K8 ["PlaytestLookTool.Capture"]
       31 CALL                             R8 2 1
       32 GETUPVAL                         R9 5
       33 GETTABLEKS                       R9 R9 K9 ["new"]
       35 CALL                             R9 0 1
       36 NAMECALL                         R10 R2 K10 ["GetIdentity"]
       38 CALL                             R10 1 1
       39 GETUPVAL                         R11 6
       40 GETTABLEKS                       R11 R11 K11 ["Identity"]
       42 GETTABLEKS                       R11 R11 K12 ["Standalone"]
       44 JUMPIFEQ                         R10 R11 ; [+9]
       46 NEWCLOSURE                       R14 P3
       47 CAPTURE                          VAL R7
       48 NAMECALL                         R12 R8 K13 ["Connect"]
       50 CALL                             R12 2 -1
       51 NAMECALL                         R10 R9 K14 ["Add"]
       53 CALL                             R10 -1 0
       54 NEWCLOSURE                       R12 P4
       55 CAPTURE                          VAL R9
       56 NAMECALL                         R10 R3 K15 ["Once"]
       58 CALL                             R10 2 0
       59 NEWCLOSURE                       R10 P5
       60 CAPTURE                          UPVAL U7
       61 CAPTURE                          UPVAL U8
       62 CAPTURE                          VAL R4
       63 CAPTURE                          UPVAL U0
       64 NEWCLOSURE                       R11 P6
       65 CAPTURE                          VAL R8
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          UPVAL U9
       68 CAPTURE                          VAL R10
       69 GETUPVAL                         R12 10
       70 GETTABLEKS                       R12 R12 K16 ["define"]
       72 CALL                             R12 0 1
       73 GETUPVAL                         R14 11
       74 GETTABLEKS                       R14 R14 K17 ["PlaytestLook"]
       76 NAMECALL                         R12 R12 K18 ["setName"]
       78 CALL                             R12 2 1
       79 GETUPVAL                         R14 12
       80 NAMECALL                         R12 R12 K19 ["setDescription"]
       82 CALL                             R12 2 1
       83 LOADK                            R14 K20 ["query"]
       84 DUPTABLE                         R15 K25 [{["type"] = "string", ["description"] = "A specific, NEUTRAL question about on-screen UI, text or appearance, e.g. 'Which menu is open and what buttons are visible?' or 'What number is shown on the ammo counter?' - not a yes/no that presumes the answer."}]
       85 NAMECALL                         R12 R12 K26 ["addArgument"]
       87 CALL                             R12 3 1
       88 LOADK                            R14 K27 ["target_path"]
       89 DUPTABLE                         R15 K29 [{["type"] = "string", ["description"] = "Optional. Instance path of a 3D object to aim the camera at, e.g. 'Workspace.NPCs.Shopkeeper'. Omit for screen-space GUI."}]
       90 NAMECALL                         R12 R12 K30 ["addOptionalArgument"]
       92 CALL                             R12 3 1
       93 LOADK                            R14 K31 ["Look"]
       94 NAMECALL                         R12 R12 K32 ["setTitle"]
       96 CALL                             R12 2 1
       97 DUPTABLE                         R14 K40 [{["title"] = "Look", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       98 NAMECALL                         R12 R12 K41 ["setAnnotations"]
      100 CALL                             R12 2 1
      101 MOVE                             R14 R11
      102 NAMECALL                         R12 R12 K42 ["setHandler"]
      104 CALL                             R12 2 1
      105 NAMECALL                         R12 R12 K43 ["build"]
      107 CALL                             R12 1 1
      108 DUPTABLE                         R13 K46 [{"definition", "getPreExecuteWarning"}]
      109 SETTABLEKS                       R12 R13 K44 ["definition"]
      111 DUPCLOSURE                       R14 K47 [PROTO_15]
      112 SETTABLEKS                       R14 R13 K45 ["getPreExecuteWarning"]
      114 RETURN                           R13 1

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
       17 GETTABLEKS                       R4 R2 K11 ["AssistantHarness"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["Bin"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["DMNetworking"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R2 K14 ["ModelContextProtocol"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K10 [require]
       37 GETTABLEKS                       R8 R2 K15 ["Promise"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K10 [require]
       42 GETTABLEKS                       R9 R0 K16 ["Flags"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K10 [require]
       47 GETTABLEKS                       R10 R0 K17 ["Subagents"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K10 [require]
       52 GETTABLEKS                       R11 R0 K18 ["Util"]
       54 GETTABLEKS                       R11 R11 K19 ["TestAutomationUtils"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K10 [require]
       59 GETTABLEKS                       R12 R0 K20 ["Tools"]
       61 GETTABLEKS                       R12 R12 K21 ["ToolTypes"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K10 [require]
       66 GETTABLEKS                       R13 R0 K18 ["Util"]
       68 GETTABLEKS                       R13 R13 K22 ["ToolUtils"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K10 [require]
       73 GETTABLEKS                       R14 R0 K23 ["Types"]
       75 CALL                             R13 1 1
       76 GETTABLEKS                       R14 R5 K24 ["Remote"]
       78 GETTABLEKS                       R15 R6 K18 ["Util"]
       80 GETTABLEKS                       R15 R15 K25 ["ToolBuilder"]
       82 GETTABLEKS                       R16 R6 K18 ["Util"]
       84 GETTABLEKS                       R16 R16 K26 ["ToolResult"]
       86 GETTABLEKS                       R17 R11 K27 ["ToolNames"]
       88 GETTABLEKS                       R18 R17 K28 ["replaceTokens"]
       90 LOADK                            R19 K29 ["Read the game's on-screen UI and visual content. This is a NARROW tool - it is only reliable for three things: (a) GUI actually rendered on screen (HUD, menus, dialogs, prompts, buttons); (b) text, numbers and labels shown on screen (ammo, cash, score, item names); (c) icons/images and the visible appearance of one object you aim at with target_path (colour, texture, open/closed, lit, damaged).\nFor ANYTHING else the data model is exact and look is not - do not use look for character state (position, seating, health, velocity, what is equipped), movement or jumping, whether an object exists or where it is, any instance property, or whether an event happened. Read those with {ToolNames.ExecuteLuau} / {ToolNames.InspectInstance} / {ToolNames.GameTree}. A look asked outside (a)-(c) will usually be refused or wrong, and it still costs you a turn.\nSTATIC FRAME: look returns one still image - the current view, or one aimed shot if you pass target_path. It cannot show motion, speed, jumping, auto-fire, cooldowns, timers, or that something happened.\nCOSTS A TURN and the budget is limited: one look per thing you check, and treat the answer as your observation for that check. NEVER repeat a query you already asked - if a look did not answer it, change your action or read the data model; looking again returns the same thing.\nAsk what IS on screen ('Which menu is open and what buttons are visible?'), never a leading yes/no. Pass target_path to aim at a 3D object - you need NOT walk to it. Omit it for HUD/menus."]
       91 CALL                             R18 1 1
       92 DUPCLOSURE                       R19 K30 [PROTO_0]
       93 DUPCLOSURE                       R20 K31 [PROTO_1]
       94 DUPCLOSURE                       R21 K32 [PROTO_2]
       95 DUPCLOSURE                       R22 K33 [PROTO_16]
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R4
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R16
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R17
      108 CAPTURE                          VAL R18
      109 RETURN                           R22 1
