PROTO_0:
        0 GETIMPORT                        R3 K3 [Enum.AssetType.LeftArm]
        2 JUMPIFEQ                         R1 R3 ; [+14]
        4 GETIMPORT                        R3 K5 [Enum.AssetType.RightArm]
        6 JUMPIFEQ                         R1 R3 ; [+10]
        8 GETIMPORT                        R3 K7 [Enum.AssetType.LeftLeg]
       10 JUMPIFEQ                         R1 R3 ; [+6]
       12 GETIMPORT                        R3 K9 [Enum.AssetType.RightLeg]
       14 JUMPIFEQ                         R1 R3 ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K10 ["calculateStraightenedLimb"]
       20 MOVE                             R4 R1
       21 MOVE                             R5 R0
       22 MOVE                             R6 R2
       23 CALL                             R3 3 1
       24 MOVE                             R4 R3
       25 LOADNIL                          R5
       26 LOADNIL                          R6
       27 FORGPREP                         R4
       28 SETTABLE                         R8 R0 R7
       29 FORGLOOP                         R4 2 ; [-2]
       31 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 GETUPVAL                         R5 2
        4 CALL                             R2 3 0
        5 GETUPVAL                         R2 3
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEN                        R4 R2 1
       10 CALL                             R3 1 1
       11 GETUPVAL                         R5 4
       12 GETTABLEKS                       R4 R5 K0 ["getRigAttachmentToParent"]
       14 MOVE                             R5 R0
       15 GETTABLEKS                       R6 R3 K1 ["Name"]
       17 CALL                             R4 2 1
       18 MOVE                             R7 R4
       19 NAMECALL                         R5 R3 K2 ["FindFirstChild"]
       21 CALL                             R5 2 1
       22 FASTCALL1                        ASSERT R5 ; [+3]
       23 MOVE                             R7 R5
       24 GETIMPORT                        R6 K4 [assert]
       26 CALL                             R6 1 0
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R9 R3 K1 ["Name"]
       30 GETTABLE                         R7 R8 R9
       31 GETTABLEKS                       R8 R5 K5 ["CFrame"]
       33 MUL                              R6 R7 R8
       34 GETUPVAL                         R7 2
       35 MOVE                             R8 R1
       36 CALL                             R7 1 1
       37 FASTCALL1                        ASSERT R7 ; [+3]
       38 MOVE                             R9 R7
       39 GETIMPORT                        R8 K4 [assert]
       41 CALL                             R8 1 0
       42 MOVE                             R10 R4
       43 NAMECALL                         R8 R7 K2 ["FindFirstChild"]
       45 CALL                             R8 2 1
       46 FASTCALL1                        ASSERT R8 ; [+3]
       47 MOVE                             R10 R8
       48 GETIMPORT                        R9 K4 [assert]
       50 CALL                             R9 1 0
       51 GETUPVAL                         R11 1
       52 GETTABLEKS                       R12 R7 K1 ["Name"]
       54 GETTABLE                         R10 R11 R12
       55 GETTABLEKS                       R11 R8 K5 ["CFrame"]
       57 MUL                              R9 R10 R11
       58 GETTABLEKS                       R11 R9 K6 ["Position"]
       60 GETTABLEKS                       R12 R6 K6 ["Position"]
       62 SUB                              R10 R11 R12
       63 MOVE                             R11 R2
       64 LOADNIL                          R12
       65 LOADNIL                          R13
       66 FORGPREP                         R11
       67 GETUPVAL                         R16 1
       68 GETIMPORT                        R18 K8 [CFrame.new]
       70 GETUPVAL                         R22 1
       71 GETTABLE                         R21 R22 R15
       72 GETTABLEKS                       R20 R21 K6 ["Position"]
       74 ADD                              R19 R20 R10
       75 CALL                             R18 1 1
       76 GETUPVAL                         R21 1
       77 GETTABLE                         R20 R21 R15
       78 GETTABLEKS                       R19 R20 K9 ["Rotation"]
       80 MUL                              R17 R18 R19
       81 SETTABLE                         R17 R16 R15
       82 FORGLOOP                         R11 2 ; [-16]
       84 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 MOVE                             R3 R2
        7 GETIMPORT                        R4 K3 [Enum.AssetType.LeftArm]
        9 LOADK                            R5 K4 ["UpperTorso"]
       10 CALL                             R3 2 0
       11 MOVE                             R3 R2
       12 GETIMPORT                        R4 K6 [Enum.AssetType.RightArm]
       14 LOADK                            R5 K4 ["UpperTorso"]
       15 CALL                             R3 2 0
       16 MOVE                             R3 R2
       17 GETIMPORT                        R4 K8 [Enum.AssetType.LeftLeg]
       19 LOADK                            R5 K9 ["LowerTorso"]
       20 CALL                             R3 2 0
       21 MOVE                             R3 R2
       22 GETIMPORT                        R4 K11 [Enum.AssetType.RightLeg]
       24 LOADK                            R5 K9 ["LowerTorso"]
       25 CALL                             R3 2 0
       26 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADB                            R7 0 +1
        3 LOADB                            R7 1
        4 JUMPIFNOTEQKNIL                  R4 ; [+2]
        6 LOADB                            R8 0 +1
        7 LOADB                            R8 1
        8 JUMPIFNOTEQ                      R7 R8 ; [+2]
       10 LOADB                            R6 0 +1
       11 LOADB                            R6 1
       12 FASTCALL1                        ASSERT R6 ; [+2]
       13 GETIMPORT                        R5 K1 [assert]
       15 CALL                             R5 1 0
       16 GETTABLEKS                       R5 R1 K2 ["MeshSize"]
       18 GETUPVAL                         R6 0
       19 MOVE                             R7 R1
       20 MOVE                             R8 R3
       21 CALL                             R6 2 1
       22 DIV                              R7 R6 R5
       23 LOADNIL                          R8
       24 JUMPIFNOT                        R4 ; [+26]
       25 GETTABLEKS                       R9 R4 K3 ["meshData"]
       27 JUMPIFNOT                        R9 ; [+15]
       28 GETTABLEKS                       R10 R4 K3 ["meshData"]
       30 GETTABLEKS                       R11 R1 K4 ["MeshId"]
       32 GETTABLE                         R9 R10 R11
       33 JUMPIFNOT                        R9 ; [+9]
       34 GETTABLEKS                       R11 R4 K3 ["meshData"]
       36 GETTABLEKS                       R12 R1 K4 ["MeshId"]
       38 GETTABLE                         R10 R11 R12
       39 GETTABLEKS                       R9 R10 K5 ["verts"]
       41 JUMPIFNOT                        R9 ; [+1]
       42 MOVE                             R8 R9
       43 JUMPIF                           R8 ; [+7]
       44 LOADB                            R9 0
       45 NEWTABLE                         R10 0 1
       47 LOADK                            R11 K6 ["Verts not found in data cache"]
       48 SETLIST                          R10 R11 1 [1]
       50 RETURN                           R9 2
       51 JUMPIF                           R8 ; [+7]
       52 GETUPVAL                         R9 1
       53 MOVE                             R10 R0
       54 MOVE                             R11 R3
       55 CALL                             R9 2 3
       56 JUMPIF                           R9 ; [+1]
       57 RETURN                           R9 2
       58 MOVE                             R8 R11
       59 NEWTABLE                         R9 0 0
       61 MOVE                             R10 R8
       62 LOADNIL                          R11
       63 LOADNIL                          R12
       64 FORGPREP                         R10
       65 GETUPVAL                         R16 2
       66 GETTABLEKS                       R15 R16 K7 ["expandMeshBounds"]
       68 MOVE                             R16 R9
       69 MUL                              R19 R14 R7
       70 NAMECALL                         R17 R2 K8 ["PointToWorldSpace"]
       72 CALL                             R17 2 -1
       73 CALL                             R15 -1 0
       74 FORGLOOP                         R10 2 ; [-10]
       76 GETUPVAL                         R11 3
       77 GETTABLEKS                       R10 R11 K9 ["getAttachments"]
       79 LOADNIL                          R11
       80 GETTABLEKS                       R12 R1 K10 ["Name"]
       82 CALL                             R10 2 3
       83 FORGPREP                         R10
       84 GETIMPORT                        R16 K13 [string.match]
       86 MOVE                             R17 R14
       87 LOADK                            R18 K14 ["RigAttachment$"]
       88 CALL                             R16 2 1
       89 JUMPIFNOTEQKNIL                  R16 ; [+2]
       91 LOADB                            R15 0 +1
       92 LOADB                            R15 1
       93 JUMPIFNOT                        R15 ; [+19]
       94 MOVE                             R18 R14
       95 NAMECALL                         R16 R1 K15 ["FindFirstChild"]
       97 CALL                             R16 2 1
       98 FASTCALL1                        ASSERT R16 ; [+3]
       99 MOVE                             R18 R16
      100 GETIMPORT                        R17 K1 [assert]
      102 CALL                             R17 1 0
      103 GETTABLEKS                       R18 R16 K16 ["CFrame"]
      105 MUL                              R17 R2 R18
      106 GETUPVAL                         R19 2
      107 GETTABLEKS                       R18 R19 K17 ["expandRigAttachmentBounds"]
      109 MOVE                             R19 R9
      110 GETTABLEKS                       R20 R17 K18 ["Position"]
      112 CALL                             R18 2 0
      113 FORGLOOP                         R10 2 ; [-30]
      115 GETUPVAL                         R11 2
      116 GETTABLEKS                       R10 R11 K19 ["setOverallBounds"]
      118 MOVE                             R11 R9
      119 CALL                             R10 1 0
      120 LOADB                            R10 1
      121 LOADNIL                          R11
      122 MOVE                             R12 R9
      123 RETURN                           R10 3

