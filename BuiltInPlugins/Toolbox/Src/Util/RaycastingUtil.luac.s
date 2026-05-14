PROTO_0:
        0 JUMPIF                           R0 ; [+3]
        1 NEWTABLE                         R1 0 0
        3 RETURN                           R1 1
        4 NEWTABLE                         R1 0 0
        6 LOADN                            R2 0
        7 LOADN                            R5 1
        8 LOADN                            R3 0
        9 LOADN                            R4 1
       10 FORNPREP                         R3
       11 MULK                             R10 R5 K2 [2]
       12 SUBK                             R9 R10 K0 [1]
       13 DIVK                             R8 R9 K1 [256]
       14 SUBRK                            R7 R0 K8 [math.sin]
       15 FASTCALL1                        MATH_ACOS R7 ; [+2]
       16 GETIMPORT                        R6 K5 [math.acos]
       18 CALL                             R6 1 1
       19 LOADK                            R8 K6 [3.88322207745093]
       20 MUL                              R7 R8 R5
       21 FASTCALL1                        MATH_SIN R6 ; [+3]
       22 MOVE                             R10 R6
       23 GETIMPORT                        R9 K8 [math.sin]
       25 CALL                             R9 1 1
       26 FASTCALL1                        MATH_COS R7 ; [+3]
       27 MOVE                             R11 R7
       28 GETIMPORT                        R10 K10 [math.cos]
       30 CALL                             R10 1 1
       31 MUL                              R8 R9 R10
       32 FASTCALL1                        MATH_SIN R6 ; [+3]
       33 MOVE                             R11 R6
       34 GETIMPORT                        R10 K8 [math.sin]
       36 CALL                             R10 1 1
       37 FASTCALL1                        MATH_SIN R7 ; [+3]
       38 MOVE                             R12 R7
       39 GETIMPORT                        R11 K8 [math.sin]
       41 CALL                             R11 1 1
       42 MUL                              R9 R10 R11
       43 FASTCALL1                        MATH_COS R6 ; [+3]
       44 MOVE                             R11 R6
       45 GETIMPORT                        R10 K10 [math.cos]
       47 CALL                             R10 1 1
       48 FASTCALL3                        VECTOR R8 R9 R10
       50 MOVE                             R12 R8
       51 MOVE                             R13 R9
       52 MOVE                             R14 R10
       53 GETIMPORT                        R11 K13 [Vector3.new]
       55 CALL                             R11 3 1
       56 GETIMPORT                        R12 K15 [Ray.new]
       58 GETTABLEKS                       R13 R0 K16 ["CFrame"]
       60 GETTABLEKS                       R13 R13 K17 ["Position"]
       62 MULK                             R14 R11 K18 [500]
       63 CALL                             R12 2 1
       64 GETIMPORT                        R13 K20 [workspace]
       66 GETTABLEKS                       R15 R12 K21 ["Origin"]
       68 GETTABLEKS                       R17 R12 K22 ["Direction"]
       70 MULK                             R16 R17 K18 [500]
       71 NAMECALL                         R13 R13 K23 ["Raycast"]
       73 CALL                             R13 3 1
       74 JUMPIFNOT                        R13 ; [+22]
       75 GETTABLEKS                       R14 R13 K24 ["Instance"]
       77 JUMPIFNOT                        R14 ; [+19]
       78 GETUPVAL                         R14 0
       79 GETTABLEKS                       R15 R13 K24 ["Instance"]
       81 CALL                             R14 1 1
       82 JUMPIFNOT                        R14 ; [+14]
       83 GETTABLEKS                       R15 R14 K25 ["SourceAssetId"]
       85 JUMPIFNOT                        R15 ; [+11]
       86 JUMPIFEQKN                       R15 K26 [-1] ; [+10]
       88 GETTABLE                         R16 R1 R15
       89 JUMPIF                           R16 ; [+7]
       90 ADDK                             R2 R2 K0 [1]
       91 GETTABLEKS                       R16 R13 K27 ["Distance"]
       93 SETTABLE                         R16 R1 R15
       94 LOADN                            R16 10
       95 JUMPIFLE                         R16 R2 ; [+2]
       97 FORNLOOP                         R3
       98 RETURN                           R1 1

