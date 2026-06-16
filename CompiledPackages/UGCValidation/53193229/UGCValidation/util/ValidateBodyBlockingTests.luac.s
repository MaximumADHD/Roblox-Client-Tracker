PROTO_0:
        0 LOADB                            R2 1
        1 LOADK                            R3 K0 [""]
        2 NEWTABLE                         R4 0 3
        4 LOADK                            R7 K1 ["X"]
        5 LOADK                            R8 K2 ["Y"]
        6 LOADK                            R9 K3 ["Z"]
        7 SETLIST                          R4 R7 3 [1]
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 GETTABLE                         R9 R0 R8
       13 GETUPVAL                         R10 0
       14 MOVE                             R11 R9
       15 LOADN                            R12 0
       16 LOADK                            R13 K4 [0.0001]
       17 CALL                             R10 3 1
       18 JUMPIFNOT                        R10 ; [+15]
       19 LENGTH                           R10 R3
       20 LOADN                            R11 0
       21 JUMPIFNOTLT                      R11 R10 ; [+5]
       23 MOVE                             R10 R3
       24 LOADK                            R11 K5 [". "]
       25 CONCAT                           R3 R10 R11
       26 JUMP                             ; [+1]
       27 LOADK                            R3 K0 [""]
       28 MOVE                             R10 R3
       29 LOADK                            R11 K6 ["Size on "]
       30 MOVE                             R12 R8
       31 LOADK                            R13 K7 [" axis is zero"]
       32 CONCAT                           R3 R10 R13
       33 LOADB                            R2 0
       34 FORGLOOP                         R4 2 ; [-23]
       36 JUMPIF                           R2 ; [+12]
       37 LOADB                            R4 0
       38 NEWTABLE                         R5 0 1
       40 LOADK                            R7 K8 ["Render mesh for "]
       41 MOVE                             R8 R1
       42 LOADK                            R9 K9 [": "]
       43 MOVE                             R10 R3
       44 LOADK                            R11 K10 [". Increase the size of the mesh"]
       45 CONCAT                           R6 R7 R11
       46 SETLIST                          R5 R6 1 [1]
       48 RETURN                           R4 2
       49 LOADB                            R4 1
       50 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["new"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 MOVE                             R6 R1
        7 LOADB                            R7 1
        8 CALL                             R4 3 1
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K1 ["validateMeshMin"]
       12 MOVE                             R6 R4
       13 GETTABLEKS                       R7 R0 K2 ["Name"]
       15 CALL                             R5 2 2
       16 MOVE                             R9 R5
       17 MOVE                             R10 R6
       18 NAMECALL                         R7 R3 K3 ["updateReasons"]
       20 CALL                             R7 3 0
       21 JUMPIF                           R5 ; [+12]
       22 JUMPIFNOT                        R2 ; [+11]
       23 GETUPVAL                         R7 3
       24 GETTABLEKS                       R7 R7 K4 ["reportFailure"]
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R8 R8 K5 ["ErrorType"]
       29 GETTABLEKS                       R8 R8 K6 ["validateBodyBlockingTests_ZeroMeshSize"]
       31 LOADNIL                          R9
       32 MOVE                             R10 R1
       33 CALL                             R7 3 0
       34 GETUPVAL                         R7 4
       35 GETTABLEKS                       R7 R7 K7 ["checkFlagEnabledForAllowHrd"]
       37 CALL                             R7 0 1
       38 JUMPIFNOT                        R7 ; [+39]
       39 GETUPVAL                         R7 4
       40 GETTABLEKS                       R7 R7 K8 ["getAvatarBoneSchema"]
       42 GETTABLEKS                       R8 R0 K2 ["Name"]
       44 CALL                             R7 1 1
       45 GETUPVAL                         R8 4
       46 GETTABLEKS                       R8 R8 K9 ["getNameWhitelistOfClassInSchema"]
       48 MOVE                             R9 R7
       49 LOADK                            R10 K10 ["Attachment"]
       50 CALL                             R8 2 1
       51 MOVE                             R9 R8
       52 LOADNIL                          R10
       53 LOADNIL                          R11
       54 FORGPREP                         R9
       55 JUMPIFNOT                        R13 ; [+20]
       56 MOVE                             R16 R12
       57 LOADB                            R17 1
       58 NAMECALL                         R14 R0 K11 ["FindFirstChild"]
       60 CALL                             R14 3 1
       61 JUMPIF                           R14 ; [+14]
       62 LOADB                            R16 0
       63 NEWTABLE                         R17 0 1
       65 LOADK                            R19 K12 ["Missing Required attachment %*"]
       66 MOVE                             R21 R12
       67 NAMECALL                         R19 R19 K13 ["format"]
       69 CALL                             R19 2 1
       70 MOVE                             R18 R19
       71 SETLIST                          R17 R18 1 [1]
       73 NAMECALL                         R14 R3 K3 ["updateReasons"]
       75 CALL                             R14 3 0
       76 FORGLOOP                         R9 2 ; [-22]
       78 NAMECALL                         R7 R3 K14 ["getFinalResults"]
       80 CALL                             R7 1 -1
       81 RETURN                           R7 -1

PROTO_2:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 LOADB                            R3 1
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 LOADK                            R12 K2 ["MeshPart"]
        9 NAMECALL                         R10 R8 K3 ["IsA"]
       11 CALL                             R10 2 -1
       12 FASTCALL                         ASSERT ; [+2]
       13 GETIMPORT                        R9 K5 [assert]
       15 CALL                             R9 -1 0
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K6 ["validateInternal"]
       19 MOVE                             R10 R8
       20 MOVE                             R11 R1
       21 LOADB                            R12 0
       22 CALL                             R9 3 1
       23 JUMPIF                           R9 ; [+2]
       24 LOADB                            R3 0
       25 JUMP                             ; [+2]
       26 FORGLOOP                         R4 2 ; [-19]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K7 ["recordScriptTime"]
       31 GETIMPORT                        R5 K9 [script]
       33 GETTABLEKS                       R5 R5 K10 ["Name"]
       35 MOVE                             R6 R2
       36 MOVE                             R7 R1
       37 CALL                             R4 3 0
       38 RETURN                           R3 1

PROTO_3:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R3 R1 K2 ["assetTypeEnum"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K3 ["new"]
        8 CALL                             R4 0 1
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K4 ["ASSET_TYPE_INFO"]
       12 GETTABLE                         R5 R6 R3
       13 GETIMPORT                        R6 K8 [Enum.AssetType.DynamicHead]
       15 JUMPIFNOTEQ                      R6 R3 ; [+12]
       17 GETUPVAL                         R8 2
       18 GETTABLEKS                       R8 R8 K9 ["validateInternal"]
       20 MOVE                             R9 R0
       21 MOVE                             R10 R1
       22 LOADB                            R11 1
       23 CALL                             R8 3 -1
       24 NAMECALL                         R6 R4 K10 ["updateReasons"]
       26 CALL                             R6 -1 0
       27 JUMP                             ; [+27]
       28 GETIMPORT                        R6 K12 [pairs]
       30 GETTABLEKS                       R7 R5 K13 ["subParts"]
       32 CALL                             R6 1 3
       33 FORGPREP_NEXT                    R6
       34 MOVE                             R13 R9
       35 NAMECALL                         R11 R0 K14 ["FindFirstChild"]
       37 CALL                             R11 2 1
       38 FASTCALL1                        ASSERT R11 ; [+3]
       39 MOVE                             R13 R11
       40 GETIMPORT                        R12 K16 [assert]
       42 CALL                             R12 1 0
       43 GETUPVAL                         R14 2
       44 GETTABLEKS                       R14 R14 K9 ["validateInternal"]
       46 MOVE                             R15 R11
       47 MOVE                             R16 R1
       48 LOADB                            R17 1
       49 CALL                             R14 3 -1
       50 NAMECALL                         R12 R4 K10 ["updateReasons"]
       52 CALL                             R12 -1 0
       53 FORGLOOP                         R6 1 ; [-20]
       55 GETUPVAL                         R6 3
       56 GETTABLEKS                       R6 R6 K17 ["recordScriptTime"]
       58 GETIMPORT                        R7 K19 [script]
       60 GETTABLEKS                       R7 R7 K20 ["Name"]
       62 MOVE                             R8 R2
       63 MOVE                             R9 R1
       64 CALL                             R6 3 0
       65 NAMECALL                         R6 R4 K21 ["getFinalResults"]
       67 CALL                             R6 1 -1
       68 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Constants"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R0 K7 ["util"]
       19 GETIMPORT                        R4 K4 [require]
       21 GETTABLEKS                       R5 R3 K8 ["Types"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K4 [require]
       26 GETTABLEKS                       R6 R3 K9 ["floatEquals"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K4 [require]
       31 GETTABLEKS                       R7 R3 K10 ["getExpectedPartSize"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K4 [require]
       36 GETTABLEKS                       R8 R3 K11 ["FailureReasonsAccumulator"]
       38 CALL                             R7 1 1
       39 GETIMPORT                        R8 K4 [require]
       41 GETTABLEKS                       R9 R0 K7 ["util"]
       43 GETTABLEKS                       R9 R9 K12 ["R15plusUtils"]
       45 CALL                             R8 1 1
       46 NEWTABLE                         R9 4 0
       48 DUPCLOSURE                       R10 K13 [PROTO_0]
       49 CAPTURE                          VAL R5
       50 SETTABLEKS                       R10 R9 K14 ["validateMeshMin"]
       52 DUPCLOSURE                       R10 K15 [PROTO_1]
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R8
       58 SETTABLEKS                       R10 R9 K16 ["validateInternal"]
       60 DUPCLOSURE                       R10 K17 [PROTO_2]
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R1
       63 SETTABLEKS                       R10 R9 K18 ["validateAll"]
       65 DUPCLOSURE                       R10 K19 [PROTO_3]
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R1
       70 SETTABLEKS                       R10 R9 K20 ["validate"]
       72 RETURN                           R9 1
