PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["studioColorByNames"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getStudioFoundationTheme"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["foundationThemeFromOverride"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 LOADK                            R4 K1 ["themeOverride"]
        6 NAMECALL                         R2 R2 K2 ["get"]
        8 CALL                             R2 2 -1
        9 CALL                             R0 -1 -1
       10 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["deviceProfile"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["set"]
        5 CALL                             R1 3 0
        6 GETUPVAL                         R1 1
        7 MOVE                             R3 R0
        8 NAMECALL                         R1 R1 K2 ["setProfile"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setVisible"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setProfile"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["screensHostFrame"]
        3 JUMPIFEQKS                       R0 K1 ["screens"] ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K2 ["Visible"]
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["secondaryTab"]
        2 NAMECALL                         R0 R0 K1 ["get"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 1
        6 LOADB                            R2 0
        7 SETTABLEKS                       R2 R1 K2 ["Visible"]
        9 GETUPVAL                         R1 2
       10 GETUPVAL                         R2 3
       11 JUMPIFNOT                        R2 ; [+4]
       12 JUMPIFEQKS                       R0 K3 ["design"] ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 SETTABLEKS                       R2 R1 K2 ["Visible"]
       18 GETUPVAL                         R1 4
       19 GETTABLEKS                       R1 R1 K4 ["bindingsHostFrame"]
       21 JUMPIFEQKS                       R0 K5 ["bindings"] ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 SETTABLEKS                       R2 R1 K2 ["Visible"]
       27 GETUPVAL                         R1 4
       28 GETTABLEKS                       R1 R1 K6 ["inspectHostFrame"]
       30 JUMPIFEQKS                       R0 K7 ["inspect"] ; [+2]
       32 LOADB                            R2 0 +1
       33 LOADB                            R2 1
       34 SETTABLEKS                       R2 R1 K2 ["Visible"]
       36 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Visible"]
        3 JUMPIF                           R1 ; [+2]
        4 LOADB                            R1 0
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 1
        7 NAMECALL                         R1 R1 K1 ["isVisible"]
        9 CALL                             R1 1 1
       10 JUMPIFNOT                        R1 ; [+11]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K2 ["pointInsideGui"]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K3 ["frame"]
       17 MOVE                             R3 R0
       18 CALL                             R1 2 1
       19 JUMPIFNOT                        R1 ; [+2]
       20 LOADB                            R1 0
       21 RETURN                           R1 1
       22 GETUPVAL                         R1 2
       23 GETTABLEKS                       R1 R1 K4 ["pointInsideCanvasChrome"]
       25 GETUPVAL                         R2 0
       26 MOVE                             R3 R0
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R4 R4 K5 ["CHROME_TOP_MARGIN"]
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R5 R5 K6 ["CHROME_CONTROL_HEIGHT"]
       33 CALL                             R1 4 1
       34 JUMPIFNOT                        R1 ; [+2]
       35 LOADB                            R1 0
       36 RETURN                           R1 1
       37 GETUPVAL                         R1 2
       38 GETTABLEKS                       R1 R1 K7 ["pointInsideVisibleGuiTree"]
       40 GETUPVAL                         R2 4
       41 MOVE                             R3 R0
       42 CALL                             R1 2 1
       43 JUMPIFNOT                        R1 ; [+2]
       44 LOADB                            R1 0
       45 RETURN                           R1 1
       46 GETUPVAL                         R1 2
       47 GETTABLEKS                       R1 R1 K2 ["pointInsideGui"]
       49 GETUPVAL                         R2 0
       50 MOVE                             R3 R0
       51 CALL                             R1 2 -1
       52 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K0 ["contextMenuPosition"]
        6 MOVE                             R4 R0
        7 NAMECALL                         R1 R1 K1 ["set"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 1
       12 LOADK                            R3 K0 ["contextMenuPosition"]
       13 LOADNIL                          R4
       14 NAMECALL                         R1 R1 K1 ["set"]
       16 CALL                             R1 3 0
       17 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["createElement"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K1 ["render"]
        7 DUPTABLE                         R4 K15 [{"previewClipFrame", "overlayFrame", "headerBarFrame", "floatingChromeFrame", "primaryContextHeaderFrame", "primaryTabsHeaderFrame", "layersHeaderFrame", "secondaryTabsHeaderFrame", "plugin", "canvasState", "workspaceState", "loadModuleAvailable", "loadModuleUnavailableMessage"}]
        8 GETUPVAL                         R5 3
        9 SETTABLEKS                       R5 R4 K2 ["previewClipFrame"]
       11 GETUPVAL                         R5 4
       12 SETTABLEKS                       R5 R4 K3 ["overlayFrame"]
       14 GETUPVAL                         R5 5
       15 SETTABLEKS                       R5 R4 K4 ["headerBarFrame"]
       17 GETUPVAL                         R5 6
       18 SETTABLEKS                       R5 R4 K5 ["floatingChromeFrame"]
       20 GETUPVAL                         R5 7
       21 GETTABLEKS                       R5 R5 K6 ["primaryContextHeaderFrame"]
       23 SETTABLEKS                       R5 R4 K6 ["primaryContextHeaderFrame"]
       25 GETUPVAL                         R5 7
       26 GETTABLEKS                       R5 R5 K7 ["primaryTabsHeaderFrame"]
       28 SETTABLEKS                       R5 R4 K7 ["primaryTabsHeaderFrame"]
       30 GETUPVAL                         R5 7
       31 GETTABLEKS                       R5 R5 K8 ["layersHeaderFrame"]
       33 SETTABLEKS                       R5 R4 K8 ["layersHeaderFrame"]
       35 GETUPVAL                         R5 7
       36 GETTABLEKS                       R5 R5 K9 ["secondaryTabsHeaderFrame"]
       38 SETTABLEKS                       R5 R4 K9 ["secondaryTabsHeaderFrame"]
       40 GETUPVAL                         R5 8
       41 SETTABLEKS                       R5 R4 K10 ["plugin"]
       43 GETUPVAL                         R5 9
       44 SETTABLEKS                       R5 R4 K11 ["canvasState"]
       46 GETUPVAL                         R5 10
       47 SETTABLEKS                       R5 R4 K12 ["workspaceState"]
       49 GETUPVAL                         R5 11
       50 SETTABLEKS                       R5 R4 K13 ["loadModuleAvailable"]
       52 GETUPVAL                         R5 12
       53 GETTABLEKS                       R5 R5 K16 ["LOADMODULE_UNAVAILABLE_ERROR"]
       55 SETTABLEKS                       R5 R4 K14 ["loadModuleUnavailableMessage"]
       57 CALL                             R2 2 -1
       58 NAMECALL                         R0 R0 K1 ["render"]
       60 CALL                             R0 -1 0
       61 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R2 K0 ["themeOverride"]
        3 CALL                             R0 2 1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K1 ["foundationThemeFromOverride"]
        7 GETUPVAL                         R2 3
        8 MOVE                             R3 R0
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 4
       11 GETTABLEKS                       R2 R2 K2 ["createElement"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K3 ["FoundationProvider"]
       16 DUPTABLE                         R4 K6 [{"theme", "device"}]
       17 SETTABLEKS                       R1 R4 K4 ["theme"]
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K7 ["Enums"]
       22 GETTABLEKS                       R5 R5 K8 ["Device"]
       24 GETTABLEKS                       R5 R5 K9 ["Desktop"]
       26 SETTABLEKS                       R5 R4 K5 ["device"]
       28 DUPTABLE                         R5 K11 [{"BG"}]
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R6 R6 K2 ["createElement"]
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R7 R7 K12 ["View"]
       35 DUPTABLE                         R8 K18 [{["tag"] = "bg-surface-100", ["Size"], ["ZIndex"] = 0}]
       36 GETIMPORT                        R9 K21 [UDim2.fromScale]
       38 LOADN                            R10 1
       39 LOADN                            R11 1
       40 CALL                             R9 2 1
       41 SETTABLEKS                       R9 R8 K15 ["Size"]
       43 CALL                             R6 2 1
       44 SETTABLEKS                       R6 R5 K10 ["BG"]
       46 CALL                             R2 3 -1
       47 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["applyTheme"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Utility"]
        3 GETTABLEKS                       R0 R0 K1 ["getTokens"]
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Enums"]
        9 GETTABLEKS                       R2 R2 K3 ["Device"]
       11 GETTABLEKS                       R2 R2 K4 ["Desktop"]
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 LOADK                            R3 K0 ["MainBackground"]
        4 SETLIST                          R2 R3 1 [1]
        6 GETIMPORT                        R3 K3 [Color3.fromRGB]
        8 LOADN                            R4 36
        9 LOADN                            R5 37
       10 LOADN                            R6 39
       11 CALL                             R3 3 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K4 ["studioColorByNames"]
       15 MOVE                             R5 R2
       16 MOVE                             R6 R3
       17 CALL                             R4 2 1
       18 MOVE                             R1 R4
       19 SETTABLEKS                       R1 R0 K5 ["BackgroundColor3"]
       21 GETUPVAL                         R0 1
       22 GETTABLEKS                       R0 R0 K6 ["getStudioFoundationTheme"]
       24 GETUPVAL                         R1 2
       25 CALL                             R0 1 1
       26 LOADB                            R1 0
       27 GETUPVAL                         R2 2
       28 JUMPIFNOT                        R2 ; [+16]
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R2 R2 K7 ["Enums"]
       32 JUMPIFNOT                        R2 ; [+12]
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K7 ["Enums"]
       36 GETTABLEKS                       R2 R2 K8 ["Theme"]
       38 GETTABLEKS                       R2 R2 K9 ["Dark"]
       40 JUMPIFEQ                         R0 R2 ; [+2]
       42 LOADB                            R1 0 +1
       43 LOADB                            R1 1
       44 JUMP                             ; [+32]
       45 NEWTABLE                         R3 0 1
       47 LOADK                            R4 K0 ["MainBackground"]
       48 SETLIST                          R3 R4 1 [1]
       50 GETIMPORT                        R4 K3 [Color3.fromRGB]
       52 LOADN                            R5 36
       53 LOADN                            R6 37
       54 LOADN                            R7 39
       55 CALL                             R4 3 1
       56 GETUPVAL                         R5 1
       57 GETTABLEKS                       R5 R5 K4 ["studioColorByNames"]
       59 MOVE                             R6 R3
       60 MOVE                             R7 R4
       61 CALL                             R5 2 1
       62 MOVE                             R2 R5
       63 GETTABLEKS                       R6 R2 K11 ["R"]
       65 GETTABLEKS                       R7 R2 K12 ["G"]
       67 ADD                              R5 R6 R7
       68 GETTABLEKS                       R6 R2 K13 ["B"]
       70 ADD                              R4 R5 R6
       71 DIVK                             R3 R4 K10 [3]
       72 LOADK                            R4 K14 [0.5]
       73 JUMPIFLT                         R3 R4 ; [+2]
       75 LOADB                            R1 0 +1
       76 LOADB                            R1 1
       77 NEWTABLE                         R3 0 2
       79 LOADK                            R4 K15 ["Border"]
       80 LOADK                            R5 K16 ["Light"]
       81 SETLIST                          R3 R4 2 [1]
       83 GETIMPORT                        R4 K3 [Color3.fromRGB]
       85 LOADN                            R5 0
       86 LOADN                            R6 0
       87 LOADN                            R7 0
       88 CALL                             R4 3 1
       89 GETUPVAL                         R5 1
       90 GETTABLEKS                       R5 R5 K4 ["studioColorByNames"]
       92 MOVE                             R6 R3
       93 MOVE                             R7 R4
       94 CALL                             R5 2 1
       95 MOVE                             R2 R5
       96 GETUPVAL                         R3 3
       97 SETTABLEKS                       R2 R3 K5 ["BackgroundColor3"]
       99 GETUPVAL                         R3 3
      100 LOADN                            R4 0
      101 SETTABLEKS                       R4 R3 K17 ["BackgroundTransparency"]
      103 GETUPVAL                         R3 4
      104 SETTABLEKS                       R2 R3 K5 ["BackgroundColor3"]
      106 GETUPVAL                         R3 4
      107 LOADN                            R4 0
      108 SETTABLEKS                       R4 R3 K17 ["BackgroundTransparency"]
      110 GETUPVAL                         R3 5
      111 SETTABLEKS                       R2 R3 K5 ["BackgroundColor3"]
      113 GETUPVAL                         R3 5
      114 LOADN                            R4 0
      115 SETTABLEKS                       R4 R3 K17 ["BackgroundTransparency"]
      117 LOADNIL                          R3
      118 LOADNIL                          R4
      119 GETUPVAL                         R5 2
      120 JUMPIFNOT                        R5 ; [+59]
      121 GETUPVAL                         R5 2
      122 GETTABLEKS                       R5 R5 K18 ["Utility"]
      124 JUMPIFNOT                        R5 ; [+55]
      125 GETUPVAL                         R5 2
      126 GETTABLEKS                       R5 R5 K18 ["Utility"]
      128 GETTABLEKS                       R5 R5 K19 ["getTokens"]
      130 JUMPIFNOT                        R5 ; [+49]
      131 GETUPVAL                         R5 2
      132 GETTABLEKS                       R5 R5 K7 ["Enums"]
      134 JUMPIFNOT                        R5 ; [+45]
      135 GETIMPORT                        R5 K21 [pcall]
      137 NEWCLOSURE                       R6 P0
      138 CAPTURE                          UPVAL U2
      139 CAPTURE                          VAL R0
      140 CALL                             R5 1 2
      141 JUMPIFNOT                        R5 ; [+38]
      142 JUMPIFNOT                        R6 ; [+37]
      143 GETTABLEKS                       R7 R6 K22 ["Color"]
      145 JUMPIFNOT                        R7 ; [+34]
      146 GETTABLEKS                       R7 R6 K22 ["Color"]
      148 GETTABLEKS                       R7 R7 K23 ["Surface"]
      150 JUMPIFNOT                        R7 ; [+12]
      151 GETTABLEKS                       R8 R7 K24 ["Surface_0"]
      153 JUMPIFNOT                        R8 ; [+9]
      154 GETTABLEKS                       R8 R7 K24 ["Surface_0"]
      156 GETTABLEKS                       R8 R8 K1 ["Color3"]
      158 JUMPIFNOT                        R8 ; [+4]
      159 GETTABLEKS                       R8 R7 K24 ["Surface_0"]
      161 GETTABLEKS                       R3 R8 K1 ["Color3"]
      163 GETTABLEKS                       R8 R6 K22 ["Color"]
      165 GETTABLEKS                       R8 R8 K25 ["Stroke"]
      167 JUMPIFNOT                        R8 ; [+12]
      168 GETTABLEKS                       R9 R8 K26 ["Default"]
      170 JUMPIFNOT                        R9 ; [+9]
      171 GETTABLEKS                       R9 R8 K26 ["Default"]
      173 GETTABLEKS                       R9 R9 K1 ["Color3"]
      175 JUMPIFNOT                        R9 ; [+4]
      176 GETTABLEKS                       R9 R8 K26 ["Default"]
      178 GETTABLEKS                       R4 R9 K1 ["Color3"]
      180 NEWTABLE                         R6 0 1
      182 LOADK                            R7 K0 ["MainBackground"]
      183 SETLIST                          R6 R7 1 [1]
      185 GETIMPORT                        R7 K3 [Color3.fromRGB]
      187 LOADN                            R8 36
      188 LOADN                            R9 37
      189 LOADN                            R10 39
      190 CALL                             R7 3 1
      191 GETUPVAL                         R8 1
      192 GETTABLEKS                       R8 R8 K4 ["studioColorByNames"]
      194 MOVE                             R9 R6
      195 MOVE                             R10 R7
      196 CALL                             R8 2 1
      197 MOVE                             R5 R8
      198 OR                               R6 R3 R5
      199 GETUPVAL                         R7 6
      200 SETTABLEKS                       R6 R7 K5 ["BackgroundColor3"]
      202 GETUPVAL                         R7 6
      203 LOADN                            R8 0
      204 SETTABLEKS                       R8 R7 K17 ["BackgroundTransparency"]
      206 GETUPVAL                         R7 7
      207 SETTABLEKS                       R6 R7 K5 ["BackgroundColor3"]
      209 GETUPVAL                         R7 7
      210 LOADN                            R8 0
      211 SETTABLEKS                       R8 R7 K17 ["BackgroundTransparency"]
      213 GETUPVAL                         R7 8
      214 SETTABLEKS                       R6 R7 K5 ["BackgroundColor3"]
      216 GETUPVAL                         R7 9
      217 SETTABLEKS                       R6 R7 K5 ["BackgroundColor3"]
      219 OR                               R7 R3 R5
      220 OR                               R8 R4 R2
      221 GETUPVAL                         R9 10
      222 SETTABLEKS                       R7 R9 K5 ["BackgroundColor3"]
      224 GETUPVAL                         R9 10
      225 LOADN                            R10 0
      226 SETTABLEKS                       R10 R9 K17 ["BackgroundTransparency"]
      228 GETUPVAL                         R9 11
      229 SETTABLEKS                       R8 R9 K22 ["Color"]
      231 GETUPVAL                         R9 11
      232 LOADN                            R10 1
      233 SETTABLEKS                       R10 R9 K27 ["Transparency"]
      235 JUMPIFNOT                        R1 ; [+7]
      236 GETIMPORT                        R9 K3 [Color3.fromRGB]
      238 LOADN                            R10 156
      239 LOADN                            R11 160
      240 LOADN                            R12 166
      241 CALL                             R9 3 1
      242 JUMP                             ; [+6]
      243 GETIMPORT                        R9 K3 [Color3.fromRGB]
      245 LOADN                            R10 96
      246 LOADN                            R11 101
      247 LOADN                            R12 110
      248 CALL                             R9 3 1
      249 NEWTABLE                         R10 0 2
      251 GETUPVAL                         R13 8
      252 GETUPVAL                         R14 12
      253 GETTABLEKS                       R14 R14 K28 ["frame"]
      255 SETLIST                          R10 R13 2 [1]
      257 LOADNIL                          R11
      258 LOADNIL                          R12
      259 FORGPREP                         R10
      260 SETTABLEKS                       R9 R14 K29 ["ScrollBarImageColor3"]
      262 LOADN                            R15 0
      263 SETTABLEKS                       R15 R14 K30 ["ScrollBarImageTransparency"]
      265 FORGLOOP                         R10 2 ; [-6]
      267 GETUPVAL                         R10 9
      268 SETTABLEKS                       R9 R10 K29 ["ScrollBarImageColor3"]
      270 GETUPVAL                         R10 13
      271 CALL                             R10 0 0
      272 GETUPVAL                         R10 14
      273 CALL                             R10 0 0
      274 GETUPVAL                         R10 15
      275 NAMECALL                         R10 R10 K31 ["applyTheme"]
      277 CALL                             R10 1 0
      278 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFEQ                         R1 R2 ; [+2]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 NAMECALL                         R1 R1 K4 ["GetRelativeMousePosition"]
       10 CALL                             R1 1 1
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R1
       13 CALL                             R2 1 1
       14 JUMPIFNOT                        R2 ; [+7]
       15 GETUPVAL                         R2 2
       16 LOADK                            R4 K5 ["contextMenuPosition"]
       17 MOVE                             R5 R1
       18 NAMECALL                         R2 R2 K6 ["set"]
       20 CALL                             R2 3 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R2 2
       23 LOADK                            R4 K5 ["contextMenuPosition"]
       24 LOADNIL                          R5
       25 NAMECALL                         R2 R2 K6 ["set"]
       27 CALL                             R2 3 0
       28 RETURN                           R0 0

PROTO_16:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADK                            R3 K0 ["secondaryTab"]
        3 NAMECALL                         R1 R1 K1 ["get"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 2
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K2 ["Visible"]
       10 GETUPVAL                         R2 3
       11 GETUPVAL                         R3 0
       12 JUMPIFNOT                        R3 ; [+4]
       13 JUMPIFEQKS                       R1 K3 ["design"] ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 SETTABLEKS                       R3 R2 K2 ["Visible"]
       19 GETUPVAL                         R2 4
       20 GETTABLEKS                       R2 R2 K4 ["bindingsHostFrame"]
       22 JUMPIFEQKS                       R1 K5 ["bindings"] ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 SETTABLEKS                       R3 R2 K2 ["Visible"]
       28 GETUPVAL                         R2 4
       29 GETTABLEKS                       R2 R2 K6 ["inspectHostFrame"]
       31 JUMPIFEQKS                       R1 K7 ["inspect"] ; [+2]
       33 LOADB                            R3 0 +1
       34 LOADB                            R3 1
       35 SETTABLEKS                       R3 R2 K2 ["Visible"]
       37 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["deviceProfileRequested"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["emit"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cycle"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 NAMECALL                         R5 R4 K0 ["Disconnect"]
       10 CALL                             R5 1 0
       11 FORGLOOP                         R0 2 ; [-4]
       13 GETIMPORT                        R0 K3 [table.clear]
       15 GETUPVAL                         R1 1
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 2
       18 NAMECALL                         R0 R0 K4 ["destroy"]
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 3
       22 NAMECALL                         R0 R0 K4 ["destroy"]
       24 CALL                             R0 1 0
       25 GETUPVAL                         R0 4
       26 NAMECALL                         R0 R0 K4 ["destroy"]
       28 CALL                             R0 1 0
       29 GETUPVAL                         R0 5
       30 LOADNIL                          R2
       31 NAMECALL                         R0 R0 K5 ["render"]
       33 CALL                             R0 2 0
       34 GETUPVAL                         R0 6
       35 LOADNIL                          R2
       36 NAMECALL                         R0 R0 K5 ["render"]
       38 CALL                             R0 2 0
       39 GETUPVAL                         R0 7
       40 NAMECALL                         R0 R0 K4 ["destroy"]
       42 CALL                             R0 1 0
       43 GETUPVAL                         R0 8
       44 NAMECALL                         R0 R0 K4 ["destroy"]
       46 CALL                             R0 1 0
       47 GETUPVAL                         R0 9
       48 NAMECALL                         R0 R0 K6 ["Destroy"]
       50 CALL                             R0 1 0
       51 GETUPVAL                         R0 10
       52 NAMECALL                         R0 R0 K6 ["Destroy"]
       54 CALL                             R0 1 0
       55 GETUPVAL                         R0 11
       56 NAMECALL                         R0 R0 K6 ["Destroy"]
       58 CALL                             R0 1 0
       59 RETURN                           R0 0

PROTO_20:
        0 DUPCLOSURE                       R5 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 NEWCLOSURE                       R6 P1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R4
        5 GETUPVAL                         R7 1
        6 GETTABLEKS                       R7 R7 K1 ["new"]
        8 DUPTABLE                         R8 K16 [{["themeOverride"], ["panMode"] = False, ["useInsets"] = False, ["gridVisible"] = False, ["zoomScale"] = 1, ["storyName"] = "Foundation Canvas", ["storyMenuItems"], ["storyControlsPinned"] = False, ["deviceProfile"] = , ["contextMenuPosition"] = }]
        9 GETUPVAL                         R9 0
       10 GETTABLEKS                       R9 R9 K17 ["initialCanvasOverride"]
       12 MOVE                             R10 R4
       13 CALL                             R9 1 1
       14 SETTABLEKS                       R9 R8 K2 ["themeOverride"]
       16 NEWTABLE                         R9 0 0
       18 SETTABLEKS                       R9 R8 K11 ["storyMenuItems"]
       20 CALL                             R7 1 1
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R8 R8 K1 ["new"]
       24 CALL                             R8 0 1
       25 GETUPVAL                         R9 3
       26 GETTABLEKS                       R9 R9 K18 ["isLoadModuleAvailable"]
       28 CALL                             R9 0 1
       29 NEWCLOSURE                       R10 P2
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R7
       33 GETUPVAL                         R11 4
       34 GETTABLEKS                       R11 R11 K1 ["new"]
       36 MOVE                             R12 R0
       37 CALL                             R11 1 1
       38 GETTABLEKS                       R12 R11 K19 ["assistantSection"]
       40 LOADB                            R13 0
       41 SETTABLEKS                       R13 R12 K20 ["Visible"]
       43 GETTABLEKS                       R12 R11 K21 ["layersSection"]
       45 LOADB                            R13 0
       46 SETTABLEKS                       R13 R12 K20 ["Visible"]
       48 GETTABLEKS                       R12 R11 K22 ["screensSection"]
       50 GETIMPORT                        R13 K24 [UDim2.new]
       52 LOADN                            R14 1
       53 LOADN                            R15 -1
       54 LOADN                            R16 1
       55 LOADN                            R17 -40
       56 CALL                             R13 4 1
       57 SETTABLEKS                       R13 R12 K25 ["Size"]
       59 GETTABLEKS                       R12 R11 K26 ["designRegion"]
       61 GETIMPORT                        R13 K24 [UDim2.new]
       63 LOADN                            R14 1
       64 LOADN                            R15 -2
       65 LOADN                            R16 1
       66 LOADN                            R17 -40
       67 CALL                             R13 4 1
       68 SETTABLEKS                       R13 R12 K25 ["Size"]
       70 GETTABLEKS                       R12 R11 K27 ["titleLabel"]
       72 GETTABLEKS                       R13 R11 K28 ["overlayFrame"]
       74 GETTABLEKS                       R14 R11 K29 ["headerBarFrame"]
       76 GETTABLEKS                       R15 R11 K30 ["contentFrame"]
       78 GETTABLEKS                       R16 R11 K31 ["previewClipFrame"]
       80 GETTABLEKS                       R17 R11 K32 ["previewFrame"]
       82 GETTABLEKS                       R18 R11 K33 ["inputOverlay"]
       84 GETTABLEKS                       R19 R11 K34 ["floatingChromeFrame"]
       86 GETTABLEKS                       R20 R11 K35 ["floatingStoryControlsFrame"]
       88 GETTABLEKS                       R21 R11 K36 ["floatingStoryControlsStroke"]
       90 GETTABLEKS                       R22 R11 K37 ["secondary"]
       92 GETTABLEKS                       R22 R22 K38 ["shell"]
       94 GETTABLEKS                       R23 R11 K39 ["propertiesPanel"]
       96 GETTABLEKS                       R24 R11 K37 ["secondary"]
       98 GETTABLEKS                       R24 R24 K40 ["divider"]
      100 GETTABLEKS                       R25 R11 K41 ["primary"]
      102 GETTABLEKS                       R25 R25 K38 ["shell"]
      104 GETTABLEKS                       R26 R11 K42 ["layersPanel"]
      106 GETTABLEKS                       R27 R11 K41 ["primary"]
      108 GETTABLEKS                       R27 R27 K40 ["divider"]
      110 GETTABLEKS                       R28 R11 K43 ["layersSectionDivider"]
      112 GETTABLEKS                       R28 R28 K40 ["divider"]
      114 GETTABLEKS                       R29 R11 K44 ["applyLayersScrollbarVisibility"]
      116 GETTABLEKS                       R30 R11 K45 ["idleConnections"]
      118 GETUPVAL                         R31 5
      119 GETTABLEKS                       R31 R31 K46 ["mount"]
      121 MOVE                             R32 R17
      122 DUPTABLE                         R33 K51 [{"Foundation", "React", "ReactRoblox", "getCanvasFoundationTheme"}]
      123 SETTABLEKS                       R4 R33 K47 ["Foundation"]
      125 SETTABLEKS                       R2 R33 K48 ["React"]
      127 SETTABLEKS                       R3 R33 K49 ["ReactRoblox"]
      129 SETTABLEKS                       R10 R33 K50 ["getCanvasFoundationTheme"]
      131 CALL                             R31 2 1
      132 NAMECALL                         R32 R31 K52 ["getViewportFrame"]
      134 CALL                             R32 1 1
      135 NAMECALL                         R33 R31 K53 ["getContentFrame"]
      137 CALL                             R33 1 1
      138 LOADK                            R36 K13 ["deviceProfile"]
      139 NAMECALL                         R37 R31 K54 ["getProfile"]
      141 CALL                             R37 1 -1
      142 NAMECALL                         R34 R7 K55 ["set"]
      144 CALL                             R34 -1 0
      145 GETUPVAL                         R34 6
      146 GETTABLEKS                       R34 R34 K46 ["mount"]
      148 MOVE                             R35 R33
      149 NAMECALL                         R36 R31 K54 ["getProfile"]
      151 CALL                             R36 1 -1
      152 CALL                             R34 -1 1
      153 NEWCLOSURE                       R37 P3
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R34
      156 NAMECALL                         R35 R31 K56 ["onProfileChanged"]
      158 CALL                             R35 2 0
      159 LOADK                            R37 K6 ["gridVisible"]
      160 NEWCLOSURE                       R38 P4
      161 CAPTURE                          VAL R34
      162 NAMECALL                         R35 R7 K57 ["on"]
      164 CALL                             R35 3 0
      165 LOADK                            R37 K58 ["deviceProfileRequested"]
      166 NEWCLOSURE                       R38 P5
      167 CAPTURE                          VAL R31
      168 NAMECALL                         R35 R7 K59 ["onEvent"]
      170 CALL                             R35 3 0
      171 GETUPVAL                         R35 7
      172 GETTABLEKS                       R35 R35 K46 ["mount"]
      174 MOVE                             R36 R16
      175 CALL                             R35 1 1
      176 LOADNIL                          R36
      177 LOADNIL                          R37
      178 LOADB                            R38 0
      179 NEWCLOSURE                       R39 P6
      180 CAPTURE                          VAL R11
      181 LOADK                            R42 K60 ["primaryTab"]
      182 NAMECALL                         R40 R8 K61 ["get"]
      184 CALL                             R40 2 1
      185 GETTABLEKS                       R41 R11 K62 ["screensHostFrame"]
      187 JUMPIFEQKS                       R40 K63 ["screens"] ; [+2]
      189 LOADB                            R42 0 +1
      190 LOADB                            R42 1
      191 SETTABLEKS                       R42 R41 K20 ["Visible"]
      193 LOADK                            R42 K60 ["primaryTab"]
      194 MOVE                             R43 R39
      195 NAMECALL                         R40 R8 K57 ["on"]
      197 CALL                             R40 3 0
      198 NEWCLOSURE                       R40 P7
      199 CAPTURE                          VAL R8
      200 CAPTURE                          VAL R26
      201 CAPTURE                          VAL R23
      202 CAPTURE                          REF R38
      203 CAPTURE                          VAL R11
      204 LOADK                            R43 K64 ["secondaryTab"]
      205 MOVE                             R44 R40
      206 NAMECALL                         R41 R8 K57 ["on"]
      208 CALL                             R41 3 0
      209 LOADK                            R43 K64 ["secondaryTab"]
      210 NAMECALL                         R41 R8 K61 ["get"]
      212 CALL                             R41 2 1
      213 LOADB                            R42 0
      214 SETTABLEKS                       R42 R26 K20 ["Visible"]
      216 MOVE                             R42 R38
      217 JUMPIFNOT                        R42 ; [+4]
      218 JUMPIFEQKS                       R41 K65 ["design"] ; [+2]
      220 LOADB                            R42 0 +1
      221 LOADB                            R42 1
      222 SETTABLEKS                       R42 R23 K20 ["Visible"]
      224 GETTABLEKS                       R42 R11 K66 ["bindingsHostFrame"]
      226 JUMPIFEQKS                       R41 K67 ["bindings"] ; [+2]
      228 LOADB                            R43 0 +1
      229 LOADB                            R43 1
      230 SETTABLEKS                       R43 R42 K20 ["Visible"]
      232 GETTABLEKS                       R42 R11 K68 ["inspectHostFrame"]
      234 JUMPIFEQKS                       R41 K69 ["inspect"] ; [+2]
      236 LOADB                            R43 0 +1
      237 LOADB                            R43 1
      238 SETTABLEKS                       R43 R42 K20 ["Visible"]
      240 NEWCLOSURE                       R41 P8
      241 CAPTURE                          VAL R16
      242 CAPTURE                          VAL R35
      243 CAPTURE                          UPVAL U8
      244 CAPTURE                          UPVAL U9
      245 CAPTURE                          VAL R32
      246 NEWCLOSURE                       R42 P9
      247 CAPTURE                          VAL R41
      248 CAPTURE                          VAL R7
      249 GETTABLEKS                       R43 R3 K70 ["createRoot"]
      251 GETIMPORT                        R44 K72 [Instance.new]
      253 LOADK                            R45 K73 ["Folder"]
      254 CALL                             R44 1 -1
      255 CALL                             R43 -1 1
      256 GETTABLEKS                       R44 R3 K70 ["createRoot"]
      258 GETIMPORT                        R45 K72 [Instance.new]
      260 LOADK                            R46 K73 ["Folder"]
      261 CALL                             R45 1 -1
      262 CALL                             R44 -1 1
      263 NEWCLOSURE                       R45 P10
      264 CAPTURE                          VAL R43
      265 CAPTURE                          VAL R2
      266 CAPTURE                          UPVAL U9
      267 CAPTURE                          VAL R16
      268 CAPTURE                          VAL R13
      269 CAPTURE                          VAL R14
      270 CAPTURE                          VAL R19
      271 CAPTURE                          VAL R11
      272 CAPTURE                          VAL R1
      273 CAPTURE                          VAL R7
      274 CAPTURE                          VAL R8
      275 CAPTURE                          VAL R9
      276 CAPTURE                          UPVAL U3
      277 JUMPIFNOT                        R4 ; [+32]
      278 GETTABLEKS                       R46 R4 K74 ["FoundationProvider"]
      280 JUMPIFNOT                        R46 ; [+29]
      281 MOVE                             R46 R45
      282 CALL                             R46 0 0
      283 NEWCLOSURE                       R46 P11
      284 CAPTURE                          UPVAL U10
      285 CAPTURE                          VAL R7
      286 CAPTURE                          UPVAL U0
      287 CAPTURE                          VAL R4
      288 CAPTURE                          VAL R2
      289 GETTABLEKS                       R49 R3 K75 ["createPortal"]
      291 GETTABLEKS                       R50 R2 K76 ["createElement"]
      293 MOVE                             R51 R46
      294 CALL                             R50 1 1
      295 MOVE                             R51 R16
      296 CALL                             R49 2 -1
      297 NAMECALL                         R47 R44 K77 ["render"]
      299 CALL                             R47 -1 0
      300 LOADK                            R49 K2 ["themeOverride"]
      301 NEWCLOSURE                       R50 P12
      302 CAPTURE                          VAL R31
      303 NAMECALL                         R47 R7 K57 ["on"]
      305 CALL                             R47 3 0
      306 NAMECALL                         R47 R31 K78 ["applyTheme"]
      308 CALL                             R47 1 0
      309 JUMP                             ; [+71]
      310 GETIMPORT                        R46 K72 [Instance.new]
      312 LOADK                            R47 K79 ["Frame"]
      313 CALL                             R46 1 1
      314 LOADK                            R47 K80 ["FoundationMissingBanner"]
      315 SETTABLEKS                       R47 R46 K81 ["Name"]
      317 GETIMPORT                        R47 K83 [UDim2.fromScale]
      319 LOADN                            R48 1
      320 LOADN                            R49 1
      321 CALL                             R47 2 1
      322 SETTABLEKS                       R47 R46 K25 ["Size"]
      324 GETIMPORT                        R47 K83 [UDim2.fromScale]
      326 LOADN                            R48 0
      327 LOADN                            R49 0
      328 CALL                             R47 2 1
      329 SETTABLEKS                       R47 R46 K84 ["Position"]
      331 GETIMPORT                        R47 K87 [Color3.fromRGB]
      333 LOADN                            R48 40
      334 LOADN                            R49 40
      335 LOADN                            R50 40
      336 CALL                             R47 3 1
      337 SETTABLEKS                       R47 R46 K88 ["BackgroundColor3"]
      339 LOADN                            R47 0
      340 SETTABLEKS                       R47 R46 K89 ["BorderSizePixel"]
      342 LOADN                            R47 60
      343 SETTABLEKS                       R47 R46 K90 ["ZIndex"]
      345 SETTABLEKS                       R14 R46 K91 ["Parent"]
      347 GETIMPORT                        R47 K72 [Instance.new]
      349 LOADK                            R48 K92 ["TextLabel"]
      350 CALL                             R47 1 1
      351 GETIMPORT                        R48 K83 [UDim2.fromScale]
      353 LOADN                            R49 1
      354 LOADN                            R50 1
      355 CALL                             R48 2 1
      356 SETTABLEKS                       R48 R47 K25 ["Size"]
      358 LOADN                            R48 1
      359 SETTABLEKS                       R48 R47 K93 ["BackgroundTransparency"]
      361 LOADK                            R48 K94 ["Foundation Canvas  (Foundation not loaded)"]
      362 SETTABLEKS                       R48 R47 K95 ["Text"]
      364 GETIMPORT                        R48 K87 [Color3.fromRGB]
      366 LOADN                            R49 200
      367 LOADN                            R50 80
      368 LOADN                            R51 80
      369 CALL                             R48 3 1
      370 SETTABLEKS                       R48 R47 K96 ["TextColor3"]
      372 GETIMPORT                        R48 K100 [Enum.Font.GothamMedium]
      374 SETTABLEKS                       R48 R47 K98 ["Font"]
      376 LOADN                            R48 11
      377 SETTABLEKS                       R48 R47 K101 ["TextSize"]
      379 SETTABLEKS                       R46 R47 K91 ["Parent"]
      381 NEWCLOSURE                       R36 P13
      382 CAPTURE                          VAL R15
      383 CAPTURE                          UPVAL U0
      384 CAPTURE                          VAL R4
      385 CAPTURE                          VAL R27
      386 CAPTURE                          VAL R24
      387 CAPTURE                          VAL R28
      388 CAPTURE                          VAL R22
      389 CAPTURE                          VAL R25
      390 CAPTURE                          VAL R23
      391 CAPTURE                          VAL R26
      392 CAPTURE                          VAL R20
      393 CAPTURE                          VAL R21
      394 CAPTURE                          VAL R35
      395 CAPTURE                          VAL R29
      396 CAPTURE                          VAL R45
      397 CAPTURE                          VAL R31
      398 MOVE                             R46 R36
      399 CALL                             R46 0 0
      400 GETIMPORT                        R46 K103 [settings]
      402 CALL                             R46 0 1
      403 GETTABLEKS                       R46 R46 K104 ["Studio"]
      405 GETTABLEKS                       R46 R46 K105 ["ThemeChanged"]
      407 MOVE                             R48 R36
      408 NAMECALL                         R46 R46 K106 ["Connect"]
      410 CALL                             R46 2 1
      411 MOVE                             R37 R46
      412 MOVE                             R47 R30
      413 GETTABLEKS                       R48 R16 K107 ["InputBegan"]
      415 NEWCLOSURE                       R50 P14
      416 CAPTURE                          VAL R0
      417 CAPTURE                          VAL R41
      418 CAPTURE                          VAL R7
      419 NAMECALL                         R48 R48 K106 ["Connect"]
      421 CALL                             R48 2 -1
      422 FASTCALL                         TABLE_INSERT ; [+2]
      423 GETIMPORT                        R46 K110 [table.insert]
      425 CALL                             R46 -1 0
      426 GETUPVAL                         R46 11
      427 GETTABLEKS                       R46 R46 K111 ["create"]
      429 DUPTABLE                         R47 K122 [{"canvasState", "overlayFrame", "previewClipFrame", "previewFrame", "deviceViewportFrame", "deviceContentFrame", "inputOverlay", "propertiesPanel", "floatingStoryControlsFrame", "errorOverlay", "gridOverlay", "openContextMenuAt", "setControlsVisible", "requestDeviceProfile", "cycleDeviceProfile", "destroy"}]
      430 SETTABLEKS                       R7 R47 K112 ["canvasState"]
      432 SETTABLEKS                       R13 R47 K28 ["overlayFrame"]
      434 SETTABLEKS                       R16 R47 K31 ["previewClipFrame"]
      436 SETTABLEKS                       R17 R47 K32 ["previewFrame"]
      438 SETTABLEKS                       R32 R47 K113 ["deviceViewportFrame"]
      440 SETTABLEKS                       R33 R47 K114 ["deviceContentFrame"]
      442 SETTABLEKS                       R18 R47 K33 ["inputOverlay"]
      444 SETTABLEKS                       R23 R47 K39 ["propertiesPanel"]
      446 SETTABLEKS                       R20 R47 K35 ["floatingStoryControlsFrame"]
      448 SETTABLEKS                       R35 R47 K115 ["errorOverlay"]
      450 SETTABLEKS                       R34 R47 K116 ["gridOverlay"]
      452 SETTABLEKS                       R42 R47 K117 ["openContextMenuAt"]
      454 NEWCLOSURE                       R48 P15
      455 CAPTURE                          REF R38
      456 CAPTURE                          VAL R8
      457 CAPTURE                          VAL R26
      458 CAPTURE                          VAL R23
      459 CAPTURE                          VAL R11
      460 SETTABLEKS                       R48 R47 K118 ["setControlsVisible"]
      462 NEWCLOSURE                       R48 P16
      463 CAPTURE                          VAL R7
      464 SETTABLEKS                       R48 R47 K119 ["requestDeviceProfile"]
      466 NEWCLOSURE                       R48 P17
      467 CAPTURE                          VAL R31
      468 SETTABLEKS                       R48 R47 K120 ["cycleDeviceProfile"]
      470 NEWCLOSURE                       R48 P18
      471 CAPTURE                          REF R37
      472 CAPTURE                          VAL R30
      473 CAPTURE                          VAL R34
      474 CAPTURE                          VAL R31
      475 CAPTURE                          VAL R35
      476 CAPTURE                          VAL R43
      477 CAPTURE                          VAL R44
      478 CAPTURE                          VAL R7
      479 CAPTURE                          VAL R8
      480 CAPTURE                          VAL R12
      481 CAPTURE                          VAL R13
      482 CAPTURE                          VAL R15
      483 SETTABLEKS                       R48 R47 K121 ["destroy"]
      485 CALL                             R46 1 1
      486 CLOSEUPVALS                      R37
      487 RETURN                           R46 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["AppFramework"]
       13 GETTABLEKS                       R2 R2 K8 ["DeviceProfiles"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K9 ["Parent"]
       22 GETTABLEKS                       R3 R3 K10 ["GridOverlay"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K9 ["Parent"]
       31 GETTABLEKS                       R4 R4 K11 ["DeviceFrame"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R5 K1 [script]
       38 GETTABLEKS                       R5 R5 K9 ["Parent"]
       40 GETTABLEKS                       R5 R5 K12 ["Canvas"]
       42 GETTABLEKS                       R5 R5 K13 ["CanvasHitTest"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETIMPORT                        R6 K1 [script]
       49 GETTABLEKS                       R6 R6 K9 ["Parent"]
       51 GETTABLEKS                       R6 R6 K12 ["Canvas"]
       53 GETTABLEKS                       R6 R6 K14 ["CanvasTheme"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K5 [require]
       58 GETIMPORT                        R7 K1 [script]
       60 GETTABLEKS                       R7 R7 K9 ["Parent"]
       62 GETTABLEKS                       R7 R7 K12 ["Canvas"]
       64 GETTABLEKS                       R7 R7 K15 ["CanvasState"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K5 [require]
       69 GETIMPORT                        R8 K1 [script]
       71 GETTABLEKS                       R8 R8 K9 ["Parent"]
       73 GETTABLEKS                       R8 R8 K12 ["Canvas"]
       75 GETTABLEKS                       R8 R8 K16 ["useCanvasState"]
       77 CALL                             R7 1 1
       78 GETIMPORT                        R8 K5 [require]
       80 GETIMPORT                        R9 K1 [script]
       82 GETTABLEKS                       R9 R9 K9 ["Parent"]
       84 GETTABLEKS                       R9 R9 K12 ["Canvas"]
       86 GETTABLEKS                       R9 R9 K17 ["ErrorOverlay"]
       88 CALL                             R8 1 1
       89 GETIMPORT                        R9 K5 [require]
       91 GETIMPORT                        R10 K1 [script]
       93 GETTABLEKS                       R10 R10 K9 ["Parent"]
       95 GETTABLEKS                       R10 R10 K12 ["Canvas"]
       97 GETTABLEKS                       R10 R10 K18 ["CanvasPublicApi"]
       99 CALL                             R9 1 1
      100 GETIMPORT                        R10 K5 [require]
      102 GETIMPORT                        R11 K1 [script]
      104 GETTABLEKS                       R11 R11 K9 ["Parent"]
      106 GETTABLEKS                       R11 R11 K12 ["Canvas"]
      108 GETTABLEKS                       R11 R11 K19 ["ChromeUI"]
      110 CALL                             R10 1 1
      111 GETIMPORT                        R11 K5 [require]
      113 GETTABLEKS                       R12 R0 K6 ["Src"]
      115 GETTABLEKS                       R12 R12 K20 ["Util"]
      117 GETTABLEKS                       R12 R12 K21 ["Executor"]
      119 CALL                             R11 1 1
      120 GETIMPORT                        R12 K5 [require]
      122 GETIMPORT                        R13 K1 [script]
      124 GETTABLEKS                       R13 R13 K9 ["Parent"]
      126 GETTABLEKS                       R13 R13 K22 ["Workspace"]
      128 GETTABLEKS                       R13 R13 K23 ["WorkspaceShell"]
      130 CALL                             R12 1 1
      131 GETIMPORT                        R13 K5 [require]
      133 GETIMPORT                        R14 K1 [script]
      135 GETTABLEKS                       R14 R14 K9 ["Parent"]
      137 GETTABLEKS                       R14 R14 K22 ["Workspace"]
      139 GETTABLEKS                       R14 R14 K24 ["WorkspaceState"]
      141 CALL                             R13 1 1
      142 DUPCLOSURE                       R14 K25 [PROTO_20]
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R8
      151 CAPTURE                          VAL R4
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R9
      155 DUPTABLE                         R15 K27 [{"createCanvasUI"}]
      156 SETTABLEKS                       R14 R15 K26 ["createCanvasUI"]
      158 RETURN                           R15 1
