PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+29]
        3 NEWTABLE                         R1 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R4 R0
        7 NAMECALL                         R2 R2 K0 ["GetPropertiesOfClass"]
        9 CALL                             R2 2 1
       10 JUMPIFEQKNIL                     R2 ; [+19]
       12 MOVE                             R3 R2
       13 LOADNIL                          R4
       14 LOADNIL                          R5
       15 FORGPREP                         R3
       16 GETTABLEKS                       R8 R7 K1 ["ContentType"]
       18 JUMPIFEQKNIL                     R8 ; [+9]
       20 GETTABLEKS                       R10 R7 K2 ["Name"]
       22 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       24 MOVE                             R9 R1
       25 GETIMPORT                        R8 K5 [table.insert]
       27 CALL                             R8 2 0
       28 FORGLOOP                         R3 2 ; [-13]
       30 GETUPVAL                         R3 0
       31 SETTABLE                         R1 R3 R0
       32 GETUPVAL                         R2 0
       33 GETTABLE                         R1 R2 R0
       34 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["SourceAssetId"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+3]
        4 LOADB                            R2 1
        5 RETURN                           R2 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R0 K1 ["ClassName"]
        9 CALL                             R2 1 1
       10 MOVE                             R3 R2
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLE                         R8 R0 R7
       15 JUMPIFEQKNIL                     R8 ; [+20]
       17 GETTABLEKS                       R9 R8 K2 ["Uri"]
       19 JUMPIFEQKNIL                     R9 ; [+16]
       21 GETIMPORT                        R11 K5 [string.match]
       23 GETTABLEKS                       R12 R8 K2 ["Uri"]
       25 LOADK                            R13 K6 ["%d+"]
       26 CALL                             R11 2 -1
       27 FASTCALL                         TONUMBER ; [+2]
       28 GETIMPORT                        R10 K8 [tonumber]
       30 CALL                             R10 -1 1
       31 JUMPIFEQ                         R10 R1 ; [+2]
       33 LOADB                            R9 0 +1
       34 LOADB                            R9 1
       35 RETURN                           R9 1
       36 FORGLOOP                         R3 2 ; [-23]
       38 LOADB                            R3 0
       39 RETURN                           R3 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R3 K1 [game]
        4 GETTABLEKS                       R2 R3 K2 ["Workspace"]
        6 NAMECALL                         R2 R2 K3 ["GetDescendants"]
        8 CALL                             R2 1 3
        9 FORGPREP                         R2
       10 GETUPVAL                         R7 0
       11 MOVE                             R8 R6
       12 MOVE                             R9 R0
       13 CALL                             R7 2 1
       14 JUMPIFNOT                        R7 ; [+7]
       15 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       17 MOVE                             R8 R1
       18 MOVE                             R9 R6
       19 GETIMPORT                        R7 K6 [table.insert]
       21 CALL                             R7 2 0
       22 FORGLOOP                         R2 2 ; [-13]
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ReflectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 0 0
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R0
       12 DUPCLOSURE                       R3 K5 [PROTO_1]
       13 CAPTURE                          VAL R2
       14 DUPCLOSURE                       R4 K6 [PROTO_2]
       15 CAPTURE                          VAL R3
       16 RETURN                           R4 1
