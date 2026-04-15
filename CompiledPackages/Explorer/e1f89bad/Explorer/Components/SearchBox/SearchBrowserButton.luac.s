PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["onMouseEnter"]
        3 JUMPIFEQKNIL                     R3 ; [+8]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["onMouseEnter"]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 CALL                             R3 3 0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K1 ["enable"]
       15 CALL                             R3 0 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["onMouseLeave"]
        3 JUMPIFEQKNIL                     R3 ; [+8]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["onMouseLeave"]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 CALL                             R3 3 0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K1 ["disable"]
       15 CALL                             R3 0 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useToggleState"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useCallback"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 1
       12 GETTABLEKS                       R5 R0 K2 ["onMouseEnter"]
       14 SETLIST                          R4 R5 1 [1]
       16 CALL                             R2 2 1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K1 ["useCallback"]
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R5 0 1
       25 GETTABLEKS                       R6 R0 K3 ["onMouseLeave"]
       27 SETLIST                          R5 R6 1 [1]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R4 2
       31 DUPTABLE                         R5 K6 [{"tooltipText", "callbacks"}]
       32 GETTABLEKS                       R6 R0 K4 ["tooltipText"]
       34 SETTABLEKS                       R6 R5 K4 ["tooltipText"]
       36 DUPTABLE                         R6 K8 [{"onActivated", "onMouseEnter", "onMouseLeave"}]
       37 GETTABLEKS                       R7 R0 K7 ["onActivated"]
       39 SETTABLEKS                       R7 R6 K7 ["onActivated"]
       41 SETTABLEKS                       R2 R6 K2 ["onMouseEnter"]
       43 SETTABLEKS                       R3 R6 K3 ["onMouseLeave"]
       45 SETTABLEKS                       R6 R5 K5 ["callbacks"]
       47 CALL                             R4 1 1
       48 GETUPVAL                         R5 3
       49 LOADK                            R6 K9 ["TextButton"]
       50 NEWTABLE                         R7 8 0
       52 GETTABLEKS                       R9 R1 K10 ["enabled"]
       54 JUMPIFNOT                        R9 ; [+2]
       55 LOADK                            R8 K11 [0.92]
       56 JUMP                             ; [+1]
       57 LOADN                            R8 1
       58 SETTABLEKS                       R8 R7 K12 ["BackgroundTransparency"]
       60 GETTABLEKS                       R8 R0 K13 ["layoutOrder"]
       62 SETTABLEKS                       R8 R7 K14 ["LayoutOrder"]
       64 GETIMPORT                        R8 K17 [UDim2.fromOffset]
       66 LOADN                            R9 20
       67 LOADN                            R10 20
       68 CALL                             R8 2 1
       69 SETTABLEKS                       R8 R7 K18 ["Size"]
       71 GETUPVAL                         R10 1
       72 GETTABLEKS                       R9 R10 K19 ["Event"]
       74 GETTABLEKS                       R8 R9 K20 ["Activated"]
       76 GETTABLEKS                       R9 R4 K21 ["activated"]
       78 SETTABLE                         R9 R7 R8
       79 GETUPVAL                         R10 1
       80 GETTABLEKS                       R9 R10 K19 ["Event"]
       82 GETTABLEKS                       R8 R9 K22 ["MouseEnter"]
       84 GETTABLEKS                       R9 R4 K23 ["mouseEnter"]
       86 SETTABLE                         R9 R7 R8
       87 GETUPVAL                         R10 1
       88 GETTABLEKS                       R9 R10 K19 ["Event"]
       90 GETTABLEKS                       R8 R9 K24 ["MouseLeave"]
       92 GETTABLEKS                       R9 R4 K25 ["mouseLeave"]
       94 SETTABLE                         R9 R7 R8
       95 GETUPVAL                         R9 1
       96 GETTABLEKS                       R8 R9 K26 ["Tag"]
       98 LOADK                            R9 K27 ["Explorer-BG-Hover Explorer-Button data-testid=SearchBrowserButton"]
       99 SETTABLE                         R9 R7 R8
      100 DUPTABLE                         R8 K30 [{"Image", "Corner"}]
      101 GETUPVAL                         R9 3
      102 LOADK                            R10 K31 ["ImageLabel"]
      103 NEWTABLE                         R11 2 0
      105 GETTABLEKS                       R12 R0 K32 ["image"]
      107 SETTABLEKS                       R12 R11 K28 ["Image"]
      109 GETUPVAL                         R13 1
      110 GETTABLEKS                       R12 R13 K26 ["Tag"]
      112 LOADK                            R13 K33 ["Explorer-Content-Muted Explorer-Icon X-AnchorCenter"]
      113 SETTABLE                         R13 R11 R12
      114 CALL                             R9 2 1
      115 SETTABLEKS                       R9 R8 K28 ["Image"]
      117 GETUPVAL                         R9 3
      118 LOADK                            R10 K34 ["UICorner"]
      119 DUPTABLE                         R11 K36 [{"CornerRadius"}]
      120 GETIMPORT                        R12 K39 [UDim.new]
      122 LOADN                            R13 0
      123 LOADN                            R14 4
      124 CALL                             R12 2 1
      125 SETTABLEKS                       R12 R11 K35 ["CornerRadius"]
      127 CALL                             R9 2 1
      128 SETTABLEKS                       R9 R8 K29 ["Corner"]
      130 CALL                             R5 3 -1
      131 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Hooks"]
       25 GETTABLEKS                       R4 R5 K10 ["useTooltipActions"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K11 ["createElement"]
       30 DUPCLOSURE                       R5 K12 [PROTO_2]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 RETURN                           R5 1
