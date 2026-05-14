PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["CanExpand"]
        2 JUMPIF                           R1 ; [+21]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["createElement"]
        6 LOADK                            R2 K2 ["Frame"]
        7 DUPTABLE                         R3 K6 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
        8 GETIMPORT                        R4 K9 [UDim2.fromOffset]
       10 LOADN                            R5 7
       11 LOADN                            R6 12
       12 CALL                             R4 2 1
       13 SETTABLEKS                       R4 R3 K3 ["Size"]
       15 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       17 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       19 LOADN                            R4 1
       20 SETTABLEKS                       R4 R3 K5 ["BackgroundTransparency"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K1 ["createElement"]
       27 LOADK                            R2 K10 ["ImageButton"]
       28 NEWTABLE                         R3 4 0
       30 GETIMPORT                        R4 K9 [UDim2.fromOffset]
       32 LOADN                            R5 12
       33 LOADN                            R6 12
       34 CALL                             R4 2 1
       35 SETTABLEKS                       R4 R3 K3 ["Size"]
       37 LOADN                            R4 1
       38 SETTABLEKS                       R4 R3 K5 ["BackgroundTransparency"]
       40 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       42 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       44 GETUPVAL                         R4 0
       45 GETTABLEKS                       R4 R4 K11 ["Event"]
       47 GETTABLEKS                       R4 R4 K12 ["Activated"]
       49 GETTABLEKS                       R5 R0 K13 ["OnExpansionToggled"]
       51 SETTABLE                         R5 R3 R4
       52 DUPTABLE                         R4 K15 [{"ArrowImage"}]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R5 R5 K1 ["createElement"]
       56 LOADK                            R6 K16 ["ImageLabel"]
       57 NEWTABLE                         R7 1 0
       59 GETUPVAL                         R8 0
       60 GETTABLEKS                       R8 R8 K17 ["Tag"]
       62 GETUPVAL                         R9 1
       63 GETTABLEKS                       R9 R9 K18 ["Styling"]
       65 GETTABLEKS                       R9 R9 K19 ["joinTags"]
       67 LOADK                            R10 K20 ["VisualizationModes-ExpandIcon"]
       68 GETTABLEKS                       R12 R0 K21 ["IsExpanded"]
       70 JUMPIFNOT                        R12 ; [+2]
       71 LOADK                            R11 K22 ["VisualizationModes-ExpandIcon-Expanded"]
       72 JUMP                             ; [+1]
       73 LOADK                            R11 K23 ["VisualizationModes-ExpandIcon-Collapsed"]
       74 CALL                             R9 2 1
       75 SETTABLE                         R9 R7 R8
       76 CALL                             R5 2 1
       77 SETTABLEKS                       R5 R4 K14 ["ArrowImage"]
       79 CALL                             R1 3 -1
       80 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CanToggle"]
        3 JUMPIFNOTEQKB                    R0 FALSE ; [+10]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["OnExpansionToggled"]
        8 JUMPIFNOT                        R0 ; [+4]
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K1 ["OnExpansionToggled"]
       12 CALL                             R0 0 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K2 ["OnToggle"]
       17 JUMPIFNOT                        R0 ; [+4]
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K2 ["OnToggle"]
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["Context"]
       10 CALL                             R2 1 1
       11 GETTABLEKS                       R2 R2 K3 ["overlayFocused"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K4 ["createElement"]
       16 LOADK                            R4 K5 ["ImageButton"]
       17 NEWTABLE                         R5 4 0
       19 GETTABLEKS                       R6 R0 K6 ["Visible"]
       21 SETTABLEKS                       R6 R5 K6 ["Visible"]
       23 GETTABLEKS                       R6 R0 K7 ["LayoutOrder"]
       25 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K8 ["Tag"]
       30 GETUPVAL                         R7 3
       31 GETTABLEKS                       R7 R7 K9 ["Styling"]
       33 GETTABLEKS                       R7 R7 K10 ["joinTags"]
       35 LOADK                            R8 K11 ["VisualizationModes-Entry"]
       36 GETTABLEKS                       R10 R0 K12 ["IsEditingEnabled"]
       38 JUMPIFNOTEQKB                    R10 FALSE ; [+3]
       40 LOADK                            R9 K13 ["VisualizationModes-Disabled"]
       41 JUMP                             ; [+1]
       42 LOADK                            R9 K14 ["VisualizationModes-Active"]
       43 CALL                             R7 2 1
       44 SETTABLE                         R7 R5 R6
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R6 R6 K15 ["Event"]
       48 GETTABLEKS                       R6 R6 K16 ["Activated"]
       50 NEWCLOSURE                       R7 P0
       51 CAPTURE                          VAL R0
       52 SETTABLE                         R7 R5 R6
       53 DUPTABLE                         R6 K20 [{"ToolTip", "VisualizationModesEntryBacking", "Contents"}]
       54 GETTABLEKS                       R8 R0 K17 ["ToolTip"]
       56 JUMPIFNOT                        R8 ; [+20]
       57 GETTABLEKS                       R9 R0 K17 ["ToolTip"]
       59 LENGTH                           R8 R9
       60 LOADN                            R9 0
       61 JUMPIFNOTLT                      R9 R8 ; [+15]
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R7 R7 K4 ["createElement"]
       66 GETUPVAL                         R8 4
       67 DUPTABLE                         R9 K23 [{"Text", "Enabled"}]
       68 GETTABLEKS                       R10 R0 K17 ["ToolTip"]
       70 SETTABLEKS                       R10 R9 K21 ["Text"]
       72 NOT                              R10 R2
       73 SETTABLEKS                       R10 R9 K22 ["Enabled"]
       75 CALL                             R7 2 1
       76 JUMP                             ; [+1]
       77 LOADNIL                          R7
       78 SETTABLEKS                       R7 R6 K17 ["ToolTip"]
       80 GETUPVAL                         R7 1
       81 GETTABLEKS                       R7 R7 K4 ["createElement"]
       83 LOADK                            R8 K24 ["Frame"]
       84 NEWTABLE                         R9 1 0
       86 GETUPVAL                         R10 1
       87 GETTABLEKS                       R10 R10 K8 ["Tag"]
       89 JUMPIFNOT                        R2 ; [+2]
       90 LOADK                            R11 K25 ["VisualizationModesEntryBacking-Disabled"]
       91 JUMP                             ; [+1]
       92 LOADK                            R11 K26 ["VisualizationModesEntryBacking-Enabled"]
       93 SETTABLE                         R11 R9 R10
       94 CALL                             R7 2 1
       95 SETTABLEKS                       R7 R6 K18 ["VisualizationModesEntryBacking"]
       97 GETUPVAL                         R7 1
       98 GETTABLEKS                       R7 R7 K4 ["createElement"]
      100 GETUPVAL                         R8 5
      101 NEWTABLE                         R9 4 0
      103 GETUPVAL                         R10 1
      104 GETTABLEKS                       R10 R10 K8 ["Tag"]
      106 LOADK                            R11 K27 ["X-RowS X-Left X-Middle X-PadS"]
      107 SETTABLE                         R11 R9 R10
      108 GETIMPORT                        R10 K29 [UDim2.new]
      110 LOADN                            R11 1
      111 LOADN                            R12 0
      112 LOADN                            R13 0
      113 LOADN                            R14 24
      114 CALL                             R10 4 1
      115 SETTABLEKS                       R10 R9 K30 ["Size"]
      117 GETIMPORT                        R10 K32 [Vector2.new]
      119 LOADK                            R11 K33 [0.5]
      120 LOADK                            R12 K33 [0.5]
      121 CALL                             R10 2 1
      122 SETTABLEKS                       R10 R9 K34 ["AnchorPoint"]
      124 GETIMPORT                        R10 K36 [UDim2.fromScale]
      126 LOADK                            R11 K33 [0.5]
      127 LOADK                            R12 K33 [0.5]
      128 CALL                             R10 2 1
      129 SETTABLEKS                       R10 R9 K37 ["Position"]
      131 DUPTABLE                         R10 K40 [{"ExpandButton", "MainEntry"}]
      132 GETUPVAL                         R11 1
      133 GETTABLEKS                       R11 R11 K4 ["createElement"]
      135 GETUPVAL                         R12 6
      136 DUPTABLE                         R13 K44 [{"LayoutOrder", "CanExpand", "IsExpanded", "OnExpansionToggled"}]
      137 NAMECALL                         R14 R1 K45 ["getNextOrder"]
      139 CALL                             R14 1 1
      140 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      142 GETTABLEKS                       R14 R0 K41 ["CanExpand"]
      144 SETTABLEKS                       R14 R13 K41 ["CanExpand"]
      146 GETTABLEKS                       R14 R0 K42 ["IsExpanded"]
      148 SETTABLEKS                       R14 R13 K42 ["IsExpanded"]
      150 GETTABLEKS                       R14 R0 K43 ["OnExpansionToggled"]
      152 SETTABLEKS                       R14 R13 K43 ["OnExpansionToggled"]
      154 CALL                             R11 2 1
      155 SETTABLEKS                       R11 R10 K38 ["ExpandButton"]
      157 GETUPVAL                         R11 1
      158 GETTABLEKS                       R11 R11 K4 ["createElement"]
      160 LOADK                            R12 K24 ["Frame"]
      161 NEWTABLE                         R13 2 0
      163 NAMECALL                         R14 R1 K45 ["getNextOrder"]
      165 CALL                             R14 1 1
      166 SETTABLEKS                       R14 R13 K7 ["LayoutOrder"]
      168 GETUPVAL                         R14 1
      169 GETTABLEKS                       R14 R14 K8 ["Tag"]
      171 LOADK                            R15 K46 ["VisualizationModes-EntryButton"]
      172 SETTABLE                         R15 R13 R14
      173 DUPTABLE                         R14 K47 [{"Contents"}]
      174 GETUPVAL                         R15 1
      175 GETTABLEKS                       R15 R15 K4 ["createElement"]
      177 GETUPVAL                         R16 5
      178 NEWTABLE                         R17 1 0
      180 GETUPVAL                         R18 1
      181 GETTABLEKS                       R18 R18 K8 ["Tag"]
      183 LOADK                            R19 K48 ["X-RowS X-Left X-Middle"]
      184 SETTABLE                         R19 R17 R18
      185 DUPTABLE                         R18 K52 [{"Checkbox", "VisualizationModeEntryTitle", "Badge"}]
      186 GETTABLEKS                       R20 R0 K53 ["CanToggle"]
      188 JUMPIFEQKB                       R20 FALSE ; [+29]
      190 GETUPVAL                         R19 1
      191 GETTABLEKS                       R19 R19 K4 ["createElement"]
      193 GETUPVAL                         R20 7
      194 DUPTABLE                         R21 K57 [{"Checked", "OnClick", "Disabled", "LayoutOrder"}]
      195 GETTABLEKS                       R22 R0 K22 ["Enabled"]
      197 SETTABLEKS                       R22 R21 K54 ["Checked"]
      199 GETTABLEKS                       R22 R0 K58 ["OnToggle"]
      201 SETTABLEKS                       R22 R21 K55 ["OnClick"]
      203 GETTABLEKS                       R23 R0 K12 ["IsEditingEnabled"]
      205 JUMPIFEQKB                       R23 FALSE ; [+2]
      207 LOADB                            R22 0 +1
      208 LOADB                            R22 1
      209 SETTABLEKS                       R22 R21 K56 ["Disabled"]
      211 NAMECALL                         R22 R1 K45 ["getNextOrder"]
      213 CALL                             R22 1 1
      214 SETTABLEKS                       R22 R21 K7 ["LayoutOrder"]
      216 CALL                             R19 2 1
      217 JUMP                             ; [+1]
      218 LOADNIL                          R19
      219 SETTABLEKS                       R19 R18 K49 ["Checkbox"]
      221 GETUPVAL                         R19 1
      222 GETTABLEKS                       R19 R19 K4 ["createElement"]
      224 GETUPVAL                         R20 8
      225 NEWTABLE                         R21 4 0
      227 GETTABLEKS                       R22 R0 K59 ["MatchIndexes"]
      229 SETTABLEKS                       R22 R21 K59 ["MatchIndexes"]
      231 NAMECALL                         R22 R1 K45 ["getNextOrder"]
      233 CALL                             R22 1 1
      234 SETTABLEKS                       R22 R21 K7 ["LayoutOrder"]
      236 GETUPVAL                         R22 1
      237 GETTABLEKS                       R22 R22 K8 ["Tag"]
      239 GETUPVAL                         R23 3
      240 GETTABLEKS                       R23 R23 K9 ["Styling"]
      242 GETTABLEKS                       R23 R23 K10 ["joinTags"]
      244 LOADK                            R24 K60 ["VisualizationModes-TextLabel"]
      245 GETTABLEKS                       R26 R0 K12 ["IsEditingEnabled"]
      247 JUMPIFNOTEQKB                    R26 FALSE ; [+3]
      249 LOADK                            R25 K13 ["VisualizationModes-Disabled"]
      250 JUMP                             ; [+1]
      251 LOADNIL                          R25
      252 CALL                             R23 2 1
      253 SETTABLE                         R23 R21 R22
      254 GETTABLEKS                       R22 R0 K21 ["Text"]
      256 SETTABLEKS                       R22 R21 K21 ["Text"]
      258 CALL                             R19 2 1
      259 SETTABLEKS                       R19 R18 K50 ["VisualizationModeEntryTitle"]
      261 GETTABLEKS                       R20 R0 K61 ["BadgeText"]
      263 JUMPIFNOT                        R20 ; [+16]
      264 GETUPVAL                         R19 1
      265 GETTABLEKS                       R19 R19 K4 ["createElement"]
      267 GETUPVAL                         R20 9
      268 DUPTABLE                         R21 K62 [{"LayoutOrder", "Text"}]
      269 NAMECALL                         R22 R1 K45 ["getNextOrder"]
      271 CALL                             R22 1 1
      272 SETTABLEKS                       R22 R21 K7 ["LayoutOrder"]
      274 GETTABLEKS                       R22 R0 K61 ["BadgeText"]
      276 SETTABLEKS                       R22 R21 K21 ["Text"]
      278 CALL                             R19 2 1
      279 JUMP                             ; [+1]
      280 LOADNIL                          R19
      281 SETTABLEKS                       R19 R18 K51 ["Badge"]
      283 CALL                             R15 3 1
      284 SETTABLEKS                       R15 R14 K19 ["Contents"]
      286 CALL                             R11 3 1
      287 SETTABLEKS                       R11 R10 K39 ["MainEntry"]
      289 CALL                             R7 3 1
      290 SETTABLEKS                       R7 R6 K19 ["Contents"]
      292 CALL                             R3 3 -1
      293 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["OverlayMenuFocusedContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["Badge"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Packages"]
       29 GETTABLEKS                       R4 R4 K12 ["Framework"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Components"]
       38 GETTABLEKS                       R5 R5 K13 ["HighlightTextLabel"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K11 ["Packages"]
       45 GETTABLEKS                       R6 R6 K14 ["React"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K6 ["Src"]
       52 GETTABLEKS                       R7 R7 K15 ["Types"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R3 K16 ["UI"]
       57 GETTABLEKS                       R8 R7 K17 ["Checkbox"]
       59 GETTABLEKS                       R9 R3 K18 ["Util"]
       61 GETTABLEKS                       R9 R9 K19 ["LayoutOrderIterator"]
       63 GETTABLEKS                       R10 R7 K20 ["Pane"]
       65 GETTABLEKS                       R11 R7 K21 ["Tooltip"]
       67 DUPCLOSURE                       R12 K22 [PROTO_0]
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R3
       70 DUPCLOSURE                       R13 K23 [PROTO_2]
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R2
       81 RETURN                           R13 1
