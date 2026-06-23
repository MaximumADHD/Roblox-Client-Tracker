PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["setPluginObject"]
        3 GETTABLEKS                       R2 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R2 K2 ["Plugin"]
        7 NAMECALL                         R2 R2 K3 ["get"]
        9 CALL                             R2 1 -1
       10 CALL                             R1 -1 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K4 ["setLocalizationObject"]
       14 GETTABLEKS                       R2 R0 K1 ["props"]
       16 GETTABLEKS                       R2 R2 K5 ["Localization"]
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K6 ["setPluginStateRoduxActionHandler"]
       22 GETTABLEKS                       R2 R0 K1 ["props"]
       24 GETTABLEKS                       R2 R2 K7 ["SetPluginState"]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["Localization"]
        6 GETTABLEKS                       R4 R1 K2 ["PluginState"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K2 ["PluginState"]
       11 GETTABLEKS                       R5 R5 K3 ["Disabled"]
       13 JUMPIFEQ                         R4 R5 ; [+2]
       15 LOADB                            R3 0 +1
       16 LOADB                            R3 1
       17 GETTABLEKS                       R5 R1 K2 ["PluginState"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K2 ["PluginState"]
       22 GETTABLEKS                       R6 R6 K4 ["Recording"]
       24 JUMPIFEQ                         R5 R6 ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 GETTABLEKS                       R6 R1 K2 ["PluginState"]
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R7 R7 K2 ["PluginState"]
       33 GETTABLEKS                       R7 R7 K5 ["Playing"]
       35 JUMPIFEQ                         R6 R7 ; [+2]
       37 LOADB                            R5 0 +1
       38 LOADB                            R5 1
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K6 ["createElement"]
       42 GETUPVAL                         R7 2
       43 DUPTABLE                         R8 K8 [{"Tabs"}]
       44 NEWTABLE                         R9 0 2
       46 DUPTABLE                         R10 K12 [{"Label", "ContentComponent", "Disabled", "Key"}]
       47 LOADK                            R13 K13 ["Plugin"]
       48 LOADK                            R14 K14 ["RecordingTabTitle"]
       49 NAMECALL                         R11 R2 K15 ["getText"]
       51 CALL                             R11 3 1
       52 SETTABLEKS                       R11 R10 K9 ["Label"]
       54 GETUPVAL                         R11 3
       55 SETTABLEKS                       R11 R10 K10 ["ContentComponent"]
       57 OR                               R11 R3 R5
       58 SETTABLEKS                       R11 R10 K3 ["Disabled"]
       60 LOADK                            R11 K16 ["Recording Tab"]
       61 SETTABLEKS                       R11 R10 K11 ["Key"]
       63 DUPTABLE                         R11 K12 [{"Label", "ContentComponent", "Disabled", "Key"}]
       64 LOADK                            R14 K13 ["Plugin"]
       65 LOADK                            R15 K17 ["PlaybackTabTitle"]
       66 NAMECALL                         R12 R2 K15 ["getText"]
       68 CALL                             R12 3 1
       69 SETTABLEKS                       R12 R11 K9 ["Label"]
       71 GETUPVAL                         R12 4
       72 SETTABLEKS                       R12 R11 K10 ["ContentComponent"]
       74 OR                               R12 R3 R4
       75 SETTABLEKS                       R12 R11 K3 ["Disabled"]
       77 LOADK                            R12 K18 ["Playback Tab"]
       78 SETTABLEKS                       R12 R11 K11 ["Key"]
       80 SETLIST                          R9 R10 2 [1]
       82 SETTABLEKS                       R9 R8 K7 ["Tabs"]
       84 CALL                             R6 2 -1
       85 RETURN                           R6 -1

PROTO_2:
        0 DUPTABLE                         R2 K1 [{"PluginState"}]
        1 GETTABLEKS                       R3 R0 K2 ["common"]
        3 GETTABLEKS                       R3 R3 K3 ["pluginState"]
        5 SETTABLEKS                       R3 R2 K0 ["PluginState"]
        7 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"SetPluginState"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetPluginState"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R0 K10 ["Src"]
       34 GETTABLEKS                       R5 R5 K11 ["Components"]
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R7 R5 K12 ["TabbedView"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K4 [require]
       43 GETTABLEKS                       R8 R5 K13 ["PlaybackTabView"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K4 [require]
       48 GETTABLEKS                       R9 R5 K14 ["RecordTabView"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K4 [require]
       53 GETTABLEKS                       R10 R0 K10 ["Src"]
       55 GETTABLEKS                       R10 R10 K15 ["Util"]
       57 GETTABLEKS                       R10 R10 K16 ["Enums"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K4 [require]
       62 GETTABLEKS                       R11 R0 K10 ["Src"]
       64 GETTABLEKS                       R11 R11 K15 ["Util"]
       66 GETTABLEKS                       R11 R11 K17 ["DMBridge"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K4 [require]
       71 GETTABLEKS                       R12 R0 K10 ["Src"]
       73 GETTABLEKS                       R12 R12 K18 ["Actions"]
       75 GETTABLEKS                       R12 R12 K19 ["Common"]
       77 GETTABLEKS                       R12 R12 K20 ["SetPluginState"]
       79 CALL                             R11 1 1
       80 GETTABLEKS                       R12 R1 K21 ["PureComponent"]
       82 LOADK                            R14 K22 ["MainView"]
       83 NAMECALL                         R12 R12 K23 ["extend"]
       85 CALL                             R12 2 1
       86 DUPCLOSURE                       R13 K24 [PROTO_0]
       87 CAPTURE                          VAL R10
       88 SETTABLEKS                       R13 R12 K25 ["didMount"]
       90 DUPCLOSURE                       R13 K26 [PROTO_1]
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R7
       96 SETTABLEKS                       R13 R12 K27 ["render"]
       98 GETTABLEKS                       R13 R4 K28 ["withContext"]
      100 DUPTABLE                         R14 K31 [{"Plugin", "Localization"}]
      101 GETTABLEKS                       R15 R4 K29 ["Plugin"]
      103 SETTABLEKS                       R15 R14 K29 ["Plugin"]
      105 GETTABLEKS                       R15 R4 K30 ["Localization"]
      107 SETTABLEKS                       R15 R14 K30 ["Localization"]
      109 CALL                             R13 1 1
      110 MOVE                             R14 R12
      111 CALL                             R13 1 1
      112 MOVE                             R12 R13
      113 DUPCLOSURE                       R13 K32 [PROTO_2]
      114 DUPCLOSURE                       R14 K33 [PROTO_4]
      115 CAPTURE                          VAL R11
      116 GETTABLEKS                       R15 R2 K34 ["connect"]
      118 MOVE                             R16 R13
      119 MOVE                             R17 R14
      120 CALL                             R15 2 1
      121 MOVE                             R16 R12
      122 CALL                             R15 1 -1
      123 RETURN                           R15 -1
