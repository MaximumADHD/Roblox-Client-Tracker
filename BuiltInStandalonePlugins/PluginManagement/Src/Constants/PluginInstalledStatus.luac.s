MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K7 [{"UNKNOWN", "PLUGIN_INSTALLED_SUCCESSFULLY", "HTTP_ERROR", "PLUGIN_NOT_OWNED", "PLUGIN_DETAILS_UNAVAILABLE", "PLUGIN_NOT_INSTALLED", "PLUGIN_AlREADY_INSTALLED"}]
        2 LOADN                            R1 255
        3 SETTABLEKS                       R1 R0 K0 ["UNKNOWN"]
        5 LOADN                            R1 0
        6 SETTABLEKS                       R1 R0 K1 ["PLUGIN_INSTALLED_SUCCESSFULLY"]
        8 LOADN                            R1 1
        9 SETTABLEKS                       R1 R0 K2 ["HTTP_ERROR"]
       11 LOADN                            R1 2
       12 SETTABLEKS                       R1 R0 K3 ["PLUGIN_NOT_OWNED"]
       14 LOADN                            R1 3
       15 SETTABLEKS                       R1 R0 K4 ["PLUGIN_DETAILS_UNAVAILABLE"]
       17 LOADN                            R1 4
       18 SETTABLEKS                       R1 R0 K5 ["PLUGIN_NOT_INSTALLED"]
       20 LOADN                            R1 5
       21 SETTABLEKS                       R1 R0 K6 ["PLUGIN_AlREADY_INSTALLED"]
       23 RETURN                           R0 1
