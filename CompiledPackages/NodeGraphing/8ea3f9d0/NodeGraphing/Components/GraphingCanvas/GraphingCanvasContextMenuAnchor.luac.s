PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["visibleMenuState"]
        3 JUMPIFNOT                        R1 ; [+16]
        4 GETTABLEKS                       R1 R0 K1 ["plotToView"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["visibleMenuState"]
        9 GETTABLEKS                       R2 R2 K2 ["targetPinPosition"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [UDim2.fromScale]
       14 GETTABLEKS                       R3 R1 K6 ["X"]
       16 GETTABLEKS                       R4 R1 K7 ["Y"]
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1
       20 GETIMPORT                        R1 K5 [UDim2.fromScale]
       22 LOADN                            R2 0
       23 LOADN                            R3 0
       24 CALL                             R1 2 -1
       25 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["useContext"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K1 ["Context"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K2 ["contextMenuComponent"]
       16 JUMPIF                           R2 ; [+1]
       17 GETUPVAL                         R2 3
       18 GETUPVAL                         R3 4
       19 GETTABLEKS                       R3 R3 K3 ["useViewportBinding"]
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R5 0 1
       25 GETTABLEKS                       R6 R0 K4 ["visibleMenuState"]
       27 SETLIST                          R5 R6 1 [1]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R4 R4 K5 ["createElement"]
       33 GETUPVAL                         R5 5
       34 GETTABLEKS                       R5 R5 K6 ["View"]
       36 DUPTABLE                         R6 K9 [{"Position", "Size"}]
       37 SETTABLEKS                       R3 R6 K7 ["Position"]
       39 GETIMPORT                        R7 K12 [UDim2.fromOffset]
       41 LOADN                            R8 0
       42 LOADN                            R9 0
       43 CALL                             R7 2 1
       44 SETTABLEKS                       R7 R6 K8 ["Size"]
       46 DUPTABLE                         R7 K14 [{"ContextMenu"}]
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R8 R8 K5 ["createElement"]
       50 MOVE                             R9 R2
       51 DUPTABLE                         R10 K17 [{"isOpen", "close"}]
       52 GETTABLEKS                       R12 R0 K4 ["visibleMenuState"]
       54 JUMPIFNOTEQKNIL                  R12 ; [+2]
       56 LOADB                            R11 0 +1
       57 LOADB                            R11 1
       58 SETTABLEKS                       R11 R10 K15 ["isOpen"]
       60 GETTABLEKS                       R11 R0 K18 ["hideMenu"]
       62 SETTABLEKS                       R11 R10 K16 ["close"]
       64 CALL                             R8 2 1
       65 SETTABLEKS                       R8 R7 K13 ["ContextMenu"]
       67 CALL                             R4 3 -1
       68 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["ContextMenuOverrideContext"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Graphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["GraphingCanvas"]
       34 GETTABLEKS                       R5 R5 K12 ["GraphingCanvasContextMenu"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Components"]
       41 GETTABLEKS                       R6 R6 K13 ["InsertNodeContext"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K8 ["Parent"]
       48 GETTABLEKS                       R7 R7 K14 ["React"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K15 [PROTO_1]
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R2
       58 RETURN                           R7 1
