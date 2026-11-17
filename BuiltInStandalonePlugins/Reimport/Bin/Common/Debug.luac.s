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
        1 DUPTABLE                         R1 K7 [{["filepath"] = ""}]
        2 SETTABLEKS                       R1 R0 K0 ["configData"]
        4 NEWTABLE                         R1 0 3
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K8 ["StudioDefaultPreset"]
        9 LOADK                            R3 K9 ["Preset 1"]
       10 LOADK                            R4 K10 ["Preset 2"]
       11 SETLIST                          R1 R2 3 [1]
       13 SETTABLEKS                       R1 R0 K1 ["presets"]
       15 DUPCLOSURE                       R1 K11 [PROTO_1]
       16 SETTABLEKS                       R1 R0 K2 ["doSaveConfig"]
       18 DUPCLOSURE                       R1 K12 [PROTO_2]
       19 SETTABLEKS                       R1 R0 K3 ["doReimport"]
       21 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["fromProps"]
        3 LOADK                            R1 K1 ["Model"]
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R0 K3 [{[1], ["target"] = }]
        1 NEWTABLE                         R1 0 10
        3 DUPTABLE                         R2 K8 [{["label"] = "Error 1", ["message"] = "Something went wrong"}]
        4 DUPTABLE                         R3 K11 [{["label"] = "Error 2", ["message"] = "Another issue occurred"}]
        5 DUPTABLE                         R4 K13 [{["message"] = "This one has no Label"}]
        6 DUPTABLE                         R5 K16 [{["label"] = "Error 3", ["message"] = "Yet another problem"}]
        7 DUPTABLE                         R6 K19 [{["label"] = "Error 4", ["message"] = "This is a test error"}]
        8 DUPTABLE                         R7 K22 [{["label"] = "Error 5", ["message"] = "Just for debugging purposes"}]
        9 DUPTABLE                         R8 K25 [{["label"] = "Error 6", ["message"] = "More errors to test the dialog"}]
       10 DUPTABLE                         R9 K28 [{["label"] = "Error 7", ["message"] = "Keep adding errors"}]
       11 DUPTABLE                         R10 K31 [{["label"] = "Error 8", ["message"] = "Testing error handling"}]
       12 DUPTABLE                         R11 K34 [{["label"] = "Error 9", ["message"] = "Still going strong"}]
       13 SETLIST                          R1 R2 10 [1]
       15 SETTABLEKS                       R1 R0 K0 ["errors"]
       17 RETURN                           R0 1

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
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K11 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Dialogs"]
       38 GETTABLEKS                       R5 R5 K13 ["Types"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Lib"]
       45 GETTABLEKS                       R6 R6 K14 ["Reimport"]
       47 GETTABLEKS                       R6 R6 K13 ["Types"]
       49 CALL                             R5 1 1
       50 NEWTABLE                         R6 4 0
       52 DUPCLOSURE                       R7 K15 [PROTO_0]
       53 SETTABLEKS                       R7 R6 K16 ["debugEnabled"]
       55 DUPCLOSURE                       R7 K17 [PROTO_3]
       56 CAPTURE                          VAL R1
       57 DUPCLOSURE                       R8 K18 [PROTO_4]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R7
       60 SETTABLEKS                       R8 R6 K19 ["debugShowConfigureDialog"]
       62 DUPCLOSURE                       R8 K20 [PROTO_5]
       63 DUPCLOSURE                       R9 K21 [PROTO_6]
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R3
       66 SETTABLEKS                       R9 R6 K22 ["debugShowErrorDialog"]
       68 DUPCLOSURE                       R9 K23 [PROTO_7]
       69 CAPTURE                          VAL R6
       70 SETTABLEKS                       R9 R6 K24 ["showDebugUi"]
       72 RETURN                           R6 1
