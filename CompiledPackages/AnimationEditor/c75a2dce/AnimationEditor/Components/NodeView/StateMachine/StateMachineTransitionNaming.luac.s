PROTO_0:
        0 LOADK                            R2 K0 ["%*_to_%*"]
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETTABLEKS                       R4 R0 K1 ["Name"]
        4 JUMP                             ; [+1]
        5 LOADK                            R4 K2 ["Any"]
        6 GETTABLEKS                       R5 R1 K1 ["Name"]
        8 NAMECALL                         R2 R2 K3 ["format"]
       10 CALL                             R2 3 1
       11 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["StateMachineTransitionDefinition"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+18]
        9 GETTABLEKS                       R7 R6 K3 ["From"]
       11 GETTABLEKS                       R8 R6 K4 ["To"]
       13 JUMPIFEQKNIL                     R8 ; [+13]
       15 JUMPIFEQ                         R7 R1 ; [+3]
       17 JUMPIFNOTEQ                      R8 R1 ; [+9]
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R9 R9 K5 ["transitionInstanceName"]
       22 MOVE                             R10 R7
       23 MOVE                             R11 R8
       24 CALL                             R9 2 1
       25 SETTABLEKS                       R9 R6 K6 ["Name"]
       27 FORGLOOP                         R2 2 ; [-24]
       29 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["transitionInstanceName"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["refreshTransitionNamesForState"]
       10 RETURN                           R0 1
