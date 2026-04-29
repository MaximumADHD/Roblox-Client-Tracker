MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Utility"]
       11 GETTABLEKS                       R2 R3 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R3 R4 K8 ["Popover"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R4 R5 K9 ["Anchor"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R5 R6 K10 ["Content"]
       34 CALL                             R4 1 1
       35 DUPTABLE                         R5 K12 [{"Root", "Anchor", "Content"}]
       36 SETTABLEKS                       R2 R5 K11 ["Root"]
       38 SETTABLEKS                       R3 R5 K9 ["Anchor"]
       40 GETTABLEKS                       R7 R1 K13 ["FoundationPopoverPluginSupport"]
       42 JUMPIFNOT                        R7 ; [+8]
       43 GETIMPORT                        R6 K5 [require]
       45 GETIMPORT                        R8 K1 [script]
       47 GETTABLEKS                       R7 R8 K14 ["PopoverContentProxy"]
       49 CALL                             R6 1 1
       50 JUMP                             ; [+1]
       51 MOVE                             R6 R4
       52 SETTABLEKS                       R6 R5 K10 ["Content"]
       54 RETURN                           R5 1
