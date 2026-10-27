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
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 RETURN                           R2 1

PROTO_9:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantUseNewDMNetworking"]
        4 JUMPIFNOT                        R2 ; [+10]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K1 ["FOCUSED"]
        9 MOVE                             R5 R0
       10 NAMECALL                         R2 R2 K2 ["InvokeAsync"]
       12 CALL                             R2 3 1
       13 MOVE                             R1 R2
       14 JUMP                             ; [+5]
       15 GETUPVAL                         R2 3
       16 LOADNIL                          R3
       17 MOVE                             R4 R0
       18 CALL                             R2 2 1
       19 MOVE                             R1 R2
       20 LOADK                            R2 K3 ["image/%*"]
       21 GETUPVAL                         R4 4
       22 NAMECALL                         R2 R2 K4 ["format"]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 5
       26 CALL                             R3 0 1
       27 MOVE                             R5 R1
       28 MOVE                             R6 R2
       29 NAMECALL                         R3 R3 K5 ["addImage"]
       31 CALL                             R3 3 1
       32 NAMECALL                         R3 R3 K6 ["build"]
       34 CALL                             R3 1 1
       35 RETURN                           R3 1

PROTO_10:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_11:
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
       36 LOADNIL                          R11
       37 LOADNIL                          R12
       38 GETUPVAL                         R13 0
       39 GETTABLEKS                       R13 R13 K6 ["FFlagAssistantUseNewDMNetworking"]
       41 JUMPIFNOT                        R13 ; [+35]
       42 GETUPVAL                         R13 3
       43 GETTABLEKS                       R13 R13 K7 ["invoke"]
       45 MOVE                             R14 R2
       46 LOADK                            R15 K8 ["ScreenCaptureTool.CaptureScreen"]
       47 CALL                             R13 2 1
       48 MOVE                             R12 R13
       49 GETUPVAL                         R13 4
       50 GETTABLEKS                       R13 R13 K9 ["new"]
       52 CALL                             R13 0 1
       53 NAMECALL                         R14 R2 K10 ["GetIdentity"]
       55 CALL                             R14 1 1
       56 GETUPVAL                         R15 5
       57 GETTABLEKS                       R15 R15 K11 ["Identity"]
       59 GETTABLEKS                       R15 R15 K12 ["Standalone"]
       61 JUMPIFEQ                         R14 R15 ; [+9]
       63 NEWCLOSURE                       R18 P3
       64 CAPTURE                          VAL R10
       65 NAMECALL                         R16 R12 K13 ["Connect"]
       67 CALL                             R16 2 -1
       68 NAMECALL                         R14 R13 K14 ["Add"]
       70 CALL                             R14 -1 0
       71 NEWCLOSURE                       R16 P4
       72 CAPTURE                          VAL R13
       73 NAMECALL                         R14 R3 K15 ["Once"]
       75 CALL                             R14 2 0
       76 JUMP                             ; [+9]
       77 GETTABLEKS                       R13 R0 K16 ["networkingOLD"]
       79 LOADK                            R16 K17 ["ScreenCaptureTool_CaptureScreen"]
       80 NEWCLOSURE                       R17 P5
       81 CAPTURE                          VAL R10
       82 NAMECALL                         R14 R13 K18 ["OnHostInvokeAsync"]
       84 CALL                             R14 3 1
       85 MOVE                             R11 R14
       86 NEWCLOSURE                       R13 P6
       87 CAPTURE                          UPVAL U0
       88 CAPTURE                          REF R12
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          REF R11
       91 CAPTURE                          REF R4
       92 CAPTURE                          UPVAL U6
       93 LOADNIL                          R14
       94 GETUPVAL                         R15 0
       95 GETTABLEKS                       R15 R15 K19 ["FFlagScreenCaptureCamera"]
       97 JUMPIFNOT                        R15 ; [+52]
       98 GETUPVAL                         R15 7
       99 GETTABLEKS                       R15 R15 K20 ["define"]
      101 CALL                             R15 0 1
      102 GETUPVAL                         R17 8
      103 GETTABLEKS                       R17 R17 K21 ["ScreenCapture"]
      105 NAMECALL                         R15 R15 K22 ["setName"]
      107 CALL                             R15 2 1
      108 LOADK                            R17 K23 ["Capture current edit-time screen, return the image data. If camera_position and look_at_position are provided, the camera will be temporarily set to the camera_position and look at the look_at_position."]
      109 NAMECALL                         R15 R15 K24 ["setDescription"]
      111 CALL                             R15 2 1
      112 LOADK                            R17 K25 ["capture_id"]
      113 DUPTABLE                         R18 K30 [{["type"] = "string", ["description"] = "Capture identifier such as 'ScreenCapture_1', 'ScreenCapture_2', etc."}]
      114 NAMECALL                         R15 R15 K31 ["addArgument"]
      116 CALL                             R15 3 1
      117 LOADK                            R17 K32 ["camera_position"]
      118 DUPTABLE                         R18 K36 [{["type"] = "array", ["description"] = "The position of the camera to capture the screen from.", ["items"]}]
      119 DUPTABLE                         R19 K39 [{["type"] = "number", ["description"] = "The x, y, z coordinate of the camera position."}]
      120 SETTABLEKS                       R19 R18 K35 ["items"]
      122 NAMECALL                         R15 R15 K40 ["addOptionalArgument"]
      124 CALL                             R15 3 1
      125 LOADK                            R17 K41 ["look_at_position"]
      126 DUPTABLE                         R18 K43 [{["type"] = "array", ["description"] = "The position to look at.", ["items"]}]
      127 DUPTABLE                         R19 K45 [{["type"] = "number", ["description"] = "The x, y, z coordinate of the look at position."}]
      128 SETTABLEKS                       R19 R18 K35 ["items"]
      130 NAMECALL                         R15 R15 K40 ["addOptionalArgument"]
      132 CALL                             R15 3 1
      133 LOADK                            R17 K46 ["Screen Capture"]
      134 NAMECALL                         R15 R15 K47 ["setTitle"]
      136 CALL                             R15 2 1
      137 DUPTABLE                         R17 K55 [{["title"] = "Screen Capture", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
      138 NAMECALL                         R15 R15 K56 ["setAnnotations"]
      140 CALL                             R15 2 1
      141 MOVE                             R17 R13
      142 NAMECALL                         R15 R15 K57 ["setHandler"]
      144 CALL                             R15 2 1
      145 NAMECALL                         R15 R15 K58 ["build"]
      147 CALL                             R15 1 1
      148 MOVE                             R14 R15
      149 JUMP                             ; [+35]
      150 GETUPVAL                         R15 7
      151 GETTABLEKS                       R15 R15 K20 ["define"]
      153 CALL                             R15 0 1
      154 GETUPVAL                         R17 8
      155 GETTABLEKS                       R17 R17 K21 ["ScreenCapture"]
      157 NAMECALL                         R15 R15 K22 ["setName"]
      159 CALL                             R15 2 1
      160 LOADK                            R17 K59 ["Capture current edit-time screen, return the image data."]
      161 NAMECALL                         R15 R15 K24 ["setDescription"]
      163 CALL                             R15 2 1
      164 LOADK                            R17 K25 ["capture_id"]
      165 DUPTABLE                         R18 K30 [{["type"] = "string", ["description"] = "Capture identifier such as 'ScreenCapture_1', 'ScreenCapture_2', etc."}]
      166 NAMECALL                         R15 R15 K31 ["addArgument"]
      168 CALL                             R15 3 1
      169 LOADK                            R17 K46 ["Screen Capture"]
      170 NAMECALL                         R15 R15 K47 ["setTitle"]
      172 CALL                             R15 2 1
      173 DUPTABLE                         R17 K55 [{["title"] = "Screen Capture", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
      174 NAMECALL                         R15 R15 K56 ["setAnnotations"]
      176 CALL                             R15 2 1
      177 MOVE                             R17 R13
      178 NAMECALL                         R15 R15 K57 ["setHandler"]
      180 CALL                             R15 2 1
      181 NAMECALL                         R15 R15 K58 ["build"]
      183 CALL                             R15 1 1
      184 MOVE                             R14 R15
      185 DUPTABLE                         R15 K62 [{"definition", "getPreExecuteWarning"}]
      186 SETTABLEKS                       R14 R15 K60 ["definition"]
      188 DUPCLOSURE                       R16 K63 [PROTO_10]
      189 SETTABLEKS                       R16 R15 K61 ["getPreExecuteWarning"]
      191 CLOSEUPVALS                      R4
      192 RETURN                           R15 1

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
       60 DUPCLOSURE                       R13 K20 [PROTO_11]
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
