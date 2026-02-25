PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 FASTCALL1                        TYPE R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [type]
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
       31 FASTCALL1                        TYPE R5 ; [+2]
       32 GETIMPORT                        R4 K1 [type]
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
       47 GETTABLEKS                       R4 R1 K0 ["type"]
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
       59 GETTABLEKS                       R3 R4 K8 ["error"]
       61 LOADK                            R4 K9 ["Each child in a list should have a unique \"key\" prop. See https://reactjs.org/link/warning-keys for more information."]
       62 CALL                             R3 1 0
       63 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R2 K0 ["ref"]
        2 JUMPIFEQKNIL                     R3 ; [+56]
        4 FASTCALL1                        TYPE R3 ; [+3]
        5 MOVE                             R5 R3
        6 GETIMPORT                        R4 K2 [type]
        8 CALL                             R4 1 1
        9 JUMPIFNOTEQKS                    R4 K3 ["string"] ; [+49]
       11 GETTABLEKS                       R4 R2 K4 ["_owner"]
       13 JUMPIFNOT                        R4 ; [+11]
       14 GETTABLEKS                       R4 R2 K5 ["_self"]
       16 JUMPIFNOT                        R4 ; [+8]
       17 GETTABLEKS                       R5 R2 K4 ["_owner"]
       19 GETTABLEKS                       R4 R5 K6 ["stateNode"]
       21 GETTABLEKS                       R5 R2 K5 ["_self"]
       23 JUMPIFNOTEQ                      R4 R5 ; [+28]
       25 LOADNIL                          R4
       26 GETUPVAL                         R5 0
       27 JUMPIFNOT                        R5 ; [+6]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R6 R0 K1 ["type"]
       31 CALL                             R5 1 1
       32 ORK                              R4 R5 K7 ["Component"]
       33 JUMP                             ; [+1]
       34 LOADK                            R4 K8 ["<enable __DEV__ mode for component names>"]
       35 GETIMPORT                        R5 K10 [error]
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R6 R7 K11 ["new"]
       40 GETIMPORT                        R7 K13 [string.format]
       42 LOADK                            R8 K14 ["Component \"%s\" contains the string ref \"%s\". Support for string refs has been removed. We recommend using useRef() or createRef() instead. Learn more about using refs safely here: https://reactjs.org/link/strict-mode-string-ref"]
       43 MOVE                             R9 R4
       44 FASTCALL1                        TOSTRING R3 ; [+3]
       45 MOVE                             R11 R3
       46 GETIMPORT                        R10 K16 [tostring]
       48 CALL                             R10 1 1
       49 CALL                             R7 3 -1
       50 CALL                             R6 -1 -1
       51 CALL                             R5 -1 0
       52 GETTABLEKS                       R4 R2 K4 ["_owner"]
       54 JUMPIF                           R4 ; [+4]
       55 GETIMPORT                        R4 K10 [error]
       57 LOADK                            R5 K17 ["Expected ref to be a function or an object returned by React.createRef(), or nil."]
       58 CALL                             R4 1 0
       59 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+17]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R3 R0 K1 ["type"]
        5 CALL                             R2 1 1
        6 ORK                              R1 R2 K0 ["Component"]
        7 GETUPVAL                         R3 2
        8 GETTABLE                         R2 R3 R1
        9 JUMPIFNOT                        R2 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 2
       12 LOADB                            R3 1
       13 SETTABLE                         R3 R2 R1
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K2 ["error"]
       17 LOADK                            R3 K3 ["Functions are not valid as a React child. This may happen if you return a Component instead of <Component /> from render. Or maybe you meant to call this function rather than return it."]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_payload"]
        2 GETTABLEKS                       R2 R0 K1 ["_init"]
        4 GETIMPORT                        R3 K3 [xpcall]
        6 MOVE                             R4 R2
        7 GETUPVAL                         R5 0
        8 MOVE                             R6 R1
        9 CALL                             R3 3 2
       10 JUMPIF                           R3 ; [+1]
       11 RETURN                           R0 1
       12 RETURN                           R4 1

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
        0 JUMPIFEQKNIL                     R1 ; [+115]
        2 GETTABLEKS                       R4 R1 K0 ["elementType"]
        4 GETTABLEKS                       R5 R2 K1 ["type"]
        6 JUMPIFEQ                         R4 R5 ; [+8]
        8 GETUPVAL                         R4 0
        9 JUMPIFNOT                        R4 ; [+39]
       10 GETUPVAL                         R4 1
       11 MOVE                             R5 R1
       12 MOVE                             R6 R2
       13 CALL                             R4 2 1
       14 JUMPIFNOT                        R4 ; [+34]
       15 GETTABLEKS                       R5 R2 K2 ["props"]
       17 GETUPVAL                         R6 2
       18 MOVE                             R7 R1
       19 MOVE                             R8 R5
       20 CALL                             R6 2 1
       21 LOADN                            R7 1
       22 SETTABLEKS                       R7 R6 K3 ["index"]
       24 LOADNIL                          R7
       25 SETTABLEKS                       R7 R6 K4 ["sibling"]
       27 MOVE                             R4 R6
       28 GETGLOBAL                        R5 K5 ["coerceRef"]
       30 MOVE                             R6 R0
       31 MOVE                             R7 R1
       32 MOVE                             R8 R2
       33 CALL                             R5 3 1
       34 SETTABLEKS                       R5 R4 K6 ["ref"]
       36 SETTABLEKS                       R0 R4 K7 ["return_"]
       38 GETUPVAL                         R5 0
       39 JUMPIFNOT                        R5 ; [+8]
       40 GETTABLEKS                       R5 R2 K8 ["_source"]
       42 SETTABLEKS                       R5 R4 K9 ["_debugSource"]
       44 GETTABLEKS                       R5 R2 K10 ["_owner"]
       46 SETTABLEKS                       R5 R4 K11 ["_debugOwner"]
       48 RETURN                           R4 1
       49 GETUPVAL                         R4 3
       50 JUMPIFNOT                        R4 ; [+65]
       51 GETTABLEKS                       R4 R1 K12 ["tag"]
       53 GETUPVAL                         R5 4
       54 JUMPIFNOTEQ                      R4 R5 ; [+61]
       56 GETTABLEKS                       R4 R2 K1 ["type"]
       58 FASTCALL1                        TYPE R4 ; [+3]
       59 MOVE                             R6 R4
       60 GETIMPORT                        R5 K13 [type]
       62 CALL                             R5 1 1
       63 JUMPIFNOTEQKS                    R5 K14 ["table"] ; [+11]
       65 GETTABLEKS                       R5 R4 K15 ["$$typeof"]
       67 GETUPVAL                         R6 5
       68 JUMPIFNOTEQ                      R5 R6 ; [+6]
       70 GETGLOBAL                        R5 K16 ["resolveLazyType"]
       72 MOVE                             R6 R4
       73 CALL                             R5 1 1
       74 MOVE                             R4 R5
       75 GETTABLEKS                       R5 R4 K15 ["$$typeof"]
       77 GETUPVAL                         R6 6
       78 JUMPIFNOTEQ                      R5 R6 ; [+37]
       80 GETTABLEKS                       R5 R4 K17 ["_render"]
       82 GETTABLEKS                       R7 R1 K1 ["type"]
       84 GETTABLEKS                       R6 R7 K17 ["_render"]
       86 JUMPIFNOTEQ                      R5 R6 ; [+29]
       88 GETTABLEKS                       R6 R2 K2 ["props"]
       90 GETUPVAL                         R7 2
       91 MOVE                             R8 R1
       92 MOVE                             R9 R6
       93 CALL                             R7 2 1
       94 LOADN                            R8 1
       95 SETTABLEKS                       R8 R7 K3 ["index"]
       97 LOADNIL                          R8
       98 SETTABLEKS                       R8 R7 K4 ["sibling"]
      100 MOVE                             R5 R7
      101 SETTABLEKS                       R0 R5 K7 ["return_"]
      103 SETTABLEKS                       R4 R5 K1 ["type"]
      105 GETUPVAL                         R6 0
      106 JUMPIFNOT                        R6 ; [+8]
      107 GETTABLEKS                       R6 R2 K8 ["_source"]
      109 SETTABLEKS                       R6 R5 K9 ["_debugSource"]
      111 GETTABLEKS                       R6 R2 K10 ["_owner"]
      113 SETTABLEKS                       R6 R5 K11 ["_debugOwner"]
      115 RETURN                           R5 1
      116 GETUPVAL                         R4 7
      117 MOVE                             R5 R2
      118 GETTABLEKS                       R6 R0 K18 ["mode"]
      120 MOVE                             R7 R3
      121 CALL                             R4 3 1
      122 GETGLOBAL                        R5 K5 ["coerceRef"]
      124 MOVE                             R6 R0
      125 MOVE                             R7 R1
      126 MOVE                             R8 R2
      127 CALL                             R5 3 1
      128 SETTABLEKS                       R5 R4 K6 ["ref"]
      130 SETTABLEKS                       R0 R4 K7 ["return_"]
      132 RETURN                           R4 1

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
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K2 [type]
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
        4 FASTCALL1                        TYPE R1 ; [+3]
        5 MOVE                             R5 R1
        6 GETIMPORT                        R4 K1 [type]
        8 CALL                             R4 1 1
        9 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+87]
       11 GETTABLEKS                       R5 R1 K3 ["key"]
       13 JUMPIFNOTEQKNIL                  R5 ; [+22]
       15 FASTCALL1                        TYPE R3 ; [+3]
       16 MOVE                             R6 R3
       17 GETIMPORT                        R5 K1 [type]
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
      114 GETUPVAL                         R5 9
      115 JUMPIFNOT                        R5 ; [+21]
      116 JUMPIFNOTEQKS                    R4 K15 ["function"] ; [+20]
      118 GETUPVAL                         R5 9
      119 JUMPIFNOT                        R5 ; [+17]
      120 GETUPVAL                         R6 10
      121 GETTABLEKS                       R7 R0 K0 ["type"]
      123 CALL                             R6 1 1
      124 ORK                              R5 R6 K16 ["Component"]
      125 GETUPVAL                         R7 11
      126 GETTABLE                         R6 R7 R5
      127 JUMPIFNOT                        R6 ; [+1]
      128 JUMP                             ; [+8]
      129 GETUPVAL                         R6 11
      130 LOADB                            R7 1
      131 SETTABLE                         R7 R6 R5
      132 GETUPVAL                         R7 12
      133 GETTABLEKS                       R6 R7 K17 ["error"]
      135 LOADK                            R7 K18 ["Functions are not valid as a React child. This may happen if you return a Component instead of <Component /> from render. Or maybe you meant to call this function rather than return it."]
      136 CALL                             R6 1 0
      137 LOADNIL                          R5
      138 RETURN                           R5 1

