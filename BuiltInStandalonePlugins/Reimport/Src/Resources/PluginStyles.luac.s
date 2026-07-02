MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
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
       22 NEWTABLE                         R4 0 1
       24 MOVE                             R5 R2
       25 LOADK                            R6 K11 [".green-text"]
       26 DUPTABLE                         R7 K14 [{["TextColor3"] = "$FoundationGreen"}]
       27 CALL                             R5 2 -1
       28 SETLIST                          R4 R5 -1 [1]
       30 DUPTABLE                         R5 K16 [{"FoundationGreen"}]
       31 GETIMPORT                        R6 K19 [Color3.fromHex]
       33 LOADK                            R7 K20 ["#53D253"]
       34 CALL                             R6 1 1
       35 SETTABLEKS                       R6 R5 K15 ["FoundationGreen"]
       37 MOVE                             R6 R3
       38 LOADK                            R7 K21 ["Reimport"]
       39 MOVE                             R8 R4
       40 MOVE                             R9 R5
       41 CALL                             R6 3 -1
       42 RETURN                           R6 -1
