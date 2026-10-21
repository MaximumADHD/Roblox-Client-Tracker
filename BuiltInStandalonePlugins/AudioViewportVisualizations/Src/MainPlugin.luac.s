PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"enabled"}]
        2 GETTABLEKS                       R4 R0 K2 ["Checked"]
        4 SETTABLEKS                       R4 R3 K0 ["enabled"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["BindToChangedAsync"]
        4 CALL                             R0 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U2
        7 NAMECALL                         R0 R0 K1 ["Connect"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K2 ["unmounted"]
       13 JUMPIFNOT                        R1 ; [+4]
       14 NAMECALL                         R1 R0 K3 ["Disconnect"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 2
       19 SETTABLEKS                       R0 R1 K4 ["syncStateWithActionConnection"]
       21 GETUPVAL                         R2 0
       22 NEWTABLE                         R4 0 1
       24 GETUPVAL                         R5 1
       25 SETLIST                          R4 R5 1 [1]
       27 NAMECALL                         R2 R2 K5 ["GetAsync"]
       29 CALL                             R2 2 1
       30 GETTABLEN                        R1 R2 1
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R2 R2 K2 ["unmounted"]
       34 JUMPIFNOT                        R2 ; [+1]
       35 RETURN                           R0 0
       36 JUMPIFNOT                        R1 ; [+9]
       37 GETUPVAL                         R2 2
       38 DUPTABLE                         R4 K7 [{"enabled"}]
       39 GETTABLEKS                       R5 R1 K8 ["Checked"]
       41 SETTABLEKS                       R5 R4 K6 ["enabled"]
       43 NAMECALL                         R2 R2 K9 ["setState"]
       45 CALL                             R2 2 0
       46 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"showInactive"}]
        2 GETTABLEKS                       R4 R0 K2 ["Checked"]
        4 SETTABLEKS                       R4 R3 K0 ["showInactive"]
        6 NAMECALL                         R1 R1 K3 ["setState"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["BindToChangedAsync"]
        4 CALL                             R0 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U2
        7 NAMECALL                         R0 R0 K1 ["Connect"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K2 ["unmounted"]
       13 JUMPIFNOT                        R1 ; [+4]
       14 NAMECALL                         R1 R0 K3 ["Disconnect"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R1 2
       19 SETTABLEKS                       R0 R1 K4 ["syncShowInactiveWithActionConnection"]
       21 GETUPVAL                         R2 0
       22 NEWTABLE                         R4 0 1
       24 GETUPVAL                         R5 1
       25 SETLIST                          R4 R5 1 [1]
       27 NAMECALL                         R2 R2 K5 ["GetAsync"]
       29 CALL                             R2 2 1
       30 GETTABLEN                        R1 R2 1
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R2 R2 K2 ["unmounted"]
       34 JUMPIFNOT                        R2 ; [+1]
       35 RETURN                           R0 0
       36 JUMPIFNOT                        R1 ; [+9]
       37 GETUPVAL                         R2 2
       38 DUPTABLE                         R4 K7 [{"showInactive"}]
       39 GETTABLEKS                       R5 R1 K8 ["Checked"]
       41 SETTABLEKS                       R5 R4 K6 ["showInactive"]
       43 NAMECALL                         R2 R2 K9 ["setState"]
       45 CALL                             R2 2 0
       46 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Plugin"]
        3 LOADK                            R2 K1 ["PlaceSessionBridge"]
        4 NAMECALL                         R0 R0 K2 ["GetPluginComponent"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 0 1
        3 GETUPVAL                         R4 1
        4 SETLIST                          R3 R4 1 [1]
        6 NAMECALL                         R1 R1 K0 ["GetAsync"]
        8 CALL                             R1 2 1
        9 GETTABLEN                        R0 R1 1
       10 GETUPVAL                         R2 0
       11 NEWTABLE                         R4 0 1
       13 GETUPVAL                         R5 2
       14 SETLIST                          R4 R5 1 [1]
       16 NAMECALL                         R2 R2 K0 ["GetAsync"]
       18 CALL                             R2 2 1
       19 GETTABLEN                        R1 R2 1
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K1 ["unmounted"]
       23 JUMPIFNOT                        R2 ; [+1]
       24 RETURN                           R0 0
       25 NEWTABLE                         R2 2 0
       27 JUMPIFNOT                        R0 ; [+4]
       28 GETTABLEKS                       R3 R0 K2 ["Checked"]
       30 SETTABLEKS                       R3 R2 K3 ["enabled"]
       32 JUMPIFNOT                        R1 ; [+4]
       33 GETTABLEKS                       R3 R1 K2 ["Checked"]
       35 SETTABLEKS                       R3 R2 K4 ["showInactive"]
       37 GETUPVAL                         R3 3
       38 MOVE                             R5 R2
       39 NAMECALL                         R3 R3 K5 ["setState"]
       41 CALL                             R3 2 0
       42 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIFNOT                        R0 ; [+1]
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R2 R1 K2 ["PlaceSessionStarted"]
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 NAMECALL                         R2 R2 K3 ["Connect"]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 4
       19 GETTABLEKS                       R3 R3 K4 ["unmounted"]
       21 JUMPIFNOT                        R3 ; [+4]
       22 NAMECALL                         R3 R2 K5 ["Disconnect"]
       24 CALL                             R3 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R3 4
       27 SETTABLEKS                       R2 R3 K6 ["placeSessionStartedConnection"]
       29 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_9:
        0 DUPTABLE                         R2 K4 [{[1] = False, ["showInactive"] = True}]
        1 SETTABLEKS                       R2 R0 K5 ["state"]
        3 LOADB                            R2 0
        4 SETTABLEKS                       R2 R0 K6 ["unmounted"]
        6 GETTABLEKS                       R2 R1 K7 ["Plugin"]
        8 LOADK                            R4 K8 ["Actions"]
        9 NAMECALL                         R2 R2 K9 ["GetPluginComponent"]
       11 CALL                             R2 2 1
       12 GETIMPORT                        R3 K12 [task.spawn]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R0
       18 CALL                             R3 1 0
       19 GETIMPORT                        R3 K12 [task.spawn]
       21 NEWCLOSURE                       R4 P1
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          VAL R0
       25 CALL                             R3 1 0
       26 GETIMPORT                        R3 K12 [task.spawn]
       28 NEWCLOSURE                       R4 P2
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R2
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U1
       33 CAPTURE                          VAL R0
       34 CALL                             R3 1 0
       35 GETUPVAL                         R3 2
       36 GETTABLEKS                       R3 R3 K13 ["Localization"]
       38 GETTABLEKS                       R3 R3 K14 ["new"]
       40 DUPTABLE                         R4 K19 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AudioViewportVisualizations"}]
       41 GETUPVAL                         R5 3
       42 SETTABLEKS                       R5 R4 K15 ["stringResourceTable"]
       44 GETUPVAL                         R5 4
       45 SETTABLEKS                       R5 R4 K16 ["translationResourceTable"]
       47 CALL                             R3 1 1
       48 SETTABLEKS                       R3 R0 K20 ["localizationLEGACY"]
       50 GETUPVAL                         R3 5
       51 GETTABLEKS                       R3 R3 K13 ["Localization"]
       53 GETTABLEKS                       R3 R3 K14 ["new"]
       55 DUPTABLE                         R4 K19 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AudioViewportVisualizations"}]
       56 GETUPVAL                         R5 3
       57 SETTABLEKS                       R5 R4 K15 ["stringResourceTable"]
       59 GETUPVAL                         R5 4
       60 SETTABLEKS                       R5 R4 K16 ["translationResourceTable"]
       62 CALL                             R3 1 1
       63 SETTABLEKS                       R3 R0 K21 ["localization"]
       65 GETUPVAL                         R3 2
       66 GETTABLEKS                       R3 R3 K22 ["Analytics"]
       68 GETTABLEKS                       R3 R3 K14 ["new"]
       70 DUPCLOSURE                       R4 K23 [PROTO_8]
       71 NEWTABLE                         R5 0 0
       73 CALL                             R3 2 1
       74 SETTABLEKS                       R3 R0 K24 ["analytics"]
       76 GETUPVAL                         R3 6
       77 GETTABLEKS                       R3 R3 K14 ["new"]
       79 CALL                             R3 0 1
       80 SETTABLEKS                       R3 R0 K25 ["DEPRECATED_stylizer"]
       82 GETUPVAL                         R3 7
       83 GETTABLEKS                       R3 R3 K26 ["Util"]
       85 GETTABLEKS                       R3 R3 K27 ["createFoundationDesignBinding"]
       87 CALL                             R3 0 2
       88 SETTABLEKS                       R4 R0 K28 ["onFoundationStyleSheetChange"]
       90 GETUPVAL                         R5 8
       91 GETTABLEKS                       R6 R1 K7 ["Plugin"]
       93 LOADNIL                          R7
       94 LOADNIL                          R8
       95 NEWTABLE                         R9 0 1
       97 MOVE                             R10 R3
       98 SETLIST                          R9 R10 1 [1]
      100 CALL                             R5 4 1
      101 SETTABLEKS                       R5 R0 K29 ["design"]
      103 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 2
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 SETLIST                          R2 R3 2 [1]
        7 NAMECALL                         R0 R0 K0 ["GetAsync"]
        9 CALL                             R0 2 1
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K1 ["unmounted"]
       13 JUMPIFNOT                        R1 ; [+1]
       14 RETURN                           R0 0
       15 GETTABLEN                        R1 R0 1
       16 JUMPIFNOT                        R1 ; [+8]
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K2 ["Standalone"]
       20 GETTABLEKS                       R2 R2 K3 ["setShowSourcesEnabled"]
       22 GETTABLEKS                       R3 R1 K4 ["Checked"]
       24 CALL                             R2 1 0
       25 GETTABLEN                        R2 R0 2
       26 JUMPIFNOT                        R2 ; [+8]
       27 GETUPVAL                         R3 4
       28 GETTABLEKS                       R3 R3 K2 ["Standalone"]
       30 GETTABLEKS                       R3 R3 K5 ["setShowInactiveEnabled"]
       32 GETTABLEKS                       R4 R2 K4 ["Checked"]
       34 CALL                             R3 1 0
       35 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        4 LOADK                            R3 K2 ["Opened"]
        5 NAMECALL                         R1 R1 K3 ["Invoke"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K4 ["Standalone"]
       11 GETTABLEKS                       R1 R1 K5 ["setUpMainView"]
       13 CALL                             R1 0 1
       14 SETTABLEKS                       R1 R0 K6 ["mainViewCleanup"]
       16 GETTABLEKS                       R1 R0 K0 ["props"]
       18 GETTABLEKS                       R1 R1 K1 ["Plugin"]
       20 LOADK                            R3 K7 ["Actions"]
       21 NAMECALL                         R1 R1 K8 ["GetPluginComponent"]
       23 CALL                             R1 2 1
       24 GETIMPORT                        R2 K11 [task.spawn]
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U0
       32 CALL                             R2 1 0
       33 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R2 K0 ["enabled"]
        2 GETTABLEKS                       R4 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R4 K0 ["enabled"]
        6 JUMPIFEQ                         R3 R4 ; [+11]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["Standalone"]
       11 GETTABLEKS                       R3 R3 K3 ["setShowSourcesEnabled"]
       13 GETTABLEKS                       R4 R0 K1 ["state"]
       15 GETTABLEKS                       R4 R4 K0 ["enabled"]
       17 CALL                             R3 1 0
       18 GETTABLEKS                       R3 R2 K4 ["showInactive"]
       20 GETTABLEKS                       R4 R0 K1 ["state"]
       22 GETTABLEKS                       R4 R4 K4 ["showInactive"]
       24 JUMPIFEQ                         R3 R4 ; [+11]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K2 ["Standalone"]
       29 GETTABLEKS                       R3 R3 K5 ["setShowInactiveEnabled"]
       31 GETTABLEKS                       R4 R0 K1 ["state"]
       33 GETTABLEKS                       R4 R4 K4 ["showInactive"]
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["Fragment"]
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_14:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["unmounted"]
        3 GETTABLEKS                       R1 R0 K1 ["mainViewCleanup"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R1 R0 K1 ["mainViewCleanup"]
        8 CALL                             R1 0 0
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K1 ["mainViewCleanup"]
       12 GETTABLEKS                       R1 R0 K2 ["syncStateWithActionConnection"]
       14 JUMPIFNOT                        R1 ; [+5]
       15 GETTABLEKS                       R1 R0 K2 ["syncStateWithActionConnection"]
       17 NAMECALL                         R1 R1 K3 ["Disconnect"]
       19 CALL                             R1 1 0
       20 GETTABLEKS                       R1 R0 K4 ["syncShowInactiveWithActionConnection"]
       22 JUMPIFNOT                        R1 ; [+5]
       23 GETTABLEKS                       R1 R0 K4 ["syncShowInactiveWithActionConnection"]
       25 NAMECALL                         R1 R1 K3 ["Disconnect"]
       27 CALL                             R1 1 0
       28 GETTABLEKS                       R1 R0 K5 ["placeSessionStartedConnection"]
       30 JUMPIFNOT                        R1 ; [+5]
       31 GETTABLEKS                       R1 R0 K5 ["placeSessionStartedConnection"]
       33 NAMECALL                         R1 R1 K3 ["Disconnect"]
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioViewportVisualizations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Contexts"]
       30 GETTABLEKS                       R4 R4 K11 ["Localization"]
       32 GETTABLEKS                       R5 R2 K12 ["ContextServices"]
       34 GETTABLEKS                       R6 R2 K13 ["Style"]
       36 GETTABLEKS                       R6 R6 K14 ["Themes"]
       38 GETTABLEKS                       R6 R6 K15 ["StudioTheme"]
       40 GETTABLEKS                       R7 R3 K16 ["Util"]
       42 GETTABLEKS                       R7 R7 K17 ["StudioUri"]
       44 GETTABLEKS                       R8 R2 K18 ["Styling"]
       46 GETTABLEKS                       R8 R8 K19 ["registerPluginStyles"]
       48 GETTABLEKS                       R9 R0 K20 ["Src"]
       50 GETTABLEKS                       R9 R9 K21 ["Resources"]
       52 GETTABLEKS                       R9 R9 K11 ["Localization"]
       54 GETTABLEKS                       R9 R9 K22 ["SourceStrings"]
       56 GETTABLEKS                       R10 R0 K20 ["Src"]
       58 GETTABLEKS                       R10 R10 K21 ["Resources"]
       60 GETTABLEKS                       R10 R10 K11 ["Localization"]
       62 GETTABLEKS                       R10 R10 K23 ["LocalizedStrings"]
       64 GETIMPORT                        R11 K5 [require]
       66 GETTABLEKS                       R12 R0 K20 ["Src"]
       68 GETTABLEKS                       R12 R12 K16 ["Util"]
       70 GETTABLEKS                       R12 R12 K24 ["DMCoordinator"]
       72 CALL                             R11 1 1
       73 GETTABLEKS                       R12 R1 K25 ["PureComponent"]
       75 LOADK                            R14 K26 ["MainPlugin"]
       76 NAMECALL                         R12 R12 K27 ["extend"]
       78 CALL                             R12 2 1
       79 GETTABLEKS                       R13 R7 K28 ["fromAction"]
       81 LOADK                            R14 K2 ["AudioViewportVisualizations"]
       82 LOADK                            R15 K29 ["Toggle"]
       83 CALL                             R13 2 1
       84 GETTABLEKS                       R14 R7 K28 ["fromAction"]
       86 LOADK                            R15 K2 ["AudioViewportVisualizations"]
       87 LOADK                            R16 K30 ["ToggleShowInactiveSources"]
       88 CALL                             R14 2 1
       89 DUPCLOSURE                       R15 K31 [PROTO_9]
       90 CAPTURE                          VAL R13
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R8
       99 SETTABLEKS                       R15 R12 K32 ["init"]
      101 DUPCLOSURE                       R15 K33 [PROTO_11]
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R14
      105 SETTABLEKS                       R15 R12 K34 ["didMount"]
      107 DUPCLOSURE                       R15 K35 [PROTO_12]
      108 CAPTURE                          VAL R11
      109 SETTABLEKS                       R15 R12 K36 ["didUpdate"]
      111 DUPCLOSURE                       R15 K37 [PROTO_13]
      112 CAPTURE                          VAL R1
      113 SETTABLEKS                       R15 R12 K38 ["render"]
      115 DUPCLOSURE                       R15 K39 [PROTO_14]
      116 SETTABLEKS                       R15 R12 K40 ["willUnmount"]
      118 RETURN                           R12 1
