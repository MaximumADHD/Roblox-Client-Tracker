PROTO_0:
        0 NEWTABLE                         R1 0 8
        2 GETIMPORT                        R2 K2 [Vector2.new]
        4 LOADN                            R3 1
        5 LOADN                            R4 0
        6 CALL                             R2 2 1
        7 GETIMPORT                        R3 K2 [Vector2.new]
        9 LOADN                            R4 -1
       10 LOADN                            R5 0
       11 CALL                             R3 2 1
       12 GETIMPORT                        R4 K2 [Vector2.new]
       14 LOADN                            R5 0
       15 LOADN                            R6 1
       16 CALL                             R4 2 1
       17 GETIMPORT                        R5 K2 [Vector2.new]
       19 LOADN                            R6 0
       20 LOADN                            R7 -1
       21 CALL                             R5 2 1
       22 GETIMPORT                        R6 K2 [Vector2.new]
       24 LOADN                            R7 1
       25 LOADN                            R8 1
       26 CALL                             R6 2 1
       27 GETTABLEKS                       R6 R6 K3 ["Unit"]
       29 GETIMPORT                        R7 K2 [Vector2.new]
       31 LOADN                            R8 -1
       32 LOADN                            R9 1
       33 CALL                             R7 2 1
       34 GETTABLEKS                       R7 R7 K3 ["Unit"]
       36 GETIMPORT                        R8 K2 [Vector2.new]
       38 LOADN                            R9 1
       39 LOADN                            R10 -1
       40 CALL                             R8 2 1
       41 GETTABLEKS                       R8 R8 K3 ["Unit"]
       43 GETIMPORT                        R9 K2 [Vector2.new]
       45 LOADN                            R10 -1
       46 LOADN                            R11 -1
       47 CALL                             R9 2 1
       48 GETTABLEKS                       R9 R9 K3 ["Unit"]
       50 SETLIST                          R1 R2 8 [1]
       52 GETTABLEKS                       R2 R0 K3 ["Unit"]
       54 LOADK                            R3 K4 [-∞]
       55 LOADNIL                          R4
       56 GETIMPORT                        R5 K6 [ipairs]
       58 MOVE                             R6 R1
       59 CALL                             R5 1 3
       60 FORGPREP_INEXT                   R5
       61 MOVE                             R12 R2
       62 NAMECALL                         R10 R9 K7 ["Dot"]
       64 CALL                             R10 2 1
       65 JUMPIFNOTLT                      R3 R10 ; [+3]
       67 MOVE                             R3 R10
       68 MOVE                             R4 R9
       69 FORGLOOP                         R5 2 [inext] ; [-9]
       71 GETTABLEKS                       R6 R0 K8 ["Magnitude"]
       73 MUL                              R5 R4 R6
       74 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
