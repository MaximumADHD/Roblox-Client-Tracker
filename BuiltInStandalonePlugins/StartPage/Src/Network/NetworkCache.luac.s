PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R2 K8 [{"dirty", "itemsByKey", "lists", "signal", "getItemKey", "getQueryDetails", "load", "unload"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["dirty"]
        4 NEWTABLE                         R3 0 0
        6 SETTABLEKS                       R3 R2 K1 ["itemsByKey"]
        8 NEWTABLE                         R3 0 0
       10 SETTABLEKS                       R3 R2 K2 ["lists"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K9 ["new"]
       15 CALL                             R3 0 1
       16 SETTABLEKS                       R3 R2 K3 ["signal"]
       18 SETTABLEKS                       R0 R2 K4 ["getItemKey"]
       20 SETTABLEKS                       R1 R2 K5 ["getQueryDetails"]
       22 DUPCLOSURE                       R3 K10 [PROTO_0]
       23 SETTABLEKS                       R3 R2 K6 ["load"]
       25 DUPCLOSURE                       R3 K11 [PROTO_1]
       26 SETTABLEKS                       R3 R2 K7 ["unload"]
       28 DUPTABLE                         R5 K13 [{"__index"}]
       29 GETUPVAL                         R6 1
       30 SETTABLEKS                       R6 R5 K12 ["__index"]
       32 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       34 MOVE                             R4 R2
       35 GETIMPORT                        R3 K15 [setmetatable]
       37 CALL                             R3 2 1
       38 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["lists"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R2 1
        5 DUPTABLE                         R3 K10 [{"query", "dirty", "items", "pages", "memberSet", "requestedCount", "targetCount", "pageIndex", "pageSize"}]
        6 SETTABLEKS                       R1 R3 K1 ["query"]
        8 LOADB                            R4 1
        9 SETTABLEKS                       R4 R3 K2 ["dirty"]
       11 NEWTABLE                         R4 0 0
       13 SETTABLEKS                       R4 R3 K3 ["items"]
       15 NEWTABLE                         R4 0 0
       17 SETTABLEKS                       R4 R3 K4 ["pages"]
       19 NEWTABLE                         R4 0 0
       21 SETTABLEKS                       R4 R3 K5 ["memberSet"]
       23 LOADNIL                          R4
       24 SETTABLEKS                       R4 R3 K6 ["requestedCount"]
       26 LOADNIL                          R4
       27 SETTABLEKS                       R4 R3 K7 ["targetCount"]
       29 LOADN                            R4 0
       30 SETTABLEKS                       R4 R3 K8 ["pageIndex"]
       32 LOADN                            R4 0
       33 SETTABLEKS                       R4 R3 K9 ["pageSize"]
       35 GETTABLEKS                       R4 R0 K0 ["lists"]
       37 SETTABLE                         R3 R4 R1
       38 RETURN                           R3 1

PROTO_4:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 MOVE                             R9 R6
        5 NAMECALL                         R7 R0 K0 ["upsertItem"]
        7 CALL                             R7 2 0
        8 FORGLOOP                         R2 2 ; [-5]
       10 RETURN                           R0 0

PROTO_5:
        0 MOVE                             R6 R1
        1 NAMECALL                         R4 R0 K0 ["getList"]
        3 CALL                             R4 2 1
        4 MOVE                             R5 R3
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 GETTABLEKS                       R10 R0 K1 ["getItemKey"]
       10 MOVE                             R11 R9
       11 CALL                             R10 1 1
       12 GETTABLEKS                       R11 R4 K2 ["memberSet"]
       14 LOADNIL                          R12
       15 SETTABLE                         R12 R11 R10
       16 FORGLOOP                         R5 2 ; [-9]
       18 GETTABLEKS                       R5 R4 K3 ["pages"]
       20 ADDK                             R6 R2 K4 [1]
       21 NEWTABLE                         R7 0 0
       23 SETTABLE                         R7 R5 R6
       24 MOVE                             R7 R1
       25 MOVE                             R8 R2
       26 MOVE                             R9 R3
       27 NAMECALL                         R5 R0 K5 ["upsertItemsForList"]
       29 CALL                             R5 4 0
       30 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R4 R3
        1 LOADNIL                          R5
        2 LOADNIL                          R6
        3 FORGPREP                         R4
        4 MOVE                             R11 R1
        5 MOVE                             R12 R2
        6 MOVE                             R13 R8
        7 NAMECALL                         R9 R0 K0 ["upsertItemForList"]
        9 CALL                             R9 4 0
       10 FORGLOOP                         R4 2 ; [-7]
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 JUMPIFNOTEQ                      R3 R0 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["getItemKey"]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R4 R0 K1 ["itemsByKey"]
        6 GETTABLE                         R3 R4 R2
        7 JUMPIF                           R3 ; [+2]
        8 NEWTABLE                         R3 0 0
       10 GETUPVAL                         R4 0
       11 MOVE                             R5 R1
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R3
       14 CALL                             R4 2 1
       15 JUMPIF                           R4 ; [+2]
       16 LOADB                            R5 0
       17 RETURN                           R5 1
       18 GETTABLEKS                       R5 R0 K1 ["itemsByKey"]
       20 GETUPVAL                         R6 1
       21 MOVE                             R7 R3
       22 MOVE                             R8 R1
       23 CALL                             R6 2 1
       24 SETTABLE                         R6 R5 R2
       25 GETTABLEKS                       R5 R0 K2 ["lists"]
       27 LOADNIL                          R6
       28 LOADNIL                          R7
       29 FORGPREP                         R5
       30 GETTABLEKS                       R11 R9 K3 ["memberSet"]
       32 GETTABLE                         R10 R11 R2
       33 JUMPIFNOT                        R10 ; [+4]
       34 MOVE                             R12 R9
       35 NAMECALL                         R10 R0 K4 ["dirtyList"]
       37 CALL                             R10 2 0
       38 FORGLOOP                         R5 2 ; [-9]
       40 LOADB                            R5 1
       41 RETURN                           R5 1

PROTO_9:
        0 MOVE                             R6 R3
        1 NAMECALL                         R4 R0 K0 ["upsertItem"]
        3 CALL                             R4 2 1
        4 GETTABLEKS                       R5 R0 K1 ["getItemKey"]
        6 MOVE                             R6 R3
        7 CALL                             R5 1 1
        8 MOVE                             R8 R1
        9 NAMECALL                         R6 R0 K2 ["getList"]
       11 CALL                             R6 2 1
       12 GETTABLEKS                       R8 R6 K3 ["memberSet"]
       14 GETTABLE                         R7 R8 R5
       15 JUMPIF                           R7 ; [+26]
       16 GETTABLEKS                       R7 R6 K3 ["memberSet"]
       18 LOADB                            R8 1
       19 SETTABLE                         R8 R7 R5
       20 GETTABLEKS                       R8 R6 K4 ["pages"]
       22 ADDK                             R9 R2 K5 [1]
       23 GETTABLE                         R7 R8 R9
       24 JUMPIF                           R7 ; [+2]
       25 NEWTABLE                         R7 0 0
       27 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       29 MOVE                             R9 R7
       30 MOVE                             R10 R5
       31 GETUPVAL                         R8 0
       32 CALL                             R8 2 0
       33 GETTABLEKS                       R8 R6 K4 ["pages"]
       35 ADDK                             R9 R2 K5 [1]
       36 SETTABLE                         R7 R8 R9
       37 MOVE                             R10 R6
       38 NAMECALL                         R8 R0 K6 ["dirtyList"]
       40 CALL                             R8 2 0
       41 RETURN                           R0 0
       42 JUMPIFNOT                        R4 ; [+4]
       43 MOVE                             R9 R6
       44 NAMECALL                         R7 R0 K6 ["dirtyList"]
       46 CALL                             R7 2 0
       47 RETURN                           R0 0

PROTO_10:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["getList"]
        3 CALL                             R3 2 1
        4 SETTABLEKS                       R2 R3 K1 ["targetCount"]
        6 MOVE                             R6 R3
        7 NAMECALL                         R4 R0 K2 ["dirtyList"]
        9 CALL                             R4 2 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["itemsByKey"]
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 MOVE                             R7 R1
        6 MOVE                             R8 R6
        7 CALL                             R7 1 1
        8 JUMPIFNOT                        R7 ; [+4]
        9 MOVE                             R10 R7
       10 NAMECALL                         R8 R0 K1 ["upsertItem"]
       12 CALL                             R8 2 0
       13 FORGLOOP                         R2 2 ; [-9]
       15 RETURN                           R0 0

PROTO_12:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["getList"]
        3 CALL                             R3 2 1
        4 GETTABLEKS                       R4 R3 K1 ["memberSet"]
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 GETTABLEKS                       R10 R0 K2 ["itemsByKey"]
       11 GETTABLE                         R9 R10 R7
       12 MOVE                             R10 R2
       13 MOVE                             R11 R9
       14 CALL                             R10 1 1
       15 JUMPIFNOT                        R10 ; [+4]
       16 MOVE                             R13 R10
       17 NAMECALL                         R11 R0 K3 ["upsertItem"]
       19 CALL                             R11 2 0
       20 FORGLOOP                         R4 1 ; [-12]
       22 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["itemsByKey"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+2]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 GETTABLEKS                       R2 R0 K1 ["lists"]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 MOVE                             R9 R6
       12 MOVE                             R10 R1
       13 NAMECALL                         R7 R0 K2 ["removeItemFromList"]
       15 CALL                             R7 3 0
       16 FORGLOOP                         R2 2 ; [-6]
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_14:
        0 GETTABLEKS                       R4 R1 K0 ["memberSet"]
        2 GETTABLE                         R3 R4 R2
        3 JUMPIF                           R3 ; [+2]
        4 LOADB                            R3 0
        5 RETURN                           R3 1
        6 GETTABLEKS                       R3 R1 K0 ["memberSet"]
        8 LOADNIL                          R4
        9 SETTABLE                         R4 R3 R2
       10 GETTABLEKS                       R3 R1 K1 ["targetCount"]
       12 JUMPIFNOT                        R3 ; [+10]
       13 GETTABLEKS                       R3 R1 K1 ["targetCount"]
       15 LOADN                            R4 0
       16 JUMPIFNOTLT                      R4 R3 ; [+6]
       18 GETTABLEKS                       R3 R1 K1 ["targetCount"]
       20 SUBK                             R3 R3 K2 [1]
       21 SETTABLEKS                       R3 R1 K1 ["targetCount"]
       23 MOVE                             R5 R1
       24 NAMECALL                         R3 R0 K3 ["dirtyList"]
       26 CALL                             R3 2 0
       27 GETTABLEKS                       R3 R1 K4 ["pages"]
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 FORGPREP                         R3
       32 LENGTH                           R10 R7
       33 LOADN                            R8 1
       34 LOADN                            R9 255
       35 FORNPREP                         R8
       36 GETTABLE                         R11 R7 R10
       37 JUMPIFNOTEQ                      R11 R2 ; [+6]
       39 GETIMPORT                        R12 K7 [table.remove]
       41 MOVE                             R13 R7
       42 MOVE                             R14 R10
       43 CALL                             R12 2 0
       44 FORNLOOP                         R8
       45 FORGLOOP                         R3 2 ; [-14]
       47 LOADB                            R3 1
       48 RETURN                           R3 1

PROTO_15:
        0 GETTABLEKS                       R2 R1 K0 ["dirty"]
        2 JUMPIF                           R2 ; [+3]
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R1 K0 ["dirty"]
        6 NAMECALL                         R2 R0 K1 ["dirtyCache"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refresh"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["dirty"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["dirty"]
        7 GETIMPORT                        R1 K3 [task.defer]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

PROTO_18:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["dirty"]
        3 GETTABLEKS                       R1 R0 K1 ["lists"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R6 R5 K0 ["dirty"]
       10 JUMPIFNOT                        R6 ; [+4]
       11 MOVE                             R8 R5
       12 NAMECALL                         R6 R0 K2 ["updateList"]
       14 CALL                             R6 2 0
       15 FORGLOOP                         R1 2 ; [-8]
       17 GETTABLEKS                       R1 R0 K3 ["signal"]
       19 NAMECALL                         R1 R1 K4 ["Fire"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_19:
        0 LOADB                            R2 0
        1 SETTABLEKS                       R2 R1 K0 ["dirty"]
        3 NEWTABLE                         R2 0 0
        5 GETTABLEKS                       R3 R1 K1 ["pages"]
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 MOVE                             R8 R7
       11 LOADNIL                          R9
       12 LOADNIL                          R10
       13 FORGPREP                         R8
       14 GETTABLEKS                       R14 R0 K2 ["itemsByKey"]
       16 GETTABLE                         R13 R14 R12
       17 JUMPIFNOT                        R13 ; [+6]
       18 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
       20 MOVE                             R15 R2
       21 MOVE                             R16 R13
       22 GETUPVAL                         R14 0
       23 CALL                             R14 2 0
       24 FORGLOOP                         R8 2 ; [-11]
       26 FORGLOOP                         R3 2 ; [-17]
       28 GETTABLEKS                       R3 R1 K3 ["sortFn"]
       30 JUMPIFNOT                        R3 ; [+5]
       31 GETUPVAL                         R3 1
       32 MOVE                             R4 R2
       33 GETTABLEKS                       R5 R1 K3 ["sortFn"]
       35 CALL                             R3 2 0
       36 GETTABLEKS                       R4 R1 K5 ["targetCount"]
       38 ORK                              R3 R4 K4 [50]
       39 GETTABLEKS                       R4 R1 K5 ["targetCount"]
       41 JUMPIFEQKNIL                     R4 ; [+4]
       43 LENGTH                           R4 R2
       44 JUMPIFNOTLT                      R4 R3 ; [+20]
       46 LOADN                            R6 1
       47 LOADN                            R8 6
       48 LENGTH                           R10 R2
       49 SUB                              R9 R3 R10
       50 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       52 GETIMPORT                        R7 K8 [math.min]
       54 CALL                             R7 2 1
       55 MOVE                             R4 R7
       56 LOADN                            R5 1
       57 FORNPREP                         R4
       58 GETUPVAL                         R9 2
       59 FASTCALL2                        TABLE_INSERT R2 R9 ; [+3]
       61 MOVE                             R8 R2
       62 GETUPVAL                         R7 0
       63 CALL                             R7 2 0
       64 FORNLOOP                         R4
       65 SETTABLEKS                       R2 R1 K9 ["items"]
       67 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["items"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["alwaysRefetch"]
        7 JUMPIFNOT                        R0 ; [+12]
        8 GETUPVAL                         R0 2
        9 LOADN                            R1 0
       10 SETTABLEKS                       R1 R0 K2 ["pageIndex"]
       12 GETUPVAL                         R0 2
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K3 ["requestedCount"]
       16 GETUPVAL                         R0 2
       17 LOADNIL                          R1
       18 SETTABLEKS                       R1 R0 K4 ["targetCount"]
       20 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["items"]
        4 JUMPIFEQ                         R0 R1 ; [+6]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["items"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 3
       12 GETTABLEKS                       R0 R0 K1 ["signal"]
       14 NEWCLOSURE                       R2 P0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U1
       17 NAMECALL                         R0 R0 K2 ["Connect"]
       19 CALL                             R0 2 1
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K3 ["targetCount"]
       23 JUMPIFNOTEQKNIL                  R1 ; [+30]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K4 ["requestedCount"]
       28 JUMPIFNOTEQKNIL                  R1 ; [+25]
       30 GETUPVAL                         R1 1
       31 GETUPVAL                         R2 4
       32 GETTABLEKS                       R2 R2 K5 ["pageSize"]
       34 SETTABLEKS                       R2 R1 K4 ["requestedCount"]
       36 GETUPVAL                         R1 1
       37 GETUPVAL                         R2 4
       38 GETTABLEKS                       R2 R2 K5 ["pageSize"]
       40 SETTABLEKS                       R2 R1 K5 ["pageSize"]
       42 GETUPVAL                         R1 1
       43 GETUPVAL                         R2 4
       44 GETTABLEKS                       R2 R2 K6 ["sortFn"]
       46 SETTABLEKS                       R2 R1 K6 ["sortFn"]
       48 GETUPVAL                         R1 5
       49 GETUPVAL                         R2 6
       50 LOADN                            R3 0
       51 GETUPVAL                         R4 7
       52 GETUPVAL                         R5 8
       53 CALL                             R1 4 0
       54 GETUPVAL                         R1 1
       55 GETTABLEKS                       R1 R1 K7 ["dirty"]
       57 JUMPIFNOT                        R1 ; [+4]
       58 GETUPVAL                         R1 3
       59 NAMECALL                         R1 R1 K8 ["refresh"]
       61 CALL                             R1 1 0
       62 NEWCLOSURE                       R1 P1
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U4
       65 CAPTURE                          UPVAL U1
       66 RETURN                           R1 1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["targetCount"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 FASTCALL2                        MATH_MIN R2 R1 ; [+5]
        7 MOVE                             R4 R2
        8 MOVE                             R5 R1
        9 GETIMPORT                        R3 K3 [math.min]
       11 CALL                             R3 2 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["requestedCount"]
       15 JUMPIFEQKNIL                     R4 ; [+36]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K4 ["requestedCount"]
       20 JUMPIFNOTLT                      R4 R3 ; [+31]
       22 GETUPVAL                         R4 0
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R7 R7 K4 ["requestedCount"]
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R8 R8 K5 ["pageSize"]
       29 ADD                              R6 R7 R8
       30 FASTCALL2                        MATH_MIN R6 R2 ; [+4]
       32 MOVE                             R7 R2
       33 GETIMPORT                        R5 K3 [math.min]
       35 CALL                             R5 2 1
       36 SETTABLEKS                       R5 R4 K4 ["requestedCount"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R5 R4 K6 ["pageIndex"]
       41 ADDK                             R5 R5 K7 [1]
       42 SETTABLEKS                       R5 R4 K6 ["pageIndex"]
       44 GETUPVAL                         R4 2
       45 GETUPVAL                         R5 3
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K6 ["pageIndex"]
       49 GETUPVAL                         R7 4
       50 GETUPVAL                         R8 5
       51 CALL                             R4 4 0
       52 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R4 0
        1 NAMECALL                         R4 R4 K0 ["use"]
        3 CALL                             R4 1 1
        4 MOVE                             R7 R2
        5 NAMECALL                         R5 R0 K1 ["getList"]
        7 CALL                             R5 2 1
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R7 R5 K2 ["items"]
       11 CALL                             R6 1 2
       12 GETTABLEKS                       R8 R0 K3 ["getQueryDetails"]
       14 MOVE                             R9 R1
       15 CALL                             R8 1 1
       16 GETUPVAL                         R9 2
       17 NEWCLOSURE                       R10 P0
       18 CAPTURE                          VAL R6
       19 CAPTURE                          VAL R5
       20 CAPTURE                          VAL R7
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R8
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R4
       27 NEWTABLE                         R11 0 1
       29 MOVE                             R12 R2
       30 SETLIST                          R11 R12 1 [1]
       32 CALL                             R9 2 0
       33 GETUPVAL                         R9 3
       34 NEWCLOSURE                       R10 P1
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R8
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R4
       41 NEWTABLE                         R11 0 1
       43 MOVE                             R12 R2
       44 SETLIST                          R11 R12 1 [1]
       46 CALL                             R9 2 1
       47 MOVE                             R10 R6
       48 GETTABLEKS                       R11 R5 K4 ["targetCount"]
       50 MOVE                             R12 R9
       51 RETURN                           R10 3

PROTO_25:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["dirty"]
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K1 ["itemsByKey"]
        7 NEWTABLE                         R1 0 0
        9 SETTABLEKS                       R1 R0 K2 ["lists"]
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["Signal"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K6 ["Packages"]
       22 GETTABLEKS                       R4 R4 K10 ["Dash"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R4 R3 K11 ["join"]
       27 GETTABLEKS                       R5 R3 K12 ["some"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K6 ["Packages"]
       33 GETTABLEKS                       R7 R7 K13 ["React"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R7 R6 K14 ["useCallback"]
       38 GETTABLEKS                       R8 R6 K15 ["useEffect"]
       40 GETTABLEKS                       R9 R6 K16 ["useState"]
       42 GETIMPORT                        R10 K5 [require]
       44 GETTABLEKS                       R11 R0 K17 ["Src"]
       46 GETTABLEKS                       R11 R11 K8 ["Util"]
       48 GETTABLEKS                       R11 R11 K18 ["Telemetry"]
       50 GETTABLEKS                       R11 R11 K19 ["TelemetryContext"]
       52 CALL                             R10 1 1
       53 GETIMPORT                        R11 K22 [table.insert]
       55 GETIMPORT                        R12 K24 [table.sort]
       57 NEWTABLE                         R13 32 0
       59 DUPTABLE                         R14 K26 [{"IsPlaceholder"}]
       60 LOADB                            R15 1
       61 SETTABLEKS                       R15 R14 K25 ["IsPlaceholder"]
       63 DUPCLOSURE                       R15 K27 [PROTO_2]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R13
       66 SETTABLEKS                       R15 R13 K28 ["new"]
       68 DUPCLOSURE                       R15 K29 [PROTO_3]
       69 SETTABLEKS                       R15 R13 K30 ["getList"]
       71 DUPCLOSURE                       R15 K31 [PROTO_4]
       72 SETTABLEKS                       R15 R13 K32 ["upsertItems"]
       74 DUPCLOSURE                       R15 K33 [PROTO_5]
       75 SETTABLEKS                       R15 R13 K34 ["setItemsForPage"]
       77 DUPCLOSURE                       R15 K35 [PROTO_6]
       78 SETTABLEKS                       R15 R13 K36 ["upsertItemsForList"]
       80 DUPCLOSURE                       R15 K37 [PROTO_8]
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R4
       83 SETTABLEKS                       R15 R13 K38 ["upsertItem"]
       85 DUPCLOSURE                       R15 K39 [PROTO_9]
       86 CAPTURE                          VAL R11
       87 SETTABLEKS                       R15 R13 K40 ["upsertItemForList"]
       89 DUPCLOSURE                       R15 K41 [PROTO_10]
       90 SETTABLEKS                       R15 R13 K42 ["setTargetCount"]
       92 DUPCLOSURE                       R15 K43 [PROTO_11]
       93 SETTABLEKS                       R15 R13 K44 ["updateItemsByFilter"]
       95 DUPCLOSURE                       R15 K45 [PROTO_12]
       96 SETTABLEKS                       R15 R13 K46 ["updateItemsInListByFilter"]
       98 DUPCLOSURE                       R15 K47 [PROTO_13]
       99 SETTABLEKS                       R15 R13 K48 ["deleteItem"]
      101 DUPCLOSURE                       R15 K49 [PROTO_14]
      102 SETTABLEKS                       R15 R13 K50 ["removeItemFromList"]
      104 DUPCLOSURE                       R15 K51 [PROTO_15]
      105 SETTABLEKS                       R15 R13 K52 ["dirtyList"]
      107 DUPCLOSURE                       R15 K53 [PROTO_17]
      108 SETTABLEKS                       R15 R13 K54 ["dirtyCache"]
      110 DUPCLOSURE                       R15 K55 [PROTO_18]
      111 SETTABLEKS                       R15 R13 K56 ["refresh"]
      113 DUPCLOSURE                       R15 K57 [PROTO_19]
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R14
      117 SETTABLEKS                       R15 R13 K58 ["updateList"]
      119 DUPCLOSURE                       R15 K59 [PROTO_24]
      120 CAPTURE                          VAL R10
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R7
      124 SETTABLEKS                       R15 R13 K60 ["use"]
      126 DUPCLOSURE                       R15 K61 [PROTO_25]
      127 SETTABLEKS                       R15 R13 K62 ["reset"]
      129 RETURN                           R13 1
