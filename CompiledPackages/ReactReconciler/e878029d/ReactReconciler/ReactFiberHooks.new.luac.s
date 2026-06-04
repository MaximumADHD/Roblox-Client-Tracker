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
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 JUMPIFNOTLT                      R1 R5 ; [+3]
        7 MOVE                             R1 R5
        8 JUMP                             ; [0]
        9 FORGLOOP                         R2 2 ; [-5]
       11 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
        7 LOADB                            R1 0
        8 RETURN                           R1 1
        9 MOVE                             R1 R0
       10 LOADNIL                          R2
       11 LOADNIL                          R3
       12 FORGPREP                         R1
       13 FASTCALL1                        TYPE R4 ; [+3]
       14 MOVE                             R7 R4
       15 GETIMPORT                        R6 K1 [type]
       17 CALL                             R6 1 1
       18 JUMPIFEQKS                       R6 K3 ["number"] ; [+3]
       20 LOADB                            R6 0
       21 RETURN                           R6 1
       22 FORGLOOP                         R1 2 ; [-10]
       24 LOADB                            R1 1
       25 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+18]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 JUMPIFNOTEQKNIL                  R1 ; [+8]
        6 NEWTABLE                         R1 0 1
        8 MOVE                             R2 R0
        9 SETLIST                          R1 R2 1 [1]
       11 SETUPVAL                         R1 2
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 2
       14 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       16 MOVE                             R3 R0
       17 GETIMPORT                        R1 K2 [table.insert]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+16]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 JUMPIFEQKNIL                     R1 ; [+13]
        6 GETUPVAL                         R1 3
        7 ADDK                             R1 R1 K0 [1]
        8 SETUPVAL                         R1 3
        9 GETUPVAL                         R2 2
       10 GETUPVAL                         R3 3
       11 GETTABLE                         R1 R2 R3
       12 JUMPIFEQ                         R1 R0 ; [+5]
       14 GETGLOBAL                        R1 K1 ["warnOnHookMismatchInDev"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+39]
        2 JUMPIFEQKNIL                     R0 ; [+38]
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [type]
        8 CALL                             R2 1 1
        9 JUMPIFEQKS                       R2 K2 ["table"] ; [+3]
       11 LOADB                            R1 0
       12 JUMP                             ; [+16]
       13 MOVE                             R2 R0
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 FASTCALL1                        TYPE R5 ; [+3]
       18 MOVE                             R8 R5
       19 GETIMPORT                        R7 K1 [type]
       21 CALL                             R7 1 1
       22 JUMPIFEQKS                       R7 K3 ["number"] ; [+3]
       24 LOADB                            R1 0
       25 JUMP                             ; [+3]
       26 FORGLOOP                         R2 2 ; [-10]
       28 LOADB                            R1 1
       29 JUMPIF                           R1 ; [+11]
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R1 R1 K4 ["error"]
       33 LOADK                            R2 K5 ["%s received a final argument that is not an array (instead, received `%s`). When specified, the final argument must be an array."]
       34 GETUPVAL                         R3 2
       35 FASTCALL1                        TYPE R0 ; [+3]
       36 MOVE                             R5 R0
       37 GETIMPORT                        R4 K1 [type]
       39 CALL                             R4 1 1
       40 CALL                             R1 3 0
       41 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+65]
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K1 ["type"]
        6 CALL                             R2 1 1
        7 ORK                              R1 R2 K0 ["Component"]
        8 GETUPVAL                         R3 3
        9 GETTABLE                         R2 R3 R1
       10 JUMPIF                           R2 ; [+56]
       11 GETUPVAL                         R2 3
       12 LOADB                            R3 1
       13 SETTABLE                         R3 R2 R1
       14 GETUPVAL                         R2 4
       15 JUMPIFEQKNIL                     R2 ; [+51]
       17 LOADK                            R2 K2 [""]
       18 LOADN                            R5 1
       19 GETUPVAL                         R3 5
       20 LOADN                            R4 1
       21 FORNPREP                         R3
       22 GETUPVAL                         R7 4
       23 GETTABLE                         R6 R7 R5
       24 LOADNIL                          R7
       25 GETUPVAL                         R8 5
       26 JUMPIFNOTEQ                      R5 R8 ; [+3]
       28 MOVE                             R7 R0
       29 JUMP                             ; [+1]
       30 MOVE                             R7 R6
       31 FASTCALL1                        TOSTRING R5 ; [+3]
       32 MOVE                             R13 R5
       33 GETIMPORT                        R12 K4 [tostring]
       35 CALL                             R12 1 1
       36 MOVE                             R9 R12
       37 LOADK                            R10 K5 [". "]
       38 ORK                              R11 R6 K6 ["undefined"]
       39 CONCAT                           R8 R9 R11
       40 FASTCALL1                        STRING_LEN R8 ; [+3]
       41 MOVE                             R10 R8
       42 GETIMPORT                        R9 K9 [string.len]
       44 CALL                             R9 1 1
       45 LOADN                            R10 30
       46 JUMPIFNOTLT                      R9 R10 ; [+5]
       48 MOVE                             R9 R8
       49 LOADK                            R10 K10 [" "]
       50 CONCAT                           R8 R9 R10
       51 JUMPBACK                         ; [-12]
       52 MOVE                             R9 R8
       53 MOVE                             R10 R7
       54 LOADK                            R11 K11 ["\n"]
       55 CONCAT                           R8 R9 R11
       56 MOVE                             R9 R2
       57 MOVE                             R10 R8
       58 CONCAT                           R2 R9 R10
       59 FORNLOOP                         R3
       60 GETUPVAL                         R3 6
       61 GETTABLEKS                       R3 R3 K12 ["error"]
       63 LOADK                            R4 K13 ["React has detected a change in the order of Hooks called by %s. This will lead to bugs and errors if not fixed. For more information, read the Rules of Hooks: https://reactjs.org/link/rules-of-hooks\n\n   Previous render            Next render\n   ------------------------------------------------------\n%s   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n"]
       64 MOVE                             R5 R1
       65 MOVE                             R6 R2
       66 CALL                             R3 3 0
       67 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["new"]
        5 LOADK                            R2 K3 ["Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for one of the following reasons:\n1. You might have mismatching versions of React and the renderer (such as React DOM)\n2. You might be breaking the Rules of Hooks\n3. You might have more than one copy of React in the same app\nSee https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem."]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [0]
        2 JUMPIFNOTEQKNIL                  R1 ; [+11]
        4 GETUPVAL                         R2 0
        5 JUMPIFNOT                        R2 ; [+6]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K0 ["error"]
        9 LOADK                            R3 K1 ["%s received a final argument during this render, but not during the previous render. Even though the final argument is optional, its type cannot change between renders."]
       10 GETUPVAL                         R4 2
       11 CALL                             R2 2 0
       12 LOADB                            R2 0
       13 RETURN                           R2 1
       14 LOADN                            R3 0
       15 MOVE                             R4 R0
       16 LOADNIL                          R5
       17 LOADNIL                          R6
       18 FORGPREP                         R4
       19 JUMPIFNOTLT                      R3 R7 ; [+3]
       21 MOVE                             R3 R7
       22 JUMP                             ; [0]
       23 FORGLOOP                         R4 2 ; [-5]
       25 MOVE                             R2 R3
       26 LOADN                            R4 0
       27 MOVE                             R5 R1
       28 LOADNIL                          R6
       29 LOADNIL                          R7
       30 FORGPREP                         R5
       31 JUMPIFNOTLT                      R4 R8 ; [+3]
       33 MOVE                             R4 R8
       34 JUMP                             ; [0]
       35 FORGLOOP                         R5 2 ; [-5]
       37 MOVE                             R3 R4
       38 JUMPIFEQ                         R2 R3 ; [+3]
       40 LOADB                            R4 0
       41 RETURN                           R4 1
       42 FASTCALL2                        MATH_MIN R3 R2 ; [+5]
       44 MOVE                             R5 R3
       45 MOVE                             R6 R2
       46 GETIMPORT                        R4 K4 [math.min]
       48 CALL                             R4 2 1
       49 LOADN                            R7 1
       50 MOVE                             R5 R4
       51 LOADN                            R6 1
       52 FORNPREP                         R5
       53 GETTABLE                         R9 R0 R7
       54 GETTABLE                         R10 R1 R7
       55 JUMPIFNOTEQ                      R9 R10 ; [+9]
       57 LOADB                            R8 1
       58 JUMPIFNOTEQKN                    R9 K5 [0] ; [+13]
       60 LOADB                            R8 1
       61 DIVRK                            R11 R6 K9 [NULL]
       62 DIVRK                            R12 R6 K10 [NULL]
       63 JUMPIFEQ                         R11 R12 ; [+8]
       65 LOADB                            R8 0
       66 JUMPIFEQ                         R9 R9 ; [+5]
       68 JUMPIFNOTEQ                      R10 R10 ; [+2]
       70 LOADB                            R8 0 +1
       71 LOADB                            R8 1
       72 JUMPIF                           R8 ; [+2]
       73 LOADB                            R8 0
       74 RETURN                           R8 1
       75 FORNLOOP                         R5
       76 LOADB                            R5 1
       77 RETURN                           R5 1

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["updateQueue"]
        2 SETTABLEKS                       R3 R1 K0 ["updateQueue"]
        4 GETUPVAL                         R3 0
        5 JUMPIFNOT                        R3 ; [+24]
        6 GETUPVAL                         R3 1
        7 JUMPIFNOT                        R3 ; [+22]
        8 GETTABLEKS                       R4 R1 K1 ["flags"]
       10 GETUPVAL                         R7 2
       11 GETUPVAL                         R8 3
       12 GETUPVAL                         R9 4
       13 GETUPVAL                         R10 5
       14 FASTCALL                         BIT32_BOR ; [+2]
       15 GETIMPORT                        R6 K4 [bit32.bor]
       17 CALL                             R6 4 1
       18 FASTCALL1                        BIT32_BNOT R6 ; [+2]
       19 GETIMPORT                        R5 K6 [bit32.bnot]
       21 CALL                             R5 1 1
       22 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
       24 GETIMPORT                        R3 K8 [bit32.band]
       26 CALL                             R3 2 1
       27 SETTABLEKS                       R3 R1 K1 ["flags"]
       29 JUMP                             ; [+20]
       30 GETTABLEKS                       R4 R1 K1 ["flags"]
       32 GETUPVAL                         R7 3
       33 GETUPVAL                         R8 5
       34 FASTCALL2                        BIT32_BOR R7 R8 ; [+3]
       36 GETIMPORT                        R6 K4 [bit32.bor]
       38 CALL                             R6 2 1
       39 FASTCALL1                        BIT32_BNOT R6 ; [+2]
       40 GETIMPORT                        R5 K6 [bit32.bnot]
       42 CALL                             R5 1 1
       43 FASTCALL2                        BIT32_BAND R4 R5 ; [+3]
       45 GETIMPORT                        R3 K8 [bit32.band]
       47 CALL                             R3 2 1
       48 SETTABLEKS                       R3 R1 K1 ["flags"]
       50 GETUPVAL                         R3 6
       51 GETTABLEKS                       R4 R0 K9 ["lanes"]
       53 MOVE                             R5 R2
       54 CALL                             R3 2 1
       55 SETTABLEKS                       R3 R0 K9 ["lanes"]
       57 RETURN                           R0 0

PROTO_11:
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
       33 GETUPVAL                         R0 8
       34 JUMPIFNOT                        R0 ; [+8]
       35 LOADNIL                          R0
       36 SETUPVAL                         R0 9
       37 LOADN                            R0 0
       38 SETUPVAL                         R0 10
       39 LOADNIL                          R0
       40 SETUPVAL                         R0 11
       41 LOADB                            R0 0
       42 SETUPVAL                         R0 12
       43 LOADB                            R0 0
       44 SETUPVAL                         R0 13
       45 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
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

PROTO_14:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+5]
        7 MOVE                             R2 R1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1
       11 RETURN                           R1 1

PROTO_15:
        0 PREPVARARGS                      1
        1 GETGLOBAL                        R1 K0 ["dispatchAction"]
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R0
        6 GETVARARGS                       R5 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_16:
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
       57 GETUPVAL                         R6 1
       58 NEWCLOSURE                       R7 P0
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R5
       61 SETTABLEKS                       R7 R5 K7 ["dispatch"]
       63 GETTABLEKS                       R8 R3 K0 ["memoizedState"]
       65 MOVE                             R9 R7
       66 RETURN                           R8 2

PROTO_17:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 GETTABLEKS                       R4 R3 K0 ["queue"]
        4 JUMPIFNOTEQKNIL                  R4 ; [+2]
        6 LOADB                            R6 0 +1
        7 LOADB                            R6 1
        8 FASTCALL2K                       ASSERT R6 K1 ; [+4]
       10 LOADK                            R7 K1 ["Should have a queue. This is likely a bug in React. Please file an issue."]
       11 GETIMPORT                        R5 K3 [assert]
       13 CALL                             R5 2 0
       14 SETTABLEKS                       R0 R4 K4 ["lastRenderedReducer"]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R6 R5 K5 ["baseQueue"]
       19 GETTABLEKS                       R7 R4 K6 ["pending"]
       21 JUMPIFEQKNIL                     R7 ; [+17]
       23 JUMPIFEQKNIL                     R6 ; [+9]
       25 GETTABLEKS                       R8 R6 K7 ["next"]
       27 GETTABLEKS                       R9 R7 K7 ["next"]
       29 SETTABLEKS                       R9 R6 K7 ["next"]
       31 SETTABLEKS                       R8 R7 K7 ["next"]
       33 MOVE                             R6 R7
       34 SETTABLEKS                       R6 R5 K5 ["baseQueue"]
       36 LOADNIL                          R8
       37 SETTABLEKS                       R8 R4 K6 ["pending"]
       39 JUMPIFEQKNIL                     R6 ; [+144]
       41 GETTABLEKS                       R8 R6 K7 ["next"]
       43 GETTABLEKS                       R9 R5 K8 ["baseState"]
       45 LOADNIL                          R10
       46 LOADNIL                          R11
       47 LOADNIL                          R12
       48 MOVE                             R13 R8
       49 GETTABLEKS                       R14 R13 K9 ["lane"]
       51 GETUPVAL                         R16 2
       52 FASTCALL2                        BIT32_BAND R16 R14 ; [+4]
       54 MOVE                             R17 R14
       55 GETIMPORT                        R15 K12 [bit32.band]
       57 CALL                             R15 2 1
       58 JUMPIFEQ                         R15 R14 ; [+42]
       60 DUPTABLE                         R15 K16 [{"lane", "action", "eagerReducer", "eagerState", "next"}]
       61 SETTABLEKS                       R14 R15 K9 ["lane"]
       63 GETTABLEKS                       R16 R13 K13 ["action"]
       65 SETTABLEKS                       R16 R15 K13 ["action"]
       67 GETTABLEKS                       R16 R13 K14 ["eagerReducer"]
       69 SETTABLEKS                       R16 R15 K14 ["eagerReducer"]
       71 GETTABLEKS                       R16 R13 K15 ["eagerState"]
       73 SETTABLEKS                       R16 R15 K15 ["eagerState"]
       75 LOADNIL                          R16
       76 SETTABLEKS                       R16 R15 K7 ["next"]
       78 JUMPIFNOTEQKNIL                  R12 ; [+5]
       80 MOVE                             R12 R15
       81 MOVE                             R11 R12
       82 MOVE                             R10 R9
       83 JUMP                             ; [+4]
       84 SETTABLEKS                       R15 R12 K7 ["next"]
       86 GETTABLEKS                       R12 R12 K7 ["next"]
       88 GETUPVAL                         R16 3
       89 GETUPVAL                         R17 4
       90 GETUPVAL                         R18 3
       91 GETTABLEKS                       R18 R18 K17 ["lanes"]
       93 MOVE                             R19 R14
       94 CALL                             R17 2 1
       95 SETTABLEKS                       R17 R16 K17 ["lanes"]
       97 GETUPVAL                         R16 5
       98 MOVE                             R17 R14
       99 CALL                             R16 1 0
      100 JUMP                             ; [+39]
      101 JUMPIFEQKNIL                     R12 ; [+24]
      103 DUPTABLE                         R15 K16 [{"lane", "action", "eagerReducer", "eagerState", "next"}]
      104 GETUPVAL                         R16 6
      105 SETTABLEKS                       R16 R15 K9 ["lane"]
      107 GETTABLEKS                       R16 R13 K13 ["action"]
      109 SETTABLEKS                       R16 R15 K13 ["action"]
      111 GETTABLEKS                       R16 R13 K14 ["eagerReducer"]
      113 SETTABLEKS                       R16 R15 K14 ["eagerReducer"]
      115 GETTABLEKS                       R16 R13 K15 ["eagerState"]
      117 SETTABLEKS                       R16 R15 K15 ["eagerState"]
      119 LOADNIL                          R16
      120 SETTABLEKS                       R16 R15 K7 ["next"]
      122 SETTABLEKS                       R15 R12 K7 ["next"]
      124 GETTABLEKS                       R12 R12 K7 ["next"]
      126 GETTABLEKS                       R15 R13 K14 ["eagerReducer"]
      128 JUMPIFNOTEQ                      R15 R0 ; [+4]
      130 GETTABLEKS                       R9 R13 K15 ["eagerState"]
      132 JUMP                             ; [+7]
      133 GETTABLEKS                       R15 R13 K13 ["action"]
      135 MOVE                             R16 R0
      136 MOVE                             R17 R9
      137 MOVE                             R18 R15
      138 CALL                             R16 2 1
      139 MOVE                             R9 R16
      140 GETTABLEKS                       R13 R13 K7 ["next"]
      142 JUMPIFEQKNIL                     R13 ; [+4]
      144 JUMPIFEQ                         R13 R8 ; [+2]
      146 JUMPBACK                         ; [-98]
      147 JUMPIFNOTEQKNIL                  R12 ; [+3]
      149 MOVE                             R10 R9
      150 JUMP                             ; [+2]
      151 SETTABLEKS                       R11 R12 K7 ["next"]
      153 MOVE                             R15 R9
      154 GETTABLEKS                       R16 R3 K18 ["memoizedState"]
      156 JUMPIFNOTEQ                      R15 R16 ; [+9]
      158 LOADB                            R14 1
      159 JUMPIFNOTEQKN                    R15 K19 [0] ; [+13]
      161 LOADB                            R14 1
      162 DIVRK                            R17 R20 K15 ["eagerState"]
      163 DIVRK                            R18 R20 K16 [{"lane", "action", "eagerReducer", "eagerState", "next"}]
      164 JUMPIFEQ                         R17 R18 ; [+8]
      166 LOADB                            R14 0
      167 JUMPIFEQ                         R15 R15 ; [+5]
      169 JUMPIFNOTEQ                      R16 R16 ; [+2]
      171 LOADB                            R14 0 +1
      172 LOADB                            R14 1
      173 JUMPIF                           R14 ; [+2]
      174 GETUPVAL                         R14 7
      175 CALL                             R14 0 0
      176 SETTABLEKS                       R9 R3 K18 ["memoizedState"]
      178 SETTABLEKS                       R10 R3 K8 ["baseState"]
      180 SETTABLEKS                       R12 R3 K5 ["baseQueue"]
      182 SETTABLEKS                       R9 R4 K21 ["lastRenderedState"]
      184 GETTABLEKS                       R8 R4 K22 ["dispatch"]
      186 GETTABLEKS                       R9 R3 K18 ["memoizedState"]
      188 MOVE                             R10 R8
      189 RETURN                           R9 2

PROTO_18:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 GETTABLEKS                       R4 R3 K0 ["queue"]
        4 JUMPIFNOTEQKNIL                  R4 ; [+2]
        6 LOADB                            R6 0 +1
        7 LOADB                            R6 1
        8 FASTCALL2K                       ASSERT R6 K1 ; [+4]
       10 LOADK                            R7 K1 ["Should have a queue. This is likely a bug in React. Please file an issue."]
       11 GETIMPORT                        R5 K3 [assert]
       13 CALL                             R5 2 0
       14 SETTABLEKS                       R0 R4 K4 ["lastRenderedReducer"]
       16 GETTABLEKS                       R5 R4 K5 ["dispatch"]
       18 GETTABLEKS                       R6 R4 K6 ["pending"]
       20 GETTABLEKS                       R7 R3 K7 ["memoizedState"]
       22 JUMPIFEQKNIL                     R6 ; [+52]
       24 LOADNIL                          R8
       25 SETTABLEKS                       R8 R4 K6 ["pending"]
       27 GETTABLEKS                       R8 R6 K8 ["next"]
       29 MOVE                             R9 R8
       30 GETTABLEKS                       R10 R9 K9 ["action"]
       32 MOVE                             R11 R0
       33 MOVE                             R12 R7
       34 MOVE                             R13 R10
       35 CALL                             R11 2 1
       36 MOVE                             R7 R11
       37 GETTABLEKS                       R9 R9 K8 ["next"]
       39 JUMPIFEQ                         R9 R8 ; [+2]
       41 JUMPBACK                         ; [-12]
       42 MOVE                             R11 R7
       43 GETTABLEKS                       R12 R3 K7 ["memoizedState"]
       45 JUMPIFNOTEQ                      R11 R12 ; [+9]
       47 LOADB                            R10 1
       48 JUMPIFNOTEQKN                    R11 K10 [0] ; [+13]
       50 LOADB                            R10 1
       51 DIVRK                            R13 R11 K11 [1]
       52 DIVRK                            R14 R11 K12 ["baseQueue"]
       53 JUMPIFEQ                         R13 R14 ; [+8]
       55 LOADB                            R10 0
       56 JUMPIFEQ                         R11 R11 ; [+5]
       58 JUMPIFNOTEQ                      R12 R12 ; [+2]
       60 LOADB                            R10 0 +1
       61 LOADB                            R10 1
       62 JUMPIF                           R10 ; [+2]
       63 GETUPVAL                         R10 1
       64 CALL                             R10 0 0
       65 SETTABLEKS                       R7 R3 K7 ["memoizedState"]
       67 GETTABLEKS                       R10 R3 K12 ["baseQueue"]
       69 JUMPIFNOTEQKNIL                  R10 ; [+3]
       71 SETTABLEKS                       R7 R3 K13 ["baseState"]
       73 SETTABLEKS                       R7 R4 K14 ["lastRenderedState"]
       75 MOVE                             R8 R7
       76 MOVE                             R9 R5
       77 RETURN                           R8 2

