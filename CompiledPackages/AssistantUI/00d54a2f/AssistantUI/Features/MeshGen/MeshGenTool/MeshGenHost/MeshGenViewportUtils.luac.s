PROTO_0:
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

PROTO_1:
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
       12 GETUPVAL                         R1 4
       13 GETTABLEKS                       R0 R1 K2 ["captureSnapshotAsync"]
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

PROTO_2:
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
       17 LOADK                            R5 K11 ["AssistantMeshPreview"]
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
       78 GETIMPORT                        R8 K38 [CFrame.identity]
       80 NAMECALL                         R9 R7 K39 ["GetExtentsSize"]
       82 CALL                             R9 1 1
       83 MOVE                             R12 R8
       84 NAMECALL                         R10 R7 K40 ["PivotTo"]
       86 CALL                             R10 2 0
       87 SETTABLEKS                       R5 R7 K33 ["Parent"]
       89 GETIMPORT                        R10 K9 [Instance.new]
       91 LOADK                            R11 K41 ["Camera"]
       92 CALL                             R10 1 1
       93 GETTABLEKS                       R13 R10 K42 ["FieldOfView"]
       95 GETTABLEKS                       R14 R9 K43 ["X"]
       97 GETTABLEKS                       R15 R9 K44 ["Y"]
       99 GETTABLEKS                       R16 R9 K45 ["Z"]
      101 FASTCALL3                        MATH_MAX R14 R15 R16
      103 MOVE                             R18 R14
      104 MOVE                             R19 R15
      105 MOVE                             R20 R16
      106 GETIMPORT                        R17 K47 [math.max]
      108 CALL                             R17 3 1
      109 FASTCALL1                        MATH_RAD R13 ; [+3]
      110 MOVE                             R22 R13
      111 GETIMPORT                        R21 K3 [math.rad]
      113 CALL                             R21 1 1
      114 DIVK                             R20 R21 K49 [2]
      115 FASTCALL1                        MATH_TAN R20 ; [+2]
      116 GETIMPORT                        R19 K51 [math.tan]
      118 CALL                             R19 1 1
      119 DIVRK                            R18 R48 K19 [Enum.ScreenInsets.None]
      120 MUL                              R19 R17 R18
      121 DIVK                             R20 R16 K49 [2]
      122 ADD                              R12 R19 R20
      123 GETUPVAL                         R13 1
      124 MUL                              R11 R12 R13
      125 GETIMPORT                        R13 K53 [CFrame.Angles]
      127 LOADN                            R14 0
      128 LOADK                            R16 K54 [0.5]
      129 ADD                              R15 R16 R2
      130 LOADN                            R16 0
      131 CALL                             R13 3 1
      132 GETIMPORT                        R14 K55 [CFrame.new]
      134 LOADN                            R15 0
      135 LOADN                            R16 0
      136 MOVE                             R17 R11
      137 CALL                             R14 3 1
      138 MUL                              R12 R13 R14
      139 GETIMPORT                        R13 K57 [CFrame.lookAt]
      141 GETTABLEKS                       R14 R12 K27 ["Position"]
      143 GETTABLEKS                       R15 R8 K27 ["Position"]
      145 CALL                             R13 2 1
      146 SETTABLEKS                       R13 R10 K36 ["CFrame"]
      148 SETTABLEKS                       R5 R10 K33 ["Parent"]
      150 SETTABLEKS                       R10 R5 K58 ["CurrentCamera"]
      152 SETTABLEKS                       R4 R5 K33 ["Parent"]
      154 GETUPVAL                         R13 2
      155 JUMPIF                           R13 ; [+1]
      156 GETUPVAL                         R13 3
      157 SETTABLEKS                       R13 R4 K33 ["Parent"]
      159 GETIMPORT                        R13 K61 [task.delay]
      161 GETUPVAL                         R14 4
      162 NEWCLOSURE                       R15 P0
      163 CAPTURE                          VAL R0
      164 CAPTURE                          UPVAL U5
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R3
      167 CAPTURE                          UPVAL U6
      168 CAPTURE                          VAL R5
      169 CAPTURE                          UPVAL U7
      170 CALL                             R13 2 0
      171 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 LOADN                            R7 90
        4 GETUPVAL                         R8 3
        5 MUL                              R6 R7 R8
        6 MOVE                             R7 R0
        7 CALL                             R3 4 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["bridge"]
        3 GETTABLEKS                       R1 R2 K1 ["setPreviewImage"]
        5 DUPTABLE                         R2 K4 [{"index", "image"}]
        6 GETUPVAL                         R4 1
        7 ADDK                             R3 R4 K5 [1]
        8 SETTABLEKS                       R3 R2 K2 ["index"]
       10 SETTABLEKS                       R0 R2 K3 ["image"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["Failed to generate preview image %*: %*"]
        3 GETUPVAL                         R6 0
        4 ADDK                             R5 R6 K3 [1]
        5 GETTABLEKS                       R6 R0 K4 ["error"]
        7 NAMECALL                         R3 R3 K5 ["format"]
        9 CALL                             R3 3 1
       10 MOVE                             R2 R3
       11 CALL                             R1 1 0
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K6 ["bridge"]
       15 GETTABLEKS                       R1 R2 K7 ["setPreviewImage"]
       17 DUPTABLE                         R2 K10 [{"index", "image"}]
       18 GETUPVAL                         R4 0
       19 ADDK                             R3 R4 K3 [1]
       20 SETTABLEKS                       R3 R2 K8 ["index"]
       22 LOADK                            R3 K11 [""]
       23 SETTABLEKS                       R3 R2 K9 ["image"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 ADDK                             R2 R2 K0 [1]
        2 SETUPVAL                         R2 0
        3 GETUPVAL                         R2 0
        4 LOADN                            R5 0
        5 GETUPVAL                         R6 1
        6 SUBK                             R3 R6 K0 [1]
        7 LOADN                            R4 1
        8 FORNPREP                         R3
        9 GETUPVAL                         R7 2
       10 GETTABLEKS                       R6 R7 K1 ["new"]
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R5
       17 CALL                             R6 1 1
       18 NEWCLOSURE                       R8 P1
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R5
       21 NAMECALL                         R6 R6 K2 ["andThen"]
       23 CALL                             R6 2 1
       24 NEWCLOSURE                       R8 P2
       25 CAPTURE                          VAL R5
       26 CAPTURE                          VAL R0
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
       21 GETTABLEKS                       R5 R0 K11 ["Parent"]
       23 GETTABLEKS                       R4 R5 K12 ["Promise"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R6 R0 K13 ["Util"]
       30 GETTABLEKS                       R5 R6 K14 ["ToolUtils"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K1 [script]
       35 LOADK                            R7 K15 ["MeshGen"]
       36 NAMECALL                         R5 R5 K3 ["FindFirstAncestor"]
       38 CALL                             R5 2 1
       39 GETIMPORT                        R6 K10 [require]
       41 GETTABLEKS                       R8 R5 K16 ["MeshGenTool"]
       43 GETTABLEKS                       R7 R8 K17 ["MeshGenBridgeTypes"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K10 [require]
       48 GETTABLEKS                       R8 R5 K18 ["MeshGenConstants"]
       50 CALL                             R7 1 1
       51 GETTABLEKS                       R8 R7 K19 ["PLACEHOLDER_IMAGE"]
       53 GETTABLEKS                       R9 R7 K20 ["PREVIEW_CAMERA_DISTANCE_MULTIPLIER"]
       55 GETTABLEKS                       R10 R7 K21 ["PREVIEW_GENERATION_DELAY_TIME"]
       57 GETTABLEKS                       R11 R7 K22 ["PREVIEW_IMAGE_COUNT"]
       59 GETTABLEKS                       R12 R7 K23 ["PREVIEW_SIZE_PX"]
       61 LOADN                            R13 0
       62 DUPCLOSURE                       R14 K24 [PROTO_0]
       63 NEWCLOSURE                       R15 P1
       64 CAPTURE                          VAL R12
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R10
       69 CAPTURE                          REF R13
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R8
       72 NEWCLOSURE                       R16 P2
       73 CAPTURE                          REF R13
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R15
       77 DUPTABLE                         R17 K26 [{"updatePreviewImages"}]
       78 SETTABLEKS                       R16 R17 K25 ["updatePreviewImages"]
       80 CLOSEUPVALS                      R13
       81 RETURN                           R17 1
