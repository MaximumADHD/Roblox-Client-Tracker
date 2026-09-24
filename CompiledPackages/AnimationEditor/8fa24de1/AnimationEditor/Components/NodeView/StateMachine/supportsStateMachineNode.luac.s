PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["StateMachineTransitionDefinition"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K7 [Enum.AnimationNodeType.StateMachineNode]
        6 GETTABLEKS                       R2 R0 K8 ["TransitionId"]
        8 GETTABLEKS                       R3 R0 K9 ["From"]
       10 GETTABLEKS                       R4 R0 K10 ["To"]
       12 GETTABLEKS                       R5 R0 K11 ["Priority"]
       14 RETURN                           R1 5

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [pcall]
        3 DUPCLOSURE                       R1 K2 [PROTO_0]
        4 CALL                             R0 1 1
        5 RETURN                           R0 1
