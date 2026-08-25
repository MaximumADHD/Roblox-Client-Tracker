PROTO_0:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["Size"]
        7 RETURN                           R1 1
        8 LOADK                            R3 K3 ["Model"]
        9 NAMECALL                         R1 R0 K1 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+4]
       13 NAMECALL                         R1 R0 K4 ["GetBoundingBox"]
       15 CALL                             R1 1 2
       16 RETURN                           R2 1
       17 LOADNIL                          R1
       18 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 GETTABLEKS                       R3 R0 K1 ["Y"]
        4 GETTABLEKS                       R4 R0 K2 ["Z"]
        6 FASTCALL                         MATH_MAX ; [+2]
        7 GETIMPORT                        R1 K5 [math.max]
        9 CALL                             R1 3 1
       10 LOADN                            R2 0
       11 JUMPIFNOTLE                      R1 R2 ; [+3]
       13 LOADN                            R2 1
       14 RETURN                           R2 1
       15 DIVRK                            R2 K6 [2] R1
       16 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+6]
        3 JUMPIF                           R2 ; [+5]
        4 MOVE                             R3 R1
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 LOADN                            R4 1
        8 RETURN                           R3 2
        9 GETTABLEKS                       R3 R0 K0 ["Archivable"]
       11 LOADB                            R4 1
       12 SETTABLEKS                       R4 R0 K0 ["Archivable"]
       14 NAMECALL                         R4 R0 K1 ["Clone"]
       16 CALL                             R4 1 1
       17 SETTABLEKS                       R3 R0 K0 ["Archivable"]
       19 JUMPIF                           R4 ; [+5]
       20 MOVE                             R5 R1
       21 MOVE                             R6 R0
       22 CALL                             R5 1 1
       23 LOADN                            R6 1
       24 RETURN                           R5 2
       25 GETUPVAL                         R5 0
       26 CALL                             R5 0 1
       27 JUMPIFNOT                        R5 ; [+7]
       28 GETTABLEKS                       R6 R0 K2 ["CFrame"]
       30 GETTABLEKS                       R7 R0 K3 ["Position"]
       32 SUB                              R5 R6 R7
       33 SETTABLEKS                       R5 R4 K2 ["CFrame"]
       35 LOADN                            R5 1
       36 JUMPIFNOT                        R2 ; [+23]
       37 GETTABLEKS                       R6 R4 K4 ["Size"]
       39 GETTABLEKS                       R8 R6 K5 ["X"]
       41 GETTABLEKS                       R9 R6 K6 ["Y"]
       43 GETTABLEKS                       R10 R6 K7 ["Z"]
       45 FASTCALL                         MATH_MAX ; [+2]
       46 GETIMPORT                        R7 K10 [math.max]
       48 CALL                             R7 3 1
       49 LOADN                            R8 0
       50 JUMPIFNOTLE                      R7 R8 ; [+3]
       52 LOADN                            R5 1
       53 JUMP                             ; [+1]
       54 DIVRK                            R5 K11 [2] R7
       55 GETTABLEKS                       R6 R4 K4 ["Size"]
       57 MUL                              R6 R6 R5
       58 SETTABLEKS                       R6 R4 K4 ["Size"]
       60 LOADB                            R6 1
       61 SETTABLEKS                       R6 R4 K12 ["Anchored"]
       63 GETIMPORT                        R6 K14 [workspace]
       65 SETTABLEKS                       R6 R4 K15 ["Parent"]
       67 GETIMPORT                        R6 K17 [pcall]
       69 MOVE                             R7 R1
       70 MOVE                             R8 R4
       71 CALL                             R6 2 2
       72 NAMECALL                         R8 R4 K18 ["Destroy"]
       74 CALL                             R8 1 0
       75 JUMPIF                           R6 ; [+5]
       76 GETIMPORT                        R8 K20 [error]
       78 MOVE                             R9 R7
       79 LOADN                            R10 0
       80 CALL                             R8 2 0
       81 MOVE                             R8 R7
       82 MOVE                             R9 R5
       83 RETURN                           R8 2

