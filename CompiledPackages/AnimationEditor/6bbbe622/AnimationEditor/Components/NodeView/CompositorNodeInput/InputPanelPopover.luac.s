PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getSelectedIndices"]
        3 CALL                             R0 0 1
        4 LENGTH                           R1 R0
        5 JUMPIFNOTEQKN                    R1 K1 [0] ; [+14]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K2 ["draggedIndex"]
       10 JUMPIFEQKNIL                     R1 ; [+9]
       12 NEWTABLE                         R1 0 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R2 R3 K2 ["draggedIndex"]
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
       39 GETUPVAL                         R10 1
       40 GETTABLEKS                       R9 R10 K6 ["inputs"]
       42 JUMPIFNOT                        R9 ; [+7]
       43 GETUPVAL                         R11 1
       44 GETTABLEKS                       R10 R11 K6 ["inputs"]
       46 GETTABLE                         R9 R10 R6
       47 GETTABLEKS                       R8 R9 K7 ["Name"]
       49 JUMP                             ; [+3]
       50 LOADK                            R9 K8 ["Input "]
       51 MOVE                             R10 R6
       52 CONCAT                           R8 R9 R10
       53 CONCAT                           R1 R7 R8
       54 FORGLOOP                         R2 2 ; [-30]
       56 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R4 0 3
       15 GETTABLEKS                       R5 R0 K3 ["draggedIndex"]
       17 GETTABLEKS                       R6 R1 K4 ["getSelectedIndices"]
       19 GETTABLEKS                       R7 R0 K5 ["inputs"]
       21 SETLIST                          R4 R5 3 [1]
       23 CALL                             R2 2 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R3 R4 K6 ["createElement"]
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R5 R6 K7 ["Popover"]
       30 GETTABLEKS                       R4 R5 K8 ["Root"]
       32 DUPTABLE                         R5 K10 [{"isOpen"}]
       33 LOADB                            R6 1
       34 SETTABLEKS                       R6 R5 K9 ["isOpen"]
       36 DUPTABLE                         R6 K13 [{"Anchor", "Content"}]
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K6 ["createElement"]
       40 GETUPVAL                         R10 2
       41 GETTABLEKS                       R9 R10 K7 ["Popover"]
       43 GETTABLEKS                       R8 R9 K11 ["Anchor"]
       45 DUPTABLE                         R9 K15 [{"anchorRef"}]
       46 GETTABLEKS                       R10 R0 K16 ["virtualRef"]
       48 SETTABLEKS                       R10 R9 K14 ["anchorRef"]
       50 CALL                             R7 2 1
       51 SETTABLEKS                       R7 R6 K11 ["Anchor"]
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R7 R8 K6 ["createElement"]
       56 GETUPVAL                         R10 2
       57 GETTABLEKS                       R9 R10 K7 ["Popover"]
       59 GETTABLEKS                       R8 R9 K12 ["Content"]
       61 DUPTABLE                         R9 K19 [{"align", "side"}]
       62 GETUPVAL                         R13 2
       63 GETTABLEKS                       R12 R13 K20 ["Enums"]
       65 GETTABLEKS                       R11 R12 K21 ["PopoverAlign"]
       67 GETTABLEKS                       R10 R11 K22 ["Start"]
       69 SETTABLEKS                       R10 R9 K17 ["align"]
       71 GETUPVAL                         R13 2
       72 GETTABLEKS                       R12 R13 K20 ["Enums"]
       74 GETTABLEKS                       R11 R12 K23 ["PopoverSide"]
       76 GETTABLEKS                       R10 R11 K24 ["Right"]
       78 SETTABLEKS                       R10 R9 K18 ["side"]
       80 DUPTABLE                         R10 K26 [{"Body"}]
       81 GETUPVAL                         R12 0
       82 GETTABLEKS                       R11 R12 K6 ["createElement"]
       84 GETUPVAL                         R13 2
       85 GETTABLEKS                       R12 R13 K27 ["View"]
       87 DUPTABLE                         R13 K29 [{"tag"}]
       88 LOADK                            R14 K30 ["auto-xy gap-small padding-small radius-small stroke-standard stroke-default"]
       89 SETTABLEKS                       R14 R13 K28 ["tag"]
       91 DUPTABLE                         R14 K32 [{"CompositorNodeInputLabel"}]
       92 GETUPVAL                         R16 0
       93 GETTABLEKS                       R15 R16 K6 ["createElement"]
       95 GETUPVAL                         R17 2
       96 GETTABLEKS                       R16 R17 K33 ["Text"]
       98 DUPTABLE                         R17 K35 [{"tag", "Text", "LayoutOrder"}]
       99 LOADK                            R18 K36 ["text-body-small text-align-x-left auto-xy"]
      100 SETTABLEKS                       R18 R17 K28 ["tag"]
      102 GETUPVAL                         R19 3
      103 CALL                             R19 0 1
      104 JUMPIFNOT                        R19 ; [+2]
      105 MOVE                             R18 R2
      106 JUMP                             ; [+2]
      107 GETTABLEKS                       R18 R0 K33 ["Text"]
      109 SETTABLEKS                       R18 R17 K33 ["Text"]
      111 LOADN                            R18 1
      112 SETTABLEKS                       R18 R17 K34 ["LayoutOrder"]
      114 CALL                             R15 2 1
      115 SETTABLEKS                       R15 R14 K31 ["CompositorNodeInputLabel"]
      117 CALL                             R11 3 1
      118 SETTABLEKS                       R11 R10 K25 ["Body"]
      120 CALL                             R7 3 1
      121 SETTABLEKS                       R7 R6 K12 ["Content"]
      123 CALL                             R3 3 -1
      124 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["NodeView"]
       20 GETTABLEKS                       R4 R5 K10 ["CompositorNodeInput"]
       22 GETTABLEKS                       R3 R4 K11 ["InputPanelTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Contexts"]
       29 GETTABLEKS                       R4 R5 K13 ["InputSelectionContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Parent"]
       36 GETTABLEKS                       R5 R6 K14 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K15 ["Flags"]
       43 GETTABLEKS                       R6 R7 K16 ["getFFlagAnimGraphUIInputSelection"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K17 [PROTO_1]
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R5
       51 RETURN                           R6 1
