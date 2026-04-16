PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+25]
        3 DUPTABLE                         R2 K7 [{"shouldUseSelection", "selectedBoundingBox", "boundingBoxGhost", "generationThread", "editableMeshPart", "meshPart", "insertionCounter"}]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K0 ["shouldUseSelection"]
        7 LOADNIL                          R3
        8 SETTABLEKS                       R3 R2 K1 ["selectedBoundingBox"]
       10 LOADNIL                          R3
       11 SETTABLEKS                       R3 R2 K2 ["boundingBoxGhost"]
       13 LOADNIL                          R3
       14 SETTABLEKS                       R3 R2 K3 ["generationThread"]
       16 LOADNIL                          R3
       17 SETTABLEKS                       R3 R2 K4 ["editableMeshPart"]
       19 LOADNIL                          R3
       20 SETTABLEKS                       R3 R2 K5 ["meshPart"]
       22 LOADN                            R3 0
       23 SETTABLEKS                       R3 R2 K6 ["insertionCounter"]
       25 MOVE                             R1 R2
       26 GETUPVAL                         R2 0
       27 SETTABLE                         R1 R2 R0
       28 FASTCALL2K                       ASSERT R1 K8 ; [+5]
       30 MOVE                             R3 R1
       31 LOADK                            R4 K8 ["Failed to get asset dm cache for request"]
       32 GETIMPORT                        R2 K10 [assert]
       34 CALL                             R2 2 0
       35 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["FFlagDebugConvAIMeshGenDynamicPreview must be disabled"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R1 K3 ["X"]
       11 GETTABLEKS                       R3 R1 K4 ["Y"]
       13 GETTABLEKS                       R4 R1 K5 ["Z"]
       15 FASTCALL3                        MATH_MAX R2 R3 R4
       17 MOVE                             R6 R2
       18 MOVE                             R7 R3
       19 MOVE                             R8 R4
       20 GETIMPORT                        R5 K8 [math.max]
       22 CALL                             R5 3 1
       23 FASTCALL1                        MATH_RAD R0 ; [+3]
       24 MOVE                             R10 R0
       25 GETIMPORT                        R9 K12 [math.rad]
       27 CALL                             R9 1 1
       28 DIVK                             R8 R9 K10 [2]
       29 FASTCALL1                        MATH_TAN R8 ; [+2]
       30 GETIMPORT                        R7 K14 [math.tan]
       32 CALL                             R7 1 1
       33 DIVRK                            R6 R9 K7 ["max"]
       34 MUL                              R8 R5 R6
       35 DIVK                             R9 R4 K10 [2]
       36 ADD                              R7 R8 R9
       37 RETURN                           R7 1

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
       24 LOADK                            R2 K3 ["rbxasset://textures/ui/GuiImagePlaceholder.png"]
       25 GETUPVAL                         R3 3
       26 MOVE                             R4 R2
       27 CALL                             R3 1 0
       28 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R6 0
        1 CALL                             R6 0 1
        2 NOT                              R5 R6
        3 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        5 LOADK                            R6 K0 ["FFlagDebugConvAIMeshGenDynamicPreview must be disabled"]
        6 GETIMPORT                        R4 K2 [assert]
        8 CALL                             R4 2 0
        9 ORK                              R5 R2 K3 [0]
       10 FASTCALL1                        MATH_RAD R5 ; [+2]
       11 GETIMPORT                        R4 K6 [math.rad]
       13 CALL                             R4 1 1
       14 MOVE                             R2 R4
       15 FASTCALL2K                       ASSERT R2 K7 ; [+5]
       17 MOVE                             R5 R2
       18 LOADK                            R6 K7 ["Angle must be a number"]
       19 GETIMPORT                        R4 K2 [assert]
       21 CALL                             R4 2 0
       22 GETIMPORT                        R4 K10 [Instance.new]
       24 LOADK                            R5 K11 ["ScreenGui"]
       25 CALL                             R4 1 1
       26 LOADK                            R5 K12 ["AssistantMeshPreview"]
       27 SETTABLEKS                       R5 R4 K13 ["Name"]
       29 LOADB                            R5 0
       30 SETTABLEKS                       R5 R4 K14 ["Archivable"]
       32 GETIMPORT                        R5 K18 [Enum.SafeAreaCompatibility.None]
       34 SETTABLEKS                       R5 R4 K16 ["SafeAreaCompatibility"]
       36 GETIMPORT                        R5 K20 [Enum.ScreenInsets.None]
       38 SETTABLEKS                       R5 R4 K19 ["ScreenInsets"]
       40 GETIMPORT                        R5 K10 [Instance.new]
       42 LOADK                            R6 K21 ["ViewportFrame"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K23 [Vector2.new]
       46 LOADN                            R7 1
       47 LOADN                            R8 1
       48 CALL                             R6 2 1
       49 SETTABLEKS                       R6 R5 K24 ["AnchorPoint"]
       51 GETIMPORT                        R6 K27 [UDim2.fromOffset]
       53 LOADN                            R7 1
       54 LOADN                            R8 1
       55 CALL                             R6 2 1
       56 SETTABLEKS                       R6 R5 K28 ["Position"]
       58 GETIMPORT                        R6 K27 [UDim2.fromOffset]
       60 LOADN                            R7 225
       61 LOADN                            R8 225
       62 CALL                             R6 2 1
       63 SETTABLEKS                       R6 R5 K29 ["Size"]
       65 GETIMPORT                        R6 K31 [Color3.new]
       67 LOADN                            R7 0
       68 LOADN                            R8 0
       69 LOADN                            R9 0
       70 CALL                             R6 3 1
       71 SETTABLEKS                       R6 R5 K32 ["BackgroundColor3"]
       73 LOADN                            R6 1
       74 SETTABLEKS                       R6 R5 K33 ["BackgroundTransparency"]
       76 SETTABLEKS                       R4 R5 K34 ["Parent"]
       78 GETIMPORT                        R6 K37 [CFrame.Angles]
       80 LOADN                            R7 0
       81 MOVE                             R8 R2
       82 LOADN                            R9 0
       83 CALL                             R6 3 1
       84 LOADK                            R7 K38 [{4, 4, 4}]
       85 JUMPIFNOT                        R1 ; [+21]
       86 NAMECALL                         R8 R1 K39 ["Clone"]
       88 CALL                             R8 1 1
       89 LOADK                            R11 K40 ["PVInstance"]
       90 NAMECALL                         R9 R8 K41 ["IsA"]
       92 CALL                             R9 2 1
       93 JUMPIFNOT                        R9 ; [+11]
       94 MOVE                             R11 R6
       95 NAMECALL                         R9 R8 K42 ["PivotTo"]
       97 CALL                             R9 2 0
       98 LOADK                            R11 K43 ["BasePart"]
       99 NAMECALL                         R9 R8 K41 ["IsA"]
      101 CALL                             R9 2 1
      102 JUMPIFNOT                        R9 ; [+2]
      103 GETTABLEKS                       R7 R8 K29 ["Size"]
      105 SETTABLEKS                       R5 R8 K34 ["Parent"]
      107 GETIMPORT                        R8 K10 [Instance.new]
      109 LOADK                            R9 K44 ["Camera"]
      110 CALL                             R8 1 1
      111 GETTABLEKS                       R11 R8 K46 ["FieldOfView"]
      113 MOVE                             R12 R7
      114 GETUPVAL                         R15 0
      115 CALL                             R15 0 1
      116 NOT                              R14 R15
      117 FASTCALL2K                       ASSERT R14 K0 ; [+4]
      119 LOADK                            R15 K0 ["FFlagDebugConvAIMeshGenDynamicPreview must be disabled"]
      120 GETIMPORT                        R13 K2 [assert]
      122 CALL                             R13 2 0
      123 GETTABLEKS                       R13 R12 K47 ["X"]
      125 GETTABLEKS                       R14 R12 K48 ["Y"]
      127 GETTABLEKS                       R15 R12 K49 ["Z"]
      129 FASTCALL3                        MATH_MAX R13 R14 R15
      131 MOVE                             R17 R13
      132 MOVE                             R18 R14
      133 MOVE                             R19 R15
      134 GETIMPORT                        R16 K51 [math.max]
      136 CALL                             R16 3 1
      137 FASTCALL1                        MATH_RAD R11 ; [+3]
      138 MOVE                             R21 R11
      139 GETIMPORT                        R20 K6 [math.rad]
      141 CALL                             R20 1 1
      142 DIVK                             R19 R20 K53 [2]
      143 FASTCALL1                        MATH_TAN R19 ; [+2]
      144 GETIMPORT                        R18 K55 [math.tan]
      146 CALL                             R18 1 1
      147 DIVRK                            R17 R52 K18 [Enum.SafeAreaCompatibility.None]
      148 MUL                              R18 R16 R17
      149 DIVK                             R19 R15 K53 [2]
      150 ADD                              R10 R18 R19
      151 MULK                             R9 R10 K45 [0.5]
      152 GETIMPORT                        R11 K37 [CFrame.Angles]
      154 LOADN                            R12 0
      155 LOADK                            R13 K45 [0.5]
      156 LOADN                            R14 0
      157 CALL                             R11 3 1
      158 GETIMPORT                        R12 K56 [CFrame.new]
      160 LOADN                            R13 0
      161 LOADN                            R14 0
      162 MOVE                             R15 R9
      163 CALL                             R12 3 1
      164 MUL                              R10 R11 R12
      165 GETIMPORT                        R11 K58 [CFrame.lookAt]
      167 GETTABLEKS                       R12 R10 K28 ["Position"]
      169 GETTABLEKS                       R13 R6 K28 ["Position"]
      171 CALL                             R11 2 1
      172 SETTABLEKS                       R11 R8 K35 ["CFrame"]
      174 SETTABLEKS                       R5 R8 K34 ["Parent"]
      176 SETTABLEKS                       R8 R5 K59 ["CurrentCamera"]
      178 SETTABLEKS                       R4 R5 K34 ["Parent"]
      180 GETUPVAL                         R11 1
      181 JUMPIF                           R11 ; [+1]
      182 GETUPVAL                         R11 2
      183 SETTABLEKS                       R11 R4 K34 ["Parent"]
      185 GETIMPORT                        R11 K62 [task.delay]
      187 LOADK                            R12 K45 [0.5]
      188 NEWCLOSURE                       R13 P0
      189 CAPTURE                          VAL R0
      190 CAPTURE                          UPVAL U3
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R3
      193 CAPTURE                          UPVAL U4
      194 CAPTURE                          VAL R5
      195 CALL                             R11 2 0
      196 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["FFlagDebugConvAIMeshGenDynamicPreview must be disabled"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R5 R1 K3 ["contentId"]
       12 GETTABLE                         R3 R4 R5
       13 GETTABLEKS                       R2 R3 K4 ["setPreviewImage"]
       15 GETTABLEKS                       R3 R1 K5 ["index"]
       17 GETTABLEKS                       R4 R1 K6 ["image"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 LOADN                            R7 90
        4 GETUPVAL                         R8 3
        5 MUL                              R6 R7 R8
        6 MOVE                             R7 R0
        7 CALL                             R3 4 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K3 [{"contentId", "index", "image"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["contentId"]
        6 GETUPVAL                         R5 3
        7 ADDK                             R4 R5 K4 [1]
        8 SETTABLEKS                       R4 R3 K1 ["index"]
       10 SETTABLEKS                       R0 R3 K2 ["image"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 NOT                              R4 R5
        3 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        5 LOADK                            R5 K0 ["FFlagDebugConvAIMeshGenDynamicPreview must be disabled"]
        6 GETIMPORT                        R3 K2 [assert]
        8 CALL                             R3 2 0
        9 JUMPIF                           R1 ; [+17]
       10 LOADN                            R5 1
       11 LOADN                            R3 4
       12 LOADN                            R4 1
       13 FORNPREP                         R3
       14 GETUPVAL                         R6 1
       15 MOVE                             R7 R0
       16 DUPTABLE                         R8 K6 [{"contentId", "index", "image"}]
       17 SETTABLEKS                       R2 R8 K3 ["contentId"]
       19 SETTABLEKS                       R5 R8 K4 ["index"]
       21 LOADK                            R9 K7 [""]
       22 SETTABLEKS                       R9 R8 K5 ["image"]
       24 CALL                             R6 2 0
       25 FORNLOOP                         R3
       26 RETURN                           R0 0
       27 GETUPVAL                         R4 2
       28 ADDK                             R3 R4 K8 [1]
       29 SETUPVAL                         R3 2
       30 LOADN                            R6 0
       31 LOADN                            R4 3
       32 LOADN                            R5 1
       33 FORNPREP                         R4
       34 GETUPVAL                         R8 3
       35 GETTABLEKS                       R7 R8 K9 ["new"]
       37 NEWCLOSURE                       R8 P0
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R6
       42 CALL                             R7 1 1
       43 NEWCLOSURE                       R9 P1
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R6
       48 NAMECALL                         R7 R7 K10 ["andThen"]
       50 CALL                             R7 2 0
       51 FORNLOOP                         R4
       52 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["FFlagDebugConvAIMeshGenDynamicPreview must be disabled"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R1 K3 ["requestId"]
       11 GETUPVAL                         R5 1
       12 GETTABLE                         R4 R5 R2
       13 JUMPIF                           R4 ; [+25]
       14 DUPTABLE                         R5 K11 [{"shouldUseSelection", "selectedBoundingBox", "boundingBoxGhost", "generationThread", "editableMeshPart", "meshPart", "insertionCounter"}]
       15 LOADB                            R6 0
       16 SETTABLEKS                       R6 R5 K4 ["shouldUseSelection"]
       18 LOADNIL                          R6
       19 SETTABLEKS                       R6 R5 K5 ["selectedBoundingBox"]
       21 LOADNIL                          R6
       22 SETTABLEKS                       R6 R5 K6 ["boundingBoxGhost"]
       24 LOADNIL                          R6
       25 SETTABLEKS                       R6 R5 K7 ["generationThread"]
       27 LOADNIL                          R6
       28 SETTABLEKS                       R6 R5 K8 ["editableMeshPart"]
       30 LOADNIL                          R6
       31 SETTABLEKS                       R6 R5 K9 ["meshPart"]
       33 LOADN                            R6 0
       34 SETTABLEKS                       R6 R5 K10 ["insertionCounter"]
       36 MOVE                             R4 R5
       37 GETUPVAL                         R5 1
       38 SETTABLE                         R4 R5 R2
       39 FASTCALL2K                       ASSERT R4 K12 ; [+5]
       41 MOVE                             R6 R4
       42 LOADK                            R7 K12 ["Failed to get asset dm cache for request"]
       43 GETIMPORT                        R5 K2 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R3 R4
       47 GETTABLEKS                       R4 R3 K7 ["generationThread"]
       49 JUMPIFNOT                        R4 ; [+15]
       50 GETIMPORT                        R4 K15 [coroutine.status]
       52 GETTABLEKS                       R5 R3 K7 ["generationThread"]
       54 CALL                             R4 1 1
       55 JUMPIFEQKS                       R4 K16 ["dead"] ; [+9]
       57 GETIMPORT                        R4 K19 [task.cancel]
       59 GETTABLEKS                       R5 R3 K7 ["generationThread"]
       61 CALL                             R4 1 0
       62 LOADNIL                          R4
       63 SETTABLEKS                       R4 R3 K7 ["generationThread"]
       65 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["FFlagDebugConvAIMeshGenDynamicPreview must be disabled"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R5 R1 K3 ["contentId"]
       12 GETTABLE                         R3 R4 R5
       13 GETTABLEKS                       R2 R3 K4 ["updateGenState"]
       15 GETTABLEKS                       R3 R1 K5 ["state"]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["loadGeneratedMeshAsync"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 LOADB                            R3 0
        9 FASTCALL1                        TYPEOF R1 ; [+3]
       10 MOVE                             R5 R1
       11 GETIMPORT                        R4 K2 [typeof]
       13 CALL                             R4 1 1
       14 JUMPIFNOTEQKS                    R4 K3 ["Instance"] ; [+5]
       16 LOADK                            R5 K4 ["MeshPart"]
       17 NAMECALL                         R3 R1 K5 ["IsA"]
       19 CALL                             R3 2 1
       20 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       22 LOADK                            R4 K6 ["Expected result to be a MeshPart"]
       23 GETIMPORT                        R2 K8 [assert]
       25 CALL                             R2 2 0
       26 RETURN                           R1 1

PROTO_12:
        0 GETIMPORT                        R2 K2 [coroutine.status]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 1
        4 JUMPIFNOTEQKS                    R2 K3 ["dead"] ; [+2]
        6 RETURN                           R0 0
        7 GETIMPORT                        R2 K7 [Enum.IntermediateMeshGenerationResult.HighQualityMesh]
        9 JUMPIFNOTEQ                      R0 R2 ; [+10]
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K8 ["Enums"]
       15 GETTABLEKS                       R4 R5 K9 ["GenerationState"]
       17 GETTABLEKS                       R3 R4 K10 ["GeneratingTexture"]
       19 CALL                             R2 1 0
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R2 R3 K11 ["loadGeneratedMeshAsync"]
       23 MOVE                             R3 R1
       24 CALL                             R2 1 1
       25 GETUPVAL                         R3 4
       26 MOVE                             R4 R2
       27 CALL                             R3 1 0
       28 LOADB                            R4 0
       29 FASTCALL1                        TYPEOF R2 ; [+3]
       30 MOVE                             R6 R2
       31 GETIMPORT                        R5 K13 [typeof]
       33 CALL                             R5 1 1
       34 JUMPIFNOTEQKS                    R5 K14 ["Instance"] ; [+5]
       36 LOADK                            R6 K15 ["MeshPart"]
       37 NAMECALL                         R4 R2 K16 ["IsA"]
       39 CALL                             R4 2 1
       40 FASTCALL2K                       ASSERT R4 K17 ; [+4]
       42 LOADK                            R5 K17 ["Expected result to be a MeshPart"]
       43 GETIMPORT                        R3 K19 [assert]
       45 CALL                             R3 2 0
       46 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R2 K2 [coroutine.status]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 1
        4 JUMPIFNOTEQKS                    R2 K3 ["dead"] ; [+2]
        6 RETURN                           R0 0
        7 GETIMPORT                        R2 K7 [Enum.IntermediateMeshGenerationResult.HighQualityMesh]
        9 JUMPIFNOTEQ                      R0 R2 ; [+10]
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K8 ["Enums"]
       15 GETTABLEKS                       R4 R5 K9 ["GenerationState"]
       17 GETTABLEKS                       R3 R4 K10 ["GeneratingTexture"]
       19 CALL                             R2 1 0
       20 GETUPVAL                         R3 3
       21 GETTABLEKS                       R2 R3 K11 ["loadGeneratedMeshAsync"]
       23 MOVE                             R3 R1
       24 CALL                             R2 1 1
       25 GETUPVAL                         R3 4
       26 MOVE                             R4 R2
       27 CALL                             R3 1 0
       28 LOADB                            R4 0
       29 FASTCALL1                        TYPEOF R2 ; [+3]
       30 MOVE                             R6 R2
       31 GETIMPORT                        R5 K13 [typeof]
       33 CALL                             R5 1 1
       34 JUMPIFNOTEQKS                    R5 K14 ["Instance"] ; [+5]
       36 LOADK                            R6 K15 ["MeshPart"]
       37 NAMECALL                         R4 R2 K16 ["IsA"]
       39 CALL                             R4 2 1
       40 FASTCALL2K                       ASSERT R4 K17 ; [+4]
       42 LOADK                            R5 K17 ["Expected result to be a MeshPart"]
       43 GETIMPORT                        R3 K19 [assert]
       45 CALL                             R3 2 0
       46 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R4 K2 [coroutine.running]
        2 CALL                             R4 0 1
        3 MOVE                             R5 R0
        4 LOADNIL                          R6
        5 CALL                             R5 1 0
        6 GETUPVAL                         R5 0
        7 CALL                             R5 0 1
        8 JUMPIFNOT                        R5 ; [+90]
        9 GETIMPORT                        R5 K5 [task.wait]
       11 LOADK                            R6 K6 [2.5]
       12 CALL                             R5 1 0
       13 GETUPVAL                         R5 1
       14 GETIMPORT                        R7 K9 [Content.fromAssetId]
       16 LOADK                            R8 K10 [15564792192]
       17 CALL                             R7 1 -1
       18 NAMECALL                         R5 R5 K11 ["CreateEditableMeshAsync"]
       20 CALL                             R5 -1 1
       21 GETUPVAL                         R6 1
       22 GETIMPORT                        R8 K9 [Content.fromAssetId]
       24 LOADK                            R9 K12 [16745082454]
       25 CALL                             R8 1 -1
       26 NAMECALL                         R6 R6 K13 ["CreateEditableImageAsync"]
       28 CALL                             R6 -1 1
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R7 R8 K14 ["createMeshPartAsync"]
       32 GETIMPORT                        R8 K16 [Content.fromObject]
       34 MOVE                             R9 R5
       35 CALL                             R8 1 -1
       36 CALL                             R7 -1 1
       37 MOVE                             R8 R0
       38 MOVE                             R9 R7
       39 CALL                             R8 1 0
       40 MOVE                             R8 R1
       41 GETUPVAL                         R12 3
       42 GETTABLEKS                       R11 R12 K17 ["Enums"]
       44 GETTABLEKS                       R10 R11 K18 ["GenerationState"]
       46 GETTABLEKS                       R9 R10 K19 ["GeneratingTexture"]
       48 CALL                             R8 1 0
       49 GETIMPORT                        R8 K5 [task.wait]
       51 LOADK                            R9 K6 [2.5]
       52 CALL                             R8 1 0
       53 GETUPVAL                         R9 2
       54 GETTABLEKS                       R8 R9 K14 ["createMeshPartAsync"]
       56 GETIMPORT                        R9 K16 [Content.fromObject]
       58 MOVE                             R10 R5
       59 CALL                             R9 1 -1
       60 CALL                             R8 -1 1
       61 MOVE                             R7 R8
       62 GETIMPORT                        R8 K16 [Content.fromObject]
       64 MOVE                             R9 R6
       65 CALL                             R8 1 1
       66 SETTABLEKS                       R8 R7 K20 ["TextureContent"]
       68 MOVE                             R8 R0
       69 MOVE                             R9 R7
       70 CALL                             R8 1 0
       71 LOADB                            R9 0
       72 FASTCALL1                        TYPEOF R7 ; [+3]
       73 MOVE                             R11 R7
       74 GETIMPORT                        R10 K22 [typeof]
       76 CALL                             R10 1 1
       77 JUMPIFNOTEQKS                    R10 K23 ["Instance"] ; [+5]
       79 LOADK                            R11 K24 ["MeshPart"]
       80 NAMECALL                         R9 R7 K25 ["IsA"]
       82 CALL                             R9 2 1
       83 FASTCALL2K                       ASSERT R9 K26 ; [+4]
       85 LOADK                            R10 K26 ["Expected result to be a MeshPart"]
       86 GETIMPORT                        R8 K28 [assert]
       88 CALL                             R8 2 0
       89 LOADK                            R9 K29 ["DEBUG_"]
       90 GETUPVAL                         R10 4
       91 LOADB                            R12 0
       92 NAMECALL                         R10 R10 K30 ["GenerateGUID"]
       94 CALL                             R10 2 1
       95 CONCAT                           R8 R9 R10
       96 MOVE                             R9 R8
       97 MOVE                             R10 R7
       98 RETURN                           R9 2
       99 NEWCLOSURE                       R5 P0
      100 CAPTURE                          UPVAL U2
      101 CAPTURE                          VAL R0
      102 DUPTABLE                         R6 K32 [{"Prompt"}]
      103 SETTABLEKS                       R2 R6 K31 ["Prompt"]
      105 GETUPVAL                         R8 5
      106 GETTABLEKS                       R7 R8 K33 ["getUserId"]
      108 CALL                             R7 0 1
      109 DUPTABLE                         R8 K35 [{"SuggestedSize"}]
      110 SETTABLEKS                       R3 R8 K34 ["SuggestedSize"]
      112 GETUPVAL                         R9 6
      113 CALL                             R9 0 1
      114 JUMPIFNOT                        R9 ; [+51]
      115 GETUPVAL                         R10 2
      116 GETTABLEKS                       R9 R10 K36 ["generateMeshAsync"]
      118 MOVE                             R10 R6
      119 MOVE                             R11 R7
      120 MOVE                             R12 R8
      121 NEWCLOSURE                       R13 P1
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R1
      124 CAPTURE                          UPVAL U3
      125 CAPTURE                          UPVAL U2
      126 CAPTURE                          VAL R0
      127 CALL                             R9 4 3
      128 JUMPIF                           R9 ; [+8]
      129 GETIMPORT                        R12 K38 [error]
      131 MOVE                             R14 R10
      132 LOADK                            R15 K39 [":"]
      133 MOVE                             R16 R11
      134 CONCAT                           R13 R14 R16
      135 LOADN                            R14 0
      136 CALL                             R12 2 0
      137 MOVE                             R12 R10
      138 GETUPVAL                         R15 2
      139 GETTABLEKS                       R14 R15 K40 ["loadGeneratedMeshAsync"]
      141 MOVE                             R15 R10
      142 CALL                             R14 1 1
      143 MOVE                             R15 R0
      144 MOVE                             R16 R14
      145 CALL                             R15 1 0
      146 LOADB                            R16 0
      147 FASTCALL1                        TYPEOF R14 ; [+3]
      148 MOVE                             R18 R14
      149 GETIMPORT                        R17 K22 [typeof]
      151 CALL                             R17 1 1
      152 JUMPIFNOTEQKS                    R17 K23 ["Instance"] ; [+5]
      154 LOADK                            R18 K24 ["MeshPart"]
      155 NAMECALL                         R16 R14 K25 ["IsA"]
      157 CALL                             R16 2 1
      158 FASTCALL2K                       ASSERT R16 K26 ; [+4]
      160 LOADK                            R17 K26 ["Expected result to be a MeshPart"]
      161 GETIMPORT                        R15 K28 [assert]
      163 CALL                             R15 2 0
      164 MOVE                             R13 R14
      165 RETURN                           R12 2
      166 GETUPVAL                         R10 2
      167 GETTABLEKS                       R9 R10 K36 ["generateMeshAsync"]
      169 MOVE                             R10 R6
      170 MOVE                             R11 R7
      171 MOVE                             R12 R8
      172 NEWCLOSURE                       R13 P2
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R1
      175 CAPTURE                          UPVAL U3
      176 CAPTURE                          UPVAL U2
      177 CAPTURE                          VAL R0
      178 CALL                             R9 4 1
      179 FASTCALL1                        TYPEOF R9 ; [+3]
      180 MOVE                             R13 R9
      181 GETIMPORT                        R12 K22 [typeof]
      183 CALL                             R12 1 1
      184 JUMPIFEQKS                       R12 K41 ["string"] ; [+2]
      186 LOADB                            R11 0 +1
      187 LOADB                            R11 1
      188 FASTCALL2K                       ASSERT R11 K42 ; [+4]
      190 LOADK                            R12 K42 ["Expected generationId to be a string"]
      191 GETIMPORT                        R10 K28 [assert]
      193 CALL                             R10 2 0
      194 MOVE                             R10 R9
      195 GETUPVAL                         R13 2
      196 GETTABLEKS                       R12 R13 K40 ["loadGeneratedMeshAsync"]
      198 MOVE                             R13 R9
      199 CALL                             R12 1 1
      200 MOVE                             R13 R0
      201 MOVE                             R14 R12
      202 CALL                             R13 1 0
      203 LOADB                            R14 0
      204 FASTCALL1                        TYPEOF R12 ; [+3]
      205 MOVE                             R16 R12
      206 GETIMPORT                        R15 K22 [typeof]
      208 CALL                             R15 1 1
      209 JUMPIFNOTEQKS                    R15 K23 ["Instance"] ; [+5]
      211 LOADK                            R16 K24 ["MeshPart"]
      212 NAMECALL                         R14 R12 K25 ["IsA"]
      214 CALL                             R14 2 1
      215 FASTCALL2K                       ASSERT R14 K26 ; [+4]
      217 LOADK                            R15 K26 ["Expected result to be a MeshPart"]
      218 GETIMPORT                        R13 K28 [assert]
      220 CALL                             R13 2 0
      221 MOVE                             R11 R12
      222 RETURN                           R10 2

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 GETUPVAL                         R4 2
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K2 [{"contentId", "state"}]
        3 GETUPVAL                         R4 2
        4 SETTABLEKS                       R4 R3 K0 ["contentId"]
        6 SETTABLEKS                       R0 R3 K1 ["state"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["FFlagDebugConvAIMeshGenDynamicPreview must be disabled"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R1 K3 ["contentId"]
       11 GETTABLEKS                       R3 R1 K4 ["requestId"]
       13 GETTABLEKS                       R4 R1 K5 ["prompt"]
       15 GETTABLEKS                       R5 R1 K6 ["suggestedSize"]
       17 GETUPVAL                         R8 1
       18 GETTABLE                         R7 R8 R3
       19 JUMPIF                           R7 ; [+25]
       20 DUPTABLE                         R8 K14 [{"shouldUseSelection", "selectedBoundingBox", "boundingBoxGhost", "generationThread", "editableMeshPart", "meshPart", "insertionCounter"}]
       21 LOADB                            R9 0
       22 SETTABLEKS                       R9 R8 K7 ["shouldUseSelection"]
       24 LOADNIL                          R9
       25 SETTABLEKS                       R9 R8 K8 ["selectedBoundingBox"]
       27 LOADNIL                          R9
       28 SETTABLEKS                       R9 R8 K9 ["boundingBoxGhost"]
       30 LOADNIL                          R9
       31 SETTABLEKS                       R9 R8 K10 ["generationThread"]
       33 LOADNIL                          R9
       34 SETTABLEKS                       R9 R8 K11 ["editableMeshPart"]
       36 LOADNIL                          R9
       37 SETTABLEKS                       R9 R8 K12 ["meshPart"]
       39 LOADN                            R9 0
       40 SETTABLEKS                       R9 R8 K13 ["insertionCounter"]
       42 MOVE                             R7 R8
       43 GETUPVAL                         R8 1
       44 SETTABLE                         R7 R8 R3
       45 FASTCALL2K                       ASSERT R7 K15 ; [+5]
       47 MOVE                             R9 R7
       48 LOADK                            R10 K15 ["Failed to get asset dm cache for request"]
       49 GETIMPORT                        R8 K2 [assert]
       51 CALL                             R8 2 0
       52 MOVE                             R6 R7
       53 GETIMPORT                        R7 K18 [coroutine.running]
       55 CALL                             R7 0 1
       56 SETTABLEKS                       R7 R6 K10 ["generationThread"]
       58 NEWCLOSURE                       R7 P0
       59 CAPTURE                          UPVAL U2
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R2
       62 NEWCLOSURE                       R8 P1
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R2
       66 GETUPVAL                         R9 4
       67 MOVE                             R10 R7
       68 MOVE                             R11 R8
       69 MOVE                             R12 R4
       70 MOVE                             R13 R5
       71 CALL                             R9 4 2
       72 SETTABLEKS                       R10 R6 K11 ["editableMeshPart"]
       74 RETURN                           R9 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createAssetAsync"]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R3 K4 [Enum.AssetType.Mesh]
        6 DUPTABLE                         R4 K8 [{"Name", "CreatorId", "CreatorType"}]
        7 LOADK                            R5 K9 ["GeneratedMesh"]
        8 SETTABLEKS                       R5 R4 K5 ["Name"]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K10 ["getUserId"]
       13 CALL                             R5 0 1
       14 SETTABLEKS                       R5 R4 K6 ["CreatorId"]
       16 GETIMPORT                        R5 K13 [Enum.AssetCreatorType.User]
       18 SETTABLEKS                       R5 R4 K7 ["CreatorType"]
       20 CALL                             R1 3 2
       21 GETIMPORT                        R3 K16 [Enum.CreateAssetResult.Success]
       23 JUMPIFEQ                         R1 R3 ; [+11]
       25 GETIMPORT                        R3 K18 [error]
       27 LOADK                            R5 K19 ["createMeshAsset failed: "]
       28 FASTCALL1                        TOSTRING R2 ; [+3]
       29 MOVE                             R7 R2
       30 GETIMPORT                        R6 K21 [tostring]
       32 CALL                             R6 1 1
       33 CONCAT                           R4 R5 R6
       34 CALL                             R3 1 0
       35 FASTCALL1                        TONUMBER R2 ; [+3]
       36 MOVE                             R4 R2
       37 GETIMPORT                        R3 K23 [tonumber]
       39 CALL                             R3 1 1
       40 FASTCALL2K                       ASSERT R3 K24 ; [+5]
       42 MOVE                             R5 R3
       43 LOADK                            R6 K24 ["createMeshAsset failed: Failed to parse meshId"]
       44 GETIMPORT                        R4 K26 [assert]
       46 CALL                             R4 2 0
       47 RETURN                           R3 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createAssetAsync"]
        3 MOVE                             R2 R0
        4 GETIMPORT                        R3 K4 [Enum.AssetType.Image]
        6 DUPTABLE                         R4 K8 [{"Name", "CreatorId", "CreatorType"}]
        7 LOADK                            R5 K9 ["GeneratedImage"]
        8 SETTABLEKS                       R5 R4 K5 ["Name"]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K10 ["getUserId"]
       13 CALL                             R5 0 1
       14 SETTABLEKS                       R5 R4 K6 ["CreatorId"]
       16 GETIMPORT                        R5 K13 [Enum.AssetCreatorType.User]
       18 SETTABLEKS                       R5 R4 K7 ["CreatorType"]
       20 CALL                             R1 3 2
       21 GETIMPORT                        R3 K16 [Enum.CreateAssetResult.Success]
       23 JUMPIFEQ                         R1 R3 ; [+11]
       25 GETIMPORT                        R3 K18 [error]
       27 LOADK                            R5 K19 ["createImageAsset failed: "]
       28 FASTCALL1                        TOSTRING R2 ; [+3]
       29 MOVE                             R7 R2
       30 GETIMPORT                        R6 K21 [tostring]
       32 CALL                             R6 1 1
       33 CONCAT                           R4 R5 R6
       34 CALL                             R3 1 0
       35 FASTCALL1                        TONUMBER R2 ; [+3]
       36 MOVE                             R4 R2
       37 GETIMPORT                        R3 K23 [tonumber]
       39 CALL                             R3 1 1
       40 FASTCALL2K                       ASSERT R3 K24 ; [+5]
       42 MOVE                             R5 R3
       43 LOADK                            R6 K24 ["createImageAsset failed: Failed to parse textureId"]
       44 GETIMPORT                        R4 K26 [assert]
       46 CALL                             R4 2 0
       47 RETURN                           R3 1

PROTO_20:
        0 LOADK                            R2 K0 ["Assistant-MeshGenLink-%*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["createMeshPartAsync"]
        3 GETIMPORT                        R4 K3 [Content.fromAssetId]
        5 MOVE                             R5 R1
        6 CALL                             R4 1 -1
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

PROTO_22:
        0 GETTABLEKS                       R5 R0 K0 ["meshPart"]
        2 JUMPIF                           R5 ; [+36]
        3 FASTCALL2K                       ASSERT R2 K1 ; [+5]
        5 MOVE                             R7 R2
        6 LOADK                            R8 K1 ["Failed to create mesh asset"]
        7 GETIMPORT                        R6 K3 [assert]
        9 CALL                             R6 2 0
       10 FASTCALL2K                       ASSERT R3 K4 ; [+5]
       12 MOVE                             R7 R3
       13 LOADK                            R8 K4 ["Failed to create texture asset"]
       14 GETIMPORT                        R6 K3 [assert]
       16 CALL                             R6 2 0
       17 GETUPVAL                         R6 0
       18 MOVE                             R7 R1
       19 MOVE                             R8 R2
       20 MOVE                             R9 R3
       21 CALL                             R6 3 1
       22 MOVE                             R5 R6
       23 FASTCALL2K                       ASSERT R5 K5 ; [+5]
       25 MOVE                             R7 R5
       26 LOADK                            R8 K5 ["Failed to create MeshPart"]
       27 GETIMPORT                        R6 K3 [assert]
       29 CALL                             R6 2 0
       30 LOADB                            R6 1
       31 SETTABLEKS                       R6 R5 K6 ["Anchored"]
       33 JUMPIFNOT                        R4 ; [+3]
       34 GETUPVAL                         R6 1
       35 MOVE                             R7 R5
       36 CALL                             R6 1 0
       37 SETTABLEKS                       R5 R0 K0 ["meshPart"]
       39 FASTCALL2K                       ASSERT R5 K5 ; [+5]
       41 MOVE                             R7 R5
       42 LOADK                            R8 K5 ["Failed to create MeshPart"]
       43 GETIMPORT                        R6 K3 [assert]
       45 CALL                             R6 2 0
       46 RETURN                           R5 1

PROTO_23:
        0 GETTABLEKS                       R2 R1 K0 ["generationId"]
        2 LOADK                            R4 K1 ["Assistant-MeshGenLink-%*"]
        3 MOVE                             R6 R2
        4 NAMECALL                         R4 R4 K2 ["format"]
        6 CALL                             R4 2 1
        7 MOVE                             R3 R4
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K3 ["getLinkedInstances"]
       11 MOVE                             R5 R3
       12 CALL                             R4 1 1
       13 LENGTH                           R5 R4
       14 JUMPIFNOTEQKN                    R5 K4 [0] ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K5 ["selection"]
       20 GETTABLEKS                       R5 R6 K6 ["set"]
       22 MOVE                             R6 R4
       23 CALL                             R5 1 0
       24 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 NOT                              R3 R4
        3 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        5 LOADK                            R4 K0 ["FFlagDebugConvAIMeshGenDynamicPreview must be disabled"]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 2 0
        9 GETTABLEKS                       R2 R1 K3 ["requestId"]
       11 GETUPVAL                         R5 1
       12 GETTABLE                         R4 R5 R2
       13 JUMPIF                           R4 ; [+25]
       14 DUPTABLE                         R5 K11 [{"shouldUseSelection", "selectedBoundingBox", "boundingBoxGhost", "generationThread", "editableMeshPart", "meshPart", "insertionCounter"}]
       15 LOADB                            R6 0
       16 SETTABLEKS                       R6 R5 K4 ["shouldUseSelection"]
       18 LOADNIL                          R6
       19 SETTABLEKS                       R6 R5 K5 ["selectedBoundingBox"]
       21 LOADNIL                          R6
       22 SETTABLEKS                       R6 R5 K6 ["boundingBoxGhost"]
       24 LOADNIL                          R6
       25 SETTABLEKS                       R6 R5 K7 ["generationThread"]
       27 LOADNIL                          R6
       28 SETTABLEKS                       R6 R5 K8 ["editableMeshPart"]
       30 LOADNIL                          R6
       31 SETTABLEKS                       R6 R5 K9 ["meshPart"]
       33 LOADN                            R6 0
       34 SETTABLEKS                       R6 R5 K10 ["insertionCounter"]
       36 MOVE                             R4 R5
       37 GETUPVAL                         R5 1
       38 SETTABLE                         R4 R5 R2
       39 FASTCALL2K                       ASSERT R4 K12 ; [+5]
       41 MOVE                             R6 R4
       42 LOADK                            R7 K12 ["Failed to get asset dm cache for request"]
       43 GETIMPORT                        R5 K2 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R3 R4
       47 GETTABLEKS                       R4 R3 K8 ["editableMeshPart"]
       49 FASTCALL2K                       ASSERT R4 K13 ; [+5]
       51 MOVE                             R6 R4
       52 LOADK                            R7 K13 ["EditableMeshPart not found"]
       53 GETIMPORT                        R5 K2 [assert]
       55 CALL                             R5 2 0
       56 GETTABLEKS                       R6 R4 K14 ["MeshContent"]
       58 GETTABLEKS                       R5 R6 K15 ["Object"]
       60 MOVE                             R7 R5
       61 JUMPIFNOT                        R7 ; [+4]
       62 LOADK                            R9 K16 ["EditableMesh"]
       63 NAMECALL                         R7 R5 K17 ["IsA"]
       65 CALL                             R7 2 1
       66 FASTCALL2K                       ASSERT R7 K18 ; [+4]
       68 LOADK                            R8 K18 ["EditableMesh not found"]
       69 GETIMPORT                        R6 K2 [assert]
       71 CALL                             R6 2 0
       72 GETUPVAL                         R6 2
       73 MOVE                             R7 R5
       74 CALL                             R6 1 1
       75 FASTCALL2K                       ASSERT R6 K19 ; [+5]
       77 MOVE                             R8 R6
       78 LOADK                            R9 K19 ["Failed to create mesh asset"]
       79 GETIMPORT                        R7 K2 [assert]
       81 CALL                             R7 2 0
       82 GETTABLEKS                       R8 R4 K20 ["TextureContent"]
       84 GETTABLEKS                       R7 R8 K15 ["Object"]
       86 MOVE                             R9 R7
       87 JUMPIFNOT                        R9 ; [+4]
       88 LOADK                            R11 K21 ["EditableImage"]
       89 NAMECALL                         R9 R7 K17 ["IsA"]
       91 CALL                             R9 2 1
       92 FASTCALL2K                       ASSERT R9 K22 ; [+4]
       94 LOADK                            R10 K22 ["EditableImage not found"]
       95 GETIMPORT                        R8 K2 [assert]
       97 CALL                             R8 2 0
       98 GETUPVAL                         R8 3
       99 MOVE                             R9 R7
      100 CALL                             R8 1 1
      101 LOADNIL                          R9
      102 SETTABLEKS                       R9 R3 K8 ["editableMeshPart"]
      104 MOVE                             R9 R6
      105 MOVE                             R10 R8
      106 RETURN                           R9 2

PROTO_25:
        0 GETTABLEKS                       R3 R0 K0 ["isPublished"]
        2 JUMPIFNOT                        R3 ; [+1]
        3 RETURN                           R0 0
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 GETUPVAL                         R5 0
        7 CALL                             R5 0 1
        8 JUMPIFNOT                        R5 ; [+7]
        9 GETIMPORT                        R5 K3 [task.wait]
       11 LOADK                            R6 K4 [0.5]
       12 CALL                             R5 1 0
       13 LOADK                            R3 K5 [15564792192]
       14 LOADK                            R4 K6 [16745082454]
       15 JUMP                             ; [+73]
       16 GETUPVAL                         R5 1
       17 CALL                             R5 0 1
       18 JUMPIFNOT                        R5 ; [+60]
       19 GETTABLEKS                       R5 R0 K7 ["editableMeshPart"]
       21 FASTCALL2K                       ASSERT R5 K8 ; [+5]
       23 MOVE                             R7 R5
       24 LOADK                            R8 K8 ["EditableMeshPart not found"]
       25 GETIMPORT                        R6 K10 [assert]
       27 CALL                             R6 2 0
       28 GETTABLEKS                       R7 R5 K11 ["MeshContent"]
       30 GETTABLEKS                       R6 R7 K12 ["Object"]
       32 MOVE                             R8 R6
       33 JUMPIFNOT                        R8 ; [+4]
       34 LOADK                            R10 K13 ["EditableMesh"]
       35 NAMECALL                         R8 R6 K14 ["IsA"]
       37 CALL                             R8 2 1
       38 FASTCALL2K                       ASSERT R8 K15 ; [+4]
       40 LOADK                            R9 K15 ["EditableMesh not found"]
       41 GETIMPORT                        R7 K10 [assert]
       43 CALL                             R7 2 0
       44 GETUPVAL                         R7 2
       45 MOVE                             R8 R6
       46 CALL                             R7 1 1
       47 MOVE                             R3 R7
       48 FASTCALL2K                       ASSERT R3 K16 ; [+5]
       50 MOVE                             R8 R3
       51 LOADK                            R9 K16 ["Failed to create mesh asset"]
       52 GETIMPORT                        R7 K10 [assert]
       54 CALL                             R7 2 0
       55 GETTABLEKS                       R8 R5 K17 ["TextureContent"]
       57 GETTABLEKS                       R7 R8 K12 ["Object"]
       59 MOVE                             R9 R7
       60 JUMPIFNOT                        R9 ; [+4]
       61 LOADK                            R11 K18 ["EditableImage"]
       62 NAMECALL                         R9 R7 K14 ["IsA"]
       64 CALL                             R9 2 1
       65 FASTCALL2K                       ASSERT R9 K19 ; [+4]
       67 LOADK                            R10 K19 ["EditableImage not found"]
       68 GETIMPORT                        R8 K10 [assert]
       70 CALL                             R8 2 0
       71 GETUPVAL                         R8 3
       72 MOVE                             R9 R7
       73 CALL                             R8 1 1
       74 MOVE                             R4 R8
       75 LOADNIL                          R8
       76 SETTABLEKS                       R8 R0 K7 ["editableMeshPart"]
       78 JUMP                             ; [+10]
       79 GETUPVAL                         R5 4
       80 LOADNIL                          R6
       81 DUPTABLE                         R7 K21 [{"requestId"}]
       82 GETTABLEKS                       R8 R0 K20 ["requestId"]
       84 SETTABLEKS                       R8 R7 K20 ["requestId"]
       86 CALL                             R5 2 2
       87 MOVE                             R3 R5
       88 MOVE                             R4 R6
       89 SETTABLEKS                       R3 R0 K22 ["meshId"]
       91 SETTABLEKS                       R4 R0 K23 ["textureId"]
       93 LOADB                            R5 1
       94 SETTABLEKS                       R5 R0 K0 ["isPublished"]
       96 GETUPVAL                         R5 1
       97 CALL                             R5 0 1
       98 JUMPIFNOT                        R5 ; [+9]
       99 GETUPVAL                         R5 5
      100 GETTABLEKS                       R6 R0 K24 ["generationId"]
      102 MOVE                             R7 R3
      103 MOVE                             R8 R4
      104 CALL                             R5 3 1
      105 MOVE                             R6 R2
      106 MOVE                             R7 R5
      107 CALL                             R6 1 0
      108 MOVE                             R5 R1
      109 LOADB                            R6 1
      110 CALL                             R5 1 0
      111 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_27:
        0 MOVE                             R5 R1
        1 GETUPVAL                         R9 0
        2 GETTABLEKS                       R8 R9 K0 ["Enums"]
        4 GETTABLEKS                       R7 R8 K1 ["InsertionState"]
        6 GETTABLEKS                       R6 R7 K2 ["Publishing"]
        8 CALL                             R5 1 0
        9 GETIMPORT                        R5 K4 [pcall]
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R4
       16 CALL                             R5 1 2
       17 GETUPVAL                         R7 2
       18 CALL                             R7 0 1
       19 JUMPIF                           R7 ; [+34]
       20 GETUPVAL                         R10 3
       21 GETTABLEKS                       R9 R10 K5 ["get"]
       23 CALL                             R9 0 1
       24 GETTABLEKS                       R8 R9 K6 ["EventLogger"]
       26 GETTABLEKS                       R7 R8 K7 ["logMeshGenPublishedAssets"]
       28 DUPTABLE                         R8 K14 [{"requestId", "generationId", "success", "errorMessage", "meshId", "imageId"}]
       29 GETTABLEKS                       R9 R0 K8 ["requestId"]
       31 SETTABLEKS                       R9 R8 K8 ["requestId"]
       33 GETTABLEKS                       R9 R0 K9 ["generationId"]
       35 SETTABLEKS                       R9 R8 K9 ["generationId"]
       37 SETTABLEKS                       R5 R8 K10 ["success"]
       39 JUMPIF                           R5 ; [+2]
       40 MOVE                             R9 R6
       41 JUMP                             ; [+1]
       42 LOADK                            R9 K15 [""]
       43 SETTABLEKS                       R9 R8 K11 ["errorMessage"]
       45 GETTABLEKS                       R9 R0 K12 ["meshId"]
       47 SETTABLEKS                       R9 R8 K12 ["meshId"]
       49 GETTABLEKS                       R9 R0 K16 ["textureId"]
       51 SETTABLEKS                       R9 R8 K13 ["imageId"]
       53 CALL                             R7 1 0
       54 JUMPIF                           R5 ; [+10]
       55 MOVE                             R7 R2
       56 GETUPVAL                         R11 0
       57 GETTABLEKS                       R10 R11 K0 ["Enums"]
       59 GETTABLEKS                       R9 R10 K17 ["InsertionFailureReason"]
       61 GETTABLEKS                       R8 R9 K18 ["PublishFailed"]
       63 CALL                             R7 1 0
       64 RETURN                           R0 0
       65 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R3 R1 K0 ["requestId"]
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R3
        4 JUMPIF                           R4 ; [+25]
        5 DUPTABLE                         R5 K8 [{"shouldUseSelection", "selectedBoundingBox", "boundingBoxGhost", "generationThread", "editableMeshPart", "meshPart", "insertionCounter"}]
        6 LOADB                            R6 0
        7 SETTABLEKS                       R6 R5 K1 ["shouldUseSelection"]
        9 LOADNIL                          R6
       10 SETTABLEKS                       R6 R5 K2 ["selectedBoundingBox"]
       12 LOADNIL                          R6
       13 SETTABLEKS                       R6 R5 K3 ["boundingBoxGhost"]
       15 LOADNIL                          R6
       16 SETTABLEKS                       R6 R5 K4 ["generationThread"]
       18 LOADNIL                          R6
       19 SETTABLEKS                       R6 R5 K5 ["editableMeshPart"]
       21 LOADNIL                          R6
       22 SETTABLEKS                       R6 R5 K6 ["meshPart"]
       24 LOADN                            R6 0
       25 SETTABLEKS                       R6 R5 K7 ["insertionCounter"]
       27 MOVE                             R4 R5
       28 GETUPVAL                         R5 0
       29 SETTABLE                         R4 R5 R3
       30 FASTCALL2K                       ASSERT R4 K9 ; [+5]
       32 MOVE                             R6 R4
       33 LOADK                            R7 K9 ["Failed to get asset dm cache for request"]
       34 GETIMPORT                        R5 K11 [assert]
       36 CALL                             R5 2 0
       37 MOVE                             R2 R4
       38 GETTABLEKS                       R3 R2 K2 ["selectedBoundingBox"]
       40 JUMPIFNOT                        R3 ; [+3]
       41 LOADNIL                          R4
       42 SETTABLEKS                       R4 R2 K2 ["selectedBoundingBox"]
       44 GETTABLEKS                       R4 R2 K3 ["boundingBoxGhost"]
       46 JUMPIFNOT                        R4 ; [+6]
       47 NAMECALL                         R5 R4 K12 ["Destroy"]
       49 CALL                             R5 1 0
       50 LOADNIL                          R5
       51 SETTABLEKS                       R5 R2 K3 ["boundingBoxGhost"]
       53 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K3 [{"generationDisplayName", "shouldShowChip"}]
        5 GETUPVAL                         R4 1
        6 SETTABLEKS                       R4 R3 K1 ["generationDisplayName"]
        8 GETUPVAL                         R4 2
        9 SETTABLEKS                       R4 R3 K2 ["shouldShowChip"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 3
       13 CALL                             R1 0 1
       14 JUMPIFNOT                        R1 ; [+5]
       15 DUPTABLE                         R1 K5 [{"rawTransformValues"}]
       16 LOADB                            R2 1
       17 SETTABLEKS                       R2 R1 K4 ["rawTransformValues"]
       19 RETURN                           R1 1
       20 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R2 R1 K0 ["newDisplayName"]
        2 GETTABLEKS                       R3 R1 K1 ["showChip"]
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R3
        8 CAPTURE                          UPVAL U1
        9 GETUPVAL                         R5 1
       10 CALL                             R5 0 1
       11 JUMPIFNOT                        R5 ; [+11]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R5 R6 K2 ["getContentHooks"]
       15 GETTABLEKS                       R6 R1 K3 ["contentId"]
       17 CALL                             R5 1 1
       18 GETTABLEKS                       R6 R5 K4 ["editContent"]
       20 MOVE                             R7 R4
       21 CALL                             R6 1 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R5 R6 K4 ["editContent"]
       26 DUPTABLE                         R6 K7 [{"messageId", "contentId", "transformFn"}]
       27 GETTABLEKS                       R7 R1 K5 ["messageId"]
       29 SETTABLEKS                       R7 R6 K5 ["messageId"]
       31 GETTABLEKS                       R7 R1 K3 ["contentId"]
       33 SETTABLEKS                       R7 R6 K3 ["contentId"]
       35 SETTABLEKS                       R4 R6 K6 ["transformFn"]
       37 CALL                             R5 1 0
       38 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetTagged"]
        4 CALL                             R0 2 1
        5 LENGTH                           R1 R0
        6 GETUPVAL                         R2 2
        7 LOADN                            R3 1
        8 JUMPIFNOTLT                      R3 R1 ; [+14]
       10 GETUPVAL                         R3 3
       11 LOADK                            R5 K1 ["InstanceChip"]
       12 LOADK                            R6 K2 ["Multiple"]
       13 DUPTABLE                         R7 K5 [{"name", "count"}]
       14 GETUPVAL                         R8 2
       15 SETTABLEKS                       R8 R7 K3 ["name"]
       17 SETTABLEKS                       R1 R7 K4 ["count"]
       19 NAMECALL                         R3 R3 K6 ["getText"]
       21 CALL                             R3 4 1
       22 MOVE                             R2 R3
       23 GETUPVAL                         R3 4
       24 GETUPVAL                         R4 5
       25 DUPTABLE                         R5 K11 [{"messageId", "contentId", "newDisplayName", "showChip"}]
       26 GETUPVAL                         R6 6
       27 SETTABLEKS                       R6 R5 K7 ["messageId"]
       29 GETUPVAL                         R6 7
       30 SETTABLEKS                       R6 R5 K8 ["contentId"]
       32 SETTABLEKS                       R2 R5 K9 ["newDisplayName"]
       34 LOADN                            R7 0
       35 JUMPIFLT                         R7 R1 ; [+2]
       37 LOADB                            R6 0 +1
       38 LOADB                            R6 1
       39 SETTABLEKS                       R6 R5 K10 ["showChip"]
       41 CALL                             R3 2 0
       42 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["observeLinkChanges"]
        3 GETUPVAL                         R6 1
        4 MOVE                             R7 R4
        5 NEWCLOSURE                       R8 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R4
        8 CAPTURE                          VAL R3
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R2
       14 CALL                             R5 3 0
       15 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R2 R1 K0 ["requestId"]
        2 GETTABLEKS                       R3 R1 K1 ["generationId"]
        4 GETTABLEKS                       R4 R1 K2 ["contentId"]
        6 GETTABLEKS                       R5 R1 K3 ["generationName"]
        8 GETTABLEKS                       R6 R1 K4 ["meshId"]
       10 GETTABLEKS                       R7 R1 K5 ["textureId"]
       12 GETUPVAL                         R10 0
       13 GETTABLE                         R9 R10 R2
       14 JUMPIF                           R9 ; [+25]
       15 DUPTABLE                         R10 K13 [{"shouldUseSelection", "selectedBoundingBox", "boundingBoxGhost", "generationThread", "editableMeshPart", "meshPart", "insertionCounter"}]
       16 LOADB                            R11 0
       17 SETTABLEKS                       R11 R10 K6 ["shouldUseSelection"]
       19 LOADNIL                          R11
       20 SETTABLEKS                       R11 R10 K7 ["selectedBoundingBox"]
       22 LOADNIL                          R11
       23 SETTABLEKS                       R11 R10 K8 ["boundingBoxGhost"]
       25 LOADNIL                          R11
       26 SETTABLEKS                       R11 R10 K9 ["generationThread"]
       28 LOADNIL                          R11
       29 SETTABLEKS                       R11 R10 K10 ["editableMeshPart"]
       31 LOADNIL                          R11
       32 SETTABLEKS                       R11 R10 K11 ["meshPart"]
       34 LOADN                            R11 0
       35 SETTABLEKS                       R11 R10 K12 ["insertionCounter"]
       37 MOVE                             R9 R10
       38 GETUPVAL                         R10 0
       39 SETTABLE                         R9 R10 R2
       40 FASTCALL2K                       ASSERT R9 K14 ; [+5]
       42 MOVE                             R11 R9
       43 LOADK                            R12 K14 ["Failed to get asset dm cache for request"]
       44 GETIMPORT                        R10 K16 [assert]
       46 CALL                             R10 2 0
       47 MOVE                             R8 R9
       48 GETTABLEKS                       R9 R8 K12 ["insertionCounter"]
       50 ADDK                             R9 R9 K17 [1]
       51 SETTABLEKS                       R9 R8 K12 ["insertionCounter"]
       53 GETTABLEKS                       R9 R8 K18 ["size"]
       55 GETTABLEKS                       R10 R8 K19 ["position"]
       57 GETTABLEKS                       R11 R8 K20 ["orientation"]
       59 GETTABLEKS                       R12 R8 K12 ["insertionCounter"]
       61 LOADK                            R14 K21 ["Insert AI Generated MeshPart %*"]
       62 MOVE                             R16 R12
       63 NAMECALL                         R14 R14 K22 ["format"]
       65 CALL                             R14 2 1
       66 MOVE                             R13 R14
       67 GETUPVAL                         R15 1
       68 GETTABLEKS                       R14 R15 K23 ["startRecording"]
       70 MOVE                             R15 R2
       71 MOVE                             R16 R13
       72 CALL                             R14 2 0
       73 JUMPIFEQKNIL                     R9 ; [+2]
       75 LOADB                            R14 0 +1
       76 LOADB                            R14 1
       77 GETTABLEKS                       R16 R8 K11 ["meshPart"]
       79 JUMPIF                           R16 ; [+36]
       80 FASTCALL2K                       ASSERT R6 K24 ; [+5]
       82 MOVE                             R18 R6
       83 LOADK                            R19 K24 ["Failed to create mesh asset"]
       84 GETIMPORT                        R17 K16 [assert]
       86 CALL                             R17 2 0
       87 FASTCALL2K                       ASSERT R7 K25 ; [+5]
       89 MOVE                             R18 R7
       90 LOADK                            R19 K25 ["Failed to create texture asset"]
       91 GETIMPORT                        R17 K16 [assert]
       93 CALL                             R17 2 0
       94 GETUPVAL                         R17 2
       95 MOVE                             R18 R3
       96 MOVE                             R19 R6
       97 MOVE                             R20 R7
       98 CALL                             R17 3 1
       99 MOVE                             R16 R17
      100 FASTCALL2K                       ASSERT R16 K26 ; [+5]
      102 MOVE                             R18 R16
      103 LOADK                            R19 K26 ["Failed to create MeshPart"]
      104 GETIMPORT                        R17 K16 [assert]
      106 CALL                             R17 2 0
      107 LOADB                            R17 1
      108 SETTABLEKS                       R17 R16 K27 ["Anchored"]
      110 JUMPIFNOT                        R14 ; [+3]
      111 GETUPVAL                         R17 3
      112 MOVE                             R18 R16
      113 CALL                             R17 1 0
      114 SETTABLEKS                       R16 R8 K11 ["meshPart"]
      116 FASTCALL2K                       ASSERT R16 K26 ; [+5]
      118 MOVE                             R18 R16
      119 LOADK                            R19 K26 ["Failed to create MeshPart"]
      120 GETIMPORT                        R17 K16 [assert]
      122 CALL                             R17 2 0
      123 MOVE                             R15 R16
      124 NAMECALL                         R15 R15 K28 ["Clone"]
      126 CALL                             R15 1 1
      127 GETUPVAL                         R17 4
      128 GETTABLEKS                       R16 R17 K29 ["addAssistantLink"]
      130 MOVE                             R17 R15
      131 LOADK                            R19 K30 ["Assistant-MeshGenLink-%*"]
      132 MOVE                             R21 R3
      133 NAMECALL                         R19 R19 K22 ["format"]
      135 CALL                             R19 2 1
      136 MOVE                             R18 R19
      137 CALL                             R16 2 0
      138 GETTABLEKS                       R16 R8 K12 ["insertionCounter"]
      140 JUMPIFNOTEQKN                    R16 K17 [1] ; [+24]
      142 GETTABLEKS                       R16 R1 K31 ["messageId"]
      144 LOADK                            R18 K30 ["Assistant-MeshGenLink-%*"]
      145 MOVE                             R20 R3
      146 NAMECALL                         R18 R18 K22 ["format"]
      148 CALL                             R18 2 1
      149 MOVE                             R17 R18
      150 GETUPVAL                         R19 4
      151 GETTABLEKS                       R18 R19 K32 ["observeLinkChanges"]
      153 GETUPVAL                         R19 5
      154 MOVE                             R20 R17
      155 NEWCLOSURE                       R21 P0
      156 CAPTURE                          UPVAL U6
      157 CAPTURE                          VAL R17
      158 CAPTURE                          VAL R5
      159 CAPTURE                          UPVAL U7
      160 CAPTURE                          UPVAL U8
      161 CAPTURE                          VAL R0
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R4
      164 CALL                             R18 3 0
      165 GETTABLEKS                       R16 R8 K12 ["insertionCounter"]
      167 JUMPIFNOTEQKN                    R16 K17 [1] ; [+112]
      169 JUMPIFNOT                        R10 ; [+110]
      170 JUMPIFNOT                        R11 ; [+109]
      171 GETIMPORT                        R17 K35 [CFrame.new]
      173 MOVE                             R18 R10
      174 CALL                             R17 1 1
      175 GETIMPORT                        R18 K37 [CFrame.fromOrientation]
      177 GETTABLEKS                       R19 R11 K38 ["X"]
      179 GETTABLEKS                       R20 R11 K39 ["Y"]
      181 GETTABLEKS                       R21 R11 K40 ["Z"]
      183 CALL                             R18 3 1
      184 MUL                              R16 R17 R18
      185 MOVE                             R19 R16
      186 NAMECALL                         R17 R15 K41 ["PivotTo"]
      188 CALL                             R17 2 0
      189 GETTABLEKS                       R17 R8 K7 ["selectedBoundingBox"]
      191 JUMPIFNOT                        R17 ; [+31]
      192 JUMPIFNOT                        R9 ; [+30]
      193 JUMPIFNOT                        R10 ; [+29]
      194 JUMPIFNOT                        R11 ; [+28]
      195 GETTABLEKS                       R18 R17 K42 ["Size"]
      197 GETTABLEKS                       R19 R17 K43 ["Position"]
      199 GETTABLEKS                       R21 R17 K45 ["Orientation"]
      201 MULK                             R20 R21 K44 [0.0174532925199433]
      202 MOVE                             R23 R9
      203 LOADK                            R24 K46 [0.01]
      204 NAMECALL                         R21 R18 K47 ["FuzzyEq"]
      206 CALL                             R21 3 1
      207 JUMPIFNOT                        R21 ; [+15]
      208 MOVE                             R23 R10
      209 LOADK                            R24 K46 [0.01]
      210 NAMECALL                         R21 R19 K47 ["FuzzyEq"]
      212 CALL                             R21 3 1
      213 JUMPIFNOT                        R21 ; [+9]
      214 MOVE                             R23 R11
      215 LOADK                            R24 K46 [0.01]
      216 NAMECALL                         R21 R20 K47 ["FuzzyEq"]
      218 CALL                             R21 3 1
      219 JUMPIFNOT                        R21 ; [+3]
      220 LOADNIL                          R21
      221 SETTABLEKS                       R21 R17 K48 ["Parent"]
      223 DUPTABLE                         R18 K49 [{"requestId"}]
      224 SETTABLEKS                       R2 R18 K0 ["requestId"]
      226 GETTABLEKS                       R20 R18 K0 ["requestId"]
      228 GETUPVAL                         R22 0
      229 GETTABLE                         R21 R22 R20
      230 JUMPIF                           R21 ; [+25]
      231 DUPTABLE                         R22 K13 [{"shouldUseSelection", "selectedBoundingBox", "boundingBoxGhost", "generationThread", "editableMeshPart", "meshPart", "insertionCounter"}]
      232 LOADB                            R23 0
      233 SETTABLEKS                       R23 R22 K6 ["shouldUseSelection"]
      235 LOADNIL                          R23
      236 SETTABLEKS                       R23 R22 K7 ["selectedBoundingBox"]
      238 LOADNIL                          R23
      239 SETTABLEKS                       R23 R22 K8 ["boundingBoxGhost"]
      241 LOADNIL                          R23
      242 SETTABLEKS                       R23 R22 K9 ["generationThread"]
      244 LOADNIL                          R23
      245 SETTABLEKS                       R23 R22 K10 ["editableMeshPart"]
      247 LOADNIL                          R23
      248 SETTABLEKS                       R23 R22 K11 ["meshPart"]
      250 LOADN                            R23 0
      251 SETTABLEKS                       R23 R22 K12 ["insertionCounter"]
      253 MOVE                             R21 R22
      254 GETUPVAL                         R22 0
      255 SETTABLE                         R21 R22 R20
      256 FASTCALL2K                       ASSERT R21 K14 ; [+5]
      258 MOVE                             R23 R21
      259 LOADK                            R24 K14 ["Failed to get asset dm cache for request"]
      260 GETIMPORT                        R22 K16 [assert]
      262 CALL                             R22 2 0
      263 MOVE                             R19 R21
      264 GETTABLEKS                       R20 R19 K7 ["selectedBoundingBox"]
      266 JUMPIFNOT                        R20 ; [+3]
      267 LOADNIL                          R21
      268 SETTABLEKS                       R21 R19 K7 ["selectedBoundingBox"]
      270 GETTABLEKS                       R21 R19 K8 ["boundingBoxGhost"]
      272 JUMPIFNOT                        R21 ; [+13]
      273 NAMECALL                         R22 R21 K50 ["Destroy"]
      275 CALL                             R22 1 0
      276 LOADNIL                          R22
      277 SETTABLEKS                       R22 R19 K8 ["boundingBoxGhost"]
      279 JUMP                             ; [+6]
      280 GETUPVAL                         R17 4
      281 GETTABLEKS                       R16 R17 K51 ["setPositionOnGround"]
      283 MOVE                             R17 R15
      284 LOADB                            R18 1
      285 CALL                             R16 2 0
      286 GETIMPORT                        R16 K53 [workspace]
      288 SETTABLEKS                       R16 R15 K48 ["Parent"]
      290 GETUPVAL                         R17 1
      291 GETTABLEKS                       R16 R17 K54 ["endRecording"]
      293 MOVE                             R17 R2
      294 CALL                             R16 1 0
      295 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K7 [{"requestId", "generationId", "messageId", "contentId", "generationName", "meshId", "textureId"}]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["requestId"]
        6 SETTABLEKS                       R3 R2 K0 ["requestId"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K1 ["generationId"]
       11 SETTABLEKS                       R3 R2 K1 ["generationId"]
       13 GETUPVAL                         R3 2
       14 SETTABLEKS                       R3 R2 K2 ["messageId"]
       16 GETUPVAL                         R3 3
       17 SETTABLEKS                       R3 R2 K3 ["contentId"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K4 ["generationName"]
       22 SETTABLEKS                       R3 R2 K4 ["generationName"]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R3 R4 K5 ["meshId"]
       27 SETTABLEKS                       R3 R2 K5 ["meshId"]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R3 R4 K6 ["textureId"]
       32 SETTABLEKS                       R3 R2 K6 ["textureId"]
       34 CALL                             R0 2 -1
       35 RETURN                           R0 -1

PROTO_35:
        0 MOVE                             R5 R3
        1 GETUPVAL                         R9 0
        2 GETTABLEKS                       R8 R9 K0 ["Enums"]
        4 GETTABLEKS                       R7 R8 K1 ["InsertionState"]
        6 GETTABLEKS                       R6 R7 K2 ["Inserting"]
        8 CALL                             R5 1 0
        9 GETIMPORT                        R5 K4 [pcall]
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 CALL                             R5 1 2
       17 GETUPVAL                         R7 2
       18 CALL                             R7 0 1
       19 JUMPIF                           R7 ; [+26]
       20 GETUPVAL                         R10 3
       21 GETTABLEKS                       R9 R10 K5 ["get"]
       23 CALL                             R9 0 1
       24 GETTABLEKS                       R8 R9 K6 ["EventLogger"]
       26 GETTABLEKS                       R7 R8 K7 ["logMeshGenMeshInserted"]
       28 DUPTABLE                         R8 K12 [{"requestId", "generationId", "success", "errorMessage"}]
       29 GETTABLEKS                       R9 R0 K8 ["requestId"]
       31 SETTABLEKS                       R9 R8 K8 ["requestId"]
       33 GETTABLEKS                       R9 R0 K9 ["generationId"]
       35 SETTABLEKS                       R9 R8 K9 ["generationId"]
       37 SETTABLEKS                       R5 R8 K10 ["success"]
       39 JUMPIF                           R5 ; [+2]
       40 MOVE                             R9 R6
       41 JUMP                             ; [+1]
       42 LOADK                            R9 K13 [""]
       43 SETTABLEKS                       R9 R8 K11 ["errorMessage"]
       45 CALL                             R7 1 0
       46 JUMPIF                           R5 ; [+10]
       47 MOVE                             R7 R4
       48 GETUPVAL                         R11 0
       49 GETTABLEKS                       R10 R11 K0 ["Enums"]
       51 GETTABLEKS                       R9 R10 K14 ["InsertionFailureReason"]
       53 GETTABLEKS                       R8 R9 K15 ["InsertFailed"]
       55 CALL                             R7 1 0
       56 RETURN                           R0 0
       57 MOVE                             R7 R3
       58 GETUPVAL                         R11 0
       59 GETTABLEKS                       R10 R11 K0 ["Enums"]
       61 GETTABLEKS                       R9 R10 K1 ["InsertionState"]
       63 GETTABLEKS                       R8 R9 K16 ["None"]
       65 CALL                             R7 1 0
       66 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["getContentHooks"]
        6 GETUPVAL                         R2 2
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R1 K1 ["editContent"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K1 ["editContent"]
       16 DUPTABLE                         R2 K5 [{"messageId", "contentId", "transformFn"}]
       17 GETUPVAL                         R3 3
       18 SETTABLEKS                       R3 R2 K2 ["messageId"]
       20 GETUPVAL                         R3 2
       21 SETTABLEKS                       R3 R2 K3 ["contentId"]
       23 SETTABLEKS                       R0 R2 K4 ["transformFn"]
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["generationState"]
        3 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["insertState"]
        3 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Enums"]
        3 GETTABLEKS                       R2 R3 K1 ["GenerationState"]
        5 GETTABLEKS                       R1 R2 K2 ["GenerationFailed"]
        7 SETTABLEKS                       R1 R0 K3 ["generationState"]
        9 GETUPVAL                         R1 1
       10 SETTABLEKS                       R1 R0 K4 ["failureReason"]
       12 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Enums"]
        3 GETTABLEKS                       R2 R3 K1 ["InsertionState"]
        5 GETTABLEKS                       R1 R2 K2 ["Failed"]
        7 SETTABLEKS                       R1 R0 K3 ["insertState"]
        9 GETUPVAL                         R1 1
       10 SETTABLEKS                       R1 R0 K4 ["failureReason"]
       12 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["previewInstance"]
        3 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_47:
        0 GETTABLEKS                       R1 R0 K0 ["previewImages"]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 SETTABLE                         R3 R1 R2
        5 RETURN                           R0 0

PROTO_48:
        0 LOADB                            R3 0
        1 LOADN                            R4 1
        2 JUMPIFNOTLE                      R4 R0 ; [+6]
        4 LOADN                            R4 4
        5 JUMPIFLE                         R0 R4 ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K0 ; [+4]
       11 LOADK                            R4 K0 ["Index out of bounds for preview images"]
       12 GETIMPORT                        R2 K2 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 0
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isPublished"]
        3 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETUPVAL                         R3 0
        4 GETTABLE                         R2 R3 R1
        5 RETURN                           R2 1
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 NEWCLOSURE                       R3 P1
       12 CAPTURE                          VAL R2
       13 NEWCLOSURE                       R4 P2
       14 CAPTURE                          VAL R2
       15 NEWCLOSURE                       R5 P3
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U3
       18 NEWCLOSURE                       R6 P4
       19 CAPTURE                          VAL R2
       20 CAPTURE                          UPVAL U3
       21 NEWCLOSURE                       R7 P5
       22 CAPTURE                          VAL R2
       23 NEWCLOSURE                       R8 P6
       24 CAPTURE                          VAL R2
       25 NEWCLOSURE                       R9 P7
       26 CAPTURE                          VAL R2
       27 DUPTABLE                         R10 K7 [{"updateGenState", "updateInsertState", "setGenerationFailure", "setInsertionFailure", "setPreviewInstance", "setPreviewImage", "setIsPublished"}]
       28 SETTABLEKS                       R3 R10 K0 ["updateGenState"]
       30 SETTABLEKS                       R4 R10 K1 ["updateInsertState"]
       32 SETTABLEKS                       R5 R10 K2 ["setGenerationFailure"]
       34 SETTABLEKS                       R6 R10 K3 ["setInsertionFailure"]
       36 SETTABLEKS                       R7 R10 K4 ["setPreviewInstance"]
       38 SETTABLEKS                       R8 R10 K5 ["setPreviewImage"]
       40 SETTABLEKS                       R9 R10 K6 ["setIsPublished"]
       42 GETUPVAL                         R11 0
       43 SETTABLE                         R10 R11 R1
       44 RETURN                           R10 1

PROTO_52:
        0 GETTABLEKS                       R3 R1 K0 ["requestId"]
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R3
        4 JUMPIF                           R4 ; [+25]
        5 DUPTABLE                         R5 K8 [{"shouldUseSelection", "selectedBoundingBox", "boundingBoxGhost", "generationThread", "editableMeshPart", "meshPart", "insertionCounter"}]
        6 LOADB                            R6 0
        7 SETTABLEKS                       R6 R5 K1 ["shouldUseSelection"]
        9 LOADNIL                          R6
       10 SETTABLEKS                       R6 R5 K2 ["selectedBoundingBox"]
       12 LOADNIL                          R6
       13 SETTABLEKS                       R6 R5 K3 ["boundingBoxGhost"]
       15 LOADNIL                          R6
       16 SETTABLEKS                       R6 R5 K4 ["generationThread"]
       18 LOADNIL                          R6
       19 SETTABLEKS                       R6 R5 K5 ["editableMeshPart"]
       21 LOADNIL                          R6
       22 SETTABLEKS                       R6 R5 K6 ["meshPart"]
       24 LOADN                            R6 0
       25 SETTABLEKS                       R6 R5 K7 ["insertionCounter"]
       27 MOVE                             R4 R5
       28 GETUPVAL                         R5 0
       29 SETTABLE                         R4 R5 R3
       30 FASTCALL2K                       ASSERT R4 K9 ; [+5]
       32 MOVE                             R6 R4
       33 LOADK                            R7 K9 ["Failed to get asset dm cache for request"]
       34 GETIMPORT                        R5 K11 [assert]
       36 CALL                             R5 2 0
       37 MOVE                             R2 R4
       38 GETTABLEKS                       R3 R1 K12 ["value"]
       40 SETTABLEKS                       R3 R2 K1 ["shouldUseSelection"]
       42 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["selection"]
        3 GETTABLEKS                       R1 R2 K1 ["get"]
        5 CALL                             R1 0 1
        6 LENGTH                           R2 R1
        7 JUMPIFNOTEQKN                    R2 K2 [0] ; [+3]
        9 LOADB                            R2 0
       10 RETURN                           R2 1
       11 GETTABLEN                        R2 R1 1
       12 LOADK                            R5 K3 ["Part"]
       13 NAMECALL                         R3 R2 K4 ["IsA"]
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_54:
        0 DUPTABLE                         R3 K12 [{"TopFront", "BottomFront", "LeftFront", "RightFront", "TopBack", "BottomBack", "LeftBack", "RightBack", "TopLeft", "BottomLeft", "TopRight", "BottomRight"}]
        1 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
        2 GETIMPORT                        R6 K18 [CFrame.new]
        4 LOADN                            R7 0
        5 GETTABLEKS                       R9 R1 K20 ["Y"]
        7 DIVK                             R8 R9 K19 [2]
        8 GETTABLEKS                       R10 R1 K21 ["Z"]
       10 DIVK                             R9 R10 K19 [2]
       11 CALL                             R6 3 1
       12 MUL                              R5 R0 R6
       13 SETTABLEKS                       R5 R4 K13 ["Transform"]
       15 GETTABLEKS                       R7 R1 K22 ["X"]
       17 ADD                              R6 R7 R2
       18 FASTCALL3                        VECTOR R6 R2 R2
       20 MOVE                             R7 R2
       21 MOVE                             R8 R2
       22 GETIMPORT                        R5 K24 [Vector3.new]
       24 CALL                             R5 3 1
       25 SETTABLEKS                       R5 R4 K14 ["Size"]
       27 SETTABLEKS                       R4 R3 K0 ["TopFront"]
       29 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
       30 GETIMPORT                        R6 K18 [CFrame.new]
       32 LOADN                            R7 0
       33 GETTABLEKS                       R10 R1 K20 ["Y"]
       35 MINUS                            R9 R10
       36 DIVK                             R8 R9 K19 [2]
       37 GETTABLEKS                       R10 R1 K21 ["Z"]
       39 DIVK                             R9 R10 K19 [2]
       40 CALL                             R6 3 1
       41 MUL                              R5 R0 R6
       42 SETTABLEKS                       R5 R4 K13 ["Transform"]
       44 GETTABLEKS                       R7 R1 K22 ["X"]
       46 ADD                              R6 R7 R2
       47 FASTCALL3                        VECTOR R6 R2 R2
       49 MOVE                             R7 R2
       50 MOVE                             R8 R2
       51 GETIMPORT                        R5 K24 [Vector3.new]
       53 CALL                             R5 3 1
       54 SETTABLEKS                       R5 R4 K14 ["Size"]
       56 SETTABLEKS                       R4 R3 K1 ["BottomFront"]
       58 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
       59 GETIMPORT                        R6 K18 [CFrame.new]
       61 GETTABLEKS                       R9 R1 K22 ["X"]
       63 MINUS                            R8 R9
       64 DIVK                             R7 R8 K19 [2]
       65 LOADN                            R8 0
       66 GETTABLEKS                       R10 R1 K21 ["Z"]
       68 DIVK                             R9 R10 K19 [2]
       69 CALL                             R6 3 1
       70 MUL                              R5 R0 R6
       71 SETTABLEKS                       R5 R4 K13 ["Transform"]
       73 GETTABLEKS                       R8 R1 K20 ["Y"]
       75 ADD                              R7 R8 R2
       76 FASTCALL3                        VECTOR R2 R7 R2
       78 MOVE                             R6 R2
       79 MOVE                             R8 R2
       80 GETIMPORT                        R5 K24 [Vector3.new]
       82 CALL                             R5 3 1
       83 SETTABLEKS                       R5 R4 K14 ["Size"]
       85 SETTABLEKS                       R4 R3 K2 ["LeftFront"]
       87 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
       88 GETIMPORT                        R6 K18 [CFrame.new]
       90 GETTABLEKS                       R8 R1 K22 ["X"]
       92 DIVK                             R7 R8 K19 [2]
       93 LOADN                            R8 0
       94 GETTABLEKS                       R10 R1 K21 ["Z"]
       96 DIVK                             R9 R10 K19 [2]
       97 CALL                             R6 3 1
       98 MUL                              R5 R0 R6
       99 SETTABLEKS                       R5 R4 K13 ["Transform"]
      101 GETTABLEKS                       R8 R1 K20 ["Y"]
      103 ADD                              R7 R8 R2
      104 FASTCALL3                        VECTOR R2 R7 R2
      106 MOVE                             R6 R2
      107 MOVE                             R8 R2
      108 GETIMPORT                        R5 K24 [Vector3.new]
      110 CALL                             R5 3 1
      111 SETTABLEKS                       R5 R4 K14 ["Size"]
      113 SETTABLEKS                       R4 R3 K3 ["RightFront"]
      115 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
      116 GETIMPORT                        R6 K18 [CFrame.new]
      118 LOADN                            R7 0
      119 GETTABLEKS                       R9 R1 K20 ["Y"]
      121 DIVK                             R8 R9 K19 [2]
      122 GETTABLEKS                       R11 R1 K21 ["Z"]
      124 MINUS                            R10 R11
      125 DIVK                             R9 R10 K19 [2]
      126 CALL                             R6 3 1
      127 MUL                              R5 R0 R6
      128 SETTABLEKS                       R5 R4 K13 ["Transform"]
      130 GETTABLEKS                       R7 R1 K22 ["X"]
      132 ADD                              R6 R7 R2
      133 FASTCALL3                        VECTOR R6 R2 R2
      135 MOVE                             R7 R2
      136 MOVE                             R8 R2
      137 GETIMPORT                        R5 K24 [Vector3.new]
      139 CALL                             R5 3 1
      140 SETTABLEKS                       R5 R4 K14 ["Size"]
      142 SETTABLEKS                       R4 R3 K4 ["TopBack"]
      144 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
      145 GETIMPORT                        R6 K18 [CFrame.new]
      147 LOADN                            R7 0
      148 GETTABLEKS                       R10 R1 K20 ["Y"]
      150 MINUS                            R9 R10
      151 DIVK                             R8 R9 K19 [2]
      152 GETTABLEKS                       R11 R1 K21 ["Z"]
      154 MINUS                            R10 R11
      155 DIVK                             R9 R10 K19 [2]
      156 CALL                             R6 3 1
      157 MUL                              R5 R0 R6
      158 SETTABLEKS                       R5 R4 K13 ["Transform"]
      160 GETTABLEKS                       R7 R1 K22 ["X"]
      162 ADD                              R6 R7 R2
      163 FASTCALL3                        VECTOR R6 R2 R2
      165 MOVE                             R7 R2
      166 MOVE                             R8 R2
      167 GETIMPORT                        R5 K24 [Vector3.new]
      169 CALL                             R5 3 1
      170 SETTABLEKS                       R5 R4 K14 ["Size"]
      172 SETTABLEKS                       R4 R3 K5 ["BottomBack"]
      174 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
      175 GETIMPORT                        R6 K18 [CFrame.new]
      177 GETTABLEKS                       R9 R1 K22 ["X"]
      179 MINUS                            R8 R9
      180 DIVK                             R7 R8 K19 [2]
      181 LOADN                            R8 0
      182 GETTABLEKS                       R11 R1 K21 ["Z"]
      184 MINUS                            R10 R11
      185 DIVK                             R9 R10 K19 [2]
      186 CALL                             R6 3 1
      187 MUL                              R5 R0 R6
      188 SETTABLEKS                       R5 R4 K13 ["Transform"]
      190 GETTABLEKS                       R8 R1 K20 ["Y"]
      192 ADD                              R7 R8 R2
      193 FASTCALL3                        VECTOR R2 R7 R2
      195 MOVE                             R6 R2
      196 MOVE                             R8 R2
      197 GETIMPORT                        R5 K24 [Vector3.new]
      199 CALL                             R5 3 1
      200 SETTABLEKS                       R5 R4 K14 ["Size"]
      202 SETTABLEKS                       R4 R3 K6 ["LeftBack"]
      204 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
      205 GETIMPORT                        R6 K18 [CFrame.new]
      207 GETTABLEKS                       R8 R1 K22 ["X"]
      209 DIVK                             R7 R8 K19 [2]
      210 LOADN                            R8 0
      211 GETTABLEKS                       R11 R1 K21 ["Z"]
      213 MINUS                            R10 R11
      214 DIVK                             R9 R10 K19 [2]
      215 CALL                             R6 3 1
      216 MUL                              R5 R0 R6
      217 SETTABLEKS                       R5 R4 K13 ["Transform"]
      219 GETTABLEKS                       R8 R1 K20 ["Y"]
      221 ADD                              R7 R8 R2
      222 FASTCALL3                        VECTOR R2 R7 R2
      224 MOVE                             R6 R2
      225 MOVE                             R8 R2
      226 GETIMPORT                        R5 K24 [Vector3.new]
      228 CALL                             R5 3 1
      229 SETTABLEKS                       R5 R4 K14 ["Size"]
      231 SETTABLEKS                       R4 R3 K7 ["RightBack"]
      233 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
      234 GETIMPORT                        R6 K18 [CFrame.new]
      236 GETTABLEKS                       R9 R1 K22 ["X"]
      238 MINUS                            R8 R9
      239 DIVK                             R7 R8 K19 [2]
      240 GETTABLEKS                       R9 R1 K20 ["Y"]
      242 DIVK                             R8 R9 K19 [2]
      243 LOADN                            R9 0
      244 CALL                             R6 3 1
      245 MUL                              R5 R0 R6
      246 SETTABLEKS                       R5 R4 K13 ["Transform"]
      248 GETTABLEKS                       R9 R1 K21 ["Z"]
      250 ADD                              R8 R9 R2
      251 FASTCALL3                        VECTOR R2 R2 R8
      253 MOVE                             R6 R2
      254 MOVE                             R7 R2
      255 GETIMPORT                        R5 K24 [Vector3.new]
      257 CALL                             R5 3 1
      258 SETTABLEKS                       R5 R4 K14 ["Size"]
      260 SETTABLEKS                       R4 R3 K8 ["TopLeft"]
      262 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
      263 GETIMPORT                        R6 K18 [CFrame.new]
      265 GETTABLEKS                       R9 R1 K22 ["X"]
      267 MINUS                            R8 R9
      268 DIVK                             R7 R8 K19 [2]
      269 GETTABLEKS                       R10 R1 K20 ["Y"]
      271 MINUS                            R9 R10
      272 DIVK                             R8 R9 K19 [2]
      273 LOADN                            R9 0
      274 CALL                             R6 3 1
      275 MUL                              R5 R0 R6
      276 SETTABLEKS                       R5 R4 K13 ["Transform"]
      278 GETTABLEKS                       R9 R1 K21 ["Z"]
      280 ADD                              R8 R9 R2
      281 FASTCALL3                        VECTOR R2 R2 R8
      283 MOVE                             R6 R2
      284 MOVE                             R7 R2
      285 GETIMPORT                        R5 K24 [Vector3.new]
      287 CALL                             R5 3 1
      288 SETTABLEKS                       R5 R4 K14 ["Size"]
      290 SETTABLEKS                       R4 R3 K9 ["BottomLeft"]
      292 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
      293 GETIMPORT                        R6 K18 [CFrame.new]
      295 GETTABLEKS                       R8 R1 K22 ["X"]
      297 DIVK                             R7 R8 K19 [2]
      298 GETTABLEKS                       R9 R1 K20 ["Y"]
      300 DIVK                             R8 R9 K19 [2]
      301 LOADN                            R9 0
      302 CALL                             R6 3 1
      303 MUL                              R5 R0 R6
      304 SETTABLEKS                       R5 R4 K13 ["Transform"]
      306 GETTABLEKS                       R9 R1 K21 ["Z"]
      308 ADD                              R8 R9 R2
      309 FASTCALL3                        VECTOR R2 R2 R8
      311 MOVE                             R6 R2
      312 MOVE                             R7 R2
      313 GETIMPORT                        R5 K24 [Vector3.new]
      315 CALL                             R5 3 1
      316 SETTABLEKS                       R5 R4 K14 ["Size"]
      318 SETTABLEKS                       R4 R3 K10 ["TopRight"]
      320 DUPTABLE                         R4 K15 [{"Transform", "Size"}]
      321 GETIMPORT                        R6 K18 [CFrame.new]
      323 GETTABLEKS                       R8 R1 K22 ["X"]
      325 DIVK                             R7 R8 K19 [2]
      326 GETTABLEKS                       R10 R1 K20 ["Y"]
      328 MINUS                            R9 R10
      329 DIVK                             R8 R9 K19 [2]
      330 LOADN                            R9 0
      331 CALL                             R6 3 1
      332 MUL                              R5 R0 R6
      333 SETTABLEKS                       R5 R4 K13 ["Transform"]
      335 GETTABLEKS                       R9 R1 K21 ["Z"]
      337 ADD                              R8 R9 R2
      338 FASTCALL3                        VECTOR R2 R2 R8
      340 MOVE                             R6 R2
      341 MOVE                             R7 R2
      342 GETIMPORT                        R5 K24 [Vector3.new]
      344 CALL                             R5 3 1
      345 SETTABLEKS                       R5 R4 K14 ["Size"]
      347 SETTABLEKS                       R4 R3 K11 ["BottomRight"]
      349 RETURN                           R3 1

PROTO_55:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["BoxHandleAdornment"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R0 R3 K4 ["CFrame"]
        6 SETTABLEKS                       R1 R3 K5 ["Size"]
        8 GETUPVAL                         R4 0
        9 SETTABLEKS                       R4 R3 K6 ["Adornee"]
       11 GETIMPORT                        R4 K9 [Color3.fromRGB]
       13 LOADN                            R5 0
       14 LOADN                            R6 170
       15 LOADN                            R7 255
       16 CALL                             R4 3 1
       17 SETTABLEKS                       R4 R3 K7 ["Color3"]
       19 SETTABLEKS                       R2 R3 K10 ["Transparency"]
       21 GETUPVAL                         R4 1
       22 SETTABLEKS                       R4 R3 K11 ["Parent"]
       24 RETURN                           R0 0

PROTO_56:
        0 GETIMPORT                        R2 K1 [workspace]
        2 LOADK                            R4 K2 ["Terrain"]
        3 NAMECALL                         R2 R2 K3 ["FindFirstChildOfClass"]
        5 CALL                             R2 2 1
        6 FASTCALL2K                       ASSERT R2 K4 ; [+5]
        8 MOVE                             R4 R2
        9 LOADK                            R5 K4 ["Terrain not found in workspace"]
       10 GETIMPORT                        R3 K6 [assert]
       12 CALL                             R3 2 0
       13 GETIMPORT                        R3 K9 [Instance.new]
       15 LOADK                            R4 K10 ["Folder"]
       16 CALL                             R3 1 1
       17 LOADK                            R4 K11 ["AssistantMeshGenBoundingBoxGhost"]
       18 SETTABLEKS                       R4 R3 K12 ["Name"]
       20 LOADB                            R4 0
       21 SETTABLEKS                       R4 R3 K13 ["Archivable"]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R3
       26 GETUPVAL                         R5 0
       27 MOVE                             R6 R1
       28 MOVE                             R7 R0
       29 LOADK                            R8 K14 [0.1]
       30 CALL                             R5 3 1
       31 MOVE                             R6 R5
       32 LOADNIL                          R7
       33 LOADNIL                          R8
       34 FORGPREP                         R6
       35 GETTABLEKS                       R11 R10 K15 ["Transform"]
       37 GETTABLEKS                       R12 R10 K16 ["Size"]
       39 GETIMPORT                        R13 K9 [Instance.new]
       41 LOADK                            R14 K17 ["BoxHandleAdornment"]
       42 CALL                             R13 1 1
       43 SETTABLEKS                       R11 R13 K18 ["CFrame"]
       45 SETTABLEKS                       R12 R13 K16 ["Size"]
       47 SETTABLEKS                       R2 R13 K19 ["Adornee"]
       49 GETIMPORT                        R14 K22 [Color3.fromRGB]
       51 LOADN                            R15 0
       52 LOADN                            R16 170
       53 LOADN                            R17 255
       54 CALL                             R14 3 1
       55 SETTABLEKS                       R14 R13 K20 ["Color3"]
       57 LOADK                            R14 K23 [0.5]
       58 SETTABLEKS                       R14 R13 K24 ["Transparency"]
       60 SETTABLEKS                       R3 R13 K25 ["Parent"]
       62 FORGLOOP                         R6 2 ; [-28]
       64 GETIMPORT                        R6 K9 [Instance.new]
       66 LOADK                            R7 K17 ["BoxHandleAdornment"]
       67 CALL                             R6 1 1
       68 SETTABLEKS                       R1 R6 K18 ["CFrame"]
       70 SETTABLEKS                       R0 R6 K16 ["Size"]
       72 SETTABLEKS                       R2 R6 K19 ["Adornee"]
       74 GETIMPORT                        R7 K22 [Color3.fromRGB]
       76 LOADN                            R8 0
       77 LOADN                            R9 170
       78 LOADN                            R10 255
       79 CALL                             R7 3 1
       80 SETTABLEKS                       R7 R6 K20 ["Color3"]
       82 LOADK                            R7 K26 [0.8]
       83 SETTABLEKS                       R7 R6 K24 ["Transparency"]
       85 SETTABLEKS                       R3 R6 K25 ["Parent"]
       87 GETUPVAL                         R6 1
       88 JUMPIF                           R6 ; [+1]
       89 GETUPVAL                         R6 2
       90 SETTABLEKS                       R6 R3 K25 ["Parent"]
       92 RETURN                           R3 1

PROTO_57:
        0 GETTABLEKS                       R3 R1 K0 ["requestId"]
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R3
        4 JUMPIF                           R4 ; [+25]
        5 DUPTABLE                         R5 K8 [{"shouldUseSelection", "selectedBoundingBox", "boundingBoxGhost", "generationThread", "editableMeshPart", "meshPart", "insertionCounter"}]
        6 LOADB                            R6 0
        7 SETTABLEKS                       R6 R5 K1 ["shouldUseSelection"]
        9 LOADNIL                          R6
       10 SETTABLEKS                       R6 R5 K2 ["selectedBoundingBox"]
       12 LOADNIL                          R6
       13 SETTABLEKS                       R6 R5 K3 ["boundingBoxGhost"]
       15 LOADNIL                          R6
       16 SETTABLEKS                       R6 R5 K4 ["generationThread"]
       18 LOADNIL                          R6
       19 SETTABLEKS                       R6 R5 K5 ["editableMeshPart"]
       21 LOADNIL                          R6
       22 SETTABLEKS                       R6 R5 K6 ["meshPart"]
       24 LOADN                            R6 0
       25 SETTABLEKS                       R6 R5 K7 ["insertionCounter"]
       27 MOVE                             R4 R5
       28 GETUPVAL                         R5 0
       29 SETTABLE                         R4 R5 R3
       30 FASTCALL2K                       ASSERT R4 K9 ; [+5]
       32 MOVE                             R6 R4
       33 LOADK                            R7 K9 ["Failed to get asset dm cache for request"]
       34 GETIMPORT                        R5 K11 [assert]
       36 CALL                             R5 2 0
       37 MOVE                             R2 R4
       38 GETTABLEKS                       R3 R2 K1 ["shouldUseSelection"]
       40 JUMPIF                           R3 ; [+2]
       41 LOADNIL                          R3
       42 RETURN                           R3 1
       43 GETTABLEKS                       R5 R2 K2 ["selectedBoundingBox"]
       45 NOT                              R4 R5
       46 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       48 LOADK                            R5 K12 ["Selected bounding box already exists"]
       49 GETIMPORT                        R3 K11 [assert]
       51 CALL                             R3 2 0
       52 GETTABLEKS                       R5 R2 K3 ["boundingBoxGhost"]
       54 NOT                              R4 R5
       55 FASTCALL2K                       ASSERT R4 K13 ; [+4]
       57 LOADK                            R5 K13 ["Bounding box ghost already exists"]
       58 GETIMPORT                        R3 K11 [assert]
       60 CALL                             R3 2 0
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R4 R5 K14 ["selection"]
       64 GETTABLEKS                       R3 R4 K15 ["get"]
       66 CALL                             R3 0 1
       67 LENGTH                           R6 R3
       68 LOADN                            R7 0
       69 JUMPIFLT                         R7 R6 ; [+2]
       71 LOADB                            R5 0 +1
       72 LOADB                            R5 1
       73 FASTCALL2K                       ASSERT R5 K16 ; [+4]
       75 LOADK                            R6 K16 ["Expected to have a selection"]
       76 GETIMPORT                        R4 K11 [assert]
       78 CALL                             R4 2 0
       79 GETTABLEN                        R4 R3 1
       80 LOADK                            R8 K17 ["Part"]
       81 NAMECALL                         R6 R4 K18 ["IsA"]
       83 CALL                             R6 2 1
       84 FASTCALL2K                       ASSERT R6 K19 ; [+4]
       86 LOADK                            R7 K19 ["Selected instance is not a Part"]
       87 GETIMPORT                        R5 K11 [assert]
       89 CALL                             R5 2 0
       90 GETTABLEKS                       R5 R4 K20 ["Size"]
       92 GETTABLEKS                       R6 R4 K21 ["Position"]
       94 GETTABLEKS                       R8 R4 K23 ["Orientation"]
       96 MULK                             R7 R8 K22 [0.0174532925199433]
       97 LOADK                            R9 K24 [{0.02, 0.02, 0.02}]
       98 ADD                              R8 R5 R9
       99 GETUPVAL                         R9 2
      100 MOVE                             R10 R8
      101 NAMECALL                         R11 R4 K25 ["GetPivot"]
      103 CALL                             R11 1 -1
      104 CALL                             R9 -1 1
      105 SETTABLEKS                       R9 R2 K3 ["boundingBoxGhost"]
      107 SETTABLEKS                       R4 R2 K2 ["selectedBoundingBox"]
      109 SETTABLEKS                       R5 R2 K26 ["size"]
      111 SETTABLEKS                       R6 R2 K27 ["position"]
      113 SETTABLEKS                       R7 R2 K28 ["orientation"]
      115 RETURN                           R5 1

PROTO_58:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K1 [{"requestId"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["requestId"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_59:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETUPVAL                         R2 3
        6 GETUPVAL                         R3 4
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1
        9 GETUPVAL                         R0 5
       10 LOADNIL                          R1
       11 DUPTABLE                         R2 K4 [{"contentId", "requestId", "prompt", "suggestedSize"}]
       12 GETUPVAL                         R3 6
       13 SETTABLEKS                       R3 R2 K0 ["contentId"]
       15 GETUPVAL                         R3 7
       16 SETTABLEKS                       R3 R2 K1 ["requestId"]
       18 GETUPVAL                         R3 4
       19 SETTABLEKS                       R3 R2 K2 ["prompt"]
       21 GETUPVAL                         R3 8
       22 SETTABLEKS                       R3 R2 K3 ["suggestedSize"]
       24 CALL                             R0 2 1
       25 MOVE                             R1 R0
       26 LOADNIL                          R2
       27 RETURN                           R1 2

PROTO_60:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [+5]
        7 GETIMPORT                        R2 K3 [warn]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R5 R6 K4 ["Enums"]
       16 GETTABLEKS                       R4 R5 K5 ["GenerationState"]
       18 GETTABLEKS                       R3 R4 K6 ["GeneratingMesh"]
       20 CALL                             R2 1 0
       21 GETIMPORT                        R2 K1 [pcall]
       23 NEWCLOSURE                       R3 P1
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          UPVAL U9
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R1
       33 CALL                             R2 1 3
       34 JUMPIF                           R2 ; [+67]
       35 GETUPVAL                         R5 10
       36 CALL                             R5 0 1
       37 JUMPIFNOT                        R5 ; [+31]
       38 GETIMPORT                        R5 K9 [string.find]
       40 MOVE                             R6 R3
       41 LOADK                            R7 K10 [":"]
       42 CALL                             R5 2 1
       43 LOADNIL                          R6
       44 JUMPIFNOT                        R5 ; [+17]
       45 LOADN                            R9 1
       46 SUBK                             R10 R5 K11 [1]
       47 FASTCALL3                        STRING_SUB R3 R9 R10
       49 MOVE                             R8 R3
       50 GETIMPORT                        R7 K13 [string.sub]
       52 CALL                             R7 3 1
       53 MOVE                             R6 R7
       54 ADDK                             R9 R5 K11 [1]
       55 FASTCALL2                        STRING_SUB R3 R9 ; [+4]
       57 MOVE                             R8 R3
       58 GETIMPORT                        R7 K13 [string.sub]
       60 CALL                             R7 2 1
       61 MOVE                             R3 R7
       62 GETUPVAL                         R7 11
       63 ORK                              R8 R6 K14 [""]
       64 SETTABLEKS                       R8 R7 K15 ["generationId"]
       66 GETUPVAL                         R7 11
       67 SETTABLEKS                       R4 R7 K16 ["editableMeshPart"]
       69 GETIMPORT                        R5 K9 [string.find]
       71 GETIMPORT                        R6 K18 [string.lower]
       73 MOVE                             R7 R3
       74 CALL                             R6 1 1
       75 LOADK                            R7 K19 ["moderat"]
       76 CALL                             R5 2 1
       77 JUMPIFNOT                        R5 ; [+10]
       78 GETUPVAL                         R5 12
       79 GETUPVAL                         R9 3
       80 GETTABLEKS                       R8 R9 K4 ["Enums"]
       82 GETTABLEKS                       R7 R8 K20 ["GenerationFailureReason"]
       84 GETTABLEKS                       R6 R7 K21 ["Moderated"]
       86 CALL                             R5 1 0
       87 JUMP                             ; [+9]
       88 GETUPVAL                         R5 12
       89 GETUPVAL                         R9 3
       90 GETTABLEKS                       R8 R9 K4 ["Enums"]
       92 GETTABLEKS                       R7 R8 K20 ["GenerationFailureReason"]
       94 GETTABLEKS                       R6 R7 K22 ["Failed"]
       96 CALL                             R5 1 0
       97 GETIMPORT                        R5 K24 [error]
       99 MOVE                             R6 R3
      100 LOADN                            R7 0
      101 CALL                             R5 2 0
      102 LOADNIL                          R5
      103 SETUPVAL                         R5 13
      104 GETUPVAL                         R5 11
      105 LOADB                            R6 1
      106 SETTABLEKS                       R6 R5 K25 ["isGenerated"]
      108 GETUPVAL                         R5 11
      109 SETTABLEKS                       R3 R5 K15 ["generationId"]
      111 GETUPVAL                         R5 11
      112 SETTABLEKS                       R4 R5 K16 ["editableMeshPart"]
      114 GETUPVAL                         R5 2
      115 GETUPVAL                         R9 3
      116 GETTABLEKS                       R8 R9 K4 ["Enums"]
      118 GETTABLEKS                       R7 R8 K5 ["GenerationState"]
      120 GETTABLEKS                       R6 R7 K26 ["Generated"]
      122 CALL                             R5 1 0
      123 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K1 [{"requestId"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["requestId"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isGenerated"]
        3 NOT                              R1 R2
        4 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        6 LOADK                            R2 K1 ["Generation already succeeded"]
        7 GETIMPORT                        R0 K3 [assert]
        9 CALL                             R0 2 0
       10 GETIMPORT                        R0 K5 [pcall]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          UPVAL U1
       14 CALL                             R0 1 2
       15 GETUPVAL                         R2 2
       16 CALL                             R2 0 1
       17 JUMPIF                           R2 ; [+30]
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R4 R5 K6 ["get"]
       21 CALL                             R4 0 1
       22 GETTABLEKS                       R3 R4 K7 ["EventLogger"]
       24 GETTABLEKS                       R2 R3 K8 ["logMeshGenCompleted"]
       26 DUPTABLE                         R3 K14 [{"requestId", "generationId", "success", "errorMessage", "prompt"}]
       27 GETUPVAL                         R5 4
       28 ORK                              R4 R5 K15 [""]
       29 SETTABLEKS                       R4 R3 K9 ["requestId"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R4 R5 K10 ["generationId"]
       34 SETTABLEKS                       R4 R3 K10 ["generationId"]
       36 SETTABLEKS                       R0 R3 K11 ["success"]
       38 JUMPIF                           R0 ; [+2]
       39 MOVE                             R4 R1
       40 JUMP                             ; [+1]
       41 LOADK                            R4 K15 [""]
       42 SETTABLEKS                       R4 R3 K12 ["errorMessage"]
       44 GETUPVAL                         R4 5
       45 SETTABLEKS                       R4 R3 K13 ["prompt"]
       47 CALL                             R2 1 0
       48 JUMPIF                           R0 ; [+8]
       49 GETUPVAL                         R2 6
       50 LOADNIL                          R3
       51 DUPTABLE                         R4 K16 [{"requestId"}]
       52 GETUPVAL                         R5 4
       53 SETTABLEKS                       R5 R4 K9 ["requestId"]
       55 CALL                             R2 2 0
       56 RETURN                           R0 0
       57 RETURN                           R0 0

PROTO_64:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 GETUPVAL                         R1 1
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["Generation thread not found"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETIMPORT                        R2 K5 [coroutine.status]
        9 GETUPVAL                         R3 0
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKS                    R2 K6 ["dead"] ; [+2]
       13 LOADB                            R1 0 +1
       14 LOADB                            R1 1
       15 FASTCALL2K                       ASSERT R1 K7 ; [+4]
       17 LOADK                            R2 K7 ["Generation thread already dead"]
       18 GETIMPORT                        R0 K2 [assert]
       20 CALL                             R0 2 0
       21 GETIMPORT                        R0 K10 [task.cancel]
       23 GETUPVAL                         R1 0
       24 CALL                             R0 1 0
       25 LOADNIL                          R0
       26 SETUPVAL                         R0 0
       27 GETUPVAL                         R0 1
       28 CALL                             R0 0 1
       29 JUMPIF                           R0 ; [+7]
       30 GETUPVAL                         R0 2
       31 LOADNIL                          R1
       32 DUPTABLE                         R2 K12 [{"requestId"}]
       33 GETUPVAL                         R3 3
       34 SETTABLEKS                       R3 R2 K11 ["requestId"]
       36 CALL                             R0 2 0
       37 GETUPVAL                         R0 4
       38 LOADNIL                          R1
       39 DUPTABLE                         R2 K12 [{"requestId"}]
       40 GETUPVAL                         R3 3
       41 SETTABLEKS                       R3 R2 K11 ["requestId"]
       43 CALL                             R0 2 0
       44 GETUPVAL                         R0 5
       45 GETUPVAL                         R4 6
       46 GETTABLEKS                       R3 R4 K13 ["Enums"]
       48 GETTABLEKS                       R2 R3 K14 ["GenerationFailureReason"]
       50 GETTABLEKS                       R1 R2 K15 ["Canceled"]
       52 CALL                             R0 1 0
       53 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isGenerated"]
        3 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        5 LOADK                            R2 K1 ["Generation data not found"]
        6 GETIMPORT                        R0 K3 [assert]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 3
       13 GETUPVAL                         R4 4
       14 GETUPVAL                         R5 5
       15 CALL                             R0 5 0
       16 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["isGenerated"]
        3 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        5 LOADK                            R2 K1 ["Generation data not found"]
        6 GETIMPORT                        R0 K3 [assert]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 1
       10 GETUPVAL                         R1 0
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 3
       13 GETUPVAL                         R4 4
       14 GETUPVAL                         R5 5
       15 CALL                             R0 5 0
       16 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 DUPTABLE                         R3 K2 [{"requestId", "value"}]
        3 GETUPVAL                         R4 1
        4 SETTABLEKS                       R4 R3 K0 ["requestId"]
        6 SETTABLEKS                       R0 R3 K1 ["value"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K1 [{"generationId"}]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["generationId"]
        6 SETTABLEKS                       R3 R2 K0 ["generationId"]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_70:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_71:
        0 LOADK                            R2 K0 ["MeshGen-"]
        1 GETUPVAL                         R3 0
        2 LOADB                            R5 0
        3 NAMECALL                         R3 R3 K1 ["GenerateGUID"]
        5 CALL                             R3 2 1
        6 CONCAT                           R1 R2 R3
        7 DUPTABLE                         R2 K7 [{"requestId", "prompt", "generationName", "isGenerated", "generationId"}]
        8 SETTABLEKS                       R1 R2 K2 ["requestId"]
       10 GETUPVAL                         R3 1
       11 SETTABLEKS                       R3 R2 K3 ["prompt"]
       13 GETUPVAL                         R3 1
       14 SETTABLEKS                       R3 R2 K4 ["generationName"]
       16 LOADB                            R3 0
       17 SETTABLEKS                       R3 R2 K5 ["isGenerated"]
       19 LOADK                            R3 K8 [""]
       20 SETTABLEKS                       R3 R2 K6 ["generationId"]
       22 LOADNIL                          R3
       23 GETUPVAL                         R4 2
       24 CALL                             R4 0 1
       25 JUMPIF                           R4 ; [+9]
       26 GETUPVAL                         R7 3
       27 GETTABLEKS                       R6 R7 K9 ["get"]
       29 CALL                             R6 0 1
       30 GETTABLEKS                       R5 R6 K10 ["EventLogger"]
       32 GETTABLEKS                       R4 R5 K11 ["logMeshGenActivated"]
       34 CALL                             R4 0 0
       35 LOADNIL                          R4
       36 LOADNIL                          R5
       37 LOADNIL                          R6
       38 LOADNIL                          R7
       39 LOADNIL                          R8
       40 LOADNIL                          R9
       41 GETUPVAL                         R12 4
       42 GETTABLEKS                       R11 R12 K13 ["shouldUseSelection"]
       44 ORK                              R10 R11 K12 [False]
       45 GETUPVAL                         R11 5
       46 LOADNIL                          R12
       47 DUPTABLE                         R13 K15 [{"requestId", "value"}]
       48 SETTABLEKS                       R1 R13 K2 ["requestId"]
       50 SETTABLEKS                       R10 R13 K14 ["value"]
       52 CALL                             R11 2 0
       53 NEWCLOSURE                       R11 P0
       54 CAPTURE                          UPVAL U6
       55 CAPTURE                          VAL R1
       56 CAPTURE                          REF R4
       57 CAPTURE                          UPVAL U7
       58 CAPTURE                          UPVAL U8
       59 CAPTURE                          UPVAL U9
       60 CAPTURE                          REF R8
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          UPVAL U10
       63 CAPTURE                          UPVAL U11
       64 CAPTURE                          UPVAL U12
       65 CAPTURE                          VAL R2
       66 CAPTURE                          REF R6
       67 CAPTURE                          REF R3
       68 NEWCLOSURE                       R12 P1
       69 CAPTURE                          UPVAL U13
       70 CAPTURE                          VAL R1
       71 NEWCLOSURE                       R13 P2
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R11
       74 CAPTURE                          UPVAL U2
       75 CAPTURE                          UPVAL U3
       76 CAPTURE                          VAL R1
       77 CAPTURE                          UPVAL U1
       78 CAPTURE                          UPVAL U13
       79 DUPTABLE                         R14 K33 [{"type", "mode", "expanded", "initialUseSelection", "generationName", "generationDisplayName", "generationState", "insertState", "isPublished", "previewInstance", "previewImages", "runGeneration", "cancelGeneration", "publishAssets", "insertMeshPart", "setUseSelection", "shouldShowChip", "onChipClicked"}]
       80 GETUPVAL                         R16 7
       81 GETTABLEKS                       R15 R16 K34 ["Type"]
       83 SETTABLEKS                       R15 R14 K16 ["type"]
       85 GETUPVAL                         R17 7
       86 GETTABLEKS                       R16 R17 K35 ["Modes"]
       88 GETTABLEKS                       R15 R16 K36 ["Generated"]
       90 SETTABLEKS                       R15 R14 K17 ["mode"]
       92 LOADB                            R15 1
       93 SETTABLEKS                       R15 R14 K18 ["expanded"]
       95 SETTABLEKS                       R10 R14 K19 ["initialUseSelection"]
       97 GETTABLEKS                       R15 R2 K4 ["generationName"]
       99 SETTABLEKS                       R15 R14 K4 ["generationName"]
      101 GETTABLEKS                       R15 R2 K4 ["generationName"]
      103 SETTABLEKS                       R15 R14 K20 ["generationDisplayName"]
      105 GETUPVAL                         R16 14
      106 JUMPIFNOT                        R16 ; [+8]
      107 GETUPVAL                         R18 7
      108 GETTABLEKS                       R17 R18 K37 ["Enums"]
      110 GETTABLEKS                       R16 R17 K38 ["GenerationState"]
      112 GETTABLEKS                       R15 R16 K39 ["GeneratingMesh"]
      114 JUMP                             ; [+7]
      115 GETUPVAL                         R18 7
      116 GETTABLEKS                       R17 R18 K37 ["Enums"]
      118 GETTABLEKS                       R16 R17 K38 ["GenerationState"]
      120 GETTABLEKS                       R15 R16 K40 ["None"]
      122 SETTABLEKS                       R15 R14 K21 ["generationState"]
      124 GETUPVAL                         R18 7
      125 GETTABLEKS                       R17 R18 K37 ["Enums"]
      127 GETTABLEKS                       R16 R17 K41 ["InsertionState"]
      129 GETTABLEKS                       R15 R16 K40 ["None"]
      131 SETTABLEKS                       R15 R14 K22 ["insertState"]
      133 LOADB                            R15 0
      134 SETTABLEKS                       R15 R14 K23 ["isPublished"]
      136 LOADNIL                          R15
      137 SETTABLEKS                       R15 R14 K24 ["previewInstance"]
      139 GETIMPORT                        R15 K44 [table.create]
      141 LOADN                            R16 4
      142 LOADK                            R17 K8 [""]
      143 CALL                             R15 2 1
      144 SETTABLEKS                       R15 R14 K25 ["previewImages"]
      146 NEWCLOSURE                       R15 P3
      147 CAPTURE                          REF R3
      148 CAPTURE                          VAL R13
      149 SETTABLEKS                       R15 R14 K26 ["runGeneration"]
      151 NEWCLOSURE                       R15 P4
      152 CAPTURE                          REF R3
      153 CAPTURE                          UPVAL U8
      154 CAPTURE                          UPVAL U15
      155 CAPTURE                          VAL R1
      156 CAPTURE                          UPVAL U13
      157 CAPTURE                          REF R6
      158 CAPTURE                          UPVAL U7
      159 SETTABLEKS                       R15 R14 K27 ["cancelGeneration"]
      161 NEWCLOSURE                       R15 P5
      162 CAPTURE                          VAL R2
      163 CAPTURE                          UPVAL U16
      164 CAPTURE                          REF R5
      165 CAPTURE                          REF R7
      166 CAPTURE                          REF R9
      167 CAPTURE                          REF R8
      168 SETTABLEKS                       R15 R14 K28 ["publishAssets"]
      170 NEWCLOSURE                       R15 P6
      171 CAPTURE                          VAL R2
      172 CAPTURE                          UPVAL U17
      173 CAPTURE                          VAL R0
      174 CAPTURE                          UPVAL U11
      175 CAPTURE                          REF R5
      176 CAPTURE                          REF R7
      177 SETTABLEKS                       R15 R14 K29 ["insertMeshPart"]
      179 NEWCLOSURE                       R15 P7
      180 CAPTURE                          UPVAL U5
      181 CAPTURE                          VAL R1
      182 SETTABLEKS                       R15 R14 K30 ["setUseSelection"]
      184 LOADB                            R15 0
      185 SETTABLEKS                       R15 R14 K31 ["shouldShowChip"]
      187 NEWCLOSURE                       R15 P8
      188 CAPTURE                          UPVAL U18
      189 CAPTURE                          VAL R2
      190 SETTABLEKS                       R15 R14 K32 ["onChipClicked"]
      192 NEWCLOSURE                       R15 P9
      193 CAPTURE                          UPVAL U19
      194 CAPTURE                          VAL R14
      195 GETUPVAL                         R16 20
      196 CALL                             R16 0 1
      197 JUMPIFNOT                        R16 ; [+10]
      198 GETUPVAL                         R17 21
      199 GETTABLEKS                       R16 R17 K45 ["getContentHooks"]
      201 GETUPVAL                         R17 11
      202 CALL                             R16 1 1
      203 GETTABLEKS                       R17 R16 K46 ["editContent"]
      205 MOVE                             R18 R15
      206 CALL                             R17 1 0
      207 JUMP                             ; [+12]
      208 GETUPVAL                         R17 21
      209 GETTABLEKS                       R16 R17 K46 ["editContent"]
      211 DUPTABLE                         R17 K50 [{"messageId", "contentId", "transformFn"}]
      212 SETTABLEKS                       R0 R17 K47 ["messageId"]
      214 GETUPVAL                         R18 11
      215 SETTABLEKS                       R18 R17 K48 ["contentId"]
      217 SETTABLEKS                       R15 R17 K49 ["transformFn"]
      219 CALL                             R16 1 0
      220 GETUPVAL                         R16 22
      221 MOVE                             R17 R0
      222 GETUPVAL                         R18 11
      223 CALL                             R16 2 1
      224 GETTABLEKS                       R4 R16 K51 ["updateGenState"]
      226 GETTABLEKS                       R5 R16 K52 ["updateInsertState"]
      228 GETTABLEKS                       R6 R16 K53 ["setGenerationFailure"]
      230 GETTABLEKS                       R7 R16 K54 ["setInsertionFailure"]
      232 GETTABLEKS                       R8 R16 K55 ["setPreviewInstance"]
      234 GETTABLEKS                       R9 R16 K56 ["setIsPublished"]
      236 GETUPVAL                         R17 14
      237 JUMPIFNOT                        R17 ; [+3]
      238 GETTABLEKS                       R17 R14 K26 ["runGeneration"]
      240 CALL                             R17 0 0
      241 CLOSEUPVALS                      R3
      242 RETURN                           R0 0

PROTO_72:
        0 GETTABLEKS                       R2 R0 K0 ["prompt"]
        2 FASTCALL1                        TYPE R2 ; [+3]
        3 MOVE                             R6 R2
        4 GETIMPORT                        R5 K2 [type]
        6 CALL                             R5 1 1
        7 JUMPIFEQKS                       R5 K3 ["string"] ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       13 LOADK                            R5 K4 ["Bad request.prompt"]
       14 GETIMPORT                        R3 K6 [assert]
       16 CALL                             R3 2 0
       17 LENGTH                           R5 R2
       18 LOADN                            R6 0
       19 JUMPIFLT                         R6 R5 ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       25 LOADK                            R5 K7 ["Prompt cannot be empty"]
       26 GETIMPORT                        R3 K6 [assert]
       28 CALL                             R3 2 0
       29 GETTABLEKS                       R3 R0 K8 ["shouldAutoRun"]
       31 JUMPIFNOTEQKNIL                  R3 ; [+2]
       33 LOADB                            R3 1
       34 JUMPIFNOT                        R1 ; [+3]
       35 GETTABLEKS                       R4 R1 K9 ["contentId"]
       37 JUMPIF                           R4 ; [+1]
       38 LOADK                            R4 K10 [""]
       39 NEWCLOSURE                       R5 P0
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          VAL R4
       52 CAPTURE                          UPVAL U9
       53 CAPTURE                          UPVAL U10
       54 CAPTURE                          REF R3
       55 CAPTURE                          UPVAL U11
       56 CAPTURE                          UPVAL U12
       57 CAPTURE                          UPVAL U13
       58 CAPTURE                          UPVAL U14
       59 CAPTURE                          UPVAL U15
       60 CAPTURE                          UPVAL U16
       61 CAPTURE                          UPVAL U17
       62 CAPTURE                          UPVAL U18
       63 MOVE                             R6 R5
       64 JUMPIFNOT                        R1 ; [+3]
       65 GETTABLEKS                       R7 R1 K11 ["messageId"]
       67 JUMPIF                           R7 ; [+1]
       68 LOADK                            R7 K10 [""]
       69 CALL                             R6 1 0
       70 CLOSEUPVALS                      R3
       71 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["runWithProgressLoop"]
        3 GETTABLEKS                       R4 R2 K1 ["sendProgress"]
        5 GETUPVAL                         R5 1
        6 MOVE                             R6 R0
        7 MOVE                             R7 R1
        8 CALL                             R3 4 0
        9 GETUPVAL                         R3 2
       10 RETURN                           R3 1

PROTO_74:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SlashCommandDescriptions"]
        2 LOADK                            R3 K1 ["MeshGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_75:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 1
        3 DUPTABLE                         R2 K2 [{"name", "arguments"}]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K3 ["MeshGen"]
        7 SETTABLEKS                       R3 R2 K0 ["name"]
        9 DUPTABLE                         R3 K7 [{"prompt", "shouldAutoRun", "shouldUseSelection"}]
       10 SETTABLEKS                       R0 R3 K4 ["prompt"]
       12 NOT                              R4 R1
       13 SETTABLEKS                       R4 R3 K5 ["shouldAutoRun"]
       15 SETTABLEKS                       R1 R3 K6 ["shouldUseSelection"]
       17 SETTABLEKS                       R3 R2 K1 ["arguments"]
       19 RETURN                           R2 1

PROTO_76:
        0 DUPTABLE                         R0 K2 [{"type", "mode"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["Modes"]
        9 GETTABLEKS                       R1 R2 K5 ["Preparing"]
       11 SETTABLEKS                       R1 R0 K1 ["mode"]
       13 RETURN                           R0 1

PROTO_77:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        4 RETURN                           R0 1

PROTO_78:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["MeshGen"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_79:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["FFlagAssistantUseNewMeshGenTool must be disabled to use the deprecated MeshGen tool"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K3 ["networking"]
       11 GETTABLEKS                       R2 R0 K4 ["environment"]
       13 GETTABLEKS                       R3 R0 K5 ["externalHooks"]
       15 GETTABLEKS                       R5 R2 K6 ["tools"]
       17 GETTABLEKS                       R4 R5 K7 ["DEPRECATED_meshGen"]
       19 LOADK                            R7 K8 ["MeshGenTool_setPreviewImage"]
       20 DUPCLOSURE                       R8 K9 [PROTO_4]
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 NAMECALL                         R5 R1 K10 ["OnGuestInvokeAsync"]
       25 CALL                             R5 3 1
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          VAL R5
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 DUPCLOSURE                       R7 K11 [PROTO_8]
       33 LOADK                            R10 K12 ["MeshGenTool_cancelGenerationAsync"]
       34 DUPCLOSURE                       R11 K13 [PROTO_9]
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          UPVAL U6
       37 NAMECALL                         R8 R1 K14 ["OnHostInvokeAsync"]
       39 CALL                             R8 3 1
       40 LOADK                            R11 K15 ["MeshGenTool_updateGenState"]
       41 DUPCLOSURE                       R12 K16 [PROTO_10]
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U2
       44 NAMECALL                         R9 R1 K10 ["OnGuestInvokeAsync"]
       46 CALL                             R9 3 1
       47 NEWCLOSURE                       R10 P5
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          UPVAL U8
       50 CAPTURE                          VAL R4
       51 CAPTURE                          UPVAL U9
       52 CAPTURE                          UPVAL U10
       53 CAPTURE                          VAL R2
       54 CAPTURE                          UPVAL U11
       55 LOADK                            R13 K17 ["MeshGenTool_generateTexturedMeshFromPromptAsync"]
       56 NEWCLOSURE                       R14 P6
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          UPVAL U6
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R10
       62 NAMECALL                         R11 R1 K14 ["OnHostInvokeAsync"]
       64 CALL                             R11 3 1
       65 NEWCLOSURE                       R12 P7
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R2
       68 NEWCLOSURE                       R13 P8
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R2
       71 DUPCLOSURE                       R14 K18 [PROTO_20]
       72 NEWCLOSURE                       R15 P10
       73 CAPTURE                          VAL R4
       74 NEWCLOSURE                       R16 P11
       75 CAPTURE                          VAL R15
       76 CAPTURE                          VAL R7
       77 LOADK                            R19 K19 ["MeshGenTool_selectLinkedMeshParts"]
       78 NEWCLOSURE                       R20 P12
       79 CAPTURE                          UPVAL U12
       80 CAPTURE                          VAL R2
       81 NAMECALL                         R17 R1 K20 ["OnHostEvent"]
       83 CALL                             R17 3 1
       84 LOADK                            R20 K21 ["MeshGenTool_publishAssetsOnHost"]
       85 NEWCLOSURE                       R21 P13
       86 CAPTURE                          UPVAL U1
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R13
       90 NAMECALL                         R18 R1 K14 ["OnHostInvokeAsync"]
       92 CALL                             R18 3 1
       93 NEWCLOSURE                       R19 P14
       94 CAPTURE                          UPVAL U7
       95 CAPTURE                          UPVAL U1
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R18
       99 CAPTURE                          VAL R15
      100 NEWCLOSURE                       R20 P15
      101 CAPTURE                          UPVAL U9
      102 CAPTURE                          VAL R19
      103 CAPTURE                          UPVAL U7
      104 CAPTURE                          UPVAL U13
      105 DUPCLOSURE                       R21 K22 [PROTO_28]
      106 CAPTURE                          UPVAL U6
      107 LOADK                            R24 K23 ["removeSelectedBoundsAsync"]
      108 MOVE                             R25 R21
      109 NAMECALL                         R22 R1 K14 ["OnHostInvokeAsync"]
      111 CALL                             R22 3 1
      112 LOADK                            R25 K24 ["MeshGenTool_updateContentHeader"]
      113 NEWCLOSURE                       R26 P17
      114 CAPTURE                          UPVAL U14
      115 CAPTURE                          UPVAL U15
      116 CAPTURE                          VAL R3
      117 NAMECALL                         R23 R1 K25 ["OnGuestEvent"]
      119 CALL                             R23 3 1
      120 NEWCLOSURE                       R24 P18
      121 CAPTURE                          UPVAL U12
      122 CAPTURE                          VAL R1
      123 CAPTURE                          UPVAL U16
      124 CAPTURE                          UPVAL U17
      125 CAPTURE                          VAL R23
      126 LOADK                            R27 K26 ["MeshGenTool_insertMeshPartImpl"]
      127 NEWCLOSURE                       R28 P19
      128 CAPTURE                          UPVAL U6
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R7
      132 CAPTURE                          UPVAL U12
      133 CAPTURE                          VAL R1
      134 CAPTURE                          UPVAL U16
      135 CAPTURE                          UPVAL U17
      136 CAPTURE                          VAL R23
      137 NAMECALL                         R25 R1 K14 ["OnHostInvokeAsync"]
      139 CALL                             R25 3 1
      140 NEWCLOSURE                       R26 P20
      141 CAPTURE                          UPVAL U9
      142 CAPTURE                          VAL R25
      143 CAPTURE                          UPVAL U7
      144 CAPTURE                          UPVAL U13
      145 NEWCLOSURE                       R27 P21
      146 CAPTURE                          UPVAL U2
      147 CAPTURE                          UPVAL U15
      148 CAPTURE                          VAL R3
      149 CAPTURE                          UPVAL U9
      150 LOADK                            R30 K27 ["MeshGenTool_setUseSelection"]
      151 DUPCLOSURE                       R31 K28 [PROTO_52]
      152 CAPTURE                          UPVAL U6
      153 NAMECALL                         R28 R1 K20 ["OnHostEvent"]
      155 CALL                             R28 3 1
      156 LOADK                            R31 K29 ["MeshGenTool_checkHasSelectedBoundingBoxAsync"]
      157 NEWCLOSURE                       R32 P23
      158 CAPTURE                          VAL R2
      159 NAMECALL                         R29 R1 K14 ["OnHostInvokeAsync"]
      161 CALL                             R29 3 1
      162 DUPCLOSURE                       R30 K30 [PROTO_54]
      163 DUPCLOSURE                       R31 K31 [PROTO_56]
      164 CAPTURE                          VAL R30
      165 CAPTURE                          UPVAL U18
      166 CAPTURE                          UPVAL U19
      167 LOADK                            R34 K32 ["MeshGenTool_getSelectedBoundingBoxAsync"]
      168 NEWCLOSURE                       R35 P26
      169 CAPTURE                          UPVAL U6
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R31
      172 NAMECALL                         R32 R1 K14 ["OnHostInvokeAsync"]
      174 CALL                             R32 3 1
      175 NEWCLOSURE                       R33 P27
      176 CAPTURE                          UPVAL U10
      177 CAPTURE                          UPVAL U7
      178 CAPTURE                          UPVAL U13
      179 CAPTURE                          VAL R28
      180 CAPTURE                          VAL R32
      181 CAPTURE                          UPVAL U9
      182 CAPTURE                          UPVAL U1
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R11
      185 CAPTURE                          UPVAL U11
      186 CAPTURE                          VAL R22
      187 CAPTURE                          VAL R8
      188 CAPTURE                          VAL R20
      189 CAPTURE                          VAL R26
      190 CAPTURE                          VAL R17
      191 CAPTURE                          UPVAL U14
      192 CAPTURE                          UPVAL U15
      193 CAPTURE                          VAL R3
      194 CAPTURE                          VAL R27
      195 NEWCLOSURE                       R34 P28
      196 CAPTURE                          UPVAL U12
      197 CAPTURE                          VAL R33
      198 CAPTURE                          UPVAL U20
      199 GETUPVAL                         R36 21
      200 GETTABLEKS                       R35 R36 K33 ["define"]
      202 CALL                             R35 0 1
      203 GETUPVAL                         R38 22
      204 GETTABLEKS                       R37 R38 K34 ["MeshGen"]
      206 NAMECALL                         R35 R35 K35 ["setName"]
      208 CALL                             R35 2 1
      209 LOADK                            R37 K36 ["Generates a textured mesh from a prompt using AI."]
      210 NAMECALL                         R35 R35 K37 ["setDescription"]
      212 CALL                             R35 2 1
      213 LOADK                            R37 K38 ["prompt"]
      214 DUPTABLE                         R38 K41 [{"type", "description"}]
      215 LOADK                            R39 K42 ["string"]
      216 SETTABLEKS                       R39 R38 K39 ["type"]
      218 LOADK                            R39 K43 ["The prompt to generate the mesh from."]
      219 SETTABLEKS                       R39 R38 K40 ["description"]
      221 NAMECALL                         R35 R35 K44 ["addArgument"]
      223 CALL                             R35 3 1
      224 LOADK                            R37 K45 ["shouldAutoRun"]
      225 DUPTABLE                         R38 K41 [{"type", "description"}]
      226 LOADK                            R39 K46 ["boolean"]
      227 SETTABLEKS                       R39 R38 K39 ["type"]
      229 LOADK                            R39 K47 ["Whether the generation should happen automatically. This defaults to True if no value is provided."]
      230 SETTABLEKS                       R39 R38 K40 ["description"]
      232 NAMECALL                         R35 R35 K48 ["addOptionalArgument"]
      234 CALL                             R35 3 1
      235 LOADB                            R37 1
      236 NAMECALL                         R35 R35 K49 ["setHiddenInRegistry"]
      238 CALL                             R35 2 1
      239 MOVE                             R37 R34
      240 NAMECALL                         R35 R35 K50 ["setHandler"]
      242 CALL                             R35 2 1
      243 NAMECALL                         R35 R35 K51 ["build"]
      245 CALL                             R35 1 1
      246 DUPTABLE                         R36 K55 [{"command", "getDescription", "mapToToolCall"}]
      247 LOADK                            R37 K56 ["generate"]
      248 SETTABLEKS                       R37 R36 K52 ["command"]
      250 DUPCLOSURE                       R37 K57 [PROTO_74]
      251 CAPTURE                          UPVAL U17
      252 SETTABLEKS                       R37 R36 K53 ["getDescription"]
      254 NEWCLOSURE                       R37 P30
      255 CAPTURE                          VAL R29
      256 CAPTURE                          UPVAL U22
      257 SETTABLEKS                       R37 R36 K54 ["mapToToolCall"]
      259 DUPTABLE                         R37 K59 [{"transformInitialContent"}]
      260 DUPCLOSURE                       R38 K60 [PROTO_76]
      261 CAPTURE                          UPVAL U9
      262 SETTABLEKS                       R38 R37 K58 ["transformInitialContent"]
      264 DUPTABLE                         R38 K68 [{"definition", "slashCommands", "contentWidgets", "streamTransform", "getPreExecuteWarning", "displayNameFunction", "toolCallOptions"}]
      265 SETTABLEKS                       R35 R38 K61 ["definition"]
      267 NEWTABLE                         R39 0 1
      269 MOVE                             R40 R36
      270 SETLIST                          R39 R40 1 [1]
      272 SETTABLEKS                       R39 R38 K62 ["slashCommands"]
      274 NEWTABLE                         R39 0 1
      276 GETUPVAL                         R40 9
      277 SETLIST                          R39 R40 1 [1]
      279 SETTABLEKS                       R39 R38 K63 ["contentWidgets"]
      281 SETTABLEKS                       R37 R38 K64 ["streamTransform"]
      283 DUPCLOSURE                       R39 K69 [PROTO_77]
      284 SETTABLEKS                       R39 R38 K65 ["getPreExecuteWarning"]
      286 DUPCLOSURE                       R39 K70 [PROTO_78]
      287 CAPTURE                          UPVAL U17
      288 SETTABLEKS                       R39 R38 K66 ["displayNameFunction"]
      290 DUPTABLE                         R39 K72 [{"resetTimeoutOnProgress"}]
      291 LOADB                            R40 1
      292 SETTABLEKS                       R40 R39 K71 ["resetTimeoutOnProgress"]
      294 SETTABLEKS                       R39 R38 K67 ["toolCallOptions"]
      296 RETURN                           R38 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AssetService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["CollectionService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["CoreGui"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K5 [game]
       27 LOADK                            R6 K10 ["HttpService"]
       28 NAMECALL                         R4 R4 K7 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K5 [game]
       33 LOADK                            R7 K11 ["StarterGui"]
       34 NAMECALL                         R5 R5 K7 ["GetService"]
       36 CALL                             R5 2 1
       37 GETIMPORT                        R6 K13 [require]
       39 GETTABLEKS                       R8 R0 K14 ["Parent"]
       41 GETTABLEKS                       R7 R8 K15 ["Dash"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K13 [require]
       46 GETTABLEKS                       R9 R0 K16 ["Guest"]
       48 GETTABLEKS                       R8 R9 K17 ["Environment"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K13 [require]
       53 GETTABLEKS                       R11 R0 K18 ["Components"]
       55 GETTABLEKS                       R10 R11 K19 ["ContentWidgets"]
       57 GETTABLEKS                       R9 R10 K20 ["DEPRECATED_MeshGenContentWidget"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K13 [require]
       62 GETTABLEKS                       R11 R0 K14 ["Parent"]
       64 GETTABLEKS                       R10 R11 K21 ["ModelContextProtocol"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K13 [require]
       69 GETTABLEKS                       R12 R0 K14 ["Parent"]
       71 GETTABLEKS                       R11 R12 K22 ["Promise"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K13 [require]
       76 GETTABLEKS                       R13 R0 K23 ["Tools"]
       78 GETTABLEKS                       R12 R13 K24 ["ToolTypes"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K13 [require]
       83 GETTABLEKS                       R14 R0 K25 ["Util"]
       85 GETTABLEKS                       R13 R14 K26 ["ToolUtils"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K13 [require]
       90 GETTABLEKS                       R16 R0 K27 ["Resources"]
       92 GETTABLEKS                       R15 R16 K28 ["Localization"]
       94 GETTABLEKS                       R14 R15 K29 ["Translator"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K13 [require]
       99 GETTABLEKS                       R15 R0 K30 ["Types"]
      101 CALL                             R14 1 1
      102 GETIMPORT                        R15 K13 [require]
      104 GETTABLEKS                       R17 R0 K31 ["Flags"]
      106 GETTABLEKS                       R16 R17 K32 ["FFlagAssistantMultipleChatPersistence"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K13 [require]
      111 GETTABLEKS                       R18 R0 K31 ["Flags"]
      113 GETTABLEKS                       R17 R18 K33 ["FFlagAssistantUseNewMeshGenTool"]
      115 CALL                             R16 1 1
      116 GETIMPORT                        R17 K13 [require]
      118 GETTABLEKS                       R19 R0 K31 ["Flags"]
      120 GETTABLEKS                       R18 R19 K34 ["FFlagCLI_157095_GenerationServiceGenerationIdOnError"]
      122 CALL                             R17 1 1
      123 GETIMPORT                        R18 K13 [require]
      125 GETTABLEKS                       R20 R0 K31 ["Flags"]
      127 GETTABLEKS                       R19 R20 K35 ["FFlagDebugConvAIBypassGenerationService"]
      129 CALL                             R18 1 1
      130 GETIMPORT                        R19 K13 [require]
      132 GETTABLEKS                       R21 R0 K31 ["Flags"]
      134 GETTABLEKS                       R20 R21 K36 ["FFlagDebugConvAIMeshGenDynamicPreview"]
      136 CALL                             R19 1 1
      137 GETTABLEKS                       R21 R9 K25 ["Util"]
      139 GETTABLEKS                       R20 R21 K37 ["ToolBuilder"]
      141 GETTABLEKS                       R22 R9 K25 ["Util"]
      143 GETTABLEKS                       R21 R22 K38 ["ToolResult"]
      145 GETTABLEKS                       R22 R11 K39 ["ToolNames"]
      147 MOVE                             R23 R21
      148 CALL                             R23 0 1
      149 LOADK                            R25 K40 ["Success"]
      150 NAMECALL                         R23 R23 K41 ["addText"]
      152 CALL                             R23 2 1
      153 NAMECALL                         R23 R23 K42 ["build"]
      155 CALL                             R23 1 1
      156 NEWTABLE                         R24 0 0
      158 NEWTABLE                         R25 0 0
      160 LOADN                            R26 0
      161 DUPCLOSURE                       R27 K43 [PROTO_0]
      162 CAPTURE                          VAL R25
      163 DUPCLOSURE                       R28 K44 [PROTO_1]
      164 CAPTURE                          VAL R19
      165 NEWCLOSURE                       R29 P2
      166 CAPTURE                          VAL R19
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R5
      169 CAPTURE                          REF R26
      170 CAPTURE                          VAL R12
      171 NEWCLOSURE                       R30 P3
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R19
      174 CAPTURE                          VAL R24
      175 CAPTURE                          REF R26
      176 CAPTURE                          VAL R10
      177 CAPTURE                          VAL R29
      178 CAPTURE                          VAL R25
      179 CAPTURE                          VAL R18
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R8
      182 CAPTURE                          VAL R4
      183 CAPTURE                          VAL R17
      184 CAPTURE                          VAL R12
      185 CAPTURE                          VAL R7
      186 CAPTURE                          VAL R6
      187 CAPTURE                          VAL R15
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R23
      193 CAPTURE                          VAL R20
      194 CAPTURE                          VAL R22
      195 CLOSEUPVALS                      R26
      196 RETURN                           R30 1