PROTO_17:
        0 JUMPIFNOTEQKNIL                  R2 ; [+3]
        2 LOADNIL                          R5
        3 RETURN                           R5 1
        4 JUMPIFEQKNIL                     R1 ; [+4]
        6 GETTABLEKS                       R5 R1 K0 ["key"]
        8 JUMP                             ; [+1]
        9 LOADNIL                          R5
       10 FASTCALL1                        TYPE R2 ; [+3]
       11 MOVE                             R7 R2
       12 GETIMPORT                        R6 K2 [type]
       14 CALL                             R6 1 1
       15 JUMPIFNOTEQKS                    R6 K3 ["table"] ; [+159]
       17 GETTABLEKS                       R7 R2 K0 ["key"]
       19 JUMPIFNOTEQKNIL                  R7 ; [+22]
       21 FASTCALL1                        TYPE R4 ; [+3]
       22 MOVE                             R8 R4
       23 GETIMPORT                        R7 K2 [type]
       25 CALL                             R7 1 1
       26 JUMPIFEQKS                       R7 K4 ["string"] ; [+3]
       28 JUMPIFNOTEQKS                    R7 K5 ["number"] ; [+4]
       30 SETTABLEKS                       R4 R2 K0 ["key"]
       32 JUMP                             ; [+9]
       33 JUMPIFNOTEQKS                    R7 K3 ["table"] ; [+8]
       35 FASTCALL1                        TOSTRING R4 ; [+3]
       36 MOVE                             R9 R4
       37 GETIMPORT                        R8 K7 [tostring]
       39 CALL                             R8 1 1
       40 SETTABLEKS                       R8 R2 K0 ["key"]
       42 GETTABLEKS                       R7 R2 K8 ["$$typeof"]
       44 GETUPVAL                         R8 0
       45 JUMPIFNOTEQ                      R7 R8 ; [+57]
       47 GETTABLEKS                       R8 R2 K0 ["key"]
       49 JUMPIFNOTEQ                      R8 R5 ; [+51]
       51 GETTABLEKS                       R8 R2 K1 ["type"]
       53 GETUPVAL                         R9 1
       54 JUMPIFNOTEQ                      R8 R9 ; [+39]
       56 GETTABLEKS                       R10 R2 K9 ["props"]
       58 GETTABLEKS                       R9 R10 K10 ["children"]
       60 JUMPIFEQKNIL                     R1 ; [+6]
       62 GETTABLEKS                       R10 R1 K11 ["tag"]
       64 GETUPVAL                         R11 2
       65 JUMPIFEQ                         R10 R11 ; [+12]
       67 GETUPVAL                         R10 3
       68 MOVE                             R11 R9
       69 GETTABLEKS                       R12 R0 K12 ["mode"]
       71 MOVE                             R13 R3
       72 MOVE                             R14 R5
       73 CALL                             R10 4 1
       74 SETTABLEKS                       R0 R10 K13 ["return_"]
       76 MOVE                             R8 R10
       77 RETURN                           R8 1
       78 GETUPVAL                         R11 4
       79 MOVE                             R12 R1
       80 MOVE                             R13 R9
       81 CALL                             R11 2 1
       82 LOADN                            R12 1
       83 SETTABLEKS                       R12 R11 K14 ["index"]
       85 LOADNIL                          R12
       86 SETTABLEKS                       R12 R11 K15 ["sibling"]
       88 MOVE                             R10 R11
       89 SETTABLEKS                       R0 R10 K13 ["return_"]
       91 MOVE                             R8 R10
       92 RETURN                           R8 1
       93 RETURN                           R8 1
       94 GETUPVAL                         R8 5
       95 MOVE                             R9 R0
       96 MOVE                             R10 R1
       97 MOVE                             R11 R2
       98 MOVE                             R12 R3
       99 CALL                             R8 4 1
      100 RETURN                           R8 1
      101 LOADNIL                          R8
      102 RETURN                           R8 1
      103 GETUPVAL                         R8 6
      104 JUMPIFNOTEQ                      R7 R8 ; [+14]
      106 GETTABLEKS                       R8 R2 K0 ["key"]
      108 JUMPIFNOTEQ                      R8 R5 ; [+8]
      110 GETUPVAL                         R8 7
      111 MOVE                             R9 R0
      112 MOVE                             R10 R1
      113 MOVE                             R11 R2
      114 MOVE                             R12 R3
      115 CALL                             R8 4 1
      116 RETURN                           R8 1
      117 LOADNIL                          R8
      118 RETURN                           R8 1
      119 GETUPVAL                         R8 8
      120 JUMPIFNOTEQ                      R7 R8 ; [+16]
      122 GETUPVAL                         R8 9
      123 JUMPIFNOT                        R8 ; [+13]
      124 GETTABLEKS                       R8 R2 K16 ["_payload"]
      126 GETTABLEKS                       R9 R2 K17 ["_init"]
      128 GETUPVAL                         R10 10
      129 MOVE                             R11 R0
      130 MOVE                             R12 R1
      131 MOVE                             R13 R9
      132 MOVE                             R14 R8
      133 CALL                             R13 1 1
      134 MOVE                             R14 R3
      135 CALL                             R10 4 -1
      136 RETURN                           R10 -1
      137 JUMPIFEQKNIL                     R5 ; [+3]
      139 LOADNIL                          R8
      140 RETURN                           R8 1
      141 JUMPIFEQKNIL                     R1 ; [+6]
      143 GETTABLEKS                       R9 R1 K11 ["tag"]
      145 GETUPVAL                         R10 2
      146 JUMPIFEQ                         R9 R10 ; [+12]
      148 GETUPVAL                         R9 3
      149 MOVE                             R10 R2
      150 GETTABLEKS                       R11 R0 K12 ["mode"]
      152 MOVE                             R12 R3
      153 LOADNIL                          R13
      154 CALL                             R9 4 1
      155 SETTABLEKS                       R0 R9 K13 ["return_"]
      157 MOVE                             R8 R9
      158 RETURN                           R8 1
      159 GETUPVAL                         R10 4
      160 MOVE                             R11 R1
      161 MOVE                             R12 R2
      162 CALL                             R10 2 1
      163 LOADN                            R11 1
      164 SETTABLEKS                       R11 R10 K14 ["index"]
      166 LOADNIL                          R11
      167 SETTABLEKS                       R11 R10 K15 ["sibling"]
      169 MOVE                             R9 R10
      170 SETTABLEKS                       R0 R9 K13 ["return_"]
      172 MOVE                             R8 R9
      173 RETURN                           R8 1
      174 RETURN                           R8 1
      175 JUMPIFEQKS                       R6 K4 ["string"] ; [+3]
      177 JUMPIFNOTEQKS                    R6 K5 ["number"] ; [+43]
      179 JUMPIFEQKNIL                     R5 ; [+3]
      181 LOADNIL                          R7
      182 RETURN                           R7 1
      183 FASTCALL1                        TOSTRING R2 ; [+3]
      184 MOVE                             R9 R2
      185 GETIMPORT                        R8 K7 [tostring]
      187 CALL                             R8 1 1
      188 JUMPIFEQKNIL                     R1 ; [+6]
      190 GETTABLEKS                       R9 R1 K11 ["tag"]
      192 GETUPVAL                         R10 11
      193 JUMPIFEQ                         R9 R10 ; [+11]
      195 GETUPVAL                         R9 12
      196 MOVE                             R10 R8
      197 GETTABLEKS                       R11 R0 K12 ["mode"]
      199 MOVE                             R12 R3
      200 CALL                             R9 3 1
      201 SETTABLEKS                       R0 R9 K13 ["return_"]
      203 MOVE                             R7 R9
      204 RETURN                           R7 1
      205 GETUPVAL                         R10 4
      206 MOVE                             R11 R1
      207 MOVE                             R12 R8
      208 CALL                             R10 2 1
      209 LOADN                            R11 1
      210 SETTABLEKS                       R11 R10 K14 ["index"]
      212 LOADNIL                          R11
      213 SETTABLEKS                       R11 R10 K15 ["sibling"]
      215 MOVE                             R9 R10
      216 SETTABLEKS                       R0 R9 K13 ["return_"]
      218 MOVE                             R7 R9
      219 RETURN                           R7 1
      220 RETURN                           R7 1
      221 GETUPVAL                         R7 13
      222 JUMPIFNOT                        R7 ; [+21]
      223 JUMPIFNOTEQKS                    R6 K18 ["function"] ; [+20]
      225 GETUPVAL                         R7 13
      226 JUMPIFNOT                        R7 ; [+17]
      227 GETUPVAL                         R8 14
      228 GETTABLEKS                       R9 R0 K1 ["type"]
      230 CALL                             R8 1 1
      231 ORK                              R7 R8 K19 ["Component"]
      232 GETUPVAL                         R9 15
      233 GETTABLE                         R8 R9 R7
      234 JUMPIFNOT                        R8 ; [+1]
      235 JUMP                             ; [+8]
      236 GETUPVAL                         R8 15
      237 LOADB                            R9 1
      238 SETTABLE                         R9 R8 R7
      239 GETUPVAL                         R9 16
      240 GETTABLEKS                       R8 R9 K20 ["error"]
      242 LOADK                            R9 K21 ["Functions are not valid as a React child. This may happen if you return a Component instead of <Component /> from render. Or maybe you meant to call this function rather than return it."]
      243 CALL                             R8 1 0
      244 LOADNIL                          R7
      245 RETURN                           R7 1

