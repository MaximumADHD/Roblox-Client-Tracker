PROTO_0:
        0 GETIMPORT                        R2 K2 [string.find]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["^LoadedCode"]
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["function (%w+)$"]
        4 CALL                             R1 2 1
        5 DUPTABLE                         R2 K6 [{"source", "functionName"}]
        6 SETTABLEKS                       R0 R2 K4 ["source"]
        8 SETTABLEKS                       R1 R2 K5 ["functionName"]
       10 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["stack"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+4]
        4 NEWTABLE                         R1 0 0
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["filter"]
       10 GETIMPORT                        R2 K4 [string.split]
       12 GETTABLEKS                       R3 R0 K0 ["stack"]
       14 LOADK                            R4 K5 ["\n"]
       15 CALL                             R2 2 1
       16 DUPCLOSURE                       R3 K6 [PROTO_0]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K7 ["map"]
       21 MOVE                             R3 R1
       22 DUPCLOSURE                       R4 K8 [PROTO_1]
       23 CALL                             R2 2 -1
       24 RETURN                           R2 -1

PROTO_3:
        0 RETURN                           R0 1

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useContext"]
        3 DUPTABLE                         R1 K3 [{["_currentValue"] = }]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["useState"]
        8 LOADNIL                          R1
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K5 ["useReducer"]
       13 DUPCLOSURE                       R1 K6 [PROTO_3]
       14 LOADNIL                          R2
       15 CALL                             R0 2 0
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K7 ["useRef"]
       19 LOADNIL                          R1
       20 CALL                             R0 1 0
       21 GETUPVAL                         R0 0
       22 GETTABLEKS                       R0 R0 K8 ["useLayoutEffect"]
       24 DUPCLOSURE                       R1 K9 [PROTO_4]
       25 CALL                             R0 1 0
       26 GETUPVAL                         R0 0
       27 GETTABLEKS                       R0 R0 K10 ["useEffect"]
       29 DUPCLOSURE                       R1 K11 [PROTO_5]
       30 CALL                             R0 1 0
       31 GETUPVAL                         R0 0
       32 GETTABLEKS                       R0 R0 K12 ["useImperativeHandle"]
       34 LOADNIL                          R1
       35 DUPCLOSURE                       R2 K13 [PROTO_6]
       36 CALL                             R0 2 0
       37 GETUPVAL                         R0 0
       38 GETTABLEKS                       R0 R0 K14 ["useDebugValue"]
       40 LOADNIL                          R1
       41 CALL                             R0 1 0
       42 GETUPVAL                         R0 0
       43 GETTABLEKS                       R0 R0 K15 ["useCallback"]
       45 DUPCLOSURE                       R1 K16 [PROTO_7]
       46 CALL                             R0 1 0
       47 GETUPVAL                         R0 0
       48 GETTABLEKS                       R0 R0 K17 ["useMemo"]
       50 DUPCLOSURE                       R1 K18 [PROTO_8]
       51 CALL                             R0 1 0
       52 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+38]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["new"]
        6 CALL                             R0 0 1
        7 LOADNIL                          R1
        8 GETIMPORT                        R2 K2 [pcall]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U2
       12 CALL                             R2 1 2
       13 GETUPVAL                         R1 3
       14 NEWTABLE                         R4 0 0
       16 SETUPVAL                         R4 3
       17 JUMPIF                           R2 ; [+4]
       18 GETIMPORT                        R4 K4 [error]
       20 MOVE                             R5 R3
       21 CALL                             R4 1 0
       22 LOADN                            R4 1
       23 LENGTH                           R2 R1
       24 LOADN                            R3 1
       25 FORNPREP                         R2
       26 GETTABLE                         R5 R1 R4
       27 GETTABLEKS                       R8 R5 K5 ["primitive"]
       29 GETUPVAL                         R9 4
       30 GETTABLEKS                       R9 R9 K6 ["parse"]
       32 GETTABLEKS                       R10 R5 K7 ["stackError"]
       34 CALL                             R9 1 -1
       35 NAMECALL                         R6 R0 K8 ["set"]
       37 CALL                             R6 -1 0
       38 FORNLOOP                         R2
       39 SETUPVAL                         R0 0
       40 GETUPVAL                         R0 0
       41 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFEQKNIL                     R0 ; [+4]
        3 GETTABLEKS                       R1 R0 K0 ["next"]
        5 SETUPVAL                         R1 0
        6 RETURN                           R0 1

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_currentValue"]
        2 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K4 [{[1] = "Context", ["stackError"], ["value"]}]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R5 R5 K5 ["new"]
        5 CALL                             R5 0 1
        6 SETTABLEKS                       R5 R4 K2 ["stackError"]
        8 GETTABLEKS                       R5 R0 K6 ["_currentValue"]
       10 SETTABLEKS                       R5 R4 K3 ["value"]
       12 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       14 GETIMPORT                        R2 K9 [table.insert]
       16 CALL                             R2 2 0
       17 GETTABLEKS                       R2 R0 K6 ["_currentValue"]
       19 RETURN                           R2 1

PROTO_14:
        0 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+4]
        3 GETTABLEKS                       R3 R2 K0 ["next"]
        5 SETUPVAL                         R3 0
        6 MOVE                             R1 R2
        7 JUMPIFEQKNIL                     R1 ; [+4]
        9 GETTABLEKS                       R2 R1 K1 ["memoizedState"]
       11 JUMP                             ; [+11]
       12 FASTCALL1                        TYPEOF R0 ; [+3]
       13 MOVE                             R4 R0
       14 GETIMPORT                        R3 K3 [typeof]
       16 CALL                             R3 1 1
       17 JUMPIFNOTEQKS                    R3 K4 ["function"] ; [+4]
       19 MOVE                             R2 R0
       20 CALL                             R2 0 1
       21 JUMP                             ; [+1]
       22 MOVE                             R2 R0
       23 GETUPVAL                         R4 1
       24 DUPTABLE                         R5 K9 [{["primitive"] = "State", ["stackError"], ["value"]}]
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R6 R6 K10 ["new"]
       28 CALL                             R6 0 1
       29 SETTABLEKS                       R6 R5 K7 ["stackError"]
       31 SETTABLEKS                       R2 R5 K8 ["value"]
       33 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       35 GETIMPORT                        R3 K13 [table.insert]
       37 CALL                             R3 2 0
       38 MOVE                             R3 R2
       39 DUPCLOSURE                       R4 K14 [PROTO_14]
       40 RETURN                           R3 2

PROTO_16:
        0 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R4 0
        1 JUMPIFEQKNIL                     R4 ; [+4]
        3 GETTABLEKS                       R5 R4 K0 ["next"]
        5 SETUPVAL                         R5 0
        6 MOVE                             R3 R4
        7 LOADNIL                          R4
        8 JUMPIFEQKNIL                     R3 ; [+4]
       10 GETTABLEKS                       R4 R3 K1 ["memoizedState"]
       12 JUMP                             ; [+8]
       13 JUMPIFEQKNIL                     R2 ; [+6]
       15 MOVE                             R5 R2
       16 MOVE                             R6 R1
       17 CALL                             R5 1 1
       18 MOVE                             R4 R5
       19 JUMP                             ; [+1]
       20 MOVE                             R4 R1
       21 GETUPVAL                         R6 1
       22 DUPTABLE                         R7 K6 [{["primitive"] = "Reducer", ["stackError"], ["value"]}]
       23 GETUPVAL                         R8 2
       24 GETTABLEKS                       R8 R8 K7 ["new"]
       26 CALL                             R8 0 1
       27 SETTABLEKS                       R8 R7 K4 ["stackError"]
       29 SETTABLEKS                       R4 R7 K5 ["value"]
       31 FASTCALL2                        TABLE_INSERT R6 R7 ; [+3]
       33 GETIMPORT                        R5 K10 [table.insert]
       35 CALL                             R5 2 0
       36 MOVE                             R5 R4
       37 DUPCLOSURE                       R6 K11 [PROTO_16]
       38 RETURN                           R5 2

