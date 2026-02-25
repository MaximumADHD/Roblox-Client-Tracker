PROTO_0:
        0 JUMPIFNOT                        R4 ; [+43]
        1 GETUPVAL                         R5 0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R4
        4 CALL                             R5 2 1
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R7 R3 K0 ["minMeshCorner"]
        8 GETTABLEKS                       R8 R3 K1 ["maxMeshCorner"]
       10 DIVK                             R12 R5 K2 [2]
       11 MINUS                            R11 R12
       12 NAMECALL                         R9 R2 K3 ["PointToWorldSpace"]
       14 CALL                             R9 2 1
       15 DIVK                             R13 R5 K2 [2]
       16 MINUS                            R12 R13
       17 NAMECALL                         R10 R2 K3 ["PointToWorldSpace"]
       19 CALL                             R10 2 -1
       20 CALL                             R6 -1 2
       21 SETTABLEKS                       R6 R3 K0 ["minMeshCorner"]
       23 SETTABLEKS                       R7 R3 K1 ["maxMeshCorner"]
       25 GETUPVAL                         R6 1
       26 GETTABLEKS                       R7 R3 K0 ["minMeshCorner"]
       28 GETTABLEKS                       R8 R3 K1 ["maxMeshCorner"]
       30 DIVK                             R11 R5 K2 [2]
       31 NAMECALL                         R9 R2 K3 ["PointToWorldSpace"]
       33 CALL                             R9 2 1
       34 DIVK                             R12 R5 K2 [2]
       35 NAMECALL                         R10 R2 K3 ["PointToWorldSpace"]
       37 CALL                             R10 2 -1
       38 CALL                             R6 -1 2
       39 SETTABLEKS                       R6 R3 K0 ["minMeshCorner"]
       41 SETTABLEKS                       R7 R3 K1 ["maxMeshCorner"]
       43 JUMP                             ; [+46]
       44 GETUPVAL                         R5 1
       45 GETTABLEKS                       R6 R3 K0 ["minMeshCorner"]
       47 GETTABLEKS                       R7 R3 K1 ["maxMeshCorner"]
       49 GETTABLEKS                       R12 R1 K4 ["Size"]
       51 DIVK                             R11 R12 K2 [2]
       52 MINUS                            R10 R11
       53 NAMECALL                         R8 R2 K3 ["PointToWorldSpace"]
       55 CALL                             R8 2 1
       56 GETTABLEKS                       R13 R1 K4 ["Size"]
       58 DIVK                             R12 R13 K2 [2]
       59 MINUS                            R11 R12
       60 NAMECALL                         R9 R2 K3 ["PointToWorldSpace"]
       62 CALL                             R9 2 -1
       63 CALL                             R5 -1 2
       64 SETTABLEKS                       R5 R3 K0 ["minMeshCorner"]
       66 SETTABLEKS                       R6 R3 K1 ["maxMeshCorner"]
       68 GETUPVAL                         R5 1
       69 GETTABLEKS                       R6 R3 K0 ["minMeshCorner"]
       71 GETTABLEKS                       R7 R3 K1 ["maxMeshCorner"]
       73 GETTABLEKS                       R11 R1 K4 ["Size"]
       75 DIVK                             R10 R11 K2 [2]
       76 NAMECALL                         R8 R2 K3 ["PointToWorldSpace"]
       78 CALL                             R8 2 1
       79 GETTABLEKS                       R12 R1 K4 ["Size"]
       81 DIVK                             R11 R12 K2 [2]
       82 NAMECALL                         R9 R2 K3 ["PointToWorldSpace"]
       84 CALL                             R9 2 -1
       85 CALL                             R5 -1 2
       86 SETTABLEKS                       R5 R3 K0 ["minMeshCorner"]
       88 SETTABLEKS                       R6 R3 K1 ["maxMeshCorner"]
       90 GETUPVAL                         R6 2
       91 GETTABLEKS                       R5 R6 K5 ["getAttachments"]
       93 MOVE                             R6 R0
       94 GETTABLEKS                       R7 R1 K6 ["Name"]
       96 CALL                             R5 2 3
       97 FORGPREP                         R5
       98 MOVE                             R12 R9
       99 NAMECALL                         R10 R1 K7 ["FindFirstChild"]
      101 CALL                             R10 2 1
      102 FASTCALL1                        ASSERT R10 ; [+3]
      103 MOVE                             R12 R10
      104 GETIMPORT                        R11 K9 [assert]
      106 CALL                             R11 1 0
      107 GETIMPORT                        R12 K12 [string.match]
      109 GETTABLEKS                       R13 R10 K6 ["Name"]
      111 LOADK                            R14 K13 ["RigAttachment$"]
      112 CALL                             R12 2 1
      113 JUMPIFNOTEQKNIL                  R12 ; [+2]
      115 LOADB                            R11 0 +1
      116 LOADB                            R11 1
      117 JUMPIFNOT                        R11 ; [+17]
      118 GETTABLEKS                       R13 R10 K14 ["CFrame"]
      120 MUL                              R12 R2 R13
      121 GETUPVAL                         R13 1
      122 GETTABLEKS                       R14 R3 K15 ["minRigAttachment"]
      124 GETTABLEKS                       R15 R3 K16 ["maxRigAttachment"]
      126 GETTABLEKS                       R16 R12 K17 ["Position"]
      128 GETTABLEKS                       R17 R12 K17 ["Position"]
      130 CALL                             R13 4 2
      131 SETTABLEKS                       R13 R3 K15 ["minRigAttachment"]
      133 SETTABLEKS                       R14 R3 K16 ["maxRigAttachment"]
      135 FORGLOOP                         R5 2 ; [-38]
      137 GETUPVAL                         R5 1
      138 GETTABLEKS                       R6 R3 K18 ["minOverall"]
      140 GETTABLEKS                       R7 R3 K19 ["maxOverall"]
      142 GETTABLEKS                       R8 R3 K0 ["minMeshCorner"]
      144 GETTABLEKS                       R9 R3 K1 ["maxMeshCorner"]
      146 CALL                             R5 4 2
      147 SETTABLEKS                       R5 R3 K18 ["minOverall"]
      149 SETTABLEKS                       R6 R3 K19 ["maxOverall"]
      151 GETUPVAL                         R5 1
      152 GETTABLEKS                       R6 R3 K18 ["minOverall"]
      154 GETTABLEKS                       R7 R3 K19 ["maxOverall"]
      156 GETTABLEKS                       R8 R3 K15 ["minRigAttachment"]
      158 GETTABLEKS                       R9 R3 K16 ["maxRigAttachment"]
      160 CALL                             R5 4 2
      161 SETTABLEKS                       R5 R3 K18 ["minOverall"]
      163 SETTABLEKS                       R6 R3 K19 ["maxOverall"]
      165 RETURN                           R0 0

