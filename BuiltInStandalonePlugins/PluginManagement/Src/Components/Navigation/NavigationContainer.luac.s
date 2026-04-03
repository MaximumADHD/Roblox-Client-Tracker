PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K2 [{"navigation"}]
        5 SETTABLEKS                       R0 R4 K1 ["navigation"]
        7 GETUPVAL                         R5 2
        8 MOVE                             R6 R0
        9 MOVE                             R7 R1
       10 CALL                             R5 2 -1
       11 CALL                             R2 -1 -1
       12 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["withNavigation"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K2 [{"navigation"}]
        5 SETTABLEKS                       R0 R4 K1 ["navigation"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["getParam"]
        2 LOADK                            R3 K1 ["assetId"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K5 [{"assetId", "navigation", "Size"}]
        9 SETTABLEKS                       R2 R5 K1 ["assetId"]
       11 SETTABLEKS                       R0 R5 K3 ["navigation"]
       13 GETIMPORT                        R6 K8 [UDim2.new]
       15 LOADN                            R7 1
       16 LOADN                            R8 0
       17 LOADN                            R9 1
       18 LOADN                            R10 0
       19 CALL                             R6 4 1
       20 SETTABLEKS                       R6 R5 K4 ["Size"]
       22 CALL                             R3 2 -1
       23 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["RoactNavigation"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R7 R0 K8 ["Src"]
       29 GETTABLEKS                       R6 R7 K9 ["Components"]
       31 GETTABLEKS                       R5 R6 K10 ["Navigation"]
       33 GETTABLEKS                       R4 R5 K11 ["NavigatableView"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R7 R0 K8 ["Src"]
       40 GETTABLEKS                       R6 R7 K9 ["Components"]
       42 GETTABLEKS                       R5 R6 K12 ["ManagementMainView"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K4 [require]
       47 GETTABLEKS                       R9 R0 K8 ["Src"]
       49 GETTABLEKS                       R8 R9 K9 ["Components"]
       51 GETTABLEKS                       R7 R8 K13 ["PluginDetails"]
       53 GETTABLEKS                       R6 R7 K14 ["PluginDetailsView"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K4 [require]
       58 GETTABLEKS                       R9 R0 K8 ["Src"]
       60 GETTABLEKS                       R8 R9 K15 ["Util"]
       62 GETTABLEKS                       R7 R8 K16 ["Constants"]
       64 CALL                             R6 1 1
       65 DUPCLOSURE                       R7 K17 [PROTO_2]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R3
       69 NEWTABLE                         R8 2 0
       71 GETTABLEKS                       R10 R6 K18 ["APP_PAGE"]
       73 GETTABLEKS                       R9 R10 K19 ["Main"]
       75 DUPCLOSURE                       R11 K20 [PROTO_3]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R4
       78 DUPCLOSURE                       R10 K21 [PROTO_1]
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R11
       83 SETTABLE                         R10 R8 R9
       84 GETTABLEKS                       R10 R6 K18 ["APP_PAGE"]
       86 GETTABLEKS                       R9 R10 K22 ["Detail"]
       88 DUPCLOSURE                       R11 K23 [PROTO_4]
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R5
       91 DUPCLOSURE                       R10 K21 [PROTO_1]
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R11
       96 SETTABLE                         R10 R8 R9
       97 GETTABLEKS                       R9 R2 K24 ["createStackNavigator"]
       99 DUPTABLE                         R10 K27 [{"routes", "initialRouteName"}]
      100 SETTABLEKS                       R8 R10 K25 ["routes"]
      102 GETTABLEKS                       R12 R6 K18 ["APP_PAGE"]
      104 GETTABLEKS                       R11 R12 K19 ["Main"]
      106 SETTABLEKS                       R11 R10 K26 ["initialRouteName"]
      108 CALL                             R9 1 1
      109 GETTABLEKS                       R10 R2 K28 ["createAppContainer"]
      111 MOVE                             R11 R9
      112 CALL                             R10 1 -1
      113 RETURN                           R10 -1
