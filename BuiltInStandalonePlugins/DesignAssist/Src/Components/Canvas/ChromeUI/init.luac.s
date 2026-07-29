PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["canvasState"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["getStudioFoundationTheme"]
        5 GETUPVAL                         R3 1
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 MOVE                             R4 R1
        9 LOADK                            R5 K2 ["themeOverride"]
       10 CALL                             R3 2 1
       11 GETUPVAL                         R4 2
       12 MOVE                             R5 R1
       13 LOADK                            R6 K3 ["panMode"]
       14 CALL                             R4 2 1
       15 GETUPVAL                         R5 2
       16 MOVE                             R6 R1
       17 LOADK                            R7 K4 ["deviceProfile"]
       18 CALL                             R5 2 1
       19 GETUPVAL                         R6 2
       20 MOVE                             R7 R1
       21 LOADK                            R8 K5 ["useInsets"]
       22 CALL                             R6 2 1
       23 GETUPVAL                         R7 2
       24 MOVE                             R8 R1
       25 LOADK                            R9 K6 ["zoomScale"]
       26 CALL                             R7 2 1
       27 GETUPVAL                         R8 2
       28 MOVE                             R9 R1
       29 LOADK                            R10 K7 ["gridVisible"]
       30 CALL                             R8 2 1
       31 GETUPVAL                         R9 2
       32 MOVE                             R10 R1
       33 LOADK                            R11 K8 ["storyControlsPinned"]
       34 CALL                             R9 2 1
       35 GETUPVAL                         R10 2
       36 MOVE                             R11 R1
       37 LOADK                            R12 K9 ["contextMenuPosition"]
       38 CALL                             R10 2 1
       39 GETUPVAL                         R11 3
       40 GETTABLEKS                       R11 R11 K10 ["useState"]
       42 LOADK                            R12 K11 [""]
       43 CALL                             R11 1 2
       44 GETUPVAL                         R13 1
       45 GETTABLEKS                       R13 R13 K12 ["Utility"]
       47 GETTABLEKS                       R13 R13 K13 ["getTokens"]
       49 MOVE                             R14 R2
       50 GETUPVAL                         R15 1
       51 GETTABLEKS                       R15 R15 K14 ["Enums"]
       53 GETTABLEKS                       R15 R15 K15 ["Device"]
       55 GETTABLEKS                       R15 R15 K16 ["Desktop"]
       57 CALL                             R13 2 1
       58 GETTABLEKS                       R14 R0 K17 ["loadModuleAvailable"]
       60 JUMPIF                           R14 ; [+88]
       61 GETUPVAL                         R14 3
       62 GETTABLEKS                       R14 R14 K18 ["createElement"]
       64 GETUPVAL                         R15 1
       65 GETTABLEKS                       R15 R15 K19 ["FoundationProvider"]
       67 DUPTABLE                         R16 K23 [{"theme", "device", "overlayGui"}]
       68 SETTABLEKS                       R2 R16 K20 ["theme"]
       70 GETUPVAL                         R17 1
       71 GETTABLEKS                       R17 R17 K14 ["Enums"]
       73 GETTABLEKS                       R17 R17 K15 ["Device"]
       75 GETTABLEKS                       R17 R17 K16 ["Desktop"]
       77 SETTABLEKS                       R17 R16 K21 ["device"]
       79 GETTABLEKS                       R17 R0 K24 ["overlayFrame"]
       81 SETTABLEKS                       R17 R16 K22 ["overlayGui"]
       83 DUPTABLE                         R17 K26 [{"Blocker"}]
       84 GETUPVAL                         R18 4
       85 GETTABLEKS                       R18 R18 K27 ["createPortal"]
       87 GETUPVAL                         R19 3
       88 GETTABLEKS                       R19 R19 K18 ["createElement"]
       90 GETUPVAL                         R20 3
       91 GETTABLEKS                       R20 R20 K28 ["Fragment"]
       93 LOADNIL                          R21
       94 DUPTABLE                         R22 K31 [{"StyleLink", "Surface"}]
       95 GETUPVAL                         R23 3
       96 GETTABLEKS                       R23 R23 K18 ["createElement"]
       98 GETUPVAL                         R24 5
       99 DUPTABLE                         R25 K33 [{"overlay"}]
      100 GETTABLEKS                       R26 R0 K24 ["overlayFrame"]
      102 SETTABLEKS                       R26 R25 K32 ["overlay"]
      104 CALL                             R23 2 1
      105 SETTABLEKS                       R23 R22 K29 ["StyleLink"]
      107 GETUPVAL                         R23 3
      108 GETTABLEKS                       R23 R23 K18 ["createElement"]
      110 GETUPVAL                         R24 1
      111 GETTABLEKS                       R24 R24 K34 ["View"]
      113 DUPTABLE                         R25 K41 [{["testId"] = "--design-assist-loadmodule-blocker", ["Size"], ["tag"] = "bg-surface-0", ["InputSink"]}]
      114 GETIMPORT                        R26 K44 [UDim2.fromScale]
      116 LOADN                            R27 1
      117 LOADN                            R28 1
      118 CALL                             R26 2 1
      119 SETTABLEKS                       R26 R25 K37 ["Size"]
      121 GETIMPORT                        R26 K47 [Enum.InputSink.All]
      123 SETTABLEKS                       R26 R25 K40 ["InputSink"]
      125 DUPTABLE                         R26 K49 [{"EmptyState"}]
      126 GETUPVAL                         R27 3
      127 GETTABLEKS                       R27 R27 K18 ["createElement"]
      129 GETUPVAL                         R28 6
      130 DUPTABLE                         R29 K53 [{["title"] = "Enable LoadModule to use Design Assist", ["description"]}]
      131 GETTABLEKS                       R30 R0 K54 ["loadModuleUnavailableMessage"]
      133 SETTABLEKS                       R30 R29 K52 ["description"]
      135 CALL                             R27 2 1
      136 SETTABLEKS                       R27 R26 K48 ["EmptyState"]
      138 CALL                             R23 3 1
      139 SETTABLEKS                       R23 R22 K30 ["Surface"]
      141 CALL                             R19 3 1
      142 GETTABLEKS                       R20 R0 K24 ["overlayFrame"]
      144 CALL                             R18 2 1
      145 SETTABLEKS                       R18 R17 K25 ["Blocker"]
      147 CALL                             R14 3 -1
      148 RETURN                           R14 -1
      149 GETUPVAL                         R14 3
      150 GETTABLEKS                       R14 R14 K18 ["createElement"]
      152 GETUPVAL                         R15 1
      153 GETTABLEKS                       R15 R15 K19 ["FoundationProvider"]
      155 DUPTABLE                         R16 K23 [{"theme", "device", "overlayGui"}]
      156 SETTABLEKS                       R2 R16 K20 ["theme"]
      158 GETUPVAL                         R17 1
      159 GETTABLEKS                       R17 R17 K14 ["Enums"]
      161 GETTABLEKS                       R17 R17 K15 ["Device"]
      163 GETTABLEKS                       R17 R17 K16 ["Desktop"]
      165 SETTABLEKS                       R17 R16 K21 ["device"]
      167 GETTABLEKS                       R17 R0 K24 ["overlayFrame"]
      169 SETTABLEKS                       R17 R16 K22 ["overlayGui"]
      171 DUPTABLE                         R17 K58 [{"WorkspaceChrome", "HeaderBar", "StyleLink", "ContextMenu"}]
      172 GETUPVAL                         R18 3
      173 GETTABLEKS                       R18 R18 K18 ["createElement"]
      175 GETUPVAL                         R19 7
      176 DUPTABLE                         R20 K67 [{"canvasState", "workspaceState", "tokens", "primaryContextHeaderFrame", "primaryTabsHeaderFrame", "layersHeaderFrame", "secondaryTabsHeaderFrame", "screenSearchQuery", "onScreenSearchChanged"}]
      177 SETTABLEKS                       R1 R20 K0 ["canvasState"]
      179 GETTABLEKS                       R21 R0 K59 ["workspaceState"]
      181 SETTABLEKS                       R21 R20 K59 ["workspaceState"]
      183 SETTABLEKS                       R13 R20 K60 ["tokens"]
      185 GETTABLEKS                       R21 R0 K61 ["primaryContextHeaderFrame"]
      187 SETTABLEKS                       R21 R20 K61 ["primaryContextHeaderFrame"]
      189 GETTABLEKS                       R21 R0 K62 ["primaryTabsHeaderFrame"]
      191 SETTABLEKS                       R21 R20 K62 ["primaryTabsHeaderFrame"]
      193 GETTABLEKS                       R21 R0 K63 ["layersHeaderFrame"]
      195 SETTABLEKS                       R21 R20 K63 ["layersHeaderFrame"]
      197 GETTABLEKS                       R21 R0 K64 ["secondaryTabsHeaderFrame"]
      199 SETTABLEKS                       R21 R20 K64 ["secondaryTabsHeaderFrame"]
      201 SETTABLEKS                       R11 R20 K65 ["screenSearchQuery"]
      203 SETTABLEKS                       R12 R20 K66 ["onScreenSearchChanged"]
      205 CALL                             R18 2 1
      206 SETTABLEKS                       R18 R17 K55 ["WorkspaceChrome"]
      208 GETUPVAL                         R18 4
      209 GETTABLEKS                       R18 R18 K27 ["createPortal"]
      211 GETUPVAL                         R19 3
      212 GETTABLEKS                       R19 R19 K18 ["createElement"]
      214 GETUPVAL                         R20 3
      215 GETTABLEKS                       R20 R20 K28 ["Fragment"]
      217 LOADNIL                          R21
      218 DUPTABLE                         R22 K69 [{"StyleLink", "Chrome"}]
      219 GETUPVAL                         R23 3
      220 GETTABLEKS                       R23 R23 K18 ["createElement"]
      222 GETUPVAL                         R24 5
      223 DUPTABLE                         R25 K33 [{"overlay"}]
      224 GETTABLEKS                       R26 R0 K70 ["headerBarFrame"]
      226 SETTABLEKS                       R26 R25 K32 ["overlay"]
      228 CALL                             R23 2 1
      229 SETTABLEKS                       R23 R22 K29 ["StyleLink"]
      231 GETUPVAL                         R23 3
      232 GETTABLEKS                       R23 R23 K18 ["createElement"]
      234 GETUPVAL                         R24 8
      235 DUPTABLE                         R25 K74 [{["storyControlsPinned"], ["themeOverride"], ["panModeActive"], ["deviceProfile"], ["useInsets"], ["zoomScale"], ["tokens"], ["chromeControlHeight"] = 24, [9]}]
      236 SETTABLEKS                       R9 R25 K8 ["storyControlsPinned"]
      238 SETTABLEKS                       R3 R25 K2 ["themeOverride"]
      240 SETTABLEKS                       R4 R25 K71 ["panModeActive"]
      242 SETTABLEKS                       R5 R25 K4 ["deviceProfile"]
      244 SETTABLEKS                       R6 R25 K5 ["useInsets"]
      246 SETTABLEKS                       R7 R25 K6 ["zoomScale"]
      248 SETTABLEKS                       R13 R25 K60 ["tokens"]
      250 SETTABLEKS                       R1 R25 K0 ["canvasState"]
      252 CALL                             R23 2 1
      253 SETTABLEKS                       R23 R22 K68 ["Chrome"]
      255 CALL                             R19 3 1
      256 GETTABLEKS                       R20 R0 K70 ["headerBarFrame"]
      258 CALL                             R18 2 1
      259 SETTABLEKS                       R18 R17 K56 ["HeaderBar"]
      261 GETUPVAL                         R18 3
      262 GETTABLEKS                       R18 R18 K18 ["createElement"]
      264 GETUPVAL                         R19 5
      265 DUPTABLE                         R20 K33 [{"overlay"}]
      266 GETTABLEKS                       R21 R0 K24 ["overlayFrame"]
      268 SETTABLEKS                       R21 R20 K32 ["overlay"]
      270 CALL                             R18 2 1
      271 SETTABLEKS                       R18 R17 K29 ["StyleLink"]
      273 GETUPVAL                         R18 3
      274 GETTABLEKS                       R18 R18 K18 ["createElement"]
      276 GETUPVAL                         R19 9
      277 DUPTABLE                         R20 K75 [{"contextMenuPosition", "gridVisible", "overlayFrame", "canvasState"}]
      278 SETTABLEKS                       R10 R20 K9 ["contextMenuPosition"]
      280 SETTABLEKS                       R8 R20 K7 ["gridVisible"]
      282 GETTABLEKS                       R21 R0 K24 ["overlayFrame"]
      284 SETTABLEKS                       R21 R20 K24 ["overlayFrame"]
      286 SETTABLEKS                       R1 R20 K0 ["canvasState"]
      288 CALL                             R18 2 1
      289 SETTABLEKS                       R18 R17 K57 ["ContextMenu"]
      291 CALL                             R14 3 -1
      292 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K10 ["Parent"]
       34 GETTABLEKS                       R5 R5 K11 ["CanvasTheme"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K10 ["Parent"]
       43 GETTABLEKS                       R6 R6 K12 ["useCanvasState"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K13 ["Src"]
       50 GETTABLEKS                       R7 R7 K14 ["Components"]
       52 GETTABLEKS                       R7 R7 K15 ["StyleLinkPortal"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETIMPORT                        R8 K1 [script]
       59 GETTABLEKS                       R8 R8 K16 ["HeaderBar"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETIMPORT                        R9 K1 [script]
       66 GETTABLEKS                       R9 R9 K17 ["CanvasContextMenu"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K13 ["Src"]
       73 GETTABLEKS                       R10 R10 K14 ["Components"]
       75 GETTABLEKS                       R10 R10 K18 ["Workspace"]
       77 GETTABLEKS                       R10 R10 K19 ["WorkspaceChrome"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K13 ["Src"]
       84 GETTABLEKS                       R11 R11 K20 ["AppFramework"]
       86 GETTABLEKS                       R11 R11 K21 ["EmptyState"]
       88 CALL                             R10 1 1
       89 NEWTABLE                         R11 4 0
       91 LOADN                            R12 0
       92 SETTABLEKS                       R12 R11 K22 ["CHROME_TOP_MARGIN"]
       94 LOADN                            R12 0
       95 SETTABLEKS                       R12 R11 K23 ["CHROME_CONTROL_HEIGHT"]
       97 DUPCLOSURE                       R12 K24 [PROTO_0]
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R8
      108 SETTABLEKS                       R12 R11 K25 ["render"]
      110 RETURN                           R11 1
