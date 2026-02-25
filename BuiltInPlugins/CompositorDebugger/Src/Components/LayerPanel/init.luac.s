PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["state"]
        3 GETTABLEKS                       R2 R3 K1 ["selectedTab"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K2 ["props"]
       11 GETTABLEKS                       R2 R3 K3 ["Analytics"]
       13 LOADK                            R4 K4 ["onLayerTabChanged"]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K5 ["LAYER_TABS"]
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R8 R9 K0 ["state"]
       20 GETTABLEKS                       R7 R8 K1 ["selectedTab"]
       22 GETTABLE                         R5 R6 R7
       23 GETUPVAL                         R8 1
       24 GETTABLEKS                       R7 R8 K5 ["LAYER_TABS"]
       26 GETTABLE                         R6 R7 R0
       27 MOVE                             R7 R1
       28 GETIMPORT                        R9 K8 [os.clock]
       30 CALL                             R9 0 1
       31 GETUPVAL                         R12 0
       32 GETTABLEKS                       R11 R12 K0 ["state"]
       34 GETTABLEKS                       R10 R11 K9 ["lastTabSwitch"]
       36 SUB                              R8 R9 R10
       37 NAMECALL                         R2 R2 K10 ["report"]
       39 CALL                             R2 6 0
       40 GETUPVAL                         R2 0
       41 DUPTABLE                         R4 K12 [{"lastTabSwitch", "oldTab", "selectedTab"}]
       42 GETIMPORT                        R5 K8 [os.clock]
       44 CALL                             R5 0 1
       45 SETTABLEKS                       R5 R4 K9 ["lastTabSwitch"]
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R6 R7 K0 ["state"]
       50 GETTABLEKS                       R5 R6 K1 ["selectedTab"]
       52 SETTABLEKS                       R5 R4 K11 ["oldTab"]
       54 SETTABLEKS                       R0 R4 K1 ["selectedTab"]
       56 NAMECALL                         R2 R2 K13 ["setState"]
       58 CALL                             R2 2 0
       59 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K3 [{"lastTabSwitch", "selectedTab", "oldTab"}]
        1 GETIMPORT                        R2 K6 [os.clock]
        3 CALL                             R2 0 1
        4 SETTABLEKS                       R2 R1 K0 ["lastTabSwitch"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K7 ["LAYER_TABS"]
        9 GETTABLEKS                       R2 R3 K8 ["LayerData"]
       11 SETTABLEKS                       R2 R1 K1 ["selectedTab"]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K7 ["LAYER_TABS"]
       16 GETTABLEKS                       R2 R3 K8 ["LayerData"]
       18 SETTABLEKS                       R2 R1 K2 ["oldTab"]
       20 SETTABLEKS                       R1 R0 K9 ["state"]
       22 NEWCLOSURE                       R1 P0
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U1
       25 SETTABLEKS                       R1 R0 K10 ["switchToTab"]
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Visualizers"]
        3 GETTABLEKS                       R3 R4 K1 ["getModule"]
        5 MOVE                             R4 R1
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKNIL                  R3 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R2 K2 ["HistoryField"]
        6 JUMPIFNOT                        R4 ; [+14]
        7 GETTABLEKS                       R5 R2 K2 ["HistoryField"]
        9 GETTABLEKS                       R4 R5 K3 ["id"]
       11 JUMPIFNOT                        R4 ; [+9]
       12 GETTABLEKS                       R5 R2 K2 ["HistoryField"]
       14 GETTABLEKS                       R4 R5 K4 ["section"]
       16 JUMPIFNOT                        R4 ; [+4]
       17 GETTABLEKS                       R5 R2 K2 ["HistoryField"]
       19 GETTABLEKS                       R4 R5 K5 ["field"]
       21 GETTABLEKS                       R5 R3 K6 ["selectedTab"]
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K7 ["LAYER_TABS"]
       26 GETTABLEKS                       R6 R7 K8 ["History"]
       28 JUMPIFNOTEQ                      R5 R6 ; [+2]
       30 JUMPIFNOT                        R4 ; [+15]
       31 GETTABLEKS                       R5 R3 K6 ["selectedTab"]
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R7 R8 K7 ["LAYER_TABS"]
       36 GETTABLEKS                       R6 R7 K9 ["Visualization"]
       38 JUMPIFNOTEQ                      R5 R6 ; [+21]
       40 GETTABLEKS                       R7 R2 K10 ["LayerData"]
       42 NAMECALL                         R5 R0 K11 ["isVisualizationEnabled"]
       44 CALL                             R5 2 1
       45 JUMPIF                           R5 ; [+14]
       46 GETTABLEKS                       R5 R0 K12 ["switchToTab"]
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R7 R8 K7 ["LAYER_TABS"]
       51 GETTABLEKS                       R6 R7 K10 ["LayerData"]
       53 GETUPVAL                         R9 1
       54 GETTABLEKS                       R8 R9 K13 ["TAB_SWITCH_REASONS"]
       56 GETTABLEKS                       R7 R8 K14 ["NoData"]
       58 CALL                             R5 2 0
       59 RETURN                           R0 0
       60 JUMPIFNOT                        R4 ; [+46]
       61 GETTABLEKS                       R5 R1 K2 ["HistoryField"]
       63 JUMPIFNOT                        R5 ; [+30]
       64 GETTABLEKS                       R6 R2 K2 ["HistoryField"]
       66 GETTABLEKS                       R5 R6 K3 ["id"]
       68 GETTABLEKS                       R7 R1 K2 ["HistoryField"]
       70 GETTABLEKS                       R6 R7 K3 ["id"]
       72 JUMPIFNOTEQ                      R5 R6 ; [+21]
       74 GETTABLEKS                       R6 R2 K2 ["HistoryField"]
       76 GETTABLEKS                       R5 R6 K4 ["section"]
       78 GETTABLEKS                       R7 R1 K2 ["HistoryField"]
       80 GETTABLEKS                       R6 R7 K4 ["section"]
       82 JUMPIFNOTEQ                      R5 R6 ; [+11]
       84 GETTABLEKS                       R6 R2 K2 ["HistoryField"]
       86 GETTABLEKS                       R5 R6 K5 ["field"]
       88 GETTABLEKS                       R7 R1 K2 ["HistoryField"]
       90 GETTABLEKS                       R6 R7 K5 ["field"]
       92 JUMPIFEQ                         R5 R6 ; [+14]
       94 GETTABLEKS                       R5 R0 K12 ["switchToTab"]
       96 GETUPVAL                         R8 0
       97 GETTABLEKS                       R7 R8 K7 ["LAYER_TABS"]
       99 GETTABLEKS                       R6 R7 K8 ["History"]
      101 GETUPVAL                         R9 1
      102 GETTABLEKS                       R8 R9 K13 ["TAB_SWITCH_REASONS"]
      104 GETTABLEKS                       R7 R8 K15 ["HistoryIcon"]
      106 CALL                             R5 2 0
      107 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["switchToTab"]
        3 GETTABLEKS                       R2 R0 K1 ["Key"]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K2 ["TAB_SWITCH_REASONS"]
        8 GETTABLEKS                       R3 R4 K3 ["Manual"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R2 K2 ["Localization"]
        6 GETTABLEKS                       R4 R2 K3 ["LayerData"]
        8 GETTABLEKS                       R5 R2 K4 ["ShowRawPayload"]
       10 GETTABLEKS                       R6 R2 K5 ["HistoryField"]
       12 JUMPIFNOT                        R6 ; [+14]
       13 GETTABLEKS                       R7 R2 K5 ["HistoryField"]
       15 GETTABLEKS                       R6 R7 K6 ["id"]
       17 JUMPIFNOT                        R6 ; [+9]
       18 GETTABLEKS                       R7 R2 K5 ["HistoryField"]
       20 GETTABLEKS                       R6 R7 K7 ["section"]
       22 JUMPIFNOT                        R6 ; [+4]
       23 GETTABLEKS                       R7 R2 K5 ["HistoryField"]
       25 GETTABLEKS                       R6 R7 K8 ["field"]
       27 NEWTABLE                         R7 0 3
       29 DUPTABLE                         R8 K11 [{"Key", "Label"}]
       30 GETUPVAL                         R11 0
       31 GETTABLEKS                       R10 R11 K12 ["LAYER_TABS"]
       33 GETTABLEKS                       R9 R10 K3 ["LayerData"]
       35 SETTABLEKS                       R9 R8 K9 ["Key"]
       37 LOADK                            R11 K13 ["LayerPanel"]
       38 GETUPVAL                         R14 0
       39 GETTABLEKS                       R13 R14 K12 ["LAYER_TABS"]
       41 GETTABLEKS                       R12 R13 K3 ["LayerData"]
       43 NAMECALL                         R9 R3 K14 ["getText"]
       45 CALL                             R9 3 1
       46 SETTABLEKS                       R9 R8 K10 ["Label"]
       48 DUPTABLE                         R9 K16 [{"Key", "Label", "Disabled"}]
       49 GETUPVAL                         R12 0
       50 GETTABLEKS                       R11 R12 K12 ["LAYER_TABS"]
       52 GETTABLEKS                       R10 R11 K17 ["Visualization"]
       54 SETTABLEKS                       R10 R9 K9 ["Key"]
       56 LOADK                            R12 K13 ["LayerPanel"]
       57 GETUPVAL                         R15 0
       58 GETTABLEKS                       R14 R15 K12 ["LAYER_TABS"]
       60 GETTABLEKS                       R13 R14 K17 ["Visualization"]
       62 NAMECALL                         R10 R3 K14 ["getText"]
       64 CALL                             R10 3 1
       65 SETTABLEKS                       R10 R9 K10 ["Label"]
       67 MOVE                             R13 R4
       68 NAMECALL                         R11 R0 K18 ["isVisualizationEnabled"]
       70 CALL                             R11 2 1
       71 NOT                              R10 R11
       72 SETTABLEKS                       R10 R9 K15 ["Disabled"]
       74 DUPTABLE                         R10 K16 [{"Key", "Label", "Disabled"}]
       75 GETUPVAL                         R13 0
       76 GETTABLEKS                       R12 R13 K12 ["LAYER_TABS"]
       78 GETTABLEKS                       R11 R12 K19 ["History"]
       80 SETTABLEKS                       R11 R10 K9 ["Key"]
       82 LOADK                            R13 K13 ["LayerPanel"]
       83 GETUPVAL                         R16 0
       84 GETTABLEKS                       R15 R16 K12 ["LAYER_TABS"]
       86 GETTABLEKS                       R14 R15 K19 ["History"]
       88 NAMECALL                         R11 R3 K14 ["getText"]
       90 CALL                             R11 3 1
       91 SETTABLEKS                       R11 R10 K10 ["Label"]
       93 NOT                              R11 R6
       94 SETTABLEKS                       R11 R10 K15 ["Disabled"]
       96 SETLIST                          R7 R8 3 [1]
       98 JUMPIFNOT                        R5 ; [+25]
       99 DUPTABLE                         R10 K11 [{"Key", "Label"}]
      100 GETUPVAL                         R13 0
      101 GETTABLEKS                       R12 R13 K12 ["LAYER_TABS"]
      103 GETTABLEKS                       R11 R12 K20 ["RawData"]
      105 SETTABLEKS                       R11 R10 K9 ["Key"]
      107 LOADK                            R13 K13 ["LayerPanel"]
      108 GETUPVAL                         R16 0
      109 GETTABLEKS                       R15 R16 K12 ["LAYER_TABS"]
      111 GETTABLEKS                       R14 R15 K20 ["RawData"]
      113 NAMECALL                         R11 R3 K14 ["getText"]
      115 CALL                             R11 3 1
      116 SETTABLEKS                       R11 R10 K10 ["Label"]
      118 FASTCALL2                        TABLE_INSERT R7 R10 ; [+4]
      120 MOVE                             R9 R7
      121 GETIMPORT                        R8 K23 [table.insert]
      123 CALL                             R8 2 0
      124 GETUPVAL                         R10 1
      125 GETTABLEKS                       R9 R10 K24 ["Visualizers"]
      127 GETTABLEKS                       R8 R9 K25 ["getModule"]
      129 MOVE                             R9 R4
      130 CALL                             R8 1 1
      131 GETUPVAL                         R10 2
      132 GETTABLEKS                       R9 R10 K26 ["createElement"]
      134 GETUPVAL                         R10 3
      135 NEWTABLE                         R11 1 0
      137 GETUPVAL                         R13 2
      138 GETTABLEKS                       R12 R13 K27 ["Tag"]
      140 LOADK                            R13 K28 ["LayerPanel X-Fill X-Column"]
      141 SETTABLE                         R13 R11 R12
      142 DUPTABLE                         R12 K30 [{"Tabs", "LayerData", "Visualization", "History", "RawData"}]
      143 GETUPVAL                         R14 2
      144 GETTABLEKS                       R13 R14 K26 ["createElement"]
      146 GETUPVAL                         R14 4
      147 DUPTABLE                         R15 K34 [{"LayoutOrder", "Tabs", "SelectedTab", "OnTabSelected"}]
      148 LOADN                            R16 1
      149 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      151 SETTABLEKS                       R7 R15 K29 ["Tabs"]
      153 GETTABLEKS                       R17 R0 K0 ["state"]
      155 GETTABLEKS                       R16 R17 K35 ["selectedTab"]
      157 SETTABLEKS                       R16 R15 K32 ["SelectedTab"]
      159 NEWCLOSURE                       R16 P0
      160 CAPTURE                          VAL R0
      161 CAPTURE                          UPVAL U5
      162 SETTABLEKS                       R16 R15 K33 ["OnTabSelected"]
      164 CALL                             R13 2 1
      165 SETTABLEKS                       R13 R12 K29 ["Tabs"]
      167 GETTABLEKS                       R14 R1 K35 ["selectedTab"]
      169 GETUPVAL                         R17 0
      170 GETTABLEKS                       R16 R17 K12 ["LAYER_TABS"]
      172 GETTABLEKS                       R15 R16 K3 ["LayerData"]
      174 JUMPIFNOTEQ                      R14 R15 ; [+29]
      176 GETUPVAL                         R14 2
      177 GETTABLEKS                       R13 R14 K26 ["createElement"]
      179 GETUPVAL                         R14 6
      180 NEWTABLE                         R15 8 0
      182 LOADN                            R16 2
      183 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      185 GETTABLEKS                       R16 R2 K3 ["LayerData"]
      187 SETTABLEKS                       R16 R15 K3 ["LayerData"]
      189 GETTABLEKS                       R16 R2 K36 ["ExpandedSections"]
      191 SETTABLEKS                       R16 R15 K36 ["ExpandedSections"]
      193 GETTABLEKS                       R16 R2 K37 ["Overrides"]
      195 SETTABLEKS                       R16 R15 K37 ["Overrides"]
      197 GETUPVAL                         R17 2
      198 GETTABLEKS                       R16 R17 K27 ["Tag"]
      200 LOADK                            R17 K38 ["Panel"]
      201 SETTABLE                         R17 R15 R16
      202 CALL                             R13 2 1
      203 JUMP                             ; [+1]
      204 LOADNIL                          R13
      205 SETTABLEKS                       R13 R12 K3 ["LayerData"]
      207 GETTABLEKS                       R14 R1 K35 ["selectedTab"]
      209 GETUPVAL                         R17 0
      210 GETTABLEKS                       R16 R17 K12 ["LAYER_TABS"]
      212 GETTABLEKS                       R15 R16 K17 ["Visualization"]
      214 JUMPIFNOTEQ                      R14 R15 ; [+43]
      216 JUMPIFNOT                        R8 ; [+41]
      217 GETUPVAL                         R14 2
      218 GETTABLEKS                       R13 R14 K26 ["createElement"]
      220 GETUPVAL                         R14 3
      221 NEWTABLE                         R15 2 0
      223 LOADN                            R16 2
      224 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      226 GETUPVAL                         R17 2
      227 GETTABLEKS                       R16 R17 K27 ["Tag"]
      229 LOADK                            R17 K38 ["Panel"]
      230 SETTABLE                         R17 R15 R16
      231 DUPTABLE                         R16 K40 [{"Content"}]
      232 GETUPVAL                         R18 2
      233 GETTABLEKS                       R17 R18 K26 ["createElement"]
      235 MOVE                             R18 R8
      236 DUPTABLE                         R19 K43 [{"FrameBuffer", "HistoryFrame", "LayerData", "Overrides"}]
      237 GETTABLEKS                       R20 R2 K41 ["FrameBuffer"]
      239 SETTABLEKS                       R20 R19 K41 ["FrameBuffer"]
      241 GETTABLEKS                       R20 R2 K42 ["HistoryFrame"]
      243 SETTABLEKS                       R20 R19 K42 ["HistoryFrame"]
      245 GETTABLEKS                       R20 R2 K3 ["LayerData"]
      247 SETTABLEKS                       R20 R19 K3 ["LayerData"]
      249 GETTABLEKS                       R20 R2 K37 ["Overrides"]
      251 SETTABLEKS                       R20 R19 K37 ["Overrides"]
      253 CALL                             R17 2 1
      254 SETTABLEKS                       R17 R16 K39 ["Content"]
      256 CALL                             R13 3 1
      257 JUMP                             ; [+1]
      258 LOADNIL                          R13
      259 SETTABLEKS                       R13 R12 K17 ["Visualization"]
      261 GETTABLEKS                       R14 R1 K35 ["selectedTab"]
      263 GETUPVAL                         R17 0
      264 GETTABLEKS                       R16 R17 K12 ["LAYER_TABS"]
      266 GETTABLEKS                       R15 R16 K19 ["History"]
      268 JUMPIFNOTEQ                      R14 R15 ; [+34]
      270 GETUPVAL                         R14 2
      271 GETTABLEKS                       R13 R14 K26 ["createElement"]
      273 GETUPVAL                         R14 3
      274 NEWTABLE                         R15 2 0
      276 GETUPVAL                         R17 2
      277 GETTABLEKS                       R16 R17 K27 ["Tag"]
      279 LOADK                            R17 K38 ["Panel"]
      280 SETTABLE                         R17 R15 R16
      281 LOADN                            R16 2
      282 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      284 DUPTABLE                         R16 K45 [{"HistoryGraph"}]
      285 GETUPVAL                         R18 2
      286 GETTABLEKS                       R17 R18 K26 ["createElement"]
      288 GETUPVAL                         R18 7
      289 DUPTABLE                         R19 K46 [{"FrameBuffer", "HistoryField"}]
      290 GETTABLEKS                       R20 R2 K41 ["FrameBuffer"]
      292 SETTABLEKS                       R20 R19 K41 ["FrameBuffer"]
      294 GETTABLEKS                       R20 R2 K5 ["HistoryField"]
      296 SETTABLEKS                       R20 R19 K5 ["HistoryField"]
      298 CALL                             R17 2 1
      299 SETTABLEKS                       R17 R16 K44 ["HistoryGraph"]
      301 CALL                             R13 3 1
      302 JUMP                             ; [+1]
      303 LOADNIL                          R13
      304 SETTABLEKS                       R13 R12 K19 ["History"]
      306 GETTABLEKS                       R14 R1 K35 ["selectedTab"]
      308 GETUPVAL                         R17 0
      309 GETTABLEKS                       R16 R17 K12 ["LAYER_TABS"]
      311 GETTABLEKS                       R15 R16 K20 ["RawData"]
      313 JUMPIFNOTEQ                      R14 R15 ; [+34]
      315 GETUPVAL                         R14 2
      316 GETTABLEKS                       R13 R14 K26 ["createElement"]
      318 GETUPVAL                         R14 3
      319 NEWTABLE                         R15 2 0
      321 LOADN                            R16 2
      322 SETTABLEKS                       R16 R15 K31 ["LayoutOrder"]
      324 GETUPVAL                         R17 2
      325 GETTABLEKS                       R16 R17 K27 ["Tag"]
      327 LOADK                            R17 K38 ["Panel"]
      328 SETTABLE                         R17 R15 R16
      329 DUPTABLE                         R16 K48 [{"Pane"}]
      330 GETUPVAL                         R18 2
      331 GETTABLEKS                       R17 R18 K26 ["createElement"]
      333 GETUPVAL                         R18 6
      334 DUPTABLE                         R19 K50 [{"LayoutOrder", "LayerData", "RawMode"}]
      335 LOADN                            R20 2
      336 SETTABLEKS                       R20 R19 K31 ["LayoutOrder"]
      338 SETTABLEKS                       R4 R19 K3 ["LayerData"]
      340 LOADB                            R20 1
      341 SETTABLEKS                       R20 R19 K49 ["RawMode"]
      343 CALL                             R17 2 1
      344 SETTABLEKS                       R17 R16 K47 ["Pane"]
      346 CALL                             R13 3 1
      347 JUMP                             ; [+1]
      348 LOADNIL                          R13
      349 SETTABLEKS                       R13 R12 K20 ["RawData"]
      351 CALL                             R9 3 -1
      352 RETURN                           R9 -1

PROTO_6:
        0 DUPTABLE                         R2 K1 [{"HistoryField"}]
        1 GETTABLEKS                       R4 R0 K2 ["Status"]
        3 GETTABLEKS                       R3 R4 K0 ["HistoryField"]
        5 SETTABLEKS                       R3 R2 K0 ["HistoryField"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AnimationEditor"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["RoactRodux"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["withContext"]
       39 GETTABLEKS                       R7 R5 K13 ["Analytics"]
       41 GETTABLEKS                       R8 R5 K14 ["Localization"]
       43 GETTABLEKS                       R9 R2 K15 ["UI"]
       45 GETTABLEKS                       R10 R9 K16 ["Pane"]
       47 GETTABLEKS                       R11 R9 K17 ["Tabs"]
       49 GETTABLEKS                       R13 R0 K18 ["Src"]
       51 GETTABLEKS                       R12 R13 K19 ["Components"]
       53 GETIMPORT                        R13 K5 [require]
       55 GETTABLEKS                       R14 R12 K20 ["HistoryGraph"]
       57 CALL                             R13 1 1
       58 GETIMPORT                        R14 K5 [require]
       60 GETTABLEKS                       R15 R12 K21 ["LayerView"]
       62 CALL                             R14 1 1
       63 GETTABLEKS                       R16 R0 K18 ["Src"]
       65 GETTABLEKS                       R15 R16 K22 ["Util"]
       67 GETIMPORT                        R16 K5 [require]
       69 GETTABLEKS                       R17 R15 K23 ["AnalyticsEnums"]
       71 CALL                             R16 1 1
       72 GETIMPORT                        R17 K5 [require]
       74 GETTABLEKS                       R19 R0 K18 ["Src"]
       76 GETTABLEKS                       R18 R19 K24 ["Types"]
       78 CALL                             R17 1 1
       79 GETTABLEKS                       R18 R1 K25 ["Constants"]
       81 GETTABLEKS                       R19 R3 K26 ["PureComponent"]
       83 LOADK                            R21 K27 ["LayerPanel"]
       84 NAMECALL                         R19 R19 K28 ["extend"]
       86 CALL                             R19 2 1
       87 DUPCLOSURE                       R20 K29 [PROTO_1]
       88 CAPTURE                          VAL R18
       89 CAPTURE                          VAL R16
       90 SETTABLEKS                       R20 R19 K30 ["init"]
       92 NEWCLOSURE                       R20 P1
       93 CAPTURE                          REF R19
       94 SETTABLEKS                       R20 R19 K31 ["isVisualizationEnabled"]
       96 DUPCLOSURE                       R20 K32 [PROTO_3]
       97 CAPTURE                          VAL R18
       98 CAPTURE                          VAL R16
       99 SETTABLEKS                       R20 R19 K33 ["didUpdate"]
      101 NEWCLOSURE                       R20 P3
      102 CAPTURE                          VAL R18
      103 CAPTURE                          REF R19
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R16
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R13
      110 SETTABLEKS                       R20 R19 K34 ["render"]
      112 MOVE                             R20 R6
      113 DUPTABLE                         R21 K35 [{"Analytics", "Localization"}]
      114 SETTABLEKS                       R7 R21 K13 ["Analytics"]
      116 SETTABLEKS                       R8 R21 K14 ["Localization"]
      118 CALL                             R20 1 1
      119 MOVE                             R21 R19
      120 CALL                             R20 1 1
      121 MOVE                             R19 R20
      122 DUPCLOSURE                       R20 K36 [PROTO_6]
      123 GETTABLEKS                       R21 R4 K37 ["connect"]
      125 MOVE                             R22 R20
      126 CALL                             R21 1 1
      127 MOVE                             R22 R19
      128 CALL                             R21 1 1
      129 MOVE                             R19 R21
      130 GETIMPORT                        R21 K5 [require]
      132 GETIMPORT                        R23 K1 [script]
      134 GETTABLEKS                       R22 R23 K38 ["Visualizers"]
      136 CALL                             R21 1 1
      137 SETTABLEKS                       R21 R19 K38 ["Visualizers"]
      139 CLOSEUPVALS                      R19
      140 RETURN                           R19 1
