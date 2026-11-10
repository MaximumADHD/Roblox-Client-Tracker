PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureSnapshotAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_2:
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

PROTO_3:
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

PROTO_4:
        0 ORK                              R10 R4 K0 [0]
        1 FASTCALL1                        MATH_RAD R10 ; [+2]
        2 GETIMPORT                        R9 K3 [math.rad]
        4 CALL                             R9 1 1
        5 JUMPIFNOT                        R5 ; [+6]
        6 FASTCALL1                        MATH_RAD R5 ; [+3]
        7 MOVE                             R11 R5
        8 GETIMPORT                        R10 K3 [math.rad]
       10 CALL                             R10 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R10
       13 GETIMPORT                        R11 K6 [Instance.new]
       15 LOADK                            R12 K7 ["ScreenGui"]
       16 CALL                             R11 1 1
       17 LOADK                            R12 K8 ["Gen3dPreviewCapture"]
       18 SETTABLEKS                       R12 R11 K9 ["Name"]
       20 LOADB                            R12 0
       21 SETTABLEKS                       R12 R11 K10 ["Archivable"]
       23 GETIMPORT                        R12 K14 [Enum.SafeAreaCompatibility.None]
       25 SETTABLEKS                       R12 R11 K12 ["SafeAreaCompatibility"]
       27 GETIMPORT                        R12 K16 [Enum.ScreenInsets.None]
       29 SETTABLEKS                       R12 R11 K15 ["ScreenInsets"]
       31 GETIMPORT                        R12 K6 [Instance.new]
       33 LOADK                            R13 K17 ["ViewportFrame"]
       34 CALL                             R12 1 1
       35 GETIMPORT                        R13 K19 [Vector2.new]
       37 LOADN                            R14 1
       38 LOADN                            R15 1
       39 CALL                             R13 2 1
       40 SETTABLEKS                       R13 R12 K20 ["AnchorPoint"]
       42 GETIMPORT                        R13 K23 [UDim2.fromOffset]
       44 LOADN                            R14 1
       45 LOADN                            R15 1
       46 CALL                             R13 2 1
       47 SETTABLEKS                       R13 R12 K24 ["Position"]
       49 GETIMPORT                        R13 K23 [UDim2.fromOffset]
       51 GETTABLEKS                       R14 R1 K25 ["sizePx"]
       53 GETTABLEKS                       R15 R1 K25 ["sizePx"]
       55 CALL                             R13 2 1
       56 SETTABLEKS                       R13 R12 K26 ["Size"]
       58 GETIMPORT                        R13 K28 [Color3.new]
       60 LOADN                            R14 0
       61 LOADN                            R15 0
       62 LOADN                            R16 0
       63 CALL                             R13 3 1
       64 SETTABLEKS                       R13 R12 K29 ["BackgroundColor3"]
       66 LOADN                            R13 1
       67 SETTABLEKS                       R13 R12 K30 ["BackgroundTransparency"]
       69 SETTABLEKS                       R11 R12 K31 ["Parent"]
       71 GETTABLEKS                       R13 R0 K32 ["cloneForCapture"]
       73 MOVE                             R14 R3
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K6 [Instance.new]
       77 LOADK                            R15 K33 ["Model"]
       78 CALL                             R14 1 1
       79 SETTABLEKS                       R14 R13 K31 ["Parent"]
       81 GETIMPORT                        R15 K36 [CFrame.identity]
       83 NAMECALL                         R16 R14 K37 ["GetExtentsSize"]
       85 CALL                             R16 1 1
       86 MOVE                             R19 R15
       87 NAMECALL                         R17 R14 K38 ["PivotTo"]
       89 CALL                             R17 2 0
       90 SETTABLEKS                       R12 R14 K31 ["Parent"]
       92 GETIMPORT                        R17 K6 [Instance.new]
       94 LOADK                            R18 K39 ["Camera"]
       95 CALL                             R17 1 1
       96 JUMPIFNOT                        R6 ; [+2]
       97 SETTABLEKS                       R6 R17 K40 ["FieldOfView"]
       99 GETUPVAL                         R19 0
      100 GETTABLEKS                       R19 R19 K41 ["getCameraDistance"]
      102 GETTABLEKS                       R20 R17 K40 ["FieldOfView"]
      104 MOVE                             R21 R16
      105 CALL                             R19 2 1
      106 GETTABLEKS                       R20 R1 K42 ["cameraDistanceMultiplier"]
      108 MUL                              R18 R19 R20
      109 JUMPIFNOT                        R7 ; [+15]
      110 GETIMPORT                        R19 K44 [CFrame.lookAt]
      112 GETTABLEKS                       R21 R15 K24 ["Position"]
      114 GETTABLEKS                       R23 R7 K45 ["Unit"]
      116 MUL                              R22 R23 R18
      117 ADD                              R20 R21 R22
      118 GETTABLEKS                       R21 R15 K24 ["Position"]
      120 ORK                              R22 R8 K46 [{0, 1, 0}]
      121 CALL                             R19 3 1
      122 SETTABLEKS                       R19 R17 K34 ["CFrame"]
      124 JUMP                             ; [+69]
      125 JUMPIFNOT                        R10 ; [+46]
      126 FASTCALL1                        MATH_COS R10 ; [+3]
      127 MOVE                             R23 R10
      128 GETIMPORT                        R22 K48 [math.cos]
      130 CALL                             R22 1 1
      131 MUL                              R21 R18 R22
      132 FASTCALL1                        MATH_SIN R9 ; [+3]
      133 MOVE                             R23 R9
      134 GETIMPORT                        R22 K50 [math.sin]
      136 CALL                             R22 1 1
      137 MUL                              R20 R21 R22
      138 FASTCALL1                        MATH_SIN R10 ; [+3]
      139 MOVE                             R23 R10
      140 GETIMPORT                        R22 K50 [math.sin]
      142 CALL                             R22 1 1
      143 MUL                              R21 R18 R22
      144 FASTCALL1                        MATH_COS R10 ; [+3]
      145 MOVE                             R25 R10
      146 GETIMPORT                        R24 K48 [math.cos]
      148 CALL                             R24 1 1
      149 MUL                              R23 R18 R24
      150 FASTCALL1                        MATH_COS R9 ; [+3]
      151 MOVE                             R25 R9
      152 GETIMPORT                        R24 K48 [math.cos]
      154 CALL                             R24 1 1
      155 MUL                              R22 R23 R24
      156 FASTCALL                         VECTOR ; [+2]
      157 GETIMPORT                        R19 K52 [Vector3.new]
      159 CALL                             R19 3 1
      160 GETIMPORT                        R20 K44 [CFrame.lookAt]
      162 GETTABLEKS                       R22 R15 K24 ["Position"]
      164 ADD                              R21 R22 R19
      165 GETTABLEKS                       R22 R15 K24 ["Position"]
      167 LOADK                            R23 K46 [{0, 1, 0}]
      168 CALL                             R20 3 1
      169 SETTABLEKS                       R20 R17 K34 ["CFrame"]
      171 JUMP                             ; [+22]
      172 GETIMPORT                        R20 K54 [CFrame.Angles]
      174 LOADN                            R21 0
      175 ADDK                             R22 R9 K55 [0.5]
      176 LOADN                            R23 0
      177 CALL                             R20 3 1
      178 GETIMPORT                        R21 K56 [CFrame.new]
      180 LOADN                            R22 0
      181 LOADN                            R23 0
      182 MOVE                             R24 R18
      183 CALL                             R21 3 1
      184 MUL                              R19 R20 R21
      185 GETIMPORT                        R20 K44 [CFrame.lookAt]
      187 GETTABLEKS                       R21 R19 K24 ["Position"]
      189 GETTABLEKS                       R22 R15 K24 ["Position"]
      191 CALL                             R20 2 1
      192 SETTABLEKS                       R20 R17 K34 ["CFrame"]
      194 SETTABLEKS                       R12 R17 K31 ["Parent"]
      196 SETTABLEKS                       R17 R12 K57 ["CurrentCamera"]
      198 SETTABLEKS                       R11 R12 K31 ["Parent"]
      200 GETTABLEKS                       R19 R0 K58 ["parentPreviewGui"]
      202 MOVE                             R20 R11
      203 CALL                             R19 1 0
      204 GETIMPORT                        R19 K61 [task.wait]
      206 LOADN                            R20 2
      207 CALL                             R19 1 0
      208 JUMPIFEQKNIL                     R2 ; [+9]
      210 GETUPVAL                         R19 1
      211 JUMPIFEQ                         R2 R19 ; [+6]
      213 NAMECALL                         R19 R11 K62 ["Destroy"]
      215 CALL                             R19 1 0
      216 LOADK                            R19 K63 [""]
      217 RETURN                           R19 1
      218 GETTABLEKS                       R19 R0 K64 ["captureSnapshotAsync"]
      220 MOVE                             R20 R12
      221 CALL                             R19 1 2
      222 NAMECALL                         R21 R11 K62 ["Destroy"]
      224 CALL                             R21 1 0
      225 JUMPIFNOT                        R19 ; [+1]
      226 RETURN                           R20 1
      227 GETTABLEKS                       R22 R1 K65 ["placeholderImageOnFailure"]
      229 ORK                              R21 R22 K63 [""]
      230 RETURN                           R21 1