PROTO_1:
        0 JUMPIF                           R0 ; [+3]
        1 NEWTABLE                         R1 0 0
        3 RETURN                           R1 1
        4 GETTABLEKS                       R1 R0 K0 ["ViewportSize"]
        6 NEWTABLE                         R2 0 0
        8 LOADN                            R3 0
        9 LOADN                            R4 0
       10 LOADN                            R5 1
       11 LOADN                            R6 0
       12 LOADN                            R7 0
       13 LOADN                            R8 1
       14 LOADN                            R9 0
       15 LOADN                            R12 1
       16 LOADN                            R10 0
       17 LOADN                            R11 1
       18 FORNPREP                         R10
       19 GETIMPORT                        R13 K3 [Vector2.new]
       21 ADDK                             R16 R4 K5 [0.5]
       22 ADDK                             R15 R16 K4 [7]
       23 GETTABLEKS                       R17 R1 K7 ["X"]
       25 DIVK                             R16 R17 K6 [16]
       26 MUL                              R14 R15 R16
       27 ADDK                             R17 R6 K5 [0.5]
       28 ADDK                             R16 R17 K4 [7]
       29 GETTABLEKS                       R18 R1 K8 ["Y"]
       31 DIVK                             R17 R18 K6 [16]
       32 MUL                              R15 R16 R17
       33 CALL                             R13 2 1
       34 GETTABLEKS                       R16 R13 K7 ["X"]
       36 GETTABLEKS                       R17 R13 K8 ["Y"]
       38 NAMECALL                         R14 R0 K9 ["ScreenPointToRay"]
       40 CALL                             R14 3 1
       41 GETIMPORT                        R15 K11 [workspace]
       43 GETTABLEKS                       R17 R14 K12 ["Origin"]
       45 GETTABLEKS                       R19 R14 K14 ["Direction"]
       47 MULK                             R18 R19 K13 [500]
       48 NAMECALL                         R15 R15 K15 ["Raycast"]
       50 CALL                             R15 3 1
       51 JUMPIFNOT                        R15 ; [+22]
       52 GETTABLEKS                       R16 R15 K16 ["Instance"]
       54 JUMPIFNOT                        R16 ; [+19]
       55 GETUPVAL                         R16 0
       56 GETTABLEKS                       R17 R15 K16 ["Instance"]
       58 CALL                             R16 1 1
       59 JUMPIFNOT                        R16 ; [+14]
       60 GETTABLEKS                       R17 R16 K17 ["SourceAssetId"]
       62 JUMPIFNOT                        R17 ; [+11]
       63 JUMPIFEQKN                       R17 K18 [-1] ; [+10]
       65 GETTABLE                         R18 R2 R17
       66 JUMPIF                           R18 ; [+7]
       67 ADDK                             R3 R3 K19 [1]
       68 GETTABLEKS                       R18 R15 K20 ["Distance"]
       70 SETTABLE                         R18 R2 R17
       71 LOADN                            R18 10
       72 JUMPIFLE                         R18 R3 ; [+14]
       74 ADD                              R4 R4 R5
       75 ADD                              R6 R6 R7
       76 ADDK                             R9 R9 K19 [1]
       77 JUMPIFNOTEQ                      R9 R8 ; [+8]
       79 LOADN                            R9 0
       80 MOVE                             R16 R5
       81 MINUS                            R5 R7
       82 MOVE                             R7 R16
       83 JUMPIFNOTEQKN                    R7 K21 [0] ; [+2]
       85 ADDK                             R8 R8 K19 [1]
       86 FORNLOOP                         R10
       87 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["findParentModelWithSourceAssetID"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 2 0
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R3 R2 K10 ["raycastObjectsInSphere"]
       22 DUPCLOSURE                       R3 K11 [PROTO_1]
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R3 R2 K12 ["raycastObjectsVisibleInViewport"]
       26 RETURN                           R2 1
