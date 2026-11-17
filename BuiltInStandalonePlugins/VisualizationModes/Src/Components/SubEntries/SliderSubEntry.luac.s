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
       19 DUPTABLE                         R4 K7 [{"LayoutOrder", "children"}]
       20 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       22 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       24 DUPTABLE                         R5 K10 [{"TextContainer", "Slider"}]
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R6 R6 K4 ["createElement"]
       28 GETUPVAL                         R7 3
       29 DUPTABLE                         R8 K13 [{["Size"], ["LayoutOrder"] = 1}]
       30 GETIMPORT                        R9 K16 [UDim2.new]
       32 LOADN                            R10 1
       33 LOADN                            R11 -155
       34 LOADN                            R12 1
       35 LOADN                            R13 0
       36 CALL                             R9 4 1
       37 SETTABLEKS                       R9 R8 K11 ["Size"]
       39 DUPTABLE                         R9 K19 [{"VisualizationModeEntryTitle", "ToolTip"}]
       40 GETUPVAL                         R10 0
       41 GETTABLEKS                       R10 R10 K4 ["createElement"]
       43 GETUPVAL                         R11 4
       44 DUPTABLE                         R12 K22 [{"Text", "MatchIndexes"}]
       45 GETTABLEKS                       R13 R0 K20 ["Text"]
       47 SETTABLEKS                       R13 R12 K20 ["Text"]
       49 GETTABLEKS                       R13 R0 K21 ["MatchIndexes"]
       51 SETTABLEKS                       R13 R12 K21 ["MatchIndexes"]
       53 CALL                             R10 2 1
       54 SETTABLEKS                       R10 R9 K17 ["VisualizationModeEntryTitle"]
       56 GETTABLEKS                       R11 R0 K23 ["ToolTipText"]
       58 JUMPIFNOT                        R11 ; [+14]
       59 GETUPVAL                         R10 0
       60 GETTABLEKS                       R10 R10 K4 ["createElement"]
       62 GETUPVAL                         R11 5
       63 DUPTABLE                         R12 K25 [{"Text", "Enabled"}]
       64 GETTABLEKS                       R13 R0 K23 ["ToolTipText"]
       66 SETTABLEKS                       R13 R12 K20 ["Text"]
       68 NOT                              R13 R1
       69 SETTABLEKS                       R13 R12 K24 ["Enabled"]
       71 CALL                             R10 2 1
       72 JUMP                             ; [+1]
       73 LOADNIL                          R10
       74 SETTABLEKS                       R10 R9 K18 ["ToolTip"]
       76 CALL                             R6 3 1
       77 SETTABLEKS                       R6 R5 K8 ["TextContainer"]
       79 GETUPVAL                         R6 0
       80 GETTABLEKS                       R6 R6 K4 ["createElement"]
       82 GETUPVAL                         R7 6
       83 DUPTABLE                         R8 K34 [{["Min"], ["Max"], ["SnapIncrement"], ["Value"], ["ShowInput"] = True, ["OnValueChanged"], ["Size"], ["LayoutOrder"] = 2}]
       84 GETTABLEKS                       R9 R0 K26 ["Min"]
       86 SETTABLEKS                       R9 R8 K26 ["Min"]
       88 GETTABLEKS                       R9 R0 K27 ["Max"]
       90 SETTABLEKS                       R9 R8 K27 ["Max"]
       92 GETTABLEKS                       R9 R0 K28 ["SnapIncrement"]
       94 SETTABLEKS                       R9 R8 K28 ["SnapIncrement"]
       96 GETTABLEKS                       R9 R0 K29 ["Value"]
       98 SETTABLEKS                       R9 R8 K29 ["Value"]
      100 GETTABLEKS                       R9 R0 K32 ["OnValueChanged"]
      102 SETTABLEKS                       R9 R8 K32 ["OnValueChanged"]
      104 GETIMPORT                        R9 K36 [UDim2.fromOffset]
      106 LOADN                            R10 145
      107 LOADN                            R11 26
      108 CALL                             R9 2 1
      109 SETTABLEKS                       R9 R8 K11 ["Size"]
      111 CALL                             R6 2 1
      112 SETTABLEKS                       R6 R5 K9 ["Slider"]
      114 SETTABLEKS                       R5 R4 K6 ["children"]
      116 CALL                             R2 2 -1
      117 RETURN                           R2 -1

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
       57 GETTABLEKS                       R8 R7 K17 ["Pane"]
       59 GETTABLEKS                       R9 R7 K18 ["Slider"]
       61 GETTABLEKS                       R10 R7 K19 ["Tooltip"]
       63 DUPCLOSURE                       R11 K20 [PROTO_0]
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R9
       71 RETURN                           R11 1
