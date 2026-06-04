PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["fieldExists"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["name"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+3]
        7 GETTABLEKS                       R1 R0 K1 ["name"]
        9 RETURN                           R1 1
       10 GETTABLEKS                       R1 R0 K2 ["function"]
       12 JUMPIFNOT                        R1 ; [+10]
       13 GETTABLEKS                       R1 R0 K2 ["function"]
       15 GETTABLEKS                       R1 R1 K1 ["name"]
       17 JUMPIFNOT                        R1 ; [+5]
       18 GETTABLEKS                       R1 R0 K2 ["function"]
       20 GETTABLEKS                       R1 R1 K1 ["name"]
       22 RETURN                           R1 1
       23 LOADNIL                          R1
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Types"]
       16 DUPCLOSURE                       R3 K9 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 DUPTABLE                         R4 K11 [{"getToolName"}]
       19 SETTABLEKS                       R3 R4 K10 ["getToolName"]
       21 RETURN                           R4 1
