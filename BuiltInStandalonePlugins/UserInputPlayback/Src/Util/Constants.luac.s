MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"RecordingsFolderName"}]
        2 LOADK                            R1 K2 ["User Input Recordings"]
        3 SETTABLEKS                       R1 R0 K0 ["RecordingsFolderName"]
        5 RETURN                           R0 1
