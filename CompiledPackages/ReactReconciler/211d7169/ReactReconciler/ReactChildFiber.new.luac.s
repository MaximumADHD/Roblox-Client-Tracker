PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R2 R0 K3 ["_store"]
       12 JUMPIFNOT                        R2 ; [+9]
       13 GETTABLEKS                       R3 R0 K3 ["_store"]
       15 GETTABLEKS                       R2 R3 K4 ["validated"]
       17 JUMPIF                           R2 ; [+4]
       18 GETTABLEKS                       R2 R0 K5 ["key"]
       20 JUMPIFEQKNIL                     R2 ; [+2]
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 0
       24 LOADB                            R3 0
       25 GETTABLEKS                       R4 R0 K3 ["_store"]
       27 JUMPIFEQKNIL                     R4 ; [+11]
       29 GETTABLEKS                       R5 R0 K3 ["_store"]
       31 FASTCALL1                        TYPEOF R5 ; [+2]
       32 GETIMPORT                        R4 K1 [typeof]
       34 CALL                             R4 1 1
       35 JUMPIFEQKS                       R4 K2 ["table"] ; [+2]
       37 LOADB                            R3 0 +1
       38 LOADB                            R3 1
       39 LOADK                            R4 K6 ["React Component in warnForMissingKey should have a _store. This error is likely caused by a bug in React. Please file an issue."]
       40 CALL                             R2 2 0
       41 GETTABLEKS                       R2 R0 K3 ["_store"]
       43 LOADB                            R3 1
       44 SETTABLEKS                       R3 R2 K4 ["validated"]
       46 GETUPVAL                         R3 1
       47 GETTABLEKS                       R4 R1 K8 ["type"]
       49 CALL                             R3 1 1
       50 ORK                              R2 R3 K7 ["Component"]
       51 GETUPVAL                         R4 2
       52 GETTABLE                         R3 R4 R2
       53 JUMPIFNOT                        R3 ; [+1]
       54 RETURN                           R0 0
       55 GETUPVAL                         R3 2
       56 LOADB                            R4 1
       57 SETTABLE                         R4 R3 R2
       58 GETUPVAL                         R4 3
       59 GETTABLEKS                       R3 R4 K9 ["error"]
       61 LOADK                            R4 K10 ["Each child in a list should have a unique \"key\" prop. See https://reactjs.org/link/warning-keys for more information."]
       62 CALL                             R3 1 0
       63 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R2 K0 ["ref"]
        2 JUMPIFEQKNIL                     R3 ; [+59]
        4 FASTCALL1                        TYPEOF R3 ; [+3]
        5 MOVE                             R5 R3
        6 GETIMPORT                        R4 K2 [typeof]
        8 CALL                             R4 1 1
        9 JUMPIFNOTEQKS                    R4 K3 ["string"] ; [+52]
       11 GETTABLEKS                       R4 R2 K4 ["_owner"]
       13 JUMPIFNOT                        R4 ; [+11]
       14 GETTABLEKS                       R4 R2 K5 ["_self"]
       16 JUMPIFNOT                        R4 ; [+8]
       17 GETTABLEKS                       R5 R2 K4 ["_owner"]
       19 GETTABLEKS                       R4 R5 K6 ["stateNode"]
       21 GETTABLEKS                       R5 R2 K5 ["_self"]
       23 JUMPIFNOTEQ                      R4 R5 ; [+31]
       25 LOADNIL                          R4
       26 GETIMPORT                        R6 K8 [_G]
       28 GETTABLEKS                       R5 R6 K9 ["__DEV__"]
       30 JUMPIFNOT                        R5 ; [+6]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R6 R0 K11 ["type"]
       34 CALL                             R5 1 1
       35 ORK                              R4 R5 K10 ["Component"]
       36 JUMP                             ; [+1]
       37 LOADK                            R4 K12 ["<enable __DEV__ mode for component names>"]
       38 GETIMPORT                        R5 K14 [error]
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R6 R7 K15 ["new"]
       43 GETIMPORT                        R7 K17 [string.format]
       45 LOADK                            R8 K18 ["Component \"%s\" contains the string ref \"%s\". Support for string refs has been removed. We recommend using useRef() or createRef() instead. Learn more about using refs safely here: https://reactjs.org/link/strict-mode-string-ref"]
       46 MOVE                             R9 R4
       47 FASTCALL1                        TOSTRING R3 ; [+3]
       48 MOVE                             R11 R3
       49 GETIMPORT                        R10 K20 [tostring]
       51 CALL                             R10 1 1
       52 CALL                             R7 3 -1
       53 CALL                             R6 -1 -1
       54 CALL                             R5 -1 0
       55 GETTABLEKS                       R4 R2 K4 ["_owner"]
       57 JUMPIF                           R4 ; [+4]
       58 GETIMPORT                        R4 K14 [error]
       60 LOADK                            R5 K21 ["Expected ref to be a function or an object returned by React.createRef(), or nil."]
       61 CALL                             R4 1 0
       62 RETURN                           R3 1

PROTO_3:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R1 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R1 ; [+17]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R3 R0 K4 ["type"]
        8 CALL                             R2 1 1
        9 ORK                              R1 R2 K3 ["Component"]
       10 GETUPVAL                         R3 1
       11 GETTABLE                         R2 R3 R1
       12 JUMPIFNOT                        R2 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 1
       15 LOADB                            R3 1
       16 SETTABLE                         R3 R2 R1
       17 GETUPVAL                         R3 2
       18 GETTABLEKS                       R2 R3 K5 ["error"]
       20 LOADK                            R3 K6 ["Functions are not valid as a React child. This may happen if you return a Component instead of <Component /> from render. Or maybe you meant to call this function rather than return it."]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_payload"]
        2 GETTABLEKS                       R2 R0 K1 ["_init"]
        4 GETIMPORT                        R3 K3 [pcall]
        6 MOVE                             R4 R2
        7 MOVE                             R5 R1
        8 CALL                             R3 2 2
        9 JUMPIF                           R3 ; [+1]
       10 RETURN                           R0 1
       11 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R2 R0 K0 ["deletions"]
        5 JUMPIFNOTEQKNIL                  R2 ; [+19]
        7 NEWTABLE                         R3 0 1
        9 MOVE                             R4 R1
       10 SETLIST                          R3 R4 1 [1]
       12 SETTABLEKS                       R3 R0 K0 ["deletions"]
       14 GETTABLEKS                       R4 R0 K1 ["flags"]
       16 GETUPVAL                         R5 1
       17 FASTCALL2                        BIT32_BOR R4 R5 ; [+3]
       19 GETIMPORT                        R3 K4 [bit32.bor]
       21 CALL                             R3 2 1
       22 SETTABLEKS                       R3 R0 K1 ["flags"]
       24 RETURN                           R0 0
       25 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
       27 MOVE                             R4 R2
       28 MOVE                             R5 R1
       29 GETIMPORT                        R3 K7 [table.insert]
       31 CALL                             R3 2 0
       32 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+2]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 MOVE                             R2 R1
        5 JUMPIFEQKNIL                     R2 ; [+37]
        7 MOVE                             R3 R2
        8 GETUPVAL                         R4 0
        9 JUMPIF                           R4 ; [+1]
       10 JUMP                             ; [+29]
       11 GETTABLEKS                       R4 R0 K0 ["deletions"]
       13 JUMPIFNOTEQKNIL                  R4 ; [+19]
       15 NEWTABLE                         R5 0 1
       17 MOVE                             R6 R3
       18 SETLIST                          R5 R6 1 [1]
       20 SETTABLEKS                       R5 R0 K0 ["deletions"]
       22 GETTABLEKS                       R6 R0 K1 ["flags"]
       24 GETUPVAL                         R7 1
       25 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       27 GETIMPORT                        R5 K4 [bit32.bor]
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R0 K1 ["flags"]
       32 JUMP                             ; [+7]
       33 FASTCALL2                        TABLE_INSERT R4 R3 ; [+5]
       35 MOVE                             R6 R4
       36 MOVE                             R7 R3
       37 GETIMPORT                        R5 K7 [table.insert]
       39 CALL                             R5 2 0
       40 GETTABLEKS                       R2 R2 K8 ["sibling"]
       42 JUMPBACK                         ; [-38]
       43 LOADNIL                          R3
       44 RETURN                           R3 1

PROTO_7:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 JUMPIFEQKNIL                     R3 ; [+15]
        5 GETTABLEKS                       R4 R3 K0 ["key"]
        7 JUMPIFEQKNIL                     R4 ; [+5]
        9 GETTABLEKS                       R4 R3 K0 ["key"]
       11 SETTABLE                         R3 R2 R4
       12 JUMP                             ; [+3]
       13 GETTABLEKS                       R4 R3 K1 ["index"]
       15 SETTABLE                         R3 R2 R4
       16 GETTABLEKS                       R3 R3 K2 ["sibling"]
       18 JUMPBACK                         ; [-16]
       19 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 LOADN                            R3 1
        5 SETTABLEKS                       R3 R2 K0 ["index"]
        7 LOADNIL                          R3
        8 SETTABLEKS                       R3 R2 K1 ["sibling"]
       10 RETURN                           R2 1

PROTO_9:
        0 SETTABLEKS                       R2 R0 K0 ["index"]
        2 GETUPVAL                         R3 0
        3 JUMPIF                           R3 ; [+1]
        4 RETURN                           R1 1
        5 GETTABLEKS                       R3 R0 K1 ["alternate"]
        7 JUMPIFEQKNIL                     R3 ; [+17]
        9 GETTABLEKS                       R4 R3 K0 ["index"]
       11 JUMPIFNOTLT                      R4 R1 ; [+12]
       13 GETTABLEKS                       R6 R0 K2 ["flags"]
       15 GETUPVAL                         R7 1
       16 FASTCALL2                        BIT32_BOR R6 R7 ; [+3]
       18 GETIMPORT                        R5 K5 [bit32.bor]
       20 CALL                             R5 2 1
       21 SETTABLEKS                       R5 R0 K2 ["flags"]
       23 RETURN                           R1 1
       24 RETURN                           R4 1
       25 GETTABLEKS                       R5 R0 K2 ["flags"]
       27 GETUPVAL                         R6 1
       28 FASTCALL2                        BIT32_BOR R5 R6 ; [+3]
       30 GETIMPORT                        R4 K5 [bit32.bor]
       32 CALL                             R4 2 1
       33 SETTABLEKS                       R4 R0 K2 ["flags"]
       35 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+14]
        2 GETTABLEKS                       R1 R0 K0 ["alternate"]
        4 JUMPIFNOTEQKNIL                  R1 ; [+11]
        6 GETTABLEKS                       R2 R0 K1 ["flags"]
        8 GETUPVAL                         R3 1
        9 FASTCALL2                        BIT32_BOR R2 R3 ; [+3]
       11 GETIMPORT                        R1 K4 [bit32.bor]
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K1 ["flags"]
       16 RETURN                           R0 1

PROTO_11:
        0 JUMPIFEQKNIL                     R1 ; [+6]
        2 GETTABLEKS                       R4 R1 K0 ["tag"]
        4 GETUPVAL                         R5 0
        5 JUMPIFEQ                         R4 R5 ; [+10]
        7 GETUPVAL                         R4 1
        8 MOVE                             R5 R2
        9 GETTABLEKS                       R6 R0 K1 ["mode"]
       11 MOVE                             R7 R3
       12 CALL                             R4 3 1
       13 SETTABLEKS                       R0 R4 K2 ["return_"]
       15 RETURN                           R4 1
       16 GETUPVAL                         R5 2
       17 MOVE                             R6 R1
       18 MOVE                             R7 R2
       19 CALL                             R5 2 1
       20 LOADN                            R6 1
       21 SETTABLEKS                       R6 R5 K3 ["index"]
       23 LOADNIL                          R6
       24 SETTABLEKS                       R6 R5 K4 ["sibling"]
       26 MOVE                             R4 R5
       27 SETTABLEKS                       R0 R4 K2 ["return_"]
       29 RETURN                           R4 1

PROTO_12:
        0 JUMPIFEQKNIL                     R1 ; [+107]
        2 GETTABLEKS                       R4 R1 K0 ["elementType"]
        4 GETTABLEKS                       R5 R2 K1 ["type"]
        6 JUMPIFNOTEQ                      R4 R5 ; [+38]
        8 GETTABLEKS                       R5 R2 K2 ["props"]
       10 GETUPVAL                         R6 0
       11 MOVE                             R7 R1
       12 MOVE                             R8 R5
       13 CALL                             R6 2 1
       14 LOADN                            R7 1
       15 SETTABLEKS                       R7 R6 K3 ["index"]
       17 LOADNIL                          R7
       18 SETTABLEKS                       R7 R6 K4 ["sibling"]
       20 MOVE                             R4 R6
       21 GETGLOBAL                        R5 K5 ["coerceRef"]
       23 MOVE                             R6 R0
       24 MOVE                             R7 R1
       25 MOVE                             R8 R2
       26 CALL                             R5 3 1
       27 SETTABLEKS                       R5 R4 K6 ["ref"]
       29 SETTABLEKS                       R0 R4 K7 ["return_"]
       31 GETIMPORT                        R6 K9 [_G]
       33 GETTABLEKS                       R5 R6 K10 ["__DEV__"]
       35 JUMPIFNOT                        R5 ; [+8]
       36 GETTABLEKS                       R5 R2 K11 ["_source"]
       38 SETTABLEKS                       R5 R4 K12 ["_debugSource"]
       40 GETTABLEKS                       R5 R2 K13 ["_owner"]
       42 SETTABLEKS                       R5 R4 K14 ["_debugOwner"]
       44 RETURN                           R4 1
       45 GETUPVAL                         R4 1
       46 JUMPIFNOT                        R4 ; [+61]
       47 GETTABLEKS                       R4 R1 K15 ["tag"]
       49 GETUPVAL                         R5 2
       50 JUMPIFNOTEQ                      R4 R5 ; [+57]
       52 GETTABLEKS                       R4 R2 K1 ["type"]
       54 GETTABLEKS                       R5 R4 K16 ["$$typeof"]
       56 GETUPVAL                         R6 3
       57 JUMPIFNOTEQ                      R5 R6 ; [+6]
       59 GETGLOBAL                        R5 K17 ["resolveLazyType"]
       61 MOVE                             R6 R4
       62 CALL                             R5 1 1
       63 MOVE                             R4 R5
       64 GETTABLEKS                       R5 R4 K16 ["$$typeof"]
       66 GETUPVAL                         R6 4
       67 JUMPIFNOTEQ                      R5 R6 ; [+40]
       69 GETTABLEKS                       R5 R4 K18 ["_render"]
       71 GETTABLEKS                       R7 R1 K1 ["type"]
       73 GETTABLEKS                       R6 R7 K18 ["_render"]
       75 JUMPIFNOTEQ                      R5 R6 ; [+32]
       77 GETTABLEKS                       R6 R2 K2 ["props"]
       79 GETUPVAL                         R7 0
       80 MOVE                             R8 R1
       81 MOVE                             R9 R6
       82 CALL                             R7 2 1
       83 LOADN                            R8 1
       84 SETTABLEKS                       R8 R7 K3 ["index"]
       86 LOADNIL                          R8
       87 SETTABLEKS                       R8 R7 K4 ["sibling"]
       89 MOVE                             R5 R7
       90 SETTABLEKS                       R0 R5 K7 ["return_"]
       92 SETTABLEKS                       R4 R5 K1 ["type"]
       94 GETIMPORT                        R7 K9 [_G]
       96 GETTABLEKS                       R6 R7 K10 ["__DEV__"]
       98 JUMPIFNOT                        R6 ; [+8]
       99 GETTABLEKS                       R6 R2 K11 ["_source"]
      101 SETTABLEKS                       R6 R5 K12 ["_debugSource"]
      103 GETTABLEKS                       R6 R2 K13 ["_owner"]
      105 SETTABLEKS                       R6 R5 K14 ["_debugOwner"]
      107 RETURN                           R5 1
      108 GETUPVAL                         R4 5
      109 MOVE                             R5 R2
      110 GETTABLEKS                       R6 R0 K19 ["mode"]
      112 MOVE                             R7 R3
      113 CALL                             R4 3 1
      114 GETGLOBAL                        R5 K5 ["coerceRef"]
      116 MOVE                             R6 R0
      117 MOVE                             R7 R1
      118 MOVE                             R8 R2
      119 CALL                             R5 3 1
      120 SETTABLEKS                       R5 R4 K6 ["ref"]
      122 SETTABLEKS                       R0 R4 K7 ["return_"]
      124 RETURN                           R4 1

