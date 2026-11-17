PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["CircuitRush"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["Classic"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["CosmicDust"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["ElectricLime"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["HyperPlum"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["InfernoBlast"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_7:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["Kids"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_8:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["KidsClassic"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["KineticEnergy"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["LavaGlow"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_11:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["NebulaDrift"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_12:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["NitroFrost"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_13:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["PixelPop"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_14:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["PolarFreeze"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_15:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["QuantumPulse"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_16:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["StarBurst"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_17:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R1 K3 [script]
        4 GETTABLEKS                       R1 R1 K4 ["SuperCharge"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Default"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K1 [require]
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R2 R2 K5 ["enums"]
       14 CALL                             R1 1 1
       15 GETIMPORT                        R2 K1 [require]
       17 GETIMPORT                        R3 K3 [script]
       19 GETTABLEKS                       R3 R3 K6 ["types"]
       21 CALL                             R2 1 1
       22 DUPTABLE                         R3 K24 [{"CircuitRush", "Classic", "CosmicDust", "Default", "ElectricLime", "HyperPlum", "InfernoBlast", "Kids", "KidsClassic", "KineticEnergy", "LavaGlow", "NebulaDrift", "NitroFrost", "PixelPop", "PolarFreeze", "QuantumPulse", "StarBurst", "SuperCharge"}]
       23 DUPCLOSURE                       R4 K25 [PROTO_0]
       24 SETTABLEKS                       R4 R3 K7 ["CircuitRush"]
       26 DUPCLOSURE                       R4 K26 [PROTO_1]
       27 SETTABLEKS                       R4 R3 K8 ["Classic"]
       29 DUPCLOSURE                       R4 K27 [PROTO_2]
       30 SETTABLEKS                       R4 R3 K9 ["CosmicDust"]
       32 DUPCLOSURE                       R4 K28 [PROTO_3]
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R4 R3 K4 ["Default"]
       36 DUPCLOSURE                       R4 K29 [PROTO_4]
       37 SETTABLEKS                       R4 R3 K10 ["ElectricLime"]
       39 DUPCLOSURE                       R4 K30 [PROTO_5]
       40 SETTABLEKS                       R4 R3 K11 ["HyperPlum"]
       42 DUPCLOSURE                       R4 K31 [PROTO_6]
       43 SETTABLEKS                       R4 R3 K12 ["InfernoBlast"]
       45 DUPCLOSURE                       R4 K32 [PROTO_7]
       46 SETTABLEKS                       R4 R3 K13 ["Kids"]
       48 DUPCLOSURE                       R4 K33 [PROTO_8]
       49 SETTABLEKS                       R4 R3 K14 ["KidsClassic"]
       51 DUPCLOSURE                       R4 K34 [PROTO_9]
       52 SETTABLEKS                       R4 R3 K15 ["KineticEnergy"]
       54 DUPCLOSURE                       R4 K35 [PROTO_10]
       55 SETTABLEKS                       R4 R3 K16 ["LavaGlow"]
       57 DUPCLOSURE                       R4 K36 [PROTO_11]
       58 SETTABLEKS                       R4 R3 K17 ["NebulaDrift"]
       60 DUPCLOSURE                       R4 K37 [PROTO_12]
       61 SETTABLEKS                       R4 R3 K18 ["NitroFrost"]
       63 DUPCLOSURE                       R4 K38 [PROTO_13]
       64 SETTABLEKS                       R4 R3 K19 ["PixelPop"]
       66 DUPCLOSURE                       R4 K39 [PROTO_14]
       67 SETTABLEKS                       R4 R3 K20 ["PolarFreeze"]
       69 DUPCLOSURE                       R4 K40 [PROTO_15]
       70 SETTABLEKS                       R4 R3 K21 ["QuantumPulse"]
       72 DUPCLOSURE                       R4 K41 [PROTO_16]
       73 SETTABLEKS                       R4 R3 K22 ["StarBurst"]
       75 DUPCLOSURE                       R4 K42 [PROTO_17]
       76 SETTABLEKS                       R4 R3 K23 ["SuperCharge"]
       78 DUPTABLE                         R4 K46 [{"ColorMode", "Theme", "themes"}]
       79 GETTABLEKS                       R5 R1 K43 ["ColorMode"]
       81 SETTABLEKS                       R5 R4 K43 ["ColorMode"]
       83 GETTABLEKS                       R5 R1 K44 ["Theme"]
       85 SETTABLEKS                       R5 R4 K44 ["Theme"]
       87 SETTABLEKS                       R3 R4 K45 ["themes"]
       89 RETURN                           R4 1
