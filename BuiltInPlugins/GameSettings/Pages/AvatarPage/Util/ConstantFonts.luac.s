MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPTABLE                         R1 K3 [{[1], ["Size"] = 16}]
        4 GETIMPORT                        R2 K7 [Enum.Font.SourceSans]
        6 SETTABLEKS                       R2 R1 K0 ["Type"]
        8 SETTABLEKS                       R1 R0 K8 ["BodyText"]
       10 DUPTABLE                         R1 K10 [{[1], ["Size"] = 22}]
       11 GETIMPORT                        R2 K12 [Enum.Font.SourceSansBold]
       13 SETTABLEKS                       R2 R1 K0 ["Type"]
       15 SETTABLEKS                       R1 R0 K13 ["TitleText"]
       17 RETURN                           R0 1
