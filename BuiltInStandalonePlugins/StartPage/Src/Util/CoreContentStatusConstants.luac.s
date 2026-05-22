MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"NEEDS_ATTENTION_AGE_THRESHOLD", "AGE_BRACKET_9"}]
        2 LOADN                            R1 16
        3 SETTABLEKS                       R1 R0 K0 ["NEEDS_ATTENTION_AGE_THRESHOLD"]
        5 LOADN                            R1 9
        6 SETTABLEKS                       R1 R0 K1 ["AGE_BRACKET_9"]
        8 RETURN                           R0 1
