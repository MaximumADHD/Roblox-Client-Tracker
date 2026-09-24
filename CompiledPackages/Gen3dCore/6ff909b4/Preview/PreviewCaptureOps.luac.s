PROTO_0:
        0 GETTABLEKS                       R3 R1 K0 ["X"]
        2 GETTABLEKS                       R4 R1 K1 ["Y"]
        4 GETTABLEKS                       R5 R1 K2 ["Z"]
        6 FASTCALL                         MATH_MAX ; [+2]
        7 GETIMPORT                        R2 K5 [math.max]
        9 CALL                             R2 3 1
       10 FASTCALL1                        MATH_RAD R0 ; [+3]
       11 MOVE                             R7 R0
       12 GETIMPORT                        R6 K9 [math.rad]
       14 CALL                             R6 1 1
       15 DIVK                             R5 R6 K7 [2]
       16 FASTCALL1                        MATH_TAN R5 ; [+2]
       17 GETIMPORT                        R4 K11 [math.tan]
       19 CALL                             R4 1 1
       20 DIVRK                            R3 K6 [1] R4
       21 MUL                              R5 R2 R3
       22 GETTABLEKS                       R7 R1 K2 ["Z"]
       24 DIVK                             R6 R7 K7 [2]
       25 ADD                              R4 R5 R6
       26 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Unit"]
        2 GETTABLEKS                       R4 R1 K1 ["X"]
        4 GETTABLEKS                       R5 R1 K2 ["Z"]
        6 FASTCALL2                        MATH_ATAN2 R4 R5 ; [+3]
        8 GETIMPORT                        R3 K5 [math.atan2]
       10 CALL                             R3 2 1
       11 FASTCALL1                        MATH_DEG R3 ; [+2]
       12 GETIMPORT                        R2 K7 [math.deg]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R6 R1 K8 ["Y"]
       17 LOADN                            R7 -1
       18 LOADN                            R8 1
       19 FASTCALL                         MATH_CLAMP ; [+2]
       20 GETIMPORT                        R5 K10 [math.clamp]
       22 CALL                             R5 3 1
       23 FASTCALL1                        MATH_ASIN R5 ; [+2]
       24 GETIMPORT                        R4 K12 [math.asin]
       26 CALL                             R4 1 1
       27 FASTCALL1                        MATH_DEG R4 ; [+2]
       28 GETIMPORT                        R3 K7 [math.deg]
       30 CALL                             R3 1 1
       31 RETURN                           R2 2

