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
       21 LOADK                            R3 K7 ["%* has no position to aim at - target_path must be a Model or a BasePart"]
       22 GETTABLEKS                       R5 R0 K8 ["ClassName"]
       24 NAMECALL                         R3 R3 K9 ["format"]
       26 CALL                             R3 2 1
       27 MOVE                             R2 R3
       28 LOADN                            R3 0
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

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
       12 JUMPIF                           R1 ; [+14]
       13 GETIMPORT                        R2 K3 [error]
       15 LOADK                            R4 K4 ["screen capture failed: %*"]
       16 FASTCALL1                        TOSTRING R1 ; [+3]
       17 MOVE                             R7 R1
       18 GETIMPORT                        R6 K6 [tostring]
       20 CALL                             R6 1 1
       21 NAMECALL                         R4 R4 K7 ["format"]
       23 CALL                             R4 2 1
       24 MOVE                             R3 R4
       25 LOADN                            R4 0
       26 CALL                             R2 2 0
       27 RETURN                           R1 1

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
        5 JUMPIF                           R1 ; [+10]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R4 K3 ["Instance not found: %*"]
        9 MOVE                             R6 R0
       10 NAMECALL                         R4 R4 K4 ["format"]
       12 CALL                             R4 2 1
       13 MOVE                             R3 R4
       14 LOADN                            R4 0
       15 CALL                             R2 2 0
       16 GETIMPORT                        R2 K6 [workspace]
       18 GETTABLEKS                       R2 R2 K7 ["CurrentCamera"]
       20 JUMPIF                           R2 ; [+5]
       21 GETIMPORT                        R3 K2 [error]
       23 LOADK                            R4 K8 ["There is no camera to aim - is the experience running?"]
       24 LOADN                            R5 0
       25 CALL                             R3 2 0
       26 LOADK                            R6 K9 ["Model"]
       27 NAMECALL                         R4 R1 K10 ["IsA"]
       29 CALL                             R4 2 1
       30 JUMPIFNOT                        R4 ; [+6]
       31 NAMECALL                         R3 R1 K11 ["GetPivot"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R3 R3 K12 ["Position"]
       36 JUMP                             ; [+20]
       37 LOADK                            R6 K13 ["BasePart"]
       38 NAMECALL                         R4 R1 K10 ["IsA"]
       40 CALL                             R4 2 1
       41 JUMPIFNOT                        R4 ; [+3]
       42 GETTABLEKS                       R3 R1 K12 ["Position"]
       44 JUMP                             ; [+12]
       45 GETIMPORT                        R4 K2 [error]
       47 LOADK                            R6 K14 ["%* has no position to aim at - target_path must be a Model or a BasePart"]
       48 GETTABLEKS                       R8 R1 K15 ["ClassName"]
       50 NAMECALL                         R6 R6 K4 ["format"]
       52 CALL                             R6 2 1
       53 MOVE                             R5 R6
       54 LOADN                            R6 0
       55 CALL                             R4 2 0
       56 LOADNIL                          R3
       57 GETTABLEKS                       R4 R2 K16 ["CameraType"]
       59 GETTABLEKS                       R5 R2 K17 ["CFrame"]
       61 GETTABLEKS                       R7 R5 K12 ["Position"]
       63 SUB                              R6 R7 R3
       64 GETTABLEKS                       R8 R6 K18 ["Magnitude"]
       66 LOADK                            R9 K19 [0.1]
       67 JUMPIFNOTLT                      R9 R8 ; [+4]
       69 GETTABLEKS                       R7 R6 K20 ["Unit"]
       71 JUMP                             ; [+3]
       72 LOADK                            R7 K21 [{0, 0.3, 1}]
       73 GETTABLEKS                       R7 R7 K20 ["Unit"]
       75 LOADK                            R13 K9 ["Model"]
       76 NAMECALL                         R11 R1 K10 ["IsA"]
       78 CALL                             R11 2 1
       79 JUMPIFNOT                        R11 ; [+7]
       80 NAMECALL                         R11 R1 K23 ["GetBoundingBox"]
       82 CALL                             R11 1 2
       83 GETTABLEKS                       R13 R12 K18 ["Magnitude"]
       85 DIVK                             R10 R13 K22 [2]
       86 JUMP                             ; [+12]
       87 LOADK                            R13 K13 ["BasePart"]
       88 NAMECALL                         R11 R1 K10 ["IsA"]
       90 CALL                             R11 2 1
       91 JUMPIFNOT                        R11 ; [+6]
       92 GETTABLEKS                       R11 R1 K24 ["Size"]
       94 GETTABLEKS                       R11 R11 K18 ["Magnitude"]
       96 DIVK                             R10 R11 K22 [2]
       97 JUMP                             ; [+1]
       98 LOADN                            R10 0
       99 MULK                             R9 R10 K22 [2]
      100 LOADN                            R10 8
      101 LOADN                            R11 40
      102 FASTCALL                         MATH_CLAMP ; [+2]
      103 GETIMPORT                        R8 K27 [math.clamp]
      105 CALL                             R8 3 1
      106 GETIMPORT                        R9 K30 [Enum.CameraType.Scriptable]
      108 SETTABLEKS                       R9 R2 K16 ["CameraType"]
      110 GETIMPORT                        R9 K32 [CFrame.lookAt]
      112 MUL                              R11 R7 R8
      113 ADD                              R10 R3 R11
      114 MOVE                             R11 R3
      115 CALL                             R9 2 1
      116 SETTABLEKS                       R9 R2 K17 ["CFrame"]
      118 GETIMPORT                        R9 K35 [task.wait]
      120 CALL                             R9 0 0
      121 NEWCLOSURE                       R9 P0
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R4
      124 CAPTURE                          VAL R5
      125 RETURN                           R9 1

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
       11 LOADK                            R5 K19 ["playtest-look-%*"]
       12 GETUPVAL                         R7 1
       13 LOADB                            R9 0
       14 NAMECALL                         R7 R7 K20 ["GenerateGUID"]
       16 CALL                             R7 2 1
       17 NAMECALL                         R5 R5 K21 ["format"]
       19 CALL                             R5 2 1
       20 MOVE                             R4 R5
       21 SETTABLEKS                       R4 R3 K4 ["threadId"]
       23 GETUPVAL                         R4 1
       24 LOADB                            R6 0
       25 NAMECALL                         R4 R4 K20 ["GenerateGUID"]
       27 CALL                             R4 2 1
       28 SETTABLEKS                       R4 R3 K5 ["messageGuid"]
       30 NEWTABLE                         R4 0 1
       32 DUPTABLE                         R5 K25 [{["role"] = "user", ["content"]}]
       33 NEWTABLE                         R6 0 2
       35 DUPTABLE                         R7 K28 [{["type"] = "text", ["text"]}]
       36 LOADK                            R9 K29 ["Question: %*"]
       37 MOVE                             R11 R0
       38 NAMECALL                         R9 R9 K21 ["format"]
       40 CALL                             R9 2 1
       41 MOVE                             R8 R9
       42 SETTABLEKS                       R8 R7 K27 ["text"]
       44 DUPTABLE                         R8 K33 [{["type"] = "image", ["data"], ["mimeType"]}]
       45 SETTABLEKS                       R1 R8 K31 ["data"]
       47 LOADK                            R10 K34 ["image/%*"]
       48 GETUPVAL                         R12 2
       49 NAMECALL                         R10 R10 K21 ["format"]
       51 CALL                             R10 2 1
       52 MOVE                             R9 R10
       53 SETTABLEKS                       R9 R8 K32 ["mimeType"]
       55 SETLIST                          R6 R7 2 [1]
       57 SETTABLEKS                       R6 R5 K24 ["content"]
       59 SETLIST                          R4 R5 1 [1]
       61 SETTABLEKS                       R4 R3 K8 ["messages"]
       63 NEWTABLE                         R4 0 0
       65 SETTABLEKS                       R4 R3 K9 ["tools"]
       67 GETUPVAL                         R4 3
       68 GETTABLEKS                       R4 R4 K35 ["FStringPlaytestConversationURL"]
       70 SETTABLEKS                       R4 R3 K17 ["conversationUrl"]
       72 LOADK                            R4 K36 [""]
       73 LOADB                            R5 0
       74 LOADNIL                          R6
       75 GETIMPORT                        R7 K38 [pcall]
       77 NEWCLOSURE                       R8 P0
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R3
       80 CAPTURE                          REF R4
       81 CAPTURE                          REF R5
       82 CAPTURE                          REF R6
       83 CALL                             R7 1 2
       84 JUMPIF                           R7 ; [+14]
       85 GETIMPORT                        R9 K2 [error]
       87 LOADK                            R11 K39 ["look failed: %*"]
       88 FASTCALL1                        TOSTRING R8 ; [+3]
       89 MOVE                             R14 R8
       90 GETIMPORT                        R13 K41 [tostring]
       92 CALL                             R13 1 1
       93 NAMECALL                         R11 R11 K21 ["format"]
       95 CALL                             R11 2 1
       96 MOVE                             R10 R11
       97 LOADN                            R11 0
       98 CALL                             R9 2 0
       99 GETIMPORT                        R10 K44 [os.clock]
      101 CALL                             R10 0 1
      102 GETUPVAL                         R12 3
      103 GETTABLEKS                       R12 R12 K46 ["FIntPlaytestLookTimeoutMs"]
      105 DIVK                             R11 R12 K45 [1000]
      106 ADD                              R9 R10 R11
      107 JUMPIF                           R5 ; [+10]
      108 GETIMPORT                        R10 K44 [os.clock]
      110 CALL                             R10 0 1
      111 JUMPIFNOTLT                      R10 R9 ; [+6]
      113 GETIMPORT                        R10 K49 [task.wait]
      115 LOADK                            R11 K50 [0.1]
      116 CALL                             R10 1 0
      117 JUMPBACK                         ; [-11]
      118 JUMPIFNOT                        R6 ; [+10]
      119 GETIMPORT                        R10 K2 [error]
      121 LOADK                            R12 K39 ["look failed: %*"]
      122 MOVE                             R14 R6
      123 NAMECALL                         R12 R12 K21 ["format"]
      125 CALL                             R12 2 1
      126 MOVE                             R11 R12
      127 LOADN                            R12 0
      128 CALL                             R10 2 0
      129 JUMPIF                           R5 ; [+5]
      130 GETIMPORT                        R10 K2 [error]
      132 LOADK                            R11 K51 ["look timed out waiting for the vision model"]
      133 LOADN                            R12 0
      134 CALL                             R10 2 0
      135 MOVE                             R10 R4
      136 GETIMPORT                        R11 K54 [string.gsub]
      138 MOVE                             R12 R10
      139 LOADK                            R13 K55 ["^%s*(.-)%s*$"]
      140 LOADK                            R14 K56 ["%1"]
      141 CALL                             R11 3 1
      142 MOVE                             R4 R11
      143 JUMPIFNOTEQKS                    R4 K36 [""] ; [+6]
      145 GETIMPORT                        R10 K2 [error]
      147 LOADK                            R11 K57 ["look returned an empty answer"]
      148 LOADN                            R12 0
      149 CALL                             R10 2 0
      150 CLOSEUPVALS                      R4
      151 RETURN                           R4 1

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
