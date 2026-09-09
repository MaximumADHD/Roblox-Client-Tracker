PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+10]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["bold"]
        5 GETTABLEKS                       R3 R3 K1 ["dim"]
        7 LOADK                            R4 K2 ["Determining test suites to run..."]
        8 CALL                             R3 1 -1
        9 NAMECALL                         R1 R0 K3 ["write"]
       11 CALL                             R1 -1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 1
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 NEWTABLE                         R2 2 0
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R1 K5 ["ChalkLua"]
       13 CALL                             R3 1 1
       14 GETIMPORT                        R4 K4 [require]
       16 GETIMPORT                        R5 K1 [script]
       18 GETTABLEKS                       R5 R5 K2 ["Parent"]
       20 GETTABLEKS                       R5 R5 K6 ["clearLine"]
       22 CALL                             R4 1 1
       23 GETTABLEKS                       R4 R4 K7 ["default"]
       25 GETIMPORT                        R5 K4 [require]
       27 GETIMPORT                        R6 K1 [script]
       29 GETTABLEKS                       R6 R6 K2 ["Parent"]
       31 GETTABLEKS                       R6 R6 K8 ["isInteractive"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R5 R5 K7 ["default"]
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R7 R1 K9 ["RobloxShared"]
       40 CALL                             R6 1 1
       41 DUPCLOSURE                       R7 K10 [PROTO_0]
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R7 R2 K11 ["print"]
       46 DUPCLOSURE                       R8 K12 [PROTO_1]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 SETTABLEKS                       R8 R2 K13 ["remove"]
       51 RETURN                           R2 1
