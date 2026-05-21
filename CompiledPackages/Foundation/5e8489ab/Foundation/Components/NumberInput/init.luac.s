MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Utility"]
       11 GETTABLEKS                       R1 R1 K6 ["Flags"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R2 K3 [script]
       18 GETTABLEKS                       R2 R2 K7 ["NumberInput"]
       20 CALL                             R1 1 1
       21 GETTABLEKS                       R3 R0 K8 ["FoundationNumberInputTextFix"]
       23 JUMPIFNOT                        R3 ; [+2]
       24 MOVE                             R2 R1
       25 RETURN                           R2 1
       26 GETIMPORT                        R2 K1 [require]
       28 GETIMPORT                        R3 K3 [script]
       30 GETTABLEKS                       R3 R3 K9 ["NumberInputTextState"]
       32 CALL                             R2 1 1
       33 RETURN                           R2 1
