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
        1 GETTABLEKS                       R2 R2 K0 ["FFlagScreenCaptureCamera"]
        3 JUMPIFNOT                        R2 ; [+3]
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["new"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CALL                             R2 1 1
       15 DUPCLOSURE                       R4 K2 [PROTO_4]
       16 NAMECALL                         R2 R2 K3 ["catch"]
       18 CALL                             R2 2 1
       19 NAMECALL                         R2 R2 K4 ["await"]
       21 CALL                             R2 1 2
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K0 ["FFlagScreenCaptureCamera"]
       25 JUMPIFNOT                        R4 ; [+13]
       26 GETUPVAL                         R4 6
       27 JUMPIF                           R4 ; [+1]
       28 JUMP                             ; [+10]
       29 GETUPVAL                         R4 6
       30 GETUPVAL                         R5 7
       31 SETTABLEKS                       R5 R4 K5 ["CameraType"]
       33 GETUPVAL                         R4 6
       34 GETUPVAL                         R5 8
       35 SETTABLEKS                       R5 R4 K6 ["CFrame"]
       37 LOADNIL                          R4
       38 SETUPVAL                         R4 6
       39 JUMPIF                           R2 ; [+10]
       40 GETIMPORT                        R4 K8 [error]
       42 LOADK                            R6 K9 ["Screen capture failed: "]
       43 FASTCALL1                        TOSTRING R3 ; [+3]
       44 MOVE                             R8 R3
       45 GETIMPORT                        R7 K11 [tostring]
       47 CALL                             R7 1 1
       48 CONCAT                           R5 R6 R7
       49 CALL                             R4 1 0
       50 RETURN                           R3 1

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
        6 GETTABLEKS                       R4 R4 K3 ["FStringScreenCaptureFormat"]
        8 JUMPIFEQKS                       R4 K4 [""] ; [+4]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K3 ["FStringScreenCaptureFormat"]
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          REF R6
       18 CAPTURE                          REF R5
       19 CAPTURE                          REF R4
       20 NEWCLOSURE                       R8 P1
       21 CAPTURE                          REF R6
       22 CAPTURE                          REF R5
       23 CAPTURE                          REF R4
       24 LOADK                            R11 K5 ["ScreenCaptureTool_CaptureScreen"]
       25 NEWCLOSURE                       R12 P2
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R7
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          REF R3
       32 CAPTURE                          REF R6
       33 CAPTURE                          REF R5
       34 CAPTURE                          REF R4
       35 NAMECALL                         R9 R1 K6 ["OnHostInvokeAsync"]
       37 CALL                             R9 3 1
       38 NEWCLOSURE                       R10 P3
       39 CAPTURE                          VAL R9
       40 CAPTURE                          REF R3
       41 CAPTURE                          UPVAL U3
       42 LOADNIL                          R11
       43 GETUPVAL                         R12 0
       44 GETTABLEKS                       R12 R12 K7 ["FFlagScreenCaptureCamera"]
       46 JUMPIFNOT                        R12 ; [+48]
       47 GETUPVAL                         R12 4
       48 GETTABLEKS                       R12 R12 K8 ["define"]
       50 CALL                             R12 0 1
       51 GETUPVAL                         R14 5
       52 GETTABLEKS                       R14 R14 K9 ["ScreenCapture"]
       54 NAMECALL                         R12 R12 K10 ["setName"]
       56 CALL                             R12 2 1
       57 LOADK                            R14 K11 ["Capture current edit-time screen, return the image data. If camera_position and look_at_position are provided, the camera will be temporarily set to the camera_position and look at the look_at_position."]
       58 NAMECALL                         R12 R12 K12 ["setDescription"]
       60 CALL                             R12 2 1
       61 LOADK                            R14 K13 ["capture_id"]
       62 DUPTABLE                         R15 K18 [{["type"] = "string", ["description"] = "Capture identifier such as 'ScreenCapture_1', 'ScreenCapture_2', etc."}]
       63 NAMECALL                         R12 R12 K19 ["addArgument"]
       65 CALL                             R12 3 1
       66 LOADK                            R14 K20 ["camera_position"]
       67 DUPTABLE                         R15 K24 [{["type"] = "array", ["description"] = "The position of the camera to capture the screen from.", ["items"]}]
       68 DUPTABLE                         R16 K27 [{["type"] = "number", ["description"] = "The x, y, z coordinate of the camera position."}]
       69 SETTABLEKS                       R16 R15 K23 ["items"]
       71 NAMECALL                         R12 R12 K28 ["addOptionalArgument"]
       73 CALL                             R12 3 1
       74 LOADK                            R14 K29 ["look_at_position"]
       75 DUPTABLE                         R15 K31 [{["type"] = "array", ["description"] = "The position to look at.", ["items"]}]
       76 DUPTABLE                         R16 K33 [{["type"] = "number", ["description"] = "The x, y, z coordinate of the look at position."}]
       77 SETTABLEKS                       R16 R15 K23 ["items"]
       79 NAMECALL                         R12 R12 K28 ["addOptionalArgument"]
       81 CALL                             R12 3 1
       82 DUPTABLE                         R14 K42 [{["title"] = "Screen Capture", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       83 NAMECALL                         R12 R12 K43 ["setAnnotations"]
       85 CALL                             R12 2 1
       86 MOVE                             R14 R10
       87 NAMECALL                         R12 R12 K44 ["setHandler"]
       89 CALL                             R12 2 1
       90 NAMECALL                         R12 R12 K45 ["build"]
       92 CALL                             R12 1 1
       93 MOVE                             R11 R12
       94 JUMP                             ; [+31]
       95 GETUPVAL                         R12 4
       96 GETTABLEKS                       R12 R12 K8 ["define"]
       98 CALL                             R12 0 1
       99 GETUPVAL                         R14 5
      100 GETTABLEKS                       R14 R14 K9 ["ScreenCapture"]
      102 NAMECALL                         R12 R12 K10 ["setName"]
      104 CALL                             R12 2 1
      105 LOADK                            R14 K46 ["Capture current edit-time screen, return the image data."]
      106 NAMECALL                         R12 R12 K12 ["setDescription"]
      108 CALL                             R12 2 1
      109 LOADK                            R14 K13 ["capture_id"]
      110 DUPTABLE                         R15 K18 [{["type"] = "string", ["description"] = "Capture identifier such as 'ScreenCapture_1', 'ScreenCapture_2', etc."}]
      111 NAMECALL                         R12 R12 K19 ["addArgument"]
      113 CALL                             R12 3 1
      114 DUPTABLE                         R14 K42 [{["title"] = "Screen Capture", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
      115 NAMECALL                         R12 R12 K43 ["setAnnotations"]
      117 CALL                             R12 2 1
      118 MOVE                             R14 R10
      119 NAMECALL                         R12 R12 K44 ["setHandler"]
      121 CALL                             R12 2 1
      122 NAMECALL                         R12 R12 K45 ["build"]
      124 CALL                             R12 1 1
      125 MOVE                             R11 R12
      126 DUPTABLE                         R12 K49 [{"transformInitialContent", "getTransformResultFn"}]
      127 DUPCLOSURE                       R13 K50 [PROTO_7]
      128 CAPTURE                          UPVAL U6
      129 SETTABLEKS                       R13 R12 K47 ["transformInitialContent"]
      131 DUPCLOSURE                       R13 K51 [PROTO_9]
      132 SETTABLEKS                       R13 R12 K48 ["getTransformResultFn"]
      134 DUPTABLE                         R13 K57 [{"definition", "getPreExecuteWarning", "displayNameFunction", "streamTransform", "contentWidgets"}]
      135 SETTABLEKS                       R11 R13 K52 ["definition"]
      137 DUPCLOSURE                       R14 K58 [PROTO_10]
      138 SETTABLEKS                       R14 R13 K53 ["getPreExecuteWarning"]
      140 GETUPVAL                         R15 0
      141 GETTABLEKS                       R15 R15 K59 ["FFlagAssistantSplitToolsAndWidgets"]
      143 JUMPIFNOT                        R15 ; [+2]
      144 LOADNIL                          R14
      145 JUMP                             ; [+2]
      146 DUPCLOSURE                       R14 K60 [PROTO_11]
      147 CAPTURE                          UPVAL U7
      148 SETTABLEKS                       R14 R13 K54 ["displayNameFunction"]
      150 GETUPVAL                         R15 0
      151 GETTABLEKS                       R15 R15 K59 ["FFlagAssistantSplitToolsAndWidgets"]
      153 JUMPIFNOT                        R15 ; [+2]
      154 LOADNIL                          R14
      155 JUMP                             ; [+1]
      156 MOVE                             R14 R12
      157 SETTABLEKS                       R14 R13 K55 ["streamTransform"]
      159 GETUPVAL                         R15 0
      160 GETTABLEKS                       R15 R15 K59 ["FFlagAssistantSplitToolsAndWidgets"]
      162 JUMPIFNOT                        R15 ; [+2]
      163 LOADNIL                          R14
      164 JUMP                             ; [+5]
      165 NEWTABLE                         R14 0 1
      167 GETUPVAL                         R15 6
      168 SETLIST                          R14 R15 1 [1]
      170 SETTABLEKS                       R14 R13 K56 ["contentWidgets"]
      172 CLOSEUPVALS                      R3
      173 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Components"]
       16 GETTABLEKS                       R3 R3 K8 ["ContentWidgets"]
       18 GETTABLEKS                       R3 R3 K9 ["ImageContentWidget"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R4 K11 ["ModelContextProtocol"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["Promise"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Tools"]
       39 GETTABLEKS                       R6 R6 K14 ["ToolTypes"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K15 ["Util"]
       46 GETTABLEKS                       R7 R7 K16 ["ToolUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K17 ["Resources"]
       53 GETTABLEKS                       R8 R8 K18 ["Localization"]
       55 GETTABLEKS                       R8 R8 K19 ["Translator"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K20 ["Types"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R3 K15 ["Util"]
       65 GETTABLEKS                       R9 R9 K21 ["ToolBuilder"]
       67 GETTABLEKS                       R10 R3 K15 ["Util"]
       69 GETTABLEKS                       R10 R10 K22 ["ToolResult"]
       71 GETTABLEKS                       R11 R5 K23 ["ToolNames"]
       73 DUPCLOSURE                       R12 K24 [PROTO_12]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R7
       82 RETURN                           R12 1
