PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+13]
        3 GETIMPORT                        R0 K1 [game]
        5 LOADK                            R2 K2 ["AnimGraphUIEnableExpressionNodes2"]
        6 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        8 CALL                             R0 2 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETIMPORT                        R0 K1 [game]
       12 LOADK                            R2 K4 ["AnimGraphExpressionValueNode"]
       13 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
       15 CALL                             R0 2 1
       16 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["getFFlagAnimGraphUIEnableValueNodes"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["AnimGraphUIEnableExpressionNodes2"]
       17 LOADB                            R5 0
       18 NAMECALL                         R2 R2 K11 ["DefineFastFlag"]
       20 CALL                             R2 3 0
       21 DUPCLOSURE                       R2 K12 [PROTO_0]
       22 CAPTURE                          VAL R1
       23 RETURN                           R2 1
