PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["overlayFocused"]
        9 GETTABLEKS                       R2 R0 K3 ["Visible"]
       11 JUMPIFNOTEQKB                    R2 FALSE ; [+3]
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K4 ["createElement"]
       18 GETUPVAL                         R3 2
       19 DUPTABLE                         R4 K8 [{"LayoutOrder", "OnActivated", "children"}]
       20 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       22 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       24 GETTABLEKS                       R5 R0 K9 ["OnToggle"]
       26 SETTABLEKS                       R5 R4 K6 ["OnActivated"]
       28 DUPTABLE                         R5 K12 [{"Checkbox", "TextContainer"}]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K4 ["createElement"]
       32 GETUPVAL                         R7 3
       33 DUPTABLE                         R8 K16 [{["Checked"], ["OnClick"], ["LayoutOrder"] = 1}]
       34 GETTABLEKS                       R9 R0 K13 ["Checked"]
       36 SETTABLEKS                       R9 R8 K13 ["Checked"]
       38 GETTABLEKS                       R9 R0 K9 ["OnToggle"]
       40 SETTABLEKS                       R9 R8 K14 ["OnClick"]
       42 CALL                             R6 2 1
       43 SETTABLEKS                       R6 R5 K10 ["Checkbox"]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K4 ["createElement"]
       48 GETUPVAL                         R7 4
       49 DUPTABLE                         R8 K19 [{["Size"], ["LayoutOrder"] = 2}]
       50 GETIMPORT                        R9 K22 [UDim2.new]
       52 LOADN                            R10 1
       53 LOADN                            R11 -30
       54 LOADN                            R12 1
       55 LOADN                            R13 0
       56 CALL                             R9 4 1
       57 SETTABLEKS                       R9 R8 K17 ["Size"]
       59 DUPTABLE                         R9 K25 [{"VisualizationModeEntryTitle", "ToolTip"}]
       60 GETUPVAL                         R10 0
       61 GETTABLEKS                       R10 R10 K4 ["createElement"]
       63 GETUPVAL                         R11 5
       64 DUPTABLE                         R12 K28 [{"Text", "MatchIndexes"}]
       65 GETTABLEKS                       R13 R0 K26 ["Text"]
       67 SETTABLEKS                       R13 R12 K26 ["Text"]
       69 GETTABLEKS                       R13 R0 K27 ["MatchIndexes"]
       71 SETTABLEKS                       R13 R12 K27 ["MatchIndexes"]
       73 CALL                             R10 2 1
       74 SETTABLEKS                       R10 R9 K23 ["VisualizationModeEntryTitle"]
       76 GETTABLEKS                       R11 R0 K29 ["ToolTipText"]
       78 JUMPIFNOT                        R11 ; [+14]
       79 GETUPVAL                         R10 0
       80 GETTABLEKS                       R10 R10 K4 ["createElement"]
       82 GETUPVAL                         R11 6
       83 DUPTABLE                         R12 K31 [{"Text", "Enabled"}]
       84 GETTABLEKS                       R13 R0 K29 ["ToolTipText"]
       86 SETTABLEKS                       R13 R12 K26 ["Text"]
       88 NOT                              R13 R1
       89 SETTABLEKS                       R13 R12 K30 ["Enabled"]
       91 CALL                             R10 2 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R10
       94 SETTABLEKS                       R10 R9 K24 ["ToolTip"]
       96 CALL                             R6 3 1
       97 SETTABLEKS                       R6 R5 K11 ["TextContainer"]
       99 SETTABLEKS                       R5 R4 K7 ["children"]
      101 CALL                             R2 2 -1
      102 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["HighlightTextLabel"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       29 GETTABLEKS                       R4 R4 K12 ["OverlayMenuFocusedContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Packages"]
       36 GETTABLEKS                       R5 R5 K13 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K9 ["Components"]
       45 GETTABLEKS                       R6 R6 K14 ["VisualizationModeSubEntry"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Src"]
       52 GETTABLEKS                       R7 R7 K15 ["Types"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R1 K16 ["UI"]
       57 GETTABLEKS                       R8 R7 K17 ["Checkbox"]
       59 GETTABLEKS                       R9 R7 K18 ["Pane"]
       61 GETTABLEKS                       R10 R7 K19 ["Tooltip"]
       63 DUPCLOSURE                       R11 K20 [PROTO_0]
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R10
       71 RETURN                           R11 1
