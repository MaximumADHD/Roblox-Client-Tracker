PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIF                           R3 ; [+3]
        3 NEWTABLE                         R4 0 0
        5 RETURN                           R4 1
        6 NEWTABLE                         R4 0 0
        8 MOVE                             R5 R2
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 GETTABLE                         R10 R1 R9
       13 JUMPIFNOT                        R10 ; [+5]
       14 GETTABLE                         R11 R3 R10
       15 JUMPIFNOT                        R11 ; [+3]
       16 LOADB                            R11 1
       17 SETTABLE                         R11 R4 R9
       18 JUMP                             ; [+4]
       19 JUMPIFNOTEQKS                    R0 K0 ["high"] ; [+3]
       21 LOADB                            R11 1
       22 SETTABLE                         R11 R4 R9
       23 FORGLOOP                         R5 2 ; [-12]
       25 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 4
        3 DUPTABLE                         R1 K4 [{"id", "colorTag", "labelKey", "descriptionKey"}]
        4 LOADK                            R2 K5 ["none"]
        5 SETTABLEKS                       R2 R1 K0 ["id"]
        7 LOADK                            R2 K6 ["bg-system-neutral"]
        8 SETTABLEKS                       R2 R1 K1 ["colorTag"]
       10 LOADK                            R2 K7 ["PresetNone"]
       11 SETTABLEKS                       R2 R1 K2 ["labelKey"]
       13 LOADK                            R2 K8 ["PresetNoneDescription"]
       14 SETTABLEKS                       R2 R1 K3 ["descriptionKey"]
       16 DUPTABLE                         R2 K4 [{"id", "colorTag", "labelKey", "descriptionKey"}]
       17 LOADK                            R3 K9 ["medium"]
       18 SETTABLEKS                       R3 R2 K0 ["id"]
       20 LOADK                            R3 K10 ["bg-system-warning"]
       21 SETTABLEKS                       R3 R2 K1 ["colorTag"]
       23 LOADK                            R3 K11 ["PresetMedium"]
       24 SETTABLEKS                       R3 R2 K2 ["labelKey"]
       26 LOADK                            R3 K12 ["PresetMediumDescription"]
       27 SETTABLEKS                       R3 R2 K3 ["descriptionKey"]
       29 DUPTABLE                         R3 K4 [{"id", "colorTag", "labelKey", "descriptionKey"}]
       30 LOADK                            R4 K13 ["high"]
       31 SETTABLEKS                       R4 R3 K0 ["id"]
       33 LOADK                            R4 K14 ["bg-system-alert"]
       34 SETTABLEKS                       R4 R3 K1 ["colorTag"]
       36 LOADK                            R4 K15 ["PresetHigh"]
       37 SETTABLEKS                       R4 R3 K2 ["labelKey"]
       39 LOADK                            R4 K16 ["PresetHighDescription"]
       40 SETTABLEKS                       R4 R3 K3 ["descriptionKey"]
       42 DUPTABLE                         R4 K4 [{"id", "colorTag", "labelKey", "descriptionKey"}]
       43 LOADK                            R5 K17 ["custom"]
       44 SETTABLEKS                       R5 R4 K0 ["id"]
       46 LOADK                            R5 K6 ["bg-system-neutral"]
       47 SETTABLEKS                       R5 R4 K1 ["colorTag"]
       49 LOADK                            R5 K18 ["PresetCustom"]
       50 SETTABLEKS                       R5 R4 K2 ["labelKey"]
       52 LOADK                            R5 K19 ["PresetCustomDescription"]
       53 SETTABLEKS                       R5 R4 K3 ["descriptionKey"]
       55 SETLIST                          R0 R1 4 [1]
       57 DUPTABLE                         R1 K21 [{"none", "low", "medium", "high"}]
       58 NEWTABLE                         R2 0 0
       60 SETTABLEKS                       R2 R1 K5 ["none"]
       62 DUPTABLE                         R2 K23 [{"Low"}]
       63 LOADB                            R3 1
       64 SETTABLEKS                       R3 R2 K22 ["Low"]
       66 SETTABLEKS                       R2 R1 K20 ["low"]
       68 DUPTABLE                         R2 K25 [{"Low", "Moderate"}]
       69 LOADB                            R3 1
       70 SETTABLEKS                       R3 R2 K22 ["Low"]
       72 LOADB                            R3 1
       73 SETTABLEKS                       R3 R2 K24 ["Moderate"]
       75 SETTABLEKS                       R2 R1 K9 ["medium"]
       77 DUPTABLE                         R2 K28 [{"Low", "Moderate", "High", "Unknown"}]
       78 LOADB                            R3 1
       79 SETTABLEKS                       R3 R2 K22 ["Low"]
       81 LOADB                            R3 1
       82 SETTABLEKS                       R3 R2 K24 ["Moderate"]
       84 LOADB                            R3 1
       85 SETTABLEKS                       R3 R2 K26 ["High"]
       87 LOADB                            R3 1
       88 SETTABLEKS                       R3 R2 K27 ["Unknown"]
       90 SETTABLEKS                       R2 R1 K13 ["high"]
       92 DUPCLOSURE                       R2 K29 [PROTO_0]
       93 CAPTURE                          VAL R1
       94 DUPTABLE                         R3 K32 [{"PRESETS", "getScopesForPreset"}]
       95 SETTABLEKS                       R0 R3 K30 ["PRESETS"]
       97 SETTABLEKS                       R2 R3 K31 ["getScopesForPreset"]
       99 RETURN                           R3 1
