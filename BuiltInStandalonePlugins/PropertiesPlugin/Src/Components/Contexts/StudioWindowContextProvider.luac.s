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
        5 GETTABLEKS                       R3 R0 K1 ["X"]
        7 GETTABLEKS                       R4 R0 K2 ["Y"]
        9 NAMECALL                         R1 R1 K3 ["SetFixedSize"]
       11 CALL                             R1 3 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["Name"]
        3 GETUPVAL                         R1 0
        4 SETTABLEKS                       R0 R1 K1 ["Title"]
        6 RETURN                           R0 0

PROTO_4:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Enabled"]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+3]
        6 GETUPVAL                         R0 1
        7 LOADB                            R1 0
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 LOADK                            R2 K0 ["Window"]
        1 GETUPVAL                         R3 0
        2 NAMECALL                         R3 R3 K1 ["GenerateGUID"]
        4 CALL                             R3 1 1
        5 CONCAT                           R1 R2 R3
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["plugin"]
        9 MOVE                             R4 R1
       10 DUPTABLE                         R5 K10 [{["Id"], ["InitialEnabled"], ["Size"], ["Modal"] = True, ["DisableTitleBar"] = False}]
       11 SETTABLEKS                       R1 R5 K3 ["Id"]
       13 GETTABLEKS                       R7 R0 K11 ["initialEnabled"]
       15 JUMPIFEQKB                       R7 TRUE ; [+2]
       17 LOADB                            R6 0 +1
       18 LOADB                            R6 1
       19 SETTABLEKS                       R6 R5 K4 ["InitialEnabled"]
       21 GETTABLEKS                       R6 R0 K12 ["size"]
       23 SETTABLEKS                       R6 R5 K5 ["Size"]
       25 NAMECALL                         R2 R2 K13 ["CreateQWidgetPluginGui"]
       27 CALL                             R2 3 1
       28 GETIMPORT                        R3 K17 [Enum.ZIndexBehavior.Sibling]
       30 SETTABLEKS                       R3 R2 K15 ["ZIndexBehavior"]
       32 GETTABLEKS                       R4 R0 K18 ["title"]
       34 JUMPIFNOT                        R4 ; [+3]
       35 GETTABLEKS                       R3 R0 K18 ["title"]
       37 JUMP                             ; [+1]
       38 LOADK                            R3 K19 ["Studio Window"]
       39 SETTABLEKS                       R3 R2 K20 ["Name"]
       41 SETTABLEKS                       R3 R2 K21 ["Title"]
       43 GETTABLEKS                       R4 R0 K22 ["onStateChanged"]
       45 NEWCLOSURE                       R5 P0
       46 CAPTURE                          VAL R2
       47 CAPTURE                          REF R4
       48 NEWCLOSURE                       R6 P1
       49 CAPTURE                          VAL R2
       50 CAPTURE                          REF R4
       51 NEWCLOSURE                       R7 P2
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          VAL R2
       54 NEWCLOSURE                       R8 P3
       55 CAPTURE                          VAL R2
       56 NEWCLOSURE                       R9 P4
       57 CAPTURE                          REF R4
       58 NEWCLOSURE                       R12 P5
       59 CAPTURE                          VAL R2
       60 CAPTURE                          REF R4
       61 NAMECALL                         R10 R2 K23 ["BindToClose"]
       63 CALL                             R10 2 0
       64 GETTABLEKS                       R10 R0 K12 ["size"]
       66 GETUPVAL                         R11 2
       67 MOVE                             R13 R2
       68 NAMECALL                         R11 R11 K24 ["GetWidgetFromPluginGui"]
       70 CALL                             R11 2 1
       71 GETTABLEKS                       R13 R10 K25 ["X"]
       73 GETTABLEKS                       R14 R10 K26 ["Y"]
       75 NAMECALL                         R11 R11 K27 ["SetFixedSize"]
       77 CALL                             R11 3 0
       78 DUPTABLE                         R10 K35 [{"open", "close", "setSize", "setTitle", "setOnStateChanged", "instance", "cleanup"}]
       79 SETTABLEKS                       R5 R10 K28 ["open"]
       81 SETTABLEKS                       R6 R10 K29 ["close"]
       83 SETTABLEKS                       R7 R10 K30 ["setSize"]
       85 SETTABLEKS                       R8 R10 K31 ["setTitle"]
       87 SETTABLEKS                       R9 R10 K32 ["setOnStateChanged"]
       89 SETTABLEKS                       R2 R10 K33 ["instance"]
       91 NEWCLOSURE                       R11 P6
       92 CAPTURE                          VAL R2
       93 SETTABLEKS                       R11 R10 K34 ["cleanup"]
       95 CLOSEUPVALS                      R4
       96 RETURN                           R10 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 NEWTABLE                         R3 0 1
        9 GETTABLEKS                       R4 R0 K1 ["plugin"]
       11 SETLIST                          R3 R4 1 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 3
       15 GETUPVAL                         R3 4
       16 GETTABLEKS                       R3 R3 K2 ["Components"]
       18 GETTABLEKS                       R3 R3 K3 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K4 ["WindowContextProvider"]
       22 DUPTABLE                         R4 K6 [{"createWindowAsync"}]
       23 SETTABLEKS                       R1 R4 K5 ["createWindowAsync"]
       25 GETTABLEKS                       R5 R0 K7 ["children"]
       27 CALL                             R2 3 -1
       28 RETURN                           R2 -1

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
       21 GETTABLEKS                       R3 R2 K9 ["createElement"]
       23 GETIMPORT                        R4 K11 [game]
       25 LOADK                            R6 K12 ["HttpService"]
       26 NAMECALL                         R4 R4 K13 ["GetService"]
       28 CALL                             R4 2 1
       29 GETIMPORT                        R5 K11 [game]
       31 LOADK                            R7 K14 ["StudioWidgetsService"]
       32 NAMECALL                         R5 R5 K13 ["GetService"]
       34 CALL                             R5 2 1
       35 DUPCLOSURE                       R6 K15 [PROTO_8]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R1
       41 RETURN                           R6 1