PROTO_4:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R0
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 MOVE                             R10 R1
        7 MOVE                             R11 R8
        8 CALL                             R10 1 1
        9 LOADNIL                          R11
       10 JUMPIF                           R3 ; [+18]
       11 LOADNIL                          R12
       12 LOADNIL                          R13
       13 LOADNIL                          R14
       14 GETUPVAL                         R15 0
       15 MOVE                             R16 R10
       16 GETUPVAL                         R19 1
       17 GETTABLEKS                       R18 R19 K0 ["MESH_CONTENT_TYPE"]
       19 GETTABLEKS                       R17 R18 K1 ["RENDER_MESH"]
       21 MOVE                             R18 R2
       22 CALL                             R15 3 3
       23 MOVE                             R12 R15
       24 MOVE                             R13 R16
       25 MOVE                             R14 R17
       26 JUMPIF                           R12 ; [+1]
       27 RETURN                           R12 2
       28 MOVE                             R11 R14
       29 GETUPVAL                         R12 2
       30 MOVE                             R13 R11
       31 MOVE                             R14 R10
       32 MOVE                             R15 R9
       33 MOVE                             R16 R2
       34 MOVE                             R17 R3
       35 CALL                             R12 5 3
       36 JUMPIF                           R12 ; [+1]
       37 RETURN                           R12 2
       38 SETTABLE                         R14 R4 R8
       39 FORGLOOP                         R5 2 ; [-34]
       41 LOADB                            R5 1
       42 LOADNIL                          R6
       43 MOVE                             R7 R4
       44 RETURN                           R5 3

