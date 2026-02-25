PROTO_0:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["Get"]
        4 CALL                             R1 1 1
        5 JUMP                             ; [+7]
        6 GETIMPORT                        R2 K2 [game]
        8 GETTABLEKS                       R1 R2 K3 ["Workspace"]
       10 NAMECALL                         R1 R1 K4 ["GetChildren"]
       12 CALL                             R1 1 1
       13 MOVE                             R2 R1
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 NAMECALL                         R7 R6 K5 ["GetDescendants"]
       19 CALL                             R7 1 3
       20 FORGPREP                         R7
       21 LOADK                            R14 K6 ["Part"]
       22 NAMECALL                         R12 R11 K7 ["IsA"]
       24 CALL                             R12 2 1
       25 JUMPIFNOT                        R12 ; [+10]
       26 GETTABLEKS                       R12 R11 K8 ["Name"]
       28 LOADK                            R14 K9 ["_Att"]
       29 NAMECALL                         R12 R12 K10 ["find"]
       31 CALL                             R12 2 1
       32 JUMPIFNOT                        R12 ; [+3]
       33 NAMECALL                         R12 R11 K11 ["Destroy"]
       35 CALL                             R12 1 0
       36 FORGLOOP                         R7 2 ; [-16]
       38 FORGLOOP                         R2 2 ; [-22]
       40 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
