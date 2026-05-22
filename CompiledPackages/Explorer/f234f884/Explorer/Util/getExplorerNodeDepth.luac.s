PROTO_0:
        0 LOADN                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["parent"]
        3 JUMPIFEQKNIL                     R2 ; [+14]
        5 GETTABLEKS                       R3 R2 K1 ["datum"]
        7 GETTABLEKS                       R3 R3 K2 ["id"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["rootId"]
       12 JUMPIFEQ                         R3 R4 ; [+5]
       14 ADDK                             R1 R1 K4 [1]
       15 GETTABLEKS                       R2 R2 K0 ["parent"]
       17 JUMPBACK                         ; [-15]
       18 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["RpcTypes"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_0]
       20 CAPTURE                          VAL R1
       21 RETURN                           R3 1
