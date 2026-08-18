PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R0 1
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R0 1
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["GetWidgetFromPluginGui"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 2
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+8]
        8 GETTABLEKS                       R4 R0 K1 ["X"]
       10 GETTABLEKS                       R5 R0 K2 ["Y"]
       12 NAMECALL                         R2 R1 K3 ["Resize"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 0
       16 GETTABLEKS                       R4 R0 K1 ["X"]
       18 GETTABLEKS                       R5 R0 K2 ["Y"]
       20 NAMECALL                         R2 R1 K4 ["SetFixedSize"]
       22 CALL                             R2 3 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R1 R1 K0 ["GetWidgetFromPluginGui"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 2
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+7]
        8 GETTABLEKS                       R4 R0 K1 ["X"]
       10 GETTABLEKS                       R5 R0 K2 ["Y"]
       12 NAMECALL                         R2 R1 K3 ["SetMinSize"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["Name"]
        3 GETUPVAL                         R1 0
        4 SETTABLEKS                       R0 R1 K1 ["Title"]
        6 RETURN                           R0 0

PROTO_5:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R0 1
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 LOADK                            R2 K0 ["Window"]
        1 GETUPVAL                         R3 0
        2 NAMECALL                         R3 R3 K1 ["GenerateGUID"]
        4 CALL                             R3 1 1
        5 CONCAT                           R1 R2 R3
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["plugin"]
        9 MOVE                             R4 R1
       10 DUPTABLE                         R5 K12 [{["Id"], ["InitialEnabled"], ["Size"], ["Modal"], ["StaysOnTop"], ["Resizable"], ["MinSize"], ["DisableTitleBar"] = False}]
       11 SETTABLEKS                       R1 R5 K3 ["Id"]
       13 GETTABLEKS                       R7 R0 K13 ["initialEnabled"]
       15 JUMPIFEQKB                       R7 TRUE ; [+2]
       17 LOADB                            R6 0 +1
       18 LOADB                            R6 1
       19 SETTABLEKS                       R6 R5 K4 ["InitialEnabled"]
       21 GETTABLEKS                       R6 R0 K14 ["size"]
       23 SETTABLEKS                       R6 R5 K5 ["Size"]
       25 GETUPVAL                         R7 2
       26 CALL                             R7 0 1
       27 NOT                              R6 R7
       28 SETTABLEKS                       R6 R5 K6 ["Modal"]
       30 GETUPVAL                         R6 2
       31 CALL                             R6 0 1
       32 SETTABLEKS                       R6 R5 K7 ["StaysOnTop"]
       34 GETUPVAL                         R6 3
       35 CALL                             R6 0 1
       36 SETTABLEKS                       R6 R5 K8 ["Resizable"]
       38 GETTABLEKS                       R6 R0 K15 ["minSize"]
       40 SETTABLEKS                       R6 R5 K9 ["MinSize"]
       42 NAMECALL                         R2 R2 K16 ["CreateQWidgetPluginGui"]
       44 CALL                             R2 3 1
       45 GETIMPORT                        R3 K20 [Enum.ZIndexBehavior.Sibling]
       47 SETTABLEKS                       R3 R2 K18 ["ZIndexBehavior"]
       49 GETTABLEKS                       R4 R0 K21 ["title"]
       51 JUMPIFNOT                        R4 ; [+3]
       52 GETTABLEKS                       R3 R0 K21 ["title"]
       54 JUMP                             ; [+1]
       55 LOADK                            R3 K22 ["Studio Window"]
       56 SETTABLEKS                       R3 R2 K23 ["Name"]
       58 SETTABLEKS                       R3 R2 K24 ["Title"]
       60 GETTABLEKS                       R4 R0 K25 ["onStateChanged"]
       62 NEWCLOSURE                       R5 P0
       63 CAPTURE                          VAL R2
       64 CAPTURE                          REF R4
       65 NEWCLOSURE                       R6 P1
       66 CAPTURE                          VAL R2
       67 CAPTURE                          REF R4
       68 NEWCLOSURE                       R7 P2
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          VAL R2
       71 CAPTURE                          UPVAL U3
       72 NEWCLOSURE                       R8 P3
       73 CAPTURE                          UPVAL U4
       74 CAPTURE                          VAL R2
       75 CAPTURE                          UPVAL U5
       76 NEWCLOSURE                       R9 P4
       77 CAPTURE                          VAL R2
       78 NEWCLOSURE                       R10 P5
       79 CAPTURE                          REF R4
       80 NEWCLOSURE                       R13 P6
       81 CAPTURE                          VAL R2
       82 CAPTURE                          REF R4
       83 NAMECALL                         R11 R2 K26 ["BindToClose"]
       85 CALL                             R11 2 0
       86 GETTABLEKS                       R11 R0 K14 ["size"]
       88 GETUPVAL                         R12 4
       89 MOVE                             R14 R2
       90 NAMECALL                         R12 R12 K27 ["GetWidgetFromPluginGui"]
       92 CALL                             R12 2 1
       93 GETUPVAL                         R13 3
       94 CALL                             R13 0 1
       95 JUMPIFNOT                        R13 ; [+8]
       96 GETTABLEKS                       R15 R11 K28 ["X"]
       98 GETTABLEKS                       R16 R11 K29 ["Y"]
      100 NAMECALL                         R13 R12 K30 ["Resize"]
      102 CALL                             R13 3 0
      103 JUMP                             ; [+7]
      104 GETTABLEKS                       R15 R11 K28 ["X"]
      106 GETTABLEKS                       R16 R11 K29 ["Y"]
      108 NAMECALL                         R13 R12 K31 ["SetFixedSize"]
      110 CALL                             R13 3 0
      111 DUPTABLE                         R11 K40 [{"open", "close", "setSize", "setMinSize", "setTitle", "setOnStateChanged", "instance", "cleanup"}]
      112 SETTABLEKS                       R5 R11 K32 ["open"]
      114 SETTABLEKS                       R6 R11 K33 ["close"]
      116 SETTABLEKS                       R7 R11 K34 ["setSize"]
      118 SETTABLEKS                       R8 R11 K35 ["setMinSize"]
      120 SETTABLEKS                       R9 R11 K36 ["setTitle"]
      122 SETTABLEKS                       R10 R11 K37 ["setOnStateChanged"]
      124 SETTABLEKS                       R2 R11 K38 ["instance"]
      126 NEWCLOSURE                       R12 P7
      127 CAPTURE                          VAL R2
      128 SETTABLEKS                       R12 R11 K39 ["cleanup"]
      130 CLOSEUPVALS                      R4
      131 RETURN                           R11 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 NEWTABLE                         R3 0 1
       12 GETTABLEKS                       R4 R0 K1 ["plugin"]
       14 SETLIST                          R3 R4 1 [1]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 6
       18 GETUPVAL                         R3 7
       19 GETTABLEKS                       R3 R3 K2 ["Components"]
       21 GETTABLEKS                       R3 R3 K3 ["Contexts"]
       23 GETTABLEKS                       R3 R3 K4 ["WindowContextProvider"]
       25 DUPTABLE                         R4 K6 [{"createWindowAsync"}]
       26 SETTABLEKS                       R1 R4 K5 ["createWindowAsync"]
       28 GETTABLEKS                       R5 R0 K7 ["children"]
       30 CALL                             R2 3 -1
       31 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PropertiesPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Properties"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Flags"]
       27 GETTABLEKS                       R4 R4 K11 ["getFFlagPluginQWidgetStaysOnTopOption"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Flags"]
       36 GETTABLEKS                       R5 R5 K12 ["getFFlagStudioWidgetResize"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K10 ["Flags"]
       45 GETTABLEKS                       R6 R6 K13 ["getFFlagStudioWidgetSetMinSize"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R2 K14 ["createElement"]
       50 GETIMPORT                        R7 K16 [game]
       52 LOADK                            R9 K17 ["HttpService"]
       53 NAMECALL                         R7 R7 K18 ["GetService"]
       55 CALL                             R7 2 1
       56 GETIMPORT                        R8 K16 [game]
       58 LOADK                            R10 K19 ["StudioWidgetsService"]
       59 NAMECALL                         R8 R8 K18 ["GetService"]
       61 CALL                             R8 2 1
       62 DUPCLOSURE                       R9 K20 [PROTO_9]
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R1
       71 RETURN                           R9 1
