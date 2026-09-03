PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["SelectionChanged"]
        4 LOADNIL                          R3
        5 GETUPVAL                         R4 2
        6 NAMECALL                         R0 R0 K1 ["FireGuest"]
        8 CALL                             R0 4 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R1 2
        2 NAMECALL                         R1 R1 K0 ["Get"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 1
        6 SETUPVAL                         R0 0
        7 GETUPVAL                         R0 4
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R2 5
       10 CALL                             R0 2 1
       11 SETUPVAL                         R0 3
       12 GETUPVAL                         R0 6
       13 GETUPVAL                         R2 7
       14 GETTABLEKS                       R2 R2 K1 ["SelectionChanged"]
       16 LOADNIL                          R3
       17 GETUPVAL                         R4 3
       18 NAMECALL                         R0 R0 K2 ["FireGuest"]
       20 CALL                             R0 4 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["SelectionChanged"]
        4 LOADNIL                          R4
        5 GETUPVAL                         R5 2
        6 NAMECALL                         R1 R1 K1 ["FireGuest"]
        8 CALL                             R1 4 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R3 R3 K0 ["Get"]
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 1
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R2
        8 MOVE                             R5 R1
        9 CALL                             R3 2 1
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          REF R3
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          REF R2
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          REF R3
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U3
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R6 R6 K1 ["SelectionChanged"]
       26 MOVE                             R8 R5
       27 NAMECALL                         R6 R6 K2 ["Connect"]
       29 CALL                             R6 2 1
       30 GETUPVAL                         R9 3
       31 GETTABLEKS                       R9 R9 K3 ["RequestSelection"]
       33 NEWCLOSURE                       R10 P2
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          REF R3
       37 NAMECALL                         R7 R0 K4 ["OnHostEvent"]
       39 CALL                             R7 3 2
       40 GETUPVAL                         R11 3
       41 GETTABLEKS                       R11 R11 K1 ["SelectionChanged"]
       43 LOADNIL                          R12
       44 MOVE                             R13 R3
       45 NAMECALL                         R9 R0 K5 ["FireGuest"]
       47 CALL                             R9 4 0
       48 NEWCLOSURE                       R9 P3
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R8
       51 DUPTABLE                         R10 K9 [{"getClassified", "getSummary", "destroy"}]
       52 NEWCLOSURE                       R11 P4
       53 CAPTURE                          REF R2
       54 SETTABLEKS                       R11 R10 K6 ["getClassified"]
       56 NEWCLOSURE                       R11 P5
       57 CAPTURE                          REF R3
       58 SETTABLEKS                       R11 R10 K7 ["getSummary"]
       60 SETTABLEKS                       R9 R10 K8 ["destroy"]
       62 CLOSEUPVALS                      R2
       63 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["Gen3d"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["DMNetworking"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K12 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Util"]
       33 GETTABLEKS                       R5 R5 K15 ["classifySelection"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K12 ["Src"]
       40 GETTABLEKS                       R6 R6 K14 ["Util"]
       42 GETTABLEKS                       R6 R6 K16 ["summarizeSelection"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K12 ["Src"]
       49 GETTABLEKS                       R7 R7 K17 ["Networking"]
       51 GETTABLEKS                       R7 R7 K18 ["Events"]
       53 CALL                             R6 1 1
       54 DUPCLOSURE                       R7 K19 [PROTO_6]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R6
       59 RETURN                           R7 1
