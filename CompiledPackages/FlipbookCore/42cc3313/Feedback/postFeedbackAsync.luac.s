PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 LOADK                            R5 K0 ["%*/feedback"]
        4 LOADNIL                          R7
        5 NAMECALL                         R5 R5 K1 ["format"]
        7 CALL                             R5 2 1
        8 MOVE                             R4 R5
        9 DUPTABLE                         R5 K4 [{"method", "body"}]
       10 LOADK                            R6 K5 ["POST"]
       11 SETTABLEKS                       R6 R5 K2 ["method"]
       13 DUPTABLE                         R6 K11 [{"title", "body", "userId", "buildVersion", "buildChannel", "buildHash"}]
       14 SETTABLEKS                       R0 R6 K6 ["title"]
       16 SETTABLEKS                       R1 R6 K3 ["body"]
       18 GETUPVAL                         R8 2
       19 CALL                             R8 0 -1
       20 FASTCALL                         TOSTRING ; [+2]
       21 GETIMPORT                        R7 K13 [tostring]
       23 CALL                             R7 -1 1
       24 SETTABLEKS                       R7 R6 K7 ["userId"]
       26 GETTABLEKS                       R7 R2 K14 ["version"]
       28 SETTABLEKS                       R7 R6 K8 ["buildVersion"]
       30 GETTABLEKS                       R7 R2 K15 ["channel"]
       32 SETTABLEKS                       R7 R6 K9 ["buildChannel"]
       34 GETTABLEKS                       R7 R2 K16 ["hash"]
       36 SETTABLEKS                       R7 R6 K10 ["buildHash"]
       38 SETTABLEKS                       R6 R5 K3 ["body"]
       40 CALL                             R3 2 0
       41 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["Common"]
       11 GETTABLEKS                       R1 R2 K6 ["getBuildInfo"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R6 K3 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K4 ["Parent"]
       22 GETTABLEKS                       R3 R4 K7 ["Telemetry"]
       24 GETTABLEKS                       R2 R3 K8 ["getLocalUserId"]
       26 CALL                             R1 1 1
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R7 K3 [script]
       31 GETTABLEKS                       R6 R7 K4 ["Parent"]
       33 GETTABLEKS                       R5 R6 K4 ["Parent"]
       35 GETTABLEKS                       R4 R5 K9 ["Http"]
       37 GETTABLEKS                       R3 R4 K10 ["requestAsync"]
       39 CALL                             R2 1 1
       40 DUPCLOSURE                       R3 K11 [PROTO_0]
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R1
       44 RETURN                           R3 1
