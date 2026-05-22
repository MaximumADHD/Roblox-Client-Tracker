PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["InstallationDialog is deprecated with FFlagStudioRemoveOldPluginInstallFromWebLua"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 DUPTABLE                         R1 K4 [{"hasDataLoaded"}]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["hasDataLoaded"]
       13 SETTABLEKS                       R1 R0 K5 ["state"]
       15 RETURN                           R0 0

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
       21 GETTABLEKS                       R4 R2 K8 ["Bin"]
       23 GETTABLEKS                       R4 R4 K9 ["getFFlagStudioRemoveOldPluginInstallFromWebLua"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K7 [require]
       28 GETTABLEKS                       R5 R2 K10 ["Packages"]
       30 GETTABLEKS                       R5 R5 K11 ["Roact"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K7 [require]
       35 GETTABLEKS                       R6 R2 K10 ["Packages"]
       37 GETTABLEKS                       R6 R6 K12 ["RoactRodux"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K7 [require]
       42 GETTABLEKS                       R7 R2 K10 ["Packages"]
       44 GETTABLEKS                       R7 R7 K13 ["Cryo"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K7 [require]
       49 GETTABLEKS                       R8 R2 K14 ["Src"]
       51 GETTABLEKS                       R8 R8 K15 ["Constants"]
       53 GETTABLEKS                       R8 R8 K16 ["PluginInstalledStatus"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K7 [require]
       58 GETTABLEKS                       R9 R2 K10 ["Packages"]
       60 GETTABLEKS                       R9 R9 K17 ["Framework"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R8 K18 ["ContextServices"]
       65 GETTABLEKS                       R10 R9 K19 ["withContext"]
       67 GETTABLEKS                       R11 R9 K20 ["Localization"]
       69 GETTABLEKS                       R12 R8 K21 ["UI"]
       71 GETTABLEKS                       R13 R12 K22 ["StyledDialog"]
       73 GETTABLEKS                       R14 R4 K23 ["PureComponent"]
       75 LOADK                            R16 K24 ["InstallationDialog"]
       76 NAMECALL                         R14 R14 K25 ["extend"]
       78 CALL                             R14 2 1
       79 DUPCLOSURE                       R15 K26 [PROTO_0]
       80 CAPTURE                          VAL R3
       81 SETTABLEKS                       R15 R14 K27 ["init"]
       83 DUPCLOSURE                       R15 K28 [PROTO_2]
       84 CAPTURE                          VAL R7
       85 SETTABLEKS                       R15 R14 K29 ["didUpdate"]
       87 DUPCLOSURE                       R15 K30 [PROTO_3]
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R13
       90 SETTABLEKS                       R15 R14 K31 ["render"]
       92 MOVE                             R15 R10
       93 DUPTABLE                         R16 K32 [{"Localization"}]
       94 GETTABLEKS                       R17 R9 K20 ["Localization"]
       96 SETTABLEKS                       R17 R16 K20 ["Localization"]
       98 CALL                             R15 1 1
       99 MOVE                             R16 R14
      100 CALL                             R15 1 1
      101 MOVE                             R14 R15
      102 GETTABLEKS                       R15 R5 K33 ["connect"]
      104 DUPCLOSURE                       R16 K34 [PROTO_4]
      105 CALL                             R15 1 1
      106 MOVE                             R16 R14
      107 CALL                             R15 1 -1
      108 RETURN                           R15 -1
