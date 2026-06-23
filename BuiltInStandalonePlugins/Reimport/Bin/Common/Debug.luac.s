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
        0 DUPTABLE                         R0 K2 [{"errors", "target"}]
        1 NEWTABLE                         R1 0 10
        3 DUPTABLE                         R2 K5 [{"label", "message"}]
        4 LOADK                            R3 K6 ["Error 1"]
        5 SETTABLEKS                       R3 R2 K3 ["label"]
        7 LOADK                            R3 K7 ["Something went wrong"]
        8 SETTABLEKS                       R3 R2 K4 ["message"]
       10 DUPTABLE                         R3 K5 [{"label", "message"}]
       11 LOADK                            R4 K8 ["Error 2"]
       12 SETTABLEKS                       R4 R3 K3 ["label"]
       14 LOADK                            R4 K9 ["Another issue occurred"]
       15 SETTABLEKS                       R4 R3 K4 ["message"]
       17 DUPTABLE                         R4 K10 [{"message"}]
       18 LOADK                            R5 K11 ["This one has no Label"]
       19 SETTABLEKS                       R5 R4 K4 ["message"]
       21 DUPTABLE                         R5 K5 [{"label", "message"}]
       22 LOADK                            R6 K12 ["Error 3"]
       23 SETTABLEKS                       R6 R5 K3 ["label"]
       25 LOADK                            R6 K13 ["Yet another problem"]
       26 SETTABLEKS                       R6 R5 K4 ["message"]
       28 DUPTABLE                         R6 K5 [{"label", "message"}]
       29 LOADK                            R7 K14 ["Error 4"]
       30 SETTABLEKS                       R7 R6 K3 ["label"]
       32 LOADK                            R7 K15 ["This is a test error"]
       33 SETTABLEKS                       R7 R6 K4 ["message"]
       35 DUPTABLE                         R7 K5 [{"label", "message"}]
       36 LOADK                            R8 K16 ["Error 5"]
       37 SETTABLEKS                       R8 R7 K3 ["label"]
       39 LOADK                            R8 K17 ["Just for debugging purposes"]
       40 SETTABLEKS                       R8 R7 K4 ["message"]
       42 DUPTABLE                         R8 K5 [{"label", "message"}]
       43 LOADK                            R9 K18 ["Error 6"]
       44 SETTABLEKS                       R9 R8 K3 ["label"]
       46 LOADK                            R9 K19 ["More errors to test the dialog"]
       47 SETTABLEKS                       R9 R8 K4 ["message"]
       49 DUPTABLE                         R9 K5 [{"label", "message"}]
       50 LOADK                            R10 K20 ["Error 7"]
       51 SETTABLEKS                       R10 R9 K3 ["label"]
       53 LOADK                            R10 K21 ["Keep adding errors"]
       54 SETTABLEKS                       R10 R9 K4 ["message"]
       56 DUPTABLE                         R10 K5 [{"label", "message"}]
       57 LOADK                            R11 K22 ["Error 8"]
       58 SETTABLEKS                       R11 R10 K3 ["label"]
       60 LOADK                            R11 K23 ["Testing error handling"]
       61 SETTABLEKS                       R11 R10 K4 ["message"]
       63 DUPTABLE                         R11 K5 [{"label", "message"}]
       64 LOADK                            R12 K24 ["Error 9"]
       65 SETTABLEKS                       R12 R11 K3 ["label"]
       67 LOADK                            R12 K25 ["Still going strong"]
       68 SETTABLEKS                       R12 R11 K4 ["message"]
       70 SETLIST                          R1 R2 10 [1]
       72 SETTABLEKS                       R1 R0 K0 ["errors"]
       74 LOADNIL                          R1
       75 SETTABLEKS                       R1 R0 K1 ["target"]
       77 RETURN                           R0 1

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
