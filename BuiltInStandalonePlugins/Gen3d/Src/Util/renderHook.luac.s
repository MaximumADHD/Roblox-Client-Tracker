PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [table.pack]
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 -1
        5 CALL                             R1 -1 1
        6 SETTABLEKS                       R1 R0 K3 ["current"]
        8 LOADNIL                          R0
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["render"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 FASTCALL1                        TABLE_UNPACK R1 ; [+2]
        4 GETIMPORT                        R0 K3 [table.unpack]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createRef"]
        3 CALL                             R2 0 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R0
        7 GETIMPORT                        R4 K3 [Instance.new]
        9 LOADK                            R5 K4 ["Folder"]
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K5 ["createRoot"]
       14 MOVE                             R6 R4
       15 CALL                             R5 1 1
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K6 ["createElement"]
       19 MOVE                             R7 R3
       20 CALL                             R6 1 1
       21 JUMPIFNOT                        R1 ; [+12]
       22 GETTABLEKS                       R7 R1 K7 ["wrapper"]
       24 JUMPIFNOT                        R7 ; [+9]
       25 GETUPVAL                         R7 0
       26 GETTABLEKS                       R7 R7 K6 ["createElement"]
       28 GETTABLEKS                       R8 R1 K7 ["wrapper"]
       30 LOADNIL                          R9
       31 MOVE                             R10 R6
       32 CALL                             R7 3 1
       33 MOVE                             R6 R7
       34 GETUPVAL                         R7 2
       35 NEWCLOSURE                       R8 P1
       36 CAPTURE                          VAL R5
       37 CAPTURE                          REF R6
       38 CALL                             R7 1 0
       39 NEWCLOSURE                       R7 P2
       40 CAPTURE                          VAL R2
       41 NEWCLOSURE                       R8 P3
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          VAL R5
       44 CLOSEUPVALS                      R6
       45 RETURN                           R7 2

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["act"]
       23 DUPCLOSURE                       R4 K10 [PROTO_5]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R3
       27 RETURN                           R4 1
