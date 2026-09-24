PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["logEvent"]
        2 MOVE                             R4 R1
        3 MOVE                             R5 R2
        4 CALL                             R3 2 0
        5 GETIMPORT                        R3 K3 [table.clone]
        7 MOVE                             R4 R1
        8 CALL                             R3 1 1
        9 NEWTABLE                         R4 0 1
       11 LOADK                            R5 K4 ["RobloxTelemetryCounter"]
       12 SETLIST                          R4 R5 1 [1]
       14 SETTABLEKS                       R4 R3 K5 ["backends"]
       16 GETTABLEKS                       R4 R0 K6 ["logCounter"]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"telemetry"}]
        1 SETTABLEKS                       R0 R2 K0 ["telemetry"]
        3 GETUPVAL                         R3 0
        4 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        6 GETIMPORT                        R1 K3 [setmetatable]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["telemetry"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K2 [{"tool"}]
        5 SETTABLEKS                       R1 R5 K1 ["tool"]
        7 CALL                             R2 3 0
        8 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["Name"]
        3 RETURN                           R1 1
        4 LOADNIL                          R1
        5 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["usingSlots"]
        2 JUMPIFNOT                        R1 ; [+48]
        3 DUPTABLE                         R1 K11 [{["autoMaterial"], ["baseMaterial"], ["isVariant"], ["replace"], ["secondaryBaseMaterial"], ["secondaryIsVariant"], ["secondarySlotIndex"], ["slotIndex"], ["tool"], [10] = True}]
        4 GETTABLEKS                       R2 R0 K1 ["autoMaterial"]
        6 SETTABLEKS                       R2 R1 K1 ["autoMaterial"]
        8 GETTABLEKS                       R3 R0 K2 ["baseMaterial"]
       10 JUMPIFNOT                        R3 ; [+3]
       11 GETTABLEKS                       R2 R3 K12 ["Name"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K2 ["baseMaterial"]
       17 GETTABLEKS                       R2 R0 K3 ["isVariant"]
       19 SETTABLEKS                       R2 R1 K3 ["isVariant"]
       21 GETTABLEKS                       R2 R0 K4 ["replace"]
       23 SETTABLEKS                       R2 R1 K4 ["replace"]
       25 GETTABLEKS                       R3 R0 K5 ["secondaryBaseMaterial"]
       27 JUMPIFNOT                        R3 ; [+3]
       28 GETTABLEKS                       R2 R3 K12 ["Name"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R2
       32 SETTABLEKS                       R2 R1 K5 ["secondaryBaseMaterial"]
       34 GETTABLEKS                       R2 R0 K6 ["secondaryIsVariant"]
       36 SETTABLEKS                       R2 R1 K6 ["secondaryIsVariant"]
       38 GETTABLEKS                       R2 R0 K7 ["secondarySlotIndex"]
       40 SETTABLEKS                       R2 R1 K7 ["secondarySlotIndex"]
       42 GETTABLEKS                       R2 R0 K8 ["slotIndex"]
       44 SETTABLEKS                       R2 R1 K8 ["slotIndex"]
       46 GETTABLEKS                       R2 R0 K9 ["tool"]
       48 SETTABLEKS                       R2 R1 K9 ["tool"]
       50 RETURN                           R1 1
       51 DUPTABLE                         R1 K16 [{["autoMaterial"], ["material"], ["replace"], ["secondaryMaterial"], ["tool"], [6] = False}]
       52 GETTABLEKS                       R2 R0 K1 ["autoMaterial"]
       54 SETTABLEKS                       R2 R1 K1 ["autoMaterial"]
       56 GETTABLEKS                       R3 R0 K13 ["material"]
       58 JUMPIFNOT                        R3 ; [+3]
       59 GETTABLEKS                       R2 R3 K12 ["Name"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R2
       63 SETTABLEKS                       R2 R1 K13 ["material"]
       65 GETTABLEKS                       R2 R0 K4 ["replace"]
       67 SETTABLEKS                       R2 R1 K4 ["replace"]
       69 GETTABLEKS                       R3 R0 K14 ["secondaryMaterial"]
       71 JUMPIFNOT                        R3 ; [+3]
       72 GETTABLEKS                       R2 R3 K12 ["Name"]
       74 JUMP                             ; [+1]
       75 LOADNIL                          R2
       76 SETTABLEKS                       R2 R1 K14 ["secondaryMaterial"]
       78 GETTABLEKS                       R2 R0 K9 ["tool"]
       80 SETTABLEKS                       R2 R1 K9 ["tool"]
       82 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["telemetry"]
        3 GETUPVAL                         R4 1
        4 GETUPVAL                         R5 2
        5 MOVE                             R6 R1
        6 CALL                             R5 1 1
        7 CALL                             R2 3 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["Draw"]
        3 JUMPIFEQ                         R1 R4 ; [+17]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["Fill"]
        8 JUMPIFEQ                         R1 R4 ; [+12]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["Paint"]
       13 JUMPIFEQ                         R1 R4 ; [+7]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K3 ["Sculpt"]
       18 JUMPIFEQ                         R1 R4 ; [+2]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R4 R0 K4 ["telemetry"]
       23 GETTABLEKS                       R4 R4 K5 ["logStat"]
       25 GETUPVAL                         R5 1
       26 DUPTABLE                         R6 K8 [{"tool", "usingSlots"}]
       27 SETTABLEKS                       R1 R6 K6 ["tool"]
       29 SETTABLEKS                       R2 R6 K7 ["usingSlots"]
       31 MOVE                             R7 R3
       32 CALL                             R4 3 0
       33 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["Telemetry"]
       22 GETTABLEKS                       R3 R3 K10 ["TerrainInvalidMaterialSlot"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K8 ["Parent"]
       31 GETTABLEKS                       R4 R4 K9 ["Telemetry"]
       33 GETTABLEKS                       R4 R4 K11 ["TerrainMaterialProperties"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETIMPORT                        R5 K1 [script]
       40 GETTABLEKS                       R5 R5 K8 ["Parent"]
       42 GETTABLEKS                       R5 R5 K9 ["Telemetry"]
       44 GETTABLEKS                       R5 R5 K12 ["TerrainToolPerformance"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K13 ["Src"]
       51 GETTABLEKS                       R6 R6 K14 ["Types"]
       53 CALL                             R5 1 1
       54 GETTABLEKS                       R6 R5 K15 ["Tool"]
       56 NEWTABLE                         R7 8 0
       58 SETTABLEKS                       R7 R7 K16 ["__index"]
       60 DUPCLOSURE                       R8 K17 [PROTO_0]
       61 DUPCLOSURE                       R9 K18 [PROTO_1]
       62 CAPTURE                          VAL R7
       63 SETTABLEKS                       R9 R7 K19 ["new"]
       65 DUPCLOSURE                       R9 K20 [PROTO_2]
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R2
       68 SETTABLEKS                       R9 R7 K21 ["reportInvalidMaterialSlot"]
       70 DUPCLOSURE                       R9 K22 [PROTO_3]
       71 DUPCLOSURE                       R10 K23 [PROTO_4]
       72 DUPCLOSURE                       R11 K24 [PROTO_5]
       73 CAPTURE                          VAL R8
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R10
       76 SETTABLEKS                       R11 R7 K25 ["reportMaterialProperties"]
       78 DUPCLOSURE                       R11 K26 [PROTO_6]
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R4
       81 SETTABLEKS                       R11 R7 K27 ["reportToolPerformance"]
       83 RETURN                           R7 1
