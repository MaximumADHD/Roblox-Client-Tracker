MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"Explore", "Playtest", "ScreenCapture", "UnitTest"}]
        2 LOADK                            R1 K5 ["explore"]
        3 SETTABLEKS                       R1 R0 K0 ["Explore"]
        5 LOADK                            R1 K6 ["playtest"]
        6 SETTABLEKS                       R1 R0 K1 ["Playtest"]
        8 LOADK                            R1 K7 ["screen_capture"]
        9 SETTABLEKS                       R1 R0 K2 ["ScreenCapture"]
       11 LOADK                            R1 K8 ["unit_test"]
       12 SETTABLEKS                       R1 R0 K3 ["UnitTest"]
       14 DUPTABLE                         R1 K10 [{"SubagentNames"}]
       15 SETTABLEKS                       R0 R1 K9 ["SubagentNames"]
       17 RETURN                           R1 1