PROTO_18:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+4]
        3 GETTABLEKS                       R3 R2 K0 ["next"]
        5 SETUPVAL                         R3 0
        6 MOVE                             R1 R2
        7 JUMPIFEQKNIL                     R1 ; [+4]
        9 GETTABLEKS                       R2 R1 K1 ["memoizedState"]
       11 JUMP                             ; [+3]
       12 DUPTABLE                         R2 K3 [{"current"}]
       13 SETTABLEKS                       R0 R2 K2 ["current"]
       15 GETUPVAL                         R4 1
       16 DUPTABLE                         R5 K8 [{["primitive"] = "Ref", ["stackError"], ["value"]}]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K9 ["new"]
       20 CALL                             R6 0 1
       21 SETTABLEKS                       R6 R5 K6 ["stackError"]
       23 GETTABLEKS                       R6 R2 K2 ["current"]
       25 SETTABLEKS                       R6 R5 K7 ["value"]
       27 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       29 GETIMPORT                        R3 K12 [table.insert]
       31 CALL                             R3 2 0
       32 RETURN                           R2 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+4]
        3 GETTABLEKS                       R3 R2 K0 ["next"]
        5 SETUPVAL                         R3 0
        6 MOVE                             R1 R2
        7 JUMPIFEQKNIL                     R1 ; [+4]
        9 GETTABLEKS                       R2 R1 K1 ["memoizedState"]
       11 JUMP                             ; [+5]
       12 DUPTABLE                         R2 K3 [{"getValue"}]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R3 R2 K2 ["getValue"]
       17 GETUPVAL                         R4 1
       18 DUPTABLE                         R5 K8 [{["primitive"] = "Binding", ["stackError"], ["value"]}]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K9 ["new"]
       22 CALL                             R6 0 1
       23 SETTABLEKS                       R6 R5 K6 ["stackError"]
       25 NAMECALL                         R6 R2 K2 ["getValue"]
       27 CALL                             R6 1 1
       28 SETTABLEKS                       R6 R5 K7 ["value"]
       30 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       32 GETIMPORT                        R3 K12 [table.insert]
       34 CALL                             R3 2 0
       35 MOVE                             R3 R2
       36 DUPCLOSURE                       R4 K13 [PROTO_20]
       37 RETURN                           R3 2

PROTO_22:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+4]
        3 GETTABLEKS                       R3 R2 K0 ["next"]
        5 SETUPVAL                         R3 0
        6 GETUPVAL                         R3 1
        7 DUPTABLE                         R4 K5 [{["primitive"] = "LayoutEffect", ["stackError"], ["value"]}]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K6 ["new"]
       11 CALL                             R5 0 1
       12 SETTABLEKS                       R5 R4 K3 ["stackError"]
       14 SETTABLEKS                       R0 R4 K4 ["value"]
       16 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       18 GETIMPORT                        R2 K9 [table.insert]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 JUMPIFEQKNIL                     R2 ; [+4]
        3 GETTABLEKS                       R3 R2 K0 ["next"]
        5 SETUPVAL                         R3 0
        6 GETUPVAL                         R3 1
        7 DUPTABLE                         R4 K5 [{["primitive"] = "Effect", ["stackError"], ["value"]}]
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K6 ["new"]
       11 CALL                             R5 0 1
       12 SETTABLEKS                       R5 R4 K3 ["stackError"]
       14 SETTABLEKS                       R0 R4 K4 ["value"]
       16 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       18 GETIMPORT                        R2 K9 [table.insert]
       20 CALL                             R2 2 0
       21 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+4]
        3 GETTABLEKS                       R4 R3 K0 ["next"]
        5 SETUPVAL                         R4 0
        6 LOADNIL                          R3
        7 JUMPIFEQKNIL                     R0 ; [+10]
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R5 R0
       11 GETIMPORT                        R4 K2 [typeof]
       13 CALL                             R4 1 1
       14 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+3]
       16 GETTABLEKS                       R3 R0 K4 ["current"]
       18 GETUPVAL                         R5 1
       19 DUPTABLE                         R6 K9 [{["primitive"] = "ImperativeHandle", ["stackError"], ["value"]}]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K10 ["new"]
       23 CALL                             R7 0 1
       24 SETTABLEKS                       R7 R6 K7 ["stackError"]
       26 SETTABLEKS                       R3 R6 K8 ["value"]
       28 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       30 GETIMPORT                        R4 K12 [table.insert]
       32 CALL                             R4 2 0
       33 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K4 [{[1] = "DebugValue", ["stackError"], ["value"]}]
        2 GETUPVAL                         R5 1
        3 GETTABLEKS                       R5 R5 K5 ["new"]
        5 CALL                             R5 0 1
        6 SETTABLEKS                       R5 R4 K2 ["stackError"]
        8 FASTCALL1                        TYPEOF R1 ; [+3]
        9 MOVE                             R7 R1
       10 GETIMPORT                        R6 K7 [typeof]
       12 CALL                             R6 1 1
       13 JUMPIFNOTEQKS                    R6 K8 ["function"] ; [+5]
       15 MOVE                             R5 R1
       16 MOVE                             R6 R0
       17 CALL                             R5 1 1
       18 JUMP                             ; [+1]
       19 MOVE                             R5 R0
       20 SETTABLEKS                       R5 R4 K3 ["value"]
       22 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       24 GETIMPORT                        R2 K11 [table.insert]
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+4]
        3 GETTABLEKS                       R4 R3 K0 ["next"]
        5 SETUPVAL                         R4 0
        6 MOVE                             R2 R3
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K5 [{["primitive"] = "Callback", ["stackError"], ["value"]}]
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R6 R6 K6 ["new"]
       12 CALL                             R6 0 1
       13 SETTABLEKS                       R6 R5 K3 ["stackError"]
       15 JUMPIFEQKNIL                     R2 ; [+5]
       17 GETTABLEKS                       R7 R2 K7 ["memoizedState"]
       19 GETTABLEN                        R6 R7 1
       20 JUMP                             ; [+1]
       21 MOVE                             R6 R0
       22 SETTABLEKS                       R6 R5 K4 ["value"]
       24 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       26 GETIMPORT                        R3 K10 [table.insert]
       28 CALL                             R3 2 0
       29 RETURN                           R0 1

