MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Utility"]
       11 GETTABLEKS                       R3 R4 K7 ["Plugin"]
       13 GETTABLEKS                       R2 R3 K8 ["StudioUri"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Enums"]
       20 GETTABLEKS                       R3 R4 K10 ["PopoverAlign"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Enums"]
       27 GETTABLEKS                       R4 R5 K11 ["PopoverSide"]
       29 CALL                             R3 1 1
       30 LOADNIL                          R4
       31 RETURN                           R4 1
