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
        1 DUPTABLE                         R0 K8 [{[1] = "explore", ["Playtest"] = "playtest", ["ScreenCapture"] = "screen_capture", ["UnitTest"] = "unit_test"}]
        2 DUPCLOSURE                       R1 K9 [PROTO_0]
        3 DUPTABLE                         R2 K12 [{"SubagentNames", "getToolBudget"}]
        4 SETTABLEKS                       R0 R2 K10 ["SubagentNames"]
        6 SETTABLEKS                       R1 R2 K11 ["getToolBudget"]
        8 RETURN                           R2 1