PROTO_3:
        0 LOADK                            R3 K0 ["MeshPart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 1
        6 LOADK                            R3 K2 ["Model"]
        7 NAMECALL                         R1 R0 K1 ["IsA"]
        9 CALL                             R1 2 1
       10 JUMPIF                           R1 ; [+2]
       11 LOADNIL                          R1
       12 RETURN                           R1 1
       13 LOADNIL                          R1
       14 NAMECALL                         R2 R0 K3 ["GetDescendants"]
       16 CALL                             R2 1 3
       17 FORGPREP                         R2
       18 LOADK                            R9 K0 ["MeshPart"]
       19 NAMECALL                         R7 R6 K1 ["IsA"]
       21 CALL                             R7 2 1
       22 JUMPIFNOT                        R7 ; [+4]
       23 JUMPIFNOT                        R1 ; [+2]
       24 LOADNIL                          R7
       25 RETURN                           R7 1
       26 MOVE                             R1 R6
       27 FORGLOOP                         R2 2 ; [-10]
       29 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+15]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R3 R0 K2 ["Name"]
        8 GETTABLE                         R1 R2 R3
        9 JUMPIFNOT                        R1 ; [+10]
       10 NAMECALL                         R1 R0 K3 ["GetChildren"]
       12 CALL                             R1 1 3
       13 FORGPREP                         R1
       14 GETUPVAL                         R6 1
       15 MOVE                             R7 R5
       16 CALL                             R6 1 0
       17 FORGLOOP                         R1 2 ; [-4]
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 2
       21 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       23 MOVE                             R3 R0
       24 GETIMPORT                        R1 K6 [table.insert]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R2
        5 CAPTURE                          VAL R1
        6 MOVE                             R3 R0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 MOVE                             R8 R2
       11 MOVE                             R9 R7
       12 CALL                             R8 1 0
       13 FORGLOOP                         R3 2 ; [-4]
       15 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R5 K0 ["PVInstance"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+1]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["getLocalBoundingBoxSize"]
       10 MOVE                             R4 R0
       11 CALL                             R3 1 1
       12 LOADN                            R4 0
       13 JUMPIFNOT                        R2 ; [+12]
       14 JUMPIFNOT                        R3 ; [+3]
       15 GETTABLEKS                       R5 R3 K3 ["X"]
       17 JUMP                             ; [+2]
       18 GETTABLEKS                       R5 R2 K3 ["X"]
       20 GETTABLEKS                       R8 R2 K3 ["X"]
       22 DIVK                             R7 R8 K5 [2]
       23 DIVK                             R8 R5 K5 [2]
       24 ADD                              R6 R7 R8
       25 ADDK                             R4 R6 K4 [1]
       26 GETIMPORT                        R8 K8 [CFrame.new]
       28 MOVE                             R9 R4
       29 LOADN                            R10 0
       30 LOADN                            R11 0
       31 CALL                             R8 3 1
       32 MUL                              R7 R1 R8
       33 NAMECALL                         R5 R0 K9 ["PivotTo"]
       35 CALL                             R5 2 0
       36 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["translate"]
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R1
        6 GETUPVAL                         R8 2
        7 GETTABLE                         R7 R8 R1
        8 OR                               R6 R7 R1
        9 CALL                             R2 4 -1
       10 RETURN                           R2 -1

PROTO_8:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 RETURN                           R2 1