PROTO_27:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+4]
        3 GETTABLEKS                       R4 R3 K0 ["next"]
        5 SETUPVAL                         R4 0
        6 MOVE                             R2 R3
        7 JUMPIFEQKNIL                     R2 ; [+5]
        9 GETTABLEKS                       R4 R2 K1 ["memoizedState"]
       11 GETTABLEN                        R3 R4 1
       12 JUMP                             ; [+6]
       13 NEWTABLE                         R3 0 1
       15 MOVE                             R4 R0
       16 CALL                             R4 0 -1
       17 SETLIST                          R3 R4 -1 [1]
       19 GETUPVAL                         R5 1
       20 DUPTABLE                         R6 K6 [{["primitive"] = "Memo", ["stackError"], ["value"]}]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R7 R7 K7 ["new"]
       24 CALL                             R7 0 1
       25 SETTABLEKS                       R7 R6 K4 ["stackError"]
       27 SETTABLEKS                       R3 R6 K5 ["value"]
       29 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       31 GETIMPORT                        R4 K10 [table.insert]
       33 CALL                             R4 2 0
       34 FASTCALL1                        TABLE_UNPACK R3 ; [+3]
       35 MOVE                             R5 R3
       36 GETIMPORT                        R4 K12 [table.unpack]
       38 CALL                             R4 1 -1
       39 RETURN                           R4 -1

PROTO_28:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+4]
        3 GETTABLEKS                       R4 R3 K0 ["next"]
        5 SETUPVAL                         R4 0
        6 GETUPVAL                         R3 0
        7 JUMPIFEQKNIL                     R3 ; [+4]
        9 GETTABLEKS                       R4 R3 K0 ["next"]
       11 SETUPVAL                         R4 0
       12 GETUPVAL                         R3 0
       13 JUMPIFEQKNIL                     R3 ; [+4]
       15 GETTABLEKS                       R4 R3 K0 ["next"]
       17 SETUPVAL                         R4 0
       18 GETUPVAL                         R3 0
       19 JUMPIFEQKNIL                     R3 ; [+4]
       21 GETTABLEKS                       R4 R3 K0 ["next"]
       23 SETUPVAL                         R4 0
       24 MOVE                             R3 R1
       25 GETTABLEKS                       R4 R0 K1 ["_source"]
       27 CALL                             R3 1 1
       28 GETUPVAL                         R5 1
       29 DUPTABLE                         R6 K6 [{["primitive"] = "MutableSource", ["stackError"], ["value"]}]
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K7 ["new"]
       33 CALL                             R7 0 1
       34 SETTABLEKS                       R7 R6 K4 ["stackError"]
       36 SETTABLEKS                       R3 R6 K5 ["value"]
       38 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       40 GETIMPORT                        R4 K10 [table.insert]
       42 CALL                             R4 2 0
       43 RETURN                           R3 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+4]
        3 GETTABLEKS                       R2 R1 K0 ["next"]
        5 SETUPVAL                         R2 0
        6 MOVE                             R0 R1
        7 GETUPVAL                         R1 1
        8 JUMPIFNOT                        R1 ; [+12]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K1 ["mode"]
       12 GETUPVAL                         R2 2
       13 JUMPIFNOTEQ                      R1 R2 ; [+7]
       15 GETUPVAL                         R1 0
       16 JUMPIFEQKNIL                     R1 ; [+4]
       18 GETTABLEKS                       R2 R1 K0 ["next"]
       20 SETUPVAL                         R2 0
       21 JUMPIFNOTEQKNIL                  R0 ; [+3]
       23 LOADNIL                          R1
       24 JUMP                             ; [+2]
       25 GETTABLEKS                       R1 R0 K2 ["memoizedState"]
       27 JUMPIFNOT                        R1 ; [+6]
       28 GETTABLEKS                       R2 R1 K3 ["$$typeof"]
       30 GETUPVAL                         R3 3
       31 JUMPIFNOTEQ                      R2 R3 ; [+2]
       33 LOADNIL                          R1
       34 GETUPVAL                         R3 4
       35 DUPTABLE                         R4 K8 [{["primitive"] = "OpaqueIdentifier", ["stackError"], ["value"]}]
       36 GETUPVAL                         R5 5
       37 GETTABLEKS                       R5 R5 K9 ["new"]
       39 CALL                             R5 0 1
       40 SETTABLEKS                       R5 R4 K6 ["stackError"]
       42 SETTABLEKS                       R1 R4 K7 ["value"]
       44 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       46 GETIMPORT                        R2 K12 [table.insert]
       48 CALL                             R2 2 0
       49 RETURN                           R1 1

PROTO_30:
        0 GETTABLE                         R3 R1 R2
        1 GETTABLEKS                       R3 R3 K0 ["source"]
        3 LOADN                            R6 1
        4 LENGTH                           R4 R0
        5 LOADN                            R5 1
        6 FORNPREP                         R4
        7 GETTABLE                         R7 R0 R6
        8 GETTABLEKS                       R7 R7 K0 ["source"]
       10 JUMPIFNOTEQ                      R7 R3 ; [+25]
       12 ADDK                             R7 R2 K1 [1]
       13 ADDK                             R8 R6 K1 [1]
       14 LOADB                            R9 0
       15 LENGTH                           R10 R1
       16 JUMPIFNOTLE                      R7 R10 ; [+17]
       18 LENGTH                           R10 R0
       19 JUMPIFNOTLE                      R8 R10 ; [+14]
       21 GETTABLE                         R10 R0 R8
       22 GETTABLEKS                       R10 R10 K0 ["source"]
       24 GETTABLE                         R11 R1 R7
       25 GETTABLEKS                       R11 R11 K0 ["source"]
       27 JUMPIFEQ                         R10 R11 ; [+3]
       29 LOADB                            R9 1
       30 JUMP                             ; [+3]
       31 ADDK                             R7 R7 K1 [1]
       32 ADDK                             R8 R8 K1 [1]
       33 JUMPBACK                         ; [-19]
       34 JUMPIF                           R9 ; [+1]
       35 RETURN                           R6 1
       36 FORNLOOP                         R4
       37 LOADN                            R4 -1
       38 RETURN                           R4 1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 MOVE                             R4 R0
        3 GETUPVAL                         R5 1
        4 CALL                             R2 3 1
        5 JUMPIFEQKN                       R2 K0 [-1] ; [+2]
        7 RETURN                           R2 1
        8 LOADN                            R5 1
        9 LENGTH                           R7 R0
       10 FASTCALL2K                       MATH_MIN R7 K1 ; [+4]
       12 LOADK                            R8 K1 [5]
       13 GETIMPORT                        R6 K4 [math.min]
       15 CALL                             R6 2 1
       16 MOVE                             R3 R6
       17 LOADN                            R4 1
       18 FORNPREP                         R3
       19 GETUPVAL                         R6 0
       20 MOVE                             R7 R1
       21 MOVE                             R8 R0
       22 MOVE                             R9 R5
       23 CALL                             R6 3 1
       24 MOVE                             R2 R6
       25 JUMPIFEQKN                       R2 K0 [-1] ; [+3]
       27 SETUPVAL                         R5 1
       28 RETURN                           R2 1
       29 FORNLOOP                         R3
       30 LOADN                            R3 -1
       31 RETURN                           R3 1