PROTO_5:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 3
        5 JUMPIF                           R3 ; [+1]
        6 RETURN                           R3 2
        7 NEWTABLE                         R6 0 0
        9 MOVE                             R7 R5
       10 LOADNIL                          R8
       11 LOADNIL                          R9
       12 FORGPREP                         R7
       13 GETUPVAL                         R13 1
       14 GETTABLEKS                       R12 R13 K0 ["combineBounds"]
       16 MOVE                             R13 R6
       17 MOVE                             R14 R11
       18 CALL                             R12 2 1
       19 MOVE                             R6 R12
       20 FORGLOOP                         R7 2 ; [-8]
       22 LOADB                            R7 1
       23 LOADNIL                          R8
       24 MOVE                             R9 R6
       25 RETURN                           R7 3

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Name"]
        3 JUMPIFEQ                         R0 R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 FASTCALL1                        ASSERT R2 ; [+2]
        8 GETIMPORT                        R1 K2 [assert]
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 0
       12 RETURN                           R1 1

PROTO_7:
        0 NEWTABLE                         R2 1 0
        2 GETTABLEKS                       R3 R0 K0 ["Name"]
        4 GETIMPORT                        R4 K3 [CFrame.new]
        6 CALL                             R4 0 1
        7 SETTABLE                         R4 R2 R3
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R0
       10 GETUPVAL                         R4 0
       11 MOVE                             R5 R2
       12 MOVE                             R6 R3
       13 MOVE                             R7 R1
       14 CALL                             R4 3 3
       15 JUMPIF                           R4 ; [+1]
       16 RETURN                           R4 2
       17 LOADB                            R7 1
       18 LOADNIL                          R8
       19 MOVE                             R9 R6
       20 RETURN                           R7 3

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["assetTypeEnum"]
        2 FASTCALL1                        ASSERT R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K2 [assert]
        6 CALL                             R3 1 0
        7 GETIMPORT                        R3 K6 [Enum.AssetType.DynamicHead]
        9 JUMPIFNOTEQ                      R2 R3 ; [+6]
       11 GETUPVAL                         R3 0
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 CALL                             R3 2 -1
       15 RETURN                           R3 -1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K7 ["calculateAllTransformsForAsset"]
       19 MOVE                             R4 R2
       20 MOVE                             R5 R0
       21 CALL                             R3 2 1
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R0
       24 GETUPVAL                         R5 2
       25 MOVE                             R6 R3
       26 MOVE                             R7 R2
       27 MOVE                             R8 R4
       28 CALL                             R5 3 0
       29 GETUPVAL                         R5 3
       30 MOVE                             R6 R3
       31 MOVE                             R7 R4
       32 MOVE                             R8 R1
       33 CALL                             R5 3 3
       34 JUMPIF                           R5 ; [+1]
       35 RETURN                           R5 2
       36 LOADB                            R8 1
       37 LOADNIL                          R9
       38 MOVE                             R10 R7
       39 RETURN                           R8 3

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K3 [Enum.AssetType.DynamicHead]
        3 JUMPIFNOTEQ                      R1 R2 ; [+3]
        5 GETUPVAL                         R1 1
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 1
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K4 ["FindFirstChild"]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["assetTypeEnum"]
        2 FASTCALL1                        ASSERT R2 ; [+3]
        3 MOVE                             R4 R2
        4 GETIMPORT                        R3 K2 [assert]
        6 CALL                             R3 1 0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K3 ["calculateAllTransformsForAsset"]
       10 MOVE                             R4 R2
       11 MOVE                             R5 R0
       12 CALL                             R3 2 1
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R0
       16 GETUPVAL                         R5 1
       17 MOVE                             R6 R3
       18 MOVE                             R7 R2
       19 MOVE                             R8 R4
       20 CALL                             R5 3 0
       21 GETUPVAL                         R5 2
       22 MOVE                             R6 R3
       23 MOVE                             R7 R4
       24 MOVE                             R8 R1
       25 CALL                             R5 3 3
       26 JUMPIF                           R5 ; [+1]
       27 RETURN                           R5 2
       28 NEWTABLE                         R8 0 0
       30 MOVE                             R9 R7
       31 LOADNIL                          R10
       32 LOADNIL                          R11
       33 FORGPREP                         R9
       34 DUPTABLE                         R14 K6 [{"boundsData", "cframe"}]
       35 SETTABLEKS                       R13 R14 K4 ["boundsData"]
       37 GETTABLE                         R15 R3 R12
       38 SETTABLEKS                       R15 R14 K5 ["cframe"]
       40 SETTABLE                         R14 R8 R12
       41 FORGLOOP                         R9 2 ; [-8]
       43 LOADB                            R9 1
       44 LOADNIL                          R10
       45 MOVE                             R11 R8
       46 RETURN                           R9 3

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_13:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K0 ["calculateAllTransformsForFullBody"]
        5 MOVE                             R6 R0
        6 CALL                             R5 1 1
        7 GETUPVAL                         R6 1
        8 CALL                             R6 0 1
        9 JUMPIFNOT                        R6 ; [+6]
       10 JUMPIFNOT                        R3 ; [+9]
       11 GETUPVAL                         R6 2
       12 MOVE                             R7 R5
       13 MOVE                             R8 R4
       14 CALL                             R6 2 0
       15 JUMP                             ; [+4]
       16 GETUPVAL                         R6 2
       17 MOVE                             R7 R5
       18 MOVE                             R8 R4
       19 CALL                             R6 2 0
       20 GETUPVAL                         R6 3
       21 MOVE                             R7 R5
       22 MOVE                             R8 R4
       23 MOVE                             R9 R1
       24 MOVE                             R10 R2
       25 CALL                             R6 4 3
       26 JUMPIF                           R6 ; [+1]
       27 RETURN                           R6 2
       28 NEWTABLE                         R9 0 0
       30 MOVE                             R10 R8
       31 LOADNIL                          R11
       32 LOADNIL                          R12
       33 FORGPREP                         R10
       34 DUPTABLE                         R15 K3 [{"boundsData", "cframe"}]
       35 SETTABLEKS                       R14 R15 K1 ["boundsData"]
       37 GETTABLE                         R16 R5 R13
       38 SETTABLEKS                       R16 R15 K2 ["cframe"]
       40 SETTABLE                         R15 R9 R13
       41 FORGLOOP                         R10 2 ; [-8]
       43 LOADB                            R10 1
       44 LOADNIL                          R11
       45 MOVE                             R12 R9
       46 RETURN                           R10 3

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_15:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["calculateAllTransformsForFullBody"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 1
        8 MOVE                             R5 R3
        9 MOVE                             R6 R2
       10 CALL                             R4 2 0
       11 GETUPVAL                         R4 2
       12 MOVE                             R5 R3
       13 MOVE                             R6 R2
       14 MOVE                             R7 R1
       15 CALL                             R4 3 3
       16 JUMPIF                           R4 ; [+1]
       17 RETURN                           R4 2
       18 LOADB                            R7 1
       19 LOADNIL                          R8
       20 MOVE                             R9 R6
       21 RETURN                           R7 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R4 K7 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["ConstantsInterface"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R6 R0 K6 ["util"]
       28 GETTABLEKS                       R5 R6 K9 ["AssetCalculator"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R7 R0 K6 ["util"]
       35 GETTABLEKS                       R6 R7 K10 ["getPartNamesInHierarchyOrder"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R8 R0 K6 ["util"]
       42 GETTABLEKS                       R7 R8 K11 ["getMeshVerts"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K4 [require]
       47 GETTABLEKS                       R9 R0 K6 ["util"]
       49 GETTABLEKS                       R8 R9 K12 ["getMeshInfo"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K4 [require]
       54 GETTABLEKS                       R10 R0 K6 ["util"]
       56 GETTABLEKS                       R9 R10 K13 ["BoundsDataUtils"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K4 [require]
       61 GETTABLEKS                       R11 R0 K6 ["util"]
       63 GETTABLEKS                       R10 R11 K14 ["getExpectedPartSize"]
       65 CALL                             R9 1 1
       66 GETIMPORT                        R10 K4 [require]
       68 GETTABLEKS                       R12 R0 K15 ["flags"]
       70 GETTABLEKS                       R11 R12 K16 ["getFFlagUGCValidateLegFullBodySeparation"]
       72 CALL                             R10 1 1
       73 NEWTABLE                         R11 4 0
       75 DUPCLOSURE                       R12 K17 [PROTO_0]
       76 CAPTURE                          VAL R4
       77 DUPCLOSURE                       R13 K18 [PROTO_2]
       78 CAPTURE                          VAL R12
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R3
       81 DUPCLOSURE                       R14 K19 [PROTO_3]
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R3
       86 DUPCLOSURE                       R15 K20 [PROTO_4]
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R14
       90 DUPCLOSURE                       R16 K21 [PROTO_5]
       91 CAPTURE                          VAL R15
       92 CAPTURE                          VAL R8
       93 DUPCLOSURE                       R17 K22 [PROTO_7]
       94 CAPTURE                          VAL R16
       95 DUPCLOSURE                       R18 K23 [PROTO_9]
       96 CAPTURE                          VAL R17
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R16
      100 SETTABLEKS                       R18 R11 K24 ["calculateAssetBounds"]
      102 DUPCLOSURE                       R18 K25 [PROTO_11]
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R15
      106 SETTABLEKS                       R18 R11 K26 ["calculateIndividualAssetPartsData"]
      108 DUPCLOSURE                       R18 K27 [PROTO_13]
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R15
      113 SETTABLEKS                       R18 R11 K28 ["calculateIndividualFullBodyPartsData"]
      115 DUPCLOSURE                       R18 K29 [PROTO_15]
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R16
      119 SETTABLEKS                       R18 R11 K30 ["calculateFullBodyBounds"]
      121 RETURN                           R11 1
