MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPTABLE                         R1 K6 [{[1] = 0, ["CorrectedQuery"] = 1, ["ReversionToUserQuery"] = 2}]
        4 SETTABLEKS                       R1 R0 K7 ["QuerySource"]
        6 DUPTABLE                         R1 K11 [{["NoCorrection"] = 0, ["CorrectionAvailable"] = 1, ["CorrectionAccepted"] = 2}]
        7 SETTABLEKS                       R1 R0 K12 ["AutocorrectResponseState"]
        9 RETURN                           R0 1
