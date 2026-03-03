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
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["uri"]
        4 NAMECALL                         R0 R0 K1 ["BindToActivatedAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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
       46 NEWCLOSURE                       R5 P1
       47 CAPTURE                          VAL R4
       48 CAPTURE                          REF R3
       49 LOADNIL                          R6
       50 LOADNIL                          R7
       51 LOADNIL                          R8
       52 NEWTABLE                         R9 0 0
       54 NEWTABLE                         R10 0 0
       56 NEWTABLE                         R11 0 0
       58 GETTABLEKS                       R12 R0 K11 ["noToolbar"]
       60 JUMPIFEQKB                       R12 TRUE ; [+66]
       62 GETTABLEKS                       R12 R0 K12 ["getToolbarName"]
       64 JUMPIFNOT                        R12 ; [+10]
       65 GETTABLEKS                       R12 R0 K12 ["getToolbarName"]
       67 MOVE                             R13 R4
       68 NAMECALL                         R14 R3 K13 ["getKeyNamespace"]
       70 CALL                             R14 1 1
       71 NAMECALL                         R15 R3 K14 ["getPluginName"]
       73 CALL                             R15 1 -1
       74 CALL                             R12 -1 1
       75 GETTABLEKS                       R13 R0 K0 ["plugin"]
       77 MOVE                             R15 R12
       78 NAMECALL                         R13 R13 K15 ["CreateToolbar"]
       80 CALL                             R13 2 1
       81 MOVE                             R6 R13
       82 GETTABLEKS                       R13 R0 K16 ["buttonInfo"]
       84 MOVE                             R14 R5
       85 MOVE                             R15 R6
       86 MOVE                             R16 R13
       87 CALL                             R14 2 1
       88 MOVE                             R7 R14
       89 MOVE                             R16 R7
       90 NAMECALL                         R14 R3 K17 ["registerButton"]
       92 CALL                             R14 2 1
       93 MOVE                             R8 R14
       94 GETUPVAL                         R14 2
       95 JUMPIFNOT                        R14 ; [+31]
       96 GETTABLEKS                       R14 R0 K18 ["additionalButtonInfos"]
       98 JUMPIFEQKNIL                     R14 ; [+28]
      100 GETTABLEKS                       R14 R0 K18 ["additionalButtonInfos"]
      102 LOADNIL                          R15
      103 LOADNIL                          R16
      104 FORGPREP                         R14
      105 MOVE                             R19 R5
      106 MOVE                             R20 R6
      107 MOVE                             R21 R18
      108 CALL                             R19 2 1
      109 FASTCALL2                        TABLE_INSERT R10 R19 ; [+5]
      111 MOVE                             R21 R10
      112 MOVE                             R22 R19
      113 GETIMPORT                        R20 K21 [table.insert]
      115 CALL                             R20 2 0
      116 MOVE                             R21 R11
      117 MOVE                             R24 R19
      118 NAMECALL                         R22 R3 K17 ["registerButton"]
      120 CALL                             R22 2 -1
      121 FASTCALL                         TABLE_INSERT ; [+2]
      122 GETIMPORT                        R20 K21 [table.insert]
      124 CALL                             R20 -1 0
      125 FORGLOOP                         R14 2 ; [-21]
      127 GETUPVAL                         R12 0
      128 JUMPIFNOT                        R12 ; [+51]
      129 GETTABLEKS                       R12 R0 K22 ["actionInfos"]
      131 JUMPIFEQKNIL                     R12 ; [+48]
      133 GETTABLEKS                       R12 R0 K22 ["actionInfos"]
      135 LOADNIL                          R13
      136 LOADNIL                          R14
      137 FORGPREP                         R12
      138 LOADNIL                          R17
      139 GETTABLEKS                       R18 R16 K23 ["isPreexistingAction"]
      141 JUMPIFNOT                        R18 ; [+13]
      142 GETIMPORT                        R18 K25 [pcall]
      144 NEWCLOSURE                       R19 P2
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R16
      147 CALL                             R18 1 2
      148 JUMPIF                           R18 ; [+4]
      149 GETIMPORT                        R20 K27 [error]
      151 MOVE                             R21 R19
      152 CALL                             R20 1 0
      153 MOVE                             R17 R19
      154 JUMP                             ; [+14]
      155 GETIMPORT                        R18 K25 [pcall]
      157 NEWCLOSURE                       R19 P3
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R16
      160 CAPTURE                          VAL R4
      161 CAPTURE                          REF R3
      162 CALL                             R18 1 2
      163 JUMPIF                           R18 ; [+4]
      164 GETIMPORT                        R20 K27 [error]
      166 MOVE                             R21 R19
      167 CALL                             R20 1 0
      168 GETTABLEN                        R17 R19 1
      169 MOVE                             R19 R9
      170 MOVE                             R22 R17
      171 NAMECALL                         R20 R3 K28 ["registerSignal"]
      173 CALL                             R20 2 -1
      174 FASTCALL                         TABLE_INSERT ; [+2]
      175 GETIMPORT                        R18 K21 [table.insert]
      177 CALL                             R18 -1 0
      178 FORGLOOP                         R12 2 ; [-41]
      180 LOADNIL                          R12
      181 GETTABLEKS                       R13 R0 K29 ["dockWidgetInfo"]
      183 JUMPIFNOT                        R13 ; [+83]
      184 GETTABLEKS                       R14 R13 K30 ["getDockTitle"]
      186 MOVE                             R15 R4
      187 NAMECALL                         R16 R3 K13 ["getKeyNamespace"]
      189 CALL                             R16 1 1
      190 NAMECALL                         R17 R3 K14 ["getPluginName"]
      192 CALL                             R17 1 -1
      193 CALL                             R14 -1 1
      194 GETTABLEKS                       R15 R13 K31 ["name"]
      196 JUMPIFNOT                        R15 ; [+46]
      197 GETTABLEKS                       R17 R13 K31 ["name"]
      199 FASTCALL1                        TYPE R17 ; [+2]
      200 GETIMPORT                        R16 K33 [type]
      202 CALL                             R16 1 1
      203 JUMPIFNOTEQKS                    R16 K34 ["function"] ; [+12]
      205 GETTABLEKS                       R15 R13 K31 ["name"]
      207 MOVE                             R16 R4
      208 NAMECALL                         R17 R3 K13 ["getKeyNamespace"]
      210 CALL                             R17 1 1
      211 NAMECALL                         R18 R3 K14 ["getPluginName"]
      213 CALL                             R18 1 -1
      214 CALL                             R15 -1 1
      215 JUMP                             ; [+2]
      216 GETTABLEKS                       R15 R13 K31 ["name"]
      218 GETTABLEKS                       R16 R0 K0 ["plugin"]
      220 GETTABLEKS                       R17 R13 K35 ["id"]
      222 MOVE                             R20 R17
      223 GETTABLEKS                       R21 R13 K36 ["dockWidgetPluginGuiInfo"]
      225 NAMECALL                         R18 R16 K37 ["CreateDockWidgetPluginGui"]
      227 CALL                             R18 3 1
      228 SETTABLEKS                       R14 R18 K38 ["Title"]
      230 JUMPIFEQKNIL                     R15 ; [+3]
      232 SETTABLEKS                       R15 R18 K39 ["Name"]
      234 GETTABLEKS                       R19 R13 K40 ["zIndexBehavior"]
      236 JUMPIF                           R19 ; [+2]
      237 GETIMPORT                        R19 K44 [Enum.ZIndexBehavior.Sibling]
      239 SETTABLEKS                       R19 R18 K42 ["ZIndexBehavior"]
      241 MOVE                             R12 R18
      242 JUMP                             ; [+20]
      243 GETTABLEKS                       R15 R0 K0 ["plugin"]
      245 GETTABLEKS                       R16 R13 K35 ["id"]
      247 MOVE                             R19 R16
      248 GETTABLEKS                       R20 R13 K36 ["dockWidgetPluginGuiInfo"]
      250 NAMECALL                         R17 R15 K37 ["CreateDockWidgetPluginGui"]
      252 CALL                             R17 3 1
      253 SETTABLEKS                       R14 R17 K38 ["Title"]
      255 GETTABLEKS                       R18 R13 K40 ["zIndexBehavior"]
      257 JUMPIF                           R18 ; [+2]
      258 GETIMPORT                        R18 K44 [Enum.ZIndexBehavior.Sibling]
      260 SETTABLEKS                       R18 R17 K42 ["ZIndexBehavior"]
      262 MOVE                             R12 R17
      263 MOVE                             R17 R12
      264 NAMECALL                         R15 R3 K45 ["registerWidget"]
      266 CALL                             R15 2 0
      267 NEWTABLE                         R14 0 0
      269 GETTABLEKS                       R15 R0 K46 ["extraTriggers"]
      271 JUMPIFNOT                        R15 ; [+15]
      272 GETIMPORT                        R15 K48 [pairs]
      274 GETTABLEKS                       R16 R0 K46 ["extraTriggers"]
      276 CALL                             R15 1 3
      277 FORGPREP_NEXT                    R15
      278 MOVE                             R20 R19
      279 CALL                             R20 0 1
      280 MOVE                             R23 R20
      281 NAMECALL                         R21 R3 K28 ["registerSignal"]
      283 CALL                             R21 2 1
      284 SETTABLE                         R21 R14 R18
      285 FORGLOOP                         R15 2 ; [-8]
      287 DUPTABLE                         R15 K58 [{"pluginLoader", "plugin", "toolbar", "mainButton", "mainDockWidget", "mainButtonClickedSignal", "additionalButtons", "additionalButtonClickedSignals", "actionTriggeredSignals", "signals"}]
      288 SETTABLEKS                       R3 R15 K49 ["pluginLoader"]
      290 GETTABLEKS                       R16 R0 K0 ["plugin"]
      292 SETTABLEKS                       R16 R15 K0 ["plugin"]
      294 SETTABLEKS                       R6 R15 K50 ["toolbar"]
      296 SETTABLEKS                       R7 R15 K51 ["mainButton"]
      298 SETTABLEKS                       R12 R15 K52 ["mainDockWidget"]
      300 SETTABLEKS                       R8 R15 K53 ["mainButtonClickedSignal"]
      302 GETUPVAL                         R17 2
      303 JUMPIFNOT                        R17 ; [+2]
      304 MOVE                             R16 R10
      305 JUMP                             ; [+1]
      306 LOADNIL                          R16
      307 SETTABLEKS                       R16 R15 K54 ["additionalButtons"]
      309 GETUPVAL                         R17 2
      310 JUMPIFNOT                        R17 ; [+2]
      311 MOVE                             R16 R11
      312 JUMP                             ; [+1]
      313 LOADNIL                          R16
      314 SETTABLEKS                       R16 R15 K55 ["additionalButtonClickedSignals"]
      316 GETUPVAL                         R17 0
      317 JUMPIFNOT                        R17 ; [+2]
      318 MOVE                             R16 R9
      319 JUMP                             ; [+1]
      320 LOADNIL                          R16
      321 SETTABLEKS                       R16 R15 K56 ["actionTriggeredSignals"]
      323 SETTABLEKS                       R14 R15 K57 ["signals"]
      325 GETTABLEKS                       R17 R0 K0 ["plugin"]
      327 GETTABLEKS                       R16 R17 K59 ["Unloading"]
      329 NEWCLOSURE                       R18 P4
      330 CAPTURE                          REF R3
      331 CAPTURE                          VAL R15
      332 CAPTURE                          UPVAL U0
      333 NAMECALL                         R16 R16 K60 ["Connect"]
      335 CALL                             R16 2 0
      336 CLOSEUPVALS                      R3
      337 RETURN                           R15 1

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
       18 GETIMPORT                        R4 K4 [require]
       20 GETTABLEKS                       R5 R0 K6 ["defineLuaFlags"]
       22 CALL                             R4 1 1
       23 GETTABLEKS                       R3 R4 K8 ["getFFlagPluginLoaderAddMultipleButtonInfos"]
       25 CALL                             R3 0 1
       26 NEWTABLE                         R4 1 0
       28 DUPCLOSURE                       R5 K9 [PROTO_0]
       29 DUPCLOSURE                       R6 K10 [PROTO_6]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R3
       33 SETTABLEKS                       R6 R4 K11 ["build"]
       35 RETURN                           R4 1
