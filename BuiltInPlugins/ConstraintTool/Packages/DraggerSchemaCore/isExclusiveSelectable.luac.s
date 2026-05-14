PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+12]
        3 MOVE                             R3 R2
        4 JUMPIFNOT                        R3 ; [+9]
        5 LOADK                            R5 K0 ["Attachment"]
        6 NAMECALL                         R3 R2 K1 ["IsA"]
        8 CALL                             R3 2 1
        9 JUMPIFNOT                        R3 ; [+4]
       10 NAMECALL                         R4 R0 K2 ["shouldExtendSelection"]
       12 CALL                             R4 1 1
       13 NOT                              R3 R4
       14 RETURN                           R3 1
       15 LOADK                            R5 K0 ["Attachment"]
       16 NAMECALL                         R3 R2 K1 ["IsA"]
       18 CALL                             R3 2 1
       19 JUMPIFNOT                        R3 ; [+4]
       20 NAMECALL                         R4 R0 K2 ["shouldExtendSelection"]
       22 CALL                             R4 1 1
       23 NOT                              R3 R4
       24 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETTABLEKS                       R1 R1 K4 ["DraggerFramework"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["Flags"]
       17 GETTABLEKS                       R3 R3 K8 ["getFFlagDraggerImprovements"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K9 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 RETURN                           R3 1
