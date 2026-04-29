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
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R1 R2 K4 ["error"]
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
        3 GETUPVAL                         R4 2
        4 GETTABLEKS                       R3 R4 K1 ["type"]
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
       60 GETUPVAL                         R4 6
       61 GETTABLEKS                       R3 R4 K12 ["error"]
       63 LOADK                            R4 K13 ["React has detected a change in the order of Hooks called by %s. This will lead to bugs and errors if not fixed. For more information, read the Rules of Hooks: https://reactjs.org/link/rules-of-hooks\n\n   Previous render            Next render\n   ------------------------------------------------------\n%s   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^\n"]
       64 MOVE                             R5 R1
       65 MOVE                             R6 R2
       66 CALL                             R3 3 0
       67 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K2 ["new"]
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
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K0 ["error"]
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
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["ContextOnlyDispatcher"]
        4 SETTABLEKS                       R1 R0 K1 ["current"]
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+17]
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R0 R1 K2 ["memoizedState"]
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
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["alternate"]
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
       40 GETUPVAL                         R4 3
       41 GETTABLEKS                       R3 R4 K5 ["new"]
       43 LOADK                            R4 K6 ["Rendered more hooks than during the previous render."]
       44 CALL                             R3 1 -1
       45 CALL                             R2 -1 0
       46 SETUPVAL                         R0 0
       47 DUPTABLE                         R2 K10 [{"memoizedState", "baseState", "baseQueue", "queue", "next"}]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R3 R4 K1 ["memoizedState"]
       51 SETTABLEKS                       R3 R2 K1 ["memoizedState"]
       53 GETUPVAL                         R4 0
       54 GETTABLEKS                       R3 R4 K7 ["baseState"]
       56 SETTABLEKS                       R3 R2 K7 ["baseState"]
       58 GETUPVAL                         R4 0
       59 GETTABLEKS                       R3 R4 K8 ["baseQueue"]
       61 SETTABLEKS                       R3 R2 K8 ["baseQueue"]
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R3 R4 K9 ["queue"]
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
       90 GETUPVAL                         R19 3
       91 GETTABLEKS                       R18 R19 K17 ["lanes"]
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
       47 GETUPVAL                         R9 6
       48 GETTABLEKS                       R8 R9 K6 ["error"]
       50 LOADK                            R9 K7 ["Mutable source should not return a function as the snapshot value. Functions may close over mutable values and cause tearing."]
       51 CALL                             R8 1 0
       52 RETURN                           R7 1
       53 GETUPVAL                         R7 7
       54 MOVE                             R8 R1
       55 CALL                             R7 1 0
       56 GETIMPORT                        R7 K8 [error]
       58 GETUPVAL                         R9 8
       59 GETTABLEKS                       R8 R9 K9 ["new"]
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
        9 GETUPVAL                         R2 4
       10 GETTABLEKS                       R1 R2 K2 ["_source"]
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
       33 GETUPVAL                         R3 4
       34 GETTABLEKS                       R2 R3 K2 ["_source"]
       36 CALL                             R1 1 1
       37 GETUPVAL                         R2 6
       38 JUMPIFNOT                        R2 ; [+12]
       39 FASTCALL1                        TYPE R1 ; [+3]
       40 MOVE                             R3 R1
       41 GETIMPORT                        R2 K6 [type]
       43 CALL                             R2 1 1
       44 JUMPIFNOTEQKS                    R2 K7 ["function"] ; [+6]
       46 GETUPVAL                         R3 7
       47 GETTABLEKS                       R2 R3 K8 ["error"]
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
       82 GETUPVAL                         R5 12
       83 GETTABLEKS                       R4 R5 K10 ["mutableReadLanes"]
       85 CALL                             R2 2 0
       86 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R2 R3 K0 ["_source"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getSnapshot"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["setSnapshot"]
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
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K0 ["_source"]
       11 MOVE                             R3 R0
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 7
       14 JUMPIFNOT                        R2 ; [+12]
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K2 [type]
       19 CALL                             R2 1 1
       20 JUMPIFEQKS                       R2 K3 ["function"] ; [+6]
       22 GETUPVAL                         R3 8
       23 GETTABLEKS                       R2 R3 K4 ["error"]
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
       15 GETUPVAL                         R8 2
       16 GETTABLEKS                       R7 R8 K3 ["current"]
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
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K6 ["updateQueue"]
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
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R7 R8 K6 ["flags"]
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
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K0 ["memoizedState"]
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
       30 GETUPVAL                         R9 4
       31 GETTABLEKS                       R8 R9 K3 ["flags"]
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
        1 JUMPIFNOT                        R2 ; [+18]
        2 GETIMPORT                        R4 K1 [_G]
        4 GETTABLEKS                       R3 R4 K2 ["jest"]
        6 FASTCALL1                        TYPE R3 ; [+2]
        7 GETIMPORT                        R2 K4 [type]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K5 ["nil"] ; [+6]
       12 GETIMPORT                        R3 K1 [_G]
       14 GETTABLEKS                       R2 R3 K6 ["__TESTEZ_RUNNING_TEST__"]
       16 JUMPIFNOT                        R2 ; [+3]
       17 GETUPVAL                         R2 1
       18 GETUPVAL                         R3 2
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 0
       21 JUMPIFNOT                        R2 ; [+66]
       22 GETUPVAL                         R2 3
       23 JUMPIFNOT                        R2 ; [+64]
       24 GETUPVAL                         R3 4
       25 GETUPVAL                         R4 5
       26 GETUPVAL                         R5 6
       27 FASTCALL                         BIT32_BOR ; [+2]
       28 GETIMPORT                        R2 K9 [bit32.bor]
       30 CALL                             R2 3 1
       31 GETUPVAL                         R3 7
       32 DUPTABLE                         R5 K15 [{"memoizedState", "baseState", "baseQueue", "queue", "next"}]
       33 LOADNIL                          R6
       34 SETTABLEKS                       R6 R5 K10 ["memoizedState"]
       36 LOADNIL                          R6
       37 SETTABLEKS                       R6 R5 K11 ["baseState"]
       39 LOADNIL                          R6
       40 SETTABLEKS                       R6 R5 K12 ["baseQueue"]
       42 LOADNIL                          R6
       43 SETTABLEKS                       R6 R5 K13 ["queue"]
       45 LOADNIL                          R6
       46 SETTABLEKS                       R6 R5 K14 ["next"]
       48 GETUPVAL                         R6 8
       49 JUMPIFNOTEQKNIL                  R6 ; [+6]
       51 GETUPVAL                         R6 2
       52 SETTABLEKS                       R5 R6 K10 ["memoizedState"]
       54 SETUPVAL                         R5 8
       55 JUMP                             ; [+4]
       56 GETUPVAL                         R6 8
       57 SETTABLEKS                       R5 R6 K14 ["next"]
       59 SETUPVAL                         R5 8
       60 GETUPVAL                         R4 8
       61 GETUPVAL                         R5 2
       62 GETUPVAL                         R8 2
       63 GETTABLEKS                       R7 R8 K16 ["flags"]
       65 FASTCALL2                        BIT32_BOR R7 R2 ; [+4]
       67 MOVE                             R8 R2
       68 GETIMPORT                        R6 K9 [bit32.bor]
       70 CALL                             R6 2 1
       71 SETTABLEKS                       R6 R5 K16 ["flags"]
       73 GETUPVAL                         R5 9
       74 GETUPVAL                         R7 10
       75 FASTCALL2                        BIT32_BOR R7 R3 ; [+4]
       77 MOVE                             R8 R3
       78 GETIMPORT                        R6 K9 [bit32.bor]
       80 CALL                             R6 2 1
       81 MOVE                             R7 R0
       82 LOADNIL                          R8
       83 MOVE                             R9 R1
       84 CALL                             R5 4 1
       85 SETTABLEKS                       R5 R4 K10 ["memoizedState"]
       87 RETURN                           R0 0
       88 GETUPVAL                         R3 5
       89 GETUPVAL                         R4 6
       90 FASTCALL2                        BIT32_BOR R3 R4 ; [+3]
       92 GETIMPORT                        R2 K9 [bit32.bor]
       94 CALL                             R2 2 1
       95 GETUPVAL                         R3 7
       96 DUPTABLE                         R5 K15 [{"memoizedState", "baseState", "baseQueue", "queue", "next"}]
       97 LOADNIL                          R6
       98 SETTABLEKS                       R6 R5 K10 ["memoizedState"]
      100 LOADNIL                          R6
      101 SETTABLEKS                       R6 R5 K11 ["baseState"]
      103 LOADNIL                          R6
      104 SETTABLEKS                       R6 R5 K12 ["baseQueue"]
      106 LOADNIL                          R6
      107 SETTABLEKS                       R6 R5 K13 ["queue"]
      109 LOADNIL                          R6
      110 SETTABLEKS                       R6 R5 K14 ["next"]
      112 GETUPVAL                         R6 8
      113 JUMPIFNOTEQKNIL                  R6 ; [+6]
      115 GETUPVAL                         R6 2
      116 SETTABLEKS                       R5 R6 K10 ["memoizedState"]
      118 SETUPVAL                         R5 8
      119 JUMP                             ; [+4]
      120 GETUPVAL                         R6 8
      121 SETTABLEKS                       R5 R6 K14 ["next"]
      123 SETUPVAL                         R5 8
      124 GETUPVAL                         R4 8
      125 GETUPVAL                         R5 2
      126 GETUPVAL                         R8 2
      127 GETTABLEKS                       R7 R8 K16 ["flags"]
      129 FASTCALL2                        BIT32_BOR R7 R2 ; [+4]
      131 MOVE                             R8 R2
      132 GETIMPORT                        R6 K9 [bit32.bor]
      134 CALL                             R6 2 1
      135 SETTABLEKS                       R6 R5 K16 ["flags"]
      137 GETUPVAL                         R5 9
      138 GETUPVAL                         R7 10
      139 FASTCALL2                        BIT32_BOR R7 R3 ; [+4]
      141 MOVE                             R8 R3
      142 GETIMPORT                        R6 K9 [bit32.bor]
      144 CALL                             R6 2 1
      145 MOVE                             R7 R0
      146 LOADNIL                          R8
      147 MOVE                             R9 R1
      148 CALL                             R5 4 1
      149 SETTABLEKS                       R5 R4 K10 ["memoizedState"]
      151 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+18]
        2 GETIMPORT                        R4 K1 [_G]
        4 GETTABLEKS                       R3 R4 K2 ["jest"]
        6 FASTCALL1                        TYPE R3 ; [+2]
        7 GETIMPORT                        R2 K4 [type]
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKS                    R2 K5 ["nil"] ; [+6]
       12 GETIMPORT                        R3 K1 [_G]
       14 GETTABLEKS                       R2 R3 K6 ["__TESTEZ_RUNNING_TEST__"]
       16 JUMPIFNOT                        R2 ; [+3]
       17 GETUPVAL                         R2 1
       18 GETUPVAL                         R3 2
       19 CALL                             R2 1 0
       20 GETGLOBAL                        R2 K7 ["updateEffectImpl"]
       22 GETUPVAL                         R3 3
       23 GETUPVAL                         R4 4
       24 MOVE                             R5 R0
       25 MOVE                             R6 R1
       26 CALL                             R2 4 0
       27 RETURN                           R0 0

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
       42 GETUPVAL                         R8 6
       43 GETTABLEKS                       R7 R8 K9 ["flags"]
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
      100 GETUPVAL                         R8 6
      101 GETTABLEKS                       R7 R8 K9 ["flags"]
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
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R4 R5 K5 ["keys"]
       32 MOVE                             R5 R1
       33 CALL                             R4 1 1
       34 LENGTH                           R3 R4
       35 JUMPIFEQKN                       R3 K6 [0] ; [+2]
       37 LOADB                            R2 0 +1
       38 LOADB                            R2 1
       39 JUMPIF                           R2 ; [+19]
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R3 R4 K7 ["error"]
       43 LOADK                            R4 K8 ["Expected useImperativeHandle() first argument to either be a ref callback or React.createRef() object. Instead received: %s."]
       44 LOADK                            R6 K9 ["an object with keys {"]
       45 GETUPVAL                         R10 3
       46 GETTABLEKS                       R9 R10 K10 ["join"]
       48 GETUPVAL                         R11 1
       49 GETTABLEKS                       R10 R11 K5 ["keys"]
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
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K3 ["error"]
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
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R3 R4 K6 ["concat"]
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
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K4 ["error"]
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
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["warn"]
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
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R5 R6 K7 ["error"]
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
       79 JUMP                             ; [+92]
       80 GETTABLEKS                       R8 R0 K17 ["lanes"]
       82 GETUPVAL                         R9 7
       83 JUMPIFNOTEQ                      R8 R9 ; [+60]
       85 JUMPIFEQKNIL                     R7 ; [+6]
       87 GETTABLEKS                       R8 R7 K17 ["lanes"]
       89 GETUPVAL                         R9 7
       90 JUMPIFNOTEQ                      R8 R9 ; [+53]
       92 GETTABLEKS                       R8 R1 K18 ["lastRenderedReducer"]
       94 JUMPIFEQKNIL                     R8 ; [+49]
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
      141 JUMPIFNOT                        R13 ; [+1]
      142 RETURN                           R0 0
      143 JUMPIF                           R11 ; [0]
      144 GETUPVAL                         R8 0
      145 JUMPIFNOT                        R8 ; [+21]
      146 GETIMPORT                        R10 K25 [_G]
      148 GETTABLEKS                       R9 R10 K26 ["jest"]
      150 FASTCALL1                        TYPE R9 ; [+2]
      151 GETIMPORT                        R8 K5 [type]
      153 CALL                             R8 1 1
      154 JUMPIFNOTEQKS                    R8 K27 ["nil"] ; [+6]
      156 GETIMPORT                        R9 K25 [_G]
      158 GETTABLEKS                       R8 R9 K28 ["__TESTEZ_RUNNING_TEST__"]
      160 JUMPIFNOT                        R8 ; [+6]
      161 GETUPVAL                         R8 10
      162 MOVE                             R9 R0
      163 CALL                             R8 1 0
      164 GETUPVAL                         R8 11
      165 MOVE                             R9 R0
      166 CALL                             R8 1 0
      167 GETUPVAL                         R8 12
      168 MOVE                             R9 R0
      169 MOVE                             R10 R4
      170 MOVE                             R11 R3
      171 CALL                             R8 3 0
      172 GETUPVAL                         R8 0
      173 JUMPIFNOT                        R8 ; [+22]
      174 GETUPVAL                         R8 13
      175 JUMPIFNOT                        R8 ; [+20]
      176 GETTABLEKS                       R9 R0 K29 ["mode"]
      178 GETUPVAL                         R10 14
      179 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
      181 GETIMPORT                        R8 K32 [bit32.band]
      183 CALL                             R8 2 1
      184 JUMPIFEQKN                       R8 K23 [0] ; [+11]
      186 GETUPVAL                         R9 15
      187 GETTABLEKS                       R10 R0 K4 ["type"]
      189 CALL                             R9 1 1
      190 ORK                              R8 R9 K33 ["Unknown"]
      191 GETUPVAL                         R9 16
      192 MOVE                             R10 R8
      193 MOVE                             R11 R4
      194 MOVE                             R12 R2
      195 CALL                             R9 3 0
      196 GETUPVAL                         R8 17
      197 JUMPIFNOT                        R8 ; [+4]
      198 GETUPVAL                         R8 18
      199 MOVE                             R9 R0
      200 MOVE                             R10 R4
      201 CALL                             R8 2 0
      202 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["error"]
        3 LOADK                            R1 K1 ["Context can only be read while React is rendering. In classes, you can read it in the render method or getDerivedStateFromProps. In function components, you can read it directly in the function body, but not inside Hooks like useReducer() or useMemo()."]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["error"]
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
       52 GETUPVAL                         R3 3
       53 GETTABLEKS                       R2 R3 K7 ["error"]
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
       52 GETUPVAL                         R3 3
       53 GETTABLEKS                       R2 R3 K7 ["error"]
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
       52 GETUPVAL                         R4 3
       53 GETTABLEKS                       R3 R4 K7 ["error"]
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
       52 GETUPVAL                         R3 3
       53 GETTABLEKS                       R2 R3 K7 ["error"]
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
       52 GETUPVAL                         R3 3
       53 GETTABLEKS                       R2 R3 K7 ["error"]
       55 LOADK                            R3 K8 ["%s received a final argument that is not an array (instead, received `%s`). When specified, the final argument must be an array."]
       56 GETUPVAL                         R4 0
       57 FASTCALL1                        TYPE R1 ; [+3]
       58 MOVE                             R6 R1
       59 GETIMPORT                        R5 K5 [type]
       61 CALL                             R5 1 1
       62 CALL                             R2 3 0
       63 GETUPVAL                         R3 4
       64 GETTABLEKS                       R2 R3 K9 ["current"]
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
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R3 R4 K4 ["current"]
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
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R1 R2 K4 ["current"]
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
       35 GETUPVAL                         R3 2
       36 GETTABLEKS                       R2 R3 K6 ["error"]
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
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["current"]
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
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["current"]
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
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["current"]
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
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["current"]
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
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["current"]
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
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["current"]
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
        5 GETGLOBAL                        R2 K2 ["mountCallback"]
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
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["current"]
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
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K2 ["current"]
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
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K2 ["current"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["error"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K1 ["error"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K1 ["error"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K1 ["error"]
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
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K1 ["error"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K1 ["error"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K1 ["error"]
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
       27 GETUPVAL                         R3 4
       28 GETTABLEKS                       R2 R3 K6 ["current"]
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
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K1 ["error"]
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
       27 GETUPVAL                         R4 4
       28 GETTABLEKS                       R3 R4 K6 ["current"]
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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K1 ["error"]
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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K1 ["error"]
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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K1 ["error"]
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
       27 GETUPVAL                         R2 4
       28 GETTABLEKS                       R1 R2 K6 ["current"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K1 ["error"]
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
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K1 ["error"]
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
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K1 ["error"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["error"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K1 ["error"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K1 ["error"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K1 ["error"]
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
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K1 ["error"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K1 ["error"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETGLOBAL                        R2 K3 ["updateHookTypesDev"]
        9 CALL                             R2 0 0
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K4 ["current"]
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
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K1 ["error"]
        5 LOADK                            R4 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R3 1 0
        7 GETGLOBAL                        R3 K3 ["updateHookTypesDev"]
        9 CALL                             R3 0 0
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K4 ["current"]
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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K1 ["error"]
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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K1 ["error"]
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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K1 ["error"]
        5 LOADK                            R2 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R1 1 0
        7 GETGLOBAL                        R1 K3 ["updateHookTypesDev"]
        9 CALL                             R1 0 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K4 ["current"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K1 ["error"]
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
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K1 ["error"]
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
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K1 ["error"]
        5 LOADK                            R1 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R0 1 0
        7 GETGLOBAL                        R0 K3 ["updateHookTypesDev"]
        9 CALL                             R0 0 0
       10 GETGLOBAL                        R0 K4 ["updateOpaqueIdentifier"]
       12 CALL                             R0 0 -1
       13 RETURN                           R0 -1

PROTO_149:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["error"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K1 ["error"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K1 ["error"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K1 ["error"]
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
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K1 ["error"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K1 ["error"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K1 ["error"]
        5 LOADK                            R3 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R2 1 0
        7 GETGLOBAL                        R2 K3 ["updateHookTypesDev"]
        9 CALL                             R2 0 0
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K4 ["current"]
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
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K1 ["error"]
        5 LOADK                            R4 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R3 1 0
        7 GETGLOBAL                        R3 K3 ["updateHookTypesDev"]
        9 CALL                             R3 0 0
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K4 ["current"]
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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K1 ["error"]
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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K1 ["error"]
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
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K1 ["error"]
        5 LOADK                            R2 K2 ["Do not call Hooks inside useEffect(...), useMemo(...), or other built-in Hooks. You can only call Hooks at the top level of your React function. For more information, see https://reactjs.org/link/rules-of-hooks"]
        6 CALL                             R1 1 0
        7 GETGLOBAL                        R1 K3 ["updateHookTypesDev"]
        9 CALL                             R1 0 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K4 ["current"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K1 ["error"]
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
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K1 ["error"]
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
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K1 ["error"]
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
       74 GETUPVAL                         R10 13
       75 GETTABLEKS                       R9 R10 K7 ["new"]
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
      121 GETUPVAL                         R9 14
      122 GETTABLEKS                       R8 R9 K10 ["next"]
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
      159 GETUPVAL                         R11 13
      160 GETTABLEKS                       R10 R11 K7 ["new"]
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
        2 GETIMPORT                        R2 K2 [_G]
        4 GETTABLEKS                       R1 R2 K3 ["__DEV__"]
        6 GETIMPORT                        R4 K5 [script]
        8 GETTABLEKS                       R3 R4 K6 ["Parent"]
       10 GETTABLEKS                       R2 R3 K6 ["Parent"]
       12 GETIMPORT                        R3 K8 [require]
       14 GETTABLEKS                       R4 R2 K9 ["LuauPolyfill"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K10 ["Array"]
       19 GETTABLEKS                       R5 R3 K11 ["Error"]
       21 GETTABLEKS                       R6 R3 K12 ["Object"]
       23 GETIMPORT                        R8 K8 [require]
       25 GETTABLEKS                       R9 R2 K13 ["React"]
       27 CALL                             R8 1 1
       28 GETTABLEKS                       R7 R8 K14 ["createRef"]
       30 GETIMPORT                        R9 K8 [require]
       32 GETTABLEKS                       R10 R2 K13 ["React"]
       34 CALL                             R9 1 1
       35 GETTABLEKS                       R8 R9 K15 ["createBinding"]
       37 GETIMPORT                        R10 K8 [require]
       39 GETTABLEKS                       R11 R2 K16 ["Shared"]
       41 CALL                             R10 1 1
       42 GETTABLEKS                       R9 R10 K17 ["console"]
       44 GETIMPORT                        R10 K8 [require]
       46 GETTABLEKS                       R11 R2 K16 ["Shared"]
       48 CALL                             R10 1 1
       49 GETIMPORT                        R11 K8 [require]
       51 GETIMPORT                        R14 K5 [script]
       53 GETTABLEKS                       R13 R14 K6 ["Parent"]
       55 GETTABLEKS                       R12 R13 K18 ["ReactInternalTypes"]
       57 CALL                             R11 1 1
       58 GETIMPORT                        R12 K8 [require]
       60 GETIMPORT                        R15 K5 [script]
       62 GETTABLEKS                       R14 R15 K6 ["Parent"]
       64 GETTABLEKS                       R13 R14 K19 ["ReactFiberLane"]
       66 CALL                             R12 1 1
       67 GETIMPORT                        R13 K8 [require]
       69 GETIMPORT                        R16 K5 [script]
       71 GETTABLEKS                       R15 R16 K6 ["Parent"]
       73 GETTABLEKS                       R14 R15 K20 ["ReactHookEffectTags"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R15 K8 [require]
       78 GETTABLEKS                       R16 R2 K16 ["Shared"]
       80 CALL                             R15 1 1
       81 GETTABLEKS                       R14 R15 K21 ["ReactSharedInternals"]
       83 GETIMPORT                        R16 K8 [require]
       85 GETTABLEKS                       R17 R2 K16 ["Shared"]
       87 CALL                             R16 1 1
       88 GETTABLEKS                       R15 R16 K22 ["ReactFeatureFlags"]
       90 GETTABLEKS                       R16 R15 K23 ["enableDebugTracing"]
       92 GETTABLEKS                       R17 R15 K24 ["enableSchedulingProfiler"]
       94 GETTABLEKS                       R18 R15 K25 ["enableNewReconciler"]
       96 GETTABLEKS                       R19 R15 K26 ["enableDoubleInvokingEffects"]
       98 GETIMPORT                        R21 K8 [require]
      100 GETIMPORT                        R24 K5 [script]
      102 GETTABLEKS                       R23 R24 K6 ["Parent"]
      104 GETTABLEKS                       R22 R23 K27 ["ReactTypeOfMode"]
      106 CALL                             R21 1 1
      107 GETTABLEKS                       R20 R21 K28 ["DebugTracingMode"]
      109 GETTABLEKS                       R21 R12 K29 ["NoLane"]
      111 GETTABLEKS                       R22 R12 K30 ["NoLanes"]
      113 GETTABLEKS                       R23 R12 K31 ["isSubsetOfLanes"]
      115 GETTABLEKS                       R24 R12 K32 ["mergeLanes"]
      117 GETTABLEKS                       R25 R12 K33 ["removeLanes"]
      119 GETTABLEKS                       R26 R12 K34 ["markRootEntangled"]
      121 GETTABLEKS                       R27 R12 K35 ["markRootMutableRead"]
      123 GETIMPORT                        R28 K8 [require]
      125 GETIMPORT                        R31 K5 [script]
      127 GETTABLEKS                       R30 R31 K6 ["Parent"]
      129 GETTABLEKS                       R29 R30 K36 ["ReactFiberNewContext.new"]
      131 CALL                             R28 1 1
      132 GETTABLEKS                       R29 R28 K37 ["readContext"]
      134 GETIMPORT                        R30 K8 [require]
      136 GETIMPORT                        R33 K5 [script]
      138 GETTABLEKS                       R32 R33 K6 ["Parent"]
      140 GETTABLEKS                       R31 R32 K38 ["ReactFiberFlags"]
      142 CALL                             R30 1 1
      143 GETTABLEKS                       R31 R30 K39 ["Update"]
      145 GETTABLEKS                       R32 R30 K40 ["Passive"]
      147 GETTABLEKS                       R33 R30 K41 ["PassiveStatic"]
      149 GETTABLEKS                       R34 R30 K42 ["MountLayoutDev"]
      151 GETTABLEKS                       R35 R30 K43 ["MountPassiveDev"]
      153 GETTABLEKS                       R36 R13 K44 ["HasEffect"]
      155 GETTABLEKS                       R37 R13 K45 ["Layout"]
      157 GETTABLEKS                       R38 R13 K40 ["Passive"]
      159 GETIMPORT                        R39 K8 [require]
      161 GETIMPORT                        R42 K5 [script]
      163 GETTABLEKS                       R41 R42 K6 ["Parent"]
      165 GETTABLEKS                       R40 R41 K46 ["ReactFiberWorkLoop.new"]
      167 CALL                             R39 1 1
      168 GETTABLEKS                       R40 R39 K47 ["warnIfNotCurrentlyActingUpdatesInDEV"]
      170 GETTABLEKS                       R41 R39 K48 ["scheduleUpdateOnFiber"]
      172 GETTABLEKS                       R42 R39 K49 ["warnIfNotScopedWithMatchingAct"]
      174 GETTABLEKS                       R43 R39 K50 ["requestEventTime"]
      176 GETTABLEKS                       R44 R39 K51 ["requestUpdateLane"]
      178 GETTABLEKS                       R45 R39 K52 ["markSkippedUpdateLanes"]
      180 GETTABLEKS                       R46 R39 K53 ["getWorkInProgressRoot"]
      182 GETTABLEKS                       R47 R39 K54 ["warnIfNotCurrentlyActingEffectsInDEV"]
      184 GETIMPORT                        R49 K8 [require]
      186 GETTABLEKS                       R50 R2 K16 ["Shared"]
      188 CALL                             R49 1 1
      189 GETTABLEKS                       R48 R49 K55 ["invariant"]
      191 GETIMPORT                        R50 K8 [require]
      193 GETTABLEKS                       R51 R2 K16 ["Shared"]
      195 CALL                             R50 1 1
      196 GETTABLEKS                       R49 R50 K56 ["getComponentName"]
      198 DUPCLOSURE                       R50 K57 [PROTO_1]
      199 GETIMPORT                        R52 K8 [require]
      201 GETIMPORT                        R55 K5 [script]
      203 GETTABLEKS                       R54 R55 K6 ["Parent"]
      205 GETTABLEKS                       R53 R54 K58 ["ReactFiberBeginWork.new"]
      207 CALL                             R52 1 1
      208 GETTABLEKS                       R51 R52 K59 ["markWorkInProgressReceivedUpdate"]
      210 GETIMPORT                        R53 K8 [require]
      212 GETIMPORT                        R56 K5 [script]
      214 GETTABLEKS                       R55 R56 K6 ["Parent"]
      216 GETTABLEKS                       R54 R55 K60 ["ReactFiberHydrationContext.new"]
      218 CALL                             R53 1 1
      219 GETTABLEKS                       R52 R53 K61 ["getIsHydrating"]
      221 GETIMPORT                        R53 K8 [require]
      223 GETIMPORT                        R56 K5 [script]
      225 GETTABLEKS                       R55 R56 K6 ["Parent"]
      227 GETTABLEKS                       R54 R55 K62 ["ReactFiberHostConfig"]
      229 CALL                             R53 1 1
      230 GETTABLEKS                       R54 R53 K63 ["makeClientId"]
      232 GETIMPORT                        R55 K8 [require]
      234 GETIMPORT                        R58 K5 [script]
      236 GETTABLEKS                       R57 R58 K6 ["Parent"]
      238 GETTABLEKS                       R56 R57 K64 ["ReactMutableSource.new"]
      240 CALL                             R55 1 1
      241 GETTABLEKS                       R56 R55 K65 ["warnAboutMultipleRenderersDEV"]
      243 GETTABLEKS                       R57 R55 K66 ["getWorkInProgressVersion"]
      245 GETTABLEKS                       R58 R55 K67 ["setWorkInProgressVersion"]
      247 GETTABLEKS                       R59 R55 K68 ["markSourceAsDirty"]
      249 GETIMPORT                        R61 K8 [require]
      251 GETIMPORT                        R64 K5 [script]
      253 GETTABLEKS                       R63 R64 K6 ["Parent"]
      255 GETTABLEKS                       R62 R63 K69 ["DebugTracing"]
      257 CALL                             R61 1 1
      258 GETTABLEKS                       R60 R61 K70 ["logStateUpdateScheduled"]
      260 GETIMPORT                        R62 K8 [require]
      262 GETIMPORT                        R65 K5 [script]
      264 GETTABLEKS                       R64 R65 K6 ["Parent"]
      266 GETTABLEKS                       R63 R64 K71 ["SchedulingProfiler"]
      268 CALL                             R62 1 1
      269 GETTABLEKS                       R61 R62 K72 ["markStateUpdateScheduled"]
      271 GETTABLEKS                       R62 R14 K73 ["ReactCurrentDispatcher"]
      273 LOADNIL                          R63
      274 LOADNIL                          R64
      275 JUMPIFNOT                        R1 ; [+4]
      276 NEWTABLE                         R64 0 0
      278 NEWTABLE                         R63 0 0
      280 NEWTABLE                         R65 8 0
      282 MOVE                             R66 R22
      283 LOADNIL                          R67
      284 LOADNIL                          R68
      285 LOADNIL                          R69
      286 LOADB                            R70 0
      287 LOADB                            R71 0
      288 LOADNIL                          R72
      289 LOADNIL                          R73
      290 LOADN                            R74 0
      291 LOADNIL                          R75
      292 LOADNIL                          R76
      293 LOADNIL                          R77
      294 LOADNIL                          R78
      295 LOADNIL                          R79
      296 LOADNIL                          R80
      297 LOADNIL                          R81
      298 DUPCLOSURE                       R82 K74 [PROTO_2]
      299 DUPCLOSURE                       R83 K75 [PROTO_3]
      300 NEWCLOSURE                       R84 P4
      301 CAPTURE                          VAL R1
      302 CAPTURE                          REF R72
      303 CAPTURE                          REF R73
      304 NEWCLOSURE                       R85 P5
      305 CAPTURE                          VAL R1
      306 CAPTURE                          REF R72
      307 CAPTURE                          REF R73
      308 CAPTURE                          REF R74
      309 SETGLOBAL                        R85 K76 ["updateHookTypesDev"]
      311 NEWCLOSURE                       R85 P6
      312 CAPTURE                          VAL R1
      313 CAPTURE                          VAL R9
      314 CAPTURE                          REF R72
      315 NEWCLOSURE                       R86 P7
      316 CAPTURE                          VAL R1
      317 CAPTURE                          VAL R49
      318 CAPTURE                          REF R67
      319 CAPTURE                          REF R63
      320 CAPTURE                          REF R73
      321 CAPTURE                          REF R74
      322 CAPTURE                          VAL R9
      323 SETGLOBAL                        R86 K77 ["warnOnHookMismatchInDev"]
      325 DUPCLOSURE                       R86 K78 [PROTO_8]
      326 CAPTURE                          VAL R5
      327 NEWCLOSURE                       R87 P9
      328 CAPTURE                          VAL R1
      329 CAPTURE                          VAL R9
      330 CAPTURE                          REF R72
      331 DUPCLOSURE                       R88 K79 [PROTO_10]
      332 CAPTURE                          VAL R1
      333 CAPTURE                          VAL R19
      334 CAPTURE                          VAL R35
      335 CAPTURE                          VAL R32
      336 CAPTURE                          VAL R34
      337 CAPTURE                          VAL R31
      338 CAPTURE                          VAL R25
      339 SETTABLEKS                       R88 R65 K80 ["bailoutHooks"]
      341 LOADB                            R88 0
      342 NEWCLOSURE                       R89 P11
      343 CAPTURE                          VAL R62
      344 CAPTURE                          VAL R65
      345 CAPTURE                          REF R70
      346 CAPTURE                          REF R67
      347 CAPTURE                          REF R66
      348 CAPTURE                          VAL R22
      349 CAPTURE                          REF R68
      350 CAPTURE                          REF R69
      351 CAPTURE                          VAL R1
      352 CAPTURE                          REF R73
      353 CAPTURE                          REF R74
      354 CAPTURE                          REF R72
      355 CAPTURE                          REF R88
      356 CAPTURE                          REF R71
      357 SETTABLEKS                       R89 R65 K81 ["resetHooksAfterThrow"]
      359 NEWCLOSURE                       R89 P12
      360 CAPTURE                          REF R69
      361 CAPTURE                          REF R67
      362 NEWCLOSURE                       R90 P13
      363 CAPTURE                          REF R68
      364 CAPTURE                          REF R67
      365 CAPTURE                          REF R69
      366 CAPTURE                          VAL R5
      367 DUPCLOSURE                       R91 K82 [PROTO_14]
      368 SETGLOBAL                        R91 K83 ["basicStateReducer"]
      370 NEWCLOSURE                       R91 P15
      371 CAPTURE                          REF R69
      372 CAPTURE                          REF R67
      373 SETGLOBAL                        R91 K84 ["mountReducer"]
      375 NEWCLOSURE                       R91 P16
      376 CAPTURE                          VAL R90
      377 CAPTURE                          REF R68
      378 CAPTURE                          REF R66
      379 CAPTURE                          REF R67
      380 CAPTURE                          VAL R24
      381 CAPTURE                          VAL R45
      382 CAPTURE                          VAL R21
      383 CAPTURE                          VAL R51
      384 SETGLOBAL                        R91 K85 ["updateReducer"]
      386 DUPCLOSURE                       R91 K86 [PROTO_18]
      387 CAPTURE                          VAL R90
      388 CAPTURE                          VAL R51
      389 SETGLOBAL                        R91 K87 ["rerenderReducer"]
      391 NEWCLOSURE                       R91 P18
      392 CAPTURE                          VAL R1
      393 CAPTURE                          VAL R56
      394 CAPTURE                          VAL R57
      395 CAPTURE                          VAL R23
      396 CAPTURE                          REF R66
      397 CAPTURE                          VAL R58
      398 CAPTURE                          VAL R9
      399 CAPTURE                          VAL R59
      400 CAPTURE                          VAL R5
      401 SETGLOBAL                        R91 K88 ["readFromUnsubcribedMutableSource"]
      403 NEWCLOSURE                       R91 P19
      404 CAPTURE                          VAL R46
      405 CAPTURE                          VAL R48
      406 CAPTURE                          VAL R62
      407 CAPTURE                          REF R69
      408 CAPTURE                          REF R67
      409 CAPTURE                          VAL R1
      410 CAPTURE                          VAL R9
      411 CAPTURE                          VAL R44
      412 CAPTURE                          VAL R27
      413 CAPTURE                          VAL R26
      414 SETGLOBAL                        R91 K89 ["useMutableSource"]
      416 NEWCLOSURE                       R91 P20
      417 CAPTURE                          REF R69
      418 CAPTURE                          REF R67
      419 SETGLOBAL                        R91 K90 ["mountMutableSource"]
      421 DUPCLOSURE                       R91 K91 [PROTO_29]
      422 CAPTURE                          VAL R90
      423 SETGLOBAL                        R91 K92 ["updateMutableSource"]
      425 NEWCLOSURE                       R91 P22
      426 CAPTURE                          REF R69
      427 CAPTURE                          REF R67
      428 SETGLOBAL                        R91 K93 ["mountState"]
      430 DUPCLOSURE                       R91 K94 [PROTO_32]
      431 SETGLOBAL                        R91 K95 ["updateState"]
      433 DUPCLOSURE                       R91 K96 [PROTO_33]
      434 SETGLOBAL                        R91 K97 ["rerenderState"]
      436 NEWCLOSURE                       R91 P25
      437 CAPTURE                          REF R67
      438 NEWCLOSURE                       R92 P26
      439 CAPTURE                          REF R69
      440 CAPTURE                          REF R67
      441 CAPTURE                          VAL R8
      442 SETGLOBAL                        R92 K98 ["mountBinding"]
      444 DUPCLOSURE                       R92 K99 [PROTO_36]
      445 CAPTURE                          VAL R90
      446 SETGLOBAL                        R92 K100 ["updateBinding"]
      448 NEWCLOSURE                       R92 P28
      449 CAPTURE                          REF R69
      450 CAPTURE                          REF R67
      451 CAPTURE                          VAL R7
      452 SETGLOBAL                        R92 K101 ["mountRef"]
      454 DUPCLOSURE                       R92 K102 [PROTO_38]
      455 CAPTURE                          VAL R90
      456 SETGLOBAL                        R92 K103 ["updateRef"]
      458 NEWCLOSURE                       R92 P30
      459 CAPTURE                          REF R69
      460 CAPTURE                          REF R67
      461 CAPTURE                          VAL R91
      462 CAPTURE                          VAL R36
      463 NEWCLOSURE                       R93 P31
      464 CAPTURE                          VAL R90
      465 CAPTURE                          REF R68
      466 CAPTURE                          VAL R87
      467 CAPTURE                          VAL R91
      468 CAPTURE                          REF R67
      469 CAPTURE                          VAL R36
      470 SETGLOBAL                        R93 K104 ["updateEffectImpl"]
      472 NEWCLOSURE                       R93 P32
      473 CAPTURE                          VAL R1
      474 CAPTURE                          VAL R47
      475 CAPTURE                          REF R67
      476 CAPTURE                          VAL R19
      477 CAPTURE                          VAL R35
      478 CAPTURE                          VAL R32
      479 CAPTURE                          VAL R33
      480 CAPTURE                          VAL R38
      481 CAPTURE                          REF R69
      482 CAPTURE                          VAL R91
      483 CAPTURE                          VAL R36
      484 NEWCLOSURE                       R94 P33
      485 CAPTURE                          VAL R1
      486 CAPTURE                          VAL R47
      487 CAPTURE                          REF R67
      488 CAPTURE                          VAL R32
      489 CAPTURE                          VAL R38
      490 NEWCLOSURE                       R95 P34
      491 CAPTURE                          VAL R1
      492 CAPTURE                          VAL R19
      493 CAPTURE                          VAL R34
      494 CAPTURE                          VAL R31
      495 CAPTURE                          VAL R37
      496 CAPTURE                          REF R69
      497 CAPTURE                          REF R67
      498 CAPTURE                          VAL R91
      499 CAPTURE                          VAL R36
      500 DUPCLOSURE                       R96 K105 [PROTO_44]
      501 CAPTURE                          VAL R31
      502 CAPTURE                          VAL R37
      503 DUPCLOSURE                       R97 K106 [PROTO_47]
      504 CAPTURE                          VAL R1
      505 CAPTURE                          VAL R6
      506 CAPTURE                          VAL R9
      507 CAPTURE                          VAL R4
      508 SETGLOBAL                        R97 K107 ["imperativeHandleEffect"]
      510 DUPCLOSURE                       R97 K108 [PROTO_50]
      511 CAPTURE                          VAL R1
      512 CAPTURE                          VAL R9
      513 CAPTURE                          VAL R4
      514 CAPTURE                          VAL R19
      515 CAPTURE                          VAL R92
      516 CAPTURE                          VAL R34
      517 CAPTURE                          VAL R31
      518 CAPTURE                          VAL R37
      519 SETGLOBAL                        R97 K109 ["mountImperativeHandle"]
      521 DUPCLOSURE                       R97 K110 [PROTO_52]
      522 CAPTURE                          VAL R1
      523 CAPTURE                          VAL R9
      524 CAPTURE                          VAL R31
      525 CAPTURE                          VAL R37
      526 SETGLOBAL                        R97 K111 ["updateImperativeHandle"]
      528 DUPCLOSURE                       R97 K112 [PROTO_53]
      529 SETGLOBAL                        R97 K113 ["mountDebugValue"]
      531 GETGLOBAL                        R97 K113 ["mountDebugValue"]
      533 NEWCLOSURE                       R98 P40
      534 CAPTURE                          REF R69
      535 CAPTURE                          REF R67
      536 SETGLOBAL                        R98 K114 ["mountCallback"]
      538 DUPCLOSURE                       R98 K115 [PROTO_55]
      539 CAPTURE                          VAL R90
      540 CAPTURE                          VAL R87
      541 SETGLOBAL                        R98 K116 ["updateCallback"]
      543 NEWCLOSURE                       R98 P42
      544 CAPTURE                          REF R69
      545 CAPTURE                          REF R67
      546 SETGLOBAL                        R98 K117 ["mountMemo"]
      548 DUPCLOSURE                       R98 K118 [PROTO_57]
      549 CAPTURE                          VAL R90
      550 CAPTURE                          VAL R87
      551 SETGLOBAL                        R98 K119 ["updateMemo"]
      553 DUPCLOSURE                       R98 K120 [PROTO_58]
      554 CAPTURE                          VAL R1
      555 SETTABLEKS                       R98 R65 K121 ["getIsUpdatingOpaqueValueInRenderPhaseInDEV"]
      557 DUPCLOSURE                       R98 K122 [PROTO_59]
      558 CAPTURE                          VAL R1
      559 CAPTURE                          VAL R9
      560 CAPTURE                          VAL R54
      561 CAPTURE                          VAL R52
      562 SETGLOBAL                        R98 K123 ["mountOpaqueIdentifier"]
      564 DUPCLOSURE                       R98 K124 [PROTO_60]
      565 SETGLOBAL                        R98 K125 ["updateOpaqueIdentifier"]
      567 DUPCLOSURE                       R98 K126 [PROTO_61]
      568 SETGLOBAL                        R98 K127 ["rerenderOpaqueIdentifier"]
      570 NEWCLOSURE                       R98 P48
      571 CAPTURE                          VAL R1
      572 CAPTURE                          VAL R9
      573 CAPTURE                          VAL R43
      574 CAPTURE                          VAL R44
      575 CAPTURE                          REF R67
      576 CAPTURE                          REF R70
      577 CAPTURE                          REF R71
      578 CAPTURE                          VAL R22
      579 CAPTURE                          VAL R62
      580 CAPTURE                          REF R80
      581 CAPTURE                          VAL R42
      582 CAPTURE                          VAL R40
      583 CAPTURE                          VAL R41
      584 CAPTURE                          VAL R16
      585 CAPTURE                          VAL R20
      586 CAPTURE                          VAL R49
      587 CAPTURE                          VAL R60
      588 CAPTURE                          VAL R17
      589 CAPTURE                          VAL R61
      590 SETGLOBAL                        R98 K128 ["dispatchAction"]
      592 DUPTABLE                         R98 K142 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      593 SETTABLEKS                       R29 R98 K37 ["readContext"]
      595 SETTABLEKS                       R86 R98 K129 ["useCallback"]
      597 SETTABLEKS                       R86 R98 K130 ["useContext"]
      599 SETTABLEKS                       R86 R98 K131 ["useEffect"]
      601 SETTABLEKS                       R86 R98 K132 ["useImperativeHandle"]
      603 SETTABLEKS                       R86 R98 K133 ["useLayoutEffect"]
      605 SETTABLEKS                       R86 R98 K134 ["useMemo"]
      607 SETTABLEKS                       R86 R98 K135 ["useReducer"]
      609 SETTABLEKS                       R86 R98 K136 ["useRef"]
      611 SETTABLEKS                       R86 R98 K137 ["useBinding"]
      613 SETTABLEKS                       R86 R98 K138 ["useState"]
      615 SETTABLEKS                       R86 R98 K139 ["useDebugValue"]
      617 SETTABLEKS                       R86 R98 K89 ["useMutableSource"]
      619 SETTABLEKS                       R86 R98 K140 ["useOpaqueIdentifier"]
      621 SETTABLEKS                       R18 R98 K141 ["unstable_isNewReconciler"]
      623 SETTABLEKS                       R98 R65 K143 ["ContextOnlyDispatcher"]
      625 DUPTABLE                         R99 K142 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      626 SETTABLEKS                       R29 R99 K37 ["readContext"]
      628 GETGLOBAL                        R100 K114 ["mountCallback"]
      630 SETTABLEKS                       R100 R99 K129 ["useCallback"]
      632 SETTABLEKS                       R29 R99 K130 ["useContext"]
      634 SETTABLEKS                       R93 R99 K131 ["useEffect"]
      636 GETGLOBAL                        R100 K109 ["mountImperativeHandle"]
      638 SETTABLEKS                       R100 R99 K132 ["useImperativeHandle"]
      640 SETTABLEKS                       R95 R99 K133 ["useLayoutEffect"]
      642 GETGLOBAL                        R100 K117 ["mountMemo"]
      644 SETTABLEKS                       R100 R99 K134 ["useMemo"]
      646 GETGLOBAL                        R100 K84 ["mountReducer"]
      648 SETTABLEKS                       R100 R99 K135 ["useReducer"]
      650 GETGLOBAL                        R100 K101 ["mountRef"]
      652 SETTABLEKS                       R100 R99 K136 ["useRef"]
      654 GETGLOBAL                        R100 K98 ["mountBinding"]
      656 SETTABLEKS                       R100 R99 K137 ["useBinding"]
      658 GETGLOBAL                        R100 K93 ["mountState"]
      660 SETTABLEKS                       R100 R99 K138 ["useState"]
      662 GETGLOBAL                        R100 K113 ["mountDebugValue"]
      664 SETTABLEKS                       R100 R99 K139 ["useDebugValue"]
      666 GETGLOBAL                        R100 K90 ["mountMutableSource"]
      668 SETTABLEKS                       R100 R99 K89 ["useMutableSource"]
      670 GETGLOBAL                        R100 K123 ["mountOpaqueIdentifier"]
      672 SETTABLEKS                       R100 R99 K140 ["useOpaqueIdentifier"]
      674 SETTABLEKS                       R18 R99 K141 ["unstable_isNewReconciler"]
      676 DUPTABLE                         R100 K142 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      677 SETTABLEKS                       R29 R100 K37 ["readContext"]
      679 GETGLOBAL                        R101 K116 ["updateCallback"]
      681 SETTABLEKS                       R101 R100 K129 ["useCallback"]
      683 SETTABLEKS                       R29 R100 K130 ["useContext"]
      685 SETTABLEKS                       R94 R100 K131 ["useEffect"]
      687 GETGLOBAL                        R101 K111 ["updateImperativeHandle"]
      689 SETTABLEKS                       R101 R100 K132 ["useImperativeHandle"]
      691 SETTABLEKS                       R96 R100 K133 ["useLayoutEffect"]
      693 GETGLOBAL                        R101 K119 ["updateMemo"]
      695 SETTABLEKS                       R101 R100 K134 ["useMemo"]
      697 GETGLOBAL                        R101 K85 ["updateReducer"]
      699 SETTABLEKS                       R101 R100 K135 ["useReducer"]
      701 GETGLOBAL                        R101 K103 ["updateRef"]
      703 SETTABLEKS                       R101 R100 K136 ["useRef"]
      705 GETGLOBAL                        R101 K100 ["updateBinding"]
      707 SETTABLEKS                       R101 R100 K137 ["useBinding"]
      709 GETGLOBAL                        R101 K95 ["updateState"]
      711 SETTABLEKS                       R101 R100 K138 ["useState"]
      713 SETTABLEKS                       R97 R100 K139 ["useDebugValue"]
      715 GETGLOBAL                        R101 K92 ["updateMutableSource"]
      717 SETTABLEKS                       R101 R100 K89 ["useMutableSource"]
      719 GETGLOBAL                        R101 K125 ["updateOpaqueIdentifier"]
      721 SETTABLEKS                       R101 R100 K140 ["useOpaqueIdentifier"]
      723 SETTABLEKS                       R18 R100 K141 ["unstable_isNewReconciler"]
      725 DUPTABLE                         R101 K142 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      726 SETTABLEKS                       R29 R101 K37 ["readContext"]
      728 GETGLOBAL                        R102 K116 ["updateCallback"]
      730 SETTABLEKS                       R102 R101 K129 ["useCallback"]
      732 SETTABLEKS                       R29 R101 K130 ["useContext"]
      734 SETTABLEKS                       R94 R101 K131 ["useEffect"]
      736 GETGLOBAL                        R102 K111 ["updateImperativeHandle"]
      738 SETTABLEKS                       R102 R101 K132 ["useImperativeHandle"]
      740 SETTABLEKS                       R96 R101 K133 ["useLayoutEffect"]
      742 GETGLOBAL                        R102 K119 ["updateMemo"]
      744 SETTABLEKS                       R102 R101 K134 ["useMemo"]
      746 GETGLOBAL                        R102 K87 ["rerenderReducer"]
      748 SETTABLEKS                       R102 R101 K135 ["useReducer"]
      750 GETGLOBAL                        R102 K103 ["updateRef"]
      752 SETTABLEKS                       R102 R101 K136 ["useRef"]
      754 GETGLOBAL                        R102 K100 ["updateBinding"]
      756 SETTABLEKS                       R102 R101 K137 ["useBinding"]
      758 GETGLOBAL                        R102 K97 ["rerenderState"]
      760 SETTABLEKS                       R102 R101 K138 ["useState"]
      762 SETTABLEKS                       R97 R101 K139 ["useDebugValue"]
      764 GETGLOBAL                        R102 K92 ["updateMutableSource"]
      766 SETTABLEKS                       R102 R101 K89 ["useMutableSource"]
      768 GETGLOBAL                        R102 K127 ["rerenderOpaqueIdentifier"]
      770 SETTABLEKS                       R102 R101 K140 ["useOpaqueIdentifier"]
      772 SETTABLEKS                       R18 R101 K141 ["unstable_isNewReconciler"]
      774 JUMPIFNOT                        R1 ; [+592]
      775 DUPCLOSURE                       R102 K144 [PROTO_63]
      776 CAPTURE                          VAL R9
      777 DUPCLOSURE                       R103 K145 [PROTO_64]
      778 CAPTURE                          VAL R9
      779 DUPTABLE                         R104 K142 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      780 DUPCLOSURE                       R105 K146 [PROTO_65]
      781 CAPTURE                          VAL R29
      782 SETTABLEKS                       R105 R104 K37 ["readContext"]
      784 NEWCLOSURE                       R105 P52
      785 CAPTURE                          REF R72
      786 CAPTURE                          VAL R1
      787 CAPTURE                          REF R73
      788 CAPTURE                          VAL R9
      789 SETTABLEKS                       R105 R104 K129 ["useCallback"]
      791 NEWCLOSURE                       R105 P53
      792 CAPTURE                          REF R72
      793 CAPTURE                          VAL R1
      794 CAPTURE                          REF R73
      795 CAPTURE                          VAL R29
      796 SETTABLEKS                       R105 R104 K130 ["useContext"]
      798 NEWCLOSURE                       R105 P54
      799 CAPTURE                          REF R72
      800 CAPTURE                          VAL R1
      801 CAPTURE                          REF R73
      802 CAPTURE                          VAL R9
      803 CAPTURE                          VAL R93
      804 SETTABLEKS                       R105 R104 K131 ["useEffect"]
      806 NEWCLOSURE                       R105 P55
      807 CAPTURE                          REF R72
      808 CAPTURE                          VAL R1
      809 CAPTURE                          REF R73
      810 CAPTURE                          VAL R9
      811 SETTABLEKS                       R105 R104 K132 ["useImperativeHandle"]
      813 NEWCLOSURE                       R105 P56
      814 CAPTURE                          REF R72
      815 CAPTURE                          VAL R1
      816 CAPTURE                          REF R73
      817 CAPTURE                          VAL R9
      818 CAPTURE                          VAL R95
      819 SETTABLEKS                       R105 R104 K133 ["useLayoutEffect"]
      821 NEWCLOSURE                       R105 P57
      822 CAPTURE                          REF R72
      823 CAPTURE                          VAL R1
      824 CAPTURE                          REF R73
      825 CAPTURE                          VAL R9
      826 CAPTURE                          VAL R62
      827 CAPTURE                          REF R79
      828 SETTABLEKS                       R105 R104 K134 ["useMemo"]
      830 NEWCLOSURE                       R105 P58
      831 CAPTURE                          REF R72
      832 CAPTURE                          VAL R1
      833 CAPTURE                          REF R73
      834 CAPTURE                          VAL R62
      835 CAPTURE                          REF R79
      836 SETTABLEKS                       R105 R104 K135 ["useReducer"]
      838 NEWCLOSURE                       R105 P59
      839 CAPTURE                          REF R72
      840 CAPTURE                          VAL R1
      841 CAPTURE                          REF R73
      842 SETTABLEKS                       R105 R104 K136 ["useRef"]
      844 NEWCLOSURE                       R105 P60
      845 CAPTURE                          REF R72
      846 CAPTURE                          VAL R1
      847 CAPTURE                          REF R73
      848 SETTABLEKS                       R105 R104 K137 ["useBinding"]
      850 NEWCLOSURE                       R105 P61
      851 CAPTURE                          REF R72
      852 CAPTURE                          VAL R1
      853 CAPTURE                          REF R73
      854 CAPTURE                          VAL R62
      855 CAPTURE                          REF R79
      856 SETTABLEKS                       R105 R104 K138 ["useState"]
      858 NEWCLOSURE                       R105 P62
      859 CAPTURE                          REF R72
      860 CAPTURE                          VAL R1
      861 CAPTURE                          REF R73
      862 SETTABLEKS                       R105 R104 K139 ["useDebugValue"]
      864 NEWCLOSURE                       R105 P63
      865 CAPTURE                          REF R72
      866 CAPTURE                          VAL R1
      867 CAPTURE                          REF R73
      868 SETTABLEKS                       R105 R104 K89 ["useMutableSource"]
      870 NEWCLOSURE                       R105 P64
      871 CAPTURE                          REF R72
      872 CAPTURE                          VAL R1
      873 CAPTURE                          REF R73
      874 SETTABLEKS                       R105 R104 K140 ["useOpaqueIdentifier"]
      876 SETTABLEKS                       R18 R104 K141 ["unstable_isNewReconciler"]
      878 MOVE                             R75 R104
      879 DUPTABLE                         R104 K142 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      880 DUPCLOSURE                       R105 K147 [PROTO_79]
      881 CAPTURE                          VAL R29
      882 SETTABLEKS                       R105 R104 K37 ["readContext"]
      884 NEWCLOSURE                       R105 P66
      885 CAPTURE                          REF R72
      886 CAPTURE                          VAL R1
      887 CAPTURE                          VAL R9
      888 SETTABLEKS                       R105 R104 K129 ["useCallback"]
      890 NEWCLOSURE                       R105 P67
      891 CAPTURE                          REF R72
      892 CAPTURE                          VAL R29
      893 SETTABLEKS                       R105 R104 K130 ["useContext"]
      895 NEWCLOSURE                       R105 P68
      896 CAPTURE                          REF R72
      897 CAPTURE                          VAL R93
      898 SETTABLEKS                       R105 R104 K131 ["useEffect"]
      900 NEWCLOSURE                       R105 P69
      901 CAPTURE                          REF R72
      902 SETTABLEKS                       R105 R104 K132 ["useImperativeHandle"]
      904 NEWCLOSURE                       R105 P70
      905 CAPTURE                          REF R72
      906 CAPTURE                          VAL R95
      907 SETTABLEKS                       R105 R104 K133 ["useLayoutEffect"]
      909 NEWCLOSURE                       R105 P71
      910 CAPTURE                          REF R72
      911 CAPTURE                          VAL R62
      912 CAPTURE                          REF R79
      913 SETTABLEKS                       R105 R104 K134 ["useMemo"]
      915 NEWCLOSURE                       R105 P72
      916 CAPTURE                          REF R72
      917 CAPTURE                          VAL R62
      918 CAPTURE                          REF R79
      919 SETTABLEKS                       R105 R104 K135 ["useReducer"]
      921 NEWCLOSURE                       R105 P73
      922 CAPTURE                          REF R72
      923 SETTABLEKS                       R105 R104 K136 ["useRef"]
      925 NEWCLOSURE                       R105 P74
      926 CAPTURE                          REF R72
      927 SETTABLEKS                       R105 R104 K137 ["useBinding"]
      929 NEWCLOSURE                       R105 P75
      930 CAPTURE                          REF R72
      931 CAPTURE                          VAL R62
      932 CAPTURE                          REF R79
      933 SETTABLEKS                       R105 R104 K138 ["useState"]
      935 NEWCLOSURE                       R105 P76
      936 CAPTURE                          REF R72
      937 SETTABLEKS                       R105 R104 K139 ["useDebugValue"]
      939 NEWCLOSURE                       R105 P77
      940 CAPTURE                          REF R72
      941 SETTABLEKS                       R105 R104 K89 ["useMutableSource"]
      943 NEWCLOSURE                       R105 P78
      944 CAPTURE                          REF R72
      945 SETTABLEKS                       R105 R104 K140 ["useOpaqueIdentifier"]
      947 SETTABLEKS                       R18 R104 K141 ["unstable_isNewReconciler"]
      949 MOVE                             R76 R104
      950 DUPTABLE                         R104 K142 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
      951 DUPCLOSURE                       R105 K148 [PROTO_93]
      952 CAPTURE                          VAL R29
      953 SETTABLEKS                       R105 R104 K37 ["readContext"]
      955 NEWCLOSURE                       R105 P80
      956 CAPTURE                          REF R72
      957 SETTABLEKS                       R105 R104 K129 ["useCallback"]
      959 NEWCLOSURE                       R105 P81
      960 CAPTURE                          REF R72
      961 CAPTURE                          VAL R29
      962 SETTABLEKS                       R105 R104 K130 ["useContext"]
      964 NEWCLOSURE                       R105 P82
      965 CAPTURE                          REF R72
      966 CAPTURE                          VAL R94
      967 SETTABLEKS                       R105 R104 K131 ["useEffect"]
      969 NEWCLOSURE                       R105 P83
      970 CAPTURE                          REF R72
      971 SETTABLEKS                       R105 R104 K132 ["useImperativeHandle"]
      973 NEWCLOSURE                       R105 P84
      974 CAPTURE                          REF R72
      975 CAPTURE                          VAL R96
      976 SETTABLEKS                       R105 R104 K133 ["useLayoutEffect"]
      978 NEWCLOSURE                       R105 P85
      979 CAPTURE                          REF R72
      980 CAPTURE                          VAL R62
      981 CAPTURE                          REF R80
      982 SETTABLEKS                       R105 R104 K134 ["useMemo"]
      984 NEWCLOSURE                       R105 P86
      985 CAPTURE                          REF R72
      986 CAPTURE                          VAL R62
      987 CAPTURE                          REF R80
      988 SETTABLEKS                       R105 R104 K135 ["useReducer"]
      990 NEWCLOSURE                       R105 P87
      991 CAPTURE                          REF R72
      992 SETTABLEKS                       R105 R104 K136 ["useRef"]
      994 NEWCLOSURE                       R105 P88
      995 CAPTURE                          REF R72
      996 SETTABLEKS                       R105 R104 K137 ["useBinding"]
      998 NEWCLOSURE                       R105 P89
      999 CAPTURE                          REF R72
     1000 CAPTURE                          VAL R62
     1001 CAPTURE                          REF R80
     1002 SETTABLEKS                       R105 R104 K138 ["useState"]
     1004 NEWCLOSURE                       R105 P90
     1005 CAPTURE                          REF R72
     1006 CAPTURE                          VAL R97
     1007 SETTABLEKS                       R105 R104 K139 ["useDebugValue"]
     1009 NEWCLOSURE                       R105 P91
     1010 CAPTURE                          REF R72
     1011 SETTABLEKS                       R105 R104 K89 ["useMutableSource"]
     1013 NEWCLOSURE                       R105 P92
     1014 CAPTURE                          REF R72
     1015 SETTABLEKS                       R105 R104 K140 ["useOpaqueIdentifier"]
     1017 SETTABLEKS                       R18 R104 K141 ["unstable_isNewReconciler"]
     1019 MOVE                             R77 R104
     1020 DUPTABLE                         R104 K142 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
     1021 DUPCLOSURE                       R105 K149 [PROTO_107]
     1022 CAPTURE                          VAL R29
     1023 SETTABLEKS                       R105 R104 K37 ["readContext"]
     1025 NEWCLOSURE                       R105 P94
     1026 CAPTURE                          REF R72
     1027 SETTABLEKS                       R105 R104 K129 ["useCallback"]
     1029 NEWCLOSURE                       R105 P95
     1030 CAPTURE                          REF R72
     1031 CAPTURE                          VAL R29
     1032 SETTABLEKS                       R105 R104 K130 ["useContext"]
     1034 NEWCLOSURE                       R105 P96
     1035 CAPTURE                          REF R72
     1036 CAPTURE                          VAL R94
     1037 SETTABLEKS                       R105 R104 K131 ["useEffect"]
     1039 NEWCLOSURE                       R105 P97
     1040 CAPTURE                          REF R72
     1041 SETTABLEKS                       R105 R104 K132 ["useImperativeHandle"]
     1043 NEWCLOSURE                       R105 P98
     1044 CAPTURE                          REF R72
     1045 CAPTURE                          VAL R96
     1046 SETTABLEKS                       R105 R104 K133 ["useLayoutEffect"]
     1048 NEWCLOSURE                       R105 P99
     1049 CAPTURE                          REF R72
     1050 CAPTURE                          VAL R62
     1051 CAPTURE                          REF R81
     1052 SETTABLEKS                       R105 R104 K134 ["useMemo"]
     1054 NEWCLOSURE                       R105 P100
     1055 CAPTURE                          REF R72
     1056 CAPTURE                          VAL R62
     1057 CAPTURE                          REF R81
     1058 SETTABLEKS                       R105 R104 K135 ["useReducer"]
     1060 NEWCLOSURE                       R105 P101
     1061 CAPTURE                          REF R72
     1062 SETTABLEKS                       R105 R104 K136 ["useRef"]
     1064 NEWCLOSURE                       R105 P102
     1065 CAPTURE                          REF R72
     1066 SETTABLEKS                       R105 R104 K137 ["useBinding"]
     1068 NEWCLOSURE                       R105 P103
     1069 CAPTURE                          REF R72
     1070 CAPTURE                          VAL R62
     1071 CAPTURE                          REF R81
     1072 SETTABLEKS                       R105 R104 K138 ["useState"]
     1074 NEWCLOSURE                       R105 P104
     1075 CAPTURE                          REF R72
     1076 CAPTURE                          VAL R97
     1077 SETTABLEKS                       R105 R104 K139 ["useDebugValue"]
     1079 NEWCLOSURE                       R105 P105
     1080 CAPTURE                          REF R72
     1081 SETTABLEKS                       R105 R104 K89 ["useMutableSource"]
     1083 NEWCLOSURE                       R105 P106
     1084 CAPTURE                          REF R72
     1085 SETTABLEKS                       R105 R104 K140 ["useOpaqueIdentifier"]
     1087 SETTABLEKS                       R18 R104 K141 ["unstable_isNewReconciler"]
     1089 MOVE                             R78 R104
     1090 DUPTABLE                         R104 K142 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
     1091 DUPCLOSURE                       R105 K150 [PROTO_121]
     1092 CAPTURE                          VAL R9
     1093 CAPTURE                          VAL R29
     1094 SETTABLEKS                       R105 R104 K37 ["readContext"]
     1096 NEWCLOSURE                       R105 P108
     1097 CAPTURE                          REF R72
     1098 CAPTURE                          VAL R9
     1099 CAPTURE                          VAL R1
     1100 CAPTURE                          REF R73
     1101 SETTABLEKS                       R105 R104 K129 ["useCallback"]
     1103 NEWCLOSURE                       R105 P109
     1104 CAPTURE                          REF R72
     1105 CAPTURE                          VAL R9
     1106 CAPTURE                          VAL R1
     1107 CAPTURE                          REF R73
     1108 CAPTURE                          VAL R29
     1109 SETTABLEKS                       R105 R104 K130 ["useContext"]
     1111 NEWCLOSURE                       R105 P110
     1112 CAPTURE                          REF R72
     1113 CAPTURE                          VAL R9
     1114 CAPTURE                          VAL R1
     1115 CAPTURE                          REF R73
     1116 CAPTURE                          VAL R93
     1117 SETTABLEKS                       R105 R104 K131 ["useEffect"]
     1119 NEWCLOSURE                       R105 P111
     1120 CAPTURE                          REF R72
     1121 CAPTURE                          VAL R9
     1122 CAPTURE                          VAL R1
     1123 CAPTURE                          REF R73
     1124 SETTABLEKS                       R105 R104 K132 ["useImperativeHandle"]
     1126 NEWCLOSURE                       R105 P112
     1127 CAPTURE                          REF R72
     1128 CAPTURE                          VAL R9
     1129 CAPTURE                          VAL R1
     1130 CAPTURE                          REF R73
     1131 CAPTURE                          VAL R95
     1132 SETTABLEKS                       R105 R104 K133 ["useLayoutEffect"]
     1134 NEWCLOSURE                       R105 P113
     1135 CAPTURE                          REF R72
     1136 CAPTURE                          VAL R9
     1137 CAPTURE                          VAL R1
     1138 CAPTURE                          REF R73
     1139 CAPTURE                          VAL R62
     1140 CAPTURE                          REF R79
     1141 SETTABLEKS                       R105 R104 K134 ["useMemo"]
     1143 NEWCLOSURE                       R105 P114
     1144 CAPTURE                          REF R72
     1145 CAPTURE                          VAL R9
     1146 CAPTURE                          VAL R1
     1147 CAPTURE                          REF R73
     1148 CAPTURE                          VAL R62
     1149 CAPTURE                          REF R79
     1150 SETTABLEKS                       R105 R104 K135 ["useReducer"]
     1152 NEWCLOSURE                       R105 P115
     1153 CAPTURE                          REF R72
     1154 CAPTURE                          VAL R9
     1155 CAPTURE                          VAL R1
     1156 CAPTURE                          REF R73
     1157 SETTABLEKS                       R105 R104 K136 ["useRef"]
     1159 NEWCLOSURE                       R105 P116
     1160 CAPTURE                          REF R72
     1161 CAPTURE                          VAL R9
     1162 CAPTURE                          VAL R1
     1163 CAPTURE                          REF R73
     1164 SETTABLEKS                       R105 R104 K137 ["useBinding"]
     1166 NEWCLOSURE                       R105 P117
     1167 CAPTURE                          REF R72
     1168 CAPTURE                          VAL R9
     1169 CAPTURE                          VAL R1
     1170 CAPTURE                          REF R73
     1171 CAPTURE                          VAL R62
     1172 CAPTURE                          REF R79
     1173 SETTABLEKS                       R105 R104 K138 ["useState"]
     1175 NEWCLOSURE                       R105 P118
     1176 CAPTURE                          REF R72
     1177 CAPTURE                          VAL R9
     1178 CAPTURE                          VAL R1
     1179 CAPTURE                          REF R73
     1180 SETTABLEKS                       R105 R104 K139 ["useDebugValue"]
     1182 NEWCLOSURE                       R105 P119
     1183 CAPTURE                          REF R72
     1184 CAPTURE                          VAL R9
     1185 CAPTURE                          VAL R1
     1186 CAPTURE                          REF R73
     1187 SETTABLEKS                       R105 R104 K89 ["useMutableSource"]
     1189 NEWCLOSURE                       R105 P120
     1190 CAPTURE                          REF R72
     1191 CAPTURE                          VAL R9
     1192 CAPTURE                          VAL R1
     1193 CAPTURE                          REF R73
     1194 SETTABLEKS                       R105 R104 K140 ["useOpaqueIdentifier"]
     1196 SETTABLEKS                       R18 R104 K141 ["unstable_isNewReconciler"]
     1198 MOVE                             R79 R104
     1199 DUPTABLE                         R104 K142 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
     1200 DUPCLOSURE                       R105 K151 [PROTO_135]
     1201 CAPTURE                          VAL R9
     1202 CAPTURE                          VAL R29
     1203 SETTABLEKS                       R105 R104 K37 ["readContext"]
     1205 NEWCLOSURE                       R105 P122
     1206 CAPTURE                          REF R72
     1207 CAPTURE                          VAL R9
     1208 SETTABLEKS                       R105 R104 K129 ["useCallback"]
     1210 NEWCLOSURE                       R105 P123
     1211 CAPTURE                          REF R72
     1212 CAPTURE                          VAL R9
     1213 CAPTURE                          VAL R29
     1214 SETTABLEKS                       R105 R104 K130 ["useContext"]
     1216 NEWCLOSURE                       R105 P124
     1217 CAPTURE                          REF R72
     1218 CAPTURE                          VAL R9
     1219 CAPTURE                          VAL R94
     1220 SETTABLEKS                       R105 R104 K131 ["useEffect"]
     1222 NEWCLOSURE                       R105 P125
     1223 CAPTURE                          REF R72
     1224 CAPTURE                          VAL R9
     1225 SETTABLEKS                       R105 R104 K132 ["useImperativeHandle"]
     1227 NEWCLOSURE                       R105 P126
     1228 CAPTURE                          REF R72
     1229 CAPTURE                          VAL R9
     1230 CAPTURE                          VAL R96
     1231 SETTABLEKS                       R105 R104 K133 ["useLayoutEffect"]
     1233 NEWCLOSURE                       R105 P127
     1234 CAPTURE                          REF R72
     1235 CAPTURE                          VAL R9
     1236 CAPTURE                          VAL R62
     1237 CAPTURE                          REF R80
     1238 SETTABLEKS                       R105 R104 K134 ["useMemo"]
     1240 NEWCLOSURE                       R105 P128
     1241 CAPTURE                          REF R72
     1242 CAPTURE                          VAL R9
     1243 CAPTURE                          VAL R62
     1244 CAPTURE                          REF R80
     1245 SETTABLEKS                       R105 R104 K135 ["useReducer"]
     1247 NEWCLOSURE                       R105 P129
     1248 CAPTURE                          REF R72
     1249 CAPTURE                          VAL R9
     1250 SETTABLEKS                       R105 R104 K136 ["useRef"]
     1252 NEWCLOSURE                       R105 P130
     1253 CAPTURE                          REF R72
     1254 CAPTURE                          VAL R9
     1255 SETTABLEKS                       R105 R104 K137 ["useBinding"]
     1257 NEWCLOSURE                       R105 P131
     1258 CAPTURE                          REF R72
     1259 CAPTURE                          VAL R9
     1260 CAPTURE                          VAL R62
     1261 CAPTURE                          REF R80
     1262 SETTABLEKS                       R105 R104 K138 ["useState"]
     1264 NEWCLOSURE                       R105 P132
     1265 CAPTURE                          REF R72
     1266 CAPTURE                          VAL R9
     1267 CAPTURE                          VAL R97
     1268 SETTABLEKS                       R105 R104 K139 ["useDebugValue"]
     1270 NEWCLOSURE                       R105 P133
     1271 CAPTURE                          REF R72
     1272 CAPTURE                          VAL R9
     1273 SETTABLEKS                       R105 R104 K89 ["useMutableSource"]
     1275 NEWCLOSURE                       R105 P134
     1276 CAPTURE                          REF R72
     1277 CAPTURE                          VAL R9
     1278 SETTABLEKS                       R105 R104 K140 ["useOpaqueIdentifier"]
     1280 SETTABLEKS                       R18 R104 K141 ["unstable_isNewReconciler"]
     1282 MOVE                             R80 R104
     1283 DUPTABLE                         R104 K142 [{"readContext", "useCallback", "useContext", "useEffect", "useImperativeHandle", "useLayoutEffect", "useMemo", "useReducer", "useRef", "useBinding", "useState", "useDebugValue", "useMutableSource", "useOpaqueIdentifier", "unstable_isNewReconciler"}]
     1284 DUPCLOSURE                       R105 K152 [PROTO_149]
     1285 CAPTURE                          VAL R9
     1286 CAPTURE                          VAL R29
     1287 SETTABLEKS                       R105 R104 K37 ["readContext"]
     1289 NEWCLOSURE                       R105 P136
     1290 CAPTURE                          REF R72
     1291 CAPTURE                          VAL R9
     1292 SETTABLEKS                       R105 R104 K129 ["useCallback"]
     1294 NEWCLOSURE                       R105 P137
     1295 CAPTURE                          REF R72
     1296 CAPTURE                          VAL R9
     1297 CAPTURE                          VAL R29
     1298 SETTABLEKS                       R105 R104 K130 ["useContext"]
     1300 NEWCLOSURE                       R105 P138
     1301 CAPTURE                          REF R72
     1302 CAPTURE                          VAL R9
     1303 CAPTURE                          VAL R94
     1304 SETTABLEKS                       R105 R104 K131 ["useEffect"]
     1306 NEWCLOSURE                       R105 P139
     1307 CAPTURE                          REF R72
     1308 CAPTURE                          VAL R9
     1309 SETTABLEKS                       R105 R104 K132 ["useImperativeHandle"]
     1311 NEWCLOSURE                       R105 P140
     1312 CAPTURE                          REF R72
     1313 CAPTURE                          VAL R9
     1314 CAPTURE                          VAL R96
     1315 SETTABLEKS                       R105 R104 K133 ["useLayoutEffect"]
     1317 NEWCLOSURE                       R105 P141
     1318 CAPTURE                          REF R72
     1319 CAPTURE                          VAL R9
     1320 CAPTURE                          VAL R62
     1321 CAPTURE                          REF R80
     1322 SETTABLEKS                       R105 R104 K134 ["useMemo"]
     1324 NEWCLOSURE                       R105 P142
     1325 CAPTURE                          REF R72
     1326 CAPTURE                          VAL R9
     1327 CAPTURE                          VAL R62
     1328 CAPTURE                          REF R80
     1329 SETTABLEKS                       R105 R104 K135 ["useReducer"]
     1331 NEWCLOSURE                       R105 P143
     1332 CAPTURE                          REF R72
     1333 CAPTURE                          VAL R9
     1334 SETTABLEKS                       R105 R104 K136 ["useRef"]
     1336 NEWCLOSURE                       R105 P144
     1337 CAPTURE                          REF R72
     1338 CAPTURE                          VAL R9
     1339 SETTABLEKS                       R105 R104 K137 ["useBinding"]
     1341 NEWCLOSURE                       R105 P145
     1342 CAPTURE                          REF R72
     1343 CAPTURE                          VAL R9
     1344 CAPTURE                          VAL R62
     1345 CAPTURE                          REF R80
     1346 SETTABLEKS                       R105 R104 K138 ["useState"]
     1348 NEWCLOSURE                       R105 P146
     1349 CAPTURE                          REF R72
     1350 CAPTURE                          VAL R9
     1351 CAPTURE                          VAL R97
     1352 SETTABLEKS                       R105 R104 K139 ["useDebugValue"]
     1354 NEWCLOSURE                       R105 P147
     1355 CAPTURE                          REF R72
     1356 CAPTURE                          VAL R9
     1357 SETTABLEKS                       R105 R104 K89 ["useMutableSource"]
     1359 NEWCLOSURE                       R105 P148
     1360 CAPTURE                          REF R72
     1361 CAPTURE                          VAL R9
     1362 SETTABLEKS                       R105 R104 K140 ["useOpaqueIdentifier"]
     1364 SETTABLEKS                       R18 R104 K141 ["unstable_isNewReconciler"]
     1366 MOVE                             R81 R104
     1367 NEWCLOSURE                       R102 P149
     1368 CAPTURE                          REF R66
     1369 CAPTURE                          REF R67
     1370 CAPTURE                          VAL R1
     1371 CAPTURE                          REF R73
     1372 CAPTURE                          REF R74
     1373 CAPTURE                          VAL R22
     1374 CAPTURE                          VAL R62
     1375 CAPTURE                          REF R77
     1376 CAPTURE                          REF R76
     1377 CAPTURE                          REF R75
     1378 CAPTURE                          VAL R99
     1379 CAPTURE                          VAL R100
     1380 CAPTURE                          REF R71
     1381 CAPTURE                          VAL R5
     1382 CAPTURE                          REF R68
     1383 CAPTURE                          REF R69
     1384 CAPTURE                          REF R78
     1385 CAPTURE                          VAL R101
     1386 CAPTURE                          VAL R98
     1387 CAPTURE                          REF R72
     1388 CAPTURE                          REF R70
     1389 CAPTURE                          VAL R49
     1390 SETTABLEKS                       R102 R65 K153 ["renderWithHooks"]
     1392 CLOSEUPVALS                      R63
     1393 RETURN                           R65 1
