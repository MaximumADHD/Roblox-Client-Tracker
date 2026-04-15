MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 NEWTABLE                         R1 0 4
        5 LOADK                            R2 K0 ["INPUT_DATA_ERROR"]
        6 LOADK                            R3 K1 ["MEASURE_ERROR"]
        7 LOADK                            R4 K2 ["SUMMARY_ERROR"]
        8 LOADK                            R5 K3 ["VISUALIZATION_ERROR"]
        9 SETLIST                          R1 R2 4 [1]
       11 SETTABLEKS                       R1 R0 K4 ["AQSInternalErrorEnum"]
       13 RETURN                           R0 1
