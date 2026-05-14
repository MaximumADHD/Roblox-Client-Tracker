PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R3 R2 K1 ["Metadata"]
        5 GETTABLEKS                       R3 R3 K2 ["gameId"]
        7 GETTABLEKS                       R4 R2 K3 ["Settings"]
        9 GETTABLEKS                       R4 R4 K4 ["Current"]
       11 GETTABLEKS                       R4 R4 K5 ["devProductsCursor"]
       13 JUMPIFNOTEQKNIL                  R4 ; [+2]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R5 R1 K6 ["monetizationController"]
       18 MOVE                             R8 R3
       19 MOVE                             R9 R4
       20 NAMECALL                         R6 R5 K7 ["getDeveloperProducts"]
       22 CALL                             R6 3 2
       23 GETTABLEKS                       R8 R2 K3 ["Settings"]
       25 GETTABLEKS                       R8 R8 K4 ["Current"]
       27 GETTABLEKS                       R10 R2 K3 ["Settings"]
       29 GETTABLEKS                       R10 R10 K4 ["Current"]
       31 GETTABLEKS                       R10 R10 K8 ["developerProducts"]
       33 JUMPIFNOT                        R10 ; [+7]
       34 GETTABLEKS                       R9 R2 K3 ["Settings"]
       36 GETTABLEKS                       R9 R9 K4 ["Current"]
       38 GETTABLEKS                       R9 R9 K8 ["developerProducts"]
       40 JUMPIF                           R9 ; [+2]
       41 NEWTABLE                         R9 0 0
       43 GETUPVAL                         R10 0
       44 GETTABLEKS                       R10 R10 K9 ["Dictionary"]
       46 GETTABLEKS                       R10 R10 K10 ["join"]
       48 MOVE                             R11 R8
       49 DUPTABLE                         R12 K11 [{"devProductsCursor", "developerProducts"}]
       50 SETTABLEKS                       R7 R12 K5 ["devProductsCursor"]
       52 GETUPVAL                         R13 0
       53 GETTABLEKS                       R13 R13 K9 ["Dictionary"]
       55 GETTABLEKS                       R13 R13 K10 ["join"]
       57 MOVE                             R14 R9
       58 MOVE                             R15 R6
       59 CALL                             R13 2 1
       60 SETTABLEKS                       R13 R12 K8 ["developerProducts"]
       62 CALL                             R10 2 1
       63 MOVE                             R8 R10
       64 GETUPVAL                         R12 1
       65 MOVE                             R13 R8
       66 CALL                             R12 1 -1
       67 NAMECALL                         R10 R0 K12 ["dispatch"]
       69 CALL                             R10 -1 0
       70 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

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
