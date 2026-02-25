PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["data"]
        3 GETTABLEKS                       R3 R4 K1 ["className"]
        5 NAMECALL                         R1 R0 K2 ["IsA"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+41]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K0 ["data"]
       12 GETTABLEKS                       R1 R2 K3 ["properties"]
       14 JUMPIFNOT                        R1 ; [+14]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K0 ["data"]
       18 GETTABLEKS                       R1 R4 K3 ["properties"]
       20 LOADNIL                          R2
       21 LOADNIL                          R3
       22 FORGPREP                         R1
       23 GETTABLE                         R6 R0 R4
       24 JUMPIFEQ                         R6 R5 ; [+2]
       26 RETURN                           R0 0
       27 FORGLOOP                         R1 2 ; [-5]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R2 R3 K0 ["data"]
       32 GETTABLEKS                       R1 R2 K4 ["instanceId"]
       34 JUMPIFNOT                        R1 ; [+11]
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R2 R3 K5 ["tutorial"]
       38 GETTABLEKS                       R1 R2 K6 ["instances"]
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R3 R4 K0 ["data"]
       43 GETTABLEKS                       R2 R3 K4 ["instanceId"]
       45 SETTABLE                         R0 R1 R2
       46 GETUPVAL                         R1 0
       47 NAMECALL                         R1 R1 K7 ["complete"]
       49 CALL                             R1 1 0
       50 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["tutorial"]
        2 GETTABLEKS                       R1 R2 K1 ["dataModel"]
        4 LOADK                            R4 K2 ["Workspace"]
        5 NAMECALL                         R2 R1 K3 ["GetService"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R2 K4 ["ChildAdded"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R0
       12 NAMECALL                         R3 R3 K5 ["Connect"]
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R0 K6 ["connection"]
       17 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["connection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["TutorialStep"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K6 ["extend"]
       12 LOADK                            R2 K7 ["Insert"]
       13 CALL                             R1 1 1
       14 LOADB                            R2 1
       15 SETTABLEKS                       R2 R1 K8 ["showComplete"]
       17 DUPCLOSURE                       R2 K9 [PROTO_1]
       18 SETTABLEKS                       R2 R1 K10 ["bind"]
       20 DUPCLOSURE                       R2 K11 [PROTO_2]
       21 SETTABLEKS                       R2 R1 K12 ["unbind"]
       23 RETURN                           R1 1