PROTO_13:
        0 JUMPIFEQKNIL                     R1 ; [+22]
        2 GETTABLEKS                       R4 R1 K0 ["tag"]
        4 GETUPVAL                         R5 0
        5 JUMPIFNOTEQ                      R4 R5 ; [+17]
        7 GETTABLEKS                       R5 R1 K1 ["stateNode"]
        9 GETTABLEKS                       R4 R5 K2 ["containerInfo"]
       11 GETTABLEKS                       R5 R2 K2 ["containerInfo"]
       13 JUMPIFNOTEQ                      R4 R5 ; [+9]
       15 GETTABLEKS                       R5 R1 K1 ["stateNode"]
       17 GETTABLEKS                       R4 R5 K3 ["implementation"]
       19 GETTABLEKS                       R5 R2 K3 ["implementation"]
       21 JUMPIFEQ                         R4 R5 ; [+10]
       23 GETUPVAL                         R4 1
       24 MOVE                             R5 R2
       25 GETTABLEKS                       R6 R0 K4 ["mode"]
       27 MOVE                             R7 R3
       28 CALL                             R4 3 1
       29 SETTABLEKS                       R0 R4 K5 ["return_"]
       31 RETURN                           R4 1
       32 GETTABLEKS                       R5 R2 K6 ["children"]
       34 JUMPIF                           R5 ; [+2]
       35 NEWTABLE                         R5 0 0
       37 GETUPVAL                         R6 2
       38 MOVE                             R7 R1
       39 MOVE                             R8 R5
       40 CALL                             R6 2 1
       41 LOADN                            R7 1
       42 SETTABLEKS                       R7 R6 K7 ["index"]
       44 LOADNIL                          R7
       45 SETTABLEKS                       R7 R6 K8 ["sibling"]
       47 MOVE                             R4 R6
       48 SETTABLEKS                       R0 R4 K5 ["return_"]
       50 RETURN                           R4 1

PROTO_14:
        0 JUMPIFEQKNIL                     R1 ; [+6]
        2 GETTABLEKS                       R5 R1 K0 ["tag"]
        4 GETUPVAL                         R6 0
        5 JUMPIFEQ                         R5 R6 ; [+11]
        7 GETUPVAL                         R5 1
        8 MOVE                             R6 R2
        9 GETTABLEKS                       R7 R0 K1 ["mode"]
       11 MOVE                             R8 R3
       12 MOVE                             R9 R4
       13 CALL                             R5 4 1
       14 SETTABLEKS                       R0 R5 K2 ["return_"]
       16 RETURN                           R5 1
       17 GETUPVAL                         R6 2
       18 MOVE                             R7 R1
       19 MOVE                             R8 R2
       20 CALL                             R6 2 1
       21 LOADN                            R7 1
       22 SETTABLEKS                       R7 R6 K3 ["index"]
       24 LOADNIL                          R7
       25 SETTABLEKS                       R7 R6 K4 ["sibling"]
       27 MOVE                             R5 R6
       28 SETTABLEKS                       R0 R5 K2 ["return_"]
       30 RETURN                           R5 1

PROTO_15:
        0 GETTABLEKS                       R2 R1 K0 ["key"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+22]
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K2 [typeof]
        8 CALL                             R2 1 1
        9 JUMPIFEQKS                       R2 K3 ["string"] ; [+3]
       11 JUMPIFNOTEQKS                    R2 K4 ["number"] ; [+4]
       13 SETTABLEKS                       R0 R1 K0 ["key"]
       15 RETURN                           R0 0
       16 JUMPIFNOTEQKS                    R2 K5 ["table"] ; [+8]
       18 FASTCALL1                        TOSTRING R0 ; [+3]
       19 MOVE                             R4 R0
       20 GETIMPORT                        R3 K7 [tostring]
       22 CALL                             R3 1 1
       23 SETTABLEKS                       R3 R1 K0 ["key"]
       25 RETURN                           R0 0

PROTO_16:
        0 JUMPIFNOTEQKNIL                  R1 ; [+3]
        2 LOADNIL                          R4
        3 RETURN                           R4 1
        4 FASTCALL1                        TYPEOF R1 ; [+3]
        5 MOVE                             R5 R1
        6 GETIMPORT                        R4 K1 [typeof]
        8 CALL                             R4 1 1
        9 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+87]
       11 GETTABLEKS                       R5 R1 K3 ["key"]
       13 JUMPIFNOTEQKNIL                  R5 ; [+22]
       15 FASTCALL1                        TYPEOF R3 ; [+3]
       16 MOVE                             R6 R3
       17 GETIMPORT                        R5 K1 [typeof]
       19 CALL                             R5 1 1
       20 JUMPIFEQKS                       R5 K4 ["string"] ; [+3]
       22 JUMPIFNOTEQKS                    R5 K5 ["number"] ; [+4]
       24 SETTABLEKS                       R3 R1 K3 ["key"]
       26 JUMP                             ; [+9]
       27 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+8]
       29 FASTCALL1                        TOSTRING R3 ; [+3]
       30 MOVE                             R7 R3
       31 GETIMPORT                        R6 K7 [tostring]
       33 CALL                             R6 1 1
       34 SETTABLEKS                       R6 R1 K3 ["key"]
       36 GETTABLEKS                       R5 R1 K8 ["$$typeof"]
       38 GETUPVAL                         R6 0
       39 JUMPIFNOTEQ                      R5 R6 ; [+18]
       41 GETUPVAL                         R6 1
       42 MOVE                             R7 R1
       43 GETTABLEKS                       R8 R0 K9 ["mode"]
       45 MOVE                             R9 R2
       46 CALL                             R6 3 1
       47 GETGLOBAL                        R7 K10 ["coerceRef"]
       49 MOVE                             R8 R0
       50 LOADNIL                          R9
       51 MOVE                             R10 R1
       52 CALL                             R7 3 1
       53 SETTABLEKS                       R7 R6 K11 ["ref"]
       55 SETTABLEKS                       R0 R6 K12 ["return_"]
       57 RETURN                           R6 1
       58 GETUPVAL                         R6 2
       59 JUMPIFNOTEQ                      R5 R6 ; [+10]
       61 GETUPVAL                         R6 3
       62 MOVE                             R7 R1
       63 GETTABLEKS                       R8 R0 K9 ["mode"]
       65 MOVE                             R9 R2
       66 CALL                             R6 3 1
       67 SETTABLEKS                       R0 R6 K12 ["return_"]
       69 RETURN                           R6 1
       70 GETUPVAL                         R6 4
       71 JUMPIFNOTEQ                      R5 R6 ; [+15]
       73 GETUPVAL                         R6 5
       74 JUMPIFNOT                        R6 ; [+12]
       75 GETTABLEKS                       R6 R1 K13 ["_payload"]
       77 GETTABLEKS                       R7 R1 K14 ["_init"]
       79 GETUPVAL                         R8 6
       80 MOVE                             R9 R0
       81 MOVE                             R10 R7
       82 MOVE                             R11 R6
       83 CALL                             R10 1 1
       84 MOVE                             R11 R2
       85 CALL                             R8 3 -1
       86 RETURN                           R8 -1
       87 GETUPVAL                         R6 7
       88 MOVE                             R7 R1
       89 GETTABLEKS                       R8 R0 K9 ["mode"]
       91 MOVE                             R9 R2
       92 LOADNIL                          R10
       93 CALL                             R6 4 1
       94 SETTABLEKS                       R0 R6 K12 ["return_"]
       96 RETURN                           R6 1
       97 JUMPIFEQKS                       R4 K4 ["string"] ; [+3]
       99 JUMPIFNOTEQKS                    R4 K5 ["number"] ; [+14]
      101 GETUPVAL                         R5 8
      102 FASTCALL1                        TOSTRING R1 ; [+3]
      103 MOVE                             R7 R1
      104 GETIMPORT                        R6 K7 [tostring]
      106 CALL                             R6 1 1
      107 GETTABLEKS                       R7 R0 K9 ["mode"]
      109 MOVE                             R8 R2
      110 CALL                             R5 3 1
      111 SETTABLEKS                       R0 R5 K12 ["return_"]
      113 RETURN                           R5 1
      114 GETIMPORT                        R6 K16 [_G]
      116 GETTABLEKS                       R5 R6 K17 ["__DEV__"]
      118 JUMPIFNOT                        R5 ; [+24]
      119 JUMPIFNOTEQKS                    R4 K18 ["function"] ; [+23]
      121 GETIMPORT                        R6 K16 [_G]
      123 GETTABLEKS                       R5 R6 K17 ["__DEV__"]
      125 JUMPIFNOT                        R5 ; [+17]
      126 GETUPVAL                         R6 9
      127 GETTABLEKS                       R7 R0 K20 ["type"]
      129 CALL                             R6 1 1
      130 ORK                              R5 R6 K19 ["Component"]
      131 GETUPVAL                         R7 10
      132 GETTABLE                         R6 R7 R5
      133 JUMPIFNOT                        R6 ; [+1]
      134 JUMP                             ; [+8]
      135 GETUPVAL                         R6 10
      136 LOADB                            R7 1
      137 SETTABLE                         R7 R6 R5
      138 GETUPVAL                         R7 11
      139 GETTABLEKS                       R6 R7 K21 ["error"]
      141 LOADK                            R7 K22 ["Functions are not valid as a React child. This may happen if you return a Component instead of <Component /> from render. Or maybe you meant to call this function rather than return it."]
      142 CALL                             R6 1 0
      143 LOADNIL                          R5
      144 RETURN                           R5 1

PROTO_17:
        0 JUMPIFNOTEQKNIL                  R2 ; [+3]
        2 LOADNIL                          R5
        3 RETURN                           R5 1
        4 LOADNIL                          R5
        5 JUMPIFNOT                        R1 ; [+2]
        6 GETTABLEKS                       R5 R1 K0 ["key"]
        8 FASTCALL1                        TYPEOF R2 ; [+3]
        9 MOVE                             R7 R2
       10 GETIMPORT                        R6 K2 [typeof]
       12 CALL                             R6 1 1
       13 JUMPIFNOTEQKS                    R6 K3 ["table"] ; [+159]
       15 GETTABLEKS                       R7 R2 K0 ["key"]
       17 JUMPIFNOTEQKNIL                  R7 ; [+22]
       19 FASTCALL1                        TYPEOF R4 ; [+3]
       20 MOVE                             R8 R4
       21 GETIMPORT                        R7 K2 [typeof]
       23 CALL                             R7 1 1
       24 JUMPIFEQKS                       R7 K4 ["string"] ; [+3]
       26 JUMPIFNOTEQKS                    R7 K5 ["number"] ; [+4]
       28 SETTABLEKS                       R4 R2 K0 ["key"]
       30 JUMP                             ; [+9]
       31 JUMPIFNOTEQKS                    R7 K3 ["table"] ; [+8]
       33 FASTCALL1                        TOSTRING R4 ; [+3]
       34 MOVE                             R9 R4
       35 GETIMPORT                        R8 K7 [tostring]
       37 CALL                             R8 1 1
       38 SETTABLEKS                       R8 R2 K0 ["key"]
       40 GETTABLEKS                       R7 R2 K8 ["$$typeof"]
       42 GETUPVAL                         R8 0
       43 JUMPIFNOTEQ                      R7 R8 ; [+57]
       45 GETTABLEKS                       R8 R2 K0 ["key"]
       47 JUMPIFNOTEQ                      R8 R5 ; [+51]
       49 GETTABLEKS                       R8 R2 K9 ["type"]
       51 GETUPVAL                         R9 1
       52 JUMPIFNOTEQ                      R8 R9 ; [+39]
       54 GETTABLEKS                       R10 R2 K10 ["props"]
       56 GETTABLEKS                       R9 R10 K11 ["children"]
       58 MOVE                             R10 R5
       59 JUMPIFEQKNIL                     R1 ; [+6]
       61 GETTABLEKS                       R11 R1 K12 ["tag"]
       63 GETUPVAL                         R12 2
       64 JUMPIFEQ                         R11 R12 ; [+12]
       66 GETUPVAL                         R11 3
       67 MOVE                             R12 R9
       68 GETTABLEKS                       R13 R0 K13 ["mode"]
       70 MOVE                             R14 R3
       71 MOVE                             R15 R10
       72 CALL                             R11 4 1
       73 SETTABLEKS                       R0 R11 K14 ["return_"]
       75 MOVE                             R8 R11
       76 RETURN                           R8 1
       77 GETUPVAL                         R12 4
       78 MOVE                             R13 R1
       79 MOVE                             R14 R9
       80 CALL                             R12 2 1
       81 LOADN                            R13 1
       82 SETTABLEKS                       R13 R12 K15 ["index"]
       84 LOADNIL                          R13
       85 SETTABLEKS                       R13 R12 K16 ["sibling"]
       87 MOVE                             R11 R12
       88 SETTABLEKS                       R0 R11 K14 ["return_"]
       90 MOVE                             R8 R11
       91 RETURN                           R8 1
       92 GETUPVAL                         R8 5
       93 MOVE                             R9 R0
       94 MOVE                             R10 R1
       95 MOVE                             R11 R2
       96 MOVE                             R12 R3
       97 CALL                             R8 4 1
       98 RETURN                           R8 1
       99 LOADNIL                          R8
      100 RETURN                           R8 1
      101 GETUPVAL                         R8 6
      102 JUMPIFNOTEQ                      R7 R8 ; [+14]
      104 GETTABLEKS                       R8 R2 K0 ["key"]
      106 JUMPIFNOTEQ                      R8 R5 ; [+8]
      108 GETUPVAL                         R8 7
      109 MOVE                             R9 R0
      110 MOVE                             R10 R1
      111 MOVE                             R11 R2
      112 MOVE                             R12 R3
      113 CALL                             R8 4 1
      114 RETURN                           R8 1
      115 LOADNIL                          R8
      116 RETURN                           R8 1
      117 GETUPVAL                         R8 8
      118 JUMPIFNOTEQ                      R7 R8 ; [+17]
      120 GETUPVAL                         R8 9
      121 JUMPIFNOT                        R8 ; [+14]
      122 GETTABLEKS                       R8 R2 K17 ["_payload"]
      124 GETTABLEKS                       R9 R2 K18 ["_init"]
      126 GETUPVAL                         R10 10
      127 MOVE                             R11 R0
      128 MOVE                             R12 R1
      129 MOVE                             R13 R9
      130 MOVE                             R14 R8
      131 CALL                             R13 1 1
      132 MOVE                             R14 R3
      133 LOADNIL                          R15
      134 CALL                             R10 5 -1
      135 RETURN                           R10 -1
      136 JUMPIFEQKNIL                     R5 ; [+3]
      138 LOADNIL                          R8
      139 RETURN                           R8 1
      140 JUMPIFEQKNIL                     R1 ; [+6]
      142 GETTABLEKS                       R9 R1 K12 ["tag"]
      144 GETUPVAL                         R10 2
      145 JUMPIFEQ                         R9 R10 ; [+12]
      147 GETUPVAL                         R9 3
      148 MOVE                             R10 R2
      149 GETTABLEKS                       R11 R0 K13 ["mode"]
      151 MOVE                             R12 R3
      152 LOADNIL                          R13
      153 CALL                             R9 4 1
      154 SETTABLEKS                       R0 R9 K14 ["return_"]
      156 MOVE                             R8 R9
      157 RETURN                           R8 1
      158 GETUPVAL                         R10 4
      159 MOVE                             R11 R1
      160 MOVE                             R12 R2
      161 CALL                             R10 2 1
      162 LOADN                            R11 1
      163 SETTABLEKS                       R11 R10 K15 ["index"]
      165 LOADNIL                          R11
      166 SETTABLEKS                       R11 R10 K16 ["sibling"]
      168 MOVE                             R9 R10
      169 SETTABLEKS                       R0 R9 K14 ["return_"]
      171 MOVE                             R8 R9
      172 RETURN                           R8 1
      173 JUMPIFEQKS                       R6 K4 ["string"] ; [+3]
      175 JUMPIFNOTEQKS                    R6 K5 ["number"] ; [+42]
      177 JUMPIFEQKNIL                     R5 ; [+3]
      179 LOADNIL                          R7
      180 RETURN                           R7 1
      181 FASTCALL1                        TOSTRING R2 ; [+3]
      182 MOVE                             R9 R2
      183 GETIMPORT                        R8 K7 [tostring]
      185 CALL                             R8 1 1
      186 JUMPIFEQKNIL                     R1 ; [+6]
      188 GETTABLEKS                       R9 R1 K12 ["tag"]
      190 GETUPVAL                         R10 11
      191 JUMPIFEQ                         R9 R10 ; [+11]
      193 GETUPVAL                         R9 12
      194 MOVE                             R10 R8
      195 GETTABLEKS                       R11 R0 K13 ["mode"]
      197 MOVE                             R12 R3
      198 CALL                             R9 3 1
      199 SETTABLEKS                       R0 R9 K14 ["return_"]
      201 MOVE                             R7 R9
      202 RETURN                           R7 1
      203 GETUPVAL                         R10 4
      204 MOVE                             R11 R1
      205 MOVE                             R12 R8
      206 CALL                             R10 2 1
      207 LOADN                            R11 1
      208 SETTABLEKS                       R11 R10 K15 ["index"]
      210 LOADNIL                          R11
      211 SETTABLEKS                       R11 R10 K16 ["sibling"]
      213 MOVE                             R9 R10
      214 SETTABLEKS                       R0 R9 K14 ["return_"]
      216 MOVE                             R7 R9
      217 RETURN                           R7 1
      218 GETIMPORT                        R8 K20 [_G]
      220 GETTABLEKS                       R7 R8 K21 ["__DEV__"]
      222 JUMPIFNOT                        R7 ; [+24]
      223 JUMPIFNOTEQKS                    R6 K22 ["function"] ; [+23]
      225 GETIMPORT                        R8 K20 [_G]
      227 GETTABLEKS                       R7 R8 K21 ["__DEV__"]
      229 JUMPIFNOT                        R7 ; [+17]
      230 GETUPVAL                         R8 13
      231 GETTABLEKS                       R9 R0 K9 ["type"]
      233 CALL                             R8 1 1
      234 ORK                              R7 R8 K23 ["Component"]
      235 GETUPVAL                         R9 14
      236 GETTABLE                         R8 R9 R7
      237 JUMPIFNOT                        R8 ; [+1]
      238 JUMP                             ; [+8]
      239 GETUPVAL                         R8 14
      240 LOADB                            R9 1
      241 SETTABLE                         R9 R8 R7
      242 GETUPVAL                         R9 15
      243 GETTABLEKS                       R8 R9 K24 ["error"]
      245 LOADK                            R9 K25 ["Functions are not valid as a React child. This may happen if you return a Component instead of <Component /> from render. Or maybe you meant to call this function rather than return it."]
      246 CALL                             R8 1 0
      247 LOADNIL                          R7
      248 RETURN                           R7 1

