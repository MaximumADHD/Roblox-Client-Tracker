MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"COMPRESSOR", "LIMITER"}]
        2 LOADK                            R1 K3 ["AudioCompressor"]
        3 SETTABLEKS                       R1 R0 K0 ["COMPRESSOR"]
        5 LOADK                            R1 K4 ["AudioLimiter"]
        6 SETTABLEKS                       R1 R0 K1 ["LIMITER"]
        8 RETURN                           R0 1
