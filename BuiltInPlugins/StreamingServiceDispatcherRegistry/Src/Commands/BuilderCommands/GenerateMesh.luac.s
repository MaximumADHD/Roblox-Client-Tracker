PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 GETIMPORT                        R2 K3 [Instance.new]
        4 LOADK                            R3 K4 ["Model"]
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R0 K0 ["Parent"]
        8 NAMECALL                         R3 R2 K5 ["GetExtentsSize"]
       10 CALL                             R3 1 1
       11 GETTABLEKS                       R5 R3 K6 ["X"]
       13 GETTABLEKS                       R6 R3 K7 ["Y"]
       15 GETTABLEKS                       R7 R3 K8 ["Z"]
       17 FASTCALL                         MATH_MIN ; [+2]
       18 GETIMPORT                        R4 K11 [math.min]
       20 CALL                             R4 3 1
       21 DIVRK                            R5 R12 K4 ["Model"]
       22 LOADN                            R6 1
       23 JUMPIFNOTLT                      R6 R5 ; [+5]
       25 MOVE                             R8 R5
       26 NAMECALL                         R6 R2 K13 ["ScaleTo"]
       28 CALL                             R6 2 0
       29 SETTABLEKS                       R1 R0 K0 ["Parent"]
       31 NAMECALL                         R6 R2 K14 ["Destroy"]
       33 CALL                             R6 1 0
       34 RETURN                           R0 0

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
        2 JUMPIFEQ                         R0 R1 ; [+6]
        4 GETUPVAL                         R0 2
        5 NAMECALL                         R0 R0 K0 ["Destroy"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R0 R1 K1 ["captureSnapshot"]
       12 GETUPVAL                         R1 4
       13 CALL                             R0 1 2
       14 GETUPVAL                         R2 2
       15 NAMECALL                         R2 R2 K0 ["Destroy"]
       17 CALL                             R2 1 0
       18 JUMPIFNOT                        R0 ; [+2]
       19 MOVE                             R2 R1
       20 JUMPIF                           R2 ; [+1]
       21 LOADK                            R2 K2 ["rbxasset://textures/ui/GuiImagePlaceholder.png"]
       22 GETUPVAL                         R3 5
       23 MOVE                             R4 R2
       24 CALL                             R3 1 0
       25 RETURN                           R0 0

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
       51 LOADN                            R7 128
       52 LOADN                            R8 128
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
       69 GETIMPORT                        R6 K36 [CFrame.Angles]
       71 LOADN                            R7 0
       72 MOVE                             R8 R2
       73 LOADN                            R9 0
       74 CALL                             R6 3 1
       75 LOADK                            R7 K37 [{4, 4, 4}]
       76 JUMPIFNOT                        R1 ; [+21]
       77 NAMECALL                         R8 R1 K38 ["Clone"]
       79 CALL                             R8 1 1
       80 LOADK                            R11 K39 ["PVInstance"]
       81 NAMECALL                         R9 R8 K40 ["IsA"]
       83 CALL                             R9 2 1
       84 JUMPIFNOT                        R9 ; [+11]
       85 MOVE                             R11 R6
       86 NAMECALL                         R9 R8 K41 ["PivotTo"]
       88 CALL                             R9 2 0
       89 LOADK                            R11 K42 ["BasePart"]
       90 NAMECALL                         R9 R8 K40 ["IsA"]
       92 CALL                             R9 2 1
       93 JUMPIFNOT                        R9 ; [+2]
       94 GETTABLEKS                       R7 R8 K28 ["Size"]
       96 SETTABLEKS                       R5 R8 K33 ["Parent"]
       98 GETIMPORT                        R8 K9 [Instance.new]
      100 LOADK                            R9 K43 ["Camera"]
      101 CALL                             R8 1 1
      102 GETTABLEKS                       R11 R8 K45 ["FieldOfView"]
      104 MOVE                             R12 R7
      105 GETTABLEKS                       R13 R12 K46 ["X"]
      107 GETTABLEKS                       R14 R12 K47 ["Y"]
      109 GETTABLEKS                       R15 R12 K48 ["Z"]
      111 FASTCALL3                        MATH_MAX R13 R14 R15
      113 MOVE                             R17 R13
      114 MOVE                             R18 R14
      115 MOVE                             R19 R15
      116 GETIMPORT                        R16 K50 [math.max]
      118 CALL                             R16 3 1
      119 FASTCALL1                        MATH_RAD R11 ; [+3]
      120 MOVE                             R21 R11
      121 GETIMPORT                        R20 K3 [math.rad]
      123 CALL                             R20 1 1
      124 DIVK                             R19 R20 K52 [2]
      125 FASTCALL1                        MATH_TAN R19 ; [+2]
      126 GETIMPORT                        R18 K54 [math.tan]
      128 CALL                             R18 1 1
      129 DIVRK                            R17 R51 K18 ["ScreenInsets"]
      130 MUL                              R18 R16 R17
      131 DIVK                             R19 R15 K52 [2]
      132 ADD                              R10 R18 R19
      133 MULK                             R9 R10 K44 [0.5]
      134 GETIMPORT                        R11 K36 [CFrame.Angles]
      136 LOADN                            R12 0
      137 LOADK                            R13 K44 [0.5]
      138 LOADN                            R14 0
      139 CALL                             R11 3 1
      140 GETIMPORT                        R12 K55 [CFrame.new]
      142 LOADN                            R13 0
      143 LOADN                            R14 0
      144 MOVE                             R15 R9
      145 CALL                             R12 3 1
      146 MUL                              R10 R11 R12
      147 GETIMPORT                        R11 K57 [CFrame.lookAt]
      149 GETTABLEKS                       R12 R10 K27 ["Position"]
      151 GETTABLEKS                       R13 R6 K27 ["Position"]
      153 CALL                             R11 2 1
      154 SETTABLEKS                       R11 R8 K34 ["CFrame"]
      156 SETTABLEKS                       R5 R8 K33 ["Parent"]
      158 SETTABLEKS                       R8 R5 K58 ["CurrentCamera"]
      160 SETTABLEKS                       R4 R5 K33 ["Parent"]
      162 GETUPVAL                         R11 0
      163 SETTABLEKS                       R11 R4 K33 ["Parent"]
      165 GETIMPORT                        R11 K61 [task.delay]
      167 LOADK                            R12 K44 [0.5]
      168 NEWCLOSURE                       R13 P0
      169 CAPTURE                          VAL R0
      170 CAPTURE                          UPVAL U1
      171 CAPTURE                          VAL R4
      172 CAPTURE                          UPVAL U2
      173 CAPTURE                          VAL R5
      174 CAPTURE                          VAL R3
      175 CALL                             R11 2 0
      176 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["UpdateMeshGenWidget"]
        2 DUPTABLE                         R4 K4 [{"guid", "index", "url"}]
        3 GETUPVAL                         R5 1
        4 SETTABLEKS                       R5 R4 K1 ["guid"]
        6 GETUPVAL                         R5 2
        7 SETTABLEKS                       R5 R4 K2 ["index"]
        9 SETTABLEKS                       R0 R4 K3 ["url"]
       11 NAMECALL                         R1 R1 K5 ["DisplayContent"]
       13 CALL                             R1 3 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 ADDK                             R2 R3 K0 [1]
        2 SETUPVAL                         R2 0
        3 LOADN                            R5 0
        4 LOADN                            R3 3
        5 LOADN                            R4 1
        6 FORNPREP                         R3
        7 GETUPVAL                         R6 1
        8 MOVE                             R7 R2
        9 MOVE                             R8 R1
       10 LOADN                            R10 90
       11 MUL                              R9 R10 R5
       12 NEWCLOSURE                       R10 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R5
       16 CALL                             R6 4 0
       17 FORNLOOP                         R3
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["LoadGeneratedMeshAsync"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R1
        8 CALL                             R2 2 0
        9 LOADB                            R3 0
       10 FASTCALL1                        TYPEOF R1 ; [+3]
       11 MOVE                             R5 R1
       12 GETIMPORT                        R4 K2 [typeof]
       14 CALL                             R4 1 1
       15 JUMPIFNOTEQKS                    R4 K3 ["Instance"] ; [+5]
       17 LOADK                            R5 K4 ["MeshPart"]
       18 NAMECALL                         R3 R1 K5 ["IsA"]
       20 CALL                             R3 2 1
       21 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       23 LOADK                            R4 K6 ["Expected result to be a MeshPart"]
       24 GETIMPORT                        R2 K8 [assert]
       26 CALL                             R2 2 0
       27 RETURN                           R1 1

PROTO_7:
        0 GETIMPORT                        R2 K2 [coroutine.status]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 1
        4 JUMPIFNOTEQKS                    R2 K3 ["dead"] ; [+2]
        6 RETURN                           R0 0
        7 GETIMPORT                        R2 K7 [Enum.IntermediateMeshGenerationResult.HighQualityMesh]
        9 JUMPIFNOTEQ                      R0 R2 ; [+15]
       11 GETUPVAL                         R2 1
       12 LOADK                            R4 K8 ["UpdateMeshGenWidget"]
       13 DUPTABLE                         R5 K11 [{"guid", "state"}]
       14 GETUPVAL                         R6 2
       15 SETTABLEKS                       R6 R5 K9 ["guid"]
       17 GETUPVAL                         R7 3
       18 GETTABLEKS                       R6 R7 K12 ["GeneratingTexture"]
       20 SETTABLEKS                       R6 R5 K10 ["state"]
       22 NAMECALL                         R2 R2 K13 ["DisplayContent"]
       24 CALL                             R2 3 0
       25 GETUPVAL                         R2 4
       26 MOVE                             R4 R1
       27 NAMECALL                         R2 R2 K14 ["LoadGeneratedMeshAsync"]
       29 CALL                             R2 2 1
       30 GETUPVAL                         R3 5
       31 GETUPVAL                         R4 2
       32 MOVE                             R5 R2
       33 CALL                             R3 2 0
       34 LOADB                            R4 0
       35 FASTCALL1                        TYPEOF R2 ; [+3]
       36 MOVE                             R6 R2
       37 GETIMPORT                        R5 K16 [typeof]
       39 CALL                             R5 1 1
       40 JUMPIFNOTEQKS                    R5 K17 ["Instance"] ; [+5]
       42 LOADK                            R6 K18 ["MeshPart"]
       43 NAMECALL                         R4 R2 K19 ["IsA"]
       45 CALL                             R4 2 1
       46 FASTCALL2K                       ASSERT R4 K20 ; [+4]
       48 LOADK                            R5 K20 ["Expected result to be a MeshPart"]
       49 GETIMPORT                        R3 K22 [assert]
       51 CALL                             R3 2 0
       52 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R2 K2 [coroutine.status]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 1
        4 JUMPIFNOTEQKS                    R2 K3 ["dead"] ; [+2]
        6 RETURN                           R0 0
        7 GETIMPORT                        R2 K7 [Enum.IntermediateMeshGenerationResult.HighQualityMesh]
        9 JUMPIFNOTEQ                      R0 R2 ; [+15]
       11 GETUPVAL                         R2 1
       12 LOADK                            R4 K8 ["UpdateMeshGenWidget"]
       13 DUPTABLE                         R5 K11 [{"guid", "state"}]
       14 GETUPVAL                         R6 2
       15 SETTABLEKS                       R6 R5 K9 ["guid"]
       17 GETUPVAL                         R7 3
       18 GETTABLEKS                       R6 R7 K12 ["GeneratingTexture"]
       20 SETTABLEKS                       R6 R5 K10 ["state"]
       22 NAMECALL                         R2 R2 K13 ["DisplayContent"]
       24 CALL                             R2 3 0
       25 GETUPVAL                         R2 4
       26 MOVE                             R4 R1
       27 NAMECALL                         R2 R2 K14 ["LoadGeneratedMeshAsync"]
       29 CALL                             R2 2 1
       30 GETUPVAL                         R3 5
       31 GETUPVAL                         R4 2
       32 MOVE                             R5 R2
       33 CALL                             R3 2 0
       34 LOADB                            R4 0
       35 FASTCALL1                        TYPEOF R2 ; [+3]
       36 MOVE                             R6 R2
       37 GETIMPORT                        R5 K16 [typeof]
       39 CALL                             R5 1 1
       40 JUMPIFNOTEQKS                    R5 K17 ["Instance"] ; [+5]
       42 LOADK                            R6 K18 ["MeshPart"]
       43 NAMECALL                         R4 R2 K19 ["IsA"]
       45 CALL                             R4 2 1
       46 FASTCALL2K                       ASSERT R4 K20 ; [+4]
       48 LOADK                            R5 K20 ["Expected result to be a MeshPart"]
       49 GETIMPORT                        R3 K22 [assert]
       51 CALL                             R3 2 0
       52 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R2 K2 [coroutine.running]
        2 CALL                             R2 0 1
        3 GETUPVAL                         R3 0
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+55]
        6 GETUPVAL                         R3 1
        7 GETIMPORT                        R5 K5 [Content.fromAssetId]
        9 LOADK                            R6 K6 [15564792192]
       10 CALL                             R5 1 -1
       11 NAMECALL                         R3 R3 K7 ["CreateEditableMeshAsync"]
       13 CALL                             R3 -1 1
       14 GETUPVAL                         R4 1
       15 GETIMPORT                        R6 K5 [Content.fromAssetId]
       17 LOADK                            R7 K8 [16745082454]
       18 CALL                             R6 1 -1
       19 NAMECALL                         R4 R4 K9 ["CreateEditableImageAsync"]
       21 CALL                             R4 -1 1
       22 GETUPVAL                         R5 1
       23 GETIMPORT                        R7 K11 [Content.fromObject]
       25 MOVE                             R8 R3
       26 CALL                             R7 1 -1
       27 NAMECALL                         R5 R5 K12 ["CreateMeshPartAsync"]
       29 CALL                             R5 -1 1
       30 GETIMPORT                        R6 K11 [Content.fromObject]
       32 MOVE                             R7 R4
       33 CALL                             R6 1 1
       34 SETTABLEKS                       R6 R5 K13 ["TextureContent"]
       36 GETUPVAL                         R6 2
       37 MOVE                             R7 R0
       38 MOVE                             R8 R5
       39 CALL                             R6 2 0
       40 LOADB                            R7 0
       41 FASTCALL1                        TYPEOF R5 ; [+3]
       42 MOVE                             R9 R5
       43 GETIMPORT                        R8 K15 [typeof]
       45 CALL                             R8 1 1
       46 JUMPIFNOTEQKS                    R8 K16 ["Instance"] ; [+5]
       48 LOADK                            R9 K17 ["MeshPart"]
       49 NAMECALL                         R7 R5 K18 ["IsA"]
       51 CALL                             R7 2 1
       52 FASTCALL2K                       ASSERT R7 K19 ; [+4]
       54 LOADK                            R8 K19 ["Expected result to be a MeshPart"]
       55 GETIMPORT                        R6 K21 [assert]
       57 CALL                             R6 2 0
       58 LOADK                            R6 K22 ["DEBUG_GENERATION_ID"]
       59 MOVE                             R7 R5
       60 RETURN                           R6 2
       61 NEWCLOSURE                       R3 P0
       62 CAPTURE                          UPVAL U3
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          VAL R0
       65 DUPTABLE                         R4 K24 [{"Prompt"}]
       66 SETTABLEKS                       R1 R4 K23 ["Prompt"]
       68 GETUPVAL                         R5 4
       69 NAMECALL                         R5 R5 K25 ["GetUserId"]
       71 CALL                             R5 1 1
       72 NEWTABLE                         R6 0 0
       74 GETUPVAL                         R7 5
       75 CALL                             R7 0 1
       76 JUMPIFNOT                        R7 ; [+53]
       77 GETUPVAL                         R7 3
       78 MOVE                             R9 R4
       79 MOVE                             R10 R5
       80 MOVE                             R11 R6
       81 NEWCLOSURE                       R12 P1
       82 CAPTURE                          VAL R2
       83 CAPTURE                          UPVAL U6
       84 CAPTURE                          VAL R0
       85 CAPTURE                          UPVAL U7
       86 CAPTURE                          UPVAL U3
       87 CAPTURE                          UPVAL U2
       88 NAMECALL                         R7 R7 K26 ["InternalGenerateMeshAsync"]
       90 CALL                             R7 5 3
       91 JUMPIF                           R7 ; [+8]
       92 GETIMPORT                        R10 K28 [error]
       94 MOVE                             R12 R8
       95 LOADK                            R13 K29 [":"]
       96 MOVE                             R14 R9
       97 CONCAT                           R11 R12 R14
       98 LOADN                            R12 0
       99 CALL                             R10 2 0
      100 MOVE                             R10 R8
      101 GETUPVAL                         R12 3
      102 MOVE                             R14 R8
      103 NAMECALL                         R12 R12 K30 ["LoadGeneratedMeshAsync"]
      105 CALL                             R12 2 1
      106 GETUPVAL                         R13 2
      107 MOVE                             R14 R0
      108 MOVE                             R15 R12
      109 CALL                             R13 2 0
      110 LOADB                            R14 0
      111 FASTCALL1                        TYPEOF R12 ; [+3]
      112 MOVE                             R16 R12
      113 GETIMPORT                        R15 K15 [typeof]
      115 CALL                             R15 1 1
      116 JUMPIFNOTEQKS                    R15 K16 ["Instance"] ; [+5]
      118 LOADK                            R16 K17 ["MeshPart"]
      119 NAMECALL                         R14 R12 K18 ["IsA"]
      121 CALL                             R14 2 1
      122 FASTCALL2K                       ASSERT R14 K19 ; [+4]
      124 LOADK                            R15 K19 ["Expected result to be a MeshPart"]
      125 GETIMPORT                        R13 K21 [assert]
      127 CALL                             R13 2 0
      128 MOVE                             R11 R12
      129 RETURN                           R10 2
      130 GETUPVAL                         R7 3
      131 MOVE                             R9 R4
      132 MOVE                             R10 R5
      133 MOVE                             R11 R6
      134 NEWCLOSURE                       R12 P2
      135 CAPTURE                          VAL R2
      136 CAPTURE                          UPVAL U6
      137 CAPTURE                          VAL R0
      138 CAPTURE                          UPVAL U7
      139 CAPTURE                          UPVAL U3
      140 CAPTURE                          UPVAL U2
      141 NAMECALL                         R7 R7 K26 ["InternalGenerateMeshAsync"]
      143 CALL                             R7 5 1
      144 MOVE                             R8 R7
      145 GETUPVAL                         R10 3
      146 MOVE                             R12 R7
      147 NAMECALL                         R10 R10 K30 ["LoadGeneratedMeshAsync"]
      149 CALL                             R10 2 1
      150 GETUPVAL                         R11 2
      151 MOVE                             R12 R0
      152 MOVE                             R13 R10
      153 CALL                             R11 2 0
      154 LOADB                            R12 0
      155 FASTCALL1                        TYPEOF R10 ; [+3]
      156 MOVE                             R14 R10
      157 GETIMPORT                        R13 K15 [typeof]
      159 CALL                             R13 1 1
      160 JUMPIFNOTEQKS                    R13 K16 ["Instance"] ; [+5]
      162 LOADK                            R14 K17 ["MeshPart"]
      163 NAMECALL                         R12 R10 K18 ["IsA"]
      165 CALL                             R12 2 1
      166 FASTCALL2K                       ASSERT R12 K19 ; [+4]
      168 LOADK                            R13 K19 ["Expected result to be a MeshPart"]
      169 GETIMPORT                        R11 K21 [assert]
      171 CALL                             R11 2 0
      172 MOVE                             R9 R10
      173 RETURN                           R8 2

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETIMPORT                        R4 K3 [Enum.AssetType.Mesh]
        4 DUPTABLE                         R5 K5 [{"Name"}]
        5 LOADK                            R6 K6 ["GeneratedMesh"]
        6 SETTABLEKS                       R6 R5 K4 ["Name"]
        8 NAMECALL                         R1 R1 K7 ["CreateAssetAsync"]
       10 CALL                             R1 4 2
       11 GETIMPORT                        R3 K10 [Enum.CreateAssetResult.Success]
       13 JUMPIFEQ                         R1 R3 ; [+11]
       15 GETIMPORT                        R3 K12 [error]
       17 LOADK                            R5 K13 ["createMeshAsset failed: "]
       18 FASTCALL1                        TOSTRING R2 ; [+3]
       19 MOVE                             R7 R2
       20 GETIMPORT                        R6 K15 [tostring]
       22 CALL                             R6 1 1
       23 CONCAT                           R4 R5 R6
       24 CALL                             R3 1 0
       25 FASTCALL1                        TONUMBER R2 ; [+3]
       26 MOVE                             R4 R2
       27 GETIMPORT                        R3 K17 [tonumber]
       29 CALL                             R3 1 1
       30 FASTCALL2K                       ASSERT R3 K18 ; [+5]
       32 MOVE                             R5 R3
       33 LOADK                            R6 K18 ["createMeshAsset failed: Failed to parse meshId"]
       34 GETIMPORT                        R4 K20 [assert]
       36 CALL                             R4 2 0
       37 RETURN                           R3 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETIMPORT                        R4 K3 [Enum.AssetType.Image]
        4 DUPTABLE                         R5 K5 [{"Name"}]
        5 LOADK                            R6 K6 ["GeneratedImage"]
        6 SETTABLEKS                       R6 R5 K4 ["Name"]
        8 NAMECALL                         R1 R1 K7 ["CreateAssetAsync"]
       10 CALL                             R1 4 2
       11 GETIMPORT                        R3 K10 [Enum.CreateAssetResult.Success]
       13 JUMPIFEQ                         R1 R3 ; [+11]
       15 GETIMPORT                        R3 K12 [error]
       17 LOADK                            R5 K13 ["createImageAsset failed: "]
       18 FASTCALL1                        TOSTRING R2 ; [+3]
       19 MOVE                             R7 R2
       20 GETIMPORT                        R6 K15 [tostring]
       22 CALL                             R6 1 1
       23 CONCAT                           R4 R5 R6
       24 CALL                             R3 1 0
       25 FASTCALL1                        TONUMBER R2 ; [+3]
       26 MOVE                             R4 R2
       27 GETIMPORT                        R3 K17 [tonumber]
       29 CALL                             R3 1 1
       30 FASTCALL2K                       ASSERT R3 K18 ; [+5]
       32 MOVE                             R5 R3
       33 LOADK                            R6 K18 ["createImageAsset failed: Failed to parse textureId"]
       34 GETIMPORT                        R4 K20 [assert]
       36 CALL                             R4 2 0
       37 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETIMPORT                        R5 K2 [Content.fromAssetId]
        3 MOVE                             R6 R1
        4 CALL                             R5 1 -1
        5 NAMECALL                         R3 R3 K3 ["CreateMeshPartAsync"]
        7 CALL                             R3 -1 1
        8 LOADK                            R5 K4 ["rbxassetid://%*"]
        9 MOVE                             R7 R2
       10 NAMECALL                         R5 R5 K5 ["format"]
       12 CALL                             R5 2 1
       13 MOVE                             R4 R5
       14 SETTABLEKS                       R4 R3 K6 ["TextureID"]
       16 LOADK                            R6 K7 ["RBX_AI_GENERATED"]
       17 LOADB                            R7 1
       18 NAMECALL                         R4 R3 K8 ["SetAttribute"]
       20 CALL                             R4 3 0
       21 LOADK                            R6 K9 ["RBX_AI_GENERATION_TYPE"]
       22 LOADK                            R7 K10 ["GenerateMesh"]
       23 NAMECALL                         R4 R3 K8 ["SetAttribute"]
       25 CALL                             R4 3 0
       26 LOADK                            R6 K11 ["RBX_AI_GENERATION_ID"]
       27 MOVE                             R7 R0
       28 NAMECALL                         R4 R3 K8 ["SetAttribute"]
       30 CALL                             R4 3 0
       31 RETURN                           R3 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["finalMeshPart"]
        2 JUMPIF                           R1 ; [+40]
        3 GETTABLEKS                       R2 R0 K1 ["meshId"]
        5 GETTABLEKS                       R3 R0 K2 ["textureId"]
        7 FASTCALL2K                       ASSERT R2 K3 ; [+5]
        9 MOVE                             R5 R2
       10 LOADK                            R6 K3 ["Failed to create mesh asset"]
       11 GETIMPORT                        R4 K5 [assert]
       13 CALL                             R4 2 0
       14 FASTCALL2K                       ASSERT R3 K6 ; [+5]
       16 MOVE                             R5 R3
       17 LOADK                            R6 K6 ["Failed to create texture asset"]
       18 GETIMPORT                        R4 K5 [assert]
       20 CALL                             R4 2 0
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R5 R0 K7 ["generationId"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R3
       26 CALL                             R4 3 1
       27 MOVE                             R1 R4
       28 FASTCALL2K                       ASSERT R1 K8 ; [+5]
       30 MOVE                             R5 R1
       31 LOADK                            R6 K8 ["Failed to create MeshPart"]
       32 GETIMPORT                        R4 K5 [assert]
       34 CALL                             R4 2 0
       35 LOADB                            R4 1
       36 SETTABLEKS                       R4 R1 K9 ["Anchored"]
       38 GETUPVAL                         R4 1
       39 MOVE                             R5 R1
       40 CALL                             R4 1 0
       41 SETTABLEKS                       R1 R0 K0 ["finalMeshPart"]
       43 FASTCALL2K                       ASSERT R1 K8 ; [+5]
       45 MOVE                             R3 R1
       46 LOADK                            R4 K8 ["Failed to create MeshPart"]
       47 GETIMPORT                        R2 K5 [assert]
       49 CALL                             R2 2 0
       50 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["meshId"]
        2 JUMPIFNOT                        R3 ; [+2]
        3 GETTABLEKS                       R3 R0 K1 ["textureId"]
        5 NOT                              R2 R3
        6 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        8 LOADK                            R3 K2 ["Assets already published"]
        9 GETIMPORT                        R1 K4 [assert]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R1 R0 K5 ["editableMeshPart"]
       14 FASTCALL2K                       ASSERT R1 K6 ; [+5]
       16 MOVE                             R3 R1
       17 LOADK                            R4 K6 ["EditableMeshPart not found"]
       18 GETIMPORT                        R2 K4 [assert]
       20 CALL                             R2 2 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R4 R1 K7 ["MeshContent"]
       24 GETTABLEKS                       R3 R4 K8 ["Object"]
       26 CALL                             R2 1 1
       27 FASTCALL2K                       ASSERT R2 K9 ; [+5]
       29 MOVE                             R4 R2
       30 LOADK                            R5 K9 ["Failed to create mesh asset"]
       31 GETIMPORT                        R3 K4 [assert]
       33 CALL                             R3 2 0
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R5 R1 K10 ["TextureContent"]
       37 GETTABLEKS                       R4 R5 K8 ["Object"]
       39 CALL                             R3 1 1
       40 SETTABLEKS                       R2 R0 K0 ["meshId"]
       42 SETTABLEKS                       R3 R0 K1 ["textureId"]
       44 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R3 R0 K0 ["meshId"]
        3 JUMPIFNOT                        R3 ; [+2]
        4 GETTABLEKS                       R3 R0 K1 ["textureId"]
        6 NOT                              R2 R3
        7 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        9 LOADK                            R3 K2 ["Assets already published"]
       10 GETIMPORT                        R1 K4 [assert]
       12 CALL                             R1 2 0
       13 GETTABLEKS                       R1 R0 K5 ["editableMeshPart"]
       15 FASTCALL2K                       ASSERT R1 K6 ; [+5]
       17 MOVE                             R3 R1
       18 LOADK                            R4 K6 ["EditableMeshPart not found"]
       19 GETIMPORT                        R2 K4 [assert]
       21 CALL                             R2 2 0
       22 GETUPVAL                         R2 1
       23 GETTABLEKS                       R4 R1 K7 ["MeshContent"]
       25 GETTABLEKS                       R3 R4 K8 ["Object"]
       27 CALL                             R2 1 1
       28 FASTCALL2K                       ASSERT R2 K9 ; [+5]
       30 MOVE                             R4 R2
       31 LOADK                            R5 K9 ["Failed to create mesh asset"]
       32 GETIMPORT                        R3 K4 [assert]
       34 CALL                             R3 2 0
       35 GETUPVAL                         R3 2
       36 GETTABLEKS                       R5 R1 K10 ["TextureContent"]
       38 GETTABLEKS                       R4 R5 K8 ["Object"]
       40 CALL                             R3 1 1
       41 SETTABLEKS                       R2 R0 K0 ["meshId"]
       43 SETTABLEKS                       R3 R0 K1 ["textureId"]
       45 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 2
        7 GETUPVAL                         R3 2
        8 CALL                             R3 0 1
        9 JUMPIF                           R3 ; [+17]
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R5 R0 K2 ["requestId"]
       13 GETTABLEKS                       R6 R0 K3 ["generationId"]
       15 MOVE                             R7 R1
       16 JUMPIF                           R1 ; [+2]
       17 MOVE                             R8 R2
       18 JUMP                             ; [+1]
       19 LOADK                            R8 K4 [""]
       20 GETTABLEKS                       R9 R0 K5 ["meshId"]
       22 GETTABLEKS                       R10 R0 K6 ["textureId"]
       24 NAMECALL                         R3 R3 K7 ["SendMeshGenPublishedAssetsTelemetry"]
       26 CALL                             R3 7 0
       27 JUMPIF                           R1 ; [+5]
       28 GETIMPORT                        R3 K9 [error]
       30 MOVE                             R4 R2
       31 LOADN                            R5 0
       32 CALL                             R3 2 0
       33 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["requestId"]
        2 GETTABLEKS                       R2 R0 K1 ["prompt"]
        4 GETTABLEKS                       R5 R0 K4 ["insertionCounter"]
        6 ORK                              R4 R5 K3 [0]
        7 ADDK                             R3 R4 K2 [1]
        8 SETTABLEKS                       R3 R0 K4 ["insertionCounter"]
       10 LOADK                            R5 K5 ["Insert AI Generated MeshPart %*"]
       11 MOVE                             R7 R3
       12 NAMECALL                         R5 R5 K6 ["format"]
       14 CALL                             R5 2 1
       15 MOVE                             R4 R5
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K7 ["StartRecordingActions"]
       19 MOVE                             R6 R1
       20 MOVE                             R7 R4
       21 CALL                             R5 2 0
       22 GETTABLEKS                       R6 R0 K8 ["finalMeshPart"]
       24 JUMPIF                           R6 ; [+40]
       25 GETTABLEKS                       R7 R0 K9 ["meshId"]
       27 GETTABLEKS                       R8 R0 K10 ["textureId"]
       29 FASTCALL2K                       ASSERT R7 K11 ; [+5]
       31 MOVE                             R10 R7
       32 LOADK                            R11 K11 ["Failed to create mesh asset"]
       33 GETIMPORT                        R9 K13 [assert]
       35 CALL                             R9 2 0
       36 FASTCALL2K                       ASSERT R8 K14 ; [+5]
       38 MOVE                             R10 R8
       39 LOADK                            R11 K14 ["Failed to create texture asset"]
       40 GETIMPORT                        R9 K13 [assert]
       42 CALL                             R9 2 0
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R10 R0 K15 ["generationId"]
       46 MOVE                             R11 R7
       47 MOVE                             R12 R8
       48 CALL                             R9 3 1
       49 MOVE                             R6 R9
       50 FASTCALL2K                       ASSERT R6 K16 ; [+5]
       52 MOVE                             R10 R6
       53 LOADK                            R11 K16 ["Failed to create MeshPart"]
       54 GETIMPORT                        R9 K13 [assert]
       56 CALL                             R9 2 0
       57 LOADB                            R9 1
       58 SETTABLEKS                       R9 R6 K17 ["Anchored"]
       60 GETUPVAL                         R9 2
       61 MOVE                             R10 R6
       62 CALL                             R9 1 0
       63 SETTABLEKS                       R6 R0 K8 ["finalMeshPart"]
       65 FASTCALL2K                       ASSERT R6 K16 ; [+5]
       67 MOVE                             R8 R6
       68 LOADK                            R9 K16 ["Failed to create MeshPart"]
       69 GETIMPORT                        R7 K13 [assert]
       71 CALL                             R7 2 0
       72 MOVE                             R5 R6
       73 NAMECALL                         R5 R5 K18 ["Clone"]
       75 CALL                             R5 1 1
       76 DUPTABLE                         R6 K22 [{"instanceId", "properties", "direct_instance"}]
       77 NAMECALL                         R7 R5 K23 ["GetDebugId"]
       79 CALL                             R7 1 1
       80 SETTABLEKS                       R7 R6 K19 ["instanceId"]
       82 DUPTABLE                         R7 K27 [{"instanceName", "positionOrigin", "position"}]
       83 SETTABLEKS                       R2 R7 K24 ["instanceName"]
       85 LOADK                            R8 K28 ["currentCamera"]
       86 SETTABLEKS                       R8 R7 K25 ["positionOrigin"]
       88 DUPTABLE                         R8 K31 [{"x", "z"}]
       89 LOADN                            R9 0
       90 SETTABLEKS                       R9 R8 K29 ["x"]
       92 LOADN                            R9 0
       93 SETTABLEKS                       R9 R8 K30 ["z"]
       95 SETTABLEKS                       R8 R7 K26 ["position"]
       97 SETTABLEKS                       R7 R6 K20 ["properties"]
       99 SETTABLEKS                       R5 R6 K21 ["direct_instance"]
      101 GETUPVAL                         R7 3
      102 MOVE                             R9 R1
      103 LOADK                            R10 K32 ["SetProperty"]
      104 MOVE                             R11 R6
      105 NAMECALL                         R7 R7 K33 ["ExecuteCommandAsync"]
      107 CALL                             R7 4 0
      108 GETIMPORT                        R7 K35 [workspace]
      110 SETTABLEKS                       R7 R5 K36 ["Parent"]
      112 GETUPVAL                         R8 0
      113 GETTABLEKS                       R7 R8 K37 ["EndRecordingActions"]
      115 MOVE                             R8 R1
      116 MOVE                             R9 R4
      117 CALL                             R7 2 0
      118 GETUPVAL                         R8 4
      119 GETTABLEKS                       R7 R8 K38 ["modifyChatWithInstanceLink"]
      121 MOVE                             R8 R1
      122 MOVE                             R9 R5
      123 LOADK                            R10 K39 ["added"]
      124 GETTABLEKS                       R11 R0 K15 ["generationId"]
      126 CALL                             R7 4 0
      127 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_19:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 1
        8 JUMPIF                           R3 ; [+13]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R5 R0 K2 ["requestId"]
       12 GETTABLEKS                       R6 R0 K3 ["generationId"]
       14 MOVE                             R7 R1
       15 JUMPIF                           R1 ; [+2]
       16 MOVE                             R8 R2
       17 JUMP                             ; [+1]
       18 LOADK                            R8 K4 [""]
       19 NAMECALL                         R3 R3 K5 ["SendMeshGenMeshInsertedTelemetry"]
       21 CALL                             R3 5 0
       22 JUMPIF                           R1 ; [+5]
       23 GETIMPORT                        R3 K7 [error]
       25 MOVE                             R4 R2
       26 LOADN                            R5 0
       27 CALL                             R3 2 0
       28 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["UpdateMeshGenWidget"]
        2 DUPTABLE                         R3 K3 [{"guid", "state"}]
        3 GETUPVAL                         R4 1
        4 SETTABLEKS                       R4 R3 K1 ["guid"]
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R4 R5 K4 ["GeneratingMesh"]
        9 SETTABLEKS                       R4 R3 K2 ["state"]
       11 NAMECALL                         R0 R0 K5 ["DisplayContent"]
       13 CALL                             R0 3 0
       14 GETIMPORT                        R0 K7 [pcall]
       16 NEWCLOSURE                       R1 P0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U4
       20 CALL                             R0 1 3
       21 JUMPIF                           R0 ; [+88]
       22 GETUPVAL                         R3 5
       23 CALL                             R3 0 1
       24 JUMPIFNOT                        R3 ; [+42]
       25 GETIMPORT                        R3 K10 [string.find]
       27 MOVE                             R4 R1
       28 LOADK                            R5 K11 [":"]
       29 CALL                             R3 2 1
       30 LOADNIL                          R4
       31 JUMPIFNOT                        R3 ; [+17]
       32 LOADN                            R7 1
       33 SUBK                             R8 R3 K12 [1]
       34 FASTCALL3                        STRING_SUB R1 R7 R8
       36 MOVE                             R6 R1
       37 GETIMPORT                        R5 K14 [string.sub]
       39 CALL                             R5 3 1
       40 MOVE                             R4 R5
       41 ADDK                             R7 R3 K12 [1]
       42 FASTCALL2                        STRING_SUB R1 R7 ; [+4]
       44 MOVE                             R6 R1
       45 GETIMPORT                        R5 K14 [string.sub]
       47 CALL                             R5 2 1
       48 MOVE                             R1 R5
       49 DUPTABLE                         R5 K19 [{"generationId", "requestId", "prompt", "guid", "editableMeshPart"}]
       50 ORK                              R6 R4 K20 [""]
       51 SETTABLEKS                       R6 R5 K15 ["generationId"]
       53 GETUPVAL                         R7 7
       54 GETTABLEKS                       R6 R7 K16 ["requestId"]
       56 SETTABLEKS                       R6 R5 K16 ["requestId"]
       58 GETUPVAL                         R6 4
       59 SETTABLEKS                       R6 R5 K17 ["prompt"]
       61 GETUPVAL                         R6 1
       62 SETTABLEKS                       R6 R5 K1 ["guid"]
       64 SETTABLEKS                       R2 R5 K18 ["editableMeshPart"]
       66 SETUPVAL                         R5 6
       67 GETIMPORT                        R3 K10 [string.find]
       69 GETIMPORT                        R4 K22 [string.lower]
       71 MOVE                             R5 R1
       72 CALL                             R4 1 1
       73 LOADK                            R5 K23 ["moderat"]
       74 CALL                             R3 2 1
       75 JUMPIFNOT                        R3 ; [+15]
       76 GETUPVAL                         R3 0
       77 LOADK                            R5 K0 ["UpdateMeshGenWidget"]
       78 DUPTABLE                         R6 K3 [{"guid", "state"}]
       79 GETUPVAL                         R7 1
       80 SETTABLEKS                       R7 R6 K1 ["guid"]
       82 GETUPVAL                         R8 2
       83 GETTABLEKS                       R7 R8 K24 ["GenerationModerated"]
       85 SETTABLEKS                       R7 R6 K2 ["state"]
       87 NAMECALL                         R3 R3 K5 ["DisplayContent"]
       89 CALL                             R3 3 0
       90 JUMP                             ; [+14]
       91 GETUPVAL                         R3 0
       92 LOADK                            R5 K0 ["UpdateMeshGenWidget"]
       93 DUPTABLE                         R6 K3 [{"guid", "state"}]
       94 GETUPVAL                         R7 1
       95 SETTABLEKS                       R7 R6 K1 ["guid"]
       97 GETUPVAL                         R8 2
       98 GETTABLEKS                       R7 R8 K25 ["GenerationFailed"]
      100 SETTABLEKS                       R7 R6 K2 ["state"]
      102 NAMECALL                         R3 R3 K5 ["DisplayContent"]
      104 CALL                             R3 3 0
      105 GETIMPORT                        R3 K27 [error]
      107 MOVE                             R4 R1
      108 LOADN                            R5 0
      109 CALL                             R3 2 0
      110 LOADNIL                          R3
      111 SETUPVAL                         R3 8
      112 DUPTABLE                         R3 K28 [{"requestId", "prompt", "guid", "generationId", "editableMeshPart"}]
      113 GETUPVAL                         R5 7
      114 GETTABLEKS                       R4 R5 K16 ["requestId"]
      116 SETTABLEKS                       R4 R3 K16 ["requestId"]
      118 GETUPVAL                         R4 4
      119 SETTABLEKS                       R4 R3 K17 ["prompt"]
      121 GETUPVAL                         R4 1
      122 SETTABLEKS                       R4 R3 K1 ["guid"]
      124 SETTABLEKS                       R1 R3 K15 ["generationId"]
      126 SETTABLEKS                       R2 R3 K18 ["editableMeshPart"]
      128 SETUPVAL                         R3 6
      129 GETUPVAL                         R3 0
      130 LOADK                            R5 K0 ["UpdateMeshGenWidget"]
      131 DUPTABLE                         R6 K3 [{"guid", "state"}]
      132 GETUPVAL                         R7 1
      133 SETTABLEKS                       R7 R6 K1 ["guid"]
      135 GETUPVAL                         R8 2
      136 GETTABLEKS                       R7 R8 K29 ["Generated"]
      138 SETTABLEKS                       R7 R6 K2 ["state"]
      140 NAMECALL                         R3 R3 K5 ["DisplayContent"]
      142 CALL                             R3 3 0
      143 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 NOT                              R1 R2
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["Generation already succeeded"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 GETIMPORT                        R0 K4 [pcall]
       10 NEWCLOSURE                       R1 P0
       11 CAPTURE                          UPVAL U1
       12 CALL                             R0 1 2
       13 GETUPVAL                         R2 2
       14 CALL                             R2 0 1
       15 JUMPIF                           R2 ; [+21]
       16 GETUPVAL                         R2 3
       17 GETUPVAL                         R6 4
       18 GETTABLEKS                       R5 R6 K6 ["requestId"]
       20 ORK                              R4 R5 K5 [""]
       21 GETUPVAL                         R6 0
       22 JUMPIFNOT                        R6 ; [+4]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R5 R6 K7 ["generationId"]
       26 JUMP                             ; [+1]
       27 LOADK                            R5 K5 [""]
       28 MOVE                             R6 R0
       29 JUMPIF                           R0 ; [+2]
       30 MOVE                             R7 R1
       31 JUMP                             ; [+1]
       32 LOADK                            R7 K5 [""]
       33 GETUPVAL                         R8 5
       34 NAMECALL                         R2 R2 K8 ["SendMeshGenCompletedTelemetry"]
       36 CALL                             R2 6 0
       37 JUMPIF                           R0 ; [+5]
       38 GETIMPORT                        R2 K10 [error]
       40 MOVE                             R3 R1
       41 LOADN                            R4 0
       42 CALL                             R2 2 0
       43 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Generation thread not found"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETIMPORT                        R0 K5 [task.cancel]
        9 GETUPVAL                         R1 0
       10 CALL                             R0 1 0
       11 LOADNIL                          R0
       12 SETUPVAL                         R0 0
       13 GETUPVAL                         R0 1
       14 LOADK                            R2 K6 ["UpdateMeshGenWidget"]
       15 DUPTABLE                         R3 K9 [{"guid", "state"}]
       16 GETUPVAL                         R4 2
       17 SETTABLEKS                       R4 R3 K7 ["guid"]
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R4 R5 K10 ["GenerationCanceled"]
       22 SETTABLEKS                       R4 R3 K8 ["state"]
       24 NAMECALL                         R0 R0 K11 ["DisplayContent"]
       26 CALL                             R0 3 0
       27 RETURN                           R0 0

PROTO_25:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 GETUPVAL                         R1 1
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Generation data not found"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Generation data not found"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 1
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["arguments"]
        2 GETTABLEKS                       R2 R1 K1 ["prompt"]
        4 FASTCALL1                        TYPE R2 ; [+3]
        5 MOVE                             R6 R2
        6 GETIMPORT                        R5 K3 [type]
        8 CALL                             R5 1 1
        9 JUMPIFEQKS                       R5 K4 ["string"] ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       15 LOADK                            R5 K5 ["Bad request.prompt"]
       16 GETIMPORT                        R3 K7 [assert]
       18 CALL                             R3 2 0
       19 LENGTH                           R5 R2
       20 LOADN                            R6 0
       21 JUMPIFLT                         R6 R5 ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 FASTCALL2K                       ASSERT R4 K8 ; [+4]
       27 LOADK                            R5 K8 ["Prompt cannot be empty"]
       28 GETIMPORT                        R3 K7 [assert]
       30 CALL                             R3 2 0
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K9 ["streamText"]
       34 GETTABLEKS                       R4 R0 K10 ["requestId"]
       36 GETUPVAL                         R5 1
       37 LOADK                            R7 K11 ["GenerateMesh"]
       38 LOADK                            R8 K12 ["InitialResponse"]
       39 NAMECALL                         R5 R5 K13 ["getText"]
       41 CALL                             R5 3 -1
       42 CALL                             R3 -1 0
       43 GETUPVAL                         R3 2
       44 CALL                             R3 0 1
       45 JUMPIF                           R3 ; [+4]
       46 GETUPVAL                         R3 3
       47 NAMECALL                         R3 R3 K14 ["SendMeshGenActivatedTelemetry"]
       49 CALL                             R3 1 0
       50 GETUPVAL                         R3 4
       51 NAMECALL                         R3 R3 K15 ["GenerateGUID"]
       53 CALL                             R3 1 1
       54 LOADNIL                          R4
       55 LOADNIL                          R5
       56 NEWCLOSURE                       R6 P0
       57 CAPTURE                          UPVAL U5
       58 CAPTURE                          VAL R3
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          UPVAL U7
       61 CAPTURE                          VAL R2
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          REF R4
       64 CAPTURE                          VAL R0
       65 CAPTURE                          REF R5
       66 NEWCLOSURE                       R7 P1
       67 CAPTURE                          REF R4
       68 CAPTURE                          VAL R6
       69 CAPTURE                          UPVAL U2
       70 CAPTURE                          UPVAL U3
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R2
       73 NEWCLOSURE                       R8 P2
       74 CAPTURE                          REF R5
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          VAL R3
       77 CAPTURE                          UPVAL U6
       78 GETUPVAL                         R9 5
       79 LOADK                            R11 K16 ["AddMeshGenWidget"]
       80 DUPTABLE                         R12 K23 [{"guid", "previewCount", "runGeneration", "cancelGeneration", "publishAssets", "insertMeshPart"}]
       81 SETTABLEKS                       R3 R12 K17 ["guid"]
       83 LOADN                            R13 4
       84 SETTABLEKS                       R13 R12 K18 ["previewCount"]
       86 NEWCLOSURE                       R13 P3
       87 CAPTURE                          REF R5
       88 CAPTURE                          VAL R7
       89 SETTABLEKS                       R13 R12 K19 ["runGeneration"]
       91 SETTABLEKS                       R8 R12 K20 ["cancelGeneration"]
       93 NEWCLOSURE                       R13 P4
       94 CAPTURE                          REF R4
       95 CAPTURE                          UPVAL U9
       96 SETTABLEKS                       R13 R12 K21 ["publishAssets"]
       98 NEWCLOSURE                       R13 P5
       99 CAPTURE                          REF R4
      100 CAPTURE                          UPVAL U10
      101 SETTABLEKS                       R13 R12 K22 ["insertMeshPart"]
      103 NAMECALL                         R9 R9 K24 ["DisplayContent"]
      105 CALL                             R9 3 0
      106 GETIMPORT                        R9 K27 [task.spawn]
      108 MOVE                             R10 R7
      109 CALL                             R9 1 1
      110 MOVE                             R5 R9
      111 CLOSEUPVALS                      R4
      112 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StreamingServiceDispatcherRegistry"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["Commands"]
       13 GETTABLEKS                       R3 R4 K8 ["BuilderCommands"]
       15 GETTABLEKS                       R2 R3 K9 ["BuilderNameMap"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K10 ["Utils"]
       24 GETTABLEKS                       R3 R4 K11 ["CliAdapter"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R6 K12 ["Localization"]
       33 GETTABLEKS                       R4 R5 K12 ["Localization"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R6 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R6 K13 ["Types"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R8 R0 K6 ["Src"]
       47 GETTABLEKS                       R7 R8 K10 ["Utils"]
       49 GETTABLEKS                       R6 R7 K10 ["Utils"]
       51 CALL                             R5 1 1
       52 GETTABLEKS                       R6 R2 K14 ["GetService"]
       54 LOADK                            R7 K15 ["AssetService"]
       55 CALL                             R6 1 1
       56 GETTABLEKS                       R7 R2 K14 ["GetService"]
       58 LOADK                            R8 K16 ["ChatbotUIService"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R2 K14 ["GetService"]
       62 LOADK                            R9 K17 ["ConversationalAIAcceptanceService"]
       63 CALL                             R8 1 1
       64 GETTABLEKS                       R9 R2 K14 ["GetService"]
       66 LOADK                            R10 K18 ["CoreGui"]
       67 CALL                             R9 1 1
       68 GETTABLEKS                       R10 R2 K14 ["GetService"]
       70 LOADK                            R11 K19 ["GenerationService"]
       71 CALL                             R10 1 1
       72 GETTABLEKS                       R11 R2 K14 ["GetService"]
       74 LOADK                            R12 K20 ["HttpService"]
       75 CALL                             R11 1 1
       76 GETTABLEKS                       R12 R2 K14 ["GetService"]
       78 LOADK                            R13 K21 ["StreamingService"]
       79 CALL                             R12 1 1
       80 GETTABLEKS                       R13 R2 K14 ["GetService"]
       82 LOADK                            R14 K22 ["StudioService"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R15 K5 [require]
       86 GETTABLEKS                       R18 R0 K6 ["Src"]
       88 GETTABLEKS                       R17 R18 K23 ["Flags"]
       90 GETTABLEKS                       R16 R17 K24 ["FFlagConvAIMeshGen"]
       92 CALL                             R15 1 1
       93 GETTABLEKS                       R14 R15 K25 ["Get"]
       95 GETIMPORT                        R16 K5 [require]
       97 GETTABLEKS                       R19 R0 K6 ["Src"]
       99 GETTABLEKS                       R18 R19 K23 ["Flags"]
      101 GETTABLEKS                       R17 R18 K26 ["FFlagDebugConvAIBypassGenerationService"]
      103 CALL                             R16 1 1
      104 GETTABLEKS                       R15 R16 K25 ["Get"]
      106 GETIMPORT                        R17 K5 [require]
      108 GETTABLEKS                       R20 R0 K6 ["Src"]
      110 GETTABLEKS                       R19 R20 K23 ["Flags"]
      112 GETTABLEKS                       R18 R19 K27 ["FFlagCLI_157095_GenerationServiceGenerationIdOnError"]
      114 CALL                             R17 1 1
      115 GETTABLEKS                       R16 R17 K25 ["Get"]
      117 DUPTABLE                         R17 K38 [{"GeneratingMesh", "GeneratingTexture", "GenerationFailed", "GenerationModerated", "GenerationCanceled", "Generated", "Publishing", "PublishFailed", "Published", "Inserting"}]
      118 LOADN                            R18 0
      119 SETTABLEKS                       R18 R17 K28 ["GeneratingMesh"]
      121 LOADN                            R18 1
      122 SETTABLEKS                       R18 R17 K29 ["GeneratingTexture"]
      124 LOADN                            R18 2
      125 SETTABLEKS                       R18 R17 K30 ["GenerationFailed"]
      127 LOADN                            R18 3
      128 SETTABLEKS                       R18 R17 K31 ["GenerationModerated"]
      130 LOADN                            R18 4
      131 SETTABLEKS                       R18 R17 K32 ["GenerationCanceled"]
      133 LOADN                            R18 5
      134 SETTABLEKS                       R18 R17 K33 ["Generated"]
      136 LOADN                            R18 6
      137 SETTABLEKS                       R18 R17 K34 ["Publishing"]
      139 LOADN                            R18 7
      140 SETTABLEKS                       R18 R17 K35 ["PublishFailed"]
      142 LOADN                            R18 8
      143 SETTABLEKS                       R18 R17 K36 ["Published"]
      145 LOADN                            R18 9
      146 SETTABLEKS                       R18 R17 K37 ["Inserting"]
      148 LOADN                            R18 0
      149 MOVE                             R20 R14
      150 CALL                             R20 0 1
      151 FASTCALL2K                       ASSERT R20 K39 ; [+4]
      153 LOADK                            R21 K39 ["FFlagConvAIMeshGen must be enabled to use this command"]
      154 GETIMPORT                        R19 K41 [assert]
      156 CALL                             R19 2 0
      157 DUPCLOSURE                       R19 K42 [PROTO_0]
      158 DUPCLOSURE                       R20 K43 [PROTO_1]
      159 NEWCLOSURE                       R21 P2
      160 CAPTURE                          VAL R9
      161 CAPTURE                          REF R18
      162 CAPTURE                          VAL R5
      163 NEWCLOSURE                       R22 P3
      164 CAPTURE                          REF R18
      165 CAPTURE                          VAL R21
      166 CAPTURE                          VAL R7
      167 DUPCLOSURE                       R23 K44 [PROTO_9]
      168 CAPTURE                          VAL R15
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R22
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R13
      173 CAPTURE                          VAL R16
      174 CAPTURE                          VAL R7
      175 CAPTURE                          VAL R17
      176 DUPCLOSURE                       R24 K45 [PROTO_10]
      177 CAPTURE                          VAL R6
      178 DUPCLOSURE                       R25 K46 [PROTO_11]
      179 CAPTURE                          VAL R6
      180 DUPCLOSURE                       R26 K47 [PROTO_12]
      181 CAPTURE                          VAL R6
      182 DUPCLOSURE                       R27 K48 [PROTO_13]
      183 CAPTURE                          VAL R26
      184 CAPTURE                          VAL R19
      185 DUPCLOSURE                       R28 K49 [PROTO_14]
      186 CAPTURE                          VAL R24
      187 CAPTURE                          VAL R25
      188 DUPCLOSURE                       R29 K50 [PROTO_16]
      189 CAPTURE                          VAL R24
      190 CAPTURE                          VAL R25
      191 CAPTURE                          VAL R15
      192 CAPTURE                          VAL R8
      193 DUPCLOSURE                       R30 K51 [PROTO_17]
      194 CAPTURE                          VAL R1
      195 CAPTURE                          VAL R26
      196 CAPTURE                          VAL R19
      197 CAPTURE                          VAL R12
      198 CAPTURE                          VAL R5
      199 DUPCLOSURE                       R31 K52 [PROTO_19]
      200 CAPTURE                          VAL R30
      201 CAPTURE                          VAL R15
      202 CAPTURE                          VAL R8
      203 DUPCLOSURE                       R32 K53 [PROTO_28]
      204 CAPTURE                          VAL R5
      205 CAPTURE                          VAL R3
      206 CAPTURE                          VAL R15
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R11
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R17
      211 CAPTURE                          VAL R23
      212 CAPTURE                          VAL R16
      213 CAPTURE                          VAL R29
      214 CAPTURE                          VAL R31
      215 CLOSEUPVALS                      R18
      216 RETURN                           R32 1
