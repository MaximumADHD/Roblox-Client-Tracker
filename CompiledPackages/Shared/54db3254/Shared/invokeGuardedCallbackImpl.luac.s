PROTO_0:
        0 PREPVARARGS                      4
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 GETIMPORT                        R7 K1 [_G]
        5 GETTABLEKS                       R6 R7 K2 ["__YOLO__"]
        7 JUMPIF                           R6 ; [+21]
        8 JUMPIFNOTEQKNIL                  R3 ; [+10]
       10 GETIMPORT                        R6 K4 [xpcall]
       12 MOVE                             R7 R2
       13 GETUPVAL                         R8 0
       14 GETVARARGS                       R9 -1
       15 CALL                             R6 -1 2
       16 MOVE                             R4 R6
       17 MOVE                             R5 R7
       18 JUMP                             ; [+21]
       19 GETIMPORT                        R6 K4 [xpcall]
       21 MOVE                             R7 R2
       22 GETUPVAL                         R8 0
       23 MOVE                             R9 R3
       24 GETVARARGS                       R10 -1
       25 CALL                             R6 -1 2
       26 MOVE                             R4 R6
       27 MOVE                             R5 R7
       28 JUMP                             ; [+11]
       29 LOADB                            R4 1
       30 JUMPIFNOTEQKNIL                  R3 ; [+5]
       32 MOVE                             R6 R2
       33 GETVARARGS                       R7 -1
       34 CALL                             R6 -1 0
       35 JUMP                             ; [+4]
       36 MOVE                             R6 R2
       37 MOVE                             R7 R3
       38 GETVARARGS                       R8 -1
       39 CALL                             R6 -1 0
       40 JUMPIF                           R4 ; [+4]
       41 GETTABLEKS                       R6 R0 K5 ["onError"]
       43 MOVE                             R7 R5
       44 CALL                             R6 1 0
       45 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [require]
        3 GETIMPORT                        R4 K4 [script]
        5 GETTABLEKS                       R3 R4 K5 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["ErrorHandling.roblox"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R0 R1 K6 ["describeError"]
       12 DUPCLOSURE                       R1 K7 [PROTO_0]
       13 CAPTURE                          VAL R0
       14 GETIMPORT                        R3 K9 [_G]
       16 GETTABLEKS                       R2 R3 K10 ["__DEV__"]
       18 JUMPIFNOT                        R2 ; [0]
       19 RETURN                           R1 1