PROTO_18:
        0 JUMPIFNOTEQKNIL                  R3 ; [+3]
        2 LOADNIL                          R6
        3 RETURN                           R6 1
        4 FASTCALL1                        TYPEOF R3 ; [+3]
        5 MOVE                             R7 R3
        6 GETIMPORT                        R6 K1 [typeof]
        8 CALL                             R6 1 1
        9 JUMPIFNOTEQKS                    R6 K2 ["table"] ; [+164]
       11 GETTABLEKS                       R7 R3 K3 ["key"]
       13 JUMPIFNOTEQKNIL                  R7 ; [+22]
       15 FASTCALL1                        TYPEOF R5 ; [+3]
       16 MOVE                             R8 R5
       17 GETIMPORT                        R7 K1 [typeof]
       19 CALL                             R7 1 1
       20 JUMPIFEQKS                       R7 K4 ["string"] ; [+3]
       22 JUMPIFNOTEQKS                    R7 K5 ["number"] ; [+4]
       24 SETTABLEKS                       R5 R3 K3 ["key"]
       26 JUMP                             ; [+9]
       27 JUMPIFNOTEQKS                    R7 K2 ["table"] ; [+8]
       29 FASTCALL1                        TOSTRING R5 ; [+3]
       30 MOVE                             R9 R5
       31 GETIMPORT                        R8 K7 [tostring]
       33 CALL                             R8 1 1
       34 SETTABLEKS                       R8 R3 K3 ["key"]
       36 LOADNIL                          R7
       37 GETTABLEKS                       R8 R3 K8 ["$$typeof"]
       39 GETUPVAL                         R9 0
       40 JUMPIFNOTEQ                      R8 R9 ; [+61]
       42 GETTABLEKS                       R9 R3 K3 ["key"]
       44 JUMPIFNOTEQKNIL                  R9 ; [+3]
       46 MOVE                             R7 R2
       47 JUMP                             ; [+2]
       48 GETTABLEKS                       R7 R3 K3 ["key"]
       50 GETTABLE                         R9 R0 R7
       51 GETTABLEKS                       R10 R3 K9 ["type"]
       53 GETUPVAL                         R11 1
       54 JUMPIFNOTEQ                      R10 R11 ; [+40]
       56 GETTABLEKS                       R12 R3 K10 ["props"]
       58 GETTABLEKS                       R11 R12 K11 ["children"]
       60 GETTABLEKS                       R12 R3 K3 ["key"]
       62 JUMPIFEQKNIL                     R9 ; [+6]
       64 GETTABLEKS                       R13 R9 K12 ["tag"]
       66 GETUPVAL                         R14 2
       67 JUMPIFEQ                         R13 R14 ; [+12]
       69 GETUPVAL                         R13 3
       70 MOVE                             R14 R11
       71 GETTABLEKS                       R15 R1 K13 ["mode"]
       73 MOVE                             R16 R4
       74 MOVE                             R17 R12
       75 CALL                             R13 4 1
       76 SETTABLEKS                       R1 R13 K14 ["return_"]
       78 MOVE                             R10 R13
       79 RETURN                           R10 1
       80 GETUPVAL                         R14 4
       81 MOVE                             R15 R9
       82 MOVE                             R16 R11
       83 CALL                             R14 2 1
       84 LOADN                            R15 1
       85 SETTABLEKS                       R15 R14 K15 ["index"]
       87 LOADNIL                          R15
       88 SETTABLEKS                       R15 R14 K16 ["sibling"]
       90 MOVE                             R13 R14
       91 SETTABLEKS                       R1 R13 K14 ["return_"]
       93 MOVE                             R10 R13
       94 RETURN                           R10 1
       95 GETUPVAL                         R10 5
       96 MOVE                             R11 R1
       97 MOVE                             R12 R9
       98 MOVE                             R13 R3
       99 MOVE                             R14 R4
      100 CALL                             R10 4 1
      101 RETURN                           R10 1
      102 GETUPVAL                         R9 6
      103 JUMPIFNOTEQ                      R8 R9 ; [+17]
      105 GETTABLEKS                       R9 R3 K3 ["key"]
      107 JUMPIFNOTEQKNIL                  R9 ; [+3]
      109 MOVE                             R7 R2
      110 JUMP                             ; [+2]
      111 GETTABLEKS                       R7 R3 K3 ["key"]
      113 GETTABLE                         R9 R0 R7
      114 GETUPVAL                         R10 7
      115 MOVE                             R11 R1
      116 MOVE                             R12 R9
      117 MOVE                             R13 R3
      118 MOVE                             R14 R4
      119 CALL                             R10 4 1
      120 RETURN                           R10 1
      121 GETUPVAL                         R9 8
      122 JUMPIFNOTEQ                      R8 R9 ; [+17]
      124 GETUPVAL                         R9 9
      125 JUMPIFNOT                        R9 ; [+14]
      126 GETTABLEKS                       R9 R3 K17 ["_payload"]
      128 GETTABLEKS                       R10 R3 K18 ["_init"]
      130 GETUPVAL                         R11 10
      131 MOVE                             R12 R0
      132 MOVE                             R13 R1
      133 MOVE                             R14 R2
      134 MOVE                             R15 R10
      135 MOVE                             R16 R9
      136 CALL                             R15 1 1
      137 MOVE                             R16 R4
      138 CALL                             R11 5 -1
      139 RETURN                           R11 -1
      140 GETTABLE                         R9 R0 R2
      141 JUMPIFEQKNIL                     R9 ; [+6]
      143 GETTABLEKS                       R11 R9 K12 ["tag"]
      145 GETUPVAL                         R12 2
      146 JUMPIFEQ                         R11 R12 ; [+12]
      148 GETUPVAL                         R11 3
      149 MOVE                             R12 R3
      150 GETTABLEKS                       R13 R1 K13 ["mode"]
      152 MOVE                             R14 R4
      153 LOADNIL                          R15
      154 CALL                             R11 4 1
      155 SETTABLEKS                       R1 R11 K14 ["return_"]
      157 MOVE                             R10 R11
      158 RETURN                           R10 1
      159 GETUPVAL                         R12 4
      160 MOVE                             R13 R9
      161 MOVE                             R14 R3
      162 CALL                             R12 2 1
      163 LOADN                            R13 1
      164 SETTABLEKS                       R13 R12 K15 ["index"]
      166 LOADNIL                          R13
      167 SETTABLEKS                       R13 R12 K16 ["sibling"]
      169 MOVE                             R11 R12
      170 SETTABLEKS                       R1 R11 K14 ["return_"]
      172 MOVE                             R10 R11
      173 RETURN                           R10 1
      174 JUMPIFEQKS                       R6 K4 ["string"] ; [+3]
      176 JUMPIFNOTEQKS                    R6 K5 ["number"] ; [+40]
      178 GETTABLE                         R8 R0 R2
      179 ORK                              R7 R8 K19 []
      180 FASTCALL1                        TOSTRING R3 ; [+3]
      181 MOVE                             R10 R3
      182 GETIMPORT                        R9 K7 [tostring]
      184 CALL                             R9 1 1
      185 JUMPIFEQKNIL                     R7 ; [+6]
      187 GETTABLEKS                       R10 R7 K12 ["tag"]
      189 GETUPVAL                         R11 11
      190 JUMPIFEQ                         R10 R11 ; [+11]
      192 GETUPVAL                         R10 12
      193 MOVE                             R11 R9
      194 GETTABLEKS                       R12 R1 K13 ["mode"]
      196 MOVE                             R13 R4
      197 CALL                             R10 3 1
      198 SETTABLEKS                       R1 R10 K14 ["return_"]
      200 MOVE                             R8 R10
      201 RETURN                           R8 1
      202 GETUPVAL                         R11 4
      203 MOVE                             R12 R7
      204 MOVE                             R13 R9
      205 CALL                             R11 2 1
      206 LOADN                            R12 1
      207 SETTABLEKS                       R12 R11 K15 ["index"]
      209 LOADNIL                          R12
      210 SETTABLEKS                       R12 R11 K16 ["sibling"]
      212 MOVE                             R10 R11
      213 SETTABLEKS                       R1 R10 K14 ["return_"]
      215 MOVE                             R8 R10
      216 RETURN                           R8 1
      217 GETIMPORT                        R8 K21 [_G]
      219 GETTABLEKS                       R7 R8 K22 ["__DEV__"]
      221 JUMPIFNOT                        R7 ; [+24]
      222 JUMPIFNOTEQKS                    R6 K23 ["function"] ; [+23]
      224 GETIMPORT                        R8 K21 [_G]
      226 GETTABLEKS                       R7 R8 K22 ["__DEV__"]
      228 JUMPIFNOT                        R7 ; [+17]
      229 GETUPVAL                         R8 13
      230 GETTABLEKS                       R9 R1 K9 ["type"]
      232 CALL                             R8 1 1
      233 ORK                              R7 R8 K24 ["Component"]
      234 GETUPVAL                         R9 14
      235 GETTABLE                         R8 R9 R7
      236 JUMPIFNOT                        R8 ; [+1]
      237 JUMP                             ; [+8]
      238 GETUPVAL                         R8 14
      239 LOADB                            R9 1
      240 SETTABLE                         R9 R8 R7
      241 GETUPVAL                         R9 15
      242 GETTABLEKS                       R8 R9 K25 ["error"]
      244 LOADK                            R9 K26 ["Functions are not valid as a React child. This may happen if you return a Component instead of <Component /> from render. Or maybe you meant to call this function rather than return it."]
      245 CALL                             R8 1 0
      246 LOADNIL                          R7
      247 RETURN                           R7 1

PROTO_19:
        0 GETIMPORT                        R4 K1 [_G]
        2 GETTABLEKS                       R3 R4 K2 ["__DEV__"]
        4 JUMPIFNOT                        R3 ; [+67]
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R4 R0
        7 GETIMPORT                        R3 K4 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQKS                    R3 K5 ["table"] ; [+3]
       12 JUMPIFNOTEQKNIL                  R0 ; [+2]
       14 RETURN                           R1 1
       15 GETTABLEKS                       R3 R0 K6 ["$$typeof"]
       17 GETUPVAL                         R4 0
       18 JUMPIFEQ                         R3 R4 ; [+4]
       20 GETUPVAL                         R4 1
       21 JUMPIFNOTEQ                      R3 R4 ; [+34]
       23 GETUPVAL                         R4 2
       24 MOVE                             R5 R0
       25 MOVE                             R6 R2
       26 CALL                             R4 2 0
       27 GETTABLEKS                       R4 R0 K7 ["key"]
       29 FASTCALL1                        TYPEOF R4 ; [+3]
       30 MOVE                             R6 R4
       31 GETIMPORT                        R5 K4 [typeof]
       33 CALL                             R5 1 1
       34 JUMPIFEQKS                       R5 K8 ["string"] ; [+2]
       36 RETURN                           R1 1
       37 JUMPIFNOTEQKNIL                  R1 ; [+6]
       39 NEWTABLE                         R1 0 0
       41 LOADB                            R5 1
       42 SETTABLE                         R5 R1 R4
       43 RETURN                           R1 1
       44 GETTABLE                         R5 R1 R4
       45 JUMPIF                           R5 ; [+3]
       46 LOADB                            R5 1
       47 SETTABLE                         R5 R1 R4
       48 RETURN                           R1 1
       49 GETUPVAL                         R6 3
       50 GETTABLEKS                       R5 R6 K9 ["error"]
       52 LOADK                            R6 K10 ["Encountered two children with the same key, `%s`. Keys should be unique so that components maintain their identity across updates. Non-unique keys may cause children to be duplicated and/or omitted — the behavior is unsupported and could change in a future version."]
       53 MOVE                             R7 R4
       54 CALL                             R5 2 0
       55 RETURN                           R1 1
       56 GETUPVAL                         R4 4
       57 JUMPIFNOTEQ                      R3 R4 ; [+14]
       59 GETUPVAL                         R4 5
       60 JUMPIFNOT                        R4 ; [+11]
       61 GETTABLEKS                       R4 R0 K11 ["_payload"]
       63 GETTABLEKS                       R5 R0 K12 ["_init"]
       65 GETUPVAL                         R6 6
       66 MOVE                             R7 R5
       67 MOVE                             R8 R4
       68 CALL                             R7 1 1
       69 MOVE                             R8 R1
       70 MOVE                             R9 R2
       71 CALL                             R6 3 0
       72 RETURN                           R1 1