PROTO_19:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+3]
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R1
        4 CALL                             R3 1 0
        5 GETTABLEKS                       R3 R1 K0 ["_getVersion"]
        7 MOVE                             R4 R3
        8 GETTABLEKS                       R5 R1 K1 ["_source"]
       10 CALL                             R4 1 1
       11 LOADB                            R5 0
       12 GETUPVAL                         R6 2
       13 MOVE                             R7 R1
       14 CALL                             R6 1 1
       15 JUMPIFEQKNIL                     R6 ; [+6]
       17 JUMPIFEQ                         R6 R4 ; [+2]
       19 LOADB                            R5 0 +1
       20 LOADB                            R5 1
       21 JUMP                             ; [+11]
       22 GETUPVAL                         R7 3
       23 GETUPVAL                         R8 4
       24 GETTABLEKS                       R9 R0 K2 ["mutableReadLanes"]
       26 CALL                             R7 2 1
       27 MOVE                             R5 R7
       28 JUMPIFNOT                        R5 ; [+4]
       29 GETUPVAL                         R7 5
       30 MOVE                             R8 R1
       31 MOVE                             R9 R4
       32 CALL                             R7 2 0
       33 JUMPIFNOT                        R5 ; [+19]
       34 MOVE                             R7 R2
       35 GETTABLEKS                       R8 R1 K1 ["_source"]
       37 CALL                             R7 1 1
       38 GETUPVAL                         R8 0
       39 JUMPIFNOT                        R8 ; [+12]
       40 FASTCALL1                        TYPE R7 ; [+3]
       41 MOVE                             R9 R7
       42 GETIMPORT                        R8 K4 [type]
       44 CALL                             R8 1 1
       45 JUMPIFNOTEQKS                    R8 K5 ["function"] ; [+6]
       47 GETUPVAL                         R8 6
       48 GETTABLEKS                       R8 R8 K6 ["error"]
       50 LOADK                            R9 K7 ["Mutable source should not return a function as the snapshot value. Functions may close over mutable values and cause tearing."]
       51 CALL                             R8 1 0
       52 RETURN                           R7 1
       53 GETUPVAL                         R7 7
       54 MOVE                             R8 R1
       55 CALL                             R7 1 0
       56 GETIMPORT                        R7 K8 [error]
       58 GETUPVAL                         R8 8
       59 GETTABLEKS                       R8 R8 K9 ["new"]
       61 LOADK                            R9 K10 ["Cannot read from mutable source during the current render without tearing. This is a bug in React. Please file an issue."]
       62 CALL                             R8 1 -1
       63 CALL                             R7 -1 0
       64 RETURN                           R0 0

PROTO_20:
        0 GETGLOBAL                        R0 K0 ["readFromUnsubcribedMutableSource"]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_21:
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
       31 JUMPIF                           R1 ; [+54]
       32 GETUPVAL                         R1 1
       33 GETUPVAL                         R2 4
       34 GETTABLEKS                       R2 R2 K2 ["_source"]
       36 CALL                             R1 1 1
       37 GETUPVAL                         R2 6
       38 JUMPIFNOT                        R2 ; [+12]
       39 FASTCALL1                        TYPE R1 ; [+3]
       40 MOVE                             R3 R1
       41 GETIMPORT                        R2 K6 [type]
       43 CALL                             R2 1 1
       44 JUMPIFNOTEQKS                    R2 K7 ["function"] ; [+6]
       46 GETUPVAL                         R2 7
       47 GETTABLEKS                       R2 R2 K8 ["error"]
       49 LOADK                            R3 K9 ["Mutable source should not return a function as the snapshot value. Functions may close over mutable values and cause tearing."]
       50 CALL                             R2 1 0
       51 GETUPVAL                         R3 8
       52 JUMPIFNOTEQ                      R3 R1 ; [+9]
       54 LOADB                            R2 1
       55 JUMPIFNOTEQKN                    R3 K3 [0] ; [+13]
       57 LOADB                            R2 1
       58 DIVRK                            R4 R4 K3 [0]
       59 DIVRK                            R5 R4 K1 ["setSnapshot"]
       60 JUMPIFEQ                         R4 R5 ; [+8]
       62 LOADB                            R2 0
       63 JUMPIFEQ                         R3 R3 ; [+5]
       65 JUMPIFNOTEQ                      R1 R1 ; [+2]
       67 LOADB                            R2 0 +1
       68 LOADB                            R2 1
       69 JUMPIF                           R2 ; [+10]
       70 GETUPVAL                         R2 2
       71 MOVE                             R3 R1
       72 CALL                             R2 1 0
       73 GETUPVAL                         R2 9
       74 GETUPVAL                         R3 10
       75 CALL                             R2 1 1
       76 GETUPVAL                         R3 11
       77 GETUPVAL                         R4 12
       78 MOVE                             R5 R2
       79 CALL                             R3 2 0
       80 GETUPVAL                         R2 13
       81 GETUPVAL                         R3 12
       82 GETUPVAL                         R4 12
       83 GETTABLEKS                       R4 R4 K10 ["mutableReadLanes"]
       85 CALL                             R2 2 0
       86 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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
       13 GETUPVAL                         R2 7
       14 JUMPIFNOT                        R2 ; [+12]
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K2 [type]
       19 CALL                             R2 1 1
       20 JUMPIFEQKS                       R2 K3 ["function"] ; [+6]
       22 GETUPVAL                         R2 8
       23 GETTABLEKS                       R2 R2 K4 ["error"]
       25 LOADK                            R3 K5 ["Mutable source subscribe function must return an unsubscribe function."]
       26 CALL                             R2 1 0
       27 RETURN                           R1 1

PROTO_26:
        0 PREPVARARGS                      0
        1 GETGLOBAL                        R0 K0 ["dispatchAction"]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 GETVARARGS                       R3 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_27:
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
       18 JUMPIFNOTEQKNIL                  R7 ; [+2]
       20 LOADB                            R9 0 +1
       21 LOADB                            R9 1
       22 FASTCALL2K                       ASSERT R9 K4 ; [+4]
       24 LOADK                            R10 K4 ["dispatcher was nil, this is a bug in React"]
       25 GETIMPORT                        R8 K6 [assert]
       27 CALL                             R8 2 0
       28 GETTABLEKS                       R8 R7 K7 ["useState"]
       30 NEWCLOSURE                       R9 P0
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R2
       34 CALL                             R8 1 2
       35 MOVE                             R10 R8
       36 GETUPVAL                         R11 3
       37 GETTABLEKS                       R12 R0 K8 ["memoizedState"]
       39 GETTABLEKS                       R13 R12 K9 ["refs"]
       41 JUMPIFNOTEQKNIL                  R13 ; [+11]
       43 GETIMPORT                        R13 K11 [error]
       45 GETIMPORT                        R15 K14 [debug.traceback]
       47 CALL                             R15 0 -1
       48 FASTCALL                         TOSTRING ; [+2]
       49 GETIMPORT                        R14 K16 [tostring]
       51 CALL                             R14 -1 1
       52 CALL                             R13 1 0
       53 GETTABLEKS                       R13 R12 K9 ["refs"]
       55 GETTABLEKS                       R14 R13 K17 ["getSnapshot"]
       57 GETTABLEKS                       R15 R12 K18 ["source"]
       59 GETTABLEKS                       R16 R12 K19 ["subscribe"]
       61 GETUPVAL                         R17 4
       62 DUPTABLE                         R18 K20 [{"refs", "source", "subscribe"}]
       63 SETTABLEKS                       R13 R18 K9 ["refs"]
       65 SETTABLEKS                       R1 R18 K18 ["source"]
       67 SETTABLEKS                       R3 R18 K19 ["subscribe"]
       69 SETTABLEKS                       R18 R0 K8 ["memoizedState"]
       71 GETTABLEKS                       R18 R7 K21 ["useEffect"]
       73 NEWCLOSURE                       R19 P1
       74 CAPTURE                          VAL R13
       75 CAPTURE                          VAL R2
       76 CAPTURE                          REF R9
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R6
       80 CAPTURE                          UPVAL U5
       81 CAPTURE                          UPVAL U6
       82 CAPTURE                          REF R10
       83 CAPTURE                          UPVAL U7
       84 CAPTURE                          VAL R17
       85 CAPTURE                          UPVAL U8
       86 CAPTURE                          VAL R4
       87 CAPTURE                          UPVAL U9
       88 NEWTABLE                         R20 0 3
       90 MOVE                             R21 R2
       91 MOVE                             R22 R1
       92 MOVE                             R23 R3
       93 SETLIST                          R20 R21 3 [1]
       95 CALL                             R18 2 0
       96 GETTABLEKS                       R18 R7 K21 ["useEffect"]
       98 NEWCLOSURE                       R19 P2
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R1
      101 CAPTURE                          UPVAL U7
      102 CAPTURE                          VAL R17
      103 CAPTURE                          UPVAL U8
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R3
      106 CAPTURE                          UPVAL U5
      107 CAPTURE                          UPVAL U6
      108 NEWTABLE                         R20 0 2
      110 MOVE                             R21 R1
      111 MOVE                             R22 R3
      112 SETLIST                          R20 R21 2 [1]
      114 CALL                             R18 2 0
      115 JUMPIFNOTEQ                      R14 R2 ; [+9]
      117 LOADB                            R18 1
      118 JUMPIFNOTEQKN                    R14 K22 [0] ; [+13]
      120 LOADB                            R18 1
      121 DIVRK                            R19 R23 K14 [debug.traceback]
      122 DIVRK                            R20 R23 K2 ["_source"]
      123 JUMPIFEQ                         R19 R20 ; [+8]
      125 LOADB                            R18 0
      126 JUMPIFEQ                         R14 R14 ; [+5]
      128 JUMPIFNOTEQ                      R2 R2 ; [+2]
      130 LOADB                            R18 0 +1
      131 LOADB                            R18 1
      132 JUMPIFNOT                        R18 ; [+36]
      133 JUMPIFNOTEQ                      R15 R1 ; [+9]
      135 LOADB                            R18 1
      136 JUMPIFNOTEQKN                    R15 K22 [0] ; [+13]
      138 LOADB                            R18 1
      139 DIVRK                            R19 R23 K15 ["tostring"]
      140 DIVRK                            R20 R23 K1 ["_getVersion"]
      141 JUMPIFEQ                         R19 R20 ; [+8]
      143 LOADB                            R18 0
      144 JUMPIFEQ                         R15 R15 ; [+5]
      146 JUMPIFNOTEQ                      R1 R1 ; [+2]
      148 LOADB                            R18 0 +1
      149 LOADB                            R18 1
      150 JUMPIFNOT                        R18 ; [+18]
      151 JUMPIFNOTEQ                      R16 R3 ; [+9]
      153 LOADB                            R18 1
      154 JUMPIFNOTEQKN                    R16 K22 [0] ; [+13]
      156 LOADB                            R18 1
      157 DIVRK                            R19 R23 K16 [tostring]
      158 DIVRK                            R20 R23 K3 ["current"]
      159 JUMPIFEQ                         R19 R20 ; [+8]
      161 LOADB                            R18 0
      162 JUMPIFEQ                         R16 R16 ; [+5]
      164 JUMPIFNOTEQ                      R3 R3 ; [+2]
      166 LOADB                            R18 0 +1
      167 LOADB                            R18 1
      168 JUMPIF                           R18 ; [+37]
      169 DUPTABLE                         R18 K28 [{"pending", "dispatch", "lastRenderedReducer", "lastRenderedState"}]
      170 LOADNIL                          R19
      171 SETTABLEKS                       R19 R18 K24 ["pending"]
      173 LOADNIL                          R19
      174 SETTABLEKS                       R19 R18 K25 ["dispatch"]
      176 GETGLOBAL                        R19 K29 ["basicStateReducer"]
      178 SETTABLEKS                       R19 R18 K26 ["lastRenderedReducer"]
      180 SETTABLEKS                       R10 R18 K27 ["lastRenderedState"]
      182 GETUPVAL                         R19 4
      183 NEWCLOSURE                       R9 P3
      184 CAPTURE                          VAL R19
      185 CAPTURE                          VAL R18
      186 SETTABLEKS                       R9 R18 K25 ["dispatch"]
      188 SETTABLEKS                       R18 R11 K30 ["queue"]
      190 LOADNIL                          R20
      191 SETTABLEKS                       R20 R11 K31 ["baseQueue"]
      193 GETGLOBAL                        R20 K32 ["readFromUnsubcribedMutableSource"]
      195 MOVE                             R21 R4
      196 MOVE                             R22 R1
      197 MOVE                             R23 R2
      198 CALL                             R20 3 1
      199 MOVE                             R10 R20
      200 SETTABLEKS                       R10 R11 K33 ["baseState"]
      202 GETTABLEKS                       R20 R11 K33 ["baseState"]
      204 SETTABLEKS                       R20 R11 K8 ["memoizedState"]
      206 CLOSEUPVALS                      R9
      207 RETURN                           R10 1

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 GETGLOBAL                        R4 K0 ["useMutableSource"]
        4 MOVE                             R5 R3
        5 MOVE                             R6 R0
        6 MOVE                             R7 R1
        7 MOVE                             R8 R2
        8 CALL                             R4 4 -1
        9 RETURN                           R4 -1

PROTO_30:
        0 PREPVARARGS                      1
        1 GETGLOBAL                        R1 K0 ["dispatchAction"]
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R3 1
        5 MOVE                             R4 R0
        6 GETVARARGS                       R5 -1
        7 CALL                             R1 -1 0
        8 RETURN                           R0 0

PROTO_31:
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
       29 FASTCALL1                        TYPE R0 ; [+3]
       30 MOVE                             R3 R0
       31 GETIMPORT                        R2 K7 [type]
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
       53 LOADNIL                          R3
       54 SETTABLEKS                       R3 R2 K11 ["lastRenderedReducer"]
       56 SETTABLEKS                       R0 R2 K12 ["lastRenderedState"]
       58 GETGLOBAL                        R3 K14 ["basicStateReducer"]
       60 SETTABLEKS                       R3 R2 K11 ["lastRenderedReducer"]
       62 SETTABLEKS                       R2 R1 K3 ["queue"]
       64 GETUPVAL                         R3 1
       65 NEWCLOSURE                       R4 P0
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R2
       68 SETTABLEKS                       R4 R2 K10 ["dispatch"]
       70 GETTABLEKS                       R5 R1 K0 ["memoizedState"]
       72 MOVE                             R6 R4
       73 RETURN                           R5 2

PROTO_32:
        0 GETGLOBAL                        R1 K0 ["updateReducer"]
        2 GETGLOBAL                        R2 K1 ["basicStateReducer"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_33:
        0 GETGLOBAL                        R1 K0 ["rerenderReducer"]
        2 GETGLOBAL                        R2 K1 ["basicStateReducer"]
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_34:
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

PROTO_35:
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
       29 GETUPVAL                         R2 2
       30 MOVE                             R3 R0
       31 CALL                             R2 1 2
       32 NEWTABLE                         R4 0 2
       34 MOVE                             R5 R2
       35 MOVE                             R6 R3
       36 SETLIST                          R4 R5 2 [1]
       38 SETTABLEKS                       R4 R1 K0 ["memoizedState"]
       40 RETURN                           R2 2

PROTO_36:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R1 K0 ["memoizedState"]
        4 FASTCALL1                        TABLE_UNPACK R3 ; [+2]
        5 GETIMPORT                        R2 K2 [unpack]
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1

PROTO_37:
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
       29 GETUPVAL                         R2 2
       30 CALL                             R2 0 1
       31 SETTABLEKS                       R0 R2 K6 ["current"]
       33 SETTABLEKS                       R2 R1 K0 ["memoizedState"]
       35 RETURN                           R2 1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["memoizedState"]
        4 RETURN                           R2 1

PROTO_39:
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

PROTO_40:
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

PROTO_41:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+17]
        2 GETIMPORT                        R3 K1 [_G]
        4 GETTABLEKS                       R3 R3 K2 ["jest"]
        6 FASTCALL1                        TYPE R3 ; [+2]
        7 GETIMPORT                        R2 K4 [type]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K5 ["nil"] ; [+5]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K6 ["__TESTEZ_RUNNING_TEST__"]
       15 JUMPIFNOT                        R2 ; [+3]
       16 GETUPVAL                         R2 2
       17 GETUPVAL                         R3 3
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 0
       20 JUMPIFNOT                        R2 ; [+66]
       21 GETUPVAL                         R2 4
       22 JUMPIFNOT                        R2 ; [+64]
       23 GETUPVAL                         R3 5
       24 GETUPVAL                         R4 6
       25 GETUPVAL                         R5 7
       26 FASTCALL                         BIT32_BOR ; [+2]
       27 GETIMPORT                        R2 K9 [bit32.bor]
       29 CALL                             R2 3 1
       30 GETUPVAL                         R3 8
       31 DUPTABLE                         R5 K15 [{"memoizedState", "baseState", "baseQueue", "queue", "next"}]
       32 LOADNIL                          R6
       33 SETTABLEKS                       R6 R5 K10 ["memoizedState"]
       35 LOADNIL                          R6
       36 SETTABLEKS                       R6 R5 K11 ["baseState"]
       38 LOADNIL                          R6
       39 SETTABLEKS                       R6 R5 K12 ["baseQueue"]
       41 LOADNIL                          R6
       42 SETTABLEKS                       R6 R5 K13 ["queue"]
       44 LOADNIL                          R6
       45 SETTABLEKS                       R6 R5 K14 ["next"]
       47 GETUPVAL                         R6 9
       48 JUMPIFNOTEQKNIL                  R6 ; [+6]
       50 GETUPVAL                         R6 3
       51 SETTABLEKS                       R5 R6 K10 ["memoizedState"]
       53 SETUPVAL                         R5 9
       54 JUMP                             ; [+4]
       55 GETUPVAL                         R6 9
       56 SETTABLEKS                       R5 R6 K14 ["next"]
       58 SETUPVAL                         R5 9
       59 GETUPVAL                         R4 9
       60 GETUPVAL                         R5 3
       61 GETUPVAL                         R7 3
       62 GETTABLEKS                       R7 R7 K16 ["flags"]
       64 FASTCALL2                        BIT32_BOR R7 R2 ; [+4]
       66 MOVE                             R8 R2
       67 GETIMPORT                        R6 K9 [bit32.bor]
       69 CALL                             R6 2 1
       70 SETTABLEKS                       R6 R5 K16 ["flags"]
       72 GETUPVAL                         R5 10
       73 GETUPVAL                         R7 11
       74 FASTCALL2                        BIT32_BOR R7 R3 ; [+4]
       76 MOVE                             R8 R3
       77 GETIMPORT                        R6 K9 [bit32.bor]
       79 CALL                             R6 2 1
       80 MOVE                             R7 R0
       81 LOADNIL                          R8
       82 MOVE                             R9 R1
       83 CALL                             R5 4 1
       84 SETTABLEKS                       R5 R4 K10 ["memoizedState"]
       86 RETURN                           R0 0
       87 GETUPVAL                         R3 6
       88 GETUPVAL                         R4 7
       89 FASTCALL2                        BIT32_BOR R3 R4 ; [+3]
       91 GETIMPORT                        R2 K9 [bit32.bor]
       93 CALL                             R2 2 1
       94 GETUPVAL                         R3 8
       95 DUPTABLE                         R5 K15 [{"memoizedState", "baseState", "baseQueue", "queue", "next"}]
       96 LOADNIL                          R6
       97 SETTABLEKS                       R6 R5 K10 ["memoizedState"]
       99 LOADNIL                          R6
      100 SETTABLEKS                       R6 R5 K11 ["baseState"]
      102 LOADNIL                          R6
      103 SETTABLEKS                       R6 R5 K12 ["baseQueue"]
      105 LOADNIL                          R6
      106 SETTABLEKS                       R6 R5 K13 ["queue"]
      108 LOADNIL                          R6
      109 SETTABLEKS                       R6 R5 K14 ["next"]
      111 GETUPVAL                         R6 9
      112 JUMPIFNOTEQKNIL                  R6 ; [+6]
      114 GETUPVAL                         R6 3
      115 SETTABLEKS                       R5 R6 K10 ["memoizedState"]
      117 SETUPVAL                         R5 9
      118 JUMP                             ; [+4]
      119 GETUPVAL                         R6 9
      120 SETTABLEKS                       R5 R6 K14 ["next"]
      122 SETUPVAL                         R5 9
      123 GETUPVAL                         R4 9
      124 GETUPVAL                         R5 3
      125 GETUPVAL                         R7 3
      126 GETTABLEKS                       R7 R7 K16 ["flags"]
      128 FASTCALL2                        BIT32_BOR R7 R2 ; [+4]
      130 MOVE                             R8 R2
      131 GETIMPORT                        R6 K9 [bit32.bor]
      133 CALL                             R6 2 1
      134 SETTABLEKS                       R6 R5 K16 ["flags"]
      136 GETUPVAL                         R5 10
      137 GETUPVAL                         R7 11
      138 FASTCALL2                        BIT32_BOR R7 R3 ; [+4]
      140 MOVE                             R8 R3
      141 GETIMPORT                        R6 K9 [bit32.bor]
      143 CALL                             R6 2 1
      144 MOVE                             R7 R0
      145 LOADNIL                          R8
      146 MOVE                             R9 R1
      147 CALL                             R5 4 1
      148 SETTABLEKS                       R5 R4 K10 ["memoizedState"]
      150 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+17]
        2 GETIMPORT                        R3 K1 [_G]
        4 GETTABLEKS                       R3 R3 K2 ["jest"]
        6 FASTCALL1                        TYPE R3 ; [+2]
        7 GETIMPORT                        R2 K4 [type]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K5 ["nil"] ; [+5]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K6 ["__TESTEZ_RUNNING_TEST__"]
       15 JUMPIFNOT                        R2 ; [+3]
       16 GETUPVAL                         R2 2
       17 GETUPVAL                         R3 3
       18 CALL                             R2 1 0
       19 GETGLOBAL                        R2 K7 ["updateEffectImpl"]
       21 GETUPVAL                         R3 4
       22 GETUPVAL                         R4 5
       23 MOVE                             R5 R0
       24 MOVE                             R6 R1
       25 CALL                             R2 4 0
       26 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+66]
        2 GETUPVAL                         R2 1
        3 JUMPIFNOT                        R2 ; [+64]
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 FASTCALL2                        BIT32_BOR R3 R4 ; [+3]
        8 GETIMPORT                        R2 K2 [bit32.bor]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 4
       12 DUPTABLE                         R5 K8 [{"memoizedState", "baseState", "baseQueue", "queue", "next"}]
       13 LOADNIL                          R6
       14 SETTABLEKS                       R6 R5 K3 ["memoizedState"]
       16 LOADNIL                          R6
       17 SETTABLEKS                       R6 R5 K4 ["baseState"]
       19 LOADNIL                          R6
       20 SETTABLEKS                       R6 R5 K5 ["baseQueue"]
       22 LOADNIL                          R6
       23 SETTABLEKS                       R6 R5 K6 ["queue"]
       25 LOADNIL                          R6
       26 SETTABLEKS                       R6 R5 K7 ["next"]
       28 GETUPVAL                         R6 5
       29 JUMPIFNOTEQKNIL                  R6 ; [+6]
       31 GETUPVAL                         R6 6
       32 SETTABLEKS                       R5 R6 K3 ["memoizedState"]
       34 SETUPVAL                         R5 5
       35 JUMP                             ; [+4]
       36 GETUPVAL                         R6 5
       37 SETTABLEKS                       R5 R6 K7 ["next"]
       39 SETUPVAL                         R5 5
       40 GETUPVAL                         R4 5
       41 GETUPVAL                         R5 6
       42 GETUPVAL                         R7 6
       43 GETTABLEKS                       R7 R7 K9 ["flags"]
       45 FASTCALL2                        BIT32_BOR R7 R2 ; [+4]
       47 MOVE                             R8 R2
       48 GETIMPORT                        R6 K2 [bit32.bor]
       50 CALL                             R6 2 1
       51 SETTABLEKS                       R6 R5 K9 ["flags"]
       53 GETUPVAL                         R5 7
       54 GETUPVAL                         R7 8
       55 FASTCALL2                        BIT32_BOR R7 R3 ; [+4]
       57 MOVE                             R8 R3
       58 GETIMPORT                        R6 K2 [bit32.bor]
       60 CALL                             R6 2 1
       61 MOVE                             R7 R0
       62 LOADNIL                          R8
       63 MOVE                             R9 R1
       64 CALL                             R5 4 1
       65 SETTABLEKS                       R5 R4 K3 ["memoizedState"]
       67 RETURN                           R0 0
       68 GETUPVAL                         R2 3
       69 GETUPVAL                         R3 4
       70 DUPTABLE                         R5 K8 [{"memoizedState", "baseState", "baseQueue", "queue", "next"}]
       71 LOADNIL                          R6
       72 SETTABLEKS                       R6 R5 K3 ["memoizedState"]
       74 LOADNIL                          R6
       75 SETTABLEKS                       R6 R5 K4 ["baseState"]
       77 LOADNIL                          R6
       78 SETTABLEKS                       R6 R5 K5 ["baseQueue"]
       80 LOADNIL                          R6
       81 SETTABLEKS                       R6 R5 K6 ["queue"]
       83 LOADNIL                          R6
       84 SETTABLEKS                       R6 R5 K7 ["next"]
       86 GETUPVAL                         R6 5
       87 JUMPIFNOTEQKNIL                  R6 ; [+6]
       89 GETUPVAL                         R6 6
       90 SETTABLEKS                       R5 R6 K3 ["memoizedState"]
       92 SETUPVAL                         R5 5
       93 JUMP                             ; [+4]
       94 GETUPVAL                         R6 5
       95 SETTABLEKS                       R5 R6 K7 ["next"]
       97 SETUPVAL                         R5 5
       98 GETUPVAL                         R4 5
       99 GETUPVAL                         R5 6
      100 GETUPVAL                         R7 6
      101 GETTABLEKS                       R7 R7 K9 ["flags"]
      103 FASTCALL2                        BIT32_BOR R7 R2 ; [+4]
      105 MOVE                             R8 R2
      106 GETIMPORT                        R6 K2 [bit32.bor]
      108 CALL                             R6 2 1
      109 SETTABLEKS                       R6 R5 K9 ["flags"]
      111 GETUPVAL                         R5 7
      112 GETUPVAL                         R7 8
      113 FASTCALL2                        BIT32_BOR R7 R3 ; [+4]
      115 MOVE                             R8 R3
      116 GETIMPORT                        R6 K2 [bit32.bor]
      118 CALL                             R6 2 1
      119 MOVE                             R7 R0
      120 LOADNIL                          R8
      121 MOVE                             R9 R1
      122 CALL                             R5 4 1
      123 SETTABLEKS                       R5 R4 K3 ["memoizedState"]
      125 RETURN                           R0 0

