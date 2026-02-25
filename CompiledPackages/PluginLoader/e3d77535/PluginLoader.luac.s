PROTO_0:
        0 DUPTABLE                         R0 K4 [{"_signal", "_handlers", "_eventsToFlush", "_connections"}]
        1 GETIMPORT                        R1 K7 [Instance.new]
        3 LOADK                            R2 K8 ["BindableEvent"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K0 ["_signal"]
        7 NEWTABLE                         R1 0 0
        9 SETTABLEKS                       R1 R0 K1 ["_handlers"]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K2 ["_eventsToFlush"]
       15 NEWTABLE                         R1 0 0
       17 SETTABLEKS                       R1 R0 K3 ["_connections"]
       19 GETUPVAL                         R3 0
       20 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
       22 MOVE                             R2 R0
       23 GETIMPORT                        R1 K10 [setmetatable]
       25 CALL                             R1 2 0
       26 RETURN                           R0 1

PROTO_1:
        0 PREPVARARGS                      1
        1 GETTABLEKS                       R2 R0 K0 ["_handlers"]
        3 LENGTH                           R1 R2
        4 LOADN                            R2 0
        5 JUMPIFNOTLT                      R2 R1 ; [+8]
        7 GETTABLEKS                       R1 R0 K1 ["_signal"]
        9 GETVARARGS                       R3 -1
       10 NAMECALL                         R1 R1 K2 ["Fire"]
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0
       14 GETTABLEKS                       R2 R0 K3 ["_eventsToFlush"]
       16 NEWTABLE                         R3 0 0
       18 GETVARARGS                       R4 -1
       19 SETLIST                          R3 R4 -1 [1]
       21 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       23 GETIMPORT                        R1 K6 [table.insert]
       25 CALL                             R1 2 0
       26 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 FASTCALL1                        TABLE_UNPACK R2 ; [+2]
        3 GETIMPORT                        R1 K1 [unpack]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["_handlers"]
        2 LENGTH                           R2 R3
        3 JUMPIFNOTEQKN                    R2 K1 [0] ; [+19]
        5 GETIMPORT                        R2 K3 [ipairs]
        7 GETTABLEKS                       R3 R0 K4 ["_eventsToFlush"]
        9 CALL                             R2 1 3
       10 FORGPREP_INEXT                   R2
       11 GETIMPORT                        R7 K7 [task.spawn]
       13 NEWCLOSURE                       R8 P0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R6
       16 CALL                             R7 1 0
       17 FORGLOOP                         R2 2 [inext] ; [-7]
       19 NEWTABLE                         R2 0 0
       21 SETTABLEKS                       R2 R0 K4 ["_eventsToFlush"]
       23 GETTABLEKS                       R3 R0 K8 ["_signal"]
       25 GETTABLEKS                       R2 R3 K9 ["Event"]
       27 MOVE                             R4 R1
       28 NAMECALL                         R2 R2 K10 ["Connect"]
       30 CALL                             R2 2 1
       31 GETTABLEKS                       R4 R0 K0 ["_handlers"]
       33 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       35 MOVE                             R5 R1
       36 GETIMPORT                        R3 K13 [table.insert]
       38 CALL                             R3 2 0
       39 GETTABLEKS                       R4 R0 K14 ["_connections"]
       41 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       43 MOVE                             R5 R2
       44 GETIMPORT                        R3 K13 [table.insert]
       46 CALL                             R3 2 0
       47 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_handlers"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["_eventsToFlush"]
        8 GETIMPORT                        R1 K3 [ipairs]
       10 GETTABLEKS                       R2 R0 K4 ["_connections"]
       12 CALL                             R1 1 3
       13 FORGPREP_INEXT                   R1
       14 NAMECALL                         R6 R5 K5 ["Disconnect"]
       16 CALL                             R6 1 0
       17 FORGLOOP                         R1 2 [inext] ; [-4]
       19 GETTABLEKS                       R1 R0 K6 ["_signal"]
       21 NAMECALL                         R1 R1 K7 ["Destroy"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_5:
        0 JUMPIFEQKNIL                     R0 ; [+2]
        2 RETURN                           R0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K0 ["StudioLocaleId"]
        6 RETURN                           R1 1

PROTO_6:
        0 DUPTABLE                         R1 K10 [{"_connectedSignals", "_buttonConnections", "_widgetConnections", "_userHasInteracted", "_destroyed", "_userInteractionSignal", "_locale", "_mainTranslator", "_fallbackTranslator", "_initArgs"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["_connectedSignals"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["_buttonConnections"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["_widgetConnections"]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R1 K3 ["_userHasInteracted"]
       16 LOADB                            R2 0
       17 SETTABLEKS                       R2 R1 K4 ["_destroyed"]
       19 GETIMPORT                        R2 K13 [Instance.new]
       21 LOADK                            R3 K14 ["BindableEvent"]
       22 CALL                             R2 1 1
       23 SETTABLEKS                       R2 R1 K5 ["_userInteractionSignal"]
       25 LOADNIL                          R2
       26 SETTABLEKS                       R2 R1 K6 ["_locale"]
       28 LOADNIL                          R2
       29 SETTABLEKS                       R2 R1 K7 ["_mainTranslator"]
       31 LOADNIL                          R2
       32 SETTABLEKS                       R2 R1 K8 ["_fallbackTranslator"]
       34 SETTABLEKS                       R0 R1 K9 ["_initArgs"]
       36 GETUPVAL                         R4 0
       37 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       39 MOVE                             R3 R1
       40 GETIMPORT                        R2 K16 [setmetatable]
       42 CALL                             R2 2 0
       43 GETTABLEKS                       R3 R1 K9 ["_initArgs"]
       45 GETTABLEKS                       R2 R3 K17 ["localizationNamespace"]
       47 JUMPIFNOTEQKNIL                  R2 ; [+6]
       49 GETTABLEKS                       R2 R1 K9 ["_initArgs"]
       51 LOADK                            R3 K18 ["Studio"]
       52 SETTABLEKS                       R3 R2 K17 ["localizationNamespace"]
       54 GETTABLEKS                       R3 R0 K19 ["overrideLocaleId"]
       56 JUMPIFEQKNIL                     R3 ; [+3]
       58 MOVE                             R2 R3
       59 JUMP                             ; [+4]
       60 GETUPVAL                         R4 1
       61 GETTABLEKS                       R2 R4 K20 ["StudioLocaleId"]
       63 JUMP                             ; [0]
       64 SETTABLEKS                       R2 R1 K6 ["_locale"]
       66 GETTABLEKS                       R2 R0 K21 ["translationResourceTable"]
       68 GETTABLEKS                       R4 R1 K6 ["_locale"]
       70 NAMECALL                         R2 R2 K22 ["GetTranslator"]
       72 CALL                             R2 2 1
       73 SETTABLEKS                       R2 R1 K7 ["_mainTranslator"]
       75 GETTABLEKS                       R2 R0 K23 ["fallbackResourceTable"]
       77 LOADK                            R4 K24 ["en-us"]
       78 NAMECALL                         R2 R2 K22 ["GetTranslator"]
       80 CALL                             R2 2 1
       81 SETTABLEKS                       R2 R1 K8 ["_fallbackTranslator"]
       83 GETTABLEKS                       R2 R0 K25 ["shouldImmediatelyOpen"]
       85 JUMPIFNOT                        R2 ; [+7]
       86 GETTABLEKS                       R2 R0 K25 ["shouldImmediatelyOpen"]
       88 CALL                             R2 0 1
       89 JUMPIFNOT                        R2 ; [+3]
       90 NAMECALL                         R2 R1 K26 ["_onUserInteracted"]
       92 CALL                             R2 1 0
       93 RETURN                           R1 1

PROTO_7:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETTABLEKS                       R2 R0 K2 ["_connectedSignals"]
        4 CALL                             R1 1 3
        5 FORGPREP_NEXT                    R1
        6 GETTABLEN                        R6 R5 1
        7 NAMECALL                         R6 R6 K3 ["Disconnect"]
        9 CALL                             R6 1 0
       10 FORGLOOP                         R1 2 ; [-5]
       12 GETIMPORT                        R1 K1 [pairs]
       14 GETTABLEKS                       R2 R0 K4 ["_buttonConnections"]
       16 CALL                             R1 1 3
       17 FORGPREP_NEXT                    R1
       18 GETTABLEN                        R6 R5 1
       19 NAMECALL                         R6 R6 K3 ["Disconnect"]
       21 CALL                             R6 1 0
       22 FORGLOOP                         R1 2 ; [-5]
       24 GETIMPORT                        R1 K1 [pairs]
       26 GETTABLEKS                       R2 R0 K5 ["_widgetConnections"]
       28 CALL                             R1 1 3
       29 FORGPREP_NEXT                    R1
       30 GETTABLEN                        R6 R5 1
       31 NAMECALL                         R6 R6 K3 ["Disconnect"]
       33 CALL                             R6 1 0
       34 FORGLOOP                         R1 2 ; [-5]
       36 LOADB                            R1 1
       37 SETTABLEKS                       R1 R0 K6 ["_destroyed"]
       39 NAMECALL                         R1 R0 K7 ["_onUserInteracted"]
       41 CALL                             R1 1 0
       42 GETTABLEKS                       R1 R0 K8 ["_userInteractionSignal"]
       44 NAMECALL                         R1 R1 K9 ["Destroy"]
       46 CALL                             R1 1 0
       47 LOADNIL                          R1
       48 SETTABLEKS                       R1 R0 K8 ["_userInteractionSignal"]
       50 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["_initArgs"]
        2 GETTABLEKS                       R1 R2 K1 ["localizationNamespace"]
        4 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["_initArgs"]
        2 GETTABLEKS                       R1 R2 K1 ["pluginName"]
        4 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["FormatByKey"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_11:
        0 JUMPIF                           R0 ; [+3]
        1 LOADB                            R1 0
        2 LOADNIL                          R2
        3 RETURN                           R1 2
        4 GETIMPORT                        R1 K1 [pcall]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CALL                             R1 1 2
       10 RETURN                           R1 2

PROTO_12:
        0 GETIMPORT                        R5 K2 [string.format]
        2 LOADK                            R6 K3 ["%s.%s.%s.%s"]
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 MOVE                             R10 R4
        7 CALL                             R5 5 1
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          VAL R5
       10 LOADNIL                          R7
       11 LOADNIL                          R8
       12 GETTABLEKS                       R9 R0 K4 ["locale"]
       14 JUMPIFNOTEQKS                    R9 K5 ["en-us"] ; [+20]
       16 GETTABLEKS                       R11 R0 K6 ["_fallbackTranslator"]
       18 JUMPIF                           R11 ; [+3]
       19 LOADB                            R9 0
       20 LOADNIL                          R10
       21 JUMP                             ; [+8]
       22 GETIMPORT                        R12 K8 [pcall]
       24 NEWCLOSURE                       R13 P1
       25 CAPTURE                          VAL R11
       26 CAPTURE                          VAL R5
       27 CALL                             R12 1 2
       28 MOVE                             R9 R12
       29 MOVE                             R10 R13
       30 MOVE                             R7 R9
       31 MOVE                             R8 R10
       32 JUMPIFNOT                        R7 ; [+38]
       33 RETURN                           R8 1
       34 JUMP                             ; [+36]
       35 GETTABLEKS                       R11 R0 K9 ["_mainTranslator"]
       37 JUMPIF                           R11 ; [+3]
       38 LOADB                            R9 0
       39 LOADNIL                          R10
       40 JUMP                             ; [+8]
       41 GETIMPORT                        R12 K8 [pcall]
       43 NEWCLOSURE                       R13 P1
       44 CAPTURE                          VAL R11
       45 CAPTURE                          VAL R5
       46 CALL                             R12 1 2
       47 MOVE                             R9 R12
       48 MOVE                             R10 R13
       49 MOVE                             R7 R9
       50 MOVE                             R8 R10
       51 JUMPIFNOT                        R7 ; [+1]
       52 RETURN                           R8 1
       53 GETTABLEKS                       R11 R0 K6 ["_fallbackTranslator"]
       55 JUMPIF                           R11 ; [+3]
       56 LOADB                            R9 0
       57 LOADNIL                          R10
       58 JUMP                             ; [+8]
       59 GETIMPORT                        R12 K8 [pcall]
       61 NEWCLOSURE                       R13 P1
       62 CAPTURE                          VAL R11
       63 CAPTURE                          VAL R5
       64 CALL                             R12 1 2
       65 MOVE                             R9 R12
       66 MOVE                             R10 R13
       67 MOVE                             R7 R9
       68 MOVE                             R8 R10
       69 JUMPIFNOT                        R7 ; [+1]
       70 RETURN                           R8 1
       71 GETIMPORT                        R9 K11 [game]
       73 LOADK                            R11 K12 ["RefactorTranslatorInstance"]
       74 NAMECALL                         R9 R9 K13 ["GetEngineFeature"]
       76 CALL                             R9 2 1
       77 JUMPIFNOT                        R9 ; [+15]
       78 JUMPIFNOT                        R7 ; [+28]
       79 GETIMPORT                        R9 K15 [string.find]
       81 MOVE                             R10 R8
       82 LOADK                            R11 K16 ["Key .* not found for locale"]
       83 CALL                             R9 2 1
       84 JUMPIF                           R9 ; [+22]
       85 GETIMPORT                        R9 K18 [warn]
       87 MOVE                             R10 R8
       88 GETIMPORT                        R11 K21 [debug.traceback]
       90 CALL                             R11 0 -1
       91 CALL                             R9 -1 0
       92 RETURN                           R5 1
       93 JUMPIFNOT                        R7 ; [+13]
       94 GETIMPORT                        R9 K15 [string.find]
       96 MOVE                             R10 R8
       97 LOADK                            R11 K22 ["LocalizationTable or parent tables do not contain a translation"]
       98 CALL                             R9 2 1
       99 JUMPIF                           R9 ; [+7]
      100 GETIMPORT                        R9 K18 [warn]
      102 MOVE                             R10 R8
      103 GETIMPORT                        R11 K21 [debug.traceback]
      105 CALL                             R11 0 -1
      106 CALL                             R9 -1 0
      107 RETURN                           R5 1

PROTO_13:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_userHasInteracted"]
        3 GETTABLEKS                       R1 R0 K1 ["_userInteractionSignal"]
        5 NAMECALL                         R1 R1 K2 ["Fire"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_onUserInteracted"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Fire"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R1 K1 ["Click"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R2
        9 NAMECALL                         R3 R3 K2 ["Connect"]
       11 CALL                             R3 2 1
       12 GETTABLEKS                       R4 R0 K3 ["_buttonConnections"]
       14 NEWTABLE                         R5 0 2
       16 MOVE                             R6 R3
       17 MOVE                             R7 R2
       18 SETLIST                          R5 R6 2 [1]
       20 SETTABLE                         R5 R4 R1
       21 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Enabled"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["_onUserInteracted"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K2 ["Fire"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 CALL                             R2 0 1
        4 LOADK                            R5 K1 ["Enabled"]
        5 NAMECALL                         R3 R1 K2 ["GetPropertyChangedSignal"]
        7 CALL                             R3 2 1
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R2
       12 NAMECALL                         R3 R3 K3 ["Connect"]
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R4 R0 K4 ["_widgetConnections"]
       17 NEWTABLE                         R5 0 2
       19 MOVE                             R6 R3
       20 MOVE                             R7 R2
       21 SETLIST                          R5 R6 2 [1]
       23 SETTABLE                         R5 R4 R1
       24 GETTABLEKS                       R4 R1 K1 ["Enabled"]
       26 JUMPIFNOT                        R4 ; [+3]
       27 NAMECALL                         R4 R0 K5 ["_onUserInteracted"]
       29 CALL                             R4 1 0
       30 RETURN                           R2 1

PROTO_18:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 NAMECALL                         R0 R0 K0 ["_onUserInteracted"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 1
        6 GETVARARGS                       R2 -1
        7 NAMECALL                         R0 R0 K1 ["Fire"]
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R2
        7 NAMECALL                         R3 R1 K1 ["Connect"]
        9 CALL                             R3 2 1
       10 GETTABLEKS                       R4 R0 K2 ["_connectedSignals"]
       12 NEWTABLE                         R5 0 2
       14 MOVE                             R6 R3
       15 MOVE                             R7 R2
       16 SETLIST                          R5 R6 2 [1]
       18 SETTABLE                         R5 R4 R1
       19 RETURN                           R2 1

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_userHasInteracted"]
        2 JUMPIF                           R1 ; [+9]
        3 GETTABLEKS                       R2 R0 K1 ["_userInteractionSignal"]
        5 GETTABLEKS                       R1 R2 K2 ["Event"]
        7 NAMECALL                         R1 R1 K3 ["Wait"]
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K4 ["_userInteractionConnection"]
       12 GETTABLEKS                       R2 R0 K5 ["_destroyed"]
       14 NOT                              R1 R2
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 8 0
        9 SETTABLEKS                       R1 R1 K4 ["__index"]
       11 DUPCLOSURE                       R2 K5 [PROTO_0]
       12 CAPTURE                          VAL R1
       13 SETTABLEKS                       R2 R1 K6 ["new"]
       15 DUPCLOSURE                       R2 K7 [PROTO_1]
       16 SETTABLEKS                       R2 R1 K8 ["Fire"]
       18 DUPCLOSURE                       R2 K9 [PROTO_3]
       19 SETTABLEKS                       R2 R1 K10 ["Connect"]
       21 DUPCLOSURE                       R2 K11 [PROTO_4]
       22 SETTABLEKS                       R2 R1 K12 ["Destroy"]
       24 NEWTABLE                         R2 16 0
       26 SETTABLEKS                       R2 R2 K4 ["__index"]
       28 DUPCLOSURE                       R3 K13 [PROTO_5]
       29 CAPTURE                          VAL R0
       30 DUPCLOSURE                       R4 K14 [PROTO_6]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R4 R2 K6 ["new"]
       35 DUPCLOSURE                       R4 K15 [PROTO_7]
       36 SETTABLEKS                       R4 R2 K12 ["Destroy"]
       38 DUPCLOSURE                       R4 K16 [PROTO_8]
       39 SETTABLEKS                       R4 R2 K17 ["getKeyNamespace"]
       41 DUPCLOSURE                       R4 K18 [PROTO_9]
       42 SETTABLEKS                       R4 R2 K19 ["getPluginName"]
       44 DUPCLOSURE                       R4 K20 [PROTO_12]
       45 SETTABLEKS                       R4 R2 K21 ["getLocalizedText"]
       47 DUPCLOSURE                       R4 K22 [PROTO_13]
       48 SETTABLEKS                       R4 R2 K23 ["_onUserInteracted"]
       50 DUPCLOSURE                       R4 K24 [PROTO_15]
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R4 R2 K25 ["registerButton"]
       54 DUPCLOSURE                       R4 K26 [PROTO_17]
       55 CAPTURE                          VAL R1
       56 SETTABLEKS                       R4 R2 K27 ["registerWidget"]
       58 DUPCLOSURE                       R4 K28 [PROTO_19]
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R4 R2 K29 ["registerSignal"]
       62 DUPCLOSURE                       R4 K30 [PROTO_20]
       63 SETTABLEKS                       R4 R2 K31 ["waitForUserInteraction"]
       65 RETURN                           R2 1