PROTO_20:
        0 GETIMPORT                        R5 K1 [_G]
        2 GETTABLEKS                       R4 R5 K2 ["__DEV__"]
        4 JUMPIFNOT                        R4 ; [+14]
        5 LOADNIL                          R4
        6 GETIMPORT                        R5 K4 [ipairs]
        8 MOVE                             R6 R2
        9 CALL                             R5 1 3
       10 FORGPREP_INEXT                   R5
       11 GETUPVAL                         R10 0
       12 MOVE                             R11 R9
       13 MOVE                             R12 R4
       14 MOVE                             R13 R0
       15 CALL                             R10 3 1
       16 MOVE                             R4 R10
       17 FORGLOOP                         R5 2 [inext] ; [-7]
       19 LOADNIL                          R4
       20 LOADNIL                          R5
       21 MOVE                             R6 R1
       22 LOADN                            R7 1
       23 LOADN                            R8 1
       24 LOADNIL                          R9
       25 LENGTH                           R10 R2
       26 JUMPIFEQKNIL                     R6 ; [+141]
       28 JUMPIFNOTLE                      R8 R10 ; [+139]
       30 GETTABLEKS                       R11 R6 K5 ["index"]
       32 JUMPIFNOTLT                      R8 R11 ; [+4]
       34 MOVE                             R9 R6
       35 LOADNIL                          R6
       36 JUMP                             ; [+2]
       37 GETTABLEKS                       R9 R6 K6 ["sibling"]
       39 LOADNIL                          R11
       40 GETTABLE                         R12 R2 R8
       41 JUMPIFEQKNIL                     R12 ; [+21]
       43 FASTCALL1                        TYPEOF R12 ; [+3]
       44 MOVE                             R14 R12
       45 GETIMPORT                        R13 K8 [typeof]
       47 CALL                             R13 1 1
       48 JUMPIFNOTEQKS                    R13 K9 ["table"] ; [+14]
       50 GETTABLEKS                       R13 R12 K10 ["$$typeof"]
       52 JUMPIFEQKNIL                     R13 ; [+10]
       54 GETUPVAL                         R13 1
       55 MOVE                             R14 R0
       56 MOVE                             R15 R6
       57 MOVE                             R16 R12
       58 MOVE                             R17 R3
       59 MOVE                             R18 R8
       60 CALL                             R13 5 1
       61 MOVE                             R11 R13
       62 JUMP                             ; [+7]
       63 GETUPVAL                         R13 1
       64 MOVE                             R14 R0
       65 MOVE                             R15 R6
       66 MOVE                             R16 R12
       67 MOVE                             R17 R3
       68 CALL                             R13 4 1
       69 MOVE                             R11 R13
       70 JUMPIFNOTEQKNIL                  R11 ; [+5]
       72 JUMPIFNOTEQKNIL                  R6 ; [+95]
       74 MOVE                             R6 R9
       75 JUMP                             ; [+92]
       76 GETUPVAL                         R13 2
       77 JUMPIFNOT                        R13 ; [+38]
       78 JUMPIFNOT                        R6 ; [+37]
       79 GETTABLEKS                       R13 R11 K11 ["alternate"]
       81 JUMPIFNOTEQKNIL                  R13 ; [+34]
       83 MOVE                             R13 R6
       84 GETUPVAL                         R14 2
       85 JUMPIF                           R14 ; [+1]
       86 JUMP                             ; [+29]
       87 GETTABLEKS                       R14 R0 K12 ["deletions"]
       89 JUMPIFNOTEQKNIL                  R14 ; [+19]
       91 NEWTABLE                         R15 0 1
       93 MOVE                             R16 R13
       94 SETLIST                          R15 R16 1 [1]
       96 SETTABLEKS                       R15 R0 K12 ["deletions"]
       98 GETTABLEKS                       R16 R0 K13 ["flags"]
      100 GETUPVAL                         R17 3
      101 FASTCALL2                        BIT32_BOR R16 R17 ; [+3]
      103 GETIMPORT                        R15 K16 [bit32.bor]
      105 CALL                             R15 2 1
      106 SETTABLEKS                       R15 R0 K13 ["flags"]
      108 JUMP                             ; [+7]
      109 FASTCALL2                        TABLE_INSERT R14 R13 ; [+5]
      111 MOVE                             R16 R14
      112 MOVE                             R17 R13
      113 GETIMPORT                        R15 K18 [table.insert]
      115 CALL                             R15 2 0
      116 MOVE                             R13 R11
      117 MOVE                             R14 R7
      118 MOVE                             R15 R8
      119 SETTABLEKS                       R15 R13 K5 ["index"]
      121 GETUPVAL                         R16 2
      122 JUMPIF                           R16 ; [+2]
      123 MOVE                             R7 R14
      124 JUMP                             ; [+33]
      125 GETTABLEKS                       R16 R13 K11 ["alternate"]
      127 JUMPIFEQKNIL                     R16 ; [+19]
      129 GETTABLEKS                       R17 R16 K5 ["index"]
      131 JUMPIFNOTLT                      R17 R14 ; [+13]
      133 GETTABLEKS                       R19 R13 K13 ["flags"]
      135 GETUPVAL                         R20 4
      136 FASTCALL2                        BIT32_BOR R19 R20 ; [+3]
      138 GETIMPORT                        R18 K16 [bit32.bor]
      140 CALL                             R18 2 1
      141 SETTABLEKS                       R18 R13 K13 ["flags"]
      143 MOVE                             R7 R14
      144 JUMP                             ; [+13]
      145 MOVE                             R7 R17
      146 JUMP                             ; [+11]
      147 GETTABLEKS                       R18 R13 K13 ["flags"]
      149 GETUPVAL                         R19 4
      150 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      152 GETIMPORT                        R17 K16 [bit32.bor]
      154 CALL                             R17 2 1
      155 SETTABLEKS                       R17 R13 K13 ["flags"]
      157 MOVE                             R7 R14
      158 JUMPIFNOTEQKNIL                  R5 ; [+3]
      160 MOVE                             R4 R11
      161 JUMP                             ; [+2]
      162 SETTABLEKS                       R11 R5 K6 ["sibling"]
      164 MOVE                             R5 R11
      165 MOVE                             R6 R9
      166 ADDK                             R8 R8 K19 [1]
      167 JUMPBACK                         ; [-142]
      168 JUMPIFNOTLT                      R10 R8 ; [+45]
      170 MOVE                             R11 R6
      171 GETUPVAL                         R12 2
      172 JUMPIF                           R12 ; [+1]
      173 RETURN                           R4 1
      174 MOVE                             R12 R11
      175 JUMPIFEQKNIL                     R12 ; [+37]
      177 MOVE                             R13 R12
      178 GETUPVAL                         R14 2
      179 JUMPIF                           R14 ; [+1]
      180 JUMP                             ; [+29]
      181 GETTABLEKS                       R14 R0 K12 ["deletions"]
      183 JUMPIFNOTEQKNIL                  R14 ; [+19]
      185 NEWTABLE                         R15 0 1
      187 MOVE                             R16 R13
      188 SETLIST                          R15 R16 1 [1]
      190 SETTABLEKS                       R15 R0 K12 ["deletions"]
      192 GETTABLEKS                       R16 R0 K13 ["flags"]
      194 GETUPVAL                         R17 3
      195 FASTCALL2                        BIT32_BOR R16 R17 ; [+3]
      197 GETIMPORT                        R15 K16 [bit32.bor]
      199 CALL                             R15 2 1
      200 SETTABLEKS                       R15 R0 K13 ["flags"]
      202 JUMP                             ; [+7]
      203 FASTCALL2                        TABLE_INSERT R14 R13 ; [+5]
      205 MOVE                             R16 R14
      206 MOVE                             R17 R13
      207 GETIMPORT                        R15 K18 [table.insert]
      209 CALL                             R15 2 0
      210 GETTABLEKS                       R12 R12 K6 ["sibling"]
      212 JUMPBACK                         ; [-38]
      213 RETURN                           R4 1
      214 JUMPIFNOTEQKNIL                  R6 ; [+88]
      216 JUMPIFNOTLE                      R8 R10 ; [+85]
      218 LOADNIL                          R11
      219 GETTABLE                         R12 R2 R8
      220 JUMPIFEQKNIL                     R12 ; [+20]
      222 FASTCALL1                        TYPEOF R12 ; [+3]
      223 MOVE                             R14 R12
      224 GETIMPORT                        R13 K8 [typeof]
      226 CALL                             R13 1 1
      227 JUMPIFNOTEQKS                    R13 K9 ["table"] ; [+13]
      229 GETTABLEKS                       R13 R12 K10 ["$$typeof"]
      231 JUMPIFEQKNIL                     R13 ; [+9]
      233 GETUPVAL                         R13 5
      234 MOVE                             R14 R0
      235 MOVE                             R15 R12
      236 MOVE                             R16 R3
      237 MOVE                             R17 R8
      238 CALL                             R13 4 1
      239 MOVE                             R11 R13
      240 JUMP                             ; [+6]
      241 GETUPVAL                         R13 5
      242 MOVE                             R14 R0
      243 MOVE                             R15 R12
      244 MOVE                             R16 R3
      245 CALL                             R13 3 1
      246 MOVE                             R11 R13
      247 JUMPIFNOTEQKNIL                  R11 ; [+3]
      249 ADDK                             R8 R8 K19 [1]
      250 JUMP                             ; [+50]
      251 MOVE                             R13 R11
      252 MOVE                             R14 R7
      253 MOVE                             R15 R8
      254 SETTABLEKS                       R15 R13 K5 ["index"]
      256 GETUPVAL                         R16 2
      257 JUMPIF                           R16 ; [+2]
      258 MOVE                             R7 R14
      259 JUMP                             ; [+33]
      260 GETTABLEKS                       R16 R13 K11 ["alternate"]
      262 JUMPIFEQKNIL                     R16 ; [+19]
      264 GETTABLEKS                       R17 R16 K5 ["index"]
      266 JUMPIFNOTLT                      R17 R14 ; [+13]
      268 GETTABLEKS                       R19 R13 K13 ["flags"]
      270 GETUPVAL                         R20 4
      271 FASTCALL2                        BIT32_BOR R19 R20 ; [+3]
      273 GETIMPORT                        R18 K16 [bit32.bor]
      275 CALL                             R18 2 1
      276 SETTABLEKS                       R18 R13 K13 ["flags"]
      278 MOVE                             R7 R14
      279 JUMP                             ; [+13]
      280 MOVE                             R7 R17
      281 JUMP                             ; [+11]
      282 GETTABLEKS                       R18 R13 K13 ["flags"]
      284 GETUPVAL                         R19 4
      285 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      287 GETIMPORT                        R17 K16 [bit32.bor]
      289 CALL                             R17 2 1
      290 SETTABLEKS                       R17 R13 K13 ["flags"]
      292 MOVE                             R7 R14
      293 JUMPIFNOTEQKNIL                  R5 ; [+3]
      295 MOVE                             R4 R11
      296 JUMP                             ; [+2]
      297 SETTABLEKS                       R11 R5 K6 ["sibling"]
      299 MOVE                             R5 R11
      300 ADDK                             R8 R8 K19 [1]
      301 JUMPBACK                         ; [-86]
      302 RETURN                           R4 1
      303 GETUPVAL                         R11 6
      304 MOVE                             R12 R0
      305 MOVE                             R13 R6
      306 CALL                             R11 2 1
      307 JUMPIFNOTLE                      R8 R10 ; [+78]
      309 GETUPVAL                         R12 7
      310 MOVE                             R13 R11
      311 MOVE                             R14 R0
      312 MOVE                             R15 R8
      313 GETTABLE                         R16 R2 R8
      314 MOVE                             R17 R3
      315 MOVE                             R18 R8
      316 CALL                             R12 6 1
      317 JUMPIFEQKNIL                     R12 ; [+66]
      319 GETUPVAL                         R13 2
      320 JUMPIFNOT                        R13 ; [+15]
      321 GETTABLEKS                       R13 R12 K11 ["alternate"]
      323 JUMPIFEQKNIL                     R13 ; [+12]
      325 LOADNIL                          R13
      326 GETTABLEKS                       R14 R12 K20 ["key"]
      328 JUMPIFNOTEQKNIL                  R14 ; [+3]
      330 MOVE                             R13 R8
      331 JUMP                             ; [+2]
      332 GETTABLEKS                       R13 R12 K20 ["key"]
      334 LOADNIL                          R14
      335 SETTABLE                         R14 R11 R13
      336 MOVE                             R13 R7
      337 MOVE                             R14 R8
      338 SETTABLEKS                       R14 R12 K5 ["index"]
      340 GETUPVAL                         R15 2
      341 JUMPIF                           R15 ; [+2]
      342 MOVE                             R7 R13
      343 JUMP                             ; [+33]
      344 GETTABLEKS                       R15 R12 K11 ["alternate"]
      346 JUMPIFEQKNIL                     R15 ; [+19]
      348 GETTABLEKS                       R16 R15 K5 ["index"]
      350 JUMPIFNOTLT                      R16 R13 ; [+13]
      352 GETTABLEKS                       R18 R12 K13 ["flags"]
      354 GETUPVAL                         R19 4
      355 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      357 GETIMPORT                        R17 K16 [bit32.bor]
      359 CALL                             R17 2 1
      360 SETTABLEKS                       R17 R12 K13 ["flags"]
      362 MOVE                             R7 R13
      363 JUMP                             ; [+13]
      364 MOVE                             R7 R16
      365 JUMP                             ; [+11]
      366 GETTABLEKS                       R17 R12 K13 ["flags"]
      368 GETUPVAL                         R18 4
      369 FASTCALL2                        BIT32_BOR R17 R18 ; [+3]
      371 GETIMPORT                        R16 K16 [bit32.bor]
      373 CALL                             R16 2 1
      374 SETTABLEKS                       R16 R12 K13 ["flags"]
      376 MOVE                             R7 R13
      377 JUMPIFNOTEQKNIL                  R5 ; [+3]
      379 MOVE                             R4 R12
      380 JUMP                             ; [+2]
      381 SETTABLEKS                       R12 R5 K6 ["sibling"]
      383 MOVE                             R5 R12
      384 ADDK                             R8 R8 K19 [1]
      385 JUMPBACK                         ; [-79]
      386 GETUPVAL                         R12 2
      387 JUMPIFNOT                        R12 ; [+39]
      388 GETIMPORT                        R12 K22 [pairs]
      390 MOVE                             R13 R11
      391 CALL                             R12 1 3
      392 FORGPREP_NEXT                    R12
      393 GETUPVAL                         R17 2
      394 JUMPIF                           R17 ; [+1]
      395 JUMP                             ; [+29]
      396 GETTABLEKS                       R17 R0 K12 ["deletions"]
      398 JUMPIFNOTEQKNIL                  R17 ; [+19]
      400 NEWTABLE                         R18 0 1
      402 MOVE                             R19 R16
      403 SETLIST                          R18 R19 1 [1]
      405 SETTABLEKS                       R18 R0 K12 ["deletions"]
      407 GETTABLEKS                       R19 R0 K13 ["flags"]
      409 GETUPVAL                         R20 3
      410 FASTCALL2                        BIT32_BOR R19 R20 ; [+3]
      412 GETIMPORT                        R18 K16 [bit32.bor]
      414 CALL                             R18 2 1
      415 SETTABLEKS                       R18 R0 K13 ["flags"]
      417 JUMP                             ; [+7]
      418 FASTCALL2                        TABLE_INSERT R17 R16 ; [+5]
      420 MOVE                             R19 R17
      421 MOVE                             R20 R16
      422 GETIMPORT                        R18 K18 [table.insert]
      424 CALL                             R18 2 0
      425 FORGLOOP                         R12 2 ; [-33]
      427 RETURN                           R4 1

