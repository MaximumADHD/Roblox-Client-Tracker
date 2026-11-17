PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectedIndices"]
        3 CALL                             R0 0 1
        4 LENGTH                           R1 R0
        5 JUMPIFNOTEQKN                    R1 K1 [0] ; [+14]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["draggedIndex"]
       10 JUMPIFEQKNIL                     R1 ; [+9]
       12 NEWTABLE                         R1 0 1
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K2 ["draggedIndex"]
       17 SETLIST                          R1 R2 1 [1]
       19 MOVE                             R0 R1
       20 LOADK                            R1 K3 [""]
       21 MOVE                             R2 R0
       22 LOADNIL                          R3
       23 LOADNIL                          R4
       24 FORGPREP                         R2
       25 LOADN                            R7 1
       26 JUMPIFNOTLT                      R7 R5 ; [+4]
       28 MOVE                             R7 R1
       29 LOADK                            R8 K4 [", "]
       30 CONCAT                           R1 R7 R8
       31 LOADN                            R7 3
       32 JUMPIFNOTLT                      R7 R5 ; [+5]
       34 MOVE                             R7 R1
       35 LOADK                            R8 K5 ["..."]
       36 CONCAT                           R1 R7 R8
       37 RETURN                           R1 1
       38 MOVE                             R7 R1
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K6 ["inputs"]
       42 GETTABLE                         R8 R9 R6
       43 GETTABLEKS                       R8 R8 K7 ["Name"]
       45 CONCAT                           R1 R7 R8
       46 FORGLOOP                         R2 2 ; [-22]
       48 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R4 0 3
       15 GETTABLEKS                       R5 R0 K3 ["draggedIndex"]
       17 GETTABLEKS                       R6 R1 K4 ["getSelectedIndices"]
       19 GETTABLEKS                       R7 R0 K5 ["inputs"]
       21 SETLIST                          R4 R5 3 [1]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K6 ["createElement"]
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K7 ["Popover"]
       30 GETTABLEKS                       R4 R4 K8 ["Root"]
       32 DUPTABLE                         R5 K11 [{["isOpen"] = True}]
       33 DUPTABLE                         R6 K14 [{"Anchor", "Content"}]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K6 ["createElement"]
       37 GETUPVAL                         R8 2
       38 GETTABLEKS                       R8 R8 K7 ["Popover"]
       40 GETTABLEKS                       R8 R8 K12 ["Anchor"]
       42 DUPTABLE                         R9 K16 [{"anchorRef"}]
       43 GETTABLEKS                       R10 R0 K17 ["virtualRef"]
       45 SETTABLEKS                       R10 R9 K15 ["anchorRef"]
       47 CALL                             R7 2 1
       48 SETTABLEKS                       R7 R6 K12 ["Anchor"]
       50 GETUPVAL                         R7 0
       51 GETTABLEKS                       R7 R7 K6 ["createElement"]
       53 GETUPVAL                         R8 2
       54 GETTABLEKS                       R8 R8 K7 ["Popover"]
       56 GETTABLEKS                       R8 R8 K13 ["Content"]
       58 DUPTABLE                         R9 K20 [{"align", "side"}]
       59 GETUPVAL                         R10 2
       60 GETTABLEKS                       R10 R10 K21 ["Enums"]
       62 GETTABLEKS                       R10 R10 K22 ["PopoverAlign"]
       64 GETTABLEKS                       R10 R10 K23 ["Start"]
       66 SETTABLEKS                       R10 R9 K18 ["align"]
       68 GETUPVAL                         R10 2
       69 GETTABLEKS                       R10 R10 K21 ["Enums"]
       71 GETTABLEKS                       R10 R10 K24 ["PopoverSide"]
       73 GETTABLEKS                       R10 R10 K25 ["Right"]
       75 SETTABLEKS                       R10 R9 K19 ["side"]
       77 DUPTABLE                         R10 K27 [{"Body"}]
       78 GETUPVAL                         R11 0
       79 GETTABLEKS                       R11 R11 K6 ["createElement"]
       81 GETUPVAL                         R12 2
       82 GETTABLEKS                       R12 R12 K28 ["View"]
       84 DUPTABLE                         R13 K31 [{["tag"] = "gap-small auto-xy padding-small stroke-standard stroke-default radius-small"}]
       85 DUPTABLE                         R14 K33 [{"CompositorNodeInputLabel"}]
       86 GETUPVAL                         R15 0
       87 GETTABLEKS                       R15 R15 K6 ["createElement"]
       89 GETUPVAL                         R16 2
       90 GETTABLEKS                       R16 R16 K34 ["Text"]
       92 DUPTABLE                         R17 K38 [{["tag"] = "auto-xy text-body-small text-align-x-left", ["Text"], ["LayoutOrder"] = 1}]
       93 SETTABLEKS                       R2 R17 K34 ["Text"]
       95 CALL                             R15 2 1
       96 SETTABLEKS                       R15 R14 K32 ["CompositorNodeInputLabel"]
       98 CALL                             R11 3 1
       99 SETTABLEKS                       R11 R10 K26 ["Body"]
      101 CALL                             R7 3 1
      102 SETTABLEKS                       R7 R6 K13 ["Content"]
      104 CALL                             R3 3 -1
      105 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["NodeView"]
       20 GETTABLEKS                       R3 R3 K10 ["CompositorNodeInput"]
       22 GETTABLEKS                       R3 R3 K11 ["InputPanelTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K13 ["InputSelectionContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Parent"]
       36 GETTABLEKS                       R5 R5 K14 ["React"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K15 [PROTO_1]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 RETURN                           R5 1
