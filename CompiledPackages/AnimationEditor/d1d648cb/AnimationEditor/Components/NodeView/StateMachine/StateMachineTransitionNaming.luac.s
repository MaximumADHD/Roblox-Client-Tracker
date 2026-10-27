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
        4 GETUPVAL                         R9 0
        5 NAMECALL                         R7 R6 K1 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+18]
        9 GETUPVAL                         R8 1
       10 GETTABLE                         R7 R6 R8
       11 GETUPVAL                         R9 2
       12 GETTABLE                         R8 R6 R9
       13 JUMPIFEQKNIL                     R8 ; [+13]
       15 JUMPIFEQ                         R7 R1 ; [+3]
       17 JUMPIFNOTEQ                      R8 R1 ; [+9]
       19 GETUPVAL                         R9 3
       20 GETTABLEKS                       R9 R9 K2 ["transitionInstanceName"]
       22 MOVE                             R10 R7
       23 MOVE                             R11 R8
       24 CALL                             R9 2 1
       25 SETTABLEKS                       R9 R6 K3 ["Name"]
       27 FORGLOOP                         R2 2 ; [-24]
       29 RETURN                           R0 0

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
       14 NEWTABLE                         R2 2 0
       16 GETTABLEKS                       R3 R1 K8 ["STATE_MACHINE"]
       18 GETTABLEKS                       R3 R3 K9 ["TransitionClassName"]
       20 GETTABLEKS                       R4 R1 K8 ["STATE_MACHINE"]
       22 GETTABLEKS                       R4 R4 K10 ["TransitionProperties"]
       24 GETTABLEKS                       R4 R4 K11 ["From"]
       26 GETTABLEKS                       R5 R1 K8 ["STATE_MACHINE"]
       28 GETTABLEKS                       R5 R5 K10 ["TransitionProperties"]
       30 GETTABLEKS                       R5 R5 K12 ["To"]
       32 DUPCLOSURE                       R6 K13 [PROTO_0]
       33 SETTABLEKS                       R6 R2 K14 ["transitionInstanceName"]
       35 DUPCLOSURE                       R6 K15 [PROTO_1]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R6 R2 K16 ["refreshTransitionNamesForState"]
       42 RETURN                           R2 1