PROTO_21:
        0 GETIMPORT                        R6 K1 [_G]
        2 GETTABLEKS                       R5 R6 K2 ["__DEV__"]
        4 JUMPIFNOT                        R5 ; [+37]
        5 GETTABLEKS                       R5 R2 K3 ["entries"]
        7 JUMPIFNOTEQ                      R5 R4 ; [+10]
        9 GETUPVAL                         R5 0
       10 JUMPIF                           R5 ; [+5]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K4 ["error"]
       14 LOADK                            R6 K5 ["Using Maps as children is not supported. Use an array of keyed ReactElements instead."]
       15 CALL                             R5 1 0
       16 LOADB                            R5 1
       17 SETUPVAL                         R5 0
       18 MOVE                             R5 R4
       19 MOVE                             R6 R2
       20 CALL                             R5 1 1
       21 JUMPIFNOT                        R5 ; [+20]
       22 LOADNIL                          R6
       23 GETTABLEKS                       R7 R5 K6 ["next"]
       25 CALL                             R7 0 1
       26 GETTABLEKS                       R8 R7 K7 ["done"]
       28 JUMPIF                           R8 ; [+13]
       29 GETTABLEKS                       R8 R5 K6 ["next"]
       31 CALL                             R8 0 1
       32 MOVE                             R7 R8
       33 GETTABLEKS                       R8 R7 K8 ["value"]
       35 GETUPVAL                         R9 2
       36 MOVE                             R10 R8
       37 MOVE                             R11 R6
       38 MOVE                             R12 R0
       39 CALL                             R9 3 1
       40 MOVE                             R6 R9
       41 JUMPBACK                         ; [-16]
       42 MOVE                             R5 R4
       43 MOVE                             R6 R2
       44 CALL                             R5 1 1
       45 LOADNIL                          R6
       46 LOADNIL                          R7
       47 MOVE                             R8 R1
       48 LOADN                            R9 1
       49 LOADN                            R10 1
       50 LOADNIL                          R11
       51 GETTABLEKS                       R12 R5 K6 ["next"]
       53 CALL                             R12 0 1
       54 JUMPIFEQKNIL                     R8 ; [+123]
       56 GETTABLEKS                       R13 R12 K7 ["done"]
       58 JUMPIF                           R13 ; [+119]
       59 GETTABLEKS                       R13 R8 K9 ["index"]
       61 JUMPIFNOTLT                      R10 R13 ; [+4]
       63 MOVE                             R11 R8
       64 LOADNIL                          R8
       65 JUMP                             ; [+2]
       66 GETTABLEKS                       R11 R8 K10 ["sibling"]
       68 GETUPVAL                         R13 3
       69 MOVE                             R14 R0
       70 MOVE                             R15 R8
       71 GETTABLEKS                       R16 R12 K8 ["value"]
       73 MOVE                             R17 R3
       74 GETTABLEKS                       R18 R12 K11 ["key"]
       76 CALL                             R13 5 1
       77 JUMPIFNOTEQKNIL                  R13 ; [+5]
       79 JUMPIFNOTEQKNIL                  R8 ; [+98]
       81 MOVE                             R8 R11
       82 JUMP                             ; [+95]
       83 GETUPVAL                         R14 4
       84 JUMPIFNOT                        R14 ; [+38]
       85 JUMPIFNOT                        R8 ; [+37]
       86 GETTABLEKS                       R14 R13 K12 ["alternate"]
       88 JUMPIFNOTEQKNIL                  R14 ; [+34]
       90 MOVE                             R14 R8
       91 GETUPVAL                         R15 4
       92 JUMPIF                           R15 ; [+1]
       93 JUMP                             ; [+29]
       94 GETTABLEKS                       R15 R0 K13 ["deletions"]
       96 JUMPIFNOTEQKNIL                  R15 ; [+19]
       98 NEWTABLE                         R16 0 1
      100 MOVE                             R17 R14
      101 SETLIST                          R16 R17 1 [1]
      103 SETTABLEKS                       R16 R0 K13 ["deletions"]
      105 GETTABLEKS                       R17 R0 K14 ["flags"]
      107 GETUPVAL                         R18 5
      108 FASTCALL2                        BIT32_BOR R17 R18 ; [+3]
      110 GETIMPORT                        R16 K17 [bit32.bor]
      112 CALL                             R16 2 1
      113 SETTABLEKS                       R16 R0 K14 ["flags"]
      115 JUMP                             ; [+7]
      116 FASTCALL2                        TABLE_INSERT R15 R14 ; [+5]
      118 MOVE                             R17 R15
      119 MOVE                             R18 R14
      120 GETIMPORT                        R16 K20 [table.insert]
      122 CALL                             R16 2 0
      123 MOVE                             R14 R9
      124 MOVE                             R15 R10
      125 SETTABLEKS                       R15 R13 K9 ["index"]
      127 GETUPVAL                         R16 4
      128 JUMPIF                           R16 ; [+2]
      129 MOVE                             R9 R14
      130 JUMP                             ; [+33]
      131 GETTABLEKS                       R16 R13 K12 ["alternate"]
      133 JUMPIFEQKNIL                     R16 ; [+19]
      135 GETTABLEKS                       R17 R16 K9 ["index"]
      137 JUMPIFNOTLT                      R17 R14 ; [+13]
      139 GETTABLEKS                       R19 R13 K14 ["flags"]
      141 GETUPVAL                         R20 6
      142 FASTCALL2                        BIT32_BOR R19 R20 ; [+3]
      144 GETIMPORT                        R18 K17 [bit32.bor]
      146 CALL                             R18 2 1
      147 SETTABLEKS                       R18 R13 K14 ["flags"]
      149 MOVE                             R9 R14
      150 JUMP                             ; [+13]
      151 MOVE                             R9 R17
      152 JUMP                             ; [+11]
      153 GETTABLEKS                       R18 R13 K14 ["flags"]
      155 GETUPVAL                         R19 6
      156 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      158 GETIMPORT                        R17 K17 [bit32.bor]
      160 CALL                             R17 2 1
      161 SETTABLEKS                       R17 R13 K14 ["flags"]
      163 MOVE                             R9 R14
      164 JUMPIFNOTEQKNIL                  R7 ; [+3]
      166 MOVE                             R6 R13
      167 JUMP                             ; [+2]
      168 SETTABLEKS                       R13 R7 K10 ["sibling"]
      170 MOVE                             R7 R13
      171 MOVE                             R8 R11
      172 ADDK                             R10 R10 K21 [1]
      173 GETTABLEKS                       R14 R5 K6 ["next"]
      175 CALL                             R14 0 1
      176 MOVE                             R12 R14
      177 JUMPBACK                         ; [-124]
      178 GETTABLEKS                       R13 R12 K7 ["done"]
      180 JUMPIFNOT                        R13 ; [+44]
      181 MOVE                             R13 R8
      182 GETUPVAL                         R14 4
      183 JUMPIF                           R14 ; [+1]
      184 RETURN                           R6 1
      185 MOVE                             R14 R13
      186 JUMPIFEQKNIL                     R14 ; [+37]
      188 MOVE                             R15 R14
      189 GETUPVAL                         R16 4
      190 JUMPIF                           R16 ; [+1]
      191 JUMP                             ; [+29]
      192 GETTABLEKS                       R16 R0 K13 ["deletions"]
      194 JUMPIFNOTEQKNIL                  R16 ; [+19]
      196 NEWTABLE                         R17 0 1
      198 MOVE                             R18 R15
      199 SETLIST                          R17 R18 1 [1]
      201 SETTABLEKS                       R17 R0 K13 ["deletions"]
      203 GETTABLEKS                       R18 R0 K14 ["flags"]
      205 GETUPVAL                         R19 5
      206 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      208 GETIMPORT                        R17 K17 [bit32.bor]
      210 CALL                             R17 2 1
      211 SETTABLEKS                       R17 R0 K14 ["flags"]
      213 JUMP                             ; [+7]
      214 FASTCALL2                        TABLE_INSERT R16 R15 ; [+5]
      216 MOVE                             R18 R16
      217 MOVE                             R19 R15
      218 GETIMPORT                        R17 K20 [table.insert]
      220 CALL                             R17 2 0
      221 GETTABLEKS                       R14 R14 K10 ["sibling"]
      223 JUMPBACK                         ; [-38]
      224 RETURN                           R6 1
      225 JUMPIFNOTEQKNIL                  R8 ; [+75]
      227 GETTABLEKS                       R13 R12 K7 ["done"]
      229 JUMPIF                           R13 ; [+70]
      230 GETUPVAL                         R13 7
      231 MOVE                             R14 R0
      232 GETTABLEKS                       R15 R12 K8 ["value"]
      234 MOVE                             R16 R3
      235 GETTABLEKS                       R17 R12 K11 ["key"]
      237 CALL                             R13 4 1
      238 JUMPIFNOTEQKNIL                  R13 ; [+7]
      240 ADDK                             R10 R10 K21 [1]
      241 GETTABLEKS                       R14 R5 K6 ["next"]
      243 CALL                             R14 0 1
      244 MOVE                             R12 R14
      245 JUMP                             ; [+53]
      246 MOVE                             R14 R9
      247 MOVE                             R15 R10
      248 SETTABLEKS                       R15 R13 K9 ["index"]
      250 GETUPVAL                         R16 4
      251 JUMPIF                           R16 ; [+2]
      252 MOVE                             R9 R14
      253 JUMP                             ; [+33]
      254 GETTABLEKS                       R16 R13 K12 ["alternate"]
      256 JUMPIFEQKNIL                     R16 ; [+19]
      258 GETTABLEKS                       R17 R16 K9 ["index"]
      260 JUMPIFNOTLT                      R17 R14 ; [+13]
      262 GETTABLEKS                       R19 R13 K14 ["flags"]
      264 GETUPVAL                         R20 6
      265 FASTCALL2                        BIT32_BOR R19 R20 ; [+3]
      267 GETIMPORT                        R18 K17 [bit32.bor]
      269 CALL                             R18 2 1
      270 SETTABLEKS                       R18 R13 K14 ["flags"]
      272 MOVE                             R9 R14
      273 JUMP                             ; [+13]
      274 MOVE                             R9 R17
      275 JUMP                             ; [+11]
      276 GETTABLEKS                       R18 R13 K14 ["flags"]
      278 GETUPVAL                         R19 6
      279 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      281 GETIMPORT                        R17 K17 [bit32.bor]
      283 CALL                             R17 2 1
      284 SETTABLEKS                       R17 R13 K14 ["flags"]
      286 MOVE                             R9 R14
      287 JUMPIFNOTEQKNIL                  R7 ; [+3]
      289 MOVE                             R6 R13
      290 JUMP                             ; [+2]
      291 SETTABLEKS                       R13 R7 K10 ["sibling"]
      293 MOVE                             R7 R13
      294 ADDK                             R10 R10 K21 [1]
      295 GETTABLEKS                       R14 R5 K6 ["next"]
      297 CALL                             R14 0 1
      298 MOVE                             R12 R14
      299 JUMPBACK                         ; [-73]
      300 RETURN                           R6 1
      301 LOADNIL                          R13
      302 GETTABLEKS                       R14 R12 K7 ["done"]
      304 JUMPIF                           R14 ; [+89]
      305 JUMPIF                           R13 ; [+5]
      306 GETUPVAL                         R14 8
      307 MOVE                             R15 R0
      308 MOVE                             R16 R8
      309 CALL                             R14 2 1
      310 MOVE                             R13 R14
      311 GETUPVAL                         R14 9
      312 MOVE                             R15 R13
      313 MOVE                             R16 R0
      314 MOVE                             R17 R10
      315 GETTABLEKS                       R18 R12 K8 ["value"]
      317 MOVE                             R19 R3
      318 GETTABLEKS                       R20 R12 K11 ["key"]
      320 CALL                             R14 6 1
      321 JUMPIFEQKNIL                     R14 ; [+66]
      323 GETUPVAL                         R15 4
      324 JUMPIFNOT                        R15 ; [+15]
      325 GETTABLEKS                       R15 R14 K12 ["alternate"]
      327 JUMPIFEQKNIL                     R15 ; [+12]
      329 GETTABLEKS                       R15 R14 K11 ["key"]
      331 JUMPIFNOTEQKNIL                  R15 ; [+4]
      333 LOADNIL                          R15
      334 SETTABLE                         R15 R13 R10
      335 JUMP                             ; [+4]
      336 GETTABLEKS                       R15 R14 K11 ["key"]
      338 LOADNIL                          R16
      339 SETTABLE                         R16 R13 R15
      340 MOVE                             R15 R9
      341 MOVE                             R16 R10
      342 SETTABLEKS                       R16 R14 K9 ["index"]
      344 GETUPVAL                         R17 4
      345 JUMPIF                           R17 ; [+2]
      346 MOVE                             R9 R15
      347 JUMP                             ; [+33]
      348 GETTABLEKS                       R17 R14 K12 ["alternate"]
      350 JUMPIFEQKNIL                     R17 ; [+19]
      352 GETTABLEKS                       R18 R17 K9 ["index"]
      354 JUMPIFNOTLT                      R18 R15 ; [+13]
      356 GETTABLEKS                       R20 R14 K14 ["flags"]
      358 GETUPVAL                         R21 6
      359 FASTCALL2                        BIT32_BOR R20 R21 ; [+3]
      361 GETIMPORT                        R19 K17 [bit32.bor]
      363 CALL                             R19 2 1
      364 SETTABLEKS                       R19 R14 K14 ["flags"]
      366 MOVE                             R9 R15
      367 JUMP                             ; [+13]
      368 MOVE                             R9 R18
      369 JUMP                             ; [+11]
      370 GETTABLEKS                       R19 R14 K14 ["flags"]
      372 GETUPVAL                         R20 6
      373 FASTCALL2                        BIT32_BOR R19 R20 ; [+3]
      375 GETIMPORT                        R18 K17 [bit32.bor]
      377 CALL                             R18 2 1
      378 SETTABLEKS                       R18 R14 K14 ["flags"]
      380 MOVE                             R9 R15
      381 JUMPIFNOTEQKNIL                  R7 ; [+3]
      383 MOVE                             R6 R14
      384 JUMP                             ; [+2]
      385 SETTABLEKS                       R14 R7 K10 ["sibling"]
      387 MOVE                             R7 R14
      388 ADDK                             R10 R10 K21 [1]
      389 GETTABLEKS                       R15 R5 K6 ["next"]
      391 CALL                             R15 0 1
      392 MOVE                             R12 R15
      393 JUMPBACK                         ; [-92]
      394 GETUPVAL                         R14 4
      395 JUMPIFNOT                        R14 ; [+39]
      396 GETIMPORT                        R14 K23 [pairs]
      398 MOVE                             R15 R13
      399 CALL                             R14 1 3
      400 FORGPREP_NEXT                    R14
      401 GETUPVAL                         R19 4
      402 JUMPIF                           R19 ; [+1]
      403 JUMP                             ; [+29]
      404 GETTABLEKS                       R19 R0 K13 ["deletions"]
      406 JUMPIFNOTEQKNIL                  R19 ; [+19]
      408 NEWTABLE                         R20 0 1
      410 MOVE                             R21 R18
      411 SETLIST                          R20 R21 1 [1]
      413 SETTABLEKS                       R20 R0 K13 ["deletions"]
      415 GETTABLEKS                       R21 R0 K14 ["flags"]
      417 GETUPVAL                         R22 5
      418 FASTCALL2                        BIT32_BOR R21 R22 ; [+3]
      420 GETIMPORT                        R20 K17 [bit32.bor]
      422 CALL                             R20 2 1
      423 SETTABLEKS                       R20 R0 K14 ["flags"]
      425 JUMP                             ; [+7]
      426 FASTCALL2                        TABLE_INSERT R19 R18 ; [+5]
      428 MOVE                             R21 R19
      429 MOVE                             R22 R18
      430 GETIMPORT                        R20 K20 [table.insert]
      432 CALL                             R20 2 0
      433 FORGLOOP                         R14 2 ; [-33]
      435 RETURN                           R6 1

