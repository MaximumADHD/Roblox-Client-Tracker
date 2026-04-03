MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["HttpWrapper"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K8 ["Api"]
       20 GETTABLEKS                       R4 R5 K9 ["CreatorInventoryApi"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K12 [table.freeze]
       25 DUPTABLE                         R5 K13 [{"CreatorInventoryApi"}]
       26 SETTABLEKS                       R3 R5 K9 ["CreatorInventoryApi"]
       28 CALL                             R4 1 -1
       29 RETURN                           R4 -1
