PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetPreinitPayload"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isSupported"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 FASTPCALL                        pcall 1 ; [+2]
       10 GETIMPORT                        R1 K2 [pcall]
       12 CALL                             R1 1 2
       13 JUMPIF                           R1 ; [+10]
       14 GETIMPORT                        R3 K4 [warn]
       16 LOADK                            R4 K5 ["PluginLoader: could not read the preinit payload, loading normally instead: %*"]
       17 MOVE                             R6 R2
       18 NAMECALL                         R4 R4 K6 ["format"]
       20 CALL                             R4 2 1
       21 CALL                             R3 1 0
       22 LOADNIL                          R3
       23 RETURN                           R3 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K7 ["isHandoff"]
       27 MOVE                             R4 R2
       28 CALL                             R3 1 1
       29 JUMPIFNOT                        R3 ; [+1]
       30 RETURN                           R2 1
       31 LOADNIL                          R3
       32 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["actionInfos"]
        2 JUMPIFEQKNIL                     R2 ; [+23]
        4 GETTABLEKS                       R3 R0 K0 ["actionInfos"]
        6 LENGTH                           R2 R3
        7 LOADN                            R3 0
        8 JUMPIFNOTLT                      R3 R2 ; [+17]
       10 GETTABLEKS                       R2 R1 K1 ["actionTriggeredSignals"]
       12 JUMPIFNOTEQKNIL                  R2 ; [+13]
       14 GETIMPORT                        R2 K3 [warn]
       16 LOADK                            R4 K4 ["PluginLoader: %* passed actionInfos but its preinit handed off no "]
       17 GETTABLEKS                       R6 R0 K5 ["pluginName"]
       19 NAMECALL                         R4 R4 K6 ["format"]
       21 CALL                             R4 2 1
       22 LOADK                            R5 K7 ["actionTriggeredSignals, so those actions were never created. Create them in the preinit and "]
       23 LOADK                            R6 K8 ["pass them through the handoff."]
       24 CONCAT                           R3 R4 R6
       25 CALL                             R2 1 0
       26 GETTABLEKS                       R2 R0 K9 ["dockWidgetInfo"]
       28 JUMPIFEQKNIL                     R2 ; [+20]
       30 GETTABLEKS                       R2 R0 K9 ["dockWidgetInfo"]
       32 GETTABLEKS                       R2 R2 K10 ["uri"]
       34 JUMPIFEQKNIL                     R2 ; [+14]
       36 GETUPVAL                         R2 0
       37 JUMPIFNOT                        R2 ; [+11]
       38 GETIMPORT                        R2 K3 [warn]
       40 LOADK                            R4 K11 ["PluginLoader: %* has a dockWidgetInfo.uri, which the preinit adopt path does not "]
       41 GETTABLEKS                       R6 R0 K5 ["pluginName"]
       43 NAMECALL                         R4 R4 K6 ["format"]
       45 CALL                             R4 2 1
       46 LOADK                            R5 K12 ["register with the Widgets component."]
       47 CONCAT                           R3 R4 R5
       48 CALL                             R2 1 0
       49 GETUPVAL                         R2 1
       50 JUMPIFNOT                        R2 ; [+35]
       51 GETTABLEKS                       R2 R0 K13 ["additionalButtonInfos"]
       53 JUMPIFEQKNIL                     R2 ; [+32]
       55 GETTABLEKS                       R3 R1 K14 ["additionalButtons"]
       57 JUMPIFNOT                        R3 ; [+4]
       58 GETTABLEKS                       R3 R1 K14 ["additionalButtons"]
       60 LENGTH                           R2 R3
       61 JUMP                             ; [+1]
       62 LOADN                            R2 0
       63 GETTABLEKS                       R4 R0 K13 ["additionalButtonInfos"]
       65 LENGTH                           R3 R4
       66 JUMPIFNOTLT                      R2 R3 ; [+19]
       68 GETIMPORT                        R3 K3 [warn]
       70 LOADK                            R5 K15 ["PluginLoader: %* declares %* additionalButtonInfos "]
       71 GETTABLEKS                       R7 R0 K5 ["pluginName"]
       73 GETTABLEKS                       R9 R0 K13 ["additionalButtonInfos"]
       75 LENGTH                           R8 R9
       76 NAMECALL                         R5 R5 K6 ["format"]
       78 CALL                             R5 3 1
       79 LOADK                            R6 K16 ["but its preinit handed off %* additional buttons."]
       80 MOVE                             R8 R2
       81 NAMECALL                         R6 R6 K6 ["format"]
       83 CALL                             R6 2 1
       84 CONCAT                           R4 R5 R6
       85 CALL                             R3 1 0
       86 RETURN                           R0 0

