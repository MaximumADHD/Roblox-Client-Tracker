MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Styling"]
       13 GETTABLEKS                       R2 R2 K8 ["createStyleRule"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 LOADK                            R3 K9 [".Component-Checkbox"]
       18 NEWTABLE                         R4 0 0
       20 NEWTABLE                         R5 0 4
       22 MOVE                             R6 R1
       23 LOADK                            R7 K10 [">> ImageLabel"]
       24 DUPTABLE                         R8 K12 [{"Image"}]
       25 LOADK                            R9 K13 ["$CheckboxUncheckedImage"]
       26 SETTABLEKS                       R9 R8 K11 ["Image"]
       28 CALL                             R6 2 1
       29 MOVE                             R7 R1
       30 LOADK                            R8 K14 [".Checked >> ImageLabel"]
       31 DUPTABLE                         R9 K12 [{"Image"}]
       32 LOADK                            R10 K15 ["$CheckboxCheckedImage"]
       33 SETTABLEKS                       R10 R9 K11 ["Image"]
       35 CALL                             R7 2 1
       36 MOVE                             R8 R1
       37 LOADK                            R9 K16 [".Indeterminate >> ImageLabel"]
       38 DUPTABLE                         R10 K12 [{"Image"}]
       39 LOADK                            R11 K17 ["$CheckboxIndeterminateImage"]
       40 SETTABLEKS                       R11 R10 K11 ["Image"]
       42 CALL                             R8 2 1
       43 MOVE                             R9 R1
       44 LOADK                            R10 K18 [".Disabled >> ImageLabel"]
       45 DUPTABLE                         R11 K12 [{"Image"}]
       46 LOADK                            R12 K19 ["$CheckboxDisabledImage"]
       47 SETTABLEKS                       R12 R11 K11 ["Image"]
       49 CALL                             R9 2 -1
       50 SETLIST                          R5 R6 -1 [1]
       52 CALL                             R2 3 -1
       53 RETURN                           R2 -1
