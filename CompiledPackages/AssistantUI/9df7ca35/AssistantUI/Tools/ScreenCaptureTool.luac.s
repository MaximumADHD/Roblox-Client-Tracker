PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["camera_position"]
        2 JUMPIF                           R1 ; [+4]
        3 GETTABLEKS                       R1 R0 K1 ["look_at_position"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R1 R0 K0 ["camera_position"]
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETTABLEKS                       R1 R0 K1 ["look_at_position"]
       12 JUMPIF                           R1 ; [+5]
       13 GETIMPORT                        R1 K3 [error]
       15 LOADK                            R2 K4 ["camera_position and look_at_position must be provided together"]
       16 LOADN                            R3 0
       17 CALL                             R1 2 0
       18 GETTABLEKS                       R2 R0 K0 ["camera_position"]
       20 FASTCALL1                        TYPE R2 ; [+2]
       21 GETIMPORT                        R1 K6 [type]
       23 CALL                             R1 1 1
       24 JUMPIFNOTEQKS                    R1 K7 ["table"] ; [+19]
       26 GETTABLEKS                       R2 R0 K1 ["look_at_position"]
       28 FASTCALL1                        TYPE R2 ; [+2]
       29 GETIMPORT                        R1 K6 [type]
       31 CALL                             R1 1 1
       32 JUMPIFNOTEQKS                    R1 K7 ["table"] ; [+11]
       34 GETTABLEKS                       R2 R0 K0 ["camera_position"]
       36 LENGTH                           R1 R2
       37 JUMPIFNOTEQKN                    R1 K8 [3] ; [+6]
       39 GETTABLEKS                       R2 R0 K1 ["look_at_position"]
       41 LENGTH                           R1 R2
       42 JUMPIFEQKN                       R1 K8 [3] ; [+6]
       44 GETIMPORT                        R1 K3 [error]
       46 LOADK                            R2 K9 ["camera_position and look_at_position must be 3-element arrays"]
       47 LOADN                            R3 0
       48 CALL                             R1 2 0
       49 LOADN                            R3 1
       50 LOADN                            R1 3
       51 LOADN                            R2 1
       52 FORNPREP                         R1
       53 GETTABLEKS                       R6 R0 K0 ["camera_position"]
       55 GETTABLE                         R5 R6 R3
       56 FASTCALL1                        TYPE R5 ; [+2]
       57 GETIMPORT                        R4 K6 [type]
       59 CALL                             R4 1 1
       60 JUMPIFNOTEQKS                    R4 K10 ["number"] ; [+10]
       62 GETTABLEKS                       R6 R0 K1 ["look_at_position"]
       64 GETTABLE                         R5 R6 R3
       65 FASTCALL1                        TYPE R5 ; [+2]
       66 GETIMPORT                        R4 K6 [type]
       68 CALL                             R4 1 1
       69 JUMPIFEQKS                       R4 K10 ["number"] ; [+6]
       71 GETIMPORT                        R4 K3 [error]
       73 LOADK                            R5 K11 ["camera_position and look_at_position must be numbers"]
       74 LOADN                            R6 0
       75 CALL                             R4 2 0
       76 FORNLOOP                         R1
       77 GETTABLEKS                       R3 R0 K0 ["camera_position"]
       79 GETTABLEN                        R2 R3 1
       80 GETTABLEKS                       R4 R0 K0 ["camera_position"]
       82 GETTABLEN                        R3 R4 2
       83 GETTABLEKS                       R5 R0 K0 ["camera_position"]
       85 GETTABLEN                        R4 R5 3
       86 FASTCALL                         VECTOR ; [+2]
       87 GETIMPORT                        R1 K14 [Vector3.new]
       89 CALL                             R1 3 1
       90 GETTABLEKS                       R4 R0 K1 ["look_at_position"]
       92 GETTABLEN                        R3 R4 1
       93 GETTABLEKS                       R5 R0 K1 ["look_at_position"]
       95 GETTABLEN                        R4 R5 2
       96 GETTABLEKS                       R6 R0 K1 ["look_at_position"]
       98 GETTABLEN                        R5 R6 3
       99 FASTCALL                         VECTOR ; [+2]
      100 GETIMPORT                        R2 K14 [Vector3.new]
      102 CALL                             R2 3 1
      103 GETIMPORT                        R3 K16 [workspace]
      105 LOADK                            R5 K17 ["Camera"]
      106 NAMECALL                         R3 R3 K18 ["FindFirstChild"]
      108 CALL                             R3 2 1
      109 SETUPVAL                         R3 0
      110 GETUPVAL                         R3 0
      111 JUMPIF                           R3 ; [+5]
      112 GETIMPORT                        R3 K3 [error]
      114 LOADK                            R4 K19 ["Workspace.Camera not found"]
      115 LOADN                            R5 0
      116 CALL                             R3 2 0
      117 GETUPVAL                         R3 0
      118 GETTABLEKS                       R3 R3 K20 ["CameraType"]
      120 SETUPVAL                         R3 1
      121 GETUPVAL                         R3 0
      122 GETTABLEKS                       R3 R3 K21 ["CFrame"]
      124 SETUPVAL                         R3 2
      125 GETUPVAL                         R3 0
      126 GETIMPORT                        R4 K24 [Enum.CameraType.Scriptable]
      128 SETTABLEKS                       R4 R3 K20 ["CameraType"]
      130 GETUPVAL                         R3 0
      131 GETIMPORT                        R4 K26 [CFrame.lookAt]
      133 MOVE                             R5 R1
      134 MOVE                             R6 R2
      135 CALL                             R4 2 1
      136 SETTABLEKS                       R4 R3 K21 ["CFrame"]
      138 GETIMPORT                        R3 K29 [task.wait]
      140 CALL                             R3 0 0
      141 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R1 R0 K0 ["CameraType"]
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R1 2
        9 SETTABLEKS                       R1 R0 K1 ["CFrame"]
       11 LOADNIL                          R0
       12 SETUPVAL                         R0 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["tools"]
        3 GETTABLEKS                       R1 R1 K1 ["screenCapture"]
        5 GETTABLEKS                       R1 R1 K2 ["getImageDataBase64Async"]
        7 MOVE                             R2 R0
        8 DUPTABLE                         R3 K5 [{"maxSize", "format"}]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K6 ["getScreenCaptureSize"]
       12 CALL                             R4 0 1
       13 SETTABLEKS                       R4 R3 K3 ["maxSize"]
       15 GETUPVAL                         R4 2
       16 SETTABLEKS                       R4 R3 K4 ["format"]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R2 3
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["tools"]
        3 GETTABLEKS                       R1 R1 K1 ["screenCapture"]
        5 GETTABLEKS                       R1 R1 K2 ["captureScreenshot"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagScreenCaptureCamera"]
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETUPVAL                         R1 1
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["new"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CALL                             R1 1 1
       15 DUPCLOSURE                       R3 K2 [PROTO_4]
       16 NAMECALL                         R1 R1 K3 ["catch"]
       18 CALL                             R1 2 1
       19 NAMECALL                         R1 R1 K4 ["await"]
       21 CALL                             R1 1 2
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R3 R3 K0 ["FFlagScreenCaptureCamera"]
       25 JUMPIFNOT                        R3 ; [+13]
       26 GETUPVAL                         R3 6
       27 JUMPIF                           R3 ; [+1]
       28 JUMP                             ; [+10]
       29 GETUPVAL                         R3 6
       30 GETUPVAL                         R4 7
       31 SETTABLEKS                       R4 R3 K5 ["CameraType"]
       33 GETUPVAL                         R3 6
       34 GETUPVAL                         R4 8
       35 SETTABLEKS                       R4 R3 K6 ["CFrame"]
       37 LOADNIL                          R3
       38 SETUPVAL                         R3 6
       39 JUMPIF                           R1 ; [+10]
       40 GETIMPORT                        R3 K8 [error]
       42 LOADK                            R5 K9 ["Screen capture failed: "]
       43 FASTCALL1                        TOSTRING R2 ; [+3]
       44 MOVE                             R7 R2
       45 GETIMPORT                        R6 K11 [tostring]
       47 CALL                             R6 1 1
       48 CONCAT                           R4 R5 R6
       49 CALL                             R3 1 0
       50 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["FOCUSED"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["InvokeAsync"]
        7 CALL                             R1 3 1
        8 LOADK                            R2 K2 ["image/%*"]
        9 GETUPVAL                         R4 2
       10 NAMECALL                         R2 R2 K3 ["format"]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R3 3
       14 CALL                             R3 0 1
       15 MOVE                             R5 R1
       16 MOVE                             R6 R2
       17 NAMECALL                         R3 R3 K4 ["addImage"]
       19 CALL                             R3 3 1
       20 NAMECALL                         R3 R3 K5 ["build"]
       22 CALL                             R3 1 1
       23 RETURN                           R3 1

PROTO_9:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 LOADK                            R4 K3 ["png"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K4 ["FStringScreenCaptureFormat"]
       10 JUMPIFEQKS                       R5 K5 [""] ; [+4]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K4 ["FStringScreenCaptureFormat"]
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 LOADNIL                          R7
       18 NEWCLOSURE                       R8 P0
       19 CAPTURE                          REF R7
       20 CAPTURE                          REF R6
       21 CAPTURE                          REF R5
       22 NEWCLOSURE                       R9 P1
       23 CAPTURE                          REF R7
       24 CAPTURE                          REF R6
       25 CAPTURE                          REF R5
       26 NEWCLOSURE                       R10 P2
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          VAL R8
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          REF R4
       33 CAPTURE                          REF R7
       34 CAPTURE                          REF R6
       35 CAPTURE                          REF R5
       36 GETUPVAL                         R11 3
       37 GETTABLEKS                       R11 R11 K6 ["invoke"]
       39 MOVE                             R12 R2
       40 LOADK                            R13 K7 ["ScreenCaptureTool.CaptureScreen"]
       41 CALL                             R11 2 1
       42 GETUPVAL                         R12 4
       43 GETTABLEKS                       R12 R12 K8 ["new"]
       45 CALL                             R12 0 1
       46 NAMECALL                         R13 R2 K9 ["GetIdentity"]
       48 CALL                             R13 1 1
       49 GETUPVAL                         R14 5
       50 GETTABLEKS                       R14 R14 K10 ["Identity"]
       52 GETTABLEKS                       R14 R14 K11 ["Standalone"]
       54 JUMPIFEQ                         R13 R14 ; [+9]
       56 NEWCLOSURE                       R17 P3
       57 CAPTURE                          VAL R10
       58 NAMECALL                         R15 R11 K12 ["Connect"]
       60 CALL                             R15 2 -1
       61 NAMECALL                         R13 R12 K13 ["Add"]
       63 CALL                             R13 -1 0
       64 NEWCLOSURE                       R15 P4
       65 CAPTURE                          VAL R12
       66 NAMECALL                         R13 R3 K14 ["Once"]
       68 CALL                             R13 2 0
       69 NEWCLOSURE                       R13 P5
       70 CAPTURE                          VAL R11
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          REF R4
       73 CAPTURE                          UPVAL U6
       74 GETUPVAL                         R15 0
       75 GETTABLEKS                       R15 R15 K15 ["FFlagAssistantVideoCaptureTool"]
       77 JUMPIFNOT                        R15 ; [+2]
       78 LOADK                            R14 K16 [" Default to this tool for visual verification. For changes over time, prefer taking a few screenshots at key moments. Use video_capture only if the issue can't be seen in still frames (e.g. animation smoothness, stutter, or flicker) or the user asks for a recording."]
       79 JUMP                             ; [+1]
       80 LOADK                            R14 K5 [""]
       81 LOADNIL                          R15
       82 GETUPVAL                         R16 0
       83 GETTABLEKS                       R16 R16 K17 ["FFlagScreenCaptureCamera"]
       85 JUMPIFNOT                        R16 ; [+54]
       86 GETUPVAL                         R16 7
       87 GETTABLEKS                       R16 R16 K18 ["define"]
       89 CALL                             R16 0 1
       90 GETUPVAL                         R18 8
       91 GETTABLEKS                       R18 R18 K19 ["ScreenCapture"]
       93 NAMECALL                         R16 R16 K20 ["setName"]
       95 CALL                             R16 2 1
       96 LOADK                            R19 K21 ["Capture current edit-time screen, return the image data. If camera_position and look_at_position are provided, the camera will be temporarily set to the camera_position and look at the look_at_position."]
       97 MOVE                             R20 R14
       98 CONCAT                           R18 R19 R20
       99 NAMECALL                         R16 R16 K22 ["setDescription"]
      101 CALL                             R16 2 1
      102 LOADK                            R18 K23 ["capture_id"]
      103 DUPTABLE                         R19 K28 [{["type"] = "string", ["description"] = "Capture identifier such as 'ScreenCapture_1', 'ScreenCapture_2', etc."}]
      104 NAMECALL                         R16 R16 K29 ["addArgument"]
      106 CALL                             R16 3 1
      107 LOADK                            R18 K30 ["camera_position"]
      108 DUPTABLE                         R19 K34 [{["type"] = "array", ["description"] = "The position of the camera to capture the screen from.", ["items"]}]
      109 DUPTABLE                         R20 K37 [{["type"] = "number", ["description"] = "The x, y, z coordinate of the camera position."}]
      110 SETTABLEKS                       R20 R19 K33 ["items"]
      112 NAMECALL                         R16 R16 K38 ["addOptionalArgument"]
      114 CALL                             R16 3 1
      115 LOADK                            R18 K39 ["look_at_position"]
      116 DUPTABLE                         R19 K41 [{["type"] = "array", ["description"] = "The position to look at.", ["items"]}]
      117 DUPTABLE                         R20 K43 [{["type"] = "number", ["description"] = "The x, y, z coordinate of the look at position."}]
      118 SETTABLEKS                       R20 R19 K33 ["items"]
      120 NAMECALL                         R16 R16 K38 ["addOptionalArgument"]
      122 CALL                             R16 3 1
      123 LOADK                            R18 K44 ["Screen Capture"]
      124 NAMECALL                         R16 R16 K45 ["setTitle"]
      126 CALL                             R16 2 1
      127 DUPTABLE                         R18 K53 [{["title"] = "Screen Capture", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
      128 NAMECALL                         R16 R16 K54 ["setAnnotations"]
      130 CALL                             R16 2 1
      131 MOVE                             R18 R13
      132 NAMECALL                         R16 R16 K55 ["setHandler"]
      134 CALL                             R16 2 1
      135 NAMECALL                         R16 R16 K56 ["build"]
      137 CALL                             R16 1 1
      138 MOVE                             R15 R16
      139 JUMP                             ; [+37]
      140 GETUPVAL                         R16 7
      141 GETTABLEKS                       R16 R16 K18 ["define"]
      143 CALL                             R16 0 1
      144 GETUPVAL                         R18 8
      145 GETTABLEKS                       R18 R18 K19 ["ScreenCapture"]
      147 NAMECALL                         R16 R16 K20 ["setName"]
      149 CALL                             R16 2 1
      150 LOADK                            R19 K57 ["Capture current edit-time screen, return the image data."]
      151 MOVE                             R20 R14
      152 CONCAT                           R18 R19 R20
      153 NAMECALL                         R16 R16 K22 ["setDescription"]
      155 CALL                             R16 2 1
      156 LOADK                            R18 K23 ["capture_id"]
      157 DUPTABLE                         R19 K28 [{["type"] = "string", ["description"] = "Capture identifier such as 'ScreenCapture_1', 'ScreenCapture_2', etc."}]
      158 NAMECALL                         R16 R16 K29 ["addArgument"]
      160 CALL                             R16 3 1
      161 LOADK                            R18 K44 ["Screen Capture"]
      162 NAMECALL                         R16 R16 K45 ["setTitle"]
      164 CALL                             R16 2 1
      165 DUPTABLE                         R18 K53 [{["title"] = "Screen Capture", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
      166 NAMECALL                         R16 R16 K54 ["setAnnotations"]
      168 CALL                             R16 2 1
      169 MOVE                             R18 R13
      170 NAMECALL                         R16 R16 K55 ["setHandler"]
      172 CALL                             R16 2 1
      173 NAMECALL                         R16 R16 K56 ["build"]
      175 CALL                             R16 1 1
      176 MOVE                             R15 R16
      177 DUPTABLE                         R16 K60 [{"definition", "getPreExecuteWarning"}]
      178 SETTABLEKS                       R15 R16 K58 ["definition"]
      180 DUPCLOSURE                       R17 K61 [PROTO_9]
      181 SETTABLEKS                       R17 R16 K59 ["getPreExecuteWarning"]
      183 CLOSEUPVALS                      R4
      184 RETURN                           R16 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Bin"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ModelContextProtocol"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Promise"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Flags"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R8 R0 K12 ["Tools"]
       38 GETTABLEKS                       R8 R8 K13 ["ToolTypes"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R9 R0 K14 ["Util"]
       45 GETTABLEKS                       R9 R9 K15 ["ToolUtils"]
       47 CALL                             R8 1 1
       48 GETTABLEKS                       R9 R3 K16 ["Remote"]
       50 GETTABLEKS                       R10 R4 K14 ["Util"]
       52 GETTABLEKS                       R10 R10 K17 ["ToolBuilder"]
       54 GETTABLEKS                       R11 R4 K14 ["Util"]
       56 GETTABLEKS                       R11 R11 K18 ["ToolResult"]
       58 GETTABLEKS                       R12 R7 K19 ["ToolNames"]
       60 DUPCLOSURE                       R13 K20 [PROTO_10]
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R12
       70 RETURN                           R13 1
