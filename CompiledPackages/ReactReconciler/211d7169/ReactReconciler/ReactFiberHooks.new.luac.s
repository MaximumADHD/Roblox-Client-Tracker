PROTO_0:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        3 CALL                             R1 1 0
        4 GETIMPORT                        R1 K1 [print]
        6 LOADK                            R2 K2 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
        7 CALL                             R1 1 0
        8 GETIMPORT                        R1 K1 [print]
       10 LOADK                            R3 K3 ["UNIMPLEMENTED ERROR: "]
       11 MOVE                             R4 R0
       12 CONCAT                           R2 R3 R4
       13 CALL                             R1 1 0
       14 GETIMPORT                        R1 K5 [error]
       16 LOADK                            R3 K6 ["FIXME (roblox): "]
       17 MOVE                             R4 R0
       18 LOADK                            R5 K7 [" is unimplemented"]
       19 CONCAT                           R2 R3 R5
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_1:
        0 JUMPIFNOTEQ                      R0 R1 ; [+9]
        2 LOADB                            R2 1
        3 JUMPIFNOTEQKN                    R0 K0 [0] ; [+13]
        5 LOADB                            R2 1
        6 DIVRK                            R3 R1 K0 [0]
        7 DIVRK                            R4 R1 K1 [1]
        8 JUMPIFEQ                         R3 R4 ; [+8]
       10 LOADB                            R2 0
       11 JUMPIFEQ                         R0 R0 ; [+5]
       13 JUMPIFNOTEQ                      R1 R1 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [_G]
        2 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+18]
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R1 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+8]
        9 NEWTABLE                         R1 0 1
       11 MOVE                             R2 R0
       12 SETLIST                          R1 R2 1 [1]
       14 SETUPVAL                         R1 1
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 1
       17 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       19 MOVE                             R3 R0
       20 GETIMPORT                        R1 K5 [table.insert]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K1 [_G]
        2 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+16]
        5 GETUPVAL                         R0 0
        6 GETUPVAL                         R1 1
        7 JUMPIFEQKNIL                     R1 ; [+13]
        9 GETUPVAL                         R1 2
       10 ADDK                             R1 R1 K3 [1]
       11 SETUPVAL                         R1 2
       12 GETUPVAL                         R2 1
       13 GETUPVAL                         R3 2
       14 GETTABLE                         R1 R2 R3
       15 JUMPIFEQ                         R1 R0 ; [+5]
       17 GETGLOBAL                        R1 K4 ["warnOnHookMismatchInDev"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+19]
        5 JUMPIFEQKNIL                     R0 ; [+18]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["isArray"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 JUMPIF                           R1 ; [+11]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["error"]
       16 LOADK                            R2 K5 ["%s received a final argument that is not an array (instead, received `%s`). When specified, the final argument must be an array."]
       17 GETUPVAL                         R3 2
       18 FASTCALL1                        TYPEOF R0 ; [+3]
       19 MOVE                             R5 R0
       20 GETIMPORT                        R4 K7 [typeof]
       22 CALL                             R4 1 1
       23 CALL                             R1 3 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+65]
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K4 ["type"]
        9 CALL                             R2 1 1
       10 ORK                              R1 R2 K3 ["Component"]
       11 GETUPVAL                         R3 2
       12 GETTABLE                         R2 R3 R1
       13 JUMPIF                           R2 ; [+56]
       14 GETUPVAL                         R2 2
       15 LOADB                            R3 1
       16 SETTABLE                         R3 R2 R1
       17 GETUPVAL                         R2 3
       18 JUMPIFEQKNIL                     R2 ; [+51]
       20 LOADK                            R2 K5 [""]
       21 LOADN                            R5 1
       22 GETUPVAL                         R3 4
       23 LOADN                            R4 1
       24 FORNPREP                         R3
       25 GETUPVAL                         R7 3
       26 GETTABLE                         R6 R7 R5
       27 LOADNIL                          R7
       28 GETUPVAL                         R8 4
       29 JUMPIFNOTEQ                      R5 R8 ; [+3]
       31 MOVE                             R7 R0
       32 JUMP                             ; [+1]
       33 MOVE                             R7 R6
       34 FASTCALL1                        TOSTRING R5 ; [+3]
       35 MOVE                             R13 R5
       36 GETIMPORT                        R12 K7 [tostring]
       38 CALL                             R12 1 1
       39 MOVE                             R9 R12
       40 LOADK                            R10 K8 [". "]
       41 ORK                              R11 R6 K9 ["undefined"]
       42 CONCAT                           R8 R9 R11
       43 FASTCALL1                        STRING_LEN R8 ; [+3]
       44 MOVE                             R10 R8
       45 GETIMPORT                        R9 K12 [string.len]
       47 CALL                             R9 1 1
       48 LOADN                            R10 30
       49 JUMPIFNOTLT                      R9 R10 ; [+5]
       51 MOVE                             R9 R8
       52 LOADK                            R10 K13 [" "]
       53 CONCAT                           R8 R9 R10
       54 JUMPBACK                         ; [-12]
       55 MOVE                             R9 R8
       56 MOVE                             R10 R7
       57 LOADK                            R11 K14 ["\n"]
       58 CONCAT                           R8 R9 R11
       59 MOVE                             R9 R2
       60 MOVE                             R10 R8
       61 CONCAT                           R2 R9 R10
       62 FORNLOOP                         R3
       63 GETUPVAL                         R3 5
       64 GETTABLEKS                       R3 R3 K15 ["error"]
       66 LOADK                            R4 K16 ["React has detected a change in the order of Hooks called by %s. This will lead to bugs and errors if not fixed. For more information, read the Rules of Hooks: https://reactjs.org/link/rules-of-hooks\n\n   Previous render            Next render\n   ------------------------------------------------------\n%s   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n"]
       67 MOVE                             R5 R1
       68 MOVE                             R6 R2
       69 CALL                             R3 3 0
       70 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["new"]
        5 LOADK                            R2 K3 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [0]
        5 JUMPIFNOTEQKNIL                  R1 ; [+14]
        7 GETIMPORT                        R2 K1 [_G]
        9 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K3 ["error"]
       15 LOADK                            R3 K4 ["%s received a final argument during this render, but not during the previous render. Even though the final argument is optional, its type cannot change between renders."]
       16 GETUPVAL                         R4 1
       17 CALL                             R2 2 0
       18 LOADB                            R2 0
       19 RETURN                           R2 1
       20 GETIMPORT                        R2 K1 [_G]
       22 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
       24 JUMPIFNOT                        R2 ; [+16]
       25 LENGTH                           R2 R0
       26 LENGTH                           R3 R1
       27 JUMPIFEQ                         R2 R3 ; [+13]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K3 ["error"]
       32 LOADK                            R3 K5 ["The final argument passed to %s changed size between renders. The order and size of this array must remain constant.\n\nPrevious: %s\nIncoming: %s"]
       33 GETUPVAL                         R4 1
       34 GETUPVAL                         R5 2
       35 MOVE                             R6 R1
       36 CALL                             R5 1 1
       37 GETUPVAL                         R6 2
       38 MOVE                             R7 R0
       39 CALL                             R6 1 -1
       40 CALL                             R2 -1 0
       41 LENGTH                           R3 R1
       42 LENGTH                           R4 R0
       43 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       45 GETIMPORT                        R2 K8 [math.min]
       47 CALL                             R2 2 1
       48 LOADN                            R5 1
       49 MOVE                             R3 R2
       50 LOADN                            R4 1
       51 FORNPREP                         R3
       52 GETTABLE                         R7 R0 R5
       53 GETTABLE                         R8 R1 R5
       54 JUMPIFNOTEQ                      R7 R8 ; [+9]
       56 LOADB                            R6 1
       57 JUMPIFNOTEQKN                    R7 K9 [0] ; [+13]
       59 LOADB                            R6 1
       60 DIVRK                            R9 R10 K7 ["min"]
       61 DIVRK                            R10 R10 K8 [math.min]
       62 JUMPIFEQ                         R9 R10 ; [+8]
       64 LOADB                            R6 0
       65 JUMPIFEQ                         R7 R7 ; [+5]
       67 JUMPIFNOTEQ                      R8 R8 ; [+2]
       69 LOADB                            R6 0 +1
       70 LOADB                            R6 1
       71 JUMPIF                           R6 ; [+2]
       72 LOADB                            R6 0
       73 RETURN                           R6 1
       74 FORNLOOP                         R3
       75 LOADB                            R3 1
       76 RETURN                           R3 1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["updateQueue"]
        2 SETTABLEKS                       R3 R1 K0 ["updateQueue"]
        4 GETIMPORT                        R3 K2 [_G]
        6 GETTABLEKS                       R3 R3 K3 ["__DEV__"]
        8 JUMPIFNOT                        R3 ; [+24]
        9 GETUPVAL                         R3 0
       10 JUMPIFNOT                        R3 ; [+22]
       11 GETTABLEKS                       R4 R1 K4 ["flags"]
       13 GETUPVAL                         R7 1
       14 GETUPVAL                         R8 2
       15 GETUPVAL                         R9 3
       16 GETUPVAL                         R10 4
       17 FASTCALL                         BIT32_BOR ; [+2]
       18 GETIMPORT                        R6 K7 [bit32.bor]
       20 CALL                             R6 4 1
       21 FASTCALL1                        BIT32_BNOT R6 ; [+2]
       22 GETIMPORT                        R5 K9 [bit32.bnot]
       24 CALL                             R5 1 1
       25 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
       27 GETIMPORT                        R3 K11 [bit32.band]
       29 CALL                             R3 2 1
       30 SETTABLEKS                       R3 R1 K4 ["flags"]
       32 JUMP                             ; [+20]
       33 GETTABLEKS                       R4 R1 K4 ["flags"]
       35 GETUPVAL                         R7 2
       36 GETUPVAL                         R8 4
       37 FASTCALL2                        BIT32_BOR R7 R8 ; [+3]
       39 GETIMPORT                        R6 K7 [bit32.bor]
       41 CALL                             R6 2 1
       42 FASTCALL1                        BIT32_BNOT R6 ; [+2]
       43 GETIMPORT                        R5 K9 [bit32.bnot]
       45 CALL                             R5 1 1
       46 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
       48 GETIMPORT                        R3 K11 [bit32.band]
       50 CALL                             R3 2 1
       51 SETTABLEKS                       R3 R1 K4 ["flags"]
       53 GETUPVAL                         R3 5
       54 GETTABLEKS                       R4 R0 K12 ["lanes"]
       56 MOVE                             R5 R2
       57 CALL                             R3 2 1
       58 SETTABLEKS                       R3 R0 K12 ["lanes"]
       60 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["ContextOnlyDispatcher"]
        4 SETTABLEKS                       R1 R0 K1 ["current"]
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+17]
        8 GETUPVAL                         R0 3
        9 GETTABLEKS                       R0 R0 K2 ["memoizedState"]
       11 JUMPIFEQKNIL                     R0 ; [+11]
       13 GETTABLEKS                       R1 R0 K3 ["queue"]
       15 JUMPIFEQKNIL                     R1 ; [+4]
       17 LOADNIL                          R2
       18 SETTABLEKS                       R2 R1 K4 ["pending"]
       20 GETTABLEKS                       R0 R0 K5 ["next"]
       22 JUMPBACK                         ; [-12]
       23 LOADB                            R1 0
       24 SETUPVAL                         R1 2
       25 GETUPVAL                         R0 5
       26 SETUPVAL                         R0 4
       27 LOADNIL                          R0
       28 SETUPVAL                         R0 3
       29 LOADNIL                          R0
       30 SETUPVAL                         R0 6
       31 LOADNIL                          R0
       32 SETUPVAL                         R0 7
       33 GETIMPORT                        R0 K7 [_G]
       35 GETTABLEKS                       R0 R0 K8 ["__DEV__"]
       37 JUMPIFNOT                        R0 ; [+8]
       38 LOADNIL                          R0
       39 SETUPVAL                         R0 8
       40 LOADN                            R0 0
       41 SETUPVAL                         R0 9
       42 LOADNIL                          R0
       43 SETUPVAL                         R0 10
       44 LOADB                            R0 0
       45 SETUPVAL                         R0 11
       46 LOADB                            R0 0
       47 SETUPVAL                         R0 12
       48 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R0 K5 [{"memoizedState", "baseState", "baseQueue", "queue", "next"}]
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["memoizedState"]
        4 LOADNIL                          R1
        5 SETTABLEKS                       R1 R0 K1 ["baseState"]
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K2 ["baseQueue"]
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K3 ["queue"]
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K4 ["next"]
       16 GETUPVAL                         R1 0
       17 JUMPIFNOTEQKNIL                  R1 ; [+6]
       19 GETUPVAL                         R1 1
       20 SETTABLEKS                       R0 R1 K0 ["memoizedState"]
       22 SETUPVAL                         R0 0
       23 JUMP                             ; [+4]
       24 GETUPVAL                         R1 0
       25 SETTABLEKS                       R0 R1 K4 ["next"]
       27 SETUPVAL                         R0 0
       28 GETUPVAL                         R1 0
       29 RETURN                           R1 1

PROTO_11:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOTEQKNIL                  R1 ; [+11]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["alternate"]
        7 JUMPIFEQKNIL                     R1 ; [+4]
        9 GETTABLEKS                       R0 R1 K1 ["memoizedState"]
       11 JUMP                             ; [+5]
       12 LOADNIL                          R0
       13 JUMP                             ; [+3]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K2 ["next"]
       17 LOADNIL                          R1
       18 GETUPVAL                         R2 2
       19 JUMPIFNOTEQKNIL                  R2 ; [+5]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R1 R2 K1 ["memoizedState"]
       24 JUMP                             ; [+3]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R1 R2 K2 ["next"]
       28 JUMPIFEQKNIL                     R1 ; [+7]
       30 SETUPVAL                         R1 2
       31 GETUPVAL                         R2 2
       32 GETTABLEKS                       R1 R2 K2 ["next"]
       34 SETUPVAL                         R0 0
       35 JUMP                             ; [+47]
       36 JUMPIFNOTEQKNIL                  R0 ; [+9]
       38 GETIMPORT                        R2 K4 [error]
       40 GETUPVAL                         R3 3
       41 GETTABLEKS                       R3 R3 K5 ["new"]
       43 LOADK                            R4 K6 ["Rendered more hooks than during the previous render."]
       44 CALL                             R3 1 -1
       45 CALL                             R2 -1 0
       46 SETUPVAL                         R0 0
       47 DUPTABLE                         R2 K10 [{"memoizedState", "baseState", "baseQueue", "queue", "next"}]
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K1 ["memoizedState"]
       51 SETTABLEKS                       R3 R2 K1 ["memoizedState"]
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K7 ["baseState"]
       56 SETTABLEKS                       R3 R2 K7 ["baseState"]
       58 GETUPVAL                         R3 0
       59 GETTABLEKS                       R3 R3 K8 ["baseQueue"]
       61 SETTABLEKS                       R3 R2 K8 ["baseQueue"]
       63 GETUPVAL                         R3 0
       64 GETTABLEKS                       R3 R3 K9 ["queue"]
       66 SETTABLEKS                       R3 R2 K9 ["queue"]
       68 LOADNIL                          R3
       69 SETTABLEKS                       R3 R2 K2 ["next"]
       71 GETUPVAL                         R3 2
       72 JUMPIFNOTEQKNIL                  R3 ; [+6]
       74 SETUPVAL                         R2 2
       75 GETUPVAL                         R3 1
       76 SETTABLEKS                       R2 R3 K1 ["memoizedState"]
       78 JUMP                             ; [+4]
       79 GETUPVAL                         R3 2
       80 SETTABLEKS                       R2 R3 K2 ["next"]
       82 SETUPVAL                         R2 2
       83 GETUPVAL                         R2 2
       84 RETURN                           R2 1

PROTO_12:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+5]
        7 MOVE                             R2 R1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1
       11 RETURN                           R1 1

PROTO_13:
        0 PREPVARARGS                      0
        1 GETGLOBAL                        R0 K0 ["dispatchAction"]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 GETVARARGS                       R3 -1
        6 CALL                             R0 -1 -1
        7 RETURN                           R0 -1

PROTO_14:
        0 DUPTABLE                         R4 K5 [{"memoizedState", "baseState", "baseQueue", "queue", "next"}]
        1 LOADNIL                          R5
        2 SETTABLEKS                       R5 R4 K0 ["memoizedState"]
        4 LOADNIL                          R5
        5 SETTABLEKS                       R5 R4 K1 ["baseState"]
        7 LOADNIL                          R5
        8 SETTABLEKS                       R5 R4 K2 ["baseQueue"]
       10 LOADNIL                          R5
       11 SETTABLEKS                       R5 R4 K3 ["queue"]
       13 LOADNIL                          R5
       14 SETTABLEKS                       R5 R4 K4 ["next"]
       16 GETUPVAL                         R5 0
       17 JUMPIFNOTEQKNIL                  R5 ; [+6]
       19 GETUPVAL                         R5 1
       20 SETTABLEKS                       R4 R5 K0 ["memoizedState"]
       22 SETUPVAL                         R4 0
       23 JUMP                             ; [+4]
       24 GETUPVAL                         R5 0
       25 SETTABLEKS                       R4 R5 K4 ["next"]
       27 SETUPVAL                         R4 0
       28 GETUPVAL                         R3 0
       29 LOADNIL                          R4
       30 JUMPIFEQKNIL                     R2 ; [+6]
       32 MOVE                             R5 R2
       33 MOVE                             R6 R1
       34 CALL                             R5 1 1
       35 MOVE                             R4 R5
       36 JUMP                             ; [+1]
       37 MOVE                             R4 R1
       38 SETTABLEKS                       R4 R3 K1 ["baseState"]
       40 GETTABLEKS                       R5 R3 K1 ["baseState"]
       42 SETTABLEKS                       R5 R3 K0 ["memoizedState"]
       44 DUPTABLE                         R5 K10 [{"pending", "dispatch", "lastRenderedReducer", "lastRenderedState"}]
       45 LOADNIL                          R6
       46 SETTABLEKS                       R6 R5 K6 ["pending"]
       48 LOADNIL                          R6
       49 SETTABLEKS                       R6 R5 K7 ["dispatch"]
       51 SETTABLEKS                       R0 R5 K8 ["lastRenderedReducer"]
       53 SETTABLEKS                       R4 R5 K9 ["lastRenderedState"]
       55 SETTABLEKS                       R5 R3 K3 ["queue"]
       57 GETTABLEKS                       R5 R3 K3 ["queue"]
       59 GETUPVAL                         R6 1
       60 NEWCLOSURE                       R7 P0
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R5
       63 SETTABLEKS                       R7 R5 K7 ["dispatch"]
       65 GETTABLEKS                       R7 R5 K7 ["dispatch"]
       67 GETTABLEKS                       R8 R3 K0 ["memoizedState"]
       69 MOVE                             R9 R7
       70 RETURN                           R8 2

