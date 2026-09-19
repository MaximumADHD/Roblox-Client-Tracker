MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPTABLE                         R1 K3 [{[1] = "Success", ["Failure"] = "Failure", ["Skipped"] = "Skipped"}]
        4 SETTABLEKS                       R1 R0 K4 ["TestStatus"]
        6 DUPTABLE                         R1 K11 [{["Describe"] = "Describe", ["It"] = "It", ["BeforeAll"] = "BeforeAll", ["AfterAll"] = "AfterAll", ["BeforeEach"] = "BeforeEach", ["AfterEach"] = "AfterEach"}]
        7 SETTABLEKS                       R1 R0 K12 ["NodeType"]
        9 DUPTABLE                         R1 K16 [{["None"] = "None", ["Skip"] = "Skip", ["Focus"] = "Focus"}]
       10 SETTABLEKS                       R1 R0 K17 ["NodeModifier"]
       12 RETURN                           R0 1