PROTO_3:
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
       29 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pluginLoader"]
        3 NAMECALL                         R0 R0 K1 ["Destroy"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 0
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K0 ["pluginLoader"]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K2 ["mainButtonClickedSignal"]
       17 NAMECALL                         R0 R0 K1 ["Destroy"]
       19 CALL                             R0 1 0
       20 GETUPVAL                         R0 1
       21 JUMPIFNOT                        R0 ; [+18]
       22 GETUPVAL                         R0 2
       23 JUMPIFNOT                        R0 ; [+16]
       24 GETUPVAL                         R0 0
       25 GETTABLEKS                       R0 R0 K3 ["additionalButtonClickedSignals"]
       27 JUMPIFNOT                        R0 ; [+12]
       28 GETIMPORT                        R0 K5 [pairs]
       30 GETUPVAL                         R1 0
       31 GETTABLEKS                       R1 R1 K3 ["additionalButtonClickedSignals"]
       33 CALL                             R0 1 3
       34 FORGPREP_NEXT                    R0
       35 NAMECALL                         R5 R4 K1 ["Destroy"]
       37 CALL                             R5 1 0
       38 FORGLOOP                         R0 2 ; [-4]
       40 GETUPVAL                         R0 0
       41 GETTABLEKS                       R0 R0 K6 ["actionTriggeredSignals"]
       43 JUMPIFNOT                        R0 ; [+12]
       44 GETIMPORT                        R0 K5 [pairs]
       46 GETUPVAL                         R1 0
       47 GETTABLEKS                       R1 R1 K6 ["actionTriggeredSignals"]
       49 CALL                             R0 1 3
       50 FORGPREP_NEXT                    R0
       51 NAMECALL                         R5 R4 K1 ["Destroy"]
       53 CALL                             R5 1 0
       54 FORGLOOP                         R0 2 ; [-4]
       56 GETIMPORT                        R0 K5 [pairs]
       58 GETUPVAL                         R1 0
       59 GETTABLEKS                       R1 R1 K7 ["signals"]
       61 CALL                             R0 1 3
       62 FORGPREP_NEXT                    R0
       63 NAMECALL                         R5 R4 K1 ["Destroy"]
       65 CALL                             R5 1 0
       66 FORGLOOP                         R0 2 ; [-4]
       68 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["Unloading"]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R3 R3 K1 ["Connect"]
        8 CALL                             R3 2 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["keyboardNavigationEnabled"]
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETTABLEKS                       R1 R0 K0 ["keyboardNavigationEnabled"]
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 DUPTABLE                         R3 K8 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "shouldImmediatelyOpen"}]
        4 GETTABLEKS                       R4 R0 K1 ["plugin"]
        6 SETTABLEKS                       R4 R3 K1 ["plugin"]
        8 GETTABLEKS                       R4 R0 K2 ["pluginName"]
       10 SETTABLEKS                       R4 R3 K2 ["pluginName"]
       12 GETTABLEKS                       R4 R0 K3 ["translationResourceTable"]
       14 SETTABLEKS                       R4 R3 K3 ["translationResourceTable"]
       16 GETTABLEKS                       R4 R0 K4 ["fallbackResourceTable"]
       18 SETTABLEKS                       R4 R3 K4 ["fallbackResourceTable"]
       20 GETTABLEKS                       R4 R0 K5 ["overrideLocaleId"]
       22 SETTABLEKS                       R4 R3 K5 ["overrideLocaleId"]
       24 GETTABLEKS                       R4 R0 K6 ["localizationNamespace"]
       26 SETTABLEKS                       R4 R3 K6 ["localizationNamespace"]
       28 GETTABLEKS                       R4 R0 K7 ["shouldImmediatelyOpen"]
       30 SETTABLEKS                       R4 R3 K7 ["shouldImmediatelyOpen"]
       32 CALL                             R2 1 1
       33 GETUPVAL                         R3 1
       34 MOVE                             R4 R0
       35 MOVE                             R5 R1
       36 CALL                             R3 2 0
       37 LOADNIL                          R3
       38 GETTABLEKS                       R4 R1 K9 ["mainButton"]
       40 JUMPIFNOT                        R4 ; [+6]
       41 GETTABLEKS                       R6 R1 K9 ["mainButton"]
       43 NAMECALL                         R4 R2 K10 ["registerButton"]
       45 CALL                             R4 2 1
       46 MOVE                             R3 R4
       47 NEWTABLE                         R4 0 0
       49 GETTABLEKS                       R5 R1 K11 ["additionalButtons"]
       51 JUMPIFNOT                        R5 ; [+16]
       52 GETTABLEKS                       R5 R1 K11 ["additionalButtons"]
       54 LOADNIL                          R6
       55 LOADNIL                          R7
       56 FORGPREP                         R5
       57 MOVE                             R11 R4
       58 MOVE                             R14 R9
       59 NAMECALL                         R12 R2 K10 ["registerButton"]
       61 CALL                             R12 2 -1
       62 FASTCALL                         TABLE_INSERT ; [+2]
       63 GETIMPORT                        R10 K14 [table.insert]
       65 CALL                             R10 -1 0
       66 FORGLOOP                         R5 2 ; [-10]
       68 NEWTABLE                         R5 0 0
       70 NEWTABLE                         R6 0 0
       72 GETTABLEKS                       R7 R1 K15 ["actionTriggeredSignals"]
       74 JUMPIFNOT                        R7 ; [+61]
       75 GETTABLEKS                       R7 R0 K16 ["actionInfos"]
       77 JUMPIFNOT                        R7 ; [+47]
       78 GETTABLEKS                       R7 R0 K16 ["actionInfos"]
       80 LOADNIL                          R8
       81 LOADNIL                          R9
       82 FORGPREP                         R7
       83 GETUPVAL                         R12 2
       84 GETTABLEKS                       R12 R12 K17 ["actionKey"]
       86 GETTABLEKS                       R13 R11 K18 ["uri"]
       88 CALL                             R12 1 1
       89 GETTABLEKS                       R14 R1 K15 ["actionTriggeredSignals"]
       91 GETTABLE                         R13 R14 R12
       92 JUMPIFNOT                        R13 ; [+13]
       93 MOVE                             R16 R13
       94 NAMECALL                         R14 R2 K19 ["registerSignal"]
       96 CALL                             R14 2 1
       97 FASTCALL2                        TABLE_INSERT R5 R14 ; [+5]
       99 MOVE                             R16 R5
      100 MOVE                             R17 R14
      101 GETIMPORT                        R15 K14 [table.insert]
      103 CALL                             R15 2 0
      104 SETTABLE                         R14 R6 R12
      105 JUMP                             ; [+16]
      106 GETIMPORT                        R14 K21 [warn]
      108 LOADK                            R16 K22 ["PluginLoader: %* declares an action its preinit did not hand off "]
      109 GETTABLEKS                       R18 R0 K2 ["pluginName"]
      111 NAMECALL                         R16 R16 K23 ["format"]
      113 CALL                             R16 2 1
      114 LOADK                            R17 K24 ["(%*), so that action does not work. Bind or create it in the preinit and "]
      115 MOVE                             R19 R12
      116 NAMECALL                         R17 R17 K23 ["format"]
      118 CALL                             R17 2 1
      119 LOADK                            R18 K25 ["pass it in actionTriggeredSignals."]
      120 CONCAT                           R15 R16 R18
      121 CALL                             R14 1 0
      122 FORGLOOP                         R7 2 ; [-40]
      124 JUMP                             ; [+11]
      125 GETIMPORT                        R7 K21 [warn]
      127 LOADK                            R9 K26 ["PluginLoader: %*'s preinit handed off action signals but the plugin declares no "]
      128 GETTABLEKS                       R11 R0 K2 ["pluginName"]
      130 NAMECALL                         R9 R9 K23 ["format"]
      132 CALL                             R9 2 1
      133 LOADK                            R10 K27 ["actionInfos, so there is nothing to match them against and they were dropped."]
      134 CONCAT                           R8 R9 R10
      135 CALL                             R7 1 0
      136 GETTABLEKS                       R7 R1 K28 ["mainDockWidget"]
      138 JUMPIFNOT                        R7 ; [+22]
      139 GETTABLEKS                       R7 R0 K29 ["dockWidgetInfo"]
      141 JUMPIFNOT                        R7 ; [+14]
      142 GETTABLEKS                       R7 R1 K28 ["mainDockWidget"]
      144 GETTABLEKS                       R9 R0 K29 ["dockWidgetInfo"]
      146 GETTABLEKS                       R10 R9 K30 ["keyboardNavigationEnabled"]
      148 JUMPIFEQKNIL                     R10 ; [+4]
      150 GETTABLEKS                       R8 R9 K30 ["keyboardNavigationEnabled"]
      152 JUMP                             ; [+1]
      153 GETUPVAL                         R8 3
      154 SETTABLEKS                       R8 R7 K31 ["TabKeyboardNavigation"]
      156 GETTABLEKS                       R9 R1 K28 ["mainDockWidget"]
      158 NAMECALL                         R7 R2 K32 ["registerWidget"]
      160 CALL                             R7 2 0
      161 NAMECALL                         R7 R2 K33 ["markUserInteracted"]
      163 CALL                             R7 1 0
      164 GETTABLEKS                       R7 R1 K34 ["openReason"]
      166 GETTABLEKS                       R8 R7 K35 ["type"]
      168 JUMPIFNOTEQKS                    R8 K36 ["click"] ; [+6]
      170 JUMPIFNOT                        R3 ; [+4]
      171 NAMECALL                         R8 R3 K37 ["Fire"]
      173 CALL                             R8 1 0
      174 JUMP                             ; [+23]
      175 GETTABLEKS                       R8 R7 K35 ["type"]
      177 JUMPIFNOTEQKS                    R8 K38 ["additionalClick"] ; [+9]
      179 GETTABLEKS                       R9 R7 K39 ["buttonIndex"]
      181 GETTABLE                         R8 R4 R9
      182 JUMPIFNOT                        R8 ; [+15]
      183 NAMECALL                         R9 R8 K37 ["Fire"]
      185 CALL                             R9 1 0
      186 JUMP                             ; [+11]
      187 GETTABLEKS                       R8 R7 K35 ["type"]
      189 JUMPIFNOTEQKS                    R8 K40 ["action"] ; [+8]
      191 GETTABLEKS                       R9 R7 K17 ["actionKey"]
      193 GETTABLE                         R8 R6 R9
      194 JUMPIFNOT                        R8 ; [+3]
      195 NAMECALL                         R9 R8 K37 ["Fire"]
      197 CALL                             R9 1 0
      198 NEWTABLE                         R8 0 0
      200 GETTABLEKS                       R9 R0 K41 ["extraTriggers"]
      202 JUMPIFNOT                        R9 ; [+14]
      203 GETIMPORT                        R9 K43 [pairs]
      205 GETTABLEKS                       R10 R0 K41 ["extraTriggers"]
      207 CALL                             R9 1 3
      208 FORGPREP_NEXT                    R9
      209 MOVE                             R16 R13
      210 CALL                             R16 0 -1
      211 NAMECALL                         R14 R2 K19 ["registerSignal"]
      213 CALL                             R14 -1 1
      214 SETTABLE                         R14 R8 R12
      215 FORGLOOP                         R9 2 ; [-7]
      217 DUPTABLE                         R9 K51 [{["pluginLoader"], ["plugin"], ["toolbar"], ["mainButton"], ["mainDockWidget"], ["mainButtonClickedSignal"], ["additionalButtons"], ["additionalButtonClickedSignals"], ["actionTriggeredSignals"], ["signals"], ["adoptedFromPreinit"] = True, ["openReason"]}]
      218 SETTABLEKS                       R2 R9 K44 ["pluginLoader"]
      220 GETTABLEKS                       R10 R0 K1 ["plugin"]
      222 SETTABLEKS                       R10 R9 K1 ["plugin"]
      224 GETTABLEKS                       R10 R1 K45 ["toolbar"]
      226 SETTABLEKS                       R10 R9 K45 ["toolbar"]
      228 GETTABLEKS                       R10 R1 K9 ["mainButton"]
      230 SETTABLEKS                       R10 R9 K9 ["mainButton"]
      232 GETTABLEKS                       R10 R1 K28 ["mainDockWidget"]
      234 SETTABLEKS                       R10 R9 K28 ["mainDockWidget"]
      236 SETTABLEKS                       R3 R9 K46 ["mainButtonClickedSignal"]
      238 GETUPVAL                         R11 4
      239 JUMPIFNOT                        R11 ; [+3]
      240 GETTABLEKS                       R10 R1 K11 ["additionalButtons"]
      242 JUMP                             ; [+1]
      243 LOADNIL                          R10
      244 SETTABLEKS                       R10 R9 K11 ["additionalButtons"]
      246 GETUPVAL                         R11 4
      247 JUMPIFNOT                        R11 ; [+2]
      248 MOVE                             R10 R4
      249 JUMP                             ; [+1]
      250 LOADNIL                          R10
      251 SETTABLEKS                       R10 R9 K47 ["additionalButtonClickedSignals"]
      253 SETTABLEKS                       R5 R9 K15 ["actionTriggeredSignals"]
      255 SETTABLEKS                       R8 R9 K48 ["signals"]
      257 SETTABLEKS                       R7 R9 K34 ["openReason"]
      259 GETTABLEKS                       R10 R0 K1 ["plugin"]
      261 GETTABLEKS                       R11 R10 K52 ["Unloading"]
      263 LOADB                            R14 1
      264 NEWCLOSURE                       R13 P0
      265 CAPTURE                          VAL R9
      266 CAPTURE                          VAL R14
      267 CAPTURE                          UPVAL U4
      268 NAMECALL                         R11 R11 K53 ["Connect"]
      270 CALL                             R11 2 0
      271 RETURN                           R9 1

