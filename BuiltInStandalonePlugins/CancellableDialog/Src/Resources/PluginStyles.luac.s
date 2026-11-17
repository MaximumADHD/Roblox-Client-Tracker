MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CancellableDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 GETTABLEKS                       R3 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R3 K10 ["createStyleSheet"]
       22 NEWTABLE                         R4 0 2
       24 MOVE                             R5 R2
       25 LOADK                            R6 K11 ["TextLabel"]
       26 DUPTABLE                         R7 K20 [{["Font"], ["TextSize"] = "$NormalTextSize", ["TextColor3"] = "$TextContrast", ["BackgroundTransparency"] = "$Transparent", ["TextXAlignment"]}]
       27 GETIMPORT                        R8 K23 [Enum.Font.SourceSans]
       29 SETTABLEKS                       R8 R7 K12 ["Font"]
       31 GETIMPORT                        R8 K25 [Enum.TextXAlignment.Left]
       33 SETTABLEKS                       R8 R7 K19 ["TextXAlignment"]
       35 CALL                             R5 2 1
       36 MOVE                             R6 R2
       37 LOADK                            R7 K26 ["Frame"]
       38 DUPTABLE                         R8 K27 [{["BackgroundTransparency"] = "$Transparent"}]
       39 CALL                             R6 2 -1
       40 SETLIST                          R4 R5 -1 [1]
       42 DUPTABLE                         R5 K36 [{["NormalTextSize"] = 16, ["NotTransparent"] = 0, ["Transparent"] = 1, ["TextDisabledTransparency"] = 0.5}]
       43 MOVE                             R6 R3
       44 LOADK                            R7 K2 ["CancellableDialog"]
       45 MOVE                             R8 R4
       46 MOVE                             R9 R5
       47 CALL                             R6 3 -1
       48 RETURN                           R6 -1
