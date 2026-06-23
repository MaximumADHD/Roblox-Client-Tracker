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
       18 DUPTABLE                         R4 K17 [{"Font", "TextSize", "TextColor"}]
       19 GETIMPORT                        R5 K20 [Enum.Font.SourceSansSemibold]
       21 SETTABLEKS                       R5 R4 K14 ["Font"]
       23 LOADN                            R5 22
       24 SETTABLEKS                       R5 R4 K15 ["TextSize"]
       26 GETTABLEKS                       R5 R1 K21 ["MainText"]
       28 SETTABLEKS                       R5 R4 K16 ["TextColor"]
       30 SETTABLEKS                       R4 R3 K12 ["SemiBold"]
       32 SETTABLEKS                       R3 R2 K9 ["FontStyle"]
       34 NEWTABLE                         R3 0 3
       36 LOADK                            R4 K22 ["jpg"]
       37 LOADK                            R5 K23 ["jpeg"]
       38 LOADK                            R6 K24 ["png"]
       39 SETLIST                          R3 R4 3 [1]
       41 SETTABLEKS                       R3 R2 K10 ["ImageTypes"]
       43 RETURN                           R2 1
