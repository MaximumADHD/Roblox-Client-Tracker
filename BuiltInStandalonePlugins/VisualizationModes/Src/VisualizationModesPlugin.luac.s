PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 DUPTABLE                         R1 K1 [{"design"}]
        5 SETTABLEKS                       R0 R1 K0 ["design"]
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ToggleState"]
        3 GETTABLEKS                       R0 R0 K1 ["disable"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ToggleState"]
        3 GETTABLEKS                       R0 R0 K1 ["enabled"]
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R0 1
        7 LOADK                            R2 K2 ["openPlugin"]
        8 NAMECALL                         R0 R0 K3 ["report"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Localization"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Analytics"]
        9 NAMECALL                         R2 R2 K1 ["use"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K3 ["Plugin"]
       15 NAMECALL                         R3 R3 K1 ["use"]
       17 CALL                             R3 1 1
       18 NAMECALL                         R3 R3 K4 ["get"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R4 R4 K5 ["useRef"]
       24 LOADB                            R5 1
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 2
       27 DUPTABLE                         R6 K15 [{["Width"] = 325, ["HeaderHeight"] = 32, ["MaxHeight"] = 700, ["InnerPadding"] = 5, ["Padding"]}]
       28 GETIMPORT                        R7 K18 [Vector2.new]
       30 LOADN                            R8 10
       31 LOADN                            R9 10
       32 CALL                             R7 2 1
       33 SETTABLEKS                       R7 R6 K14 ["Padding"]
       35 CALL                             R5 1 1
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K19 ["useState"]
       39 NEWCLOSURE                       R7 P0
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U4
       43 NEWTABLE                         R8 0 1
       45 MOVE                             R9 R3
       46 SETLIST                          R8 R9 1 [1]
       48 CALL                             R6 2 1
       49 GETUPVAL                         R7 1
       50 GETTABLEKS                       R7 R7 K20 ["useCallback"]
       52 NEWCLOSURE                       R8 P1
       53 CAPTURE                          VAL R0
       54 CALL                             R7 1 1
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R8 R8 K21 ["useEffect"]
       58 NEWCLOSURE                       R9 P2
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R2
       61 NEWTABLE                         R10 0 2
       63 MOVE                             R11 R2
       64 GETTABLEKS                       R12 R0 K22 ["ToggleState"]
       66 GETTABLEKS                       R12 R12 K23 ["enabled"]
       68 SETLIST                          R10 R11 2 [1]
       70 CALL                             R8 2 0
       71 GETTABLEKS                       R8 R0 K24 ["PluginButton"]
       73 JUMPIF                           R8 ; [+2]
       74 LOADNIL                          R8
       75 RETURN                           R8 1
       76 GETTABLEKS                       R8 R0 K22 ["ToggleState"]
       78 GETTABLEKS                       R8 R8 K23 ["enabled"]
       80 JUMPIF                           R8 ; [+5]
       81 GETTABLEKS                       R8 R4 K25 ["current"]
       83 JUMPIFNOT                        R8 ; [+2]
       84 LOADNIL                          R8
       85 RETURN                           R8 1
       86 GETUPVAL                         R8 5
       87 CALL                             R8 0 1
       88 JUMPIFNOT                        R8 ; [+3]
       89 LOADB                            R8 0
       90 SETTABLEKS                       R8 R4 K25 ["current"]
       92 GETUPVAL                         R8 1
       93 GETTABLEKS                       R8 R8 K26 ["createElement"]
       95 GETUPVAL                         R9 6
       96 DUPTABLE                         R10 K37 [{["CreateWidgetImmediately"] = False, ["Enabled"], ["Modal"] = False, ["Title"], ["Size"], ["OnClose"], ["PopupTarget"], ["PopupSelfAnchorPoint"], ["PopupTargetAnchorPoint"]}]
       97 GETTABLEKS                       R11 R0 K22 ["ToggleState"]
       99 GETTABLEKS                       R11 R11 K23 ["enabled"]
      101 SETTABLEKS                       R11 R10 K29 ["Enabled"]
      103 LOADK                            R13 K3 ["Plugin"]
      104 LOADK                            R14 K38 ["Name"]
      105 NAMECALL                         R11 R1 K39 ["getText"]
      107 CALL                             R11 3 1
      108 SETTABLEKS                       R11 R10 K31 ["Title"]
      110 GETTABLEKS                       R11 R5 K40 ["size"]
      112 SETTABLEKS                       R11 R10 K32 ["Size"]
      114 SETTABLEKS                       R7 R10 K33 ["OnClose"]
      116 GETTABLEKS                       R11 R0 K24 ["PluginButton"]
      118 SETTABLEKS                       R11 R10 K34 ["PopupTarget"]
      120 GETIMPORT                        R11 K18 [Vector2.new]
      122 LOADN                            R12 1
      123 LOADN                            R13 0
      124 CALL                             R11 2 1
      125 SETTABLEKS                       R11 R10 K35 ["PopupSelfAnchorPoint"]
      127 GETIMPORT                        R11 K18 [Vector2.new]
      129 LOADN                            R12 1
      130 LOADN                            R13 1
      131 CALL                             R11 2 1
      132 SETTABLEKS                       R11 R10 K36 ["PopupTargetAnchorPoint"]
      134 DUPTABLE                         R11 K44 [{"Wrapper", "VisualizationModesStrokePane", "StyleLink"}]
      135 GETUPVAL                         R12 1
      136 GETTABLEKS                       R12 R12 K26 ["createElement"]
      138 GETUPVAL                         R13 7
      139 NEWTABLE                         R14 1 0
      141 GETUPVAL                         R15 1
      142 GETTABLEKS                       R15 R15 K45 ["Tag"]
      144 LOADK                            R16 K46 ["X-Fill X-Column X-Top VisualizationModes-Popup"]
      145 SETTABLE                         R16 R14 R15
      146 DUPTABLE                         R15 K48 [{"VisualizationModeProviders"}]
      147 GETUPVAL                         R16 1
      148 GETTABLEKS                       R16 R16 K26 ["createElement"]
      150 GETUPVAL                         R17 8
      151 GETTABLEKS                       R17 R17 K49 ["ContextStack"]
      153 DUPTABLE                         R18 K51 [{"providers"}]
      154 NEWTABLE                         R19 0 3
      156 GETUPVAL                         R20 1
      157 GETTABLEKS                       R20 R20 K26 ["createElement"]
      159 GETUPVAL                         R21 9
      160 GETTABLEKS                       R21 R21 K52 ["Provider"]
      162 DUPTABLE                         R22 K54 [{"actionsComponent"}]
      163 LOADK                            R25 K55 ["Actions"]
      164 NAMECALL                         R23 R3 K56 ["GetPluginComponent"]
      166 CALL                             R23 2 1
      167 SETTABLEKS                       R23 R22 K53 ["actionsComponent"]
      169 CALL                             R20 2 1
      170 GETUPVAL                         R21 1
      171 GETTABLEKS                       R21 R21 K26 ["createElement"]
      173 GETUPVAL                         R22 10
      174 GETTABLEKS                       R22 R22 K52 ["Provider"]
      176 DUPTABLE                         R23 K58 [{["overlayStartsOpen"] = False}]
      177 CALL                             R21 2 1
      178 GETUPVAL                         R23 11
      179 CALL                             R23 0 1
      180 JUMPIFNOT                        R23 ; [+15]
      181 GETUPVAL                         R22 1
      182 GETTABLEKS                       R22 R22 K26 ["createElement"]
      184 GETUPVAL                         R23 12
      185 GETTABLEKS                       R23 R23 K52 ["Provider"]
      187 DUPTABLE                         R24 K60 [{"renderingModesBridge"}]
      188 LOADK                            R27 K61 ["RenderingModesBridge"]
      189 NAMECALL                         R25 R3 K56 ["GetPluginComponent"]
      191 CALL                             R25 2 1
      192 SETTABLEKS                       R25 R24 K59 ["renderingModesBridge"]
      194 CALL                             R22 2 1
      195 JUMP                             ; [+7]
      196 GETUPVAL                         R22 1
      197 GETTABLEKS                       R22 R22 K26 ["createElement"]
      199 GETUPVAL                         R23 1
      200 GETTABLEKS                       R23 R23 K62 ["Fragment"]
      202 CALL                             R22 1 1
      203 SETLIST                          R19 R20 3 [1]
      205 SETTABLEKS                       R19 R18 K50 ["providers"]
      207 DUPTABLE                         R19 K64 [{"VisualizationModesMainView"}]
      208 GETUPVAL                         R20 1
      209 GETTABLEKS                       R20 R20 K26 ["createElement"]
      211 GETUPVAL                         R21 13
      212 DUPTABLE                         R22 K70 [{"VisualizationModeCategories", "RecentVisualizationModes", "SizeCalculator", "OnVisualizationModeToggle", "OnVisualizationModeCategoryToggle"}]
      213 GETTABLEKS                       R23 R0 K71 ["CombinerState"]
      215 GETTABLEKS                       R23 R23 K72 ["state"]
      217 GETTABLEKS                       R23 R23 K73 ["categories"]
      219 SETTABLEKS                       R23 R22 K65 ["VisualizationModeCategories"]
      221 GETTABLEKS                       R23 R0 K71 ["CombinerState"]
      223 GETTABLEKS                       R23 R23 K72 ["state"]
      225 GETTABLEKS                       R23 R23 K74 ["recentModes"]
      227 SETTABLEKS                       R23 R22 K66 ["RecentVisualizationModes"]
      229 SETTABLEKS                       R5 R22 K67 ["SizeCalculator"]
      231 GETTABLEKS                       R23 R0 K71 ["CombinerState"]
      233 GETTABLEKS                       R23 R23 K75 ["onVisualizationModeToggle"]
      235 SETTABLEKS                       R23 R22 K68 ["OnVisualizationModeToggle"]
      237 GETTABLEKS                       R23 R0 K71 ["CombinerState"]
      239 GETTABLEKS                       R23 R23 K76 ["onVisualizationModeCategoryToggle"]
      241 SETTABLEKS                       R23 R22 K69 ["OnVisualizationModeCategoryToggle"]
      243 CALL                             R20 2 1
      244 SETTABLEKS                       R20 R19 K63 ["VisualizationModesMainView"]
      246 CALL                             R16 3 1
      247 SETTABLEKS                       R16 R15 K47 ["VisualizationModeProviders"]
      249 CALL                             R12 3 1
      250 SETTABLEKS                       R12 R11 K41 ["Wrapper"]
      252 GETUPVAL                         R12 1
      253 GETTABLEKS                       R12 R12 K26 ["createElement"]
      255 LOADK                            R13 K77 ["Frame"]
      256 NEWTABLE                         R14 1 0
      258 GETUPVAL                         R15 1
      259 GETTABLEKS                       R15 R15 K45 ["Tag"]
      261 LOADK                            R16 K42 ["VisualizationModesStrokePane"]
      262 SETTABLE                         R16 R14 R15
      263 CALL                             R12 2 1
      264 SETTABLEKS                       R12 R11 K42 ["VisualizationModesStrokePane"]
      266 GETUPVAL                         R12 1
      267 GETTABLEKS                       R12 R12 K26 ["createElement"]
      269 LOADK                            R13 K43 ["StyleLink"]
      270 DUPTABLE                         R14 K79 [{"StyleSheet"}]
      271 GETTABLEKS                       R15 R6 K80 ["design"]
      273 SETTABLEKS                       R15 R14 K78 ["StyleSheet"]
      275 CALL                             R12 2 1
      276 SETTABLEKS                       R12 R11 K43 ["StyleLink"]
      278 CALL                             R8 3 -1
      279 RETURN                           R8 -1

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"Toggle"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["createElement"]
        4 GETUPVAL                         R3 1
        5 DUPTABLE                         R4 K15 [{["Toolbar"], ["Active"], ["Id"] = "visualizationModesButton", ["Title"], ["Tooltip"], ["Icon"] = "rbxlocaltheme://VisualizationModes", ["OnClick"], ["ClickableWhenViewportHidden"] = False, ["ref"]}]
        6 SETTABLEKS                       R0 R4 K3 ["Toolbar"]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K16 ["enabled"]
       11 SETTABLEKS                       R5 R4 K4 ["Active"]
       13 GETUPVAL                         R5 3
       14 LOADK                            R7 K17 ["Plugin"]
       15 LOADK                            R8 K18 ["Button"]
       16 NAMECALL                         R5 R5 K19 ["getText"]
       18 CALL                             R5 3 1
       19 SETTABLEKS                       R5 R4 K7 ["Title"]
       21 GETUPVAL                         R5 3
       22 LOADK                            R7 K17 ["Plugin"]
       23 LOADK                            R8 K8 ["Tooltip"]
       24 NAMECALL                         R5 R5 K19 ["getText"]
       26 CALL                             R5 3 1
       27 SETTABLEKS                       R5 R4 K8 ["Tooltip"]
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K20 ["toggle"]
       32 SETTABLEKS                       R5 R4 K11 ["OnClick"]
       34 GETUPVAL                         R5 4
       35 SETTABLEKS                       R5 R4 K14 ["ref"]
       37 CALL                             R2 2 1
       38 SETTABLEKS                       R2 R1 K0 ["Toggle"]
       40 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useToggleState"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["useRef"]
        7 LOADNIL                          R2
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["Localization"]
       12 NAMECALL                         R2 R2 K3 ["use"]
       14 CALL                             R2 1 1
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K4 ["Plugin"]
       18 NAMECALL                         R3 R3 K3 ["use"]
       20 CALL                             R3 1 1
       21 NAMECALL                         R3 R3 K5 ["get"]
       23 CALL                             R3 1 1
       24 GETUPVAL                         R4 3
       25 CALL                             R4 0 1
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K6 ["createElement"]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K7 ["Fragment"]
       32 NEWTABLE                         R7 0 0
       34 DUPTABLE                         R8 K11 [{"Actions", "Toolbar", "Popup"}]
       35 GETUPVAL                         R9 1
       36 GETTABLEKS                       R9 R9 K6 ["createElement"]
       38 GETUPVAL                         R10 4
       39 DUPTABLE                         R11 K14 [{"VisualizationModeCategories", "OnVisualizationModeToggle"}]
       40 GETTABLEKS                       R12 R4 K15 ["state"]
       42 GETTABLEKS                       R12 R12 K16 ["categories"]
       44 SETTABLEKS                       R12 R11 K12 ["VisualizationModeCategories"]
       46 GETTABLEKS                       R12 R4 K17 ["onVisualizationModeToggle"]
       48 SETTABLEKS                       R12 R11 K13 ["OnVisualizationModeToggle"]
       50 CALL                             R9 2 1
       51 SETTABLEKS                       R9 R8 K8 ["Actions"]
       53 GETUPVAL                         R9 1
       54 GETTABLEKS                       R9 R9 K6 ["createElement"]
       56 GETUPVAL                         R10 5
       57 DUPTABLE                         R11 K21 [{["Title"] = "visualizationModesToolbar", ["Plugin"], ["RenderButtons"]}]
       58 SETTABLEKS                       R3 R11 K4 ["Plugin"]
       60 NEWCLOSURE                       R12 P0
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          UPVAL U6
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R12 R11 K20 ["RenderButtons"]
       68 CALL                             R9 2 1
       69 SETTABLEKS                       R9 R8 K9 ["Toolbar"]
       71 GETUPVAL                         R9 1
       72 GETTABLEKS                       R9 R9 K6 ["createElement"]
       74 GETUPVAL                         R10 7
       75 DUPTABLE                         R11 K25 [{"ToggleState", "CombinerState", "PluginButton"}]
       76 SETTABLEKS                       R0 R11 K22 ["ToggleState"]
       78 SETTABLEKS                       R4 R11 K23 ["CombinerState"]
       80 GETTABLEKS                       R12 R1 K26 ["current"]
       82 JUMPIFNOT                        R12 ; [+4]
       83 GETTABLEKS                       R12 R1 K26 ["current"]
       85 GETTABLEKS                       R12 R12 K27 ["button"]
       87 SETTABLEKS                       R12 R11 K24 ["PluginButton"]
       89 CALL                             R9 2 1
       90 SETTABLEKS                       R9 R8 K10 ["Popup"]
       92 CALL                             R5 3 -1
       93 RETURN                           R5 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 -1
        2 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Analytics"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 DUPCLOSURE                       R2 K1 [PROTO_6]
        4 CAPTURE                          UPVAL U1
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["useState"]
        9 DUPCLOSURE                       R3 K2 [PROTO_7]
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["useState"]
       16 DUPCLOSURE                       R4 K3 [PROTO_8]
       17 CAPTURE                          UPVAL U4
       18 CALL                             R3 1 1
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K4 ["provide"]
       22 NEWTABLE                         R5 0 5
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R6 R6 K5 ["Plugin"]
       27 GETTABLEKS                       R6 R6 K6 ["new"]
       29 GETTABLEKS                       R7 R0 K5 ["Plugin"]
       31 CALL                             R6 1 1
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R7 R7 K7 ["Mouse"]
       35 GETTABLEKS                       R7 R7 K6 ["new"]
       37 GETTABLEKS                       R8 R0 K5 ["Plugin"]
       39 NAMECALL                         R8 R8 K8 ["GetMouse"]
       41 CALL                             R8 1 -1
       42 CALL                             R7 -1 1
       43 MOVE                             R8 R3
       44 MOVE                             R9 R1
       45 MOVE                             R10 R2
       46 SETLIST                          R5 R6 5 [1]
       48 DUPTABLE                         R6 K10 [{"Main"}]
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R7 R7 K11 ["createElement"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["RenderingModesBridgeContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Contexts"]
       22 GETTABLEKS                       R3 R3 K9 ["OverlayMenuFocusedContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       31 GETTABLEKS                       R4 R4 K10 ["ActionsContext"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K11 ["Resources"]
       40 GETTABLEKS                       R5 R5 K12 ["createAnalyticsHandlers"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K11 ["Resources"]
       49 GETTABLEKS                       R6 R6 K13 ["Localization"]
       51 GETTABLEKS                       R6 R6 K14 ["createLocalization"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K15 ["Packages"]
       58 GETTABLEKS                       R7 R7 K16 ["Framework"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K15 ["Packages"]
       65 GETTABLEKS                       R8 R8 K17 ["React"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K15 ["Packages"]
       72 GETTABLEKS                       R9 R9 K18 ["ReactUtils"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K6 ["Src"]
       79 GETTABLEKS                       R10 R10 K19 ["Hooks"]
       81 GETTABLEKS                       R10 R10 K20 ["useSizeCalculator"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K6 ["Src"]
       88 GETTABLEKS                       R11 R11 K19 ["Hooks"]
       90 GETTABLEKS                       R11 R11 K21 ["useVisualizationModeCombiner"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K6 ["Src"]
       97 GETTABLEKS                       R12 R12 K22 ["Components"]
       99 GETTABLEKS                       R12 R12 K23 ["Actions"]
      101 GETTABLEKS                       R12 R12 K24 ["VisualizationModeActions"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K5 [require]
      106 GETTABLEKS                       R13 R0 K6 ["Src"]
      108 GETTABLEKS                       R13 R13 K22 ["Components"]
      110 GETTABLEKS                       R13 R13 K25 ["VisualizationModesMainView"]
      112 CALL                             R12 1 1
      113 GETIMPORT                        R13 K5 [require]
      115 GETTABLEKS                       R14 R0 K6 ["Src"]
      117 GETTABLEKS                       R14 R14 K26 ["Flags"]
      119 GETTABLEKS                       R14 R14 K27 ["getFFlagStudioRestorePopupFocus"]
      121 CALL                             R13 1 1
      122 GETIMPORT                        R14 K5 [require]
      124 GETTABLEKS                       R15 R0 K6 ["Src"]
      126 GETTABLEKS                       R15 R15 K26 ["Flags"]
      128 GETTABLEKS                       R15 R15 K28 ["getFFlagStudioUpdateDebugRenderingModes"]
      130 CALL                             R14 1 1
      131 GETTABLEKS                       R15 R6 K29 ["UI"]
      133 GETTABLEKS                       R16 R15 K30 ["PluginButton"]
      135 GETTABLEKS                       R17 R15 K31 ["PluginToolbar"]
      137 GETTABLEKS                       R18 R15 K32 ["Pane"]
      139 GETTABLEKS                       R19 R15 K33 ["Popup"]
      141 GETTABLEKS                       R20 R6 K34 ["ContextServices"]
      143 GETTABLEKS                       R21 R6 K35 ["Style"]
      145 GETTABLEKS                       R21 R21 K36 ["Themes"]
      147 GETTABLEKS                       R21 R21 K37 ["StudioTheme"]
      149 GETTABLEKS                       R22 R6 K38 ["Styling"]
      151 GETTABLEKS                       R22 R22 K39 ["registerPluginStyles"]
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
