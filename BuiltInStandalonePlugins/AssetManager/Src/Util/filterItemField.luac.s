PROTO_0:
        0 GETTABLE                         R2 R1 R0
        1 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLE                         R2 R1 R3
        3 RETURN                           R2 1

PROTO_2:
        0 LOADB                            R2 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["None"]
        4 JUMPIFEQ                         R0 R3 ; [+5]
        6 JUMPIFEQ                         R0 R1 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_3:
        0 LOADB                            R1 0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["None"]
        4 JUMPIFEQ                         R0 R2 ; [+5]
        6 JUMPIFEQKB                       R0 TRUE ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 NEWTABLE                         R4 0 1
        4 MOVE                             R5 R1
        5 SETLIST                          R4 R5 1 [1]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_5:
        0 GETTABLE                         R2 R1 R0
        1 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Utils"]
       16 GETTABLEKS                       R2 R2 K9 ["hasMatchingTerm"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K6 ["Packages"]
       22 GETTABLEKS                       R4 R4 K10 ["Dash"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K11 ["Src"]
       29 GETTABLEKS                       R5 R5 K12 ["Types"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K13 ["AssetInfoField"]
       34 NEWTABLE                         R6 0 0
       36 DUPCLOSURE                       R7 K14 [PROTO_0]
       37 GETTABLEKS                       R8 R5 K15 ["Creator"]
       39 DUPCLOSURE                       R9 K16 [PROTO_1]
       40 SETTABLE                         R9 R6 R8
       41 GETTABLEKS                       R8 R5 K17 ["Archived"]
       43 DUPCLOSURE                       R9 K18 [PROTO_2]
       44 CAPTURE                          VAL R3
       45 SETTABLE                         R9 R6 R8
       46 GETTABLEKS                       R8 R5 K19 ["IsPackage"]
       48 DUPCLOSURE                       R9 K20 [PROTO_3]
       49 CAPTURE                          VAL R3
       50 SETTABLE                         R9 R6 R8
       51 GETTABLEKS                       R8 R5 K21 ["DisplayName"]
       53 DUPCLOSURE                       R9 K22 [PROTO_4]
       54 CAPTURE                          VAL R2
       55 SETTABLE                         R9 R6 R8
       56 GETTABLEKS                       R8 R4 K23 ["asList"]
       58 MOVE                             R9 R5
       59 CALL                             R8 1 3
       60 FORGPREP                         R8
       61 GETTABLE                         R13 R6 R12
       62 JUMPIF                           R13 ; [+2]
       63 DUPCLOSURE                       R13 K24 [PROTO_5]
       64 SETTABLE                         R13 R6 R12
       65 FORGLOOP                         R8 2 ; [-5]
       67 RETURN                           R6 1
