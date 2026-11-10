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
        5 DUPTABLE                         R3 K6 [{["id"] = "ShowInExplorer", ["text"], ["onActivated"]}]
        6 GETUPVAL                         R5 0
        7 CALL                             R5 0 1
        8 JUMPIFNOT                        R5 ; [+9]
        9 GETUPVAL                         R4 1
       10 LOADK                            R6 K7 ["Common"]
       11 LOADK                            R7 K8 ["AnimationEditor"]
       12 LOADK                            R8 K9 ["Menu"]
       13 LOADK                            R9 K3 ["ShowInExplorer"]
       14 NAMECALL                         R4 R4 K10 ["getExternalText"]
       16 CALL                             R4 5 1
       17 JUMP                             ; [+1]
       18 LOADK                            R4 K11 ["Show in Explorer"]
       19 SETTABLEKS                       R4 R3 K4 ["text"]
       21 GETUPVAL                         R4 2
       22 SETTABLEKS                       R4 R3 K5 ["onActivated"]
       24 SETLIST                          R2 R3 1 [1]
       26 SETTABLEKS                       R2 R1 K0 ["items"]
       28 SETLIST                          R0 R1 1 [1]
       30 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Context"]
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K2 ["ContextServices"]
       10 GETTABLEKS                       R1 R1 K3 ["Localization"]
       12 NAMECALL                         R1 R1 K4 ["use"]
       14 CALL                             R1 1 1
       15 GETTABLEKS                       R3 R0 K5 ["targetNodeId"]
       17 JUMPIFNOTEQKNIL                  R3 ; [+2]
       19 LOADB                            R2 0 +1
       20 LOADB                            R2 1
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R3 R3 K6 ["useViewportBinding"]
       24 NEWCLOSURE                       R4 P0
       25 CAPTURE                          VAL R0
       26 NEWTABLE                         R5 0 1
       28 GETTABLEKS                       R6 R0 K7 ["anchorPosition"]
       30 SETLIST                          R5 R6 1 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K8 ["useCallback"]
       36 NEWCLOSURE                       R5 P1
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R6 0 3
       40 GETTABLEKS                       R7 R0 K5 ["targetNodeId"]
       42 GETTABLEKS                       R8 R0 K9 ["hideMenu"]
       44 GETTABLEKS                       R9 R0 K10 ["onShowInExplorer"]
       46 SETLIST                          R6 R7 3 [1]
       48 CALL                             R4 2 1
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R5 R5 K11 ["useMemo"]
       52 NEWCLOSURE                       R6 P2
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R4
       56 NEWTABLE                         R7 0 2
       58 MOVE                             R8 R4
       59 MOVE                             R9 R1
       60 SETLIST                          R7 R8 2 [1]
       62 CALL                             R5 2 1
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R6 R6 K12 ["createElement"]
       66 GETUPVAL                         R7 5
       67 GETTABLEKS                       R7 R7 K13 ["View"]
       69 DUPTABLE                         R8 K17 [{["tag"] = "size-0-0", ["Position"]}]
       70 SETTABLEKS                       R3 R8 K16 ["Position"]
       72 DUPTABLE                         R9 K19 [{"NodeContextMenu"}]
       73 GETUPVAL                         R10 0
       74 GETTABLEKS                       R10 R10 K12 ["createElement"]
       76 GETUPVAL                         R11 5
       77 GETTABLEKS                       R11 R11 K20 ["Menu"]
       79 DUPTABLE                         R12 K25 [{"isOpen", "onPressedOutside", "items", "size"}]
       80 SETTABLEKS                       R2 R12 K21 ["isOpen"]
       82 GETTABLEKS                       R13 R0 K9 ["hideMenu"]
       84 SETTABLEKS                       R13 R12 K22 ["onPressedOutside"]
       86 SETTABLEKS                       R5 R12 K23 ["items"]
       88 GETUPVAL                         R13 5
       89 GETTABLEKS                       R13 R13 K26 ["Enums"]
       91 GETTABLEKS                       R13 R13 K27 ["InputSize"]
       93 GETTABLEKS                       R13 R13 K28 ["XSmall"]
       95 SETTABLEKS                       R13 R12 K24 ["size"]
       97 CALL                             R10 2 1
       98 SETTABLEKS                       R10 R9 K18 ["NodeContextMenu"]
      100 CALL                             R6 3 -1
      101 RETURN                           R6 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["Graphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["NodeRightClickMenuContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Flags"]
       46 GETTABLEKS                       R7 R7 K14 ["getFFlagAnimGraphUI_Localization2"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K15 [PROTO_3]
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R1
       56 RETURN                           R7 1
