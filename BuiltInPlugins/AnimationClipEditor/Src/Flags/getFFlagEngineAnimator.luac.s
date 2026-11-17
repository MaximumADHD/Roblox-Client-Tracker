PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETIMPORT                        R0 K1 [game]
        5 LOADK                            R2 K2 ["LiveAnimationUpdateSupport"]
        6 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        8 CALL                             R0 2 1
        9 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["SafeFlags"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createGetFFlag"]
       16 LOADK                            R3 K9 ["ACEEngineAnimator3"]
       17 CALL                             R2 1 1
       18 DUPCLOSURE                       R3 K10 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1