PROTO_15:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 GETTABLEKS                       R4 R3 K0 ["queue"]
        4 SETTABLEKS                       R0 R4 K1 ["lastRenderedReducer"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R6 R5 K2 ["baseQueue"]
        9 GETTABLEKS                       R7 R4 K3 ["pending"]
       11 JUMPIFEQKNIL                     R7 ; [+17]
       13 JUMPIFEQKNIL                     R6 ; [+9]
       15 GETTABLEKS                       R8 R6 K4 ["next"]
       17 GETTABLEKS                       R9 R7 K4 ["next"]
       19 SETTABLEKS                       R9 R6 K4 ["next"]
       21 SETTABLEKS                       R8 R7 K4 ["next"]
       23 MOVE                             R6 R7
       24 SETTABLEKS                       R6 R5 K2 ["baseQueue"]
       26 LOADNIL                          R8
       27 SETTABLEKS                       R8 R4 K3 ["pending"]
       29 JUMPIFEQKNIL                     R6 ; [+144]
       31 GETTABLEKS                       R8 R6 K4 ["next"]
       33 GETTABLEKS                       R9 R5 K5 ["baseState"]
       35 LOADNIL                          R10
       36 LOADNIL                          R11
       37 LOADNIL                          R12
       38 MOVE                             R13 R8
       39 GETTABLEKS                       R14 R13 K6 ["lane"]
       41 GETUPVAL                         R16 2
       42 FASTCALL2                        BIT32_BAND R16 R14 ; [+4]
       44 MOVE                             R17 R14
       45 GETIMPORT                        R15 K9 [bit32.band]
       47 CALL                             R15 2 1
       48 JUMPIFEQ                         R15 R14 ; [+42]
       50 DUPTABLE                         R15 K13 [{"lane", "action", "eagerReducer", "eagerState", "next"}]
       51 SETTABLEKS                       R14 R15 K6 ["lane"]
       53 GETTABLEKS                       R16 R13 K10 ["action"]
       55 SETTABLEKS                       R16 R15 K10 ["action"]
       57 GETTABLEKS                       R16 R13 K11 ["eagerReducer"]
       59 SETTABLEKS                       R16 R15 K11 ["eagerReducer"]
       61 GETTABLEKS                       R16 R13 K12 ["eagerState"]
       63 SETTABLEKS                       R16 R15 K12 ["eagerState"]
       65 LOADNIL                          R16
       66 SETTABLEKS                       R16 R15 K4 ["next"]
       68 JUMPIFNOTEQKNIL                  R12 ; [+5]
       70 MOVE                             R12 R15
       71 MOVE                             R11 R12
       72 MOVE                             R10 R9
       73 JUMP                             ; [+4]
       74 SETTABLEKS                       R15 R12 K4 ["next"]
       76 GETTABLEKS                       R12 R12 K4 ["next"]
       78 GETUPVAL                         R16 3
       79 GETUPVAL                         R17 4
       80 GETUPVAL                         R18 3
       81 GETTABLEKS                       R18 R18 K14 ["lanes"]
       83 MOVE                             R19 R14
       84 CALL                             R17 2 1
       85 SETTABLEKS                       R17 R16 K14 ["lanes"]
       87 GETUPVAL                         R16 5
       88 MOVE                             R17 R14
       89 CALL                             R16 1 0
       90 JUMP                             ; [+39]
       91 JUMPIFEQKNIL                     R12 ; [+24]
       93 DUPTABLE                         R15 K13 [{"lane", "action", "eagerReducer", "eagerState", "next"}]
       94 GETUPVAL                         R16 6
       95 SETTABLEKS                       R16 R15 K6 ["lane"]
       97 GETTABLEKS                       R16 R13 K10 ["action"]
       99 SETTABLEKS                       R16 R15 K10 ["action"]
      101 GETTABLEKS                       R16 R13 K11 ["eagerReducer"]
      103 SETTABLEKS                       R16 R15 K11 ["eagerReducer"]
      105 GETTABLEKS                       R16 R13 K12 ["eagerState"]
      107 SETTABLEKS                       R16 R15 K12 ["eagerState"]
      109 LOADNIL                          R16
      110 SETTABLEKS                       R16 R15 K4 ["next"]
      112 SETTABLEKS                       R15 R12 K4 ["next"]
      114 GETTABLEKS                       R12 R12 K4 ["next"]
      116 GETTABLEKS                       R15 R13 K11 ["eagerReducer"]
      118 JUMPIFNOTEQ                      R15 R0 ; [+4]
      120 GETTABLEKS                       R9 R13 K12 ["eagerState"]
      122 JUMP                             ; [+7]
      123 GETTABLEKS                       R15 R13 K10 ["action"]
      125 MOVE                             R16 R0
      126 MOVE                             R17 R9
      127 MOVE                             R18 R15
      128 CALL                             R16 2 1
      129 MOVE                             R9 R16
      130 GETTABLEKS                       R13 R13 K4 ["next"]
      132 JUMPIFEQKNIL                     R13 ; [+4]
      134 JUMPIFEQ                         R13 R8 ; [+2]
      136 JUMPBACK                         ; [-98]
      137 JUMPIFNOTEQKNIL                  R12 ; [+3]
      139 MOVE                             R10 R9
      140 JUMP                             ; [+2]
      141 SETTABLEKS                       R11 R12 K4 ["next"]
      143 MOVE                             R15 R9
      144 GETTABLEKS                       R16 R3 K15 ["memoizedState"]
      146 JUMPIFNOTEQ                      R15 R16 ; [+9]
      148 LOADB                            R14 1
      149 JUMPIFNOTEQKN                    R15 K16 [0] ; [+13]
      151 LOADB                            R14 1
      152 DIVRK                            R17 R17 K15 ["memoizedState"]
      153 DIVRK                            R18 R17 K16 [0]
      154 JUMPIFEQ                         R17 R18 ; [+8]
      156 LOADB                            R14 0
      157 JUMPIFEQ                         R15 R15 ; [+5]
      159 JUMPIFNOTEQ                      R16 R16 ; [+2]
      161 LOADB                            R14 0 +1
      162 LOADB                            R14 1
      163 JUMPIF                           R14 ; [+2]
      164 GETUPVAL                         R14 7
      165 CALL                             R14 0 0
      166 SETTABLEKS                       R9 R3 K15 ["memoizedState"]
      168 SETTABLEKS                       R10 R3 K5 ["baseState"]
      170 SETTABLEKS                       R12 R3 K2 ["baseQueue"]
      172 SETTABLEKS                       R9 R4 K18 ["lastRenderedState"]
      174 GETTABLEKS                       R8 R4 K19 ["dispatch"]
      176 GETTABLEKS                       R9 R3 K15 ["memoizedState"]
      178 MOVE                             R10 R8
      179 RETURN                           R9 2

PROTO_16:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 GETTABLEKS                       R4 R3 K0 ["queue"]
        4 SETTABLEKS                       R0 R4 K1 ["lastRenderedReducer"]
        6 GETTABLEKS                       R5 R4 K2 ["dispatch"]
        8 GETTABLEKS                       R6 R4 K3 ["pending"]
       10 GETTABLEKS                       R7 R3 K4 ["memoizedState"]
       12 JUMPIFEQKNIL                     R6 ; [+52]
       14 LOADNIL                          R8
       15 SETTABLEKS                       R8 R4 K3 ["pending"]
       17 GETTABLEKS                       R8 R6 K5 ["next"]
       19 MOVE                             R9 R8
       20 GETTABLEKS                       R10 R9 K6 ["action"]
       22 MOVE                             R11 R0
       23 MOVE                             R12 R7
       24 MOVE                             R13 R10
       25 CALL                             R11 2 1
       26 MOVE                             R7 R11
       27 GETTABLEKS                       R9 R9 K5 ["next"]
       29 JUMPIFEQ                         R9 R8 ; [+2]
       31 JUMPBACK                         ; [-12]
       32 MOVE                             R11 R7
       33 GETTABLEKS                       R12 R3 K4 ["memoizedState"]
       35 JUMPIFNOTEQ                      R11 R12 ; [+9]
       37 LOADB                            R10 1
       38 JUMPIFNOTEQKN                    R11 K7 [0] ; [+13]
       40 LOADB                            R10 1
       41 DIVRK                            R13 R8 K11 ["lastRenderedState"]
       42 DIVRK                            R14 R8 K12 [NULL]
       43 JUMPIFEQ                         R13 R14 ; [+8]
       45 LOADB                            R10 0
       46 JUMPIFEQ                         R11 R11 ; [+5]
       48 JUMPIFNOTEQ                      R12 R12 ; [+2]
       50 LOADB                            R10 0 +1
       51 LOADB                            R10 1
       52 JUMPIF                           R10 ; [+2]
       53 GETUPVAL                         R10 1
       54 CALL                             R10 0 0
       55 SETTABLEKS                       R7 R3 K4 ["memoizedState"]
       57 GETTABLEKS                       R10 R3 K9 ["baseQueue"]
       59 JUMPIFNOTEQKNIL                  R10 ; [+3]
       61 SETTABLEKS                       R7 R3 K10 ["baseState"]
       63 SETTABLEKS                       R7 R4 K11 ["lastRenderedState"]
       65 MOVE                             R8 R7
       66 MOVE                             R9 R5
       67 RETURN                           R8 2

PROTO_17:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R3 R3 K2 ["__DEV__"]
        4 JUMPIFNOT                        R3 ; [+3]
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R1
        7 CALL                             R3 1 0
        8 GETTABLEKS                       R3 R1 K3 ["_getVersion"]
       10 MOVE                             R4 R3
       11 GETTABLEKS                       R5 R1 K4 ["_source"]
       13 CALL                             R4 1 1
       14 LOADB                            R5 0
       15 GETUPVAL                         R6 1
       16 MOVE                             R7 R1
       17 CALL                             R6 1 1
       18 JUMPIFEQKNIL                     R6 ; [+6]
       20 JUMPIFEQ                         R6 R4 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 JUMP                             ; [+11]
       25 GETUPVAL                         R7 2
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R9 R0 K5 ["mutableReadLanes"]
       29 CALL                             R7 2 1
       30 MOVE                             R5 R7
       31 JUMPIFNOT                        R5 ; [+4]
       32 GETUPVAL                         R7 4
       33 MOVE                             R8 R1
       34 MOVE                             R9 R4
       35 CALL                             R7 2 0
       36 JUMPIFNOT                        R5 ; [+22]
       37 MOVE                             R7 R2
       38 GETTABLEKS                       R8 R1 K4 ["_source"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K1 [_G]
       43 GETTABLEKS                       R8 R8 K2 ["__DEV__"]
       45 JUMPIFNOT                        R8 ; [+12]
       46 FASTCALL1                        TYPEOF R7 ; [+3]
       47 MOVE                             R9 R7
       48 GETIMPORT                        R8 K7 [typeof]
       50 CALL                             R8 1 1
       51 JUMPIFNOTEQKS                    R8 K8 ["function"] ; [+6]
       53 GETUPVAL                         R8 5
       54 GETTABLEKS                       R8 R8 K9 ["error"]
       56 LOADK                            R9 K10 ["Mutable source should not return a function as the snapshot value. Functions may close over mutable values and cause tearing."]
       57 CALL                             R8 1 0
       58 RETURN                           R7 1
       59 GETUPVAL                         R7 6
       60 MOVE                             R8 R1
       61 CALL                             R7 1 0
       62 GETUPVAL                         R7 7
       63 LOADB                            R8 0
       64 LOADK                            R9 K11 ["Cannot read from mutable source during the current render without tearing. This is a bug in React. Please file an issue."]
       65 CALL                             R7 2 0
       66 LOADNIL                          R7
       67 RETURN                           R7 1

PROTO_18:
        0 GETGLOBAL                        R0 K0 ["readFromUnsubcribedMutableSource"]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["getSnapshot"]
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 2
        6 SETTABLEKS                       R1 R0 K1 ["setSnapshot"]
        8 GETUPVAL                         R0 3
        9 GETUPVAL                         R1 4
       10 GETTABLEKS                       R1 R1 K2 ["_source"]
       12 CALL                             R0 1 1
       13 GETUPVAL                         R2 5
       14 JUMPIFNOTEQ                      R2 R0 ; [+9]
       16 LOADB                            R1 1
       17 JUMPIFNOTEQKN                    R2 K3 [0] ; [+13]
       19 LOADB                            R1 1
       20 DIVRK                            R3 R4 K2 ["_source"]
       21 DIVRK                            R4 R4 K0 ["getSnapshot"]
       22 JUMPIFEQ                         R3 R4 ; [+8]
       24 LOADB                            R1 0
       25 JUMPIFEQ                         R2 R2 ; [+5]
       27 JUMPIFNOTEQ                      R0 R0 ; [+2]
       29 LOADB                            R1 0 +1
       30 LOADB                            R1 1
       31 JUMPIF                           R1 ; [+57]
       32 GETUPVAL                         R1 1
       33 GETUPVAL                         R2 4
       34 GETTABLEKS                       R2 R2 K2 ["_source"]
       36 CALL                             R1 1 1
       37 GETIMPORT                        R2 K6 [_G]
       39 GETTABLEKS                       R2 R2 K7 ["__DEV__"]
       41 JUMPIFNOT                        R2 ; [+12]
       42 FASTCALL1                        TYPEOF R1 ; [+3]
       43 MOVE                             R3 R1
       44 GETIMPORT                        R2 K9 [typeof]
       46 CALL                             R2 1 1
       47 JUMPIFNOTEQKS                    R2 K10 ["function"] ; [+6]
       49 GETUPVAL                         R2 6
       50 GETTABLEKS                       R2 R2 K11 ["error"]
       52 LOADK                            R3 K12 ["Mutable source should not return a function as the snapshot value. Functions may close over mutable values and cause tearing."]
       53 CALL                             R2 1 0
       54 GETUPVAL                         R3 7
       55 JUMPIFNOTEQ                      R3 R1 ; [+9]
       57 LOADB                            R2 1
       58 JUMPIFNOTEQKN                    R3 K3 [0] ; [+13]
       60 LOADB                            R2 1
       61 DIVRK                            R4 R4 K3 [0]
       62 DIVRK                            R5 R4 K1 ["setSnapshot"]
       63 JUMPIFEQ                         R4 R5 ; [+8]
       65 LOADB                            R2 0
       66 JUMPIFEQ                         R3 R3 ; [+5]
       68 JUMPIFNOTEQ                      R1 R1 ; [+2]
       70 LOADB                            R2 0 +1
       71 LOADB                            R2 1
       72 JUMPIF                           R2 ; [+10]
       73 GETUPVAL                         R2 2
       74 MOVE                             R3 R1
       75 CALL                             R2 1 0
       76 GETUPVAL                         R2 8
       77 GETUPVAL                         R3 9
       78 CALL                             R2 1 1
       79 GETUPVAL                         R3 10
       80 GETUPVAL                         R4 11
       81 MOVE                             R5 R2
       82 CALL                             R3 2 0
       83 GETUPVAL                         R2 12
       84 GETUPVAL                         R3 11
       85 GETUPVAL                         R4 11
       86 GETTABLEKS                       R4 R4 K13 ["mutableReadLanes"]
       88 CALL                             R2 2 0
       89 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["_source"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 GETUPVAL                         R0 3
        8 GETUPVAL                         R1 4
        9 CALL                             R0 1 1
       10 GETUPVAL                         R1 5
       11 GETUPVAL                         R2 6
       12 MOVE                             R3 R0
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_21:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSnapshot"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["setSnapshot"]
        6 GETIMPORT                        R2 K3 [pcall]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          UPVAL U4
       15 CAPTURE                          UPVAL U5
       16 CALL                             R2 1 2
       17 JUMPIF                           R2 ; [+4]
       18 MOVE                             R4 R1
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          VAL R3
       21 CALL                             R4 1 0
       22 RETURN                           R0 0

PROTO_23:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 GETUPVAL                         R1 6
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K0 ["_source"]
       11 MOVE                             R3 R0
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K2 [_G]
       15 GETTABLEKS                       R2 R2 K3 ["__DEV__"]
       17 JUMPIFNOT                        R2 ; [+12]
       18 FASTCALL1                        TYPEOF R1 ; [+3]
       19 MOVE                             R3 R1
       20 GETIMPORT                        R2 K5 [typeof]
       22 CALL                             R2 1 1
       23 JUMPIFEQKS                       R2 K6 ["function"] ; [+6]
       25 GETUPVAL                         R2 7
       26 GETTABLEKS                       R2 R2 K7 ["error"]
       28 LOADK                            R3 K8 ["Mutable source subscribe function must return an unsubscribe function."]
       29 CALL                             R2 1 0
       30 RETURN                           R1 1

PROTO_24:
        0 PREPVARARGS                      0
        1 GETGLOBAL                        R0 K0 ["dispatchAction"]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 GETVARARGS                       R3 -1
        6 CALL                             R0 -1 -1
        7 RETURN                           R0 -1

PROTO_25:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 GETUPVAL                         R5 1
        3 JUMPIFNOTEQKNIL                  R4 ; [+2]
        5 LOADB                            R6 0 +1
        6 LOADB                            R6 1
        7 LOADK                            R7 K0 ["Expected a work-in-progress root. This is a bug in React. Please file an issue."]
        8 CALL                             R5 2 0
        9 GETTABLEKS                       R5 R1 K1 ["_getVersion"]
       11 MOVE                             R6 R5
       12 GETTABLEKS                       R7 R1 K2 ["_source"]
       14 CALL                             R6 1 1
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R7 R7 K3 ["current"]
       18 GETTABLEKS                       R8 R7 K4 ["useState"]
       20 NEWCLOSURE                       R9 P0
       21 CAPTURE                          VAL R4
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 CALL                             R8 1 2
       25 MOVE                             R10 R8
       26 GETUPVAL                         R11 3
       27 GETTABLEKS                       R12 R0 K5 ["memoizedState"]
       29 GETTABLEKS                       R13 R12 K6 ["refs"]
       31 JUMPIFNOTEQKNIL                  R13 ; [+11]
       33 GETIMPORT                        R13 K8 [error]
       35 GETIMPORT                        R15 K11 [debug.traceback]
       37 CALL                             R15 0 -1
       38 FASTCALL                         TOSTRING ; [+2]
       39 GETIMPORT                        R14 K13 [tostring]
       41 CALL                             R14 -1 1
       42 CALL                             R13 1 0
       43 GETTABLEKS                       R13 R12 K6 ["refs"]
       45 GETTABLEKS                       R14 R13 K14 ["getSnapshot"]
       47 GETTABLEKS                       R15 R12 K15 ["source"]
       49 GETTABLEKS                       R16 R12 K16 ["subscribe"]
       51 GETUPVAL                         R17 4
       52 DUPTABLE                         R18 K17 [{"refs", "source", "subscribe"}]
       53 SETTABLEKS                       R13 R18 K6 ["refs"]
       55 SETTABLEKS                       R1 R18 K15 ["source"]
       57 SETTABLEKS                       R3 R18 K16 ["subscribe"]
       59 SETTABLEKS                       R18 R0 K5 ["memoizedState"]
       61 GETTABLEKS                       R18 R7 K18 ["useEffect"]
       63 NEWCLOSURE                       R19 P1
       64 CAPTURE                          VAL R13
       65 CAPTURE                          VAL R2
       66 CAPTURE                          REF R9
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R6
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          REF R10
       72 CAPTURE                          UPVAL U6
       73 CAPTURE                          VAL R17
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          VAL R4
       76 CAPTURE                          UPVAL U8
       77 NEWTABLE                         R20 0 3
       79 MOVE                             R21 R2
       80 MOVE                             R22 R1
       81 MOVE                             R23 R3
       82 SETLIST                          R20 R21 3 [1]
       84 CALL                             R18 2 0
       85 GETTABLEKS                       R18 R7 K18 ["useEffect"]
       87 NEWCLOSURE                       R19 P2
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R1
       90 CAPTURE                          UPVAL U6
       91 CAPTURE                          VAL R17
       92 CAPTURE                          UPVAL U7
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R3
       95 CAPTURE                          UPVAL U5
       96 NEWTABLE                         R20 0 2
       98 MOVE                             R21 R1
       99 MOVE                             R22 R3
      100 SETLIST                          R20 R21 2 [1]
      102 CALL                             R18 2 0
      103 JUMPIFNOTEQ                      R14 R2 ; [+9]
      105 LOADB                            R18 1
      106 JUMPIFNOTEQKN                    R14 K19 [0] ; [+13]
      108 LOADB                            R18 1
      109 DIVRK                            R19 R20 K14 ["getSnapshot"]
      110 DIVRK                            R20 R20 K2 ["_source"]
      111 JUMPIFEQ                         R19 R20 ; [+8]
      113 LOADB                            R18 0
      114 JUMPIFEQ                         R14 R14 ; [+5]
      116 JUMPIFNOTEQ                      R2 R2 ; [+2]
      118 LOADB                            R18 0 +1
      119 LOADB                            R18 1
      120 JUMPIFNOT                        R18 ; [+36]
      121 JUMPIFNOTEQ                      R15 R1 ; [+9]
      123 LOADB                            R18 1
      124 JUMPIFNOTEQKN                    R15 K19 [0] ; [+13]
      126 LOADB                            R18 1
      127 DIVRK                            R19 R20 K15 ["source"]
      128 DIVRK                            R20 R20 K1 ["_getVersion"]
      129 JUMPIFEQ                         R19 R20 ; [+8]
      131 LOADB                            R18 0
      132 JUMPIFEQ                         R15 R15 ; [+5]
      134 JUMPIFNOTEQ                      R1 R1 ; [+2]
      136 LOADB                            R18 0 +1
      137 LOADB                            R18 1
      138 JUMPIFNOT                        R18 ; [+18]
      139 JUMPIFNOTEQ                      R16 R3 ; [+9]
      141 LOADB                            R18 1
      142 JUMPIFNOTEQKN                    R16 K19 [0] ; [+13]
      144 LOADB                            R18 1
      145 DIVRK                            R19 R20 K16 ["subscribe"]
      146 DIVRK                            R20 R20 K3 ["current"]
      147 JUMPIFEQ                         R19 R20 ; [+8]
      149 LOADB                            R18 0
      150 JUMPIFEQ                         R16 R16 ; [+5]
      152 JUMPIFNOTEQ                      R3 R3 ; [+2]
      154 LOADB                            R18 0 +1
      155 LOADB                            R18 1
      156 JUMPIF                           R18 ; [+37]
      157 DUPTABLE                         R18 K25 [{"pending", "dispatch", "lastRenderedReducer", "lastRenderedState"}]
      158 LOADNIL                          R19
      159 SETTABLEKS                       R19 R18 K21 ["pending"]
      161 LOADNIL                          R19
      162 SETTABLEKS                       R19 R18 K22 ["dispatch"]
      164 GETGLOBAL                        R19 K26 ["basicStateReducer"]
      166 SETTABLEKS                       R19 R18 K23 ["lastRenderedReducer"]
      168 SETTABLEKS                       R10 R18 K24 ["lastRenderedState"]
      170 GETUPVAL                         R19 4
      171 NEWCLOSURE                       R9 P3
      172 CAPTURE                          VAL R19
      173 CAPTURE                          VAL R18
      174 SETTABLEKS                       R9 R18 K22 ["dispatch"]
      176 SETTABLEKS                       R18 R11 K27 ["queue"]
      178 LOADNIL                          R20
      179 SETTABLEKS                       R20 R11 K28 ["baseQueue"]
      181 GETGLOBAL                        R20 K29 ["readFromUnsubcribedMutableSource"]
      183 MOVE                             R21 R4
      184 MOVE                             R22 R1
      185 MOVE                             R23 R2
      186 CALL                             R20 3 1
      187 MOVE                             R10 R20
      188 SETTABLEKS                       R10 R11 K30 ["baseState"]
      190 GETTABLEKS                       R20 R11 K30 ["baseState"]
      192 SETTABLEKS                       R20 R11 K5 ["memoizedState"]
      194 CLOSEUPVALS                      R9
      195 RETURN                           R10 1

PROTO_26:
        0 DUPTABLE                         R4 K5 [{"memoizedState", "baseState", "baseQueue", "queue", "next"}]
        1 LOADNIL                          R5
        2 SETTABLEKS                       R5 R4 K0 ["memoizedState"]
        4 LOADNIL                          R5
        5 SETTABLEKS                       R5 R4 K1 ["baseState"]
        7 LOADNIL                          R5
        8 SETTABLEKS                       R5 R4 K2 ["baseQueue"]
       10 LOADNIL                          R5
       11 SETTABLEKS                       R5 R4 K3 ["queue"]
       13 LOADNIL                          R5
       14 SETTABLEKS                       R5 R4 K4 ["next"]
       16 GETUPVAL                         R5 0
       17 JUMPIFNOTEQKNIL                  R5 ; [+6]
       19 GETUPVAL                         R5 1
       20 SETTABLEKS                       R4 R5 K0 ["memoizedState"]
       22 SETUPVAL                         R4 0
       23 JUMP                             ; [+4]
       24 GETUPVAL                         R5 0
       25 SETTABLEKS                       R4 R5 K4 ["next"]
       27 SETUPVAL                         R4 0
       28 GETUPVAL                         R3 0
       29 DUPTABLE                         R4 K9 [{"refs", "source", "subscribe"}]
       30 DUPTABLE                         R5 K12 [{"getSnapshot", "setSnapshot"}]
       31 SETTABLEKS                       R1 R5 K10 ["getSnapshot"]
       33 LOADNIL                          R6
       34 SETTABLEKS                       R6 R5 K11 ["setSnapshot"]
       36 SETTABLEKS                       R5 R4 K6 ["refs"]
       38 SETTABLEKS                       R0 R4 K7 ["source"]
       40 SETTABLEKS                       R2 R4 K8 ["subscribe"]
       42 SETTABLEKS                       R4 R3 K0 ["memoizedState"]
       44 GETGLOBAL                        R4 K13 ["useMutableSource"]
       46 MOVE                             R5 R3
       47 MOVE                             R6 R0
       48 MOVE                             R7 R1
       49 MOVE                             R8 R2
       50 CALL                             R4 4 -1
       51 RETURN                           R4 -1

PROTO_27:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 GETGLOBAL                        R4 K0 ["useMutableSource"]
        4 MOVE                             R5 R3
        5 MOVE                             R6 R0
        6 MOVE                             R7 R1
        7 MOVE                             R8 R2
        8 CALL                             R4 4 -1
        9 RETURN                           R4 -1

PROTO_28:
        0 PREPVARARGS                      0
        1 GETGLOBAL                        R0 K0 ["dispatchAction"]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 GETVARARGS                       R3 -1
        6 CALL                             R0 -1 -1
        7 RETURN                           R0 -1

PROTO_29:
        0 DUPTABLE                         R2 K5 [{"memoizedState", "baseState", "baseQueue", "queue", "next"}]
        1 LOADNIL                          R3
        2 SETTABLEKS                       R3 R2 K0 ["memoizedState"]
        4 LOADNIL                          R3
        5 SETTABLEKS                       R3 R2 K1 ["baseState"]
        7 LOADNIL                          R3
        8 SETTABLEKS                       R3 R2 K2 ["baseQueue"]
       10 LOADNIL                          R3
       11 SETTABLEKS                       R3 R2 K3 ["queue"]
       13 LOADNIL                          R3
       14 SETTABLEKS                       R3 R2 K4 ["next"]
       16 GETUPVAL                         R3 0
       17 JUMPIFNOTEQKNIL                  R3 ; [+6]
       19 GETUPVAL                         R3 1
       20 SETTABLEKS                       R2 R3 K0 ["memoizedState"]
       22 SETUPVAL                         R2 0
       23 JUMP                             ; [+4]
       24 GETUPVAL                         R3 0
       25 SETTABLEKS                       R2 R3 K4 ["next"]
       27 SETUPVAL                         R2 0
       28 GETUPVAL                         R1 0
       29 FASTCALL1                        TYPEOF R0 ; [+3]
       30 MOVE                             R3 R0
       31 GETIMPORT                        R2 K7 [typeof]
       33 CALL                             R2 1 1
       34 JUMPIFNOTEQKS                    R2 K8 ["function"] ; [+5]
       36 MOVE                             R2 R0
       37 MOVE                             R3 R2
       38 CALL                             R3 0 1
       39 MOVE                             R0 R3
       40 SETTABLEKS                       R0 R1 K1 ["baseState"]
       42 GETTABLEKS                       R2 R1 K1 ["baseState"]
       44 SETTABLEKS                       R2 R1 K0 ["memoizedState"]
       46 DUPTABLE                         R2 K13 [{"pending", "dispatch", "lastRenderedReducer", "lastRenderedState"}]
       47 LOADNIL                          R3
       48 SETTABLEKS                       R3 R2 K9 ["pending"]
       50 LOADNIL                          R3
       51 SETTABLEKS                       R3 R2 K10 ["dispatch"]
       53 GETGLOBAL                        R3 K14 ["basicStateReducer"]
       55 SETTABLEKS                       R3 R2 K11 ["lastRenderedReducer"]
       57 SETTABLEKS                       R0 R2 K12 ["lastRenderedState"]
       59 SETTABLEKS                       R2 R1 K3 ["queue"]
       61 GETTABLEKS                       R2 R1 K3 ["queue"]
       63 GETUPVAL                         R3 1
       64 NEWCLOSURE                       R4 P0
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R2
       67 SETTABLEKS                       R4 R2 K10 ["dispatch"]
       69 GETTABLEKS                       R4 R2 K10 ["dispatch"]
       71 GETTABLEKS                       R5 R1 K0 ["memoizedState"]
       73 MOVE                             R6 R4
       74 RETURN                           R5 2

PROTO_30:
        0 GETGLOBAL                        R1 K0 ["updateReducer"]
        2 GETGLOBAL                        R2 K1 ["basicStateReducer"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_31:
        0 GETGLOBAL                        R1 K0 ["rerenderReducer"]
        2 GETGLOBAL                        R2 K1 ["basicStateReducer"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_32:
        0 DUPTABLE                         R4 K5 [{"tag", "create", "destroy", "deps", "next"}]
        1 SETTABLEKS                       R0 R4 K0 ["tag"]
        3 SETTABLEKS                       R1 R4 K1 ["create"]
        5 SETTABLEKS                       R2 R4 K2 ["destroy"]
        7 SETTABLEKS                       R3 R4 K3 ["deps"]
        9 LOADNIL                          R5
       10 SETTABLEKS                       R5 R4 K4 ["next"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K6 ["updateQueue"]
       15 JUMPIFNOTEQKNIL                  R5 ; [+14]
       17 DUPTABLE                         R6 K8 [{"lastEffect"}]
       18 LOADNIL                          R7
       19 SETTABLEKS                       R7 R6 K7 ["lastEffect"]
       21 MOVE                             R5 R6
       22 GETUPVAL                         R6 0
       23 SETTABLEKS                       R5 R6 K6 ["updateQueue"]
       25 SETTABLEKS                       R4 R4 K4 ["next"]
       27 SETTABLEKS                       R4 R5 K7 ["lastEffect"]
       29 RETURN                           R4 1
       30 GETTABLEKS                       R6 R5 K7 ["lastEffect"]
       32 JUMPIFNOTEQKNIL                  R6 ; [+6]
       34 SETTABLEKS                       R4 R5 K7 ["lastEffect"]
       36 SETTABLEKS                       R4 R4 K4 ["next"]
       38 RETURN                           R4 1
       39 GETTABLEKS                       R7 R6 K4 ["next"]
       41 SETTABLEKS                       R4 R6 K4 ["next"]
       43 SETTABLEKS                       R7 R4 K4 ["next"]
       45 SETTABLEKS                       R4 R5 K7 ["lastEffect"]
       47 RETURN                           R4 1

PROTO_33:
        0 DUPTABLE                         R2 K5 [{"memoizedState", "baseState", "baseQueue", "queue", "next"}]
        1 LOADNIL                          R3
        2 SETTABLEKS                       R3 R2 K0 ["memoizedState"]
        4 LOADNIL                          R3
        5 SETTABLEKS                       R3 R2 K1 ["baseState"]
        7 LOADNIL                          R3
        8 SETTABLEKS                       R3 R2 K2 ["baseQueue"]
       10 LOADNIL                          R3
       11 SETTABLEKS                       R3 R2 K3 ["queue"]
       13 LOADNIL                          R3
       14 SETTABLEKS                       R3 R2 K4 ["next"]
       16 GETUPVAL                         R3 0
       17 JUMPIFNOTEQKNIL                  R3 ; [+6]
       19 GETUPVAL                         R3 1
       20 SETTABLEKS                       R2 R3 K0 ["memoizedState"]
       22 SETUPVAL                         R2 0
       23 JUMP                             ; [+4]
       24 GETUPVAL                         R3 0
       25 SETTABLEKS                       R2 R3 K4 ["next"]
       27 SETUPVAL                         R2 0
       28 GETUPVAL                         R1 0
       29 DUPTABLE                         R2 K7 [{"current"}]
       30 SETTABLEKS                       R0 R2 K6 ["current"]
       32 SETTABLEKS                       R2 R1 K0 ["memoizedState"]
       34 RETURN                           R2 1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["memoizedState"]
        4 RETURN                           R2 1

PROTO_35:
        0 DUPTABLE                         R5 K5 [{"memoizedState", "baseState", "baseQueue", "queue", "next"}]
        1 LOADNIL                          R6
        2 SETTABLEKS                       R6 R5 K0 ["memoizedState"]
        4 LOADNIL                          R6
        5 SETTABLEKS                       R6 R5 K1 ["baseState"]
        7 LOADNIL                          R6
        8 SETTABLEKS                       R6 R5 K2 ["baseQueue"]
       10 LOADNIL                          R6
       11 SETTABLEKS                       R6 R5 K3 ["queue"]
       13 LOADNIL                          R6
       14 SETTABLEKS                       R6 R5 K4 ["next"]
       16 GETUPVAL                         R6 0
       17 JUMPIFNOTEQKNIL                  R6 ; [+6]
       19 GETUPVAL                         R6 1
       20 SETTABLEKS                       R5 R6 K0 ["memoizedState"]
       22 SETUPVAL                         R5 0
       23 JUMP                             ; [+4]
       24 GETUPVAL                         R6 0
       25 SETTABLEKS                       R5 R6 K4 ["next"]
       27 SETUPVAL                         R5 0
       28 GETUPVAL                         R4 0
       29 GETUPVAL                         R5 1
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K6 ["flags"]
       33 FASTCALL2                        BIT32_BOR R7 R0 ; [+4]
       35 MOVE                             R8 R0
       36 GETIMPORT                        R6 K9 [bit32.bor]
       38 CALL                             R6 2 1
       39 SETTABLEKS                       R6 R5 K6 ["flags"]
       41 GETUPVAL                         R5 2
       42 GETUPVAL                         R7 3
       43 FASTCALL2                        BIT32_BOR R7 R1 ; [+4]
       45 MOVE                             R8 R1
       46 GETIMPORT                        R6 K9 [bit32.bor]
       48 CALL                             R6 2 1
       49 MOVE                             R7 R2
       50 LOADNIL                          R8
       51 MOVE                             R9 R3
       52 CALL                             R5 4 1
       53 SETTABLEKS                       R5 R4 K0 ["memoizedState"]
       55 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 LOADNIL                          R5
        3 GETUPVAL                         R6 1
        4 JUMPIFEQKNIL                     R6 ; [+24]
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K0 ["memoizedState"]
        9 GETTABLEKS                       R5 R6 K1 ["destroy"]
       11 JUMPIFEQKNIL                     R3 ; [+17]
       13 GETTABLEKS                       R7 R6 K2 ["deps"]
       15 GETUPVAL                         R8 2
       16 MOVE                             R9 R3
       17 MOVE                             R10 R7
       18 CALL                             R8 2 1
       19 JUMPIFNOT                        R8 ; [+9]
       20 GETUPVAL                         R8 3
       21 MOVE                             R9 R1
       22 MOVE                             R10 R2
       23 MOVE                             R11 R5
       24 MOVE                             R12 R3
       25 CALL                             R8 4 1
       26 SETTABLEKS                       R8 R4 K0 ["memoizedState"]
       28 RETURN                           R0 0
       29 GETUPVAL                         R6 4
       30 GETUPVAL                         R8 4
       31 GETTABLEKS                       R8 R8 K3 ["flags"]
       33 FASTCALL2                        BIT32_BOR R8 R0 ; [+4]
       35 MOVE                             R9 R0
       36 GETIMPORT                        R7 K6 [bit32.bor]
       38 CALL                             R7 2 1
       39 SETTABLEKS                       R7 R6 K3 ["flags"]
       41 GETUPVAL                         R6 3
       42 GETUPVAL                         R8 5
       43 FASTCALL2                        BIT32_BOR R8 R1 ; [+4]
       45 MOVE                             R9 R1
       46 GETIMPORT                        R7 K6 [bit32.bor]
       48 CALL                             R7 2 1
       49 MOVE                             R8 R2
       50 MOVE                             R9 R5
       51 MOVE                             R10 R3
       52 CALL                             R6 4 1
       53 SETTABLEKS                       R6 R4 K0 ["memoizedState"]
       55 RETURN                           R0 0

PROTO_37:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+18]
        5 GETIMPORT                        R3 K1 [_G]
        7 GETTABLEKS                       R3 R3 K3 ["jest"]
        9 FASTCALL1                        TYPEOF R3 ; [+2]
       10 GETIMPORT                        R2 K5 [typeof]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKS                    R2 K6 ["nil"] ; [+6]
       15 GETIMPORT                        R2 K1 [_G]
       17 GETTABLEKS                       R2 R2 K7 ["__TESTEZ_RUNNING_TEST__"]
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETUPVAL                         R2 0
       21 GETUPVAL                         R3 1
       22 CALL                             R2 1 0
       23 GETIMPORT                        R2 K1 [_G]
       25 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
       27 JUMPIFNOT                        R2 ; [+15]
       28 GETUPVAL                         R2 2
       29 JUMPIFNOT                        R2 ; [+13]
       30 GETUPVAL                         R2 3
       31 GETUPVAL                         R4 4
       32 GETUPVAL                         R5 5
       33 GETUPVAL                         R6 6
       34 FASTCALL                         BIT32_BOR ; [+2]
       35 GETIMPORT                        R3 K10 [bit32.bor]
       37 CALL                             R3 3 1
       38 GETUPVAL                         R4 7
       39 MOVE                             R5 R0
       40 MOVE                             R6 R1
       41 CALL                             R2 4 -1
       42 RETURN                           R2 -1
       43 GETUPVAL                         R2 3
       44 GETUPVAL                         R4 5
       45 GETUPVAL                         R5 6
       46 FASTCALL2                        BIT32_BOR R4 R5 ; [+3]
       48 GETIMPORT                        R3 K10 [bit32.bor]
       50 CALL                             R3 2 1
       51 GETUPVAL                         R4 7
       52 MOVE                             R5 R0
       53 MOVE                             R6 R1
       54 CALL                             R2 4 -1
       55 RETURN                           R2 -1

PROTO_38:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+18]
        5 GETIMPORT                        R3 K1 [_G]
        7 GETTABLEKS                       R3 R3 K3 ["jest"]
        9 FASTCALL1                        TYPEOF R3 ; [+2]
       10 GETIMPORT                        R2 K5 [typeof]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKS                    R2 K6 ["nil"] ; [+6]
       15 GETIMPORT                        R2 K1 [_G]
       17 GETTABLEKS                       R2 R2 K7 ["__TESTEZ_RUNNING_TEST__"]
       19 JUMPIFNOT                        R2 ; [+3]
       20 GETUPVAL                         R2 0
       21 GETUPVAL                         R3 1
       22 CALL                             R2 1 0
       23 GETGLOBAL                        R2 K8 ["updateEffectImpl"]
       25 GETUPVAL                         R3 2
       26 GETUPVAL                         R4 3
       27 MOVE                             R5 R0
       28 MOVE                             R6 R1
       29 CALL                             R2 4 -1
       30 RETURN                           R2 -1

PROTO_39:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+15]
        5 GETUPVAL                         R2 0
        6 JUMPIFNOT                        R2 ; [+13]
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R4 2
        9 GETUPVAL                         R5 3
       10 FASTCALL2                        BIT32_BOR R4 R5 ; [+3]
       12 GETIMPORT                        R3 K5 [bit32.bor]
       14 CALL                             R3 2 1
       15 GETUPVAL                         R4 4
       16 MOVE                             R5 R0
       17 MOVE                             R6 R1
       18 CALL                             R2 4 -1
       19 RETURN                           R2 -1
       20 GETUPVAL                         R2 1
       21 GETUPVAL                         R3 3
       22 GETUPVAL                         R4 4
       23 MOVE                             R5 R0
       24 MOVE                             R6 R1
       25 CALL                             R2 4 -1
       26 RETURN                           R2 -1

PROTO_40:
        0 GETGLOBAL                        R2 K0 ["updateEffectImpl"]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 CALL                             R2 4 -1
        7 RETURN                           R2 -1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_42:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_43:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+9]
        7 MOVE                             R2 R0
        8 CALL                             R2 0 1
        9 MOVE                             R3 R1
       10 MOVE                             R4 R2
       11 CALL                             R3 1 0
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R1
       14 RETURN                           R3 1
       15 JUMPIFEQKNIL                     R1 ; [+41]
       17 GETIMPORT                        R2 K4 [_G]
       19 GETTABLEKS                       R2 R2 K5 ["__DEV__"]
       21 JUMPIFNOT                        R2 ; [+28]
       22 FASTCALL2K                       RAWGET R1 K6 ; [+5]
       24 MOVE                             R3 R1
       25 LOADK                            R4 K6 ["current"]
       26 GETIMPORT                        R2 K8 [rawget]
       28 CALL                             R2 2 1
       29 JUMPIFNOTEQKNIL                  R2 ; [+20]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K9 ["error"]
       34 LOADK                            R3 K10 ["Expected useImperativeHandle() first argument to either be a ref callback or React.createRef() object. Instead received: %s."]
       35 LOADK                            R5 K11 ["an object with keys {"]
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R8 R8 K12 ["join"]
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R9 R9 K13 ["keys"]
       42 MOVE                             R10 R1
       43 CALL                             R9 1 1
       44 LOADK                            R10 K14 [", "]
       45 CALL                             R8 2 1
       46 MOVE                             R6 R8
       47 LOADK                            R7 K15 ["}"]
       48 CONCAT                           R4 R5 R7
       49 CALL                             R2 2 0
       50 MOVE                             R2 R0
       51 CALL                             R2 0 1
       52 SETTABLEKS                       R2 R1 K6 ["current"]
       54 NEWCLOSURE                       R3 P1
       55 CAPTURE                          VAL R1
       56 RETURN                           R3 1
       57 RETURN                           R0 0

PROTO_44:
        0 GETGLOBAL                        R0 K0 ["imperativeHandleEffect"]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_45:
        0 GETGLOBAL                        R0 K0 ["imperativeHandleEffect"]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_46:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R3 R3 K2 ["__DEV__"]
        4 JUMPIFNOT                        R3 ; [+21]
        5 FASTCALL1                        TYPEOF R1 ; [+3]
        6 MOVE                             R4 R1
        7 GETIMPORT                        R3 K4 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFEQKS                       R3 K5 ["function"] ; [+15]
       12 LOADK                            R3 K6 ["nil"]
       13 JUMPIFNOT                        R1 ; [+6]
       14 FASTCALL1                        TYPEOF R1 ; [+3]
       15 MOVE                             R5 R1
       16 GETIMPORT                        R4 K4 [typeof]
       18 CALL                             R4 1 1
       19 MOVE                             R3 R4
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K7 ["error"]
       23 LOADK                            R5 K8 ["Expected useImperativeHandle() second argument to be a function that creates a handle. Instead received: %s."]
       24 MOVE                             R6 R3
       25 CALL                             R4 2 0
       26 LOADNIL                          R3
       27 JUMPIFEQKNIL                     R2 ; [+14]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K9 ["List"]
       32 GETTABLEKS                       R4 R4 K10 ["join"]
       34 MOVE                             R5 R2
       35 NEWTABLE                         R6 0 1
       37 MOVE                             R7 R0
       38 SETLIST                          R6 R7 1 [1]
       40 CALL                             R4 2 1
       41 MOVE                             R3 R4
       42 GETIMPORT                        R4 K1 [_G]
       44 GETTABLEKS                       R4 R4 K2 ["__DEV__"]
       46 JUMPIFNOT                        R4 ; [+17]
       47 GETUPVAL                         R4 2
       48 JUMPIFNOT                        R4 ; [+15]
       49 GETUPVAL                         R4 3
       50 GETUPVAL                         R6 4
       51 GETUPVAL                         R7 5
       52 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       54 GETIMPORT                        R5 K13 [bit32.bor]
       56 CALL                             R5 2 1
       57 GETUPVAL                         R6 6
       58 NEWCLOSURE                       R7 P0
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R0
       61 MOVE                             R8 R3
       62 CALL                             R4 4 -1
       63 RETURN                           R4 -1
       64 GETUPVAL                         R4 3
       65 GETUPVAL                         R5 5
       66 GETUPVAL                         R6 6
       67 NEWCLOSURE                       R7 P1
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R0
       70 MOVE                             R8 R3
       71 CALL                             R4 4 -1
       72 RETURN                           R4 -1

PROTO_47:
        0 GETGLOBAL                        R0 K0 ["imperativeHandleEffect"]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_48:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R3 R3 K2 ["__DEV__"]
        4 JUMPIFNOT                        R3 ; [+21]
        5 FASTCALL1                        TYPEOF R1 ; [+3]
        6 MOVE                             R4 R1
        7 GETIMPORT                        R3 K4 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFEQKS                       R3 K5 ["function"] ; [+15]
       12 LOADK                            R3 K6 ["nil"]
       13 JUMPIFNOT                        R1 ; [+6]
       14 FASTCALL1                        TYPEOF R1 ; [+3]
       15 MOVE                             R5 R1
       16 GETIMPORT                        R4 K4 [typeof]
       18 CALL                             R4 1 1
       19 MOVE                             R3 R4
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K7 ["error"]
       23 LOADK                            R5 K8 ["Expected useImperativeHandle() second argument to be a function that creates a handle. Instead received: %s."]
       24 MOVE                             R6 R3
       25 CALL                             R4 2 0
       26 LOADNIL                          R3
       27 JUMPIFEQKNIL                     R2 ; [+14]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K9 ["List"]
       32 GETTABLEKS                       R4 R4 K10 ["join"]
       34 MOVE                             R5 R2
       35 NEWTABLE                         R6 0 1
       37 MOVE                             R7 R0
       38 SETLIST                          R6 R7 1 [1]
       40 CALL                             R4 2 1
       41 MOVE                             R3 R4
       42 GETGLOBAL                        R4 K11 ["updateEffectImpl"]
       44 GETUPVAL                         R5 2
       45 GETUPVAL                         R6 3
       46 NEWCLOSURE                       R7 P0
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R0
       49 MOVE                             R8 R3
       50 CALL                             R4 4 -1
       51 RETURN                           R4 -1

PROTO_49:
        0 RETURN                           R0 0

PROTO_50:
        0 DUPTABLE                         R3 K5 [{"memoizedState", "baseState", "baseQueue", "queue", "next"}]
        1 LOADNIL                          R4
        2 SETTABLEKS                       R4 R3 K0 ["memoizedState"]
        4 LOADNIL                          R4
        5 SETTABLEKS                       R4 R3 K1 ["baseState"]
        7 LOADNIL                          R4
        8 SETTABLEKS                       R4 R3 K2 ["baseQueue"]
       10 LOADNIL                          R4
       11 SETTABLEKS                       R4 R3 K3 ["queue"]
       13 LOADNIL                          R4
       14 SETTABLEKS                       R4 R3 K4 ["next"]
       16 GETUPVAL                         R4 0
       17 JUMPIFNOTEQKNIL                  R4 ; [+6]
       19 GETUPVAL                         R4 1
       20 SETTABLEKS                       R3 R4 K0 ["memoizedState"]
       22 SETUPVAL                         R3 0
       23 JUMP                             ; [+4]
       24 GETUPVAL                         R4 0
       25 SETTABLEKS                       R3 R4 K4 ["next"]
       27 SETUPVAL                         R3 0
       28 GETUPVAL                         R2 0
       29 NEWTABLE                         R3 0 2
       31 MOVE                             R4 R0
       32 MOVE                             R5 R1
       33 SETLIST                          R3 R4 2 [1]
       35 SETTABLEKS                       R3 R2 K0 ["memoizedState"]
       37 RETURN                           R0 1

PROTO_51:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R3 R2 K0 ["memoizedState"]
        4 JUMPIFEQKNIL                     R3 ; [+11]
        6 JUMPIFEQKNIL                     R1 ; [+9]
        8 GETTABLEN                        R4 R3 2
        9 GETUPVAL                         R5 1
       10 MOVE                             R6 R1
       11 MOVE                             R7 R4
       12 CALL                             R5 2 1
       13 JUMPIFNOT                        R5 ; [+2]
       14 GETTABLEN                        R5 R3 1
       15 RETURN                           R5 1
       16 NEWTABLE                         R4 0 2
       18 MOVE                             R5 R0
       19 MOVE                             R6 R1
       20 SETLIST                          R4 R5 2 [1]
       22 SETTABLEKS                       R4 R2 K0 ["memoizedState"]
       24 RETURN                           R0 1

PROTO_52:
        0 DUPTABLE                         R3 K5 [{"memoizedState", "baseState", "baseQueue", "queue", "next"}]
        1 LOADNIL                          R4
        2 SETTABLEKS                       R4 R3 K0 ["memoizedState"]
        4 LOADNIL                          R4
        5 SETTABLEKS                       R4 R3 K1 ["baseState"]
        7 LOADNIL                          R4
        8 SETTABLEKS                       R4 R3 K2 ["baseQueue"]
       10 LOADNIL                          R4
       11 SETTABLEKS                       R4 R3 K3 ["queue"]
       13 LOADNIL                          R4
       14 SETTABLEKS                       R4 R3 K4 ["next"]
       16 GETUPVAL                         R4 0
       17 JUMPIFNOTEQKNIL                  R4 ; [+6]
       19 GETUPVAL                         R4 1
       20 SETTABLEKS                       R3 R4 K0 ["memoizedState"]
       22 SETUPVAL                         R3 0
       23 JUMP                             ; [+4]
       24 GETUPVAL                         R4 0
       25 SETTABLEKS                       R3 R4 K4 ["next"]
       27 SETUPVAL                         R3 0
       28 GETUPVAL                         R2 0
       29 MOVE                             R3 R0
       30 CALL                             R3 0 1
       31 NEWTABLE                         R4 0 2
       33 MOVE                             R5 R3
       34 MOVE                             R6 R1
       35 SETLIST                          R4 R5 2 [1]
       37 SETTABLEKS                       R4 R2 K0 ["memoizedState"]
       39 RETURN                           R3 1

PROTO_53:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R3 R2 K0 ["memoizedState"]
        4 JUMPIFEQKNIL                     R3 ; [+11]
        6 JUMPIFEQKNIL                     R1 ; [+9]
        8 GETTABLEN                        R4 R3 2
        9 GETUPVAL                         R5 1
       10 MOVE                             R6 R1
       11 MOVE                             R7 R4
       12 CALL                             R5 2 1
       13 JUMPIFNOT                        R5 ; [+2]
       14 GETTABLEN                        R5 R3 1
       15 RETURN                           R5 1
       16 MOVE                             R4 R0
       17 CALL                             R4 0 1
       18 NEWTABLE                         R5 0 2
       20 MOVE                             R6 R4
       21 MOVE                             R7 R1
       22 SETLIST                          R5 R6 2 [1]
       24 SETTABLEKS                       R5 R2 K0 ["memoizedState"]
       26 RETURN                           R4 1

PROTO_54:
        0 GETIMPORT                        R0 K1 [_G]
        2 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+2]
        5 LOADB                            R0 0
        6 RETURN                           R0 1
        7 LOADNIL                          R0
        8 RETURN                           R0 1

PROTO_55:
        0 LOADNIL                          R0
        1 GETIMPORT                        R1 K1 [_G]
        3 GETTABLEKS                       R1 R1 K2 ["__DEV__"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K3 ["warn"]
        9 LOADK                            R2 K4 ["!!! unimplemented: warnOnOpaqueIdentifierAccessInDEV"]
       10 CALL                             R1 1 0
       11 JUMP                             ; [+1]
       12 GETUPVAL                         R0 1
       13 GETUPVAL                         R1 2
       14 CALL                             R1 0 1
       15 JUMPIFNOT                        R1 ; [+18]
       16 GETIMPORT                        R1 K6 [print]
       18 LOADK                            R2 K7 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
       19 CALL                             R1 1 0
       20 GETIMPORT                        R1 K6 [print]
       22 LOADK                            R2 K7 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
       23 CALL                             R1 1 0
       24 GETIMPORT                        R1 K6 [print]
       26 LOADK                            R2 K8 ["UNIMPLEMENTED ERROR: ReactFiberHooks: getIsHydrating() true"]
       27 CALL                             R1 1 0
       28 GETIMPORT                        R1 K10 [error]
       30 LOADK                            R2 K11 ["FIXME (roblox): ReactFiberHooks: getIsHydrating() true is unimplemented"]
       31 CALL                             R1 1 0
       32 LOADNIL                          R1
       33 RETURN                           R1 1
       34 MOVE                             R1 R0
       35 CALL                             R1 0 1
       36 GETGLOBAL                        R2 K12 ["mountState"]
       38 MOVE                             R3 R1
       39 CALL                             R2 1 0
       40 RETURN                           R1 1

PROTO_56:
        0 GETGLOBAL                        R0 K0 ["updateState"]
        2 LOADNIL                          R1
        3 CALL                             R0 1 2
        4 RETURN                           R0 1

PROTO_57:
        0 GETGLOBAL                        R0 K0 ["rerenderState"]
        2 LOADNIL                          R1
        3 CALL                             R0 1 2
        4 RETURN                           R0 1

PROTO_58:
        0 PREPVARARGS                      3
        1 GETIMPORT                        R3 K1 [_G]
        3 GETTABLEKS                       R3 R3 K2 ["__DEV__"]
        5 JUMPIFNOT                        R3 ; [+28]
        6 LOADK                            R4 K3 ["#"]
        7 FASTCALL1                        SELECT_VARARG R4 ; [+3]
        8 GETIMPORT                        R3 K5 [select]
       10 GETVARARGS                       R5 -1
       11 CALL                             R3 -1 1
       12 LOADNIL                          R4
       13 JUMPIFNOTEQKN                    R3 K6 [1] ; [+8]
       15 LOADN                            R6 1
       16 FASTCALL1                        SELECT_VARARG R6 ; [+3]
       17 GETIMPORT                        R5 K5 [select]
       19 GETVARARGS                       R7 -1
       20 CALL                             R5 -1 1
       21 MOVE                             R4 R5
       22 FASTCALL1                        TYPEOF R4 ; [+3]
       23 MOVE                             R6 R4
       24 GETIMPORT                        R5 K8 [typeof]
       26 CALL                             R5 1 1
       27 JUMPIFNOTEQKS                    R5 K9 ["function"] ; [+6]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K10 ["error"]
       32 LOADK                            R6 K11 ["State updates from the useState() and useReducer() Hooks don't support the second callback argument. To execute a side effect after rendering, declare it in the component body with useEffect()."]
       33 CALL                             R5 1 0
       34 GETUPVAL                         R3 1
       35 CALL                             R3 0 1
       36 GETUPVAL                         R4 2
       37 MOVE                             R5 R0
       38 CALL                             R4 1 1
       39 DUPTABLE                         R5 K17 [{"lane", "action", "eagerReducer", "eagerState", "next"}]
       40 SETTABLEKS                       R4 R5 K12 ["lane"]
       42 SETTABLEKS                       R2 R5 K13 ["action"]
       44 LOADNIL                          R6
       45 SETTABLEKS                       R6 R5 K14 ["eagerReducer"]
       47 LOADNIL                          R6
       48 SETTABLEKS                       R6 R5 K15 ["eagerState"]
       50 LOADNIL                          R6
       51 SETTABLEKS                       R6 R5 K16 ["next"]
       53 GETTABLEKS                       R6 R1 K18 ["pending"]
       55 JUMPIFNOTEQKNIL                  R6 ; [+4]
       57 SETTABLEKS                       R5 R5 K16 ["next"]
       59 JUMP                             ; [+6]
       60 GETTABLEKS                       R7 R6 K16 ["next"]
       62 SETTABLEKS                       R7 R5 K16 ["next"]
       64 SETTABLEKS                       R5 R6 K16 ["next"]
       66 SETTABLEKS                       R5 R1 K18 ["pending"]
       68 GETTABLEKS                       R7 R0 K19 ["alternate"]
       70 GETUPVAL                         R8 3
       71 JUMPIFEQ                         R0 R8 ; [+6]
       73 JUMPIFEQKNIL                     R7 ; [+9]
       75 GETUPVAL                         R8 3
       76 JUMPIFNOTEQ                      R7 R8 ; [+6]
       78 LOADB                            R8 1
       79 SETUPVAL                         R8 4
       80 LOADB                            R8 1
       81 SETUPVAL                         R8 5
       82 JUMP                             ; [+101]
       83 GETTABLEKS                       R8 R0 K20 ["lanes"]
       85 GETUPVAL                         R9 6
       86 JUMPIFNOTEQ                      R8 R9 ; [+66]
       88 JUMPIFEQKNIL                     R7 ; [+6]
       90 GETTABLEKS                       R8 R7 K20 ["lanes"]
       92 GETUPVAL                         R9 6
       93 JUMPIFNOTEQ                      R8 R9 ; [+59]
       95 GETTABLEKS                       R8 R1 K21 ["lastRenderedReducer"]
       97 JUMPIFEQKNIL                     R8 ; [+55]
       99 LOADNIL                          R9
      100 GETIMPORT                        R10 K1 [_G]
      102 GETTABLEKS                       R10 R10 K2 ["__DEV__"]
      104 JUMPIFNOT                        R10 ; [+7]
      105 GETUPVAL                         R10 7
      106 GETTABLEKS                       R9 R10 K22 ["current"]
      108 GETUPVAL                         R10 7
      109 GETUPVAL                         R11 8
      110 SETTABLEKS                       R11 R10 K22 ["current"]
      112 GETTABLEKS                       R10 R1 K23 ["lastRenderedState"]
      114 GETIMPORT                        R11 K25 [pcall]
      116 MOVE                             R12 R8
      117 MOVE                             R13 R10
      118 MOVE                             R14 R2
      119 CALL                             R11 3 2
      120 JUMPIFNOT                        R11 ; [+4]
      121 SETTABLEKS                       R8 R5 K14 ["eagerReducer"]
      123 SETTABLEKS                       R12 R5 K15 ["eagerState"]
      125 GETIMPORT                        R13 K1 [_G]
      127 GETTABLEKS                       R13 R13 K2 ["__DEV__"]
      129 JUMPIFNOT                        R13 ; [+3]
      130 GETUPVAL                         R13 7
      131 SETTABLEKS                       R9 R13 K22 ["current"]
      133 JUMPIFNOTEQ                      R12 R10 ; [+9]
      135 LOADB                            R13 1
      136 JUMPIFNOTEQKN                    R12 K26 [0] ; [+13]
      138 LOADB                            R13 1
      139 DIVRK                            R14 R6 K12 ["lane"]
      140 DIVRK                            R15 R6 K10 ["error"]
      141 JUMPIFEQ                         R14 R15 ; [+8]
      143 LOADB                            R13 0
      144 JUMPIFEQ                         R12 R12 ; [+5]
      146 JUMPIFNOTEQ                      R10 R10 ; [+2]
      148 LOADB                            R13 0 +1
      149 LOADB                            R13 1
      150 JUMPIFNOT                        R13 ; [+1]
      151 RETURN                           R0 0
      152 JUMPIF                           R11 ; [0]
      153 GETIMPORT                        R8 K1 [_G]
      155 GETTABLEKS                       R8 R8 K2 ["__DEV__"]
      157 JUMPIFNOT                        R8 ; [+21]
      158 GETIMPORT                        R9 K1 [_G]
      160 GETTABLEKS                       R9 R9 K27 ["jest"]
      162 FASTCALL1                        TYPEOF R9 ; [+2]
      163 GETIMPORT                        R8 K8 [typeof]
      165 CALL                             R8 1 1
      166 JUMPIFNOTEQKS                    R8 K28 ["nil"] ; [+6]
      168 GETIMPORT                        R8 K1 [_G]
      170 GETTABLEKS                       R8 R8 K29 ["__TESTEZ_RUNNING_TEST__"]
      172 JUMPIFNOT                        R8 ; [+6]
      173 GETUPVAL                         R8 9
      174 MOVE                             R9 R0
      175 CALL                             R8 1 0
      176 GETUPVAL                         R8 10
      177 MOVE                             R9 R0
      178 CALL                             R8 1 0
      179 GETUPVAL                         R8 11
      180 MOVE                             R9 R0
      181 MOVE                             R10 R4
      182 MOVE                             R11 R3
      183 CALL                             R8 3 0
      184 GETIMPORT                        R8 K1 [_G]
      186 GETTABLEKS                       R8 R8 K2 ["__DEV__"]
      188 JUMPIFNOT                        R8 ; [+22]
      189 GETUPVAL                         R8 12
      190 JUMPIFNOT                        R8 ; [+20]
      191 GETTABLEKS                       R9 R0 K30 ["mode"]
      193 GETUPVAL                         R10 13
      194 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
      196 GETIMPORT                        R8 K33 [bit32.band]
      198 CALL                             R8 2 1
      199 JUMPIFEQKN                       R8 K26 [0] ; [+11]
      201 GETUPVAL                         R9 14
      202 GETTABLEKS                       R10 R0 K35 ["type"]
      204 CALL                             R9 1 1
      205 ORK                              R8 R9 K34 ["Unknown"]
      206 GETUPVAL                         R9 15
      207 MOVE                             R10 R8
      208 MOVE                             R11 R4
      209 MOVE                             R12 R2
      210 CALL                             R9 3 0
      211 GETUPVAL                         R8 16
      212 JUMPIFNOT                        R8 ; [+4]
      213 GETUPVAL                         R8 17
      214 MOVE                             R9 R0
      215 MOVE                             R10 R4
      216 CALL                             R8 2 0
      217 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["error"]
        3 LOADK                            R1 K1 ["Context can only be read while React is rendering. In classes, you can read it in the render method or getDerivedStateFromProps. In function components, you can read it directly in the function body, but not inside Hooks like useReducer() or useMemo()."]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["error"]
        3 LOADK                            R1 K1 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_62:
        0 LOADK                            R2 K0 ["useCallback"]
        1 SETUPVAL                         R2 0
        2 GETIMPORT                        R2 K2 [_G]
        4 GETTABLEKS                       R2 R2 K3 ["__DEV__"]
        6 JUMPIFNOT                        R2 ; [+18]
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 1
        9 JUMPIFNOTEQKNIL                  R3 ; [+8]
       11 NEWTABLE                         R3 0 1
       13 MOVE                             R4 R2
       14 SETLIST                          R3 R4 1 [1]
       16 SETUPVAL                         R3 1
       17 JUMP                             ; [+7]
       18 GETUPVAL                         R4 1
       19 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       21 MOVE                             R5 R2
       22 GETIMPORT                        R3 K6 [table.insert]
       24 CALL                             R3 2 0
       25 GETIMPORT                        R2 K2 [_G]
       27 GETTABLEKS                       R2 R2 K3 ["__DEV__"]
       29 JUMPIFNOT                        R2 ; [+19]
       30 JUMPIFEQKNIL                     R1 ; [+18]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K7 ["isArray"]
       35 MOVE                             R3 R1
       36 CALL                             R2 1 1
       37 JUMPIF                           R2 ; [+11]
       38 GETUPVAL                         R2 3
       39 GETTABLEKS                       R2 R2 K8 ["error"]
       41 LOADK                            R3 K9 ["%s received a final argument that is not an array (instead, received `%s`). When specified, the final argument must be an array."]
       42 GETUPVAL                         R4 0
       43 FASTCALL1                        TYPEOF R1 ; [+3]
       44 MOVE                             R6 R1
       45 GETIMPORT                        R5 K11 [typeof]
       47 CALL                             R5 1 1
       48 CALL                             R2 3 0
       49 GETGLOBAL                        R2 K12 ["mountCallback"]
       51 MOVE                             R3 R0
       52 MOVE                             R4 R1
       53 CALL                             R2 2 -1
       54 RETURN                           R2 -1

PROTO_63:
        0 LOADK                            R2 K0 ["useContext"]
        1 SETUPVAL                         R2 0
        2 GETIMPORT                        R2 K2 [_G]
        4 GETTABLEKS                       R2 R2 K3 ["__DEV__"]
        6 JUMPIFNOT                        R2 ; [+18]
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 1
        9 JUMPIFNOTEQKNIL                  R3 ; [+8]
       11 NEWTABLE                         R3 0 1
       13 MOVE                             R4 R2
       14 SETLIST                          R3 R4 1 [1]
       16 SETUPVAL                         R3 1
       17 JUMP                             ; [+7]
       18 GETUPVAL                         R4 1
       19 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       21 MOVE                             R5 R2
       22 GETIMPORT                        R3 K6 [table.insert]
       24 CALL                             R3 2 0
       25 GETUPVAL                         R2 2
       26 MOVE                             R3 R0
       27 MOVE                             R4 R1
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_64:
        0 LOADK                            R2 K0 ["useEffect"]
        1 SETUPVAL                         R2 0
        2 GETIMPORT                        R2 K2 [_G]
        4 GETTABLEKS                       R2 R2 K3 ["__DEV__"]
        6 JUMPIFNOT                        R2 ; [+18]
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 1
        9 JUMPIFNOTEQKNIL                  R3 ; [+8]
       11 NEWTABLE                         R3 0 1
       13 MOVE                             R4 R2
       14 SETLIST                          R3 R4 1 [1]
       16 SETUPVAL                         R3 1
       17 JUMP                             ; [+7]
       18 GETUPVAL                         R4 1
       19 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       21 MOVE                             R5 R2
       22 GETIMPORT                        R3 K6 [table.insert]
       24 CALL                             R3 2 0
       25 GETIMPORT                        R2 K2 [_G]
       27 GETTABLEKS                       R2 R2 K3 ["__DEV__"]
       29 JUMPIFNOT                        R2 ; [+19]
       30 JUMPIFEQKNIL                     R1 ; [+18]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K7 ["isArray"]
       35 MOVE                             R3 R1
       36 CALL                             R2 1 1
       37 JUMPIF                           R2 ; [+11]
       38 GETUPVAL                         R2 3
       39 GETTABLEKS                       R2 R2 K8 ["error"]
       41 LOADK                            R3 K9 ["%s received a final argument that is not an array (instead, received `%s`). When specified, the final argument must be an array."]
       42 GETUPVAL                         R4 0
       43 FASTCALL1                        TYPEOF R1 ; [+3]
       44 MOVE                             R6 R1
       45 GETIMPORT                        R5 K11 [typeof]
       47 CALL                             R5 1 1
       48 CALL                             R2 3 0
       49 GETUPVAL                         R2 4
       50 MOVE                             R3 R0
       51 MOVE                             R4 R1
       52 CALL                             R2 2 -1
       53 RETURN                           R2 -1

PROTO_65:
        0 LOADK                            R3 K0 ["useImperativeHandle"]
        1 SETUPVAL                         R3 0
        2 GETIMPORT                        R3 K2 [_G]
        4 GETTABLEKS                       R3 R3 K3 ["__DEV__"]
        6 JUMPIFNOT                        R3 ; [+18]
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R4 1
        9 JUMPIFNOTEQKNIL                  R4 ; [+8]
       11 NEWTABLE                         R4 0 1
       13 MOVE                             R5 R3
       14 SETLIST                          R4 R5 1 [1]
       16 SETUPVAL                         R4 1
       17 JUMP                             ; [+7]
       18 GETUPVAL                         R5 1
       19 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       21 MOVE                             R6 R3
       22 GETIMPORT                        R4 K6 [table.insert]
       24 CALL                             R4 2 0
       25 GETIMPORT                        R3 K2 [_G]
       27 GETTABLEKS                       R3 R3 K3 ["__DEV__"]
       29 JUMPIFNOT                        R3 ; [+19]
       30 JUMPIFEQKNIL                     R2 ; [+18]
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R3 R3 K7 ["isArray"]
       35 MOVE                             R4 R2
       36 CALL                             R3 1 1
       37 JUMPIF                           R3 ; [+11]
       38 GETUPVAL                         R3 3
       39 GETTABLEKS                       R3 R3 K8 ["error"]
       41 LOADK                            R4 K9 ["%s received a final argument that is not an array (instead, received `%s`). When specified, the final argument must be an array."]
       42 GETUPVAL                         R5 0
       43 FASTCALL1                        TYPEOF R2 ; [+3]
       44 MOVE                             R7 R2
       45 GETIMPORT                        R6 K11 [typeof]
       47 CALL                             R6 1 1
       48 CALL                             R3 3 0
       49 GETGLOBAL                        R3 K12 ["mountImperativeHandle"]
       51 MOVE                             R4 R0
       52 MOVE                             R5 R1
       53 MOVE                             R6 R2
       54 CALL                             R3 3 -1
       55 RETURN                           R3 -1

PROTO_66:
        0 LOADK                            R2 K0 ["useLayoutEffect"]
        1 SETUPVAL                         R2 0
        2 GETIMPORT                        R2 K2 [_G]
        4 GETTABLEKS                       R2 R2 K3 ["__DEV__"]
        6 JUMPIFNOT                        R2 ; [+18]
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 1
        9 JUMPIFNOTEQKNIL                  R3 ; [+8]
       11 NEWTABLE                         R3 0 1
       13 MOVE                             R4 R2
       14 SETLIST                          R3 R4 1 [1]
       16 SETUPVAL                         R3 1
       17 JUMP                             ; [+7]
       18 GETUPVAL                         R4 1
       19 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       21 MOVE                             R5 R2
       22 GETIMPORT                        R3 K6 [table.insert]
       24 CALL                             R3 2 0
       25 GETIMPORT                        R2 K2 [_G]
       27 GETTABLEKS                       R2 R2 K3 ["__DEV__"]
       29 JUMPIFNOT                        R2 ; [+19]
       30 JUMPIFEQKNIL                     R1 ; [+18]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K7 ["isArray"]
       35 MOVE                             R3 R1
       36 CALL                             R2 1 1
       37 JUMPIF                           R2 ; [+11]
       38 GETUPVAL                         R2 3
       39 GETTABLEKS                       R2 R2 K8 ["error"]
       41 LOADK                            R3 K9 ["%s received a final argument that is not an array (instead, received `%s`). When specified, the final argument must be an array."]
       42 GETUPVAL                         R4 0
       43 FASTCALL1                        TYPEOF R1 ; [+3]
       44 MOVE                             R6 R1
       45 GETIMPORT                        R5 K11 [typeof]
       47 CALL                             R5 1 1
       48 CALL                             R2 3 0
       49 GETUPVAL                         R2 4
       50 MOVE                             R3 R0
       51 MOVE                             R4 R1
       52 CALL                             R2 2 -1
       53 RETURN                           R2 -1

PROTO_67:
        0 LOADK                            R2 K0 ["useMemo"]
        1 SETUPVAL                         R2 0
        2 GETIMPORT                        R2 K2 [_G]
        4 GETTABLEKS                       R2 R2 K3 ["__DEV__"]
        6 JUMPIFNOT                        R2 ; [+18]
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 1
        9 JUMPIFNOTEQKNIL                  R3 ; [+8]
       11 NEWTABLE                         R3 0 1
       13 MOVE                             R4 R2
       14 SETLIST                          R3 R4 1 [1]
       16 SETUPVAL                         R3 1
       17 JUMP                             ; [+7]
       18 GETUPVAL                         R4 1
       19 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       21 MOVE                             R5 R2
       22 GETIMPORT                        R3 K6 [table.insert]
       24 CALL                             R3 2 0
       25 GETIMPORT                        R2 K2 [_G]
       27 GETTABLEKS                       R2 R2 K3 ["__DEV__"]
       29 JUMPIFNOT                        R2 ; [+19]
       30 JUMPIFEQKNIL                     R1 ; [+18]
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K7 ["isArray"]
       35 MOVE                             R3 R1
       36 CALL                             R2 1 1
       37 JUMPIF                           R2 ; [+11]
       38 GETUPVAL                         R2 3
       39 GETTABLEKS                       R2 R2 K8 ["error"]
       41 LOADK                            R3 K9 ["%s received a final argument that is not an array (instead, received `%s`). When specified, the final argument must be an array."]
       42 GETUPVAL                         R4 0
       43 FASTCALL1                        TYPEOF R1 ; [+3]
       44 MOVE                             R6 R1
       45 GETIMPORT                        R5 K11 [typeof]
       47 CALL                             R5 1 1
       48 CALL                             R2 3 0
       49 GETUPVAL                         R2 4
       50 GETTABLEKS                       R2 R2 K12 ["current"]
       52 GETUPVAL                         R3 4
       53 GETUPVAL                         R4 5
       54 SETTABLEKS                       R4 R3 K12 ["current"]
       56 GETIMPORT                        R3 K14 [pcall]
       58 GETGLOBAL                        R4 K15 ["mountMemo"]
       60 MOVE                             R5 R0
       61 MOVE                             R6 R1
       62 CALL                             R3 3 2
       63 GETUPVAL                         R5 4
       64 SETTABLEKS                       R2 R5 K12 ["current"]
       66 JUMPIF                           R3 ; [+4]
       67 GETIMPORT                        R5 K16 [error]
       69 MOVE                             R6 R4
       70 CALL                             R5 1 0
       71 RETURN                           R4 1

PROTO_68:
        0 LOADK                            R3 K0 ["useReducer"]
        1 SETUPVAL                         R3 0
        2 GETIMPORT                        R3 K2 [_G]
        4 GETTABLEKS                       R3 R3 K3 ["__DEV__"]
        6 JUMPIFNOT                        R3 ; [+18]
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R4 1
        9 JUMPIFNOTEQKNIL                  R4 ; [+8]
       11 NEWTABLE                         R4 0 1
       13 MOVE                             R5 R3
       14 SETLIST                          R4 R5 1 [1]
       16 SETUPVAL                         R4 1
       17 JUMP                             ; [+7]
       18 GETUPVAL                         R5 1
       19 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       21 MOVE                             R6 R3
       22 GETIMPORT                        R4 K6 [table.insert]
       24 CALL                             R4 2 0
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K7 ["current"]
       28 GETUPVAL                         R4 2
       29 GETUPVAL                         R5 3
       30 SETTABLEKS                       R5 R4 K7 ["current"]
       32 GETIMPORT                        R4 K9 [pcall]
       34 GETGLOBAL                        R5 K10 ["mountReducer"]
       36 MOVE                             R6 R0
       37 MOVE                             R7 R1
       38 MOVE                             R8 R2
       39 CALL                             R4 4 3
       40 GETUPVAL                         R7 2
       41 SETTABLEKS                       R3 R7 K7 ["current"]
       43 JUMPIF                           R4 ; [+4]
       44 GETIMPORT                        R7 K12 [error]
       46 MOVE                             R8 R5
       47 CALL                             R7 1 0
       48 RETURN                           R5 2

PROTO_69:
        0 LOADK                            R1 K0 ["useRef"]
        1 SETUPVAL                         R1 0
        2 GETIMPORT                        R1 K2 [_G]
        4 GETTABLEKS                       R1 R1 K3 ["__DEV__"]
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 JUMPIFNOTEQKNIL                  R2 ; [+8]
       11 NEWTABLE                         R2 0 1
       13 MOVE                             R3 R1
       14 SETLIST                          R2 R3 1 [1]
       16 SETUPVAL                         R2 1
       17 JUMP                             ; [+7]
       18 GETUPVAL                         R3 1
       19 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       21 MOVE                             R4 R1
       22 GETIMPORT                        R2 K6 [table.insert]
       24 CALL                             R2 2 0
       25 GETGLOBAL                        R1 K7 ["mountRef"]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 -1
       29 RETURN                           R1 -1

PROTO_70:
        0 LOADK                            R1 K0 ["useState"]
        1 SETUPVAL                         R1 0
        2 GETIMPORT                        R1 K2 [_G]
        4 GETTABLEKS                       R1 R1 K3 ["__DEV__"]
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 JUMPIFNOTEQKNIL                  R2 ; [+8]
       11 NEWTABLE                         R2 0 1
       13 MOVE                             R3 R1
       14 SETLIST                          R2 R3 1 [1]
       16 SETUPVAL                         R2 1
       17 JUMP                             ; [+7]
       18 GETUPVAL                         R3 1
       19 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       21 MOVE                             R4 R1
       22 GETIMPORT                        R2 K6 [table.insert]
       24 CALL                             R2 2 0
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R1 R1 K7 ["current"]
       28 GETUPVAL                         R2 2
       29 GETUPVAL                         R3 3
       30 SETTABLEKS                       R3 R2 K7 ["current"]
       32 GETIMPORT                        R2 K9 [pcall]
       34 GETGLOBAL                        R3 K10 ["mountState"]
       36 MOVE                             R4 R0
       37 CALL                             R2 2 3
       38 GETUPVAL                         R5 2
       39 SETTABLEKS                       R1 R5 K7 ["current"]
       41 JUMPIF                           R2 ; [+4]
       42 GETIMPORT                        R5 K12 [error]
       44 MOVE                             R6 R3
       45 CALL                             R5 1 0
       46 RETURN                           R3 2

PROTO_71:
        0 LOADK                            R2 K0 ["useDebugValue"]
        1 SETUPVAL                         R2 0
        2 GETIMPORT                        R2 K2 [_G]
        4 GETTABLEKS                       R2 R2 K3 ["__DEV__"]
        6 JUMPIFNOT                        R2 ; [+18]
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R3 1
        9 JUMPIFNOTEQKNIL                  R3 ; [+8]
       11 NEWTABLE                         R3 0 1
       13 MOVE                             R4 R2
       14 SETLIST                          R3 R4 1 [1]
       16 SETUPVAL                         R3 1
       17 JUMP                             ; [+7]
       18 GETUPVAL                         R4 1
       19 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       21 MOVE                             R5 R2
       22 GETIMPORT                        R3 K6 [table.insert]
       24 CALL                             R3 2 0
       25 GETGLOBAL                        R2 K7 ["mountDebugValue"]
       27 MOVE                             R3 R0
       28 MOVE                             R4 R1
       29 CALL                             R2 2 -1
       30 RETURN                           R2 -1

PROTO_72:
        0 LOADK                            R3 K0 ["useMutableSource"]
        1 SETUPVAL                         R3 0
        2 GETIMPORT                        R3 K2 [_G]
        4 GETTABLEKS                       R3 R3 K3 ["__DEV__"]
        6 JUMPIFNOT                        R3 ; [+18]
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R4 1
        9 JUMPIFNOTEQKNIL                  R4 ; [+8]
       11 NEWTABLE                         R4 0 1
       13 MOVE                             R5 R3
       14 SETLIST                          R4 R5 1 [1]
       16 SETUPVAL                         R4 1
       17 JUMP                             ; [+7]
       18 GETUPVAL                         R5 1
       19 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       21 MOVE                             R6 R3
       22 GETIMPORT                        R4 K6 [table.insert]
       24 CALL                             R4 2 0
       25 GETGLOBAL                        R3 K7 ["mountMutableSource"]
       27 MOVE                             R4 R0
       28 MOVE                             R5 R1
       29 MOVE                             R6 R2
       30 CALL                             R3 3 -1
       31 RETURN                           R3 -1

PROTO_73:
        0 LOADK                            R0 K0 ["useOpaqueIdentifier"]
        1 SETUPVAL                         R0 0
        2 GETIMPORT                        R0 K2 [_G]
        4 GETTABLEKS                       R0 R0 K3 ["__DEV__"]
        6 JUMPIFNOT                        R0 ; [+18]
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R1 1
        9 JUMPIFNOTEQKNIL                  R1 ; [+8]
       11 NEWTABLE                         R1 0 1
       13 MOVE                             R2 R0
       14 SETLIST                          R1 R2 1 [1]
       16 SETUPVAL                         R1 1
       17 JUMP                             ; [+7]
       18 GETUPVAL                         R2 1
       19 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       21 MOVE                             R3 R0
       22 GETIMPORT                        R1 K6 [table.insert]
       24 CALL                             R1 2 0
       25 GETGLOBAL                        R0 K7 ["mountOpaqueIdentifier"]
       27 CALL                             R0 0 -1
       28 RETURN                           R0 -1

PROTO_74:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_75:
        0 LOADK                            R2 K0 ["useCallback"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETIMPORT                        R2 K3 [_G]
        7 GETTABLEKS                       R2 R2 K4 ["__DEV__"]
        9 JUMPIFNOT                        R2 ; [+19]
       10 JUMPIFEQKNIL                     R1 ; [+18]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K5 ["isArray"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 JUMPIF                           R2 ; [+11]
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K6 ["error"]
       21 LOADK                            R3 K7 ["%s received a final argument that is not an array (instead, received `%s`). When specified, the final argument must be an array."]
       22 GETUPVAL                         R4 0
       23 FASTCALL1                        TYPEOF R1 ; [+3]
       24 MOVE                             R6 R1
       25 GETIMPORT                        R5 K9 [typeof]
       27 CALL                             R5 1 1
       28 CALL                             R2 3 0
       29 GETGLOBAL                        R2 K10 ["mountCallback"]
       31 MOVE                             R3 R0
       32 MOVE                             R4 R1
       33 CALL                             R2 2 -1
       34 RETURN                           R2 -1

PROTO_76:
        0 LOADK                            R2 K0 ["useContext"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_77:
        0 LOADK                            R2 K0 ["useEffect"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_78:
        0 LOADK                            R3 K0 ["useImperativeHandle"]
        1 SETUPVAL                         R3 0
        2 GETGLOBAL                        R3 K1 ["updateHookTypesDev"]
        4 CALL                             R3 0 0
        5 GETGLOBAL                        R3 K2 ["mountImperativeHandle"]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_79:
        0 LOADK                            R2 K0 ["useLayoutEffect"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_80:
        0 LOADK                            R2 K0 ["useMemo"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["current"]
        8 GETUPVAL                         R3 1
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K2 ["current"]
       12 GETIMPORT                        R3 K4 [pcall]
       14 GETGLOBAL                        R4 K5 ["mountMemo"]
       16 MOVE                             R5 R0
       17 MOVE                             R6 R1
       18 CALL                             R3 3 2
       19 GETUPVAL                         R5 1
       20 SETTABLEKS                       R2 R5 K2 ["current"]
       22 JUMPIF                           R3 ; [+4]
       23 GETIMPORT                        R5 K7 [error]
       25 MOVE                             R6 R4
       26 CALL                             R5 1 0
       27 RETURN                           R4 1

PROTO_81:
        0 LOADK                            R3 K0 ["useReducer"]
        1 SETUPVAL                         R3 0
        2 GETGLOBAL                        R3 K1 ["updateHookTypesDev"]
        4 CALL                             R3 0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["current"]
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 SETTABLEKS                       R5 R4 K2 ["current"]
       12 GETIMPORT                        R4 K4 [pcall]
       14 GETGLOBAL                        R5 K5 ["mountReducer"]
       16 MOVE                             R6 R0
       17 MOVE                             R7 R1
       18 MOVE                             R8 R2
       19 CALL                             R4 4 3
       20 GETUPVAL                         R7 1
       21 SETTABLEKS                       R3 R7 K2 ["current"]
       23 JUMPIF                           R4 ; [+4]
       24 GETIMPORT                        R7 K7 [error]
       26 MOVE                             R8 R5
       27 CALL                             R7 1 0
       28 RETURN                           R5 2

PROTO_82:
        0 LOADK                            R1 K0 ["useRef"]
        1 SETUPVAL                         R1 0
        2 GETGLOBAL                        R1 K1 ["updateHookTypesDev"]
        4 CALL                             R1 0 0
        5 GETGLOBAL                        R1 K2 ["mountRef"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_83:
        0 LOADK                            R1 K0 ["useState"]
        1 SETUPVAL                         R1 0
        2 GETGLOBAL                        R1 K1 ["updateHookTypesDev"]
        4 CALL                             R1 0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["current"]
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K2 ["current"]
       12 GETIMPORT                        R2 K4 [pcall]
       14 GETGLOBAL                        R3 K5 ["mountState"]
       16 MOVE                             R4 R0
       17 CALL                             R2 2 3
       18 GETUPVAL                         R5 1
       19 SETTABLEKS                       R1 R5 K2 ["current"]
       21 JUMPIF                           R2 ; [+4]
       22 GETIMPORT                        R5 K7 [error]
       24 MOVE                             R6 R3
       25 CALL                             R5 1 0
       26 RETURN                           R3 2

PROTO_84:
        0 LOADK                            R2 K0 ["useDebugValue"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETGLOBAL                        R2 K2 ["mountDebugValue"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_85:
        0 LOADK                            R3 K0 ["useMutableSource"]
        1 SETUPVAL                         R3 0
        2 GETGLOBAL                        R3 K1 ["updateHookTypesDev"]
        4 CALL                             R3 0 0
        5 GETGLOBAL                        R3 K2 ["mountMutableSource"]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_86:
        0 LOADK                            R0 K0 ["useOpaqueIdentifier"]
        1 SETUPVAL                         R0 0
        2 GETGLOBAL                        R0 K1 ["updateHookTypesDev"]
        4 CALL                             R0 0 0
        5 GETGLOBAL                        R0 K2 ["mountOpaqueIdentifier"]
        7 CALL                             R0 0 -1
        8 RETURN                           R0 -1

PROTO_87:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_88:
        0 LOADK                            R2 K0 ["useCallback"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETGLOBAL                        R2 K2 ["mountCallback"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_89:
        0 LOADK                            R2 K0 ["useContext"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_90:
        0 LOADK                            R2 K0 ["useEffect"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_91:
        0 LOADK                            R3 K0 ["useImperativeHandle"]
        1 SETUPVAL                         R3 0
        2 GETGLOBAL                        R3 K1 ["updateHookTypesDev"]
        4 CALL                             R3 0 0
        5 GETGLOBAL                        R3 K2 ["updateImperativeHandle"]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_92:
        0 LOADK                            R2 K0 ["useLayoutEffect"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_93:
        0 LOADK                            R2 K0 ["useMemo"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["current"]
        8 GETUPVAL                         R3 1
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K2 ["current"]
       12 GETIMPORT                        R3 K4 [pcall]
       14 GETGLOBAL                        R4 K5 ["updateMemo"]
       16 MOVE                             R5 R0
       17 MOVE                             R6 R1
       18 CALL                             R3 3 2
       19 GETUPVAL                         R5 1
       20 SETTABLEKS                       R2 R5 K2 ["current"]
       22 JUMPIF                           R3 ; [+4]
       23 GETIMPORT                        R5 K7 [error]
       25 MOVE                             R6 R4
       26 CALL                             R5 1 0
       27 RETURN                           R4 1

PROTO_94:
        0 LOADK                            R3 K0 ["useReducer"]
        1 SETUPVAL                         R3 0
        2 GETGLOBAL                        R3 K1 ["updateHookTypesDev"]
        4 CALL                             R3 0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["current"]
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 SETTABLEKS                       R5 R4 K2 ["current"]
       12 GETIMPORT                        R4 K4 [pcall]
       14 GETGLOBAL                        R5 K5 ["updateReducer"]
       16 MOVE                             R6 R0
       17 MOVE                             R7 R1
       18 MOVE                             R8 R2
       19 CALL                             R4 4 3
       20 GETUPVAL                         R7 1
       21 SETTABLEKS                       R3 R7 K2 ["current"]
       23 JUMPIF                           R4 ; [+4]
       24 GETIMPORT                        R7 K7 [error]
       26 MOVE                             R8 R5
       27 CALL                             R7 1 0
       28 RETURN                           R5 2

PROTO_95:
        0 LOADK                            R1 K0 ["useRef"]
        1 SETUPVAL                         R1 0
        2 GETGLOBAL                        R1 K1 ["updateHookTypesDev"]
        4 CALL                             R1 0 0
        5 GETGLOBAL                        R1 K2 ["updateRef"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_96:
        0 LOADK                            R1 K0 ["useState"]
        1 SETUPVAL                         R1 0
        2 GETGLOBAL                        R1 K1 ["updateHookTypesDev"]
        4 CALL                             R1 0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["current"]
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K2 ["current"]
       12 GETIMPORT                        R2 K4 [pcall]
       14 GETGLOBAL                        R3 K5 ["updateState"]
       16 MOVE                             R4 R0
       17 CALL                             R2 2 3
       18 GETUPVAL                         R5 1
       19 SETTABLEKS                       R1 R5 K2 ["current"]
       21 JUMPIF                           R2 ; [+4]
       22 GETIMPORT                        R5 K7 [error]
       24 MOVE                             R6 R3
       25 CALL                             R5 1 0
       26 RETURN                           R3 2

PROTO_97:
        0 LOADK                            R2 K0 ["useDebugValue"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_98:
        0 LOADK                            R3 K0 ["useMutableSource"]
        1 SETUPVAL                         R3 0
        2 GETGLOBAL                        R3 K1 ["updateHookTypesDev"]
        4 CALL                             R3 0 0
        5 GETGLOBAL                        R3 K2 ["updateMutableSource"]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_99:
        0 LOADK                            R0 K0 ["useOpaqueIdentifier"]
        1 SETUPVAL                         R0 0
        2 GETGLOBAL                        R0 K1 ["updateHookTypesDev"]
        4 CALL                             R0 0 0
        5 GETGLOBAL                        R0 K2 ["updateOpaqueIdentifier"]
        7 CALL                             R0 0 -1
        8 RETURN                           R0 -1

PROTO_100:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_101:
        0 LOADK                            R2 K0 ["useCallback"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETGLOBAL                        R2 K2 ["mountCallback"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_102:
        0 LOADK                            R2 K0 ["useContext"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_103:
        0 LOADK                            R2 K0 ["useEffect"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_104:
        0 LOADK                            R3 K0 ["useImperativeHandle"]
        1 SETUPVAL                         R3 0
        2 GETGLOBAL                        R3 K1 ["updateHookTypesDev"]
        4 CALL                             R3 0 0
        5 GETGLOBAL                        R3 K2 ["updateImperativeHandle"]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_105:
        0 LOADK                            R2 K0 ["useLayoutEffect"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_106:
        0 LOADK                            R2 K0 ["useMemo"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["current"]
        8 GETUPVAL                         R3 1
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K2 ["current"]
       12 GETIMPORT                        R3 K4 [pcall]
       14 GETGLOBAL                        R4 K5 ["updateMemo"]
       16 MOVE                             R5 R0
       17 MOVE                             R6 R1
       18 CALL                             R3 3 2
       19 GETUPVAL                         R5 1
       20 SETTABLEKS                       R2 R5 K2 ["current"]
       22 JUMPIF                           R3 ; [+4]
       23 GETIMPORT                        R5 K7 [error]
       25 MOVE                             R6 R4
       26 CALL                             R5 1 0
       27 RETURN                           R4 1

PROTO_107:
        0 LOADK                            R3 K0 ["useReducer"]
        1 SETUPVAL                         R3 0
        2 GETGLOBAL                        R3 K1 ["updateHookTypesDev"]
        4 CALL                             R3 0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K2 ["current"]
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 SETTABLEKS                       R5 R4 K2 ["current"]
       12 GETIMPORT                        R4 K4 [pcall]
       14 GETGLOBAL                        R5 K5 ["rerenderReducer"]
       16 MOVE                             R6 R0
       17 MOVE                             R7 R1
       18 MOVE                             R8 R2
       19 CALL                             R4 4 3
       20 GETUPVAL                         R7 1
       21 SETTABLEKS                       R3 R7 K2 ["current"]
       23 JUMPIF                           R4 ; [+4]
       24 GETIMPORT                        R7 K7 [error]
       26 MOVE                             R8 R5
       27 CALL                             R7 1 0
       28 RETURN                           R5 2

PROTO_108:
        0 LOADK                            R1 K0 ["useRef"]
        1 SETUPVAL                         R1 0
        2 GETGLOBAL                        R1 K1 ["updateHookTypesDev"]
        4 CALL                             R1 0 0
        5 GETGLOBAL                        R1 K2 ["updateRef"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_109:
        0 LOADK                            R1 K0 ["useState"]
        1 SETUPVAL                         R1 0
        2 GETGLOBAL                        R1 K1 ["updateHookTypesDev"]
        4 CALL                             R1 0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["current"]
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 2
       10 SETTABLEKS                       R3 R2 K2 ["current"]
       12 GETIMPORT                        R2 K4 [pcall]
       14 GETGLOBAL                        R3 K5 ["rerenderState"]
       16 MOVE                             R4 R0
       17 CALL                             R2 2 3
       18 GETUPVAL                         R5 1
       19 SETTABLEKS                       R1 R5 K2 ["current"]
       21 JUMPIF                           R2 ; [+4]
       22 GETIMPORT                        R5 K7 [error]
       24 MOVE                             R6 R3
       25 CALL                             R5 1 0
       26 RETURN                           R3 2

PROTO_110:
        0 LOADK                            R2 K0 ["useDebugValue"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_111:
        0 LOADK                            R3 K0 ["useMutableSource"]
        1 SETUPVAL                         R3 0
        2 GETGLOBAL                        R3 K1 ["updateHookTypesDev"]
        4 CALL                             R3 0 0
        5 GETGLOBAL                        R3 K2 ["updateMutableSource"]
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_112:
        0 LOADK                            R0 K0 ["useOpaqueIdentifier"]
        1 SETUPVAL                         R0 0
        2 GETGLOBAL                        R0 K1 ["updateHookTypesDev"]
        4 CALL                             R0 0 0
        5 GETGLOBAL                        R0 K2 ["rerenderOpaqueIdentifier"]
        7 CALL                             R0 0 -1
        8 RETURN                           R0 -1

PROTO_113:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["error"]
        3 LOADK                            R3 K1 ["Context can only be read while React is rendering. In classes, you can read it in the render method or getDerivedStateFromProps. In function components, you can read it directly in the function body, but not inside Hooks like useReducer() or useMemo()."]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_114:
        0 LOADK                            R2 K0 ["useCallback"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETIMPORT                        R2 K4 [_G]
        9 GETTABLEKS                       R2 R2 K5 ["__DEV__"]
       11 JUMPIFNOT                        R2 ; [+18]
       12 GETUPVAL                         R2 0
       13 GETUPVAL                         R3 2
       14 JUMPIFNOTEQKNIL                  R3 ; [+8]
       16 NEWTABLE                         R3 0 1
       18 MOVE                             R4 R2
       19 SETLIST                          R3 R4 1 [1]
       21 SETUPVAL                         R3 2
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R4 2
       24 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       26 MOVE                             R5 R2
       27 GETIMPORT                        R3 K8 [table.insert]
       29 CALL                             R3 2 0
       30 GETGLOBAL                        R2 K9 ["mountCallback"]
       32 MOVE                             R3 R0
       33 MOVE                             R4 R1
       34 CALL                             R2 2 -1
       35 RETURN                           R2 -1

PROTO_115:
        0 LOADK                            R2 K0 ["useContext"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETIMPORT                        R2 K4 [_G]
        9 GETTABLEKS                       R2 R2 K5 ["__DEV__"]
       11 JUMPIFNOT                        R2 ; [+18]
       12 GETUPVAL                         R2 0
       13 GETUPVAL                         R3 2
       14 JUMPIFNOTEQKNIL                  R3 ; [+8]
       16 NEWTABLE                         R3 0 1
       18 MOVE                             R4 R2
       19 SETLIST                          R3 R4 1 [1]
       21 SETUPVAL                         R3 2
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R4 2
       24 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       26 MOVE                             R5 R2
       27 GETIMPORT                        R3 K8 [table.insert]
       29 CALL                             R3 2 0
       30 GETUPVAL                         R2 3
       31 MOVE                             R3 R0
       32 MOVE                             R4 R1
       33 CALL                             R2 2 -1
       34 RETURN                           R2 -1

PROTO_116:
        0 LOADK                            R2 K0 ["useEffect"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETIMPORT                        R2 K4 [_G]
        9 GETTABLEKS                       R2 R2 K5 ["__DEV__"]
       11 JUMPIFNOT                        R2 ; [+18]
       12 GETUPVAL                         R2 0
       13 GETUPVAL                         R3 2
       14 JUMPIFNOTEQKNIL                  R3 ; [+8]
       16 NEWTABLE                         R3 0 1
       18 MOVE                             R4 R2
       19 SETLIST                          R3 R4 1 [1]
       21 SETUPVAL                         R3 2
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R4 2
       24 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       26 MOVE                             R5 R2
       27 GETIMPORT                        R3 K8 [table.insert]
       29 CALL                             R3 2 0
       30 GETUPVAL                         R2 3
       31 MOVE                             R3 R0
       32 MOVE                             R4 R1
       33 CALL                             R2 2 -1
       34 RETURN                           R2 -1

PROTO_117:
        0 LOADK                            R3 K0 ["useImperativeHandle"]
        1 SETUPVAL                         R3 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["error"]
        5 LOADK                            R4 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R3 1 0
        7 GETIMPORT                        R3 K4 [_G]
        9 GETTABLEKS                       R3 R3 K5 ["__DEV__"]
       11 JUMPIFNOT                        R3 ; [+18]
       12 GETUPVAL                         R3 0
       13 GETUPVAL                         R4 2
       14 JUMPIFNOTEQKNIL                  R4 ; [+8]
       16 NEWTABLE                         R4 0 1
       18 MOVE                             R5 R3
       19 SETLIST                          R4 R5 1 [1]
       21 SETUPVAL                         R4 2
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R5 2
       24 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       26 MOVE                             R6 R3
       27 GETIMPORT                        R4 K8 [table.insert]
       29 CALL                             R4 2 0
       30 GETGLOBAL                        R3 K9 ["mountImperativeHandle"]
       32 MOVE                             R4 R0
       33 MOVE                             R5 R1
       34 MOVE                             R6 R2
       35 CALL                             R3 3 -1
       36 RETURN                           R3 -1

PROTO_118:
        0 LOADK                            R2 K0 ["useLayoutEffect"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETIMPORT                        R2 K4 [_G]
        9 GETTABLEKS                       R2 R2 K5 ["__DEV__"]
       11 JUMPIFNOT                        R2 ; [+18]
       12 GETUPVAL                         R2 0
       13 GETUPVAL                         R3 2
       14 JUMPIFNOTEQKNIL                  R3 ; [+8]
       16 NEWTABLE                         R3 0 1
       18 MOVE                             R4 R2
       19 SETLIST                          R3 R4 1 [1]
       21 SETUPVAL                         R3 2
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R4 2
       24 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       26 MOVE                             R5 R2
       27 GETIMPORT                        R3 K8 [table.insert]
       29 CALL                             R3 2 0
       30 GETUPVAL                         R2 3
       31 MOVE                             R3 R0
       32 MOVE                             R4 R1
       33 CALL                             R2 2 -1
       34 RETURN                           R2 -1

PROTO_119:
        0 LOADK                            R2 K0 ["useMemo"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETIMPORT                        R2 K4 [_G]
        9 GETTABLEKS                       R2 R2 K5 ["__DEV__"]
       11 JUMPIFNOT                        R2 ; [+18]
       12 GETUPVAL                         R2 0
       13 GETUPVAL                         R3 2
       14 JUMPIFNOTEQKNIL                  R3 ; [+8]
       16 NEWTABLE                         R3 0 1
       18 MOVE                             R4 R2
       19 SETLIST                          R3 R4 1 [1]
       21 SETUPVAL                         R3 2
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R4 2
       24 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       26 MOVE                             R5 R2
       27 GETIMPORT                        R3 K8 [table.insert]
       29 CALL                             R3 2 0
       30 GETUPVAL                         R2 3
       31 GETTABLEKS                       R2 R2 K9 ["current"]
       33 GETUPVAL                         R3 3
       34 GETUPVAL                         R4 4
       35 SETTABLEKS                       R4 R3 K9 ["current"]
       37 GETIMPORT                        R3 K11 [pcall]
       39 GETGLOBAL                        R4 K12 ["mountMemo"]
       41 MOVE                             R5 R0
       42 MOVE                             R6 R1
       43 CALL                             R3 3 2
       44 GETUPVAL                         R5 3
       45 SETTABLEKS                       R2 R5 K9 ["current"]
       47 JUMPIF                           R3 ; [+4]
       48 GETIMPORT                        R5 K13 [error]
       50 MOVE                             R6 R4
       51 CALL                             R5 1 0
       52 RETURN                           R4 1

PROTO_120:
        0 LOADK                            R3 K0 ["useReducer"]
        1 SETUPVAL                         R3 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["error"]
        5 LOADK                            R4 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R3 1 0
        7 GETIMPORT                        R3 K4 [_G]
        9 GETTABLEKS                       R3 R3 K5 ["__DEV__"]
       11 JUMPIFNOT                        R3 ; [+18]
       12 GETUPVAL                         R3 0
       13 GETUPVAL                         R4 2
       14 JUMPIFNOTEQKNIL                  R4 ; [+8]
       16 NEWTABLE                         R4 0 1
       18 MOVE                             R5 R3
       19 SETLIST                          R4 R5 1 [1]
       21 SETUPVAL                         R4 2
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R5 2
       24 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       26 MOVE                             R6 R3
       27 GETIMPORT                        R4 K8 [table.insert]
       29 CALL                             R4 2 0
       30 GETUPVAL                         R3 3
       31 GETTABLEKS                       R3 R3 K9 ["current"]
       33 GETUPVAL                         R4 3
       34 GETUPVAL                         R5 4
       35 SETTABLEKS                       R5 R4 K9 ["current"]
       37 GETIMPORT                        R4 K11 [pcall]
       39 GETGLOBAL                        R5 K12 ["mountReducer"]
       41 MOVE                             R6 R0
       42 MOVE                             R7 R1
       43 MOVE                             R8 R2
       44 CALL                             R4 4 3
       45 GETUPVAL                         R7 3
       46 SETTABLEKS                       R3 R7 K9 ["current"]
       48 JUMPIF                           R4 ; [+4]
       49 GETIMPORT                        R7 K13 [error]
       51 MOVE                             R8 R5
       52 CALL                             R7 1 0
       53 RETURN                           R5 2

PROTO_121:
        0 LOADK                            R1 K0 ["useRef"]
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K1 ["error"]
        5 LOADK                            R2 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R1 1 0
        7 GETIMPORT                        R1 K4 [_G]
        9 GETTABLEKS                       R1 R1 K5 ["__DEV__"]
       11 JUMPIFNOT                        R1 ; [+18]
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R2 2
       14 JUMPIFNOTEQKNIL                  R2 ; [+8]
       16 NEWTABLE                         R2 0 1
       18 MOVE                             R3 R1
       19 SETLIST                          R2 R3 1 [1]
       21 SETUPVAL                         R2 2
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R3 2
       24 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       26 MOVE                             R4 R1
       27 GETIMPORT                        R2 K8 [table.insert]
       29 CALL                             R2 2 0
       30 GETGLOBAL                        R1 K9 ["mountRef"]
       32 MOVE                             R2 R0
       33 CALL                             R1 1 -1
       34 RETURN                           R1 -1

PROTO_122:
        0 LOADK                            R1 K0 ["useState"]
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K1 ["error"]
        5 LOADK                            R2 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R1 1 0
        7 GETIMPORT                        R1 K4 [_G]
        9 GETTABLEKS                       R1 R1 K5 ["__DEV__"]
       11 JUMPIFNOT                        R1 ; [+18]
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R2 2
       14 JUMPIFNOTEQKNIL                  R2 ; [+8]
       16 NEWTABLE                         R2 0 1
       18 MOVE                             R3 R1
       19 SETLIST                          R2 R3 1 [1]
       21 SETUPVAL                         R2 2
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R3 2
       24 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       26 MOVE                             R4 R1
       27 GETIMPORT                        R2 K8 [table.insert]
       29 CALL                             R2 2 0
       30 GETUPVAL                         R1 3
       31 GETTABLEKS                       R1 R1 K9 ["current"]
       33 GETUPVAL                         R2 3
       34 GETUPVAL                         R3 4
       35 SETTABLEKS                       R3 R2 K9 ["current"]
       37 GETIMPORT                        R2 K11 [pcall]
       39 GETGLOBAL                        R3 K12 ["mountState"]
       41 MOVE                             R4 R0
       42 CALL                             R2 2 3
       43 GETUPVAL                         R5 3
       44 SETTABLEKS                       R1 R5 K9 ["current"]
       46 JUMPIF                           R2 ; [+4]
       47 GETIMPORT                        R5 K13 [error]
       49 MOVE                             R6 R3
       50 CALL                             R5 1 0
       51 RETURN                           R3 2

PROTO_123:
        0 LOADK                            R2 K0 ["useDebugValue"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETIMPORT                        R2 K4 [_G]
        9 GETTABLEKS                       R2 R2 K5 ["__DEV__"]
       11 JUMPIFNOT                        R2 ; [+18]
       12 GETUPVAL                         R2 0
       13 GETUPVAL                         R3 2
       14 JUMPIFNOTEQKNIL                  R3 ; [+8]
       16 NEWTABLE                         R3 0 1
       18 MOVE                             R4 R2
       19 SETLIST                          R3 R4 1 [1]
       21 SETUPVAL                         R3 2
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R4 2
       24 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       26 MOVE                             R5 R2
       27 GETIMPORT                        R3 K8 [table.insert]
       29 CALL                             R3 2 0
       30 GETGLOBAL                        R2 K9 ["mountDebugValue"]
       32 MOVE                             R3 R0
       33 MOVE                             R4 R1
       34 CALL                             R2 2 -1
       35 RETURN                           R2 -1

PROTO_124:
        0 LOADK                            R3 K0 ["useMutableSource"]
        1 SETUPVAL                         R3 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["error"]
        5 LOADK                            R4 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R3 1 0
        7 GETIMPORT                        R3 K4 [_G]
        9 GETTABLEKS                       R3 R3 K5 ["__DEV__"]
       11 JUMPIFNOT                        R3 ; [+18]
       12 GETUPVAL                         R3 0
       13 GETUPVAL                         R4 2
       14 JUMPIFNOTEQKNIL                  R4 ; [+8]
       16 NEWTABLE                         R4 0 1
       18 MOVE                             R5 R3
       19 SETLIST                          R4 R5 1 [1]
       21 SETUPVAL                         R4 2
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R5 2
       24 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       26 MOVE                             R6 R3
       27 GETIMPORT                        R4 K8 [table.insert]
       29 CALL                             R4 2 0
       30 GETGLOBAL                        R3 K9 ["mountMutableSource"]
       32 MOVE                             R4 R0
       33 MOVE                             R5 R1
       34 MOVE                             R6 R2
       35 CALL                             R3 3 -1
       36 RETURN                           R3 -1

PROTO_125:
        0 LOADK                            R0 K0 ["useOpaqueIdentifier"]
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K1 ["error"]
        5 LOADK                            R1 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R0 1 0
        7 GETIMPORT                        R0 K4 [_G]
        9 GETTABLEKS                       R0 R0 K5 ["__DEV__"]
       11 JUMPIFNOT                        R0 ; [+18]
       12 GETUPVAL                         R0 0
       13 GETUPVAL                         R1 2
       14 JUMPIFNOTEQKNIL                  R1 ; [+8]
       16 NEWTABLE                         R1 0 1
       18 MOVE                             R2 R0
       19 SETLIST                          R1 R2 1 [1]
       21 SETUPVAL                         R1 2
       22 JUMP                             ; [+7]
       23 GETUPVAL                         R2 2
       24 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       26 MOVE                             R3 R0
       27 GETIMPORT                        R1 K8 [table.insert]
       29 CALL                             R1 2 0
       30 GETGLOBAL                        R0 K9 ["mountOpaqueIdentifier"]
       32 CALL                             R0 0 -1
       33 RETURN                           R0 -1

PROTO_126:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["error"]
        3 LOADK                            R3 K1 ["Context can only be read while React is rendering. In classes, you can read it in the render method or getDerivedStateFromProps. In function components, you can read it directly in the function body, but not inside Hooks like useReducer() or useMemo()."]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_127:
        0 LOADK                            R2 K0 ["useCallback"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETGLOBAL                        R2 K3 ["updateHookTypesDev"]
        9 CALL                             R2 0 0
       10 GETGLOBAL                        R2 K4 ["mountCallback"]
       12 MOVE                             R3 R0
       13 MOVE                             R4 R1
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_128:
        0 LOADK                            R2 K0 ["useContext"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETGLOBAL                        R2 K3 ["updateHookTypesDev"]
        9 CALL                             R2 0 0
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_129:
        0 LOADK                            R2 K0 ["useEffect"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETGLOBAL                        R2 K3 ["updateHookTypesDev"]
        9 CALL                             R2 0 0
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_130:
        0 LOADK                            R3 K0 ["useImperativeHandle"]
        1 SETUPVAL                         R3 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["error"]
        5 LOADK                            R4 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R3 1 0
        7 GETGLOBAL                        R3 K3 ["updateHookTypesDev"]
        9 CALL                             R3 0 0
       10 GETGLOBAL                        R3 K4 ["updateImperativeHandle"]
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 CALL                             R3 3 -1
       16 RETURN                           R3 -1

PROTO_131:
        0 LOADK                            R2 K0 ["useLayoutEffect"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETGLOBAL                        R2 K3 ["updateHookTypesDev"]
        9 CALL                             R2 0 0
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_132:
        0 LOADK                            R2 K0 ["useMemo"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETGLOBAL                        R2 K3 ["updateHookTypesDev"]
        9 CALL                             R2 0 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K4 ["current"]
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R4 3
       15 SETTABLEKS                       R4 R3 K4 ["current"]
       17 GETIMPORT                        R3 K6 [pcall]
       19 GETGLOBAL                        R4 K7 ["updateMemo"]
       21 MOVE                             R5 R0
       22 MOVE                             R6 R1
       23 CALL                             R3 3 2
       24 GETUPVAL                         R5 2
       25 SETTABLEKS                       R2 R5 K4 ["current"]
       27 JUMPIF                           R3 ; [+4]
       28 GETIMPORT                        R5 K8 [error]
       30 MOVE                             R6 R4
       31 CALL                             R5 1 0
       32 RETURN                           R4 1

PROTO_133:
        0 LOADK                            R3 K0 ["useReducer"]
        1 SETUPVAL                         R3 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["error"]
        5 LOADK                            R4 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R3 1 0
        7 GETGLOBAL                        R3 K3 ["updateHookTypesDev"]
        9 CALL                             R3 0 0
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K4 ["current"]
       13 GETUPVAL                         R4 2
       14 GETUPVAL                         R5 3
       15 SETTABLEKS                       R5 R4 K4 ["current"]
       17 GETIMPORT                        R4 K6 [pcall]
       19 GETGLOBAL                        R5 K7 ["updateReducer"]
       21 MOVE                             R6 R0
       22 MOVE                             R7 R1
       23 MOVE                             R8 R2
       24 CALL                             R4 4 3
       25 GETUPVAL                         R7 2
       26 SETTABLEKS                       R3 R7 K4 ["current"]
       28 JUMPIF                           R4 ; [+4]
       29 GETIMPORT                        R7 K8 [error]
       31 MOVE                             R8 R5
       32 CALL                             R7 1 0
       33 RETURN                           R5 2

PROTO_134:
        0 LOADK                            R1 K0 ["useRef"]
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K1 ["error"]
        5 LOADK                            R2 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R1 1 0
        7 GETGLOBAL                        R1 K3 ["updateHookTypesDev"]
        9 CALL                             R1 0 0
       10 GETGLOBAL                        R1 K4 ["updateRef"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_135:
        0 LOADK                            R1 K0 ["useState"]
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K1 ["error"]
        5 LOADK                            R2 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R1 1 0
        7 GETGLOBAL                        R1 K3 ["updateHookTypesDev"]
        9 CALL                             R1 0 0
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K4 ["current"]
       13 GETUPVAL                         R2 2
       14 GETUPVAL                         R3 3
       15 SETTABLEKS                       R3 R2 K4 ["current"]
       17 GETIMPORT                        R2 K6 [pcall]
       19 GETGLOBAL                        R3 K7 ["updateState"]
       21 MOVE                             R4 R0
       22 CALL                             R2 2 3
       23 GETUPVAL                         R5 2
       24 SETTABLEKS                       R1 R5 K4 ["current"]
       26 JUMPIF                           R2 ; [+4]
       27 GETIMPORT                        R5 K8 [error]
       29 MOVE                             R6 R3
       30 CALL                             R5 1 0
       31 RETURN                           R3 2

PROTO_136:
        0 LOADK                            R2 K0 ["useDebugValue"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETGLOBAL                        R2 K3 ["updateHookTypesDev"]
        9 CALL                             R2 0 0
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_137:
        0 LOADK                            R3 K0 ["useMutableSource"]
        1 SETUPVAL                         R3 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["error"]
        5 LOADK                            R4 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R3 1 0
        7 GETGLOBAL                        R3 K3 ["updateHookTypesDev"]
        9 CALL                             R3 0 0
       10 GETGLOBAL                        R3 K4 ["updateMutableSource"]
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 CALL                             R3 3 -1
       16 RETURN                           R3 -1

PROTO_138:
        0 LOADK                            R0 K0 ["useOpaqueIdentifier"]
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K1 ["error"]
        5 LOADK                            R1 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R0 1 0
        7 GETGLOBAL                        R0 K3 ["updateHookTypesDev"]
        9 CALL                             R0 0 0
       10 GETGLOBAL                        R0 K4 ["updateOpaqueIdentifier"]
       12 CALL                             R0 0 -1
       13 RETURN                           R0 -1

PROTO_139:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["error"]
        3 LOADK                            R3 K1 ["Context can only be read while React is rendering. In classes, you can read it in the render method or getDerivedStateFromProps. In function components, you can read it directly in the function body, but not inside Hooks like useReducer() or useMemo()."]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_140:
        0 LOADK                            R2 K0 ["useCallback"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETGLOBAL                        R2 K3 ["updateHookTypesDev"]
        9 CALL                             R2 0 0
       10 GETGLOBAL                        R2 K4 ["updateCallback"]
       12 MOVE                             R3 R0
       13 MOVE                             R4 R1
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_141:
        0 LOADK                            R2 K0 ["useContext"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETGLOBAL                        R2 K3 ["updateHookTypesDev"]
        9 CALL                             R2 0 0
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_142:
        0 LOADK                            R2 K0 ["useEffect"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETGLOBAL                        R2 K3 ["updateHookTypesDev"]
        9 CALL                             R2 0 0
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_143:
        0 LOADK                            R3 K0 ["useImperativeHandle"]
        1 SETUPVAL                         R3 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["error"]
        5 LOADK                            R4 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R3 1 0
        7 GETGLOBAL                        R3 K3 ["updateHookTypesDev"]
        9 CALL                             R3 0 0
       10 GETGLOBAL                        R3 K4 ["updateImperativeHandle"]
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 CALL                             R3 3 -1
       16 RETURN                           R3 -1

PROTO_144:
        0 LOADK                            R2 K0 ["useLayoutEffect"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETGLOBAL                        R2 K3 ["updateHookTypesDev"]
        9 CALL                             R2 0 0
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_145:
        0 LOADK                            R2 K0 ["useMemo"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETGLOBAL                        R2 K3 ["updateHookTypesDev"]
        9 CALL                             R2 0 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K4 ["current"]
       13 GETUPVAL                         R3 2
       14 GETUPVAL                         R4 3
       15 SETTABLEKS                       R4 R3 K4 ["current"]
       17 GETIMPORT                        R3 K6 [pcall]
       19 GETGLOBAL                        R4 K7 ["updateMemo"]
       21 MOVE                             R5 R0
       22 MOVE                             R6 R1
       23 CALL                             R3 3 2
       24 GETUPVAL                         R5 2
       25 SETTABLEKS                       R2 R5 K4 ["current"]
       27 JUMPIF                           R3 ; [+4]
       28 GETIMPORT                        R5 K8 [error]
       30 MOVE                             R6 R4
       31 CALL                             R5 1 0
       32 RETURN                           R4 1

PROTO_146:
        0 LOADK                            R3 K0 ["useReducer"]
        1 SETUPVAL                         R3 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["error"]
        5 LOADK                            R4 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R3 1 0
        7 GETGLOBAL                        R3 K3 ["updateHookTypesDev"]
        9 CALL                             R3 0 0
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K4 ["current"]
       13 GETUPVAL                         R4 2
       14 GETUPVAL                         R5 3
       15 SETTABLEKS                       R5 R4 K4 ["current"]
       17 GETIMPORT                        R4 K6 [pcall]
       19 GETGLOBAL                        R5 K7 ["rerenderReducer"]
       21 MOVE                             R6 R0
       22 MOVE                             R7 R1
       23 MOVE                             R8 R2
       24 CALL                             R4 4 3
       25 GETUPVAL                         R7 2
       26 SETTABLEKS                       R3 R7 K4 ["current"]
       28 JUMPIF                           R4 ; [+4]
       29 GETIMPORT                        R7 K8 [error]
       31 MOVE                             R8 R5
       32 CALL                             R7 1 0
       33 RETURN                           R5 2

PROTO_147:
        0 LOADK                            R1 K0 ["useRef"]
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K1 ["error"]
        5 LOADK                            R2 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R1 1 0
        7 GETGLOBAL                        R1 K3 ["updateHookTypesDev"]
        9 CALL                             R1 0 0
       10 GETGLOBAL                        R1 K4 ["updateRef"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_148:
        0 LOADK                            R1 K0 ["useState"]
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K1 ["error"]
        5 LOADK                            R2 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R1 1 0
        7 GETGLOBAL                        R1 K3 ["updateHookTypesDev"]
        9 CALL                             R1 0 0
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K4 ["current"]
       13 GETUPVAL                         R2 2
       14 GETUPVAL                         R3 3
       15 SETTABLEKS                       R3 R2 K4 ["current"]
       17 GETIMPORT                        R2 K6 [pcall]
       19 GETGLOBAL                        R3 K7 ["rerenderState"]
       21 MOVE                             R4 R0
       22 CALL                             R2 2 3
       23 GETUPVAL                         R5 2
       24 SETTABLEKS                       R1 R5 K4 ["current"]
       26 JUMPIF                           R2 ; [+4]
       27 GETIMPORT                        R5 K8 [error]
       29 MOVE                             R6 R3
       30 CALL                             R5 1 0
       31 RETURN                           R3 2

PROTO_149:
        0 LOADK                            R2 K0 ["useDebugValue"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETGLOBAL                        R2 K3 ["updateHookTypesDev"]
        9 CALL                             R2 0 0
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_150:
        0 LOADK                            R3 K0 ["useMutableSource"]
        1 SETUPVAL                         R3 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["error"]
        5 LOADK                            R4 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R3 1 0
        7 GETGLOBAL                        R3 K3 ["updateHookTypesDev"]
        9 CALL                             R3 0 0
       10 GETGLOBAL                        R3 K4 ["updateMutableSource"]
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 CALL                             R3 3 -1
       16 RETURN                           R3 -1

PROTO_151:
        0 LOADK                            R0 K0 ["useOpaqueIdentifier"]
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K1 ["error"]
        5 LOADK                            R1 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R0 1 0
        7 GETGLOBAL                        R0 K3 ["updateHookTypesDev"]
        9 CALL                             R0 0 0
       10 GETGLOBAL                        R0 K4 ["rerenderOpaqueIdentifier"]
       12 CALL                             R0 0 -1
       13 RETURN                           R0 -1

PROTO_152:
        0 SETUPVAL                         R5 0
        1 SETUPVAL                         R1 1
        2 GETIMPORT                        R6 K1 [_G]
        4 GETTABLEKS                       R6 R6 K2 ["__DEV__"]
        6 JUMPIFNOT                        R6 ; [+10]
        7 JUMPIFEQKNIL                     R0 ; [+5]
        9 GETTABLEKS                       R6 R0 K3 ["_debugHookTypes"]
       11 SETUPVAL                         R6 2
       12 JUMP                             ; [+2]
       13 LOADNIL                          R6
       14 SETUPVAL                         R6 2
       15 LOADN                            R6 0
       16 SETUPVAL                         R6 3
       17 LOADNIL                          R6
       18 SETTABLEKS                       R6 R1 K4 ["memoizedState"]
       20 LOADNIL                          R6
       21 SETTABLEKS                       R6 R1 K5 ["updateQueue"]
       23 GETUPVAL                         R6 4
       24 SETTABLEKS                       R6 R1 K6 ["lanes"]
       26 GETIMPORT                        R6 K1 [_G]
       28 GETTABLEKS                       R6 R6 K2 ["__DEV__"]
       30 JUMPIFNOT                        R6 ; [+24]
       31 JUMPIFEQKNIL                     R0 ; [+10]
       33 GETTABLEKS                       R6 R0 K4 ["memoizedState"]
       35 JUMPIFEQKNIL                     R6 ; [+6]
       37 GETUPVAL                         R6 5
       38 GETUPVAL                         R7 6
       39 SETTABLEKS                       R7 R6 K7 ["current"]
       41 JUMP                             ; [+25]
       42 GETUPVAL                         R6 2
       43 JUMPIFEQKNIL                     R6 ; [+6]
       45 GETUPVAL                         R6 5
       46 GETUPVAL                         R7 7
       47 SETTABLEKS                       R7 R6 K7 ["current"]
       49 JUMP                             ; [+17]
       50 GETUPVAL                         R6 5
       51 GETUPVAL                         R7 8
       52 SETTABLEKS                       R7 R6 K7 ["current"]
       54 JUMP                             ; [+12]
       55 GETUPVAL                         R6 5
       56 JUMPIFEQKNIL                     R0 ; [+5]
       58 GETTABLEKS                       R8 R0 K4 ["memoizedState"]
       60 JUMPIFNOTEQKNIL                  R8 ; [+3]
       62 GETUPVAL                         R7 9
       63 JUMPIF                           R7 ; [+1]
       64 GETUPVAL                         R7 10
       65 SETTABLEKS                       R7 R6 K7 ["current"]
       67 MOVE                             R6 R2
       68 MOVE                             R7 R3
       69 MOVE                             R8 R4
       70 CALL                             R6 2 1
       71 GETUPVAL                         R7 11
       72 JUMPIFNOT                        R7 ; [+48]
       73 LOADN                            R7 0
       74 LOADB                            R8 0
       75 SETUPVAL                         R8 11
       76 LOADN                            R8 25
       77 JUMPIFNOTLE                      R8 R7 ; [+9]
       79 GETIMPORT                        R8 K9 [error]
       81 GETUPVAL                         R9 12
       82 GETTABLEKS                       R9 R9 K10 ["new"]
       84 LOADK                            R10 K11 ["Too many re-renders. React limits the number of renders to prevent an infinite loop."]
       85 CALL                             R9 1 -1
       86 CALL                             R8 -1 0
       87 ADDK                             R7 R7 K12 [1]
       88 LOADNIL                          R8
       89 SETUPVAL                         R8 13
       90 LOADNIL                          R8
       91 SETUPVAL                         R8 14
       92 LOADNIL                          R8
       93 SETTABLEKS                       R8 R1 K5 ["updateQueue"]
       95 GETIMPORT                        R8 K1 [_G]
       97 GETTABLEKS                       R8 R8 K2 ["__DEV__"]
       99 JUMPIFNOT                        R8 ; [+2]
      100 LOADN                            R8 0
      101 SETUPVAL                         R8 3
      102 GETUPVAL                         R8 5
      103 GETIMPORT                        R10 K1 [_G]
      105 GETTABLEKS                       R10 R10 K2 ["__DEV__"]
      107 JUMPIFNOT                        R10 ; [+2]
      108 GETUPVAL                         R9 15
      109 JUMPIF                           R9 ; [+1]
      110 GETUPVAL                         R9 16
      111 SETTABLEKS                       R9 R8 K7 ["current"]
      113 MOVE                             R8 R2
      114 MOVE                             R9 R3
      115 MOVE                             R10 R4
      116 CALL                             R8 2 1
      117 MOVE                             R6 R8
      118 GETUPVAL                         R8 11
      119 JUMPIFNOT                        R8 ; [+1]
      120 JUMPBACK                         ; [-47]
      121 GETUPVAL                         R7 5
      122 GETUPVAL                         R8 17
      123 SETTABLEKS                       R8 R7 K7 ["current"]
      125 GETIMPORT                        R7 K1 [_G]
      127 GETTABLEKS                       R7 R7 K2 ["__DEV__"]
      129 JUMPIFNOT                        R7 ; [+3]
      130 GETUPVAL                         R7 2
      131 SETTABLEKS                       R7 R1 K3 ["_debugHookTypes"]
      133 LOADB                            R7 0
      134 GETUPVAL                         R8 13
      135 JUMPIFEQKNIL                     R8 ; [+8]
      137 GETUPVAL                         R8 13
      138 GETTABLEKS                       R8 R8 K13 ["next"]
      140 JUMPIFNOTEQKNIL                  R8 ; [+2]
      142 LOADB                            R7 0 +1
      143 LOADB                            R7 1
      144 GETUPVAL                         R8 4
      145 SETUPVAL                         R8 0
      146 LOADNIL                          R8
      147 SETUPVAL                         R8 1
      148 LOADNIL                          R8
      149 SETUPVAL                         R8 13
      150 LOADNIL                          R8
      151 SETUPVAL                         R8 14
      152 GETIMPORT                        R8 K1 [_G]
      154 GETTABLEKS                       R8 R8 K2 ["__DEV__"]
      156 JUMPIFNOT                        R8 ; [+6]
      157 LOADNIL                          R8
      158 SETUPVAL                         R8 18
      159 LOADNIL                          R8
      160 SETUPVAL                         R8 2
      161 LOADN                            R8 0
      162 SETUPVAL                         R8 3
      163 LOADB                            R8 0
      164 SETUPVAL                         R8 19
      165 JUMPIFNOT                        R7 ; [+8]
      166 GETIMPORT                        R8 K9 [error]
      168 GETUPVAL                         R9 12
      169 GETTABLEKS                       R9 R9 K10 ["new"]
      171 LOADK                            R10 K14 ["Rendered fewer hooks than expected. This may be caused by an accidental early return statement."]
      172 CALL                             R9 1 -1
      173 CALL                             R8 -1 0
      174 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 GETIMPORT                        R1 K2 [script]
        4 GETTABLEKS                       R1 R1 K3 ["Parent"]
        6 GETTABLEKS                       R1 R1 K3 ["Parent"]
        8 GETIMPORT                        R2 K5 [require]
       10 GETTABLEKS                       R3 R1 K6 ["LuauPolyfill"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R2 K7 ["Array"]
       15 GETTABLEKS                       R4 R2 K8 ["Error"]
       17 GETTABLEKS                       R5 R2 K9 ["Object"]
       19 GETTABLEKS                       R6 R2 K10 ["util"]
       21 GETTABLEKS                       R6 R6 K11 ["inspect"]
       23 GETIMPORT                        R7 K5 [require]
       25 GETTABLEKS                       R8 R1 K12 ["Cryo"]
       27 CALL                             R7 1 1
       28 GETIMPORT                        R8 K5 [require]
       30 GETTABLEKS                       R9 R1 K13 ["Shared"]
       32 CALL                             R8 1 1
       33 GETTABLEKS                       R8 R8 K14 ["console"]
       35 GETIMPORT                        R9 K5 [require]
       37 GETTABLEKS                       R10 R1 K13 ["Shared"]
       39 CALL                             R9 1 1
       40 GETIMPORT                        R10 K5 [require]
       42 GETIMPORT                        R11 K2 [script]
       44 GETTABLEKS                       R11 R11 K3 ["Parent"]
       46 GETTABLEKS                       R11 R11 K15 ["ReactInternalTypes"]
       48 CALL                             R10 1 1
       49 GETIMPORT                        R11 K5 [require]
       51 GETIMPORT                        R12 K2 [script]
       53 GETTABLEKS                       R12 R12 K3 ["Parent"]
       55 GETTABLEKS                       R12 R12 K16 ["ReactFiberLane"]
       57 CALL                             R11 1 1
       58 GETIMPORT                        R12 K5 [require]
       60 GETIMPORT                        R13 K2 [script]
       62 GETTABLEKS                       R13 R13 K3 ["Parent"]
       64 GETTABLEKS                       R13 R13 K17 ["ReactHookEffectTags"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K5 [require]
       69 GETTABLEKS                       R14 R1 K13 ["Shared"]
       71 CALL                             R13 1 1
       72 GETTABLEKS                       R13 R13 K18 ["ReactSharedInternals"]
       74 GETIMPORT                        R14 K5 [require]
       76 GETTABLEKS                       R15 R1 K13 ["Shared"]
       78 CALL                             R14 1 1
       79 GETTABLEKS                       R14 R14 K19 ["ReactFeatureFlags"]
       81 GETTABLEKS                       R15 R14 K20 ["enableDebugTracing"]
       83 GETTABLEKS                       R16 R14 K21 ["enableSchedulingProfiler"]
       85 GETTABLEKS                       R17 R14 K22 ["enableNewReconciler"]
       87 GETTABLEKS                       R18 R14 K23 ["enableDoubleInvokingEffects"]
       89 GETIMPORT                        R19 K5 [require]
       91 GETIMPORT                        R20 K2 [script]
       93 GETTABLEKS                       R20 R20 K3 ["Parent"]
       95 GETTABLEKS                       R20 R20 K24 ["ReactTypeOfMode"]
       97 CALL                             R19 1 1
       98 GETTABLEKS                       R19 R19 K25 ["DebugTracingMode"]
      100 GETTABLEKS                       R20 R11 K26 ["NoLane"]
      102 GETTABLEKS                       R21 R11 K27 ["NoLanes"]
      104 GETTABLEKS                       R22 R11 K28 ["isSubsetOfLanes"]
      106 GETTABLEKS                       R23 R11 K29 ["mergeLanes"]
      108 GETTABLEKS                       R24 R11 K30 ["removeLanes"]
      110 GETTABLEKS                       R25 R11 K31 ["markRootEntangled"]
      112 GETTABLEKS                       R26 R11 K32 ["markRootMutableRead"]
      114 GETIMPORT                        R27 K5 [require]
      116 GETIMPORT                        R29 K2 [script]
      118 GETTABLEKS                       R29 R29 K3 ["Parent"]
      120 GETTABLEKS                       R28 R29 K33 ["ReactFiberNewContext.new"]
      122 CALL                             R27 1 1
      123 GETTABLEKS                       R28 R27 K34 ["readContext"]
      125 GETIMPORT                        R29 K5 [require]
      127 GETIMPORT                        R30 K2 [script]
      129 GETTABLEKS                       R30 R30 K3 ["Parent"]
      131 GETTABLEKS                       R30 R30 K35 ["ReactFiberFlags"]
      133 CALL                             R29 1 1
      134 GETTABLEKS                       R30 R29 K36 ["Update"]
      136 GETTABLEKS                       R31 R29 K37 ["Passive"]
      138 GETTABLEKS                       R32 R29 K38 ["PassiveStatic"]
      140 GETTABLEKS                       R33 R29 K39 ["MountLayoutDev"]
      142 GETTABLEKS                       R34 R29 K40 ["MountPassiveDev"]
      144 GETTABLEKS                       R35 R12 K41 ["HasEffect"]
      146 GETTABLEKS                       R36 R12 K42 ["Layout"]
      148 GETTABLEKS                       R37 R12 K37 ["Passive"]
      150 GETIMPORT                        R38 K5 [require]
      152 GETIMPORT                        R40 K2 [script]
      154 GETTABLEKS                       R40 R40 K3 ["Parent"]
      156 GETTABLEKS                       R39 R40 K43 ["ReactFiberWorkLoop.new"]
      158 CALL                             R38 1 1
      159 GETTABLEKS                       R39 R38 K44 ["warnIfNotCurrentlyActingUpdatesInDEV"]
      161 GETTABLEKS                       R40 R38 K45 ["scheduleUpdateOnFiber"]
      163 GETTABLEKS                       R41 R38 K46 ["warnIfNotScopedWithMatchingAct"]
      165 GETTABLEKS                       R42 R38 K47 ["requestEventTime"]
      167 GETTABLEKS                       R43 R38 K48 ["requestUpdateLane"]
      169 GETTABLEKS                       R44 R38 K49 ["markSkippedUpdateLanes"]
      171 GETTABLEKS                       R45 R38 K50 ["getWorkInProgressRoot"]
      173 GETTABLEKS                       R46 R38 K51 ["warnIfNotCurrentlyActingEffectsInDEV"]
      175 GETIMPORT                        R47 K5 [require]
      177 GETTABLEKS                       R48 R1 K13 ["Shared"]
      179 CALL                             R47 1 1
      180 GETTABLEKS                       R47 R47 K52 ["invariant"]
      182 GETIMPORT                        R48 K5 [require]
      184 GETTABLEKS                       R49 R1 K13 ["Shared"]
      186 CALL                             R48 1 1
      187 GETTABLEKS                       R48 R48 K53 ["getComponentName"]
      189 DUPCLOSURE                       R49 K54 [PROTO_1]
      190 GETIMPORT                        R50 K5 [require]
      192 GETIMPORT                        R52 K2 [script]
      194 GETTABLEKS                       R52 R52 K3 ["Parent"]
      196 GETTABLEKS                       R51 R52 K55 ["ReactFiberBeginWork.new"]
      198 CALL                             R50 1 1
      199 GETTABLEKS                       R50 R50 K56 ["markWorkInProgressReceivedUpdate"]
      201 GETIMPORT                        R51 K5 [require]
      203 GETIMPORT                        R53 K2 [script]
      205 GETTABLEKS                       R53 R53 K3 ["Parent"]
      207 GETTABLEKS                       R52 R53 K57 ["ReactFiberHydrationContext.new"]
      209 CALL                             R51 1 1
      210 GETTABLEKS                       R51 R51 K58 ["getIsHydrating"]
      212 GETIMPORT                        R52 K5 [require]
      214 GETIMPORT                        R53 K2 [script]
      216 GETTABLEKS                       R53 R53 K3 ["Parent"]
      218 GETTABLEKS                       R53 R53 K59 ["ReactFiberHostConfig"]
      220 CALL                             R52 1 1
      221 GETTABLEKS                       R53 R52 K60 ["makeClientId"]
      223 GETIMPORT                        R54 K5 [require]
      225 GETIMPORT                        R56 K2 [script]
      227 GETTABLEKS                       R56 R56 K3 ["Parent"]
      229 GETTABLEKS                       R55 R56 K61 ["ReactMutableSource.new"]
      231 CALL                             R54 1 1
      232 GETTABLEKS                       R55 R54 K62 ["warnAboutMultipleRenderersDEV"]
      234 GETTABLEKS                       R56 R54 K63 ["getWorkInProgressVersion"]
      236 GETTABLEKS                       R57 R54 K64 ["setWorkInProgressVersion"]
      238 GETTABLEKS                       R58 R54 K65 ["markSourceAsDirty"]
      240 GETIMPORT                        R59 K5 [require]
      242 GETIMPORT                        R60 K2 [script]
      244 GETTABLEKS                       R60 R60 K3 ["Parent"]
      246 GETTABLEKS                       R60 R60 K66 ["DebugTracing"]
      248 CALL                             R59 1 1
      249 GETTABLEKS                       R59 R59 K67 ["logStateUpdateScheduled"]
      251 GETIMPORT                        R60 K5 [require]
      253 GETIMPORT                        R61 K2 [script]
      255 GETTABLEKS                       R61 R61 K3 ["Parent"]
      257 GETTABLEKS                       R61 R61 K68 ["SchedulingProfiler"]
      259 CALL                             R60 1 1
      260 GETTABLEKS                       R60 R60 K69 ["markStateUpdateScheduled"]
      262 GETTABLEKS                       R61 R13 K70 ["ReactCurrentDispatcher"]
      264 LOADNIL                          R62
      265 LOADNIL                          R63
      266 GETIMPORT                        R64 K72 [_G]
      268 GETTABLEKS                       R64 R64 K73 ["__DEV__"]
      270 JUMPIFNOT                        R64 ; [+4]
      271 NEWTABLE                         R63 0 0
      273 NEWTABLE                         R62 0 0
      275 NEWTABLE                         R64 8 0
      277 MOVE                             R65 R21
      278 LOADNIL                          R66
      279 LOADNIL                          R67
      280 LOADNIL                          R68
      281 LOADB                            R69 0
      282 LOADB                            R70 0
      283 LOADNIL                          R71
      284 LOADNIL                          R72
      285 LOADN                            R73 0
      286 LOADNIL                          R74
      287 LOADNIL                          R75
      288 LOADNIL                          R76
      289 LOADNIL                          R77
      290 LOADNIL                          R78
      291 LOADNIL                          R79
      292 LOADNIL                          R80
      293 NEWCLOSURE                       R81 P2
      294 CAPTURE                          REF R71
      295 CAPTURE                          REF R72
      296 NEWCLOSURE                       R82 P3
      297 CAPTURE                          REF R71
      298 CAPTURE                          REF R72
      299 CAPTURE                          REF R73
      300 SETGLOBAL                        R82 K74 ["updateHookTypesDev"]
      302 NEWCLOSURE                       R82 P4
      303 CAPTURE                          VAL R3
      304 CAPTURE                          VAL R8
      305 CAPTURE                          REF R71
      306 NEWCLOSURE                       R83 P5
      307 CAPTURE                          VAL R48
      308 CAPTURE                          REF R66
      309 CAPTURE                          REF R62
      310 CAPTURE                          REF R72
      311 CAPTURE                          REF R73
      312 CAPTURE                          VAL R8
      313 SETGLOBAL                        R83 K75 ["warnOnHookMismatchInDev"]
      315 DUPCLOSURE                       R83 K76 [PROTO_6]
      316 CAPTURE                          VAL R4
      317 NEWCLOSURE                       R84 P7
      318 CAPTURE                          VAL R8
      319 CAPTURE                          REF R71
      320 CAPTURE                          VAL R6
      321 DUPCLOSURE                       R85 K77 [PROTO_8]
      322 CAPTURE                          VAL R18
      323 CAPTURE                          VAL R34
      324 CAPTURE                          VAL R31
      325 CAPTURE                          VAL R33
      326 CAPTURE                          VAL R30
      327 CAPTURE                          VAL R24
      328 SETTABLEKS                       R85 R64 K78 ["bailoutHooks"]
      330 LOADB                            R85 0
      331 NEWCLOSURE                       R86 P9
      332 CAPTURE                          VAL R61
      333 CAPTURE                          VAL R64
      334 CAPTURE                          REF R69
      335 CAPTURE                          REF R66
      336 CAPTURE                          REF R65
      337 CAPTURE                          VAL R21
      338 CAPTURE                          REF R67
      339 CAPTURE                          REF R68
      340 CAPTURE                          REF R72
      341 CAPTURE                          REF R73
      342 CAPTURE                          REF R71
      343 CAPTURE                          REF R85
      344 CAPTURE                          REF R70
      345 SETTABLEKS                       R86 R64 K79 ["resetHooksAfterThrow"]
      347 NEWCLOSURE                       R86 P10
      348 CAPTURE                          REF R68
      349 CAPTURE                          REF R66
      350 NEWCLOSURE                       R87 P11
      351 CAPTURE                          REF R67
      352 CAPTURE                          REF R66
      353 CAPTURE                          REF R68
      354 CAPTURE                          VAL R4
      355 DUPCLOSURE                       R88 K80 [PROTO_12]
      356 SETGLOBAL                        R88 K81 ["basicStateReducer"]
      358 NEWCLOSURE                       R88 P13
      359 CAPTURE                          REF R68
      360 CAPTURE                          REF R66
      361 SETGLOBAL                        R88 K82 ["mountReducer"]
      363 NEWCLOSURE                       R88 P14
      364 CAPTURE                          VAL R87
      365 CAPTURE                          REF R67
      366 CAPTURE                          REF R65
      367 CAPTURE                          REF R66
      368 CAPTURE                          VAL R23
      369 CAPTURE                          VAL R44
      370 CAPTURE                          VAL R20
      371 CAPTURE                          VAL R50
      372 SETGLOBAL                        R88 K83 ["updateReducer"]
      374 DUPCLOSURE                       R88 K84 [PROTO_16]
      375 CAPTURE                          VAL R87
      376 CAPTURE                          VAL R50
      377 SETGLOBAL                        R88 K85 ["rerenderReducer"]
      379 NEWCLOSURE                       R88 P16
      380 CAPTURE                          VAL R55
      381 CAPTURE                          VAL R56
      382 CAPTURE                          VAL R22
      383 CAPTURE                          REF R65
      384 CAPTURE                          VAL R57
      385 CAPTURE                          VAL R8
      386 CAPTURE                          VAL R58
      387 CAPTURE                          VAL R47
      388 SETGLOBAL                        R88 K86 ["readFromUnsubcribedMutableSource"]
      390 NEWCLOSURE                       R88 P17
      391 CAPTURE                          VAL R45
      392 CAPTURE                          VAL R47
      393 CAPTURE                          VAL R61
      394 CAPTURE                          REF R68
      395 CAPTURE                          REF R66
      396 CAPTURE                          VAL R8
      397 CAPTURE                          VAL R43
      398 CAPTURE                          VAL R26
      399 CAPTURE                          VAL R25
      400 SETGLOBAL                        R88 K87 ["useMutableSource"]
      402 NEWCLOSURE                       R88 P18
      403 CAPTURE                          REF R68
      404 CAPTURE                          REF R66
      405 SETGLOBAL                        R88 K88 ["mountMutableSource"]
      407 DUPCLOSURE                       R88 K89 [PROTO_27]
      408 CAPTURE                          VAL R87
      409 SETGLOBAL                        R88 K90 ["updateMutableSource"]
      411 NEWCLOSURE                       R88 P20
      412 CAPTURE                          REF R68
      413 CAPTURE                          REF R66
      414 SETGLOBAL                        R88 K91 ["mountState"]
      416 DUPCLOSURE                       R88 K92 [PROTO_30]
      417 SETGLOBAL                        R88 K93 ["updateState"]
      419 DUPCLOSURE                       R88 K94 [PROTO_31]
      420 SETGLOBAL                        R88 K95 ["rerenderState"]
      422 NEWCLOSURE                       R88 P23
      423 CAPTURE                          REF R66
      424 NEWCLOSURE                       R89 P24
      425 CAPTURE                          REF R68
      426 CAPTURE                          REF R66
      427 SETGLOBAL                        R89 K96 ["mountRef"]
      429 DUPCLOSURE                       R89 K97 [PROTO_34]
      430 CAPTURE                          VAL R87
      431 SETGLOBAL                        R89 K98 ["updateRef"]
      433 NEWCLOSURE                       R89 P26
      434 CAPTURE                          REF R68
      435 CAPTURE                          REF R66
      436 CAPTURE                          VAL R88
      437 CAPTURE                          VAL R35
      438 NEWCLOSURE                       R90 P27
      439 CAPTURE                          VAL R87
      440 CAPTURE                          REF R67
      441 CAPTURE                          VAL R84
      442 CAPTURE                          VAL R88
      443 CAPTURE                          REF R66
      444 CAPTURE                          VAL R35
      445 SETGLOBAL                        R90 K99 ["updateEffectImpl"]
      447 NEWCLOSURE                       R90 P28
      448 CAPTURE                          VAL R46
      449 CAPTURE                          REF R66
      450 CAPTURE                          VAL R18
      451 CAPTURE                          VAL R89
      452 CAPTURE                          VAL R34
      453 CAPTURE                          VAL R31
      454 CAPTURE                          VAL R32
      455 CAPTURE                          VAL R37
      456 NEWCLOSURE                       R91 P29
      457 CAPTURE                          VAL R46
      458 CAPTURE                          REF R66
      459 CAPTURE                          VAL R31
      460 CAPTURE                          VAL R37
      461 DUPCLOSURE                       R92 K100 [PROTO_39]
      462 CAPTURE                          VAL R18
      463 CAPTURE                          VAL R89
      464 CAPTURE                          VAL R33
      465 CAPTURE                          VAL R30
      466 CAPTURE                          VAL R36
      467 DUPCLOSURE                       R93 K101 [PROTO_40]
      468 CAPTURE                          VAL R30
      469 CAPTURE                          VAL R36
      470 DUPCLOSURE                       R94 K102 [PROTO_43]
      471 CAPTURE                          VAL R8
      472 CAPTURE                          VAL R3
      473 CAPTURE                          VAL R5
      474 SETGLOBAL                        R94 K103 ["imperativeHandleEffect"]
      476 DUPCLOSURE                       R94 K104 [PROTO_46]
      477 CAPTURE                          VAL R8
      478 CAPTURE                          VAL R7
      479 CAPTURE                          VAL R18
      480 CAPTURE                          VAL R89
      481 CAPTURE                          VAL R33
      482 CAPTURE                          VAL R30
      483 CAPTURE                          VAL R36
      484 SETGLOBAL                        R94 K105 ["mountImperativeHandle"]
      486 DUPCLOSURE                       R94 K106 [PROTO_48]
      487 CAPTURE                          VAL R8
      488 CAPTURE                          VAL R7
      489 CAPTURE                          VAL R30
      490 CAPTURE                          VAL R36
      491 SETGLOBAL                        R94 K107 ["updateImperativeHandle"]
      493 DUPCLOSURE                       R94 K108 [PROTO_49]
      494 SETGLOBAL                        R94 K109 ["mountDebugValue"]
      496 GETGLOBAL                        R94 K109 ["mountDebugValue"]
      498 NEWCLOSURE                       R95 P36
      499 CAPTURE                          REF R68
      500 CAPTURE                          REF R66
      501 SETGLOBAL                        R95 K110 ["mountCallback"]
      503 DUPCLOSURE                       R95 K111 [PROTO_51]
      504 CAPTURE                          VAL R87
      505 CAPTURE                          VAL R84
      506 SETGLOBAL                        R95 K112 ["updateCallback"]
      508 NEWCLOSURE                       R95 P38
      509 CAPTURE                          REF R68
      510 CAPTURE                          REF R66
      511 SETGLOBAL                        R95 K113 ["mountMemo"]
      513 DUPCLOSURE                       R95 K114 [PROTO_53]
      514 CAPTURE                          VAL R87
      515 CAPTURE                          VAL R84
      516 SETGLOBAL                        R95 K115 ["updateMemo"]
      518 DUPCLOSURE                       R95 K116 [PROTO_54]
      519 SETTABLEKS                       R95 R64 K117 ["getIsUpdatingOpaqueValueInRenderPhaseInDEV"]
      521 DUPCLOSURE                       R95 K118 [PROTO_55]
      522 CAPTURE                          VAL R8
      523 CAPTURE                          VAL R53
      524 CAPTURE                          VAL R51
      525 SETGLOBAL                        R95 K119 ["mountOpaqueIdentifier"]
      527 DUPCLOSURE                       R95 K120 [PROTO_56]
      528 SETGLOBAL                        R95 K121 ["updateOpaqueIdentifier"]
      530 DUPCLOSURE                       R95 K122 [PROTO_57]
      531 SETGLOBAL                        R95 K123 ["rerenderOpaqueIdentifier"]
      533 NEWCLOSURE                       R95 P44
      534 CAPTURE                          VAL R8
      535 CAPTURE                          VAL R42
      536 CAPTURE                          VAL R43
      537 CAPTURE                          REF R66
      538 CAPTURE                          REF R69
      539 CAPTURE                          REF R70
      540 CAPTURE                          VAL R21
      541 CAPTURE                          VAL R61
      542 CAPTURE                          REF R79
      543 CAPTURE                          VAL R41
      544 CAPTURE                          VAL R39
      545 CAPTURE                          VAL R40
      546 CAPTURE                          VAL R15
      547 CAPTURE                          VAL R19
      548 CAPTURE                          VAL R48
      549 CAPTURE                          VAL R59
      550 CAPTURE                          VAL R16
      551 CAPTURE                          VAL R60
      552 SETGLOBAL                        R95 K124 ["dispatchAction"]
      554 DUPTABLE                         R95 K137 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      555 SETTABLEKS                       R28 R95 K34 ["readContext"]
      557 SETTABLEKS                       R83 R95 K125 ["useCallback"]
      559 SETTABLEKS                       R83 R95 K126 ["useContext"]
      561 SETTABLEKS                       R83 R95 K127 ["useEffect"]
      563 SETTABLEKS                       R83 R95 K128 ["useImperativeHandle"]
      565 SETTABLEKS                       R83 R95 K129 ["useLayoutEffect"]
      567 SETTABLEKS                       R83 R95 K130 ["useMemo"]
      569 SETTABLEKS                       R83 R95 K131 ["useReducer"]
      571 SETTABLEKS                       R83 R95 K132 ["useRef"]
      573 SETTABLEKS                       R83 R95 K133 ["useState"]
      575 SETTABLEKS                       R83 R95 K134 ["useDebugValue"]
      577 SETTABLEKS                       R83 R95 K87 ["useMutableSource"]
      579 SETTABLEKS                       R83 R95 K135 ["useOpaqueIdentifier"]
      581 SETTABLEKS                       R17 R95 K136 ["unstable_isNewReconciler"]
      583 SETTABLEKS                       R95 R64 K138 ["ContextOnlyDispatcher"]
      585 DUPTABLE                         R96 K137 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      586 SETTABLEKS                       R28 R96 K34 ["readContext"]
      588 GETGLOBAL                        R97 K110 ["mountCallback"]
      590 SETTABLEKS                       R97 R96 K125 ["useCallback"]
      592 SETTABLEKS                       R28 R96 K126 ["useContext"]
      594 SETTABLEKS                       R90 R96 K127 ["useEffect"]
      596 GETGLOBAL                        R97 K105 ["mountImperativeHandle"]
      598 SETTABLEKS                       R97 R96 K128 ["useImperativeHandle"]
      600 SETTABLEKS                       R92 R96 K129 ["useLayoutEffect"]
      602 GETGLOBAL                        R97 K113 ["mountMemo"]
      604 SETTABLEKS                       R97 R96 K130 ["useMemo"]
      606 GETGLOBAL                        R97 K82 ["mountReducer"]
      608 SETTABLEKS                       R97 R96 K131 ["useReducer"]
      610 GETGLOBAL                        R97 K96 ["mountRef"]
      612 SETTABLEKS                       R97 R96 K132 ["useRef"]
      614 GETGLOBAL                        R97 K91 ["mountState"]
      616 SETTABLEKS                       R97 R96 K133 ["useState"]
      618 GETGLOBAL                        R97 K109 ["mountDebugValue"]
      620 SETTABLEKS                       R97 R96 K134 ["useDebugValue"]
      622 GETGLOBAL                        R97 K88 ["mountMutableSource"]
      624 SETTABLEKS                       R97 R96 K87 ["useMutableSource"]
      626 GETGLOBAL                        R97 K119 ["mountOpaqueIdentifier"]
      628 SETTABLEKS                       R97 R96 K135 ["useOpaqueIdentifier"]
      630 SETTABLEKS                       R17 R96 K136 ["unstable_isNewReconciler"]
      632 DUPTABLE                         R97 K137 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      633 SETTABLEKS                       R28 R97 K34 ["readContext"]
      635 GETGLOBAL                        R98 K112 ["updateCallback"]
      637 SETTABLEKS                       R98 R97 K125 ["useCallback"]
      639 SETTABLEKS                       R28 R97 K126 ["useContext"]
      641 SETTABLEKS                       R91 R97 K127 ["useEffect"]
      643 GETGLOBAL                        R98 K107 ["updateImperativeHandle"]
      645 SETTABLEKS                       R98 R97 K128 ["useImperativeHandle"]
      647 SETTABLEKS                       R93 R97 K129 ["useLayoutEffect"]
      649 GETGLOBAL                        R98 K115 ["updateMemo"]
      651 SETTABLEKS                       R98 R97 K130 ["useMemo"]
      653 GETGLOBAL                        R98 K83 ["updateReducer"]
      655 SETTABLEKS                       R98 R97 K131 ["useReducer"]
      657 GETGLOBAL                        R98 K98 ["updateRef"]
      659 SETTABLEKS                       R98 R97 K132 ["useRef"]
      661 GETGLOBAL                        R98 K93 ["updateState"]
      663 SETTABLEKS                       R98 R97 K133 ["useState"]
      665 SETTABLEKS                       R94 R97 K134 ["useDebugValue"]
      667 GETGLOBAL                        R98 K90 ["updateMutableSource"]
      669 SETTABLEKS                       R98 R97 K87 ["useMutableSource"]
      671 GETGLOBAL                        R98 K121 ["updateOpaqueIdentifier"]
      673 SETTABLEKS                       R98 R97 K135 ["useOpaqueIdentifier"]
      675 SETTABLEKS                       R17 R97 K136 ["unstable_isNewReconciler"]
      677 DUPTABLE                         R98 K137 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      678 SETTABLEKS                       R28 R98 K34 ["readContext"]
      680 GETGLOBAL                        R99 K112 ["updateCallback"]
      682 SETTABLEKS                       R99 R98 K125 ["useCallback"]
      684 SETTABLEKS                       R28 R98 K126 ["useContext"]
      686 SETTABLEKS                       R91 R98 K127 ["useEffect"]
      688 GETGLOBAL                        R99 K107 ["updateImperativeHandle"]
      690 SETTABLEKS                       R99 R98 K128 ["useImperativeHandle"]
      692 SETTABLEKS                       R93 R98 K129 ["useLayoutEffect"]
      694 GETGLOBAL                        R99 K115 ["updateMemo"]
      696 SETTABLEKS                       R99 R98 K130 ["useMemo"]
      698 GETGLOBAL                        R99 K85 ["rerenderReducer"]
      700 SETTABLEKS                       R99 R98 K131 ["useReducer"]
      702 GETGLOBAL                        R99 K98 ["updateRef"]
      704 SETTABLEKS                       R99 R98 K132 ["useRef"]
      706 GETGLOBAL                        R99 K95 ["rerenderState"]
      708 SETTABLEKS                       R99 R98 K133 ["useState"]
      710 SETTABLEKS                       R94 R98 K134 ["useDebugValue"]
      712 GETGLOBAL                        R99 K90 ["updateMutableSource"]
      714 SETTABLEKS                       R99 R98 K87 ["useMutableSource"]
      716 GETGLOBAL                        R99 K123 ["rerenderOpaqueIdentifier"]
      718 SETTABLEKS                       R99 R98 K135 ["useOpaqueIdentifier"]
      720 SETTABLEKS                       R17 R98 K136 ["unstable_isNewReconciler"]
      722 GETIMPORT                        R99 K72 [_G]
      724 GETTABLEKS                       R99 R99 K73 ["__DEV__"]
      726 JUMPIFNOT                        R99 ; [+538]
      727 DUPCLOSURE                       R99 K139 [PROTO_59]
      728 CAPTURE                          VAL R8
      729 DUPCLOSURE                       R100 K140 [PROTO_60]
      730 CAPTURE                          VAL R8
      731 DUPTABLE                         R101 K137 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      732 DUPCLOSURE                       R102 K141 [PROTO_61]
      733 CAPTURE                          VAL R28
      734 SETTABLEKS                       R102 R101 K34 ["readContext"]
      736 NEWCLOSURE                       R102 P48
      737 CAPTURE                          REF R71
      738 CAPTURE                          REF R72
      739 CAPTURE                          VAL R3
      740 CAPTURE                          VAL R8
      741 SETTABLEKS                       R102 R101 K125 ["useCallback"]
      743 NEWCLOSURE                       R102 P49
      744 CAPTURE                          REF R71
      745 CAPTURE                          REF R72
      746 CAPTURE                          VAL R28
      747 SETTABLEKS                       R102 R101 K126 ["useContext"]
      749 NEWCLOSURE                       R102 P50
      750 CAPTURE                          REF R71
      751 CAPTURE                          REF R72
      752 CAPTURE                          VAL R3
      753 CAPTURE                          VAL R8
      754 CAPTURE                          VAL R90
      755 SETTABLEKS                       R102 R101 K127 ["useEffect"]
      757 NEWCLOSURE                       R102 P51
      758 CAPTURE                          REF R71
      759 CAPTURE                          REF R72
      760 CAPTURE                          VAL R3
      761 CAPTURE                          VAL R8
      762 SETTABLEKS                       R102 R101 K128 ["useImperativeHandle"]
      764 NEWCLOSURE                       R102 P52
      765 CAPTURE                          REF R71
      766 CAPTURE                          REF R72
      767 CAPTURE                          VAL R3
      768 CAPTURE                          VAL R8
      769 CAPTURE                          VAL R92
      770 SETTABLEKS                       R102 R101 K129 ["useLayoutEffect"]
      772 NEWCLOSURE                       R102 P53
      773 CAPTURE                          REF R71
      774 CAPTURE                          REF R72
      775 CAPTURE                          VAL R3
      776 CAPTURE                          VAL R8
      777 CAPTURE                          VAL R61
      778 CAPTURE                          REF R78
      779 SETTABLEKS                       R102 R101 K130 ["useMemo"]
      781 NEWCLOSURE                       R102 P54
      782 CAPTURE                          REF R71
      783 CAPTURE                          REF R72
      784 CAPTURE                          VAL R61
      785 CAPTURE                          REF R78
      786 SETTABLEKS                       R102 R101 K131 ["useReducer"]
      788 NEWCLOSURE                       R102 P55
      789 CAPTURE                          REF R71
      790 CAPTURE                          REF R72
      791 SETTABLEKS                       R102 R101 K132 ["useRef"]
      793 NEWCLOSURE                       R102 P56
      794 CAPTURE                          REF R71
      795 CAPTURE                          REF R72
      796 CAPTURE                          VAL R61
      797 CAPTURE                          REF R78
      798 SETTABLEKS                       R102 R101 K133 ["useState"]
      800 NEWCLOSURE                       R102 P57
      801 CAPTURE                          REF R71
      802 CAPTURE                          REF R72
      803 SETTABLEKS                       R102 R101 K134 ["useDebugValue"]
      805 NEWCLOSURE                       R102 P58
      806 CAPTURE                          REF R71
      807 CAPTURE                          REF R72
      808 SETTABLEKS                       R102 R101 K87 ["useMutableSource"]
      810 NEWCLOSURE                       R102 P59
      811 CAPTURE                          REF R71
      812 CAPTURE                          REF R72
      813 SETTABLEKS                       R102 R101 K135 ["useOpaqueIdentifier"]
      815 SETTABLEKS                       R17 R101 K136 ["unstable_isNewReconciler"]
      817 MOVE                             R74 R101
      818 DUPTABLE                         R101 K137 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      819 DUPCLOSURE                       R102 K142 [PROTO_74]
      820 CAPTURE                          VAL R28
      821 SETTABLEKS                       R102 R101 K34 ["readContext"]
      823 NEWCLOSURE                       R102 P61
      824 CAPTURE                          REF R71
      825 CAPTURE                          VAL R3
      826 CAPTURE                          VAL R8
      827 SETTABLEKS                       R102 R101 K125 ["useCallback"]
      829 NEWCLOSURE                       R102 P62
      830 CAPTURE                          REF R71
      831 CAPTURE                          VAL R28
      832 SETTABLEKS                       R102 R101 K126 ["useContext"]
      834 NEWCLOSURE                       R102 P63
      835 CAPTURE                          REF R71
      836 CAPTURE                          VAL R90
      837 SETTABLEKS                       R102 R101 K127 ["useEffect"]
      839 NEWCLOSURE                       R102 P64
      840 CAPTURE                          REF R71
      841 SETTABLEKS                       R102 R101 K128 ["useImperativeHandle"]
      843 NEWCLOSURE                       R102 P65
      844 CAPTURE                          REF R71
      845 CAPTURE                          VAL R92
      846 SETTABLEKS                       R102 R101 K129 ["useLayoutEffect"]
      848 NEWCLOSURE                       R102 P66
      849 CAPTURE                          REF R71
      850 CAPTURE                          VAL R61
      851 CAPTURE                          REF R78
      852 SETTABLEKS                       R102 R101 K130 ["useMemo"]
      854 NEWCLOSURE                       R102 P67
      855 CAPTURE                          REF R71
      856 CAPTURE                          VAL R61
      857 CAPTURE                          REF R78
      858 SETTABLEKS                       R102 R101 K131 ["useReducer"]
      860 NEWCLOSURE                       R102 P68
      861 CAPTURE                          REF R71
      862 SETTABLEKS                       R102 R101 K132 ["useRef"]
      864 NEWCLOSURE                       R102 P69
      865 CAPTURE                          REF R71
      866 CAPTURE                          VAL R61
      867 CAPTURE                          REF R78
      868 SETTABLEKS                       R102 R101 K133 ["useState"]
      870 NEWCLOSURE                       R102 P70
      871 CAPTURE                          REF R71
      872 SETTABLEKS                       R102 R101 K134 ["useDebugValue"]
      874 NEWCLOSURE                       R102 P71
      875 CAPTURE                          REF R71
      876 SETTABLEKS                       R102 R101 K87 ["useMutableSource"]
      878 NEWCLOSURE                       R102 P72
      879 CAPTURE                          REF R71
      880 SETTABLEKS                       R102 R101 K135 ["useOpaqueIdentifier"]
      882 SETTABLEKS                       R17 R101 K136 ["unstable_isNewReconciler"]
      884 MOVE                             R75 R101
      885 DUPTABLE                         R101 K137 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      886 DUPCLOSURE                       R102 K143 [PROTO_87]
      887 CAPTURE                          VAL R28
      888 SETTABLEKS                       R102 R101 K34 ["readContext"]
      890 NEWCLOSURE                       R102 P74
      891 CAPTURE                          REF R71
      892 SETTABLEKS                       R102 R101 K125 ["useCallback"]
      894 NEWCLOSURE                       R102 P75
      895 CAPTURE                          REF R71
      896 CAPTURE                          VAL R28
      897 SETTABLEKS                       R102 R101 K126 ["useContext"]
      899 NEWCLOSURE                       R102 P76
      900 CAPTURE                          REF R71
      901 CAPTURE                          VAL R91
      902 SETTABLEKS                       R102 R101 K127 ["useEffect"]
      904 NEWCLOSURE                       R102 P77
      905 CAPTURE                          REF R71
      906 SETTABLEKS                       R102 R101 K128 ["useImperativeHandle"]
      908 NEWCLOSURE                       R102 P78
      909 CAPTURE                          REF R71
      910 CAPTURE                          VAL R93
      911 SETTABLEKS                       R102 R101 K129 ["useLayoutEffect"]
      913 NEWCLOSURE                       R102 P79
      914 CAPTURE                          REF R71
      915 CAPTURE                          VAL R61
      916 CAPTURE                          REF R79
      917 SETTABLEKS                       R102 R101 K130 ["useMemo"]
      919 NEWCLOSURE                       R102 P80
      920 CAPTURE                          REF R71
      921 CAPTURE                          VAL R61
      922 CAPTURE                          REF R79
      923 SETTABLEKS                       R102 R101 K131 ["useReducer"]
      925 NEWCLOSURE                       R102 P81
      926 CAPTURE                          REF R71
      927 SETTABLEKS                       R102 R101 K132 ["useRef"]
      929 NEWCLOSURE                       R102 P82
      930 CAPTURE                          REF R71
      931 CAPTURE                          VAL R61
      932 CAPTURE                          REF R79
      933 SETTABLEKS                       R102 R101 K133 ["useState"]
      935 NEWCLOSURE                       R102 P83
      936 CAPTURE                          REF R71
      937 CAPTURE                          VAL R94
      938 SETTABLEKS                       R102 R101 K134 ["useDebugValue"]
      940 NEWCLOSURE                       R102 P84
      941 CAPTURE                          REF R71
      942 SETTABLEKS                       R102 R101 K87 ["useMutableSource"]
      944 NEWCLOSURE                       R102 P85
      945 CAPTURE                          REF R71
      946 SETTABLEKS                       R102 R101 K135 ["useOpaqueIdentifier"]
      948 SETTABLEKS                       R17 R101 K136 ["unstable_isNewReconciler"]
      950 MOVE                             R76 R101
      951 DUPTABLE                         R101 K137 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      952 DUPCLOSURE                       R102 K144 [PROTO_100]
      953 CAPTURE                          VAL R28
      954 SETTABLEKS                       R102 R101 K34 ["readContext"]
      956 NEWCLOSURE                       R102 P87
      957 CAPTURE                          REF R71
      958 SETTABLEKS                       R102 R101 K125 ["useCallback"]
      960 NEWCLOSURE                       R102 P88
      961 CAPTURE                          REF R71
      962 CAPTURE                          VAL R28
      963 SETTABLEKS                       R102 R101 K126 ["useContext"]
      965 NEWCLOSURE                       R102 P89
      966 CAPTURE                          REF R71
      967 CAPTURE                          VAL R91
      968 SETTABLEKS                       R102 R101 K127 ["useEffect"]
      970 NEWCLOSURE                       R102 P90
      971 CAPTURE                          REF R71
      972 SETTABLEKS                       R102 R101 K128 ["useImperativeHandle"]
      974 NEWCLOSURE                       R102 P91
      975 CAPTURE                          REF R71
      976 CAPTURE                          VAL R93
      977 SETTABLEKS                       R102 R101 K129 ["useLayoutEffect"]
      979 NEWCLOSURE                       R102 P92
      980 CAPTURE                          REF R71
      981 CAPTURE                          VAL R61
      982 CAPTURE                          REF R80
      983 SETTABLEKS                       R102 R101 K130 ["useMemo"]
      985 NEWCLOSURE                       R102 P93
      986 CAPTURE                          REF R71
      987 CAPTURE                          VAL R61
      988 CAPTURE                          REF R80
      989 SETTABLEKS                       R102 R101 K131 ["useReducer"]
      991 NEWCLOSURE                       R102 P94
      992 CAPTURE                          REF R71
      993 SETTABLEKS                       R102 R101 K132 ["useRef"]
      995 NEWCLOSURE                       R102 P95
      996 CAPTURE                          REF R71
      997 CAPTURE                          VAL R61
      998 CAPTURE                          REF R80
      999 SETTABLEKS                       R102 R101 K133 ["useState"]
     1001 NEWCLOSURE                       R102 P96
     1002 CAPTURE                          REF R71
     1003 CAPTURE                          VAL R94
     1004 SETTABLEKS                       R102 R101 K134 ["useDebugValue"]
     1006 NEWCLOSURE                       R102 P97
     1007 CAPTURE                          REF R71
     1008 SETTABLEKS                       R102 R101 K87 ["useMutableSource"]
     1010 NEWCLOSURE                       R102 P98
     1011 CAPTURE                          REF R71
     1012 SETTABLEKS                       R102 R101 K135 ["useOpaqueIdentifier"]
     1014 SETTABLEKS                       R17 R101 K136 ["unstable_isNewReconciler"]
     1016 MOVE                             R77 R101
     1017 DUPTABLE                         R101 K137 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
     1018 DUPCLOSURE                       R102 K145 [PROTO_113]
     1019 CAPTURE                          VAL R8
     1020 CAPTURE                          VAL R28
     1021 SETTABLEKS                       R102 R101 K34 ["readContext"]
     1023 NEWCLOSURE                       R102 P100
     1024 CAPTURE                          REF R71
     1025 CAPTURE                          VAL R8
     1026 CAPTURE                          REF R72
     1027 SETTABLEKS                       R102 R101 K125 ["useCallback"]
     1029 NEWCLOSURE                       R102 P101
     1030 CAPTURE                          REF R71
     1031 CAPTURE                          VAL R8
     1032 CAPTURE                          REF R72
     1033 CAPTURE                          VAL R28
     1034 SETTABLEKS                       R102 R101 K126 ["useContext"]
     1036 NEWCLOSURE                       R102 P102
     1037 CAPTURE                          REF R71
     1038 CAPTURE                          VAL R8
     1039 CAPTURE                          REF R72
     1040 CAPTURE                          VAL R90
     1041 SETTABLEKS                       R102 R101 K127 ["useEffect"]
     1043 NEWCLOSURE                       R102 P103
     1044 CAPTURE                          REF R71
     1045 CAPTURE                          VAL R8
     1046 CAPTURE                          REF R72
     1047 SETTABLEKS                       R102 R101 K128 ["useImperativeHandle"]
     1049 NEWCLOSURE                       R102 P104
     1050 CAPTURE                          REF R71
     1051 CAPTURE                          VAL R8
     1052 CAPTURE                          REF R72
     1053 CAPTURE                          VAL R92
     1054 SETTABLEKS                       R102 R101 K129 ["useLayoutEffect"]
     1056 NEWCLOSURE                       R102 P105
     1057 CAPTURE                          REF R71
     1058 CAPTURE                          VAL R8
     1059 CAPTURE                          REF R72
     1060 CAPTURE                          VAL R61
     1061 CAPTURE                          REF R78
     1062 SETTABLEKS                       R102 R101 K130 ["useMemo"]
     1064 NEWCLOSURE                       R102 P106
     1065 CAPTURE                          REF R71
     1066 CAPTURE                          VAL R8
     1067 CAPTURE                          REF R72
     1068 CAPTURE                          VAL R61
     1069 CAPTURE                          REF R78
     1070 SETTABLEKS                       R102 R101 K131 ["useReducer"]
     1072 NEWCLOSURE                       R102 P107
     1073 CAPTURE                          REF R71
     1074 CAPTURE                          VAL R8
     1075 CAPTURE                          REF R72
     1076 SETTABLEKS                       R102 R101 K132 ["useRef"]
     1078 NEWCLOSURE                       R102 P108
     1079 CAPTURE                          REF R71
     1080 CAPTURE                          VAL R8
     1081 CAPTURE                          REF R72
     1082 CAPTURE                          VAL R61
     1083 CAPTURE                          REF R78
     1084 SETTABLEKS                       R102 R101 K133 ["useState"]
     1086 NEWCLOSURE                       R102 P109
     1087 CAPTURE                          REF R71
     1088 CAPTURE                          VAL R8
     1089 CAPTURE                          REF R72
     1090 SETTABLEKS                       R102 R101 K134 ["useDebugValue"]
     1092 NEWCLOSURE                       R102 P110
     1093 CAPTURE                          REF R71
     1094 CAPTURE                          VAL R8
     1095 CAPTURE                          REF R72
     1096 SETTABLEKS                       R102 R101 K87 ["useMutableSource"]
     1098 NEWCLOSURE                       R102 P111
     1099 CAPTURE                          REF R71
     1100 CAPTURE                          VAL R8
     1101 CAPTURE                          REF R72
     1102 SETTABLEKS                       R102 R101 K135 ["useOpaqueIdentifier"]
     1104 SETTABLEKS                       R17 R101 K136 ["unstable_isNewReconciler"]
     1106 MOVE                             R78 R101
     1107 DUPTABLE                         R101 K137 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
     1108 DUPCLOSURE                       R102 K146 [PROTO_126]
     1109 CAPTURE                          VAL R8
     1110 CAPTURE                          VAL R28
     1111 SETTABLEKS                       R102 R101 K34 ["readContext"]
     1113 NEWCLOSURE                       R102 P113
     1114 CAPTURE                          REF R71
     1115 CAPTURE                          VAL R8
     1116 SETTABLEKS                       R102 R101 K125 ["useCallback"]
     1118 NEWCLOSURE                       R102 P114
     1119 CAPTURE                          REF R71
     1120 CAPTURE                          VAL R8
     1121 CAPTURE                          VAL R28
     1122 SETTABLEKS                       R102 R101 K126 ["useContext"]
     1124 NEWCLOSURE                       R102 P115
     1125 CAPTURE                          REF R71
     1126 CAPTURE                          VAL R8
     1127 CAPTURE                          VAL R91
     1128 SETTABLEKS                       R102 R101 K127 ["useEffect"]
     1130 NEWCLOSURE                       R102 P116
     1131 CAPTURE                          REF R71
     1132 CAPTURE                          VAL R8
     1133 SETTABLEKS                       R102 R101 K128 ["useImperativeHandle"]
     1135 NEWCLOSURE                       R102 P117
     1136 CAPTURE                          REF R71
     1137 CAPTURE                          VAL R8
     1138 CAPTURE                          VAL R93
     1139 SETTABLEKS                       R102 R101 K129 ["useLayoutEffect"]
     1141 NEWCLOSURE                       R102 P118
     1142 CAPTURE                          REF R71
     1143 CAPTURE                          VAL R8
     1144 CAPTURE                          VAL R61
     1145 CAPTURE                          REF R79
     1146 SETTABLEKS                       R102 R101 K130 ["useMemo"]
     1148 NEWCLOSURE                       R102 P119
     1149 CAPTURE                          REF R71
     1150 CAPTURE                          VAL R8
     1151 CAPTURE                          VAL R61
     1152 CAPTURE                          REF R79
     1153 SETTABLEKS                       R102 R101 K131 ["useReducer"]
     1155 NEWCLOSURE                       R102 P120
     1156 CAPTURE                          REF R71
     1157 CAPTURE                          VAL R8
     1158 SETTABLEKS                       R102 R101 K132 ["useRef"]
     1160 NEWCLOSURE                       R102 P121
     1161 CAPTURE                          REF R71
     1162 CAPTURE                          VAL R8
     1163 CAPTURE                          VAL R61
     1164 CAPTURE                          REF R79
     1165 SETTABLEKS                       R102 R101 K133 ["useState"]
     1167 NEWCLOSURE                       R102 P122
     1168 CAPTURE                          REF R71
     1169 CAPTURE                          VAL R8
     1170 CAPTURE                          VAL R94
     1171 SETTABLEKS                       R102 R101 K134 ["useDebugValue"]
     1173 NEWCLOSURE                       R102 P123
     1174 CAPTURE                          REF R71
     1175 CAPTURE                          VAL R8
     1176 SETTABLEKS                       R102 R101 K87 ["useMutableSource"]
     1178 NEWCLOSURE                       R102 P124
     1179 CAPTURE                          REF R71
     1180 CAPTURE                          VAL R8
     1181 SETTABLEKS                       R102 R101 K135 ["useOpaqueIdentifier"]
     1183 SETTABLEKS                       R17 R101 K136 ["unstable_isNewReconciler"]
     1185 MOVE                             R79 R101
     1186 DUPTABLE                         R101 K137 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
     1187 DUPCLOSURE                       R102 K147 [PROTO_139]
     1188 CAPTURE                          VAL R8
     1189 CAPTURE                          VAL R28
     1190 SETTABLEKS                       R102 R101 K34 ["readContext"]
     1192 NEWCLOSURE                       R102 P126
     1193 CAPTURE                          REF R71
     1194 CAPTURE                          VAL R8
     1195 SETTABLEKS                       R102 R101 K125 ["useCallback"]
     1197 NEWCLOSURE                       R102 P127
     1198 CAPTURE                          REF R71
     1199 CAPTURE                          VAL R8
     1200 CAPTURE                          VAL R28
     1201 SETTABLEKS                       R102 R101 K126 ["useContext"]
     1203 NEWCLOSURE                       R102 P128
     1204 CAPTURE                          REF R71
     1205 CAPTURE                          VAL R8
     1206 CAPTURE                          VAL R91
     1207 SETTABLEKS                       R102 R101 K127 ["useEffect"]
     1209 NEWCLOSURE                       R102 P129
     1210 CAPTURE                          REF R71
     1211 CAPTURE                          VAL R8
     1212 SETTABLEKS                       R102 R101 K128 ["useImperativeHandle"]
     1214 NEWCLOSURE                       R102 P130
     1215 CAPTURE                          REF R71
     1216 CAPTURE                          VAL R8
     1217 CAPTURE                          VAL R93
     1218 SETTABLEKS                       R102 R101 K129 ["useLayoutEffect"]
     1220 NEWCLOSURE                       R102 P131
     1221 CAPTURE                          REF R71
     1222 CAPTURE                          VAL R8
     1223 CAPTURE                          VAL R61
     1224 CAPTURE                          REF R79
     1225 SETTABLEKS                       R102 R101 K130 ["useMemo"]
     1227 NEWCLOSURE                       R102 P132
     1228 CAPTURE                          REF R71
     1229 CAPTURE                          VAL R8
     1230 CAPTURE                          VAL R61
     1231 CAPTURE                          REF R79
     1232 SETTABLEKS                       R102 R101 K131 ["useReducer"]
     1234 NEWCLOSURE                       R102 P133
     1235 CAPTURE                          REF R71
     1236 CAPTURE                          VAL R8
     1237 SETTABLEKS                       R102 R101 K132 ["useRef"]
     1239 NEWCLOSURE                       R102 P134
     1240 CAPTURE                          REF R71
     1241 CAPTURE                          VAL R8
     1242 CAPTURE                          VAL R61
     1243 CAPTURE                          REF R79
     1244 SETTABLEKS                       R102 R101 K133 ["useState"]
     1246 NEWCLOSURE                       R102 P135
     1247 CAPTURE                          REF R71
     1248 CAPTURE                          VAL R8
     1249 CAPTURE                          VAL R94
     1250 SETTABLEKS                       R102 R101 K134 ["useDebugValue"]
     1252 NEWCLOSURE                       R102 P136
     1253 CAPTURE                          REF R71
     1254 CAPTURE                          VAL R8
     1255 SETTABLEKS                       R102 R101 K87 ["useMutableSource"]
     1257 NEWCLOSURE                       R102 P137
     1258 CAPTURE                          REF R71
     1259 CAPTURE                          VAL R8
     1260 SETTABLEKS                       R102 R101 K135 ["useOpaqueIdentifier"]
     1262 SETTABLEKS                       R17 R101 K136 ["unstable_isNewReconciler"]
     1264 MOVE                             R80 R101
     1265 NEWCLOSURE                       R99 P138
     1266 CAPTURE                          REF R65
     1267 CAPTURE                          REF R66
     1268 CAPTURE                          REF R72
     1269 CAPTURE                          REF R73
     1270 CAPTURE                          VAL R21
     1271 CAPTURE                          VAL R61
     1272 CAPTURE                          REF R76
     1273 CAPTURE                          REF R75
     1274 CAPTURE                          REF R74
     1275 CAPTURE                          VAL R96
     1276 CAPTURE                          VAL R97
     1277 CAPTURE                          REF R70
     1278 CAPTURE                          VAL R4
     1279 CAPTURE                          REF R67
     1280 CAPTURE                          REF R68
     1281 CAPTURE                          REF R77
     1282 CAPTURE                          VAL R98
     1283 CAPTURE                          VAL R95
     1284 CAPTURE                          REF R71
     1285 CAPTURE                          REF R69
     1286 SETTABLEKS                       R99 R64 K148 ["renderWithHooks"]
     1288 CLOSEUPVALS                      R62
     1289 RETURN                           R64 1
