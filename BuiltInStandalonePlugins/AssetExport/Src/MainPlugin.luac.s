PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Analytics"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 DUPCLOSURE                       R1 K2 [PROTO_2]
        6 NEWTABLE                         R2 0 0
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+14]
        2 DUPTABLE                         R0 K3 [{"Colors", "Font", "Theme"}]
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K0 ["Colors"]
        7 NEWTABLE                         R1 0 0
        9 SETTABLEKS                       R1 R0 K1 ["Font"]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K2 ["Theme"]
       15 RETURN                           R0 1
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K4 ["new"]
       19 GETUPVAL                         R1 2
       20 CALL                             R0 1 -1
       21 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Localization"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 DUPTABLE                         R1 K6 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "AssetExport"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["stringResourceTable"]
        9 GETUPVAL                         R2 2
       10 SETTABLEKS                       R2 R1 K3 ["translationResourceTable"]
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["GetMouse"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 -1
        8 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useMemo"]
        3 DUPCLOSURE                       R4 K1 [PROTO_3]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R5 0 0
        7 CALL                             R3 2 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["useMemo"]
       11 NEWCLOSURE                       R5 P1
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R1
       15 NEWTABLE                         R6 0 1
       17 MOVE                             R7 R1
       18 SETLIST                          R6 R7 1 [1]
       20 CALL                             R4 2 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K0 ["useMemo"]
       24 DUPCLOSURE                       R6 K2 [PROTO_5]
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          UPVAL U4
       28 NEWTABLE                         R7 0 0
       30 CALL                             R5 2 1
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K0 ["useMemo"]
       34 NEWCLOSURE                       R7 P3
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R0
       37 NEWTABLE                         R8 0 1
       39 NAMECALL                         R9 R0 K3 ["GetMouse"]
       41 CALL                             R9 1 -1
       42 SETLIST                          R8 R9 -1 [1]
       44 CALL                             R6 2 1
       45 GETUPVAL                         R7 0
       46 GETTABLEKS                       R7 R7 K0 ["useMemo"]
       48 NEWCLOSURE                       R8 P4
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          VAL R0
       51 NEWTABLE                         R9 0 1
       53 MOVE                             R10 R0
       54 SETLIST                          R9 R10 1 [1]
       56 CALL                             R7 2 1
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R8 R8 K0 ["useMemo"]
       60 NEWCLOSURE                       R9 P5
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          VAL R0
       63 NEWTABLE                         R10 0 1
       65 MOVE                             R11 R0
       66 SETLIST                          R10 R11 1 [1]
       68 CALL                             R8 2 1
       69 GETUPVAL                         R9 0
       70 GETTABLEKS                       R9 R9 K4 ["useEffect"]
       72 NEWCLOSURE                       R10 P6
       73 CAPTURE                          VAL R8
       74 NEWTABLE                         R11 0 1
       76 MOVE                             R12 R0
       77 SETLIST                          R11 R12 1 [1]
       79 CALL                             R9 2 0
       80 DUPTABLE                         R9 K11 [{"Analytics", "Design", "Localization", "Mouse", "Plugin", "ExportController"}]
       81 SETTABLEKS                       R3 R9 K5 ["Analytics"]
       83 SETTABLEKS                       R4 R9 K6 ["Design"]
       85 SETTABLEKS                       R5 R9 K7 ["Localization"]
       87 SETTABLEKS                       R6 R9 K8 ["Mouse"]
       89 SETTABLEKS                       R7 R9 K9 ["Plugin"]
       91 SETTABLEKS                       R8 R9 K10 ["ExportController"]
       93 RETURN                           R9 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["Plugin"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useMemo"]
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
       17 LOADB                            R6 0
       18 CALL                             R3 3 1
       19 GETUPVAL                         R4 3
       20 GETTABLEKS                       R5 R3 K2 ["ExportController"]
       22 CALL                             R4 1 1
       23 GETUPVAL                         R5 4
       24 GETTABLEKS                       R6 R3 K2 ["ExportController"]
       26 CALL                             R5 1 1
       27 LOADB                            R6 1
       28 JUMPIFEQKS                       R5 K3 ["Success"] ; [+5]
       30 JUMPIFEQKS                       R5 K4 ["Failure"] ; [+2]
       32 LOADB                            R6 0 +1
       33 LOADB                            R6 1
       34 JUMPIFNOT                        R6 ; [+15]
       35 GETUPVAL                         R7 5
       36 GETTABLEKS                       R7 R7 K5 ["provide"]
       38 MOVE                             R8 R3
       39 NEWTABLE                         R9 0 1
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R10 R10 K6 ["createElement"]
       44 GETUPVAL                         R11 6
       45 CALL                             R10 1 -1
       46 SETLIST                          R9 R10 -1 [1]
       48 CALL                             R7 2 -1
       49 RETURN                           R7 -1
       50 GETUPVAL                         R7 5
       51 GETTABLEKS                       R7 R7 K5 ["provide"]
       53 MOVE                             R8 R3
       54 NEWTABLE                         R9 0 1
       56 GETUPVAL                         R10 0
       57 GETTABLEKS                       R10 R10 K6 ["createElement"]
       59 GETUPVAL                         R11 7
       60 DUPTABLE                         R12 K8 [{"Enabled"}]
       61 LOADB                            R13 0
       62 JUMPIFEQKS                       R5 K9 ["SelectFilename"] ; [+2]
       64 MOVE                             R13 R4
       65 SETTABLEKS                       R13 R12 K7 ["Enabled"]
       67 CALL                             R10 2 -1
       68 SETLIST                          R9 R10 -1 [1]
       70 CALL                             R7 2 -1
       71 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
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
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Plugin"]
       25 GETTABLEKS                       R5 R3 K11 ["Mouse"]
       27 GETTABLEKS                       R6 R3 K12 ["Design"]
       29 GETTABLEKS                       R7 R2 K13 ["Styling"]
       31 GETTABLEKS                       R7 R7 K14 ["registerPluginStyles"]
       33 GETTABLEKS                       R8 R0 K15 ["Src"]
       35 GETTABLEKS                       R8 R8 K16 ["Resources"]
       37 GETTABLEKS                       R8 R8 K17 ["Localization"]
       39 GETTABLEKS                       R8 R8 K18 ["SourceStrings"]
       41 GETTABLEKS                       R9 R0 K15 ["Src"]
       43 GETTABLEKS                       R9 R9 K16 ["Resources"]
       45 GETTABLEKS                       R9 R9 K17 ["Localization"]
       47 GETTABLEKS                       R9 R9 K19 ["LocalizedStrings"]
       49 GETIMPORT                        R10 K5 [require]
       51 GETTABLEKS                       R11 R0 K15 ["Src"]
       53 GETTABLEKS                       R11 R11 K20 ["Components"]
       55 GETTABLEKS                       R11 R11 K21 ["ExportDialog"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K5 [require]
       60 GETTABLEKS                       R12 R0 K15 ["Src"]
       62 GETTABLEKS                       R12 R12 K20 ["Components"]
       64 GETTABLEKS                       R12 R12 K22 ["FinishedDialog"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K5 [require]
       69 GETTABLEKS                       R13 R0 K15 ["Src"]
       71 GETTABLEKS                       R13 R13 K23 ["Hooks"]
       73 GETTABLEKS                       R13 R13 K24 ["useExportEnabled"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K5 [require]
       78 GETTABLEKS                       R14 R0 K15 ["Src"]
       80 GETTABLEKS                       R14 R14 K23 ["Hooks"]
       82 GETTABLEKS                       R14 R14 K25 ["useViewState"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K5 [require]
       87 GETTABLEKS                       R15 R0 K15 ["Src"]
       89 GETTABLEKS                       R15 R15 K26 ["Controllers"]
       91 GETTABLEKS                       R15 R15 K27 ["ExportController"]
       93 CALL                             R14 1 1
       94 DUPCLOSURE                       R15 K28 [PROTO_1]
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R7
       97 DUPCLOSURE                       R16 K29 [PROTO_11]
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R5
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R14
      106 DUPCLOSURE                       R17 K30 [PROTO_12]
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R10
      115 RETURN                           R17 1
