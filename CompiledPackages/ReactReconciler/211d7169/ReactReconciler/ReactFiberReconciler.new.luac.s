PROTO_0:
        0 JUMPIF                           R0 ; [+2]
        1 GETUPVAL                         R1 0
        2 RETURN                           R1 1
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 2
        7 MOVE                             R3 R1
        8 CALL                             R2 1 1
        9 GETTABLEKS                       R3 R1 K0 ["tag"]
       11 GETUPVAL                         R4 3
       12 JUMPIFNOTEQ                      R3 R4 ; [+13]
       14 GETTABLEKS                       R3 R1 K1 ["type"]
       16 GETUPVAL                         R4 4
       17 MOVE                             R5 R3
       18 CALL                             R4 1 1
       19 JUMPIFNOT                        R4 ; [+6]
       20 GETUPVAL                         R4 5
       21 MOVE                             R5 R1
       22 MOVE                             R6 R3
       23 MOVE                             R7 R2
       24 CALL                             R4 3 -1
       25 RETURN                           R4 -1
       26 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+26]
        5 GETTABLEKS                       R3 R0 K0 ["render"]
        7 FASTCALL1                        TYPEOF R3 ; [+2]
        8 GETIMPORT                        R2 K2 [typeof]
       10 CALL                             R2 1 1
       11 JUMPIFNOTEQKS                    R2 K3 ["function"] ; [+6]
       13 GETUPVAL                         R2 1
       14 LOADB                            R3 0
       15 LOADK                            R4 K4 ["Unable to find node on an unmounted component."]
       16 CALL                             R2 2 0
       17 JUMP                             ; [+12]
       18 GETUPVAL                         R2 1
       19 LOADB                            R3 0
       20 LOADK                            R4 K5 ["Argument appears to not be a ReactComponent. Keys: %s"]
       21 GETIMPORT                        R5 K8 [table.concat]
       23 GETUPVAL                         R7 2
       24 GETTABLEKS                       R6 R7 K9 ["keys"]
       26 MOVE                             R7 R0
       27 CALL                             R6 1 -1
       28 CALL                             R5 -1 -1
       29 CALL                             R2 -1 0
       30 GETUPVAL                         R2 3
       31 MOVE                             R3 R1
       32 CALL                             R2 1 1
       33 JUMPIFNOTEQKNIL                  R2 ; [+3]
       35 LOADNIL                          R3
       36 RETURN                           R3 1
       37 GETTABLEKS                       R3 R2 K10 ["stateNode"]
       39 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R1 R2 K0 ["mode"]
        6 GETUPVAL                         R2 3
        7 FASTCALL2                        BIT32_BAND R1 R2 ; [+3]
        9 GETIMPORT                        R0 K3 [bit32.band]
       11 CALL                             R0 2 1
       12 JUMPIFEQKN                       R0 K4 [0] ; [+10]
       14 GETUPVAL                         R1 4
       15 GETTABLEKS                       R0 R1 K5 ["error"]
       17 LOADK                            R1 K6 ["%s is deprecated in StrictMode. %s was passed an instance of %s which is inside StrictMode. Instead, add a ref directly to the element you want to reference. Learn more about using refs safely here: https://reactjs.org/link/strict-mode-find-node"]
       18 GETUPVAL                         R2 5
       19 GETUPVAL                         R3 5
       20 GETUPVAL                         R4 6
       21 CALL                             R0 4 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 4
       24 GETTABLEKS                       R0 R1 K5 ["error"]
       26 LOADK                            R1 K7 ["%s is deprecated in StrictMode. %s was passed an instance of %s which renders StrictMode children. Instead, add a ref directly to the element you want to reference. Learn more about using refs safely here: https://reactjs.org/link/strict-mode-find-node"]
       27 GETUPVAL                         R2 5
       28 GETUPVAL                         R3 5
       29 GETUPVAL                         R4 6
       30 CALL                             R0 4 0
       31 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R2 R3 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+87]
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKNIL                  R2 ; [+26]
       10 GETTABLEKS                       R4 R0 K3 ["render"]
       12 FASTCALL1                        TYPEOF R4 ; [+2]
       13 GETIMPORT                        R3 K5 [typeof]
       15 CALL                             R3 1 1
       16 JUMPIFNOTEQKS                    R3 K6 ["function"] ; [+6]
       18 GETUPVAL                         R3 1
       19 LOADB                            R4 0
       20 LOADK                            R5 K7 ["Unable to find node on an unmounted component."]
       21 CALL                             R3 2 0
       22 JUMP                             ; [+12]
       23 GETUPVAL                         R3 1
       24 LOADB                            R4 0
       25 LOADK                            R5 K8 ["Argument appears to not be a ReactComponent. Keys: %s"]
       26 GETIMPORT                        R6 K11 [table.concat]
       28 GETUPVAL                         R8 2
       29 GETTABLEKS                       R7 R8 K12 ["keys"]
       31 MOVE                             R8 R0
       32 CALL                             R7 1 -1
       33 CALL                             R6 -1 -1
       34 CALL                             R3 -1 0
       35 GETUPVAL                         R3 3
       36 MOVE                             R4 R2
       37 CALL                             R3 1 1
       38 JUMPIFNOTEQKNIL                  R3 ; [+3]
       40 LOADNIL                          R4
       41 RETURN                           R4 1
       42 GETTABLEKS                       R5 R3 K13 ["mode"]
       44 GETUPVAL                         R6 4
       45 FASTCALL2                        BIT32_BAND R5 R6 ; [+3]
       47 GETIMPORT                        R4 K16 [bit32.band]
       49 CALL                             R4 2 1
       50 JUMPIFEQKN                       R4 K17 [0] ; [+38]
       52 GETUPVAL                         R5 5
       53 GETTABLEKS                       R6 R2 K19 ["type"]
       55 CALL                             R5 1 1
       56 ORK                              R4 R5 K18 ["Component"]
       57 GETUPVAL                         R6 6
       58 GETTABLE                         R5 R6 R4
       59 JUMPIF                           R5 ; [+29]
       60 GETUPVAL                         R5 6
       61 LOADB                            R6 1
       62 SETTABLE                         R6 R5 R4
       63 GETUPVAL                         R6 7
       64 GETTABLEKS                       R5 R6 K20 ["current"]
       66 GETIMPORT                        R6 K22 [pcall]
       68 NEWCLOSURE                       R7 P0
       69 CAPTURE                          UPVAL U8
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R2
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          UPVAL U9
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R4
       76 CALL                             R6 1 2
       77 JUMPIFNOT                        R5 ; [+4]
       78 GETUPVAL                         R8 8
       79 MOVE                             R9 R5
       80 CALL                             R8 1 0
       81 JUMP                             ; [+2]
       82 GETUPVAL                         R8 10
       83 CALL                             R8 0 0
       84 JUMPIF                           R6 ; [+4]
       85 GETIMPORT                        R8 K24 [error]
       87 MOVE                             R9 R7
       88 CALL                             R8 1 0
       89 GETTABLEKS                       R4 R3 K25 ["stateNode"]
       91 RETURN                           R4 1
       92 GETUPVAL                         R2 11
       93 MOVE                             R3 R0
       94 CALL                             R2 1 1
       95 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 MOVE                             R8 R3
        5 CALL                             R4 4 -1
        6 RETURN                           R4 -1

