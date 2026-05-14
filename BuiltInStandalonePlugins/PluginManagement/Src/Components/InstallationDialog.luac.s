PROTO_0:
        0 DUPTABLE                         R1 K1 [{"hasDataLoaded"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["hasDataLoaded"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"hasDataLoaded"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["hasDataLoaded"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["info"]
        4 GETTABLEKS                       R2 R1 K2 ["installStatus"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["UNKNOWN"]
        9 JUMPIFNOTEQ                      R2 R4 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 GETTABLEKS                       R5 R0 K4 ["state"]
       15 GETTABLEKS                       R5 R5 K5 ["hasDataLoaded"]
       17 JUMPIFEQKB                       R5 FALSE ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 JUMPIFNOT                        R3 ; [+6]
       22 JUMPIFNOT                        R4 ; [+5]
       23 GETIMPORT                        R5 K7 [spawn]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R0
       27 CALL                             R5 1 0
       28 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["hasDataLoaded"]
        4 GETTABLEKS                       R2 R0 K2 ["props"]
        6 GETTABLEKS                       R2 R2 K3 ["Localization"]
        8 GETTABLEKS                       R3 R0 K2 ["props"]
       10 GETTABLEKS                       R3 R3 K4 ["OnClose"]
       12 GETTABLEKS                       R4 R0 K2 ["props"]
       14 GETTABLEKS                       R4 R4 K5 ["OnButtonClicked"]
       16 MOVE                             R5 R1
       17 JUMPIFNOT                        R5 ; [+53]
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K6 ["createElement"]
       21 GETUPVAL                         R6 1
       22 DUPTABLE                         R7 K12 [{"Title", "Buttons", "Resizable", "MinContentSize", "OnButtonPressed", "OnClose"}]
       23 LOADK                            R10 K13 ["DialogTitle"]
       24 LOADK                            R11 K14 ["InstallPlugin"]
       25 NAMECALL                         R8 R2 K15 ["getText"]
       27 CALL                             R8 3 1
       28 SETTABLEKS                       R8 R7 K7 ["Title"]
       30 NEWTABLE                         R8 0 1
       32 DUPTABLE                         R9 K19 [{"Key", "Text", "Style"}]
       33 LOADB                            R10 1
       34 SETTABLEKS                       R10 R9 K16 ["Key"]
       36 LOADK                            R12 K20 ["Dialog"]
       37 LOADK                            R13 K21 ["Ok"]
       38 NAMECALL                         R10 R2 K15 ["getText"]
       40 CALL                             R10 3 1
       41 SETTABLEKS                       R10 R9 K17 ["Text"]
       43 LOADK                            R10 K22 ["RoundPrimary"]
       44 SETTABLEKS                       R10 R9 K18 ["Style"]
       46 SETLIST                          R8 R9 1 [1]
       48 SETTABLEKS                       R8 R7 K8 ["Buttons"]
       50 LOADB                            R8 0
       51 SETTABLEKS                       R8 R7 K9 ["Resizable"]
       53 GETIMPORT                        R8 K25 [Vector2.new]
       55 LOADN                            R9 144
       56 LOADN                            R10 120
       57 CALL                             R8 2 1
       58 SETTABLEKS                       R8 R7 K10 ["MinContentSize"]
       60 SETTABLEKS                       R4 R7 K11 ["OnButtonPressed"]
       62 SETTABLEKS                       R3 R7 K4 ["OnClose"]
       64 GETTABLEKS                       R9 R0 K2 ["props"]
       66 GETUPVAL                         R10 0
       67 GETTABLEKS                       R10 R10 K26 ["Children"]
       69 GETTABLE                         R8 R9 R10
       70 CALL                             R5 3 1
       71 RETURN                           R5 1

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["pluginId"]
        2 DUPTABLE                         R3 K2 [{"info"}]
        3 GETTABLEKS                       R5 R0 K3 ["PluginInfo"]
        5 GETTABLEKS                       R5 R5 K4 ["plugins"]
        7 GETTABLE                         R4 R5 R2
        8 SETTABLEKS                       R4 R3 K1 ["info"]
       10 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [Vector2.new]
        3 LOADN                            R1 144
        4 LOADN                            R2 217
        5 CALL                             R0 2 1
        6 GETIMPORT                        R1 K2 [Vector2.new]
        8 LOADN                            R2 120
        9 LOADN                            R3 32
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K4 [script]
       13 GETTABLEKS                       R2 R2 K5 ["Parent"]
       15 GETTABLEKS                       R2 R2 K5 ["Parent"]
       17 GETTABLEKS                       R2 R2 K5 ["Parent"]
       19 GETIMPORT                        R3 K7 [require]
       21 GETTABLEKS                       R4 R2 K8 ["Packages"]
       23 GETTABLEKS                       R4 R4 K9 ["Roact"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K7 [require]
       28 GETTABLEKS                       R5 R2 K8 ["Packages"]
       30 GETTABLEKS                       R5 R5 K10 ["RoactRodux"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K7 [require]
       35 GETTABLEKS                       R6 R2 K8 ["Packages"]
       37 GETTABLEKS                       R6 R6 K11 ["Cryo"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K7 [require]
       42 GETTABLEKS                       R7 R2 K12 ["Src"]
       44 GETTABLEKS                       R7 R7 K13 ["Constants"]
       46 GETTABLEKS                       R7 R7 K14 ["PluginInstalledStatus"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K7 [require]
       51 GETTABLEKS                       R8 R2 K8 ["Packages"]
       53 GETTABLEKS                       R8 R8 K15 ["Framework"]
       55 CALL                             R7 1 1
       56 GETTABLEKS                       R8 R7 K16 ["ContextServices"]
       58 GETTABLEKS                       R9 R8 K17 ["withContext"]
       60 GETTABLEKS                       R10 R8 K18 ["Localization"]
       62 GETTABLEKS                       R11 R7 K19 ["UI"]
       64 GETTABLEKS                       R12 R11 K20 ["StyledDialog"]
       66 GETTABLEKS                       R13 R3 K21 ["PureComponent"]
       68 LOADK                            R15 K22 ["InstallationDialog"]
       69 NAMECALL                         R13 R13 K23 ["extend"]
       71 CALL                             R13 2 1
       72 DUPCLOSURE                       R14 K24 [PROTO_0]
       73 SETTABLEKS                       R14 R13 K25 ["init"]
       75 DUPCLOSURE                       R14 K26 [PROTO_2]
       76 CAPTURE                          VAL R6
       77 SETTABLEKS                       R14 R13 K27 ["didUpdate"]
       79 DUPCLOSURE                       R14 K28 [PROTO_3]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R12
       82 SETTABLEKS                       R14 R13 K29 ["render"]
       84 MOVE                             R14 R9
       85 DUPTABLE                         R15 K30 [{"Localization"}]
       86 GETTABLEKS                       R16 R8 K18 ["Localization"]
       88 SETTABLEKS                       R16 R15 K18 ["Localization"]
       90 CALL                             R14 1 1
       91 MOVE                             R15 R13
       92 CALL                             R14 1 1
       93 MOVE                             R13 R14
       94 GETTABLEKS                       R14 R4 K31 ["connect"]
       96 DUPCLOSURE                       R15 K32 [PROTO_4]
       97 CALL                             R14 1 1
       98 MOVE                             R15 R13
       99 CALL                             R14 1 -1
      100 RETURN                           R14 -1
