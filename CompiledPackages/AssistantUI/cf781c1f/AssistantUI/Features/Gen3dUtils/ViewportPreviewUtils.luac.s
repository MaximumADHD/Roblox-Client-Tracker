PROTO_0:
        0 LOADNIL                          R1
        1 LOADN                            R2 60
        2 JUMPIFNOTLE                      R0 R2 ; [+3]
        4 DIVK                             R1 R0 K0 [6]
        5 JUMP                             ; [+3]
        6 SUBK                             R3 R0 K3 [60]
        7 DIVK                             R2 R3 K2 [20]
        8 ADDK                             R1 R2 K1 [10]
        9 GETUPVAL                         R3 0
       10 CALL                             R3 0 1
       11 MUL                              R2 R1 R3
       12 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["X"]
        2 GETTABLEKS                       R3 R1 K1 ["Y"]
        4 GETTABLEKS                       R4 R1 K2 ["Z"]
        6 FASTCALL3                        MATH_MAX R2 R3 R4
        8 MOVE                             R6 R2
        9 MOVE                             R7 R3
       10 MOVE                             R8 R4
       11 GETIMPORT                        R5 K5 [math.max]
       13 CALL                             R5 3 1
       14 FASTCALL1                        MATH_RAD R0 ; [+3]
       15 MOVE                             R10 R0
       16 GETIMPORT                        R9 K9 [math.rad]
       18 CALL                             R9 1 1
       19 DIVK                             R8 R9 K7 [2]
       20 FASTCALL1                        MATH_TAN R8 ; [+2]
       21 GETIMPORT                        R7 K11 [math.tan]
       23 CALL                             R7 1 1
       24 DIVRK                            R6 R6 K7 [2]
       25 MUL                              R8 R5 R6
       26 DIVK                             R9 R4 K7 [2]
       27 ADD                              R7 R8 R9
       28 RETURN                           R7 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIFEQ                         R0 R1 ; [+9]
        4 GETUPVAL                         R0 2
        5 NAMECALL                         R0 R0 K0 ["Destroy"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 3
        9 LOADK                            R1 K1 [""]
       10 CALL                             R0 1 -1
       11 RETURN                           R0 -1
       12 GETUPVAL                         R0 4
       13 GETTABLEKS                       R0 R0 K2 ["captureSnapshotAsync"]
       15 GETUPVAL                         R1 5
       16 CALL                             R0 1 2
       17 GETUPVAL                         R2 2
       18 NAMECALL                         R2 R2 K0 ["Destroy"]
       20 CALL                             R2 1 0
       21 JUMPIFNOT                        R0 ; [+2]
       22 MOVE                             R2 R1
       23 JUMPIF                           R2 ; [+1]
       24 GETUPVAL                         R2 6
       25 GETUPVAL                         R3 3
       26 MOVE                             R4 R2
       27 CALL                             R3 1 0
       28 RETURN                           R0 0

PROTO_3:
        0 ORK                              R5 R2 K0 [0]
        1 FASTCALL1                        MATH_RAD R5 ; [+2]
        2 GETIMPORT                        R4 K3 [math.rad]
        4 CALL                             R4 1 1
        5 MOVE                             R2 R4
        6 FASTCALL2K                       ASSERT R2 K4 ; [+5]
        8 MOVE                             R5 R2
        9 LOADK                            R6 K4 ["Angle must be a number"]
       10 GETIMPORT                        R4 K6 [assert]
       12 CALL                             R4 2 0
       13 GETIMPORT                        R4 K9 [Instance.new]
       15 LOADK                            R5 K10 ["ScreenGui"]
       16 CALL                             R4 1 1
       17 LOADK                            R5 K11 ["AssistantGen3dPreview"]
       18 SETTABLEKS                       R5 R4 K12 ["Name"]
       20 LOADB                            R5 0
       21 SETTABLEKS                       R5 R4 K13 ["Archivable"]
       23 GETIMPORT                        R5 K17 [Enum.SafeAreaCompatibility.None]
       25 SETTABLEKS                       R5 R4 K15 ["SafeAreaCompatibility"]
       27 GETIMPORT                        R5 K19 [Enum.ScreenInsets.None]
       29 SETTABLEKS                       R5 R4 K18 ["ScreenInsets"]
       31 GETIMPORT                        R5 K9 [Instance.new]
       33 LOADK                            R6 K20 ["ViewportFrame"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K22 [Vector2.new]
       37 LOADN                            R7 1
       38 LOADN                            R8 1
       39 CALL                             R6 2 1
       40 SETTABLEKS                       R6 R5 K23 ["AnchorPoint"]
       42 GETIMPORT                        R6 K26 [UDim2.fromOffset]
       44 LOADN                            R7 1
       45 LOADN                            R8 1
       46 CALL                             R6 2 1
       47 SETTABLEKS                       R6 R5 K27 ["Position"]
       49 GETIMPORT                        R6 K26 [UDim2.fromOffset]
       51 GETUPVAL                         R7 0
       52 GETUPVAL                         R8 0
       53 CALL                             R6 2 1
       54 SETTABLEKS                       R6 R5 K28 ["Size"]
       56 GETIMPORT                        R6 K30 [Color3.new]
       58 LOADN                            R7 0
       59 LOADN                            R8 0
       60 LOADN                            R9 0
       61 CALL                             R6 3 1
       62 SETTABLEKS                       R6 R5 K31 ["BackgroundColor3"]
       64 LOADN                            R6 1
       65 SETTABLEKS                       R6 R5 K32 ["BackgroundTransparency"]
       67 SETTABLEKS                       R4 R5 K33 ["Parent"]
       69 NAMECALL                         R6 R1 K34 ["Clone"]
       71 CALL                             R6 1 1
       72 GETIMPORT                        R7 K9 [Instance.new]
       74 LOADK                            R8 K35 ["Model"]
       75 CALL                             R7 1 1
       76 SETTABLEKS                       R7 R6 K33 ["Parent"]
       78 LOADN                            R8 2
       79 GETUPVAL                         R9 1
       80 CALL                             R9 0 1
       81 JUMPIFNOT                        R9 ; [+128]
       82 GETIMPORT                        R9 K38 [CFrame.identity]
       84 SETTABLEKS                       R9 R7 K39 ["WorldPivot"]
       86 SETTABLEKS                       R5 R7 K33 ["Parent"]
       88 GETIMPORT                        R9 K9 [Instance.new]
       90 LOADK                            R10 K40 ["Camera"]
       91 CALL                             R9 1 1
       92 NAMECALL                         R10 R7 K41 ["GetBoundingBox"]
       94 CALL                             R10 1 2
       95 GETTABLEKS                       R12 R10 K27 ["Position"]
       97 GETTABLEKS                       R15 R9 K42 ["FieldOfView"]
       99 GETTABLEKS                       R16 R11 K43 ["X"]
      101 GETTABLEKS                       R17 R11 K44 ["Y"]
      103 GETTABLEKS                       R18 R11 K45 ["Z"]
      105 FASTCALL3                        MATH_MAX R16 R17 R18
      107 MOVE                             R20 R16
      108 MOVE                             R21 R17
      109 MOVE                             R22 R18
      110 GETIMPORT                        R19 K47 [math.max]
      112 CALL                             R19 3 1
      113 FASTCALL1                        MATH_RAD R15 ; [+3]
      114 MOVE                             R24 R15
      115 GETIMPORT                        R23 K3 [math.rad]
      117 CALL                             R23 1 1
      118 DIVK                             R22 R23 K49 [2]
      119 FASTCALL1                        MATH_TAN R22 ; [+2]
      120 GETIMPORT                        R21 K51 [math.tan]
      122 CALL                             R21 1 1
      123 DIVRK                            R20 R48 K21 ["Vector2"]
      124 MUL                              R21 R19 R20
      125 DIVK                             R22 R18 K49 [2]
      126 ADD                              R14 R21 R22
      127 GETUPVAL                         R15 2
      128 MUL                              R13 R14 R15
      129 LOADN                            R15 0
      130 GETTABLEKS                       R17 R11 K44 ["Y"]
      132 MULK                             R16 R17 K52 [0.2]
      133 LOADN                            R17 0
      134 FASTCALL                         VECTOR ; [+2]
      135 GETIMPORT                        R14 K54 [Vector3.new]
      137 CALL                             R14 3 1
      138 GETIMPORT                        R16 K56 [CFrame.Angles]
      140 LOADN                            R17 0
      141 MOVE                             R18 R2
      142 LOADN                            R19 0
      143 CALL                             R16 3 1
      144 LOADN                            R18 0
      145 LOADN                            R19 0
      146 FASTCALL3                        VECTOR R18 R19 R13
      148 MOVE                             R20 R13
      149 GETIMPORT                        R17 K54 [Vector3.new]
      151 CALL                             R17 3 1
      152 MUL                              R15 R16 R17
      153 GETIMPORT                        R16 K58 [CFrame.lookAt]
      155 ADD                              R18 R12 R15
      156 ADD                              R17 R18 R14
      157 MOVE                             R18 R12
      158 LOADK                            R19 K59 [{0, 1, 0}]
      159 CALL                             R16 3 1
      160 SETTABLEKS                       R16 R9 K36 ["CFrame"]
      162 SETTABLEKS                       R5 R9 K33 ["Parent"]
      164 SETTABLEKS                       R9 R5 K60 ["CurrentCamera"]
      166 SETTABLEKS                       R4 R5 K33 ["Parent"]
      168 GETUPVAL                         R16 3
      169 JUMPIF                           R16 ; [+1]
      170 GETUPVAL                         R16 4
      171 SETTABLEKS                       R16 R4 K33 ["Parent"]
      173 NAMECALL                         R17 R6 K61 ["GetDescendants"]
      175 CALL                             R17 1 1
      176 LENGTH                           R16 R17
      177 LOADNIL                          R19
      178 LOADN                            R20 60
      179 JUMPIFNOTLE                      R16 R20 ; [+3]
      181 DIVK                             R19 R16 K62 [6]
      182 JUMP                             ; [+3]
      183 SUBK                             R21 R16 K65 [60]
      184 DIVK                             R20 R21 K64 [20]
      185 ADDK                             R19 R20 K63 [10]
      186 GETUPVAL                         R20 5
      187 CALL                             R20 0 1
      188 MUL                              R18 R19 R20
      189 GETUPVAL                         R19 6
      190 LOADN                            R20 120
      191 FASTCALL                         MATH_CLAMP ; [+2]
      192 GETIMPORT                        R17 K67 [math.clamp]
      194 CALL                             R17 3 1
      195 MOVE                             R8 R17
      196 GETUPVAL                         R17 7
      197 CALL                             R17 0 1
      198 JUMPIFNOT                        R17 ; [+92]
      199 GETIMPORT                        R17 K69 [print]
      201 LOADK                            R19 K70 ["Delaying preview generation for %* seconds for part with %* descendants"]
      202 MOVE                             R21 R8
      203 MOVE                             R22 R16
      204 NAMECALL                         R19 R19 K71 ["format"]
      206 CALL                             R19 3 1
      207 MOVE                             R18 R19
      208 CALL                             R17 1 0
      209 JUMP                             ; [+81]
      210 GETIMPORT                        R9 K38 [CFrame.identity]
      212 NAMECALL                         R10 R7 K72 ["GetExtentsSize"]
      214 CALL                             R10 1 1
      215 MOVE                             R13 R9
      216 NAMECALL                         R11 R7 K73 ["PivotTo"]
      218 CALL                             R11 2 0
      219 SETTABLEKS                       R5 R7 K33 ["Parent"]
      221 GETIMPORT                        R11 K9 [Instance.new]
      223 LOADK                            R12 K40 ["Camera"]
      224 CALL                             R11 1 1
      225 GETTABLEKS                       R14 R11 K42 ["FieldOfView"]
      227 GETTABLEKS                       R15 R10 K43 ["X"]
      229 GETTABLEKS                       R16 R10 K44 ["Y"]
      231 GETTABLEKS                       R17 R10 K45 ["Z"]
      233 FASTCALL3                        MATH_MAX R15 R16 R17
      235 MOVE                             R19 R15
      236 MOVE                             R20 R16
      237 MOVE                             R21 R17
      238 GETIMPORT                        R18 K47 [math.max]
      240 CALL                             R18 3 1
      241 FASTCALL1                        MATH_RAD R14 ; [+3]
      242 MOVE                             R23 R14
      243 GETIMPORT                        R22 K3 [math.rad]
      245 CALL                             R22 1 1
      246 DIVK                             R21 R22 K49 [2]
      247 FASTCALL1                        MATH_TAN R21 ; [+2]
      248 GETIMPORT                        R20 K51 [math.tan]
      250 CALL                             R20 1 1
      251 DIVRK                            R19 R48 K20 ["ViewportFrame"]
      252 MUL                              R20 R18 R19
      253 DIVK                             R21 R17 K49 [2]
      254 ADD                              R13 R20 R21
      255 GETUPVAL                         R14 2
      256 MUL                              R12 R13 R14
      257 GETIMPORT                        R14 K56 [CFrame.Angles]
      259 LOADN                            R15 0
      260 LOADK                            R17 K74 [0.5]
      261 ADD                              R16 R17 R2
      262 LOADN                            R17 0
      263 CALL                             R14 3 1
      264 GETIMPORT                        R15 K75 [CFrame.new]
      266 LOADN                            R16 0
      267 LOADN                            R17 0
      268 MOVE                             R18 R12
      269 CALL                             R15 3 1
      270 MUL                              R13 R14 R15
      271 GETIMPORT                        R14 K58 [CFrame.lookAt]
      273 GETTABLEKS                       R15 R13 K27 ["Position"]
      275 GETTABLEKS                       R16 R9 K27 ["Position"]
      277 CALL                             R14 2 1
      278 SETTABLEKS                       R14 R11 K36 ["CFrame"]
      280 SETTABLEKS                       R5 R11 K33 ["Parent"]
      282 SETTABLEKS                       R11 R5 K60 ["CurrentCamera"]
      284 SETTABLEKS                       R4 R5 K33 ["Parent"]
      286 GETUPVAL                         R14 3
      287 JUMPIF                           R14 ; [+1]
      288 GETUPVAL                         R14 4
      289 SETTABLEKS                       R14 R4 K33 ["Parent"]
      291 GETIMPORT                        R9 K78 [task.delay]
      293 MOVE                             R10 R8
      294 NEWCLOSURE                       R11 P0
      295 CAPTURE                          VAL R0
      296 CAPTURE                          UPVAL U8
      297 CAPTURE                          VAL R4
      298 CAPTURE                          VAL R3
      299 CAPTURE                          UPVAL U9
      300 CAPTURE                          VAL R5
      301 CAPTURE                          UPVAL U10
      302 CALL                             R9 2 0
      303 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 GETUPVAL                         R7 3
        4 MULK                             R6 R7 K0 [90]
        5 MOVE                             R7 R0
        6 CALL                             R3 4 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 ADDK                             R2 R3 K0 [1]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to generate preview image %*: %*"]
        3 GETUPVAL                         R6 0
        4 ADDK                             R5 R6 K3 [1]
        5 MOVE                             R6 R0
        6 NAMECALL                         R3 R3 K4 ["format"]
        8 CALL                             R3 3 1
        9 MOVE                             R2 R3
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R3 0
       13 ADDK                             R2 R3 K3 [1]
       14 LOADK                            R3 K5 [""]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 ADDK                             R2 R2 K0 [1]
        2 SETUPVAL                         R2 0
        3 GETUPVAL                         R2 0
        4 LOADN                            R5 0
        5 GETUPVAL                         R6 1
        6 SUBK                             R3 R6 K0 [1]
        7 LOADN                            R4 1
        8 FORNPREP                         R3
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K1 ["new"]
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R5
       17 CALL                             R6 1 1
       18 NEWCLOSURE                       R8 P1
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R5
       21 NAMECALL                         R6 R6 K2 ["andThen"]
       23 CALL                             R6 2 1
       24 NEWCLOSURE                       R8 P2
       25 CAPTURE                          VAL R5
       26 CAPTURE                          VAL R1
       27 NAMECALL                         R6 R6 K3 ["catch"]
       29 CALL                             R6 2 0
       30 FORNLOOP                         R3
       31 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CoreGui"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["StarterGui"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R0 K11 ["Parent"]
       23 GETTABLEKS                       R4 R4 K12 ["Promise"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Util"]
       30 GETTABLEKS                       R5 R5 K14 ["ToolUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R6 R0 K15 ["Flags"]
       37 GETTABLEKS                       R6 R6 K16 ["FFlagDebugLogAssistantUI"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R7 R0 K15 ["Flags"]
       44 GETTABLEKS                       R7 R7 K17 ["FFlagDelayPreviewImageRender"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R0 K15 ["Flags"]
       51 GETTABLEKS                       R8 R8 K18 ["FIntFactorDelayPreview"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K10 [require]
       56 GETIMPORT                        R9 K1 [script]
       58 GETTABLEKS                       R9 R9 K11 ["Parent"]
       60 GETTABLEKS                       R9 R9 K19 ["Gen3dConstants"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R8 K20 ["PLACEHOLDER_IMAGE"]
       65 GETTABLEKS                       R10 R8 K21 ["PREVIEW_CAMERA_DISTANCE_MULTIPLIER"]
       67 GETTABLEKS                       R11 R8 K22 ["PREVIEW_IMAGE_COUNT"]
       69 GETTABLEKS                       R12 R8 K23 ["PREVIEW_SIZE_PX"]
       71 GETTABLEKS                       R13 R8 K24 ["PREVIEW_GENERATION_DELAY_TIME"]
       73 LOADN                            R14 0
       74 DUPCLOSURE                       R15 K25 [PROTO_0]
       75 CAPTURE                          VAL R7
       76 DUPCLOSURE                       R16 K26 [PROTO_1]
       77 NEWCLOSURE                       R17 P2
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R13
       85 CAPTURE                          VAL R5
       86 CAPTURE                          REF R14
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R9
       89 NEWCLOSURE                       R18 P3
       90 CAPTURE                          REF R14
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R17
       94 DUPTABLE                         R19 K30 [{"getCameraDistance", "createPreviewImageForInstance", "capturePreviewImages"}]
       95 SETTABLEKS                       R16 R19 K27 ["getCameraDistance"]
       97 SETTABLEKS                       R17 R19 K28 ["createPreviewImageForInstance"]
       99 SETTABLEKS                       R18 R19 K29 ["capturePreviewImages"]
      101 CLOSEUPVALS                      R14
      102 RETURN                           R19 1
