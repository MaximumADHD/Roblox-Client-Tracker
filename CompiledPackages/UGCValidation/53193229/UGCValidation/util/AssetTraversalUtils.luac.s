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
       90 GETUPVAL                         R5 2
       91 GETTABLEKS                       R5 R5 K5 ["getAttachments"]
       93 MOVE                             R6 R0
       94 GETTABLEKS                       R7 R1 K6 ["Name"]
       96 CALL                             R5 2 3
       97 FORGPREP                         R5
       98 MOVE                             R12 R9
       99 GETUPVAL                         R13 3
      100 GETTABLEKS                       R13 R13 K7 ["checkFlagEnabledForAllowHrd"]
      102 CALL                             R13 0 -1
      103 NAMECALL                         R10 R1 K8 ["FindFirstChild"]
      105 CALL                             R10 -1 1
      106 FASTCALL1                        ASSERT R10 ; [+3]
      107 MOVE                             R12 R10
      108 GETIMPORT                        R11 K10 [assert]
      110 CALL                             R11 1 0
      111 GETIMPORT                        R12 K13 [string.match]
      113 GETTABLEKS                       R13 R10 K6 ["Name"]
      115 LOADK                            R14 K14 ["RigAttachment$"]
      116 CALL                             R12 2 1
      117 JUMPIFNOTEQKNIL                  R12 ; [+2]
      119 LOADB                            R11 0 +1
      120 LOADB                            R11 1
      121 JUMPIFNOT                        R11 ; [+18]
      122 GETUPVAL                         R13 4
      123 MOVE                             R14 R10
      124 CALL                             R13 1 1
      125 MUL                              R12 R2 R13
      126 GETUPVAL                         R13 1
      127 GETTABLEKS                       R14 R3 K15 ["minRigAttachment"]
      129 GETTABLEKS                       R15 R3 K16 ["maxRigAttachment"]
      131 GETTABLEKS                       R16 R12 K17 ["Position"]
      133 GETTABLEKS                       R17 R12 K17 ["Position"]
      135 CALL                             R13 4 2
      136 SETTABLEKS                       R13 R3 K15 ["minRigAttachment"]
      138 SETTABLEKS                       R14 R3 K16 ["maxRigAttachment"]
      140 FORGLOOP                         R5 2 ; [-43]
      142 GETUPVAL                         R5 1
      143 GETTABLEKS                       R6 R3 K18 ["minOverall"]
      145 GETTABLEKS                       R7 R3 K19 ["maxOverall"]
      147 GETTABLEKS                       R8 R3 K0 ["minMeshCorner"]
      149 GETTABLEKS                       R9 R3 K1 ["maxMeshCorner"]
      151 CALL                             R5 4 2
      152 SETTABLEKS                       R5 R3 K18 ["minOverall"]
      154 SETTABLEKS                       R6 R3 K19 ["maxOverall"]
      156 GETUPVAL                         R5 1
      157 GETTABLEKS                       R6 R3 K18 ["minOverall"]
      159 GETTABLEKS                       R7 R3 K19 ["maxOverall"]
      161 GETTABLEKS                       R8 R3 K15 ["minRigAttachment"]
      163 GETTABLEKS                       R9 R3 K16 ["maxRigAttachment"]
      165 CALL                             R5 4 2
      166 SETTABLEKS                       R5 R3 K18 ["minOverall"]
      168 SETTABLEKS                       R6 R3 K19 ["maxOverall"]
      170 RETURN                           R0 0

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
       32 JUMPIFNOT                        R3 ; [+58]
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
       47 GETUPVAL                         R13 0
       48 GETTABLEKS                       R13 R13 K3 ["getRigAttachmentToParent"]
       50 MOVE                             R14 R2
       51 MOVE                             R15 R5
       52 CALL                             R13 2 1
       53 MOVE                             R16 R13
       54 GETUPVAL                         R17 1
       55 GETTABLEKS                       R17 R17 K4 ["checkFlagEnabledForAllowHrd"]
       57 CALL                             R17 0 -1
       58 NAMECALL                         R14 R12 K2 ["FindFirstChild"]
       60 CALL                             R14 -1 1
       61 FASTCALL1                        ASSERT R14 ; [+3]
       62 MOVE                             R16 R14
       63 GETIMPORT                        R15 K1 [assert]
       65 CALL                             R15 1 0
       66 MOVE                             R17 R13
       67 GETUPVAL                         R18 1
       68 GETTABLEKS                       R18 R18 K4 ["checkFlagEnabledForAllowHrd"]
       70 CALL                             R18 0 -1
       71 NAMECALL                         R15 R10 K2 ["FindFirstChild"]
       73 CALL                             R15 -1 1
       74 FASTCALL1                        ASSERT R15 ; [+3]
       75 MOVE                             R17 R15
       76 GETIMPORT                        R16 K1 [assert]
       78 CALL                             R16 1 0
       79 GETUPVAL                         R17 2
       80 MOVE                             R18 R14
       81 CALL                             R17 1 1
       82 MUL                              R16 R11 R17
       83 GETUPVAL                         R17 2
       84 MOVE                             R18 R15
       85 CALL                             R17 1 1
       86 NAMECALL                         R17 R17 K5 ["Inverse"]
       88 CALL                             R17 1 1
       89 MUL                              R11 R16 R17
       90 JUMP                             ; [+4]
       91 GETIMPORT                        R12 K8 [CFrame.new]
       93 CALL                             R12 0 1
       94 MOVE                             R11 R12
       95 GETUPVAL                         R12 3
       96 GETTABLEKS                       R12 R12 K9 ["calculateBounds"]
       98 MOVE                             R13 R2
       99 MOVE                             R14 R10
      100 MOVE                             R15 R11
      101 MOVE                             R16 R7
      102 MOVE                             R17 R8
      103 CALL                             R12 5 0
      104 GETTABLEKS                       R12 R6 K10 ["children"]
      106 JUMPIFNOT                        R12 ; [+20]
      107 GETTABLEKS                       R12 R6 K10 ["children"]
      109 LOADNIL                          R13
      110 LOADNIL                          R14
      111 FORGPREP                         R12
      112 GETUPVAL                         R17 3
      113 GETTABLEKS                       R17 R17 K11 ["traverseHierarchy"]
      115 MOVE                             R18 R0
      116 MOVE                             R19 R1
      117 MOVE                             R20 R2
      118 MOVE                             R21 R5
      119 MOVE                             R22 R11
      120 MOVE                             R23 R15
      121 MOVE                             R24 R16
      122 MOVE                             R25 R7
      123 MOVE                             R26 R8
      124 CALL                             R17 9 0
      125 FORGLOOP                         R12 2 ; [-14]
      127 RETURN                           R0 0

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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R3 K7 ["calculateMinMax"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K5 ["util"]
       25 GETTABLEKS                       R4 R4 K8 ["getExpectedPartSize"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K9 ["ConstantsInterface"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R6 R0 K5 ["util"]
       37 GETTABLEKS                       R6 R6 K10 ["getPartNamesInHierarchyOrder"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R7 R0 K5 ["util"]
       44 GETTABLEKS                       R7 R7 K11 ["R15plusUtils"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K4 [require]
       49 GETTABLEKS                       R8 R0 K5 ["util"]
       51 GETTABLEKS                       R8 R8 K12 ["getAttachmentCFrameInPartSpace"]
       53 CALL                             R7 1 1
       54 NEWTABLE                         R8 4 0
       56 DUPCLOSURE                       R9 K13 [PROTO_0]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R7
       62 SETTABLEKS                       R9 R8 K14 ["calculateBounds"]
       64 DUPCLOSURE                       R9 K15 [PROTO_1]
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R8
       69 SETTABLEKS                       R9 R8 K16 ["traverseHierarchy"]
       71 LOADNIL                          R9
       72 NEWCLOSURE                       R10 P2
       73 CAPTURE                          REF R9
       74 CAPTURE                          VAL R5
       75 NEWCLOSURE                       R11 P3
       76 CAPTURE                          VAL R10
       77 CAPTURE                          REF R9
       78 SETTABLEKS                       R11 R8 K17 ["getAssetRigChild"]
       80 NEWTABLE                         R11 8 0
       82 GETIMPORT                        R12 K21 [Enum.AssetType.DynamicHead]
       84 DUPTABLE                         R13 K23 [{"root"}]
       85 LOADK                            R14 K24 ["Head"]
       86 SETTABLEKS                       R14 R13 K22 ["root"]
       88 SETTABLE                         R13 R11 R12
       89 GETIMPORT                        R12 K26 [Enum.AssetType.Torso]
       91 DUPTABLE                         R13 K28 [{"root", "children"}]
       92 LOADK                            R14 K29 ["LowerTorso"]
       93 SETTABLEKS                       R14 R13 K22 ["root"]
       95 DUPTABLE                         R14 K31 [{"UpperTorso"}]
       96 NEWTABLE                         R15 0 0
       98 SETTABLEKS                       R15 R14 K30 ["UpperTorso"]
      100 SETTABLEKS                       R14 R13 K27 ["children"]
      102 SETTABLE                         R13 R11 R12
      103 GETIMPORT                        R12 K33 [Enum.AssetType.LeftArm]
      105 DUPTABLE                         R13 K28 [{"root", "children"}]
      106 LOADK                            R14 K34 ["LeftUpperArm"]
      107 SETTABLEKS                       R14 R13 K22 ["root"]
      109 DUPTABLE                         R14 K36 [{"LeftLowerArm"}]
      110 DUPTABLE                         R15 K37 [{"children"}]
      111 DUPTABLE                         R16 K39 [{"LeftHand"}]
      112 NEWTABLE                         R17 0 0
      114 SETTABLEKS                       R17 R16 K38 ["LeftHand"]
      116 SETTABLEKS                       R16 R15 K27 ["children"]
      118 SETTABLEKS                       R15 R14 K35 ["LeftLowerArm"]
      120 SETTABLEKS                       R14 R13 K27 ["children"]
      122 SETTABLE                         R13 R11 R12
      123 GETIMPORT                        R12 K41 [Enum.AssetType.RightArm]
      125 DUPTABLE                         R13 K28 [{"root", "children"}]
      126 LOADK                            R14 K42 ["RightUpperArm"]
      127 SETTABLEKS                       R14 R13 K22 ["root"]
      129 DUPTABLE                         R14 K44 [{"RightLowerArm"}]
      130 DUPTABLE                         R15 K37 [{"children"}]
      131 DUPTABLE                         R16 K46 [{"RightHand"}]
      132 NEWTABLE                         R17 0 0
      134 SETTABLEKS                       R17 R16 K45 ["RightHand"]
      136 SETTABLEKS                       R16 R15 K27 ["children"]
      138 SETTABLEKS                       R15 R14 K43 ["RightLowerArm"]
      140 SETTABLEKS                       R14 R13 K27 ["children"]
      142 SETTABLE                         R13 R11 R12
      143 GETIMPORT                        R12 K48 [Enum.AssetType.LeftLeg]
      145 DUPTABLE                         R13 K28 [{"root", "children"}]
      146 LOADK                            R14 K49 ["LeftUpperLeg"]
      147 SETTABLEKS                       R14 R13 K22 ["root"]
      149 DUPTABLE                         R14 K51 [{"LeftLowerLeg"}]
      150 DUPTABLE                         R15 K37 [{"children"}]
      151 DUPTABLE                         R16 K53 [{"LeftFoot"}]
      152 NEWTABLE                         R17 0 0
      154 SETTABLEKS                       R17 R16 K52 ["LeftFoot"]
      156 SETTABLEKS                       R16 R15 K27 ["children"]
      158 SETTABLEKS                       R15 R14 K50 ["LeftLowerLeg"]
      160 SETTABLEKS                       R14 R13 K27 ["children"]
      162 SETTABLE                         R13 R11 R12
      163 GETIMPORT                        R12 K55 [Enum.AssetType.RightLeg]
      165 DUPTABLE                         R13 K28 [{"root", "children"}]
      166 LOADK                            R14 K56 ["RightUpperLeg"]
      167 SETTABLEKS                       R14 R13 K22 ["root"]
      169 DUPTABLE                         R14 K58 [{"RightLowerLeg"}]
      170 DUPTABLE                         R15 K37 [{"children"}]
      171 DUPTABLE                         R16 K60 [{"RightFoot"}]
      172 NEWTABLE                         R17 0 0
      174 SETTABLEKS                       R17 R16 K59 ["RightFoot"]
      176 SETTABLEKS                       R16 R15 K27 ["children"]
      178 SETTABLEKS                       R15 R14 K57 ["RightLowerLeg"]
      180 SETTABLEKS                       R14 R13 K27 ["children"]
      182 SETTABLE                         R13 R11 R12
      183 SETTABLEKS                       R11 R8 K61 ["assetHierarchy"]
      185 CLOSEUPVALS                      R9
      186 RETURN                           R8 1
