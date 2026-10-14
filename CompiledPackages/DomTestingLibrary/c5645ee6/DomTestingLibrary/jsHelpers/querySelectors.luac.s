PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+12]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["ClassName"]
        5 MOVE                             R4 R0
        6 NAMECALL                         R2 R2 K1 ["find"]
        8 CALL                             R2 2 1
        9 JUMPIFNOTEQKNIL                  R2 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1
       14 GETUPVAL                         R1 0
       15 JUMPIFNOTEQKS                    R1 K2 ["property"] ; [+12]
       17 GETIMPORT                        R1 K4 [pcall]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R0
       22 CALL                             R1 1 2
       23 JUMPIFNOTEQKNIL                  R2 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 RETURN                           R3 1
       28 GETUPVAL                         R1 0
       29 JUMPIFNOTEQKS                    R1 K5 ["tag"] ; [+9]
       31 GETUPVAL                         R2 2
       32 GETUPVAL                         R3 1
       33 CALL                             R2 1 1
       34 JUMPIFNOTEQKNIL                  R2 ; [+2]
       36 LOADB                            R1 0 +1
       37 LOADB                            R1 1
       38 RETURN                           R1 1
       39 GETUPVAL                         R2 1
       40 MOVE                             R4 R0
       41 NAMECALL                         R2 R2 K6 ["GetAttribute"]
       43 CALL                             R2 2 1
       44 JUMPIFNOTEQKNIL                  R2 ; [+2]
       46 LOADB                            R1 0 +1
       47 LOADB                            R1 1
       48 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["some"]
        3 MOVE                             R4 R1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CALL                             R3 2 -1
        9 RETURN                           R3 -1

PROTO_3:
        0 NEWTABLE                         R4 0 0
        2 NAMECALL                         R5 R0 K0 ["GetDescendants"]
        4 CALL                             R5 1 3
        5 FORGPREP                         R5
        6 GETUPVAL                         R10 0
        7 GETTABLEKS                       R10 R10 K1 ["some"]
        9 MOVE                             R11 R1
       10 NEWCLOSURE                       R12 P0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R9
       13 CAPTURE                          UPVAL U1
       14 CALL                             R10 2 1
       15 JUMPIFNOT                        R10 ; [+14]
       16 JUMPIFNOTEQKN                    R3 K2 [1] ; [+2]
       18 RETURN                           R9 1
       19 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       21 MOVE                             R11 R4
       22 MOVE                             R12 R9
       23 GETIMPORT                        R10 K5 [table.insert]
       25 CALL                             R10 2 0
       26 LENGTH                           R10 R4
       27 JUMPIFNOTEQ                      R3 R10 ; [+2]
       29 RETURN                           R4 1
       30 FORGLOOP                         R5 2 ; [-25]
       32 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 LOADN                            R7 1
        5 CALL                             R3 4 1
        6 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 1
        5 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Array"]
       16 GETIMPORT                        R3 K4 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R5 R5 K2 ["Parent"]
       22 GETTABLEKS                       R5 R5 K2 ["Parent"]
       24 GETTABLEKS                       R4 R5 K7 ["get-node-test-id"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R3 R3 K8 ["getNodeTestId"]
       29 NEWTABLE                         R4 4 0
       31 DUPCLOSURE                       R5 K9 [PROTO_2]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 DUPCLOSURE                       R6 K10 [PROTO_3]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 DUPCLOSURE                       R7 K11 [PROTO_4]
       38 CAPTURE                          VAL R6
       39 SETTABLEKS                       R7 R4 K12 ["querySelector"]
       41 DUPCLOSURE                       R7 K13 [PROTO_5]
       42 CAPTURE                          VAL R6
       43 SETTABLEKS                       R7 R4 K14 ["querySelectorAll"]
       45 SETTABLEKS                       R5 R4 K15 ["matches"]
       47 RETURN                           R4 1
