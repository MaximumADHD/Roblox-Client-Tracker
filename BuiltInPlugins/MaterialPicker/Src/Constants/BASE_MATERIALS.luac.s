PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R0 K2 [Enum.Material]
        2 NAMECALL                         R0 R0 K3 ["GetEnumItems"]
        4 CALL                             R0 1 1
        5 GETIMPORT                        R1 K6 [table.sort]
        7 MOVE                             R2 R0
        8 DUPCLOSURE                       R3 K7 [PROTO_0]
        9 CALL                             R1 2 0
       10 LOADNIL                          R1
       11 NEWTABLE                         R2 0 2
       13 GETIMPORT                        R3 K9 [Enum.Material.Air]
       15 GETIMPORT                        R4 K11 [Enum.Material.Water]
       17 SETLIST                          R2 R3 2 [1]
       19 MOVE                             R1 R2
       20 GETIMPORT                        R2 K13 [ipairs]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 3
       24 FORGPREP_INEXT                   R2
       25 GETIMPORT                        R7 K15 [table.find]
       27 MOVE                             R8 R0
       28 MOVE                             R9 R6
       29 CALL                             R7 2 1
       30 GETIMPORT                        R8 K17 [table.remove]
       32 MOVE                             R9 R0
       33 MOVE                             R10 R7
       34 CALL                             R8 2 0
       35 FORGLOOP                         R2 2 [inext] ; [-11]
       37 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 GETIMPORT                        R1 K3 [table.freeze]
        4 MOVE                             R2 R0
        5 CALL                             R2 0 1
        6 CALL                             R1 1 1
        7 RETURN                           R1 1