PROTO_18:
        0 JUMPIFNOTEQKNIL                  R3 ; [+3]
        2 LOADNIL                          R6
        3 RETURN                           R6 1
        4 FASTCALL1                        TYPE R3 ; [+3]
        5 MOVE                             R7 R3
        6 GETIMPORT                        R6 K1 [type]
        8 CALL                             R6 1 1
        9 JUMPIFNOTEQKS                    R6 K2 ["table"] ; [+166]
       11 GETTABLEKS                       R7 R3 K3 ["key"]
       13 JUMPIFNOTEQKNIL                  R7 ; [+22]
       15 FASTCALL1                        TYPE R5 ; [+3]
       16 MOVE                             R8 R5
       17 GETIMPORT                        R7 K1 [type]
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
       40 JUMPIFNOTEQ                      R8 R9 ; [+62]
       42 GETTABLEKS                       R9 R3 K3 ["key"]
       44 JUMPIFNOTEQKNIL                  R9 ; [+3]
       46 MOVE                             R7 R2
       47 JUMP                             ; [+2]
       48 GETTABLEKS                       R7 R3 K3 ["key"]
       50 GETTABLE                         R9 R0 R7
       51 GETTABLEKS                       R10 R3 K0 ["type"]
       53 GETUPVAL                         R11 1
       54 JUMPIFNOTEQ                      R10 R11 ; [+41]
       56 GETTABLEKS                       R12 R3 K9 ["props"]
       58 GETTABLEKS                       R11 R12 K10 ["children"]
       60 GETTABLEKS                       R12 R3 K3 ["key"]
       62 JUMPIFEQKNIL                     R9 ; [+6]
       64 GETTABLEKS                       R13 R9 K11 ["tag"]
       66 GETUPVAL                         R14 2
       67 JUMPIFEQ                         R13 R14 ; [+12]
       69 GETUPVAL                         R13 3
       70 MOVE                             R14 R11
       71 GETTABLEKS                       R15 R1 K12 ["mode"]
       73 MOVE                             R16 R4
       74 MOVE                             R17 R12
       75 CALL                             R13 4 1
       76 SETTABLEKS                       R1 R13 K13 ["return_"]
       78 MOVE                             R10 R13
       79 RETURN                           R10 1
       80 GETUPVAL                         R14 4
       81 MOVE                             R15 R9
       82 MOVE                             R16 R11
       83 CALL                             R14 2 1
       84 LOADN                            R15 1
       85 SETTABLEKS                       R15 R14 K14 ["index"]
       87 LOADNIL                          R15
       88 SETTABLEKS                       R15 R14 K15 ["sibling"]
       90 MOVE                             R13 R14
       91 SETTABLEKS                       R1 R13 K13 ["return_"]
       93 MOVE                             R10 R13
       94 RETURN                           R10 1
       95 RETURN                           R10 1
       96 GETUPVAL                         R10 5
       97 MOVE                             R11 R1
       98 MOVE                             R12 R9
       99 MOVE                             R13 R3
      100 MOVE                             R14 R4
      101 CALL                             R10 4 1
      102 RETURN                           R10 1
      103 GETUPVAL                         R9 6
      104 JUMPIFNOTEQ                      R8 R9 ; [+17]
      106 GETTABLEKS                       R9 R3 K3 ["key"]
      108 JUMPIFNOTEQKNIL                  R9 ; [+3]
      110 MOVE                             R7 R2
      111 JUMP                             ; [+2]
      112 GETTABLEKS                       R7 R3 K3 ["key"]
      114 GETTABLE                         R9 R0 R7
      115 GETUPVAL                         R10 7
      116 MOVE                             R11 R1
      117 MOVE                             R12 R9
      118 MOVE                             R13 R3
      119 MOVE                             R14 R4
      120 CALL                             R10 4 1
      121 RETURN                           R10 1
      122 GETUPVAL                         R9 8
      123 JUMPIFNOTEQ                      R8 R9 ; [+17]
      125 GETUPVAL                         R9 9
      126 JUMPIFNOT                        R9 ; [+14]
      127 GETTABLEKS                       R9 R3 K16 ["_payload"]
      129 GETTABLEKS                       R10 R3 K17 ["_init"]
      131 GETUPVAL                         R11 10
      132 MOVE                             R12 R0
      133 MOVE                             R13 R1
      134 MOVE                             R14 R2
      135 MOVE                             R15 R10
      136 MOVE                             R16 R9
      137 CALL                             R15 1 1
      138 MOVE                             R16 R4
      139 CALL                             R11 5 -1
      140 RETURN                           R11 -1
      141 GETTABLE                         R9 R0 R2
      142 JUMPIFEQKNIL                     R9 ; [+6]
      144 GETTABLEKS                       R11 R9 K11 ["tag"]
      146 GETUPVAL                         R12 2
      147 JUMPIFEQ                         R11 R12 ; [+12]
      149 GETUPVAL                         R11 3
      150 MOVE                             R12 R3
      151 GETTABLEKS                       R13 R1 K12 ["mode"]
      153 MOVE                             R14 R4
      154 LOADNIL                          R15
      155 CALL                             R11 4 1
      156 SETTABLEKS                       R1 R11 K13 ["return_"]
      158 MOVE                             R10 R11
      159 RETURN                           R10 1
      160 GETUPVAL                         R12 4
      161 MOVE                             R13 R9
      162 MOVE                             R14 R3
      163 CALL                             R12 2 1
      164 LOADN                            R13 1
      165 SETTABLEKS                       R13 R12 K14 ["index"]
      167 LOADNIL                          R13
      168 SETTABLEKS                       R13 R12 K15 ["sibling"]
      170 MOVE                             R11 R12
      171 SETTABLEKS                       R1 R11 K13 ["return_"]
      173 MOVE                             R10 R11
      174 RETURN                           R10 1
      175 RETURN                           R10 1
      176 JUMPIFEQKS                       R6 K4 ["string"] ; [+3]
      178 JUMPIFNOTEQKS                    R6 K5 ["number"] ; [+41]
      180 GETTABLE                         R8 R0 R2
      181 ORK                              R7 R8 K18 []
      182 FASTCALL1                        TOSTRING R3 ; [+3]
      183 MOVE                             R10 R3
      184 GETIMPORT                        R9 K7 [tostring]
      186 CALL                             R9 1 1
      187 JUMPIFEQKNIL                     R7 ; [+6]
      189 GETTABLEKS                       R10 R7 K11 ["tag"]
      191 GETUPVAL                         R11 11
      192 JUMPIFEQ                         R10 R11 ; [+11]
      194 GETUPVAL                         R10 12
      195 MOVE                             R11 R9
      196 GETTABLEKS                       R12 R1 K12 ["mode"]
      198 MOVE                             R13 R4
      199 CALL                             R10 3 1
      200 SETTABLEKS                       R1 R10 K13 ["return_"]
      202 MOVE                             R8 R10
      203 RETURN                           R8 1
      204 GETUPVAL                         R11 4
      205 MOVE                             R12 R7
      206 MOVE                             R13 R9
      207 CALL                             R11 2 1
      208 LOADN                            R12 1
      209 SETTABLEKS                       R12 R11 K14 ["index"]
      211 LOADNIL                          R12
      212 SETTABLEKS                       R12 R11 K15 ["sibling"]
      214 MOVE                             R10 R11
      215 SETTABLEKS                       R1 R10 K13 ["return_"]
      217 MOVE                             R8 R10
      218 RETURN                           R8 1
      219 RETURN                           R8 1
      220 GETUPVAL                         R7 13
      221 JUMPIFNOT                        R7 ; [+21]
      222 JUMPIFNOTEQKS                    R6 K19 ["function"] ; [+20]
      224 GETUPVAL                         R7 13
      225 JUMPIFNOT                        R7 ; [+17]
      226 GETUPVAL                         R8 14
      227 GETTABLEKS                       R9 R1 K0 ["type"]
      229 CALL                             R8 1 1
      230 ORK                              R7 R8 K20 ["Component"]
      231 GETUPVAL                         R9 15
      232 GETTABLE                         R8 R9 R7
      233 JUMPIFNOT                        R8 ; [+1]
      234 JUMP                             ; [+8]
      235 GETUPVAL                         R8 15
      236 LOADB                            R9 1
      237 SETTABLE                         R9 R8 R7
      238 GETUPVAL                         R9 16
      239 GETTABLEKS                       R8 R9 K21 ["error"]
      241 LOADK                            R9 K22 ["Functions are not valid as a React child. This may happen if you return a Component instead of <Component /> from render. Or maybe you meant to call this function rather than return it."]
      242 CALL                             R8 1 0
      243 LOADNIL                          R7
      244 RETURN                           R7 1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+67]
        2 JUMPIFEQKNIL                     R0 ; [+8]
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R4 R0
        6 GETIMPORT                        R3 K1 [type]
        8 CALL                             R3 1 1
        9 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
       11 RETURN                           R1 1
       12 GETTABLEKS                       R3 R0 K3 ["$$typeof"]
       14 GETUPVAL                         R4 1
       15 JUMPIFEQ                         R3 R4 ; [+4]
       17 GETUPVAL                         R4 2
       18 JUMPIFNOTEQ                      R3 R4 ; [+34]
       20 GETUPVAL                         R4 3
       21 MOVE                             R5 R0
       22 MOVE                             R6 R2
       23 CALL                             R4 2 0
       24 GETTABLEKS                       R4 R0 K4 ["key"]
       26 FASTCALL1                        TYPE R4 ; [+3]
       27 MOVE                             R6 R4
       28 GETIMPORT                        R5 K1 [type]
       30 CALL                             R5 1 1
       31 JUMPIFEQKS                       R5 K5 ["string"] ; [+2]
       33 RETURN                           R1 1
       34 JUMPIFNOTEQKNIL                  R1 ; [+6]
       36 NEWTABLE                         R1 0 0
       38 LOADB                            R5 1
       39 SETTABLE                         R5 R1 R4
       40 RETURN                           R1 1
       41 GETTABLE                         R5 R1 R4
       42 JUMPIF                           R5 ; [+3]
       43 LOADB                            R5 1
       44 SETTABLE                         R5 R1 R4
       45 RETURN                           R1 1
       46 GETUPVAL                         R6 4
       47 GETTABLEKS                       R5 R6 K6 ["error"]
       49 LOADK                            R6 K7 ["Encountered two children with the same key, `%s`. Keys should be unique so that components maintain their identity across updates. Non-unique keys may cause children to be duplicated and/or omitted — the behavior is unsupported and could change in a future version."]
       50 MOVE                             R7 R4
       51 CALL                             R5 2 0
       52 RETURN                           R1 1
       53 GETUPVAL                         R4 5
       54 JUMPIFNOTEQ                      R3 R4 ; [+14]
       56 GETUPVAL                         R4 6
       57 JUMPIFNOT                        R4 ; [+11]
       58 GETTABLEKS                       R4 R0 K8 ["_payload"]
       60 GETTABLEKS                       R5 R0 K9 ["_init"]
       62 GETUPVAL                         R6 7
       63 MOVE                             R7 R5
       64 MOVE                             R8 R4
       65 CALL                             R7 1 1
       66 MOVE                             R8 R1
       67 MOVE                             R9 R2
       68 CALL                             R6 3 0
       69 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+13]
        2 LOADNIL                          R4
        3 MOVE                             R5 R2
        4 LOADNIL                          R6
        5 LOADNIL                          R7
        6 FORGPREP                         R5
        7 GETUPVAL                         R10 1
        8 MOVE                             R11 R9
        9 MOVE                             R12 R4
       10 MOVE                             R13 R0
       11 CALL                             R10 3 1
       12 MOVE                             R4 R10
       13 FORGLOOP                         R5 2 ; [-7]
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 MOVE                             R6 R1
       18 LOADN                            R7 1
       19 LOADN                            R8 1
       20 LOADNIL                          R9
       21 LENGTH                           R10 R2
       22 JUMPIFEQKNIL                     R6 ; [+142]
       24 JUMPIFNOTLE                      R8 R10 ; [+140]
       26 GETTABLEKS                       R11 R6 K0 ["index"]
       28 JUMPIFNOTLT                      R8 R11 ; [+4]
       30 MOVE                             R9 R6
       31 LOADNIL                          R6
       32 JUMP                             ; [+2]
       33 GETTABLEKS                       R9 R6 K1 ["sibling"]
       35 LOADNIL                          R11
       36 GETTABLE                         R12 R2 R8
       37 JUMPIFEQKNIL                     R12 ; [+21]
       39 FASTCALL1                        TYPE R12 ; [+3]
       40 MOVE                             R14 R12
       41 GETIMPORT                        R13 K3 [type]
       43 CALL                             R13 1 1
       44 JUMPIFNOTEQKS                    R13 K4 ["table"] ; [+14]
       46 GETTABLEKS                       R13 R12 K5 ["$$typeof"]
       48 JUMPIFEQKNIL                     R13 ; [+10]
       50 GETUPVAL                         R13 2
       51 MOVE                             R14 R0
       52 MOVE                             R15 R6
       53 MOVE                             R16 R12
       54 MOVE                             R17 R3
       55 MOVE                             R18 R8
       56 CALL                             R13 5 1
       57 MOVE                             R11 R13
       58 JUMP                             ; [+7]
       59 GETUPVAL                         R13 2
       60 MOVE                             R14 R0
       61 MOVE                             R15 R6
       62 MOVE                             R16 R12
       63 MOVE                             R17 R3
       64 CALL                             R13 4 1
       65 MOVE                             R11 R13
       66 JUMPIFNOTEQKNIL                  R11 ; [+5]
       68 JUMPIFNOTEQKNIL                  R6 ; [+96]
       70 MOVE                             R6 R9
       71 JUMP                             ; [+93]
       72 GETUPVAL                         R13 3
       73 JUMPIFNOT                        R13 ; [+38]
       74 JUMPIFNOT                        R6 ; [+37]
       75 GETTABLEKS                       R13 R11 K6 ["alternate"]
       77 JUMPIFNOTEQKNIL                  R13 ; [+34]
       79 MOVE                             R13 R6
       80 GETUPVAL                         R14 3
       81 JUMPIF                           R14 ; [+1]
       82 JUMP                             ; [+29]
       83 GETTABLEKS                       R14 R0 K7 ["deletions"]
       85 JUMPIFNOTEQKNIL                  R14 ; [+19]
       87 NEWTABLE                         R15 0 1
       89 MOVE                             R16 R13
       90 SETLIST                          R15 R16 1 [1]
       92 SETTABLEKS                       R15 R0 K7 ["deletions"]
       94 GETTABLEKS                       R16 R0 K8 ["flags"]
       96 GETUPVAL                         R17 4
       97 FASTCALL2                        BIT32_BOR R16 R17 ; [+3]
       99 GETIMPORT                        R15 K11 [bit32.bor]
      101 CALL                             R15 2 1
      102 SETTABLEKS                       R15 R0 K8 ["flags"]
      104 JUMP                             ; [+7]
      105 FASTCALL2                        TABLE_INSERT R14 R13 ; [+5]
      107 MOVE                             R16 R14
      108 MOVE                             R17 R13
      109 GETIMPORT                        R15 K13 [table.insert]
      111 CALL                             R15 2 0
      112 MOVE                             R13 R11
      113 MOVE                             R14 R7
      114 MOVE                             R15 R8
      115 SETTABLEKS                       R15 R13 K0 ["index"]
      117 GETUPVAL                         R16 3
      118 JUMPIF                           R16 ; [+2]
      119 MOVE                             R7 R14
      120 JUMP                             ; [+34]
      121 GETTABLEKS                       R16 R13 K6 ["alternate"]
      123 JUMPIFEQKNIL                     R16 ; [+19]
      125 GETTABLEKS                       R17 R16 K0 ["index"]
      127 JUMPIFNOTLT                      R17 R14 ; [+13]
      129 GETTABLEKS                       R19 R13 K8 ["flags"]
      131 GETUPVAL                         R20 5
      132 FASTCALL2                        BIT32_BOR R19 R20 ; [+3]
      134 GETIMPORT                        R18 K11 [bit32.bor]
      136 CALL                             R18 2 1
      137 SETTABLEKS                       R18 R13 K8 ["flags"]
      139 MOVE                             R7 R14
      140 JUMP                             ; [+14]
      141 MOVE                             R7 R17
      142 JUMP                             ; [+12]
      143 GETTABLEKS                       R18 R13 K8 ["flags"]
      145 GETUPVAL                         R19 5
      146 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      148 GETIMPORT                        R17 K11 [bit32.bor]
      150 CALL                             R17 2 1
      151 SETTABLEKS                       R17 R13 K8 ["flags"]
      153 MOVE                             R7 R14
      154 JUMP                             ; [0]
      155 JUMPIFNOTEQKNIL                  R5 ; [+3]
      157 MOVE                             R4 R11
      158 JUMP                             ; [+2]
      159 SETTABLEKS                       R11 R5 K1 ["sibling"]
      161 MOVE                             R5 R11
      162 MOVE                             R6 R9
      163 ADDK                             R8 R8 K14 [1]
      164 JUMPBACK                         ; [-143]
      165 JUMPIFNOTLT                      R10 R8 ; [+45]
      167 MOVE                             R11 R6
      168 GETUPVAL                         R12 3
      169 JUMPIF                           R12 ; [+1]
      170 RETURN                           R4 1
      171 MOVE                             R12 R11
      172 JUMPIFEQKNIL                     R12 ; [+37]
      174 MOVE                             R13 R12
      175 GETUPVAL                         R14 3
      176 JUMPIF                           R14 ; [+1]
      177 JUMP                             ; [+29]
      178 GETTABLEKS                       R14 R0 K7 ["deletions"]
      180 JUMPIFNOTEQKNIL                  R14 ; [+19]
      182 NEWTABLE                         R15 0 1
      184 MOVE                             R16 R13
      185 SETLIST                          R15 R16 1 [1]
      187 SETTABLEKS                       R15 R0 K7 ["deletions"]
      189 GETTABLEKS                       R16 R0 K8 ["flags"]
      191 GETUPVAL                         R17 4
      192 FASTCALL2                        BIT32_BOR R16 R17 ; [+3]
      194 GETIMPORT                        R15 K11 [bit32.bor]
      196 CALL                             R15 2 1
      197 SETTABLEKS                       R15 R0 K8 ["flags"]
      199 JUMP                             ; [+7]
      200 FASTCALL2                        TABLE_INSERT R14 R13 ; [+5]
      202 MOVE                             R16 R14
      203 MOVE                             R17 R13
      204 GETIMPORT                        R15 K13 [table.insert]
      206 CALL                             R15 2 0
      207 GETTABLEKS                       R12 R12 K1 ["sibling"]
      209 JUMPBACK                         ; [-38]
      210 RETURN                           R4 1
      211 JUMPIFNOTEQKNIL                  R6 ; [+89]
      213 JUMPIFNOTLE                      R8 R10 ; [+86]
      215 LOADNIL                          R11
      216 GETTABLE                         R12 R2 R8
      217 JUMPIFEQKNIL                     R12 ; [+20]
      219 FASTCALL1                        TYPE R12 ; [+3]
      220 MOVE                             R14 R12
      221 GETIMPORT                        R13 K3 [type]
      223 CALL                             R13 1 1
      224 JUMPIFNOTEQKS                    R13 K4 ["table"] ; [+13]
      226 GETTABLEKS                       R13 R12 K5 ["$$typeof"]
      228 JUMPIFEQKNIL                     R13 ; [+9]
      230 GETUPVAL                         R13 6
      231 MOVE                             R14 R0
      232 MOVE                             R15 R12
      233 MOVE                             R16 R3
      234 MOVE                             R17 R8
      235 CALL                             R13 4 1
      236 MOVE                             R11 R13
      237 JUMP                             ; [+6]
      238 GETUPVAL                         R13 6
      239 MOVE                             R14 R0
      240 MOVE                             R15 R12
      241 MOVE                             R16 R3
      242 CALL                             R13 3 1
      243 MOVE                             R11 R13
      244 JUMPIFNOTEQKNIL                  R11 ; [+3]
      246 ADDK                             R8 R8 K14 [1]
      247 JUMP                             ; [+51]
      248 MOVE                             R13 R11
      249 MOVE                             R14 R7
      250 MOVE                             R15 R8
      251 SETTABLEKS                       R15 R13 K0 ["index"]
      253 GETUPVAL                         R16 3
      254 JUMPIF                           R16 ; [+2]
      255 MOVE                             R7 R14
      256 JUMP                             ; [+34]
      257 GETTABLEKS                       R16 R13 K6 ["alternate"]
      259 JUMPIFEQKNIL                     R16 ; [+19]
      261 GETTABLEKS                       R17 R16 K0 ["index"]
      263 JUMPIFNOTLT                      R17 R14 ; [+13]
      265 GETTABLEKS                       R19 R13 K8 ["flags"]
      267 GETUPVAL                         R20 5
      268 FASTCALL2                        BIT32_BOR R19 R20 ; [+3]
      270 GETIMPORT                        R18 K11 [bit32.bor]
      272 CALL                             R18 2 1
      273 SETTABLEKS                       R18 R13 K8 ["flags"]
      275 MOVE                             R7 R14
      276 JUMP                             ; [+14]
      277 MOVE                             R7 R17
      278 JUMP                             ; [+12]
      279 GETTABLEKS                       R18 R13 K8 ["flags"]
      281 GETUPVAL                         R19 5
      282 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      284 GETIMPORT                        R17 K11 [bit32.bor]
      286 CALL                             R17 2 1
      287 SETTABLEKS                       R17 R13 K8 ["flags"]
      289 MOVE                             R7 R14
      290 JUMP                             ; [0]
      291 JUMPIFNOTEQKNIL                  R5 ; [+3]
      293 MOVE                             R4 R11
      294 JUMP                             ; [+2]
      295 SETTABLEKS                       R11 R5 K1 ["sibling"]
      297 MOVE                             R5 R11
      298 ADDK                             R8 R8 K14 [1]
      299 JUMPBACK                         ; [-87]
      300 RETURN                           R4 1
      301 GETUPVAL                         R11 7
      302 MOVE                             R12 R0
      303 MOVE                             R13 R6
      304 CALL                             R11 2 1
      305 JUMPIFNOTLE                      R8 R10 ; [+106]
      307 LOADNIL                          R12
      308 GETTABLE                         R13 R2 R8
      309 GETUPVAL                         R14 8
      310 JUMPIFNOT                        R14 ; [+13]
      311 JUMPIFEQKNIL                     R13 ; [+22]
      313 FASTCALL1                        TYPE R13 ; [+3]
      314 MOVE                             R15 R13
      315 GETIMPORT                        R14 K3 [type]
      317 CALL                             R14 1 1
      318 JUMPIFNOTEQKS                    R14 K4 ["table"] ; [+15]
      320 GETTABLEKS                       R14 R13 K5 ["$$typeof"]
      322 JUMPIFEQKNIL                     R14 ; [+11]
      324 GETUPVAL                         R14 9
      325 MOVE                             R15 R11
      326 MOVE                             R16 R0
      327 MOVE                             R17 R8
      328 MOVE                             R18 R13
      329 MOVE                             R19 R3
      330 MOVE                             R20 R8
      331 CALL                             R14 6 1
      332 MOVE                             R12 R14
      333 JUMP                             ; [+8]
      334 GETUPVAL                         R14 9
      335 MOVE                             R15 R11
      336 MOVE                             R16 R0
      337 MOVE                             R17 R8
      338 MOVE                             R18 R13
      339 MOVE                             R19 R3
      340 CALL                             R14 5 1
      341 MOVE                             R12 R14
      342 JUMPIFEQKNIL                     R12 ; [+67]
      344 GETUPVAL                         R14 3
      345 JUMPIFNOT                        R14 ; [+14]
      346 GETTABLEKS                       R14 R12 K6 ["alternate"]
      348 JUMPIFEQKNIL                     R14 ; [+11]
      350 GETTABLEKS                       R15 R12 K15 ["key"]
      352 JUMPIFNOTEQKNIL                  R15 ; [+3]
      354 MOVE                             R14 R8
      355 JUMP                             ; [+2]
      356 GETTABLEKS                       R14 R12 K15 ["key"]
      358 LOADNIL                          R15
      359 SETTABLE                         R15 R11 R14
      360 MOVE                             R14 R12
      361 MOVE                             R15 R7
      362 MOVE                             R16 R8
      363 SETTABLEKS                       R16 R14 K0 ["index"]
      365 GETUPVAL                         R17 3
      366 JUMPIF                           R17 ; [+2]
      367 MOVE                             R7 R15
      368 JUMP                             ; [+34]
      369 GETTABLEKS                       R17 R14 K6 ["alternate"]
      371 JUMPIFEQKNIL                     R17 ; [+19]
      373 GETTABLEKS                       R18 R17 K0 ["index"]
      375 JUMPIFNOTLT                      R18 R15 ; [+13]
      377 GETTABLEKS                       R20 R14 K8 ["flags"]
      379 GETUPVAL                         R21 5
      380 FASTCALL2                        BIT32_BOR R20 R21 ; [+3]
      382 GETIMPORT                        R19 K11 [bit32.bor]
      384 CALL                             R19 2 1
      385 SETTABLEKS                       R19 R14 K8 ["flags"]
      387 MOVE                             R7 R15
      388 JUMP                             ; [+14]
      389 MOVE                             R7 R18
      390 JUMP                             ; [+12]
      391 GETTABLEKS                       R19 R14 K8 ["flags"]
      393 GETUPVAL                         R20 5
      394 FASTCALL2                        BIT32_BOR R19 R20 ; [+3]
      396 GETIMPORT                        R18 K11 [bit32.bor]
      398 CALL                             R18 2 1
      399 SETTABLEKS                       R18 R14 K8 ["flags"]
      401 MOVE                             R7 R15
      402 JUMP                             ; [0]
      403 JUMPIFNOTEQKNIL                  R5 ; [+3]
      405 MOVE                             R4 R12
      406 JUMP                             ; [+2]
      407 SETTABLEKS                       R12 R5 K1 ["sibling"]
      409 MOVE                             R5 R12
      410 ADDK                             R8 R8 K14 [1]
      411 JUMPBACK                         ; [-107]
      412 GETUPVAL                         R12 3
      413 JUMPIFNOT                        R12 ; [+38]
      414 MOVE                             R12 R11
      415 LOADNIL                          R13
      416 LOADNIL                          R14
      417 FORGPREP                         R12
      418 GETUPVAL                         R17 3
      419 JUMPIF                           R17 ; [+1]
      420 JUMP                             ; [+29]
      421 GETTABLEKS                       R17 R0 K7 ["deletions"]
      423 JUMPIFNOTEQKNIL                  R17 ; [+19]
      425 NEWTABLE                         R18 0 1
      427 MOVE                             R19 R16
      428 SETLIST                          R18 R19 1 [1]
      430 SETTABLEKS                       R18 R0 K7 ["deletions"]
      432 GETTABLEKS                       R19 R0 K8 ["flags"]
      434 GETUPVAL                         R20 4
      435 FASTCALL2                        BIT32_BOR R19 R20 ; [+3]
      437 GETIMPORT                        R18 K11 [bit32.bor]
      439 CALL                             R18 2 1
      440 SETTABLEKS                       R18 R0 K8 ["flags"]
      442 JUMP                             ; [+7]
      443 FASTCALL2                        TABLE_INSERT R17 R16 ; [+5]
      445 MOVE                             R19 R17
      446 MOVE                             R20 R16
      447 GETIMPORT                        R18 K13 [table.insert]
      449 CALL                             R18 2 0
      450 FORGLOOP                         R12 2 ; [-33]
      452 RETURN                           R4 1

