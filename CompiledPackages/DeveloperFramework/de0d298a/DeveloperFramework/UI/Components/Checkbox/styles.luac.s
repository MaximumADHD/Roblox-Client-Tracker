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
       24 DUPTABLE                         R8 K13 [{["Image"] = "$CheckboxUncheckedImage"}]
       25 CALL                             R6 2 1
       26 MOVE                             R7 R1
       27 LOADK                            R8 K14 [".Checked >> ImageLabel"]
       28 DUPTABLE                         R9 K16 [{["Image"] = "$CheckboxCheckedImage"}]
       29 CALL                             R7 2 1
       30 MOVE                             R8 R1
       31 LOADK                            R9 K17 [".Indeterminate >> ImageLabel"]
       32 DUPTABLE                         R10 K19 [{["Image"] = "$CheckboxIndeterminateImage"}]
       33 CALL                             R8 2 1
       34 MOVE                             R9 R1
       35 LOADK                            R10 K20 [".Disabled >> ImageLabel"]
       36 DUPTABLE                         R11 K22 [{["Image"] = "$CheckboxDisabledImage"}]
       37 CALL                             R9 2 -1
       38 SETLIST                          R5 R6 -1 [1]
       40 CALL                             R2 3 -1
       41 RETURN                           R2 -1
