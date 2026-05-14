PROTO_0:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["save called"]
        3 MOVE                             R3 R0
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["reimport called"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R0 K4 [{"configData", "presets", "doSaveConfig", "doReimport"}]
        1 DUPTABLE                         R1 K6 [{"filepath"}]
        2 LOADK                            R2 K7 [""]
        3 SETTABLEKS                       R2 R1 K5 ["filepath"]
        5 SETTABLEKS                       R1 R0 K0 ["configData"]
        7 NEWTABLE                         R1 0 3
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K8 ["StudioDefaultPreset"]
       12 LOADK                            R3 K9 ["Preset 1"]
       13 LOADK                            R4 K10 ["Preset 2"]
       14 SETLIST                          R1 R2 3 [1]
       16 SETTABLEKS                       R1 R0 K1 ["presets"]
       18 DUPCLOSURE                       R1 K11 [PROTO_1]
       19 SETTABLEKS                       R1 R0 K2 ["doSaveConfig"]
       21 DUPCLOSURE                       R1 K12 [PROTO_2]
       22 SETTABLEKS                       R1 R0 K3 ["doReimport"]
       24 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fromProps"]
        3 LOADK                            R1 K1 ["Model"]
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R0 K1 [{"errors"}]
        1 NEWTABLE                         R1 0 10
        3 DUPTABLE                         R2 K4 [{"label", "message"}]
        4 LOADK                            R3 K5 ["Error 1"]
        5 SETTABLEKS                       R3 R2 K2 ["label"]
        7 LOADK                            R3 K6 ["Something went wrong"]
        8 SETTABLEKS                       R3 R2 K3 ["message"]
       10 DUPTABLE                         R3 K4 [{"label", "message"}]
       11 LOADK                            R4 K7 ["Error 2"]
       12 SETTABLEKS                       R4 R3 K2 ["label"]
       14 LOADK                            R4 K8 ["Another issue occurred"]
       15 SETTABLEKS                       R4 R3 K3 ["message"]
       17 DUPTABLE                         R4 K9 [{"message"}]
       18 LOADK                            R5 K10 ["This one has no Label"]
       19 SETTABLEKS                       R5 R4 K3 ["message"]
       21 DUPTABLE                         R5 K4 [{"label", "message"}]
       22 LOADK                            R6 K11 ["Error 3"]
       23 SETTABLEKS                       R6 R5 K2 ["label"]
       25 LOADK                            R6 K12 ["Yet another problem"]
       26 SETTABLEKS                       R6 R5 K3 ["message"]
       28 DUPTABLE                         R6 K4 [{"label", "message"}]
       29 LOADK                            R7 K13 ["Error 4"]
       30 SETTABLEKS                       R7 R6 K2 ["label"]
       32 LOADK                            R7 K14 ["This is a test error"]
       33 SETTABLEKS                       R7 R6 K3 ["message"]
       35 DUPTABLE                         R7 K4 [{"label", "message"}]
       36 LOADK                            R8 K15 ["Error 5"]
       37 SETTABLEKS                       R8 R7 K2 ["label"]
       39 LOADK                            R8 K16 ["Just for debugging purposes"]
       40 SETTABLEKS                       R8 R7 K3 ["message"]
       42 DUPTABLE                         R8 K4 [{"label", "message"}]
       43 LOADK                            R9 K17 ["Error 6"]
       44 SETTABLEKS                       R9 R8 K2 ["label"]
       46 LOADK                            R9 K18 ["More errors to test the dialog"]
       47 SETTABLEKS                       R9 R8 K3 ["message"]
       49 DUPTABLE                         R9 K4 [{"label", "message"}]
       50 LOADK                            R10 K19 ["Error 7"]
       51 SETTABLEKS                       R10 R9 K2 ["label"]
       53 LOADK                            R10 K20 ["Keep adding errors"]
       54 SETTABLEKS                       R10 R9 K3 ["message"]
       56 DUPTABLE                         R10 K4 [{"label", "message"}]
       57 LOADK                            R11 K21 ["Error 8"]
       58 SETTABLEKS                       R11 R10 K2 ["label"]
       60 LOADK                            R11 K22 ["Testing error handling"]
       61 SETTABLEKS                       R11 R10 K3 ["message"]
       63 DUPTABLE                         R11 K4 [{"label", "message"}]
       64 LOADK                            R12 K23 ["Error 9"]
       65 SETTABLEKS                       R12 R11 K2 ["label"]
       67 LOADK                            R12 K24 ["Still going strong"]
       68 SETTABLEKS                       R12 R11 K3 ["message"]
       70 SETLIST                          R1 R2 10 [1]
       72 SETTABLEKS                       R1 R0 K0 ["errors"]
       74 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETIMPORT                        R2 K2 [Instance.new]
        5 LOADK                            R3 K3 ["Model"]
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K4 ["target"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K5 ["fromProps"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["debugEnabled"]
        3 CALL                             R0 0 1
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Lib"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Lib"]
       18 GETTABLEKS                       R3 R3 K8 ["DialogRegistry"]
       20 GETTABLEKS                       R3 R3 K9 ["ShowConfigureDialog"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Lib"]
       27 GETTABLEKS                       R4 R4 K8 ["DialogRegistry"]
       29 GETTABLEKS                       R4 R4 K10 ["ShowErrorDialog"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 4 0
       34 DUPCLOSURE                       R5 K11 [PROTO_0]
       35 SETTABLEKS                       R5 R4 K12 ["debugEnabled"]
       37 DUPCLOSURE                       R5 K13 [PROTO_3]
       38 CAPTURE                          VAL R1
       39 DUPCLOSURE                       R6 K14 [PROTO_4]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R5
       42 SETTABLEKS                       R6 R4 K15 ["debugShowConfigureDialog"]
       44 DUPCLOSURE                       R6 K16 [PROTO_5]
       45 DUPCLOSURE                       R7 K17 [PROTO_6]
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R7 R4 K18 ["debugShowErrorDialog"]
       50 DUPCLOSURE                       R7 K19 [PROTO_7]
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R7 R4 K20 ["showDebugUi"]
       54 RETURN                           R4 1
