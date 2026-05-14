PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"screenSize"}]
        3 GETTABLEKS                       R5 R1 K0 ["screenSize"]
        5 SETTABLEKS                       R5 R4 K0 ["screenSize"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"emulationDeviceId"}]
        3 GETTABLEKS                       R5 R1 K0 ["emulationDeviceId"]
        5 SETTABLEKS                       R5 R4 K0 ["emulationDeviceId"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"emulationDeviceOrientation"}]
        3 GETTABLEKS                       R5 R1 K2 ["orientation"]
        5 SETTABLEKS                       R5 R4 K0 ["emulationDeviceOrientation"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["Dictionary"]
       25 GETTABLEKS                       R3 R3 K9 ["join"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Src"]
       31 GETTABLEKS                       R5 R5 K11 ["Actions"]
       33 GETTABLEKS                       R5 R5 K12 ["RecordTab"]
       35 GETTABLEKS                       R5 R5 K13 ["SetScreenSize"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K4 [require]
       40 GETTABLEKS                       R6 R0 K10 ["Src"]
       42 GETTABLEKS                       R6 R6 K11 ["Actions"]
       44 GETTABLEKS                       R6 R6 K12 ["RecordTab"]
       46 GETTABLEKS                       R6 R6 K14 ["SetEmulationDeviceId"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K4 [require]
       51 GETTABLEKS                       R7 R0 K10 ["Src"]
       53 GETTABLEKS                       R7 R7 K11 ["Actions"]
       55 GETTABLEKS                       R7 R7 K12 ["RecordTab"]
       57 GETTABLEKS                       R7 R7 K15 ["SetEmulationDeviceOrientation"]
       59 CALL                             R6 1 1
       60 DUPTABLE                         R7 K19 [{"screenSize", "emulationDeviceId", "emulationDeviceOrientation"}]
       61 GETIMPORT                        R8 K22 [Vector2.new]
       63 CALL                             R8 0 1
       64 SETTABLEKS                       R8 R7 K16 ["screenSize"]
       66 LOADK                            R8 K23 ["Unknown"]
       67 SETTABLEKS                       R8 R7 K17 ["emulationDeviceId"]
       69 LOADK                            R8 K23 ["Unknown"]
       70 SETTABLEKS                       R8 R7 K18 ["emulationDeviceOrientation"]
       72 GETTABLEKS                       R8 R1 K24 ["createReducer"]
       74 MOVE                             R9 R7
       75 DUPTABLE                         R10 K25 [{"SetScreenSize", "SetEmulationDeviceId", "SetEmulationDeviceOrientation"}]
       76 DUPCLOSURE                       R11 K26 [PROTO_0]
       77 CAPTURE                          VAL R3
       78 SETTABLEKS                       R11 R10 K13 ["SetScreenSize"]
       80 DUPCLOSURE                       R11 K27 [PROTO_1]
       81 CAPTURE                          VAL R3
       82 SETTABLEKS                       R11 R10 K14 ["SetEmulationDeviceId"]
       84 DUPCLOSURE                       R11 K28 [PROTO_2]
       85 CAPTURE                          VAL R3
       86 SETTABLEKS                       R11 R10 K15 ["SetEmulationDeviceOrientation"]
       88 CALL                             R8 2 -1
       89 RETURN                           R8 -1
