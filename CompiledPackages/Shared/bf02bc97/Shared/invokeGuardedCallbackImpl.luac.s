PROTO_0:
        0 PREPVARARGS                      4
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K0 ["__YOLO__"]
        6 JUMPIF                           R6 ; [+21]
        7 JUMPIFNOTEQKNIL                  R3 ; [+10]
        9 GETIMPORT                        R6 K2 [xpcall]
       11 MOVE                             R7 R2
       12 GETUPVAL                         R8 1
       13 GETVARARGS                       R9 -1
       14 CALL                             R6 -1 2
       15 MOVE                             R4 R6
       16 MOVE                             R5 R7
       17 JUMP                             ; [+21]
       18 GETIMPORT                        R6 K2 [xpcall]
       20 MOVE                             R7 R2
       21 GETUPVAL                         R8 1
       22 MOVE                             R9 R3
       23 GETVARARGS                       R10 -1
       24 CALL                             R6 -1 2
       25 MOVE                             R4 R6
       26 MOVE                             R5 R7
       27 JUMP                             ; [+11]
       28 LOADB                            R4 1
       29 JUMPIFNOTEQKNIL                  R3 ; [+5]
       31 MOVE                             R6 R2
       32 GETVARARGS                       R7 -1
       33 CALL                             R6 -1 0
       34 JUMP                             ; [+4]
       35 MOVE                             R6 R2
       36 MOVE                             R7 R3
       37 GETVARARGS                       R8 -1
       38 CALL                             R6 -1 0
       39 JUMPIF                           R4 ; [+4]
       40 GETTABLEKS                       R6 R0 K3 ["onError"]
       42 MOVE                             R7 R5
       43 CALL                             R6 1 0
       44 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R3 K4 [require]
       14 GETIMPORT                        R6 K1 [script]
       16 GETTABLEKS                       R5 R6 K2 ["Parent"]
       18 GETTABLEKS                       R4 R5 K6 ["ErrorHandling.roblox"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R2 R3 K7 ["describeError"]
       23 DUPCLOSURE                       R3 K8 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 GETTABLEKS                       R4 R1 K9 ["__DEV__"]
       28 JUMPIFNOT                        R4 ; [0]
       29 RETURN                           R3 1
