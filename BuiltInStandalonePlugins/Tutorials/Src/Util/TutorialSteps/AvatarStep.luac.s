PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["data"]
        3 GETTABLEKS                       R1 R2 K1 ["state"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+5]
        7 GETUPVAL                         R1 0
        8 NAMECALL                         R1 R1 K2 ["complete"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ChangeHumanoidState"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R1 K1 ["OnInvoke"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K2 ["connection"]
        9 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["connection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K2 ["Parent"]
       13 GETIMPORT                        R2 K4 [require]
       15 GETIMPORT                        R5 K1 [script]
       17 GETTABLEKS                       R4 R5 K2 ["Parent"]
       19 GETTABLEKS                       R3 R4 K5 ["TutorialStep"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R2 K6 ["extend"]
       24 LOADK                            R4 K7 ["Avatar"]
       25 CALL                             R3 1 1
       26 LOADB                            R4 1
       27 SETTABLEKS                       R4 R3 K8 ["showComplete"]
       29 DUPCLOSURE                       R4 K9 [PROTO_1]
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R4 R3 K10 ["bind"]
       33 DUPCLOSURE                       R4 K11 [PROTO_2]
       34 SETTABLEKS                       R4 R3 K12 ["unbind"]
       36 RETURN                           R3 1