PROTO_32:
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        3 LOADB                            R2 0
        4 RETURN                           R2 1
        5 LOADK                            R3 K1 ["use"]
        6 FASTCALL1                        TOSTRING R1 ; [+3]
        7 MOVE                             R5 R1
        8 GETIMPORT                        R4 K3 [tostring]
       10 CALL                             R4 1 1
       11 CONCAT                           R2 R3 R4
       12 FASTCALL1                        STRING_LEN R0 ; [+3]
       13 MOVE                             R4 R0
       14 GETIMPORT                        R3 K6 [string.len]
       16 CALL                             R3 1 1
       17 FASTCALL1                        STRING_LEN R2 ; [+3]
       18 MOVE                             R5 R2
       19 GETIMPORT                        R4 K6 [string.len]
       21 CALL                             R4 1 1
       22 JUMPIFNOTLT                      R3 R4 ; [+3]
       24 LOADB                            R3 0
       25 RETURN                           R3 1
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K7 ["lastIndexOf"]
       29 MOVE                             R5 R0
       30 MOVE                             R6 R2
       31 CALL                             R4 2 1
       32 FASTCALL1                        STRING_LEN R0 ; [+3]
       33 MOVE                             R8 R0
       34 GETIMPORT                        R7 K6 [string.len]
       36 CALL                             R7 1 1
       37 FASTCALL1                        STRING_LEN R2 ; [+3]
       38 MOVE                             R9 R2
       39 GETIMPORT                        R8 K6 [string.len]
       41 CALL                             R8 1 1
       42 SUB                              R6 R7 R8
       43 ADDK                             R5 R6 K8 [1]
       44 JUMPIFEQ                         R4 R5 ; [+2]
       46 LOADB                            R3 0 +1
       47 LOADB                            R3 1
       48 RETURN                           R3 1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R5 R1 K0 ["primitive"]
        4 NAMECALL                         R3 R2 K1 ["get"]
        6 CALL                             R3 2 1
        7 JUMPIFNOTEQKNIL                  R3 ; [+3]
        9 LOADN                            R4 -1
       10 RETURN                           R4 1
       11 LOADN                            R6 1
       12 LENGTH                           R9 R3
       13 LENGTH                           R10 R0
       14 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       16 GETIMPORT                        R8 K4 [math.min]
       18 CALL                             R8 2 1
       19 MOVE                             R4 R8
       20 LOADN                            R5 1
       21 FORNPREP                         R4
       22 MOVE                             R7 R6
       23 GETTABLE                         R8 R3 R7
       24 GETTABLEKS                       R8 R8 K5 ["source"]
       26 GETTABLE                         R9 R0 R7
       27 GETTABLEKS                       R9 R9 K5 ["source"]
       29 JUMPIFEQ                         R8 R9 ; [+118]
       31 LENGTH                           R8 R0
       32 JUMPIFNOTLT                      R7 R8 ; [+56]
       34 GETTABLE                         R9 R0 R7
       35 GETTABLEKS                       R9 R9 K6 ["functionName"]
       37 GETTABLEKS                       R10 R1 K0 ["primitive"]
       39 JUMPIFNOT                        R9 ; [+2]
       40 JUMPIFNOTEQKS                    R9 K7 [""] ; [+3]
       42 LOADB                            R8 0
       43 JUMP                             ; [+43]
       44 LOADK                            R12 K8 ["use"]
       45 FASTCALL1                        TOSTRING R10 ; [+3]
       46 MOVE                             R14 R10
       47 GETIMPORT                        R13 K10 [tostring]
       49 CALL                             R13 1 1
       50 CONCAT                           R11 R12 R13
       51 FASTCALL1                        STRING_LEN R9 ; [+3]
       52 MOVE                             R13 R9
       53 GETIMPORT                        R12 K13 [string.len]
       55 CALL                             R12 1 1
       56 FASTCALL1                        STRING_LEN R11 ; [+3]
       57 MOVE                             R14 R11
       58 GETIMPORT                        R13 K13 [string.len]
       60 CALL                             R13 1 1
       61 JUMPIFNOTLT                      R12 R13 ; [+3]
       63 LOADB                            R8 0
       64 JUMP                             ; [+22]
       65 GETUPVAL                         R12 1
       66 GETTABLEKS                       R12 R12 K14 ["lastIndexOf"]
       68 MOVE                             R13 R9
       69 MOVE                             R14 R11
       70 CALL                             R12 2 1
       71 FASTCALL1                        STRING_LEN R9 ; [+3]
       72 MOVE                             R16 R9
       73 GETIMPORT                        R15 K13 [string.len]
       75 CALL                             R15 1 1
       76 FASTCALL1                        STRING_LEN R11 ; [+3]
       77 MOVE                             R17 R11
       78 GETIMPORT                        R16 K13 [string.len]
       80 CALL                             R16 1 1
       81 SUB                              R14 R15 R16
       82 ADDK                             R13 R14 K15 [1]
       83 JUMPIFEQ                         R12 R13 ; [+2]
       85 LOADB                            R8 0 +1
       86 LOADB                            R8 1
       87 JUMPIFNOT                        R8 ; [+1]
       88 ADDK                             R7 R7 K15 [1]
       89 LENGTH                           R8 R0
       90 JUMPIFNOTLT                      R7 R8 ; [+56]
       92 GETTABLE                         R9 R0 R7
       93 GETTABLEKS                       R9 R9 K6 ["functionName"]
       95 GETTABLEKS                       R10 R1 K0 ["primitive"]
       97 JUMPIFNOT                        R9 ; [+2]
       98 JUMPIFNOTEQKS                    R9 K7 [""] ; [+3]
      100 LOADB                            R8 0
      101 JUMP                             ; [+43]
      102 LOADK                            R12 K8 ["use"]
      103 FASTCALL1                        TOSTRING R10 ; [+3]
      104 MOVE                             R14 R10
      105 GETIMPORT                        R13 K10 [tostring]
      107 CALL                             R13 1 1
      108 CONCAT                           R11 R12 R13
      109 FASTCALL1                        STRING_LEN R9 ; [+3]
      110 MOVE                             R13 R9
      111 GETIMPORT                        R12 K13 [string.len]
      113 CALL                             R12 1 1
      114 FASTCALL1                        STRING_LEN R11 ; [+3]
      115 MOVE                             R14 R11
      116 GETIMPORT                        R13 K13 [string.len]
      118 CALL                             R13 1 1
      119 JUMPIFNOTLT                      R12 R13 ; [+3]
      121 LOADB                            R8 0
      122 JUMP                             ; [+22]
      123 GETUPVAL                         R12 1
      124 GETTABLEKS                       R12 R12 K14 ["lastIndexOf"]
      126 MOVE                             R13 R9
      127 MOVE                             R14 R11
      128 CALL                             R12 2 1
      129 FASTCALL1                        STRING_LEN R9 ; [+3]
      130 MOVE                             R16 R9
      131 GETIMPORT                        R15 K13 [string.len]
      133 CALL                             R15 1 1
      134 FASTCALL1                        STRING_LEN R11 ; [+3]
      135 MOVE                             R17 R11
      136 GETIMPORT                        R16 K13 [string.len]
      138 CALL                             R16 1 1
      139 SUB                              R14 R15 R16
      140 ADDK                             R13 R14 K15 [1]
      141 JUMPIFEQ                         R12 R13 ; [+2]
      143 LOADB                            R8 0 +1
      144 LOADB                            R8 1
      145 JUMPIFNOT                        R8 ; [+1]
      146 ADDK                             R7 R7 K15 [1]
      147 RETURN                           R7 1
      148 FORNLOOP                         R4
      149 LOADN                            R4 -1
      150 RETURN                           R4 1

