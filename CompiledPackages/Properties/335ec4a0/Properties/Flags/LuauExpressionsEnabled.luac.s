MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["LuauExpressionServiceEnabled"]
       17 NAMECALL                         R2 R2 K11 ["GetEngineFeature"]
       19 CALL                             R2 2 1
       20 JUMPIFNOT                        R2 ; [+6]
       21 GETTABLEKS                       R2 R1 K12 ["Utility"]
       23 GETTABLEKS                       R2 R2 K13 ["Flags"]
       25 GETTABLEKS                       R2 R2 K14 ["FoundationNumberInputOnTextChanged"]
       27 RETURN                           R2 1
