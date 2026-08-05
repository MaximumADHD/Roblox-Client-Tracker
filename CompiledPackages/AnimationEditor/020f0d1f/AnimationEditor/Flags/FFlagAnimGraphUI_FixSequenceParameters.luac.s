MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AnimGraphUI_FixSequenceParameters"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 1
        8 JUMPIFNOT                        R0 ; [+10]
        9 GETIMPORT                        R0 K5 [require]
       11 GETIMPORT                        R1 K7 [script]
       13 GETTABLEKS                       R1 R1 K8 ["Parent"]
       15 GETTABLEKS                       R1 R1 K9 ["getFFlagAnimGraphUI_FixInputPanelParameters"]
       17 CALL                             R0 1 1
       18 CALL                             R0 0 1
       19 RETURN                           R0 1
