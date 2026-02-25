PROTO_0:
        0 DIVK                             R2 R1 K0 [2]
        1 NEWTABLE                         R3 0 0
        3 GETIMPORT                        R4 K2 [ipairs]
        5 GETUPVAL                         R5 0
        6 CALL                             R4 1 3
        7 FORGPREP_INEXT                   R4
        8 GETIMPORT                        R12 K5 [CFrame.new]
       10 MUL                              R13 R8 R2
       11 CALL                             R12 1 1
       12 MUL                              R11 R0 R12
       13 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       15 MOVE                             R10 R3
       16 GETIMPORT                        R9 K8 [table.insert]
       18 CALL                             R9 2 0
       19 FORGLOOP                         R4 2 [inext] ; [-12]
       21 RETURN                           R3 1

PROTO_1:
        0 JUMPIF                           R0 ; [+3]
        1 NEWTABLE                         R1 0 0
        3 RETURN                           R1 1
        4 LOADK                            R3 K0 ["BasePart"]
        5 NAMECALL                         R1 R0 K1 ["IsA"]
        7 CALL                             R1 2 1
        8 JUMPIFNOT                        R1 ; [+7]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R2 R0 K2 ["CFrame"]
       12 GETTABLEKS                       R3 R0 K3 ["Size"]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1
       16 LOADK                            R3 K4 ["Model"]
       17 NAMECALL                         R1 R0 K1 ["IsA"]
       19 CALL                             R1 2 1
       20 JUMPIFNOT                        R1 ; [+6]
       21 GETUPVAL                         R1 0
       22 NAMECALL                         R2 R0 K5 ["GetBoundingBox"]
       24 CALL                             R2 1 -1
       25 CALL                             R1 -1 1
       26 RETURN                           R1 1
       27 NEWTABLE                         R1 0 0
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 27
        3 LOADK                            R1 K0 [{0, 0, 0}]
        4 LOADK                            R2 K1 [{-1, -1, -1}]
        5 LOADK                            R3 K2 [{1, -1, -1}]
        6 LOADK                            R4 K3 [{-1, 1, -1}]
        7 LOADK                            R5 K4 [{1, 1, -1}]
        8 LOADK                            R6 K5 [{-1, -1, 1}]
        9 LOADK                            R7 K6 [{1, -1, 1}]
       10 LOADK                            R8 K7 [{-1, 1, 1}]
       11 LOADK                            R9 K8 [{1, 1, 1}]
       12 LOADK                            R10 K9 [{-1, 0, 0}]
       13 LOADK                            R11 K10 [{1, 0, 0}]
       14 LOADK                            R12 K11 [{0, -1, 0}]
       15 LOADK                            R13 K12 [{0, 1, 0}]
       16 LOADK                            R14 K13 [{0, 0, -1}]
       17 LOADK                            R15 K14 [{0, 0, 1}]
       18 LOADK                            R16 K15 [{1, 1, 0}]
       19 SETLIST                          R0 R1 16 [1]
       21 LOADK                            R1 K16 [{-1, 1, 0}]
       22 LOADK                            R2 K17 [{-1, -1, 0}]
       23 LOADK                            R3 K18 [{1, -1, 0}]
       24 LOADK                            R4 K19 [{0, 1, 1}]
       25 LOADK                            R5 K20 [{0, -1, 1}]
       26 LOADK                            R6 K21 [{0, -1, -1}]
       27 LOADK                            R7 K22 [{0, 1, -1}]
       28 LOADK                            R8 K23 [{1, 0, 1}]
       29 LOADK                            R9 K24 [{-1, 0, 1}]
       30 LOADK                            R10 K25 [{-1, 0, -1}]
       31 LOADK                            R11 K26 [{1, 0, -1}]
       32 SETLIST                          R0 R1 11 [17]
       34 DUPCLOSURE                       R1 K27 [PROTO_0]
       35 CAPTURE                          VAL R0
       36 DUPCLOSURE                       R2 K28 [PROTO_1]
       37 CAPTURE                          VAL R1
       38 RETURN                           R2 1
