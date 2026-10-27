PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioPreinitPayloadHandoff"]
        3 NAMECALL                         R0 R0 K3 ["GetEngineFeature"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+7]
        8 GETTABLEKS                       R2 R0 K3 ["__pluginLoaderHandoff__"]
       10 JUMPIFEQKB                       R2 TRUE ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.concat]
        2 NEWTABLE                         R2 0 5
        4 GETTABLEKS                       R4 R0 K4 ["PluginType"]
        6 ORK                              R3 R4 K3 [""]
        7 GETTABLEKS                       R5 R0 K5 ["DataModel"]
        9 ORK                              R4 R5 K3 [""]
       10 GETTABLEKS                       R6 R0 K6 ["PluginId"]
       12 ORK                              R5 R6 K3 [""]
       13 GETTABLEKS                       R7 R0 K7 ["Category"]
       15 ORK                              R6 R7 K3 [""]
       16 GETTABLEKS                       R8 R0 K8 ["ItemId"]
       18 ORK                              R7 R8 K3 [""]
       19 SETLIST                          R2 R3 5 [1]
       21 LOADK                            R3 K9 ["/"]
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1

PROTO_3:
        0 DUPTABLE                         R1 K9 [{[1] = True, ["openReason"], ["toolbar"], ["mainButton"], ["additionalButtons"], ["mainDockWidget"], ["actionTriggeredSignals"], ["extra"]}]
        1 GETTABLEKS                       R2 R0 K2 ["openReason"]
        3 SETTABLEKS                       R2 R1 K2 ["openReason"]
        5 GETTABLEKS                       R2 R0 K3 ["toolbar"]
        7 SETTABLEKS                       R2 R1 K3 ["toolbar"]
        9 GETTABLEKS                       R2 R0 K4 ["mainButton"]
       11 SETTABLEKS                       R2 R1 K4 ["mainButton"]
       13 GETTABLEKS                       R2 R0 K5 ["additionalButtons"]
       15 SETTABLEKS                       R2 R1 K5 ["additionalButtons"]
       17 GETTABLEKS                       R2 R0 K6 ["mainDockWidget"]
       19 SETTABLEKS                       R2 R1 K6 ["mainDockWidget"]
       21 GETTABLEKS                       R2 R0 K7 ["actionTriggeredSignals"]
       23 SETTABLEKS                       R2 R1 K7 ["actionTriggeredSignals"]
       25 GETTABLEKS                       R2 R0 K8 ["extra"]
       27 SETTABLEKS                       R2 R1 K8 ["extra"]
       29 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R1 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K0 ["createPayload"]
        9 DUPTABLE                         R4 K8 [{"openReason", "toolbar", "mainButton", "additionalButtons", "mainDockWidget", "actionTriggeredSignals", "extra"}]
       10 SETTABLEKS                       R0 R4 K1 ["openReason"]
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K2 ["toolbar"]
       15 SETTABLEKS                       R5 R4 K2 ["toolbar"]
       17 GETUPVAL                         R5 4
       18 SETTABLEKS                       R5 R4 K3 ["mainButton"]
       20 GETUPVAL                         R5 5
       21 SETTABLEKS                       R5 R4 K4 ["additionalButtons"]
       23 GETUPVAL                         R5 6
       24 SETTABLEKS                       R5 R4 K5 ["mainDockWidget"]
       26 GETUPVAL                         R5 7
       27 SETTABLEKS                       R5 R4 K6 ["actionTriggeredSignals"]
       29 GETUPVAL                         R5 3
       30 GETTABLEKS                       R5 R5 K7 ["extra"]
       32 SETTABLEKS                       R5 R4 K7 ["extra"]
       34 CALL                             R3 1 -1
       35 NAMECALL                         R1 R1 K9 ["FinishFullLoading"]
       37 CALL                             R1 -1 0
       38 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{[1] = "click"}]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Enabled"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 DUPTABLE                         R1 K3 [{["type"] = "restore"}]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{[1] = "additionalClick", ["buttonIndex"]}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K2 ["buttonIndex"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K3 [{[1] = "action", ["actionKey"]}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K2 ["actionKey"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{[1] = "wake", ["wakeName"]}]
        2 SETTABLEKS                       R0 R2 K2 ["wakeName"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["Click"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 NAMECALL                         R0 R0 K1 ["Connect"]
        9 CALL                             R0 2 0
       10 GETUPVAL                         R0 2
       11 JUMPIFNOT                        R0 ; [+11]
       12 GETUPVAL                         R0 2
       13 LOADK                            R2 K2 ["Enabled"]
       14 NAMECALL                         R0 R0 K3 ["GetPropertyChangedSignal"]
       16 CALL                             R0 2 1
       17 NEWCLOSURE                       R2 P1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U1
       20 NAMECALL                         R0 R0 K1 ["Connect"]
       22 CALL                             R0 2 0
       23 GETUPVAL                         R0 3
       24 JUMPIFNOT                        R0 ; [+14]
       25 GETUPVAL                         R0 3
       26 LOADNIL                          R1
       27 LOADNIL                          R2
       28 FORGPREP                         R0
       29 GETTABLEKS                       R5 R4 K0 ["Click"]
       31 NEWCLOSURE                       R7 P2
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R3
       34 NAMECALL                         R5 R5 K1 ["Connect"]
       36 CALL                             R5 2 0
       37 FORGLOOP                         R0 2 ; [-9]
       39 GETUPVAL                         R0 4
       40 JUMPIFNOT                        R0 ; [+12]
       41 GETUPVAL                         R0 4
       42 LOADNIL                          R1
       43 LOADNIL                          R2
       44 FORGPREP                         R0
       45 NEWCLOSURE                       R7 P3
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          VAL R3
       48 NAMECALL                         R5 R4 K1 ["Connect"]
       50 CALL                             R5 2 0
       51 FORGLOOP                         R0 2 ; [-7]
       53 GETUPVAL                         R0 5
       54 GETTABLEKS                       R0 R0 K4 ["subscribeExtraWakes"]
       56 JUMPIFNOT                        R0 ; [+6]
       57 GETUPVAL                         R0 5
       58 GETTABLEKS                       R0 R0 K4 ["subscribeExtraWakes"]
       60 NEWCLOSURE                       R1 P4
       61 CAPTURE                          UPVAL U1
       62 CALL                             R0 1 0
       63 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["plugin"]
        2 GETTABLEKS                       R2 R0 K1 ["mainButton"]
        4 GETTABLEKS                       R3 R0 K2 ["mainDockWidget"]
        6 GETTABLEKS                       R4 R0 K3 ["actionTriggeredSignals"]
        8 GETTABLEKS                       R5 R0 K4 ["additionalButtons"]
       10 LOADB                            R6 0
       11 JUMPIFNOT                        R4 ; [+8]
       12 MOVE                             R7 R4
       13 LOADNIL                          R8
       14 LOADNIL                          R9
       15 FORGPREP                         R7
       16 LOADB                            R6 1
       17 JUMP                             ; [+2]
       18 FORGLOOP                         R7 1 ; [-3]
       20 LOADB                            R7 0
       21 JUMPIFEQKNIL                     R5 ; [+7]
       23 LENGTH                           R8 R5
       24 LOADN                            R9 0
       25 JUMPIFLT                         R9 R8 ; [+2]
       27 LOADB                            R7 0 +1
       28 LOADB                            R7 1
       29 JUMPIF                           R2 ; [+15]
       30 JUMPIF                           R3 ; [+14]
       31 GETTABLEKS                       R8 R0 K5 ["subscribeExtraWakes"]
       33 JUMPIF                           R8 ; [+11]
       34 JUMPIF                           R6 ; [+10]
       35 JUMPIF                           R7 ; [+9]
       36 GETIMPORT                        R8 K7 [warn]
       38 LOADK                            R9 K8 ["PluginLoader: deferUntilOpened was given no button, widget, action or extra wake, so there is nothing that could ever load the plugin. Loading it now. Do not use PreInitHandoff if the plugin has no opening trigger to defer on."]
       39 CALL                             R8 1 0
       40 NAMECALL                         R8 R1 K9 ["FinishFullLoading"]
       42 CALL                             R8 1 0
       43 LOADB                            R8 0
       44 RETURN                           R8 1
       45 LOADB                            R8 0
       46 NEWCLOSURE                       R9 P0
       47 CAPTURE                          REF R8
       48 CAPTURE                          VAL R1
       49 CAPTURE                          UPVAL U0
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 GETIMPORT                        R10 K11 [pcall]
       57 NEWCLOSURE                       R11 P1
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R0
       64 CALL                             R10 1 2
       65 JUMPIF                           R10 ; [+17]
       66 GETIMPORT                        R12 K7 [warn]
       68 LOADK                            R14 K12 ["PluginLoader: a preinit wake subscription failed, so the plugin is being loaded immediately "]
       69 LOADK                            R15 K13 ["instead of deferred. This is a bug worth fixing -- lazy loading is lost for the session: "]
       70 LOADK                            R16 K14 ["%*"]
       71 MOVE                             R18 R11
       72 NAMECALL                         R16 R16 K15 ["format"]
       74 CALL                             R16 2 1
       75 CONCAT                           R13 R14 R16
       76 CALL                             R12 1 0
       77 MOVE                             R12 R9
       78 DUPTABLE                         R13 K18 [{["type"] = "none"}]
       79 CALL                             R12 1 0
       80 LOADB                            R12 0
       81 CLOSEUPVALS                      R8
       82 RETURN                           R12 1
       83 JUMPIFNOT                        R3 ; [+6]
       84 GETTABLEKS                       R12 R3 K19 ["Enabled"]
       86 JUMPIFNOT                        R12 ; [+3]
       87 MOVE                             R12 R9
       88 DUPTABLE                         R13 K21 [{["type"] = "restore"}]
       89 CALL                             R12 1 0
       90 LOADB                            R12 1
       91 CLOSEUPVALS                      R8
       92 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["isSupported"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["isHandoff"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["actionKey"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K7 ["createPayload"]
       15 DUPCLOSURE                       R1 K8 [PROTO_11]
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K9 ["deferUntilOpened"]
       19 RETURN                           R0 1
