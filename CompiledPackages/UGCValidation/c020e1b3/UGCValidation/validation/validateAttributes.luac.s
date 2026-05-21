PROTO_0:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K0 ["AlternateMeshIdAttributeName"]
        8 JUMPIFEQ                         R5 R7 ; [+29]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K1 ["GUIDAttributeName"]
       13 JUMPIFEQ                         R5 R7 ; [+3]
       15 LOADB                            R7 0
       16 RETURN                           R7 1
       17 FASTCALL1                        TYPEOF R6 ; [+3]
       18 MOVE                             R8 R6
       19 GETIMPORT                        R7 K3 [typeof]
       21 CALL                             R7 1 1
       22 JUMPIFEQKS                       R7 K4 ["string"] ; [+3]
       24 LOADB                            R7 0
       25 RETURN                           R7 1
       26 FASTCALL1                        STRING_LEN R6 ; [+3]
       27 MOVE                             R8 R6
       28 GETIMPORT                        R7 K6 [string.len]
       30 CALL                             R7 1 1
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K7 ["GUIDAttributeMaxLength"]
       34 JUMPIFNOTLT                      R8 R7 ; [+3]
       36 LOADB                            R7 0
       37 RETURN                           R7 1
       38 FORGLOOP                         R2 2 ; [-35]
       40 LOADB                            R2 1
       41 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["allowEditableInstances"]
        2 NEWTABLE                         R3 0 0
        4 GETUPVAL                         R4 0
        5 NAMECALL                         R5 R0 K1 ["GetAttributes"]
        7 CALL                             R5 1 1
        8 MOVE                             R6 R2
        9 CALL                             R4 2 1
       10 JUMPIF                           R4 ; [+8]
       11 MOVE                             R5 R3
       12 NAMECALL                         R6 R0 K2 ["GetFullName"]
       14 CALL                             R6 1 -1
       15 FASTCALL                         TABLE_INSERT ; [+2]
       16 GETIMPORT                        R4 K5 [table.insert]
       18 CALL                             R4 -1 0
       19 GETIMPORT                        R4 K7 [ipairs]
       21 NAMECALL                         R5 R0 K8 ["GetDescendants"]
       23 CALL                             R5 1 -1
       24 CALL                             R4 -1 3
       25 FORGPREP_INEXT                   R4
       26 JUMPIFNOT                        R2 ; [+7]
       27 GETUPVAL                         R11 1
       28 GETTABLEKS                       R11 R11 K9 ["AlternateMeshIdAttributeName"]
       30 NAMECALL                         R9 R8 K10 ["GetAttribute"]
       32 CALL                             R9 2 1
       33 JUMPIF                           R9 ; [+16]
       34 GETIMPORT                        R9 K12 [next]
       36 NAMECALL                         R10 R8 K1 ["GetAttributes"]
       38 CALL                             R10 1 -1
       39 CALL                             R9 -1 1
       40 JUMPIFEQKNIL                     R9 ; [+9]
       42 MOVE                             R10 R3
       43 NAMECALL                         R11 R8 K2 ["GetFullName"]
       45 CALL                             R11 1 -1
       46 FASTCALL                         TABLE_INSERT ; [+2]
       47 GETIMPORT                        R9 K5 [table.insert]
       49 CALL                             R9 -1 0
       50 FORGLOOP                         R4 2 [inext] ; [-25]
       52 LENGTH                           R4 R3
       53 LOADN                            R5 0
       54 JUMPIFNOTLT                      R5 R4 ; [+42]
       56 NEWTABLE                         R4 0 0
       58 MOVE                             R6 R4
       59 GETIMPORT                        R7 K15 [string.format]
       61 LOADK                            R8 K16 ["'%s' (or its descendants) contain Attributes. You need to remove Attributes from the following: "]
       62 GETTABLEKS                       R9 R0 K17 ["Name"]
       64 CALL                             R7 2 -1
       65 FASTCALL                         TABLE_INSERT ; [+2]
       66 GETIMPORT                        R5 K5 [table.insert]
       68 CALL                             R5 -1 0
       69 GETIMPORT                        R5 K19 [pairs]
       71 MOVE                             R6 R3
       72 CALL                             R5 1 3
       73 FORGPREP_NEXT                    R5
       74 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       76 MOVE                             R11 R4
       77 MOVE                             R12 R9
       78 GETIMPORT                        R10 K5 [table.insert]
       80 CALL                             R10 2 0
       81 FORGLOOP                         R5 2 ; [-8]
       83 GETUPVAL                         R5 2
       84 GETTABLEKS                       R5 R5 K20 ["reportFailure"]
       86 GETUPVAL                         R6 2
       87 GETTABLEKS                       R6 R6 K21 ["ErrorType"]
       89 GETTABLEKS                       R6 R6 K22 ["validateAttributes"]
       91 LOADNIL                          R7
       92 MOVE                             R8 R1
       93 CALL                             R5 3 0
       94 LOADB                            R5 0
       95 MOVE                             R6 R4
       96 RETURN                           R5 2
       97 LOADB                            R4 1
       98 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Constants"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETTABLEKS                       R4 R0 K7 ["util"]
       21 GETTABLEKS                       R4 R4 K8 ["Types"]
       23 CALL                             R3 1 1
       24 DUPCLOSURE                       R4 K9 [PROTO_0]
       25 CAPTURE                          VAL R2
       26 DUPCLOSURE                       R5 K10 [PROTO_1]
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 RETURN                           R5 1
