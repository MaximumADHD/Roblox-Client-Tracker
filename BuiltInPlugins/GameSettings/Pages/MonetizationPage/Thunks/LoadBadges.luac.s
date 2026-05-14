PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["gameId"]
        7 LOADNIL                          R4
        8 GETUPVAL                         R5 0
        9 JUMPIF                           R5 ; [+9]
       10 GETTABLEKS                       R5 R2 K3 ["Settings"]
       12 GETTABLEKS                       R5 R5 K4 ["Current"]
       14 GETTABLEKS                       R4 R5 K5 ["badgesCursor"]
       16 JUMPIFNOTEQKNIL                  R4 ; [+2]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R5 R1 K6 ["monetizationController"]
       21 MOVE                             R8 R3
       22 MOVE                             R9 R4
       23 NAMECALL                         R6 R5 K7 ["getBadges"]
       25 CALL                             R6 3 2
       26 GETTABLEKS                       R8 R2 K3 ["Settings"]
       28 GETTABLEKS                       R8 R8 K4 ["Current"]
       30 GETUPVAL                         R9 0
       31 JUMPIFNOT                        R9 ; [+2]
       32 LOADNIL                          R7
       33 JUMP                             ; [+25]
       34 GETTABLEKS                       R10 R2 K3 ["Settings"]
       36 GETTABLEKS                       R10 R10 K4 ["Current"]
       38 GETTABLEKS                       R10 R10 K8 ["badges"]
       40 JUMPIFNOT                        R10 ; [+7]
       41 GETTABLEKS                       R9 R2 K3 ["Settings"]
       43 GETTABLEKS                       R9 R9 K4 ["Current"]
       45 GETTABLEKS                       R9 R9 K8 ["badges"]
       47 JUMPIF                           R9 ; [+2]
       48 NEWTABLE                         R9 0 0
       50 GETUPVAL                         R10 1
       51 GETTABLEKS                       R10 R10 K9 ["Dictionary"]
       53 GETTABLEKS                       R10 R10 K10 ["join"]
       55 MOVE                             R11 R9
       56 MOVE                             R12 R6
       57 CALL                             R10 2 1
       58 MOVE                             R6 R10
       59 GETUPVAL                         R9 1
       60 GETTABLEKS                       R9 R9 K9 ["Dictionary"]
       62 GETTABLEKS                       R9 R9 K10 ["join"]
       64 MOVE                             R10 R8
       65 DUPTABLE                         R11 K11 [{"badgesCursor", "badges"}]
       66 SETTABLEKS                       R7 R11 K5 ["badgesCursor"]
       68 SETTABLEKS                       R6 R11 K8 ["badges"]
       70 CALL                             R9 2 1
       71 MOVE                             R8 R9
       72 GETUPVAL                         R11 2
       73 MOVE                             R12 R8
       74 CALL                             R11 1 -1
       75 NAMECALL                         R9 R0 K12 ["dispatch"]
       77 CALL                             R9 -1 0
       78 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Actions"]
       24 GETTABLEKS                       R3 R3 K9 ["SetCurrentSettings"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K10 [PROTO_1]
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 RETURN                           R3 1
