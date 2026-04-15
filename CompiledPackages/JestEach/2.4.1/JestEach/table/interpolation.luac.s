PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["reduce"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K0 ["reduce"]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K1 ["keys"]
        9 MOVE                             R6 R1
       10 CALL                             R5 1 1
       11 GETUPVAL                         R6 2
       12 MOVE                             R7 R0
       13 CALL                             R6 1 1
       14 NEWTABLE                         R7 0 0
       16 CALL                             R4 3 1
       17 GETUPVAL                         R5 3
       18 MOVE                             R6 R1
       19 CALL                             R5 1 1
       20 MOVE                             R6 R0
       21 CALL                             R3 3 1
       22 LOADK                            R5 K2 ["%$#"]
       23 FASTCALL1                        TOSTRING R2 ; [+3]
       24 MOVE                             R7 R2
       25 GETIMPORT                        R6 K4 [tostring]
       27 CALL                             R6 1 1
       28 LOADN                            R7 1
       29 NAMECALL                         R3 R3 K5 ["gsub"]
       31 CALL                             R3 4 -1
       32 RETURN                           R3 -1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K0 ["%%$%s[%%.%%w]*"]
        4 GETUPVAL                         R5 1
        5 NAMECALL                         R3 R3 K1 ["format"]
        7 CALL                             R3 2 -1
        8 NAMECALL                         R1 R1 K2 ["gmatch"]
       10 CALL                             R1 -1 3
       11 FORGPREP                         R1
       12 FASTCALL2                        TABLE_INSERT R0 R4 ; [+5]
       14 MOVE                             R7 R0
       15 MOVE                             R8 R4
       16 GETIMPORT                        R6 K5 [table.insert]
       18 CALL                             R6 2 0
       19 FORGLOOP                         R1 1 ; [-8]
       21 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["concat"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R1
        7 CALL                             R4 0 1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R4 K0 ["%$"]
        1 LOADK                            R5 K1 [""]
        2 LOADN                            R6 1
        3 NAMECALL                         R2 R1 K2 ["gsub"]
        5 CALL                             R2 4 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K3 ["split"]
        9 MOVE                             R4 R2
       10 LOADK                            R5 K4 ["%."]
       11 CALL                             R3 2 1
       12 GETUPVAL                         R4 1
       13 GETUPVAL                         R5 2
       14 MOVE                             R6 R3
       15 CALL                             R4 2 1
       16 GETUPVAL                         R5 3
       17 MOVE                             R6 R4
       18 CALL                             R5 1 1
       19 JUMPIFNOT                        R5 ; [+11]
       20 MOVE                             R7 R1
       21 FASTCALL1                        TOSTRING R4 ; [+3]
       22 MOVE                             R9 R4
       23 GETIMPORT                        R8 K6 [tostring]
       25 CALL                             R8 1 1
       26 LOADN                            R9 1
       27 NAMECALL                         R5 R0 K2 ["gsub"]
       29 CALL                             R5 4 -1
       30 RETURN                           R5 -1
       31 MOVE                             R7 R1
       32 GETUPVAL                         R8 4
       33 MOVE                             R9 R4
       34 DUPTABLE                         R10 K9 [{"maxDepth", "min"}]
       35 LOADN                            R11 1
       36 SETTABLEKS                       R11 R10 K7 ["maxDepth"]
       38 LOADB                            R11 1
       39 SETTABLEKS                       R11 R10 K8 ["min"]
       41 CALL                             R8 2 1
       42 LOADN                            R9 1
       43 NAMECALL                         R5 R0 K2 ["gsub"]
       45 CALL                             R5 4 -1
       46 RETURN                           R5 -1

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 RETURN                           R1 1

PROTO_6:
        0 LOADN                            R4 1
        1 LOADN                            R5 1
        2 FASTCALL3                        TABLE_UNPACK R1 R4 R5
        4 MOVE                             R3 R1
        5 GETIMPORT                        R2 K2 [table.unpack]
        7 CALL                             R2 3 1
        8 LENGTH                           R4 R1
        9 LOADN                            R5 1
       10 JUMPIFNOTLT                      R5 R4 ; [+13]
       12 NEWTABLE                         R3 0 1
       14 FASTCALL2K                       TABLE_UNPACK R1 K3 ; [+5]
       16 MOVE                             R5 R1
       17 LOADK                            R6 K3 [2]
       18 GETIMPORT                        R4 K2 [table.unpack]
       20 CALL                             R4 2 -1
       21 SETLIST                          R3 R4 -1 [1]
       23 JUMP                             ; [+2]
       24 NEWTABLE                         R3 0 0
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R4 R5 K4 ["toJSBoolean"]
       29 MOVE                             R5 R2
       30 CALL                             R4 1 1
       31 JUMPIFNOT                        R4 ; [+3]
       32 GETTABLE                         R4 R0 R2
       33 JUMPIFNOTEQKNIL                  R4 ; [+2]
       35 RETURN                           R0 1
       36 GETUPVAL                         R4 1
       37 GETTABLE                         R5 R0 R2
       38 MOVE                             R6 R3
       39 CALL                             R4 2 -1
       40 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Array"]
       16 GETTABLEKS                       R3 R1 K7 ["Boolean"]
       18 GETTABLEKS                       R4 R1 K8 ["Object"]
       20 GETTABLEKS                       R5 R1 K9 ["String"]
       22 NEWTABLE                         R6 2 0
       24 GETIMPORT                        R8 K4 [require]
       26 GETTABLEKS                       R9 R0 K10 ["JestGetType"]
       28 CALL                             R8 1 1
       29 GETTABLEKS                       R7 R8 K11 ["isPrimitive"]
       31 GETIMPORT                        R9 K4 [require]
       33 GETTABLEKS                       R10 R0 K12 ["PrettyFormat"]
       35 CALL                             R9 1 1
       36 GETTABLEKS                       R8 R9 K13 ["format"]
       38 LOADNIL                          R9
       39 LOADNIL                          R10
       40 LOADNIL                          R11
       41 NEWCLOSURE                       R12 P0
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R4
       44 CAPTURE                          REF R9
       45 CAPTURE                          REF R10
       46 SETTABLEKS                       R12 R6 K14 ["interpolateVariables"]
       48 DUPCLOSURE                       R9 K15 [PROTO_3]
       49 CAPTURE                          VAL R2
       50 NEWCLOSURE                       R10 P2
       51 CAPTURE                          VAL R5
       52 CAPTURE                          REF R11
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R8
       55 NEWCLOSURE                       R11 P3
       56 CAPTURE                          VAL R3
       57 CAPTURE                          REF R11
       58 SETTABLEKS                       R11 R6 K16 ["getPath"]
       60 CLOSEUPVALS                      R9
       61 RETURN                           R6 1
