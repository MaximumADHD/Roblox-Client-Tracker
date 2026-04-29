PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 DUPTABLE                         R1 K1 [{"design"}]
        5 SETTABLEKS                       R0 R1 K0 ["design"]
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ToggleState"]
        3 GETTABLEKS                       R0 R1 K1 ["disable"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ToggleState"]
        3 GETTABLEKS                       R0 R1 K1 ["enabled"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 1
        7 LOADK                            R2 K2 ["openPlugin"]
        8 NAMECALL                         R0 R0 K3 ["report"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Localization"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["Analytics"]
        9 NAMECALL                         R2 R2 K1 ["use"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K3 ["Plugin"]
       15 NAMECALL                         R3 R3 K1 ["use"]
       17 CALL                             R3 1 1
       18 NAMECALL                         R3 R3 K4 ["get"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R4 R5 K5 ["useRef"]
       24 LOADB                            R5 1
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 2
       27 DUPTABLE                         R6 K11 [{"Width", "HeaderHeight", "MaxHeight", "InnerPadding", "Padding"}]
       28 LOADN                            R7 69
       29 SETTABLEKS                       R7 R6 K6 ["Width"]
       31 LOADN                            R7 32
       32 SETTABLEKS                       R7 R6 K7 ["HeaderHeight"]
       34 LOADN                            R7 188
       35 SETTABLEKS                       R7 R6 K8 ["MaxHeight"]
       37 LOADN                            R7 5
       38 SETTABLEKS                       R7 R6 K9 ["InnerPadding"]
       40 GETIMPORT                        R7 K14 [Vector2.new]
       42 LOADN                            R8 10
       43 LOADN                            R9 10
       44 CALL                             R7 2 1
       45 SETTABLEKS                       R7 R6 K10 ["Padding"]
       47 CALL                             R5 1 1
       48 GETUPVAL                         R7 1
       49 GETTABLEKS                       R6 R7 K15 ["useState"]
       51 NEWCLOSURE                       R7 P0
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          VAL R3
       54 CAPTURE                          UPVAL U4
       55 NEWTABLE                         R8 0 1
       57 MOVE                             R9 R3
       58 SETLIST                          R8 R9 1 [1]
       60 CALL                             R6 2 1
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R7 R8 K16 ["useCallback"]
       64 NEWCLOSURE                       R8 P1
       65 CAPTURE                          VAL R0
       66 CALL                             R7 1 1
       67 GETUPVAL                         R9 1
       68 GETTABLEKS                       R8 R9 K17 ["useEffect"]
       70 NEWCLOSURE                       R9 P2
       71 CAPTURE                          VAL R0
       72 CAPTURE                          VAL R2
       73 NEWTABLE                         R10 0 2
       75 MOVE                             R11 R2
       76 GETTABLEKS                       R13 R0 K18 ["ToggleState"]
       78 GETTABLEKS                       R12 R13 K19 ["enabled"]
       80 SETLIST                          R10 R11 2 [1]
       82 CALL                             R8 2 0
       83 GETTABLEKS                       R8 R0 K20 ["PluginButton"]
       85 JUMPIF                           R8 ; [+2]
       86 LOADNIL                          R8
       87 RETURN                           R8 1
       88 GETTABLEKS                       R9 R0 K18 ["ToggleState"]
       90 GETTABLEKS                       R8 R9 K19 ["enabled"]
       92 JUMPIF                           R8 ; [+5]
       93 GETTABLEKS                       R8 R4 K21 ["current"]
       95 JUMPIFNOT                        R8 ; [+2]
       96 LOADNIL                          R8
       97 RETURN                           R8 1
       98 GETUPVAL                         R8 5
       99 CALL                             R8 0 1
      100 JUMPIFNOT                        R8 ; [+3]
      101 LOADB                            R8 0
      102 SETTABLEKS                       R8 R4 K21 ["current"]
      104 GETUPVAL                         R9 1
      105 GETTABLEKS                       R8 R9 K22 ["createElement"]
      107 GETUPVAL                         R9 6
      108 DUPTABLE                         R10 K32 [{"CreateWidgetImmediately", "Enabled", "Modal", "Title", "Size", "OnClose", "PopupTarget", "PopupSelfAnchorPoint", "PopupTargetAnchorPoint"}]
      109 LOADB                            R11 0
      110 SETTABLEKS                       R11 R10 K23 ["CreateWidgetImmediately"]
      112 GETTABLEKS                       R12 R0 K18 ["ToggleState"]
      114 GETTABLEKS                       R11 R12 K19 ["enabled"]
      116 SETTABLEKS                       R11 R10 K24 ["Enabled"]
      118 LOADB                            R11 0
      119 SETTABLEKS                       R11 R10 K25 ["Modal"]
      121 LOADK                            R13 K3 ["Plugin"]
      122 LOADK                            R14 K33 ["Name"]
      123 NAMECALL                         R11 R1 K34 ["getText"]
      125 CALL                             R11 3 1
      126 SETTABLEKS                       R11 R10 K26 ["Title"]
      128 GETTABLEKS                       R11 R5 K35 ["size"]
      130 SETTABLEKS                       R11 R10 K27 ["Size"]
      132 SETTABLEKS                       R7 R10 K28 ["OnClose"]
      134 GETTABLEKS                       R11 R0 K20 ["PluginButton"]
      136 SETTABLEKS                       R11 R10 K29 ["PopupTarget"]
      138 GETIMPORT                        R11 K14 [Vector2.new]
      140 LOADN                            R12 1
      141 LOADN                            R13 0
      142 CALL                             R11 2 1
      143 SETTABLEKS                       R11 R10 K30 ["PopupSelfAnchorPoint"]
      145 GETIMPORT                        R11 K14 [Vector2.new]
      147 LOADN                            R12 1
      148 LOADN                            R13 1
      149 CALL                             R11 2 1
      150 SETTABLEKS                       R11 R10 K31 ["PopupTargetAnchorPoint"]
      152 DUPTABLE                         R11 K39 [{"Wrapper", "VisualizationModesStrokePane", "StyleLink"}]
      153 GETUPVAL                         R13 1
      154 GETTABLEKS                       R12 R13 K22 ["createElement"]
      156 GETUPVAL                         R13 7
      157 NEWTABLE                         R14 1 0
      159 GETUPVAL                         R16 1
      160 GETTABLEKS                       R15 R16 K40 ["Tag"]
      162 LOADK                            R16 K41 ["X-Fill X-Column X-Top VisualizationModes-Popup"]
      163 SETTABLE                         R16 R14 R15
      164 DUPTABLE                         R15 K43 [{"VisualizationModeProviders"}]
      165 GETUPVAL                         R17 1
      166 GETTABLEKS                       R16 R17 K22 ["createElement"]
      168 GETUPVAL                         R18 8
      169 GETTABLEKS                       R17 R18 K44 ["ContextStack"]
      171 DUPTABLE                         R18 K46 [{"providers"}]
      172 NEWTABLE                         R19 0 3
      174 GETUPVAL                         R21 1
      175 GETTABLEKS                       R20 R21 K22 ["createElement"]
      177 GETUPVAL                         R22 9
      178 GETTABLEKS                       R21 R22 K47 ["Provider"]
      180 DUPTABLE                         R22 K49 [{"actionsComponent"}]
      181 LOADK                            R25 K50 ["Actions"]
      182 NAMECALL                         R23 R3 K51 ["GetPluginComponent"]
      184 CALL                             R23 2 1
      185 SETTABLEKS                       R23 R22 K48 ["actionsComponent"]
      187 CALL                             R20 2 1
      188 GETUPVAL                         R22 1
      189 GETTABLEKS                       R21 R22 K22 ["createElement"]
      191 GETUPVAL                         R23 10
      192 GETTABLEKS                       R22 R23 K47 ["Provider"]
      194 DUPTABLE                         R23 K53 [{"overlayStartsOpen"}]
      195 LOADB                            R24 0
      196 SETTABLEKS                       R24 R23 K52 ["overlayStartsOpen"]
      198 CALL                             R21 2 1
      199 GETUPVAL                         R23 11
      200 CALL                             R23 0 1
      201 JUMPIFNOT                        R23 ; [+15]
      202 GETUPVAL                         R23 1
      203 GETTABLEKS                       R22 R23 K22 ["createElement"]
      205 GETUPVAL                         R24 12
      206 GETTABLEKS                       R23 R24 K47 ["Provider"]
      208 DUPTABLE                         R24 K55 [{"renderingModesBridge"}]
      209 LOADK                            R27 K56 ["RenderingModesBridge"]
      210 NAMECALL                         R25 R3 K51 ["GetPluginComponent"]
      212 CALL                             R25 2 1
      213 SETTABLEKS                       R25 R24 K54 ["renderingModesBridge"]
      215 CALL                             R22 2 1
      216 JUMP                             ; [+7]
      217 GETUPVAL                         R23 1
      218 GETTABLEKS                       R22 R23 K22 ["createElement"]
      220 GETUPVAL                         R24 1
      221 GETTABLEKS                       R23 R24 K57 ["Fragment"]
      223 CALL                             R22 1 1
      224 SETLIST                          R19 R20 3 [1]
      226 SETTABLEKS                       R19 R18 K45 ["providers"]
      228 DUPTABLE                         R19 K59 [{"VisualizationModesMainView"}]
      229 GETUPVAL                         R21 1
      230 GETTABLEKS                       R20 R21 K22 ["createElement"]
      232 GETUPVAL                         R21 13
      233 DUPTABLE                         R22 K65 [{"VisualizationModeCategories", "RecentVisualizationModes", "SizeCalculator", "OnVisualizationModeToggle", "OnVisualizationModeCategoryToggle"}]
      234 GETTABLEKS                       R25 R0 K66 ["CombinerState"]
      236 GETTABLEKS                       R24 R25 K67 ["state"]
      238 GETTABLEKS                       R23 R24 K68 ["categories"]
      240 SETTABLEKS                       R23 R22 K60 ["VisualizationModeCategories"]
      242 GETTABLEKS                       R25 R0 K66 ["CombinerState"]
      244 GETTABLEKS                       R24 R25 K67 ["state"]
      246 GETTABLEKS                       R23 R24 K69 ["recentModes"]
      248 SETTABLEKS                       R23 R22 K61 ["RecentVisualizationModes"]
      250 SETTABLEKS                       R5 R22 K62 ["SizeCalculator"]
      252 GETTABLEKS                       R24 R0 K66 ["CombinerState"]
      254 GETTABLEKS                       R23 R24 K70 ["onVisualizationModeToggle"]
      256 SETTABLEKS                       R23 R22 K63 ["OnVisualizationModeToggle"]
      258 GETTABLEKS                       R24 R0 K66 ["CombinerState"]
      260 GETTABLEKS                       R23 R24 K71 ["onVisualizationModeCategoryToggle"]
      262 SETTABLEKS                       R23 R22 K64 ["OnVisualizationModeCategoryToggle"]
      264 CALL                             R20 2 1
      265 SETTABLEKS                       R20 R19 K58 ["VisualizationModesMainView"]
      267 CALL                             R16 3 1
      268 SETTABLEKS                       R16 R15 K42 ["VisualizationModeProviders"]
      270 CALL                             R12 3 1
      271 SETTABLEKS                       R12 R11 K36 ["Wrapper"]
      273 GETUPVAL                         R13 1
      274 GETTABLEKS                       R12 R13 K22 ["createElement"]
      276 LOADK                            R13 K72 ["Frame"]
      277 NEWTABLE                         R14 1 0
      279 GETUPVAL                         R16 1
      280 GETTABLEKS                       R15 R16 K40 ["Tag"]
      282 LOADK                            R16 K37 ["VisualizationModesStrokePane"]
      283 SETTABLE                         R16 R14 R15
      284 CALL                             R12 2 1
      285 SETTABLEKS                       R12 R11 K37 ["VisualizationModesStrokePane"]
      287 GETUPVAL                         R13 1
      288 GETTABLEKS                       R12 R13 K22 ["createElement"]
      290 LOADK                            R13 K38 ["StyleLink"]
      291 DUPTABLE                         R14 K74 [{"StyleSheet"}]
      292 GETTABLEKS                       R15 R6 K75 ["design"]
      294 SETTABLEKS                       R15 R14 K73 ["StyleSheet"]
      296 CALL                             R12 2 1
      297 SETTABLEKS                       R12 R11 K38 ["StyleLink"]
      299 CALL                             R8 3 -1
      300 RETURN                           R8 -1

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"Toggle"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K2 ["createElement"]
        4 GETUPVAL                         R3 1
        5 DUPTABLE                         R4 K12 [{"Toolbar", "Active", "Id", "Title", "Tooltip", "Icon", "OnClick", "ClickableWhenViewportHidden", "ref"}]
        6 SETTABLEKS                       R0 R4 K3 ["Toolbar"]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R5 R6 K13 ["enabled"]
       11 SETTABLEKS                       R5 R4 K4 ["Active"]
       13 LOADK                            R5 K14 ["visualizationModesButton"]
       14 SETTABLEKS                       R5 R4 K5 ["Id"]
       16 GETUPVAL                         R5 3
       17 LOADK                            R7 K15 ["Plugin"]
       18 LOADK                            R8 K16 ["Button"]
       19 NAMECALL                         R5 R5 K17 ["getText"]
       21 CALL                             R5 3 1
       22 SETTABLEKS                       R5 R4 K6 ["Title"]
       24 GETUPVAL                         R5 3
       25 LOADK                            R7 K15 ["Plugin"]
       26 LOADK                            R8 K7 ["Tooltip"]
       27 NAMECALL                         R5 R5 K17 ["getText"]
       29 CALL                             R5 3 1
       30 SETTABLEKS                       R5 R4 K7 ["Tooltip"]
       32 LOADK                            R5 K18 ["rbxlocaltheme://VisualizationModes"]
       33 SETTABLEKS                       R5 R4 K8 ["Icon"]
       35 GETUPVAL                         R6 2
       36 GETTABLEKS                       R5 R6 K19 ["toggle"]
       38 SETTABLEKS                       R5 R4 K9 ["OnClick"]
       40 LOADB                            R5 0
       41 SETTABLEKS                       R5 R4 K10 ["ClickableWhenViewportHidden"]
       43 GETUPVAL                         R5 4
       44 SETTABLEKS                       R5 R4 K11 ["ref"]
       46 CALL                             R2 2 1
       47 SETTABLEKS                       R2 R1 K0 ["Toggle"]
       49 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useToggleState"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["useRef"]
        7 LOADNIL                          R2
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K2 ["Localization"]
       12 NAMECALL                         R2 R2 K3 ["use"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R3 R4 K4 ["Plugin"]
       18 NAMECALL                         R3 R3 K3 ["use"]
       20 CALL                             R3 1 1
       21 NAMECALL                         R3 R3 K5 ["get"]
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 3
       25 CALL                             R4 0 1
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R5 R6 K6 ["createElement"]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R6 R7 K7 ["Fragment"]
       32 NEWTABLE                         R7 0 0
       34 DUPTABLE                         R8 K11 [{"Actions", "Toolbar", "Popup"}]
       35 GETUPVAL                         R10 1
       36 GETTABLEKS                       R9 R10 K6 ["createElement"]
       38 GETUPVAL                         R10 4
       39 DUPTABLE                         R11 K14 [{"VisualizationModeCategories", "OnVisualizationModeToggle"}]
       40 GETTABLEKS                       R13 R4 K15 ["state"]
       42 GETTABLEKS                       R12 R13 K16 ["categories"]
       44 SETTABLEKS                       R12 R11 K12 ["VisualizationModeCategories"]
       46 GETTABLEKS                       R12 R4 K17 ["onVisualizationModeToggle"]
       48 SETTABLEKS                       R12 R11 K13 ["OnVisualizationModeToggle"]
       50 CALL                             R9 2 1
       51 SETTABLEKS                       R9 R8 K8 ["Actions"]
       53 GETUPVAL                         R10 1
       54 GETTABLEKS                       R9 R10 K6 ["createElement"]
       56 GETUPVAL                         R10 5
       57 DUPTABLE                         R11 K20 [{"Title", "Plugin", "RenderButtons"}]
       58 LOADK                            R12 K21 ["visualizationModesToolbar"]
       59 SETTABLEKS                       R12 R11 K18 ["Title"]
       61 SETTABLEKS                       R3 R11 K4 ["Plugin"]
       63 NEWCLOSURE                       R12 P0
       64 CAPTURE                          UPVAL U1
       65 CAPTURE                          UPVAL U6
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R1
       69 SETTABLEKS                       R12 R11 K19 ["RenderButtons"]
       71 CALL                             R9 2 1
       72 SETTABLEKS                       R9 R8 K9 ["Toolbar"]
       74 GETUPVAL                         R10 1
       75 GETTABLEKS                       R9 R10 K6 ["createElement"]
       77 GETUPVAL                         R10 7
       78 DUPTABLE                         R11 K25 [{"ToggleState", "CombinerState", "PluginButton"}]
       79 SETTABLEKS                       R0 R11 K22 ["ToggleState"]
       81 SETTABLEKS                       R4 R11 K23 ["CombinerState"]
       83 GETTABLEKS                       R12 R1 K26 ["current"]
       85 JUMPIFNOT                        R12 ; [+4]
       86 GETTABLEKS                       R13 R1 K26 ["current"]
       88 GETTABLEKS                       R12 R13 K27 ["button"]
       90 SETTABLEKS                       R12 R11 K24 ["PluginButton"]
       92 CALL                             R9 2 1
       93 SETTABLEKS                       R9 R8 K10 ["Popup"]
       95 CALL                             R5 3 -1
       96 RETURN                           R5 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Analytics"]
        3 GETTABLEKS                       R0 R1 K1 ["new"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 DUPCLOSURE                       R2 K1 [PROTO_6]
        4 CAPTURE                          UPVAL U1
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["useState"]
        9 DUPCLOSURE                       R3 K2 [PROTO_7]
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CALL                             R2 1 1
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K0 ["useState"]
       16 DUPCLOSURE                       R4 K3 [PROTO_8]
       17 CAPTURE                          UPVAL U4
       18 CALL                             R3 1 1
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K4 ["provide"]
       22 NEWTABLE                         R5 0 5
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R7 R8 K5 ["Plugin"]
       27 GETTABLEKS                       R6 R7 K6 ["new"]
       29 GETTABLEKS                       R7 R0 K5 ["Plugin"]
       31 CALL                             R6 1 1
       32 GETUPVAL                         R9 2
       33 GETTABLEKS                       R8 R9 K7 ["Mouse"]
       35 GETTABLEKS                       R7 R8 K6 ["new"]
       37 GETTABLEKS                       R8 R0 K5 ["Plugin"]
       39 NAMECALL                         R8 R8 K8 ["GetMouse"]
       41 CALL                             R8 1 -1
       42 CALL                             R7 -1 1
       43 MOVE                             R8 R3
       44 MOVE                             R9 R1
       45 MOVE                             R10 R2
       46 SETLIST                          R5 R6 5 [1]
       48 DUPTABLE                         R6 K10 [{"Main"}]
       49 GETUPVAL                         R8 0
       50 GETTABLEKS                       R7 R8 K11 ["createElement"]
       52 GETUPVAL                         R8 5
       53 CALL                             R7 1 1
       54 SETTABLEKS                       R7 R6 K9 ["Main"]
       56 CALL                             R4 2 -1
       57 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["RenderingModesBridgeContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Contexts"]
       22 GETTABLEKS                       R3 R4 K9 ["OverlayMenuFocusedContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K7 ["Contexts"]
       31 GETTABLEKS                       R4 R5 K10 ["ActionsContext"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K11 ["Resources"]
       40 GETTABLEKS                       R5 R6 K12 ["createAnalyticsHandlers"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R9 R0 K6 ["Src"]
       47 GETTABLEKS                       R8 R9 K11 ["Resources"]
       49 GETTABLEKS                       R7 R8 K13 ["Localization"]
       51 GETTABLEKS                       R6 R7 K14 ["createLocalization"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R8 R0 K15 ["Packages"]
       58 GETTABLEKS                       R7 R8 K16 ["Framework"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R9 R0 K15 ["Packages"]
       65 GETTABLEKS                       R8 R9 K17 ["React"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R10 R0 K15 ["Packages"]
       72 GETTABLEKS                       R9 R10 K18 ["ReactUtils"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K6 ["Src"]
       79 GETTABLEKS                       R11 R12 K19 ["Hooks"]
       81 GETTABLEKS                       R10 R11 K20 ["useSizeCalculator"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["Src"]
       88 GETTABLEKS                       R12 R13 K19 ["Hooks"]
       90 GETTABLEKS                       R11 R12 K21 ["useVisualizationModeCombiner"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R15 R0 K6 ["Src"]
       97 GETTABLEKS                       R14 R15 K22 ["Components"]
       99 GETTABLEKS                       R13 R14 K23 ["Actions"]
      101 GETTABLEKS                       R12 R13 K24 ["VisualizationModeActions"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K5 [require]
      106 GETTABLEKS                       R15 R0 K6 ["Src"]
      108 GETTABLEKS                       R14 R15 K22 ["Components"]
      110 GETTABLEKS                       R13 R14 K25 ["VisualizationModesMainView"]
      112 CALL                             R12 1 1
      113 GETIMPORT                        R13 K5 [require]
      115 GETTABLEKS                       R16 R0 K6 ["Src"]
      117 GETTABLEKS                       R15 R16 K26 ["Flags"]
      119 GETTABLEKS                       R14 R15 K27 ["getFFlagStudioRestorePopupFocus"]
      121 CALL                             R13 1 1
      122 GETIMPORT                        R14 K5 [require]
      124 GETTABLEKS                       R17 R0 K6 ["Src"]
      126 GETTABLEKS                       R16 R17 K26 ["Flags"]
      128 GETTABLEKS                       R15 R16 K28 ["getFFlagStudioUpdateDebugRenderingModes"]
      130 CALL                             R14 1 1
      131 GETTABLEKS                       R15 R6 K29 ["UI"]
      133 GETTABLEKS                       R16 R15 K30 ["PluginButton"]
      135 GETTABLEKS                       R17 R15 K31 ["PluginToolbar"]
      137 GETTABLEKS                       R18 R15 K32 ["Pane"]
      139 GETTABLEKS                       R19 R15 K33 ["Popup"]
      141 GETTABLEKS                       R20 R6 K34 ["ContextServices"]
      143 GETTABLEKS                       R23 R6 K35 ["Style"]
      145 GETTABLEKS                       R22 R23 K36 ["Themes"]
      147 GETTABLEKS                       R21 R22 K37 ["StudioTheme"]
      149 GETTABLEKS                       R23 R6 K38 ["Styling"]
      151 GETTABLEKS                       R22 R23 K39 ["registerPluginStyles"]
      153 DUPCLOSURE                       R23 K40 [PROTO_3]
      154 CAPTURE                          VAL R20
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R22
      158 CAPTURE                          VAL R0
      159 CAPTURE                          VAL R13
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R3
      164 CAPTURE                          VAL R2
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R12
      168 DUPCLOSURE                       R24 K41 [PROTO_5]
      169 CAPTURE                          VAL R8
      170 CAPTURE                          VAL R7
      171 CAPTURE                          VAL R20
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R11
      174 CAPTURE                          VAL R17
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R23
      177 DUPCLOSURE                       R25 K42 [PROTO_9]
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R20
      181 CAPTURE                          VAL R4
      182 CAPTURE                          VAL R21
      183 CAPTURE                          VAL R24
      184 RETURN                           R25 1
