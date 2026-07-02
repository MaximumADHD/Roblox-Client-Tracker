PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Id"]
        3 GETTABLEKS                       R4 R0 K1 ["Selected"]
        5 NOT                              R3 R4
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
        8 ORK                              R4 R5 K3 [0]
        9 GETTABLEKS                       R5 R1 K5 ["DeviceSelected"]
       11 GETTABLEKS                       R6 R1 K6 ["Devices"]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R7 R7 K7 ["createElement"]
       16 GETUPVAL                         R8 1
       17 DUPTABLE                         R9 K14 [{["Title"], ["LayoutOrder"], ["Boxes"], ["EntryClicked"], ["AbsoluteMaxHeight"], ["UseGridLayout"] = True}]
       18 LOADK                            R12 K15 ["PageTitle"]
       19 LOADK                            R13 K6 ["Devices"]
       20 NAMECALL                         R10 R2 K16 ["getText"]
       22 CALL                             R10 3 1
       23 SETTABLEKS                       R10 R9 K8 ["Title"]
       25 SETTABLEKS                       R4 R9 K4 ["LayoutOrder"]
       27 NEWTABLE                         R10 0 5
       29 DUPTABLE                         R11 K20 [{["Id"] = "Computer", ["Title"], ["Selected"]}]
       30 LOADK                            R14 K6 ["Devices"]
       31 LOADK                            R15 K18 ["Computer"]
       32 NAMECALL                         R12 R2 K16 ["getText"]
       34 CALL                             R12 3 1
       35 SETTABLEKS                       R12 R11 K8 ["Title"]
       37 GETTABLEKS                       R12 R6 K18 ["Computer"]
       39 SETTABLEKS                       R12 R11 K19 ["Selected"]
       41 DUPTABLE                         R12 K22 [{["Id"] = "Phone", ["Title"], ["Selected"]}]
       42 LOADK                            R15 K6 ["Devices"]
       43 LOADK                            R16 K21 ["Phone"]
       44 NAMECALL                         R13 R2 K16 ["getText"]
       46 CALL                             R13 3 1
       47 SETTABLEKS                       R13 R12 K8 ["Title"]
       49 GETTABLEKS                       R13 R6 K21 ["Phone"]
       51 SETTABLEKS                       R13 R12 K19 ["Selected"]
       53 DUPTABLE                         R13 K24 [{["Id"] = "Tablet", ["Title"], ["Selected"]}]
       54 LOADK                            R16 K6 ["Devices"]
       55 LOADK                            R17 K23 ["Tablet"]
       56 NAMECALL                         R14 R2 K16 ["getText"]
       58 CALL                             R14 3 1
       59 SETTABLEKS                       R14 R13 K8 ["Title"]
       61 GETTABLEKS                       R14 R6 K23 ["Tablet"]
       63 SETTABLEKS                       R14 R13 K19 ["Selected"]
       65 DUPTABLE                         R14 K26 [{["Id"] = "Console", ["Title"], ["Selected"]}]
       66 LOADK                            R17 K6 ["Devices"]
       67 LOADK                            R18 K25 ["Console"]
       68 NAMECALL                         R15 R2 K16 ["getText"]
       70 CALL                             R15 3 1
       71 SETTABLEKS                       R15 R14 K8 ["Title"]
       73 GETTABLEKS                       R15 R6 K25 ["Console"]
       75 SETTABLEKS                       R15 R14 K19 ["Selected"]
       77 DUPTABLE                         R15 K28 [{["Id"] = "VR", ["Title"], ["Selected"]}]
       78 LOADK                            R18 K6 ["Devices"]
       79 LOADK                            R19 K27 ["VR"]
       80 NAMECALL                         R16 R2 K16 ["getText"]
       82 CALL                             R16 3 1
       83 SETTABLEKS                       R16 R15 K8 ["Title"]
       85 GETTABLEKS                       R16 R6 K27 ["VR"]
       87 SETTABLEKS                       R16 R15 K19 ["Selected"]
       89 SETLIST                          R10 R11 5 [1]
       91 SETTABLEKS                       R10 R9 K9 ["Boxes"]
       93 NEWCLOSURE                       R10 P0
       94 CAPTURE                          VAL R5
       95 SETTABLEKS                       R10 R9 K10 ["EntryClicked"]
       97 GETTABLEKS                       R10 R3 K29 ["checkboxset"]
       99 GETTABLEKS                       R10 R10 K30 ["maxHeight"]
      101 SETTABLEKS                       R10 R9 K11 ["AbsoluteMaxHeight"]
      103 CALL                             R7 2 -1
      104 RETURN                           R7 -1

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
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R6 K11 ["Components"]
       33 GETTABLEKS                       R6 R6 K12 ["CheckBoxSet"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R7 R0 K10 ["Src"]
       40 GETTABLEKS                       R7 R7 K11 ["Components"]
       42 GETTABLEKS                       R7 R7 K13 ["ListDialog"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R1 K14 ["PureComponent"]
       47 LOADK                            R9 K15 ["PlatformSelect"]
       48 NAMECALL                         R7 R7 K16 ["extend"]
       50 CALL                             R7 2 1
       51 GETTABLEKS                       R8 R2 K17 ["SharedFlags"]
       53 DUPCLOSURE                       R9 K18 [PROTO_1]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R5
       56 SETTABLEKS                       R9 R7 K19 ["render"]
       58 MOVE                             R9 R4
       59 DUPTABLE                         R10 K22 [{"Localization", "Stylizer"}]
       60 GETTABLEKS                       R11 R3 K20 ["Localization"]
       62 SETTABLEKS                       R11 R10 K20 ["Localization"]
       64 GETTABLEKS                       R11 R3 K21 ["Stylizer"]
       66 SETTABLEKS                       R11 R10 K21 ["Stylizer"]
       68 CALL                             R9 1 1
       69 MOVE                             R10 R7
       70 CALL                             R9 1 1
       71 MOVE                             R7 R9
       72 RETURN                           R7 1
