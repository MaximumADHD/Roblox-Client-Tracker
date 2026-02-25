PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 DUPTABLE                         R3 K2 [{"eventType", "path"}]
        4 GETUPVAL                         R6 3
        5 GETTABLEKS                       R5 R6 K3 ["ButtonPressed"]
        7 GETTABLEKS                       R4 R5 K4 ["rawValue"]
        9 CALL                             R4 0 1
       10 SETTABLEKS                       R4 R3 K0 ["eventType"]
       12 LOADK                            R4 K5 ["StyleSheetView/AddStyleLink"]
       13 SETTABLEKS                       R4 R3 K1 ["path"]
       15 CALL                             R2 1 -1
       16 CALL                             R1 -1 -1
       17 CALL                             R0 -1 0
       18 GETUPVAL                         R1 4
       19 GETTABLEKS                       R0 R1 K6 ["addStyleLinkToSelection"]
       21 GETUPVAL                         R2 5
       22 GETTABLEKS                       R1 R2 K7 ["StyleSheet"]
       24 CALL                             R0 1 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["StyleSheet"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+6]
        6 GETUPVAL                         R0 2
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K1 ["StudioInsertWidgetLayerCollectorAutoLinkStyleSheet"]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 2
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R1 R2 K0 ["StyleSheet"]
       15 SETTABLEKS                       R1 R0 K1 ["StudioInsertWidgetLayerCollectorAutoLinkStyleSheet"]
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["StyleSheet"]
        3 JUMPIFNOT                        R0 ; [+16]
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R5 R6 K1 ["getStyleLinkRoot"]
       11 MOVE                             R6 R4
       12 CALL                             R5 1 1
       13 JUMPIFNOT                        R5 ; [+4]
       14 GETUPVAL                         R5 3
       15 LOADB                            R6 1
       16 CALL                             R5 1 0
       17 RETURN                           R0 0
       18 FORGLOOP                         R0 2 ; [-11]
       20 GETUPVAL                         R0 3
       21 LOADB                            R1 0
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NAMECALL                         R1 R1 K0 ["Get"]
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["StudioInsertWidgetLayerCollectorAutoLinkStyleSheet"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R1 R2 K0 ["add"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K1 ["SelectionChanged"]
        9 MOVE                             R4 R0
       10 NAMECALL                         R2 R2 K2 ["Connect"]
       12 CALL                             R2 2 -1
       13 CALL                             R1 -1 0
       14 GETUPVAL                         R1 0
       15 GETUPVAL                         R2 1
       16 NAMECALL                         R2 R2 K3 ["Get"]
       18 CALL                             R2 1 -1
       19 CALL                             R1 -1 0
       20 NEWCLOSURE                       R1 P1
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U4
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R2 R3 K0 ["add"]
       26 GETUPVAL                         R3 4
       27 LOADK                            R5 K4 ["StudioInsertWidgetLayerCollectorAutoLinkStyleSheet"]
       28 NAMECALL                         R3 R3 K5 ["GetPropertyChangedSignal"]
       30 CALL                             R3 2 1
       31 MOVE                             R5 R1
       32 NAMECALL                         R3 R3 K2 ["Connect"]
       34 CALL                             R3 2 -1
       35 CALL                             R2 -1 0
       36 GETUPVAL                         R2 3
       37 GETUPVAL                         R4 4
       38 GETTABLEKS                       R3 R4 K4 ["StudioInsertWidgetLayerCollectorAutoLinkStyleSheet"]
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R4 R3 K0 ["Localization"]
        8 GETUPVAL                         R6 3
        9 GETTABLEKS                       R5 R6 K1 ["useState"]
       11 NEWTABLE                         R6 0 0
       13 CALL                             R5 1 2
       14 GETUPVAL                         R8 3
       15 GETTABLEKS                       R7 R8 K1 ["useState"]
       17 LOADNIL                          R8
       18 CALL                             R7 1 2
       19 GETUPVAL                         R10 3
       20 GETTABLEKS                       R9 R10 K1 ["useState"]
       22 LOADB                            R10 0
       23 CALL                             R9 1 2
       24 GETUPVAL                         R12 3
       25 GETTABLEKS                       R11 R12 K2 ["useCallback"]
       27 NEWCLOSURE                       R12 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          UPVAL U7
       33 CAPTURE                          VAL R0
       34 NEWTABLE                         R13 0 1
       36 GETTABLEKS                       R14 R0 K3 ["StyleSheet"]
       38 SETLIST                          R13 R14 1 [1]
       40 CALL                             R11 2 1
       41 GETUPVAL                         R13 3
       42 GETTABLEKS                       R12 R13 K2 ["useCallback"]
       44 NEWCLOSURE                       R13 P1
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U8
       48 NEWTABLE                         R14 0 2
       50 GETTABLEKS                       R15 R0 K3 ["StyleSheet"]
       52 MOVE                             R16 R7
       53 SETLIST                          R14 R15 2 [1]
       55 CALL                             R12 2 1
       56 GETUPVAL                         R14 3
       57 GETTABLEKS                       R13 R14 K4 ["useEffect"]
       59 NEWCLOSURE                       R14 P2
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R5
       62 CAPTURE                          UPVAL U7
       63 CAPTURE                          VAL R10
       64 NEWTABLE                         R15 0 1
       66 MOVE                             R16 R5
       67 SETLIST                          R15 R16 1 [1]
       69 CALL                             R13 2 0
       70 GETUPVAL                         R14 3
       71 GETTABLEKS                       R13 R14 K4 ["useEffect"]
       73 NEWCLOSURE                       R14 P3
       74 CAPTURE                          VAL R6
       75 CAPTURE                          UPVAL U9
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R8
       78 CAPTURE                          UPVAL U8
       79 NEWTABLE                         R15 0 0
       81 CALL                             R13 2 0
       82 LOADB                            R13 0
       83 LOADB                            R14 0
       84 GETTABLEKS                       R15 R0 K3 ["StyleSheet"]
       86 JUMPIFNOT                        R15 ; [+39]
       87 LOADB                            R15 0
       88 GETTABLEKS                       R16 R0 K3 ["StyleSheet"]
       90 LOADK                            R18 K5 ["StyleCategory"]
       91 NAMECALL                         R16 R16 K6 ["GetAttribute"]
       93 CALL                             R16 2 1
       94 GETTABLEKS                       R17 R0 K3 ["StyleSheet"]
       96 NAMECALL                         R17 R17 K7 ["GetAttributes"]
       98 CALL                             R17 1 3
       99 FORGPREP                         R17
      100 JUMPIFEQKS                       R20 K5 ["StyleCategory"] ; [+3]
      102 LOADB                            R15 1
      103 JUMP                             ; [+2]
      104 FORGLOOP                         R17 2 ; [-5]
      106 JUMPIFNOT                        R16 ; [+8]
      107 JUMPIFEQKS                       R16 K8 ["Tokens"] ; [+6]
      109 GETUPVAL                         R17 10
      110 MOVE                             R18 R16
      111 LOADK                            R19 K9 ["Themes"]
      112 CALL                             R17 2 1
      113 JUMPIFNOT                        R17 ; [+1]
      114 LOADB                            R13 1
      115 OR                               R13 R13 R15
      116 LOADB                            R17 1
      117 JUMPIFEQKS                       R16 K8 ["Tokens"] ; [+7]
      119 GETUPVAL                         R18 11
      120 GETTABLEKS                       R17 R18 K10 ["isTheme"]
      122 GETTABLEKS                       R18 R0 K3 ["StyleSheet"]
      124 CALL                             R17 1 1
      125 NOT                              R14 R17
      126 GETUPVAL                         R16 3
      127 GETTABLEKS                       R15 R16 K11 ["createElement"]
      129 GETUPVAL                         R16 12
      130 NEWTABLE                         R17 1 0
      132 GETUPVAL                         R19 3
      133 GETTABLEKS                       R18 R19 K12 ["Tag"]
      135 LOADK                            R19 K13 ["ScrollingAutomaticSize X-ColumnS"]
      136 SETTABLE                         R19 R17 R18
      137 DUPTABLE                         R18 K15 [{"Content"}]
      138 GETUPVAL                         R20 3
      139 GETTABLEKS                       R19 R20 K11 ["createElement"]
      141 GETUPVAL                         R20 13
      142 NEWTABLE                         R21 1 0
      144 GETUPVAL                         R23 3
      145 GETTABLEKS                       R22 R23 K12 ["Tag"]
      147 LOADK                            R23 K16 ["X-ColumnS X-FitY X-PadS X-Right"]
      148 SETTABLE                         R23 R21 R22
      149 DUPTABLE                         R22 K20 [{"TopBar", "TokenTable", "Derives"}]
      150 GETUPVAL                         R24 3
      151 GETTABLEKS                       R23 R24 K11 ["createElement"]
      153 GETUPVAL                         R24 13
      154 NEWTABLE                         R25 2 0
      156 GETUPVAL                         R27 3
      157 GETTABLEKS                       R26 R27 K12 ["Tag"]
      159 LOADK                            R27 K21 ["X-RowM X-FitY X-Right X-Middle"]
      160 SETTABLE                         R27 R25 R26
      161 LOADN                            R26 1
      162 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      164 DUPTABLE                         R26 K25 [{"Tooltip", "StyleLinkButton"}]
      165 JUMPIFNOT                        R14 ; [+45]
      166 GETUPVAL                         R28 3
      167 GETTABLEKS                       R27 R28 K11 ["createElement"]
      169 GETUPVAL                         R28 14
      170 NEWTABLE                         R29 4 0
      172 LOADK                            R32 K26 ["Control"]
      173 LOADK                            R33 K27 ["SetAutoLinkStyleSheetCheckboxTooltip"]
      174 NAMECALL                         R30 R4 K28 ["getText"]
      176 CALL                             R30 3 1
      177 SETTABLEKS                       R30 R29 K29 ["Text"]
      179 GETUPVAL                         R31 3
      180 GETTABLEKS                       R30 R31 K12 ["Tag"]
      182 LOADK                            R31 K30 ["X-Fit"]
      183 SETTABLE                         R31 R29 R30
      184 GETUPVAL                         R31 3
      185 GETTABLEKS                       R30 R31 K11 ["createElement"]
      187 GETUPVAL                         R31 15
      188 DUPTABLE                         R32 K33 [{"Checked", "OnClick", "Text"}]
      189 GETTABLEKS                       R34 R0 K3 ["StyleSheet"]
      191 JUMPIFEQ                         R7 R34 ; [+2]
      193 LOADB                            R33 0 +1
      194 LOADB                            R33 1
      195 SETTABLEKS                       R33 R32 K31 ["Checked"]
      197 SETTABLEKS                       R12 R32 K32 ["OnClick"]
      199 LOADK                            R35 K26 ["Control"]
      200 LOADK                            R36 K34 ["SetAutoLinkStyleSheetEnabled"]
      201 NAMECALL                         R33 R4 K28 ["getText"]
      203 CALL                             R33 3 1
      204 SETTABLEKS                       R33 R32 K29 ["Text"]
      206 CALL                             R30 2 1
      207 SETTABLEKS                       R30 R29 K35 ["Child"]
      209 CALL                             R27 2 1
      210 JUMP                             ; [+1]
      211 LOADNIL                          R27
      212 SETTABLEKS                       R27 R26 K23 ["Tooltip"]
      214 JUMPIFNOT                        R14 ; [+42]
      215 GETUPVAL                         R28 3
      216 GETTABLEKS                       R27 R28 K11 ["createElement"]
      218 GETUPVAL                         R28 16
      219 NEWTABLE                         R29 8 0
      221 LOADN                            R30 2
      222 SETTABLEKS                       R30 R29 K22 ["LayoutOrder"]
      224 GETUPVAL                         R31 17
      225 GETTABLEKS                       R30 R31 K36 ["getClassIcon"]
      227 LOADK                            R31 K37 ["StyleLink"]
      228 CALL                             R30 1 1
      229 SETTABLEKS                       R30 R29 K38 ["LeftIcon"]
      231 SETTABLEKS                       R11 R29 K32 ["OnClick"]
      233 LOADK                            R32 K26 ["Control"]
      234 LOADK                            R33 K39 ["InsertStyleLinkButton"]
      235 NAMECALL                         R30 R4 K28 ["getText"]
      237 CALL                             R30 3 1
      238 SETTABLEKS                       R30 R29 K29 ["Text"]
      240 LOADK                            R32 K26 ["Control"]
      241 LOADK                            R33 K40 ["InsertStyleLinkButtonTooltip"]
      242 NAMECALL                         R30 R4 K28 ["getText"]
      244 CALL                             R30 3 1
      245 SETTABLEKS                       R30 R29 K41 ["TooltipText"]
      247 GETUPVAL                         R31 3
      248 GETTABLEKS                       R30 R31 K12 ["Tag"]
      250 JUMPIFNOT                        R9 ; [+2]
      251 LOADNIL                          R31
      252 JUMP                             ; [+1]
      253 LOADK                            R31 K42 ["Disabled"]
      254 SETTABLE                         R31 R29 R30
      255 CALL                             R27 2 1
      256 JUMP                             ; [+1]
      257 LOADNIL                          R27
      258 SETTABLEKS                       R27 R26 K24 ["StyleLinkButton"]
      260 CALL                             R23 3 1
      261 SETTABLEKS                       R23 R22 K17 ["TopBar"]
      263 JUMPIFNOT                        R13 ; [+14]
      264 GETUPVAL                         R24 3
      265 GETTABLEKS                       R23 R24 K11 ["createElement"]
      267 GETUPVAL                         R24 18
      268 DUPTABLE                         R25 K44 [{"RootInstance", "LayoutOrder"}]
      269 GETTABLEKS                       R26 R0 K3 ["StyleSheet"]
      271 SETTABLEKS                       R26 R25 K43 ["RootInstance"]
      273 LOADN                            R26 2
      274 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      276 CALL                             R23 2 1
      277 JUMP                             ; [+1]
      278 LOADNIL                          R23
      279 SETTABLEKS                       R23 R22 K18 ["TokenTable"]
      281 GETUPVAL                         R24 3
      282 GETTABLEKS                       R23 R24 K11 ["createElement"]
      284 GETUPVAL                         R24 19
      285 DUPTABLE                         R25 K45 [{"LayoutOrder", "StyleSheet"}]
      286 LOADN                            R26 3
      287 SETTABLEKS                       R26 R25 K22 ["LayoutOrder"]
      289 GETTABLEKS                       R26 R0 K3 ["StyleSheet"]
      291 SETTABLEKS                       R26 R25 K3 ["StyleSheet"]
      293 CALL                             R23 2 1
      294 SETTABLEKS                       R23 R22 K19 ["Derives"]
      296 CALL                             R19 3 1
      297 SETTABLEKS                       R19 R18 K14 ["Content"]
      299 CALL                             R15 3 -1
      300 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StarterGui"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R5 K6 [script]
       15 GETTABLEKS                       R4 R5 K7 ["Parent"]
       17 GETTABLEKS                       R3 R4 K7 ["Parent"]
       19 GETTABLEKS                       R2 R3 K7 ["Parent"]
       21 GETIMPORT                        R3 K9 [require]
       23 GETTABLEKS                       R5 R2 K10 ["Packages"]
       25 GETTABLEKS                       R4 R5 K11 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K9 [require]
       30 GETTABLEKS                       R6 R2 K10 ["Packages"]
       32 GETTABLEKS                       R5 R6 K12 ["Framework"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K9 [require]
       37 GETTABLEKS                       R7 R2 K10 ["Packages"]
       39 GETTABLEKS                       R6 R7 K13 ["Dash"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R4 K14 ["UI"]
       44 GETTABLEKS                       R7 R6 K15 ["ScrollingFrame"]
       46 GETTABLEKS                       R8 R6 K16 ["Pane"]
       48 GETTABLEKS                       R9 R6 K17 ["IconButton"]
       50 GETTABLEKS                       R10 R6 K18 ["Checkbox"]
       52 GETTABLEKS                       R11 R6 K19 ["Tooltip"]
       54 GETIMPORT                        R12 K9 [require]
       56 GETTABLEKS                       R15 R2 K20 ["Src"]
       58 GETTABLEKS                       R14 R15 K21 ["Util"]
       60 GETTABLEKS                       R13 R14 K22 ["MenuHelpers"]
       62 CALL                             R12 1 1
       63 GETIMPORT                        R13 K9 [require]
       65 GETTABLEKS                       R16 R2 K20 ["Src"]
       67 GETTABLEKS                       R15 R16 K23 ["Hooks"]
       69 GETTABLEKS                       R14 R15 K24 ["useFrameworkContext"]
       71 CALL                             R13 1 1
       72 GETIMPORT                        R14 K9 [require]
       74 GETTABLEKS                       R17 R2 K20 ["Src"]
       76 GETTABLEKS                       R16 R17 K23 ["Hooks"]
       78 GETTABLEKS                       R15 R16 K25 ["useDispatch"]
       80 CALL                             R14 1 1
       81 GETIMPORT                        R15 K9 [require]
       83 GETTABLEKS                       R18 R2 K20 ["Src"]
       85 GETTABLEKS                       R17 R18 K23 ["Hooks"]
       87 GETTABLEKS                       R16 R17 K26 ["useSignalConnectionList"]
       89 CALL                             R15 1 1
       90 GETIMPORT                        R16 K9 [require]
       92 GETTABLEKS                       R19 R2 K20 ["Src"]
       94 GETTABLEKS                       R18 R19 K21 ["Util"]
       96 GETTABLEKS                       R17 R18 K27 ["SelectorHelpers"]
       98 CALL                             R16 1 1
       99 GETIMPORT                        R17 K9 [require]
      101 GETTABLEKS                       R20 R2 K20 ["Src"]
      103 GETTABLEKS                       R19 R20 K21 ["Util"]
      105 GETTABLEKS                       R18 R19 K28 ["DesignHelpers"]
      107 CALL                             R17 1 1
      108 GETIMPORT                        R18 K9 [require]
      110 GETTABLEKS                       R21 R2 K20 ["Src"]
      112 GETTABLEKS                       R20 R21 K29 ["Components"]
      114 GETTABLEKS                       R19 R20 K30 ["TokenTable"]
      116 CALL                             R18 1 1
      117 GETIMPORT                        R19 K9 [require]
      119 GETTABLEKS                       R22 R2 K20 ["Src"]
      121 GETTABLEKS                       R21 R22 K29 ["Components"]
      123 GETTABLEKS                       R20 R21 K31 ["DerivesTable"]
      125 CALL                             R19 1 1
      126 GETIMPORT                        R20 K9 [require]
      128 GETTABLEKS                       R24 R2 K20 ["Src"]
      130 GETTABLEKS                       R23 R24 K32 ["Resources"]
      132 GETTABLEKS                       R22 R23 K33 ["Telemetry"]
      134 GETTABLEKS                       R21 R22 K34 ["ActionClickedEvent"]
      136 CALL                             R20 1 1
      137 GETIMPORT                        R21 K9 [require]
      139 GETTABLEKS                       R24 R2 K20 ["Src"]
      141 GETTABLEKS                       R23 R24 K35 ["Enums"]
      143 GETTABLEKS                       R22 R23 K36 ["ActionClickedEventType"]
      145 CALL                             R21 1 1
      146 GETIMPORT                        R22 K9 [require]
      148 GETTABLEKS                       R26 R2 K20 ["Src"]
      150 GETTABLEKS                       R25 R26 K37 ["Thunks"]
      152 GETTABLEKS                       R24 R25 K33 ["Telemetry"]
      154 GETTABLEKS                       R23 R24 K38 ["SendTelemetryEvent"]
      156 CALL                             R22 1 1
      157 GETTABLEKS                       R23 R5 K39 ["startsWith"]
      159 DUPCLOSURE                       R24 K40 [PROTO_6]
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R15
      162 CAPTURE                          VAL R13
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R22
      165 CAPTURE                          VAL R20
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R16
      168 CAPTURE                          VAL R1
      169 CAPTURE                          VAL R0
      170 CAPTURE                          VAL R23
      171 CAPTURE                          VAL R17
      172 CAPTURE                          VAL R7
      173 CAPTURE                          VAL R8
      174 CAPTURE                          VAL R11
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R9
      177 CAPTURE                          VAL R12
      178 CAPTURE                          VAL R18
      179 CAPTURE                          VAL R19
      180 RETURN                           R24 1
