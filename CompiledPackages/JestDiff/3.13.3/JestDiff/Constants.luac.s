MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"NO_DIFF_MESSAGE", "SIMILAR_MESSAGE"}]
        2 LOADK                            R1 K3 ["Compared values have no visual difference."]
        3 SETTABLEKS                       R1 R0 K0 ["NO_DIFF_MESSAGE"]
        5 LOADK                            R1 K4 ["Compared values serialize to the same structure.\nPrinting internal object structure without calling `toJSON` instead."]
        6 SETTABLEKS                       R1 R0 K1 ["SIMILAR_MESSAGE"]
        8 RETURN                           R0 1