PROTO_9:
        0 LOADN                            R5 0
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R6 R6 K0 ["MAX_POLL_ATTEMPTS"]
        4 JUMPIFNOTLT                      R5 R6 ; [+63]
        6 ADDK                             R5 R5 K1 [1]
        7 MOVE                             R6 R0
        8 MOVE                             R7 R1
        9 CALL                             R6 1 1
       10 GETTABLEKS                       R7 R6 K2 ["status"]
       12 JUMPIFNOTEQKS                    R7 K3 ["Completed"] ; [+29]
       14 GETTABLEKS                       R8 R6 K4 ["modelRbxmUrl"]
       16 LOADB                            R10 0
       17 FASTCALL1                        TYPEOF R8 ; [+3]
       18 MOVE                             R12 R8
       19 GETIMPORT                        R11 K6 [typeof]
       21 CALL                             R11 1 1
       22 JUMPIFNOTEQKS                    R11 K7 ["string"] ; [+7]
       24 LENGTH                           R11 R8
       25 LOADN                            R12 0
       26 JUMPIFLT                         R12 R11 ; [+2]
       28 LOADB                            R10 0 +1
       29 LOADB                            R10 1
       30 LOADK                            R12 K8 ["%* status COMPLETED but modelRbxmUrl is missing"]
       31 MOVE                             R14 R4
       32 NAMECALL                         R12 R12 K9 ["format"]
       34 CALL                             R12 2 1
       35 MOVE                             R11 R12
       36 FASTCALL2                        ASSERT R10 R11 ; [+3]
       38 GETIMPORT                        R9 K11 [assert]
       40 CALL                             R9 2 0
       41 RETURN                           R8 1
       42 JUMPIFNOTEQKS                    R7 K12 ["Failed"] ; [+9]
       44 GETIMPORT                        R8 K14 [error]
       46 MOVE                             R9 R2
       47 MOVE                             R10 R3
       48 CALL                             R9 1 1
       49 LOADN                            R10 0
       50 CALL                             R8 2 0
       51 JUMP                             ; [+9]
       52 JUMPIFNOTEQKS                    R7 K15 ["Canceled"] ; [+8]
       54 GETIMPORT                        R8 K14 [error]
       56 MOVE                             R9 R2
       57 LOADK                            R10 K16 ["UserCancelled"]
       58 CALL                             R9 1 1
       59 LOADN                            R10 0
       60 CALL                             R8 2 0
       61 GETIMPORT                        R8 K19 [task.wait]
       63 GETUPVAL                         R9 0
       64 GETTABLEKS                       R9 R9 K20 ["POLL_INTERVAL_SEC"]
       66 CALL                             R8 1 0
       67 JUMPBACK                         ; [-67]
       68 GETIMPORT                        R6 K14 [error]
       70 LOADK                            R8 K21 ["%* polling timed out after %* attempts"]
       71 MOVE                             R10 R4
       72 GETUPVAL                         R11 0
       73 GETTABLEKS                       R11 R11 K0 ["MAX_POLL_ATTEMPTS"]
       75 NAMECALL                         R8 R8 K9 ["format"]
       77 CALL                             R8 3 1
       78 MOVE                             R7 R8
       79 LOADN                            R8 0
       80 CALL                             R6 2 0
       81 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 NEWTABLE                         R2 0 4
        6 LOADN                            R3 0
        7 LOADK                            R4 K0 [1.5707963267949]
        8 LOADK                            R5 K1 [3.14159265358979]
        9 LOADK                            R6 K2 [4.71238898038469]
       10 SETLIST                          R2 R3 4 [1]
       12 MOVE                             R3 R2
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 MOVE                             R8 R2
       17 LOADNIL                          R9
       18 LOADNIL                          R10
       19 FORGPREP                         R8
       20 MOVE                             R13 R2
       21 LOADNIL                          R14
       22 LOADNIL                          R15
       23 FORGPREP                         R13
       24 GETIMPORT                        R18 K5 [CFrame.Angles]
       26 MOVE                             R19 R7
       27 MOVE                             R20 R12
       28 MOVE                             R21 R17
       29 CALL                             R18 3 1
       30 GETTABLEKS                       R19 R18 K6 ["RightVector"]
       32 GETTABLEKS                       R20 R18 K7 ["UpVector"]
       34 GETTABLEKS                       R21 R18 K8 ["LookVector"]
       36 GETIMPORT                        R22 K11 [string.format]
       38 LOADK                            R23 K12 ["%d,%d,%d|%d,%d,%d|%d,%d,%d"]
       39 GETTABLEKS                       R25 R19 K13 ["X"]
       41 FASTCALL1                        MATH_ROUND R25 ; [+2]
       42 GETIMPORT                        R24 K16 [math.round]
       44 CALL                             R24 1 1
       45 GETTABLEKS                       R26 R19 K17 ["Y"]
       47 FASTCALL1                        MATH_ROUND R26 ; [+2]
       48 GETIMPORT                        R25 K16 [math.round]
       50 CALL                             R25 1 1
       51 GETTABLEKS                       R27 R19 K18 ["Z"]
       53 FASTCALL1                        MATH_ROUND R27 ; [+2]
       54 GETIMPORT                        R26 K16 [math.round]
       56 CALL                             R26 1 1
       57 GETTABLEKS                       R28 R20 K13 ["X"]
       59 FASTCALL1                        MATH_ROUND R28 ; [+2]
       60 GETIMPORT                        R27 K16 [math.round]
       62 CALL                             R27 1 1
       63 GETTABLEKS                       R29 R20 K17 ["Y"]
       65 FASTCALL1                        MATH_ROUND R29 ; [+2]
       66 GETIMPORT                        R28 K16 [math.round]
       68 CALL                             R28 1 1
       69 GETTABLEKS                       R30 R20 K18 ["Z"]
       71 FASTCALL1                        MATH_ROUND R30 ; [+2]
       72 GETIMPORT                        R29 K16 [math.round]
       74 CALL                             R29 1 1
       75 GETTABLEKS                       R31 R21 K13 ["X"]
       77 FASTCALL1                        MATH_ROUND R31 ; [+2]
       78 GETIMPORT                        R30 K16 [math.round]
       80 CALL                             R30 1 1
       81 GETTABLEKS                       R32 R21 K17 ["Y"]
       83 FASTCALL1                        MATH_ROUND R32 ; [+2]
       84 GETIMPORT                        R31 K16 [math.round]
       86 CALL                             R31 1 1
       87 GETTABLEKS                       R33 R21 K18 ["Z"]
       89 FASTCALL1                        MATH_ROUND R33 ; [+2]
       90 GETIMPORT                        R32 K16 [math.round]
       92 CALL                             R32 1 1
       93 CALL                             R22 10 1
       94 GETTABLE                         R23 R1 R22
       95 JUMPIF                           R23 ; [+9]
       96 LOADB                            R23 1
       97 SETTABLE                         R23 R1 R22
       98 FASTCALL2                        TABLE_INSERT R0 R18 ; [+5]
      100 MOVE                             R24 R0
      101 MOVE                             R25 R18
      102 GETIMPORT                        R23 K21 [table.insert]
      104 CALL                             R23 2 0
      105 FORGLOOP                         R13 2 ; [-82]
      107 FORGLOOP                         R8 2 ; [-88]
      109 FORGLOOP                         R3 2 ; [-94]
      111 RETURN                           R0 1

