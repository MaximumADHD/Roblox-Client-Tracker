PROTO_0:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["has"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+29]
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 2
        9 LOADB                            R4 1
       10 CALL                             R1 3 1
       11 DUPTABLE                         R2 K3 [{"isMatch", "negated"}]
       12 SETTABLEKS                       R1 R2 K1 ["isMatch"]
       14 GETTABLEKS                       R3 R1 K4 ["state"]
       16 GETTABLEKS                       R3 R3 K2 ["negated"]
       18 JUMPIF                           R3 ; [+8]
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K5 ["toJSBoolean"]
       22 GETTABLEKS                       R4 R1 K4 ["state"]
       24 GETTABLEKS                       R4 R4 K6 ["negatedExtglob"]
       26 CALL                             R3 1 1
       27 SETTABLEKS                       R3 R2 K2 ["negated"]
       29 GETUPVAL                         R3 0
       30 MOVE                             R5 R0
       31 MOVE                             R6 R2
       32 NAMECALL                         R3 R3 K7 ["set"]
       34 CALL                             R3 3 0
       35 GETUPVAL                         R1 0
       36 MOVE                             R3 R0
       37 NAMECALL                         R1 R1 K8 ["get"]
       39 CALL                             R1 2 1
       40 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R1
        1 LOADN                            R2 0
        2 LOADN                            R5 1
        3 GETUPVAL                         R6 0
        4 LENGTH                           R3 R6
        5 LOADN                            R4 1
        6 FORNPREP                         R3
        7 LOADNIL                          R6
        8 LOADNIL                          R7
        9 GETUPVAL                         R9 0
       10 GETTABLE                         R8 R9 R5
       11 GETTABLEKS                       R6 R8 K0 ["isMatch"]
       13 GETTABLEKS                       R7 R8 K1 ["negated"]
       15 JUMPIFNOT                        R7 ; [+1]
       16 ADDK                             R2 R2 K2 [1]
       17 MOVE                             R9 R6
       18 MOVE                             R10 R0
       19 CALL                             R9 1 1
       20 JUMPIF                           R9 ; [+3]
       21 JUMPIFNOT                        R7 ; [+2]
       22 LOADB                            R1 0
       23 JUMP                             ; [+3]
       24 JUMPIFNOT                        R9 ; [+2]
       25 JUMPIF                           R7 ; [+1]
       26 LOADB                            R1 1
       27 FORNLOOP                         R3
       28 GETUPVAL                         R5 0
       29 LENGTH                           R4 R5
       30 JUMPIFNOTEQ                      R2 R4 ; [+6]
       32 JUMPIFNOTEQKB                    R1 FALSE ; [+2]
       34 LOADB                            R3 0 +1
       35 LOADB                            R3 1
       36 RETURN                           R3 1
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K3 ["toJSBoolean"]
       40 MOVE                             R4 R1
       41 CALL                             R3 1 1
       42 RETURN                           R3 1

PROTO_3:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 DUPCLOSURE                       R1 K1 [PROTO_0]
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["map"]
        8 MOVE                             R2 R0
        9 DUPCLOSURE                       R3 K3 [PROTO_1]
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          UPVAL U4
       14 CALL                             R1 2 1
       15 NEWCLOSURE                       R2 P2
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U4
       18 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       16 GETTABLEKS                       R5 R2 K8 ["Map"]
       18 NEWTABLE                         R6 1 0
       20 GETIMPORT                        R7 K4 [require]
       22 GETTABLEKS                       R8 R1 K9 ["Picomatch"]
       24 CALL                             R7 1 1
       25 GETIMPORT                        R8 K4 [require]
       27 GETTABLEKS                       R9 R1 K10 ["JestTypes"]
       29 CALL                             R8 1 1
       30 GETTABLEKS                       R9 R5 K11 ["new"]
       32 CALL                             R9 0 1
       33 DUPTABLE                         R10 K13 [{"dot"}]
       34 LOADB                            R11 1
       35 SETTABLEKS                       R11 R10 K12 ["dot"]
       37 DUPCLOSURE                       R11 K14 [PROTO_3]
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R9
       40 CAPTURE                          VAL R7
       41 CAPTURE                          VAL R10
       42 CAPTURE                          VAL R4
       43 SETTABLEKS                       R11 R6 K15 ["default"]
       45 RETURN                           R6 1
