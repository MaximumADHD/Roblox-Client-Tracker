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
        0 NEWTABLE                         R1 1 0
        2 GETTABLEKS                       R2 R0 K0 ["Archivable"]
        4 SETTABLE                         R2 R1 R0
        5 LOADB                            R2 1
        6 SETTABLEKS                       R2 R0 K0 ["Archivable"]
        8 NAMECALL                         R2 R0 K1 ["GetDescendants"]
       10 CALL                             R2 1 3
       11 FORGPREP                         R2
       12 GETTABLEKS                       R7 R6 K0 ["Archivable"]
       14 SETTABLE                         R7 R1 R6
       15 LOADB                            R7 1
       16 SETTABLEKS                       R7 R6 K0 ["Archivable"]
       18 FORGLOOP                         R2 2 ; [-7]
       20 NAMECALL                         R2 R0 K2 ["Clone"]
       22 CALL                             R2 1 1
       23 MOVE                             R3 R1
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 FORGPREP                         R3
       27 SETTABLEKS                       R7 R6 K0 ["Archivable"]
       29 FORGLOOP                         R3 2 ; [-3]
       31 RETURN                           R2 1

PROTO_3:
        0 MOVE                             R3 R1
        1 MOVE                             R4 R2
        2 LOADNIL                          R5
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K0 ["getFFlagGen3dSeedImageViewportAlignedCapture"]
        6 CALL                             R6 0 1
        7 JUMPIFNOT                        R6 ; [+67]
        8 LOADN                            R5 10
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K1 ["CurrentCamera"]
       12 JUMPIFNOT                        R6 ; [+62]
       13 FASTCALL1                        TYPEOF R0 ; [+3]
       14 MOVE                             R8 R0
       15 GETIMPORT                        R7 K3 [typeof]
       17 CALL                             R7 1 1
       18 JUMPIFNOTEQKS                    R7 K4 ["Instance"] ; [+56]
       20 LOADK                            R9 K5 ["PVInstance"]
       21 NAMECALL                         R7 R0 K6 ["IsA"]
       23 CALL                             R7 2 1
       24 JUMPIFNOT                        R7 ; [+50]
       25 GETTABLEKS                       R8 R6 K7 ["CFrame"]
       27 GETTABLEKS                       R8 R8 K8 ["Position"]
       29 NAMECALL                         R9 R0 K9 ["GetPivot"]
       31 CALL                             R9 1 1
       32 GETTABLEKS                       R9 R9 K8 ["Position"]
       34 SUB                              R7 R8 R9
       35 GETTABLEKS                       R8 R7 K10 ["Magnitude"]
       37 LOADK                            R9 K11 [0.0001]
       38 JUMPIFNOTLT                      R9 R8 ; [+36]
       40 GETTABLEKS                       R10 R7 K12 ["Unit"]
       42 GETTABLEKS                       R13 R10 K13 ["X"]
       44 GETTABLEKS                       R14 R10 K14 ["Z"]
       46 FASTCALL2                        MATH_ATAN2 R13 R14 ; [+3]
       48 GETIMPORT                        R12 K17 [math.atan2]
       50 CALL                             R12 2 1
       51 FASTCALL1                        MATH_DEG R12 ; [+2]
       52 GETIMPORT                        R11 K19 [math.deg]
       54 CALL                             R11 1 1
       55 GETTABLEKS                       R15 R10 K20 ["Y"]
       57 LOADN                            R16 -1
       58 LOADN                            R17 1
       59 FASTCALL                         MATH_CLAMP ; [+2]
       60 GETIMPORT                        R14 K22 [math.clamp]
       62 CALL                             R14 3 1
       63 FASTCALL1                        MATH_ASIN R14 ; [+2]
       64 GETIMPORT                        R13 K24 [math.asin]
       66 CALL                             R13 1 1
       67 FASTCALL1                        MATH_DEG R13 ; [+2]
       68 GETIMPORT                        R12 K19 [math.deg]
       70 CALL                             R12 1 1
       71 MOVE                             R8 R11
       72 MOVE                             R9 R12
       73 MOVE                             R3 R8
       74 MOVE                             R4 R9
       75 ORK                              R7 R3 K25 [0]
       76 FASTCALL1                        MATH_RAD R7 ; [+2]
       77 GETIMPORT                        R6 K27 [math.rad]
       79 CALL                             R6 1 1
       80 JUMPIFNOT                        R4 ; [+6]
       81 FASTCALL1                        MATH_RAD R4 ; [+3]
       82 MOVE                             R8 R4
       83 GETIMPORT                        R7 K27 [math.rad]
       85 CALL                             R7 1 1
       86 JUMP                             ; [+1]
       87 LOADNIL                          R7
       88 GETIMPORT                        R8 K29 [Instance.new]
       90 LOADK                            R9 K30 ["ScreenGui"]
       91 CALL                             R8 1 1
       92 LOADK                            R9 K31 ["Gen3dPreview"]
       93 SETTABLEKS                       R9 R8 K32 ["Name"]
       95 LOADB                            R9 0
       96 SETTABLEKS                       R9 R8 K33 ["Archivable"]
       98 GETIMPORT                        R9 K37 [Enum.SafeAreaCompatibility.None]
      100 SETTABLEKS                       R9 R8 K35 ["SafeAreaCompatibility"]
      102 GETIMPORT                        R9 K39 [Enum.ScreenInsets.None]
      104 SETTABLEKS                       R9 R8 K38 ["ScreenInsets"]
      106 GETIMPORT                        R9 K29 [Instance.new]
      108 LOADK                            R10 K40 ["ViewportFrame"]
      109 CALL                             R9 1 1
      110 GETIMPORT                        R10 K42 [Vector2.new]
      112 LOADN                            R11 1
      113 LOADN                            R12 1
      114 CALL                             R10 2 1
      115 SETTABLEKS                       R10 R9 K43 ["AnchorPoint"]
      117 GETIMPORT                        R10 K46 [UDim2.fromOffset]
      119 LOADN                            R11 1
      120 LOADN                            R12 1
      121 CALL                             R10 2 1
      122 SETTABLEKS                       R10 R9 K8 ["Position"]
      124 GETIMPORT                        R10 K46 [UDim2.fromOffset]
      126 LOADN                            R11 512
      127 LOADN                            R12 512
      128 CALL                             R10 2 1
      129 SETTABLEKS                       R10 R9 K47 ["Size"]
      131 GETIMPORT                        R10 K49 [Color3.new]
      133 LOADN                            R11 0
      134 LOADN                            R12 0
      135 LOADN                            R13 0
      136 CALL                             R10 3 1
      137 SETTABLEKS                       R10 R9 K50 ["BackgroundColor3"]
      139 LOADN                            R10 1
      140 SETTABLEKS                       R10 R9 K51 ["BackgroundTransparency"]
      142 SETTABLEKS                       R8 R9 K52 ["Parent"]
      144 GETUPVAL                         R10 2
      145 MOVE                             R11 R0
      146 CALL                             R10 1 1
      147 GETIMPORT                        R11 K29 [Instance.new]
      149 LOADK                            R12 K53 ["Model"]
      150 CALL                             R11 1 1
      151 SETTABLEKS                       R11 R10 K52 ["Parent"]
      153 GETIMPORT                        R12 K55 [CFrame.identity]
      155 NAMECALL                         R13 R11 K56 ["GetExtentsSize"]
      157 CALL                             R13 1 1
      158 MOVE                             R16 R12
      159 NAMECALL                         R14 R11 K57 ["PivotTo"]
      161 CALL                             R14 2 0
      162 SETTABLEKS                       R9 R11 K52 ["Parent"]
      164 GETIMPORT                        R14 K29 [Instance.new]
      166 LOADK                            R15 K58 ["Camera"]
      167 CALL                             R14 1 1
      168 JUMPIFNOT                        R5 ; [+2]
      169 SETTABLEKS                       R5 R14 K59 ["FieldOfView"]
      171 GETTABLEKS                       R17 R14 K59 ["FieldOfView"]
      173 GETTABLEKS                       R19 R13 K13 ["X"]
      175 GETTABLEKS                       R20 R13 K20 ["Y"]
      177 GETTABLEKS                       R21 R13 K14 ["Z"]
      179 FASTCALL                         MATH_MAX ; [+2]
      180 GETIMPORT                        R18 K62 [math.max]
      182 CALL                             R18 3 1
      183 FASTCALL1                        MATH_RAD R17 ; [+3]
      184 MOVE                             R23 R17
      185 GETIMPORT                        R22 K27 [math.rad]
      187 CALL                             R22 1 1
      188 DIVK                             R21 R22 K64 [2]
      189 FASTCALL1                        MATH_TAN R21 ; [+2]
      190 GETIMPORT                        R20 K66 [math.tan]
      192 CALL                             R20 1 1
      193 DIVRK                            R19 K63 [1] R20
      194 MUL                              R20 R18 R19
      195 GETTABLEKS                       R22 R13 K14 ["Z"]
      197 DIVK                             R21 R22 K64 [2]
      198 ADD                              R16 R20 R21
      199 MULK                             R15 R16 K60 [0.5]
      200 JUMPIFNOT                        R7 ; [+46]
      201 FASTCALL1                        MATH_COS R7 ; [+3]
      202 MOVE                             R20 R7
      203 GETIMPORT                        R19 K68 [math.cos]
      205 CALL                             R19 1 1
      206 MUL                              R18 R15 R19
      207 FASTCALL1                        MATH_SIN R6 ; [+3]
      208 MOVE                             R20 R6
      209 GETIMPORT                        R19 K70 [math.sin]
      211 CALL                             R19 1 1
      212 MUL                              R17 R18 R19
      213 FASTCALL1                        MATH_SIN R7 ; [+3]
      214 MOVE                             R20 R7
      215 GETIMPORT                        R19 K70 [math.sin]
      217 CALL                             R19 1 1
      218 MUL                              R18 R15 R19
      219 FASTCALL1                        MATH_COS R7 ; [+3]
      220 MOVE                             R22 R7
      221 GETIMPORT                        R21 K68 [math.cos]
      223 CALL                             R21 1 1
      224 MUL                              R20 R15 R21
      225 FASTCALL1                        MATH_COS R6 ; [+3]
      226 MOVE                             R22 R6
      227 GETIMPORT                        R21 K68 [math.cos]
      229 CALL                             R21 1 1
      230 MUL                              R19 R20 R21
      231 FASTCALL                         VECTOR ; [+2]
      232 GETIMPORT                        R16 K72 [Vector3.new]
      234 CALL                             R16 3 1
      235 GETIMPORT                        R17 K74 [CFrame.lookAt]
      237 GETTABLEKS                       R19 R12 K8 ["Position"]
      239 ADD                              R18 R19 R16
      240 GETTABLEKS                       R19 R12 K8 ["Position"]
      242 LOADK                            R20 K75 [{0, 1, 0}]
      243 CALL                             R17 3 1
      244 SETTABLEKS                       R17 R14 K7 ["CFrame"]
      246 JUMP                             ; [+22]
      247 GETIMPORT                        R17 K77 [CFrame.Angles]
      249 LOADN                            R18 0
      250 ADDK                             R19 R6 K60 [0.5]
      251 LOADN                            R20 0
      252 CALL                             R17 3 1
      253 GETIMPORT                        R18 K78 [CFrame.new]
      255 LOADN                            R19 0
      256 LOADN                            R20 0
      257 MOVE                             R21 R15
      258 CALL                             R18 3 1
      259 MUL                              R16 R17 R18
      260 GETIMPORT                        R17 K74 [CFrame.lookAt]
      262 GETTABLEKS                       R18 R16 K8 ["Position"]
      264 GETTABLEKS                       R19 R12 K8 ["Position"]
      266 CALL                             R17 2 1
      267 SETTABLEKS                       R17 R14 K7 ["CFrame"]
      269 SETTABLEKS                       R9 R14 K52 ["Parent"]
      271 SETTABLEKS                       R14 R9 K1 ["CurrentCamera"]
      273 SETTABLEKS                       R8 R9 K52 ["Parent"]
      275 GETUPVAL                         R16 3
      276 JUMPIF                           R16 ; [+1]
      277 GETUPVAL                         R16 4
      278 SETTABLEKS                       R16 R8 K52 ["Parent"]
      280 GETIMPORT                        R16 K81 [task.wait]
      282 LOADN                            R17 2
      283 CALL                             R16 1 0
      284 GETUPVAL                         R16 5
      285 GETTABLEKS                       R16 R16 K82 ["captureSnapshotAsync"]
      287 MOVE                             R17 R9
      288 CALL                             R16 1 2
      289 NAMECALL                         R18 R8 K83 ["Destroy"]
      291 CALL                             R18 1 0
      292 JUMPIFNOT                        R16 ; [+9]
      293 FASTCALL1                        TYPEOF R17 ; [+3]
      294 MOVE                             R19 R17
      295 GETIMPORT                        R18 K3 [typeof]
      297 CALL                             R18 1 1
      298 JUMPIFNOTEQKS                    R18 K84 ["string"] ; [+3]
      300 JUMPIFNOTEQKS                    R17 K85 [""] ; [+3]
      302 LOADNIL                          R18
      303 RETURN                           R18 1
      304 RETURN                           R17 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssistantApplication"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+3]
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1
        5 GETIMPORT                        R0 K1 [pcall]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R0 1 2
       10 JUMPIFNOT                        R0 ; [+1]
       11 JUMPIF                           R1 ; [+6]
       12 GETIMPORT                        R2 K3 [warn]
       14 LOADK                            R3 K4 ["[Gen3d] AssistantApplication plugin component unavailable; seed-image capture disabled"]
       15 CALL                             R2 1 0
       16 LOADNIL                          R2
       17 RETURN                           R2 1
       18 SETUPVAL                         R1 0
       19 GETUPVAL                         R2 0
       20 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 1
        5 RETURN                           R3 1

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+3]
        3 GETUPVAL                         R2 0
        4 JUMP                             ; [+15]
        5 GETIMPORT                        R3 K1 [pcall]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R3 1 2
       10 JUMPIFNOT                        R3 ; [+1]
       11 JUMPIF                           R4 ; [+6]
       12 GETIMPORT                        R5 K3 [warn]
       14 LOADK                            R6 K4 ["[Gen3d] AssistantApplication plugin component unavailable; seed-image capture disabled"]
       15 CALL                             R5 1 0
       16 LOADNIL                          R2
       17 JUMP                             ; [+2]
       18 SETUPVAL                         R4 0
       19 GETUPVAL                         R2 0
       20 JUMPIFNOTEQKNIL                  R2 ; [+5]
       22 GETIMPORT                        R3 K6 [error]
       24 LOADK                            R4 K7 ["AssistantApplication plugin component unavailable"]
       25 CALL                             R3 1 0
       26 MOVE                             R5 R0
       27 MOVE                             R6 R1
       28 NAMECALL                         R3 R2 K8 ["GetImageDataBase64Async"]
       30 CALL                             R3 3 -1
       31 RETURN                           R3 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+3]
        3 GETUPVAL                         R1 0
        4 JUMP                             ; [+15]
        5 GETIMPORT                        R2 K1 [pcall]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R2 1 2
       10 JUMPIFNOT                        R2 ; [+1]
       11 JUMPIF                           R3 ; [+6]
       12 GETIMPORT                        R4 K3 [warn]
       14 LOADK                            R5 K4 ["[Gen3d] AssistantApplication plugin component unavailable; seed-image capture disabled"]
       15 CALL                             R4 1 0
       16 LOADNIL                          R1
       17 JUMP                             ; [+2]
       18 SETUPVAL                         R3 0
       19 GETUPVAL                         R1 0
       20 JUMPIFNOTEQKNIL                  R1 ; [+5]
       22 GETIMPORT                        R2 K6 [error]
       24 LOADK                            R3 K7 ["AssistantApplication plugin component unavailable"]
       25 CALL                             R2 1 0
       26 MOVE                             R4 R0
       27 NAMECALL                         R2 R1 K8 ["ConvertImageDataToTempIdAsync"]
       29 CALL                             R2 2 -1
       30 RETURN                           R2 -1