PROTO_5:
        0 GETIMPORT                        R5 K1 [_G]
        2 GETTABLEKS                       R4 R5 K2 ["__DEV__"]
        4 JUMPIFNOT                        R4 ; [+4]
        5 GETUPVAL                         R4 0
        6 MOVE                             R5 R1
        7 MOVE                             R6 R0
        8 CALL                             R4 2 0
        9 GETTABLEKS                       R4 R1 K3 ["current"]
       11 GETUPVAL                         R5 1
       12 CALL                             R5 0 1
       13 GETIMPORT                        R7 K1 [_G]
       15 GETTABLEKS                       R6 R7 K2 ["__DEV__"]
       17 JUMPIFNOT                        R6 ; [+11]
       18 GETIMPORT                        R7 K1 [_G]
       20 GETTABLEKS                       R6 R7 K4 ["__TESTEZ_RUNNING_TEST__"]
       22 JUMPIFNOT                        R6 ; [+6]
       23 GETUPVAL                         R6 2
       24 MOVE                             R7 R4
       25 CALL                             R6 1 0
       26 GETUPVAL                         R6 3
       27 MOVE                             R7 R4
       28 CALL                             R6 1 0
       29 GETUPVAL                         R6 4
       30 MOVE                             R7 R4
       31 CALL                             R6 1 1
       32 GETUPVAL                         R7 5
       33 JUMPIFNOT                        R7 ; [+3]
       34 GETUPVAL                         R7 6
       35 MOVE                             R8 R6
       36 CALL                             R7 1 0
       37 JUMPIF                           R2 ; [+2]
       38 GETUPVAL                         R7 7
       39 JUMP                             ; [+25]
       40 GETUPVAL                         R8 8
       41 MOVE                             R9 R2
       42 CALL                             R8 1 1
       43 GETUPVAL                         R9 9
       44 MOVE                             R10 R8
       45 CALL                             R9 1 1
       46 GETTABLEKS                       R10 R8 K5 ["tag"]
       48 GETUPVAL                         R11 10
       49 JUMPIFNOTEQ                      R10 R11 ; [+14]
       51 GETTABLEKS                       R10 R8 K6 ["type"]
       53 GETUPVAL                         R11 11
       54 MOVE                             R12 R10
       55 CALL                             R11 1 1
       56 JUMPIFNOT                        R11 ; [+7]
       57 GETUPVAL                         R11 12
       58 MOVE                             R12 R8
       59 MOVE                             R13 R10
       60 MOVE                             R14 R9
       61 CALL                             R11 3 1
       62 MOVE                             R7 R11
       63 JUMP                             ; [+1]
       64 MOVE                             R7 R9
       65 GETTABLEKS                       R8 R1 K7 ["context"]
       67 JUMPIFNOTEQKNIL                  R8 ; [+4]
       69 SETTABLEKS                       R7 R1 K7 ["context"]
       71 JUMP                             ; [+2]
       72 SETTABLEKS                       R7 R1 K8 ["pendingContext"]
       74 GETIMPORT                        R9 K1 [_G]
       76 GETTABLEKS                       R8 R9 K2 ["__DEV__"]
       78 JUMPIFNOT                        R8 ; [+24]
       79 GETUPVAL                         R8 13
       80 JUMPIFNOT                        R8 ; [+22]
       81 GETUPVAL                         R9 14
       82 GETTABLEKS                       R8 R9 K3 ["current"]
       84 JUMPIFEQKNIL                     R8 ; [+18]
       86 GETUPVAL                         R8 15
       87 JUMPIF                           R8 ; [+15]
       88 LOADB                            R8 1
       89 SETUPVAL                         R8 15
       90 GETUPVAL                         R9 16
       91 GETTABLEKS                       R8 R9 K9 ["error"]
       93 LOADK                            R9 K10 ["Render methods should be a pure function of props and state; triggering nested component updates from render is not allowed. If necessary, trigger nested updates in componentDidUpdate.\n\nCheck the render method of %s."]
       94 GETUPVAL                         R11 17
       95 GETUPVAL                         R14 14
       96 GETTABLEKS                       R13 R14 K3 ["current"]
       98 GETTABLEKS                       R12 R13 K6 ["type"]
      100 CALL                             R11 1 1
      101 ORK                              R10 R11 K11 ["Unknown"]
      102 CALL                             R8 2 0
      103 GETUPVAL                         R8 18
      104 MOVE                             R9 R5
      105 MOVE                             R10 R6
      106 CALL                             R8 2 1
      107 JUMPIFNOTEQKNIL                  R0 ; [+4]
      109 GETUPVAL                         R9 19
      110 GETTABLEKS                       R0 R9 K12 ["None"]
      112 DUPTABLE                         R9 K14 [{"element"}]
      113 SETTABLEKS                       R0 R9 K13 ["element"]
      115 SETTABLEKS                       R9 R8 K15 ["payload"]
      117 JUMPIFEQKNIL                     R3 ; [+25]
      119 GETIMPORT                        R10 K1 [_G]
      121 GETTABLEKS                       R9 R10 K2 ["__DEV__"]
      123 JUMPIFNOT                        R9 ; [+17]
      124 FASTCALL1                        TYPEOF R3 ; [+3]
      125 MOVE                             R10 R3
      126 GETIMPORT                        R9 K17 [typeof]
      128 CALL                             R9 1 1
      129 JUMPIFEQKS                       R9 K18 ["function"] ; [+11]
      131 GETUPVAL                         R10 16
      132 GETTABLEKS                       R9 R10 K9 ["error"]
      134 LOADK                            R10 K19 ["render(...): Expected the last optional `callback` argument to be a function. Instead received: %s."]
      135 FASTCALL1                        TOSTRING R3 ; [+3]
      136 MOVE                             R12 R3
      137 GETIMPORT                        R11 K21 [tostring]
      139 CALL                             R11 1 1
      140 CALL                             R9 2 0
      141 SETTABLEKS                       R3 R8 K22 ["callback"]
      143 GETUPVAL                         R9 20
      144 MOVE                             R10 R4
      145 MOVE                             R11 R8
      146 CALL                             R9 2 0
      147 GETUPVAL                         R9 21
      148 MOVE                             R10 R4
      149 MOVE                             R11 R6
      150 MOVE                             R12 R5
      151 CALL                             R9 3 0
      152 RETURN                           R6 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["current"]
        2 GETTABLEKS                       R2 R1 K1 ["child"]
        4 JUMPIF                           R2 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETTABLEKS                       R3 R1 K1 ["child"]
        9 GETTABLEKS                       R2 R3 K2 ["tag"]
       11 GETUPVAL                         R3 0
       12 JUMPIFNOTEQ                      R2 R3 ; [+8]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R4 R1 K1 ["child"]
       17 GETTABLEKS                       R3 R4 K3 ["stateNode"]
       19 CALL                             R2 1 -1
       20 RETURN                           R2 -1
       21 GETTABLEKS                       R3 R1 K1 ["child"]
       23 GETTABLEKS                       R2 R3 K3 ["stateNode"]
       25 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 -1
        5 RETURN                           R0 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["tag"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+14]
        5 GETTABLEKS                       R1 R0 K1 ["stateNode"]
        7 GETTABLEKS                       R2 R1 K2 ["hydrate"]
        9 JUMPIFNOT                        R2 ; [+27]
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R1
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 2
       14 MOVE                             R4 R1
       15 MOVE                             R5 R2
       16 CALL                             R3 2 0
       17 RETURN                           R0 0
       18 GETTABLEKS                       R1 R0 K0 ["tag"]
       20 GETUPVAL                         R2 3
       21 JUMPIFNOTEQ                      R1 R2 ; [+15]
       23 GETUPVAL                         R1 4
       24 CALL                             R1 0 1
       25 GETUPVAL                         R2 5
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          VAL R0
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          VAL R1
       31 CALL                             R2 1 0
       32 GETUPVAL                         R2 8
       33 GETUPVAL                         R3 9
       34 MOVE                             R4 R0
       35 MOVE                             R5 R2
       36 CALL                             R3 2 0
       37 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["memoizedState"]
        2 JUMPIFNOT                        R2 ; [+13]
        3 JUMPIFEQKNIL                     R2 ; [+12]
        5 GETTABLEKS                       R3 R2 K1 ["dehydrated"]
        7 JUMPIFEQKNIL                     R3 ; [+8]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R4 R2 K2 ["retryLane"]
       12 MOVE                             R5 R1
       13 CALL                             R3 2 1
       14 SETTABLEKS                       R3 R2 K2 ["retryLane"]
       16 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["memoizedState"]
        2 JUMPIFNOT                        R2 ; [+13]
        3 JUMPIFEQKNIL                     R2 ; [+12]
        5 GETTABLEKS                       R3 R2 K1 ["dehydrated"]
        7 JUMPIFEQKNIL                     R3 ; [+8]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R4 R2 K2 ["retryLane"]
       12 MOVE                             R5 R1
       13 CALL                             R3 2 1
       14 SETTABLEKS                       R3 R2 K2 ["retryLane"]
       16 GETTABLEKS                       R2 R0 K3 ["alternate"]
       18 JUMPIFNOT                        R2 ; [+16]
       19 GETTABLEKS                       R3 R2 K0 ["memoizedState"]
       21 JUMPIFNOT                        R3 ; [+13]
       22 JUMPIFEQKNIL                     R3 ; [+12]
       24 GETTABLEKS                       R4 R3 K1 ["dehydrated"]
       26 JUMPIFEQKNIL                     R4 ; [+8]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R5 R3 K2 ["retryLane"]
       31 MOVE                             R6 R1
       32 CALL                             R4 2 1
       33 SETTABLEKS                       R4 R3 K2 ["retryLane"]
       35 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["tag"]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQ                         R1 R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 MOVE                             R4 R0
       11 MOVE                             R5 R2
       12 MOVE                             R6 R1
       13 CALL                             R3 3 0
       14 GETUPVAL                         R3 4
       15 MOVE                             R4 R0
       16 MOVE                             R5 R2
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["tag"]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQ                         R1 R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 MOVE                             R4 R0
       11 MOVE                             R5 R2
       12 MOVE                             R6 R1
       13 CALL                             R3 3 0
       14 GETUPVAL                         R3 4
       15 MOVE                             R4 R0
       16 MOVE                             R5 R2
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["tag"]
        2 GETUPVAL                         R2 0
        3 JUMPIFEQ                         R1 R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 3
       12 MOVE                             R4 R0
       13 MOVE                             R5 R2
       14 MOVE                             R6 R1
       15 CALL                             R3 3 0
       16 GETUPVAL                         R3 4
       17 MOVE                             R4 R0
       18 MOVE                             R5 R2
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 CALL                             R3 1 0
        5 GETIMPORT                        R3 K1 [pcall]
        7 MOVE                             R4 R1
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 1
       10 MOVE                             R6 R2
       11 CALL                             R5 1 0
       12 JUMPIF                           R3 ; [+4]
       13 GETIMPORT                        R5 K3 [error]
       15 MOVE                             R6 R4
       16 CALL                             R5 1 0
       17 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R1 K0 ["tag"]
        9 GETUPVAL                         R3 1
       10 JUMPIFNOTEQ                      R2 R3 ; [+6]
       12 GETTABLEKS                       R3 R1 K1 ["stateNode"]
       14 GETTABLEKS                       R2 R3 K2 ["instance"]
       16 RETURN                           R2 1
       17 GETTABLEKS                       R2 R1 K1 ["stateNode"]
       19 RETURN                           R2 1