PROTO_44:
        0 GETGLOBAL                        R2 K0 ["updateEffectImpl"]
        2 GETUPVAL                         R3 0
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 CALL                             R2 4 0
        7 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_47:
        0 JUMPIFEQKNIL                     R1 ; [+16]
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R3 R1
        4 GETIMPORT                        R2 K1 [type]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+9]
        9 MOVE                             R2 R0
       10 CALL                             R2 0 1
       11 MOVE                             R3 R1
       12 MOVE                             R4 R2
       13 CALL                             R3 1 0
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          VAL R1
       16 RETURN                           R3 1
       17 JUMPIFEQKNIL                     R1 ; [+48]
       19 GETUPVAL                         R2 0
       20 JUMPIFNOT                        R2 ; [+38]
       21 LOADB                            R2 0
       22 FASTCALL1                        GETMETATABLE R1 ; [+3]
       23 MOVE                             R4 R1
       24 GETIMPORT                        R3 K4 [getmetatable]
       26 CALL                             R3 1 1
       27 JUMPIFEQKNIL                     R3 ; [+11]
       29 GETUPVAL                         R4 1
       30 GETTABLEKS                       R4 R4 K5 ["keys"]
       32 MOVE                             R5 R1
       33 CALL                             R4 1 1
       34 LENGTH                           R3 R4
       35 JUMPIFEQKN                       R3 K6 [0] ; [+2]
       37 LOADB                            R2 0 +1
       38 LOADB                            R2 1
       39 JUMPIF                           R2 ; [+19]
       40 GETUPVAL                         R3 2
       41 GETTABLEKS                       R3 R3 K7 ["error"]
       43 LOADK                            R4 K8 ["Expected useImperativeHandle() first argument to either be a ref callback or React.createRef() object. Instead received: %s."]
       44 LOADK                            R6 K9 ["an object with keys {"]
       45 GETUPVAL                         R9 3
       46 GETTABLEKS                       R9 R9 K10 ["join"]
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R10 R10 K5 ["keys"]
       51 MOVE                             R11 R1
       52 CALL                             R10 1 1
       53 LOADK                            R11 K11 [", "]
       54 CALL                             R9 2 1
       55 MOVE                             R7 R9
       56 LOADK                            R8 K12 ["}"]
       57 CONCAT                           R5 R6 R8
       58 CALL                             R3 2 0
       59 MOVE                             R2 R0
       60 CALL                             R2 0 1
       61 SETTABLEKS                       R2 R1 K13 ["current"]
       63 NEWCLOSURE                       R3 P1
       64 CAPTURE                          VAL R1
       65 RETURN                           R3 1
       66 LOADNIL                          R2
       67 RETURN                           R2 1

PROTO_48:
        0 GETGLOBAL                        R0 K0 ["imperativeHandleEffect"]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_49:
        0 GETGLOBAL                        R0 K0 ["imperativeHandleEffect"]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_50:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+21]
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R3 K1 [type]
        6 CALL                             R3 1 1
        7 JUMPIFEQKS                       R3 K2 ["function"] ; [+15]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["error"]
       12 LOADK                            R4 K4 ["Expected useImperativeHandle() second argument to be a function that creates a handle. Instead received: %s."]
       13 JUMPIFEQKNIL                     R1 ; [+7]
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R6 R1
       17 GETIMPORT                        R5 K1 [type]
       19 CALL                             R5 1 1
       20 JUMP                             ; [+1]
       21 LOADK                            R5 K5 ["nil"]
       22 CALL                             R3 2 0
       23 JUMPIFEQKNIL                     R2 ; [+12]
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R3 R3 K6 ["concat"]
       28 MOVE                             R4 R2
       29 NEWTABLE                         R5 0 1
       31 MOVE                             R6 R0
       32 SETLIST                          R5 R6 1 [1]
       34 CALL                             R3 2 1
       35 JUMP                             ; [+1]
       36 LOADNIL                          R3
       37 GETUPVAL                         R4 0
       38 JUMPIFNOT                        R4 ; [+17]
       39 GETUPVAL                         R4 3
       40 JUMPIFNOT                        R4 ; [+15]
       41 GETUPVAL                         R4 4
       42 GETUPVAL                         R6 5
       43 GETUPVAL                         R7 6
       44 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       46 GETIMPORT                        R5 K9 [bit32.bor]
       48 CALL                             R5 2 1
       49 GETUPVAL                         R6 7
       50 NEWCLOSURE                       R7 P0
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R0
       53 MOVE                             R8 R3
       54 CALL                             R4 4 -1
       55 RETURN                           R4 -1
       56 GETUPVAL                         R4 4
       57 GETUPVAL                         R5 6
       58 GETUPVAL                         R6 7
       59 NEWCLOSURE                       R7 P1
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R0
       62 MOVE                             R8 R3
       63 CALL                             R4 4 -1
       64 RETURN                           R4 -1

PROTO_51:
        0 GETGLOBAL                        R0 K0 ["imperativeHandleEffect"]
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_52:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+21]
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R3 K1 [type]
        6 CALL                             R3 1 1
        7 JUMPIFEQKS                       R3 K2 ["function"] ; [+15]
        9 LOADK                            R3 K3 ["nil"]
       10 JUMPIFNOT                        R1 ; [+6]
       11 FASTCALL1                        TYPE R1 ; [+3]
       12 MOVE                             R5 R1
       13 GETIMPORT                        R4 K1 [type]
       15 CALL                             R4 1 1
       16 MOVE                             R3 R4
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K4 ["error"]
       20 LOADK                            R5 K5 ["Expected useImperativeHandle() second argument to be a function that creates a handle. Instead received: %s."]
       21 MOVE                             R6 R3
       22 CALL                             R4 2 0
       23 LOADNIL                          R3
       24 JUMPIFEQKNIL                     R2 ; [+13]
       26 GETIMPORT                        R4 K8 [table.clone]
       28 MOVE                             R5 R2
       29 CALL                             R4 1 1
       30 MOVE                             R3 R4
       31 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
       33 MOVE                             R5 R3
       34 MOVE                             R6 R0
       35 GETIMPORT                        R4 K10 [table.insert]
       37 CALL                             R4 2 0
       38 GETGLOBAL                        R4 K11 ["updateEffectImpl"]
       40 GETUPVAL                         R5 2
       41 GETUPVAL                         R6 3
       42 NEWCLOSURE                       R7 P0
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R0
       45 MOVE                             R8 R3
       46 CALL                             R4 4 -1
       47 RETURN                           R4 -1

PROTO_53:
        0 RETURN                           R0 0

PROTO_54:
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

PROTO_55:
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

PROTO_56:
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
       29 NEWTABLE                         R3 0 1
       31 MOVE                             R4 R0
       32 CALL                             R4 0 -1
       33 SETLIST                          R3 R4 -1 [1]
       35 NEWTABLE                         R4 0 2
       37 MOVE                             R5 R3
       38 MOVE                             R6 R1
       39 SETLIST                          R4 R5 2 [1]
       41 SETTABLEKS                       R4 R2 K0 ["memoizedState"]
       43 FASTCALL1                        TABLE_UNPACK R3 ; [+3]
       44 MOVE                             R5 R3
       45 GETIMPORT                        R4 K7 [unpack]
       47 CALL                             R4 1 -1
       48 RETURN                           R4 -1

PROTO_57:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R3 R2 K0 ["memoizedState"]
        4 JUMPIFEQKNIL                     R3 ; [+15]
        6 JUMPIFEQKNIL                     R1 ; [+13]
        8 GETTABLEN                        R4 R3 2
        9 GETUPVAL                         R5 1
       10 MOVE                             R6 R1
       11 MOVE                             R7 R4
       12 CALL                             R5 2 1
       13 JUMPIFNOT                        R5 ; [+6]
       14 GETTABLEN                        R6 R3 1
       15 FASTCALL1                        TABLE_UNPACK R6 ; [+2]
       16 GETIMPORT                        R5 K2 [unpack]
       18 CALL                             R5 1 -1
       19 RETURN                           R5 -1
       20 NEWTABLE                         R4 0 1
       22 MOVE                             R5 R0
       23 CALL                             R5 0 -1
       24 SETLIST                          R4 R5 -1 [1]
       26 NEWTABLE                         R5 0 2
       28 MOVE                             R6 R4
       29 MOVE                             R7 R1
       30 SETLIST                          R5 R6 2 [1]
       32 SETTABLEKS                       R5 R2 K0 ["memoizedState"]
       34 FASTCALL1                        TABLE_UNPACK R4 ; [+3]
       35 MOVE                             R6 R4
       36 GETIMPORT                        R5 K2 [unpack]
       38 CALL                             R5 1 -1
       39 RETURN                           R5 -1

PROTO_58:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 LOADB                            R0 0
        3 RETURN                           R0 1
        4 LOADNIL                          R0
        5 RETURN                           R0 1

PROTO_59:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["warn"]
        6 LOADK                            R2 K1 ["!!! unimplemented: warnOnOpaqueIdentifierAccessInDEV"]
        7 CALL                             R1 1 0
        8 JUMP                             ; [+1]
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R1 3
       11 CALL                             R1 0 1
       12 JUMPIFNOT                        R1 ; [+18]
       13 GETIMPORT                        R1 K3 [print]
       15 LOADK                            R2 K4 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
       16 CALL                             R1 1 0
       17 GETIMPORT                        R1 K3 [print]
       19 LOADK                            R2 K4 ["!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"]
       20 CALL                             R1 1 0
       21 GETIMPORT                        R1 K3 [print]
       23 LOADK                            R2 K5 ["UNIMPLEMENTED ERROR: ReactFiberHooks: getIsHydrating() true"]
       24 CALL                             R1 1 0
       25 GETIMPORT                        R1 K7 [error]
       27 LOADK                            R2 K8 ["FIXME (roblox): ReactFiberHooks: getIsHydrating() true is unimplemented"]
       28 CALL                             R1 1 0
       29 LOADNIL                          R1
       30 RETURN                           R1 1
       31 MOVE                             R1 R0
       32 CALL                             R1 0 1
       33 GETGLOBAL                        R2 K9 ["mountState"]
       35 MOVE                             R3 R1
       36 CALL                             R2 1 0
       37 RETURN                           R1 1

PROTO_60:
        0 GETGLOBAL                        R0 K0 ["updateState"]
        2 LOADNIL                          R1
        3 CALL                             R0 1 2
        4 RETURN                           R0 1

PROTO_61:
        0 GETGLOBAL                        R0 K0 ["rerenderState"]
        2 LOADNIL                          R1
        3 CALL                             R0 1 2
        4 RETURN                           R0 1

