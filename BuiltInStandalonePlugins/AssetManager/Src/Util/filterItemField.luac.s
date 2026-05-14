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
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["AssetInfoField"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Util"]
       29 GETTABLEKS                       R5 R5 K12 ["hasMatchingTerm"]
       31 CALL                             R4 1 1
       32 NEWTABLE                         R5 0 0
       34 DUPCLOSURE                       R6 K13 [PROTO_0]
       35 GETTABLEKS                       R7 R3 K14 ["Creator"]
       37 DUPCLOSURE                       R8 K15 [PROTO_1]
       38 SETTABLE                         R8 R5 R7
       39 GETTABLEKS                       R7 R3 K16 ["Archived"]
       41 DUPCLOSURE                       R8 K17 [PROTO_2]
       42 CAPTURE                          VAL R1
       43 SETTABLE                         R8 R5 R7
       44 GETTABLEKS                       R7 R3 K18 ["IsPackage"]
       46 DUPCLOSURE                       R8 K19 [PROTO_3]
       47 CAPTURE                          VAL R1
       48 SETTABLE                         R8 R5 R7
       49 GETTABLEKS                       R7 R3 K20 ["DisplayName"]
       51 DUPCLOSURE                       R8 K21 [PROTO_4]
       52 CAPTURE                          VAL R4
       53 SETTABLE                         R8 R5 R7
       54 GETTABLEKS                       R7 R2 K22 ["asList"]
       56 MOVE                             R8 R3
       57 CALL                             R7 1 3
       58 FORGPREP                         R7
       59 GETTABLE                         R12 R5 R11
       60 JUMPIF                           R12 ; [+2]
       61 DUPCLOSURE                       R12 K23 [PROTO_5]
       62 SETTABLE                         R12 R5 R11
       63 FORGLOOP                         R7 2 ; [-5]
       65 RETURN                           R5 1
