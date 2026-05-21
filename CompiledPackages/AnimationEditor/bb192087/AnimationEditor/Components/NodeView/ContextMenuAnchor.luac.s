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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useViewportBinding"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R4 0 1
       14 GETTABLEKS                       R5 R1 K3 ["visibleMenuState"]
       16 SETLIST                          R4 R5 1 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K4 ["createElement"]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R4 R4 K5 ["View"]
       25 DUPTABLE                         R5 K8 [{"Position", "Size"}]
       26 SETTABLEKS                       R2 R5 K6 ["Position"]
       28 GETIMPORT                        R6 K11 [UDim2.fromOffset]
       30 LOADN                            R7 0
       31 LOADN                            R8 0
       32 CALL                             R6 2 1
       33 SETTABLEKS                       R6 R5 K7 ["Size"]
       35 DUPTABLE                         R6 K13 [{"ContextMenu"}]
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K4 ["createElement"]
       39 GETUPVAL                         R8 4
       40 DUPTABLE                         R9 K17 [{"isOpen", "close", "log"}]
       41 GETTABLEKS                       R11 R1 K3 ["visibleMenuState"]
       43 JUMPIFNOTEQKNIL                  R11 ; [+2]
       45 LOADB                            R10 0 +1
       46 LOADB                            R10 1
       47 SETTABLEKS                       R10 R9 K14 ["isOpen"]
       49 GETTABLEKS                       R10 R1 K18 ["hideMenu"]
       51 SETTABLEKS                       R10 R9 K15 ["close"]
       53 GETUPVAL                         R10 5
       54 SETTABLEKS                       R10 R9 K16 ["log"]
       56 CALL                             R7 2 1
       57 SETTABLEKS                       R7 R6 K12 ["ContextMenu"]
       59 CALL                             R3 3 -1
       60 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["ContextMenu"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["Graphing"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K13 ["InsertNodeContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Parent"]
       41 GETTABLEKS                       R6 R6 K14 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K15 ["Util"]
       48 GETTABLEKS                       R7 R7 K16 ["Logger"]
       50 CALL                             R6 1 1
       51 LOADK                            R8 K17 ["ContextMenuAnchor"]
       52 NAMECALL                         R6 R6 K18 ["new"]
       54 CALL                             R6 2 1
       55 DUPCLOSURE                       R7 K19 [PROTO_1]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R6
       62 RETURN                           R7 1
