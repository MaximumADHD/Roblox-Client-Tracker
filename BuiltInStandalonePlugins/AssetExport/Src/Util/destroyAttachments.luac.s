PROTO_0:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["Get"]
        4 CALL                             R1 1 1
        5 JUMP                             ; [+8]
        6 NEWTABLE                         R1 0 1
        8 GETIMPORT                        R3 K2 [game]
       10 GETTABLEKS                       R2 R3 K3 ["Workspace"]
       12 SETLIST                          R1 R2 1 [1]
       14 MOVE                             R2 R1
       15 LOADNIL                          R3
       16 LOADNIL                          R4
       17 FORGPREP                         R2
       18 NAMECALL                         R7 R6 K4 ["GetDescendants"]
       20 CALL                             R7 1 3
       21 FORGPREP                         R7
       22 LOADK                            R14 K5 ["AttachmentFolder"]
       23 NAMECALL                         R12 R11 K6 ["GetAttribute"]
       25 CALL                             R12 2 1
       26 JUMPIFNOT                        R12 ; [+3]
       27 NAMECALL                         R12 R11 K7 ["Destroy"]
       29 CALL                             R12 1 0
       30 FORGLOOP                         R7 2 ; [-9]
       32 FORGLOOP                         R2 2 ; [-15]
       34 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
