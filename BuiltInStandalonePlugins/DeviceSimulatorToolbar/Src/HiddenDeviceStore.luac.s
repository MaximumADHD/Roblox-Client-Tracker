PROTO_0:
        0 NEWTABLE                         R2 1 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["_plugin"]
       10 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_plugin"]
        3 LOADK                            R2 K1 ["hiddenStandardDeviceIds_v1"]
        4 NAMECALL                         R0 R0 K2 ["GetSetting"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R2 K1 [pcall]
        7 CALL                             R2 1 2
        8 JUMPIFNOT                        R2 ; [+7]
        9 FASTCALL1                        TYPE R3 ; [+3]
       10 MOVE                             R5 R3
       11 GETIMPORT                        R4 K3 [type]
       13 CALL                             R4 1 1
       14 JUMPIFEQKS                       R4 K4 ["table"] ; [+2]
       16 RETURN                           R1 1
       17 MOVE                             R4 R3
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 FORGPREP                         R4
       21 FASTCALL1                        TYPE R8 ; [+3]
       22 MOVE                             R10 R8
       23 GETIMPORT                        R9 K3 [type]
       25 CALL                             R9 1 1
       26 JUMPIFNOTEQKS                    R9 K5 ["string"] ; [+3]
       28 LOADB                            R9 1
       29 SETTABLE                         R9 R1 R8
       30 FORGLOOP                         R4 2 ; [-10]
       32 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_plugin"]
        3 LOADK                            R2 K1 ["hiddenStandardDeviceIds_v1"]
        4 GETUPVAL                         R3 1
        5 NAMECALL                         R0 R0 K2 ["SetSetting"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 JUMPIFNOT                        R7 ; [+7]
        7 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
        9 MOVE                             R9 R2
       10 MOVE                             R10 R6
       11 GETIMPORT                        R8 K2 [table.insert]
       13 CALL                             R8 2 0
       14 FORGLOOP                         R3 2 ; [-9]
       16 GETIMPORT                        R3 K4 [table.sort]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 0
       20 NEWCLOSURE                       R4 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 FASTPCALL                        pcall 1 ; [+2]
       24 GETIMPORT                        R3 K6 [pcall]
       26 CALL                             R3 1 0
       27 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K2 ["new"]
        9 DUPCLOSURE                       R1 K3 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K4 ["get"]
       12 DUPCLOSURE                       R1 K5 [PROTO_4]
       13 SETTABLEKS                       R1 R0 K6 ["set"]
       15 RETURN                           R0 1