PROTO_34:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["parse"]
        3 GETTABLEKS                       R3 R1 K1 ["stackError"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 1
        7 MOVE                             R4 R0
        8 MOVE                             R5 R2
        9 CALL                             R3 2 1
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R2
       12 MOVE                             R6 R1
       13 CALL                             R4 2 1
       14 JUMPIFEQKN                       R3 K2 [-1] ; [+7]
       16 JUMPIFEQKN                       R4 K2 [-1] ; [+5]
       18 SUB                              R5 R3 R4
       19 LOADN                            R6 2
       20 JUMPIFNOTLT                      R5 R6 ; [+3]
       22 LOADNIL                          R5
       23 RETURN                           R5 1
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R5 R5 K3 ["slice"]
       27 MOVE                             R6 R2
       28 MOVE                             R7 R4
       29 SUBK                             R8 R3 K4 [1]
       30 CALL                             R5 3 -1
       31 RETURN                           R5 -1

PROTO_35:
        0 JUMPIF                           R0 ; [+2]
        1 LOADK                            R1 K0 [""]
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["lastIndexOf"]
        6 MOVE                             R2 R0
        7 LOADK                            R3 K2 ["."]
        8 CALL                             R1 2 1
        9 JUMPIFNOTEQKN                    R1 K3 [-1] ; [+2]
       11 LOADN                            R1 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K4 ["substr"]
       15 MOVE                             R3 R0
       16 MOVE                             R4 R1
       17 LOADN                            R5 3
       18 CALL                             R2 3 1
       19 JUMPIFNOTEQKS                    R2 K5 ["use"] ; [+2]
       21 ADDK                             R1 R1 K6 [3]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K4 ["substr"]
       25 MOVE                             R3 R0
       26 MOVE                             R4 R1
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 ADDK                             R1 R1 K0 [1]
        3 SETUPVAL                         R1 0
        4 RETURN                           R0 1

PROTO_37:
        0 NEWTABLE                         R2 0 0
        2 LOADNIL                          R3
        3 MOVE                             R4 R2
        4 LOADN                            R5 1
        5 NEWTABLE                         R6 0 0
        7 LOADN                            R9 1
        8 LENGTH                           R7 R1
        9 LOADN                            R8 1
       10 FORNPREP                         R7
       11 GETTABLE                         R10 R1 R9
       12 GETUPVAL                         R11 0
       13 MOVE                             R12 R0
       14 MOVE                             R13 R10
       15 CALL                             R11 2 1
       16 JUMPIFEQKNIL                     R11 ; [+96]
       18 LOADN                            R12 0
       19 JUMPIFEQKNIL                     R3 ; [+32]
       21 LENGTH                           R13 R11
       22 JUMPIFNOTLT                      R12 R13 ; [+18]
       24 LENGTH                           R13 R3
       25 JUMPIFNOTLT                      R12 R13 ; [+15]
       27 LENGTH                           R15 R11
       28 SUB                              R14 R15 R12
       29 GETTABLE                         R13 R11 R14
       30 GETTABLEKS                       R13 R13 K0 ["source"]
       32 LENGTH                           R16 R3
       33 SUB                              R15 R16 R12
       34 GETTABLE                         R14 R3 R15
       35 GETTABLEKS                       R14 R14 K0 ["source"]
       37 JUMPIFNOTEQ                      R13 R14 ; [+3]
       39 ADDK                             R12 R12 K1 [1]
       40 JUMPBACK                         ; [-20]
       41 LENGTH                           R16 R3
       42 SUBK                             R15 R16 K1 [1]
       43 ADDK                             R13 R12 K1 [1]
       44 LOADN                            R14 -1
       45 FORNPREP                         R13
       46 GETIMPORT                        R16 K4 [table.remove]
       48 MOVE                             R17 R6
       49 CALL                             R16 1 1
       50 MOVE                             R4 R16
       51 FORNLOOP                         R13
       52 LENGTH                           R16 R11
       53 SUB                              R15 R16 R12
       54 LOADN                            R13 2
       55 LOADN                            R14 -1
       56 FORNPREP                         R13
       57 NEWTABLE                         R16 0 0
       59 DUPTABLE                         R19 K12 [{["id"] = , ["isStateEditable"] = False, ["name"], ["value"] = , ["subHooks"]}]
       60 SUBK                             R22 R15 K1 [1]
       61 GETTABLE                         R21 R11 R22
       62 GETTABLEKS                       R21 R21 K13 ["functionName"]
       64 JUMPIF                           R21 ; [+2]
       65 LOADK                            R20 K14 [""]
       66 JUMP                             ; [+26]
       67 GETUPVAL                         R22 1
       68 GETTABLEKS                       R22 R22 K15 ["lastIndexOf"]
       70 MOVE                             R23 R21
       71 LOADK                            R24 K16 ["."]
       72 CALL                             R22 2 1
       73 JUMPIFNOTEQKN                    R22 K17 [-1] ; [+2]
       75 LOADN                            R22 1
       76 GETUPVAL                         R23 1
       77 GETTABLEKS                       R23 R23 K18 ["substr"]
       79 MOVE                             R24 R21
       80 MOVE                             R25 R22
       81 LOADN                            R26 3
       82 CALL                             R23 3 1
       83 JUMPIFNOTEQKS                    R23 K19 ["use"] ; [+2]
       85 ADDK                             R22 R22 K20 [3]
       86 GETUPVAL                         R23 1
       87 GETTABLEKS                       R23 R23 K18 ["substr"]
       89 MOVE                             R24 R21
       90 MOVE                             R25 R22
       91 CALL                             R23 2 1
       92 MOVE                             R20 R23
       93 SETTABLEKS                       R20 R19 K9 ["name"]
       95 SETTABLEKS                       R16 R19 K11 ["subHooks"]
       97 FASTCALL2                        TABLE_INSERT R4 R19 ; [+4]
       99 MOVE                             R18 R4
      100 GETIMPORT                        R17 K22 [table.insert]
      102 CALL                             R17 2 0
      103 FASTCALL2                        TABLE_INSERT R6 R4 ; [+5]
      105 MOVE                             R18 R6
      106 MOVE                             R19 R4
      107 GETIMPORT                        R17 K22 [table.insert]
      109 CALL                             R17 2 0
      110 MOVE                             R4 R16
      111 FORNLOOP                         R13
      112 MOVE                             R3 R11
      113 NEWCLOSURE                       R12 P0
      114 CAPTURE                          REF R5
      115 GETTABLEKS                       R13 R10 K23 ["primitive"]
      117 JUMPIFEQKS                       R13 K24 ["Context"] ; [+3]
      119 JUMPIFNOTEQKS                    R13 K25 ["DebugValue"] ; [+3]
      121 LOADNIL                          R14
      122 JUMP                             ; [+3]
      123 MOVE                             R15 R5
      124 ADDK                             R5 R5 K1 [1]
      125 MOVE                             R14 R15
      126 LOADB                            R15 1
      127 JUMPIFEQKS                       R13 K26 ["Reducer"] ; [+5]
      129 JUMPIFEQKS                       R13 K27 ["State"] ; [+2]
      131 LOADB                            R15 0 +1
      132 LOADB                            R15 1
      133 DUPTABLE                         R18 K28 [{"id", "isStateEditable", "name", "value", "subHooks"}]
      134 SETTABLEKS                       R14 R18 K5 ["id"]
      136 SETTABLEKS                       R15 R18 K7 ["isStateEditable"]
      138 SETTABLEKS                       R13 R18 K9 ["name"]
      140 GETTABLEKS                       R19 R10 K10 ["value"]
      142 SETTABLEKS                       R19 R18 K10 ["value"]
      144 NEWTABLE                         R19 0 0
      146 SETTABLEKS                       R19 R18 K11 ["subHooks"]
      148 FASTCALL2                        TABLE_INSERT R4 R18 ; [+4]
      150 MOVE                             R17 R4
      151 GETIMPORT                        R16 K22 [table.insert]
      153 CALL                             R16 2 0
      154 FORNLOOP                         R7
      155 GETUPVAL                         R7 2
      156 MOVE                             R8 R2
      157 LOADNIL                          R9
      158 CALL                             R7 2 0
      159 CLOSEUPVALS                      R5
      160 RETURN                           R2 1

PROTO_38:
        0 GETTABLEKS                       R1 R0 K0 ["value"]
        2 RETURN                           R1 1

PROTO_39:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R3 1
        3 LENGTH                           R4 R0
        4 JUMPIFNOTLE                      R3 R4 ; [+34]
        6 GETTABLE                         R4 R0 R3
        7 GETTABLEKS                       R5 R4 K0 ["name"]
        9 JUMPIFNOTEQKS                    R5 K1 ["DebugValue"] ; [+22]
       11 GETTABLEKS                       R6 R4 K2 ["subHooks"]
       13 LENGTH                           R5 R6
       14 JUMPIFNOTEQKN                    R5 K3 [0] ; [+17]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K4 ["splice"]
       19 MOVE                             R6 R0
       20 MOVE                             R7 R3
       21 LOADN                            R8 1
       22 CALL                             R5 3 0
       23 SUBK                             R3 R3 K5 [1]
       24 FASTCALL2                        TABLE_INSERT R2 R4 ; [+5]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R4
       28 GETIMPORT                        R5 K8 [table.insert]
       30 CALL                             R5 2 0
       31 JUMP                             ; [+5]
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R6 R4 K2 ["subHooks"]
       35 MOVE                             R7 R4
       36 CALL                             R5 2 0
       37 ADDK                             R3 R3 K5 [1]
       38 JUMPBACK                         ; [-36]
       39 JUMPIFEQKNIL                     R1 ; [+22]
       41 LENGTH                           R3 R2
       42 JUMPIFNOTEQKN                    R3 K5 [1] ; [+7]
       44 GETTABLEN                        R3 R2 1
       45 GETTABLEKS                       R3 R3 K9 ["value"]
       47 SETTABLEKS                       R3 R1 K9 ["value"]
       49 RETURN                           R0 0
       50 LENGTH                           R3 R2
       51 LOADN                            R4 1
       52 JUMPIFNOTLT                      R4 R3 ; [+9]
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R3 R3 K10 ["map"]
       57 MOVE                             R4 R2
       58 DUPCLOSURE                       R5 K11 [PROTO_38]
       59 CALL                             R3 2 1
       60 SETTABLEKS                       R3 R1 K9 ["value"]
       62 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R1 3
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_41:
        0 JUMPIFNOTEQKNIL                  R2 ; [+4]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["ReactCurrentDispatcher"]
        5 GETTABLEKS                       R3 R2 K1 ["current"]
        7 LOADNIL                          R4
        8 GETUPVAL                         R5 1
        9 SETTABLEKS                       R5 R2 K1 ["current"]
       11 LOADNIL                          R5
       12 GETIMPORT                        R6 K3 [pcall]
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          REF R5
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 CALL                             R6 1 2
       20 GETUPVAL                         R4 3
       21 NEWTABLE                         R8 0 0
       23 SETUPVAL                         R8 3
       24 SETTABLEKS                       R3 R2 K1 ["current"]
       26 JUMPIF                           R6 ; [+4]
       27 GETIMPORT                        R8 K5 [error]
       29 MOVE                             R9 R7
       30 CALL                             R8 1 0
       31 GETUPVAL                         R6 4
       32 GETTABLEKS                       R6 R6 K6 ["parse"]
       34 MOVE                             R7 R5
       35 CALL                             R6 1 1
       36 GETUPVAL                         R7 5
       37 MOVE                             R8 R6
       38 MOVE                             R9 R4
       39 CALL                             R7 2 1
       40 CLOSEUPVALS                      R5
       41 RETURN                           R7 1

PROTO_42:
        0 MOVE                             R2 R1
        1 JUMPIFNOT                        R2 ; [+29]
        2 GETTABLEKS                       R3 R2 K0 ["tag"]
        4 GETUPVAL                         R4 0
        5 JUMPIFNOTEQ                      R3 R4 ; [+22]
        7 GETTABLEKS                       R3 R2 K1 ["type"]
        9 GETTABLEKS                       R4 R3 K2 ["_context"]
       11 MOVE                             R7 R4
       12 NAMECALL                         R5 R0 K3 ["has"]
       14 CALL                             R5 2 1
       15 JUMPIF                           R5 ; [+12]
       16 MOVE                             R7 R4
       17 GETTABLEKS                       R8 R4 K4 ["_currentValue"]
       19 NAMECALL                         R5 R0 K5 ["set"]
       21 CALL                             R5 3 0
       22 GETTABLEKS                       R5 R2 K6 ["memoizedProps"]
       24 GETTABLEKS                       R5 R5 K7 ["value"]
       26 SETTABLEKS                       R5 R4 K4 ["_currentValue"]
       28 GETTABLEKS                       R2 R2 K8 ["return_"]
       30 JUMPBACK                         ; [-30]
       31 RETURN                           R0 0

PROTO_43:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEN                        R6 R5 1
        5 GETTABLEN                        R7 R5 2
        6 SETTABLEKS                       R7 R6 K0 ["_currentValue"]
        8 FORGLOOP                         R1 2 ; [-5]
       10 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R1 3
        7 GETUPVAL                         R2 4
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_45:
        0 GETTABLEKS                       R4 R3 K0 ["current"]
        2 LOADNIL                          R5
        3 GETUPVAL                         R6 0
        4 SETTABLEKS                       R6 R3 K0 ["current"]
        6 LOADNIL                          R6
        7 GETIMPORT                        R7 K2 [pcall]
        9 NEWCLOSURE                       R8 P0
       10 CAPTURE                          REF R6
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          VAL R2
       15 CALL                             R7 1 2
       16 GETUPVAL                         R5 2
       17 NEWTABLE                         R9 0 0
       19 SETUPVAL                         R9 2
       20 SETTABLEKS                       R4 R3 K0 ["current"]
       22 JUMPIF                           R7 ; [+4]
       23 GETIMPORT                        R9 K4 [error]
       25 MOVE                             R10 R8
       26 CALL                             R9 1 0
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R7 R7 K5 ["parse"]
       30 MOVE                             R8 R6
       31 CALL                             R7 1 1
       32 GETUPVAL                         R8 4
       33 MOVE                             R9 R7
       34 MOVE                             R10 R5
       35 CALL                             R8 2 1
       36 CLOSEUPVALS                      R6
       37 RETURN                           R8 1

PROTO_46:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+25]
        7 GETTABLEKS                       R2 R0 K3 ["defaultProps"]
        9 JUMPIFNOT                        R2 ; [+21]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K4 ["assign"]
       13 NEWTABLE                         R3 0 0
       15 MOVE                             R4 R1
       16 CALL                             R2 2 1
       17 GETTABLEKS                       R3 R0 K3 ["defaultProps"]
       19 MOVE                             R4 R3
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 FORGPREP                         R4
       23 GETTABLE                         R9 R2 R7
       24 JUMPIFNOTEQKNIL                  R9 ; [+3]
       26 GETTABLE                         R9 R3 R7
       27 SETTABLE                         R9 R2 R7
       28 FORGLOOP                         R4 1 ; [-6]
       30 RETURN                           R2 1
       31 RETURN                           R1 1

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["tag"]
        7 GETUPVAL                         R1 3
        8 JUMPIFNOTEQ                      R0 R1 ; [+12]
       10 GETUPVAL                         R0 4
       11 GETUPVAL                         R1 5
       12 GETTABLEKS                       R1 R1 K1 ["render"]
       14 GETUPVAL                         R2 6
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R3 R3 K2 ["ref"]
       18 GETUPVAL                         R4 7
       19 CALL                             R0 4 1
       20 RETURN                           R0 1
       21 GETUPVAL                         R0 8
       22 GETUPVAL                         R1 5
       23 GETUPVAL                         R2 6
       24 GETUPVAL                         R3 7
       25 CALL                             R0 3 1
       26 RETURN                           R0 1

