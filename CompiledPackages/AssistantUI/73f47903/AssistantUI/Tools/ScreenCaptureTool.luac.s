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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R1
        5 CALL                             R2 1 0
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K0 ["new"]
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          UPVAL U4
       12 CAPTURE                          UPVAL U5
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R4 K1 [PROTO_4]
       15 NAMECALL                         R2 R2 K2 ["catch"]
       17 CALL                             R2 2 1
       18 NAMECALL                         R2 R2 K3 ["await"]
       20 CALL                             R2 1 2
       21 GETUPVAL                         R4 0
       22 CALL                             R4 0 1
       23 JUMPIFNOT                        R4 ; [+13]
       24 GETUPVAL                         R4 6
       25 JUMPIF                           R4 ; [+1]
       26 JUMP                             ; [+10]
       27 GETUPVAL                         R4 6
       28 GETUPVAL                         R5 7
       29 SETTABLEKS                       R5 R4 K4 ["CameraType"]
       31 GETUPVAL                         R4 6
       32 GETUPVAL                         R5 8
       33 SETTABLEKS                       R5 R4 K5 ["CFrame"]
       35 LOADNIL                          R4
       36 SETUPVAL                         R4 6
       37 JUMPIF                           R2 ; [+10]
       38 GETIMPORT                        R4 K7 [error]
       40 LOADK                            R6 K8 ["Screen capture failed: "]
       41 FASTCALL1                        TOSTRING R3 ; [+3]
       42 MOVE                             R8 R3
       43 GETIMPORT                        R7 K10 [tostring]
       45 CALL                             R7 1 1
       46 CONCAT                           R5 R6 R7
       47 CALL                             R4 1 0
       48 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 LOADK                            R3 K0 ["image/%*"]
        5 GETUPVAL                         R5 1
        6 NAMECALL                         R3 R3 K1 ["format"]
        8 CALL                             R3 2 1
        9 MOVE                             R2 R3
       10 GETUPVAL                         R3 2
       11 CALL                             R3 0 1
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 NAMECALL                         R3 R3 K2 ["addImage"]
       16 CALL                             R3 3 1
       17 NAMECALL                         R3 R3 K3 ["build"]
       19 CALL                             R3 1 1
       20 RETURN                           R3 1

