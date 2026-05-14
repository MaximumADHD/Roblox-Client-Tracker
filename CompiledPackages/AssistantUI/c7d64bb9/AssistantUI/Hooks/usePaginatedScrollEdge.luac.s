PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["loadState"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["PersistenceLoadStates"]
        6 GETTABLEKS                       R3 R3 K2 ["Loading"]
        8 JUMPIFEQ                         R2 R3 ; [+14]
       10 LOADB                            R1 0
       11 GETTABLEKS                       R2 R0 K3 ["pageState"]
       13 JUMPIFEQKNIL                     R2 ; [+9]
       15 GETTABLEKS                       R2 R0 K3 ["pageState"]
       17 GETTABLEKS                       R2 R2 K4 ["nextCursor"]
       19 JUMPIFNOTEQKNIL                  R2 ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 GETTABLEKS                       R2 R0 K5 ["onLoadMore"]
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K6 ["useCallback"]
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          VAL R2
       30 NEWTABLE                         R5 0 1
       32 MOVE                             R6 R2
       33 SETLIST                          R5 R6 1 [1]
       35 CALL                             R3 2 1
       36 GETUPVAL                         R4 2
       37 DUPTABLE                         R5 K11 [{"triggerDistance", "onScrolledToTop", "onScrolledToBottom", "resetKey"}]
       38 GETTABLEKS                       R6 R0 K7 ["triggerDistance"]
       40 SETTABLEKS                       R6 R5 K7 ["triggerDistance"]
       42 GETTABLEKS                       R7 R0 K12 ["direction"]
       44 JUMPIFNOTEQKS                    R7 K13 ["top"] ; [+4]
       46 JUMPIFNOT                        R1 ; [+2]
       47 MOVE                             R6 R3
       48 JUMP                             ; [+1]
       49 LOADNIL                          R6
       50 SETTABLEKS                       R6 R5 K8 ["onScrolledToTop"]
       52 GETTABLEKS                       R7 R0 K12 ["direction"]
       54 JUMPIFNOTEQKS                    R7 K14 ["bottom"] ; [+4]
       56 JUMPIFNOT                        R1 ; [+2]
       57 MOVE                             R6 R3
       58 JUMP                             ; [+1]
       59 LOADNIL                          R6
       60 SETTABLEKS                       R6 R5 K9 ["onScrolledToBottom"]
       62 GETTABLEKS                       R6 R0 K10 ["resetKey"]
       64 SETTABLEKS                       R6 R5 K10 ["resetKey"]
       66 CALL                             R4 1 1
       67 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Hooks"]
       23 GETTABLEKS                       R4 R4 K10 ["useScrollEdge"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K11 [PROTO_1]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 RETURN                           R4 1
