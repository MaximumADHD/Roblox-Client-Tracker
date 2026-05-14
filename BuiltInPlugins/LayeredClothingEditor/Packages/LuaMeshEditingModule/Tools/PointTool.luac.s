PROTO_0:
        0 GETTABLE                         R3 R0 R1
        1 JUMPIFNOT                        R3 ; [+2]
        2 GETTABLE                         R4 R0 R1
        3 GETTABLE                         R3 R4 R2
        4 RETURN                           R3 1

PROTO_1:
        0 GETTABLE                         R4 R3 R1
        1 JUMPIFNOT                        R4 ; [+2]
        2 GETTABLE                         R5 R3 R1
        3 GETTABLE                         R4 R5 R2
        4 JUMPIFNOT                        R4 ; [+23]
        5 GETIMPORT                        R5 K1 [ipairs]
        7 MOVE                             R6 R4
        8 CALL                             R5 1 3
        9 FORGPREP_INEXT                   R5
       10 GETTABLEKS                       R11 R9 K2 ["MeshName"]
       12 GETTABLE                         R10 R0 R11
       13 JUMPIF                           R10 ; [+5]
       14 GETTABLEKS                       R10 R9 K2 ["MeshName"]
       16 NEWTABLE                         R11 0 0
       18 SETTABLE                         R11 R0 R10
       19 GETTABLEKS                       R11 R9 K2 ["MeshName"]
       21 GETTABLE                         R10 R0 R11
       22 GETTABLEKS                       R11 R9 K3 ["Index"]
       24 LOADB                            R12 1
       25 SETTABLE                         R12 R10 R11
       26 FORGLOOP                         R5 2 [inext] ; [-17]
       28 GETTABLE                         R5 R0 R1
       29 JUMPIF                           R5 ; [+3]
       30 NEWTABLE                         R5 0 0
       32 SETTABLE                         R5 R0 R1
       33 GETTABLE                         R5 R0 R1
       34 LOADB                            R6 1
       35 SETTABLE                         R6 R5 R2
       36 RETURN                           R0 0

PROTO_2:
        0 JUMPIF                           R1 ; [+5]
        1 GETIMPORT                        R2 K1 [error]
        3 LOADK                            R3 K2 ["Could not add context: Context was nil."]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0
        6 LOADNIL                          R2
        7 GETUPVAL                         R3 0
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+7]
       10 GETUPVAL                         R3 1
       11 MOVE                             R5 R1
       12 NAMECALL                         R3 R3 K3 ["getDedupedPositionsFromContext"]
       14 CALL                             R3 2 1
       15 MOVE                             R2 R3
       16 JUMP                             ; [+52]
       17 DUPTABLE                         R3 K6 [{"Positions", "Edges"}]
       18 NEWTABLE                         R4 0 0
       20 SETTABLEKS                       R4 R3 K4 ["Positions"]
       22 NEWTABLE                         R4 0 0
       24 SETTABLEKS                       R4 R3 K5 ["Edges"]
       26 MOVE                             R2 R3
       27 NAMECALL                         R3 R1 K7 ["getVertexData"]
       29 CALL                             R3 1 1
       30 NAMECALL                         R4 R1 K8 ["getSeamData"]
       32 CALL                             R4 1 1
       33 NEWTABLE                         R5 0 0
       35 GETIMPORT                        R6 K10 [pairs]
       37 MOVE                             R7 R3
       38 CALL                             R6 1 3
       39 FORGPREP_NEXT                    R6
       40 GETTABLEKS                       R11 R2 K4 ["Positions"]
       42 NEWTABLE                         R12 0 0
       44 SETTABLE                         R12 R11 R9
       45 GETIMPORT                        R11 K10 [pairs]
       47 MOVE                             R12 R10
       48 CALL                             R11 1 3
       49 FORGPREP_NEXT                    R11
       50 GETTABLE                         R16 R5 R9
       51 JUMPIFNOT                        R16 ; [+2]
       52 GETTABLE                         R17 R5 R9
       53 GETTABLE                         R16 R17 R14
       54 JUMPIF                           R16 ; [+10]
       55 GETUPVAL                         R16 2
       56 MOVE                             R17 R5
       57 MOVE                             R18 R9
       58 MOVE                             R19 R14
       59 MOVE                             R20 R4
       60 CALL                             R16 4 0
       61 GETTABLEKS                       R17 R2 K4 ["Positions"]
       63 GETTABLE                         R16 R17 R9
       64 SETTABLE                         R15 R16 R14
       65 FORGLOOP                         R11 2 ; [-16]
       67 FORGLOOP                         R6 2 ; [-28]
       69 GETUPVAL                         R3 3
       70 MOVE                             R4 R0
       71 MOVE                             R5 R1
       72 MOVE                             R6 R2
       73 CALL                             R3 3 0
       74 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["_getSelectedControlWeights"]
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        7 GETIMPORT                        R0 K2 [setmetatable]
        9 CALL                             R0 2 1
       10 GETTABLEKS                       R1 R0 K3 ["addContext"]
       12 DUPCLOSURE                       R2 K4 [PROTO_0]
       13 DUPCLOSURE                       R3 K5 [PROTO_1]
       14 NEWCLOSURE                       R4 P2
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R1
       19 SETTABLEKS                       R4 R0 K3 ["addContext"]
       21 NEWCLOSURE                       R4 P3
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R4 R0 K6 ["getVertexWeights"]
       25 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K2 ["Parent"]
       13 GETTABLEKS                       R2 R2 K5 ["VertexToolBase"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Flags"]
       20 GETTABLEKS                       R3 R3 K7 ["getFFlagAvatarPreviewerCageEditingTools"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R4 2 0
       25 DUPTABLE                         R5 K9 [{"__index"}]
       26 SETTABLEKS                       R1 R5 K8 ["__index"]
       28 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       30 GETIMPORT                        R3 K11 [setmetatable]
       32 CALL                             R3 2 1
       33 SETTABLEKS                       R3 R3 K8 ["__index"]
       35 DUPCLOSURE                       R4 K12 [PROTO_4]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R4 R3 K13 ["new"]
       41 RETURN                           R3 1
