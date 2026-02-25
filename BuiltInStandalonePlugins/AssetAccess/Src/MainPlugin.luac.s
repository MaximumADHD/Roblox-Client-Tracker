PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 1
        8 MOVE                             R4 R0
        9 SETLIST                          R3 R4 1 [1]
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 DUPCLOSURE                       R1 K1 [PROTO_2]
        4 NEWTABLE                         R2 0 0
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 DUPTABLE                         R1 K4 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["stringResourceTable"]
        7 GETUPVAL                         R2 2
        8 SETTABLEKS                       R2 R1 K2 ["translationResourceTable"]
       10 LOADK                            R2 K5 ["AssetAccess"]
       11 SETTABLEKS                       R2 R1 K3 ["pluginName"]
       13 CALL                             R0 1 -1
       14 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["GetMouse"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 1
        8 LOADK                            R3 K2 ["Arrow"]
        9 LOADN                            R4 0
       10 NAMECALL                         R1 R0 K3 ["__pushCursor"]
       12 CALL                             R1 3 0
       13 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useMemo"]
        3 DUPCLOSURE                       R3 K1 [PROTO_3]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R4 0 0
        7 CALL                             R2 2 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K0 ["useMemo"]
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R1
       14 NEWTABLE                         R5 0 1
       16 MOVE                             R6 R1
       17 SETLIST                          R5 R6 1 [1]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K0 ["useMemo"]
       23 DUPCLOSURE                       R5 K2 [PROTO_5]
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U5
       27 NEWTABLE                         R6 0 0
       29 CALL                             R4 2 1
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R5 R6 K0 ["useMemo"]
       33 NEWCLOSURE                       R6 P3
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R7 0 1
       38 NAMECALL                         R8 R0 K3 ["GetMouse"]
       40 CALL                             R8 1 -1
       41 SETLIST                          R7 R8 -1 [1]
       43 CALL                             R5 2 1
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R6 R7 K0 ["useMemo"]
       47 NEWCLOSURE                       R7 P4
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          VAL R0
       50 NEWTABLE                         R8 0 1
       52 MOVE                             R9 R0
       53 SETLIST                          R8 R9 1 [1]
       55 CALL                             R6 2 1
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R7 R8 K0 ["useMemo"]
       59 DUPCLOSURE                       R8 K4 [PROTO_8]
       60 CAPTURE                          UPVAL U8
       61 NEWTABLE                         R9 0 0
       63 CALL                             R7 2 1
       64 DUPTABLE                         R8 K11 [{"Analytics", "Design", "Localization", "Mouse", "Plugin", "Stylizer"}]
       65 SETTABLEKS                       R2 R8 K5 ["Analytics"]
       67 SETTABLEKS                       R3 R8 K6 ["Design"]
       69 SETTABLEKS                       R4 R8 K7 ["Localization"]
       71 SETTABLEKS                       R5 R8 K8 ["Mouse"]
       73 SETTABLEKS                       R6 R8 K9 ["Plugin"]
       75 SETTABLEKS                       R7 R8 K10 ["Stylizer"]
       77 RETURN                           R8 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["Plugin"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 NEWTABLE                         R4 0 1
       10 MOVE                             R5 R1
       11 SETLIST                          R4 R5 1 [1]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R1
       16 MOVE                             R5 R2
       17 CALL                             R3 2 1
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R4 R5 K2 ["provide"]
       21 MOVE                             R5 R3
       22 NEWTABLE                         R6 0 1
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R7 R8 K3 ["createElement"]
       27 GETUPVAL                         R8 4
       28 CALL                             R7 1 -1
       29 SETLIST                          R6 R7 -1 [1]
       31 CALL                             R4 2 -1
       32 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetAccess"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Analytics"]
       25 GETTABLEKS                       R5 R3 K11 ["Design"]
       27 GETTABLEKS                       R6 R3 K12 ["Localization"]
       29 GETTABLEKS                       R7 R3 K13 ["Mouse"]
       31 GETTABLEKS                       R8 R3 K14 ["Plugin"]
       33 GETTABLEKS                       R11 R2 K15 ["Style"]
       35 GETTABLEKS                       R10 R11 K16 ["Themes"]
       37 GETTABLEKS                       R9 R10 K17 ["StudioTheme"]
       39 GETTABLEKS                       R11 R2 K18 ["Styling"]
       41 GETTABLEKS                       R10 R11 K19 ["registerPluginStyles"]
       43 GETTABLEKS                       R14 R0 K20 ["Src"]
       45 GETTABLEKS                       R13 R14 K21 ["Resources"]
       47 GETTABLEKS                       R12 R13 K12 ["Localization"]
       49 GETTABLEKS                       R11 R12 K22 ["SourceStrings"]
       51 GETTABLEKS                       R15 R0 K20 ["Src"]
       53 GETTABLEKS                       R14 R15 K21 ["Resources"]
       55 GETTABLEKS                       R13 R14 K12 ["Localization"]
       57 GETTABLEKS                       R12 R13 K23 ["LocalizedStrings"]
       59 GETIMPORT                        R13 K5 [require]
       61 GETTABLEKS                       R16 R0 K20 ["Src"]
       63 GETTABLEKS                       R15 R16 K24 ["Components"]
       65 GETTABLEKS                       R14 R15 K25 ["ShareDialogView"]
       67 CALL                             R13 1 1
       68 DUPCLOSURE                       R14 K26 [PROTO_1]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R10
       71 DUPCLOSURE                       R15 K27 [PROTO_9]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R9
       81 DUPCLOSURE                       R16 K28 [PROTO_10]
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R15
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R13
       87 RETURN                           R16 1