PROTO_21:
        0 GETUPVAL                         R5 0
        1 JUMPIFNOT                        R5 ; [+37]
        2 GETTABLEKS                       R5 R2 K0 ["entries"]
        4 JUMPIFNOTEQ                      R5 R4 ; [+10]
        6 GETUPVAL                         R5 1
        7 JUMPIF                           R5 ; [+5]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R5 R6 K1 ["error"]
       11 LOADK                            R6 K2 ["Using Maps as children is not supported. Use an array of keyed ReactElements instead."]
       12 CALL                             R5 1 0
       13 LOADB                            R5 1
       14 SETUPVAL                         R5 1
       15 MOVE                             R5 R4
       16 MOVE                             R6 R2
       17 CALL                             R5 1 1
       18 JUMPIFNOT                        R5 ; [+20]
       19 LOADNIL                          R6
       20 GETTABLEKS                       R7 R5 K3 ["next"]
       22 CALL                             R7 0 1
       23 GETTABLEKS                       R8 R7 K4 ["done"]
       25 JUMPIF                           R8 ; [+13]
       26 GETTABLEKS                       R8 R5 K3 ["next"]
       28 CALL                             R8 0 1
       29 MOVE                             R7 R8
       30 GETTABLEKS                       R8 R7 K5 ["value"]
       32 GETUPVAL                         R9 3
       33 MOVE                             R10 R8
       34 MOVE                             R11 R6
       35 MOVE                             R12 R0
       36 CALL                             R9 3 1
       37 MOVE                             R6 R9
       38 JUMPBACK                         ; [-16]
       39 MOVE                             R5 R4
       40 MOVE                             R6 R2
       41 CALL                             R5 1 1
       42 LOADNIL                          R6
       43 LOADNIL                          R7
       44 MOVE                             R8 R1
       45 LOADN                            R9 1
       46 LOADN                            R10 1
       47 LOADNIL                          R11
       48 GETTABLEKS                       R12 R5 K3 ["next"]
       50 CALL                             R12 0 1
       51 JUMPIFEQKNIL                     R8 ; [+124]
       53 GETTABLEKS                       R13 R12 K4 ["done"]
       55 JUMPIF                           R13 ; [+120]
       56 GETTABLEKS                       R13 R8 K6 ["index"]
       58 JUMPIFNOTLT                      R10 R13 ; [+4]
       60 MOVE                             R11 R8
       61 LOADNIL                          R8
       62 JUMP                             ; [+2]
       63 GETTABLEKS                       R11 R8 K7 ["sibling"]
       65 GETUPVAL                         R13 4
       66 MOVE                             R14 R0
       67 MOVE                             R15 R8
       68 GETTABLEKS                       R16 R12 K5 ["value"]
       70 MOVE                             R17 R3
       71 GETTABLEKS                       R18 R12 K8 ["key"]
       73 CALL                             R13 5 1
       74 JUMPIFNOTEQKNIL                  R13 ; [+5]
       76 JUMPIFNOTEQKNIL                  R8 ; [+99]
       78 MOVE                             R8 R11
       79 JUMP                             ; [+96]
       80 GETUPVAL                         R14 5
       81 JUMPIFNOT                        R14 ; [+38]
       82 JUMPIFNOT                        R8 ; [+37]
       83 GETTABLEKS                       R14 R13 K9 ["alternate"]
       85 JUMPIFNOTEQKNIL                  R14 ; [+34]
       87 MOVE                             R14 R8
       88 GETUPVAL                         R15 5
       89 JUMPIF                           R15 ; [+1]
       90 JUMP                             ; [+29]
       91 GETTABLEKS                       R15 R0 K10 ["deletions"]
       93 JUMPIFNOTEQKNIL                  R15 ; [+19]
       95 NEWTABLE                         R16 0 1
       97 MOVE                             R17 R14
       98 SETLIST                          R16 R17 1 [1]
      100 SETTABLEKS                       R16 R0 K10 ["deletions"]
      102 GETTABLEKS                       R17 R0 K11 ["flags"]
      104 GETUPVAL                         R18 6
      105 FASTCALL2                        BIT32_BOR R17 R18 ; [+3]
      107 GETIMPORT                        R16 K14 [bit32.bor]
      109 CALL                             R16 2 1
      110 SETTABLEKS                       R16 R0 K11 ["flags"]
      112 JUMP                             ; [+7]
      113 FASTCALL2                        TABLE_INSERT R15 R14 ; [+5]
      115 MOVE                             R17 R15
      116 MOVE                             R18 R14
      117 GETIMPORT                        R16 K17 [table.insert]
      119 CALL                             R16 2 0
      120 MOVE                             R14 R9
      121 MOVE                             R15 R10
      122 SETTABLEKS                       R15 R13 K6 ["index"]
      124 GETUPVAL                         R16 5
      125 JUMPIF                           R16 ; [+2]
      126 MOVE                             R9 R14
      127 JUMP                             ; [+34]
      128 GETTABLEKS                       R16 R13 K9 ["alternate"]
      130 JUMPIFEQKNIL                     R16 ; [+19]
      132 GETTABLEKS                       R17 R16 K6 ["index"]
      134 JUMPIFNOTLT                      R17 R14 ; [+13]
      136 GETTABLEKS                       R19 R13 K11 ["flags"]
      138 GETUPVAL                         R20 7
      139 FASTCALL2                        BIT32_BOR R19 R20 ; [+3]
      141 GETIMPORT                        R18 K14 [bit32.bor]
      143 CALL                             R18 2 1
      144 SETTABLEKS                       R18 R13 K11 ["flags"]
      146 MOVE                             R9 R14
      147 JUMP                             ; [+14]
      148 MOVE                             R9 R17
      149 JUMP                             ; [+12]
      150 GETTABLEKS                       R18 R13 K11 ["flags"]
      152 GETUPVAL                         R19 7
      153 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      155 GETIMPORT                        R17 K14 [bit32.bor]
      157 CALL                             R17 2 1
      158 SETTABLEKS                       R17 R13 K11 ["flags"]
      160 MOVE                             R9 R14
      161 JUMP                             ; [0]
      162 JUMPIFNOTEQKNIL                  R7 ; [+3]
      164 MOVE                             R6 R13
      165 JUMP                             ; [+2]
      166 SETTABLEKS                       R13 R7 K7 ["sibling"]
      168 MOVE                             R7 R13
      169 MOVE                             R8 R11
      170 ADDK                             R10 R10 K18 [1]
      171 GETTABLEKS                       R14 R5 K3 ["next"]
      173 CALL                             R14 0 1
      174 MOVE                             R12 R14
      175 JUMPBACK                         ; [-125]
      176 GETTABLEKS                       R13 R12 K4 ["done"]
      178 JUMPIFNOT                        R13 ; [+44]
      179 MOVE                             R13 R8
      180 GETUPVAL                         R14 5
      181 JUMPIF                           R14 ; [+1]
      182 RETURN                           R6 1
      183 MOVE                             R14 R13
      184 JUMPIFEQKNIL                     R14 ; [+37]
      186 MOVE                             R15 R14
      187 GETUPVAL                         R16 5
      188 JUMPIF                           R16 ; [+1]
      189 JUMP                             ; [+29]
      190 GETTABLEKS                       R16 R0 K10 ["deletions"]
      192 JUMPIFNOTEQKNIL                  R16 ; [+19]
      194 NEWTABLE                         R17 0 1
      196 MOVE                             R18 R15
      197 SETLIST                          R17 R18 1 [1]
      199 SETTABLEKS                       R17 R0 K10 ["deletions"]
      201 GETTABLEKS                       R18 R0 K11 ["flags"]
      203 GETUPVAL                         R19 6
      204 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      206 GETIMPORT                        R17 K14 [bit32.bor]
      208 CALL                             R17 2 1
      209 SETTABLEKS                       R17 R0 K11 ["flags"]
      211 JUMP                             ; [+7]
      212 FASTCALL2                        TABLE_INSERT R16 R15 ; [+5]
      214 MOVE                             R18 R16
      215 MOVE                             R19 R15
      216 GETIMPORT                        R17 K17 [table.insert]
      218 CALL                             R17 2 0
      219 GETTABLEKS                       R14 R14 K7 ["sibling"]
      221 JUMPBACK                         ; [-38]
      222 RETURN                           R6 1
      223 JUMPIFNOTEQKNIL                  R8 ; [+76]
      225 GETTABLEKS                       R13 R12 K4 ["done"]
      227 JUMPIF                           R13 ; [+71]
      228 GETUPVAL                         R13 8
      229 MOVE                             R14 R0
      230 GETTABLEKS                       R15 R12 K5 ["value"]
      232 MOVE                             R16 R3
      233 GETTABLEKS                       R17 R12 K8 ["key"]
      235 CALL                             R13 4 1
      236 JUMPIFNOTEQKNIL                  R13 ; [+7]
      238 ADDK                             R10 R10 K18 [1]
      239 GETTABLEKS                       R14 R5 K3 ["next"]
      241 CALL                             R14 0 1
      242 MOVE                             R12 R14
      243 JUMP                             ; [+54]
      244 MOVE                             R14 R9
      245 MOVE                             R15 R10
      246 SETTABLEKS                       R15 R13 K6 ["index"]
      248 GETUPVAL                         R16 5
      249 JUMPIF                           R16 ; [+2]
      250 MOVE                             R9 R14
      251 JUMP                             ; [+34]
      252 GETTABLEKS                       R16 R13 K9 ["alternate"]
      254 JUMPIFEQKNIL                     R16 ; [+19]
      256 GETTABLEKS                       R17 R16 K6 ["index"]
      258 JUMPIFNOTLT                      R17 R14 ; [+13]
      260 GETTABLEKS                       R19 R13 K11 ["flags"]
      262 GETUPVAL                         R20 7
      263 FASTCALL2                        BIT32_BOR R19 R20 ; [+3]
      265 GETIMPORT                        R18 K14 [bit32.bor]
      267 CALL                             R18 2 1
      268 SETTABLEKS                       R18 R13 K11 ["flags"]
      270 MOVE                             R9 R14
      271 JUMP                             ; [+14]
      272 MOVE                             R9 R17
      273 JUMP                             ; [+12]
      274 GETTABLEKS                       R18 R13 K11 ["flags"]
      276 GETUPVAL                         R19 7
      277 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      279 GETIMPORT                        R17 K14 [bit32.bor]
      281 CALL                             R17 2 1
      282 SETTABLEKS                       R17 R13 K11 ["flags"]
      284 MOVE                             R9 R14
      285 JUMP                             ; [0]
      286 JUMPIFNOTEQKNIL                  R7 ; [+3]
      288 MOVE                             R6 R13
      289 JUMP                             ; [+2]
      290 SETTABLEKS                       R13 R7 K7 ["sibling"]
      292 MOVE                             R7 R13
      293 ADDK                             R10 R10 K18 [1]
      294 GETTABLEKS                       R14 R5 K3 ["next"]
      296 CALL                             R14 0 1
      297 MOVE                             R12 R14
      298 JUMPBACK                         ; [-74]
      299 RETURN                           R6 1
      300 LOADNIL                          R13
      301 GETTABLEKS                       R14 R12 K4 ["done"]
      303 JUMPIF                           R14 ; [+90]
      304 JUMPIF                           R13 ; [+5]
      305 GETUPVAL                         R14 9
      306 MOVE                             R15 R0
      307 MOVE                             R16 R8
      308 CALL                             R14 2 1
      309 MOVE                             R13 R14
      310 GETUPVAL                         R14 10
      311 MOVE                             R15 R13
      312 MOVE                             R16 R0
      313 MOVE                             R17 R10
      314 GETTABLEKS                       R18 R12 K5 ["value"]
      316 MOVE                             R19 R3
      317 GETTABLEKS                       R20 R12 K8 ["key"]
      319 CALL                             R14 6 1
      320 JUMPIFEQKNIL                     R14 ; [+67]
      322 GETUPVAL                         R15 5
      323 JUMPIFNOT                        R15 ; [+15]
      324 GETTABLEKS                       R15 R14 K9 ["alternate"]
      326 JUMPIFEQKNIL                     R15 ; [+12]
      328 GETTABLEKS                       R15 R14 K8 ["key"]
      330 JUMPIFNOTEQKNIL                  R15 ; [+4]
      332 LOADNIL                          R15
      333 SETTABLE                         R15 R13 R10
      334 JUMP                             ; [+4]
      335 GETTABLEKS                       R15 R14 K8 ["key"]
      337 LOADNIL                          R16
      338 SETTABLE                         R16 R13 R15
      339 MOVE                             R15 R9
      340 MOVE                             R16 R10
      341 SETTABLEKS                       R16 R14 K6 ["index"]
      343 GETUPVAL                         R17 5
      344 JUMPIF                           R17 ; [+2]
      345 MOVE                             R9 R15
      346 JUMP                             ; [+34]
      347 GETTABLEKS                       R17 R14 K9 ["alternate"]
      349 JUMPIFEQKNIL                     R17 ; [+19]
      351 GETTABLEKS                       R18 R17 K6 ["index"]
      353 JUMPIFNOTLT                      R18 R15 ; [+13]
      355 GETTABLEKS                       R20 R14 K11 ["flags"]
      357 GETUPVAL                         R21 7
      358 FASTCALL2                        BIT32_BOR R20 R21 ; [+3]
      360 GETIMPORT                        R19 K14 [bit32.bor]
      362 CALL                             R19 2 1
      363 SETTABLEKS                       R19 R14 K11 ["flags"]
      365 MOVE                             R9 R15
      366 JUMP                             ; [+14]
      367 MOVE                             R9 R18
      368 JUMP                             ; [+12]
      369 GETTABLEKS                       R19 R14 K11 ["flags"]
      371 GETUPVAL                         R20 7
      372 FASTCALL2                        BIT32_BOR R19 R20 ; [+3]
      374 GETIMPORT                        R18 K14 [bit32.bor]
      376 CALL                             R18 2 1
      377 SETTABLEKS                       R18 R14 K11 ["flags"]
      379 MOVE                             R9 R15
      380 JUMP                             ; [0]
      381 JUMPIFNOTEQKNIL                  R7 ; [+3]
      383 MOVE                             R6 R14
      384 JUMP                             ; [+2]
      385 SETTABLEKS                       R14 R7 K7 ["sibling"]
      387 MOVE                             R7 R14
      388 ADDK                             R10 R10 K18 [1]
      389 GETTABLEKS                       R15 R5 K3 ["next"]
      391 CALL                             R15 0 1
      392 MOVE                             R12 R15
      393 JUMPBACK                         ; [-93]
      394 GETUPVAL                         R14 5
      395 JUMPIFNOT                        R14 ; [+38]
      396 MOVE                             R14 R13
      397 LOADNIL                          R15
      398 LOADNIL                          R16
      399 FORGPREP                         R14
      400 GETUPVAL                         R19 5
      401 JUMPIF                           R19 ; [+1]
      402 JUMP                             ; [+29]
      403 GETTABLEKS                       R19 R0 K10 ["deletions"]
      405 JUMPIFNOTEQKNIL                  R19 ; [+19]
      407 NEWTABLE                         R20 0 1
      409 MOVE                             R21 R18
      410 SETLIST                          R20 R21 1 [1]
      412 SETTABLEKS                       R20 R0 K10 ["deletions"]
      414 GETTABLEKS                       R21 R0 K11 ["flags"]
      416 GETUPVAL                         R22 6
      417 FASTCALL2                        BIT32_BOR R21 R22 ; [+3]
      419 GETIMPORT                        R20 K14 [bit32.bor]
      421 CALL                             R20 2 1
      422 SETTABLEKS                       R20 R0 K11 ["flags"]
      424 JUMP                             ; [+7]
      425 FASTCALL2                        TABLE_INSERT R19 R18 ; [+5]
      427 MOVE                             R21 R19
      428 MOVE                             R22 R18
      429 GETIMPORT                        R20 K17 [table.insert]
      431 CALL                             R20 2 0
      432 FORGLOOP                         R14 2 ; [-33]
      434 RETURN                           R6 1

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
        3 JUMPIFEQKNIL                     R5 ; [+261]
        5 GETTABLEKS                       R6 R5 K0 ["key"]
        7 JUMPIFNOTEQ                      R6 R4 ; [+221]
        9 GETTABLEKS                       R6 R5 K1 ["tag"]
       11 GETUPVAL                         R7 0
       12 JUMPIFNOTEQ                      R6 R7 ; [+80]
       14 GETTABLEKS                       R6 R2 K2 ["type"]
       16 GETUPVAL                         R7 1
       17 JUMPIFNOTEQ                      R6 R7 ; [+167]
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
       81 GETUPVAL                         R7 5
       82 JUMPIFNOT                        R7 ; [+8]
       83 GETTABLEKS                       R7 R2 K16 ["_source"]
       85 SETTABLEKS                       R7 R6 K17 ["_debugSource"]
       87 GETTABLEKS                       R7 R2 K18 ["_owner"]
       89 SETTABLEKS                       R7 R6 K19 ["_debugOwner"]
       91 RETURN                           R6 1
       92 JUMP                             ; [+92]
       93 GETTABLEKS                       R6 R5 K20 ["elementType"]
       95 GETTABLEKS                       R7 R2 K2 ["type"]
       97 JUMPIFEQ                         R6 R7 ; [+8]
       99 GETUPVAL                         R6 5
      100 JUMPIFNOT                        R6 ; [+84]
      101 GETUPVAL                         R6 6
      102 MOVE                             R7 R5
      103 MOVE                             R8 R2
      104 CALL                             R6 2 1
      105 JUMPIFNOT                        R6 ; [+79]
      106 GETTABLEKS                       R6 R5 K3 ["sibling"]
      108 GETUPVAL                         R7 2
      109 JUMPIF                           R7 ; [+1]
      110 JUMP                             ; [+39]
      111 MOVE                             R7 R6
      112 JUMPIFEQKNIL                     R7 ; [+37]
      114 MOVE                             R8 R7
      115 GETUPVAL                         R9 2
      116 JUMPIF                           R9 ; [+1]
      117 JUMP                             ; [+29]
      118 GETTABLEKS                       R9 R0 K4 ["deletions"]
      120 JUMPIFNOTEQKNIL                  R9 ; [+19]
      122 NEWTABLE                         R10 0 1
      124 MOVE                             R11 R8
      125 SETLIST                          R10 R11 1 [1]
      127 SETTABLEKS                       R10 R0 K4 ["deletions"]
      129 GETTABLEKS                       R11 R0 K5 ["flags"]
      131 GETUPVAL                         R12 3
      132 FASTCALL2                        BIT32_BOR R11 R12 ; [+3]
      134 GETIMPORT                        R10 K8 [bit32.bor]
      136 CALL                             R10 2 1
      137 SETTABLEKS                       R10 R0 K5 ["flags"]
      139 JUMP                             ; [+7]
      140 FASTCALL2                        TABLE_INSERT R9 R8 ; [+5]
      142 MOVE                             R11 R9
      143 MOVE                             R12 R8
      144 GETIMPORT                        R10 K11 [table.insert]
      146 CALL                             R10 2 0
      147 GETTABLEKS                       R7 R7 K3 ["sibling"]
      149 JUMPBACK                         ; [-38]
      150 MOVE                             R7 R5
      151 GETTABLEKS                       R8 R2 K12 ["props"]
      153 GETUPVAL                         R9 4
      154 MOVE                             R10 R7
      155 MOVE                             R11 R8
      156 CALL                             R9 2 1
      157 LOADN                            R10 1
      158 SETTABLEKS                       R10 R9 K14 ["index"]
      160 LOADNIL                          R10
      161 SETTABLEKS                       R10 R9 K3 ["sibling"]
      163 MOVE                             R6 R9
      164 GETGLOBAL                        R7 K21 ["coerceRef"]
      166 MOVE                             R8 R0
      167 MOVE                             R9 R5
      168 MOVE                             R10 R2
      169 CALL                             R7 3 1
      170 SETTABLEKS                       R7 R6 K22 ["ref"]
      172 SETTABLEKS                       R0 R6 K15 ["return_"]
      174 GETUPVAL                         R7 5
      175 JUMPIFNOT                        R7 ; [+8]
      176 GETTABLEKS                       R7 R2 K16 ["_source"]
      178 SETTABLEKS                       R7 R6 K17 ["_debugSource"]
      180 GETTABLEKS                       R7 R2 K18 ["_owner"]
      182 SETTABLEKS                       R7 R6 K19 ["_debugOwner"]
      184 RETURN                           R6 1
      185 MOVE                             R6 R5
      186 GETUPVAL                         R7 2
      187 JUMPIF                           R7 ; [+1]
      188 JUMP                             ; [+76]
      189 MOVE                             R7 R6
      190 JUMPIFEQKNIL                     R7 ; [+74]
      192 MOVE                             R8 R7
      193 GETUPVAL                         R9 2
      194 JUMPIF                           R9 ; [+1]
      195 JUMP                             ; [+29]
      196 GETTABLEKS                       R9 R0 K4 ["deletions"]
      198 JUMPIFNOTEQKNIL                  R9 ; [+19]
      200 NEWTABLE                         R10 0 1
      202 MOVE                             R11 R8
      203 SETLIST                          R10 R11 1 [1]
      205 SETTABLEKS                       R10 R0 K4 ["deletions"]
      207 GETTABLEKS                       R11 R0 K5 ["flags"]
      209 GETUPVAL                         R12 3
      210 FASTCALL2                        BIT32_BOR R11 R12 ; [+3]
      212 GETIMPORT                        R10 K8 [bit32.bor]
      214 CALL                             R10 2 1
      215 SETTABLEKS                       R10 R0 K5 ["flags"]
      217 JUMP                             ; [+7]
      218 FASTCALL2                        TABLE_INSERT R9 R8 ; [+5]
      220 MOVE                             R11 R9
      221 MOVE                             R12 R8
      222 GETIMPORT                        R10 K11 [table.insert]
      224 CALL                             R10 2 0
      225 GETTABLEKS                       R7 R7 K3 ["sibling"]
      227 JUMPBACK                         ; [-38]
      228 JUMP                             ; [+36]
      229 MOVE                             R6 R5
      230 GETUPVAL                         R7 2
      231 JUMPIF                           R7 ; [+1]
      232 JUMP                             ; [+29]
      233 GETTABLEKS                       R7 R0 K4 ["deletions"]
      235 JUMPIFNOTEQKNIL                  R7 ; [+19]
      237 NEWTABLE                         R8 0 1
      239 MOVE                             R9 R6
      240 SETLIST                          R8 R9 1 [1]
      242 SETTABLEKS                       R8 R0 K4 ["deletions"]
      244 GETTABLEKS                       R9 R0 K5 ["flags"]
      246 GETUPVAL                         R10 3
      247 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
      249 GETIMPORT                        R8 K8 [bit32.bor]
      251 CALL                             R8 2 1
      252 SETTABLEKS                       R8 R0 K5 ["flags"]
      254 JUMP                             ; [+7]
      255 FASTCALL2                        TABLE_INSERT R7 R6 ; [+5]
      257 MOVE                             R9 R7
      258 MOVE                             R10 R6
      259 GETIMPORT                        R8 K11 [table.insert]
      261 CALL                             R8 2 0
      262 GETTABLEKS                       R5 R5 K3 ["sibling"]
      264 JUMPBACK                         ; [-262]
      265 GETTABLEKS                       R6 R2 K2 ["type"]
      267 GETUPVAL                         R7 1
      268 JUMPIFNOTEQ                      R6 R7 ; [+15]
      270 GETUPVAL                         R6 7
      271 GETTABLEKS                       R8 R2 K12 ["props"]
      273 GETTABLEKS                       R7 R8 K13 ["children"]
      275 GETTABLEKS                       R8 R0 K23 ["mode"]
      277 MOVE                             R9 R3
      278 GETTABLEKS                       R10 R2 K0 ["key"]
      280 CALL                             R6 4 1
      281 SETTABLEKS                       R0 R6 K15 ["return_"]
      283 RETURN                           R6 1
      284 GETUPVAL                         R6 8
      285 MOVE                             R7 R2
      286 GETTABLEKS                       R8 R0 K23 ["mode"]
      288 MOVE                             R9 R3
      289 CALL                             R6 3 1
      290 GETGLOBAL                        R7 K21 ["coerceRef"]
      292 MOVE                             R8 R0
      293 MOVE                             R9 R1
      294 MOVE                             R10 R2
      295 CALL                             R7 3 1
      296 SETTABLEKS                       R7 R6 K22 ["ref"]
      298 SETTABLEKS                       R0 R6 K15 ["return_"]
      300 RETURN                           R6 1

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
        0 FASTCALL1                        TYPE R2 ; [+3]
        1 MOVE                             R5 R2
        2 GETIMPORT                        R4 K1 [type]
        4 CALL                             R4 1 1
        5 LOADB                            R5 0
        6 JUMPIFEQKNIL                     R2 ; [+16]
        8 LOADB                            R5 0
        9 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+13]
       11 LOADB                            R5 0
       12 GETTABLEKS                       R6 R2 K0 ["type"]
       14 GETUPVAL                         R7 0
       15 JUMPIFNOTEQ                      R6 R7 ; [+7]
       17 GETTABLEKS                       R6 R2 K3 ["key"]
       19 JUMPIFEQKNIL                     R6 ; [+2]
       21 LOADB                            R5 0 +1
       22 LOADB                            R5 1
       23 JUMPIFNOT                        R5 ; [+10]
       24 GETTABLEKS                       R6 R2 K4 ["props"]
       26 GETTABLEKS                       R2 R6 K5 ["children"]
       28 FASTCALL1                        TYPE R2 ; [+3]
       29 MOVE                             R7 R2
       30 GETIMPORT                        R6 K1 [type]
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
       45 GETTABLEKS                       R8 R2 K6 ["$$typeof"]
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
       58 GETTABLEKS                       R11 R10 K7 ["alternate"]
       60 JUMPIFNOTEQKNIL                  R11 ; [+11]
       62 GETTABLEKS                       R12 R10 K8 ["flags"]
       64 GETUPVAL                         R13 5
       65 FASTCALL2                        BIT32_BOR R12 R13 ; [+3]
       67 GETIMPORT                        R11 K11 [bit32.bor]
       69 CALL                             R11 2 1
       70 SETTABLEKS                       R11 R10 K8 ["flags"]
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
       85 GETTABLEKS                       R11 R10 K7 ["alternate"]
       87 JUMPIFNOTEQKNIL                  R11 ; [+11]
       89 GETTABLEKS                       R12 R10 K8 ["flags"]
       91 GETUPVAL                         R13 5
       92 FASTCALL2                        BIT32_BOR R12 R13 ; [+3]
       94 GETIMPORT                        R11 K11 [bit32.bor]
       96 CALL                             R11 2 1
       97 SETTABLEKS                       R11 R10 K8 ["flags"]
       99 MOVE                             R9 R10
      100 RETURN                           R9 1
      101 GETUPVAL                         R9 8
      102 JUMPIFNOTEQ                      R8 R9 ; [+57]
      104 GETUPVAL                         R9 9
      105 JUMPIFNOT                        R9 ; [+54]
      106 GETTABLEKS                       R9 R2 K12 ["_payload"]
      108 GETTABLEKS                       R10 R2 K13 ["_init"]
      110 GETUPVAL                         R11 10
      111 MOVE                             R12 R0
      112 MOVE                             R13 R1
      113 MOVE                             R14 R10
      114 MOVE                             R15 R9
      115 CALL                             R14 1 1
      116 MOVE                             R15 R3
      117 CALL                             R11 4 -1
      118 RETURN                           R11 -1
      119 JUMP                             ; [+40]
      120 JUMPIFNOT                        R6 ; [+7]
      121 GETUPVAL                         R8 11
      122 MOVE                             R9 R0
      123 MOVE                             R10 R1
      124 MOVE                             R11 R2
      125 MOVE                             R12 R3
      126 CALL                             R8 4 1
      127 RETURN                           R8 1
      128 JUMPIFEQKS                       R4 K14 ["string"] ; [+3]
      130 JUMPIFNOTEQKS                    R4 K15 ["number"] ; [+29]
      132 GETUPVAL                         R9 12
      133 MOVE                             R10 R0
      134 MOVE                             R11 R1
      135 FASTCALL1                        TOSTRING R2 ; [+3]
      136 MOVE                             R13 R2
      137 GETIMPORT                        R12 K17 [tostring]
      139 CALL                             R12 1 1
      140 MOVE                             R13 R3
      141 CALL                             R9 4 1
      142 GETUPVAL                         R10 4
      143 JUMPIFNOT                        R10 ; [+14]
      144 GETTABLEKS                       R10 R9 K7 ["alternate"]
      146 JUMPIFNOTEQKNIL                  R10 ; [+11]
      148 GETTABLEKS                       R11 R9 K8 ["flags"]
      150 GETUPVAL                         R12 5
      151 FASTCALL2                        BIT32_BOR R11 R12 ; [+3]
      153 GETIMPORT                        R10 K11 [bit32.bor]
      155 CALL                             R10 2 1
      156 SETTABLEKS                       R10 R9 K8 ["flags"]
      158 MOVE                             R8 R9
      159 RETURN                           R8 1
      160 GETUPVAL                         R8 13
      161 MOVE                             R9 R2
      162 CALL                             R8 1 1
      163 JUMPIFNOT                        R8 ; [+8]
      164 GETUPVAL                         R9 14
      165 MOVE                             R10 R0
      166 MOVE                             R11 R1
      167 MOVE                             R12 R2
      168 MOVE                             R13 R3
      169 MOVE                             R14 R8
      170 CALL                             R9 5 1
      171 RETURN                           R9 1
      172 GETUPVAL                         R9 15
      173 JUMPIFNOT                        R9 ; [+21]
      174 JUMPIFNOTEQKS                    R4 K18 ["function"] ; [+20]
      176 GETUPVAL                         R9 15
      177 JUMPIFNOT                        R9 ; [+17]
      178 GETUPVAL                         R10 16
      179 GETTABLEKS                       R11 R0 K0 ["type"]
      181 CALL                             R10 1 1
      182 ORK                              R9 R10 K19 ["Component"]
      183 GETUPVAL                         R11 17
      184 GETTABLE                         R10 R11 R9
      185 JUMPIFNOT                        R10 ; [+1]
      186 JUMP                             ; [+8]
      187 GETUPVAL                         R10 17
      188 LOADB                            R11 1
      189 SETTABLE                         R11 R10 R9
      190 GETUPVAL                         R11 18
      191 GETTABLEKS                       R10 R11 K20 ["error"]
      193 LOADK                            R11 K21 ["Functions are not valid as a React child. This may happen if you return a Component instead of <Component /> from render. Or maybe you meant to call this function rather than return it."]
      194 CALL                             R10 1 0
      195 JUMPIFNOTEQKNIL                  R2 ; [+2]
      197 JUMPIF                           R5 ; [0]
      198 GETUPVAL                         R10 4
      199 JUMPIF                           R10 ; [+2]
      200 LOADNIL                          R9
      201 RETURN                           R9 1
      202 MOVE                             R10 R1
      203 JUMPIFEQKNIL                     R10 ; [+37]
      205 MOVE                             R11 R10
      206 GETUPVAL                         R12 4
      207 JUMPIF                           R12 ; [+1]
      208 JUMP                             ; [+29]
      209 GETTABLEKS                       R12 R0 K22 ["deletions"]
      211 JUMPIFNOTEQKNIL                  R12 ; [+19]
      213 NEWTABLE                         R13 0 1
      215 MOVE                             R14 R11
      216 SETLIST                          R13 R14 1 [1]
      218 SETTABLEKS                       R13 R0 K22 ["deletions"]
      220 GETTABLEKS                       R14 R0 K8 ["flags"]
      222 GETUPVAL                         R15 19
      223 FASTCALL2                        BIT32_BOR R14 R15 ; [+3]
      225 GETIMPORT                        R13 K11 [bit32.bor]
      227 CALL                             R13 2 1
      228 SETTABLEKS                       R13 R0 K8 ["flags"]
      230 JUMP                             ; [+7]
      231 FASTCALL2                        TABLE_INSERT R12 R11 ; [+5]
      233 MOVE                             R14 R12
      234 MOVE                             R15 R11
      235 GETIMPORT                        R13 K24 [table.insert]
      237 CALL                             R13 2 0
      238 GETTABLEKS                       R10 R10 K25 ["sibling"]
      240 JUMPBACK                         ; [-38]
      241 LOADNIL                          R9
      242 RETURN                           R9 1

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
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          UPVAL U6
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          UPVAL U7
       24 CAPTURE                          UPVAL U8
       25 CAPTURE                          UPVAL U9
       26 CAPTURE                          UPVAL U10
       27 CAPTURE                          UPVAL U11
       28 DUPCLOSURE                       R9 K4 [PROTO_13]
       29 CAPTURE                          UPVAL U12
       30 CAPTURE                          UPVAL U13
       31 CAPTURE                          UPVAL U1
       32 DUPCLOSURE                       R10 K5 [PROTO_14]
       33 CAPTURE                          UPVAL U14
       34 CAPTURE                          UPVAL U15
       35 CAPTURE                          UPVAL U1
       36 DUPCLOSURE                       R11 K6 [PROTO_15]
       37 NEWCLOSURE                       R12 P11
       38 CAPTURE                          UPVAL U16
       39 CAPTURE                          UPVAL U11
       40 CAPTURE                          UPVAL U17
       41 CAPTURE                          UPVAL U13
       42 CAPTURE                          UPVAL U9
       43 CAPTURE                          UPVAL U18
       44 CAPTURE                          VAL R12
       45 CAPTURE                          UPVAL U15
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U19
       49 CAPTURE                          UPVAL U20
       50 CAPTURE                          UPVAL U21
       51 NEWCLOSURE                       R13 P12
       52 CAPTURE                          UPVAL U16
       53 CAPTURE                          UPVAL U22
       54 CAPTURE                          UPVAL U14
       55 CAPTURE                          UPVAL U15
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          VAL R8
       58 CAPTURE                          UPVAL U17
       59 CAPTURE                          VAL R9
       60 CAPTURE                          UPVAL U9
       61 CAPTURE                          UPVAL U18
       62 CAPTURE                          VAL R13
       63 CAPTURE                          UPVAL U3
       64 CAPTURE                          UPVAL U4
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          UPVAL U19
       67 CAPTURE                          UPVAL U20
       68 CAPTURE                          UPVAL U21
       69 NEWCLOSURE                       R14 P13
       70 CAPTURE                          UPVAL U16
       71 CAPTURE                          UPVAL U22
       72 CAPTURE                          UPVAL U14
       73 CAPTURE                          UPVAL U15
       74 CAPTURE                          UPVAL U1
       75 CAPTURE                          VAL R8
       76 CAPTURE                          UPVAL U17
       77 CAPTURE                          VAL R9
       78 CAPTURE                          UPVAL U9
       79 CAPTURE                          UPVAL U18
       80 CAPTURE                          VAL R14
       81 CAPTURE                          UPVAL U3
       82 CAPTURE                          UPVAL U4
       83 CAPTURE                          UPVAL U5
       84 CAPTURE                          UPVAL U19
       85 CAPTURE                          UPVAL U20
       86 CAPTURE                          UPVAL U21
       87 NEWCLOSURE                       R15 P14
       88 CAPTURE                          UPVAL U5
       89 CAPTURE                          UPVAL U16
       90 CAPTURE                          UPVAL U17
       91 CAPTURE                          UPVAL U23
       92 CAPTURE                          UPVAL U21
       93 CAPTURE                          UPVAL U9
       94 CAPTURE                          UPVAL U18
       95 CAPTURE                          VAL R15
       96 NEWCLOSURE                       R16 P15
       97 CAPTURE                          UPVAL U5
       98 CAPTURE                          VAL R15
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R0
      101 CAPTURE                          UPVAL U0
      102 CAPTURE                          UPVAL U2
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R3
      105 CAPTURE                          UPVAL U24
      106 CAPTURE                          VAL R14
      107 NEWCLOSURE                       R17 P16
      108 CAPTURE                          UPVAL U5
      109 CAPTURE                          UPVAL U25
      110 CAPTURE                          UPVAL U21
      111 CAPTURE                          VAL R15
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R0
      114 CAPTURE                          UPVAL U0
      115 CAPTURE                          UPVAL U2
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R14
      119 NEWCLOSURE                       R18 P17
      120 CAPTURE                          UPVAL U3
      121 CAPTURE                          VAL R0
      122 CAPTURE                          UPVAL U0
      123 CAPTURE                          UPVAL U1
      124 CAPTURE                          UPVAL U4
      125 NEWCLOSURE                       R19 P18
      126 CAPTURE                          UPVAL U14
      127 CAPTURE                          UPVAL U22
      128 CAPTURE                          VAL R0
      129 CAPTURE                          UPVAL U0
      130 CAPTURE                          UPVAL U1
      131 CAPTURE                          UPVAL U5
      132 CAPTURE                          UPVAL U6
      133 CAPTURE                          UPVAL U15
      134 CAPTURE                          UPVAL U11
      135 NEWCLOSURE                       R20 P19
      136 CAPTURE                          UPVAL U12
      137 CAPTURE                          VAL R0
      138 CAPTURE                          UPVAL U0
      139 CAPTURE                          UPVAL U1
      140 CAPTURE                          UPVAL U13
      141 NEWCLOSURE                       R21 P20
      142 CAPTURE                          UPVAL U22
      143 CAPTURE                          UPVAL U26
      144 CAPTURE                          UPVAL U16
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R0
      147 CAPTURE                          UPVAL U2
      148 CAPTURE                          UPVAL U17
      149 CAPTURE                          VAL R20
      150 CAPTURE                          UPVAL U9
      151 CAPTURE                          UPVAL U18
      152 CAPTURE                          VAL R21
      153 CAPTURE                          VAL R16
      154 CAPTURE                          VAL R18
      155 CAPTURE                          UPVAL U27
      156 CAPTURE                          VAL R17
      157 CAPTURE                          UPVAL U5
      158 CAPTURE                          UPVAL U19
      159 CAPTURE                          UPVAL U20
      160 CAPTURE                          UPVAL U21
      161 CAPTURE                          UPVAL U0
      162 RETURN                           R21 1

