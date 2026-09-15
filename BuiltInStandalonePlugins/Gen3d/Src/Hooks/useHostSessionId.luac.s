PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["HostSessionStarted"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U2
        9 NAMECALL                         R0 R0 K1 ["OnGuestEvent"]
       11 CALL                             R0 3 2
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R1
       14 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["useState"]
        8 LOADNIL                          R2
        9 CALL                             R1 1 2
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["useEffect"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          VAL R2
       17 NEWTABLE                         R5 0 1
       19 MOVE                             R6 R0
       20 SETLIST                          R5 R6 1 [1]
       22 CALL                             R3 2 0
       23 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["NetworkingContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Networking"]
       29 GETTABLEKS                       R4 R4 K12 ["Events"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K13 [PROTO_3]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R3
       36 RETURN                           R4 1