PROTO_16:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_18:
        0 GETTABLE                         R3 R1 R2
        1 LOADNIL                          R4
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K0 ["isArray"]
        5 MOVE                             R6 R0
        6 CALL                             R5 1 1
        7 JUMPIFNOT                        R5 ; [+7]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K1 ["slice"]
       11 MOVE                             R6 R0
       12 CALL                             R5 1 1
       13 MOVE                             R4 R5
       14 JUMP                             ; [+8]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K2 ["assign"]
       18 NEWTABLE                         R6 0 0
       20 MOVE                             R7 R0
       21 CALL                             R5 2 1
       22 MOVE                             R4 R5
       23 ADDK                             R5 R2 K3 [1]
       24 LENGTH                           R6 R1
       25 JUMPIFNOTEQ                      R5 R6 ; [+18]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R5 R6 K0 ["isArray"]
       30 MOVE                             R6 R4
       31 CALL                             R5 1 1
       32 JUMPIFNOT                        R5 ; [+8]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R5 R6 K4 ["splice"]
       36 MOVE                             R6 R4
       37 MOVE                             R7 R3
       38 LOADN                            R8 1
       39 CALL                             R5 3 0
       40 RETURN                           R4 1
       41 LOADNIL                          R5
       42 SETTABLE                         R5 R4 R3
       43 RETURN                           R4 1
       44 GETUPVAL                         R5 2
       45 GETTABLE                         R6 R0 R3
       46 MOVE                             R7 R1
       47 ADDK                             R8 R2 K3 [1]
       48 CALL                             R5 3 1
       49 SETTABLE                         R5 R4 R3
       50 RETURN                           R4 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 LOADN                            R5 0
        4 CALL                             R2 3 1
        5 RETURN                           R2 1

PROTO_20:
        0 GETTABLE                         R4 R1 R3
        1 LOADNIL                          R5
        2 GETUPVAL                         R7 0
        3 GETTABLEKS                       R6 R7 K0 ["isArray"]
        5 MOVE                             R7 R0
        6 CALL                             R6 1 1
        7 JUMPIFNOT                        R6 ; [+7]
        8 GETUPVAL                         R7 0
        9 GETTABLEKS                       R6 R7 K1 ["slice"]
       11 MOVE                             R7 R0
       12 CALL                             R6 1 1
       13 MOVE                             R5 R6
       14 JUMP                             ; [+8]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K2 ["assign"]
       18 NEWTABLE                         R7 0 0
       20 MOVE                             R8 R0
       21 CALL                             R6 2 1
       22 MOVE                             R5 R6
       23 ADDK                             R6 R3 K3 [1]
       24 LENGTH                           R7 R1
       25 JUMPIFNOTEQ                      R6 R7 ; [+21]
       27 GETTABLE                         R6 R2 R3
       28 GETTABLE                         R7 R5 R4
       29 SETTABLE                         R7 R5 R6
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R7 R8 K0 ["isArray"]
       33 MOVE                             R8 R5
       34 CALL                             R7 1 1
       35 JUMPIFNOT                        R7 ; [+8]
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R7 R8 K4 ["splice"]
       39 MOVE                             R8 R5
       40 MOVE                             R9 R4
       41 LOADN                            R10 1
       42 CALL                             R7 3 0
       43 RETURN                           R5 1
       44 LOADNIL                          R7
       45 SETTABLE                         R7 R5 R4
       46 RETURN                           R5 1
       47 GETUPVAL                         R6 2
       48 GETTABLE                         R7 R0 R4
       49 MOVE                             R8 R1
       50 MOVE                             R9 R2
       51 ADDK                             R10 R3 K3 [1]
       52 CALL                             R6 4 1
       53 SETTABLE                         R6 R5 R4
       54 RETURN                           R5 1

