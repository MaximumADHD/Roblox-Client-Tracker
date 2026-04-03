PROTO_0:
        0 MOVE                             R1 R0
        1 GETTABLEKS                       R2 R1 K0 ["parent"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+3]
        5 LOADB                            R2 1
        6 RETURN                           R2 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R3 R1 K0 ["parent"]
       10 CALL                             R2 1 1
       11 JUMPIF                           R2 ; [+2]
       12 LOADB                            R2 0
       13 RETURN                           R2 1
       14 GETTABLEKS                       R1 R1 K0 ["parent"]
       16 JUMPBACK                         ; [-16]
       17 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["RpcTypes"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R4 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R4 K8 ["isExpanded"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_0]
       20 CAPTURE                          VAL R2
       21 RETURN                           R3 1