PROTO_1:
        0 AND                              R9 R1 R2
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 LOADB                            R12 0 +1
        4 LOADB                            R12 1
        5 JUMPIFNOTEQKNIL                  R9 ; [+2]
        7 LOADB                            R13 0 +1
        8 LOADB                            R13 1
        9 JUMPIFNOTEQ                      R12 R13 ; [+2]
       11 LOADB                            R11 0 +1
       12 LOADB                            R11 1
       13 FASTCALL1                        ASSERT R11 ; [+2]
       14 GETIMPORT                        R10 K1 [assert]
       16 CALL                             R10 1 0
       17 LOADNIL                          R10
       18 JUMPIFNOT                        R0 ; [+2]
       19 GETTABLE                         R10 R0 R5
       20 JUMP                             ; [+5]
       21 MOVE                             R13 R5
       22 NAMECALL                         R11 R1 K2 ["FindFirstChild"]
       24 CALL                             R11 2 1
       25 MOVE                             R10 R11
       26 FASTCALL1                        ASSERT R10 ; [+3]
       27 MOVE                             R12 R10
       28 GETIMPORT                        R11 K1 [assert]
       30 CALL                             R11 1 0
       31 MOVE                             R11 R4
       32 JUMPIFNOT                        R3 ; [+48]
       33 LOADNIL                          R12
       34 JUMPIFNOT                        R0 ; [+2]
       35 GETTABLE                         R12 R0 R3
       36 JUMP                             ; [+5]
       37 MOVE                             R15 R3
       38 NAMECALL                         R13 R1 K2 ["FindFirstChild"]
       40 CALL                             R13 2 1
       41 MOVE                             R12 R13
       42 FASTCALL1                        ASSERT R12 ; [+3]
       43 MOVE                             R14 R12
       44 GETIMPORT                        R13 K1 [assert]
       46 CALL                             R13 1 0
       47 GETUPVAL                         R14 0
       48 GETTABLEKS                       R13 R14 K3 ["getRigAttachmentToParent"]
       50 MOVE                             R14 R2
       51 MOVE                             R15 R5
       52 CALL                             R13 2 1
       53 MOVE                             R16 R13
       54 NAMECALL                         R14 R12 K2 ["FindFirstChild"]
       56 CALL                             R14 2 1
       57 FASTCALL1                        ASSERT R14 ; [+3]
       58 MOVE                             R16 R14
       59 GETIMPORT                        R15 K1 [assert]
       61 CALL                             R15 1 0
       62 MOVE                             R17 R13
       63 NAMECALL                         R15 R10 K2 ["FindFirstChild"]
       65 CALL                             R15 2 1
       66 FASTCALL1                        ASSERT R15 ; [+3]
       67 MOVE                             R17 R15
       68 GETIMPORT                        R16 K1 [assert]
       70 CALL                             R16 1 0
       71 GETTABLEKS                       R17 R14 K4 ["CFrame"]
       73 MUL                              R16 R11 R17
       74 GETTABLEKS                       R17 R15 K4 ["CFrame"]
       76 NAMECALL                         R17 R17 K5 ["Inverse"]
       78 CALL                             R17 1 1
       79 MUL                              R11 R16 R17
       80 JUMP                             ; [+4]
       81 GETIMPORT                        R12 K7 [CFrame.new]
       83 CALL                             R12 0 1
       84 MOVE                             R11 R12
       85 GETUPVAL                         R13 1
       86 GETTABLEKS                       R12 R13 K8 ["calculateBounds"]
       88 MOVE                             R13 R2
       89 MOVE                             R14 R10
       90 MOVE                             R15 R11
       91 MOVE                             R16 R7
       92 MOVE                             R17 R8
       93 CALL                             R12 5 0
       94 GETTABLEKS                       R12 R6 K9 ["children"]
       96 JUMPIFNOT                        R12 ; [+20]
       97 GETTABLEKS                       R12 R6 K9 ["children"]
       99 LOADNIL                          R13
      100 LOADNIL                          R14
      101 FORGPREP                         R12
      102 GETUPVAL                         R18 1
      103 GETTABLEKS                       R17 R18 K10 ["traverseHierarchy"]
      105 MOVE                             R18 R0
      106 MOVE                             R19 R1
      107 MOVE                             R20 R2
      108 MOVE                             R21 R5
      109 MOVE                             R22 R11
      110 MOVE                             R23 R15
      111 MOVE                             R24 R16
      112 MOVE                             R25 R7
      113 MOVE                             R26 R8
      114 CALL                             R17 9 0
      115 FORGLOOP                         R12 2 ; [-14]
      117 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 NEWTABLE                         R0 0 0
        5 SETUPVAL                         R0 0
        6 NEWTABLE                         R0 0 4
        8 GETIMPORT                        R3 K3 [Enum.AssetType.LeftArm]
       10 GETIMPORT                        R4 K5 [Enum.AssetType.RightArm]
       12 GETIMPORT                        R5 K7 [Enum.AssetType.LeftLeg]
       14 GETIMPORT                        R6 K9 [Enum.AssetType.RightLeg]
       16 SETLIST                          R0 R3 4 [1]
       18 LOADNIL                          R1
       19 LOADNIL                          R2
       20 FORGPREP                         R0
       21 GETUPVAL                         R5 1
       22 MOVE                             R6 R4
       23 CALL                             R5 1 1
       24 GETUPVAL                         R6 0
       25 NEWTABLE                         R7 0 0
       27 SETTABLE                         R7 R6 R4
       28 LOADN                            R8 1
       29 LENGTH                           R9 R5
       30 SUBK                             R6 R9 K10 [1]
       31 LOADN                            R7 1
       32 FORNPREP                         R6
       33 GETUPVAL                         R10 0
       34 GETTABLE                         R9 R10 R4
       35 GETTABLE                         R10 R5 R8
       36 ADDK                             R12 R8 K10 [1]
       37 GETTABLE                         R11 R5 R12
       38 SETTABLE                         R11 R9 R10
       39 FORNLOOP                         R6
       40 FORGLOOP                         R0 2 ; [-20]
       42 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 0
        2 GETUPVAL                         R4 1
        3 GETTABLE                         R3 R4 R0
        4 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        6 LOADK                            R4 K0 ["Invalid asset type"]
        7 GETIMPORT                        R2 K2 [assert]
        9 CALL                             R2 2 1
       10 GETTABLE                         R3 R2 R1
       11 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R4 K7 ["calculateMinMax"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R5 R0 K5 ["util"]
       25 GETTABLEKS                       R4 R5 K8 ["getExpectedPartSize"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K9 ["ConstantsInterface"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R7 R0 K5 ["util"]
       37 GETTABLEKS                       R6 R7 K10 ["getPartNamesInHierarchyOrder"]
       39 CALL                             R5 1 1
       40 NEWTABLE                         R6 4 0
       42 DUPCLOSURE                       R7 K11 [PROTO_0]
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R4
       46 SETTABLEKS                       R7 R6 K12 ["calculateBounds"]
       48 DUPCLOSURE                       R7 K13 [PROTO_1]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R6
       51 SETTABLEKS                       R7 R6 K14 ["traverseHierarchy"]
       53 LOADNIL                          R7
       54 NEWCLOSURE                       R8 P2
       55 CAPTURE                          REF R7
       56 CAPTURE                          VAL R5
       57 NEWCLOSURE                       R9 P3
       58 CAPTURE                          VAL R8
       59 CAPTURE                          REF R7
       60 SETTABLEKS                       R9 R6 K15 ["getAssetRigChild"]
       62 NEWTABLE                         R9 8 0
       64 GETIMPORT                        R10 K19 [Enum.AssetType.DynamicHead]
       66 DUPTABLE                         R11 K21 [{"root"}]
       67 LOADK                            R12 K22 ["Head"]
       68 SETTABLEKS                       R12 R11 K20 ["root"]
       70 SETTABLE                         R11 R9 R10
       71 GETIMPORT                        R10 K24 [Enum.AssetType.Torso]
       73 DUPTABLE                         R11 K26 [{"root", "children"}]
       74 LOADK                            R12 K27 ["LowerTorso"]
       75 SETTABLEKS                       R12 R11 K20 ["root"]
       77 DUPTABLE                         R12 K29 [{"UpperTorso"}]
       78 NEWTABLE                         R13 0 0
       80 SETTABLEKS                       R13 R12 K28 ["UpperTorso"]
       82 SETTABLEKS                       R12 R11 K25 ["children"]
       84 SETTABLE                         R11 R9 R10
       85 GETIMPORT                        R10 K31 [Enum.AssetType.LeftArm]
       87 DUPTABLE                         R11 K26 [{"root", "children"}]
       88 LOADK                            R12 K32 ["LeftUpperArm"]
       89 SETTABLEKS                       R12 R11 K20 ["root"]
       91 DUPTABLE                         R12 K34 [{"LeftLowerArm"}]
       92 DUPTABLE                         R13 K35 [{"children"}]
       93 DUPTABLE                         R14 K37 [{"LeftHand"}]
       94 NEWTABLE                         R15 0 0
       96 SETTABLEKS                       R15 R14 K36 ["LeftHand"]
       98 SETTABLEKS                       R14 R13 K25 ["children"]
      100 SETTABLEKS                       R13 R12 K33 ["LeftLowerArm"]
      102 SETTABLEKS                       R12 R11 K25 ["children"]
      104 SETTABLE                         R11 R9 R10
      105 GETIMPORT                        R10 K39 [Enum.AssetType.RightArm]
      107 DUPTABLE                         R11 K26 [{"root", "children"}]
      108 LOADK                            R12 K40 ["RightUpperArm"]
      109 SETTABLEKS                       R12 R11 K20 ["root"]
      111 DUPTABLE                         R12 K42 [{"RightLowerArm"}]
      112 DUPTABLE                         R13 K35 [{"children"}]
      113 DUPTABLE                         R14 K44 [{"RightHand"}]
      114 NEWTABLE                         R15 0 0
      116 SETTABLEKS                       R15 R14 K43 ["RightHand"]
      118 SETTABLEKS                       R14 R13 K25 ["children"]
      120 SETTABLEKS                       R13 R12 K41 ["RightLowerArm"]
      122 SETTABLEKS                       R12 R11 K25 ["children"]
      124 SETTABLE                         R11 R9 R10
      125 GETIMPORT                        R10 K46 [Enum.AssetType.LeftLeg]
      127 DUPTABLE                         R11 K26 [{"root", "children"}]
      128 LOADK                            R12 K47 ["LeftUpperLeg"]
      129 SETTABLEKS                       R12 R11 K20 ["root"]
      131 DUPTABLE                         R12 K49 [{"LeftLowerLeg"}]
      132 DUPTABLE                         R13 K35 [{"children"}]
      133 DUPTABLE                         R14 K51 [{"LeftFoot"}]
      134 NEWTABLE                         R15 0 0
      136 SETTABLEKS                       R15 R14 K50 ["LeftFoot"]
      138 SETTABLEKS                       R14 R13 K25 ["children"]
      140 SETTABLEKS                       R13 R12 K48 ["LeftLowerLeg"]
      142 SETTABLEKS                       R12 R11 K25 ["children"]
      144 SETTABLE                         R11 R9 R10
      145 GETIMPORT                        R10 K53 [Enum.AssetType.RightLeg]
      147 DUPTABLE                         R11 K26 [{"root", "children"}]
      148 LOADK                            R12 K54 ["RightUpperLeg"]
      149 SETTABLEKS                       R12 R11 K20 ["root"]
      151 DUPTABLE                         R12 K56 [{"RightLowerLeg"}]
      152 DUPTABLE                         R13 K35 [{"children"}]
      153 DUPTABLE                         R14 K58 [{"RightFoot"}]
      154 NEWTABLE                         R15 0 0
      156 SETTABLEKS                       R15 R14 K57 ["RightFoot"]
      158 SETTABLEKS                       R14 R13 K25 ["children"]
      160 SETTABLEKS                       R13 R12 K55 ["RightLowerLeg"]
      162 SETTABLEKS                       R12 R11 K25 ["children"]
      164 SETTABLE                         R11 R9 R10
      165 SETTABLEKS                       R9 R6 K59 ["assetHierarchy"]
      167 CLOSEUPVALS                      R7
      168 RETURN                           R6 1