PROTO_62:
        0 PREPVARARGS                      3
        1 GETUPVAL                         R3 0
        2 JUMPIFNOT                        R3 ; [+28]
        3 LOADK                            R4 K0 ["#"]
        4 FASTCALL1                        SELECT_VARARG R4 ; [+3]
        5 GETIMPORT                        R3 K2 [select]
        7 GETVARARGS                       R5 -1
        8 CALL                             R3 -1 1
        9 LOADNIL                          R4
       10 JUMPIFNOTEQKN                    R3 K3 [1] ; [+8]
       12 LOADN                            R6 1
       13 FASTCALL1                        SELECT_VARARG R6 ; [+3]
       14 GETIMPORT                        R5 K2 [select]
       16 GETVARARGS                       R7 -1
       17 CALL                             R5 -1 1
       18 MOVE                             R4 R5
       19 FASTCALL1                        TYPE R4 ; [+3]
       20 MOVE                             R6 R4
       21 GETIMPORT                        R5 K5 [type]
       23 CALL                             R5 1 1
       24 JUMPIFNOTEQKS                    R5 K6 ["function"] ; [+6]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K7 ["error"]
       29 LOADK                            R6 K8 ["State updates from the useState() and useReducer() Hooks don't support the second callback argument. To execute a side effect after rendering, declare it in the component body with useEffect()."]
       30 CALL                             R5 1 0
       31 GETUPVAL                         R3 2
       32 CALL                             R3 0 1
       33 GETUPVAL                         R4 3
       34 MOVE                             R5 R0
       35 CALL                             R4 1 1
       36 DUPTABLE                         R5 K14 [{"lane", "action", "eagerReducer", "eagerState", "next"}]
       37 SETTABLEKS                       R4 R5 K9 ["lane"]
       39 SETTABLEKS                       R2 R5 K10 ["action"]
       41 LOADNIL                          R6
       42 SETTABLEKS                       R6 R5 K11 ["eagerReducer"]
       44 LOADNIL                          R6
       45 SETTABLEKS                       R6 R5 K12 ["eagerState"]
       47 LOADNIL                          R6
       48 SETTABLEKS                       R6 R5 K13 ["next"]
       50 GETTABLEKS                       R6 R1 K15 ["pending"]
       52 JUMPIFNOTEQKNIL                  R6 ; [+4]
       54 SETTABLEKS                       R5 R5 K13 ["next"]
       56 JUMP                             ; [+6]
       57 GETTABLEKS                       R7 R6 K13 ["next"]
       59 SETTABLEKS                       R7 R5 K13 ["next"]
       61 SETTABLEKS                       R5 R6 K13 ["next"]
       63 SETTABLEKS                       R5 R1 K15 ["pending"]
       65 GETTABLEKS                       R7 R0 K16 ["alternate"]
       67 GETUPVAL                         R8 4
       68 JUMPIFEQ                         R0 R8 ; [+6]
       70 JUMPIFEQKNIL                     R7 ; [+9]
       72 GETUPVAL                         R8 4
       73 JUMPIFNOTEQ                      R7 R8 ; [+6]
       75 LOADB                            R8 1
       76 SETUPVAL                         R8 5
       77 LOADB                            R8 1
       78 SETUPVAL                         R8 6
       79 JUMP                             ; [+105]
       80 GETTABLEKS                       R8 R0 K17 ["lanes"]
       82 GETUPVAL                         R9 7
       83 JUMPIFNOTEQ                      R8 R9 ; [+74]
       85 JUMPIFEQKNIL                     R7 ; [+6]
       87 GETTABLEKS                       R8 R7 K17 ["lanes"]
       89 GETUPVAL                         R9 7
       90 JUMPIFNOTEQ                      R8 R9 ; [+67]
       92 GETTABLEKS                       R8 R1 K18 ["lastRenderedReducer"]
       94 JUMPIFEQKNIL                     R8 ; [+63]
       96 LOADNIL                          R9
       97 GETUPVAL                         R10 0
       98 JUMPIFNOT                        R10 ; [+7]
       99 GETUPVAL                         R10 8
      100 GETTABLEKS                       R9 R10 K19 ["current"]
      102 GETUPVAL                         R10 8
      103 GETUPVAL                         R11 9
      104 SETTABLEKS                       R11 R10 K19 ["current"]
      106 GETTABLEKS                       R10 R1 K20 ["lastRenderedState"]
      108 GETIMPORT                        R11 K22 [pcall]
      110 MOVE                             R12 R8
      111 MOVE                             R13 R10
      112 MOVE                             R14 R2
      113 CALL                             R11 3 2
      114 JUMPIFNOT                        R11 ; [+4]
      115 SETTABLEKS                       R8 R5 K11 ["eagerReducer"]
      117 SETTABLEKS                       R12 R5 K12 ["eagerState"]
      119 GETUPVAL                         R13 0
      120 JUMPIFNOT                        R13 ; [+3]
      121 GETUPVAL                         R13 8
      122 SETTABLEKS                       R9 R13 K19 ["current"]
      124 JUMPIFNOTEQ                      R12 R10 ; [+9]
      126 LOADB                            R13 1
      127 JUMPIFNOTEQKN                    R12 K23 [0] ; [+13]
      129 LOADB                            R13 1
      130 DIVRK                            R14 R3 K12 ["eagerState"]
      131 DIVRK                            R15 R3 K10 ["action"]
      132 JUMPIFEQ                         R14 R15 ; [+8]
      134 LOADB                            R13 0
      135 JUMPIFEQ                         R12 R12 ; [+5]
      137 JUMPIFNOTEQ                      R10 R10 ; [+2]
      139 LOADB                            R13 0 +1
      140 LOADB                            R13 1
      141 JUMPIFNOT                        R13 ; [+15]
      142 GETUPVAL                         R13 10
      143 JUMPIFNOT                        R13 ; [+12]
      144 JUMPIFNOTEQKNIL                  R6 ; [+5]
      146 LOADNIL                          R13
      147 SETTABLEKS                       R13 R1 K15 ["pending"]
      149 RETURN                           R0 0
      150 GETTABLEKS                       R13 R5 K13 ["next"]
      152 SETTABLEKS                       R13 R6 K13 ["next"]
      154 SETTABLEKS                       R6 R1 K15 ["pending"]
      156 RETURN                           R0 0
      157 JUMPIF                           R11 ; [0]
      158 GETUPVAL                         R8 0
      159 JUMPIFNOT                        R8 ; [+20]
      160 GETIMPORT                        R9 K25 [_G]
      162 GETTABLEKS                       R9 R9 K26 ["jest"]
      164 FASTCALL1                        TYPE R9 ; [+2]
      165 GETIMPORT                        R8 K5 [type]
      167 CALL                             R8 1 1
      168 JUMPIFNOTEQKS                    R8 K27 ["nil"] ; [+5]
      170 GETUPVAL                         R8 11
      171 GETTABLEKS                       R8 R8 K28 ["__TESTEZ_RUNNING_TEST__"]
      173 JUMPIFNOT                        R8 ; [+6]
      174 GETUPVAL                         R8 12
      175 MOVE                             R9 R0
      176 CALL                             R8 1 0
      177 GETUPVAL                         R8 13
      178 MOVE                             R9 R0
      179 CALL                             R8 1 0
      180 GETUPVAL                         R8 14
      181 MOVE                             R9 R0
      182 MOVE                             R10 R4
      183 MOVE                             R11 R3
      184 CALL                             R8 3 0
      185 GETUPVAL                         R8 0
      186 JUMPIFNOT                        R8 ; [+22]
      187 GETUPVAL                         R8 15
      188 JUMPIFNOT                        R8 ; [+20]
      189 GETTABLEKS                       R9 R0 K29 ["mode"]
      191 GETUPVAL                         R10 16
      192 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
      194 GETIMPORT                        R8 K32 [bit32.band]
      196 CALL                             R8 2 1
      197 JUMPIFEQKN                       R8 K23 [0] ; [+11]
      199 GETUPVAL                         R9 17
      200 GETTABLEKS                       R10 R0 K4 ["type"]
      202 CALL                             R9 1 1
      203 ORK                              R8 R9 K33 ["Unknown"]
      204 GETUPVAL                         R9 18
      205 MOVE                             R10 R8
      206 MOVE                             R11 R4
      207 MOVE                             R12 R2
      208 CALL                             R9 3 0
      209 GETUPVAL                         R8 19
      210 JUMPIFNOT                        R8 ; [+4]
      211 GETUPVAL                         R8 20
      212 MOVE                             R9 R0
      213 MOVE                             R10 R4
      214 CALL                             R8 2 0
      215 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["error"]
        3 LOADK                            R1 K1 ["Context can only be read while React is rendering. In classes, you can read it in the render method or getDerivedStateFromProps. In function components, you can read it directly in the function body, but not inside Hooks like useReducer() or useMemo()."]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["error"]
        3 LOADK                            R1 K1 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_66:
        0 LOADK                            R2 K0 ["useCallback"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 JUMPIFNOT                        R2 ; [+18]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 2
        6 JUMPIFNOTEQKNIL                  R3 ; [+8]
        8 NEWTABLE                         R3 0 1
       10 MOVE                             R4 R2
       11 SETLIST                          R3 R4 1 [1]
       13 SETUPVAL                         R3 2
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R4 2
       16 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       18 MOVE                             R5 R2
       19 GETIMPORT                        R3 K3 [table.insert]
       21 CALL                             R3 2 0
       22 GETUPVAL                         R2 1
       23 JUMPIFNOT                        R2 ; [+39]
       24 JUMPIFEQKNIL                     R1 ; [+38]
       26 FASTCALL1                        TYPE R1 ; [+3]
       27 MOVE                             R4 R1
       28 GETIMPORT                        R3 K5 [type]
       30 CALL                             R3 1 1
       31 JUMPIFEQKS                       R3 K1 ["table"] ; [+3]
       33 LOADB                            R2 0
       34 JUMP                             ; [+16]
       35 MOVE                             R3 R1
       36 LOADNIL                          R4
       37 LOADNIL                          R5
       38 FORGPREP                         R3
       39 FASTCALL1                        TYPE R6 ; [+3]
       40 MOVE                             R9 R6
       41 GETIMPORT                        R8 K5 [type]
       43 CALL                             R8 1 1
       44 JUMPIFEQKS                       R8 K6 ["number"] ; [+3]
       46 LOADB                            R2 0
       47 JUMP                             ; [+3]
       48 FORGLOOP                         R3 2 ; [-10]
       50 LOADB                            R2 1
       51 JUMPIF                           R2 ; [+11]
       52 GETUPVAL                         R2 3
       53 GETTABLEKS                       R2 R2 K7 ["error"]
       55 LOADK                            R3 K8 ["%s received a final argument that is not an array (instead, received `%s`). When specified, the final argument must be an array."]
       56 GETUPVAL                         R4 0
       57 FASTCALL1                        TYPE R1 ; [+3]
       58 MOVE                             R6 R1
       59 GETIMPORT                        R5 K5 [type]
       61 CALL                             R5 1 1
       62 CALL                             R2 3 0
       63 GETGLOBAL                        R2 K9 ["mountCallback"]
       65 MOVE                             R3 R0
       66 MOVE                             R4 R1
       67 CALL                             R2 2 -1
       68 RETURN                           R2 -1

PROTO_67:
        0 LOADK                            R2 K0 ["useContext"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 JUMPIFNOT                        R2 ; [+18]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 2
        6 JUMPIFNOTEQKNIL                  R3 ; [+8]
        8 NEWTABLE                         R3 0 1
       10 MOVE                             R4 R2
       11 SETLIST                          R3 R4 1 [1]
       13 SETUPVAL                         R3 2
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R4 2
       16 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       18 MOVE                             R5 R2
       19 GETIMPORT                        R3 K3 [table.insert]
       21 CALL                             R3 2 0
       22 GETUPVAL                         R2 3
       23 MOVE                             R3 R0
       24 MOVE                             R4 R1
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_68:
        0 LOADK                            R2 K0 ["useEffect"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 JUMPIFNOT                        R2 ; [+18]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 2
        6 JUMPIFNOTEQKNIL                  R3 ; [+8]
        8 NEWTABLE                         R3 0 1
       10 MOVE                             R4 R2
       11 SETLIST                          R3 R4 1 [1]
       13 SETUPVAL                         R3 2
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R4 2
       16 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       18 MOVE                             R5 R2
       19 GETIMPORT                        R3 K3 [table.insert]
       21 CALL                             R3 2 0
       22 GETUPVAL                         R2 1
       23 JUMPIFNOT                        R2 ; [+39]
       24 JUMPIFEQKNIL                     R1 ; [+38]
       26 FASTCALL1                        TYPE R1 ; [+3]
       27 MOVE                             R4 R1
       28 GETIMPORT                        R3 K5 [type]
       30 CALL                             R3 1 1
       31 JUMPIFEQKS                       R3 K1 ["table"] ; [+3]
       33 LOADB                            R2 0
       34 JUMP                             ; [+16]
       35 MOVE                             R3 R1
       36 LOADNIL                          R4
       37 LOADNIL                          R5
       38 FORGPREP                         R3
       39 FASTCALL1                        TYPE R6 ; [+3]
       40 MOVE                             R9 R6
       41 GETIMPORT                        R8 K5 [type]
       43 CALL                             R8 1 1
       44 JUMPIFEQKS                       R8 K6 ["number"] ; [+3]
       46 LOADB                            R2 0
       47 JUMP                             ; [+3]
       48 FORGLOOP                         R3 2 ; [-10]
       50 LOADB                            R2 1
       51 JUMPIF                           R2 ; [+11]
       52 GETUPVAL                         R2 3
       53 GETTABLEKS                       R2 R2 K7 ["error"]
       55 LOADK                            R3 K8 ["%s received a final argument that is not an array (instead, received `%s`). When specified, the final argument must be an array."]
       56 GETUPVAL                         R4 0
       57 FASTCALL1                        TYPE R1 ; [+3]
       58 MOVE                             R6 R1
       59 GETIMPORT                        R5 K5 [type]
       61 CALL                             R5 1 1
       62 CALL                             R2 3 0
       63 GETUPVAL                         R2 4
       64 MOVE                             R3 R0
       65 MOVE                             R4 R1
       66 CALL                             R2 2 -1
       67 RETURN                           R2 -1

PROTO_69:
        0 LOADK                            R3 K0 ["useImperativeHandle"]
        1 SETUPVAL                         R3 0
        2 GETUPVAL                         R3 1
        3 JUMPIFNOT                        R3 ; [+18]
        4 GETUPVAL                         R3 0
        5 GETUPVAL                         R4 2
        6 JUMPIFNOTEQKNIL                  R4 ; [+8]
        8 NEWTABLE                         R4 0 1
       10 MOVE                             R5 R3
       11 SETLIST                          R4 R5 1 [1]
       13 SETUPVAL                         R4 2
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R5 2
       16 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       18 MOVE                             R6 R3
       19 GETIMPORT                        R4 K3 [table.insert]
       21 CALL                             R4 2 0
       22 GETUPVAL                         R3 1
       23 JUMPIFNOT                        R3 ; [+39]
       24 JUMPIFEQKNIL                     R2 ; [+38]
       26 FASTCALL1                        TYPE R2 ; [+3]
       27 MOVE                             R5 R2
       28 GETIMPORT                        R4 K5 [type]
       30 CALL                             R4 1 1
       31 JUMPIFEQKS                       R4 K1 ["table"] ; [+3]
       33 LOADB                            R3 0
       34 JUMP                             ; [+16]
       35 MOVE                             R4 R2
       36 LOADNIL                          R5
       37 LOADNIL                          R6
       38 FORGPREP                         R4
       39 FASTCALL1                        TYPE R7 ; [+3]
       40 MOVE                             R10 R7
       41 GETIMPORT                        R9 K5 [type]
       43 CALL                             R9 1 1
       44 JUMPIFEQKS                       R9 K6 ["number"] ; [+3]
       46 LOADB                            R3 0
       47 JUMP                             ; [+3]
       48 FORGLOOP                         R4 2 ; [-10]
       50 LOADB                            R3 1
       51 JUMPIF                           R3 ; [+11]
       52 GETUPVAL                         R3 3
       53 GETTABLEKS                       R3 R3 K7 ["error"]
       55 LOADK                            R4 K8 ["%s received a final argument that is not an array (instead, received `%s`). When specified, the final argument must be an array."]
       56 GETUPVAL                         R5 0
       57 FASTCALL1                        TYPE R2 ; [+3]
       58 MOVE                             R7 R2
       59 GETIMPORT                        R6 K5 [type]
       61 CALL                             R6 1 1
       62 CALL                             R3 3 0
       63 GETGLOBAL                        R3 K9 ["mountImperativeHandle"]
       65 MOVE                             R4 R0
       66 MOVE                             R5 R1
       67 MOVE                             R6 R2
       68 CALL                             R3 3 -1
       69 RETURN                           R3 -1

PROTO_70:
        0 LOADK                            R2 K0 ["useLayoutEffect"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 JUMPIFNOT                        R2 ; [+18]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 2
        6 JUMPIFNOTEQKNIL                  R3 ; [+8]
        8 NEWTABLE                         R3 0 1
       10 MOVE                             R4 R2
       11 SETLIST                          R3 R4 1 [1]
       13 SETUPVAL                         R3 2
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R4 2
       16 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       18 MOVE                             R5 R2
       19 GETIMPORT                        R3 K3 [table.insert]
       21 CALL                             R3 2 0
       22 GETUPVAL                         R2 1
       23 JUMPIFNOT                        R2 ; [+39]
       24 JUMPIFEQKNIL                     R1 ; [+38]
       26 FASTCALL1                        TYPE R1 ; [+3]
       27 MOVE                             R4 R1
       28 GETIMPORT                        R3 K5 [type]
       30 CALL                             R3 1 1
       31 JUMPIFEQKS                       R3 K1 ["table"] ; [+3]
       33 LOADB                            R2 0
       34 JUMP                             ; [+16]
       35 MOVE                             R3 R1
       36 LOADNIL                          R4
       37 LOADNIL                          R5
       38 FORGPREP                         R3
       39 FASTCALL1                        TYPE R6 ; [+3]
       40 MOVE                             R9 R6
       41 GETIMPORT                        R8 K5 [type]
       43 CALL                             R8 1 1
       44 JUMPIFEQKS                       R8 K6 ["number"] ; [+3]
       46 LOADB                            R2 0
       47 JUMP                             ; [+3]
       48 FORGLOOP                         R3 2 ; [-10]
       50 LOADB                            R2 1
       51 JUMPIF                           R2 ; [+11]
       52 GETUPVAL                         R2 3
       53 GETTABLEKS                       R2 R2 K7 ["error"]
       55 LOADK                            R3 K8 ["%s received a final argument that is not an array (instead, received `%s`). When specified, the final argument must be an array."]
       56 GETUPVAL                         R4 0
       57 FASTCALL1                        TYPE R1 ; [+3]
       58 MOVE                             R6 R1
       59 GETIMPORT                        R5 K5 [type]
       61 CALL                             R5 1 1
       62 CALL                             R2 3 0
       63 GETUPVAL                         R2 4
       64 MOVE                             R3 R0
       65 MOVE                             R4 R1
       66 CALL                             R2 2 -1
       67 RETURN                           R2 -1

PROTO_71:
        0 LOADK                            R2 K0 ["useMemo"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 JUMPIFNOT                        R2 ; [+18]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 2
        6 JUMPIFNOTEQKNIL                  R3 ; [+8]
        8 NEWTABLE                         R3 0 1
       10 MOVE                             R4 R2
       11 SETLIST                          R3 R4 1 [1]
       13 SETUPVAL                         R3 2
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R4 2
       16 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       18 MOVE                             R5 R2
       19 GETIMPORT                        R3 K3 [table.insert]
       21 CALL                             R3 2 0
       22 GETUPVAL                         R2 1
       23 JUMPIFNOT                        R2 ; [+39]
       24 JUMPIFEQKNIL                     R1 ; [+38]
       26 FASTCALL1                        TYPE R1 ; [+3]
       27 MOVE                             R4 R1
       28 GETIMPORT                        R3 K5 [type]
       30 CALL                             R3 1 1
       31 JUMPIFEQKS                       R3 K1 ["table"] ; [+3]
       33 LOADB                            R2 0
       34 JUMP                             ; [+16]
       35 MOVE                             R3 R1
       36 LOADNIL                          R4
       37 LOADNIL                          R5
       38 FORGPREP                         R3
       39 FASTCALL1                        TYPE R6 ; [+3]
       40 MOVE                             R9 R6
       41 GETIMPORT                        R8 K5 [type]
       43 CALL                             R8 1 1
       44 JUMPIFEQKS                       R8 K6 ["number"] ; [+3]
       46 LOADB                            R2 0
       47 JUMP                             ; [+3]
       48 FORGLOOP                         R3 2 ; [-10]
       50 LOADB                            R2 1
       51 JUMPIF                           R2 ; [+11]
       52 GETUPVAL                         R2 3
       53 GETTABLEKS                       R2 R2 K7 ["error"]
       55 LOADK                            R3 K8 ["%s received a final argument that is not an array (instead, received `%s`). When specified, the final argument must be an array."]
       56 GETUPVAL                         R4 0
       57 FASTCALL1                        TYPE R1 ; [+3]
       58 MOVE                             R6 R1
       59 GETIMPORT                        R5 K5 [type]
       61 CALL                             R5 1 1
       62 CALL                             R2 3 0
       63 GETUPVAL                         R2 4
       64 GETTABLEKS                       R2 R2 K9 ["current"]
       66 GETUPVAL                         R3 4
       67 GETUPVAL                         R4 5
       68 SETTABLEKS                       R4 R3 K9 ["current"]
       70 NEWTABLE                         R3 0 1
       72 GETIMPORT                        R4 K11 [pcall]
       74 GETGLOBAL                        R5 K12 ["mountMemo"]
       76 MOVE                             R6 R0
       77 MOVE                             R7 R1
       78 CALL                             R4 3 -1
       79 SETLIST                          R3 R4 -1 [1]
       81 GETUPVAL                         R4 4
       82 SETTABLEKS                       R2 R4 K9 ["current"]
       84 GETTABLEN                        R4 R3 1
       85 JUMPIF                           R4 ; [+4]
       86 GETIMPORT                        R4 K13 [error]
       88 GETTABLEN                        R5 R3 2
       89 CALL                             R4 1 0
       90 FASTCALL2K                       TABLE_UNPACK R3 K14 ; [+5]
       92 MOVE                             R5 R3
       93 LOADK                            R6 K14 [2]
       94 GETIMPORT                        R4 K16 [unpack]
       96 CALL                             R4 2 -1
       97 RETURN                           R4 -1

PROTO_72:
        0 LOADK                            R3 K0 ["useReducer"]
        1 SETUPVAL                         R3 0
        2 GETUPVAL                         R3 1
        3 JUMPIFNOT                        R3 ; [+18]
        4 GETUPVAL                         R3 0
        5 GETUPVAL                         R4 2
        6 JUMPIFNOTEQKNIL                  R4 ; [+8]
        8 NEWTABLE                         R4 0 1
       10 MOVE                             R5 R3
       11 SETLIST                          R4 R5 1 [1]
       13 SETUPVAL                         R4 2
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R5 2
       16 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       18 MOVE                             R6 R3
       19 GETIMPORT                        R4 K3 [table.insert]
       21 CALL                             R4 2 0
       22 GETUPVAL                         R3 3
       23 GETTABLEKS                       R3 R3 K4 ["current"]
       25 GETUPVAL                         R4 3
       26 GETUPVAL                         R5 4
       27 SETTABLEKS                       R5 R4 K4 ["current"]
       29 GETIMPORT                        R4 K6 [pcall]
       31 GETGLOBAL                        R5 K7 ["mountReducer"]
       33 MOVE                             R6 R0
       34 MOVE                             R7 R1
       35 MOVE                             R8 R2
       36 CALL                             R4 4 3
       37 GETUPVAL                         R7 3
       38 SETTABLEKS                       R3 R7 K4 ["current"]
       40 JUMPIF                           R4 ; [+4]
       41 GETIMPORT                        R7 K9 [error]
       43 MOVE                             R8 R5
       44 CALL                             R7 1 0
       45 RETURN                           R5 2

PROTO_73:
        0 LOADK                            R1 K0 ["useRef"]
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+18]
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 2
        6 JUMPIFNOTEQKNIL                  R2 ; [+8]
        8 NEWTABLE                         R2 0 1
       10 MOVE                             R3 R1
       11 SETLIST                          R2 R3 1 [1]
       13 SETUPVAL                         R2 2
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R3 2
       16 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       18 MOVE                             R4 R1
       19 GETIMPORT                        R2 K3 [table.insert]
       21 CALL                             R2 2 0
       22 GETGLOBAL                        R1 K4 ["mountRef"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 -1
       26 RETURN                           R1 -1

PROTO_74:
        0 LOADK                            R1 K0 ["useBinding"]
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+18]
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 2
        6 JUMPIFNOTEQKNIL                  R2 ; [+8]
        8 NEWTABLE                         R2 0 1
       10 MOVE                             R3 R1
       11 SETLIST                          R2 R3 1 [1]
       13 SETUPVAL                         R2 2
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R3 2
       16 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       18 MOVE                             R4 R1
       19 GETIMPORT                        R2 K3 [table.insert]
       21 CALL                             R2 2 0
       22 GETGLOBAL                        R1 K4 ["mountBinding"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 -1
       26 RETURN                           R1 -1

PROTO_75:
        0 LOADK                            R1 K0 ["useState"]
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 JUMPIFNOT                        R1 ; [+18]
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R2 2
        6 JUMPIFNOTEQKNIL                  R2 ; [+8]
        8 NEWTABLE                         R2 0 1
       10 MOVE                             R3 R1
       11 SETLIST                          R2 R3 1 [1]
       13 SETUPVAL                         R2 2
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R3 2
       16 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       18 MOVE                             R4 R1
       19 GETIMPORT                        R2 K3 [table.insert]
       21 CALL                             R2 2 0
       22 GETUPVAL                         R1 3
       23 GETTABLEKS                       R1 R1 K4 ["current"]
       25 GETUPVAL                         R2 3
       26 GETUPVAL                         R3 4
       27 SETTABLEKS                       R3 R2 K4 ["current"]
       29 GETIMPORT                        R2 K6 [pcall]
       31 GETGLOBAL                        R3 K7 ["mountState"]
       33 MOVE                             R4 R0
       34 CALL                             R2 2 3
       35 GETUPVAL                         R5 3
       36 SETTABLEKS                       R1 R5 K4 ["current"]
       38 JUMPIF                           R2 ; [+4]
       39 GETIMPORT                        R5 K9 [error]
       41 MOVE                             R6 R3
       42 CALL                             R5 1 0
       43 RETURN                           R3 2

PROTO_76:
        0 LOADK                            R2 K0 ["useDebugValue"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 JUMPIFNOT                        R2 ; [+18]
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 2
        6 JUMPIFNOTEQKNIL                  R3 ; [+8]
        8 NEWTABLE                         R3 0 1
       10 MOVE                             R4 R2
       11 SETLIST                          R3 R4 1 [1]
       13 SETUPVAL                         R3 2
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R4 2
       16 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       18 MOVE                             R5 R2
       19 GETIMPORT                        R3 K3 [table.insert]
       21 CALL                             R3 2 0
       22 GETGLOBAL                        R2 K4 ["mountDebugValue"]
       24 MOVE                             R3 R0
       25 MOVE                             R4 R1
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1

PROTO_77:
        0 LOADK                            R3 K0 ["useMutableSource"]
        1 SETUPVAL                         R3 0
        2 GETUPVAL                         R3 1
        3 JUMPIFNOT                        R3 ; [+18]
        4 GETUPVAL                         R3 0
        5 GETUPVAL                         R4 2
        6 JUMPIFNOTEQKNIL                  R4 ; [+8]
        8 NEWTABLE                         R4 0 1
       10 MOVE                             R5 R3
       11 SETLIST                          R4 R5 1 [1]
       13 SETUPVAL                         R4 2
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R5 2
       16 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       18 MOVE                             R6 R3
       19 GETIMPORT                        R4 K3 [table.insert]
       21 CALL                             R4 2 0
       22 GETGLOBAL                        R3 K4 ["mountMutableSource"]
       24 MOVE                             R4 R0
       25 MOVE                             R5 R1
       26 MOVE                             R6 R2
       27 CALL                             R3 3 -1
       28 RETURN                           R3 -1

PROTO_78:
        0 LOADK                            R0 K0 ["useOpaqueIdentifier"]
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+18]
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 2
        6 JUMPIFNOTEQKNIL                  R1 ; [+8]
        8 NEWTABLE                         R1 0 1
       10 MOVE                             R2 R0
       11 SETLIST                          R1 R2 1 [1]
       13 SETUPVAL                         R1 2
       14 JUMP                             ; [+7]
       15 GETUPVAL                         R2 2
       16 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       18 MOVE                             R3 R0
       19 GETIMPORT                        R1 K3 [table.insert]
       21 CALL                             R1 2 0
       22 GETGLOBAL                        R0 K4 ["mountOpaqueIdentifier"]
       24 CALL                             R0 0 -1
       25 RETURN                           R0 -1

PROTO_79:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_80:
        0 LOADK                            R2 K0 ["useCallback"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 JUMPIFNOT                        R2 ; [+39]
        7 JUMPIFEQKNIL                     R1 ; [+38]
        9 FASTCALL1                        TYPE R1 ; [+3]
       10 MOVE                             R4 R1
       11 GETIMPORT                        R3 K3 [type]
       13 CALL                             R3 1 1
       14 JUMPIFEQKS                       R3 K4 ["table"] ; [+3]
       16 LOADB                            R2 0
       17 JUMP                             ; [+16]
       18 MOVE                             R3 R1
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 FORGPREP                         R3
       22 FASTCALL1                        TYPE R6 ; [+3]
       23 MOVE                             R9 R6
       24 GETIMPORT                        R8 K3 [type]
       26 CALL                             R8 1 1
       27 JUMPIFEQKS                       R8 K5 ["number"] ; [+3]
       29 LOADB                            R2 0
       30 JUMP                             ; [+3]
       31 FORGLOOP                         R3 2 ; [-10]
       33 LOADB                            R2 1
       34 JUMPIF                           R2 ; [+11]
       35 GETUPVAL                         R2 2
       36 GETTABLEKS                       R2 R2 K6 ["error"]
       38 LOADK                            R3 K7 ["%s received a final argument that is not an array (instead, received `%s`). When specified, the final argument must be an array."]
       39 GETUPVAL                         R4 0
       40 FASTCALL1                        TYPE R1 ; [+3]
       41 MOVE                             R6 R1
       42 GETIMPORT                        R5 K3 [type]
       44 CALL                             R5 1 1
       45 CALL                             R2 3 0
       46 GETGLOBAL                        R2 K8 ["mountCallback"]
       48 MOVE                             R3 R0
       49 MOVE                             R4 R1
       50 CALL                             R2 2 -1
       51 RETURN                           R2 -1

PROTO_81:
        0 LOADK                            R2 K0 ["useContext"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_82:
        0 LOADK                            R2 K0 ["useEffect"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_83:
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

PROTO_84:
        0 LOADK                            R2 K0 ["useLayoutEffect"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_85:
        0 LOADK                            R2 K0 ["useMemo"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["current"]
        8 GETUPVAL                         R3 1
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K2 ["current"]
       12 NEWTABLE                         R3 0 1
       14 GETIMPORT                        R4 K4 [pcall]
       16 GETGLOBAL                        R5 K5 ["mountMemo"]
       18 MOVE                             R6 R0
       19 MOVE                             R7 R1
       20 CALL                             R4 3 -1
       21 SETLIST                          R3 R4 -1 [1]
       23 GETUPVAL                         R4 1
       24 SETTABLEKS                       R2 R4 K2 ["current"]
       26 GETTABLEN                        R4 R3 1
       27 JUMPIF                           R4 ; [+4]
       28 GETIMPORT                        R4 K7 [error]
       30 GETTABLEN                        R5 R3 2
       31 CALL                             R4 1 0
       32 FASTCALL2K                       TABLE_UNPACK R3 K8 ; [+5]
       34 MOVE                             R5 R3
       35 LOADK                            R6 K8 [2]
       36 GETIMPORT                        R4 K10 [unpack]
       38 CALL                             R4 2 -1
       39 RETURN                           R4 -1

PROTO_86:
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

PROTO_87:
        0 LOADK                            R1 K0 ["useRef"]
        1 SETUPVAL                         R1 0
        2 GETGLOBAL                        R1 K1 ["updateHookTypesDev"]
        4 CALL                             R1 0 0
        5 GETGLOBAL                        R1 K2 ["mountRef"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_88:
        0 LOADK                            R1 K0 ["useBinding"]
        1 SETUPVAL                         R1 0
        2 GETGLOBAL                        R1 K1 ["updateHookTypesDev"]
        4 CALL                             R1 0 0
        5 GETGLOBAL                        R1 K2 ["mountBinding"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_89:
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

PROTO_90:
        0 LOADK                            R2 K0 ["useDebugValue"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETGLOBAL                        R2 K2 ["mountDebugValue"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_91:
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

PROTO_92:
        0 LOADK                            R0 K0 ["useOpaqueIdentifier"]
        1 SETUPVAL                         R0 0
        2 GETGLOBAL                        R0 K1 ["updateHookTypesDev"]
        4 CALL                             R0 0 0
        5 GETGLOBAL                        R0 K2 ["mountOpaqueIdentifier"]
        7 CALL                             R0 0 -1
        8 RETURN                           R0 -1

PROTO_93:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_94:
        0 LOADK                            R2 K0 ["useCallback"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETGLOBAL                        R2 K2 ["updateCallback"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_95:
        0 LOADK                            R2 K0 ["useContext"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_96:
        0 LOADK                            R2 K0 ["useEffect"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_97:
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

PROTO_98:
        0 LOADK                            R2 K0 ["useLayoutEffect"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_99:
        0 LOADK                            R2 K0 ["useMemo"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["current"]
        8 GETUPVAL                         R3 1
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K2 ["current"]
       12 NEWTABLE                         R3 0 1
       14 GETIMPORT                        R4 K4 [pcall]
       16 GETGLOBAL                        R5 K5 ["updateMemo"]
       18 MOVE                             R6 R0
       19 MOVE                             R7 R1
       20 CALL                             R4 3 -1
       21 SETLIST                          R3 R4 -1 [1]
       23 GETUPVAL                         R4 1
       24 SETTABLEKS                       R2 R4 K2 ["current"]
       26 GETTABLEN                        R4 R3 1
       27 JUMPIF                           R4 ; [+4]
       28 GETIMPORT                        R4 K7 [error]
       30 GETTABLEN                        R5 R3 2
       31 CALL                             R4 1 0
       32 FASTCALL2K                       TABLE_UNPACK R3 K8 ; [+5]
       34 MOVE                             R5 R3
       35 LOADK                            R6 K8 [2]
       36 GETIMPORT                        R4 K10 [unpack]
       38 CALL                             R4 2 -1
       39 RETURN                           R4 -1

PROTO_100:
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

PROTO_101:
        0 LOADK                            R1 K0 ["useRef"]
        1 SETUPVAL                         R1 0
        2 GETGLOBAL                        R1 K1 ["updateHookTypesDev"]
        4 CALL                             R1 0 0
        5 GETGLOBAL                        R1 K2 ["updateRef"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_102:
        0 LOADK                            R1 K0 ["useBinding"]
        1 SETUPVAL                         R1 0
        2 GETGLOBAL                        R1 K1 ["updateHookTypesDev"]
        4 CALL                             R1 0 0
        5 GETGLOBAL                        R1 K2 ["updateBinding"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_103:
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

PROTO_104:
        0 LOADK                            R2 K0 ["useDebugValue"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_105:
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

PROTO_106:
        0 LOADK                            R0 K0 ["useOpaqueIdentifier"]
        1 SETUPVAL                         R0 0
        2 GETGLOBAL                        R0 K1 ["updateHookTypesDev"]
        4 CALL                             R0 0 0
        5 GETGLOBAL                        R0 K2 ["updateOpaqueIdentifier"]
        7 CALL                             R0 0 -1
        8 RETURN                           R0 -1

PROTO_107:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_108:
        0 LOADK                            R2 K0 ["useCallback"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETGLOBAL                        R2 K2 ["updateCallback"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

PROTO_109:
        0 LOADK                            R2 K0 ["useContext"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_110:
        0 LOADK                            R2 K0 ["useEffect"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_111:
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

PROTO_112:
        0 LOADK                            R2 K0 ["useLayoutEffect"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_113:
        0 LOADK                            R2 K0 ["useMemo"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["current"]
        8 GETUPVAL                         R3 1
        9 GETUPVAL                         R4 2
       10 SETTABLEKS                       R4 R3 K2 ["current"]
       12 NEWTABLE                         R3 0 1
       14 GETIMPORT                        R4 K4 [pcall]
       16 GETGLOBAL                        R5 K5 ["updateMemo"]
       18 MOVE                             R6 R0
       19 MOVE                             R7 R1
       20 CALL                             R4 3 -1
       21 SETLIST                          R3 R4 -1 [1]
       23 GETUPVAL                         R4 1
       24 SETTABLEKS                       R2 R4 K2 ["current"]
       26 GETTABLEN                        R4 R3 1
       27 JUMPIF                           R4 ; [+4]
       28 GETIMPORT                        R4 K7 [error]
       30 GETTABLEN                        R5 R3 2
       31 CALL                             R4 1 0
       32 FASTCALL2K                       TABLE_UNPACK R3 K8 ; [+5]
       34 MOVE                             R5 R3
       35 LOADK                            R6 K8 [2]
       36 GETIMPORT                        R4 K10 [unpack]
       38 CALL                             R4 2 -1
       39 RETURN                           R4 -1

PROTO_114:
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

PROTO_115:
        0 LOADK                            R1 K0 ["useRef"]
        1 SETUPVAL                         R1 0
        2 GETGLOBAL                        R1 K1 ["updateHookTypesDev"]
        4 CALL                             R1 0 0
        5 GETGLOBAL                        R1 K2 ["updateRef"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_116:
        0 LOADK                            R1 K0 ["useBinding"]
        1 SETUPVAL                         R1 0
        2 GETGLOBAL                        R1 K1 ["updateHookTypesDev"]
        4 CALL                             R1 0 0
        5 GETGLOBAL                        R1 K2 ["updateBinding"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1

PROTO_117:
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

PROTO_118:
        0 LOADK                            R2 K0 ["useDebugValue"]
        1 SETUPVAL                         R2 0
        2 GETGLOBAL                        R2 K1 ["updateHookTypesDev"]
        4 CALL                             R2 0 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_119:
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

PROTO_120:
        0 LOADK                            R0 K0 ["useOpaqueIdentifier"]
        1 SETUPVAL                         R0 0
        2 GETGLOBAL                        R0 K1 ["updateHookTypesDev"]
        4 CALL                             R0 0 0
        5 GETGLOBAL                        R0 K2 ["rerenderOpaqueIdentifier"]
        7 CALL                             R0 0 -1
        8 RETURN                           R0 -1

PROTO_121:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["error"]
        3 LOADK                            R3 K1 ["Context can only be read while React is rendering. In classes, you can read it in the render method or getDerivedStateFromProps. In function components, you can read it directly in the function body, but not inside Hooks like useReducer() or useMemo()."]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_122:
        0 LOADK                            R2 K0 ["useCallback"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 JUMPIFNOT                        R2 ; [+18]
        9 GETUPVAL                         R2 0
       10 GETUPVAL                         R3 3
       11 JUMPIFNOTEQKNIL                  R3 ; [+8]
       13 NEWTABLE                         R3 0 1
       15 MOVE                             R4 R2
       16 SETLIST                          R3 R4 1 [1]
       18 SETUPVAL                         R3 3
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R4 3
       21 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       23 MOVE                             R5 R2
       24 GETIMPORT                        R3 K5 [table.insert]
       26 CALL                             R3 2 0
       27 GETGLOBAL                        R2 K6 ["mountCallback"]
       29 MOVE                             R3 R0
       30 MOVE                             R4 R1
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

PROTO_123:
        0 LOADK                            R2 K0 ["useContext"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 JUMPIFNOT                        R2 ; [+18]
        9 GETUPVAL                         R2 0
       10 GETUPVAL                         R3 3
       11 JUMPIFNOTEQKNIL                  R3 ; [+8]
       13 NEWTABLE                         R3 0 1
       15 MOVE                             R4 R2
       16 SETLIST                          R3 R4 1 [1]
       18 SETUPVAL                         R3 3
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R4 3
       21 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       23 MOVE                             R5 R2
       24 GETIMPORT                        R3 K5 [table.insert]
       26 CALL                             R3 2 0
       27 GETUPVAL                         R2 4
       28 MOVE                             R3 R0
       29 MOVE                             R4 R1
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

PROTO_124:
        0 LOADK                            R2 K0 ["useEffect"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 JUMPIFNOT                        R2 ; [+18]
        9 GETUPVAL                         R2 0
       10 GETUPVAL                         R3 3
       11 JUMPIFNOTEQKNIL                  R3 ; [+8]
       13 NEWTABLE                         R3 0 1
       15 MOVE                             R4 R2
       16 SETLIST                          R3 R4 1 [1]
       18 SETUPVAL                         R3 3
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R4 3
       21 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       23 MOVE                             R5 R2
       24 GETIMPORT                        R3 K5 [table.insert]
       26 CALL                             R3 2 0
       27 GETUPVAL                         R2 4
       28 MOVE                             R3 R0
       29 MOVE                             R4 R1
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

PROTO_125:
        0 LOADK                            R3 K0 ["useImperativeHandle"]
        1 SETUPVAL                         R3 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["error"]
        5 LOADK                            R4 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R3 1 0
        7 GETUPVAL                         R3 2
        8 JUMPIFNOT                        R3 ; [+18]
        9 GETUPVAL                         R3 0
       10 GETUPVAL                         R4 3
       11 JUMPIFNOTEQKNIL                  R4 ; [+8]
       13 NEWTABLE                         R4 0 1
       15 MOVE                             R5 R3
       16 SETLIST                          R4 R5 1 [1]
       18 SETUPVAL                         R4 3
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R5 3
       21 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       23 MOVE                             R6 R3
       24 GETIMPORT                        R4 K5 [table.insert]
       26 CALL                             R4 2 0
       27 GETGLOBAL                        R3 K6 ["mountImperativeHandle"]
       29 MOVE                             R4 R0
       30 MOVE                             R5 R1
       31 MOVE                             R6 R2
       32 CALL                             R3 3 -1
       33 RETURN                           R3 -1

PROTO_126:
        0 LOADK                            R2 K0 ["useLayoutEffect"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 JUMPIFNOT                        R2 ; [+18]
        9 GETUPVAL                         R2 0
       10 GETUPVAL                         R3 3
       11 JUMPIFNOTEQKNIL                  R3 ; [+8]
       13 NEWTABLE                         R3 0 1
       15 MOVE                             R4 R2
       16 SETLIST                          R3 R4 1 [1]
       18 SETUPVAL                         R3 3
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R4 3
       21 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       23 MOVE                             R5 R2
       24 GETIMPORT                        R3 K5 [table.insert]
       26 CALL                             R3 2 0
       27 GETUPVAL                         R2 4
       28 MOVE                             R3 R0
       29 MOVE                             R4 R1
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

PROTO_127:
        0 LOADK                            R2 K0 ["useMemo"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 JUMPIFNOT                        R2 ; [+18]
        9 GETUPVAL                         R2 0
       10 GETUPVAL                         R3 3
       11 JUMPIFNOTEQKNIL                  R3 ; [+8]
       13 NEWTABLE                         R3 0 1
       15 MOVE                             R4 R2
       16 SETLIST                          R3 R4 1 [1]
       18 SETUPVAL                         R3 3
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R4 3
       21 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       23 MOVE                             R5 R2
       24 GETIMPORT                        R3 K5 [table.insert]
       26 CALL                             R3 2 0
       27 GETUPVAL                         R2 4
       28 GETTABLEKS                       R2 R2 K6 ["current"]
       30 GETUPVAL                         R3 4
       31 GETUPVAL                         R4 5
       32 SETTABLEKS                       R4 R3 K6 ["current"]
       34 NEWTABLE                         R3 0 1
       36 GETIMPORT                        R4 K8 [pcall]
       38 GETGLOBAL                        R5 K9 ["mountMemo"]
       40 MOVE                             R6 R0
       41 MOVE                             R7 R1
       42 CALL                             R4 3 -1
       43 SETLIST                          R3 R4 -1 [1]
       45 GETUPVAL                         R4 4
       46 SETTABLEKS                       R2 R4 K6 ["current"]
       48 GETTABLEN                        R4 R3 1
       49 JUMPIF                           R4 ; [+4]
       50 GETIMPORT                        R4 K10 [error]
       52 GETTABLEN                        R5 R3 2
       53 CALL                             R4 1 0
       54 FASTCALL2K                       TABLE_UNPACK R3 K11 ; [+5]
       56 MOVE                             R5 R3
       57 LOADK                            R6 K11 [2]
       58 GETIMPORT                        R4 K13 [unpack]
       60 CALL                             R4 2 -1
       61 RETURN                           R4 -1

PROTO_128:
        0 LOADK                            R3 K0 ["useReducer"]
        1 SETUPVAL                         R3 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["error"]
        5 LOADK                            R4 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R3 1 0
        7 GETUPVAL                         R3 2
        8 JUMPIFNOT                        R3 ; [+18]
        9 GETUPVAL                         R3 0
       10 GETUPVAL                         R4 3
       11 JUMPIFNOTEQKNIL                  R4 ; [+8]
       13 NEWTABLE                         R4 0 1
       15 MOVE                             R5 R3
       16 SETLIST                          R4 R5 1 [1]
       18 SETUPVAL                         R4 3
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R5 3
       21 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       23 MOVE                             R6 R3
       24 GETIMPORT                        R4 K5 [table.insert]
       26 CALL                             R4 2 0
       27 GETUPVAL                         R3 4
       28 GETTABLEKS                       R3 R3 K6 ["current"]
       30 GETUPVAL                         R4 4
       31 GETUPVAL                         R5 5
       32 SETTABLEKS                       R5 R4 K6 ["current"]
       34 GETIMPORT                        R4 K8 [pcall]
       36 GETGLOBAL                        R5 K9 ["mountReducer"]
       38 MOVE                             R6 R0
       39 MOVE                             R7 R1
       40 MOVE                             R8 R2
       41 CALL                             R4 4 3
       42 GETUPVAL                         R7 4
       43 SETTABLEKS                       R3 R7 K6 ["current"]
       45 JUMPIF                           R4 ; [+4]
       46 GETIMPORT                        R7 K10 [error]
       48 MOVE                             R8 R5
       49 CALL                             R7 1 0
       50 RETURN                           R5 2

PROTO_129:
        0 LOADK                            R1 K0 ["useRef"]
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K1 ["error"]
        5 LOADK                            R2 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 JUMPIFNOT                        R1 ; [+18]
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R2 3
       11 JUMPIFNOTEQKNIL                  R2 ; [+8]
       13 NEWTABLE                         R2 0 1
       15 MOVE                             R3 R1
       16 SETLIST                          R2 R3 1 [1]
       18 SETUPVAL                         R2 3
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R3 3
       21 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       23 MOVE                             R4 R1
       24 GETIMPORT                        R2 K5 [table.insert]
       26 CALL                             R2 2 0
       27 GETGLOBAL                        R1 K6 ["mountRef"]
       29 MOVE                             R2 R0
       30 CALL                             R1 1 -1
       31 RETURN                           R1 -1

PROTO_130:
        0 LOADK                            R1 K0 ["useBinding"]
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K1 ["error"]
        5 LOADK                            R2 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 JUMPIFNOT                        R1 ; [+18]
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R2 3
       11 JUMPIFNOTEQKNIL                  R2 ; [+8]
       13 NEWTABLE                         R2 0 1
       15 MOVE                             R3 R1
       16 SETLIST                          R2 R3 1 [1]
       18 SETUPVAL                         R2 3
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R3 3
       21 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       23 MOVE                             R4 R1
       24 GETIMPORT                        R2 K5 [table.insert]
       26 CALL                             R2 2 0
       27 GETGLOBAL                        R1 K6 ["mountBinding"]
       29 MOVE                             R2 R0
       30 CALL                             R1 1 -1
       31 RETURN                           R1 -1

PROTO_131:
        0 LOADK                            R1 K0 ["useState"]
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K1 ["error"]
        5 LOADK                            R2 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 JUMPIFNOT                        R1 ; [+18]
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R2 3
       11 JUMPIFNOTEQKNIL                  R2 ; [+8]
       13 NEWTABLE                         R2 0 1
       15 MOVE                             R3 R1
       16 SETLIST                          R2 R3 1 [1]
       18 SETUPVAL                         R2 3
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R3 3
       21 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       23 MOVE                             R4 R1
       24 GETIMPORT                        R2 K5 [table.insert]
       26 CALL                             R2 2 0
       27 GETUPVAL                         R1 4
       28 GETTABLEKS                       R1 R1 K6 ["current"]
       30 GETUPVAL                         R2 4
       31 GETUPVAL                         R3 5
       32 SETTABLEKS                       R3 R2 K6 ["current"]
       34 GETIMPORT                        R2 K8 [pcall]
       36 GETGLOBAL                        R3 K9 ["mountState"]
       38 MOVE                             R4 R0
       39 CALL                             R2 2 3
       40 GETUPVAL                         R5 4
       41 SETTABLEKS                       R1 R5 K6 ["current"]
       43 JUMPIF                           R2 ; [+4]
       44 GETIMPORT                        R5 K10 [error]
       46 MOVE                             R6 R3
       47 CALL                             R5 1 0
       48 RETURN                           R3 2

PROTO_132:
        0 LOADK                            R2 K0 ["useDebugValue"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 2
        8 JUMPIFNOT                        R2 ; [+18]
        9 GETUPVAL                         R2 0
       10 GETUPVAL                         R3 3
       11 JUMPIFNOTEQKNIL                  R3 ; [+8]
       13 NEWTABLE                         R3 0 1
       15 MOVE                             R4 R2
       16 SETLIST                          R3 R4 1 [1]
       18 SETUPVAL                         R3 3
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R4 3
       21 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       23 MOVE                             R5 R2
       24 GETIMPORT                        R3 K5 [table.insert]
       26 CALL                             R3 2 0
       27 GETGLOBAL                        R2 K6 ["mountDebugValue"]
       29 MOVE                             R3 R0
       30 MOVE                             R4 R1
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

PROTO_133:
        0 LOADK                            R3 K0 ["useMutableSource"]
        1 SETUPVAL                         R3 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["error"]
        5 LOADK                            R4 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R3 1 0
        7 GETUPVAL                         R3 2
        8 JUMPIFNOT                        R3 ; [+18]
        9 GETUPVAL                         R3 0
       10 GETUPVAL                         R4 3
       11 JUMPIFNOTEQKNIL                  R4 ; [+8]
       13 NEWTABLE                         R4 0 1
       15 MOVE                             R5 R3
       16 SETLIST                          R4 R5 1 [1]
       18 SETUPVAL                         R4 3
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R5 3
       21 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       23 MOVE                             R6 R3
       24 GETIMPORT                        R4 K5 [table.insert]
       26 CALL                             R4 2 0
       27 GETGLOBAL                        R3 K6 ["mountMutableSource"]
       29 MOVE                             R4 R0
       30 MOVE                             R5 R1
       31 MOVE                             R6 R2
       32 CALL                             R3 3 -1
       33 RETURN                           R3 -1

PROTO_134:
        0 LOADK                            R0 K0 ["useOpaqueIdentifier"]
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K1 ["error"]
        5 LOADK                            R1 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+18]
        9 GETUPVAL                         R0 0
       10 GETUPVAL                         R1 3
       11 JUMPIFNOTEQKNIL                  R1 ; [+8]
       13 NEWTABLE                         R1 0 1
       15 MOVE                             R2 R0
       16 SETLIST                          R1 R2 1 [1]
       18 SETUPVAL                         R1 3
       19 JUMP                             ; [+7]
       20 GETUPVAL                         R2 3
       21 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       23 MOVE                             R3 R0
       24 GETIMPORT                        R1 K5 [table.insert]
       26 CALL                             R1 2 0
       27 GETGLOBAL                        R0 K6 ["mountOpaqueIdentifier"]
       29 CALL                             R0 0 -1
       30 RETURN                           R0 -1

PROTO_135:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["error"]
        3 LOADK                            R3 K1 ["Context can only be read while React is rendering. In classes, you can read it in the render method or getDerivedStateFromProps. In function components, you can read it directly in the function body, but not inside Hooks like useReducer() or useMemo()."]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_136:
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

PROTO_137:
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

PROTO_138:
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

PROTO_139:
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

PROTO_140:
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

PROTO_141:
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
       17 NEWTABLE                         R3 0 1
       19 GETIMPORT                        R4 K6 [pcall]
       21 GETGLOBAL                        R5 K7 ["updateMemo"]
       23 MOVE                             R6 R0
       24 MOVE                             R7 R1
       25 CALL                             R4 3 -1
       26 SETLIST                          R3 R4 -1 [1]
       28 GETUPVAL                         R4 2
       29 SETTABLEKS                       R2 R4 K4 ["current"]
       31 GETTABLEN                        R4 R3 1
       32 JUMPIF                           R4 ; [+4]
       33 GETIMPORT                        R4 K8 [error]
       35 GETTABLEN                        R5 R3 2
       36 CALL                             R4 1 0
       37 FASTCALL2K                       TABLE_UNPACK R3 K9 ; [+5]
       39 MOVE                             R5 R3
       40 LOADK                            R6 K9 [2]
       41 GETIMPORT                        R4 K11 [unpack]
       43 CALL                             R4 2 -1
       44 RETURN                           R4 -1

PROTO_142:
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

PROTO_143:
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

PROTO_144:
        0 LOADK                            R1 K0 ["useBinding"]
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K1 ["error"]
        5 LOADK                            R2 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R1 1 0
        7 GETGLOBAL                        R1 K3 ["updateHookTypesDev"]
        9 CALL                             R1 0 0
       10 GETGLOBAL                        R1 K4 ["updateBinding"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_145:
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

PROTO_146:
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

PROTO_147:
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

PROTO_148:
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

PROTO_149:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["error"]
        3 LOADK                            R3 K1 ["Context can only be read while React is rendering. In classes, you can read it in the render method or getDerivedStateFromProps. In function components, you can read it directly in the function body, but not inside Hooks like useReducer() or useMemo()."]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 MOVE                             R4 R1
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_150:
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

PROTO_151:
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

PROTO_152:
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

PROTO_153:
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

PROTO_154:
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

PROTO_155:
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
       17 NEWTABLE                         R3 0 1
       19 GETIMPORT                        R4 K6 [pcall]
       21 GETGLOBAL                        R5 K7 ["updateMemo"]
       23 MOVE                             R6 R0
       24 MOVE                             R7 R1
       25 CALL                             R4 3 -1
       26 SETLIST                          R3 R4 -1 [1]
       28 GETUPVAL                         R4 2
       29 SETTABLEKS                       R2 R4 K4 ["current"]
       31 GETTABLEN                        R4 R3 1
       32 JUMPIF                           R4 ; [+4]
       33 GETIMPORT                        R4 K8 [error]
       35 GETTABLEN                        R5 R3 2
       36 CALL                             R4 1 0
       37 FASTCALL2K                       TABLE_UNPACK R3 K9 ; [+5]
       39 MOVE                             R5 R3
       40 LOADK                            R6 K9 [2]
       41 GETIMPORT                        R4 K11 [unpack]
       43 CALL                             R4 2 -1
       44 RETURN                           R4 -1

PROTO_156:
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

PROTO_157:
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

PROTO_158:
        0 LOADK                            R1 K0 ["useBinding"]
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K1 ["error"]
        5 LOADK                            R2 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R1 1 0
        7 GETGLOBAL                        R1 K3 ["updateHookTypesDev"]
        9 CALL                             R1 0 0
       10 GETGLOBAL                        R1 K4 ["updateBinding"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_159:
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

PROTO_160:
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

PROTO_161:
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

PROTO_162:
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

PROTO_163:
        0 SETUPVAL                         R5 0
        1 SETUPVAL                         R1 1
        2 GETUPVAL                         R6 2
        3 JUMPIFNOT                        R6 ; [+9]
        4 JUMPIFEQKNIL                     R0 ; [+4]
        6 GETTABLEKS                       R6 R0 K0 ["_debugHookTypes"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R6
       10 SETUPVAL                         R6 3
       11 LOADN                            R6 0
       12 SETUPVAL                         R6 4
       13 LOADNIL                          R6
       14 SETTABLEKS                       R6 R1 K1 ["memoizedState"]
       16 LOADNIL                          R6
       17 SETTABLEKS                       R6 R1 K2 ["updateQueue"]
       19 GETUPVAL                         R6 5
       20 SETTABLEKS                       R6 R1 K3 ["lanes"]
       22 GETUPVAL                         R6 2
       23 JUMPIFNOT                        R6 ; [+24]
       24 JUMPIFEQKNIL                     R0 ; [+10]
       26 GETTABLEKS                       R6 R0 K1 ["memoizedState"]
       28 JUMPIFEQKNIL                     R6 ; [+6]
       30 GETUPVAL                         R6 6
       31 GETUPVAL                         R7 7
       32 SETTABLEKS                       R7 R6 K4 ["current"]
       34 JUMP                             ; [+25]
       35 GETUPVAL                         R6 3
       36 JUMPIFEQKNIL                     R6 ; [+6]
       38 GETUPVAL                         R6 6
       39 GETUPVAL                         R7 8
       40 SETTABLEKS                       R7 R6 K4 ["current"]
       42 JUMP                             ; [+17]
       43 GETUPVAL                         R6 6
       44 GETUPVAL                         R7 9
       45 SETTABLEKS                       R7 R6 K4 ["current"]
       47 JUMP                             ; [+12]
       48 GETUPVAL                         R6 6
       49 JUMPIFEQKNIL                     R0 ; [+5]
       51 GETTABLEKS                       R8 R0 K1 ["memoizedState"]
       53 JUMPIFNOTEQKNIL                  R8 ; [+3]
       55 GETUPVAL                         R7 10
       56 JUMPIF                           R7 ; [+1]
       57 GETUPVAL                         R7 11
       58 SETTABLEKS                       R7 R6 K4 ["current"]
       60 MOVE                             R6 R2
       61 MOVE                             R7 R3
       62 MOVE                             R8 R4
       63 CALL                             R6 2 1
       64 GETUPVAL                         R7 12
       65 JUMPIFNOT                        R7 ; [+42]
       66 LOADN                            R7 0
       67 LOADB                            R8 0
       68 SETUPVAL                         R8 12
       69 LOADN                            R8 25
       70 JUMPIFNOTLE                      R8 R7 ; [+9]
       72 GETIMPORT                        R8 K6 [error]
       74 GETUPVAL                         R9 13
       75 GETTABLEKS                       R9 R9 K7 ["new"]
       77 LOADK                            R10 K8 ["Too many re-renders. React limits the number of renders to prevent an infinite loop."]
       78 CALL                             R9 1 -1
       79 CALL                             R8 -1 0
       80 ADDK                             R7 R7 K9 [1]
       81 LOADNIL                          R8
       82 SETUPVAL                         R8 14
       83 LOADNIL                          R8
       84 SETUPVAL                         R8 15
       85 LOADNIL                          R8
       86 SETTABLEKS                       R8 R1 K2 ["updateQueue"]
       88 GETUPVAL                         R8 2
       89 JUMPIFNOT                        R8 ; [+2]
       90 LOADN                            R8 0
       91 SETUPVAL                         R8 4
       92 GETUPVAL                         R8 6
       93 GETUPVAL                         R10 2
       94 JUMPIFNOT                        R10 ; [+2]
       95 GETUPVAL                         R9 16
       96 JUMPIF                           R9 ; [+1]
       97 GETUPVAL                         R9 17
       98 SETTABLEKS                       R9 R8 K4 ["current"]
      100 MOVE                             R8 R2
      101 MOVE                             R9 R3
      102 MOVE                             R10 R4
      103 CALL                             R8 2 1
      104 MOVE                             R6 R8
      105 GETUPVAL                         R8 12
      106 JUMPIFNOT                        R8 ; [+1]
      107 JUMPBACK                         ; [-41]
      108 GETUPVAL                         R7 6
      109 GETUPVAL                         R8 18
      110 SETTABLEKS                       R8 R7 K4 ["current"]
      112 GETUPVAL                         R7 2
      113 JUMPIFNOT                        R7 ; [+3]
      114 GETUPVAL                         R7 3
      115 SETTABLEKS                       R7 R1 K0 ["_debugHookTypes"]
      117 LOADB                            R7 0
      118 GETUPVAL                         R8 14
      119 JUMPIFEQKNIL                     R8 ; [+8]
      121 GETUPVAL                         R8 14
      122 GETTABLEKS                       R8 R8 K10 ["next"]
      124 JUMPIFNOTEQKNIL                  R8 ; [+2]
      126 LOADB                            R7 0 +1
      127 LOADB                            R7 1
      128 GETUPVAL                         R8 5
      129 SETUPVAL                         R8 0
      130 LOADNIL                          R8
      131 SETUPVAL                         R8 1
      132 LOADNIL                          R8
      133 SETUPVAL                         R8 14
      134 LOADNIL                          R8
      135 SETUPVAL                         R8 15
      136 GETUPVAL                         R8 2
      137 JUMPIFNOT                        R8 ; [+6]
      138 LOADNIL                          R8
      139 SETUPVAL                         R8 19
      140 LOADNIL                          R8
      141 SETUPVAL                         R8 3
      142 LOADN                            R8 0
      143 SETUPVAL                         R8 4
      144 LOADB                            R8 0
      145 SETUPVAL                         R8 20
      146 JUMPIFNOT                        R7 ; [+22]
      147 LOADK                            R8 K11 ["unknown"]
      148 JUMPIFNOT                        R6 ; [+8]
      149 GETTABLEKS                       R9 R6 K12 ["type"]
      151 JUMPIFNOT                        R9 ; [+5]
      152 GETUPVAL                         R9 21
      153 GETTABLEKS                       R10 R6 K12 ["type"]
      155 CALL                             R9 1 1
      156 OR                               R8 R9 R8
      157 GETIMPORT                        R9 K6 [error]
      159 GETUPVAL                         R10 13
      160 GETTABLEKS                       R10 R10 K7 ["new"]
      162 LOADK                            R12 K13 ["Rendered fewer hooks than expected. This may be caused by an accidental "]
      163 LOADK                            R13 K14 ["early return statement. Inside '"]
      164 MOVE                             R14 R8
      165 LOADK                            R15 K15 ["'"]
      166 CONCAT                           R11 R12 R15
      167 CALL                             R10 1 -1
      168 CALL                             R9 -1 0
      169 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 GETIMPORT                        R1 K2 [script]
        4 GETTABLEKS                       R1 R1 K3 ["Parent"]
        6 GETTABLEKS                       R1 R1 K3 ["Parent"]
        8 GETIMPORT                        R2 K5 [require]
       10 GETTABLEKS                       R3 R1 K6 ["ReactGlobals"]
       12 CALL                             R2 1 1
       13 GETIMPORT                        R3 K5 [require]
       15 GETTABLEKS                       R4 R1 K7 ["LuauPolyfill"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R4 R3 K8 ["Array"]
       20 GETTABLEKS                       R5 R3 K9 ["Error"]
       22 GETTABLEKS                       R6 R3 K10 ["Object"]
       24 GETTABLEKS                       R7 R2 K11 ["__DEV__"]
       26 GETIMPORT                        R8 K5 [require]
       28 GETTABLEKS                       R9 R1 K12 ["React"]
       30 CALL                             R8 1 1
       31 GETTABLEKS                       R8 R8 K13 ["createRef"]
       33 GETIMPORT                        R9 K5 [require]
       35 GETTABLEKS                       R10 R1 K12 ["React"]
       37 CALL                             R9 1 1
       38 GETTABLEKS                       R9 R9 K14 ["createBinding"]
       40 GETIMPORT                        R10 K5 [require]
       42 GETTABLEKS                       R11 R1 K15 ["Shared"]
       44 CALL                             R10 1 1
       45 GETTABLEKS                       R10 R10 K16 ["console"]
       47 GETIMPORT                        R11 K5 [require]
       49 GETTABLEKS                       R12 R1 K15 ["Shared"]
       51 CALL                             R11 1 1
       52 GETIMPORT                        R12 K5 [require]
       54 GETIMPORT                        R13 K2 [script]
       56 GETTABLEKS                       R13 R13 K3 ["Parent"]
       58 GETTABLEKS                       R13 R13 K17 ["ReactInternalTypes"]
       60 CALL                             R12 1 1
       61 GETIMPORT                        R13 K5 [require]
       63 GETIMPORT                        R14 K2 [script]
       65 GETTABLEKS                       R14 R14 K3 ["Parent"]
       67 GETTABLEKS                       R14 R14 K18 ["ReactFiberLane"]
       69 CALL                             R13 1 1
       70 GETIMPORT                        R14 K5 [require]
       72 GETIMPORT                        R15 K2 [script]
       74 GETTABLEKS                       R15 R15 K3 ["Parent"]
       76 GETTABLEKS                       R15 R15 K19 ["ReactHookEffectTags"]
       78 CALL                             R14 1 1
       79 GETIMPORT                        R15 K5 [require]
       81 GETTABLEKS                       R16 R1 K15 ["Shared"]
       83 CALL                             R15 1 1
       84 GETTABLEKS                       R15 R15 K20 ["ReactSharedInternals"]
       86 GETIMPORT                        R16 K5 [require]
       88 GETTABLEKS                       R17 R1 K15 ["Shared"]
       90 CALL                             R16 1 1
       91 GETTABLEKS                       R16 R16 K21 ["ReactFeatureFlags"]
       93 GETTABLEKS                       R17 R16 K22 ["enableDebugTracing"]
       95 GETTABLEKS                       R18 R16 K23 ["enableSchedulingProfiler"]
       97 GETTABLEKS                       R19 R16 K24 ["enableNewReconciler"]
       99 GETTABLEKS                       R20 R16 K25 ["enableDoubleInvokingEffects"]
      101 GETIMPORT                        R21 K5 [require]
      103 GETIMPORT                        R22 K2 [script]
      105 GETTABLEKS                       R22 R22 K3 ["Parent"]
      107 GETTABLEKS                       R22 R22 K26 ["ReactTypeOfMode"]
      109 CALL                             R21 1 1
      110 GETTABLEKS                       R21 R21 K27 ["DebugTracingMode"]
      112 GETTABLEKS                       R22 R13 K28 ["NoLane"]
      114 GETTABLEKS                       R23 R13 K29 ["NoLanes"]
      116 GETTABLEKS                       R24 R13 K30 ["isSubsetOfLanes"]
      118 GETTABLEKS                       R25 R13 K31 ["mergeLanes"]
      120 GETTABLEKS                       R26 R13 K32 ["removeLanes"]
      122 GETTABLEKS                       R27 R13 K33 ["markRootEntangled"]
      124 GETTABLEKS                       R28 R13 K34 ["markRootMutableRead"]
      126 GETIMPORT                        R29 K5 [require]
      128 GETIMPORT                        R31 K2 [script]
      130 GETTABLEKS                       R31 R31 K3 ["Parent"]
      132 GETTABLEKS                       R30 R31 K35 ["ReactFiberNewContext.new"]
      134 CALL                             R29 1 1
      135 GETTABLEKS                       R30 R29 K36 ["readContext"]
      137 GETIMPORT                        R31 K5 [require]
      139 GETIMPORT                        R32 K2 [script]
      141 GETTABLEKS                       R32 R32 K3 ["Parent"]
      143 GETTABLEKS                       R32 R32 K37 ["ReactFiberFlags"]
      145 CALL                             R31 1 1
      146 GETTABLEKS                       R32 R31 K38 ["Update"]
      148 GETTABLEKS                       R33 R31 K39 ["Passive"]
      150 GETTABLEKS                       R34 R31 K40 ["PassiveStatic"]
      152 GETTABLEKS                       R35 R31 K41 ["MountLayoutDev"]
      154 GETTABLEKS                       R36 R31 K42 ["MountPassiveDev"]
      156 GETTABLEKS                       R37 R14 K43 ["HasEffect"]
      158 GETTABLEKS                       R38 R14 K44 ["Layout"]
      160 GETTABLEKS                       R39 R14 K39 ["Passive"]
      162 GETIMPORT                        R40 K5 [require]
      164 GETIMPORT                        R42 K2 [script]
      166 GETTABLEKS                       R42 R42 K3 ["Parent"]
      168 GETTABLEKS                       R41 R42 K45 ["ReactFiberWorkLoop.new"]
      170 CALL                             R40 1 1
      171 GETTABLEKS                       R41 R40 K46 ["warnIfNotCurrentlyActingUpdatesInDEV"]
      173 GETTABLEKS                       R42 R40 K47 ["scheduleUpdateOnFiber"]
      175 GETTABLEKS                       R43 R40 K48 ["warnIfNotScopedWithMatchingAct"]
      177 GETTABLEKS                       R44 R40 K49 ["requestEventTime"]
      179 GETTABLEKS                       R45 R40 K50 ["requestUpdateLane"]
      181 GETTABLEKS                       R46 R40 K51 ["markSkippedUpdateLanes"]
      183 GETTABLEKS                       R47 R40 K52 ["getWorkInProgressRoot"]
      185 GETTABLEKS                       R48 R40 K53 ["warnIfNotCurrentlyActingEffectsInDEV"]
      187 GETIMPORT                        R49 K5 [require]
      189 GETTABLEKS                       R50 R1 K15 ["Shared"]
      191 CALL                             R49 1 1
      192 GETTABLEKS                       R49 R49 K54 ["invariant"]
      194 GETIMPORT                        R50 K5 [require]
      196 GETTABLEKS                       R51 R1 K15 ["Shared"]
      198 CALL                             R50 1 1
      199 GETTABLEKS                       R50 R50 K55 ["getComponentName"]
      201 DUPCLOSURE                       R51 K56 [PROTO_1]
      202 GETIMPORT                        R52 K5 [require]
      204 GETIMPORT                        R54 K2 [script]
      206 GETTABLEKS                       R54 R54 K3 ["Parent"]
      208 GETTABLEKS                       R53 R54 K57 ["ReactFiberBeginWork.new"]
      210 CALL                             R52 1 1
      211 GETTABLEKS                       R52 R52 K58 ["markWorkInProgressReceivedUpdate"]
      213 GETIMPORT                        R53 K5 [require]
      215 GETIMPORT                        R55 K2 [script]
      217 GETTABLEKS                       R55 R55 K3 ["Parent"]
      219 GETTABLEKS                       R54 R55 K59 ["ReactFiberHydrationContext.new"]
      221 CALL                             R53 1 1
      222 GETTABLEKS                       R53 R53 K60 ["getIsHydrating"]
      224 GETIMPORT                        R54 K5 [require]
      226 GETIMPORT                        R55 K2 [script]
      228 GETTABLEKS                       R55 R55 K3 ["Parent"]
      230 GETTABLEKS                       R55 R55 K61 ["ReactFiberHostConfig"]
      232 CALL                             R54 1 1
      233 GETTABLEKS                       R55 R54 K62 ["makeClientId"]
      235 GETIMPORT                        R56 K5 [require]
      237 GETIMPORT                        R58 K2 [script]
      239 GETTABLEKS                       R58 R58 K3 ["Parent"]
      241 GETTABLEKS                       R57 R58 K63 ["ReactMutableSource.new"]
      243 CALL                             R56 1 1
      244 GETTABLEKS                       R57 R56 K64 ["warnAboutMultipleRenderersDEV"]
      246 GETTABLEKS                       R58 R56 K65 ["getWorkInProgressVersion"]
      248 GETTABLEKS                       R59 R56 K66 ["setWorkInProgressVersion"]
      250 GETTABLEKS                       R60 R56 K67 ["markSourceAsDirty"]
      252 GETIMPORT                        R61 K5 [require]
      254 GETIMPORT                        R62 K2 [script]
      256 GETTABLEKS                       R62 R62 K3 ["Parent"]
      258 GETTABLEKS                       R62 R62 K68 ["DebugTracing"]
      260 CALL                             R61 1 1
      261 GETTABLEKS                       R61 R61 K69 ["logStateUpdateScheduled"]
      263 GETIMPORT                        R62 K5 [require]
      265 GETIMPORT                        R63 K2 [script]
      267 GETTABLEKS                       R63 R63 K3 ["Parent"]
      269 GETTABLEKS                       R63 R63 K70 ["SchedulingProfiler"]
      271 CALL                             R62 1 1
      272 GETTABLEKS                       R62 R62 K71 ["markStateUpdateScheduled"]
      274 GETTABLEKS                       R63 R15 K72 ["ReactCurrentDispatcher"]
      276 GETIMPORT                        R64 K5 [require]
      278 GETTABLEKS                       R65 R1 K73 ["SafeFlags"]
      280 CALL                             R64 1 1
      281 GETTABLEKS                       R64 R64 K74 ["createGetFFlag"]
      283 LOADK                            R65 K75 ["ReactCleanQueueOnUpdateBailout"]
      284 CALL                             R64 1 1
      285 CALL                             R64 0 1
      286 LOADNIL                          R65
      287 LOADNIL                          R66
      288 JUMPIFNOT                        R7 ; [+4]
      289 NEWTABLE                         R66 0 0
      291 NEWTABLE                         R65 0 0
      293 NEWTABLE                         R67 8 0
      295 MOVE                             R68 R23
      296 LOADNIL                          R69
      297 LOADNIL                          R70
      298 LOADNIL                          R71
      299 LOADB                            R72 0
      300 LOADB                            R73 0
      301 LOADNIL                          R74
      302 LOADNIL                          R75
      303 LOADN                            R76 0
      304 LOADNIL                          R77
      305 LOADNIL                          R78
      306 LOADNIL                          R79
      307 LOADNIL                          R80
      308 LOADNIL                          R81
      309 LOADNIL                          R82
      310 LOADNIL                          R83
      311 DUPCLOSURE                       R84 K76 [PROTO_2]
      312 DUPCLOSURE                       R85 K77 [PROTO_3]
      313 NEWCLOSURE                       R86 P4
      314 CAPTURE                          VAL R7
      315 CAPTURE                          REF R74
      316 CAPTURE                          REF R75
      317 NEWCLOSURE                       R87 P5
      318 CAPTURE                          VAL R7
      319 CAPTURE                          REF R74
      320 CAPTURE                          REF R75
      321 CAPTURE                          REF R76
      322 SETGLOBAL                        R87 K78 ["updateHookTypesDev"]
      324 NEWCLOSURE                       R87 P6
      325 CAPTURE                          VAL R7
      326 CAPTURE                          VAL R10
      327 CAPTURE                          REF R74
      328 NEWCLOSURE                       R88 P7
      329 CAPTURE                          VAL R7
      330 CAPTURE                          VAL R50
      331 CAPTURE                          REF R69
      332 CAPTURE                          REF R65
      333 CAPTURE                          REF R75
      334 CAPTURE                          REF R76
      335 CAPTURE                          VAL R10
      336 SETGLOBAL                        R88 K79 ["warnOnHookMismatchInDev"]
      338 DUPCLOSURE                       R88 K80 [PROTO_8]
      339 CAPTURE                          VAL R5
      340 NEWCLOSURE                       R89 P9
      341 CAPTURE                          VAL R7
      342 CAPTURE                          VAL R10
      343 CAPTURE                          REF R74
      344 DUPCLOSURE                       R90 K81 [PROTO_10]
      345 CAPTURE                          VAL R7
      346 CAPTURE                          VAL R20
      347 CAPTURE                          VAL R36
      348 CAPTURE                          VAL R33
      349 CAPTURE                          VAL R35
      350 CAPTURE                          VAL R32
      351 CAPTURE                          VAL R26
      352 SETTABLEKS                       R90 R67 K82 ["bailoutHooks"]
      354 LOADB                            R90 0
      355 NEWCLOSURE                       R91 P11
      356 CAPTURE                          VAL R63
      357 CAPTURE                          VAL R67
      358 CAPTURE                          REF R72
      359 CAPTURE                          REF R69
      360 CAPTURE                          REF R68
      361 CAPTURE                          VAL R23
      362 CAPTURE                          REF R70
      363 CAPTURE                          REF R71
      364 CAPTURE                          VAL R7
      365 CAPTURE                          REF R75
      366 CAPTURE                          REF R76
      367 CAPTURE                          REF R74
      368 CAPTURE                          REF R90
      369 CAPTURE                          REF R73
      370 SETTABLEKS                       R91 R67 K83 ["resetHooksAfterThrow"]
      372 NEWCLOSURE                       R91 P12
      373 CAPTURE                          REF R71
      374 CAPTURE                          REF R69
      375 NEWCLOSURE                       R92 P13
      376 CAPTURE                          REF R70
      377 CAPTURE                          REF R69
      378 CAPTURE                          REF R71
      379 CAPTURE                          VAL R5
      380 DUPCLOSURE                       R93 K84 [PROTO_14]
      381 SETGLOBAL                        R93 K85 ["basicStateReducer"]
      383 NEWCLOSURE                       R93 P15
      384 CAPTURE                          REF R71
      385 CAPTURE                          REF R69
      386 SETGLOBAL                        R93 K86 ["mountReducer"]
      388 NEWCLOSURE                       R93 P16
      389 CAPTURE                          VAL R92
      390 CAPTURE                          REF R70
      391 CAPTURE                          REF R68
      392 CAPTURE                          REF R69
      393 CAPTURE                          VAL R25
      394 CAPTURE                          VAL R46
      395 CAPTURE                          VAL R22
      396 CAPTURE                          VAL R52
      397 SETGLOBAL                        R93 K87 ["updateReducer"]
      399 DUPCLOSURE                       R93 K88 [PROTO_18]
      400 CAPTURE                          VAL R92
      401 CAPTURE                          VAL R52
      402 SETGLOBAL                        R93 K89 ["rerenderReducer"]
      404 NEWCLOSURE                       R93 P18
      405 CAPTURE                          VAL R7
      406 CAPTURE                          VAL R57
      407 CAPTURE                          VAL R58
      408 CAPTURE                          VAL R24
      409 CAPTURE                          REF R68
      410 CAPTURE                          VAL R59
      411 CAPTURE                          VAL R10
      412 CAPTURE                          VAL R60
      413 CAPTURE                          VAL R5
      414 SETGLOBAL                        R93 K90 ["readFromUnsubcribedMutableSource"]
      416 NEWCLOSURE                       R93 P19
      417 CAPTURE                          VAL R47
      418 CAPTURE                          VAL R49
      419 CAPTURE                          VAL R63
      420 CAPTURE                          REF R71
      421 CAPTURE                          REF R69
      422 CAPTURE                          VAL R7
      423 CAPTURE                          VAL R10
      424 CAPTURE                          VAL R45
      425 CAPTURE                          VAL R28
      426 CAPTURE                          VAL R27
      427 SETGLOBAL                        R93 K91 ["useMutableSource"]
      429 NEWCLOSURE                       R93 P20
      430 CAPTURE                          REF R71
      431 CAPTURE                          REF R69
      432 SETGLOBAL                        R93 K92 ["mountMutableSource"]
      434 DUPCLOSURE                       R93 K93 [PROTO_29]
      435 CAPTURE                          VAL R92
      436 SETGLOBAL                        R93 K94 ["updateMutableSource"]
      438 NEWCLOSURE                       R93 P22
      439 CAPTURE                          REF R71
      440 CAPTURE                          REF R69
      441 SETGLOBAL                        R93 K95 ["mountState"]
      443 DUPCLOSURE                       R93 K96 [PROTO_32]
      444 SETGLOBAL                        R93 K97 ["updateState"]
      446 DUPCLOSURE                       R93 K98 [PROTO_33]
      447 SETGLOBAL                        R93 K99 ["rerenderState"]
      449 NEWCLOSURE                       R93 P25
      450 CAPTURE                          REF R69
      451 NEWCLOSURE                       R94 P26
      452 CAPTURE                          REF R71
      453 CAPTURE                          REF R69
      454 CAPTURE                          VAL R9
      455 SETGLOBAL                        R94 K100 ["mountBinding"]
      457 DUPCLOSURE                       R94 K101 [PROTO_36]
      458 CAPTURE                          VAL R92
      459 SETGLOBAL                        R94 K102 ["updateBinding"]
      461 NEWCLOSURE                       R94 P28
      462 CAPTURE                          REF R71
      463 CAPTURE                          REF R69
      464 CAPTURE                          VAL R8
      465 SETGLOBAL                        R94 K103 ["mountRef"]
      467 DUPCLOSURE                       R94 K104 [PROTO_38]
      468 CAPTURE                          VAL R92
      469 SETGLOBAL                        R94 K105 ["updateRef"]
      471 NEWCLOSURE                       R94 P30
      472 CAPTURE                          REF R71
      473 CAPTURE                          REF R69
      474 CAPTURE                          VAL R93
      475 CAPTURE                          VAL R37
      476 NEWCLOSURE                       R95 P31
      477 CAPTURE                          VAL R92
      478 CAPTURE                          REF R70
      479 CAPTURE                          VAL R89
      480 CAPTURE                          VAL R93
      481 CAPTURE                          REF R69
      482 CAPTURE                          VAL R37
      483 SETGLOBAL                        R95 K106 ["updateEffectImpl"]
      485 NEWCLOSURE                       R95 P32
      486 CAPTURE                          VAL R7
      487 CAPTURE                          VAL R2
      488 CAPTURE                          VAL R48
      489 CAPTURE                          REF R69
      490 CAPTURE                          VAL R20
      491 CAPTURE                          VAL R36
      492 CAPTURE                          VAL R33
      493 CAPTURE                          VAL R34
      494 CAPTURE                          VAL R39
      495 CAPTURE                          REF R71
      496 CAPTURE                          VAL R93
      497 CAPTURE                          VAL R37
      498 NEWCLOSURE                       R96 P33
      499 CAPTURE                          VAL R7
      500 CAPTURE                          VAL R2
      501 CAPTURE                          VAL R48
      502 CAPTURE                          REF R69
      503 CAPTURE                          VAL R33
      504 CAPTURE                          VAL R39
      505 NEWCLOSURE                       R97 P34
      506 CAPTURE                          VAL R7
      507 CAPTURE                          VAL R20
      508 CAPTURE                          VAL R35
      509 CAPTURE                          VAL R32
      510 CAPTURE                          VAL R38
      511 CAPTURE                          REF R71
      512 CAPTURE                          REF R69
      513 CAPTURE                          VAL R93
      514 CAPTURE                          VAL R37
      515 DUPCLOSURE                       R98 K107 [PROTO_44]
      516 CAPTURE                          VAL R32
      517 CAPTURE                          VAL R38
      518 DUPCLOSURE                       R99 K108 [PROTO_47]
      519 CAPTURE                          VAL R7
      520 CAPTURE                          VAL R6
      521 CAPTURE                          VAL R10
      522 CAPTURE                          VAL R4
      523 SETGLOBAL                        R99 K109 ["imperativeHandleEffect"]
      525 DUPCLOSURE                       R99 K110 [PROTO_50]
      526 CAPTURE                          VAL R7
      527 CAPTURE                          VAL R10
      528 CAPTURE                          VAL R4
      529 CAPTURE                          VAL R20
      530 CAPTURE                          VAL R94
      531 CAPTURE                          VAL R35
      532 CAPTURE                          VAL R32
      533 CAPTURE                          VAL R38
      534 SETGLOBAL                        R99 K111 ["mountImperativeHandle"]
      536 DUPCLOSURE                       R99 K112 [PROTO_52]
      537 CAPTURE                          VAL R7
      538 CAPTURE                          VAL R10
      539 CAPTURE                          VAL R32
      540 CAPTURE                          VAL R38
      541 SETGLOBAL                        R99 K113 ["updateImperativeHandle"]
      543 DUPCLOSURE                       R99 K114 [PROTO_53]
      544 SETGLOBAL                        R99 K115 ["mountDebugValue"]
      546 GETGLOBAL                        R99 K115 ["mountDebugValue"]
      548 NEWCLOSURE                       R100 P40
      549 CAPTURE                          REF R71
      550 CAPTURE                          REF R69
      551 SETGLOBAL                        R100 K116 ["mountCallback"]
      553 DUPCLOSURE                       R100 K117 [PROTO_55]
      554 CAPTURE                          VAL R92
      555 CAPTURE                          VAL R89
      556 SETGLOBAL                        R100 K118 ["updateCallback"]
      558 NEWCLOSURE                       R100 P42
      559 CAPTURE                          REF R71
      560 CAPTURE                          REF R69
      561 SETGLOBAL                        R100 K119 ["mountMemo"]
      563 DUPCLOSURE                       R100 K120 [PROTO_57]
      564 CAPTURE                          VAL R92
      565 CAPTURE                          VAL R89
      566 SETGLOBAL                        R100 K121 ["updateMemo"]
      568 DUPCLOSURE                       R100 K122 [PROTO_58]
      569 CAPTURE                          VAL R7
      570 SETTABLEKS                       R100 R67 K123 ["getIsUpdatingOpaqueValueInRenderPhaseInDEV"]
      572 DUPCLOSURE                       R100 K124 [PROTO_59]
      573 CAPTURE                          VAL R7
      574 CAPTURE                          VAL R10
      575 CAPTURE                          VAL R55
      576 CAPTURE                          VAL R53
      577 SETGLOBAL                        R100 K125 ["mountOpaqueIdentifier"]
      579 DUPCLOSURE                       R100 K126 [PROTO_60]
      580 SETGLOBAL                        R100 K127 ["updateOpaqueIdentifier"]
      582 DUPCLOSURE                       R100 K128 [PROTO_61]
      583 SETGLOBAL                        R100 K129 ["rerenderOpaqueIdentifier"]
      585 NEWCLOSURE                       R100 P48
      586 CAPTURE                          VAL R7
      587 CAPTURE                          VAL R10
      588 CAPTURE                          VAL R44
      589 CAPTURE                          VAL R45
      590 CAPTURE                          REF R69
      591 CAPTURE                          REF R72
      592 CAPTURE                          REF R73
      593 CAPTURE                          VAL R23
      594 CAPTURE                          VAL R63
      595 CAPTURE                          REF R82
      596 CAPTURE                          VAL R64
      597 CAPTURE                          VAL R2
      598 CAPTURE                          VAL R43
      599 CAPTURE                          VAL R41
      600 CAPTURE                          VAL R42
      601 CAPTURE                          VAL R17
      602 CAPTURE                          VAL R21
      603 CAPTURE                          VAL R50
      604 CAPTURE                          VAL R61
      605 CAPTURE                          VAL R18
      606 CAPTURE                          VAL R62
      607 SETGLOBAL                        R100 K130 ["dispatchAction"]
      609 DUPTABLE                         R100 K144 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      610 SETTABLEKS                       R30 R100 K36 ["readContext"]
      612 SETTABLEKS                       R88 R100 K131 ["useCallback"]
      614 SETTABLEKS                       R88 R100 K132 ["useContext"]
      616 SETTABLEKS                       R88 R100 K133 ["useEffect"]
      618 SETTABLEKS                       R88 R100 K134 ["useImperativeHandle"]
      620 SETTABLEKS                       R88 R100 K135 ["useLayoutEffect"]
      622 SETTABLEKS                       R88 R100 K136 ["useMemo"]
      624 SETTABLEKS                       R88 R100 K137 ["useReducer"]
      626 SETTABLEKS                       R88 R100 K138 ["useRef"]
      628 SETTABLEKS                       R88 R100 K139 ["useBinding"]
      630 SETTABLEKS                       R88 R100 K140 ["useState"]
      632 SETTABLEKS                       R88 R100 K141 ["useDebugValue"]
      634 SETTABLEKS                       R88 R100 K91 ["useMutableSource"]
      636 SETTABLEKS                       R88 R100 K142 ["useOpaqueIdentifier"]
      638 SETTABLEKS                       R19 R100 K143 ["unstable_isNewReconciler"]
      640 SETTABLEKS                       R100 R67 K145 ["ContextOnlyDispatcher"]
      642 DUPTABLE                         R101 K144 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      643 SETTABLEKS                       R30 R101 K36 ["readContext"]
      645 GETGLOBAL                        R102 K116 ["mountCallback"]
      647 SETTABLEKS                       R102 R101 K131 ["useCallback"]
      649 SETTABLEKS                       R30 R101 K132 ["useContext"]
      651 SETTABLEKS                       R95 R101 K133 ["useEffect"]
      653 GETGLOBAL                        R102 K111 ["mountImperativeHandle"]
      655 SETTABLEKS                       R102 R101 K134 ["useImperativeHandle"]
      657 SETTABLEKS                       R97 R101 K135 ["useLayoutEffect"]
      659 GETGLOBAL                        R102 K119 ["mountMemo"]
      661 SETTABLEKS                       R102 R101 K136 ["useMemo"]
      663 GETGLOBAL                        R102 K86 ["mountReducer"]
      665 SETTABLEKS                       R102 R101 K137 ["useReducer"]
      667 GETGLOBAL                        R102 K103 ["mountRef"]
      669 SETTABLEKS                       R102 R101 K138 ["useRef"]
      671 GETGLOBAL                        R102 K100 ["mountBinding"]
      673 SETTABLEKS                       R102 R101 K139 ["useBinding"]
      675 GETGLOBAL                        R102 K95 ["mountState"]
      677 SETTABLEKS                       R102 R101 K140 ["useState"]
      679 GETGLOBAL                        R102 K115 ["mountDebugValue"]
      681 SETTABLEKS                       R102 R101 K141 ["useDebugValue"]
      683 GETGLOBAL                        R102 K92 ["mountMutableSource"]
      685 SETTABLEKS                       R102 R101 K91 ["useMutableSource"]
      687 GETGLOBAL                        R102 K125 ["mountOpaqueIdentifier"]
      689 SETTABLEKS                       R102 R101 K142 ["useOpaqueIdentifier"]
      691 SETTABLEKS                       R19 R101 K143 ["unstable_isNewReconciler"]
      693 DUPTABLE                         R102 K144 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      694 SETTABLEKS                       R30 R102 K36 ["readContext"]
      696 GETGLOBAL                        R103 K118 ["updateCallback"]
      698 SETTABLEKS                       R103 R102 K131 ["useCallback"]
      700 SETTABLEKS                       R30 R102 K132 ["useContext"]
      702 SETTABLEKS                       R96 R102 K133 ["useEffect"]
      704 GETGLOBAL                        R103 K113 ["updateImperativeHandle"]
      706 SETTABLEKS                       R103 R102 K134 ["useImperativeHandle"]
      708 SETTABLEKS                       R98 R102 K135 ["useLayoutEffect"]
      710 GETGLOBAL                        R103 K121 ["updateMemo"]
      712 SETTABLEKS                       R103 R102 K136 ["useMemo"]
      714 GETGLOBAL                        R103 K87 ["updateReducer"]
      716 SETTABLEKS                       R103 R102 K137 ["useReducer"]
      718 GETGLOBAL                        R103 K105 ["updateRef"]
      720 SETTABLEKS                       R103 R102 K138 ["useRef"]
      722 GETGLOBAL                        R103 K102 ["updateBinding"]
      724 SETTABLEKS                       R103 R102 K139 ["useBinding"]
      726 GETGLOBAL                        R103 K97 ["updateState"]
      728 SETTABLEKS                       R103 R102 K140 ["useState"]
      730 SETTABLEKS                       R99 R102 K141 ["useDebugValue"]
      732 GETGLOBAL                        R103 K94 ["updateMutableSource"]
      734 SETTABLEKS                       R103 R102 K91 ["useMutableSource"]
      736 GETGLOBAL                        R103 K127 ["updateOpaqueIdentifier"]
      738 SETTABLEKS                       R103 R102 K142 ["useOpaqueIdentifier"]
      740 SETTABLEKS                       R19 R102 K143 ["unstable_isNewReconciler"]
      742 DUPTABLE                         R103 K144 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      743 SETTABLEKS                       R30 R103 K36 ["readContext"]
      745 GETGLOBAL                        R104 K118 ["updateCallback"]
      747 SETTABLEKS                       R104 R103 K131 ["useCallback"]
      749 SETTABLEKS                       R30 R103 K132 ["useContext"]
      751 SETTABLEKS                       R96 R103 K133 ["useEffect"]
      753 GETGLOBAL                        R104 K113 ["updateImperativeHandle"]
      755 SETTABLEKS                       R104 R103 K134 ["useImperativeHandle"]
      757 SETTABLEKS                       R98 R103 K135 ["useLayoutEffect"]
      759 GETGLOBAL                        R104 K121 ["updateMemo"]
      761 SETTABLEKS                       R104 R103 K136 ["useMemo"]
      763 GETGLOBAL                        R104 K89 ["rerenderReducer"]
      765 SETTABLEKS                       R104 R103 K137 ["useReducer"]
      767 GETGLOBAL                        R104 K105 ["updateRef"]
      769 SETTABLEKS                       R104 R103 K138 ["useRef"]
      771 GETGLOBAL                        R104 K102 ["updateBinding"]
      773 SETTABLEKS                       R104 R103 K139 ["useBinding"]
      775 GETGLOBAL                        R104 K99 ["rerenderState"]
      777 SETTABLEKS                       R104 R103 K140 ["useState"]
      779 SETTABLEKS                       R99 R103 K141 ["useDebugValue"]
      781 GETGLOBAL                        R104 K94 ["updateMutableSource"]
      783 SETTABLEKS                       R104 R103 K91 ["useMutableSource"]
      785 GETGLOBAL                        R104 K129 ["rerenderOpaqueIdentifier"]
      787 SETTABLEKS                       R104 R103 K142 ["useOpaqueIdentifier"]
      789 SETTABLEKS                       R19 R103 K143 ["unstable_isNewReconciler"]
      791 JUMPIFNOT                        R7 ; [+592]
      792 DUPCLOSURE                       R104 K146 [PROTO_63]
      793 CAPTURE                          VAL R10
      794 DUPCLOSURE                       R105 K147 [PROTO_64]
      795 CAPTURE                          VAL R10
      796 DUPTABLE                         R106 K144 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      797 DUPCLOSURE                       R107 K148 [PROTO_65]
      798 CAPTURE                          VAL R30
      799 SETTABLEKS                       R107 R106 K36 ["readContext"]
      801 NEWCLOSURE                       R107 P52
      802 CAPTURE                          REF R74
      803 CAPTURE                          VAL R7
      804 CAPTURE                          REF R75
      805 CAPTURE                          VAL R10
      806 SETTABLEKS                       R107 R106 K131 ["useCallback"]
      808 NEWCLOSURE                       R107 P53
      809 CAPTURE                          REF R74
      810 CAPTURE                          VAL R7
      811 CAPTURE                          REF R75
      812 CAPTURE                          VAL R30
      813 SETTABLEKS                       R107 R106 K132 ["useContext"]
      815 NEWCLOSURE                       R107 P54
      816 CAPTURE                          REF R74
      817 CAPTURE                          VAL R7
      818 CAPTURE                          REF R75
      819 CAPTURE                          VAL R10
      820 CAPTURE                          VAL R95
      821 SETTABLEKS                       R107 R106 K133 ["useEffect"]
      823 NEWCLOSURE                       R107 P55
      824 CAPTURE                          REF R74
      825 CAPTURE                          VAL R7
      826 CAPTURE                          REF R75
      827 CAPTURE                          VAL R10
      828 SETTABLEKS                       R107 R106 K134 ["useImperativeHandle"]
      830 NEWCLOSURE                       R107 P56
      831 CAPTURE                          REF R74
      832 CAPTURE                          VAL R7
      833 CAPTURE                          REF R75
      834 CAPTURE                          VAL R10
      835 CAPTURE                          VAL R97
      836 SETTABLEKS                       R107 R106 K135 ["useLayoutEffect"]
      838 NEWCLOSURE                       R107 P57
      839 CAPTURE                          REF R74
      840 CAPTURE                          VAL R7
      841 CAPTURE                          REF R75
      842 CAPTURE                          VAL R10
      843 CAPTURE                          VAL R63
      844 CAPTURE                          REF R81
      845 SETTABLEKS                       R107 R106 K136 ["useMemo"]
      847 NEWCLOSURE                       R107 P58
      848 CAPTURE                          REF R74
      849 CAPTURE                          VAL R7
      850 CAPTURE                          REF R75
      851 CAPTURE                          VAL R63
      852 CAPTURE                          REF R81
      853 SETTABLEKS                       R107 R106 K137 ["useReducer"]
      855 NEWCLOSURE                       R107 P59
      856 CAPTURE                          REF R74
      857 CAPTURE                          VAL R7
      858 CAPTURE                          REF R75
      859 SETTABLEKS                       R107 R106 K138 ["useRef"]
      861 NEWCLOSURE                       R107 P60
      862 CAPTURE                          REF R74
      863 CAPTURE                          VAL R7
      864 CAPTURE                          REF R75
      865 SETTABLEKS                       R107 R106 K139 ["useBinding"]
      867 NEWCLOSURE                       R107 P61
      868 CAPTURE                          REF R74
      869 CAPTURE                          VAL R7
      870 CAPTURE                          REF R75
      871 CAPTURE                          VAL R63
      872 CAPTURE                          REF R81
      873 SETTABLEKS                       R107 R106 K140 ["useState"]
      875 NEWCLOSURE                       R107 P62
      876 CAPTURE                          REF R74
      877 CAPTURE                          VAL R7
      878 CAPTURE                          REF R75
      879 SETTABLEKS                       R107 R106 K141 ["useDebugValue"]
      881 NEWCLOSURE                       R107 P63
      882 CAPTURE                          REF R74
      883 CAPTURE                          VAL R7
      884 CAPTURE                          REF R75
      885 SETTABLEKS                       R107 R106 K91 ["useMutableSource"]
      887 NEWCLOSURE                       R107 P64
      888 CAPTURE                          REF R74
      889 CAPTURE                          VAL R7
      890 CAPTURE                          REF R75
      891 SETTABLEKS                       R107 R106 K142 ["useOpaqueIdentifier"]
      893 SETTABLEKS                       R19 R106 K143 ["unstable_isNewReconciler"]
      895 MOVE                             R77 R106
      896 DUPTABLE                         R106 K144 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      897 DUPCLOSURE                       R107 K149 [PROTO_79]
      898 CAPTURE                          VAL R30
      899 SETTABLEKS                       R107 R106 K36 ["readContext"]
      901 NEWCLOSURE                       R107 P66
      902 CAPTURE                          REF R74
      903 CAPTURE                          VAL R7
      904 CAPTURE                          VAL R10
      905 SETTABLEKS                       R107 R106 K131 ["useCallback"]
      907 NEWCLOSURE                       R107 P67
      908 CAPTURE                          REF R74
      909 CAPTURE                          VAL R30
      910 SETTABLEKS                       R107 R106 K132 ["useContext"]
      912 NEWCLOSURE                       R107 P68
      913 CAPTURE                          REF R74
      914 CAPTURE                          VAL R95
      915 SETTABLEKS                       R107 R106 K133 ["useEffect"]
      917 NEWCLOSURE                       R107 P69
      918 CAPTURE                          REF R74
      919 SETTABLEKS                       R107 R106 K134 ["useImperativeHandle"]
      921 NEWCLOSURE                       R107 P70
      922 CAPTURE                          REF R74
      923 CAPTURE                          VAL R97
      924 SETTABLEKS                       R107 R106 K135 ["useLayoutEffect"]
      926 NEWCLOSURE                       R107 P71
      927 CAPTURE                          REF R74
      928 CAPTURE                          VAL R63
      929 CAPTURE                          REF R81
      930 SETTABLEKS                       R107 R106 K136 ["useMemo"]
      932 NEWCLOSURE                       R107 P72
      933 CAPTURE                          REF R74
      934 CAPTURE                          VAL R63
      935 CAPTURE                          REF R81
      936 SETTABLEKS                       R107 R106 K137 ["useReducer"]
      938 NEWCLOSURE                       R107 P73
      939 CAPTURE                          REF R74
      940 SETTABLEKS                       R107 R106 K138 ["useRef"]
      942 NEWCLOSURE                       R107 P74
      943 CAPTURE                          REF R74
      944 SETTABLEKS                       R107 R106 K139 ["useBinding"]
      946 NEWCLOSURE                       R107 P75
      947 CAPTURE                          REF R74
      948 CAPTURE                          VAL R63
      949 CAPTURE                          REF R81
      950 SETTABLEKS                       R107 R106 K140 ["useState"]
      952 NEWCLOSURE                       R107 P76
      953 CAPTURE                          REF R74
      954 SETTABLEKS                       R107 R106 K141 ["useDebugValue"]
      956 NEWCLOSURE                       R107 P77
      957 CAPTURE                          REF R74
      958 SETTABLEKS                       R107 R106 K91 ["useMutableSource"]
      960 NEWCLOSURE                       R107 P78
      961 CAPTURE                          REF R74
      962 SETTABLEKS                       R107 R106 K142 ["useOpaqueIdentifier"]
      964 SETTABLEKS                       R19 R106 K143 ["unstable_isNewReconciler"]
      966 MOVE                             R78 R106
      967 DUPTABLE                         R106 K144 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      968 DUPCLOSURE                       R107 K150 [PROTO_93]
      969 CAPTURE                          VAL R30
      970 SETTABLEKS                       R107 R106 K36 ["readContext"]
      972 NEWCLOSURE                       R107 P80
      973 CAPTURE                          REF R74
      974 SETTABLEKS                       R107 R106 K131 ["useCallback"]
      976 NEWCLOSURE                       R107 P81
      977 CAPTURE                          REF R74
      978 CAPTURE                          VAL R30
      979 SETTABLEKS                       R107 R106 K132 ["useContext"]
      981 NEWCLOSURE                       R107 P82
      982 CAPTURE                          REF R74
      983 CAPTURE                          VAL R96
      984 SETTABLEKS                       R107 R106 K133 ["useEffect"]
      986 NEWCLOSURE                       R107 P83
      987 CAPTURE                          REF R74
      988 SETTABLEKS                       R107 R106 K134 ["useImperativeHandle"]
      990 NEWCLOSURE                       R107 P84
      991 CAPTURE                          REF R74
      992 CAPTURE                          VAL R98
      993 SETTABLEKS                       R107 R106 K135 ["useLayoutEffect"]
      995 NEWCLOSURE                       R107 P85
      996 CAPTURE                          REF R74
      997 CAPTURE                          VAL R63
      998 CAPTURE                          REF R82
      999 SETTABLEKS                       R107 R106 K136 ["useMemo"]
     1001 NEWCLOSURE                       R107 P86
     1002 CAPTURE                          REF R74
     1003 CAPTURE                          VAL R63
     1004 CAPTURE                          REF R82
     1005 SETTABLEKS                       R107 R106 K137 ["useReducer"]
     1007 NEWCLOSURE                       R107 P87
     1008 CAPTURE                          REF R74
     1009 SETTABLEKS                       R107 R106 K138 ["useRef"]
     1011 NEWCLOSURE                       R107 P88
     1012 CAPTURE                          REF R74
     1013 SETTABLEKS                       R107 R106 K139 ["useBinding"]
     1015 NEWCLOSURE                       R107 P89
     1016 CAPTURE                          REF R74
     1017 CAPTURE                          VAL R63
     1018 CAPTURE                          REF R82
     1019 SETTABLEKS                       R107 R106 K140 ["useState"]
     1021 NEWCLOSURE                       R107 P90
     1022 CAPTURE                          REF R74
     1023 CAPTURE                          VAL R99
     1024 SETTABLEKS                       R107 R106 K141 ["useDebugValue"]
     1026 NEWCLOSURE                       R107 P91
     1027 CAPTURE                          REF R74
     1028 SETTABLEKS                       R107 R106 K91 ["useMutableSource"]
     1030 NEWCLOSURE                       R107 P92
     1031 CAPTURE                          REF R74
     1032 SETTABLEKS                       R107 R106 K142 ["useOpaqueIdentifier"]
     1034 SETTABLEKS                       R19 R106 K143 ["unstable_isNewReconciler"]
     1036 MOVE                             R79 R106
     1037 DUPTABLE                         R106 K144 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
     1038 DUPCLOSURE                       R107 K151 [PROTO_107]
     1039 CAPTURE                          VAL R30
     1040 SETTABLEKS                       R107 R106 K36 ["readContext"]
     1042 NEWCLOSURE                       R107 P94
     1043 CAPTURE                          REF R74
     1044 SETTABLEKS                       R107 R106 K131 ["useCallback"]
     1046 NEWCLOSURE                       R107 P95
     1047 CAPTURE                          REF R74
     1048 CAPTURE                          VAL R30
     1049 SETTABLEKS                       R107 R106 K132 ["useContext"]
     1051 NEWCLOSURE                       R107 P96
     1052 CAPTURE                          REF R74
     1053 CAPTURE                          VAL R96
     1054 SETTABLEKS                       R107 R106 K133 ["useEffect"]
     1056 NEWCLOSURE                       R107 P97
     1057 CAPTURE                          REF R74
     1058 SETTABLEKS                       R107 R106 K134 ["useImperativeHandle"]
     1060 NEWCLOSURE                       R107 P98
     1061 CAPTURE                          REF R74
     1062 CAPTURE                          VAL R98
     1063 SETTABLEKS                       R107 R106 K135 ["useLayoutEffect"]
     1065 NEWCLOSURE                       R107 P99
     1066 CAPTURE                          REF R74
     1067 CAPTURE                          VAL R63
     1068 CAPTURE                          REF R83
     1069 SETTABLEKS                       R107 R106 K136 ["useMemo"]
     1071 NEWCLOSURE                       R107 P100
     1072 CAPTURE                          REF R74
     1073 CAPTURE                          VAL R63
     1074 CAPTURE                          REF R83
     1075 SETTABLEKS                       R107 R106 K137 ["useReducer"]
     1077 NEWCLOSURE                       R107 P101
     1078 CAPTURE                          REF R74
     1079 SETTABLEKS                       R107 R106 K138 ["useRef"]
     1081 NEWCLOSURE                       R107 P102
     1082 CAPTURE                          REF R74
     1083 SETTABLEKS                       R107 R106 K139 ["useBinding"]
     1085 NEWCLOSURE                       R107 P103
     1086 CAPTURE                          REF R74
     1087 CAPTURE                          VAL R63
     1088 CAPTURE                          REF R83
     1089 SETTABLEKS                       R107 R106 K140 ["useState"]
     1091 NEWCLOSURE                       R107 P104
     1092 CAPTURE                          REF R74
     1093 CAPTURE                          VAL R99
     1094 SETTABLEKS                       R107 R106 K141 ["useDebugValue"]
     1096 NEWCLOSURE                       R107 P105
     1097 CAPTURE                          REF R74
     1098 SETTABLEKS                       R107 R106 K91 ["useMutableSource"]
     1100 NEWCLOSURE                       R107 P106
     1101 CAPTURE                          REF R74
     1102 SETTABLEKS                       R107 R106 K142 ["useOpaqueIdentifier"]
     1104 SETTABLEKS                       R19 R106 K143 ["unstable_isNewReconciler"]
     1106 MOVE                             R80 R106
     1107 DUPTABLE                         R106 K144 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
     1108 DUPCLOSURE                       R107 K152 [PROTO_121]
     1109 CAPTURE                          VAL R10
     1110 CAPTURE                          VAL R30
     1111 SETTABLEKS                       R107 R106 K36 ["readContext"]
     1113 NEWCLOSURE                       R107 P108
     1114 CAPTURE                          REF R74
     1115 CAPTURE                          VAL R10
     1116 CAPTURE                          VAL R7
     1117 CAPTURE                          REF R75
     1118 SETTABLEKS                       R107 R106 K131 ["useCallback"]
     1120 NEWCLOSURE                       R107 P109
     1121 CAPTURE                          REF R74
     1122 CAPTURE                          VAL R10
     1123 CAPTURE                          VAL R7
     1124 CAPTURE                          REF R75
     1125 CAPTURE                          VAL R30
     1126 SETTABLEKS                       R107 R106 K132 ["useContext"]
     1128 NEWCLOSURE                       R107 P110
     1129 CAPTURE                          REF R74
     1130 CAPTURE                          VAL R10
     1131 CAPTURE                          VAL R7
     1132 CAPTURE                          REF R75
     1133 CAPTURE                          VAL R95
     1134 SETTABLEKS                       R107 R106 K133 ["useEffect"]
     1136 NEWCLOSURE                       R107 P111
     1137 CAPTURE                          REF R74
     1138 CAPTURE                          VAL R10
     1139 CAPTURE                          VAL R7
     1140 CAPTURE                          REF R75
     1141 SETTABLEKS                       R107 R106 K134 ["useImperativeHandle"]
     1143 NEWCLOSURE                       R107 P112
     1144 CAPTURE                          REF R74
     1145 CAPTURE                          VAL R10
     1146 CAPTURE                          VAL R7
     1147 CAPTURE                          REF R75
     1148 CAPTURE                          VAL R97
     1149 SETTABLEKS                       R107 R106 K135 ["useLayoutEffect"]
     1151 NEWCLOSURE                       R107 P113
     1152 CAPTURE                          REF R74
     1153 CAPTURE                          VAL R10
     1154 CAPTURE                          VAL R7
     1155 CAPTURE                          REF R75
     1156 CAPTURE                          VAL R63
     1157 CAPTURE                          REF R81
     1158 SETTABLEKS                       R107 R106 K136 ["useMemo"]
     1160 NEWCLOSURE                       R107 P114
     1161 CAPTURE                          REF R74
     1162 CAPTURE                          VAL R10
     1163 CAPTURE                          VAL R7
     1164 CAPTURE                          REF R75
     1165 CAPTURE                          VAL R63
     1166 CAPTURE                          REF R81
     1167 SETTABLEKS                       R107 R106 K137 ["useReducer"]
     1169 NEWCLOSURE                       R107 P115
     1170 CAPTURE                          REF R74
     1171 CAPTURE                          VAL R10
     1172 CAPTURE                          VAL R7
     1173 CAPTURE                          REF R75
     1174 SETTABLEKS                       R107 R106 K138 ["useRef"]
     1176 NEWCLOSURE                       R107 P116
     1177 CAPTURE                          REF R74
     1178 CAPTURE                          VAL R10
     1179 CAPTURE                          VAL R7
     1180 CAPTURE                          REF R75
     1181 SETTABLEKS                       R107 R106 K139 ["useBinding"]
     1183 NEWCLOSURE                       R107 P117
     1184 CAPTURE                          REF R74
     1185 CAPTURE                          VAL R10
     1186 CAPTURE                          VAL R7
     1187 CAPTURE                          REF R75
     1188 CAPTURE                          VAL R63
     1189 CAPTURE                          REF R81
     1190 SETTABLEKS                       R107 R106 K140 ["useState"]
     1192 NEWCLOSURE                       R107 P118
     1193 CAPTURE                          REF R74
     1194 CAPTURE                          VAL R10
     1195 CAPTURE                          VAL R7
     1196 CAPTURE                          REF R75
     1197 SETTABLEKS                       R107 R106 K141 ["useDebugValue"]
     1199 NEWCLOSURE                       R107 P119
     1200 CAPTURE                          REF R74
     1201 CAPTURE                          VAL R10
     1202 CAPTURE                          VAL R7
     1203 CAPTURE                          REF R75
     1204 SETTABLEKS                       R107 R106 K91 ["useMutableSource"]
     1206 NEWCLOSURE                       R107 P120
     1207 CAPTURE                          REF R74
     1208 CAPTURE                          VAL R10
     1209 CAPTURE                          VAL R7
     1210 CAPTURE                          REF R75
     1211 SETTABLEKS                       R107 R106 K142 ["useOpaqueIdentifier"]
     1213 SETTABLEKS                       R19 R106 K143 ["unstable_isNewReconciler"]
     1215 MOVE                             R81 R106
     1216 DUPTABLE                         R106 K144 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
     1217 DUPCLOSURE                       R107 K153 [PROTO_135]
     1218 CAPTURE                          VAL R10
     1219 CAPTURE                          VAL R30
     1220 SETTABLEKS                       R107 R106 K36 ["readContext"]
     1222 NEWCLOSURE                       R107 P122
     1223 CAPTURE                          REF R74
     1224 CAPTURE                          VAL R10
     1225 SETTABLEKS                       R107 R106 K131 ["useCallback"]
     1227 NEWCLOSURE                       R107 P123
     1228 CAPTURE                          REF R74
     1229 CAPTURE                          VAL R10
     1230 CAPTURE                          VAL R30
     1231 SETTABLEKS                       R107 R106 K132 ["useContext"]
     1233 NEWCLOSURE                       R107 P124
     1234 CAPTURE                          REF R74
     1235 CAPTURE                          VAL R10
     1236 CAPTURE                          VAL R96
     1237 SETTABLEKS                       R107 R106 K133 ["useEffect"]
     1239 NEWCLOSURE                       R107 P125
     1240 CAPTURE                          REF R74
     1241 CAPTURE                          VAL R10
     1242 SETTABLEKS                       R107 R106 K134 ["useImperativeHandle"]
     1244 NEWCLOSURE                       R107 P126
     1245 CAPTURE                          REF R74
     1246 CAPTURE                          VAL R10
     1247 CAPTURE                          VAL R98
     1248 SETTABLEKS                       R107 R106 K135 ["useLayoutEffect"]
     1250 NEWCLOSURE                       R107 P127
     1251 CAPTURE                          REF R74
     1252 CAPTURE                          VAL R10
     1253 CAPTURE                          VAL R63
     1254 CAPTURE                          REF R82
     1255 SETTABLEKS                       R107 R106 K136 ["useMemo"]
     1257 NEWCLOSURE                       R107 P128
     1258 CAPTURE                          REF R74
     1259 CAPTURE                          VAL R10
     1260 CAPTURE                          VAL R63
     1261 CAPTURE                          REF R82
     1262 SETTABLEKS                       R107 R106 K137 ["useReducer"]
     1264 NEWCLOSURE                       R107 P129
     1265 CAPTURE                          REF R74
     1266 CAPTURE                          VAL R10
     1267 SETTABLEKS                       R107 R106 K138 ["useRef"]
     1269 NEWCLOSURE                       R107 P130
     1270 CAPTURE                          REF R74
     1271 CAPTURE                          VAL R10
     1272 SETTABLEKS                       R107 R106 K139 ["useBinding"]
     1274 NEWCLOSURE                       R107 P131
     1275 CAPTURE                          REF R74
     1276 CAPTURE                          VAL R10
     1277 CAPTURE                          VAL R63
     1278 CAPTURE                          REF R82
     1279 SETTABLEKS                       R107 R106 K140 ["useState"]
     1281 NEWCLOSURE                       R107 P132
     1282 CAPTURE                          REF R74
     1283 CAPTURE                          VAL R10
     1284 CAPTURE                          VAL R99
     1285 SETTABLEKS                       R107 R106 K141 ["useDebugValue"]
     1287 NEWCLOSURE                       R107 P133
     1288 CAPTURE                          REF R74
     1289 CAPTURE                          VAL R10
     1290 SETTABLEKS                       R107 R106 K91 ["useMutableSource"]
     1292 NEWCLOSURE                       R107 P134
     1293 CAPTURE                          REF R74
     1294 CAPTURE                          VAL R10
     1295 SETTABLEKS                       R107 R106 K142 ["useOpaqueIdentifier"]
     1297 SETTABLEKS                       R19 R106 K143 ["unstable_isNewReconciler"]
     1299 MOVE                             R82 R106
     1300 DUPTABLE                         R106 K144 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
     1301 DUPCLOSURE                       R107 K154 [PROTO_149]
     1302 CAPTURE                          VAL R10
     1303 CAPTURE                          VAL R30
     1304 SETTABLEKS                       R107 R106 K36 ["readContext"]
     1306 NEWCLOSURE                       R107 P136
     1307 CAPTURE                          REF R74
     1308 CAPTURE                          VAL R10
     1309 SETTABLEKS                       R107 R106 K131 ["useCallback"]
     1311 NEWCLOSURE                       R107 P137
     1312 CAPTURE                          REF R74
     1313 CAPTURE                          VAL R10
     1314 CAPTURE                          VAL R30
     1315 SETTABLEKS                       R107 R106 K132 ["useContext"]
     1317 NEWCLOSURE                       R107 P138
     1318 CAPTURE                          REF R74
     1319 CAPTURE                          VAL R10
     1320 CAPTURE                          VAL R96
     1321 SETTABLEKS                       R107 R106 K133 ["useEffect"]
     1323 NEWCLOSURE                       R107 P139
     1324 CAPTURE                          REF R74
     1325 CAPTURE                          VAL R10
     1326 SETTABLEKS                       R107 R106 K134 ["useImperativeHandle"]
     1328 NEWCLOSURE                       R107 P140
     1329 CAPTURE                          REF R74
     1330 CAPTURE                          VAL R10
     1331 CAPTURE                          VAL R98
     1332 SETTABLEKS                       R107 R106 K135 ["useLayoutEffect"]
     1334 NEWCLOSURE                       R107 P141
     1335 CAPTURE                          REF R74
     1336 CAPTURE                          VAL R10
     1337 CAPTURE                          VAL R63
     1338 CAPTURE                          REF R82
     1339 SETTABLEKS                       R107 R106 K136 ["useMemo"]
     1341 NEWCLOSURE                       R107 P142
     1342 CAPTURE                          REF R74
     1343 CAPTURE                          VAL R10
     1344 CAPTURE                          VAL R63
     1345 CAPTURE                          REF R82
     1346 SETTABLEKS                       R107 R106 K137 ["useReducer"]
     1348 NEWCLOSURE                       R107 P143
     1349 CAPTURE                          REF R74
     1350 CAPTURE                          VAL R10
     1351 SETTABLEKS                       R107 R106 K138 ["useRef"]
     1353 NEWCLOSURE                       R107 P144
     1354 CAPTURE                          REF R74
     1355 CAPTURE                          VAL R10
     1356 SETTABLEKS                       R107 R106 K139 ["useBinding"]
     1358 NEWCLOSURE                       R107 P145
     1359 CAPTURE                          REF R74
     1360 CAPTURE                          VAL R10
     1361 CAPTURE                          VAL R63
     1362 CAPTURE                          REF R82
     1363 SETTABLEKS                       R107 R106 K140 ["useState"]
     1365 NEWCLOSURE                       R107 P146
     1366 CAPTURE                          REF R74
     1367 CAPTURE                          VAL R10
     1368 CAPTURE                          VAL R99
     1369 SETTABLEKS                       R107 R106 K141 ["useDebugValue"]
     1371 NEWCLOSURE                       R107 P147
     1372 CAPTURE                          REF R74
     1373 CAPTURE                          VAL R10
     1374 SETTABLEKS                       R107 R106 K91 ["useMutableSource"]
     1376 NEWCLOSURE                       R107 P148
     1377 CAPTURE                          REF R74
     1378 CAPTURE                          VAL R10
     1379 SETTABLEKS                       R107 R106 K142 ["useOpaqueIdentifier"]
     1381 SETTABLEKS                       R19 R106 K143 ["unstable_isNewReconciler"]
     1383 MOVE                             R83 R106
     1384 NEWCLOSURE                       R104 P149
     1385 CAPTURE                          REF R68
     1386 CAPTURE                          REF R69
     1387 CAPTURE                          VAL R7
     1388 CAPTURE                          REF R75
     1389 CAPTURE                          REF R76
     1390 CAPTURE                          VAL R23
     1391 CAPTURE                          VAL R63
     1392 CAPTURE                          REF R79
     1393 CAPTURE                          REF R78
     1394 CAPTURE                          REF R77
     1395 CAPTURE                          VAL R101
     1396 CAPTURE                          VAL R102
     1397 CAPTURE                          REF R73
     1398 CAPTURE                          VAL R5
     1399 CAPTURE                          REF R70
     1400 CAPTURE                          REF R71
     1401 CAPTURE                          REF R80
     1402 CAPTURE                          VAL R103
     1403 CAPTURE                          VAL R100
     1404 CAPTURE                          REF R74
     1405 CAPTURE                          REF R72
     1406 CAPTURE                          VAL R50
     1407 SETTABLEKS                       R104 R67 K155 ["renderWithHooks"]
     1409 CLOSEUPVALS                      R65
     1410 RETURN                           R67 1
