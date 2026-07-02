MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["StatusIndicatorVariant"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Utility"]
       18 GETTABLEKS                       R3 R3 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 4 0
       23 GETTABLEKS                       R4 R1 K10 ["Emphasis"]
       25 LOADB                            R5 1
       26 SETTABLE                         R5 R3 R4
       27 GETTABLEKS                       R4 R1 K11 ["Standard"]
       29 LOADB                            R5 1
       30 SETTABLE                         R5 R3 R4
       31 GETTABLEKS                       R4 R1 K12 ["Contrast_Experiment"]
       33 GETTABLEKS                       R6 R2 K13 ["FoundationStatusIndicatorVariantExperiment"]
       35 JUMPIFNOT                        R6 ; [+2]
       36 LOADB                            R5 1
       37 JUMP                             ; [+1]
       38 LOADB                            R5 0
       39 SETTABLE                         R5 R3 R4
       40 GETTABLEKS                       R4 R1 K14 ["Alert"]
       42 GETTABLEKS                       R6 R2 K13 ["FoundationStatusIndicatorVariantExperiment"]
       44 JUMPIFNOT                        R6 ; [+2]
       45 LOADB                            R5 1
       46 JUMP                             ; [+1]
       47 LOADB                            R5 0
       48 SETTABLE                         R5 R3 R4
       49 RETURN                           R3 1
