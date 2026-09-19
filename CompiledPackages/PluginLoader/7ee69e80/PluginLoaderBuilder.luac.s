PROTO_0:
        0 GETTABLEKS                       R4 R1 K0 ["id"]
        2 MOVE                             R7 R4
        3 GETTABLEKS                       R8 R1 K1 ["dockWidgetPluginGuiInfo"]
        5 NAMECALL                         R5 R0 K2 ["CreateDockWidgetPluginGui"]
        7 CALL                             R5 3 1
        8 SETTABLEKS                       R2 R5 K3 ["Title"]
       10 JUMPIFEQKNIL                     R3 ; [+3]
       12 SETTABLEKS                       R3 R5 K4 ["Name"]
       14 GETTABLEKS                       R6 R1 K5 ["zIndexBehavior"]
       16 JUMPIF                           R6 ; [+2]
       17 GETIMPORT                        R6 K9 [Enum.ZIndexBehavior.Sibling]
       19 SETTABLEKS                       R6 R5 K7 ["ZIndexBehavior"]
       21 GETUPVAL                         R6 0
       22 JUMPIFNOT                        R6 ; [+10]
       23 GETTABLEKS                       R7 R1 K10 ["keyboardNavigationEnabled"]
       25 JUMPIFEQKNIL                     R7 ; [+4]
       27 GETTABLEKS                       R6 R1 K10 ["keyboardNavigationEnabled"]
       29 JUMP                             ; [+1]
       30 GETUPVAL                         R6 1
       31 SETTABLEKS                       R6 R5 K11 ["TabKeyboardNavigation"]
       33 RETURN                           R5 1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["getLocalizedText"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETTABLEKS                       R4 R1 K0 ["getName"]
        2 GETUPVAL                         R5 0
        3 GETUPVAL                         R6 1
        4 NAMECALL                         R6 R6 K1 ["getKeyNamespace"]
        6 CALL                             R6 1 1
        7 GETUPVAL                         R7 1
        8 NAMECALL                         R7 R7 K2 ["getPluginName"]
       10 CALL                             R7 1 -1
       11 CALL                             R4 -1 1
       12 GETTABLEKS                       R5 R1 K3 ["getDescription"]
       14 GETUPVAL                         R6 0
       15 GETUPVAL                         R7 1
       16 NAMECALL                         R7 R7 K1 ["getKeyNamespace"]
       18 CALL                             R7 1 1
       19 GETUPVAL                         R8 1
       20 NAMECALL                         R8 R8 K2 ["getPluginName"]
       22 CALL                             R8 1 -1
       23 CALL                             R5 -1 1
       24 GETTABLEKS                       R6 R1 K4 ["icon"]
       26 GETTABLEKS                       R9 R1 K5 ["text"]
       28 FASTCALL1                        TYPE R9 ; [+2]
       29 GETIMPORT                        R8 K7 [type]
       31 CALL                             R8 1 1
       32 JUMPIFNOTEQKS                    R8 K8 ["function"] ; [+14]
       34 GETTABLEKS                       R7 R1 K5 ["text"]
       36 GETUPVAL                         R8 0
       37 GETUPVAL                         R9 1
       38 NAMECALL                         R9 R9 K1 ["getKeyNamespace"]
       40 CALL                             R9 1 1
       41 GETUPVAL                         R10 1
       42 NAMECALL                         R10 R10 K2 ["getPluginName"]
       44 CALL                             R10 1 -1
       45 CALL                             R7 -1 1
       46 JUMP                             ; [+2]
       47 GETTABLEKS                       R7 R1 K5 ["text"]
       49 NAMECALL                         R2 R0 K9 ["CreateButton"]
       51 CALL                             R2 5 1
       52 GETTABLEKS                       R3 R1 K10 ["clickableWhenViewportHidden"]
       54 JUMPIFNOT                        R3 ; [+4]
       55 GETTABLEKS                       R3 R1 K10 ["clickableWhenViewportHidden"]
       57 SETTABLEKS                       R3 R2 K11 ["ClickableWhenViewportHidden"]
       59 GETTABLEKS                       R3 R1 K12 ["enabled"]
       61 JUMPIFEQKNIL                     R3 ; [+5]
       63 GETTABLEKS                       R3 R1 K12 ["enabled"]
       65 SETTABLEKS                       R3 R2 K13 ["Enabled"]
       67 LOADB                            R5 0
       68 NAMECALL                         R3 R2 K14 ["SetActive"]
       70 CALL                             R3 2 0
       71 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["uri"]
        4 NAMECALL                         R0 R0 K1 ["BindToActivatedAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K10 [{"Uri", "Enabled", "Visible", "Text", "Tooltip", "Icon", "Shortcuts", "Checkable", "Checked", "VisibleOnRibbon"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K11 ["uri"]
        5 SETTABLEKS                       R3 R2 K0 ["Uri"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K12 ["enabled"]
       10 SETTABLEKS                       R3 R2 K1 ["Enabled"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K13 ["visible"]
       15 SETTABLEKS                       R3 R2 K2 ["Visible"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K14 ["getText"]
       20 GETUPVAL                         R4 2
       21 GETUPVAL                         R5 3
       22 NAMECALL                         R5 R5 K15 ["getKeyNamespace"]
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 3
       26 NAMECALL                         R6 R6 K16 ["getPluginName"]
       28 CALL                             R6 1 -1
       29 CALL                             R3 -1 1
       30 SETTABLEKS                       R3 R2 K3 ["Text"]
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R3 R3 K17 ["getTooltip"]
       35 GETUPVAL                         R4 2
       36 GETUPVAL                         R5 3
       37 NAMECALL                         R5 R5 K15 ["getKeyNamespace"]
       39 CALL                             R5 1 1
       40 GETUPVAL                         R6 3
       41 NAMECALL                         R6 R6 K16 ["getPluginName"]
       43 CALL                             R6 1 -1
       44 CALL                             R3 -1 1
       45 SETTABLEKS                       R3 R2 K4 ["Tooltip"]
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R3 R3 K18 ["icon"]
       50 SETTABLEKS                       R3 R2 K5 ["Icon"]
       52 GETUPVAL                         R3 1
       53 GETTABLEKS                       R3 R3 K19 ["shortcuts"]
       55 SETTABLEKS                       R3 R2 K6 ["Shortcuts"]
       57 GETUPVAL                         R3 1
       58 GETTABLEKS                       R3 R3 K20 ["checkable"]
       60 SETTABLEKS                       R3 R2 K7 ["Checkable"]
       62 GETUPVAL                         R3 1
       63 GETTABLEKS                       R3 R3 K21 ["checked"]
       65 SETTABLEKS                       R3 R2 K8 ["Checked"]
       67 GETUPVAL                         R3 1
       68 GETTABLEKS                       R3 R3 K22 ["visibleOnRibbon"]
       70 SETTABLEKS                       R3 R2 K9 ["VisibleOnRibbon"]
       72 LOADB                            R3 1
       73 NAMECALL                         R0 R0 K23 ["CreateAsync"]
       75 CALL                             R0 3 -1
       76 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plugin"]
        3 LOADK                            R2 K1 ["Widgets"]
        4 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R3 0 1
        9 DUPTABLE                         R4 K6 [{"Uri", "Widget", "DEPRECATED_PluginGui"}]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K7 ["uri"]
       13 SETTABLEKS                       R5 R4 K3 ["Uri"]
       15 GETUPVAL                         R5 2
       16 SETTABLEKS                       R5 R4 K4 ["Widget"]
       18 GETUPVAL                         R5 2
       19 SETTABLEKS                       R5 R4 K5 ["DEPRECATED_PluginGui"]
       21 SETLIST                          R3 R4 1 [1]
       23 NAMECALL                         R1 R0 K8 ["RegisterAsync"]
       25 CALL                             R1 2 0
       26 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 1
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K1 ["pluginLoader"]
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
       17 NAMECALL                         R0 R0 K0 ["Destroy"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K3 ["actionTriggeredSignals"]
       23 JUMPIFNOT                        R0 ; [+12]
       24 GETIMPORT                        R0 K5 [pairs]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K3 ["actionTriggeredSignals"]
       29 CALL                             R0 1 3
       30 FORGPREP_NEXT                    R0
       31 NAMECALL                         R5 R4 K0 ["Destroy"]
       33 CALL                             R5 1 0
       34 FORGLOOP                         R0 2 ; [-4]
       36 GETIMPORT                        R0 K5 [pairs]
       38 GETUPVAL                         R1 1
       39 GETTABLEKS                       R1 R1 K6 ["signals"]
       41 CALL                             R0 1 3
       42 FORGPREP_NEXT                    R0
       43 NAMECALL                         R5 R4 K0 ["Destroy"]
       45 CALL                             R5 1 0
       46 FORGLOOP                         R0 2 ; [-4]
       48 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K7 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "shouldImmediatelyOpen"}]
        1 GETTABLEKS                       R2 R0 K0 ["plugin"]
        3 SETTABLEKS                       R2 R1 K0 ["plugin"]
        5 GETTABLEKS                       R2 R0 K1 ["pluginName"]
        7 SETTABLEKS                       R2 R1 K1 ["pluginName"]
        9 GETTABLEKS                       R2 R0 K2 ["translationResourceTable"]
       11 SETTABLEKS                       R2 R1 K2 ["translationResourceTable"]
       13 GETTABLEKS                       R2 R0 K3 ["fallbackResourceTable"]
       15 SETTABLEKS                       R2 R1 K3 ["fallbackResourceTable"]
       17 GETTABLEKS                       R2 R0 K4 ["overrideLocaleId"]
       19 SETTABLEKS                       R2 R1 K4 ["overrideLocaleId"]
       21 GETTABLEKS                       R2 R0 K5 ["localizationNamespace"]
       23 SETTABLEKS                       R2 R1 K5 ["localizationNamespace"]
       25 GETTABLEKS                       R2 R0 K6 ["shouldImmediatelyOpen"]
       27 SETTABLEKS                       R2 R1 K6 ["shouldImmediatelyOpen"]
       29 GETTABLEKS                       R2 R0 K0 ["plugin"]
       31 LOADK                            R4 K8 ["Actions"]
       32 NAMECALL                         R2 R2 K9 ["GetPluginComponent"]
       34 CALL                             R2 2 1
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K10 ["new"]
       38 MOVE                             R4 R1
       39 CALL                             R3 1 1
       40 NEWCLOSURE                       R4 P0
       41 CAPTURE                          REF R3
       42 NEWCLOSURE                       R5 P1
       43 CAPTURE                          VAL R4
       44 CAPTURE                          REF R3
       45 LOADNIL                          R6
       46 LOADNIL                          R7
       47 LOADNIL                          R8
       48 NEWTABLE                         R9 0 0
       50 NEWTABLE                         R10 0 0
       52 NEWTABLE                         R11 0 0
       54 GETTABLEKS                       R12 R0 K11 ["noToolbar"]
       56 JUMPIFEQKB                       R12 TRUE ; [+66]
       58 GETTABLEKS                       R12 R0 K12 ["getToolbarName"]
       60 JUMPIFNOT                        R12 ; [+10]
       61 GETTABLEKS                       R12 R0 K12 ["getToolbarName"]
       63 MOVE                             R13 R4
       64 NAMECALL                         R14 R3 K13 ["getKeyNamespace"]
       66 CALL                             R14 1 1
       67 NAMECALL                         R15 R3 K14 ["getPluginName"]
       69 CALL                             R15 1 -1
       70 CALL                             R12 -1 1
       71 GETTABLEKS                       R13 R0 K0 ["plugin"]
       73 MOVE                             R15 R12
       74 NAMECALL                         R13 R13 K15 ["CreateToolbar"]
       76 CALL                             R13 2 1
       77 MOVE                             R6 R13
       78 GETTABLEKS                       R13 R0 K16 ["buttonInfo"]
       80 MOVE                             R14 R5
       81 MOVE                             R15 R6
       82 MOVE                             R16 R13
       83 CALL                             R14 2 1
       84 MOVE                             R7 R14
       85 MOVE                             R16 R7
       86 NAMECALL                         R14 R3 K17 ["registerButton"]
       88 CALL                             R14 2 1
       89 MOVE                             R8 R14
       90 GETUPVAL                         R14 1
       91 JUMPIFNOT                        R14 ; [+31]
       92 GETTABLEKS                       R14 R0 K18 ["additionalButtonInfos"]
       94 JUMPIFEQKNIL                     R14 ; [+28]
       96 GETTABLEKS                       R14 R0 K18 ["additionalButtonInfos"]
       98 LOADNIL                          R15
       99 LOADNIL                          R16
      100 FORGPREP                         R14
      101 MOVE                             R19 R5
      102 MOVE                             R20 R6
      103 MOVE                             R21 R18
      104 CALL                             R19 2 1
      105 FASTCALL2                        TABLE_INSERT R10 R19 ; [+5]
      107 MOVE                             R21 R10
      108 MOVE                             R22 R19
      109 GETIMPORT                        R20 K21 [table.insert]
      111 CALL                             R20 2 0
      112 MOVE                             R21 R11
      113 MOVE                             R24 R19
      114 NAMECALL                         R22 R3 K17 ["registerButton"]
      116 CALL                             R22 2 -1
      117 FASTCALL                         TABLE_INSERT ; [+2]
      118 GETIMPORT                        R20 K21 [table.insert]
      120 CALL                             R20 -1 0
      121 FORGLOOP                         R14 2 ; [-21]
      123 GETTABLEKS                       R12 R0 K22 ["actionInfos"]
      125 JUMPIFEQKNIL                     R12 ; [+48]
      127 GETTABLEKS                       R12 R0 K22 ["actionInfos"]
      129 LOADNIL                          R13
      130 LOADNIL                          R14
      131 FORGPREP                         R12
      132 LOADNIL                          R17
      133 GETTABLEKS                       R18 R16 K23 ["isPreexistingAction"]
      135 JUMPIFNOT                        R18 ; [+13]
      136 GETIMPORT                        R18 K25 [pcall]
      138 NEWCLOSURE                       R19 P2
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R16
      141 CALL                             R18 1 2
      142 JUMPIF                           R18 ; [+4]
      143 GETIMPORT                        R20 K27 [error]
      145 MOVE                             R21 R19
      146 CALL                             R20 1 0
      147 MOVE                             R17 R19
      148 JUMP                             ; [+14]
      149 GETIMPORT                        R18 K25 [pcall]
      151 NEWCLOSURE                       R19 P3
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R4
      155 CAPTURE                          REF R3
      156 CALL                             R18 1 2
      157 JUMPIF                           R18 ; [+4]
      158 GETIMPORT                        R20 K27 [error]
      160 MOVE                             R21 R19
      161 CALL                             R20 1 0
      162 GETTABLEN                        R17 R19 1
      163 MOVE                             R19 R9
      164 MOVE                             R22 R17
      165 NAMECALL                         R20 R3 K28 ["registerSignal"]
      167 CALL                             R20 2 -1
      168 FASTCALL                         TABLE_INSERT ; [+2]
      169 GETIMPORT                        R18 K21 [table.insert]
      171 CALL                             R18 -1 0
      172 FORGLOOP                         R12 2 ; [-41]
      174 LOADNIL                          R12
      175 GETTABLEKS                       R13 R0 K29 ["dockWidgetInfo"]
      177 JUMPIFNOT                        R13 ; [+120]
      178 GETTABLEKS                       R14 R13 K30 ["getDockTitle"]
      180 MOVE                             R15 R4
      181 NAMECALL                         R16 R3 K13 ["getKeyNamespace"]
      183 CALL                             R16 1 1
      184 NAMECALL                         R17 R3 K14 ["getPluginName"]
      186 CALL                             R17 1 -1
      187 CALL                             R14 -1 1
      188 GETTABLEKS                       R15 R13 K31 ["name"]
      190 JUMPIFNOT                        R15 ; [+58]
      191 GETTABLEKS                       R17 R13 K31 ["name"]
      193 FASTCALL1                        TYPE R17 ; [+2]
      194 GETIMPORT                        R16 K33 [type]
      196 CALL                             R16 1 1
      197 JUMPIFNOTEQKS                    R16 K34 ["function"] ; [+12]
      199 GETTABLEKS                       R15 R13 K31 ["name"]
      201 MOVE                             R16 R4
      202 NAMECALL                         R17 R3 K13 ["getKeyNamespace"]
      204 CALL                             R17 1 1
      205 NAMECALL                         R18 R3 K14 ["getPluginName"]
      207 CALL                             R18 1 -1
      208 CALL                             R15 -1 1
      209 JUMP                             ; [+2]
      210 GETTABLEKS                       R15 R13 K31 ["name"]
      212 GETTABLEKS                       R16 R0 K0 ["plugin"]
      214 GETTABLEKS                       R17 R13 K35 ["id"]
      216 MOVE                             R20 R17
      217 GETTABLEKS                       R21 R13 K36 ["dockWidgetPluginGuiInfo"]
      219 NAMECALL                         R18 R16 K37 ["CreateDockWidgetPluginGui"]
      221 CALL                             R18 3 1
      222 SETTABLEKS                       R14 R18 K38 ["Title"]
      224 JUMPIFEQKNIL                     R15 ; [+3]
      226 SETTABLEKS                       R15 R18 K39 ["Name"]
      228 GETTABLEKS                       R19 R13 K40 ["zIndexBehavior"]
      230 JUMPIF                           R19 ; [+2]
      231 GETIMPORT                        R19 K44 [Enum.ZIndexBehavior.Sibling]
      233 SETTABLEKS                       R19 R18 K42 ["ZIndexBehavior"]
      235 GETUPVAL                         R19 2
      236 JUMPIFNOT                        R19 ; [+10]
      237 GETTABLEKS                       R20 R13 K45 ["keyboardNavigationEnabled"]
      239 JUMPIFEQKNIL                     R20 ; [+4]
      241 GETTABLEKS                       R19 R13 K45 ["keyboardNavigationEnabled"]
      243 JUMP                             ; [+1]
      244 GETUPVAL                         R19 3
      245 SETTABLEKS                       R19 R18 K46 ["TabKeyboardNavigation"]
      247 MOVE                             R12 R18
      248 JUMP                             ; [+32]
      249 GETTABLEKS                       R15 R0 K0 ["plugin"]
      251 GETTABLEKS                       R16 R13 K35 ["id"]
      253 MOVE                             R19 R16
      254 GETTABLEKS                       R20 R13 K36 ["dockWidgetPluginGuiInfo"]
      256 NAMECALL                         R17 R15 K37 ["CreateDockWidgetPluginGui"]
      258 CALL                             R17 3 1
      259 SETTABLEKS                       R14 R17 K38 ["Title"]
      261 GETTABLEKS                       R18 R13 K40 ["zIndexBehavior"]
      263 JUMPIF                           R18 ; [+2]
      264 GETIMPORT                        R18 K44 [Enum.ZIndexBehavior.Sibling]
      266 SETTABLEKS                       R18 R17 K42 ["ZIndexBehavior"]
      268 GETUPVAL                         R18 2
      269 JUMPIFNOT                        R18 ; [+10]
      270 GETTABLEKS                       R19 R13 K45 ["keyboardNavigationEnabled"]
      272 JUMPIFEQKNIL                     R19 ; [+4]
      274 GETTABLEKS                       R18 R13 K45 ["keyboardNavigationEnabled"]
      276 JUMP                             ; [+1]
      277 GETUPVAL                         R18 3
      278 SETTABLEKS                       R18 R17 K46 ["TabKeyboardNavigation"]
      280 MOVE                             R12 R17
      281 MOVE                             R17 R12
      282 NAMECALL                         R15 R3 K47 ["registerWidget"]
      284 CALL                             R15 2 0
      285 GETUPVAL                         R15 4
      286 JUMPIFNOT                        R15 ; [+11]
      287 GETTABLEKS                       R15 R13 K48 ["uri"]
      289 JUMPIFEQKNIL                     R15 ; [+8]
      291 GETIMPORT                        R15 K51 [task.spawn]
      293 NEWCLOSURE                       R16 P4
      294 CAPTURE                          VAL R0
      295 CAPTURE                          VAL R13
      296 CAPTURE                          REF R12
      297 CALL                             R15 1 0
      298 NEWTABLE                         R14 0 0
      300 GETTABLEKS                       R15 R0 K52 ["extraTriggers"]
      302 JUMPIFNOT                        R15 ; [+15]
      303 GETIMPORT                        R15 K54 [pairs]
      305 GETTABLEKS                       R16 R0 K52 ["extraTriggers"]
      307 CALL                             R15 1 3
      308 FORGPREP_NEXT                    R15
      309 MOVE                             R20 R19
      310 CALL                             R20 0 1
      311 MOVE                             R23 R20
      312 NAMECALL                         R21 R3 K28 ["registerSignal"]
      314 CALL                             R21 2 1
      315 SETTABLE                         R21 R14 R18
      316 FORGLOOP                         R15 2 ; [-8]
      318 DUPTABLE                         R15 K64 [{"pluginLoader", "plugin", "toolbar", "mainButton", "mainDockWidget", "mainButtonClickedSignal", "additionalButtons", "additionalButtonClickedSignals", "actionTriggeredSignals", "signals"}]
      319 SETTABLEKS                       R3 R15 K55 ["pluginLoader"]
      321 GETTABLEKS                       R16 R0 K0 ["plugin"]
      323 SETTABLEKS                       R16 R15 K0 ["plugin"]
      325 SETTABLEKS                       R6 R15 K56 ["toolbar"]
      327 SETTABLEKS                       R7 R15 K57 ["mainButton"]
      329 SETTABLEKS                       R12 R15 K58 ["mainDockWidget"]
      331 SETTABLEKS                       R8 R15 K59 ["mainButtonClickedSignal"]
      333 GETUPVAL                         R17 1
      334 JUMPIFNOT                        R17 ; [+2]
      335 MOVE                             R16 R10
      336 JUMP                             ; [+1]
      337 LOADNIL                          R16
      338 SETTABLEKS                       R16 R15 K60 ["additionalButtons"]
      340 GETUPVAL                         R17 1
      341 JUMPIFNOT                        R17 ; [+2]
      342 MOVE                             R16 R11
      343 JUMP                             ; [+1]
      344 LOADNIL                          R16
      345 SETTABLEKS                       R16 R15 K61 ["additionalButtonClickedSignals"]
      347 SETTABLEKS                       R9 R15 K62 ["actionTriggeredSignals"]
      349 SETTABLEKS                       R14 R15 K63 ["signals"]
      351 GETTABLEKS                       R16 R0 K0 ["plugin"]
      353 GETTABLEKS                       R16 R16 K65 ["Unloading"]
      355 NEWCLOSURE                       R18 P5
      356 CAPTURE                          REF R3
      357 CAPTURE                          VAL R15
      358 NAMECALL                         R16 R16 K66 ["Connect"]
      360 CALL                             R16 2 0
      361 CLOSEUPVALS                      R3
      362 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["PluginLoader"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["defineLuaFlags"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagPluginLoaderAddMultipleButtonInfos"]
       17 CALL                             R2 0 1
       18 GETIMPORT                        R3 K9 [game]
       20 LOADK                            R5 K10 ["PluginLoaderRegisterUri"]
       21 LOADB                            R6 0
       22 NAMECALL                         R3 R3 K11 ["DefineFastFlag"]
       24 CALL                             R3 3 1
       25 GETIMPORT                        R4 K9 [game]
       27 LOADK                            R6 K12 ["PluginLoaderKeyboardNavigation"]
       28 LOADB                            R7 0
       29 NAMECALL                         R4 R4 K11 ["DefineFastFlag"]
       31 CALL                             R4 3 1
       32 GETIMPORT                        R5 K9 [game]
       34 LOADK                            R7 K13 ["PluginLoaderKeyboardNavigationDefault"]
       35 LOADB                            R8 0
       36 NAMECALL                         R5 R5 K11 ["DefineFastFlag"]
       38 CALL                             R5 3 1
       39 NEWTABLE                         R6 1 0
       41 DUPCLOSURE                       R7 K14 [PROTO_0]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R5
       44 DUPCLOSURE                       R8 K15 [PROTO_7]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R3
       50 SETTABLEKS                       R8 R6 K16 ["build"]
       52 RETURN                           R6 1
