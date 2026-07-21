PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R2 K9 [{[1] = False, ["itemsByKey"], ["lists"], ["signal"], ["getItemKey"], ["getQueryDetails"], ["load"], ["unload"]}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K2 ["itemsByKey"]
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K3 ["lists"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K10 ["new"]
       12 CALL                             R3 0 1
       13 SETTABLEKS                       R3 R2 K4 ["signal"]
       15 SETTABLEKS                       R0 R2 K5 ["getItemKey"]
       17 SETTABLEKS                       R1 R2 K6 ["getQueryDetails"]
       19 DUPCLOSURE                       R3 K11 [PROTO_0]
       20 SETTABLEKS                       R3 R2 K7 ["load"]
       22 DUPCLOSURE                       R3 K12 [PROTO_1]
       23 SETTABLEKS                       R3 R2 K8 ["unload"]
       25 DUPTABLE                         R5 K14 [{"__index"}]
       26 GETUPVAL                         R6 1
       27 SETTABLEKS                       R6 R5 K13 ["__index"]
       29 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       31 MOVE                             R4 R2
       32 GETIMPORT                        R3 K16 [setmetatable]
       34 CALL                             R3 2 1
       35 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["lists"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+1]
        4 RETURN                           R2 1
        5 DUPTABLE                         R3 K13 [{["query"], ["dirty"] = True, ["items"], ["pages"], ["memberSet"], ["requestedCount"] = , ["targetCount"] = , ["pageIndex"] = 0, ["pageSize"] = 0}]
        6 SETTABLEKS                       R1 R3 K1 ["query"]
        8 NEWTABLE                         R4 0 0
       10 SETTABLEKS                       R4 R3 K4 ["items"]
       12 NEWTABLE                         R4 0 0
       14 SETTABLEKS                       R4 R3 K5 ["pages"]
       16 NEWTABLE                         R4 0 0
       18 SETTABLEKS                       R4 R3 K6 ["memberSet"]
       20 GETTABLEKS                       R4 R0 K0 ["lists"]
       22 SETTABLE                         R3 R4 R1
       23 RETURN                           R3 1

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
        0 GETTABLEKS                       R3 R0 K0 ["itemsByKey"]
        2 FASTCALL1                        TOSTRING R1 ; [+3]
        3 MOVE                             R5 R1
        4 GETIMPORT                        R4 K2 [tostring]
        6 CALL                             R4 1 1
        7 GETTABLE                         R2 R3 R4
        8 RETURN                           R2 1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 JUMPIFNOTEQ                      R3 R0 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 RETURN                           R2 1

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["getList"]
        3 CALL                             R3 2 1
        4 SETTABLEKS                       R2 R3 K1 ["targetCount"]
        6 MOVE                             R6 R3
        7 NAMECALL                         R4 R0 K2 ["dirtyList"]
        9 CALL                             R4 2 0
       10 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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
       34 LOADN                            R9 -1
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

PROTO_16:
        0 GETTABLEKS                       R2 R1 K0 ["dirty"]
        2 JUMPIF                           R2 ; [+3]
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R1 K0 ["dirty"]
        6 NAMECALL                         R2 R0 K1 ["dirtyCache"]
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refresh"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+33]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["needsRefetch"]
        5 JUMPIFNOT                        R0 ; [+29]
        6 GETUPVAL                         R0 1
        7 LOADB                            R1 0
        8 SETTABLEKS                       R1 R0 K0 ["needsRefetch"]
       10 GETUPVAL                         R0 1
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K1 ["pageSize"]
       14 SETTABLEKS                       R1 R0 K2 ["requestedCount"]
       16 GETUPVAL                         R0 1
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K1 ["pageSize"]
       20 SETTABLEKS                       R1 R0 K1 ["pageSize"]
       22 GETUPVAL                         R0 1
       23 GETUPVAL                         R1 2
       24 GETTABLEKS                       R1 R1 K3 ["sortFn"]
       26 SETTABLEKS                       R1 R0 K3 ["sortFn"]
       28 GETUPVAL                         R0 3
       29 GETUPVAL                         R1 4
       30 LOADN                            R2 0
       31 GETUPVAL                         R3 5
       32 LOADNIL                          R4
       33 GETUPVAL                         R5 6
       34 CALL                             R0 5 0
       35 GETUPVAL                         R0 7
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R1 R1 K4 ["items"]
       39 CALL                             R0 1 0
       40 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 3
       13 GETTABLEKS                       R0 R0 K1 ["alwaysRefetch"]
       15 JUMPIFNOT                        R0 ; [+12]
       16 GETUPVAL                         R0 4
       17 LOADN                            R1 0
       18 SETTABLEKS                       R1 R0 K2 ["pageIndex"]
       20 GETUPVAL                         R0 4
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K3 ["requestedCount"]
       24 GETUPVAL                         R0 4
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K4 ["targetCount"]
       28 RETURN                           R0 0

PROTO_24:
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
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          UPVAL U8
       21 CAPTURE                          UPVAL U9
       22 CAPTURE                          UPVAL U2
       23 NAMECALL                         R0 R0 K2 ["Connect"]
       25 CALL                             R0 2 1
       26 LOADNIL                          R1
       27 GETUPVAL                         R2 10
       28 JUMPIFNOT                        R2 ; [+17]
       29 GETUPVAL                         R2 5
       30 GETTABLEKS                       R2 R2 K3 ["alwaysRefetch"]
       32 JUMPIFNOT                        R2 ; [+13]
       33 GETUPVAL                         R2 3
       34 GETTABLEKS                       R2 R2 K4 ["focusChangedSignal"]
       36 JUMPIFNOT                        R2 ; [+9]
       37 GETUPVAL                         R2 3
       38 GETTABLEKS                       R2 R2 K4 ["focusChangedSignal"]
       40 NEWCLOSURE                       R4 P1
       41 CAPTURE                          UPVAL U11
       42 NAMECALL                         R2 R2 K2 ["Connect"]
       44 CALL                             R2 2 1
       45 MOVE                             R1 R2
       46 GETUPVAL                         R2 1
       47 GETTABLEKS                       R2 R2 K5 ["targetCount"]
       49 JUMPIFNOTEQKNIL                  R2 ; [+37]
       51 GETUPVAL                         R2 1
       52 GETTABLEKS                       R2 R2 K6 ["requestedCount"]
       54 JUMPIFNOTEQKNIL                  R2 ; [+32]
       56 GETUPVAL                         R2 1
       57 GETUPVAL                         R3 5
       58 GETTABLEKS                       R3 R3 K7 ["pageSize"]
       60 SETTABLEKS                       R3 R2 K6 ["requestedCount"]
       62 GETUPVAL                         R2 1
       63 GETUPVAL                         R3 5
       64 GETTABLEKS                       R3 R3 K7 ["pageSize"]
       66 SETTABLEKS                       R3 R2 K7 ["pageSize"]
       68 GETUPVAL                         R2 1
       69 GETUPVAL                         R3 5
       70 GETTABLEKS                       R3 R3 K8 ["sortFn"]
       72 SETTABLEKS                       R3 R2 K8 ["sortFn"]
       74 GETUPVAL                         R2 4
       75 JUMPIFNOT                        R2 ; [+4]
       76 GETUPVAL                         R2 1
       77 LOADNIL                          R3
       78 SETTABLEKS                       R3 R2 K9 ["needsRefetch"]
       80 GETUPVAL                         R2 6
       81 GETUPVAL                         R3 7
       82 LOADN                            R4 0
       83 GETUPVAL                         R5 8
       84 LOADNIL                          R6
       85 GETUPVAL                         R7 9
       86 CALL                             R2 5 0
       87 GETUPVAL                         R2 1
       88 GETTABLEKS                       R2 R2 K10 ["dirty"]
       90 JUMPIFNOT                        R2 ; [+4]
       91 GETUPVAL                         R2 3
       92 NAMECALL                         R2 R2 K11 ["refresh"]
       94 CALL                             R2 1 0
       95 NEWCLOSURE                       R2 P2
       96 CAPTURE                          VAL R0
       97 CAPTURE                          UPVAL U10
       98 CAPTURE                          REF R1
       99 CAPTURE                          UPVAL U5
      100 CAPTURE                          UPVAL U1
      101 CLOSEUPVALS                      R1
      102 RETURN                           R2 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+14]
        2 LOADN                            R2 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["pageIndex"]
        6 LOADN                            R1 1
        7 FORNPREP                         R0
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 MOVE                             R5 R2
       11 GETUPVAL                         R6 4
       12 LOADB                            R7 1
       13 GETUPVAL                         R8 5
       14 CALL                             R3 5 0
       15 FORNLOOP                         R0
       16 GETUPVAL                         R0 6
       17 CALL                             R0 0 0
       18 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R0 K2 [task.delay]
        2 GETUPVAL                         R1 1
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CALL                             R0 2 1
       12 SETUPVAL                         R0 0
       13 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETIMPORT                        R0 K2 [task.cancel]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADNIL                          R0
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          REF R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          UPVAL U7
       13 CAPTURE                          VAL R1
       14 GETIMPORT                        R2 K2 [task.delay]
       16 GETUPVAL                         R3 1
       17 NEWCLOSURE                       R4 P1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U7
       24 CAPTURE                          VAL R1
       25 CALL                             R2 2 1
       26 MOVE                             R0 R2
       27 NEWCLOSURE                       R2 P2
       28 CAPTURE                          UPVAL U0
       29 CAPTURE                          REF R0
       30 CLOSEUPVALS                      R0
       31 RETURN                           R2 1

PROTO_29:
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
       15 JUMPIFEQKNIL                     R4 ; [+37]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K4 ["requestedCount"]
       20 JUMPIFNOTLT                      R4 R3 ; [+32]
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
       50 LOADNIL                          R8
       51 GETUPVAL                         R9 5
       52 CALL                             R4 5 0
       53 RETURN                           R0 0

PROTO_30:
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
       16 GETUPVAL                         R9 1
       17 LOADB                            R10 1
       18 CALL                             R9 1 2
       19 GETUPVAL                         R11 2
       20 NEWCLOSURE                       R12 P0
       21 CAPTURE                          VAL R6
       22 CAPTURE                          VAL R5
       23 CAPTURE                          VAL R7
       24 CAPTURE                          VAL R0
       25 CAPTURE                          UPVAL U3
       26 CAPTURE                          VAL R8
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R10
       33 NEWTABLE                         R13 0 1
       35 MOVE                             R14 R2
       36 SETLIST                          R13 R14 1 [1]
       38 CALL                             R11 2 0
       39 GETUPVAL                         R11 2
       40 NEWCLOSURE                       R12 P1
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R9
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 NEWTABLE                         R13 0 2
       51 MOVE                             R14 R9
       52 MOVE                             R15 R2
       53 SETLIST                          R13 R14 2 [1]
       55 CALL                             R11 2 0
       56 GETUPVAL                         R11 6
       57 NEWCLOSURE                       R12 P2
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R4
       64 NEWTABLE                         R13 0 1
       66 MOVE                             R14 R2
       67 SETLIST                          R13 R14 1 [1]
       69 CALL                             R11 2 1
       70 MOVE                             R12 R6
       71 GETTABLEKS                       R13 R5 K4 ["targetCount"]
       73 MOVE                             R14 R11
       74 RETURN                           R12 3

PROTO_31:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["FFlagLuaStartPageRefreshRecentsOnRegistryUpdate is not enabled"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETTABLEKS                       R3 R0 K3 ["lists"]
        9 GETTABLE                         R2 R3 R1
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 NEWTABLE                         R3 0 0
       14 SETTABLEKS                       R3 R2 K4 ["pages"]
       16 NEWTABLE                         R3 0 0
       18 SETTABLEKS                       R3 R2 K5 ["memberSet"]
       20 LOADNIL                          R3
       21 SETTABLEKS                       R3 R2 K6 ["targetCount"]
       23 LOADNIL                          R3
       24 SETTABLEKS                       R3 R2 K7 ["requestedCount"]
       26 LOADN                            R3 0
       27 SETTABLEKS                       R3 R2 K8 ["pageIndex"]
       29 LOADB                            R3 1
       30 SETTABLEKS                       R3 R2 K9 ["dirty"]
       32 LOADB                            R3 1
       33 SETTABLEKS                       R3 R2 K10 ["needsRefetch"]
       35 NAMECALL                         R3 R0 K11 ["dirtyCache"]
       37 CALL                             R3 1 0
       38 RETURN                           R0 0

PROTO_32:
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
       53 GETIMPORT                        R11 K5 [require]
       55 GETTABLEKS                       R12 R0 K17 ["Src"]
       57 GETTABLEKS                       R12 R12 K20 ["SharedFlags"]
       59 GETTABLEKS                       R12 R12 K21 ["getFFlagLuaStartPageRefreshRecentsOnRegistryUpdate"]
       61 CALL                             R11 1 1
       62 CALL                             R11 0 1
       63 GETIMPORT                        R12 K5 [require]
       65 GETTABLEKS                       R13 R0 K17 ["Src"]
       67 GETTABLEKS                       R13 R13 K20 ["SharedFlags"]
       69 GETTABLEKS                       R13 R13 K22 ["getFFlagLuaStartPageAutoRefresh"]
       71 CALL                             R12 1 1
       72 CALL                             R12 0 1
       73 GETIMPORT                        R13 K5 [require]
       75 GETTABLEKS                       R14 R0 K17 ["Src"]
       77 GETTABLEKS                       R14 R14 K20 ["SharedFlags"]
       79 GETTABLEKS                       R14 R14 K23 ["getFIntStartPageAutoRefreshInterval"]
       81 CALL                             R13 1 1
       82 CALL                             R13 0 1
       83 GETIMPORT                        R14 K26 [table.insert]
       85 GETIMPORT                        R15 K28 [table.sort]
       87 DUPTABLE                         R16 K31 [{["focusChangedSignal"] = }]
       88 DUPTABLE                         R17 K34 [{["IsPlaceholder"] = True}]
       89 DUPCLOSURE                       R18 K35 [PROTO_2]
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R16
       92 SETTABLEKS                       R18 R16 K36 ["new"]
       94 DUPCLOSURE                       R18 K37 [PROTO_3]
       95 SETTABLEKS                       R18 R16 K38 ["getList"]
       97 DUPCLOSURE                       R18 K39 [PROTO_4]
       98 SETTABLEKS                       R18 R16 K40 ["upsertItems"]
      100 DUPCLOSURE                       R18 K41 [PROTO_5]
      101 SETTABLEKS                       R18 R16 K42 ["getItem"]
      103 DUPCLOSURE                       R18 K43 [PROTO_6]
      104 SETTABLEKS                       R18 R16 K44 ["setItemsForPage"]
      106 DUPCLOSURE                       R18 K45 [PROTO_7]
      107 SETTABLEKS                       R18 R16 K46 ["upsertItemsForList"]
      109 DUPCLOSURE                       R18 K47 [PROTO_9]
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R4
      112 SETTABLEKS                       R18 R16 K48 ["upsertItem"]
      114 DUPCLOSURE                       R18 K49 [PROTO_10]
      115 CAPTURE                          VAL R14
      116 SETTABLEKS                       R18 R16 K50 ["upsertItemForList"]
      118 DUPCLOSURE                       R18 K51 [PROTO_11]
      119 SETTABLEKS                       R18 R16 K52 ["setTargetCount"]
      121 DUPCLOSURE                       R18 K53 [PROTO_12]
      122 SETTABLEKS                       R18 R16 K54 ["updateItemsByFilter"]
      124 DUPCLOSURE                       R18 K55 [PROTO_13]
      125 SETTABLEKS                       R18 R16 K56 ["updateItemsInListByFilter"]
      127 DUPCLOSURE                       R18 K57 [PROTO_14]
      128 SETTABLEKS                       R18 R16 K58 ["deleteItem"]
      130 DUPCLOSURE                       R18 K59 [PROTO_15]
      131 SETTABLEKS                       R18 R16 K60 ["removeItemFromList"]
      133 DUPCLOSURE                       R18 K61 [PROTO_16]
      134 SETTABLEKS                       R18 R16 K62 ["dirtyList"]
      136 DUPCLOSURE                       R18 K63 [PROTO_18]
      137 SETTABLEKS                       R18 R16 K64 ["dirtyCache"]
      139 DUPCLOSURE                       R18 K65 [PROTO_19]
      140 SETTABLEKS                       R18 R16 K66 ["refresh"]
      142 DUPCLOSURE                       R18 K67 [PROTO_20]
      143 CAPTURE                          VAL R14
      144 CAPTURE                          VAL R15
      145 CAPTURE                          VAL R17
      146 SETTABLEKS                       R18 R16 K68 ["updateList"]
      148 DUPCLOSURE                       R18 K69 [PROTO_30]
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R11
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R7
      156 SETTABLEKS                       R18 R16 K70 ["use"]
      158 DUPCLOSURE                       R18 K71 [PROTO_31]
      159 CAPTURE                          VAL R11
      160 SETTABLEKS                       R18 R16 K72 ["invalidateList"]
      162 DUPCLOSURE                       R18 K73 [PROTO_32]
      163 SETTABLEKS                       R18 R16 K74 ["reset"]
      165 RETURN                           R16 1