PROTO_22:
        0 JUMPIFEQKNIL                     R1 ; [+64]
        2 GETTABLEKS                       R4 R1 K0 ["tag"]
        4 GETUPVAL                         R5 0
        5 JUMPIFNOTEQ                      R4 R5 ; [+59]
        7 GETTABLEKS                       R4 R1 K1 ["sibling"]
        9 GETUPVAL                         R5 1
       10 JUMPIF                           R5 ; [+1]
       11 JUMP                             ; [+39]
       12 MOVE                             R5 R4
       13 JUMPIFEQKNIL                     R5 ; [+37]
       15 MOVE                             R6 R5
       16 GETUPVAL                         R7 1
       17 JUMPIF                           R7 ; [+1]
       18 JUMP                             ; [+29]
       19 GETTABLEKS                       R7 R0 K2 ["deletions"]
       21 JUMPIFNOTEQKNIL                  R7 ; [+19]
       23 NEWTABLE                         R8 0 1
       25 MOVE                             R9 R6
       26 SETLIST                          R8 R9 1 [1]
       28 SETTABLEKS                       R8 R0 K2 ["deletions"]
       30 GETTABLEKS                       R9 R0 K3 ["flags"]
       32 GETUPVAL                         R10 2
       33 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
       35 GETIMPORT                        R8 K6 [bit32.bor]
       37 CALL                             R8 2 1
       38 SETTABLEKS                       R8 R0 K3 ["flags"]
       40 JUMP                             ; [+7]
       41 FASTCALL2                        TABLE_INSERT R7 R6 ; [+5]
       43 MOVE                             R9 R7
       44 MOVE                             R10 R6
       45 GETIMPORT                        R8 K9 [table.insert]
       47 CALL                             R8 2 0
       48 GETTABLEKS                       R5 R5 K1 ["sibling"]
       50 JUMPBACK                         ; [-38]
       51 GETUPVAL                         R5 3
       52 MOVE                             R6 R1
       53 MOVE                             R7 R2
       54 CALL                             R5 2 1
       55 LOADN                            R6 1
       56 SETTABLEKS                       R6 R5 K10 ["index"]
       58 LOADNIL                          R6
       59 SETTABLEKS                       R6 R5 K1 ["sibling"]
       61 MOVE                             R4 R5
       62 SETTABLEKS                       R0 R4 K11 ["return_"]
       64 RETURN                           R4 1
       65 GETUPVAL                         R4 1
       66 JUMPIF                           R4 ; [+1]
       67 JUMP                             ; [+39]
       68 MOVE                             R4 R1
       69 JUMPIFEQKNIL                     R4 ; [+37]
       71 MOVE                             R5 R4
       72 GETUPVAL                         R6 1
       73 JUMPIF                           R6 ; [+1]
       74 JUMP                             ; [+29]
       75 GETTABLEKS                       R6 R0 K2 ["deletions"]
       77 JUMPIFNOTEQKNIL                  R6 ; [+19]
       79 NEWTABLE                         R7 0 1
       81 MOVE                             R8 R5
       82 SETLIST                          R7 R8 1 [1]
       84 SETTABLEKS                       R7 R0 K2 ["deletions"]
       86 GETTABLEKS                       R8 R0 K3 ["flags"]
       88 GETUPVAL                         R9 2
       89 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
       91 GETIMPORT                        R7 K6 [bit32.bor]
       93 CALL                             R7 2 1
       94 SETTABLEKS                       R7 R0 K3 ["flags"]
       96 JUMP                             ; [+7]
       97 FASTCALL2                        TABLE_INSERT R6 R5 ; [+5]
       99 MOVE                             R8 R6
      100 MOVE                             R9 R5
      101 GETIMPORT                        R7 K9 [table.insert]
      103 CALL                             R7 2 0
      104 GETTABLEKS                       R4 R4 K1 ["sibling"]
      106 JUMPBACK                         ; [-38]
      107 GETUPVAL                         R4 4
      108 MOVE                             R5 R2
      109 GETTABLEKS                       R6 R0 K12 ["mode"]
      111 MOVE                             R7 R3
      112 CALL                             R4 3 1
      113 SETTABLEKS                       R0 R4 K11 ["return_"]
      115 RETURN                           R4 1

PROTO_23:
        0 GETTABLEKS                       R4 R2 K0 ["key"]
        2 MOVE                             R5 R1
        3 JUMPIFEQKNIL                     R5 ; [+260]
        5 GETTABLEKS                       R6 R5 K0 ["key"]
        7 JUMPIFNOTEQ                      R6 R4 ; [+220]
        9 GETTABLEKS                       R6 R5 K1 ["tag"]
       11 GETUPVAL                         R7 0
       12 JUMPIFNOTEQ                      R6 R7 ; [+83]
       14 GETTABLEKS                       R6 R2 K2 ["type"]
       16 GETUPVAL                         R7 1
       17 JUMPIFNOTEQ                      R6 R7 ; [+166]
       19 GETTABLEKS                       R6 R5 K3 ["sibling"]
       21 GETUPVAL                         R7 2
       22 JUMPIF                           R7 ; [+1]
       23 JUMP                             ; [+39]
       24 MOVE                             R7 R6
       25 JUMPIFEQKNIL                     R7 ; [+37]
       27 MOVE                             R8 R7
       28 GETUPVAL                         R9 2
       29 JUMPIF                           R9 ; [+1]
       30 JUMP                             ; [+29]
       31 GETTABLEKS                       R9 R0 K4 ["deletions"]
       33 JUMPIFNOTEQKNIL                  R9 ; [+19]
       35 NEWTABLE                         R10 0 1
       37 MOVE                             R11 R8
       38 SETLIST                          R10 R11 1 [1]
       40 SETTABLEKS                       R10 R0 K4 ["deletions"]
       42 GETTABLEKS                       R11 R0 K5 ["flags"]
       44 GETUPVAL                         R12 3
       45 FASTCALL2                        BIT32_BOR R11 R12 ; [+3]
       47 GETIMPORT                        R10 K8 [bit32.bor]
       49 CALL                             R10 2 1
       50 SETTABLEKS                       R10 R0 K5 ["flags"]
       52 JUMP                             ; [+7]
       53 FASTCALL2                        TABLE_INSERT R9 R8 ; [+5]
       55 MOVE                             R11 R9
       56 MOVE                             R12 R8
       57 GETIMPORT                        R10 K11 [table.insert]
       59 CALL                             R10 2 0
       60 GETTABLEKS                       R7 R7 K3 ["sibling"]
       62 JUMPBACK                         ; [-38]
       63 MOVE                             R7 R5
       64 GETTABLEKS                       R9 R2 K12 ["props"]
       66 GETTABLEKS                       R8 R9 K13 ["children"]
       68 GETUPVAL                         R9 4
       69 MOVE                             R10 R7
       70 MOVE                             R11 R8
       71 CALL                             R9 2 1
       72 LOADN                            R10 1
       73 SETTABLEKS                       R10 R9 K14 ["index"]
       75 LOADNIL                          R10
       76 SETTABLEKS                       R10 R9 K3 ["sibling"]
       78 MOVE                             R6 R9
       79 SETTABLEKS                       R0 R6 K15 ["return_"]
       81 GETIMPORT                        R8 K17 [_G]
       83 GETTABLEKS                       R7 R8 K18 ["__DEV__"]
       85 JUMPIFNOT                        R7 ; [+8]
       86 GETTABLEKS                       R7 R2 K19 ["_source"]
       88 SETTABLEKS                       R7 R6 K20 ["_debugSource"]
       90 GETTABLEKS                       R7 R2 K21 ["_owner"]
       92 SETTABLEKS                       R7 R6 K22 ["_debugOwner"]
       94 RETURN                           R6 1
       95 JUMP                             ; [+88]
       96 GETTABLEKS                       R6 R5 K23 ["elementType"]
       98 GETTABLEKS                       R7 R2 K2 ["type"]
      100 JUMPIFNOTEQ                      R6 R7 ; [+83]
      102 GETTABLEKS                       R6 R5 K3 ["sibling"]
      104 GETUPVAL                         R7 2
      105 JUMPIF                           R7 ; [+1]
      106 JUMP                             ; [+39]
      107 MOVE                             R7 R6
      108 JUMPIFEQKNIL                     R7 ; [+37]
      110 MOVE                             R8 R7
      111 GETUPVAL                         R9 2
      112 JUMPIF                           R9 ; [+1]
      113 JUMP                             ; [+29]
      114 GETTABLEKS                       R9 R0 K4 ["deletions"]
      116 JUMPIFNOTEQKNIL                  R9 ; [+19]
      118 NEWTABLE                         R10 0 1
      120 MOVE                             R11 R8
      121 SETLIST                          R10 R11 1 [1]
      123 SETTABLEKS                       R10 R0 K4 ["deletions"]
      125 GETTABLEKS                       R11 R0 K5 ["flags"]
      127 GETUPVAL                         R12 3
      128 FASTCALL2                        BIT32_BOR R11 R12 ; [+3]
      130 GETIMPORT                        R10 K8 [bit32.bor]
      132 CALL                             R10 2 1
      133 SETTABLEKS                       R10 R0 K5 ["flags"]
      135 JUMP                             ; [+7]
      136 FASTCALL2                        TABLE_INSERT R9 R8 ; [+5]
      138 MOVE                             R11 R9
      139 MOVE                             R12 R8
      140 GETIMPORT                        R10 K11 [table.insert]
      142 CALL                             R10 2 0
      143 GETTABLEKS                       R7 R7 K3 ["sibling"]
      145 JUMPBACK                         ; [-38]
      146 MOVE                             R7 R5
      147 GETTABLEKS                       R8 R2 K12 ["props"]
      149 GETUPVAL                         R9 4
      150 MOVE                             R10 R7
      151 MOVE                             R11 R8
      152 CALL                             R9 2 1
      153 LOADN                            R10 1
      154 SETTABLEKS                       R10 R9 K14 ["index"]
      156 LOADNIL                          R10
      157 SETTABLEKS                       R10 R9 K3 ["sibling"]
      159 MOVE                             R6 R9
      160 GETGLOBAL                        R7 K24 ["coerceRef"]
      162 MOVE                             R8 R0
      163 MOVE                             R9 R5
      164 MOVE                             R10 R2
      165 CALL                             R7 3 1
      166 SETTABLEKS                       R7 R6 K25 ["ref"]
      168 SETTABLEKS                       R0 R6 K15 ["return_"]
      170 GETIMPORT                        R8 K17 [_G]
      172 GETTABLEKS                       R7 R8 K18 ["__DEV__"]
      174 JUMPIFNOT                        R7 ; [+8]
      175 GETTABLEKS                       R7 R2 K19 ["_source"]
      177 SETTABLEKS                       R7 R6 K20 ["_debugSource"]
      179 GETTABLEKS                       R7 R2 K21 ["_owner"]
      181 SETTABLEKS                       R7 R6 K22 ["_debugOwner"]
      183 RETURN                           R6 1
      184 MOVE                             R6 R5
      185 GETUPVAL                         R7 2
      186 JUMPIF                           R7 ; [+1]
      187 JUMP                             ; [+76]
      188 MOVE                             R7 R6
      189 JUMPIFEQKNIL                     R7 ; [+74]
      191 MOVE                             R8 R7
      192 GETUPVAL                         R9 2
      193 JUMPIF                           R9 ; [+1]
      194 JUMP                             ; [+29]
      195 GETTABLEKS                       R9 R0 K4 ["deletions"]
      197 JUMPIFNOTEQKNIL                  R9 ; [+19]
      199 NEWTABLE                         R10 0 1
      201 MOVE                             R11 R8
      202 SETLIST                          R10 R11 1 [1]
      204 SETTABLEKS                       R10 R0 K4 ["deletions"]
      206 GETTABLEKS                       R11 R0 K5 ["flags"]
      208 GETUPVAL                         R12 3
      209 FASTCALL2                        BIT32_BOR R11 R12 ; [+3]
      211 GETIMPORT                        R10 K8 [bit32.bor]
      213 CALL                             R10 2 1
      214 SETTABLEKS                       R10 R0 K5 ["flags"]
      216 JUMP                             ; [+7]
      217 FASTCALL2                        TABLE_INSERT R9 R8 ; [+5]
      219 MOVE                             R11 R9
      220 MOVE                             R12 R8
      221 GETIMPORT                        R10 K11 [table.insert]
      223 CALL                             R10 2 0
      224 GETTABLEKS                       R7 R7 K3 ["sibling"]
      226 JUMPBACK                         ; [-38]
      227 JUMP                             ; [+36]
      228 MOVE                             R6 R5
      229 GETUPVAL                         R7 2
      230 JUMPIF                           R7 ; [+1]
      231 JUMP                             ; [+29]
      232 GETTABLEKS                       R7 R0 K4 ["deletions"]
      234 JUMPIFNOTEQKNIL                  R7 ; [+19]
      236 NEWTABLE                         R8 0 1
      238 MOVE                             R9 R6
      239 SETLIST                          R8 R9 1 [1]
      241 SETTABLEKS                       R8 R0 K4 ["deletions"]
      243 GETTABLEKS                       R9 R0 K5 ["flags"]
      245 GETUPVAL                         R10 3
      246 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
      248 GETIMPORT                        R8 K8 [bit32.bor]
      250 CALL                             R8 2 1
      251 SETTABLEKS                       R8 R0 K5 ["flags"]
      253 JUMP                             ; [+7]
      254 FASTCALL2                        TABLE_INSERT R7 R6 ; [+5]
      256 MOVE                             R9 R7
      257 MOVE                             R10 R6
      258 GETIMPORT                        R8 K11 [table.insert]
      260 CALL                             R8 2 0
      261 GETTABLEKS                       R5 R5 K3 ["sibling"]
      263 JUMPBACK                         ; [-261]
      264 GETTABLEKS                       R6 R2 K2 ["type"]
      266 GETUPVAL                         R7 1
      267 JUMPIFNOTEQ                      R6 R7 ; [+15]
      269 GETUPVAL                         R6 5
      270 GETTABLEKS                       R8 R2 K12 ["props"]
      272 GETTABLEKS                       R7 R8 K13 ["children"]
      274 GETTABLEKS                       R8 R0 K26 ["mode"]
      276 MOVE                             R9 R3
      277 GETTABLEKS                       R10 R2 K0 ["key"]
      279 CALL                             R6 4 1
      280 SETTABLEKS                       R0 R6 K15 ["return_"]
      282 RETURN                           R6 1
      283 GETUPVAL                         R6 6
      284 MOVE                             R7 R2
      285 GETTABLEKS                       R8 R0 K26 ["mode"]
      287 MOVE                             R9 R3
      288 CALL                             R6 3 1
      289 GETGLOBAL                        R7 K24 ["coerceRef"]
      291 MOVE                             R8 R0
      292 MOVE                             R9 R1
      293 MOVE                             R10 R2
      294 CALL                             R7 3 1
      295 SETTABLEKS                       R7 R6 K25 ["ref"]
      297 SETTABLEKS                       R0 R6 K15 ["return_"]
      299 RETURN                           R6 1

