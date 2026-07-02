PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["startsWith"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 GETTABLEKS                       R3 R3 K1 ["testIdAttribute"]
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["CollectionService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 MOVE                             R4 R0
        7 NAMECALL                         R2 R1 K4 ["GetTags"]
        9 CALL                             R2 2 1
       10 LENGTH                           R3 R2
       11 JUMPIFNOTEQKN                    R3 K5 [0] ; [+3]
       13 LOADNIL                          R3
       14 RETURN                           R3 1
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K6 ["filter"]
       18 MOVE                             R4 R2
       19 DUPCLOSURE                       R5 K7 [PROTO_0]
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U2
       22 CALL                             R3 2 1
       23 LENGTH                           R4 R3
       24 JUMPIFNOTEQKN                    R4 K5 [0] ; [+3]
       26 LOADNIL                          R4
       27 RETURN                           R4 1
       28 LENGTH                           R4 R3
       29 LOADN                            R5 1
       30 JUMPIFNOTLT                      R5 R4 ; [+5]
       32 GETIMPORT                        R4 K9 [error]
       34 LOADK                            R5 K10 ["Instance has multiple TestId tags set"]
       35 CALL                             R4 1 0
       36 GETUPVAL                         R5 1
       37 GETTABLEKS                       R5 R5 K11 ["split"]
       39 GETTABLEN                        R6 R3 1
       40 GETUPVAL                         R10 2
       41 CALL                             R10 0 1
       42 MOVE                             R8 R10
       43 GETTABLEKS                       R8 R8 K12 ["testIdAttribute"]
       45 LOADK                            R9 K13 ["="]
       46 CONCAT                           R7 R8 R9
       47 CALL                             R5 2 1
       48 GETTABLEN                        R4 R5 2
       49 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["String"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R5 R5 K2 ["Parent"]
       22 GETTABLEKS                       R5 R5 K8 ["config"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R4 R4 K9 ["getConfig"]
       27 NEWTABLE                         R5 1 0
       29 DUPCLOSURE                       R6 K10 [PROTO_1]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R4
       33 SETTABLEKS                       R6 R5 K11 ["getNodeTestId"]
       35 RETURN                           R5 1
