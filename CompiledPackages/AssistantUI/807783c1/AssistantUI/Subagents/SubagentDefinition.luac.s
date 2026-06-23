PROTO_0:
        0 SUBK                             R1 R0 K0 [10]
        1 LOADN                            R3 0
        2 JUMPIFNOTLT                      R3 R1 ; [+3]
        4 MOVE                             R2 R1
        5 RETURN                           R2 1
        6 LOADNIL                          R2
        7 RETURN                           R2 1

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
       14 DUPCLOSURE                       R1 K9 [PROTO_0]
       15 DUPTABLE                         R2 K12 [{"SubagentNames", "getToolBudget"}]
       16 SETTABLEKS                       R0 R2 K10 ["SubagentNames"]
       18 SETTABLEKS                       R1 R2 K11 ["getToolBudget"]
       20 RETURN                           R2 1
