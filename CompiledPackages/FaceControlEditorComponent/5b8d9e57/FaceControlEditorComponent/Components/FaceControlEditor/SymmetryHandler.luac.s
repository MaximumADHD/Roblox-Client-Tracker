PROTO_0:
        0 GETIMPORT                        R1 K2 [table.find]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R0
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+1]
        6 RETURN                           R0 1
        7 GETIMPORT                        R1 K4 [string.find]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K5 ["^Left"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+7]
       13 GETIMPORT                        R1 K7 [string.gsub]
       15 MOVE                             R2 R0
       16 LOADK                            R3 K5 ["^Left"]
       17 LOADK                            R4 K8 ["Right"]
       18 CALL                             R1 3 1
       19 RETURN                           R1 1
       20 GETIMPORT                        R1 K4 [string.find]
       22 MOVE                             R2 R0
       23 LOADK                            R3 K9 ["^Right"]
       24 CALL                             R1 2 1
       25 JUMPIFNOT                        R1 ; [+7]
       26 GETIMPORT                        R1 K7 [string.gsub]
       28 MOVE                             R2 R0
       29 LOADK                            R3 K9 ["^Right"]
       30 LOADK                            R4 K10 ["Left"]
       31 CALL                             R1 3 1
       32 RETURN                           R1 1
       33 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 NEWTABLE                         R1 0 2
        5 LOADK                            R2 K0 ["EyesLookLeft"]
        6 LOADK                            R3 K1 ["EyesLookRight"]
        7 SETLIST                          R1 R2 2 [1]
        9 DUPCLOSURE                       R2 K2 [PROTO_0]
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R2 R0 K3 ["getSymmetryPair"]
       13 RETURN                           R0 1
