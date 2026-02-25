PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["serviceController"]
        6 DUPTABLE                         R3 K5 [{"alertEnabled", "deviceName", "vrEnabled"}]
        7 LOADB                            R4 0
        8 SETTABLEKS                       R4 R3 K2 ["alertEnabled"]
       10 LOADK                            R4 K6 [""]
       11 SETTABLEKS                       R4 R3 K3 ["deviceName"]
       13 LOADB                            R4 0
       14 SETTABLEKS                       R4 R3 K4 ["vrEnabled"]
       16 NAMECALL                         R1 R0 K7 ["setState"]
       18 CALL                             R1 2 0
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K8 ["Localization"]
       22 GETTABLEKS                       R1 R2 K0 ["new"]
       24 DUPTABLE                         R2 K12 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       25 GETUPVAL                         R3 2
       26 SETTABLEKS                       R3 R2 K9 ["stringResourceTable"]
       28 GETUPVAL                         R3 3
       29 SETTABLEKS                       R3 R2 K10 ["translationResourceTable"]
       31 LOADK                            R3 K13 ["VRStatus"]
       32 SETTABLEKS                       R3 R2 K11 ["pluginName"]
       34 CALL                             R1 1 1
       35 SETTABLEKS                       R1 R0 K14 ["localization"]
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R2 R3 K15 ["Analytics"]
       40 GETTABLEKS                       R1 R2 K0 ["new"]
       42 DUPCLOSURE                       R2 K16 [PROTO_0]
       43 NEWTABLE                         R3 0 0
       45 CALL                             R1 2 1
       46 SETTABLEKS                       R1 R0 K17 ["analytics"]
       48 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"deviceName"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K2 ["VRDeviceName"]
        5 SETTABLEKS                       R3 R2 K0 ["deviceName"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"vrEnabled"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K2 ["VREnabled"]
        5 SETTABLEKS                       R3 R2 K0 ["vrEnabled"]
        7 NAMECALL                         R0 R0 K3 ["setState"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["serviceController"]
        2 LOADK                            R4 K1 ["UserGameSettings"]
        3 NAMECALL                         R2 R1 K2 ["getService"]
        5 CALL                             R2 2 1
        6 LOADK                            R5 K3 ["VRService"]
        7 NAMECALL                         R3 R1 K2 ["getService"]
        9 CALL                             R3 2 1
       10 DUPTABLE                         R6 K6 [{"deviceName", "vrEnabled"}]
       11 GETTABLEKS                       R7 R3 K7 ["VRDeviceName"]
       13 SETTABLEKS                       R7 R6 K4 ["deviceName"]
       15 GETTABLEKS                       R7 R2 K8 ["VREnabled"]
       17 SETTABLEKS                       R7 R6 K5 ["vrEnabled"]
       19 NAMECALL                         R4 R0 K9 ["setState"]
       21 CALL                             R4 2 0
       22 LOADK                            R6 K7 ["VRDeviceName"]
       23 NAMECALL                         R4 R3 K10 ["GetPropertyChangedSignal"]
       25 CALL                             R4 2 1
       26 NEWCLOSURE                       R6 P0
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R3
       29 NAMECALL                         R4 R4 K11 ["Connect"]
       31 CALL                             R4 2 1
       32 SETTABLEKS                       R4 R0 K12 ["_deviceNameConnection"]
       34 LOADK                            R6 K8 ["VREnabled"]
       35 NAMECALL                         R4 R2 K10 ["GetPropertyChangedSignal"]
       37 CALL                             R4 2 1
       38 NEWCLOSURE                       R6 P1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R2
       41 NAMECALL                         R4 R4 K11 ["Connect"]
       43 CALL                             R4 2 1
       44 SETTABLEKS                       R4 R0 K13 ["_vrEnabledConnection"]
       46 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_deviceNameConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_deviceNameConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_deviceNameConnection"]
       11 GETTABLEKS                       R1 R0 K2 ["_vrEnabledConnection"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["_vrEnabledConnection"]
       16 NAMECALL                         R1 R1 K1 ["Disconnect"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["_vrEnabledConnection"]
       22 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"alertEnabled"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["alertEnabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["state"]
        2 DUPTABLE                         R3 K2 [{"Toggle"}]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K3 ["createElement"]
        6 GETUPVAL                         R5 1
        7 DUPTABLE                         R6 K9 [{"toolbar", "enabled", "showAlert", "deviceName", "vrEnabled"}]
        8 SETTABLEKS                       R1 R6 K4 ["toolbar"]
       10 GETTABLEKS                       R7 R2 K10 ["alertEnabled"]
       12 SETTABLEKS                       R7 R6 K5 ["enabled"]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R7 R6 K6 ["showAlert"]
       18 GETTABLEKS                       R7 R2 K7 ["deviceName"]
       20 SETTABLEKS                       R7 R6 K7 ["deviceName"]
       22 GETTABLEKS                       R7 R2 K8 ["vrEnabled"]
       24 SETTABLEKS                       R7 R6 K8 ["vrEnabled"]
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R3 K1 ["Toggle"]
       29 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["renderButtons"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"alertEnabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["alertEnabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["provide"]
        9 NEWTABLE                         R5 0 6
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K4 ["new"]
       14 MOVE                             R7 R3
       15 CALL                             R6 1 1
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R7 R8 K4 ["new"]
       19 NAMECALL                         R8 R3 K5 ["getMouse"]
       21 CALL                             R8 1 -1
       22 CALL                             R7 -1 1
       23 GETUPVAL                         R8 3
       24 CALL                             R8 0 1
       25 GETTABLEKS                       R9 R0 K6 ["localization"]
       27 GETTABLEKS                       R10 R0 K7 ["analytics"]
       29 GETTABLEKS                       R11 R0 K8 ["serviceController"]
       31 SETLIST                          R5 R6 6 [1]
       33 NEWTABLE                         R6 1 1
       35 GETUPVAL                         R9 4
       36 GETTABLEKS                       R8 R9 K9 ["createElement"]
       38 GETUPVAL                         R9 5
       39 DUPTABLE                         R10 K12 [{"Title", "RenderButtons"}]
       40 GETTABLEKS                       R11 R0 K6 ["localization"]
       42 LOADK                            R13 K2 ["Plugin"]
       43 LOADK                            R14 K13 ["Name"]
       44 NAMECALL                         R11 R11 K14 ["getText"]
       46 CALL                             R11 3 1
       47 SETTABLEKS                       R11 R10 K10 ["Title"]
       49 NEWCLOSURE                       R11 P0
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R11 R10 K11 ["RenderButtons"]
       53 CALL                             R8 2 1
       54 SETTABLEKS                       R8 R6 K15 ["Toolbar"]
       56 GETUPVAL                         R8 4
       57 GETTABLEKS                       R7 R8 K9 ["createElement"]
       59 GETUPVAL                         R8 6
       60 DUPTABLE                         R9 K20 [{"OnClose", "enabled", "deviceName", "vrEnabled"}]
       61 NEWCLOSURE                       R10 P1
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R10 R9 K16 ["OnClose"]
       65 GETTABLEKS                       R10 R2 K21 ["alertEnabled"]
       67 SETTABLEKS                       R10 R9 K17 ["enabled"]
       69 GETTABLEKS                       R10 R2 K18 ["deviceName"]
       71 SETTABLEKS                       R10 R9 K18 ["deviceName"]
       73 GETTABLEKS                       R10 R2 K19 ["vrEnabled"]
       75 SETTABLEKS                       R10 R9 K19 ["vrEnabled"]
       77 CALL                             R7 2 -1
       78 SETLIST                          R6 R7 -1 [1]
       80 CALL                             R4 2 -1
       81 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R3 K6 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["Packages"]
       18 GETTABLEKS                       R3 R4 K7 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K8 ["UI"]
       23 GETTABLEKS                       R3 R4 K9 ["PluginToolbar"]
       25 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K11 ["Plugin"]
       29 GETTABLEKS                       R6 R4 K12 ["Mouse"]
       31 GETIMPORT                        R7 K4 [require]
       33 GETTABLEKS                       R10 R0 K13 ["Src"]
       35 GETTABLEKS                       R9 R10 K14 ["Resources"]
       37 GETTABLEKS                       R8 R9 K15 ["MakeTheme"]
       39 CALL                             R7 1 1
       40 GETTABLEKS                       R11 R0 K13 ["Src"]
       42 GETTABLEKS                       R10 R11 K14 ["Resources"]
       44 GETTABLEKS                       R9 R10 K16 ["Localization"]
       46 GETTABLEKS                       R8 R9 K17 ["SourceStrings"]
       48 GETTABLEKS                       R12 R0 K13 ["Src"]
       50 GETTABLEKS                       R11 R12 K14 ["Resources"]
       52 GETTABLEKS                       R10 R11 K16 ["Localization"]
       54 GETTABLEKS                       R9 R10 K18 ["LocalizedStrings"]
       56 GETTABLEKS                       R11 R0 K13 ["Src"]
       58 GETTABLEKS                       R10 R11 K19 ["Components"]
       60 GETIMPORT                        R11 K4 [require]
       62 GETTABLEKS                       R12 R10 K20 ["AlertDialog"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K4 [require]
       67 GETTABLEKS                       R13 R10 K21 ["StatusButton"]
       69 CALL                             R12 1 1
       70 GETTABLEKS                       R14 R0 K13 ["Src"]
       72 GETTABLEKS                       R13 R14 K22 ["Controllers"]
       74 GETIMPORT                        R14 K4 [require]
       76 GETTABLEKS                       R15 R13 K23 ["ServiceController"]
       78 CALL                             R14 1 1
       79 GETTABLEKS                       R15 R1 K24 ["PureComponent"]
       81 LOADK                            R17 K25 ["MainPlugin"]
       82 NAMECALL                         R15 R15 K26 ["extend"]
       84 CALL                             R15 2 1
       85 DUPCLOSURE                       R16 K27 [PROTO_1]
       86 CAPTURE                          VAL R14
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R9
       90 SETTABLEKS                       R16 R15 K28 ["init"]
       92 DUPCLOSURE                       R16 K29 [PROTO_4]
       93 SETTABLEKS                       R16 R15 K30 ["didMount"]
       95 DUPCLOSURE                       R16 K31 [PROTO_5]
       96 SETTABLEKS                       R16 R15 K32 ["willUnmount"]
       98 DUPCLOSURE                       R16 K33 [PROTO_7]
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R12
      101 SETTABLEKS                       R16 R15 K34 ["renderButtons"]
      103 DUPCLOSURE                       R16 K35 [PROTO_10]
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R3
      110 CAPTURE                          VAL R11
      111 SETTABLEKS                       R16 R15 K36 ["render"]
      113 RETURN                           R15 1
