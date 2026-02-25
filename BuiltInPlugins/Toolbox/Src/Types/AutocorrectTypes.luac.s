MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPTABLE                         R1 K3 [{"OriginalUserQuery", "CorrectedQuery", "ReversionToUserQuery"}]
        4 LOADN                            R2 0
        5 SETTABLEKS                       R2 R1 K0 ["OriginalUserQuery"]
        7 LOADN                            R2 1
        8 SETTABLEKS                       R2 R1 K1 ["CorrectedQuery"]
       10 LOADN                            R2 2
       11 SETTABLEKS                       R2 R1 K2 ["ReversionToUserQuery"]
       13 SETTABLEKS                       R1 R0 K4 ["QuerySource"]
       15 DUPTABLE                         R1 K8 [{"NoCorrection", "CorrectionAvailable", "CorrectionAccepted"}]
       16 LOADN                            R2 0
       17 SETTABLEKS                       R2 R1 K5 ["NoCorrection"]
       19 LOADN                            R2 1
       20 SETTABLEKS                       R2 R1 K6 ["CorrectionAvailable"]
       22 LOADN                            R2 2
       23 SETTABLEKS                       R2 R1 K7 ["CorrectionAccepted"]
       25 SETTABLEKS                       R1 R0 K9 ["AutocorrectResponseState"]
       27 RETURN                           R0 1
