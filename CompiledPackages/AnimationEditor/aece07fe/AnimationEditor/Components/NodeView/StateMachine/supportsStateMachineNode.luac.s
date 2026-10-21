PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["STATE_MACHINE"]
        5 GETTABLEKS                       R1 R1 K4 ["TransitionClassName"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K8 [Enum.AnimationNodeType.StateMachineNode]
       10 GETTABLEKS                       R2 R0 K9 ["TransitionId"]
       12 GETTABLEKS                       R3 R0 K10 ["From"]
       14 GETTABLEKS                       R4 R0 K11 ["To"]
       16 GETTABLEKS                       R5 R0 K12 ["Priority"]
       18 RETURN                           R1 5

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [pcall]
       16 DUPCLOSURE                       R3 K10 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 CALL                             R2 1 1
       19 RETURN                           R2 1
