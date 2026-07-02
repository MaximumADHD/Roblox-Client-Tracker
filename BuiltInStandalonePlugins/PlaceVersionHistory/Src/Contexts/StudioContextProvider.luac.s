PROTO_0:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["PlaceVersionHistory"]
        2 NAMECALL                         R2 R2 K1 ["GetPluginComponent"]
        4 CALL                             R2 2 1
        5 JUMPIF                           R2 ; [+3]
        6 MOVE                             R3 R1
        7 CALL                             R3 0 -1
        8 RETURN                           R3 -1
        9 DUPTABLE                         R3 K5 [{"PlaceId", "UniverseId", "Version"}]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K6 ["placeId"]
       13 SETTABLEKS                       R4 R3 K2 ["PlaceId"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K7 ["universeId"]
       18 SETTABLEKS                       R4 R3 K3 ["UniverseId"]
       20 GETUPVAL                         R4 2
       21 SETTABLEKS                       R4 R3 K4 ["Version"]
       23 MOVE                             R4 R0
       24 MOVE                             R7 R3
       25 NAMECALL                         R5 R2 K8 ["OpenPlaceAsync"]
       27 CALL                             R5 2 -1
       28 CALL                             R4 -1 -1
       29 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 DUPTABLE                         R6 K4 [{[1] = True, ["targetPlaceId"], ["targetPlaceVersion"]}]
        3 GETTABLEKS                       R7 R1 K5 ["placeId"]
        5 SETTABLEKS                       R7 R6 K2 ["targetPlaceId"]
        7 SETTABLEKS                       R0 R6 K3 ["targetPlaceVersion"]
        9 NAMECALL                         R3 R3 K6 ["logRobloxTelemetryEvent"]
       11 CALL                             R3 3 0
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K7 ["new"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          VAL R2
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R0
       19 CALL                             R3 1 -1
       20 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K2 ["useContext"]
       10 GETUPVAL                         R3 2
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["createElement"]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K4 ["Provider"]
       18 DUPTABLE                         R5 K6 [{"value"}]
       19 DUPTABLE                         R6 K8 [{"openPlace"}]
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R7 R6 K7 ["openPlace"]
       26 SETTABLEKS                       R6 R5 K5 ["value"]
       28 GETTABLEKS                       R6 R0 K9 ["children"]
       30 CALL                             R3 3 -1
       31 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Promise"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["TelemetryProtocol"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       37 GETTABLEKS                       R5 R5 K12 ["Plugin"]
       39 GETTABLEKS                       R6 R0 K13 ["Src"]
       41 GETTABLEKS                       R6 R6 K14 ["Contexts"]
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R6 K15 ["SettingContext"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R6 K16 ["StudioContext"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R9 R4 K17 ["new"]
       55 CALL                             R9 0 1
       56 GETTABLEKS                       R10 R0 K13 ["Src"]
       58 GETTABLEKS                       R10 R10 K18 ["Events"]
       60 GETIMPORT                        R11 K5 [require]
       62 GETTABLEKS                       R12 R10 K19 ["OpenLocalCopyEvent"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K5 [require]
       67 GETTABLEKS                       R13 R0 K13 ["Src"]
       69 GETTABLEKS                       R13 R13 K20 ["Types"]
       71 CALL                             R12 1 1
       72 DUPCLOSURE                       R13 K21 [PROTO_1]
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R2
       76 DUPCLOSURE                       R14 K22 [PROTO_3]
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R13
       82 RETURN                           R14 1
