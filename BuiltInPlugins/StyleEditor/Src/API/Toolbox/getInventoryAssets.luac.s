PROTO_0:
        0 GETIMPORT                        R4 K2 [string.format]
        2 LOADK                            R5 K3 ["toolbox-service/v1/inventory/user/%d/%d"]
        3 MOVE                             R6 R1
        4 GETTABLEKS                       R7 R2 K4 ["Value"]
        6 CALL                             R4 3 1
        7 JUMPIFNOT                        R3 ; [+4]
        8 DUPTABLE                         R5 K6 [{"cursor"}]
        9 SETTABLEKS                       R3 R5 K5 ["cursor"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R5
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K7 ["composeUrl"]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K8 ["APIS_URL"]
       19 MOVE                             R8 R4
       20 MOVE                             R9 R5
       21 CALL                             R6 3 1
       22 MOVE                             R13 R6
       23 NAMECALL                         R11 R0 K9 ["get"]
       25 CALL                             R11 2 1
       26 LOADN                            R12 5
       27 NAMECALL                         R9 R0 K10 ["handleRetry"]
       29 CALL                             R9 3 -1
       30 NAMECALL                         R7 R0 K11 ["parseJson"]
       32 CALL                             R7 -1 -1
       33 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["RobloxAPI"]
       20 GETTABLEKS                       R2 R2 K8 ["Url"]
       22 GETTABLEKS                       R2 R2 K9 ["new"]
       24 CALL                             R2 0 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Src"]
       29 GETTABLEKS                       R4 R4 K11 ["Types"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K12 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 RETURN                           R4 1