PROTO_48:
        0 JUMPIFNOTEQKNIL                  R1 ; [+4]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["ReactCurrentDispatcher"]
        5 SETUPVAL                         R0 1
        6 GETTABLEKS                       R2 R0 K1 ["tag"]
        8 GETUPVAL                         R3 2
        9 JUMPIFEQ                         R2 R3 ; [+24]
       11 GETTABLEKS                       R2 R0 K1 ["tag"]
       13 GETUPVAL                         R3 3
       14 JUMPIFEQ                         R2 R3 ; [+19]
       16 GETTABLEKS                       R2 R0 K1 ["tag"]
       18 GETUPVAL                         R3 4
       19 JUMPIFEQ                         R2 R3 ; [+14]
       21 GETTABLEKS                       R2 R0 K1 ["tag"]
       23 GETUPVAL                         R3 5
       24 JUMPIFEQ                         R2 R3 ; [+9]
       26 GETIMPORT                        R2 K3 [error]
       28 GETUPVAL                         R3 6
       29 GETTABLEKS                       R3 R3 K4 ["new"]
       31 LOADK                            R4 K5 ["Unknown Fiber. Needs to be a function component to inspect hooks."]
       32 CALL                             R3 1 -1
       33 CALL                             R2 -1 0
       34 GETUPVAL                         R2 7
       35 CALL                             R2 0 0
       36 GETTABLEKS                       R2 R0 K6 ["type"]
       38 GETTABLEKS                       R3 R0 K7 ["memoizedProps"]
       40 GETTABLEKS                       R4 R0 K8 ["elementType"]
       42 JUMPIFEQ                         R2 R4 ; [+6]
       44 GETUPVAL                         R4 8
       45 MOVE                             R5 R2
       46 MOVE                             R6 R3
       47 CALL                             R4 2 1
       48 MOVE                             R3 R4
       49 GETTABLEKS                       R4 R0 K9 ["memoizedState"]
       51 SETUPVAL                         R4 9
       52 GETUPVAL                         R4 10
       53 GETTABLEKS                       R4 R4 K4 ["new"]
       55 CALL                             R4 0 1
       56 GETIMPORT                        R5 K11 [pcall]
       58 NEWCLOSURE                       R6 P0
       59 CAPTURE                          UPVAL U11
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          UPVAL U12
       64 CAPTURE                          VAL R2
       65 CAPTURE                          REF R3
       66 CAPTURE                          REF R1
       67 CAPTURE                          UPVAL U13
       68 CALL                             R5 1 2
       69 LOADNIL                          R7
       70 SETUPVAL                         R7 9
       71 MOVE                             R7 R4
       72 LOADNIL                          R8
       73 LOADNIL                          R9
       74 FORGPREP                         R7
       75 GETTABLEN                        R12 R11 1
       76 GETTABLEN                        R13 R11 2
       77 SETTABLEKS                       R13 R12 K12 ["_currentValue"]
       79 FORGLOOP                         R7 2 ; [-5]
       81 JUMPIF                           R5 ; [+4]
       82 GETIMPORT                        R7 K3 [error]
       84 MOVE                             R8 R6
       85 CALL                             R7 1 0
       86 CLOSEUPVALS                      R1
       87 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Error"]
       16 GETTABLEKS                       R4 R1 K8 ["Map"]
       18 GETTABLEKS                       R5 R1 K9 ["Object"]
       20 GETTABLEKS                       R6 R1 K10 ["String"]
       22 NEWTABLE                         R7 2 0
       24 GETIMPORT                        R8 K4 [require]
       26 GETTABLEKS                       R9 R0 K11 ["Shared"]
       28 CALL                             R8 1 1
       29 GETIMPORT                        R9 K4 [require]
       31 GETTABLEKS                       R10 R0 K12 ["ReactReconciler"]
       33 CALL                             R9 1 1
       34 GETIMPORT                        R10 K4 [require]
       36 GETTABLEKS                       R11 R0 K11 ["Shared"]
       38 CALL                             R10 1 1
       39 GETIMPORT                        R11 K4 [require]
       41 GETTABLEKS                       R12 R0 K12 ["ReactReconciler"]
       43 CALL                             R11 1 1
       44 NEWTABLE                         R12 0 0
       46 CALL                             R11 1 1
       47 GETTABLEKS                       R12 R11 K13 ["ReactTypeOfMode"]
       49 GETTABLEKS                       R12 R12 K14 ["NoMode"]
       51 DUPTABLE                         R13 K16 [{"parse"}]
       52 DUPCLOSURE                       R14 K17 [PROTO_2]
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R14 R13 K15 ["parse"]
       56 GETIMPORT                        R14 K4 [require]
       58 GETTABLEKS                       R15 R0 K11 ["Shared"]
       60 CALL                             R14 1 1
       61 GETTABLEKS                       R15 R14 K18 ["ReactSharedInternals"]
       63 GETTABLEKS                       R16 R14 K19 ["ReactSymbols"]
       65 GETTABLEKS                       R17 R16 K20 ["REACT_OPAQUE_ID_TYPE"]
       67 GETTABLEKS                       R18 R11 K21 ["ReactWorkTags"]
       69 GETTABLEKS                       R19 R18 K22 ["FunctionComponent"]
       71 GETTABLEKS                       R20 R18 K23 ["SimpleMemoComponent"]
       73 GETTABLEKS                       R21 R18 K24 ["ContextProvider"]
       75 GETTABLEKS                       R22 R18 K25 ["ForwardRef"]
       77 GETTABLEKS                       R23 R18 K26 ["Block"]
       79 NEWTABLE                         R24 0 0
       81 LOADNIL                          R25
       82 LOADNIL                          R26
       83 LOADNIL                          R27
       84 NEWCLOSURE                       R28 P1
       85 CAPTURE                          REF R25
       86 CAPTURE                          VAL R4
       87 CAPTURE                          REF R27
       88 CAPTURE                          REF R24
       89 CAPTURE                          VAL R13
       90 LOADNIL                          R29
       91 NEWCLOSURE                       R30 P2
       92 CAPTURE                          REF R29
       93 DUPCLOSURE                       R31 K27 [PROTO_12]
       94 NEWCLOSURE                       R32 P4
       95 CAPTURE                          REF R24
       96 CAPTURE                          VAL R3
       97 NEWCLOSURE                       R33 P5
       98 CAPTURE                          REF R29
       99 CAPTURE                          REF R24
      100 CAPTURE                          VAL R3
      101 NEWCLOSURE                       R34 P6
      102 CAPTURE                          REF R29
      103 CAPTURE                          REF R24
      104 CAPTURE                          VAL R3
      105 NEWCLOSURE                       R35 P7
      106 CAPTURE                          REF R29
      107 CAPTURE                          REF R24
      108 CAPTURE                          VAL R3
      109 NEWCLOSURE                       R36 P8
      110 CAPTURE                          REF R29
      111 CAPTURE                          REF R24
      112 CAPTURE                          VAL R3
      113 NEWCLOSURE                       R37 P9
      114 CAPTURE                          REF R29
      115 CAPTURE                          REF R24
      116 CAPTURE                          VAL R3
      117 NEWCLOSURE                       R38 P10
      118 CAPTURE                          REF R29
      119 CAPTURE                          REF R24
      120 CAPTURE                          VAL R3
      121 NEWCLOSURE                       R39 P11
      122 CAPTURE                          REF R29
      123 CAPTURE                          REF R24
      124 CAPTURE                          VAL R3
      125 NEWCLOSURE                       R40 P12
      126 CAPTURE                          REF R24
      127 CAPTURE                          VAL R3
      128 NEWCLOSURE                       R41 P13
      129 CAPTURE                          REF R29
      130 CAPTURE                          REF R24
      131 CAPTURE                          VAL R3
      132 NEWCLOSURE                       R42 P14
      133 CAPTURE                          REF R29
      134 CAPTURE                          REF R24
      135 CAPTURE                          VAL R3
      136 NEWCLOSURE                       R43 P15
      137 CAPTURE                          REF R29
      138 CAPTURE                          REF R24
      139 CAPTURE                          VAL R3
      140 NEWCLOSURE                       R44 P16
      141 CAPTURE                          REF R29
      142 CAPTURE                          REF R26
      143 CAPTURE                          VAL R12
      144 CAPTURE                          VAL R17
      145 CAPTURE                          REF R24
      146 CAPTURE                          VAL R3
      147 DUPTABLE                         R45 K42 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useDebugValue", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useMutableSource", "useOpaqueIdentifier"}]
      148 SETTABLEKS                       R31 R45 K28 ["readContext"]
      150 SETTABLEKS                       R41 R45 K29 ["useCallback"]
      152 SETTABLEKS                       R32 R45 K30 ["useContext"]
      154 SETTABLEKS                       R38 R45 K31 ["useEffect"]
      156 SETTABLEKS                       R39 R45 K32 ["useImperativeHandle"]
      158 SETTABLEKS                       R40 R45 K33 ["useDebugValue"]
      160 SETTABLEKS                       R37 R45 K34 ["useLayoutEffect"]
      162 SETTABLEKS                       R42 R45 K35 ["useMemo"]
      164 SETTABLEKS                       R34 R45 K36 ["useReducer"]
      166 SETTABLEKS                       R35 R45 K37 ["useRef"]
      168 SETTABLEKS                       R36 R45 K38 ["useBinding"]
      170 SETTABLEKS                       R33 R45 K39 ["useState"]
      172 SETTABLEKS                       R43 R45 K40 ["useMutableSource"]
      174 SETTABLEKS                       R44 R45 K41 ["useOpaqueIdentifier"]
      176 MOVE                             R27 R45
      177 LOADN                            R45 1
      178 DUPCLOSURE                       R46 K43 [PROTO_30]
      179 NEWCLOSURE                       R47 P18
      180 CAPTURE                          VAL R46
      181 CAPTURE                          REF R45
      182 DUPCLOSURE                       R48 K44 [PROTO_32]
      183 CAPTURE                          VAL R6
      184 DUPCLOSURE                       R49 K45 [PROTO_33]
      185 CAPTURE                          VAL R28
      186 CAPTURE                          VAL R6
      187 DUPCLOSURE                       R50 K46 [PROTO_34]
      188 CAPTURE                          VAL R13
      189 CAPTURE                          VAL R47
      190 CAPTURE                          VAL R49
      191 CAPTURE                          VAL R2
      192 DUPCLOSURE                       R51 K47 [PROTO_35]
      193 CAPTURE                          VAL R6
      194 LOADNIL                          R52
      195 NEWCLOSURE                       R53 P23
      196 CAPTURE                          VAL R50
      197 CAPTURE                          VAL R6
      198 CAPTURE                          REF R52
      199 NEWCLOSURE                       R52 P24
      200 CAPTURE                          VAL R2
      201 CAPTURE                          REF R52
      202 NEWCLOSURE                       R54 P25
      203 CAPTURE                          VAL R15
      204 CAPTURE                          REF R27
      205 CAPTURE                          VAL R3
      206 CAPTURE                          REF R24
      207 CAPTURE                          VAL R13
      208 CAPTURE                          VAL R53
      209 SETTABLEKS                       R54 R7 K48 ["inspectHooks"]
      211 DUPCLOSURE                       R55 K49 [PROTO_42]
      212 CAPTURE                          VAL R21
      213 DUPCLOSURE                       R56 K50 [PROTO_43]
      214 NEWCLOSURE                       R57 P28
      215 CAPTURE                          REF R27
      216 CAPTURE                          VAL R3
      217 CAPTURE                          REF R24
      218 CAPTURE                          VAL R13
      219 CAPTURE                          VAL R53
      220 DUPCLOSURE                       R58 K51 [PROTO_46]
      221 CAPTURE                          VAL R5
      222 NEWCLOSURE                       R59 P30
      223 CAPTURE                          VAL R15
      224 CAPTURE                          REF R26
      225 CAPTURE                          VAL R19
      226 CAPTURE                          VAL R20
      227 CAPTURE                          VAL R22
      228 CAPTURE                          VAL R23
      229 CAPTURE                          VAL R3
      230 CAPTURE                          VAL R28
      231 CAPTURE                          VAL R58
      232 CAPTURE                          REF R29
      233 CAPTURE                          VAL R4
      234 CAPTURE                          VAL R55
      235 CAPTURE                          VAL R57
      236 CAPTURE                          VAL R54
      237 SETTABLEKS                       R59 R7 K52 ["inspectHooksOfFiber"]
      239 CLOSEUPVALS                      R24
      240 RETURN                           R7 1
