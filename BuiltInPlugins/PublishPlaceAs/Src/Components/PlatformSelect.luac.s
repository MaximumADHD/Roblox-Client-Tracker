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
       17 DUPTABLE                         R9 K13 [{"Title", "LayoutOrder", "Boxes", "EntryClicked", "AbsoluteMaxHeight", "UseGridLayout"}]
       18 LOADK                            R12 K14 ["PageTitle"]
       19 LOADK                            R13 K6 ["Devices"]
       20 NAMECALL                         R10 R2 K15 ["getText"]
       22 CALL                             R10 3 1
       23 SETTABLEKS                       R10 R9 K8 ["Title"]
       25 SETTABLEKS                       R4 R9 K4 ["LayoutOrder"]
       27 NEWTABLE                         R10 0 5
       29 DUPTABLE                         R11 K18 [{"Id", "Title", "Selected"}]
       30 LOADK                            R12 K19 ["Computer"]
       31 SETTABLEKS                       R12 R11 K16 ["Id"]
       33 LOADK                            R14 K6 ["Devices"]
       34 LOADK                            R15 K19 ["Computer"]
       35 NAMECALL                         R12 R2 K15 ["getText"]
       37 CALL                             R12 3 1
       38 SETTABLEKS                       R12 R11 K8 ["Title"]
       40 GETTABLEKS                       R12 R6 K19 ["Computer"]
       42 SETTABLEKS                       R12 R11 K17 ["Selected"]
       44 DUPTABLE                         R12 K18 [{"Id", "Title", "Selected"}]
       45 LOADK                            R13 K20 ["Phone"]
       46 SETTABLEKS                       R13 R12 K16 ["Id"]
       48 LOADK                            R15 K6 ["Devices"]
       49 LOADK                            R16 K20 ["Phone"]
       50 NAMECALL                         R13 R2 K15 ["getText"]
       52 CALL                             R13 3 1
       53 SETTABLEKS                       R13 R12 K8 ["Title"]
       55 GETTABLEKS                       R13 R6 K20 ["Phone"]
       57 SETTABLEKS                       R13 R12 K17 ["Selected"]
       59 DUPTABLE                         R13 K18 [{"Id", "Title", "Selected"}]
       60 LOADK                            R14 K21 ["Tablet"]
       61 SETTABLEKS                       R14 R13 K16 ["Id"]
       63 LOADK                            R16 K6 ["Devices"]
       64 LOADK                            R17 K21 ["Tablet"]
       65 NAMECALL                         R14 R2 K15 ["getText"]
       67 CALL                             R14 3 1
       68 SETTABLEKS                       R14 R13 K8 ["Title"]
       70 GETTABLEKS                       R14 R6 K21 ["Tablet"]
       72 SETTABLEKS                       R14 R13 K17 ["Selected"]
       74 DUPTABLE                         R14 K18 [{"Id", "Title", "Selected"}]
       75 LOADK                            R15 K22 ["Console"]
       76 SETTABLEKS                       R15 R14 K16 ["Id"]
       78 LOADK                            R17 K6 ["Devices"]
       79 LOADK                            R18 K22 ["Console"]
       80 NAMECALL                         R15 R2 K15 ["getText"]
       82 CALL                             R15 3 1
       83 SETTABLEKS                       R15 R14 K8 ["Title"]
       85 GETTABLEKS                       R15 R6 K22 ["Console"]
       87 SETTABLEKS                       R15 R14 K17 ["Selected"]
       89 DUPTABLE                         R15 K18 [{"Id", "Title", "Selected"}]
       90 LOADK                            R16 K23 ["VR"]
       91 SETTABLEKS                       R16 R15 K16 ["Id"]
       93 LOADK                            R18 K6 ["Devices"]
       94 LOADK                            R19 K23 ["VR"]
       95 NAMECALL                         R16 R2 K15 ["getText"]
       97 CALL                             R16 3 1
       98 SETTABLEKS                       R16 R15 K8 ["Title"]
      100 GETTABLEKS                       R16 R6 K23 ["VR"]
      102 SETTABLEKS                       R16 R15 K17 ["Selected"]
      104 SETLIST                          R10 R11 5 [1]
      106 SETTABLEKS                       R10 R9 K9 ["Boxes"]
      108 NEWCLOSURE                       R10 P0
      109 CAPTURE                          VAL R5
      110 SETTABLEKS                       R10 R9 K10 ["EntryClicked"]
      112 GETTABLEKS                       R10 R3 K24 ["checkboxset"]
      114 GETTABLEKS                       R10 R10 K25 ["maxHeight"]
      116 SETTABLEKS                       R10 R9 K11 ["AbsoluteMaxHeight"]
      118 LOADB                            R10 1
      119 SETTABLEKS                       R10 R9 K12 ["UseGridLayout"]
      121 CALL                             R7 2 -1
      122 RETURN                           R7 -1

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
