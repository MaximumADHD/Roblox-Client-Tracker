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
       21 RETURN                           R5 1

PROTO_1:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["getLocalizedText"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["uri"]
        4 NAMECALL                         R0 R0 K1 ["BindToActivatedAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K10 [{"Uri", "Enabled", "Visible", "Text", "Tooltip", "Icon", "Shortcuts", "Checkable", "Checked", "VisibleOnRibbon"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K11 ["uri"]
        5 SETTABLEKS                       R3 R2 K0 ["Uri"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K12 ["enabled"]
       10 SETTABLEKS                       R3 R2 K1 ["Enabled"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K13 ["visible"]
       15 SETTABLEKS                       R3 R2 K2 ["Visible"]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K14 ["getText"]
       20 GETUPVAL                         R4 2
       21 GETUPVAL                         R5 3
       22 NAMECALL                         R5 R5 K15 ["getKeyNamespace"]
       24 CALL                             R5 1 1
       25 GETUPVAL                         R6 3
       26 NAMECALL                         R6 R6 K16 ["getPluginName"]
       28 CALL                             R6 1 -1
       29 CALL                             R3 -1 1
       30 SETTABLEKS                       R3 R2 K3 ["Text"]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R3 R4 K17 ["getTooltip"]
       35 GETUPVAL                         R4 2
       36 GETUPVAL                         R5 3
       37 NAMECALL                         R5 R5 K15 ["getKeyNamespace"]
       39 CALL                             R5 1 1
       40 GETUPVAL                         R6 3
       41 NAMECALL                         R6 R6 K16 ["getPluginName"]
       43 CALL                             R6 1 -1
       44 CALL                             R3 -1 1
       45 SETTABLEKS                       R3 R2 K4 ["Tooltip"]
       47 GETUPVAL                         R4 1
       48 GETTABLEKS                       R3 R4 K18 ["icon"]
       50 SETTABLEKS                       R3 R2 K5 ["Icon"]
       52 GETUPVAL                         R4 1
       53 GETTABLEKS                       R3 R4 K19 ["shortcuts"]
       55 SETTABLEKS                       R3 R2 K6 ["Shortcuts"]
       57 GETUPVAL                         R4 1
       58 GETTABLEKS                       R3 R4 K20 ["checkable"]
       60 SETTABLEKS                       R3 R2 K7 ["Checkable"]
       62 GETUPVAL                         R4 1
       63 GETTABLEKS                       R3 R4 K21 ["checked"]
       65 SETTABLEKS                       R3 R2 K8 ["Checked"]
       67 GETUPVAL                         R4 1
       68 GETTABLEKS                       R3 R4 K22 ["visibleOnRibbon"]
       70 SETTABLEKS                       R3 R2 K9 ["VisibleOnRibbon"]
       72 LOADB                            R3 1
       73 NAMECALL                         R0 R0 K23 ["CreateAsync"]
       75 CALL                             R0 3 -1
       76 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 0
        6 GETUPVAL                         R0 1
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K1 ["pluginLoader"]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K2 ["mainButtonClickedSignal"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R0 R1 K2 ["mainButtonClickedSignal"]
       17 NAMECALL                         R0 R0 K0 ["Destroy"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 2
       21 JUMPIFNOT                        R0 ; [+16]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R0 R1 K3 ["actionTriggeredSignals"]
       25 JUMPIFNOT                        R0 ; [+12]
       26 GETIMPORT                        R0 K5 [pairs]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R1 R3 K3 ["actionTriggeredSignals"]
       31 CALL                             R0 1 3
       32 FORGPREP_NEXT                    R0
       33 NAMECALL                         R5 R4 K0 ["Destroy"]
       35 CALL                             R5 1 0
       36 FORGLOOP                         R0 2 ; [-4]
       38 GETIMPORT                        R0 K5 [pairs]
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R1 R3 K6 ["signals"]
       43 CALL                             R0 1 3
       44 FORGPREP_NEXT                    R0
       45 NAMECALL                         R5 R4 K0 ["Destroy"]
       47 CALL                             R5 1 0
       48 FORGLOOP                         R0 2 ; [-4]
       50 RETURN                           R0 0

PROTO_5:
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
       29 GETUPVAL                         R3 0
       30 JUMPIFNOT                        R3 ; [+7]
       31 GETTABLEKS                       R2 R0 K0 ["plugin"]
       33 LOADK                            R4 K8 ["Actions"]
       34 NAMECALL                         R2 R2 K9 ["GetPluginComponent"]
       36 CALL                             R2 2 1
       37 JUMP                             ; [+1]
       38 LOADNIL                          R2
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R3 R4 K10 ["new"]
       42 MOVE                             R4 R1
       43 CALL                             R3 1 1
       44 NEWCLOSURE                       R4 P0
       45 CAPTURE                          REF R3
       46 LOADNIL                          R5
       47 LOADNIL                          R6
       48 LOADNIL                          R7
       49 NEWTABLE                         R8 0 0
       51 GETTABLEKS                       R9 R0 K11 ["noToolbar"]
       53 JUMPIFEQKB                       R9 TRUE ; [+94]
       55 GETTABLEKS                       R9 R0 K12 ["getToolbarName"]
       57 JUMPIFNOT                        R9 ; [+10]
       58 GETTABLEKS                       R9 R0 K12 ["getToolbarName"]
       60 MOVE                             R10 R4
       61 NAMECALL                         R11 R3 K13 ["getKeyNamespace"]
       63 CALL                             R11 1 1
       64 NAMECALL                         R12 R3 K14 ["getPluginName"]
       66 CALL                             R12 1 -1
       67 CALL                             R9 -1 1
       68 GETTABLEKS                       R10 R0 K0 ["plugin"]
       70 MOVE                             R12 R9
       71 NAMECALL                         R10 R10 K15 ["CreateToolbar"]
       73 CALL                             R10 2 1
       74 MOVE                             R5 R10
       75 GETTABLEKS                       R10 R0 K16 ["buttonInfo"]
       77 GETTABLEKS                       R13 R10 K17 ["getName"]
       79 MOVE                             R14 R4
       80 NAMECALL                         R15 R3 K13 ["getKeyNamespace"]
       82 CALL                             R15 1 1
       83 NAMECALL                         R16 R3 K14 ["getPluginName"]
       85 CALL                             R16 1 -1
       86 CALL                             R13 -1 1
       87 GETTABLEKS                       R14 R10 K18 ["getDescription"]
       89 MOVE                             R15 R4
       90 NAMECALL                         R16 R3 K13 ["getKeyNamespace"]
       92 CALL                             R16 1 1
       93 NAMECALL                         R17 R3 K14 ["getPluginName"]
       95 CALL                             R17 1 -1
       96 CALL                             R14 -1 1
       97 GETTABLEKS                       R15 R10 K19 ["icon"]
       99 GETTABLEKS                       R18 R10 K20 ["text"]
      101 FASTCALL1                        TYPE R18 ; [+2]
      102 GETIMPORT                        R17 K22 [type]
      104 CALL                             R17 1 1
      105 JUMPIFNOTEQKS                    R17 K23 ["function"] ; [+12]
      107 GETTABLEKS                       R16 R10 K20 ["text"]
      109 MOVE                             R17 R4
      110 NAMECALL                         R18 R3 K13 ["getKeyNamespace"]
      112 CALL                             R18 1 1
      113 NAMECALL                         R19 R3 K14 ["getPluginName"]
      115 CALL                             R19 1 -1
      116 CALL                             R16 -1 1
      117 JUMP                             ; [+2]
      118 GETTABLEKS                       R16 R10 K20 ["text"]
      120 NAMECALL                         R11 R5 K24 ["CreateButton"]
      122 CALL                             R11 5 1
      123 MOVE                             R6 R11
      124 GETTABLEKS                       R11 R10 K25 ["clickableWhenViewportHidden"]
      126 JUMPIFNOT                        R11 ; [+4]
      127 GETTABLEKS                       R11 R10 K25 ["clickableWhenViewportHidden"]
      129 SETTABLEKS                       R11 R6 K26 ["ClickableWhenViewportHidden"]
      131 GETTABLEKS                       R11 R10 K27 ["enabled"]
      133 JUMPIFEQKNIL                     R11 ; [+5]
      135 GETTABLEKS                       R11 R10 K27 ["enabled"]
      137 SETTABLEKS                       R11 R6 K28 ["Enabled"]
      139 LOADB                            R13 0
      140 NAMECALL                         R11 R6 K29 ["SetActive"]
      142 CALL                             R11 2 0
      143 MOVE                             R13 R6
      144 NAMECALL                         R11 R3 K30 ["registerButton"]
      146 CALL                             R11 2 1
      147 MOVE                             R7 R11
      148 GETUPVAL                         R9 0
      149 JUMPIFNOT                        R9 ; [+51]
      150 GETTABLEKS                       R9 R0 K31 ["actionInfos"]
      152 JUMPIFEQKNIL                     R9 ; [+48]
      154 GETTABLEKS                       R9 R0 K31 ["actionInfos"]
      156 LOADNIL                          R10
      157 LOADNIL                          R11
      158 FORGPREP                         R9
      159 LOADNIL                          R14
      160 GETTABLEKS                       R15 R13 K32 ["isPreexistingAction"]
      162 JUMPIFNOT                        R15 ; [+13]
      163 GETIMPORT                        R15 K34 [pcall]
      165 NEWCLOSURE                       R16 P1
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R13
      168 CALL                             R15 1 2
      169 JUMPIF                           R15 ; [+4]
      170 GETIMPORT                        R17 K36 [error]
      172 MOVE                             R18 R16
      173 CALL                             R17 1 0
      174 MOVE                             R14 R16
      175 JUMP                             ; [+14]
      176 GETIMPORT                        R15 K34 [pcall]
      178 NEWCLOSURE                       R16 P2
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R13
      181 CAPTURE                          VAL R4
      182 CAPTURE                          REF R3
      183 CALL                             R15 1 2
      184 JUMPIF                           R15 ; [+4]
      185 GETIMPORT                        R17 K36 [error]
      187 MOVE                             R18 R16
      188 CALL                             R17 1 0
      189 GETTABLEN                        R14 R16 1
      190 MOVE                             R16 R8
      191 MOVE                             R19 R14
      192 NAMECALL                         R17 R3 K37 ["registerSignal"]
      194 CALL                             R17 2 -1
      195 FASTCALL                         TABLE_INSERT ; [+2]
      196 GETIMPORT                        R15 K40 [table.insert]
      198 CALL                             R15 -1 0
      199 FORGLOOP                         R9 2 ; [-41]
      201 LOADNIL                          R9
      202 GETTABLEKS                       R10 R0 K41 ["dockWidgetInfo"]
      204 JUMPIFNOT                        R10 ; [+83]
      205 GETTABLEKS                       R11 R10 K42 ["getDockTitle"]
      207 MOVE                             R12 R4
      208 NAMECALL                         R13 R3 K13 ["getKeyNamespace"]
      210 CALL                             R13 1 1
      211 NAMECALL                         R14 R3 K14 ["getPluginName"]
      213 CALL                             R14 1 -1
      214 CALL                             R11 -1 1
      215 GETTABLEKS                       R12 R10 K43 ["name"]
      217 JUMPIFNOT                        R12 ; [+46]
      218 GETTABLEKS                       R14 R10 K43 ["name"]
      220 FASTCALL1                        TYPE R14 ; [+2]
      221 GETIMPORT                        R13 K22 [type]
      223 CALL                             R13 1 1
      224 JUMPIFNOTEQKS                    R13 K23 ["function"] ; [+12]
      226 GETTABLEKS                       R12 R10 K43 ["name"]
      228 MOVE                             R13 R4
      229 NAMECALL                         R14 R3 K13 ["getKeyNamespace"]
      231 CALL                             R14 1 1
      232 NAMECALL                         R15 R3 K14 ["getPluginName"]
      234 CALL                             R15 1 -1
      235 CALL                             R12 -1 1
      236 JUMP                             ; [+2]
      237 GETTABLEKS                       R12 R10 K43 ["name"]
      239 GETTABLEKS                       R13 R0 K0 ["plugin"]
      241 GETTABLEKS                       R14 R10 K44 ["id"]
      243 MOVE                             R17 R14
      244 GETTABLEKS                       R18 R10 K45 ["dockWidgetPluginGuiInfo"]
      246 NAMECALL                         R15 R13 K46 ["CreateDockWidgetPluginGui"]
      248 CALL                             R15 3 1
      249 SETTABLEKS                       R11 R15 K47 ["Title"]
      251 JUMPIFEQKNIL                     R12 ; [+3]
      253 SETTABLEKS                       R12 R15 K48 ["Name"]
      255 GETTABLEKS                       R16 R10 K49 ["zIndexBehavior"]
      257 JUMPIF                           R16 ; [+2]
      258 GETIMPORT                        R16 K53 [Enum.ZIndexBehavior.Sibling]
      260 SETTABLEKS                       R16 R15 K51 ["ZIndexBehavior"]
      262 MOVE                             R9 R15
      263 JUMP                             ; [+20]
      264 GETTABLEKS                       R12 R0 K0 ["plugin"]
      266 GETTABLEKS                       R13 R10 K44 ["id"]
      268 MOVE                             R16 R13
      269 GETTABLEKS                       R17 R10 K45 ["dockWidgetPluginGuiInfo"]
      271 NAMECALL                         R14 R12 K46 ["CreateDockWidgetPluginGui"]
      273 CALL                             R14 3 1
      274 SETTABLEKS                       R11 R14 K47 ["Title"]
      276 GETTABLEKS                       R15 R10 K49 ["zIndexBehavior"]
      278 JUMPIF                           R15 ; [+2]
      279 GETIMPORT                        R15 K53 [Enum.ZIndexBehavior.Sibling]
      281 SETTABLEKS                       R15 R14 K51 ["ZIndexBehavior"]
      283 MOVE                             R9 R14
      284 MOVE                             R14 R9
      285 NAMECALL                         R12 R3 K54 ["registerWidget"]
      287 CALL                             R12 2 0
      288 NEWTABLE                         R11 0 0
      290 GETTABLEKS                       R12 R0 K55 ["extraTriggers"]
      292 JUMPIFNOT                        R12 ; [+15]
      293 GETIMPORT                        R12 K57 [pairs]
      295 GETTABLEKS                       R13 R0 K55 ["extraTriggers"]
      297 CALL                             R12 1 3
      298 FORGPREP_NEXT                    R12
      299 MOVE                             R17 R16
      300 CALL                             R17 0 1
      301 MOVE                             R20 R17
      302 NAMECALL                         R18 R3 K37 ["registerSignal"]
      304 CALL                             R18 2 1
      305 SETTABLE                         R18 R11 R15
      306 FORGLOOP                         R12 2 ; [-8]
      308 DUPTABLE                         R12 K65 [{"pluginLoader", "plugin", "toolbar", "mainButton", "mainDockWidget", "mainButtonClickedSignal", "actionTriggeredSignals", "signals"}]
      309 SETTABLEKS                       R3 R12 K58 ["pluginLoader"]
      311 GETTABLEKS                       R13 R0 K0 ["plugin"]
      313 SETTABLEKS                       R13 R12 K0 ["plugin"]
      315 SETTABLEKS                       R5 R12 K59 ["toolbar"]
      317 SETTABLEKS                       R6 R12 K60 ["mainButton"]
      319 SETTABLEKS                       R9 R12 K61 ["mainDockWidget"]
      321 SETTABLEKS                       R7 R12 K62 ["mainButtonClickedSignal"]
      323 GETUPVAL                         R14 0
      324 JUMPIFNOT                        R14 ; [+2]
      325 MOVE                             R13 R8
      326 JUMP                             ; [+1]
      327 LOADNIL                          R13
      328 SETTABLEKS                       R13 R12 K63 ["actionTriggeredSignals"]
      330 SETTABLEKS                       R11 R12 K64 ["signals"]
      332 GETTABLEKS                       R14 R0 K0 ["plugin"]
      334 GETTABLEKS                       R13 R14 K66 ["Unloading"]
      336 NEWCLOSURE                       R15 P3
      337 CAPTURE                          REF R3
      338 CAPTURE                          VAL R12
      339 CAPTURE                          UPVAL U0
      340 NAMECALL                         R13 R13 K67 ["Connect"]
      342 CALL                             R13 2 0
      343 CLOSEUPVALS                      R3
      344 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["PluginLoader"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R3 K4 [require]
       12 GETTABLEKS                       R4 R0 K6 ["defineLuaFlags"]
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R2 R3 K7 ["getFFlagRegisterActionsPluginLoader"]
       17 CALL                             R2 0 1
       18 NEWTABLE                         R3 1 0
       20 DUPCLOSURE                       R4 K8 [PROTO_0]
       21 DUPCLOSURE                       R5 K9 [PROTO_5]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R5 R3 K10 ["build"]
       26 RETURN                           R3 1
