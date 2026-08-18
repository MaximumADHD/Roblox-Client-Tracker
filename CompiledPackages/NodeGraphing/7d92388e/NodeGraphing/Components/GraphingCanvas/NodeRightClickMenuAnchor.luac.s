PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["anchorPosition"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETTABLEKS                       R1 R0 K1 ["plotToView"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["anchorPosition"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [UDim2.fromScale]
       12 GETTABLEKS                       R3 R1 K5 ["X"]
       14 GETTABLEKS                       R4 R1 K6 ["Y"]
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1
       18 GETIMPORT                        R1 K4 [UDim2.fromScale]
       20 LOADN                            R2 0
       21 LOADN                            R3 0
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["targetNodeId"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["hideMenu"]
        6 CALL                             R1 0 0
        7 JUMPIFNOT                        R0 ; [+9]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["onShowInExplorer"]
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["onShowInExplorer"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 1
        2 DUPTABLE                         R1 K1 [{"items"}]
        3 NEWTABLE                         R2 0 1
        5 DUPTABLE                         R3 K7 [{["id"] = "ShowInExplorer", ["text"] = "Show in Explorer", ["onActivated"]}]
        6 GETUPVAL                         R4 0
        7 SETTABLEKS                       R4 R3 K6 ["onActivated"]
        9 SETLIST                          R2 R3 1 [1]
       11 SETTABLEKS                       R2 R1 K0 ["items"]
       13 SETLIST                          R0 R1 1 [1]
       15 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R2 R0 K2 ["targetNodeId"]
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K3 ["useViewportBinding"]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R4 0 1
       20 GETTABLEKS                       R5 R0 K4 ["anchorPosition"]
       22 SETLIST                          R4 R5 1 [1]
       24 CALL                             R2 2 1
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K5 ["useCallback"]
       28 NEWCLOSURE                       R4 P1
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R5 0 3
       32 GETTABLEKS                       R6 R0 K2 ["targetNodeId"]
       34 GETTABLEKS                       R7 R0 K6 ["hideMenu"]
       36 GETTABLEKS                       R8 R0 K7 ["onShowInExplorer"]
       38 SETLIST                          R5 R6 3 [1]
       40 CALL                             R3 2 1
       41 GETUPVAL                         R4 0
       42 GETTABLEKS                       R4 R4 K8 ["useMemo"]
       44 NEWCLOSURE                       R5 P2
       45 CAPTURE                          VAL R3
       46 NEWTABLE                         R6 0 1
       48 MOVE                             R7 R3
       49 SETLIST                          R6 R7 1 [1]
       51 CALL                             R4 2 1
       52 GETUPVAL                         R5 0
       53 GETTABLEKS                       R5 R5 K9 ["createElement"]
       55 GETUPVAL                         R6 3
       56 GETTABLEKS                       R6 R6 K10 ["View"]
       58 DUPTABLE                         R7 K14 [{["tag"] = "size-0-0", ["Position"]}]
       59 SETTABLEKS                       R2 R7 K13 ["Position"]
       61 DUPTABLE                         R8 K16 [{"NodeContextMenu"}]
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R9 R9 K9 ["createElement"]
       65 GETUPVAL                         R10 3
       66 GETTABLEKS                       R10 R10 K17 ["Menu"]
       68 DUPTABLE                         R11 K22 [{"isOpen", "onPressedOutside", "items", "size"}]
       69 SETTABLEKS                       R1 R11 K18 ["isOpen"]
       71 GETTABLEKS                       R12 R0 K6 ["hideMenu"]
       73 SETTABLEKS                       R12 R11 K19 ["onPressedOutside"]
       75 SETTABLEKS                       R4 R11 K20 ["items"]
       77 GETUPVAL                         R12 3
       78 GETTABLEKS                       R12 R12 K23 ["Enums"]
       80 GETTABLEKS                       R12 R12 K24 ["InputSize"]
       82 GETTABLEKS                       R12 R12 K25 ["XSmall"]
       84 SETTABLEKS                       R12 R11 K21 ["size"]
       86 CALL                             R9 2 1
       87 SETTABLEKS                       R9 R8 K15 ["NodeContextMenu"]
       89 CALL                             R5 3 -1
       90 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Graphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["NodeRightClickMenuContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 DUPCLOSURE                       R5 K12 [PROTO_3]
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R1
       40 RETURN                           R5 1
