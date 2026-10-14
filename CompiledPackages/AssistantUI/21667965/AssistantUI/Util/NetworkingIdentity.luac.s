PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R1 1
        4 FASTCALL1                        TOSTRING R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [tostring]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 1
       10 GETTABLE                         R3 R4 R2
       11 JUMPIF                           R3 ; [+11]
       12 GETUPVAL                         R3 1
       13 LOADB                            R4 1
       14 SETTABLE                         R4 R3 R2
       15 GETIMPORT                        R3 K3 [warn]
       17 LOADK                            R4 K4 ["[Assistant] No networking identity for DataModelType \"%*\"; using None"]
       18 MOVE                             R6 R0
       19 NAMECALL                         R4 R4 K5 ["format"]
       21 CALL                             R4 2 1
       22 CALL                             R3 1 0
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K6 ["None"]
       26 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getDataModelType"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["fromDataModelType"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["fromDataModelType"]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["FOCUSED"]
       10 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["forTarget"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["FOCUSED"]
        8 JUMPIFNOTEQ                      R2 R3 ; [+15]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["new"]
       13 MOVE                             R4 R0
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R3 K3 ["getIdentity"]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K1 ["FOCUSED"]
       20 NAMECALL                         R4 R4 K4 ["InvokeAsync"]
       22 CALL                             R4 2 -1
       23 RETURN                           R4 -1
       24 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["DMNetworking"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R4 K9 ["DataModelType"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Remotes"]
       25 GETTABLEKS                       R5 R5 K11 ["NetworkingRemotes"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R2 K12 ["Identity"]
       30 NEWTABLE                         R6 8 0
       32 GETTABLEKS                       R7 R3 K13 ["Types"]
       34 GETTABLEKS                       R7 R7 K14 ["Edit"]
       36 GETTABLEKS                       R8 R5 K14 ["Edit"]
       38 SETTABLE                         R8 R6 R7
       39 GETTABLEKS                       R7 R3 K13 ["Types"]
       41 GETTABLEKS                       R7 R7 K15 ["Client"]
       43 GETTABLEKS                       R8 R5 K16 ["PlayClient"]
       45 SETTABLE                         R8 R6 R7
       46 GETTABLEKS                       R7 R3 K13 ["Types"]
       48 GETTABLEKS                       R7 R7 K17 ["Server"]
       50 GETTABLEKS                       R8 R5 K18 ["PlayServer"]
       52 SETTABLE                         R8 R6 R7
       53 GETTABLEKS                       R7 R3 K13 ["Types"]
       55 GETTABLEKS                       R7 R7 K19 ["Standalone"]
       57 GETTABLEKS                       R8 R5 K19 ["Standalone"]
       59 SETTABLE                         R8 R6 R7
       60 GETTABLEKS                       R7 R3 K13 ["Types"]
       62 GETTABLEKS                       R7 R7 K20 ["Unknown"]
       64 GETTABLEKS                       R8 R5 K21 ["None"]
       66 SETTABLE                         R8 R6 R7
       67 NEWTABLE                         R7 0 0
       69 NEWTABLE                         R8 4 0
       71 DUPCLOSURE                       R9 K22 [PROTO_0]
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R5
       75 SETTABLEKS                       R9 R8 K23 ["fromDataModelType"]
       77 DUPCLOSURE                       R9 K24 [PROTO_1]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R8
       80 SETTABLEKS                       R9 R8 K25 ["getSelfIdentity"]
       82 DUPCLOSURE                       R9 K26 [PROTO_2]
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R5
       85 SETTABLEKS                       R9 R8 K27 ["forTarget"]
       87 DUPCLOSURE                       R9 K28 [PROTO_3]
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R4
       91 SETTABLEKS                       R9 R8 K29 ["resolveTargetAsync"]
       93 RETURN                           R8 1
