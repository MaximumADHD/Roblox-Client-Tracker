PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["guestRpcInterface"]
        2 GETTABLEKS                       R3 R4 K1 ["renameInstance"]
        4 MOVE                             R4 R1
        5 MOVE                             R5 R2
        6 CALL                             R3 2 1
        7 JUMPIF                           R3 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R5 R0 K2 ["rootState"]
       11 GETTABLEKS                       R4 R5 K3 ["instanceIdsToNodes"]
       13 GETTABLE                         R3 R4 R1
       14 JUMPIFNOTEQKNIL                  R3 ; [+2]
       16 LOADB                            R5 0 +1
       17 LOADB                            R5 1
       18 FASTCALL2K                       ASSERT R5 K4 ; [+4]
       20 LOADK                            R6 K4 ["Renaming instance we don't know about"]
       21 GETIMPORT                        R4 K6 [assert]
       23 CALL                             R4 2 0
       24 GETIMPORT                        R4 K9 [table.clone]
       26 GETTABLEKS                       R5 R3 K10 ["datum"]
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K10 ["datum"]
       31 GETTABLEKS                       R4 R3 K10 ["datum"]
       33 SETTABLEKS                       R2 R4 K11 ["name"]
       35 GETTABLEKS                       R4 R3 K12 ["uiState"]
       37 JUMPIFEQKNIL                     R4 ; [+15]
       39 GETIMPORT                        R4 K9 [table.clone]
       41 GETTABLEKS                       R5 R3 K12 ["uiState"]
       43 CALL                             R4 1 1
       44 LOADNIL                          R5
       45 SETTABLEKS                       R5 R4 K13 ["textWidth"]
       47 GETIMPORT                        R5 K15 [table.freeze]
       49 MOVE                             R6 R4
       50 CALL                             R5 1 1
       51 SETTABLEKS                       R5 R3 K12 ["uiState"]
       53 GETIMPORT                        R4 K15 [table.freeze]
       55 GETTABLEKS                       R5 R3 K10 ["datum"]
       57 CALL                             R4 1 0
       58 GETTABLEKS                       R5 R0 K2 ["rootState"]
       60 GETTABLEKS                       R4 R5 K16 ["queueRootChanged"]
       62 CALL                             R4 0 0
       63 RETURN                           R0 0

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
       14 GETTABLEKS                       R5 R0 K7 ["Networking"]
       16 GETTABLEKS                       R4 R5 K8 ["createSession"]
       18 GETTABLEKS                       R3 R4 K9 ["createSessionTypes"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_0]
       22 RETURN                           R3 1
