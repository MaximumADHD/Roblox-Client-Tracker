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
       13 JUMPIFNOT                        R10 ; [+2]
       14 GETTABLE                         R11 R3 R10
       15 JUMPIF                           R11 ; [+2]
       16 JUMPIFNOTEQKS                    R0 K0 ["high"] ; [+3]
       18 LOADB                            R11 1
       19 SETTABLE                         R11 R4 R9
       20 FORGLOOP                         R5 2 ; [-9]
       22 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 4
        3 DUPTABLE                         R1 K8 [{[1] = "none", ["colorTag"] = "bg-system-neutral", ["labelKey"] = "PresetNone", ["descriptionKey"] = "PresetNoneDescription"}]
        4 DUPTABLE                         R2 K13 [{[1] = "medium", ["colorTag"] = "bg-system-warning", ["labelKey"] = "PresetMedium", ["descriptionKey"] = "PresetMediumDescription"}]
        5 DUPTABLE                         R3 K18 [{[1] = "high", ["colorTag"] = "bg-system-alert", ["labelKey"] = "PresetHigh", ["descriptionKey"] = "PresetHighDescription"}]
        6 DUPTABLE                         R4 K22 [{[1] = "custom", ["colorTag"] = "bg-system-neutral", ["labelKey"] = "PresetCustom", ["descriptionKey"] = "PresetCustomDescription"}]
        7 SETLIST                          R0 R1 4 [1]
        9 DUPTABLE                         R1 K24 [{"none", "low", "medium", "high"}]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K1 ["none"]
       14 DUPTABLE                         R2 K27 [{["Low"] = True}]
       15 SETTABLEKS                       R2 R1 K23 ["low"]
       17 DUPTABLE                         R2 K29 [{["Low"] = True, ["Moderate"] = True}]
       18 SETTABLEKS                       R2 R1 K9 ["medium"]
       20 DUPTABLE                         R2 K32 [{["Low"] = True, ["Moderate"] = True, ["High"] = True, ["Unknown"] = True}]
       21 SETTABLEKS                       R2 R1 K14 ["high"]
       23 DUPCLOSURE                       R2 K33 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 DUPTABLE                         R3 K36 [{"PRESETS", "getScopesForPreset"}]
       26 SETTABLEKS                       R0 R3 K34 ["PRESETS"]
       28 SETTABLEKS                       R2 R3 K35 ["getScopesForPreset"]
       30 RETURN                           R3 1
