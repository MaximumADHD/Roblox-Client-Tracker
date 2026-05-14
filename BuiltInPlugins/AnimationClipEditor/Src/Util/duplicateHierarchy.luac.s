PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
        7 RETURN                           R0 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["Dictionary"]
       11 GETTABLEKS                       R2 R2 K4 ["join"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K6 [table.remove]
       17 MOVE                             R4 R1
       18 LOADN                            R5 1
       19 CALL                             R3 2 1
       20 JUMPIFNOT                        R3 ; [+5]
       21 GETUPVAL                         R4 1
       22 GETTABLE                         R5 R2 R3
       23 MOVE                             R6 R1
       24 CALL                             R4 2 1
       25 SETTABLE                         R4 R2 R3
       26 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 RETURN                           R2 1
