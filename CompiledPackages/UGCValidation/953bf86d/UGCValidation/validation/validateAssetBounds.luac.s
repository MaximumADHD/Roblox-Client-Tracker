PROTO_0:
        0 AND                              R4 R1 R2
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 LOADB                            R7 0 +1
        4 LOADB                            R7 1
        5 JUMPIFNOTEQKNIL                  R4 ; [+2]
        7 LOADB                            R8 0 +1
        8 LOADB                            R8 1
        9 JUMPIFNOTEQ                      R7 R8 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL1                        ASSERT R6 ; [+2]
       14 GETIMPORT                        R5 K1 [assert]
       16 CALL                             R5 1 0
       17 JUMPIFNOT                        R0 ; [+13]
       18 MOVE                             R5 R0
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 FORGPREP                         R5
       22 MOVE                             R10 R3
       23 MOVE                             R11 R9
       24 CALL                             R10 1 1
       25 JUMPIF                           R10 ; [+2]
       26 LOADB                            R10 0
       27 RETURN                           R10 1
       28 FORGLOOP                         R5 2 ; [-7]
       30 JUMP                             ; [+40]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R6 R7 K2 ["ASSET_TYPE_INFO"]
       34 GETTABLE                         R5 R6 R2
       35 FASTCALL1                        ASSERT R5 ; [+3]
       36 MOVE                             R7 R5
       37 GETIMPORT                        R6 K1 [assert]
       39 CALL                             R6 1 0
       40 GETIMPORT                        R6 K6 [Enum.AssetType.DynamicHead]
       42 JUMPIFNOTEQ                      R6 R2 ; [+5]
       44 MOVE                             R6 R3
       45 MOVE                             R7 R1
       46 CALL                             R6 1 -1
       47 RETURN                           R6 -1
       48 GETIMPORT                        R6 K8 [pairs]
       50 GETTABLEKS                       R7 R5 K9 ["subParts"]
       52 CALL                             R6 1 3
       53 FORGPREP_NEXT                    R6
       54 MOVE                             R13 R9
       55 NAMECALL                         R11 R1 K10 ["FindFirstChild"]
       57 CALL                             R11 2 1
       58 FASTCALL1                        ASSERT R11 ; [+3]
       59 MOVE                             R13 R11
       60 GETIMPORT                        R12 K1 [assert]
       62 CALL                             R12 1 0
       63 MOVE                             R12 R3
       64 MOVE                             R13 R11
       65 CALL                             R12 1 1
       66 JUMPIF                           R12 ; [+2]
       67 LOADB                            R12 0
       68 RETURN                           R12 1
       69 FORGLOOP                         R6 1 ; [-16]
       71 LOADB                            R5 1
       72 RETURN                           R5 1