PROTO_24:
        0 GETTABLEKS                       R4 R2 K0 ["key"]
        2 MOVE                             R5 R1
        3 JUMPIFEQKNIL                     R5 ; [+170]
        5 GETTABLEKS                       R6 R5 K0 ["key"]
        7 JUMPIFNOTEQ                      R6 R4 ; [+130]
        9 GETTABLEKS                       R6 R5 K1 ["tag"]
       11 GETUPVAL                         R7 0
       12 JUMPIFNOTEQ                      R6 R7 ; [+81]
       14 GETTABLEKS                       R7 R5 K2 ["stateNode"]
       16 GETTABLEKS                       R6 R7 K3 ["containerInfo"]
       18 GETTABLEKS                       R7 R2 K3 ["containerInfo"]
       20 JUMPIFNOTEQ                      R6 R7 ; [+73]
       22 GETTABLEKS                       R7 R5 K2 ["stateNode"]
       24 GETTABLEKS                       R6 R7 K4 ["implementation"]
       26 GETTABLEKS                       R7 R2 K4 ["implementation"]
       28 JUMPIFNOTEQ                      R6 R7 ; [+65]
       30 GETTABLEKS                       R6 R5 K5 ["sibling"]
       32 GETUPVAL                         R7 1
       33 JUMPIF                           R7 ; [+1]
       34 JUMP                             ; [+39]
       35 MOVE                             R7 R6
       36 JUMPIFEQKNIL                     R7 ; [+37]
       38 MOVE                             R8 R7
       39 GETUPVAL                         R9 1
       40 JUMPIF                           R9 ; [+1]
       41 JUMP                             ; [+29]
       42 GETTABLEKS                       R9 R0 K6 ["deletions"]
       44 JUMPIFNOTEQKNIL                  R9 ; [+19]
       46 NEWTABLE                         R10 0 1
       48 MOVE                             R11 R8
       49 SETLIST                          R10 R11 1 [1]
       51 SETTABLEKS                       R10 R0 K6 ["deletions"]
       53 GETTABLEKS                       R11 R0 K7 ["flags"]
       55 GETUPVAL                         R12 2
       56 FASTCALL2                        BIT32_BOR R11 R12 ; [+3]
       58 GETIMPORT                        R10 K10 [bit32.bor]
       60 CALL                             R10 2 1
       61 SETTABLEKS                       R10 R0 K7 ["flags"]
       63 JUMP                             ; [+7]
       64 FASTCALL2                        TABLE_INSERT R9 R8 ; [+5]
       66 MOVE                             R11 R9
       67 MOVE                             R12 R8
       68 GETIMPORT                        R10 K13 [table.insert]
       70 CALL                             R10 2 0
       71 GETTABLEKS                       R7 R7 K5 ["sibling"]
       73 JUMPBACK                         ; [-38]
       74 MOVE                             R7 R5
       75 GETTABLEKS                       R8 R2 K14 ["children"]
       77 JUMPIF                           R8 ; [+2]
       78 NEWTABLE                         R8 0 0
       80 GETUPVAL                         R9 3
       81 MOVE                             R10 R7
       82 MOVE                             R11 R8
       83 CALL                             R9 2 1
       84 LOADN                            R10 1
       85 SETTABLEKS                       R10 R9 K15 ["index"]
       87 LOADNIL                          R10
       88 SETTABLEKS                       R10 R9 K5 ["sibling"]
       90 MOVE                             R6 R9
       91 SETTABLEKS                       R0 R6 K16 ["return_"]
       93 RETURN                           R6 1
       94 MOVE                             R6 R5
       95 GETUPVAL                         R7 1
       96 JUMPIF                           R7 ; [+1]
       97 JUMP                             ; [+76]
       98 MOVE                             R7 R6
       99 JUMPIFEQKNIL                     R7 ; [+74]
      101 MOVE                             R8 R7
      102 GETUPVAL                         R9 1
      103 JUMPIF                           R9 ; [+1]
      104 JUMP                             ; [+29]
      105 GETTABLEKS                       R9 R0 K6 ["deletions"]
      107 JUMPIFNOTEQKNIL                  R9 ; [+19]
      109 NEWTABLE                         R10 0 1
      111 MOVE                             R11 R8
      112 SETLIST                          R10 R11 1 [1]
      114 SETTABLEKS                       R10 R0 K6 ["deletions"]
      116 GETTABLEKS                       R11 R0 K7 ["flags"]
      118 GETUPVAL                         R12 2
      119 FASTCALL2                        BIT32_BOR R11 R12 ; [+3]
      121 GETIMPORT                        R10 K10 [bit32.bor]
      123 CALL                             R10 2 1
      124 SETTABLEKS                       R10 R0 K7 ["flags"]
      126 JUMP                             ; [+7]
      127 FASTCALL2                        TABLE_INSERT R9 R8 ; [+5]
      129 MOVE                             R11 R9
      130 MOVE                             R12 R8
      131 GETIMPORT                        R10 K13 [table.insert]
      133 CALL                             R10 2 0
      134 GETTABLEKS                       R7 R7 K5 ["sibling"]
      136 JUMPBACK                         ; [-38]
      137 JUMP                             ; [+36]
      138 MOVE                             R6 R5
      139 GETUPVAL                         R7 1
      140 JUMPIF                           R7 ; [+1]
      141 JUMP                             ; [+29]
      142 GETTABLEKS                       R7 R0 K6 ["deletions"]
      144 JUMPIFNOTEQKNIL                  R7 ; [+19]
      146 NEWTABLE                         R8 0 1
      148 MOVE                             R9 R6
      149 SETLIST                          R8 R9 1 [1]
      151 SETTABLEKS                       R8 R0 K6 ["deletions"]
      153 GETTABLEKS                       R9 R0 K7 ["flags"]
      155 GETUPVAL                         R10 2
      156 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
      158 GETIMPORT                        R8 K10 [bit32.bor]
      160 CALL                             R8 2 1
      161 SETTABLEKS                       R8 R0 K7 ["flags"]
      163 JUMP                             ; [+7]
      164 FASTCALL2                        TABLE_INSERT R7 R6 ; [+5]
      166 MOVE                             R9 R7
      167 MOVE                             R10 R6
      168 GETIMPORT                        R8 K13 [table.insert]
      170 CALL                             R8 2 0
      171 GETTABLEKS                       R5 R5 K5 ["sibling"]
      173 JUMPBACK                         ; [-171]
      174 GETUPVAL                         R6 4
      175 MOVE                             R7 R2
      176 GETTABLEKS                       R8 R0 K17 ["mode"]
      178 MOVE                             R9 R3
      179 CALL                             R6 3 1
      180 SETTABLEKS                       R0 R6 K16 ["return_"]
      182 RETURN                           R6 1

PROTO_25:
        0 FASTCALL1                        TYPEOF R2 ; [+3]
        1 MOVE                             R5 R2
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 LOADB                            R5 0
        6 JUMPIFEQKNIL                     R2 ; [+16]
        8 LOADB                            R5 0
        9 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+13]
       11 LOADB                            R5 0
       12 GETTABLEKS                       R6 R2 K3 ["type"]
       14 GETUPVAL                         R7 0
       15 JUMPIFNOTEQ                      R6 R7 ; [+7]
       17 GETTABLEKS                       R6 R2 K4 ["key"]
       19 JUMPIFEQKNIL                     R6 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 JUMPIFNOT                        R5 ; [+10]
       24 GETTABLEKS                       R6 R2 K5 ["props"]
       26 GETTABLEKS                       R2 R6 K6 ["children"]
       28 FASTCALL1                        TYPEOF R2 ; [+3]
       29 MOVE                             R7 R2
       30 GETIMPORT                        R6 K1 [typeof]
       32 CALL                             R6 1 1
       33 MOVE                             R4 R6
       34 GETUPVAL                         R6 1
       35 MOVE                             R7 R2
       36 CALL                             R6 1 1
       37 LOADB                            R7 0
       38 JUMPIFEQKNIL                     R2 ; [+5]
       40 LOADB                            R7 0
       41 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+2]
       43 NOT                              R7 R6
       44 JUMPIFNOT                        R7 ; [+75]
       45 GETTABLEKS                       R8 R2 K7 ["$$typeof"]
       47 GETUPVAL                         R9 2
       48 JUMPIFNOTEQ                      R8 R9 ; [+25]
       50 GETUPVAL                         R10 3
       51 MOVE                             R11 R0
       52 MOVE                             R12 R1
       53 MOVE                             R13 R2
       54 MOVE                             R14 R3
       55 CALL                             R10 4 1
       56 GETUPVAL                         R11 4
       57 JUMPIFNOT                        R11 ; [+14]
       58 GETTABLEKS                       R11 R10 K8 ["alternate"]
       60 JUMPIFNOTEQKNIL                  R11 ; [+11]
       62 GETTABLEKS                       R12 R10 K9 ["flags"]
       64 GETUPVAL                         R13 5
       65 FASTCALL2                        BIT32_BOR R12 R13 ; [+3]
       67 GETIMPORT                        R11 K12 [bit32.bor]
       69 CALL                             R11 2 1
       70 SETTABLEKS                       R11 R10 K9 ["flags"]
       72 MOVE                             R9 R10
       73 RETURN                           R9 1
       74 GETUPVAL                         R9 6
       75 JUMPIFNOTEQ                      R8 R9 ; [+25]
       77 GETUPVAL                         R10 7
       78 MOVE                             R11 R0
       79 MOVE                             R12 R1
       80 MOVE                             R13 R2
       81 MOVE                             R14 R3
       82 CALL                             R10 4 1
       83 GETUPVAL                         R11 4
       84 JUMPIFNOT                        R11 ; [+14]
       85 GETTABLEKS                       R11 R10 K8 ["alternate"]
       87 JUMPIFNOTEQKNIL                  R11 ; [+11]
       89 GETTABLEKS                       R12 R10 K9 ["flags"]
       91 GETUPVAL                         R13 5
       92 FASTCALL2                        BIT32_BOR R12 R13 ; [+3]
       94 GETIMPORT                        R11 K12 [bit32.bor]
       96 CALL                             R11 2 1
       97 SETTABLEKS                       R11 R10 K9 ["flags"]
       99 MOVE                             R9 R10
      100 RETURN                           R9 1
      101 GETUPVAL                         R9 8
      102 JUMPIFNOTEQ                      R8 R9 ; [+55]
      104 GETUPVAL                         R9 9
      105 JUMPIFNOT                        R9 ; [+52]
      106 GETTABLEKS                       R9 R2 K13 ["_payload"]
      108 GETTABLEKS                       R10 R2 K14 ["_init"]
      110 GETUPVAL                         R11 10
      111 MOVE                             R12 R0
      112 MOVE                             R13 R1
      113 MOVE                             R14 R10
      114 MOVE                             R15 R9
      115 CALL                             R14 1 1
      116 MOVE                             R15 R3
      117 CALL                             R11 4 -1
      118 RETURN                           R11 -1
      119 JUMP                             ; [+38]
      120 JUMPIFNOT                        R6 ; [+7]
      121 GETUPVAL                         R8 11
      122 MOVE                             R9 R0
      123 MOVE                             R10 R1
      124 MOVE                             R11 R2
      125 MOVE                             R12 R3
      126 CALL                             R8 4 1
      127 RETURN                           R8 1
      128 JUMPIFEQKS                       R4 K15 ["string"] ; [+3]
      130 JUMPIFNOTEQKS                    R4 K16 ["number"] ; [+27]
      132 GETUPVAL                         R9 12
      133 MOVE                             R10 R0
      134 MOVE                             R11 R1
      135 LOADK                            R13 K17 [""]
      136 MOVE                             R14 R2
      137 CONCAT                           R12 R13 R14
      138 MOVE                             R13 R3
      139 CALL                             R9 4 1
      140 GETUPVAL                         R10 4
      141 JUMPIFNOT                        R10 ; [+14]
      142 GETTABLEKS                       R10 R9 K8 ["alternate"]
      144 JUMPIFNOTEQKNIL                  R10 ; [+11]
      146 GETTABLEKS                       R11 R9 K9 ["flags"]
      148 GETUPVAL                         R12 5
      149 FASTCALL2                        BIT32_BOR R11 R12 ; [+3]
      151 GETIMPORT                        R10 K12 [bit32.bor]
      153 CALL                             R10 2 1
      154 SETTABLEKS                       R10 R9 K9 ["flags"]
      156 MOVE                             R8 R9
      157 RETURN                           R8 1
      158 GETUPVAL                         R8 13
      159 MOVE                             R9 R2
      160 CALL                             R8 1 1
      161 JUMPIFNOT                        R8 ; [+8]
      162 GETUPVAL                         R9 14
      163 MOVE                             R10 R0
      164 MOVE                             R11 R1
      165 MOVE                             R12 R2
      166 MOVE                             R13 R3
      167 MOVE                             R14 R8
      168 CALL                             R9 5 1
      169 RETURN                           R9 1
      170 GETIMPORT                        R10 K19 [_G]
      172 GETTABLEKS                       R9 R10 K20 ["__DEV__"]
      174 JUMPIFNOT                        R9 ; [+24]
      175 JUMPIFNOTEQKS                    R4 K21 ["function"] ; [+23]
      177 GETIMPORT                        R10 K19 [_G]
      179 GETTABLEKS                       R9 R10 K20 ["__DEV__"]
      181 JUMPIFNOT                        R9 ; [+17]
      182 GETUPVAL                         R10 15
      183 GETTABLEKS                       R11 R0 K3 ["type"]
      185 CALL                             R10 1 1
      186 ORK                              R9 R10 K22 ["Component"]
      187 GETUPVAL                         R11 16
      188 GETTABLE                         R10 R11 R9
      189 JUMPIFNOT                        R10 ; [+1]
      190 JUMP                             ; [+8]
      191 GETUPVAL                         R10 16
      192 LOADB                            R11 1
      193 SETTABLE                         R11 R10 R9
      194 GETUPVAL                         R11 17
      195 GETTABLEKS                       R10 R11 K23 ["error"]
      197 LOADK                            R11 K24 ["Functions are not valid as a React child. This may happen if you return a Component instead of <Component /> from render. Or maybe you meant to call this function rather than return it."]
      198 CALL                             R10 1 0
      199 JUMPIFNOTEQKNIL                  R2 ; [+2]
      201 JUMPIF                           R5 ; [0]
      202 GETUPVAL                         R10 4
      203 JUMPIF                           R10 ; [+2]
      204 LOADNIL                          R9
      205 RETURN                           R9 1
      206 MOVE                             R10 R1
      207 JUMPIFEQKNIL                     R10 ; [+37]
      209 MOVE                             R11 R10
      210 GETUPVAL                         R12 4
      211 JUMPIF                           R12 ; [+1]
      212 JUMP                             ; [+29]
      213 GETTABLEKS                       R12 R0 K25 ["deletions"]
      215 JUMPIFNOTEQKNIL                  R12 ; [+19]
      217 NEWTABLE                         R13 0 1
      219 MOVE                             R14 R11
      220 SETLIST                          R13 R14 1 [1]
      222 SETTABLEKS                       R13 R0 K25 ["deletions"]
      224 GETTABLEKS                       R14 R0 K9 ["flags"]
      226 GETUPVAL                         R15 18
      227 FASTCALL2                        BIT32_BOR R14 R15 ; [+3]
      229 GETIMPORT                        R13 K12 [bit32.bor]
      231 CALL                             R13 2 1
      232 SETTABLEKS                       R13 R0 K9 ["flags"]
      234 JUMP                             ; [+7]
      235 FASTCALL2                        TABLE_INSERT R12 R11 ; [+5]
      237 MOVE                             R14 R12
      238 MOVE                             R15 R11
      239 GETIMPORT                        R13 K27 [table.insert]
      241 CALL                             R13 2 0
      242 GETTABLEKS                       R10 R10 K28 ["sibling"]
      244 JUMPBACK                         ; [-38]
      245 LOADNIL                          R9
      246 RETURN                           R9 1

