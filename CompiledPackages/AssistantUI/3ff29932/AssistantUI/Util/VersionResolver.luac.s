PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 JUMPIF                           R0 ; [+1]
        4 LOADK                            R0 K0 ["<unknown>"]
        5 RETURN                           R0 1

PROTO_1:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R1 R0 ; [+2]
        3 RETURN                           R0 0
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["VersionMismatchChanged"]
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K1 ["Fire"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["AssistantUI"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Version"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K5 [require]
       16 GETTABLEKS                       R4 R1 K7 ["Parent"]
       18 GETTABLEKS                       R4 R4 K8 ["Signal"]
       20 CALL                             R3 1 1
       21 LOADNIL                          R4
       22 LOADB                            R5 0
       23 GETTABLEKS                       R6 R3 K9 ["new"]
       25 CALL                             R6 0 1
       26 SETTABLEKS                       R6 R0 K10 ["VersionMismatchChanged"]
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          REF R4
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R6 R0 K11 ["getVersion"]
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          REF R4
       35 SETTABLEKS                       R6 R0 K12 ["setVersionOverride"]
       37 NEWCLOSURE                       R6 P2
       38 CAPTURE                          REF R5
       39 SETTABLEKS                       R6 R0 K13 ["getVersionMismatch"]
       41 NEWCLOSURE                       R6 P3
       42 CAPTURE                          REF R5
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R6 R0 K14 ["setVersionMismatch"]
       46 CLOSEUPVALS                      R4
       47 RETURN                           R0 1