PROTO_21:
        0 LENGTH                           R3 R1
        1 LENGTH                           R4 R2
        2 JUMPIFEQ                         R3 R4 ; [+8]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K0 ["warn"]
        7 LOADK                            R4 K1 ["copyWithRename() expects paths of the same length"]
        8 CALL                             R3 1 0
        9 LOADNIL                          R3
       10 RETURN                           R3 1
       11 LOADN                            R5 1
       12 LENGTH                           R3 R2
       13 LOADN                            R4 1
       14 FORNPREP                         R3
       15 GETTABLE                         R6 R1 R5
       16 GETTABLE                         R7 R2 R5
       17 JUMPIFEQ                         R6 R7 ; [+8]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K0 ["warn"]
       22 LOADK                            R7 K2 ["copyWithRename() expects paths to be the same except for the deepest key"]
       23 CALL                             R6 1 0
       24 LOADNIL                          R6
       25 RETURN                           R6 1
       26 FORNLOOP                         R3
       27 GETUPVAL                         R3 1
       28 MOVE                             R4 R0
       29 MOVE                             R5 R1
       30 MOVE                             R6 R2
       31 LOADN                            R7 0
       32 CALL                             R3 4 1
       33 RETURN                           R3 1

PROTO_22:
        0 LENGTH                           R4 R1
        1 JUMPIFNOTLE                      R4 R2 ; [+2]
        3 RETURN                           R3 1
        4 GETTABLE                         R4 R1 R2
        5 LOADNIL                          R5
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K0 ["isArray"]
        9 MOVE                             R7 R0
       10 CALL                             R6 1 1
       11 JUMPIFNOT                        R6 ; [+7]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K1 ["slice"]
       15 MOVE                             R7 R0
       16 CALL                             R6 1 1
       17 MOVE                             R5 R6
       18 JUMP                             ; [+8]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R6 R7 K2 ["assign"]
       22 NEWTABLE                         R7 0 0
       24 MOVE                             R8 R0
       25 CALL                             R6 2 1
       26 MOVE                             R5 R6
       27 GETUPVAL                         R6 2
       28 GETTABLE                         R7 R0 R4
       29 MOVE                             R8 R1
       30 ADDK                             R9 R2 K3 [1]
       31 MOVE                             R10 R3
       32 CALL                             R6 4 1
       33 SETTABLE                         R6 R5 R4
       34 RETURN                           R5 1

PROTO_23:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 LOADN                            R6 0
        4 MOVE                             R7 R2
        5 CALL                             R3 4 1
        6 RETURN                           R3 1

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["memoizedState"]
        2 JUMPIFEQKNIL                     R2 ; [+8]
        4 LOADN                            R3 0
        5 JUMPIFNOTLT                      R3 R1 ; [+5]
        7 GETTABLEKS                       R2 R2 K1 ["next"]
        9 SUBK                             R1 R1 K2 [1]
       10 JUMPBACK                         ; [-9]
       11 RETURN                           R2 1

PROTO_25:
        0 MOVE                             R5 R1
        1 GETTABLEKS                       R6 R0 K0 ["memoizedState"]
        3 JUMPIFEQKNIL                     R6 ; [+8]
        5 LOADN                            R7 0
        6 JUMPIFNOTLT                      R7 R5 ; [+5]
        8 GETTABLEKS                       R6 R6 K1 ["next"]
       10 SUBK                             R5 R5 K2 [1]
       11 JUMPBACK                         ; [-9]
       12 MOVE                             R4 R6
       13 JUMPIFEQKNIL                     R4 ; [+29]
       15 GETTABLEKS                       R6 R4 K0 ["memoizedState"]
       17 GETUPVAL                         R7 0
       18 MOVE                             R8 R6
       19 MOVE                             R9 R2
       20 LOADN                            R10 0
       21 MOVE                             R11 R3
       22 CALL                             R7 4 1
       23 MOVE                             R5 R7
       24 SETTABLEKS                       R5 R4 K0 ["memoizedState"]
       26 SETTABLEKS                       R5 R4 K3 ["baseState"]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R6 R7 K4 ["assign"]
       31 NEWTABLE                         R7 0 0
       33 GETTABLEKS                       R8 R0 K5 ["memoizedProps"]
       35 CALL                             R6 2 1
       36 SETTABLEKS                       R6 R0 K5 ["memoizedProps"]
       38 GETUPVAL                         R6 2
       39 MOVE                             R7 R0
       40 GETUPVAL                         R8 3
       41 GETUPVAL                         R9 4
       42 CALL                             R6 3 0
       43 RETURN                           R0 0

PROTO_26:
        0 MOVE                             R4 R1
        1 GETTABLEKS                       R5 R0 K0 ["memoizedState"]
        3 JUMPIFEQKNIL                     R5 ; [+8]
        5 LOADN                            R6 0
        6 JUMPIFNOTLT                      R6 R4 ; [+5]
        8 GETTABLEKS                       R5 R5 K1 ["next"]
       10 SUBK                             R4 R4 K2 [1]
       11 JUMPBACK                         ; [-9]
       12 MOVE                             R3 R5
       13 JUMPIFEQKNIL                     R3 ; [+28]
       15 GETTABLEKS                       R5 R3 K0 ["memoizedState"]
       17 GETUPVAL                         R6 0
       18 MOVE                             R7 R5
       19 MOVE                             R8 R2
       20 LOADN                            R9 0
       21 CALL                             R6 3 1
       22 MOVE                             R4 R6
       23 SETTABLEKS                       R4 R3 K0 ["memoizedState"]
       25 SETTABLEKS                       R4 R3 K3 ["baseState"]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R5 R6 K4 ["assign"]
       30 NEWTABLE                         R6 0 0
       32 GETTABLEKS                       R7 R0 K5 ["memoizedProps"]
       34 CALL                             R5 2 1
       35 SETTABLEKS                       R5 R0 K5 ["memoizedProps"]
       37 GETUPVAL                         R5 2
       38 MOVE                             R6 R0
       39 GETUPVAL                         R7 3
       40 GETUPVAL                         R8 4
       41 CALL                             R5 3 0
       42 RETURN                           R0 0

