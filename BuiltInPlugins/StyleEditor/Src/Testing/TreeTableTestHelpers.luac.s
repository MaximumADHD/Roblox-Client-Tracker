PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Children"]
        2 JUMPIF                           R2 ; [+6]
        3 GETIMPORT                        R2 K2 [error]
        5 LOADK                            R4 K3 ["Failed to find row:"]
        6 MOVE                             R5 R1
        7 CONCAT                           R3 R4 R5
        8 CALL                             R2 1 0
        9 GETTABLEKS                       R2 R0 K0 ["Children"]
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETTABLEKS                       R7 R6 K4 ["Name"]
       16 JUMPIFNOT                        R7 ; [+7]
       17 GETTABLEKS                       R7 R6 K4 ["Name"]
       19 GETTABLEKS                       R7 R7 K5 ["Value"]
       21 JUMPIFNOTEQ                      R7 R1 ; [+2]
       23 RETURN                           R6 1
       24 FORGLOOP                         R2 2 ; [-11]
       26 GETIMPORT                        R2 K2 [error]
       28 LOADK                            R4 K3 ["Failed to find row:"]
       29 MOVE                             R5 R1
       30 CONCAT                           R3 R4 R5
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["findRowByName"]
        6 RETURN                           R0 1
