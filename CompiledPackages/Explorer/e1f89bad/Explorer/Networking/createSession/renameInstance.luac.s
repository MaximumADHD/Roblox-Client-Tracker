PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIF                           R3 ; [+6]
        3 LOADN                            R5 1
        4 LOADN                            R6 100
        5 NAMECALL                         R3 R2 K0 ["sub"]
        7 CALL                             R3 3 1
        8 MOVE                             R2 R3
        9 GETTABLEKS                       R4 R0 K1 ["guestRpcInterface"]
       11 GETTABLEKS                       R3 R4 K2 ["renameInstance"]
       13 MOVE                             R4 R1
       14 MOVE                             R5 R2
       15 CALL                             R3 2 1
       16 JUMPIF                           R3 ; [+1]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R5 R0 K3 ["rootState"]
       20 GETTABLEKS                       R4 R5 K4 ["instanceIdsToNodes"]
       22 GETTABLE                         R3 R4 R1
       23 JUMPIFNOTEQKNIL                  R3 ; [+2]
       25 LOADB                            R5 0 +1
       26 LOADB                            R5 1
       27 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       29 LOADK                            R6 K5 ["Renaming instance we don't know about"]
       30 GETIMPORT                        R4 K7 [assert]
       32 CALL                             R4 2 0
       33 GETIMPORT                        R4 K10 [table.clone]
       35 GETTABLEKS                       R5 R3 K11 ["datum"]
       37 CALL                             R4 1 1
       38 SETTABLEKS                       R4 R3 K11 ["datum"]
       40 GETTABLEKS                       R4 R3 K11 ["datum"]
       42 SETTABLEKS                       R2 R4 K12 ["name"]
       44 GETTABLEKS                       R4 R3 K13 ["uiState"]
       46 JUMPIFEQKNIL                     R4 ; [+15]
       48 GETIMPORT                        R4 K10 [table.clone]
       50 GETTABLEKS                       R5 R3 K13 ["uiState"]
       52 CALL                             R4 1 1
       53 LOADNIL                          R5
       54 SETTABLEKS                       R5 R4 K14 ["textWidth"]
       56 GETIMPORT                        R5 K16 [table.freeze]
       58 MOVE                             R6 R4
       59 CALL                             R5 1 1
       60 SETTABLEKS                       R5 R3 K13 ["uiState"]
       62 GETIMPORT                        R4 K16 [table.freeze]
       64 GETTABLEKS                       R5 R3 K11 ["datum"]
       66 CALL                             R4 1 0
       67 GETTABLEKS                       R5 R0 K3 ["rootState"]
       69 GETTABLEKS                       R4 R5 K17 ["queueRootChanged"]
       71 CALL                             R4 0 0
       72 RETURN                           R0 0

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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Flags"]
       25 GETTABLEKS                       R4 R5 K11 ["getFFlagExplorerFormatInstanceName"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K12 [PROTO_0]
       29 CAPTURE                          VAL R3
       30 RETURN                           R4 1
