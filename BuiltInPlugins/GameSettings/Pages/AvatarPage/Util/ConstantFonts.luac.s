MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPTABLE                         R1 K2 [{"Type", "Size"}]
        4 GETIMPORT                        R2 K6 [Enum.Font.SourceSans]
        6 SETTABLEKS                       R2 R1 K0 ["Type"]
        8 LOADN                            R2 16
        9 SETTABLEKS                       R2 R1 K1 ["Size"]
       11 SETTABLEKS                       R1 R0 K7 ["BodyText"]
       13 DUPTABLE                         R1 K2 [{"Type", "Size"}]
       14 GETIMPORT                        R2 K9 [Enum.Font.SourceSansBold]
       16 SETTABLEKS                       R2 R1 K0 ["Type"]
       18 LOADN                            R2 22
       19 SETTABLEKS                       R2 R1 K1 ["Size"]
       21 SETTABLEKS                       R1 R0 K10 ["TitleText"]
       23 RETURN                           R0 1