PROTO_5:
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
       11 LOADNIL                          R9
       12 LOADNIL                          R10
       13 GETTABLEKS                       R11 R4 K2 ["viewportAlignedCapture"]
       15 JUMPIFNOT                        R11 ; [+53]
       16 GETTABLEKS                       R8 R4 K3 ["viewportAlignedSeedFov"]
       18 GETTABLEKS                       R11 R0 K4 ["getStudioCameraCFrame"]
       20 CALL                             R11 0 1
       21 JUMPIFNOT                        R11 ; [+47]
       22 FASTCALL1                        TYPEOF R1 ; [+3]
       23 MOVE                             R13 R1
       24 GETIMPORT                        R12 K6 [typeof]
       26 CALL                             R12 1 1
       27 JUMPIFNOTEQKS                    R12 K7 ["Instance"] ; [+41]
       29 LOADK                            R14 K8 ["PVInstance"]
       30 NAMECALL                         R12 R1 K9 ["IsA"]
       32 CALL                             R12 2 1
       33 JUMPIFNOT                        R12 ; [+35]
       34 NAMECALL                         R12 R1 K10 ["GetPivot"]
       36 CALL                             R12 1 1
       37 GETTABLEKS                       R14 R11 K11 ["Position"]
       39 GETTABLEKS                       R15 R12 K11 ["Position"]
       41 SUB                              R13 R14 R15
       42 GETTABLEKS                       R14 R13 K12 ["Magnitude"]
       44 LOADK                            R15 K13 [0.0001]
       45 JUMPIFNOTLT                      R15 R14 ; [+23]
       47 GETTABLEKS                       R14 R4 K14 ["viewportAlignedCaptureRespectsTransform"]
       49 JUMPIFNOT                        R14 ; [+12]
       50 MOVE                             R16 R13
       51 NAMECALL                         R14 R12 K15 ["VectorToObjectSpace"]
       53 CALL                             R14 2 1
       54 MOVE                             R9 R14
       55 GETTABLEKS                       R16 R11 K16 ["UpVector"]
       57 NAMECALL                         R14 R12 K15 ["VectorToObjectSpace"]
       59 CALL                             R14 2 1
       60 MOVE                             R10 R14
       61 JUMP                             ; [+7]
       62 GETUPVAL                         R14 1
       63 GETTABLEKS                       R14 R14 K17 ["getAzimuthElevationForDirection"]
       65 MOVE                             R15 R13
       66 CALL                             R14 1 2
       67 MOVE                             R6 R14
       68 MOVE                             R7 R15
       69 GETIMPORT                        R11 K19 [pcall]
       71 GETUPVAL                         R12 2
       72 MOVE                             R13 R0
       73 MOVE                             R14 R4
       74 MOVE                             R15 R5
       75 MOVE                             R16 R1
       76 MOVE                             R17 R6
       77 MOVE                             R18 R7
       78 MOVE                             R19 R8
       79 MOVE                             R20 R9
       80 MOVE                             R21 R10
       81 CALL                             R11 10 2
       82 JUMPIF                           R11 ; [+15]
       83 GETIMPORT                        R13 K21 [warn]
       85 LOADK                            R14 K22 ["[PreviewCaptureOps] captureSinglePreviewImageAsync failed: %*"]
       86 FASTCALL1                        TOSTRING R12 ; [+3]
       87 MOVE                             R17 R12
       88 GETIMPORT                        R16 K24 [tostring]
       90 CALL                             R16 1 1
       91 NAMECALL                         R14 R14 K25 ["format"]
       93 CALL                             R14 2 1
       94 CALL                             R13 1 0
       95 GETTABLEKS                       R13 R4 K26 ["placeholderImageOnFailure"]
       97 RETURN                           R13 1
       98 RETURN                           R12 1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R2 K3 [script]
        7 GETTABLEKS                       R2 R2 K4 ["Parent"]
        9 GETTABLEKS                       R2 R2 K4 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["HostSurface"]
       13 CALL                             R1 1 1
       14 LOADN                            R2 0
       15 DUPCLOSURE                       R3 K6 [PROTO_1]
       16 SETTABLEKS                       R3 R0 K7 ["captureSnapshotAsync"]
       18 DUPCLOSURE                       R3 K8 [PROTO_2]
       19 SETTABLEKS                       R3 R0 K9 ["getCameraDistance"]
       21 DUPCLOSURE                       R3 K10 [PROTO_3]
       22 SETTABLEKS                       R3 R0 K11 ["getAzimuthElevationForDirection"]
       24 NEWCLOSURE                       R3 P3
       25 CAPTURE                          VAL R0
       26 CAPTURE                          REF R2
       27 NEWCLOSURE                       R4 P4
       28 CAPTURE                          REF R2
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R3
       31 SETTABLEKS                       R4 R0 K12 ["captureSinglePreviewImageAsync"]
       33 DUPCLOSURE                       R4 K13 [PROTO_6]
       34 DUPCLOSURE                       R5 K14 [PROTO_9]
       35 CAPTURE                          VAL R3
       36 NEWCLOSURE                       R6 P7
       37 CAPTURE                          REF R2
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R5
       40 SETTABLEKS                       R6 R0 K15 ["capturePreviewImages"]
       42 CLOSEUPVALS                      R2
       43 RETURN                           R0 1
