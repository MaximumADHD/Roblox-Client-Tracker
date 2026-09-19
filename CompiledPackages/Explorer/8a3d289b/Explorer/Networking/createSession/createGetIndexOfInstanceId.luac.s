PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFocusedRootState"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R3 R1 K1 ["instanceIdsToNodes"]
        6 GETTABLE                         R2 R3 R0
        7 JUMPIFNOTEQKNIL                  R2 ; [+3]
        9 LOADNIL                          R3
       10 RETURN                           R3 1
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R2
       13 CALL                             R3 1 -1
       14 RETURN                           R3 -1

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 RETURN                           R1 1

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
       14 GETTABLEKS                       R3 R0 K7 ["Networking"]
       16 GETTABLEKS                       R3 R3 K8 ["createSession"]
       18 GETTABLEKS                       R3 R3 K9 ["createSessionTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["getExplorerNodeIndex"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K12 [PROTO_1]
       29 CAPTURE                          VAL R3
       30 RETURN                           R4 1