PROTO_27:
        0 GETTABLEKS                       R2 R1 K0 ["child"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R1 K0 ["child"]
        7 GETUPVAL                         R3 0
        8 MOVE                             R4 R2
        9 GETTABLEKS                       R5 R2 K1 ["pendingProps"]
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R1 K0 ["child"]
       14 SETTABLEKS                       R1 R3 K2 ["return_"]
       16 GETTABLEKS                       R4 R2 K3 ["sibling"]
       18 JUMPIFEQKNIL                     R4 ; [+15]
       20 GETTABLEKS                       R2 R2 K3 ["sibling"]
       22 GETUPVAL                         R4 0
       23 MOVE                             R5 R2
       24 GETTABLEKS                       R6 R2 K1 ["pendingProps"]
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R3 K3 ["sibling"]
       29 GETTABLEKS                       R3 R3 K3 ["sibling"]
       31 SETTABLEKS                       R1 R3 K2 ["return_"]
       33 JUMPBACK                         ; [-18]
       34 LOADNIL                          R4
       35 SETTABLEKS                       R4 R3 K3 ["sibling"]
       37 RETURN                           R0 0

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
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["Array"]
       19 GETTABLEKS                       R4 R2 K8 ["Error"]
       21 GETIMPORT                        R6 K4 [require]
       23 GETTABLEKS                       R7 R0 K9 ["Shared"]
       25 CALL                             R6 1 1
       26 GETTABLEKS                       R5 R6 K10 ["console"]
       28 GETIMPORT                        R7 K4 [require]
       30 GETTABLEKS                       R8 R0 K9 ["Shared"]
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R6 R7 K11 ["describeError"]
       35 GETTABLEKS                       R7 R1 K12 ["__DEV__"]
       37 GETIMPORT                        R8 K4 [require]
       39 GETTABLEKS                       R9 R0 K13 ["SafeFlags"]
       41 CALL                             R8 1 1
       42 GETTABLEKS                       R9 R8 K14 ["createGetFFlag"]
       44 LOADK                            R10 K15 ["ReactPreventAssigningKeyToChildren"]
       45 CALL                             R9 1 1
       46 CALL                             R9 0 1
       47 GETIMPORT                        R10 K4 [require]
       49 GETTABLEKS                       R11 R0 K9 ["Shared"]
       51 CALL                             R10 1 1
       52 GETIMPORT                        R11 K4 [require]
       54 GETTABLEKS                       R12 R0 K16 ["React"]
       56 CALL                             R11 1 1
       57 GETIMPORT                        R12 K4 [require]
       59 GETIMPORT                        R15 K1 [script]
       61 GETTABLEKS                       R14 R15 K2 ["Parent"]
       63 GETTABLEKS                       R13 R14 K17 ["ReactInternalTypes"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K4 [require]
       68 GETIMPORT                        R16 K1 [script]
       70 GETTABLEKS                       R15 R16 K2 ["Parent"]
       72 GETTABLEKS                       R14 R15 K18 ["ReactFiberLane"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R15 K4 [require]
       77 GETTABLEKS                       R16 R0 K9 ["Shared"]
       79 CALL                             R15 1 1
       80 GETTABLEKS                       R14 R15 K19 ["getComponentName"]
       82 GETIMPORT                        R15 K4 [require]
       84 GETIMPORT                        R18 K1 [script]
       86 GETTABLEKS                       R17 R18 K2 ["Parent"]
       88 GETTABLEKS                       R16 R17 K20 ["ReactFiberFlags"]
       90 CALL                             R15 1 1
       91 GETTABLEKS                       R16 R15 K21 ["Placement"]
       93 GETTABLEKS                       R17 R15 K22 ["Deletion"]
       95 GETIMPORT                        R19 K4 [require]
       97 GETTABLEKS                       R20 R0 K9 ["Shared"]
       99 CALL                             R19 1 1
      100 GETTABLEKS                       R18 R19 K23 ["ReactSymbols"]
      102 GETTABLEKS                       R19 R18 K24 ["getIteratorFn"]
      104 GETTABLEKS                       R20 R18 K25 ["REACT_ELEMENT_TYPE"]
      106 GETTABLEKS                       R21 R18 K26 ["REACT_FRAGMENT_TYPE"]
      108 GETTABLEKS                       R22 R18 K27 ["REACT_PORTAL_TYPE"]
      110 GETTABLEKS                       R23 R18 K28 ["REACT_LAZY_TYPE"]
      112 GETTABLEKS                       R24 R18 K29 ["REACT_BLOCK_TYPE"]
      114 GETIMPORT                        R25 K4 [require]
      116 GETIMPORT                        R28 K1 [script]
      118 GETTABLEKS                       R27 R28 K2 ["Parent"]
      120 GETTABLEKS                       R26 R27 K30 ["ReactWorkTags"]
      122 CALL                             R25 1 1
      123 GETTABLEKS                       R26 R25 K31 ["FunctionComponent"]
      125 GETTABLEKS                       R27 R25 K32 ["ClassComponent"]
      127 GETTABLEKS                       R28 R25 K33 ["HostText"]
      129 GETTABLEKS                       R29 R25 K34 ["HostPortal"]
      131 GETTABLEKS                       R30 R25 K35 ["ForwardRef"]
      133 GETTABLEKS                       R31 R25 K36 ["Fragment"]
      135 GETTABLEKS                       R32 R25 K37 ["SimpleMemoComponent"]
      137 GETTABLEKS                       R33 R25 K38 ["Block"]
      139 GETIMPORT                        R35 K4 [require]
      141 GETTABLEKS                       R36 R0 K9 ["Shared"]
      143 CALL                             R35 1 1
      144 GETTABLEKS                       R34 R35 K39 ["invariant"]
      146 GETIMPORT                        R36 K4 [require]
      148 GETTABLEKS                       R37 R0 K9 ["Shared"]
      150 CALL                             R36 1 1
      151 GETTABLEKS                       R35 R36 K40 ["ReactFeatureFlags"]
      153 GETTABLEKS                       R36 R35 K41 ["enableLazyElements"]
      155 GETTABLEKS                       R37 R35 K42 ["enableBlocksAPI"]
      157 GETIMPORT                        R38 K4 [require]
      159 GETIMPORT                        R41 K1 [script]
      161 GETTABLEKS                       R40 R41 K2 ["Parent"]
      163 GETTABLEKS                       R39 R40 K43 ["ReactFiber.new"]
      165 CALL                             R38 1 1
      166 GETTABLEKS                       R39 R38 K44 ["createWorkInProgress"]
      168 GETTABLEKS                       R40 R38 K45 ["resetWorkInProgress"]
      170 GETTABLEKS                       R41 R38 K46 ["createFiberFromElement"]
      172 GETTABLEKS                       R42 R38 K47 ["createFiberFromFragment"]
      174 GETTABLEKS                       R43 R38 K48 ["createFiberFromText"]
      176 GETTABLEKS                       R44 R38 K49 ["createFiberFromPortal"]
      178 GETIMPORT                        R45 K4 [require]
      180 GETIMPORT                        R48 K1 [script]
      182 GETTABLEKS                       R47 R48 K2 ["Parent"]
      184 GETTABLEKS                       R46 R47 K50 ["ReactFiberHotReloading.new"]
      186 CALL                             R45 1 1
      187 GETTABLEKS                       R46 R45 K51 ["isCompatibleFamilyForHotReloading"]
      189 NEWTABLE                         R47 4 0
      191 LOADNIL                          R48
      192 LOADNIL                          R49
      193 LOADNIL                          R50
      194 DUPCLOSURE                       R51 K52 [PROTO_0]
      195 JUMPIFNOT                        R7 ; [+10]
      196 LOADB                            R48 0
      197 NEWTABLE                         R49 0 0
      199 NEWTABLE                         R50 0 0
      201 NEWCLOSURE                       R51 P1
      202 CAPTURE                          VAL R34
      203 CAPTURE                          VAL R14
      204 CAPTURE                          REF R49
      205 CAPTURE                          VAL R5
      206 GETTABLEKS                       R52 R3 K53 ["isArray"]
      208 DUPCLOSURE                       R53 K54 [PROTO_2]
      209 CAPTURE                          VAL R7
      210 CAPTURE                          VAL R14
      211 CAPTURE                          VAL R4
      212 SETGLOBAL                        R53 K55 ["coerceRef"]
      214 NEWCLOSURE                       R53 P3
      215 CAPTURE                          VAL R7
      216 CAPTURE                          VAL R14
      217 CAPTURE                          REF R50
      218 CAPTURE                          VAL R5
      219 DUPCLOSURE                       R54 K56 [PROTO_4]
      220 CAPTURE                          VAL R6
      221 SETGLOBAL                        R54 K57 ["resolveLazyType"]
      223 NEWCLOSURE                       R54 P5
      224 CAPTURE                          VAL R17
      225 CAPTURE                          VAL R39
      226 CAPTURE                          VAL R16
      227 CAPTURE                          VAL R28
      228 CAPTURE                          VAL R43
      229 CAPTURE                          VAL R7
      230 CAPTURE                          VAL R46
      231 CAPTURE                          VAL R37
      232 CAPTURE                          VAL R33
      233 CAPTURE                          VAL R23
      234 CAPTURE                          VAL R24
      235 CAPTURE                          VAL R41
      236 CAPTURE                          VAL R29
      237 CAPTURE                          VAL R44
      238 CAPTURE                          VAL R31
      239 CAPTURE                          VAL R42
      240 CAPTURE                          VAL R20
      241 CAPTURE                          VAL R22
      242 CAPTURE                          VAL R36
      243 CAPTURE                          VAL R14
      244 CAPTURE                          REF R50
      245 CAPTURE                          VAL R5
      246 CAPTURE                          VAL R21
      247 CAPTURE                          REF R51
      248 CAPTURE                          VAL R9
      249 CAPTURE                          REF R48
      250 CAPTURE                          VAL R52
      251 CAPTURE                          VAL R19
      252 MOVE                             R55 R54
      253 LOADB                            R56 1
      254 CALL                             R55 1 1
      255 SETTABLEKS                       R55 R47 K58 ["reconcileChildFibers"]
      257 MOVE                             R55 R54
      258 LOADB                            R56 0
      259 CALL                             R55 1 1
      260 SETTABLEKS                       R55 R47 K59 ["mountChildFibers"]
      262 DUPCLOSURE                       R55 K60 [PROTO_27]
      263 CAPTURE                          VAL R39
      264 SETTABLEKS                       R55 R47 K61 ["cloneChildFibers"]
      266 DUPCLOSURE                       R55 K62 [PROTO_28]
      267 CAPTURE                          VAL R40
      268 SETTABLEKS                       R55 R47 K63 ["resetChildFibers"]
      270 CLOSEUPVALS                      R48
      271 RETURN                           R47 1