PROTO_2:
        0 ORK                              R8 R4 K0 [0]
        1 FASTCALL1                        MATH_RAD R8 ; [+2]
        2 GETIMPORT                        R7 K3 [math.rad]
        4 CALL                             R7 1 1
        5 JUMPIFNOT                        R5 ; [+6]
        6 FASTCALL1                        MATH_RAD R5 ; [+3]
        7 MOVE                             R9 R5
        8 GETIMPORT                        R8 K3 [math.rad]
       10 CALL                             R8 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R8
       13 GETIMPORT                        R9 K6 [Instance.new]
       15 LOADK                            R10 K7 ["ScreenGui"]
       16 CALL                             R9 1 1
       17 LOADK                            R10 K8 ["Gen3dPreviewCapture"]
       18 SETTABLEKS                       R10 R9 K9 ["Name"]
       20 LOADB                            R10 0
       21 SETTABLEKS                       R10 R9 K10 ["Archivable"]
       23 GETIMPORT                        R10 K14 [Enum.SafeAreaCompatibility.None]
       25 SETTABLEKS                       R10 R9 K12 ["SafeAreaCompatibility"]
       27 GETIMPORT                        R10 K16 [Enum.ScreenInsets.None]
       29 SETTABLEKS                       R10 R9 K15 ["ScreenInsets"]
       31 GETIMPORT                        R10 K6 [Instance.new]
       33 LOADK                            R11 K17 ["ViewportFrame"]
       34 CALL                             R10 1 1
       35 GETIMPORT                        R11 K19 [Vector2.new]
       37 LOADN                            R12 1
       38 LOADN                            R13 1
       39 CALL                             R11 2 1
       40 SETTABLEKS                       R11 R10 K20 ["AnchorPoint"]
       42 GETIMPORT                        R11 K23 [UDim2.fromOffset]
       44 LOADN                            R12 1
       45 LOADN                            R13 1
       46 CALL                             R11 2 1
       47 SETTABLEKS                       R11 R10 K24 ["Position"]
       49 GETIMPORT                        R11 K23 [UDim2.fromOffset]
       51 GETTABLEKS                       R12 R1 K25 ["sizePx"]
       53 GETTABLEKS                       R13 R1 K25 ["sizePx"]
       55 CALL                             R11 2 1
       56 SETTABLEKS                       R11 R10 K26 ["Size"]
       58 GETIMPORT                        R11 K28 [Color3.new]
       60 LOADN                            R12 0
       61 LOADN                            R13 0
       62 LOADN                            R14 0
       63 CALL                             R11 3 1
       64 SETTABLEKS                       R11 R10 K29 ["BackgroundColor3"]
       66 LOADN                            R11 1
       67 SETTABLEKS                       R11 R10 K30 ["BackgroundTransparency"]
       69 SETTABLEKS                       R9 R10 K31 ["Parent"]
       71 GETTABLEKS                       R11 R0 K32 ["cloneForCapture"]
       73 MOVE                             R12 R3
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [Instance.new]
       77 LOADK                            R13 K33 ["Model"]
       78 CALL                             R12 1 1
       79 SETTABLEKS                       R12 R11 K31 ["Parent"]
       81 GETIMPORT                        R13 K36 [CFrame.identity]
       83 NAMECALL                         R14 R12 K37 ["GetExtentsSize"]
       85 CALL                             R14 1 1
       86 MOVE                             R17 R13
       87 NAMECALL                         R15 R12 K38 ["PivotTo"]
       89 CALL                             R15 2 0
       90 SETTABLEKS                       R10 R12 K31 ["Parent"]
       92 GETIMPORT                        R15 K6 [Instance.new]
       94 LOADK                            R16 K39 ["Camera"]
       95 CALL                             R15 1 1
       96 JUMPIFNOT                        R6 ; [+2]
       97 SETTABLEKS                       R6 R15 K40 ["FieldOfView"]
       99 GETUPVAL                         R17 0
      100 GETTABLEKS                       R17 R17 K41 ["getCameraDistance"]
      102 GETTABLEKS                       R18 R15 K40 ["FieldOfView"]
      104 MOVE                             R19 R14
      105 CALL                             R17 2 1
      106 GETTABLEKS                       R18 R1 K42 ["cameraDistanceMultiplier"]
      108 MUL                              R16 R17 R18
      109 JUMPIFNOT                        R8 ; [+46]
      110 FASTCALL1                        MATH_COS R8 ; [+3]
      111 MOVE                             R21 R8
      112 GETIMPORT                        R20 K44 [math.cos]
      114 CALL                             R20 1 1
      115 MUL                              R19 R16 R20
      116 FASTCALL1                        MATH_SIN R7 ; [+3]
      117 MOVE                             R21 R7
      118 GETIMPORT                        R20 K46 [math.sin]
      120 CALL                             R20 1 1
      121 MUL                              R18 R19 R20
      122 FASTCALL1                        MATH_SIN R8 ; [+3]
      123 MOVE                             R21 R8
      124 GETIMPORT                        R20 K46 [math.sin]
      126 CALL                             R20 1 1
      127 MUL                              R19 R16 R20
      128 FASTCALL1                        MATH_COS R8 ; [+3]
      129 MOVE                             R23 R8
      130 GETIMPORT                        R22 K44 [math.cos]
      132 CALL                             R22 1 1
      133 MUL                              R21 R16 R22
      134 FASTCALL1                        MATH_COS R7 ; [+3]
      135 MOVE                             R23 R7
      136 GETIMPORT                        R22 K44 [math.cos]
      138 CALL                             R22 1 1
      139 MUL                              R20 R21 R22
      140 FASTCALL                         VECTOR ; [+2]
      141 GETIMPORT                        R17 K48 [Vector3.new]
      143 CALL                             R17 3 1
      144 GETIMPORT                        R18 K50 [CFrame.lookAt]
      146 GETTABLEKS                       R20 R13 K24 ["Position"]
      148 ADD                              R19 R20 R17
      149 GETTABLEKS                       R20 R13 K24 ["Position"]
      151 LOADK                            R21 K51 [{0, 1, 0}]
      152 CALL                             R18 3 1
      153 SETTABLEKS                       R18 R15 K34 ["CFrame"]
      155 JUMP                             ; [+22]
      156 GETIMPORT                        R18 K53 [CFrame.Angles]
      158 LOADN                            R19 0
      159 ADDK                             R20 R7 K54 [0.5]
      160 LOADN                            R21 0
      161 CALL                             R18 3 1
      162 GETIMPORT                        R19 K55 [CFrame.new]
      164 LOADN                            R20 0
      165 LOADN                            R21 0
      166 MOVE                             R22 R16
      167 CALL                             R19 3 1
      168 MUL                              R17 R18 R19
      169 GETIMPORT                        R18 K50 [CFrame.lookAt]
      171 GETTABLEKS                       R19 R17 K24 ["Position"]
      173 GETTABLEKS                       R20 R13 K24 ["Position"]
      175 CALL                             R18 2 1
      176 SETTABLEKS                       R18 R15 K34 ["CFrame"]
      178 SETTABLEKS                       R10 R15 K31 ["Parent"]
      180 SETTABLEKS                       R15 R10 K56 ["CurrentCamera"]
      182 SETTABLEKS                       R9 R10 K31 ["Parent"]
      184 GETTABLEKS                       R17 R0 K57 ["parentPreviewGui"]
      186 MOVE                             R18 R9
      187 CALL                             R17 1 0
      188 GETIMPORT                        R17 K60 [task.wait]
      190 LOADN                            R18 2
      191 CALL                             R17 1 0
      192 JUMPIFEQKNIL                     R2 ; [+9]
      194 GETUPVAL                         R17 1
      195 JUMPIFEQ                         R2 R17 ; [+6]
      197 NAMECALL                         R17 R9 K61 ["Destroy"]
      199 CALL                             R17 1 0
      200 LOADK                            R17 K62 [""]
      201 RETURN                           R17 1
      202 GETTABLEKS                       R17 R0 K63 ["captureSnapshotAsync"]
      204 MOVE                             R18 R10
      205 CALL                             R17 1 2
      206 NAMECALL                         R19 R9 K61 ["Destroy"]
      208 CALL                             R19 1 0
      209 JUMPIFNOT                        R17 ; [+1]
      210 RETURN                           R18 1
      211 GETTABLEKS                       R20 R1 K64 ["placeholderImageOnFailure"]
      213 ORK                              R19 R20 K62 [""]
      214 RETURN                           R19 1