PROTO_11:
        0 LOADK                            R2 K0 [∞]
        1 NEWTABLE                         R3 0 0
        3 GETUPVAL                         R4 0
        4 LOADNIL                          R5
        5 LOADNIL                          R6
        6 FORGPREP                         R4
        7 MOVE                             R11 R1
        8 NAMECALL                         R9 R8 K1 ["VectorToWorldSpace"]
       10 CALL                             R9 2 1
       11 GETTABLEKS                       R12 R9 K2 ["X"]
       13 FASTCALL1                        MATH_ABS R12 ; [+2]
       14 GETIMPORT                        R11 K5 [math.abs]
       16 CALL                             R11 1 1
       17 GETTABLEKS                       R13 R9 K6 ["Y"]
       19 FASTCALL1                        MATH_ABS R13 ; [+2]
       20 GETIMPORT                        R12 K5 [math.abs]
       22 CALL                             R12 1 1
       23 GETTABLEKS                       R14 R9 K7 ["Z"]
       25 FASTCALL1                        MATH_ABS R14 ; [+2]
       26 GETIMPORT                        R13 K5 [math.abs]
       28 CALL                             R13 1 1
       29 FASTCALL                         VECTOR ; [+2]
       30 GETIMPORT                        R10 K10 [Vector3.new]
       32 CALL                             R10 3 1
       33 SUB                              R11 R10 R0
       34 MOVE                             R14 R11
       35 NAMECALL                         R12 R11 K11 ["Dot"]
       37 CALL                             R12 2 1
       38 SUBK                             R13 R2 K12 [0.0001]
       39 JUMPIFNOTLT                      R12 R13 ; [+9]
       41 MOVE                             R2 R12
       42 NEWTABLE                         R13 0 1
       44 MOVE                             R14 R8
       45 SETLIST                          R13 R14 1 [1]
       47 MOVE                             R3 R13
       48 JUMP                             ; [+10]
       49 ADDK                             R13 R2 K12 [0.0001]
       50 JUMPIFNOTLT                      R12 R13 ; [+8]
       52 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       54 MOVE                             R14 R3
       55 MOVE                             R15 R8
       56 GETIMPORT                        R13 K15 [table.insert]
       58 CALL                             R13 2 0
       59 FORGLOOP                         R4 2 ; [-53]
       61 MOVE                             R4 R3
       62 LOADNIL                          R5
       63 LOADNIL                          R6
       64 FORGPREP                         R4
       65 GETUPVAL                         R11 1
       66 LOADK                            R12 K16 [0.001]
       67 NAMECALL                         R9 R8 K17 ["FuzzyEq"]
       69 CALL                             R9 3 1
       70 JUMPIFNOT                        R9 ; [+1]
       71 RETURN                           R8 1
       72 FORGLOOP                         R4 2 ; [-8]
       74 GETTABLEN                        R4 R3 1
       75 RETURN                           R4 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["publishAssetAsync"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["loadAssetAsync"]
        8 GETTABLEKS                       R2 R0 K2 ["assetId"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K3 ["assembleResult"]
       14 MOVE                             R3 R1
       15 GETUPVAL                         R4 3
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 4
       18 JUMPIFNOT                        R3 ; [+3]
       19 GETUPVAL                         R3 4
       20 GETTABLEKS                       R3 R3 K4 ["processLoadedModel"]
       22 JUMPIFNOT                        R3 ; [+3]
       23 MOVE                             R4 R3
       24 MOVE                             R5 R2
       25 CALL                             R4 1 0
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R4 R4 K5 ["replaceInPlace"]
       29 JUMPIFNOT                        R4 ; [+24]
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K6 ["applyReplaceTransform"]
       33 MOVE                             R5 R2
       34 DUPTABLE                         R6 K9 [{"sourcePivotCFrame", "sourceMeshCFrame"}]
       35 GETUPVAL                         R7 5
       36 SETTABLEKS                       R7 R6 K7 ["sourcePivotCFrame"]
       38 GETUPVAL                         R7 6
       39 GETTABLEKS                       R7 R7 K8 ["sourceMeshCFrame"]
       41 SETTABLEKS                       R7 R6 K8 ["sourceMeshCFrame"]
       43 CALL                             R4 2 0
       44 GETUPVAL                         R4 7
       45 GETTABLEKS                       R4 R4 K10 ["Name"]
       47 SETTABLEKS                       R4 R2 K10 ["Name"]
       49 GETUPVAL                         R4 7
       50 LOADNIL                          R5
       51 SETTABLEKS                       R5 R4 K11 ["Parent"]
       53 JUMP                             ; [+16]
       54 GETUPVAL                         R4 8
       55 GETTABLEKS                       R4 R4 K12 ["placeAssetNextToSource"]
       57 MOVE                             R5 R2
       58 GETUPVAL                         R6 5
       59 GETUPVAL                         R7 9
       60 CALL                             R4 3 0
       61 GETUPVAL                         R5 7
       62 GETTABLEKS                       R5 R5 K10 ["Name"]
       64 GETUPVAL                         R6 2
       65 GETTABLEKS                       R6 R6 K13 ["suffix"]
       67 CONCAT                           R4 R5 R6
       68 SETTABLEKS                       R4 R2 K10 ["Name"]
       70 GETUPVAL                         R4 10
       71 JUMPIF                           R4 ; [+2]
       72 GETIMPORT                        R4 K15 [workspace]
       74 SETTABLEKS                       R4 R2 K11 ["Parent"]
       76 GETUPVAL                         R6 11
       77 GETTABLEKS                       R6 R6 K16 ["getUniqueTag"]
       79 GETUPVAL                         R7 2
       80 GETTABLEKS                       R7 R7 K17 ["tagKind"]
       82 GETUPVAL                         R8 12
       83 CALL                             R6 2 -1
       84 NAMECALL                         R4 R2 K18 ["AddTag"]
       86 CALL                             R4 -1 0
       87 GETUPVAL                         R4 13
       88 GETTABLEKS                       R4 R4 K19 ["markAsAIGeneratedAsset"]
       90 MOVE                             R5 R2
       91 GETTABLEKS                       R6 R0 K20 ["generationId"]
       93 GETUPVAL                         R7 2
       94 GETTABLEKS                       R7 R7 K21 ["generationType"]
       96 CALL                             R4 3 0
       97 GETUPVAL                         R4 6
       98 SETTABLEKS                       R2 R4 K22 ["loadedModel"]
      100 GETUPVAL                         R4 14
      101 GETTABLEKS                       R4 R4 K23 ["selection"]
      103 GETTABLEKS                       R4 R4 K24 ["set"]
      105 NEWTABLE                         R5 0 1
      107 MOVE                             R6 R2
      108 SETLIST                          R5 R6 1 [1]
      110 CALL                             R4 1 0
      111 GETUPVAL                         R4 6
      112 GETTABLEKS                       R4 R4 K25 ["previewAssets"]
      114 JUMPIFNOT                        R4 ; [+7]
      115 NAMECALL                         R5 R4 K26 ["Destroy"]
      117 CALL                             R5 1 0
      118 GETUPVAL                         R5 6
      119 LOADNIL                          R6
      120 SETTABLEKS                       R6 R5 K25 ["previewAssets"]
      122 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R1 K1 [warn]
        2 LOADK                            R3 K2 ["%* failed (requestId=%*, generationId=%*): %*\n%*"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K3 ["opName"]
        6 GETUPVAL                         R6 1
        7 GETUPVAL                         R7 2
        8 MOVE                             R8 R0
        9 GETIMPORT                        R9 K6 [debug.traceback]
       11 CALL                             R9 0 1
       12 NAMECALL                         R3 R3 K7 ["format"]
       14 CALL                             R3 6 1
       15 MOVE                             R2 R3
       16 CALL                             R1 1 0
       17 FASTCALL1                        TOSTRING R0 ; [+3]
       18 MOVE                             R2 R0
       19 GETIMPORT                        R1 K9 [tostring]
       21 CALL                             R1 1 1
       22 SETUPVAL                         R1 3
       23 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R5 R0 K0 ["requestId"]
        2 GETTABLEKS                       R6 R2 K1 ["getGenerationSession"]
        4 MOVE                             R7 R5
        5 CALL                             R6 1 1
        6 GETTABLEKS                       R7 R6 K2 ["generationId"]
        8 FASTCALL1                        TYPEOF R7 ; [+3]
        9 MOVE                             R11 R7
       10 GETIMPORT                        R10 K4 [typeof]
       12 CALL                             R10 1 1
       13 JUMPIFEQKS                       R10 K5 ["string"] ; [+2]
       15 LOADB                            R9 0 +1
       16 LOADB                            R9 1
       17 FASTCALL2K                       ASSERT R9 K6 ; [+4]
       19 LOADK                            R10 K6 ["generationId not found in session"]
       20 GETIMPORT                        R8 K8 [assert]
       22 CALL                             R8 2 0
       23 GETTABLEKS                       R8 R6 K9 ["sourceInstance"]
       25 FASTCALL2K                       ASSERT R8 K10 ; [+5]
       27 MOVE                             R10 R8
       28 LOADK                            R11 K10 ["Source instance not found in session"]
       29 GETIMPORT                        R9 K8 [assert]
       31 CALL                             R9 2 0
       32 GETTABLEKS                       R9 R3 K11 ["requireService"]
       34 MOVE                             R10 R1
       35 CALL                             R9 1 1
       36 GETTABLEKS                       R10 R8 K12 ["Parent"]
       38 GETTABLEKS                       R11 R3 K13 ["computeSourcePivot"]
       40 MOVE                             R12 R0
       41 MOVE                             R13 R8
       42 MOVE                             R14 R6
       43 CALL                             R11 3 1
       44 GETUPVAL                         R12 0
       45 GETTABLEKS                       R12 R12 K14 ["getLocalBoundingBoxSize"]
       47 MOVE                             R13 R8
       48 CALL                             R12 1 1
       49 GETTABLEKS                       R13 R1 K15 ["recording"]
       51 LOADB                            R14 0
       52 JUMPIFNOT                        R13 ; [+13]
       53 GETTABLEKS                       R15 R13 K16 ["startRecording"]
       55 MOVE                             R16 R5
       56 LOADK                            R18 K17 ["%* %*"]
       57 GETTABLEKS                       R20 R3 K18 ["recordingLabel"]
       59 MOVE                             R21 R5
       60 NAMECALL                         R18 R18 K19 ["format"]
       62 CALL                             R18 3 1
       63 MOVE                             R17 R18
       64 CALL                             R15 2 1
       65 MOVE                             R14 R15
       66 LOADNIL                          R15
       67 GETIMPORT                        R16 K21 [xpcall]
       69 NEWCLOSURE                       R17 P0
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R8
       78 CAPTURE                          UPVAL U0
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R10
       81 CAPTURE                          UPVAL U1
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R1
       85 NEWCLOSURE                       R18 P1
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R7
       89 CAPTURE                          REF R15
       90 CALL                             R16 2 0
       91 JUMPIFNOT                        R13 ; [+5]
       92 JUMPIFNOT                        R14 ; [+4]
       93 GETTABLEKS                       R16 R13 K22 ["endRecording"]
       95 MOVE                             R17 R5
       96 CALL                             R16 1 0
       97 JUMPIFEQKNIL                     R15 ; [+6]
       99 GETIMPORT                        R16 K24 [error]
      101 MOVE                             R17 R15
      102 LOADN                            R18 0
      103 CALL                             R16 2 0
      104 CLOSEUPVALS                      R15
      105 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Constants"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["Gen3dTypes"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["GenerationSessions"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K4 ["Parent"]
       34 GETTABLEKS                       R4 R4 K8 ["HostSurface"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K1 [require]
       39 GETIMPORT                        R5 K3 [script]
       41 GETTABLEKS                       R5 R5 K4 ["Parent"]
       43 GETTABLEKS                       R5 R5 K9 ["Flags"]
       45 GETTABLEKS                       R5 R5 K10 ["getFFlagGen3dExportMeshAtOrigin"]
       47 CALL                             R4 1 1
       48 NEWTABLE                         R5 16 0
       50 DUPCLOSURE                       R6 K11 [PROTO_0]
       51 SETTABLEKS                       R6 R5 K12 ["getLocalBoundingBoxSize"]
       53 DUPCLOSURE                       R6 K13 [PROTO_1]
       54 DUPCLOSURE                       R7 K14 [PROTO_2]
       55 CAPTURE                          VAL R4
       56 SETTABLEKS                       R7 R5 K15 ["exportMeshToGlbAsync"]
       58 DUPCLOSURE                       R7 K16 [PROTO_3]
       59 SETTABLEKS                       R7 R5 K17 ["resolveSingleMeshPart"]
       61 LOADK                            R7 K18 ["world"]
       62 SETTABLEKS                       R7 R5 K19 ["WORLD_WRAPPER_NAME"]
       64 NEWTABLE                         R7 2 0
       66 LOADB                            R8 1
       67 SETTABLEKS                       R8 R7 K20 ["Roblox Generated Object"]
       69 GETTABLEKS                       R8 R5 K19 ["WORLD_WRAPPER_NAME"]
       71 LOADB                            R9 1
       72 SETTABLE                         R9 R7 R8
       73 DUPCLOSURE                       R8 K21 [PROTO_5]
       74 CAPTURE                          VAL R7
       75 SETTABLEKS                       R8 R5 K22 ["collectFlattenedParts"]
       77 DUPCLOSURE                       R8 K23 [PROTO_6]
       78 CAPTURE                          VAL R5
       79 SETTABLEKS                       R8 R5 K24 ["placeAssetNextToSource"]
       81 DUPCLOSURE                       R8 K25 [PROTO_8]
       82 CAPTURE                          VAL R3
       83 SETTABLEKS                       R8 R5 K26 ["makeTranslator"]
       85 DUPCLOSURE                       R8 K27 [PROTO_9]
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R8 R5 K28 ["pollForCompletedStatus"]
       89 DUPCLOSURE                       R8 K29 [PROTO_10]
       90 MOVE                             R9 R8
       91 CALL                             R9 0 1
       92 GETIMPORT                        R10 K32 [CFrame.Angles]
       94 LOADN                            R11 0
       95 LOADK                            R12 K33 [3.14159265358979]
       96 LOADN                            R13 0
       97 CALL                             R10 3 1
       98 DUPCLOSURE                       R11 K34 [PROTO_11]
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R10
      101 SETTABLEKS                       R11 R5 K35 ["guessAxisFlipCFrame"]
      103 DUPCLOSURE                       R11 K36 [PROTO_14]
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R1
      106 SETTABLEKS                       R11 R5 K37 ["insertGeneratedModelAsync"]
      108 RETURN                           R5 1
