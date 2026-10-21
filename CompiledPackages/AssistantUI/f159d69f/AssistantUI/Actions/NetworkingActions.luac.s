PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetIdentity"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["new"]
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R6 R2 K1 ["getIdentity"]
       11 NEWCLOSURE                       R8 P0
       12 CAPTURE                          VAL R0
       13 NAMECALL                         R6 R6 K2 ["Connect"]
       15 CALL                             R6 2 -1
       16 NAMECALL                         R4 R3 K3 ["Add"]
       18 CALL                             R4 -1 0
       19 GETTABLEKS                       R4 R1 K4 ["Destroying"]
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          VAL R3
       23 NAMECALL                         R4 R4 K5 ["Once"]
       25 CALL                             R4 2 0
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Bin"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Guest"]
       23 GETTABLEKS                       R5 R5 K10 ["Environment"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Remotes"]
       30 GETTABLEKS                       R6 R6 K12 ["NetworkingRemotes"]
       32 CALL                             R5 1 1
       33 DUPCLOSURE                       R6 K13 [PROTO_2]
       34 CAPTURE                          VAL R5
       35 CAPTURE                          VAL R2
       36 DUPTABLE                         R7 K15 [{"connectRemotes"}]
       37 SETTABLEKS                       R6 R7 K14 ["connectRemotes"]
       39 RETURN                           R7 1
