PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["visibleMenuState"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["plotToView"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["visibleMenuState"]
       10 GETTABLEKS                       R1 R2 K2 ["targetPinPosition"]
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1
       14 GETIMPORT                        R0 K5 [Vector2.zero]
       16 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K2 [UDim2.fromScale]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K3 ["X"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K4 ["Y"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K2 ["CanvasContext"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K3 ["useMemo"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 NEWTABLE                         R5 0 2
       22 GETTABLEKS                       R6 R2 K4 ["plotToView"]
       24 GETTABLEKS                       R7 R1 K5 ["visibleMenuState"]
       26 SETLIST                          R5 R6 2 [1]
       28 CALL                             R3 2 1
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       32 NEWCLOSURE                       R5 P1
       33 CAPTURE                          VAL R3
       34 NEWTABLE                         R6 0 1
       36 MOVE                             R7 R3
       37 SETLIST                          R6 R7 1 [1]
       39 CALL                             R4 2 1
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R5 R6 K6 ["createElement"]
       43 GETUPVAL                         R7 3
       44 GETTABLEKS                       R6 R7 K7 ["View"]
       46 DUPTABLE                         R7 K10 [{"Position", "Size"}]
       47 SETTABLEKS                       R4 R7 K8 ["Position"]
       49 GETIMPORT                        R8 K13 [UDim2.fromOffset]
       51 LOADN                            R9 0
       52 LOADN                            R10 0
       53 CALL                             R8 2 1
       54 SETTABLEKS                       R8 R7 K9 ["Size"]
       56 DUPTABLE                         R8 K15 [{"ContextMenu"}]
       57 GETUPVAL                         R10 0
       58 GETTABLEKS                       R9 R10 K6 ["createElement"]
       60 GETUPVAL                         R10 4
       61 DUPTABLE                         R11 K19 [{"isOpen", "close", "log"}]
       62 GETTABLEKS                       R13 R1 K5 ["visibleMenuState"]
       64 JUMPIFNOTEQKNIL                  R13 ; [+2]
       66 LOADB                            R12 0 +1
       67 LOADB                            R12 1
       68 SETTABLEKS                       R12 R11 K16 ["isOpen"]
       70 GETTABLEKS                       R12 R1 K20 ["hideMenu"]
       72 SETTABLEKS                       R12 R11 K17 ["close"]
       74 GETUPVAL                         R12 5
       75 SETTABLEKS                       R12 R11 K18 ["log"]
       77 CALL                             R9 2 1
       78 SETTABLEKS                       R9 R8 K14 ["ContextMenu"]
       80 CALL                             R5 3 -1
       81 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R3 K8 ["ContextMenu"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["Foundation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R5 K11 ["Graphing"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K12 ["Contexts"]
       34 GETTABLEKS                       R5 R6 K13 ["InsertNodeContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K9 ["Parent"]
       41 GETTABLEKS                       R6 R7 K14 ["React"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K15 ["Util"]
       48 GETTABLEKS                       R7 R8 K16 ["Logger"]
       50 CALL                             R6 1 1
       51 LOADK                            R8 K17 ["ContextMenuAnchor"]
       52 NAMECALL                         R6 R6 K18 ["new"]
       54 CALL                             R6 2 1
       55 DUPCLOSURE                       R7 K19 [PROTO_2]
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R6
       62 RETURN                           R7 1
