MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{"AccessoryAndBodyToolShared", "getDescendants", "isProductionEnvironment", "runAvatarToolsSharedTests", "TestRunner"}]
        2 GETIMPORT                        R1 K7 [require]
        4 GETIMPORT                        R2 K9 [script]
        6 GETTABLEKS                       R2 R2 K0 ["AccessoryAndBodyToolShared"]
        8 CALL                             R1 1 1
        9 SETTABLEKS                       R1 R0 K0 ["AccessoryAndBodyToolShared"]
       11 GETIMPORT                        R1 K7 [require]
       13 GETIMPORT                        R2 K9 [script]
       15 GETTABLEKS                       R2 R2 K1 ["getDescendants"]
       17 CALL                             R1 1 1
       18 SETTABLEKS                       R1 R0 K1 ["getDescendants"]
       20 GETIMPORT                        R1 K7 [require]
       22 GETIMPORT                        R2 K9 [script]
       24 GETTABLEKS                       R2 R2 K2 ["isProductionEnvironment"]
       26 CALL                             R1 1 1
       27 SETTABLEKS                       R1 R0 K2 ["isProductionEnvironment"]
       29 GETIMPORT                        R1 K7 [require]
       31 GETIMPORT                        R2 K9 [script]
       33 GETTABLEKS                       R2 R2 K3 ["runAvatarToolsSharedTests"]
       35 CALL                             R1 1 1
       36 SETTABLEKS                       R1 R0 K3 ["runAvatarToolsSharedTests"]
       38 GETIMPORT                        R1 K7 [require]
       40 GETIMPORT                        R2 K9 [script]
       42 GETTABLEKS                       R2 R2 K4 ["TestRunner"]
       44 CALL                             R1 1 1
       45 SETTABLEKS                       R1 R0 K4 ["TestRunner"]
       47 RETURN                           R0 1
