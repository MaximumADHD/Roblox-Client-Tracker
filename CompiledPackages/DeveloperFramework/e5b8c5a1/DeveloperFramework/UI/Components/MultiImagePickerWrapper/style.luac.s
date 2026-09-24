MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K11 [{"FontStyle", "ImageTypes"}]
       17 DUPTABLE                         R3 K13 [{"SemiBold"}]
       18 DUPTABLE                         R4 K18 [{["Font"], ["TextSize"] = 22, ["TextColor"]}]
       19 GETIMPORT                        R5 K21 [Enum.Font.SourceSansSemibold]
       21 SETTABLEKS                       R5 R4 K14 ["Font"]
       23 GETTABLEKS                       R5 R1 K22 ["MainText"]
       25 SETTABLEKS                       R5 R4 K17 ["TextColor"]
       27 SETTABLEKS                       R4 R3 K12 ["SemiBold"]
       29 SETTABLEKS                       R3 R2 K9 ["FontStyle"]
       31 NEWTABLE                         R3 0 3
       33 LOADK                            R4 K23 ["jpg"]
       34 LOADK                            R5 K24 ["jpeg"]
       35 LOADK                            R6 K25 ["png"]
       36 SETLIST                          R3 R4 3 [1]
       38 SETTABLEKS                       R3 R2 K10 ["ImageTypes"]
       40 RETURN                           R2 1