PROTO_8:
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
       21 GETTABLEKS                       R7 R1 K10 ["keyboardNavigationEnabled"]
       23 JUMPIFEQKNIL                     R7 ; [+4]
       25 GETTABLEKS                       R6 R1 K10 ["keyboardNavigationEnabled"]
       27 JUMP                             ; [+1]
       28 GETUPVAL                         R6 0
       29 SETTABLEKS                       R6 R5 K11 ["TabKeyboardNavigation"]
       31 RETURN                           R5 1

PROTO_9:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["getLocalizedText"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["uri"]
        4 NAMECALL                         R0 R0 K1 ["BindToActivatedAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["plugin"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 RETURN                           R2 1
       10 GETTABLEKS                       R2 R0 K0 ["plugin"]
       12 LOADK                            R4 K1 ["Actions"]
       13 NAMECALL                         R2 R2 K2 ["GetPluginComponent"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K3 ["new"]
       19 DUPTABLE                         R4 K10 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "shouldImmediatelyOpen"}]
       20 GETTABLEKS                       R5 R0 K0 ["plugin"]
       22 SETTABLEKS                       R5 R4 K0 ["plugin"]
       24 GETTABLEKS                       R5 R0 K4 ["pluginName"]
       26 SETTABLEKS                       R5 R4 K4 ["pluginName"]
       28 GETTABLEKS                       R5 R0 K5 ["translationResourceTable"]
       30 SETTABLEKS                       R5 R4 K5 ["translationResourceTable"]
       32 GETTABLEKS                       R5 R0 K6 ["fallbackResourceTable"]
       34 SETTABLEKS                       R5 R4 K6 ["fallbackResourceTable"]
       36 GETTABLEKS                       R5 R0 K7 ["overrideLocaleId"]
       38 SETTABLEKS                       R5 R4 K7 ["overrideLocaleId"]
       40 GETTABLEKS                       R5 R0 K8 ["localizationNamespace"]
       42 SETTABLEKS                       R5 R4 K8 ["localizationNamespace"]
       44 GETTABLEKS                       R5 R0 K9 ["shouldImmediatelyOpen"]
       46 SETTABLEKS                       R5 R4 K9 ["shouldImmediatelyOpen"]
       48 CALL                             R3 1 1
       49 NEWCLOSURE                       R4 P0
       50 CAPTURE                          VAL R3
       51 NEWCLOSURE                       R5 P1
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 LOADNIL                          R6
       55 LOADNIL                          R7
       56 LOADNIL                          R8
       57 NEWTABLE                         R9 0 0
       59 NEWTABLE                         R10 0 0
       61 NEWTABLE                         R11 0 0
       63 GETTABLEKS                       R12 R0 K11 ["noToolbar"]
       65 JUMPIFEQKB                       R12 TRUE ; [+66]
       67 GETTABLEKS                       R12 R0 K12 ["getToolbarName"]
       69 JUMPIFNOT                        R12 ; [+10]
       70 GETTABLEKS                       R12 R0 K12 ["getToolbarName"]
       72 MOVE                             R13 R4
       73 NAMECALL                         R14 R3 K13 ["getKeyNamespace"]
       75 CALL                             R14 1 1
       76 NAMECALL                         R15 R3 K14 ["getPluginName"]
       78 CALL                             R15 1 -1
       79 CALL                             R12 -1 1
       80 GETTABLEKS                       R13 R0 K0 ["plugin"]
       82 MOVE                             R15 R12
       83 NAMECALL                         R13 R13 K15 ["CreateToolbar"]
       85 CALL                             R13 2 1
       86 MOVE                             R6 R13
       87 GETTABLEKS                       R13 R0 K16 ["buttonInfo"]
       89 MOVE                             R14 R5
       90 MOVE                             R15 R6
       91 MOVE                             R16 R13
       92 CALL                             R14 2 1
       93 MOVE                             R7 R14
       94 MOVE                             R16 R7
       95 NAMECALL                         R14 R3 K17 ["registerButton"]
       97 CALL                             R14 2 1
       98 MOVE                             R8 R14
       99 GETUPVAL                         R14 3
      100 JUMPIFNOT                        R14 ; [+31]
      101 GETTABLEKS                       R14 R0 K18 ["additionalButtonInfos"]
      103 JUMPIFEQKNIL                     R14 ; [+28]
      105 GETTABLEKS                       R14 R0 K18 ["additionalButtonInfos"]
      107 LOADNIL                          R15
      108 LOADNIL                          R16
      109 FORGPREP                         R14
      110 MOVE                             R19 R5
      111 MOVE                             R20 R6
      112 MOVE                             R21 R18
      113 CALL                             R19 2 1
      114 FASTCALL2                        TABLE_INSERT R10 R19 ; [+5]
      116 MOVE                             R21 R10
      117 MOVE                             R22 R19
      118 GETIMPORT                        R20 K21 [table.insert]
      120 CALL                             R20 2 0
      121 MOVE                             R21 R11
      122 MOVE                             R24 R19
      123 NAMECALL                         R22 R3 K17 ["registerButton"]
      125 CALL                             R22 2 -1
      126 FASTCALL                         TABLE_INSERT ; [+2]
      127 GETIMPORT                        R20 K21 [table.insert]
      129 CALL                             R20 -1 0
      130 FORGLOOP                         R14 2 ; [-21]
      132 GETTABLEKS                       R12 R0 K22 ["actionInfos"]
      134 JUMPIFEQKNIL                     R12 ; [+50]
      136 GETTABLEKS                       R12 R0 K22 ["actionInfos"]
      138 LOADNIL                          R13
      139 LOADNIL                          R14
      140 FORGPREP                         R12
      141 LOADNIL                          R17
      142 GETTABLEKS                       R18 R16 K23 ["isPreexistingAction"]
      144 JUMPIFNOT                        R18 ; [+14]
      145 NEWCLOSURE                       R19 P2
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R16
      148 FASTPCALL                        pcall 1 ; [+2]
      149 GETIMPORT                        R18 K25 [pcall]
      151 CALL                             R18 1 2
      152 JUMPIF                           R18 ; [+4]
      153 GETIMPORT                        R20 K27 [error]
      155 MOVE                             R21 R19
      156 CALL                             R20 1 0
      157 MOVE                             R17 R19
      158 JUMP                             ; [+15]
      159 NEWCLOSURE                       R19 P3
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R16
      162 CAPTURE                          VAL R4
      163 CAPTURE                          VAL R3
      164 FASTPCALL                        pcall 1 ; [+2]
      165 GETIMPORT                        R18 K25 [pcall]
      167 CALL                             R18 1 2
      168 JUMPIF                           R18 ; [+4]
      169 GETIMPORT                        R20 K27 [error]
      171 MOVE                             R21 R19
      172 CALL                             R20 1 0
      173 GETTABLEN                        R17 R19 1
      174 MOVE                             R19 R9
      175 MOVE                             R22 R17
      176 NAMECALL                         R20 R3 K28 ["registerSignal"]
      178 CALL                             R20 2 -1
      179 FASTCALL                         TABLE_INSERT ; [+2]
      180 GETIMPORT                        R18 K21 [table.insert]
      182 CALL                             R18 -1 0
      183 FORGLOOP                         R12 2 ; [-43]
      185 LOADNIL                          R12
      186 GETTABLEKS                       R13 R0 K29 ["dockWidgetInfo"]
      188 JUMPIFNOT                        R13 ; [+116]
      189 GETTABLEKS                       R14 R13 K30 ["getDockTitle"]
      191 MOVE                             R15 R4
      192 NAMECALL                         R16 R3 K13 ["getKeyNamespace"]
      194 CALL                             R16 1 1
      195 NAMECALL                         R17 R3 K14 ["getPluginName"]
      197 CALL                             R17 1 -1
      198 CALL                             R14 -1 1
      199 GETTABLEKS                       R15 R13 K31 ["name"]
      201 JUMPIFNOT                        R15 ; [+56]
      202 GETTABLEKS                       R17 R13 K31 ["name"]
      204 FASTCALL1                        TYPE R17 ; [+2]
      205 GETIMPORT                        R16 K33 [type]
      207 CALL                             R16 1 1
      208 JUMPIFNOTEQKS                    R16 K34 ["function"] ; [+12]
      210 GETTABLEKS                       R15 R13 K31 ["name"]
      212 MOVE                             R16 R4
      213 NAMECALL                         R17 R3 K13 ["getKeyNamespace"]
      215 CALL                             R17 1 1
      216 NAMECALL                         R18 R3 K14 ["getPluginName"]
      218 CALL                             R18 1 -1
      219 CALL                             R15 -1 1
      220 JUMP                             ; [+2]
      221 GETTABLEKS                       R15 R13 K31 ["name"]
      223 GETTABLEKS                       R16 R0 K0 ["plugin"]
      225 GETTABLEKS                       R17 R13 K35 ["id"]
      227 MOVE                             R20 R17
      228 GETTABLEKS                       R21 R13 K36 ["dockWidgetPluginGuiInfo"]
      230 NAMECALL                         R18 R16 K37 ["CreateDockWidgetPluginGui"]
      232 CALL                             R18 3 1
      233 SETTABLEKS                       R14 R18 K38 ["Title"]
      235 JUMPIFEQKNIL                     R15 ; [+3]
      237 SETTABLEKS                       R15 R18 K39 ["Name"]
      239 GETTABLEKS                       R19 R13 K40 ["zIndexBehavior"]
      241 JUMPIF                           R19 ; [+2]
      242 GETIMPORT                        R19 K44 [Enum.ZIndexBehavior.Sibling]
      244 SETTABLEKS                       R19 R18 K42 ["ZIndexBehavior"]
      246 GETTABLEKS                       R20 R13 K45 ["keyboardNavigationEnabled"]
      248 JUMPIFEQKNIL                     R20 ; [+4]
      250 GETTABLEKS                       R19 R13 K45 ["keyboardNavigationEnabled"]
      252 JUMP                             ; [+1]
      253 GETUPVAL                         R19 4
      254 SETTABLEKS                       R19 R18 K46 ["TabKeyboardNavigation"]
      256 MOVE                             R12 R18
      257 JUMP                             ; [+30]
      258 GETTABLEKS                       R15 R0 K0 ["plugin"]
      260 GETTABLEKS                       R16 R13 K35 ["id"]
      262 MOVE                             R19 R16
      263 GETTABLEKS                       R20 R13 K36 ["dockWidgetPluginGuiInfo"]
      265 NAMECALL                         R17 R15 K37 ["CreateDockWidgetPluginGui"]
      267 CALL                             R17 3 1
      268 SETTABLEKS                       R14 R17 K38 ["Title"]
      270 GETTABLEKS                       R18 R13 K40 ["zIndexBehavior"]
      272 JUMPIF                           R18 ; [+2]
      273 GETIMPORT                        R18 K44 [Enum.ZIndexBehavior.Sibling]
      275 SETTABLEKS                       R18 R17 K42 ["ZIndexBehavior"]
      277 GETTABLEKS                       R19 R13 K45 ["keyboardNavigationEnabled"]
      279 JUMPIFEQKNIL                     R19 ; [+4]
      281 GETTABLEKS                       R18 R13 K45 ["keyboardNavigationEnabled"]
      283 JUMP                             ; [+1]
      284 GETUPVAL                         R18 4
      285 SETTABLEKS                       R18 R17 K46 ["TabKeyboardNavigation"]
      287 MOVE                             R12 R17
      288 MOVE                             R17 R12
      289 NAMECALL                         R15 R3 K47 ["registerWidget"]
      291 CALL                             R15 2 0
      292 GETUPVAL                         R15 5
      293 JUMPIFNOT                        R15 ; [+11]
      294 GETTABLEKS                       R15 R13 K48 ["uri"]
      296 JUMPIFEQKNIL                     R15 ; [+8]
      298 GETIMPORT                        R15 K51 [task.spawn]
      300 NEWCLOSURE                       R16 P4
      301 CAPTURE                          VAL R0
      302 CAPTURE                          VAL R13
      303 CAPTURE                          REF R12
      304 CALL                             R15 1 0
      305 NEWTABLE                         R14 0 0
      307 GETTABLEKS                       R15 R0 K52 ["extraTriggers"]
      309 JUMPIFNOT                        R15 ; [+15]
      310 GETIMPORT                        R15 K54 [pairs]
      312 GETTABLEKS                       R16 R0 K52 ["extraTriggers"]
      314 CALL                             R15 1 3
      315 FORGPREP_NEXT                    R15
      316 MOVE                             R20 R19
      317 CALL                             R20 0 1
      318 MOVE                             R23 R20
      319 NAMECALL                         R21 R3 K28 ["registerSignal"]
      321 CALL                             R21 2 1
      322 SETTABLE                         R21 R14 R18
      323 FORGLOOP                         R15 2 ; [-8]
      325 DUPTABLE                         R15 K64 [{"pluginLoader", "plugin", "toolbar", "mainButton", "mainDockWidget", "mainButtonClickedSignal", "additionalButtons", "additionalButtonClickedSignals", "actionTriggeredSignals", "signals"}]
      326 SETTABLEKS                       R3 R15 K55 ["pluginLoader"]
      328 GETTABLEKS                       R16 R0 K0 ["plugin"]
      330 SETTABLEKS                       R16 R15 K0 ["plugin"]
      332 SETTABLEKS                       R6 R15 K56 ["toolbar"]
      334 SETTABLEKS                       R7 R15 K57 ["mainButton"]
      336 SETTABLEKS                       R12 R15 K58 ["mainDockWidget"]
      338 SETTABLEKS                       R8 R15 K59 ["mainButtonClickedSignal"]
      340 GETUPVAL                         R17 3
      341 JUMPIFNOT                        R17 ; [+2]
      342 MOVE                             R16 R10
      343 JUMP                             ; [+1]
      344 LOADNIL                          R16
      345 SETTABLEKS                       R16 R15 K60 ["additionalButtons"]
      347 GETUPVAL                         R17 3
      348 JUMPIFNOT                        R17 ; [+2]
      349 MOVE                             R16 R11
      350 JUMP                             ; [+1]
      351 LOADNIL                          R16
      352 SETTABLEKS                       R16 R15 K61 ["additionalButtonClickedSignals"]
      354 SETTABLEKS                       R9 R15 K62 ["actionTriggeredSignals"]
      356 SETTABLEKS                       R14 R15 K63 ["signals"]
      358 GETTABLEKS                       R16 R0 K0 ["plugin"]
      360 GETTABLEKS                       R17 R16 K65 ["Unloading"]
      362 LOADB                            R20 0
      363 NEWCLOSURE                       R19 P5
      364 CAPTURE                          VAL R15
      365 CAPTURE                          VAL R20
      366 CAPTURE                          UPVAL U3
      367 NAMECALL                         R17 R17 K66 ["Connect"]
      369 CALL                             R17 2 0
      370 CLOSEUPVALS                      R12
      371 RETURN                           R15 1

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
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["PreInitHandoff"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R2 K8 ["getFFlagPluginLoaderAddMultipleButtonInfos"]
       22 CALL                             R4 0 1
       23 GETIMPORT                        R5 K10 [game]
       25 LOADK                            R7 K11 ["PluginLoaderRegisterUri"]
       26 LOADB                            R8 0
       27 NAMECALL                         R5 R5 K12 ["DefineFastFlag"]
       29 CALL                             R5 3 1
       30 GETIMPORT                        R6 K10 [game]
       32 LOADK                            R8 K13 ["PluginLoaderKeyboardNavigationDefault"]
       33 LOADB                            R9 0
       34 NAMECALL                         R6 R6 K12 ["DefineFastFlag"]
       36 CALL                             R6 3 1
       37 NEWTABLE                         R7 1 0
       39 DUPCLOSURE                       R8 K14 [PROTO_1]
       40 CAPTURE                          VAL R3
       41 DUPCLOSURE                       R9 K15 [PROTO_2]
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R4
       44 DUPCLOSURE                       R10 K16 [PROTO_3]
       45 DUPCLOSURE                       R11 K17 [PROTO_5]
       46 CAPTURE                          VAL R4
       47 DUPCLOSURE                       R12 K18 [PROTO_6]
       48 CAPTURE                          VAL R6
       49 DUPCLOSURE                       R13 K19 [PROTO_7]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R4
       55 DUPCLOSURE                       R14 K20 [PROTO_8]
       56 CAPTURE                          VAL R6
       57 DUPCLOSURE                       R15 K21 [PROTO_14]
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R13
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R15 R7 K22 ["build"]
       66 RETURN                           R7 1