PROTO_7:
        0 DUPTABLE                         R1 K4 [{[1], ["imageContents"], ["expanded"] = False}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K5 ["Type"]
        4 SETTABLEKS                       R2 R1 K0 ["type"]
        6 NEWTABLE                         R2 0 0
        8 SETTABLEKS                       R2 R1 K1 ["imageContents"]
       10 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["content"]
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLEKS                       R7 R6 K1 ["type"]
       10 JUMPIFNOTEQKS                    R7 K2 ["image"] ; [+8]
       12 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       14 MOVE                             R8 R1
       15 MOVE                             R9 R6
       16 GETIMPORT                        R7 K5 [table.insert]
       18 CALL                             R7 2 0
       19 FORGLOOP                         R2 2 ; [-12]
       21 SETTABLEKS                       R1 R0 K6 ["imageContents"]
       23 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_10:
        0 DUPTABLE                         R0 K2 [{[1] = True}]
        1 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["ScreenCapture"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 LOADK                            R3 K2 ["png"]
        5 GETUPVAL                         R4 0
        6 CALL                             R4 0 1
        7 JUMPIFEQKS                       R4 K3 [""] ; [+4]
        9 GETUPVAL                         R4 0
       10 CALL                             R4 0 1
       11 MOVE                             R3 R4
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          REF R6
       17 CAPTURE                          REF R5
       18 CAPTURE                          REF R4
       19 NEWCLOSURE                       R8 P1
       20 CAPTURE                          REF R6
       21 CAPTURE                          REF R5
       22 CAPTURE                          REF R4
       23 LOADK                            R11 K4 ["ScreenCaptureTool_CaptureScreen"]
       24 NEWCLOSURE                       R12 P2
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R7
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          REF R3
       31 CAPTURE                          REF R6
       32 CAPTURE                          REF R5
       33 CAPTURE                          REF R4
       34 NAMECALL                         R9 R1 K5 ["OnHostInvokeAsync"]
       36 CALL                             R9 3 1
       37 NEWCLOSURE                       R10 P3
       38 CAPTURE                          VAL R9
       39 CAPTURE                          REF R3
       40 CAPTURE                          UPVAL U4
       41 LOADNIL                          R11
       42 GETUPVAL                         R12 1
       43 CALL                             R12 0 1
       44 JUMPIFNOT                        R12 ; [+48]
       45 GETUPVAL                         R12 5
       46 GETTABLEKS                       R12 R12 K6 ["define"]
       48 CALL                             R12 0 1
       49 GETUPVAL                         R14 6
       50 GETTABLEKS                       R14 R14 K7 ["ScreenCapture"]
       52 NAMECALL                         R12 R12 K8 ["setName"]
       54 CALL                             R12 2 1
       55 LOADK                            R14 K9 ["Capture current edit-time screen, return the image data. If camera_position and look_at_position are provided, the camera will be temporarily set to the camera_position and look at the look_at_position."]
       56 NAMECALL                         R12 R12 K10 ["setDescription"]
       58 CALL                             R12 2 1
       59 LOADK                            R14 K11 ["capture_id"]
       60 DUPTABLE                         R15 K16 [{["type"] = "string", ["description"] = "Capture identifier such as 'ScreenCapture_1', 'ScreenCapture_2', etc."}]
       61 NAMECALL                         R12 R12 K17 ["addArgument"]
       63 CALL                             R12 3 1
       64 LOADK                            R14 K18 ["camera_position"]
       65 DUPTABLE                         R15 K22 [{["type"] = "array", ["description"] = "The position of the camera to capture the screen from.", ["items"]}]
       66 DUPTABLE                         R16 K25 [{["type"] = "number", ["description"] = "The x, y, z coordinate of the camera position."}]
       67 SETTABLEKS                       R16 R15 K21 ["items"]
       69 NAMECALL                         R12 R12 K26 ["addOptionalArgument"]
       71 CALL                             R12 3 1
       72 LOADK                            R14 K27 ["look_at_position"]
       73 DUPTABLE                         R15 K29 [{["type"] = "array", ["description"] = "The position to look at.", ["items"]}]
       74 DUPTABLE                         R16 K31 [{["type"] = "number", ["description"] = "The x, y, z coordinate of the look at position."}]
       75 SETTABLEKS                       R16 R15 K21 ["items"]
       77 NAMECALL                         R12 R12 K26 ["addOptionalArgument"]
       79 CALL                             R12 3 1
       80 DUPTABLE                         R14 K40 [{["title"] = "Screen Capture", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       81 NAMECALL                         R12 R12 K41 ["setAnnotations"]
       83 CALL                             R12 2 1
       84 MOVE                             R14 R10
       85 NAMECALL                         R12 R12 K42 ["setHandler"]
       87 CALL                             R12 2 1
       88 NAMECALL                         R12 R12 K43 ["build"]
       90 CALL                             R12 1 1
       91 MOVE                             R11 R12
       92 JUMP                             ; [+31]
       93 GETUPVAL                         R12 5
       94 GETTABLEKS                       R12 R12 K6 ["define"]
       96 CALL                             R12 0 1
       97 GETUPVAL                         R14 6
       98 GETTABLEKS                       R14 R14 K7 ["ScreenCapture"]
      100 NAMECALL                         R12 R12 K8 ["setName"]
      102 CALL                             R12 2 1
      103 LOADK                            R14 K44 ["Capture current edit-time screen, return the image data."]
      104 NAMECALL                         R12 R12 K10 ["setDescription"]
      106 CALL                             R12 2 1
      107 LOADK                            R14 K11 ["capture_id"]
      108 DUPTABLE                         R15 K16 [{["type"] = "string", ["description"] = "Capture identifier such as 'ScreenCapture_1', 'ScreenCapture_2', etc."}]
      109 NAMECALL                         R12 R12 K17 ["addArgument"]
      111 CALL                             R12 3 1
      112 DUPTABLE                         R14 K40 [{["title"] = "Screen Capture", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
      113 NAMECALL                         R12 R12 K41 ["setAnnotations"]
      115 CALL                             R12 2 1
      116 MOVE                             R14 R10
      117 NAMECALL                         R12 R12 K42 ["setHandler"]
      119 CALL                             R12 2 1
      120 NAMECALL                         R12 R12 K43 ["build"]
      122 CALL                             R12 1 1
      123 MOVE                             R11 R12
      124 DUPTABLE                         R12 K47 [{"transformInitialContent", "getTransformResultFn"}]
      125 DUPCLOSURE                       R13 K48 [PROTO_7]
      126 CAPTURE                          UPVAL U7
      127 SETTABLEKS                       R13 R12 K45 ["transformInitialContent"]
      129 DUPCLOSURE                       R13 K49 [PROTO_9]
      130 SETTABLEKS                       R13 R12 K46 ["getTransformResultFn"]
      132 DUPTABLE                         R13 K55 [{"definition", "getPreExecuteWarning", "displayNameFunction", "streamTransform", "contentWidgets"}]
      133 SETTABLEKS                       R11 R13 K50 ["definition"]
      135 DUPCLOSURE                       R14 K56 [PROTO_10]
      136 SETTABLEKS                       R14 R13 K51 ["getPreExecuteWarning"]
      138 GETUPVAL                         R15 8
      139 CALL                             R15 0 1
      140 JUMPIFNOT                        R15 ; [+2]
      141 LOADNIL                          R14
      142 JUMP                             ; [+2]
      143 DUPCLOSURE                       R14 K57 [PROTO_11]
      144 CAPTURE                          UPVAL U9
      145 SETTABLEKS                       R14 R13 K52 ["displayNameFunction"]
      147 SETTABLEKS                       R12 R13 K53 ["streamTransform"]
      149 GETUPVAL                         R15 8
      150 CALL                             R15 0 1
      151 JUMPIFNOT                        R15 ; [+2]
      152 LOADNIL                          R14
      153 JUMP                             ; [+5]
      154 NEWTABLE                         R14 0 1
      156 GETUPVAL                         R15 7
      157 SETLIST                          R14 R15 1 [1]
      159 SETTABLEKS                       R14 R13 K54 ["contentWidgets"]
      161 CLOSEUPVALS                      R3
      162 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ContentWidgets"]
       13 GETTABLEKS                       R2 R2 K8 ["ImageContentWidget"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["ModelContextProtocol"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["Promise"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Tools"]
       34 GETTABLEKS                       R5 R5 K13 ["ToolTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["Util"]
       41 GETTABLEKS                       R6 R6 K15 ["ToolUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K16 ["Resources"]
       48 GETTABLEKS                       R7 R7 K17 ["Localization"]
       50 GETTABLEKS                       R7 R7 K18 ["Translator"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K19 ["Flags"]
       57 GETTABLEKS                       R8 R8 K20 ["FFlagAssistantSplitToolsAndWidgets"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K19 ["Flags"]
       64 GETTABLEKS                       R9 R9 K21 ["FFlagScreenCaptureCamera"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K19 ["Flags"]
       71 GETTABLEKS                       R10 R10 K22 ["FStringScreenCaptureFormat"]
       73 CALL                             R9 1 1
       74 GETTABLEKS                       R10 R2 K14 ["Util"]
       76 GETTABLEKS                       R10 R10 K23 ["ToolBuilder"]
       78 GETTABLEKS                       R11 R2 K14 ["Util"]
       80 GETTABLEKS                       R11 R11 K24 ["ToolResult"]
       82 GETIMPORT                        R12 K5 [require]
       84 GETTABLEKS                       R13 R0 K25 ["Types"]
       86 CALL                             R12 1 1
       87 GETTABLEKS                       R13 R4 K26 ["ToolNames"]
       89 DUPCLOSURE                       R14 K27 [PROTO_12]
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R8
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R6
      100 RETURN                           R14 1
