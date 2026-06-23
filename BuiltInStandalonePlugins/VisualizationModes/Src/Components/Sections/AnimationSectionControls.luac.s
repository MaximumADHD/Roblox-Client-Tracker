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
      133 LOADN                            R26 16
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
      180 DUPTABLE                         R23 K53 [{"Min", "Max", "SnapIncrement", "Value", "ShowInput", "OnValueChanged", "Size"}]
      181 LOADK                            R24 K54 [0.1]
      182 SETTABLEKS                       R24 R23 K47 ["Min"]
      184 LOADN                            R24 10
      185 SETTABLEKS                       R24 R23 K48 ["Max"]
      187 LOADK                            R24 K54 [0.1]
      188 SETTABLEKS                       R24 R23 K49 ["SnapIncrement"]
      190 SETTABLEKS                       R5 R23 K50 ["Value"]
      192 LOADB                            R24 1
      193 SETTABLEKS                       R24 R23 K51 ["ShowInput"]
      195 SETTABLEKS                       R6 R23 K52 ["OnValueChanged"]
      197 GETIMPORT                        R24 K56 [UDim2.fromOffset]
      199 LOADN                            R25 230
      200 LOADN                            R26 26
      201 CALL                             R24 2 1
      202 SETTABLEKS                       R24 R23 K31 ["Size"]
      204 CALL                             R21 2 1
      205 SETTABLEKS                       R21 R20 K33 ["Slider"]
      207 CALL                             R17 3 1
      208 SETTABLEKS                       R17 R16 K26 ["Contents"]
      210 CALL                             R13 3 1
      211 SETTABLEKS                       R13 R12 K17 ["Scale"]
      213 GETUPVAL                         R13 1
      214 GETTABLEKS                       R13 R13 K12 ["createElement"]
      216 GETUPVAL                         R14 5
      217 NEWTABLE                         R15 2 0
      219 GETUPVAL                         R16 1
      220 GETTABLEKS                       R16 R16 K13 ["Tag"]
      222 LOADK                            R17 K14 ["X-Fill X-Column X-Top X-FitY"]
      223 SETTABLE                         R17 R15 R16
      224 NAMECALL                         R16 R3 K25 ["getNextOrder"]
      226 CALL                             R16 1 1
      227 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
      229 DUPTABLE                         R16 K27 [{"Contents"}]
      230 GETUPVAL                         R17 1
      231 GETTABLEKS                       R17 R17 K12 ["createElement"]
      233 GETUPVAL                         R18 5
      234 NEWTABLE                         R19 2 0
      236 GETUPVAL                         R20 1
      237 GETTABLEKS                       R20 R20 K13 ["Tag"]
      239 LOADK                            R21 K28 ["X-RowM X-Left X-Middle"]
      240 SETTABLE                         R21 R19 R20
      241 GETIMPORT                        R20 K30 [UDim2.new]
      243 LOADN                            R21 1
      244 LOADN                            R22 0
      245 LOADN                            R23 0
      246 LOADN                            R24 26
      247 CALL                             R20 4 1
      248 SETTABLEKS                       R20 R19 K31 ["Size"]
      250 DUPTABLE                         R20 K34 [{"TextContainer", "Slider"}]
      251 GETUPVAL                         R21 1
      252 GETTABLEKS                       R21 R21 K12 ["createElement"]
      254 GETUPVAL                         R22 5
      255 DUPTABLE                         R23 K35 [{"Size"}]
      256 GETIMPORT                        R24 K30 [UDim2.new]
      258 LOADN                            R25 1
      259 LOADN                            R26 16
      260 LOADN                            R27 1
      261 LOADN                            R28 0
      262 CALL                             R24 4 1
      263 SETTABLEKS                       R24 R23 K31 ["Size"]
      265 DUPTABLE                         R24 K38 [{"EntryTitle", "ToolTip"}]
      266 GETUPVAL                         R25 1
      267 GETTABLEKS                       R25 R25 K12 ["createElement"]
      269 GETUPVAL                         R26 6
      270 DUPTABLE                         R27 K40 [{"Text"}]
      271 LOADK                            R30 K41 ["StudioModes"]
      272 LOADK                            R31 K57 ["AnimationSkeletonTransparency"]
      273 NAMECALL                         R28 R1 K43 ["getText"]
      275 CALL                             R28 3 1
      276 SETTABLEKS                       R28 R27 K39 ["Text"]
      278 CALL                             R25 2 1
      279 SETTABLEKS                       R25 R24 K36 ["EntryTitle"]
      281 GETUPVAL                         R25 1
      282 GETTABLEKS                       R25 R25 K12 ["createElement"]
      284 GETUPVAL                         R26 7
      285 DUPTABLE                         R27 K45 [{"Text", "Enabled"}]
      286 LOADK                            R30 K41 ["StudioModes"]
      287 LOADK                            R31 K58 ["AnimationSkeletonTransparencyToolTip"]
      288 NAMECALL                         R28 R1 K43 ["getText"]
      290 CALL                             R28 3 1
      291 SETTABLEKS                       R28 R27 K39 ["Text"]
      293 NOT                              R28 R2
      294 SETTABLEKS                       R28 R27 K44 ["Enabled"]
      296 CALL                             R25 2 1
      297 SETTABLEKS                       R25 R24 K37 ["ToolTip"]
      299 CALL                             R21 3 1
      300 SETTABLEKS                       R21 R20 K32 ["TextContainer"]
      302 GETUPVAL                         R21 1
      303 GETTABLEKS                       R21 R21 K12 ["createElement"]
      305 GETUPVAL                         R22 8
      306 DUPTABLE                         R23 K53 [{"Min", "Max", "SnapIncrement", "Value", "ShowInput", "OnValueChanged", "Size"}]
      307 LOADN                            R24 0
      308 SETTABLEKS                       R24 R23 K47 ["Min"]
      310 LOADN                            R24 1
      311 SETTABLEKS                       R24 R23 K48 ["Max"]
      313 LOADK                            R24 K59 [0.05]
      314 SETTABLEKS                       R24 R23 K49 ["SnapIncrement"]
      316 SETTABLEKS                       R7 R23 K50 ["Value"]
      318 LOADB                            R24 1
      319 SETTABLEKS                       R24 R23 K51 ["ShowInput"]
      321 SETTABLEKS                       R8 R23 K52 ["OnValueChanged"]
      323 GETIMPORT                        R24 K56 [UDim2.fromOffset]
      325 LOADN                            R25 230
      326 LOADN                            R26 26
      327 CALL                             R24 2 1
      328 SETTABLEKS                       R24 R23 K31 ["Size"]
      330 CALL                             R21 2 1
      331 SETTABLEKS                       R21 R20 K33 ["Slider"]
      333 CALL                             R17 3 1
      334 SETTABLEKS                       R17 R16 K26 ["Contents"]
      336 CALL                             R13 3 1
      337 SETTABLEKS                       R13 R12 K18 ["Transparency"]
      339 CALL                             R9 3 -1
      340 RETURN                           R9 -1

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
