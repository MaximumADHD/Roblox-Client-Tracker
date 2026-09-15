PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getString"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["RecentlyUsedTerrainSlots"]
        5 CALL                             R1 2 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+4]
        8 NEWTABLE                         R2 0 0
       10 RETURN                           R2 1
       11 GETIMPORT                        R2 K3 [pcall]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K4 ["JSONDecode"]
       16 GETUPVAL                         R4 1
       17 MOVE                             R5 R1
       18 CALL                             R2 3 2
       19 JUMPIFNOT                        R2 ; [+7]
       20 FASTCALL1                        TYPEOF R3 ; [+3]
       21 MOVE                             R5 R3
       22 GETIMPORT                        R4 K6 [typeof]
       24 CALL                             R4 1 1
       25 JUMPIFEQKS                       R4 K7 ["table"] ; [+4]
       27 NEWTABLE                         R4 0 0
       29 RETURN                           R4 1
       30 NEWTABLE                         R4 0 0
       32 NEWTABLE                         R5 0 0
       34 MOVE                             R6 R3
       35 LOADNIL                          R7
       36 LOADNIL                          R8
       37 FORGPREP                         R6
       38 FASTCALL1                        TYPE R10 ; [+3]
       39 MOVE                             R12 R10
       40 GETIMPORT                        R11 K9 [type]
       42 CALL                             R11 1 1
       43 JUMPIFNOTEQKS                    R11 K10 ["number"] ; [+21]
       45 MODK                             R11 R10 K11 [1]
       46 JUMPIFNOTEQKN                    R11 K12 [0] ; [+18]
       48 LOADN                            R11 0
       49 JUMPIFNOTLE                      R11 R10 ; [+15]
       51 LOADN                            R11 64
       52 JUMPIFNOTLT                      R10 R11 ; [+12]
       54 GETTABLE                         R11 R5 R10
       55 JUMPIF                           R11 ; [+9]
       56 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       58 MOVE                             R12 R4
       59 MOVE                             R13 R10
       60 GETIMPORT                        R11 K14 [table.insert]
       62 CALL                             R11 2 0
       63 LOADB                            R11 1
       64 SETTABLE                         R11 R5 R10
       65 FORGLOOP                         R6 2 ; [-28]
       67 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["read"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETIMPORT                        R3 K3 [table.find]
        7 MOVE                             R4 R2
        8 MOVE                             R5 R1
        9 CALL                             R3 2 1
       10 JUMPIFEQKNIL                     R3 ; [+6]
       12 GETIMPORT                        R4 K5 [table.remove]
       14 MOVE                             R5 R2
       15 MOVE                             R6 R3
       16 CALL                             R4 2 0
       17 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
       19 MOVE                             R5 R2
       20 MOVE                             R6 R1
       21 GETIMPORT                        R4 K7 [table.insert]
       23 CALL                             R4 2 0
       24 LENGTH                           R4 R2
       25 LOADN                            R5 64
       26 JUMPIFNOTLT                      R5 R4 ; [+7]
       28 GETIMPORT                        R4 K5 [table.remove]
       30 MOVE                             R5 R2
       31 LOADN                            R6 1
       32 CALL                             R4 2 0
       33 JUMPBACK                         ; [-10]
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K8 ["setString"]
       37 MOVE                             R5 R0
       38 LOADK                            R6 K9 ["RecentlyUsedTerrainSlots"]
       39 GETUPVAL                         R7 2
       40 MOVE                             R9 R2
       41 NAMECALL                         R7 R7 K10 ["JSONEncode"]
       43 CALL                             R7 2 -1
       44 CALL                             R4 -1 0
       45 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K9 ["MaterialPickerSettings"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 2 0
       18 DUPCLOSURE                       R3 K10 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R3 R2 K11 ["read"]
       23 DUPCLOSURE                       R3 K12 [PROTO_1]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R3 R2 K13 ["record"]
       29 RETURN                           R2 1
