PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+4]
        2 GETIMPORT                        R2 K3 [Enum.AnimationNodeType.StateMachineNode]
        4 JUMPIFEQ                         R0 R2 ; [+2]
        6 RETURN                           R1 1
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETTABLEKS                       R2 R1 K4 ["Group"]
       10 JUMPIFEQKNIL                     R2 ; [+2]
       12 RETURN                           R1 1
       13 DUPTABLE                         R2 K10 [{["Type"], ["Group"] = "State", ["Inputs"], ["Properties"], ["States"]}]
       14 GETIMPORT                        R3 K3 [Enum.AnimationNodeType.StateMachineNode]
       16 SETTABLEKS                       R3 R2 K5 ["Type"]
       18 NEWTABLE                         R3 0 1
       20 DUPTABLE                         R4 K17 [{["InputName"] = "Input", ["InputIndex"] = 0, ["InputFlags"] = 1}]
       21 SETLIST                          R3 R4 1 [1]
       23 SETTABLEKS                       R3 R2 K7 ["Inputs"]
       25 NEWTABLE                         R3 0 0
       27 SETTABLEKS                       R3 R2 K8 ["Properties"]
       29 NEWTABLE                         R3 0 0
       31 SETTABLEKS                       R3 R2 K9 ["States"]
       33 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["StateMachine"]
       15 GETTABLEKS                       R2 R2 K9 ["supportsStateMachineNode"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K10 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
