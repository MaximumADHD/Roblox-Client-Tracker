PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetAvailableViewModesAsync"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["GetViewModeAsync"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 LOADNIL                          R0
        7 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["SetViewModeAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETIMPORT                        R1 K2 [task.spawn]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 LOADB                            R3 0
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["Localization"]
        5 NAMECALL                         R2 R2 K1 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K2 ["new"]
       11 CALL                             R3 0 1
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R4 R5 K3 ["useContext"]
       15 GETUPVAL                         R6 4
       16 GETTABLEKS                       R5 R6 K4 ["Context"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R4 K5 ["overlayFocused"]
       21 GETTABLEKS                       R6 R4 K6 ["setOverlayFocused"]
       23 GETUPVAL                         R9 3
       24 GETTABLEKS                       R8 R9 K3 ["useContext"]
       26 GETUPVAL                         R10 5
       27 GETTABLEKS                       R9 R10 K4 ["Context"]
       29 CALL                             R8 1 1
       30 GETTABLEKS                       R7 R8 K7 ["renderingModesBridge"]
       32 GETUPVAL                         R8 6
       33 NEWCLOSURE                       R9 P0
       34 CAPTURE                          VAL R7
       35 NEWTABLE                         R10 0 1
       37 MOVE                             R11 R7
       38 SETLIST                          R10 R11 1 [1]
       40 CALL                             R8 2 1
       41 GETUPVAL                         R10 3
       42 GETTABLEKS                       R9 R10 K8 ["useState"]
       44 LOADNIL                          R10
       45 CALL                             R9 1 2
       46 GETUPVAL                         R11 6
       47 NEWCLOSURE                       R12 P1
       48 CAPTURE                          VAL R10
       49 CAPTURE                          VAL R7
       50 NEWTABLE                         R13 0 1
       52 MOVE                             R14 R7
       53 SETLIST                          R13 R14 1 [1]
       55 CALL                             R11 2 0
       56 GETUPVAL                         R12 3
       57 GETTABLEKS                       R11 R12 K9 ["useCallback"]
       59 NEWCLOSURE                       R12 P2
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R7
       62 NEWTABLE                         R13 0 1
       64 MOVE                             R14 R7
       65 SETLIST                          R13 R14 1 [1]
       67 CALL                             R11 2 1
       68 GETUPVAL                         R13 1
       69 GETTABLEKS                       R12 R13 K10 ["Focus"]
       71 NAMECALL                         R12 R12 K1 ["use"]
       73 CALL                             R12 1 1
       74 NAMECALL                         R12 R12 K11 ["get"]
       76 CALL                             R12 1 1
       77 GETUPVAL                         R14 3
       78 GETTABLEKS                       R13 R14 K12 ["createElement"]
       80 GETUPVAL                         R14 7
       81 NEWTABLE                         R15 4 0
       83 GETUPVAL                         R17 3
       84 GETTABLEKS                       R16 R17 K13 ["Tag"]
       86 LOADK                            R17 K14 ["X-RowM X-Left X-Middle"]
       87 SETTABLE                         R17 R15 R16
       88 GETTABLEKS                       R16 R0 K15 ["LayoutOrder"]
       90 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
       92 GETIMPORT                        R16 K17 [UDim2.new]
       94 LOADN                            R17 1
       95 LOADN                            R18 250
       96 LOADN                            R19 0
       97 LOADN                            R20 32
       98 CALL                             R16 4 1
       99 SETTABLEKS                       R16 R15 K18 ["Size"]
      101 SETTABLEKS                       R1 R15 K19 ["Visible"]
      103 DUPTABLE                         R16 K22 [{"TextContainer", "DropdownMenu"}]
      104 GETUPVAL                         R18 3
      105 GETTABLEKS                       R17 R18 K12 ["createElement"]
      107 GETUPVAL                         R18 7
      108 DUPTABLE                         R19 K23 [{"Size", "LayoutOrder"}]
      109 GETIMPORT                        R20 K17 [UDim2.new]
      111 LOADN                            R21 1
      112 LOADN                            R22 101
      113 LOADN                            R23 1
      114 LOADN                            R24 0
      115 CALL                             R20 4 1
      116 SETTABLEKS                       R20 R19 K18 ["Size"]
      118 NAMECALL                         R20 R3 K24 ["getNextOrder"]
      120 CALL                             R20 1 1
      121 SETTABLEKS                       R20 R19 K15 ["LayoutOrder"]
      123 DUPTABLE                         R20 K27 [{"RenderingModeEntryTitle", "ToolTip"}]
      124 GETUPVAL                         R22 3
      125 GETTABLEKS                       R21 R22 K12 ["createElement"]
      127 GETUPVAL                         R22 8
      128 DUPTABLE                         R23 K29 [{"Text"}]
      129 LOADK                            R26 K30 ["ViewSection"]
      130 LOADK                            R27 K31 ["RenderingMode"]
      131 NAMECALL                         R24 R2 K32 ["getText"]
      133 CALL                             R24 3 1
      134 SETTABLEKS                       R24 R23 K28 ["Text"]
      136 CALL                             R21 2 1
      137 SETTABLEKS                       R21 R20 K25 ["RenderingModeEntryTitle"]
      139 GETUPVAL                         R22 3
      140 GETTABLEKS                       R21 R22 K12 ["createElement"]
      142 GETUPVAL                         R22 9
      143 DUPTABLE                         R23 K34 [{"Text", "Enabled"}]
      144 LOADK                            R26 K30 ["ViewSection"]
      145 LOADK                            R27 K35 ["RenderingModeToolTip"]
      146 NAMECALL                         R24 R2 K32 ["getText"]
      148 CALL                             R24 3 1
      149 SETTABLEKS                       R24 R23 K28 ["Text"]
      151 NOT                              R24 R5
      152 SETTABLEKS                       R24 R23 K33 ["Enabled"]
      154 CALL                             R21 2 1
      155 SETTABLEKS                       R21 R20 K26 ["ToolTip"]
      157 CALL                             R17 3 1
      158 SETTABLEKS                       R17 R16 K20 ["TextContainer"]
      160 LOADB                            R17 0
      161 GETTABLEKS                       R18 R8 K36 ["status"]
      163 JUMPIFNOTEQKS                    R18 K37 ["ok"] ; [+54]
      165 MOVE                             R17 R9
      166 JUMPIFNOT                        R17 ; [+51]
      167 GETUPVAL                         R18 3
      168 GETTABLEKS                       R17 R18 K12 ["createElement"]
      170 GETUPVAL                         R18 10
      171 DUPTABLE                         R19 K44 [{"Items", "OnItemActivated", "OnMouseEnter", "OnMouseLeave", "TextTruncate", "Focus", "SelectedIndex", "Size", "LayoutOrder"}]
      172 GETTABLEKS                       R20 R8 K45 ["value"]
      174 SETTABLEKS                       R20 R19 K38 ["Items"]
      176 NEWCLOSURE                       R20 P3
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R6
      179 SETTABLEKS                       R20 R19 K39 ["OnItemActivated"]
      181 NEWCLOSURE                       R20 P4
      182 CAPTURE                          VAL R6
      183 SETTABLEKS                       R20 R19 K40 ["OnMouseEnter"]
      185 NEWCLOSURE                       R20 P5
      186 CAPTURE                          VAL R6
      187 SETTABLEKS                       R20 R19 K41 ["OnMouseLeave"]
      189 GETIMPORT                        R20 K48 [Enum.TextTruncate.AtEnd]
      191 SETTABLEKS                       R20 R19 K42 ["TextTruncate"]
      193 SETTABLEKS                       R12 R19 K10 ["Focus"]
      195 GETIMPORT                        R20 K51 [table.find]
      197 GETTABLEKS                       R21 R8 K45 ["value"]
      199 MOVE                             R22 R9
      200 CALL                             R20 2 1
      201 SETTABLEKS                       R20 R19 K43 ["SelectedIndex"]
      203 GETIMPORT                        R20 K17 [UDim2.new]
      205 LOADN                            R21 0
      206 LOADN                            R22 150
      207 LOADN                            R23 0
      208 LOADN                            R24 26
      209 CALL                             R20 4 1
      210 SETTABLEKS                       R20 R19 K18 ["Size"]
      212 NAMECALL                         R20 R3 K24 ["getNextOrder"]
      214 CALL                             R20 1 1
      215 SETTABLEKS                       R20 R19 K15 ["LayoutOrder"]
      217 CALL                             R17 2 1
      218 SETTABLEKS                       R17 R16 K21 ["DropdownMenu"]
      220 CALL                             R13 3 -1
      221 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Components"]
       20 GETTABLEKS                       R3 R4 K10 ["HighlightTextLabel"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R6 K12 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R10 R0 K6 ["Packages"]
       41 GETTABLEKS                       R9 R10 K13 ["_Index"]
       43 GETTABLEKS                       R8 R9 K14 ["ReactUtils"]
       45 GETTABLEKS                       R7 R8 K14 ["ReactUtils"]
       47 GETTABLEKS                       R6 R7 K15 ["useAsync"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K8 ["Src"]
       54 GETTABLEKS                       R8 R9 K16 ["Contexts"]
       56 GETTABLEKS                       R7 R8 K17 ["RenderingModesBridgeContext"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R10 R0 K8 ["Src"]
       63 GETTABLEKS                       R9 R10 K16 ["Contexts"]
       65 GETTABLEKS                       R8 R9 K18 ["OverlayMenuFocusedContext"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R11 R0 K8 ["Src"]
       72 GETTABLEKS                       R10 R11 K19 ["Flags"]
       74 GETTABLEKS                       R9 R10 K20 ["getFFlagStudioRenderingSettingsViewMode"]
       76 CALL                             R8 1 1
       77 GETTABLEKS                       R9 R1 K21 ["UI"]
       79 GETTABLEKS                       R10 R1 K22 ["ContextServices"]
       81 GETTABLEKS                       R11 R9 K23 ["Pane"]
       83 GETTABLEKS                       R12 R9 K24 ["SelectInput"]
       85 GETTABLEKS                       R14 R1 K25 ["Util"]
       87 GETTABLEKS                       R13 R14 K26 ["LayoutOrderIterator"]
       89 GETTABLEKS                       R14 R9 K27 ["Tooltip"]
       91 DUPCLOSURE                       R15 K28 [PROTO_7]
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R12
      103 RETURN                           R15 1