PROTO_10:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          REF R1
        3 CAPTURE                          VAL R0
        4 DUPTABLE                         R3 K4 [{"captureSinglePreviewImageAsync", "capturePreviewImages", "getImageDataBase64Async", "convertImageDataToTempIdAsync"}]
        5 DUPCLOSURE                       R4 K5 [PROTO_6]
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R4 R3 K0 ["captureSinglePreviewImageAsync"]
        9 DUPCLOSURE                       R4 K6 [PROTO_7]
       10 SETTABLEKS                       R4 R3 K1 ["capturePreviewImages"]
       12 NEWCLOSURE                       R4 P3
       13 CAPTURE                          REF R1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R4 R3 K2 ["getImageDataBase64Async"]
       17 NEWCLOSURE                       R4 P4
       18 CAPTURE                          REF R1
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R4 R3 K3 ["convertImageDataToTempIdAsync"]
       22 CLOSEUPVALS                      R1
       23 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StarterGui"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["Workspace"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 LOADK                            R5 K8 ["Gen3d"]
       22 NAMECALL                         R3 R3 K9 ["FindFirstAncestor"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K11 [require]
       27 GETTABLEKS                       R5 R3 K12 ["Packages"]
       29 GETTABLEKS                       R5 R5 K13 ["AssistantUI"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K11 [require]
       34 GETTABLEKS                       R6 R3 K14 ["Bin"]
       36 GETTABLEKS                       R6 R6 K15 ["Common"]
       38 GETTABLEKS                       R6 R6 K16 ["defineLuaFlags"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R4 K17 ["Utils"]
       43 GETTABLEKS                       R6 R6 K18 ["Tools"]
       45 DUPCLOSURE                       R7 K19 [PROTO_0]
       46 DUPCLOSURE                       R8 K20 [PROTO_1]
       47 DUPCLOSURE                       R9 K21 [PROTO_2]
       48 DUPCLOSURE                       R10 K22 [PROTO_3]
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R6
       55 DUPCLOSURE                       R11 K23 [PROTO_10]
       56 CAPTURE                          VAL R10
       57 RETURN                           R11 1