PROTO_26:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 DUPCLOSURE                       R3 K0 [PROTO_7]
        7 DUPCLOSURE                       R4 K1 [PROTO_8]
        8 CAPTURE                          UPVAL U1
        9 NEWCLOSURE                       R5 P4
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U2
       12 NEWCLOSURE                       R6 P5
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 DUPCLOSURE                       R7 K2 [PROTO_11]
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U1
       19 DUPCLOSURE                       R8 K3 [PROTO_12]
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U7
       24 CAPTURE                          UPVAL U8
       25 CAPTURE                          UPVAL U9
       26 DUPCLOSURE                       R9 K4 [PROTO_13]
       27 CAPTURE                          UPVAL U10
       28 CAPTURE                          UPVAL U11
       29 CAPTURE                          UPVAL U1
       30 DUPCLOSURE                       R10 K5 [PROTO_14]
       31 CAPTURE                          UPVAL U12
       32 CAPTURE                          UPVAL U13
       33 CAPTURE                          UPVAL U1
       34 DUPCLOSURE                       R11 K6 [PROTO_15]
       35 NEWCLOSURE                       R12 P11
       36 CAPTURE                          UPVAL U14
       37 CAPTURE                          UPVAL U9
       38 CAPTURE                          UPVAL U15
       39 CAPTURE                          UPVAL U11
       40 CAPTURE                          UPVAL U7
       41 CAPTURE                          UPVAL U16
       42 CAPTURE                          VAL R12
       43 CAPTURE                          UPVAL U13
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U17
       46 CAPTURE                          UPVAL U18
       47 CAPTURE                          UPVAL U19
       48 NEWCLOSURE                       R13 P12
       49 CAPTURE                          UPVAL U14
       50 CAPTURE                          UPVAL U20
       51 CAPTURE                          UPVAL U12
       52 CAPTURE                          UPVAL U13
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          VAL R8
       55 CAPTURE                          UPVAL U15
       56 CAPTURE                          VAL R9
       57 CAPTURE                          UPVAL U7
       58 CAPTURE                          UPVAL U16
       59 CAPTURE                          VAL R13
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          UPVAL U4
       62 CAPTURE                          UPVAL U17
       63 CAPTURE                          UPVAL U18
       64 CAPTURE                          UPVAL U19
       65 NEWCLOSURE                       R14 P13
       66 CAPTURE                          UPVAL U14
       67 CAPTURE                          UPVAL U20
       68 CAPTURE                          UPVAL U12
       69 CAPTURE                          UPVAL U13
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          VAL R8
       72 CAPTURE                          UPVAL U15
       73 CAPTURE                          VAL R9
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          UPVAL U16
       76 CAPTURE                          VAL R14
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          UPVAL U4
       79 CAPTURE                          UPVAL U17
       80 CAPTURE                          UPVAL U18
       81 CAPTURE                          UPVAL U19
       82 NEWCLOSURE                       R15 P14
       83 CAPTURE                          UPVAL U14
       84 CAPTURE                          UPVAL U15
       85 CAPTURE                          UPVAL U21
       86 CAPTURE                          UPVAL U19
       87 CAPTURE                          UPVAL U7
       88 CAPTURE                          UPVAL U16
       89 CAPTURE                          VAL R15
       90 NEWCLOSURE                       R16 P15
       91 CAPTURE                          VAL R15
       92 CAPTURE                          VAL R13
       93 CAPTURE                          VAL R0
       94 CAPTURE                          UPVAL U0
       95 CAPTURE                          UPVAL U2
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R14
       99 NEWCLOSURE                       R17 P16
      100 CAPTURE                          UPVAL U22
      101 CAPTURE                          UPVAL U19
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U0
      106 CAPTURE                          UPVAL U2
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R14
      110 NEWCLOSURE                       R18 P17
      111 CAPTURE                          UPVAL U3
      112 CAPTURE                          VAL R0
      113 CAPTURE                          UPVAL U0
      114 CAPTURE                          UPVAL U1
      115 CAPTURE                          UPVAL U4
      116 NEWCLOSURE                       R19 P18
      117 CAPTURE                          UPVAL U12
      118 CAPTURE                          UPVAL U20
      119 CAPTURE                          VAL R0
      120 CAPTURE                          UPVAL U0
      121 CAPTURE                          UPVAL U1
      122 CAPTURE                          UPVAL U13
      123 CAPTURE                          UPVAL U9
      124 NEWCLOSURE                       R20 P19
      125 CAPTURE                          UPVAL U10
      126 CAPTURE                          VAL R0
      127 CAPTURE                          UPVAL U0
      128 CAPTURE                          UPVAL U1
      129 CAPTURE                          UPVAL U11
      130 NEWCLOSURE                       R21 P20
      131 CAPTURE                          UPVAL U20
      132 CAPTURE                          UPVAL U23
      133 CAPTURE                          UPVAL U14
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R0
      136 CAPTURE                          UPVAL U2
      137 CAPTURE                          UPVAL U15
      138 CAPTURE                          VAL R20
      139 CAPTURE                          UPVAL U7
      140 CAPTURE                          UPVAL U16
      141 CAPTURE                          VAL R21
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R18
      144 CAPTURE                          UPVAL U24
      145 CAPTURE                          VAL R17
      146 CAPTURE                          UPVAL U17
      147 CAPTURE                          UPVAL U18
      148 CAPTURE                          UPVAL U19
      149 CAPTURE                          UPVAL U0
      150 RETURN                           R21 1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 LOADB                            R3 1
        2 JUMPIFEQKNIL                     R0 ; [+9]
        4 GETTABLEKS                       R4 R1 K0 ["child"]
        6 GETTABLEKS                       R5 R0 K0 ["child"]
        8 JUMPIFEQ                         R4 R5 ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 LOADK                            R4 K1 ["Resuming work not yet implemented."]
       13 CALL                             R2 2 0
       14 GETTABLEKS                       R2 R1 K0 ["child"]
       16 JUMPIFNOTEQKNIL                  R2 ; [+2]
       18 RETURN                           R0 0
       19 GETTABLEKS                       R2 R1 K0 ["child"]
       21 GETUPVAL                         R3 1
       22 MOVE                             R4 R2
       23 GETTABLEKS                       R5 R2 K2 ["pendingProps"]
       25 CALL                             R3 2 1
       26 SETTABLEKS                       R3 R1 K0 ["child"]
       28 SETTABLEKS                       R1 R3 K3 ["return_"]
       30 GETTABLEKS                       R4 R2 K4 ["sibling"]
       32 JUMPIFEQKNIL                     R4 ; [+15]
       34 GETTABLEKS                       R2 R2 K4 ["sibling"]
       36 GETUPVAL                         R4 1
       37 MOVE                             R5 R2
       38 GETTABLEKS                       R6 R2 K2 ["pendingProps"]
       40 CALL                             R4 2 1
       41 SETTABLEKS                       R4 R3 K4 ["sibling"]
       43 GETTABLEKS                       R3 R3 K4 ["sibling"]
       45 SETTABLEKS                       R1 R3 K3 ["return_"]
       47 JUMPBACK                         ; [-18]
       48 LOADNIL                          R4
       49 SETTABLEKS                       R4 R3 K4 ["sibling"]
       51 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R2 R0 K0 ["child"]
        2 JUMPIFEQKNIL                     R2 ; [+8]
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R2
        6 MOVE                             R5 R1
        7 CALL                             R3 2 0
        8 GETTABLEKS                       R2 R2 K1 ["sibling"]
       10 JUMPBACK                         ; [-9]
       11 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Error"]
       16 GETIMPORT                        R5 K4 [require]
       18 GETTABLEKS                       R6 R0 K8 ["Shared"]
       20 CALL                             R5 1 1
       21 GETTABLEKS                       R4 R5 K9 ["console"]
       23 GETIMPORT                        R5 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Shared"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K4 [require]
       30 GETTABLEKS                       R7 R0 K10 ["React"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K4 [require]
       35 GETIMPORT                        R10 K1 [script]
       37 GETTABLEKS                       R9 R10 K2 ["Parent"]
       39 GETTABLEKS                       R8 R9 K11 ["ReactInternalTypes"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K4 [require]
       44 GETIMPORT                        R11 K1 [script]
       46 GETTABLEKS                       R10 R11 K2 ["Parent"]
       48 GETTABLEKS                       R9 R10 K12 ["ReactFiberLane"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R10 K4 [require]
       53 GETTABLEKS                       R11 R0 K8 ["Shared"]
       55 CALL                             R10 1 1
       56 GETTABLEKS                       R9 R10 K13 ["getComponentName"]
       58 GETIMPORT                        R10 K4 [require]
       60 GETIMPORT                        R13 K1 [script]
       62 GETTABLEKS                       R12 R13 K2 ["Parent"]
       64 GETTABLEKS                       R11 R12 K14 ["ReactFiberFlags"]
       66 CALL                             R10 1 1
       67 GETTABLEKS                       R11 R10 K15 ["Placement"]
       69 GETTABLEKS                       R12 R10 K16 ["Deletion"]
       71 GETIMPORT                        R14 K4 [require]
       73 GETTABLEKS                       R15 R0 K8 ["Shared"]
       75 CALL                             R14 1 1
       76 GETTABLEKS                       R13 R14 K17 ["ReactSymbols"]
       78 GETTABLEKS                       R14 R13 K18 ["getIteratorFn"]
       80 GETTABLEKS                       R15 R13 K19 ["REACT_ELEMENT_TYPE"]
       82 GETTABLEKS                       R16 R13 K20 ["REACT_FRAGMENT_TYPE"]
       84 GETTABLEKS                       R17 R13 K21 ["REACT_PORTAL_TYPE"]
       86 GETTABLEKS                       R18 R13 K22 ["REACT_LAZY_TYPE"]
       88 GETTABLEKS                       R19 R13 K23 ["REACT_BLOCK_TYPE"]
       90 GETIMPORT                        R20 K4 [require]
       92 GETIMPORT                        R23 K1 [script]
       94 GETTABLEKS                       R22 R23 K2 ["Parent"]
       96 GETTABLEKS                       R21 R22 K24 ["ReactWorkTags"]
       98 CALL                             R20 1 1
       99 GETTABLEKS                       R21 R20 K25 ["FunctionComponent"]
      101 GETTABLEKS                       R22 R20 K26 ["ClassComponent"]
      103 GETTABLEKS                       R23 R20 K27 ["HostText"]
      105 GETTABLEKS                       R24 R20 K28 ["HostPortal"]
      107 GETTABLEKS                       R25 R20 K29 ["ForwardRef"]
      109 GETTABLEKS                       R26 R20 K30 ["Fragment"]
      111 GETTABLEKS                       R27 R20 K31 ["SimpleMemoComponent"]
      113 GETTABLEKS                       R28 R20 K32 ["Block"]
      115 GETIMPORT                        R30 K4 [require]
      117 GETTABLEKS                       R31 R0 K8 ["Shared"]
      119 CALL                             R30 1 1
      120 GETTABLEKS                       R29 R30 K33 ["invariant"]
      122 GETIMPORT                        R31 K4 [require]
      124 GETTABLEKS                       R32 R0 K8 ["Shared"]
      126 CALL                             R31 1 1
      127 GETTABLEKS                       R30 R31 K34 ["ReactFeatureFlags"]
      129 GETTABLEKS                       R31 R30 K35 ["enableLazyElements"]
      131 GETTABLEKS                       R32 R30 K36 ["enableBlocksAPI"]
      133 GETIMPORT                        R33 K4 [require]
      135 GETIMPORT                        R36 K1 [script]
      137 GETTABLEKS                       R35 R36 K2 ["Parent"]
      139 GETTABLEKS                       R34 R35 K37 ["ReactFiber.new"]
      141 CALL                             R33 1 1
      142 GETTABLEKS                       R34 R33 K38 ["createWorkInProgress"]
      144 GETTABLEKS                       R35 R33 K39 ["resetWorkInProgress"]
      146 GETTABLEKS                       R36 R33 K40 ["createFiberFromElement"]
      148 GETTABLEKS                       R37 R33 K41 ["createFiberFromFragment"]
      150 GETTABLEKS                       R38 R33 K42 ["createFiberFromText"]
      152 GETTABLEKS                       R39 R33 K43 ["createFiberFromPortal"]
      154 NEWTABLE                         R40 4 0
      156 LOADNIL                          R41
      157 LOADNIL                          R42
      158 LOADNIL                          R43
      159 DUPCLOSURE                       R44 K44 [PROTO_0]
      160 GETIMPORT                        R46 K46 [_G]
      162 GETTABLEKS                       R45 R46 K47 ["__DEV__"]
      164 JUMPIFNOT                        R45 ; [+10]
      165 LOADB                            R41 0
      166 NEWTABLE                         R42 0 0
      168 NEWTABLE                         R43 0 0
      170 NEWCLOSURE                       R44 P1
      171 CAPTURE                          VAL R29
      172 CAPTURE                          VAL R9
      173 CAPTURE                          REF R42
      174 CAPTURE                          VAL R4
      175 GETTABLEKS                       R45 R2 K48 ["isArray"]
      177 DUPCLOSURE                       R46 K49 [PROTO_2]
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R3
      180 SETGLOBAL                        R46 K50 ["coerceRef"]
      182 NEWCLOSURE                       R46 P3
      183 CAPTURE                          VAL R9
      184 CAPTURE                          REF R43
      185 CAPTURE                          VAL R4
      186 DUPCLOSURE                       R47 K51 [PROTO_4]
      187 SETGLOBAL                        R47 K52 ["resolveLazyType"]
      189 NEWCLOSURE                       R47 P5
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R34
      192 CAPTURE                          VAL R11
      193 CAPTURE                          VAL R23
      194 CAPTURE                          VAL R38
      195 CAPTURE                          VAL R32
      196 CAPTURE                          VAL R28
      197 CAPTURE                          VAL R18
      198 CAPTURE                          VAL R19
      199 CAPTURE                          VAL R36
      200 CAPTURE                          VAL R24
      201 CAPTURE                          VAL R39
      202 CAPTURE                          VAL R26
      203 CAPTURE                          VAL R37
      204 CAPTURE                          VAL R15
      205 CAPTURE                          VAL R17
      206 CAPTURE                          VAL R31
      207 CAPTURE                          VAL R9
      208 CAPTURE                          REF R43
      209 CAPTURE                          VAL R4
      210 CAPTURE                          VAL R16
      211 CAPTURE                          REF R44
      212 CAPTURE                          REF R41
      213 CAPTURE                          VAL R45
      214 CAPTURE                          VAL R14
      215 MOVE                             R48 R47
      216 LOADB                            R49 1
      217 CALL                             R48 1 1
      218 SETTABLEKS                       R48 R40 K53 ["reconcileChildFibers"]
      220 MOVE                             R48 R47
      221 LOADB                            R49 0
      222 CALL                             R48 1 1
      223 SETTABLEKS                       R48 R40 K54 ["mountChildFibers"]
      225 DUPCLOSURE                       R48 K55 [PROTO_27]
      226 CAPTURE                          VAL R29
      227 CAPTURE                          VAL R34
      228 SETTABLEKS                       R48 R40 K56 ["cloneChildFibers"]
      230 DUPCLOSURE                       R48 K57 [PROTO_28]
      231 CAPTURE                          VAL R35
      232 SETTABLEKS                       R48 R40 K58 ["resetChildFibers"]
      234 CLOSEUPVALS                      R41
      235 RETURN                           R40 1
