PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["navigation"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 DUPTABLE                         R4 K2 [{"navigation"}]
        7 SETTABLEKS                       R1 R4 K0 ["navigation"]
        9 GETUPVAL                         R5 2
       10 MOVE                             R6 R1
       11 CALL                             R5 1 -1
       12 CALL                             R2 -1 -1
       13 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["withNavigation"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K2 [{"navigation"}]
        5 SETTABLEKS                       R0 R3 K1 ["navigation"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["getParam"]
        2 LOADK                            R2 K1 ["assetId"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["createElement"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K4 [{"assetId", "navigation"}]
        9 SETTABLEKS                       R1 R4 K1 ["assetId"]
       11 SETTABLEKS                       R0 R4 K3 ["navigation"]
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["RoactNavigation"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["Navigation"]
       33 GETTABLEKS                       R4 R4 K11 ["NavigatableView"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K4 [require]
       38 GETTABLEKS                       R5 R0 K8 ["Src"]
       40 GETTABLEKS                       R5 R5 K9 ["Components"]
       42 GETTABLEKS                       R5 R5 K12 ["ManagementMainView"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K4 [require]
       47 GETTABLEKS                       R6 R0 K8 ["Src"]
       49 GETTABLEKS                       R6 R6 K9 ["Components"]
       51 GETTABLEKS                       R6 R6 K13 ["PluginDetails"]
       53 GETTABLEKS                       R6 R6 K14 ["PluginDetailsView"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K4 [require]
       58 GETTABLEKS                       R7 R0 K8 ["Src"]
       60 GETTABLEKS                       R7 R7 K15 ["Util"]
       62 GETTABLEKS                       R7 R7 K16 ["Constants"]
       64 CALL                             R6 1 1
       65 DUPCLOSURE                       R7 K17 [PROTO_1]
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R3
       69 NEWTABLE                         R8 0 2
       71 NEWTABLE                         R9 1 0
       73 GETTABLEKS                       R10 R6 K18 ["APP_PAGE"]
       75 GETTABLEKS                       R10 R10 K19 ["Main"]
       77 DUPCLOSURE                       R12 K20 [PROTO_2]
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R4
       80 GETTABLEKS                       R13 R2 K21 ["withNavigation"]
       82 DUPCLOSURE                       R14 K22 [PROTO_0]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R3
       85 CAPTURE                          VAL R12
       86 CALL                             R13 1 1
       87 MOVE                             R11 R13
       88 SETTABLE                         R11 R9 R10
       89 NEWTABLE                         R10 1 0
       91 GETTABLEKS                       R11 R6 K18 ["APP_PAGE"]
       93 GETTABLEKS                       R11 R11 K23 ["Detail"]
       95 DUPCLOSURE                       R13 K24 [PROTO_3]
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R5
       98 GETTABLEKS                       R14 R2 K21 ["withNavigation"]
      100 DUPCLOSURE                       R15 K22 [PROTO_0]
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R13
      104 CALL                             R14 1 1
      105 MOVE                             R12 R14
      106 SETTABLE                         R12 R10 R11
      107 SETLIST                          R8 R9 2 [1]
      109 DUPTABLE                         R9 K26 [{"order"}]
      110 NEWTABLE                         R10 0 2
      112 GETTABLEKS                       R11 R6 K18 ["APP_PAGE"]
      114 GETTABLEKS                       R11 R11 K19 ["Main"]
      116 GETTABLEKS                       R12 R6 K18 ["APP_PAGE"]
      118 GETTABLEKS                       R12 R12 K23 ["Detail"]
      120 SETLIST                          R10 R11 2 [1]
      122 SETTABLEKS                       R10 R9 K25 ["order"]
      124 GETTABLEKS                       R10 R2 K27 ["createRobloxStackNavigator"]
      126 MOVE                             R11 R8
      127 MOVE                             R12 R9
      128 CALL                             R10 2 1
      129 GETTABLEKS                       R11 R2 K28 ["createAppContainer"]
      131 MOVE                             R12 R10
      132 CALL                             R11 1 -1
      133 RETURN                           R11 -1