PROTO_27:
        0 MOVE                             R5 R1
        1 GETTABLEKS                       R6 R0 K0 ["memoizedState"]
        3 JUMPIFEQKNIL                     R6 ; [+8]
        5 LOADN                            R7 0
        6 JUMPIFNOTLT                      R7 R5 ; [+5]
        8 GETTABLEKS                       R6 R6 K1 ["next"]
       10 SUBK                             R5 R5 K2 [1]
       11 JUMPBACK                         ; [-9]
       12 MOVE                             R4 R6
       13 JUMPIFEQKNIL                     R4 ; [+26]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R6 R4 K0 ["memoizedState"]
       18 MOVE                             R7 R2
       19 MOVE                             R8 R3
       20 CALL                             R5 3 1
       21 SETTABLEKS                       R5 R4 K0 ["memoizedState"]
       23 SETTABLEKS                       R5 R4 K3 ["baseState"]
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R6 R7 K4 ["assign"]
       28 NEWTABLE                         R7 0 0
       30 GETTABLEKS                       R8 R0 K5 ["memoizedProps"]
       32 CALL                             R6 2 1
       33 SETTABLEKS                       R6 R0 K5 ["memoizedProps"]
       35 GETUPVAL                         R6 2
       36 MOVE                             R7 R0
       37 GETUPVAL                         R8 3
       38 GETUPVAL                         R9 4
       39 CALL                             R6 3 0
       40 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R4 R0 K0 ["memoizedProps"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R4
        4 MOVE                             R7 R1
        5 LOADN                            R8 0
        6 MOVE                             R9 R2
        7 CALL                             R5 4 1
        8 MOVE                             R3 R5
        9 SETTABLEKS                       R3 R0 K1 ["pendingProps"]
       11 GETTABLEKS                       R3 R0 K2 ["alternate"]
       13 JUMPIFNOT                        R3 ; [+4]
       14 GETTABLEKS                       R4 R0 K1 ["pendingProps"]
       16 SETTABLEKS                       R4 R3 K1 ["pendingProps"]
       18 GETUPVAL                         R4 1
       19 MOVE                             R5 R0
       20 GETUPVAL                         R6 2
       21 GETUPVAL                         R7 3
       22 CALL                             R4 3 0
       23 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R3 R0 K0 ["memoizedProps"]
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R3
        4 MOVE                             R6 R1
        5 LOADN                            R7 0
        6 CALL                             R4 3 1
        7 MOVE                             R2 R4
        8 SETTABLEKS                       R2 R0 K1 ["pendingProps"]
       10 GETTABLEKS                       R2 R0 K2 ["alternate"]
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETTABLEKS                       R3 R0 K1 ["pendingProps"]
       15 SETTABLEKS                       R3 R2 K1 ["pendingProps"]
       17 GETUPVAL                         R3 1
       18 MOVE                             R4 R0
       19 GETUPVAL                         R5 2
       20 GETUPVAL                         R6 3
       21 CALL                             R3 3 0
       22 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R0 K0 ["memoizedProps"]
        3 MOVE                             R5 R1
        4 MOVE                             R6 R2
        5 CALL                             R3 3 1
        6 SETTABLEKS                       R3 R0 K1 ["pendingProps"]
        8 GETTABLEKS                       R3 R0 K2 ["alternate"]
       10 JUMPIFNOT                        R3 ; [+4]
       11 GETTABLEKS                       R4 R0 K1 ["pendingProps"]
       13 SETTABLEKS                       R4 R3 K1 ["pendingProps"]
       15 GETUPVAL                         R4 1
       16 MOVE                             R5 R0
       17 GETUPVAL                         R6 2
       18 GETUPVAL                         R7 3
       19 CALL                             R4 3 0
       20 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 GETUPVAL                         R4 2
        4 CALL                             R1 3 0
        5 RETURN                           R0 0

PROTO_32:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R1 K0 ["stateNode"]
        9 RETURN                           R2 1

PROTO_34:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 1

PROTO_36:
        0 GETTABLEKS                       R1 R0 K0 ["findFiberByHostInstance"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["ReactCurrentDispatcher"]
        5 LOADNIL                          R3
        6 GETIMPORT                        R5 K3 [_G]
        8 GETTABLEKS                       R4 R5 K4 ["__DEV__"]
       10 JUMPIFNOT                        R4 ; [+2]
       11 GETGLOBAL                        R3 K5 ["getCurrentFiberForDevTools"]
       13 GETUPVAL                         R4 1
       14 DUPTABLE                         R5 K21 [{"bundleType", "version", "rendererPackageName", "rendererConfig", "overrideHookState", "overrideHookStateDeletePath", "overrideHookStateRenamePath", "overrideProps", "overridePropsDeletePath", "overridePropsRenamePath", "setSuspenseHandler", "scheduleUpdate", "currentDispatcherRef", "findHostInstanceByFiber", "findFiberByHostInstance", "getCurrentFiber"}]
       15 GETTABLEKS                       R6 R0 K6 ["bundleType"]
       17 SETTABLEKS                       R6 R5 K6 ["bundleType"]
       19 GETTABLEKS                       R6 R0 K7 ["version"]
       21 SETTABLEKS                       R6 R5 K7 ["version"]
       23 GETTABLEKS                       R6 R0 K8 ["rendererPackageName"]
       25 SETTABLEKS                       R6 R5 K8 ["rendererPackageName"]
       27 GETTABLEKS                       R6 R0 K9 ["rendererConfig"]
       29 SETTABLEKS                       R6 R5 K9 ["rendererConfig"]
       31 GETUPVAL                         R6 2
       32 SETTABLEKS                       R6 R5 K10 ["overrideHookState"]
       34 GETUPVAL                         R6 3
       35 SETTABLEKS                       R6 R5 K11 ["overrideHookStateDeletePath"]
       37 GETUPVAL                         R6 4
       38 SETTABLEKS                       R6 R5 K12 ["overrideHookStateRenamePath"]
       40 GETUPVAL                         R6 5
       41 SETTABLEKS                       R6 R5 K13 ["overrideProps"]
       43 GETUPVAL                         R6 6
       44 SETTABLEKS                       R6 R5 K14 ["overridePropsDeletePath"]
       46 GETUPVAL                         R6 7
       47 SETTABLEKS                       R6 R5 K15 ["overridePropsRenamePath"]
       49 GETUPVAL                         R6 8
       50 SETTABLEKS                       R6 R5 K16 ["setSuspenseHandler"]
       52 GETUPVAL                         R6 9
       53 SETTABLEKS                       R6 R5 K17 ["scheduleUpdate"]
       55 SETTABLEKS                       R2 R5 K18 ["currentDispatcherRef"]
       57 GETGLOBAL                        R6 K19 ["findHostInstanceByFiber"]
       59 SETTABLEKS                       R6 R5 K19 ["findHostInstanceByFiber"]
       61 MOVE                             R6 R1
       62 JUMPIF                           R6 ; [+2]
       63 GETGLOBAL                        R6 K22 ["emptyFindFiberByHostInstance"]
       65 SETTABLEKS                       R6 R5 K0 ["findFiberByHostInstance"]
       67 SETTABLEKS                       R3 R5 K20 ["getCurrentFiber"]
       69 CALL                             R4 1 -1
       70 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Object"]
       16 GETIMPORT                        R5 K4 [require]
       18 GETTABLEKS                       R6 R0 K8 ["Shared"]
       20 CALL                             R5 1 1
       21 GETTABLEKS                       R4 R5 K9 ["console"]
       23 GETIMPORT                        R5 K4 [require]
       25 GETIMPORT                        R8 K1 [script]
       27 GETTABLEKS                       R7 R8 K2 ["Parent"]
       29 GETTABLEKS                       R6 R7 K10 ["ReactInternalTypes"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K4 [require]
       34 GETIMPORT                        R9 K1 [script]
       36 GETTABLEKS                       R8 R9 K2 ["Parent"]
       38 GETTABLEKS                       R7 R8 K11 ["ReactRootTags"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K4 [require]
       43 GETIMPORT                        R10 K1 [script]
       45 GETTABLEKS                       R9 R10 K2 ["Parent"]
       47 GETTABLEKS                       R8 R9 K12 ["ReactFiberFlags"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K4 [require]
       52 GETIMPORT                        R11 K1 [script]
       54 GETTABLEKS                       R10 R11 K2 ["Parent"]
       56 GETTABLEKS                       R9 R10 K13 ["ReactFiberHostConfig"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K4 [require]
       61 GETIMPORT                        R12 K1 [script]
       63 GETTABLEKS                       R11 R12 K2 ["Parent"]
       65 GETTABLEKS                       R10 R11 K14 ["ReactWorkTags"]
       67 CALL                             R9 1 1
       68 GETTABLEKS                       R10 R9 K15 ["FundamentalComponent"]
       70 GETIMPORT                        R11 K4 [require]
       72 GETTABLEKS                       R12 R0 K8 ["Shared"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K4 [require]
       77 GETIMPORT                        R15 K1 [script]
       79 GETTABLEKS                       R14 R15 K2 ["Parent"]
       81 GETTABLEKS                       R13 R14 K16 ["ReactFiberLane"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K4 [require]
       86 GETIMPORT                        R16 K1 [script]
       88 GETTABLEKS                       R15 R16 K2 ["Parent"]
       90 GETTABLEKS                       R14 R15 K17 ["ReactFiberSuspenseComponent.new"]
       92 CALL                             R13 1 1
       93 GETIMPORT                        R14 K4 [require]
       95 GETIMPORT                        R17 K1 [script]
       97 GETTABLEKS                       R16 R17 K2 ["Parent"]
       99 GETTABLEKS                       R15 R16 K18 ["ReactFiberTreeReflection"]
      101 CALL                             R14 1 1
      102 GETTABLEKS                       R15 R14 K19 ["findCurrentHostFiber"]
      104 GETTABLEKS                       R16 R14 K20 ["findCurrentHostFiberWithNoPortals"]
      106 GETIMPORT                        R19 K4 [require]
      108 GETTABLEKS                       R20 R0 K8 ["Shared"]
      110 CALL                             R19 1 1
      111 GETTABLEKS                       R18 R19 K21 ["ReactInstanceMap"]
      113 GETTABLEKS                       R17 R18 K22 ["get"]
      115 GETTABLEKS                       R18 R9 K23 ["HostComponent"]
      117 GETTABLEKS                       R19 R9 K24 ["ClassComponent"]
      119 GETTABLEKS                       R20 R9 K25 ["HostRoot"]
      121 GETTABLEKS                       R21 R9 K26 ["SuspenseComponent"]
      123 GETIMPORT                        R23 K4 [require]
      125 GETTABLEKS                       R24 R0 K8 ["Shared"]
      127 CALL                             R23 1 1
      128 GETTABLEKS                       R22 R23 K27 ["getComponentName"]
      130 GETIMPORT                        R24 K4 [require]
      132 GETTABLEKS                       R25 R0 K8 ["Shared"]
      134 CALL                             R24 1 1
      135 GETTABLEKS                       R23 R24 K28 ["invariant"]
      137 GETIMPORT                        R26 K4 [require]
      139 GETTABLEKS                       R27 R0 K8 ["Shared"]
      141 CALL                             R26 1 1
      142 GETTABLEKS                       R25 R26 K29 ["ReactFeatureFlags"]
      144 GETTABLEKS                       R24 R25 K30 ["enableSchedulingProfiler"]
      146 GETIMPORT                        R26 K4 [require]
      148 GETTABLEKS                       R27 R0 K8 ["Shared"]
      150 CALL                             R26 1 1
      151 GETTABLEKS                       R25 R26 K31 ["ReactSharedInternals"]
      153 GETIMPORT                        R27 K4 [require]
      155 GETIMPORT                        R30 K1 [script]
      157 GETTABLEKS                       R29 R30 K2 ["Parent"]
      159 GETTABLEKS                       R28 R29 K13 ["ReactFiberHostConfig"]
      161 CALL                             R27 1 1
      162 GETTABLEKS                       R26 R27 K32 ["getPublicInstance"]
      164 GETIMPORT                        R27 K4 [require]
      166 GETIMPORT                        R30 K1 [script]
      168 GETTABLEKS                       R29 R30 K2 ["Parent"]
      170 GETTABLEKS                       R28 R29 K33 ["ReactFiberContext.new"]
      172 CALL                             R27 1 1
      173 GETTABLEKS                       R28 R27 K34 ["findCurrentUnmaskedContext"]
      175 GETTABLEKS                       R29 R27 K35 ["processChildContext"]
      177 GETTABLEKS                       R30 R27 K36 ["emptyContextObject"]
      179 GETTABLEKS                       R31 R27 K37 ["isContextProvider"]
      181 GETIMPORT                        R32 K4 [require]
      183 GETIMPORT                        R35 K1 [script]
      185 GETTABLEKS                       R34 R35 K2 ["Parent"]
      187 GETTABLEKS                       R33 R34 K38 ["ReactFiberRoot.new"]
      189 CALL                             R32 1 1
      190 GETTABLEKS                       R33 R32 K39 ["createFiberRoot"]
      192 GETIMPORT                        R34 K4 [require]
      194 GETIMPORT                        R37 K1 [script]
      196 GETTABLEKS                       R36 R37 K2 ["Parent"]
      198 GETTABLEKS                       R35 R36 K40 ["ReactFiberDevToolsHook.new"]
      200 CALL                             R34 1 1
      201 GETTABLEKS                       R35 R34 K41 ["injectInternals"]
      203 GETTABLEKS                       R36 R34 K42 ["onScheduleRoot"]
      205 GETIMPORT                        R37 K4 [require]
      207 GETIMPORT                        R40 K1 [script]
      209 GETTABLEKS                       R39 R40 K2 ["Parent"]
      211 GETTABLEKS                       R38 R39 K43 ["ReactFiberWorkLoop.new"]
      213 CALL                             R37 1 1
      214 GETTABLEKS                       R38 R37 K44 ["requestEventTime"]
      216 GETTABLEKS                       R39 R37 K45 ["requestUpdateLane"]
      218 GETTABLEKS                       R40 R37 K46 ["scheduleUpdateOnFiber"]
      220 GETTABLEKS                       R41 R37 K47 ["flushRoot"]
      222 GETTABLEKS                       R42 R37 K48 ["batchedEventUpdates"]
      224 GETTABLEKS                       R43 R37 K49 ["batchedUpdates"]
      226 GETTABLEKS                       R44 R37 K50 ["unbatchedUpdates"]
      228 GETTABLEKS                       R45 R37 K51 ["flushSync"]
      230 GETTABLEKS                       R46 R37 K52 ["flushControlled"]
      232 GETTABLEKS                       R47 R37 K53 ["deferredUpdates"]
      234 GETTABLEKS                       R48 R37 K54 ["discreteUpdates"]
      236 GETTABLEKS                       R49 R37 K55 ["flushDiscreteUpdates"]
      238 GETTABLEKS                       R50 R37 K56 ["flushPassiveEffects"]
      240 GETTABLEKS                       R51 R37 K57 ["warnIfNotScopedWithMatchingAct"]
      242 GETTABLEKS                       R52 R37 K58 ["warnIfUnmockedScheduler"]
      244 GETTABLEKS                       R53 R37 K59 ["IsThisRendererActing"]
      246 GETTABLEKS                       R54 R37 K60 ["act"]
      248 GETIMPORT                        R55 K4 [require]
      250 GETIMPORT                        R58 K1 [script]
      252 GETTABLEKS                       R57 R58 K2 ["Parent"]
      254 GETTABLEKS                       R56 R57 K61 ["ReactUpdateQueue.new"]
      256 CALL                             R55 1 1
      257 GETTABLEKS                       R56 R55 K62 ["createUpdate"]
      259 GETTABLEKS                       R57 R55 K63 ["enqueueUpdate"]
      261 GETIMPORT                        R58 K4 [require]
      263 GETIMPORT                        R61 K1 [script]
      265 GETTABLEKS                       R60 R61 K2 ["Parent"]
      267 GETTABLEKS                       R59 R60 K64 ["ReactCurrentFiber"]
      269 CALL                             R58 1 1
      270 GETTABLEKS                       R59 R58 K65 ["isRendering"]
      272 GETTABLEKS                       R60 R58 K66 ["resetCurrentFiber"]
      274 GETTABLEKS                       R61 R58 K67 ["setCurrentFiber"]
      276 GETIMPORT                        R62 K4 [require]
      278 GETIMPORT                        R65 K1 [script]
      280 GETTABLEKS                       R64 R65 K2 ["Parent"]
      282 GETTABLEKS                       R63 R64 K68 ["ReactTypeOfMode"]
      284 CALL                             R62 1 1
      285 GETTABLEKS                       R63 R62 K69 ["StrictMode"]
      287 GETTABLEKS                       R64 R12 K70 ["SyncLane"]
      289 GETTABLEKS                       R65 R12 K71 ["InputDiscreteHydrationLane"]
      291 GETTABLEKS                       R66 R12 K72 ["SelectiveHydrationLane"]
      293 GETTABLEKS                       R67 R12 K73 ["NoTimestamp"]
      295 GETTABLEKS                       R68 R12 K74 ["getHighestPriorityPendingLanes"]
      297 GETTABLEKS                       R69 R12 K75 ["higherPriorityLane"]
      299 GETTABLEKS                       R70 R12 K76 ["getCurrentUpdateLanePriority"]
      301 GETTABLEKS                       R71 R12 K77 ["setCurrentUpdateLanePriority"]
      303 GETIMPORT                        R73 K4 [require]
      305 GETIMPORT                        R76 K1 [script]
      307 GETTABLEKS                       R75 R76 K2 ["Parent"]
      309 GETTABLEKS                       R74 R75 K78 ["SchedulingProfiler"]
      311 CALL                             R73 1 1
      312 GETTABLEKS                       R72 R73 K79 ["markRenderScheduled"]
      314 NEWTABLE                         R73 32 0
      316 SETTABLEKS                       R6 R73 K11 ["ReactRootTags"]
      318 SETTABLEKS                       R9 R73 K14 ["ReactWorkTags"]
      320 SETTABLEKS                       R62 R73 K68 ["ReactTypeOfMode"]
      322 SETTABLEKS                       R7 R73 K12 ["ReactFiberFlags"]
      324 GETTABLEKS                       R74 R14 K80 ["getNearestMountedFiber"]
      326 SETTABLEKS                       R74 R73 K80 ["getNearestMountedFiber"]
      328 GETTABLEKS                       R74 R14 K81 ["findCurrentFiberUsingSlowPath"]
      330 SETTABLEKS                       R74 R73 K81 ["findCurrentFiberUsingSlowPath"]
      332 GETIMPORT                        R75 K4 [require]
      334 GETIMPORT                        R78 K1 [script]
      336 GETTABLEKS                       R77 R78 K2 ["Parent"]
      338 GETTABLEKS                       R76 R77 K82 ["ReactPortal"]
      340 CALL                             R75 1 1
      341 GETTABLEKS                       R74 R75 K83 ["createPortal"]
      343 SETTABLEKS                       R74 R73 K83 ["createPortal"]
      345 LOADNIL                          R74
      346 LOADNIL                          R75
      347 GETIMPORT                        R77 K85 [_G]
      349 GETTABLEKS                       R76 R77 K86 ["__DEV__"]
      351 JUMPIFNOT                        R76 ; [+3]
      352 LOADB                            R74 0
      353 NEWTABLE                         R75 0 0
      355 DUPCLOSURE                       R76 K87 [PROTO_0]
      356 CAPTURE                          VAL R30
      357 CAPTURE                          VAL R17
      358 CAPTURE                          VAL R28
      359 CAPTURE                          VAL R19
      360 CAPTURE                          VAL R31
      361 CAPTURE                          VAL R29
      362 DUPCLOSURE                       R77 K88 [PROTO_1]
      363 CAPTURE                          VAL R17
      364 CAPTURE                          VAL R23
      365 CAPTURE                          VAL R3
      366 CAPTURE                          VAL R15
      367 NEWCLOSURE                       R78 P2
      368 CAPTURE                          VAL R17
      369 CAPTURE                          VAL R23
      370 CAPTURE                          VAL R3
      371 CAPTURE                          VAL R15
      372 CAPTURE                          VAL R63
      373 CAPTURE                          VAL R22
      374 CAPTURE                          REF R75
      375 CAPTURE                          VAL R58
      376 CAPTURE                          VAL R61
      377 CAPTURE                          VAL R4
      378 CAPTURE                          VAL R60
      379 CAPTURE                          VAL R77
      380 DUPCLOSURE                       R79 K89 [PROTO_4]
      381 CAPTURE                          VAL R33
      382 SETTABLEKS                       R79 R73 K90 ["createContainer"]
      384 NEWCLOSURE                       R79 P4
      385 CAPTURE                          VAL R36
      386 CAPTURE                          VAL R38
      387 CAPTURE                          VAL R52
      388 CAPTURE                          VAL R51
      389 CAPTURE                          VAL R39
      390 CAPTURE                          VAL R24
      391 CAPTURE                          VAL R72
      392 CAPTURE                          VAL R30
      393 CAPTURE                          VAL R17
      394 CAPTURE                          VAL R28
      395 CAPTURE                          VAL R19
      396 CAPTURE                          VAL R31
      397 CAPTURE                          VAL R29
      398 CAPTURE                          VAL R59
      399 CAPTURE                          VAL R58
      400 CAPTURE                          REF R74
      401 CAPTURE                          VAL R4
      402 CAPTURE                          VAL R22
      403 CAPTURE                          VAL R56
      404 CAPTURE                          VAL R3
      405 CAPTURE                          VAL R57
      406 CAPTURE                          VAL R40
      407 SETTABLEKS                       R79 R73 K91 ["updateContainer"]
      409 SETTABLEKS                       R42 R73 K48 ["batchedEventUpdates"]
      411 SETTABLEKS                       R43 R73 K49 ["batchedUpdates"]
      413 SETTABLEKS                       R44 R73 K50 ["unbatchedUpdates"]
      415 SETTABLEKS                       R47 R73 K53 ["deferredUpdates"]
      417 SETTABLEKS                       R48 R73 K54 ["discreteUpdates"]
      419 SETTABLEKS                       R49 R73 K55 ["flushDiscreteUpdates"]
      421 SETTABLEKS                       R46 R73 K52 ["flushControlled"]
      423 SETTABLEKS                       R45 R73 K51 ["flushSync"]
      425 SETTABLEKS                       R50 R73 K56 ["flushPassiveEffects"]
      427 SETTABLEKS                       R53 R73 K59 ["IsThisRendererActing"]
      429 SETTABLEKS                       R54 R73 K60 ["act"]
      431 DUPCLOSURE                       R79 K92 [PROTO_6]
      432 CAPTURE                          VAL R18
      433 CAPTURE                          VAL R26
      434 SETTABLEKS                       R79 R73 K93 ["getPublicRootInstance"]
      436 LOADNIL                          R79
      437 NEWCLOSURE                       R80 P6
      438 CAPTURE                          VAL R20
      439 CAPTURE                          VAL R68
      440 CAPTURE                          VAL R41
      441 CAPTURE                          VAL R21
      442 CAPTURE                          VAL R38
      443 CAPTURE                          VAL R45
      444 CAPTURE                          VAL R40
      445 CAPTURE                          VAL R64
      446 CAPTURE                          VAL R65
      447 CAPTURE                          REF R79
      448 SETTABLEKS                       R80 R73 K94 ["attemptSynchronousHydration"]
      450 DUPCLOSURE                       R80 K95 [PROTO_9]
      451 CAPTURE                          VAL R69
      452 DUPCLOSURE                       R79 K96 [PROTO_10]
      453 CAPTURE                          VAL R69
      454 NEWCLOSURE                       R81 P9
      455 CAPTURE                          VAL R21
      456 CAPTURE                          VAL R38
      457 CAPTURE                          VAL R65
      458 CAPTURE                          VAL R40
      459 CAPTURE                          REF R79
      460 SETTABLEKS                       R81 R73 K97 ["attemptUserBlockingHydration"]
      462 NEWCLOSURE                       R81 P10
      463 CAPTURE                          VAL R21
      464 CAPTURE                          VAL R38
      465 CAPTURE                          VAL R66
      466 CAPTURE                          VAL R40
      467 CAPTURE                          REF R79
      468 SETTABLEKS                       R81 R73 K98 ["attemptContinuousHydration"]
      470 NEWCLOSURE                       R81 P11
      471 CAPTURE                          VAL R21
      472 CAPTURE                          VAL R38
      473 CAPTURE                          VAL R39
      474 CAPTURE                          VAL R40
      475 CAPTURE                          REF R79
      476 SETTABLEKS                       R81 R73 K99 ["attemptHydrationAtCurrentPriority"]
      478 DUPCLOSURE                       R81 K100 [PROTO_14]
      479 CAPTURE                          VAL R70
      480 CAPTURE                          VAL R71
      481 SETTABLEKS                       R81 R73 K101 ["runWithPriority"]
      483 SETTABLEKS                       R70 R73 K76 ["getCurrentUpdateLanePriority"]
      485 SETTABLEKS                       R77 R73 K102 ["findHostInstance"]
      487 SETTABLEKS                       R78 R73 K103 ["findHostInstanceWithWarning"]
      489 DUPCLOSURE                       R81 K104 [PROTO_15]
      490 CAPTURE                          VAL R16
      491 CAPTURE                          VAL R10
      492 SETTABLEKS                       R81 R73 K105 ["findHostInstanceWithNoPortals"]
      494 DUPCLOSURE                       R81 K106 [PROTO_16]
      495 NEWCLOSURE                       R82 P15
      496 CAPTURE                          REF R81
      497 SETTABLEKS                       R82 R73 K107 ["shouldSuspend"]
      499 LOADNIL                          R82
      500 LOADNIL                          R83
      501 LOADNIL                          R84
      502 LOADNIL                          R85
      503 LOADNIL                          R86
      504 LOADNIL                          R87
      505 LOADNIL                          R88
      506 LOADNIL                          R89
      507 GETIMPORT                        R91 K85 [_G]
      509 GETTABLEKS                       R90 R91 K86 ["__DEV__"]
      511 JUMPIFNOT                        R90 ; [+59]
      512 DUPCLOSURE                       R90 K108 [PROTO_18]
      513 CAPTURE                          VAL R2
      514 CAPTURE                          VAL R3
      515 CAPTURE                          VAL R90
      516 DUPCLOSURE                       R91 K109 [PROTO_19]
      517 CAPTURE                          VAL R90
      518 DUPCLOSURE                       R92 K110 [PROTO_20]
      519 CAPTURE                          VAL R2
      520 CAPTURE                          VAL R3
      521 CAPTURE                          VAL R92
      522 DUPCLOSURE                       R93 K111 [PROTO_21]
      523 CAPTURE                          VAL R4
      524 CAPTURE                          VAL R92
      525 DUPCLOSURE                       R94 K112 [PROTO_22]
      526 CAPTURE                          VAL R2
      527 CAPTURE                          VAL R3
      528 CAPTURE                          VAL R94
      529 DUPCLOSURE                       R95 K113 [PROTO_23]
      530 CAPTURE                          VAL R94
      531 DUPCLOSURE                       R96 K114 [PROTO_24]
      532 DUPCLOSURE                       R82 K115 [PROTO_25]
      533 CAPTURE                          VAL R94
      534 CAPTURE                          VAL R3
      535 CAPTURE                          VAL R40
      536 CAPTURE                          VAL R64
      537 CAPTURE                          VAL R67
      538 DUPCLOSURE                       R83 K116 [PROTO_26]
      539 CAPTURE                          VAL R90
      540 CAPTURE                          VAL R3
      541 CAPTURE                          VAL R40
      542 CAPTURE                          VAL R64
      543 CAPTURE                          VAL R67
      544 DUPCLOSURE                       R84 K117 [PROTO_27]
      545 CAPTURE                          VAL R93
      546 CAPTURE                          VAL R3
      547 CAPTURE                          VAL R40
      548 CAPTURE                          VAL R64
      549 CAPTURE                          VAL R67
      550 DUPCLOSURE                       R85 K118 [PROTO_28]
      551 CAPTURE                          VAL R94
      552 CAPTURE                          VAL R40
      553 CAPTURE                          VAL R64
      554 CAPTURE                          VAL R67
      555 DUPCLOSURE                       R86 K119 [PROTO_29]
      556 CAPTURE                          VAL R90
      557 CAPTURE                          VAL R40
      558 CAPTURE                          VAL R64
      559 CAPTURE                          VAL R67
      560 DUPCLOSURE                       R87 K120 [PROTO_30]
      561 CAPTURE                          VAL R93
      562 CAPTURE                          VAL R40
      563 CAPTURE                          VAL R64
      564 CAPTURE                          VAL R67
      565 DUPCLOSURE                       R88 K121 [PROTO_31]
      566 CAPTURE                          VAL R40
      567 CAPTURE                          VAL R64
      568 CAPTURE                          VAL R67
      569 NEWCLOSURE                       R89 P30
      570 CAPTURE                          REF R81
      571 DUPCLOSURE                       R90 K122 [PROTO_33]
      572 CAPTURE                          VAL R15
      573 SETGLOBAL                        R90 K123 ["findHostInstanceByFiber"]
      575 DUPCLOSURE                       R90 K124 [PROTO_34]
      576 SETGLOBAL                        R90 K125 ["emptyFindFiberByHostInstance"]
      578 DUPCLOSURE                       R90 K126 [PROTO_35]
      579 CAPTURE                          VAL R58
      580 SETGLOBAL                        R90 K127 ["getCurrentFiberForDevTools"]
      582 NEWCLOSURE                       R90 P34
      583 CAPTURE                          VAL R25
      584 CAPTURE                          VAL R35
      585 CAPTURE                          REF R82
      586 CAPTURE                          REF R83
      587 CAPTURE                          REF R84
      588 CAPTURE                          REF R85
      589 CAPTURE                          REF R86
      590 CAPTURE                          REF R87
      591 CAPTURE                          REF R89
      592 CAPTURE                          REF R88
      593 SETTABLEKS                       R90 R73 K128 ["injectIntoDevTools"]
      595 CLOSEUPVALS                      R74
      596 RETURN                           R73 1
