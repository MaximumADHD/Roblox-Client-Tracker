PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Localization"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useContext"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["Context"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R2 R2 K4 ["overlayFocused"]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K5 ["new"]
       18 CALL                             R3 0 1
       19 GETUPVAL                         R4 4
       20 GETIMPORT                        R5 K7 [settings]
       22 CALL                             R5 0 1
       23 GETTABLEKS                       R5 R5 K8 ["Studio"]
       25 LOADK                            R6 K9 ["Show Animation Skeleton"]
       26 LOADB                            R7 0
       27 CALL                             R4 3 1
       28 GETUPVAL                         R5 4
       29 GETIMPORT                        R6 K7 [settings]
       31 CALL                             R6 0 1
       32 GETTABLEKS                       R6 R6 K8 ["Studio"]
       34 LOADK                            R7 K10 ["Animation Skeleton Scale"]
       35 LOADN                            R8 1
       36 CALL                             R5 3 2
       37 GETUPVAL                         R7 4
       38 GETIMPORT                        R8 K7 [settings]
       40 CALL                             R8 0 1
       41 GETTABLEKS                       R8 R8 K8 ["Studio"]
       43 LOADK                            R9 K11 ["Animation Skeleton Transparency"]
       44 LOADN                            R10 0
       45 CALL                             R7 3 2
       46 JUMPIF                           R4 ; [+2]
       47 LOADNIL                          R9
       48 RETURN                           R9 1
       49 GETUPVAL                         R9 1
       50 GETTABLEKS                       R9 R9 K12 ["createElement"]
       52 GETUPVAL                         R10 5
       53 NEWTABLE                         R11 2 0
       55 GETUPVAL                         R12 1
       56 GETTABLEKS                       R12 R12 K13 ["Tag"]
       58 LOADK                            R13 K14 ["X-Fill X-Column X-Top X-FitY"]
       59 SETTABLE                         R13 R11 R12
       60 GETTABLEKS                       R12 R0 K15 ["LayoutOrder"]
       62 SETTABLEKS                       R12 R11 K15 ["LayoutOrder"]
       64 DUPTABLE                         R12 K19 [{"UIPadding", "Scale", "Transparency"}]
       65 GETUPVAL                         R13 1
       66 GETTABLEKS                       R13 R13 K12 ["createElement"]
       68 LOADK                            R14 K16 ["UIPadding"]
       69 DUPTABLE                         R15 K22 [{"PaddingLeft", "PaddingRight"}]
       70 GETIMPORT                        R16 K24 [UDim.new]
       72 LOADN                            R17 0
       73 LOADN                            R18 22
       74 CALL                             R16 2 1
       75 SETTABLEKS                       R16 R15 K20 ["PaddingLeft"]
       77 GETIMPORT                        R16 K24 [UDim.new]
       79 LOADN                            R17 0
       80 LOADN                            R18 3
       81 CALL                             R16 2 1
       82 SETTABLEKS                       R16 R15 K21 ["PaddingRight"]
       84 CALL                             R13 2 1
       85 SETTABLEKS                       R13 R12 K16 ["UIPadding"]
       87 GETUPVAL                         R13 1
       88 GETTABLEKS                       R13 R13 K12 ["createElement"]
       90 GETUPVAL                         R14 5
       91 NEWTABLE                         R15 2 0
       93 GETUPVAL                         R16 1
       94 GETTABLEKS                       R16 R16 K13 ["Tag"]
       96 LOADK                            R17 K14 ["X-Fill X-Column X-Top X-FitY"]
       97 SETTABLE                         R17 R15 R16
       98 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      100 CALL                             R16 1 1
      101 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
      103 DUPTABLE                         R16 K27 [{"Contents"}]
      104 GETUPVAL                         R17 1
      105 GETTABLEKS                       R17 R17 K12 ["createElement"]
      107 GETUPVAL                         R18 5
      108 NEWTABLE                         R19 2 0
      110 GETUPVAL                         R20 1
      111 GETTABLEKS                       R20 R20 K13 ["Tag"]
      113 LOADK                            R21 K28 ["X-RowM X-Left X-Middle"]
      114 SETTABLE                         R21 R19 R20
      115 GETIMPORT                        R20 K30 [UDim2.new]
      117 LOADN                            R21 1
      118 LOADN                            R22 0
      119 LOADN                            R23 0
      120 LOADN                            R24 26
      121 CALL                             R20 4 1
      122 SETTABLEKS                       R20 R19 K31 ["Size"]
      124 DUPTABLE                         R20 K34 [{"TextContainer", "Slider"}]
      125 GETUPVAL                         R21 1
      126 GETTABLEKS                       R21 R21 K12 ["createElement"]
      128 GETUPVAL                         R22 5
      129 DUPTABLE                         R23 K35 [{"Size"}]
      130 GETIMPORT                        R24 K30 [UDim2.new]
      132 LOADN                            R25 1
      133 LOADN                            R26 -240
      134 LOADN                            R27 1
      135 LOADN                            R28 0
      136 CALL                             R24 4 1
      137 SETTABLEKS                       R24 R23 K31 ["Size"]
      139 DUPTABLE                         R24 K38 [{"EntryTitle", "ToolTip"}]
      140 GETUPVAL                         R25 1
      141 GETTABLEKS                       R25 R25 K12 ["createElement"]
      143 GETUPVAL                         R26 6
      144 DUPTABLE                         R27 K40 [{"Text"}]
      145 LOADK                            R30 K41 ["StudioModes"]
      146 LOADK                            R31 K42 ["AnimationSkeletonScale"]
      147 NAMECALL                         R28 R1 K43 ["getText"]
      149 CALL                             R28 3 1
      150 SETTABLEKS                       R28 R27 K39 ["Text"]
      152 CALL                             R25 2 1
      153 SETTABLEKS                       R25 R24 K36 ["EntryTitle"]
      155 GETUPVAL                         R25 1
      156 GETTABLEKS                       R25 R25 K12 ["createElement"]
      158 GETUPVAL                         R26 7
      159 DUPTABLE                         R27 K45 [{"Text", "Enabled"}]
      160 LOADK                            R30 K41 ["StudioModes"]
      161 LOADK                            R31 K46 ["AnimationSkeletonScaleToolTip"]
      162 NAMECALL                         R28 R1 K43 ["getText"]
      164 CALL                             R28 3 1
      165 SETTABLEKS                       R28 R27 K39 ["Text"]
      167 NOT                              R28 R2
      168 SETTABLEKS                       R28 R27 K44 ["Enabled"]
      170 CALL                             R25 2 1
      171 SETTABLEKS                       R25 R24 K37 ["ToolTip"]
      173 CALL                             R21 3 1
      174 SETTABLEKS                       R21 R20 K32 ["TextContainer"]
      176 GETUPVAL                         R21 1
      177 GETTABLEKS                       R21 R21 K12 ["createElement"]
      179 GETUPVAL                         R22 8
      180 DUPTABLE                         R23 K56 [{["Min"] = 0.1, ["Max"] = 10, ["SnapIncrement"] = 0.1, ["Value"], ["ShowInput"] = True, ["OnValueChanged"], ["Size"]}]
      181 SETTABLEKS                       R5 R23 K52 ["Value"]
      183 SETTABLEKS                       R6 R23 K55 ["OnValueChanged"]
      185 GETIMPORT                        R24 K58 [UDim2.fromOffset]
      187 LOADN                            R25 230
      188 LOADN                            R26 26
      189 CALL                             R24 2 1
      190 SETTABLEKS                       R24 R23 K31 ["Size"]
      192 CALL                             R21 2 1
      193 SETTABLEKS                       R21 R20 K33 ["Slider"]
      195 CALL                             R17 3 1
      196 SETTABLEKS                       R17 R16 K26 ["Contents"]
      198 CALL                             R13 3 1
      199 SETTABLEKS                       R13 R12 K17 ["Scale"]
      201 GETUPVAL                         R13 1
      202 GETTABLEKS                       R13 R13 K12 ["createElement"]
      204 GETUPVAL                         R14 5
      205 NEWTABLE                         R15 2 0
      207 GETUPVAL                         R16 1
      208 GETTABLEKS                       R16 R16 K13 ["Tag"]
      210 LOADK                            R17 K14 ["X-Fill X-Column X-Top X-FitY"]
      211 SETTABLE                         R17 R15 R16
      212 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      214 CALL                             R16 1 1
      215 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
      217 DUPTABLE                         R16 K27 [{"Contents"}]
      218 GETUPVAL                         R17 1
      219 GETTABLEKS                       R17 R17 K12 ["createElement"]
      221 GETUPVAL                         R18 5
      222 NEWTABLE                         R19 2 0
      224 GETUPVAL                         R20 1
      225 GETTABLEKS                       R20 R20 K13 ["Tag"]
      227 LOADK                            R21 K28 ["X-RowM X-Left X-Middle"]
      228 SETTABLE                         R21 R19 R20
      229 GETIMPORT                        R20 K30 [UDim2.new]
      231 LOADN                            R21 1
      232 LOADN                            R22 0
      233 LOADN                            R23 0
      234 LOADN                            R24 26
      235 CALL                             R20 4 1
      236 SETTABLEKS                       R20 R19 K31 ["Size"]
      238 DUPTABLE                         R20 K34 [{"TextContainer", "Slider"}]
      239 GETUPVAL                         R21 1
      240 GETTABLEKS                       R21 R21 K12 ["createElement"]
      242 GETUPVAL                         R22 5
      243 DUPTABLE                         R23 K35 [{"Size"}]
      244 GETIMPORT                        R24 K30 [UDim2.new]
      246 LOADN                            R25 1
      247 LOADN                            R26 -240
      248 LOADN                            R27 1
      249 LOADN                            R28 0
      250 CALL                             R24 4 1
      251 SETTABLEKS                       R24 R23 K31 ["Size"]
      253 DUPTABLE                         R24 K38 [{"EntryTitle", "ToolTip"}]
      254 GETUPVAL                         R25 1
      255 GETTABLEKS                       R25 R25 K12 ["createElement"]
      257 GETUPVAL                         R26 6
      258 DUPTABLE                         R27 K40 [{"Text"}]
      259 LOADK                            R30 K41 ["StudioModes"]
      260 LOADK                            R31 K59 ["AnimationSkeletonTransparency"]
      261 NAMECALL                         R28 R1 K43 ["getText"]
      263 CALL                             R28 3 1
      264 SETTABLEKS                       R28 R27 K39 ["Text"]
      266 CALL                             R25 2 1
      267 SETTABLEKS                       R25 R24 K36 ["EntryTitle"]
      269 GETUPVAL                         R25 1
      270 GETTABLEKS                       R25 R25 K12 ["createElement"]
      272 GETUPVAL                         R26 7
      273 DUPTABLE                         R27 K45 [{"Text", "Enabled"}]
      274 LOADK                            R30 K41 ["StudioModes"]
      275 LOADK                            R31 K60 ["AnimationSkeletonTransparencyToolTip"]
      276 NAMECALL                         R28 R1 K43 ["getText"]
      278 CALL                             R28 3 1
      279 SETTABLEKS                       R28 R27 K39 ["Text"]
      281 NOT                              R28 R2
      282 SETTABLEKS                       R28 R27 K44 ["Enabled"]
      284 CALL                             R25 2 1
      285 SETTABLEKS                       R25 R24 K37 ["ToolTip"]
      287 CALL                             R21 3 1
      288 SETTABLEKS                       R21 R20 K32 ["TextContainer"]
      290 GETUPVAL                         R21 1
      291 GETTABLEKS                       R21 R21 K12 ["createElement"]
      293 GETUPVAL                         R22 8
      294 DUPTABLE                         R23 K64 [{["Min"] = 0, ["Max"] = 1, ["SnapIncrement"] = 0.05, ["Value"], ["ShowInput"] = True, ["OnValueChanged"], ["Size"]}]
      295 SETTABLEKS                       R7 R23 K52 ["Value"]
      297 SETTABLEKS                       R8 R23 K55 ["OnValueChanged"]
      299 GETIMPORT                        R24 K58 [UDim2.fromOffset]
      301 LOADN                            R25 230
      302 LOADN                            R26 26
      303 CALL                             R24 2 1
      304 SETTABLEKS                       R24 R23 K31 ["Size"]
      306 CALL                             R21 2 1
      307 SETTABLEKS                       R21 R20 K33 ["Slider"]
      309 CALL                             R17 3 1
      310 SETTABLEKS                       R17 R16 K26 ["Contents"]
      312 CALL                             R13 3 1
      313 SETTABLEKS                       R13 R12 K18 ["Transparency"]
      315 CALL                             R9 3 -1
      316 RETURN                           R9 -1

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
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Components"]
       29 GETTABLEKS                       R4 R4 K12 ["HighlightTextLabel"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Packages"]
       36 GETTABLEKS                       R5 R5 K13 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["Hooks"]
       45 GETTABLEKS                       R6 R6 K15 ["useInstanceSetting"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R2 K16 ["UI"]
       50 GETTABLEKS                       R7 R2 K17 ["ContextServices"]
       52 GETTABLEKS                       R8 R6 K18 ["Pane"]
       54 GETTABLEKS                       R9 R6 K19 ["Slider"]
       56 GETTABLEKS                       R10 R2 K20 ["Util"]
       58 GETTABLEKS                       R10 R10 K21 ["LayoutOrderIterator"]
       60 GETTABLEKS                       R11 R6 K22 ["Tooltip"]
       62 DUPCLOSURE                       R12 K23 [PROTO_0]
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R9
       72 RETURN                           R12 1
