PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 LOADB                            R1 1
        7 SETTABLEKS                       R1 R0 K0 ["current"]
        9 GETIMPORT                        R0 K3 [task.spawn]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          UPVAL U2
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["useState"]
        6 LOADNIL                          R2
        7 CALL                             R1 1 2
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["useRef"]
       11 LOADB                            R4 0
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K2 ["useCallback"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R6 0 0
       22 CALL                             R4 2 1
       23 MOVE                             R5 R1
       24 MOVE                             R6 R4
       25 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["UGCValidation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Hooks"]
       27 GETTABLEKS                       R4 R4 K11 ["useAssertNeverChanges"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K12 [PROTO_2]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R1
       33 RETURN                           R4 1