PROTO_3:
        0 LOADNIL                          R5
        1 GETTABLEKS                       R6 R4 K0 ["cancelSupersededCaptures"]
        3 JUMPIFNOT                        R6 ; [+4]
        4 GETUPVAL                         R6 0
        5 ADDK                             R6 R6 K1 [1]
        6 SETUPVAL                         R6 0
        7 GETUPVAL                         R5 0
        8 MOVE                             R6 R2
        9 MOVE                             R7 R3
       10 LOADNIL                          R8
       11 GETTABLEKS                       R9 R4 K2 ["viewportAlignedCapture"]
       13 JUMPIFNOT                        R9 ; [+38]
       14 GETTABLEKS                       R8 R4 K3 ["viewportAlignedSeedFov"]
       16 GETTABLEKS                       R9 R0 K4 ["getStudioCameraCFrame"]
       18 CALL                             R9 0 1
       19 JUMPIFNOT                        R9 ; [+32]
       20 FASTCALL1                        TYPEOF R1 ; [+3]
       21 MOVE                             R11 R1
       22 GETIMPORT                        R10 K6 [typeof]
       24 CALL                             R10 1 1
       25 JUMPIFNOTEQKS                    R10 K7 ["Instance"] ; [+26]
       27 LOADK                            R12 K8 ["PVInstance"]
       28 NAMECALL                         R10 R1 K9 ["IsA"]
       30 CALL                             R10 2 1
       31 JUMPIFNOT                        R10 ; [+20]
       32 GETTABLEKS                       R11 R9 K10 ["Position"]
       34 NAMECALL                         R12 R1 K11 ["GetPivot"]
       36 CALL                             R12 1 1
       37 GETTABLEKS                       R12 R12 K10 ["Position"]
       39 SUB                              R10 R11 R12
       40 GETTABLEKS                       R11 R10 K12 ["Magnitude"]
       42 LOADK                            R12 K13 [0.0001]
       43 JUMPIFNOTLT                      R12 R11 ; [+8]
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R11 R11 K14 ["getAzimuthElevationForDirection"]
       48 MOVE                             R12 R10
       49 CALL                             R11 1 2
       50 MOVE                             R6 R11
       51 MOVE                             R7 R12
       52 GETIMPORT                        R9 K16 [pcall]
       54 GETUPVAL                         R10 2
       55 MOVE                             R11 R0
       56 MOVE                             R12 R4
       57 MOVE                             R13 R5
       58 MOVE                             R14 R1
       59 MOVE                             R15 R6
       60 MOVE                             R16 R7
       61 MOVE                             R17 R8
       62 CALL                             R9 8 2
       63 JUMPIF                           R9 ; [+15]
       64 GETIMPORT                        R11 K18 [warn]
       66 LOADK                            R12 K19 ["[PreviewCaptureOps] captureSinglePreviewImageAsync failed: %*"]
       67 FASTCALL1                        TOSTRING R10 ; [+3]
       68 MOVE                             R15 R10
       69 GETIMPORT                        R14 K21 [tostring]
       71 CALL                             R14 1 1
       72 NAMECALL                         R12 R12 K22 ["format"]
       74 CALL                             R12 2 1
       75 CALL                             R11 1 0
       76 GETTABLEKS                       R11 R4 K23 ["placeholderImageOnFailure"]
       78 RETURN                           R11 1
       79 RETURN                           R10 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.create]
        2 MOVE                             R2 R0
        3 LOADB                            R3 0
        4 CALL                             R1 2 1
        5 NEWTABLE                         R2 0 0
        7 NEWTABLE                         R3 0 0
        9 LOADN                            R5 1
       10 DIVK                             R7 R0 K3 [4]
       11 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       12 GETIMPORT                        R6 K6 [math.floor]
       14 CALL                             R6 1 1
       15 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       17 GETIMPORT                        R4 K8 [math.max]
       19 CALL                             R4 2 1
       20 LOADN                            R7 0
       21 LOADN                            R5 3
       22 LOADN                            R6 1
       23 FORNPREP                         R5
       24 MUL                              R10 R7 R4
       25 MOD                              R9 R10 R0
       26 ADDK                             R8 R9 K9 [1]
       27 GETTABLE                         R9 R1 R8
       28 JUMPIF                           R9 ; [+9]
       29 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       31 MOVE                             R10 R3
       32 MOVE                             R11 R8
       33 GETIMPORT                        R9 K11 [table.insert]
       35 CALL                             R9 2 0
       36 LOADB                            R9 1
       37 SETTABLE                         R9 R1 R8
       38 FORNLOOP                         R5
       39 MOVE                             R6 R2
       40 GETIMPORT                        R7 K13 [table.clone]
       42 MOVE                             R8 R3
       43 CALL                             R7 1 -1
       44 FASTCALL                         TABLE_INSERT ; [+2]
       45 GETIMPORT                        R5 K11 [table.insert]
       47 CALL                             R5 -1 0
       48 LOADN                            R5 0
       49 LENGTH                           R6 R3
       50 JUMPIFNOTLT                      R6 R0 ; [+69]
       52 LOADN                            R6 20
       53 JUMPIFNOTLT                      R5 R6 ; [+66]
       55 ADDK                             R5 R5 K9 [1]
       56 GETIMPORT                        R6 K15 [table.sort]
       58 MOVE                             R7 R3
       59 CALL                             R6 1 0
       60 NEWTABLE                         R6 0 0
       62 LOADN                            R9 1
       63 LENGTH                           R7 R3
       64 LOADN                            R8 1
       65 FORNPREP                         R7
       66 GETTABLE                         R10 R3 R9
       67 LENGTH                           R12 R3
       68 JUMPIFNOTLT                      R9 R12 ; [+4]
       70 ADDK                             R12 R9 K9 [1]
       71 GETTABLE                         R11 R3 R12
       72 JUMP                             ; [+2]
       73 GETTABLEN                        R12 R3 1
       74 ADD                              R11 R12 R0
       75 ADD                              R14 R10 R11
       76 DIVK                             R13 R14 K16 [2]
       77 FASTCALL1                        MATH_FLOOR R13 ; [+2]
       78 GETIMPORT                        R12 K6 [math.floor]
       80 CALL                             R12 1 1
       81 JUMPIFNOTLT                      R0 R12 ; [+2]
       83 SUB                              R12 R12 R0
       84 GETTABLE                         R13 R1 R12
       85 JUMPIF                           R13 ; [+9]
       86 FASTCALL2                        TABLE_INSERT R6 R12 ; [+5]
       88 MOVE                             R14 R6
       89 MOVE                             R15 R12
       90 GETIMPORT                        R13 K11 [table.insert]
       92 CALL                             R13 2 0
       93 LOADB                            R13 1
       94 SETTABLE                         R13 R1 R12
       95 FORNLOOP                         R7
       96 LENGTH                           R7 R6
       97 JUMPIFEQKN                       R7 K17 [0] ; [+22]
       99 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
      101 MOVE                             R8 R2
      102 MOVE                             R9 R6
      103 GETIMPORT                        R7 K11 [table.insert]
      105 CALL                             R7 2 0
      106 MOVE                             R7 R6
      107 LOADNIL                          R8
      108 LOADNIL                          R9
      109 FORGPREP                         R7
      110 FASTCALL2                        TABLE_INSERT R3 R11 ; [+5]
      112 MOVE                             R13 R3
      113 MOVE                             R14 R11
      114 GETIMPORT                        R12 K11 [table.insert]
      116 CALL                             R12 2 0
      117 FORGLOOP                         R7 2 ; [-8]
      119 JUMPBACK                         ; [-71]
      120 NEWTABLE                         R6 0 0
      122 LOADN                            R9 1
      123 MOVE                             R7 R0
      124 LOADN                            R8 1
      125 FORNPREP                         R7
      126 GETTABLE                         R10 R1 R9
      127 JUMPIF                           R10 ; [+7]
      128 FASTCALL2                        TABLE_INSERT R6 R9 ; [+5]
      130 MOVE                             R11 R6
      131 MOVE                             R12 R9
      132 GETIMPORT                        R10 K11 [table.insert]
      134 CALL                             R10 2 0
      135 FORNLOOP                         R7
      136 LENGTH                           R7 R6
      137 LOADN                            R8 0
      138 JUMPIFNOTLT                      R8 R7 ; [+8]
      140 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
      142 MOVE                             R8 R2
      143 MOVE                             R9 R6
      144 GETIMPORT                        R7 K11 [table.insert]
      146 CALL                             R7 2 0
      147 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 GETUPVAL                         R5 4
        7 GETUPVAL                         R6 5
        8 GETTABLEKS                       R6 R6 K2 ["azimuth"]
       10 GETUPVAL                         R7 5
       11 GETTABLEKS                       R7 R7 K3 ["elevation"]
       13 CALL                             R0 7 2
       14 JUMPIF                           R0 ; [+14]
       15 GETIMPORT                        R2 K5 [warn]
       17 LOADK                            R3 K6 ["[PreviewCaptureOps] Failed to generate preview image %*: %*"]
       18 GETUPVAL                         R5 6
       19 FASTCALL1                        TOSTRING R1 ; [+3]
       20 MOVE                             R7 R1
       21 GETIMPORT                        R6 K8 [tostring]
       23 CALL                             R6 1 1
       24 NAMECALL                         R3 R3 K9 ["format"]
       26 CALL                             R3 3 1
       27 CALL                             R2 1 0
       28 LOADK                            R1 K10 [""]
       29 GETUPVAL                         R2 7
       30 SUBK                             R2 R2 K11 [1]
       31 SETUPVAL                         R2 7
       32 GETIMPORT                        R2 K1 [pcall]
       34 GETUPVAL                         R3 8
       35 GETUPVAL                         R4 6
       36 MOVE                             R5 R1
       37 CALL                             R2 3 0
       38 GETUPVAL                         R2 7
       39 LOADN                            R3 0
       40 JUMPIFNOTLE                      R2 R3 ; [+5]
       42 GETUPVAL                         R2 9
       43 NAMECALL                         R2 R2 K12 ["Fire"]
       45 CALL                             R2 1 0
       46 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [warn]
        2 LOADK                            R1 K2 ["[PreviewCaptureOps] Preview image batch timed out with %* frame(s) remaining"]
        3 GETUPVAL                         R3 0
        4 NAMECALL                         R1 R1 K3 ["format"]
        6 CALL                             R1 2 1
        7 CALL                             R0 1 0
        8 LOADB                            R0 1
        9 SETUPVAL                         R0 1
       10 GETUPVAL                         R0 2
       11 NAMECALL                         R0 R0 K4 ["Fire"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_7:
        0 LENGTH                           R7 R5
        1 JUMPIFNOTEQKN                    R7 K0 [0] ; [+3]
        3 CLOSEUPVALS                      R7
        4 RETURN                           R0 0
        5 GETIMPORT                        R8 K3 [Instance.new]
        7 LOADK                            R9 K4 ["BindableEvent"]
        8 CALL                             R8 1 1
        9 MOVE                             R9 R5
       10 LOADNIL                          R10
       11 LOADNIL                          R11
       12 FORGPREP                         R9
       13 GETTABLE                         R14 R4 R13
       14 GETIMPORT                        R15 K7 [task.spawn]
       16 NEWCLOSURE                       R16 P0
       17 CAPTURE                          UPVAL U0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R2
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R14
       23 CAPTURE                          VAL R13
       24 CAPTURE                          REF R7
       25 CAPTURE                          VAL R6
       26 CAPTURE                          VAL R8
       27 CALL                             R15 1 0
       28 FORGLOOP                         R9 2 ; [-16]
       30 LOADB                            R9 0
       31 GETIMPORT                        R10 K9 [task.delay]
       33 LOADN                            R11 120
       34 NEWCLOSURE                       R12 P1
       35 CAPTURE                          REF R7
       36 CAPTURE                          REF R9
       37 CAPTURE                          VAL R8
       38 CALL                             R10 2 1
       39 GETTABLEKS                       R11 R8 K10 ["Event"]
       41 NAMECALL                         R11 R11 K11 ["Wait"]
       43 CALL                             R11 1 0
       44 JUMPIF                           R9 ; [+4]
       45 GETIMPORT                        R11 K13 [task.cancel]
       47 MOVE                             R12 R10
       48 CALL                             R11 1 0
       49 NAMECALL                         R11 R8 K14 ["Destroy"]
       51 CALL                             R11 1 0
       52 CLOSEUPVALS                      R7
       53 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 GETUPVAL                         R6 2
        6 JUMPIFNOTEQ                      R5 R6 ; [+12]
        8 GETUPVAL                         R5 3
        9 GETUPVAL                         R6 4
       10 GETUPVAL                         R7 5
       11 GETUPVAL                         R8 1
       12 GETUPVAL                         R9 6
       13 GETUPVAL                         R10 7
       14 MOVE                             R11 R4
       15 GETUPVAL                         R12 8
       16 CALL                             R5 7 0
       17 FORGLOOP                         R0 2 ; [-14]
       19 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R5 0
        1 ADDK                             R5 R5 K0 [1]
        2 SETUPVAL                         R5 0
        3 GETUPVAL                         R5 0
        4 GETUPVAL                         R6 1
        5 LENGTH                           R7 R3
        6 CALL                             R6 1 1
        7 GETIMPORT                        R7 K3 [task.spawn]
        9 NEWCLOSURE                       R8 P0
       10 CAPTURE                          VAL R6
       11 CAPTURE                          VAL R5
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R4
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R2
       19 CALL                             R7 1 0
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R2 K3 [script]
        7 GETTABLEKS                       R2 R2 K4 ["Parent"]
        9 GETTABLEKS                       R2 R2 K4 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["HostSurface"]
       13 CALL                             R1 1 1
       14 LOADN                            R2 0
       15 DUPCLOSURE                       R3 K6 [PROTO_0]
       16 SETTABLEKS                       R3 R0 K7 ["getCameraDistance"]
       18 DUPCLOSURE                       R3 K8 [PROTO_1]
       19 SETTABLEKS                       R3 R0 K9 ["getAzimuthElevationForDirection"]
       21 NEWCLOSURE                       R3 P2
       22 CAPTURE                          VAL R0
       23 CAPTURE                          REF R2
       24 NEWCLOSURE                       R4 P3
       25 CAPTURE                          REF R2
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R3
       28 SETTABLEKS                       R4 R0 K10 ["captureSinglePreviewImageAsync"]
       30 DUPCLOSURE                       R4 K11 [PROTO_4]
       31 DUPCLOSURE                       R5 K12 [PROTO_7]
       32 CAPTURE                          VAL R3
       33 NEWCLOSURE                       R6 P6
       34 CAPTURE                          REF R2
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R5
       37 SETTABLEKS                       R6 R0 K13 ["capturePreviewImages"]
       39 CLOSEUPVALS                      R2
       40 RETURN                           R0 1