PROTO_1:
        0 LOADK                            R3 K0 ["AvatarPartScaleType"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 FASTCALL1                        ASSERT R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K3 [assert]
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 0
       10 JUMPIF                           R2 ; [+2]
       11 SETUPVAL                         R1 0
       12 JUMP                             ; [+10]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K4 ["Value"]
       16 GETTABLEKS                       R4 R1 K4 ["Value"]
       18 JUMPIFEQ                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1
       23 LOADB                            R2 1
       24 RETURN                           R2 1

PROTO_2:
        0 AND                              R4 R1 R2
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 LOADB                            R7 0 +1
        4 LOADB                            R7 1
        5 JUMPIFNOTEQKNIL                  R4 ; [+2]
        7 LOADB                            R8 0 +1
        8 LOADB                            R8 1
        9 JUMPIFNOTEQ                      R7 R8 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL1                        ASSERT R6 ; [+2]
       14 GETIMPORT                        R5 K1 [assert]
       16 CALL                             R5 1 0
       17 LOADNIL                          R5
       18 GETUPVAL                         R6 0
       19 MOVE                             R7 R0
       20 MOVE                             R8 R1
       21 MOVE                             R9 R2
       22 NEWCLOSURE                       R10 P0
       23 CAPTURE                          REF R5
       24 CALL                             R6 4 1
       25 JUMPIF                           R6 ; [+20]
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R7 R8 K2 ["reportFailure"]
       29 GETUPVAL                         R10 1
       30 GETTABLEKS                       R9 R10 K3 ["ErrorType"]
       32 GETTABLEKS                       R8 R9 K4 ["validateAssetBounds_InconsistentAvatarPartScaleType"]
       34 LOADNIL                          R9
       35 MOVE                             R10 R3
       36 CALL                             R7 3 0
       37 LOADB                            R7 0
       38 NEWTABLE                         R8 0 1
       40 LOADK                            R9 K5 ["All MeshParts must have the same value in their AvatarPartScaleType child. Please verify the values match."]
       41 SETLIST                          R8 R9 1 [1]
       43 LOADNIL                          R9
       44 CLOSEUPVALS                      R5
       45 RETURN                           R7 3
       46 GETUPVAL                         R7 2
       47 MOVE                             R8 R5
       48 MOVE                             R9 R3
       49 CALL                             R7 2 2
       50 MOVE                             R9 R7
       51 MOVE                             R10 R8
       52 JUMPIFNOT                        R7 ; [+3]
       53 GETTABLEKS                       R11 R5 K6 ["Value"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R11
       57 CLOSEUPVALS                      R5
       58 RETURN                           R9 3

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["new"]
        3 CALL                             R4 0 1
        4 LOADB                            R5 0
        5 GETTABLEKS                       R7 R2 K1 ["maxMeshCorner"]
        7 GETTABLEKS                       R8 R2 K2 ["minMeshCorner"]
        9 SUB                              R6 R7 R8
       10 NEWTABLE                         R7 0 3
       12 LOADK                            R10 K3 ["X"]
       13 LOADK                            R11 K4 ["Y"]
       14 LOADK                            R12 K5 ["Z"]
       15 SETLIST                          R7 R10 3 [1]
       17 LOADNIL                          R8
       18 LOADNIL                          R9
       19 FORGPREP                         R7
       20 GETTABLE                         R12 R6 R11
       21 GETTABLE                         R13 R0 R11
       22 JUMPIFLE                         R13 R12 ; [+2]
       24 LOADB                            R14 0 +1
       25 LOADB                            R14 1
       26 JUMPIF                           R14 ; [+13]
       27 JUMPIF                           R5 ; [+12]
       28 GETUPVAL                         R16 1
       29 GETTABLEKS                       R15 R16 K6 ["reportFailure"]
       31 GETUPVAL                         R18 1
       32 GETTABLEKS                       R17 R18 K7 ["ErrorType"]
       34 GETTABLEKS                       R16 R17 K8 ["validateAssetBounds_AssetSizeTooSmall"]
       36 LOADNIL                          R17
       37 MOVE                             R18 R3
       38 CALL                             R15 3 0
       39 LOADB                            R5 1
       40 MOVE                             R17 R14
       41 NEWTABLE                         R18 0 1
       43 GETIMPORT                        R19 K11 [string.format]
       45 LOADK                            R20 K12 ["%s meshes %s axis size of '%.2f' is smaller than the min allowed bounding box %s axis size of '%.2f'. You need to scale up the meshes."]
       46 JUMPIFNOT                        R1 ; [+3]
       47 GETTABLEKS                       R21 R1 K13 ["Name"]
       49 JUMP                             ; [+1]
       50 LOADK                            R21 K14 ["Full body"]
       51 MOVE                             R22 R11
       52 MOVE                             R23 R12
       53 MOVE                             R24 R11
       54 MOVE                             R25 R13
       55 CALL                             R19 6 -1
       56 SETLIST                          R18 R19 -1 [1]
       58 NAMECALL                         R15 R4 K15 ["updateReasons"]
       60 CALL                             R15 3 0
       61 FORGLOOP                         R7 2 ; [-42]
       63 NAMECALL                         R7 R4 K16 ["getFinalResults"]
       65 CALL                             R7 1 -1
       66 RETURN                           R7 -1

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["new"]
        3 CALL                             R4 0 1
        4 LOADB                            R5 0
        5 GETTABLEKS                       R7 R2 K1 ["maxOverall"]
        7 GETTABLEKS                       R8 R2 K2 ["minOverall"]
        9 SUB                              R6 R7 R8
       10 NEWTABLE                         R7 0 3
       12 LOADK                            R10 K3 ["X"]
       13 LOADK                            R11 K4 ["Y"]
       14 LOADK                            R12 K5 ["Z"]
       15 SETLIST                          R7 R10 3 [1]
       17 LOADNIL                          R8
       18 LOADNIL                          R9
       19 FORGPREP                         R7
       20 GETTABLE                         R12 R6 R11
       21 GETTABLE                         R13 R0 R11
       22 JUMPIFLE                         R12 R13 ; [+2]
       24 LOADB                            R14 0 +1
       25 LOADB                            R14 1
       26 JUMPIF                           R14 ; [+13]
       27 JUMPIF                           R5 ; [+12]
       28 GETUPVAL                         R16 1
       29 GETTABLEKS                       R15 R16 K6 ["reportFailure"]
       31 GETUPVAL                         R18 1
       32 GETTABLEKS                       R17 R18 K7 ["ErrorType"]
       34 GETTABLEKS                       R16 R17 K8 ["validateAssetBounds_AssetSizeTooBig"]
       36 LOADNIL                          R17
       37 MOVE                             R18 R3
       38 CALL                             R15 3 0
       39 LOADB                            R5 1
       40 MOVE                             R17 R14
       41 NEWTABLE                         R18 0 1
       43 GETIMPORT                        R19 K11 [string.format]
       45 LOADK                            R20 K12 ["%s meshes and joints %s axis size of '%.2f' is larger than the max allowed bounding box %s axis size of '%.2f'. You need to scale down the meshes/joints"]
       46 JUMPIFNOT                        R1 ; [+3]
       47 GETTABLEKS                       R21 R1 K13 ["Name"]
       49 JUMP                             ; [+1]
       50 LOADK                            R21 K14 ["Full body"]
       51 MOVE                             R22 R11
       52 MOVE                             R23 R12
       53 MOVE                             R24 R11
       54 MOVE                             R25 R13
       55 CALL                             R19 6 -1
       56 SETLIST                          R18 R19 -1 [1]
       58 NAMECALL                         R15 R4 K15 ["updateReasons"]
       60 CALL                             R15 3 0
       61 FORGLOOP                         R7 2 ; [-42]
       63 NAMECALL                         R7 R4 K16 ["getFinalResults"]
       65 CALL                             R7 1 -1
       66 RETURN                           R7 -1

PROTO_5:
        0 GETIMPORT                        R3 K1 [tick]
        2 CALL                             R3 0 1
        3 GETTABLEKS                       R4 R2 K2 ["assetTypeEnum"]
        5 AND                              R5 R1 R4
        6 JUMPIFNOTEQKNIL                  R0 ; [+2]
        8 LOADB                            R8 0 +1
        9 LOADB                            R8 1
       10 JUMPIFNOTEQKNIL                  R5 ; [+2]
       12 LOADB                            R9 0 +1
       13 LOADB                            R9 1
       14 JUMPIFNOTEQ                      R8 R9 ; [+2]
       16 LOADB                            R7 0 +1
       17 LOADB                            R7 1
       18 FASTCALL1                        ASSERT R7 ; [+2]
       19 GETIMPORT                        R6 K4 [assert]
       21 CALL                             R6 1 0
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 LOADNIL                          R8
       25 JUMPIFNOT                        R0 ; [+10]
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R9 R10 K5 ["calculateFullBodyBounds"]
       29 MOVE                             R10 R0
       30 MOVE                             R11 R2
       31 CALL                             R9 2 3
       32 MOVE                             R6 R9
       33 MOVE                             R7 R10
       34 MOVE                             R8 R11
       35 JUMP                             ; [+9]
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R9 R10 K6 ["calculateAssetBounds"]
       39 MOVE                             R10 R1
       40 MOVE                             R11 R2
       41 CALL                             R9 2 3
       42 MOVE                             R6 R9
       43 MOVE                             R7 R10
       44 MOVE                             R8 R11
       45 JUMPIF                           R6 ; [+1]
       46 RETURN                           R6 2
       47 MOVE                             R9 R8
       48 LOADNIL                          R10
       49 GETUPVAL                         R11 1
       50 MOVE                             R12 R0
       51 MOVE                             R13 R1
       52 MOVE                             R14 R4
       53 MOVE                             R15 R2
       54 CALL                             R11 4 3
       55 MOVE                             R6 R11
       56 MOVE                             R7 R12
       57 MOVE                             R10 R13
       58 JUMPIF                           R6 ; [+1]
       59 RETURN                           R6 2
       60 GETUPVAL                         R12 2
       61 GETTABLEKS                       R11 R12 K7 ["new"]
       63 CALL                             R11 0 1
       64 LOADNIL                          R12
       65 LOADNIL                          R13
       66 JUMPIFNOT                        R0 ; [+13]
       67 GETUPVAL                         R16 3
       68 GETTABLEKS                       R15 R16 K8 ["FULL_BODY_BOUNDS"]
       70 GETTABLE                         R14 R15 R10
       71 GETTABLEKS                       R12 R14 K9 ["minSize"]
       73 GETUPVAL                         R16 3
       74 GETTABLEKS                       R15 R16 K8 ["FULL_BODY_BOUNDS"]
       76 GETTABLE                         R14 R15 R10
       77 GETTABLEKS                       R13 R14 K10 ["maxSize"]
       79 JUMP                             ; [+18]
       80 GETUPVAL                         R18 3
       81 GETTABLEKS                       R17 R18 K11 ["ASSET_TYPE_INFO"]
       83 GETTABLE                         R16 R17 R4
       84 GETTABLEKS                       R15 R16 K12 ["bounds"]
       86 GETTABLE                         R14 R15 R10
       87 GETTABLEKS                       R12 R14 K9 ["minSize"]
       89 GETUPVAL                         R18 3
       90 GETTABLEKS                       R17 R18 K11 ["ASSET_TYPE_INFO"]
       92 GETTABLE                         R16 R17 R4
       93 GETTABLEKS                       R15 R16 K12 ["bounds"]
       95 GETTABLE                         R14 R15 R10
       96 GETTABLEKS                       R13 R14 K10 ["maxSize"]
       98 GETUPVAL                         R16 4
       99 MOVE                             R17 R12
      100 MOVE                             R18 R4
      101 MOVE                             R19 R9
      102 MOVE                             R20 R2
      103 CALL                             R16 4 -1
      104 NAMECALL                         R14 R11 K13 ["updateReasons"]
      106 CALL                             R14 -1 0
      107 GETUPVAL                         R16 5
      108 MOVE                             R17 R13
      109 MOVE                             R18 R4
      110 MOVE                             R19 R9
      111 MOVE                             R20 R2
      112 CALL                             R16 4 -1
      113 NAMECALL                         R14 R11 K13 ["updateReasons"]
      115 CALL                             R14 -1 0
      116 GETUPVAL                         R15 6
      117 GETTABLEKS                       R14 R15 K14 ["recordScriptTime"]
      119 GETIMPORT                        R16 K16 [script]
      121 GETTABLEKS                       R15 R16 K17 ["Name"]
      123 MOVE                             R16 R3
      124 MOVE                             R17 R2
      125 CALL                             R14 3 0
      126 NAMECALL                         R14 R11 K18 ["getFinalResults"]
      128 CALL                             R14 1 -1
      129 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Constants"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETTABLEKS                       R5 R0 K7 ["util"]
       21 GETTABLEKS                       R4 R5 K8 ["Types"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R6 R0 K7 ["util"]
       28 GETTABLEKS                       R5 R6 K9 ["BoundsCalculator"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R7 R0 K7 ["util"]
       35 GETTABLEKS                       R6 R7 K10 ["FailureReasonsAccumulator"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R8 R0 K11 ["validation"]
       42 GETTABLEKS                       R7 R8 K12 ["validateScaleType"]
       44 CALL                             R6 1 1
       45 DUPCLOSURE                       R7 K13 [PROTO_0]
       46 CAPTURE                          VAL R2
       47 DUPCLOSURE                       R8 K14 [PROTO_2]
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R6
       51 DUPCLOSURE                       R9 K15 [PROTO_3]
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R1
       54 DUPCLOSURE                       R10 K16 [PROTO_4]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R1
       57 DUPCLOSURE                       R11 K17 [PROTO_5]
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R1
       65 RETURN                           R11 1
