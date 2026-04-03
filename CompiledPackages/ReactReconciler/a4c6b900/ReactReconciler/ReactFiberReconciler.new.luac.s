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
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+88]
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+26]
        7 GETTABLEKS                       R4 R0 K0 ["render"]
        9 FASTCALL1                        TYPEOF R4 ; [+2]
       10 GETIMPORT                        R3 K2 [typeof]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K3 ["function"] ; [+6]
       15 GETUPVAL                         R3 2
       16 LOADB                            R4 0
       17 LOADK                            R5 K4 ["Unable to find node on an unmounted component."]
       18 CALL                             R3 2 0
       19 JUMP                             ; [+12]
       20 GETUPVAL                         R3 2
       21 LOADB                            R4 0
       22 LOADK                            R5 K5 ["Argument appears to not be a ReactComponent. Keys: %s"]
       23 GETIMPORT                        R6 K8 [table.concat]
       25 GETUPVAL                         R8 3
       26 GETTABLEKS                       R7 R8 K9 ["keys"]
       28 MOVE                             R8 R0
       29 CALL                             R7 1 -1
       30 CALL                             R6 -1 -1
       31 CALL                             R3 -1 0
       32 GETUPVAL                         R3 4
       33 MOVE                             R4 R2
       34 CALL                             R3 1 1
       35 JUMPIFNOTEQKNIL                  R3 ; [+3]
       37 LOADNIL                          R4
       38 RETURN                           R4 1
       39 GETTABLEKS                       R5 R3 K10 ["mode"]
       41 GETUPVAL                         R6 5
       42 FASTCALL2                        BIT32_BAND R5 R6 ; [+3]
       44 GETIMPORT                        R4 K13 [bit32.band]
       46 CALL                             R4 2 1
       47 JUMPIFEQKN                       R4 K14 [0] ; [+39]
       49 GETUPVAL                         R5 6
       50 GETTABLEKS                       R6 R2 K16 ["type"]
       52 CALL                             R5 1 1
       53 ORK                              R4 R5 K15 ["Component"]
       54 GETUPVAL                         R6 7
       55 GETTABLE                         R5 R6 R4
       56 JUMPIF                           R5 ; [+30]
       57 GETUPVAL                         R5 7
       58 LOADB                            R6 1
       59 SETTABLE                         R6 R5 R4
       60 GETUPVAL                         R6 8
       61 GETTABLEKS                       R5 R6 K17 ["current"]
       63 GETIMPORT                        R6 K19 [xpcall]
       65 NEWCLOSURE                       R7 P0
       66 CAPTURE                          UPVAL U9
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R2
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          UPVAL U10
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R4
       73 GETUPVAL                         R8 11
       74 CALL                             R6 2 2
       75 JUMPIFNOT                        R5 ; [+4]
       76 GETUPVAL                         R8 9
       77 MOVE                             R9 R5
       78 CALL                             R8 1 0
       79 JUMP                             ; [+2]
       80 GETUPVAL                         R8 12
       81 CALL                             R8 0 0
       82 JUMPIF                           R6 ; [+4]
       83 GETIMPORT                        R8 K21 [error]
       85 MOVE                             R9 R7
       86 CALL                             R8 1 0
       87 GETTABLEKS                       R4 R3 K22 ["stateNode"]
       89 RETURN                           R4 1
       90 GETUPVAL                         R2 13
       91 MOVE                             R3 R0
       92 CALL                             R2 1 1
       93 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 MOVE                             R8 R3
        5 CALL                             R4 4 -1
        6 RETURN                           R4 -1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+4]
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R1
        4 MOVE                             R6 R0
        5 CALL                             R4 2 0
        6 GETTABLEKS                       R4 R1 K0 ["current"]
        8 GETUPVAL                         R5 2
        9 CALL                             R5 0 1
       10 GETUPVAL                         R6 0
       11 JUMPIFNOT                        R6 ; [+10]
       12 GETUPVAL                         R7 3
       13 GETTABLEKS                       R6 R7 K1 ["__TESTEZ_RUNNING_TEST__"]
       15 JUMPIFNOT                        R6 ; [+6]
       16 GETUPVAL                         R6 4
       17 MOVE                             R7 R4
       18 CALL                             R6 1 0
       19 GETUPVAL                         R6 5
       20 MOVE                             R7 R4
       21 CALL                             R6 1 0
       22 GETUPVAL                         R6 6
       23 MOVE                             R7 R4
       24 CALL                             R6 1 1
       25 GETUPVAL                         R7 7
       26 JUMPIFNOT                        R7 ; [+3]
       27 GETUPVAL                         R7 8
       28 MOVE                             R8 R6
       29 CALL                             R7 1 0
       30 JUMPIF                           R2 ; [+2]
       31 GETUPVAL                         R7 9
       32 JUMP                             ; [+25]
       33 GETUPVAL                         R8 10
       34 MOVE                             R9 R2
       35 CALL                             R8 1 1
       36 GETUPVAL                         R9 11
       37 MOVE                             R10 R8
       38 CALL                             R9 1 1
       39 GETTABLEKS                       R10 R8 K2 ["tag"]
       41 GETUPVAL                         R11 12
       42 JUMPIFNOTEQ                      R10 R11 ; [+14]
       44 GETTABLEKS                       R10 R8 K3 ["type"]
       46 GETUPVAL                         R11 13
       47 MOVE                             R12 R10
       48 CALL                             R11 1 1
       49 JUMPIFNOT                        R11 ; [+7]
       50 GETUPVAL                         R11 14
       51 MOVE                             R12 R8
       52 MOVE                             R13 R10
       53 MOVE                             R14 R9
       54 CALL                             R11 3 1
       55 MOVE                             R7 R11
       56 JUMP                             ; [+1]
       57 MOVE                             R7 R9
       58 GETTABLEKS                       R8 R1 K4 ["context"]
       60 JUMPIFNOTEQKNIL                  R8 ; [+4]
       62 SETTABLEKS                       R7 R1 K4 ["context"]
       64 JUMP                             ; [+2]
       65 SETTABLEKS                       R7 R1 K5 ["pendingContext"]
       67 GETUPVAL                         R8 0
       68 JUMPIFNOT                        R8 ; [+24]
       69 GETUPVAL                         R8 15
       70 JUMPIFNOT                        R8 ; [+22]
       71 GETUPVAL                         R9 16
       72 GETTABLEKS                       R8 R9 K0 ["current"]
       74 JUMPIFEQKNIL                     R8 ; [+18]
       76 GETUPVAL                         R8 17
       77 JUMPIF                           R8 ; [+15]
       78 LOADB                            R8 1
       79 SETUPVAL                         R8 17
       80 GETUPVAL                         R9 18
       81 GETTABLEKS                       R8 R9 K6 ["error"]
       83 LOADK                            R9 K7 ["Render methods should be a pure function of props and state; triggering nested component updates from render is not allowed. If necessary, trigger nested updates in componentDidUpdate.\n\nCheck the render method of %s."]
       84 GETUPVAL                         R11 19
       85 GETUPVAL                         R14 16
       86 GETTABLEKS                       R13 R14 K0 ["current"]
       88 GETTABLEKS                       R12 R13 K3 ["type"]
       90 CALL                             R11 1 1
       91 ORK                              R10 R11 K8 ["Unknown"]
       92 CALL                             R8 2 0
       93 GETUPVAL                         R8 20
       94 MOVE                             R9 R5
       95 MOVE                             R10 R6
       96 CALL                             R8 2 1
       97 JUMPIFNOTEQKNIL                  R0 ; [+4]
       99 GETUPVAL                         R9 21
      100 GETTABLEKS                       R0 R9 K9 ["None"]
      102 DUPTABLE                         R9 K11 [{"element"}]
      103 SETTABLEKS                       R0 R9 K10 ["element"]
      105 SETTABLEKS                       R9 R8 K12 ["payload"]
      107 JUMPIFEQKNIL                     R3 ; [+22]
      109 GETUPVAL                         R9 0
      110 JUMPIFNOT                        R9 ; [+17]
      111 FASTCALL1                        TYPEOF R3 ; [+3]
      112 MOVE                             R10 R3
      113 GETIMPORT                        R9 K14 [typeof]
      115 CALL                             R9 1 1
      116 JUMPIFEQKS                       R9 K15 ["function"] ; [+11]
      118 GETUPVAL                         R10 18
      119 GETTABLEKS                       R9 R10 K6 ["error"]
      121 LOADK                            R10 K16 ["render(...): Expected the last optional `callback` argument to be a function. Instead received: %s."]
      122 FASTCALL1                        TOSTRING R3 ; [+3]
      123 MOVE                             R12 R3
      124 GETIMPORT                        R11 K18 [tostring]
      126 CALL                             R11 1 1
      127 CALL                             R9 2 0
      128 SETTABLEKS                       R3 R8 K19 ["callback"]
      130 GETUPVAL                         R9 22
      131 MOVE                             R10 R4
      132 MOVE                             R11 R8
      133 CALL                             R9 2 0
      134 GETUPVAL                         R9 23
      135 MOVE                             R10 R4
      136 MOVE                             R11 R6
      137 MOVE                             R12 R5
      138 CALL                             R9 3 0
      139 RETURN                           R6 1

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
        5 GETIMPORT                        R3 K1 [xpcall]
        7 MOVE                             R4 R1
        8 GETUPVAL                         R5 2
        9 CALL                             R3 2 2
       10 GETUPVAL                         R5 1
       11 MOVE                             R6 R2
       12 CALL                             R5 1 0
       13 JUMPIF                           R3 ; [+4]
       14 GETIMPORT                        R5 K3 [error]
       16 MOVE                             R6 R4
       17 CALL                             R5 1 0
       18 RETURN                           R4 1

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
       14 JUMP                             ; [+5]
       15 GETIMPORT                        R5 K4 [table.clone]
       17 MOVE                             R6 R0
       18 CALL                             R5 1 1
       19 MOVE                             R4 R5
       20 ADDK                             R5 R2 K5 [1]
       21 LENGTH                           R6 R1
       22 JUMPIFNOTEQ                      R5 R6 ; [+18]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R5 R6 K0 ["isArray"]
       27 MOVE                             R6 R4
       28 CALL                             R5 1 1
       29 JUMPIFNOT                        R5 ; [+8]
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R5 R6 K6 ["splice"]
       33 MOVE                             R6 R4
       34 MOVE                             R7 R3
       35 LOADN                            R8 1
       36 CALL                             R5 3 0
       37 RETURN                           R4 1
       38 LOADNIL                          R5
       39 SETTABLE                         R5 R4 R3
       40 RETURN                           R4 1
       41 GETUPVAL                         R5 1
       42 GETTABLE                         R6 R0 R3
       43 MOVE                             R7 R1
       44 ADDK                             R8 R2 K5 [1]
       45 CALL                             R5 3 1
       46 SETTABLE                         R5 R4 R3
       47 RETURN                           R4 1

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
       14 JUMP                             ; [+5]
       15 GETIMPORT                        R6 K4 [table.clone]
       17 MOVE                             R7 R0
       18 CALL                             R6 1 1
       19 MOVE                             R5 R6
       20 ADDK                             R6 R3 K5 [1]
       21 LENGTH                           R7 R1
       22 JUMPIFNOTEQ                      R6 R7 ; [+21]
       24 GETTABLE                         R6 R2 R3
       25 GETTABLE                         R7 R5 R4
       26 SETTABLE                         R7 R5 R6
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R7 R8 K0 ["isArray"]
       30 MOVE                             R8 R5
       31 CALL                             R7 1 1
       32 JUMPIFNOT                        R7 ; [+8]
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R7 R8 K6 ["splice"]
       36 MOVE                             R8 R5
       37 MOVE                             R9 R4
       38 LOADN                            R10 1
       39 CALL                             R7 3 0
       40 RETURN                           R5 1
       41 LOADNIL                          R7
       42 SETTABLE                         R7 R5 R4
       43 RETURN                           R5 1
       44 GETUPVAL                         R6 1
       45 GETTABLE                         R7 R0 R4
       46 MOVE                             R8 R1
       47 MOVE                             R9 R2
       48 ADDK                             R10 R3 K5 [1]
       49 CALL                             R6 4 1
       50 SETTABLE                         R6 R5 R4
       51 RETURN                           R5 1

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
        0 LENGTH                           R5 R1
        1 ADDK                             R4 R5 K0 [1]
        2 JUMPIFNOTLE                      R4 R2 ; [+2]
        4 RETURN                           R3 1
        5 GETTABLE                         R4 R1 R2
        6 LOADNIL                          R5
        7 GETUPVAL                         R7 0
        8 GETTABLEKS                       R6 R7 K1 ["isArray"]
       10 MOVE                             R7 R0
       11 CALL                             R6 1 1
       12 JUMPIFNOT                        R6 ; [+7]
       13 GETUPVAL                         R7 0
       14 GETTABLEKS                       R6 R7 K2 ["slice"]
       16 MOVE                             R7 R0
       17 CALL                             R6 1 1
       18 MOVE                             R5 R6
       19 JUMP                             ; [+5]
       20 GETIMPORT                        R6 K5 [table.clone]
       22 MOVE                             R7 R0
       23 CALL                             R6 1 1
       24 MOVE                             R5 R6
       25 GETUPVAL                         R6 1
       26 GETTABLE                         R7 R0 R4
       27 MOVE                             R8 R1
       28 ADDK                             R9 R2 K6 [2]
       29 MOVE                             R10 R3
       30 CALL                             R6 4 1
       31 SETTABLE                         R6 R5 R4
       32 RETURN                           R5 1

PROTO_23:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 LOADN                            R6 1
        4 MOVE                             R7 R2
        5 CALL                             R3 4 1
        6 RETURN                           R3 1

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["memoizedState"]
        2 JUMPIFEQKNIL                     R2 ; [+8]
        4 LOADN                            R3 1
        5 JUMPIFNOTLT                      R3 R1 ; [+5]
        7 GETTABLEKS                       R2 R2 K1 ["next"]
        9 SUBK                             R1 R1 K2 [1]
       10 JUMPBACK                         ; [-9]
       11 RETURN                           R2 1

PROTO_25:
        0 MOVE                             R5 R1
        1 GETTABLEKS                       R6 R0 K0 ["memoizedState"]
        3 JUMPIFEQKNIL                     R6 ; [+8]
        5 LOADN                            R7 1
        6 JUMPIFNOTLT                      R7 R5 ; [+5]
        8 GETTABLEKS                       R6 R6 K1 ["next"]
       10 SUBK                             R5 R5 K2 [1]
       11 JUMPBACK                         ; [-9]
       12 MOVE                             R4 R6
       13 JUMPIFEQKNIL                     R4 ; [+26]
       15 GETTABLEKS                       R6 R4 K0 ["memoizedState"]
       17 GETUPVAL                         R7 0
       18 MOVE                             R8 R6
       19 MOVE                             R9 R2
       20 LOADN                            R10 1
       21 MOVE                             R11 R3
       22 CALL                             R7 4 1
       23 MOVE                             R5 R7
       24 SETTABLEKS                       R5 R4 K0 ["memoizedState"]
       26 SETTABLEKS                       R5 R4 K3 ["baseState"]
       28 GETIMPORT                        R6 K6 [table.clone]
       30 GETTABLEKS                       R7 R0 K7 ["memoizedProps"]
       32 CALL                             R6 1 1
       33 SETTABLEKS                       R6 R0 K7 ["memoizedProps"]
       35 GETUPVAL                         R6 1
       36 MOVE                             R7 R0
       37 GETUPVAL                         R8 2
       38 GETUPVAL                         R9 3
       39 CALL                             R6 3 0
       40 RETURN                           R0 0

PROTO_26:
        0 MOVE                             R4 R1
        1 GETTABLEKS                       R5 R0 K0 ["memoizedState"]
        3 JUMPIFEQKNIL                     R5 ; [+8]
        5 LOADN                            R6 1
        6 JUMPIFNOTLT                      R6 R4 ; [+5]
        8 GETTABLEKS                       R5 R5 K1 ["next"]
       10 SUBK                             R4 R4 K2 [1]
       11 JUMPBACK                         ; [-9]
       12 MOVE                             R3 R5
       13 JUMPIFEQKNIL                     R3 ; [+25]
       15 GETTABLEKS                       R5 R3 K0 ["memoizedState"]
       17 GETUPVAL                         R6 0
       18 MOVE                             R7 R5
       19 MOVE                             R8 R2
       20 LOADN                            R9 0
       21 CALL                             R6 3 1
       22 MOVE                             R4 R6
       23 SETTABLEKS                       R4 R3 K0 ["memoizedState"]
       25 SETTABLEKS                       R4 R3 K3 ["baseState"]
       27 GETIMPORT                        R5 K6 [table.clone]
       29 GETTABLEKS                       R6 R0 K7 ["memoizedProps"]
       31 CALL                             R5 1 1
       32 SETTABLEKS                       R5 R0 K7 ["memoizedProps"]
       34 GETUPVAL                         R5 1
       35 MOVE                             R6 R0
       36 GETUPVAL                         R7 2
       37 GETUPVAL                         R8 3
       38 CALL                             R5 3 0
       39 RETURN                           R0 0

PROTO_27:
        0 MOVE                             R5 R1
        1 GETTABLEKS                       R6 R0 K0 ["memoizedState"]
        3 JUMPIFEQKNIL                     R6 ; [+8]
        5 LOADN                            R7 1
        6 JUMPIFNOTLT                      R7 R5 ; [+5]
        8 GETTABLEKS                       R6 R6 K1 ["next"]
       10 SUBK                             R5 R5 K2 [1]
       11 JUMPBACK                         ; [-9]
       12 MOVE                             R4 R6
       13 JUMPIFEQKNIL                     R4 ; [+23]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R6 R4 K0 ["memoizedState"]
       18 MOVE                             R7 R2
       19 MOVE                             R8 R3
       20 CALL                             R5 3 1
       21 SETTABLEKS                       R5 R4 K0 ["memoizedState"]
       23 SETTABLEKS                       R5 R4 K3 ["baseState"]
       25 GETIMPORT                        R6 K6 [table.clone]
       27 GETTABLEKS                       R7 R0 K7 ["memoizedProps"]
       29 CALL                             R6 1 1
       30 SETTABLEKS                       R6 R0 K7 ["memoizedProps"]
       32 GETUPVAL                         R6 1
       33 MOVE                             R7 R0
       34 GETUPVAL                         R8 2
       35 GETUPVAL                         R9 3
       36 CALL                             R6 3 0
       37 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R4 R0 K0 ["memoizedProps"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R4
        4 MOVE                             R7 R1
        5 LOADN                            R8 1
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
        6 GETUPVAL                         R4 1
        7 JUMPIFNOT                        R4 ; [+2]
        8 GETGLOBAL                        R3 K2 ["getCurrentFiberForDevTools"]
       10 GETUPVAL                         R4 2
       11 DUPTABLE                         R5 K22 [{"bundleType", "version", "rendererPackageName", "rendererConfig", "overrideHookState", "overrideHookStateDeletePath", "overrideHookStateRenamePath", "overrideProps", "overridePropsDeletePath", "overridePropsRenamePath", "setSuspenseHandler", "scheduleUpdate", "currentDispatcherRef", "findHostInstanceByFiber", "findFiberByHostInstance", "findHostInstancesForRefresh", "scheduleRefresh", "scheduleRoot", "setRefreshHandler", "getCurrentFiber"}]
       12 GETTABLEKS                       R6 R0 K3 ["bundleType"]
       14 SETTABLEKS                       R6 R5 K3 ["bundleType"]
       16 GETTABLEKS                       R6 R0 K4 ["version"]
       18 SETTABLEKS                       R6 R5 K4 ["version"]
       20 GETTABLEKS                       R6 R0 K5 ["rendererPackageName"]
       22 SETTABLEKS                       R6 R5 K5 ["rendererPackageName"]
       24 GETTABLEKS                       R6 R0 K6 ["rendererConfig"]
       26 SETTABLEKS                       R6 R5 K6 ["rendererConfig"]
       28 GETUPVAL                         R6 3
       29 SETTABLEKS                       R6 R5 K7 ["overrideHookState"]
       31 GETUPVAL                         R6 4
       32 SETTABLEKS                       R6 R5 K8 ["overrideHookStateDeletePath"]
       34 GETUPVAL                         R6 5
       35 SETTABLEKS                       R6 R5 K9 ["overrideHookStateRenamePath"]
       37 GETUPVAL                         R6 6
       38 SETTABLEKS                       R6 R5 K10 ["overrideProps"]
       40 GETUPVAL                         R6 7
       41 SETTABLEKS                       R6 R5 K11 ["overridePropsDeletePath"]
       43 GETUPVAL                         R6 8
       44 SETTABLEKS                       R6 R5 K12 ["overridePropsRenamePath"]
       46 GETUPVAL                         R6 9
       47 SETTABLEKS                       R6 R5 K13 ["setSuspenseHandler"]
       49 GETUPVAL                         R6 10
       50 SETTABLEKS                       R6 R5 K14 ["scheduleUpdate"]
       52 SETTABLEKS                       R2 R5 K15 ["currentDispatcherRef"]
       54 GETGLOBAL                        R6 K16 ["findHostInstanceByFiber"]
       56 SETTABLEKS                       R6 R5 K16 ["findHostInstanceByFiber"]
       58 MOVE                             R6 R1
       59 JUMPIF                           R6 ; [+2]
       60 GETGLOBAL                        R6 K23 ["emptyFindFiberByHostInstance"]
       62 SETTABLEKS                       R6 R5 K0 ["findFiberByHostInstance"]
       64 GETUPVAL                         R7 1
       65 JUMPIFNOT                        R7 ; [+2]
       66 GETUPVAL                         R6 11
       67 JUMP                             ; [+1]
       68 LOADNIL                          R6
       69 SETTABLEKS                       R6 R5 K17 ["findHostInstancesForRefresh"]
       71 GETUPVAL                         R7 1
       72 JUMPIFNOT                        R7 ; [+2]
       73 GETUPVAL                         R6 12
       74 JUMP                             ; [+1]
       75 LOADNIL                          R6
       76 SETTABLEKS                       R6 R5 K18 ["scheduleRefresh"]
       78 GETUPVAL                         R7 1
       79 JUMPIFNOT                        R7 ; [+2]
       80 GETUPVAL                         R6 13
       81 JUMP                             ; [+1]
       82 LOADNIL                          R6
       83 SETTABLEKS                       R6 R5 K19 ["scheduleRoot"]
       85 GETUPVAL                         R7 1
       86 JUMPIFNOT                        R7 ; [+2]
       87 GETUPVAL                         R6 14
       88 JUMP                             ; [+1]
       89 LOADNIL                          R6
       90 SETTABLEKS                       R6 R5 K20 ["setRefreshHandler"]
       92 SETTABLEKS                       R3 R5 K21 ["getCurrentFiber"]
       94 CALL                             R4 1 -1
       95 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Shared"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETTABLEKS                       R4 R0 K7 ["LuauPolyfill"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R4 R3 K8 ["Array"]
       24 GETTABLEKS                       R5 R3 K9 ["Object"]
       26 GETTABLEKS                       R6 R1 K10 ["__DEV__"]
       28 GETIMPORT                        R8 K4 [require]
       30 GETTABLEKS                       R9 R0 K6 ["Shared"]
       32 CALL                             R8 1 1
       33 GETTABLEKS                       R7 R8 K11 ["console"]
       35 GETIMPORT                        R8 K4 [require]
       37 GETIMPORT                        R11 K1 [script]
       39 GETTABLEKS                       R10 R11 K2 ["Parent"]
       41 GETTABLEKS                       R9 R10 K12 ["ReactInternalTypes"]
       43 CALL                             R8 1 1
       44 GETIMPORT                        R9 K4 [require]
       46 GETIMPORT                        R12 K1 [script]
       48 GETTABLEKS                       R11 R12 K2 ["Parent"]
       50 GETTABLEKS                       R10 R11 K13 ["ReactRootTags"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K4 [require]
       55 GETIMPORT                        R13 K1 [script]
       57 GETTABLEKS                       R12 R13 K2 ["Parent"]
       59 GETTABLEKS                       R11 R12 K14 ["ReactFiberFlags"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K4 [require]
       64 GETIMPORT                        R14 K1 [script]
       66 GETTABLEKS                       R13 R14 K2 ["Parent"]
       68 GETTABLEKS                       R12 R13 K15 ["ReactFiberHostConfig"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K4 [require]
       73 GETIMPORT                        R15 K1 [script]
       75 GETTABLEKS                       R14 R15 K2 ["Parent"]
       77 GETTABLEKS                       R13 R14 K16 ["ReactWorkTags"]
       79 CALL                             R12 1 1
       80 GETTABLEKS                       R13 R12 K17 ["FundamentalComponent"]
       82 GETIMPORT                        R14 K4 [require]
       84 GETTABLEKS                       R15 R0 K6 ["Shared"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K4 [require]
       89 GETIMPORT                        R18 K1 [script]
       91 GETTABLEKS                       R17 R18 K2 ["Parent"]
       93 GETTABLEKS                       R16 R17 K18 ["ReactFiberLane"]
       95 CALL                             R15 1 1
       96 GETIMPORT                        R16 K4 [require]
       98 GETIMPORT                        R19 K1 [script]
      100 GETTABLEKS                       R18 R19 K2 ["Parent"]
      102 GETTABLEKS                       R17 R18 K19 ["ReactFiberSuspenseComponent.new"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K4 [require]
      107 GETIMPORT                        R20 K1 [script]
      109 GETTABLEKS                       R19 R20 K2 ["Parent"]
      111 GETTABLEKS                       R18 R19 K20 ["ReactFiberTreeReflection"]
      113 CALL                             R17 1 1
      114 GETTABLEKS                       R18 R17 K21 ["findCurrentHostFiber"]
      116 GETTABLEKS                       R19 R17 K22 ["findCurrentHostFiberWithNoPortals"]
      118 GETIMPORT                        R22 K4 [require]
      120 GETTABLEKS                       R23 R0 K6 ["Shared"]
      122 CALL                             R22 1 1
      123 GETTABLEKS                       R21 R22 K23 ["ReactInstanceMap"]
      125 GETTABLEKS                       R20 R21 K24 ["get"]
      127 GETTABLEKS                       R21 R12 K25 ["HostComponent"]
      129 GETTABLEKS                       R22 R12 K26 ["ClassComponent"]
      131 GETTABLEKS                       R23 R12 K27 ["HostRoot"]
      133 GETTABLEKS                       R24 R12 K28 ["SuspenseComponent"]
      135 GETIMPORT                        R26 K4 [require]
      137 GETTABLEKS                       R27 R0 K6 ["Shared"]
      139 CALL                             R26 1 1
      140 GETTABLEKS                       R25 R26 K29 ["getComponentName"]
      142 GETIMPORT                        R27 K4 [require]
      144 GETTABLEKS                       R28 R0 K6 ["Shared"]
      146 CALL                             R27 1 1
      147 GETTABLEKS                       R26 R27 K30 ["invariant"]
      149 GETIMPORT                        R28 K4 [require]
      151 GETTABLEKS                       R29 R0 K6 ["Shared"]
      153 CALL                             R28 1 1
      154 GETTABLEKS                       R27 R28 K31 ["describeError"]
      156 GETIMPORT                        R30 K4 [require]
      158 GETTABLEKS                       R31 R0 K6 ["Shared"]
      160 CALL                             R30 1 1
      161 GETTABLEKS                       R29 R30 K32 ["ReactFeatureFlags"]
      163 GETTABLEKS                       R28 R29 K33 ["enableSchedulingProfiler"]
      165 GETIMPORT                        R30 K4 [require]
      167 GETTABLEKS                       R31 R0 K6 ["Shared"]
      169 CALL                             R30 1 1
      170 GETTABLEKS                       R29 R30 K34 ["ReactSharedInternals"]
      172 GETIMPORT                        R31 K4 [require]
      174 GETIMPORT                        R34 K1 [script]
      176 GETTABLEKS                       R33 R34 K2 ["Parent"]
      178 GETTABLEKS                       R32 R33 K15 ["ReactFiberHostConfig"]
      180 CALL                             R31 1 1
      181 GETTABLEKS                       R30 R31 K35 ["getPublicInstance"]
      183 GETIMPORT                        R31 K4 [require]
      185 GETIMPORT                        R34 K1 [script]
      187 GETTABLEKS                       R33 R34 K2 ["Parent"]
      189 GETTABLEKS                       R32 R33 K36 ["ReactFiberContext.new"]
      191 CALL                             R31 1 1
      192 GETTABLEKS                       R32 R31 K37 ["findCurrentUnmaskedContext"]
      194 GETTABLEKS                       R33 R31 K38 ["processChildContext"]
      196 GETTABLEKS                       R34 R31 K39 ["emptyContextObject"]
      198 GETTABLEKS                       R35 R31 K40 ["isContextProvider"]
      200 GETIMPORT                        R36 K4 [require]
      202 GETIMPORT                        R39 K1 [script]
      204 GETTABLEKS                       R38 R39 K2 ["Parent"]
      206 GETTABLEKS                       R37 R38 K41 ["ReactFiberRoot.new"]
      208 CALL                             R36 1 1
      209 GETTABLEKS                       R37 R36 K42 ["createFiberRoot"]
      211 GETIMPORT                        R38 K4 [require]
      213 GETIMPORT                        R41 K1 [script]
      215 GETTABLEKS                       R40 R41 K2 ["Parent"]
      217 GETTABLEKS                       R39 R40 K43 ["ReactFiberDevToolsHook.new"]
      219 CALL                             R38 1 1
      220 GETTABLEKS                       R39 R38 K44 ["injectInternals"]
      222 GETTABLEKS                       R40 R38 K45 ["onScheduleRoot"]
      224 GETIMPORT                        R41 K4 [require]
      226 GETIMPORT                        R44 K1 [script]
      228 GETTABLEKS                       R43 R44 K2 ["Parent"]
      230 GETTABLEKS                       R42 R43 K46 ["ReactFiberWorkLoop.new"]
      232 CALL                             R41 1 1
      233 GETTABLEKS                       R42 R41 K47 ["requestEventTime"]
      235 GETTABLEKS                       R43 R41 K48 ["requestUpdateLane"]
      237 GETTABLEKS                       R44 R41 K49 ["scheduleUpdateOnFiber"]
      239 GETTABLEKS                       R45 R41 K50 ["flushRoot"]
      241 GETTABLEKS                       R46 R41 K51 ["batchedEventUpdates"]
      243 GETTABLEKS                       R47 R41 K52 ["batchedUpdates"]
      245 GETTABLEKS                       R48 R41 K53 ["unbatchedUpdates"]
      247 GETTABLEKS                       R49 R41 K54 ["flushSync"]
      249 GETTABLEKS                       R50 R41 K55 ["flushControlled"]
      251 GETTABLEKS                       R51 R41 K56 ["deferredUpdates"]
      253 GETTABLEKS                       R52 R41 K57 ["discreteUpdates"]
      255 GETTABLEKS                       R53 R41 K58 ["flushDiscreteUpdates"]
      257 GETTABLEKS                       R54 R41 K59 ["flushPassiveEffects"]
      259 GETTABLEKS                       R55 R41 K60 ["warnIfNotScopedWithMatchingAct"]
      261 GETTABLEKS                       R56 R41 K61 ["warnIfUnmockedScheduler"]
      263 GETTABLEKS                       R57 R41 K62 ["IsThisRendererActing"]
      265 GETTABLEKS                       R58 R41 K63 ["act"]
      267 GETIMPORT                        R59 K4 [require]
      269 GETIMPORT                        R62 K1 [script]
      271 GETTABLEKS                       R61 R62 K2 ["Parent"]
      273 GETTABLEKS                       R60 R61 K64 ["ReactUpdateQueue.new"]
      275 CALL                             R59 1 1
      276 GETTABLEKS                       R60 R59 K65 ["createUpdate"]
      278 GETTABLEKS                       R61 R59 K66 ["enqueueUpdate"]
      280 GETIMPORT                        R62 K4 [require]
      282 GETIMPORT                        R65 K1 [script]
      284 GETTABLEKS                       R64 R65 K2 ["Parent"]
      286 GETTABLEKS                       R63 R64 K67 ["ReactCurrentFiber"]
      288 CALL                             R62 1 1
      289 GETTABLEKS                       R63 R62 K68 ["isRendering"]
      291 GETTABLEKS                       R64 R62 K69 ["resetCurrentFiber"]
      293 GETTABLEKS                       R65 R62 K70 ["setCurrentFiber"]
      295 GETIMPORT                        R66 K4 [require]
      297 GETIMPORT                        R69 K1 [script]
      299 GETTABLEKS                       R68 R69 K2 ["Parent"]
      301 GETTABLEKS                       R67 R68 K71 ["ReactTypeOfMode"]
      303 CALL                             R66 1 1
      304 GETTABLEKS                       R67 R66 K72 ["StrictMode"]
      306 GETTABLEKS                       R68 R15 K73 ["SyncLane"]
      308 GETTABLEKS                       R69 R15 K74 ["InputDiscreteHydrationLane"]
      310 GETTABLEKS                       R70 R15 K75 ["SelectiveHydrationLane"]
      312 GETTABLEKS                       R71 R15 K76 ["NoTimestamp"]
      314 GETTABLEKS                       R72 R15 K77 ["getHighestPriorityPendingLanes"]
      316 GETTABLEKS                       R73 R15 K78 ["higherPriorityLane"]
      318 GETTABLEKS                       R74 R15 K79 ["getCurrentUpdateLanePriority"]
      320 GETTABLEKS                       R75 R15 K80 ["setCurrentUpdateLanePriority"]
      322 GETIMPORT                        R76 K4 [require]
      324 GETIMPORT                        R79 K1 [script]
      326 GETTABLEKS                       R78 R79 K2 ["Parent"]
      328 GETTABLEKS                       R77 R78 K81 ["ReactFiberHotReloading.new"]
      330 CALL                             R76 1 1
      331 GETTABLEKS                       R77 R76 K82 ["scheduleRefresh"]
      333 GETTABLEKS                       R78 R76 K83 ["scheduleRoot"]
      335 GETTABLEKS                       R79 R76 K84 ["setRefreshHandler"]
      337 GETTABLEKS                       R80 R76 K85 ["findHostInstancesForRefresh"]
      339 GETIMPORT                        R81 K4 [require]
      341 GETIMPORT                        R84 K1 [script]
      343 GETTABLEKS                       R83 R84 K2 ["Parent"]
      345 GETTABLEKS                       R82 R83 K86 ["SchedulingProfiler"]
      347 CALL                             R81 1 1
      348 GETTABLEKS                       R82 R81 K87 ["markRenderScheduled"]
      350 NEWTABLE                         R83 64 0
      352 SETTABLEKS                       R9 R83 K13 ["ReactRootTags"]
      354 SETTABLEKS                       R12 R83 K16 ["ReactWorkTags"]
      356 SETTABLEKS                       R66 R83 K71 ["ReactTypeOfMode"]
      358 SETTABLEKS                       R10 R83 K14 ["ReactFiberFlags"]
      360 GETTABLEKS                       R84 R17 K88 ["getNearestMountedFiber"]
      362 SETTABLEKS                       R84 R83 K88 ["getNearestMountedFiber"]
      364 GETTABLEKS                       R84 R17 K89 ["findCurrentFiberUsingSlowPath"]
      366 SETTABLEKS                       R84 R83 K89 ["findCurrentFiberUsingSlowPath"]
      368 GETIMPORT                        R85 K4 [require]
      370 GETIMPORT                        R88 K1 [script]
      372 GETTABLEKS                       R87 R88 K2 ["Parent"]
      374 GETTABLEKS                       R86 R87 K90 ["ReactPortal"]
      376 CALL                             R85 1 1
      377 GETTABLEKS                       R84 R85 K91 ["createPortal"]
      379 SETTABLEKS                       R84 R83 K91 ["createPortal"]
      381 LOADNIL                          R84
      382 LOADNIL                          R85
      383 JUMPIFNOT                        R6 ; [+3]
      384 LOADB                            R84 0
      385 NEWTABLE                         R85 0 0
      387 DUPCLOSURE                       R86 K92 [PROTO_0]
      388 CAPTURE                          VAL R34
      389 CAPTURE                          VAL R20
      390 CAPTURE                          VAL R32
      391 CAPTURE                          VAL R22
      392 CAPTURE                          VAL R35
      393 CAPTURE                          VAL R33
      394 DUPCLOSURE                       R87 K93 [PROTO_1]
      395 CAPTURE                          VAL R20
      396 CAPTURE                          VAL R26
      397 CAPTURE                          VAL R5
      398 CAPTURE                          VAL R18
      399 NEWCLOSURE                       R88 P2
      400 CAPTURE                          VAL R6
      401 CAPTURE                          VAL R20
      402 CAPTURE                          VAL R26
      403 CAPTURE                          VAL R5
      404 CAPTURE                          VAL R18
      405 CAPTURE                          VAL R67
      406 CAPTURE                          VAL R25
      407 CAPTURE                          REF R85
      408 CAPTURE                          VAL R62
      409 CAPTURE                          VAL R65
      410 CAPTURE                          VAL R7
      411 CAPTURE                          VAL R27
      412 CAPTURE                          VAL R64
      413 CAPTURE                          VAL R87
      414 DUPCLOSURE                       R89 K94 [PROTO_4]
      415 CAPTURE                          VAL R37
      416 SETTABLEKS                       R89 R83 K95 ["createContainer"]
      418 NEWCLOSURE                       R89 P4
      419 CAPTURE                          VAL R6
      420 CAPTURE                          VAL R40
      421 CAPTURE                          VAL R42
      422 CAPTURE                          VAL R1
      423 CAPTURE                          VAL R56
      424 CAPTURE                          VAL R55
      425 CAPTURE                          VAL R43
      426 CAPTURE                          VAL R28
      427 CAPTURE                          VAL R82
      428 CAPTURE                          VAL R34
      429 CAPTURE                          VAL R20
      430 CAPTURE                          VAL R32
      431 CAPTURE                          VAL R22
      432 CAPTURE                          VAL R35
      433 CAPTURE                          VAL R33
      434 CAPTURE                          VAL R63
      435 CAPTURE                          VAL R62
      436 CAPTURE                          REF R84
      437 CAPTURE                          VAL R7
      438 CAPTURE                          VAL R25
      439 CAPTURE                          VAL R60
      440 CAPTURE                          VAL R5
      441 CAPTURE                          VAL R61
      442 CAPTURE                          VAL R44
      443 SETTABLEKS                       R89 R83 K96 ["updateContainer"]
      445 SETTABLEKS                       R46 R83 K51 ["batchedEventUpdates"]
      447 SETTABLEKS                       R47 R83 K52 ["batchedUpdates"]
      449 SETTABLEKS                       R48 R83 K53 ["unbatchedUpdates"]
      451 SETTABLEKS                       R51 R83 K56 ["deferredUpdates"]
      453 SETTABLEKS                       R52 R83 K57 ["discreteUpdates"]
      455 SETTABLEKS                       R53 R83 K58 ["flushDiscreteUpdates"]
      457 SETTABLEKS                       R50 R83 K55 ["flushControlled"]
      459 SETTABLEKS                       R49 R83 K54 ["flushSync"]
      461 SETTABLEKS                       R54 R83 K59 ["flushPassiveEffects"]
      463 SETTABLEKS                       R57 R83 K62 ["IsThisRendererActing"]
      465 SETTABLEKS                       R58 R83 K63 ["act"]
      467 DUPCLOSURE                       R89 K97 [PROTO_6]
      468 CAPTURE                          VAL R21
      469 CAPTURE                          VAL R30
      470 SETTABLEKS                       R89 R83 K98 ["getPublicRootInstance"]
      472 LOADNIL                          R89
      473 NEWCLOSURE                       R90 P6
      474 CAPTURE                          VAL R23
      475 CAPTURE                          VAL R72
      476 CAPTURE                          VAL R45
      477 CAPTURE                          VAL R24
      478 CAPTURE                          VAL R42
      479 CAPTURE                          VAL R49
      480 CAPTURE                          VAL R44
      481 CAPTURE                          VAL R68
      482 CAPTURE                          VAL R69
      483 CAPTURE                          REF R89
      484 SETTABLEKS                       R90 R83 K99 ["attemptSynchronousHydration"]
      486 DUPCLOSURE                       R90 K100 [PROTO_9]
      487 CAPTURE                          VAL R73
      488 DUPCLOSURE                       R89 K101 [PROTO_10]
      489 CAPTURE                          VAL R73
      490 NEWCLOSURE                       R91 P9
      491 CAPTURE                          VAL R24
      492 CAPTURE                          VAL R42
      493 CAPTURE                          VAL R69
      494 CAPTURE                          VAL R44
      495 CAPTURE                          REF R89
      496 SETTABLEKS                       R91 R83 K102 ["attemptUserBlockingHydration"]
      498 NEWCLOSURE                       R91 P10
      499 CAPTURE                          VAL R24
      500 CAPTURE                          VAL R42
      501 CAPTURE                          VAL R70
      502 CAPTURE                          VAL R44
      503 CAPTURE                          REF R89
      504 SETTABLEKS                       R91 R83 K103 ["attemptContinuousHydration"]
      506 NEWCLOSURE                       R91 P11
      507 CAPTURE                          VAL R24
      508 CAPTURE                          VAL R42
      509 CAPTURE                          VAL R43
      510 CAPTURE                          VAL R44
      511 CAPTURE                          REF R89
      512 SETTABLEKS                       R91 R83 K104 ["attemptHydrationAtCurrentPriority"]
      514 DUPCLOSURE                       R91 K105 [PROTO_14]
      515 CAPTURE                          VAL R74
      516 CAPTURE                          VAL R75
      517 CAPTURE                          VAL R27
      518 SETTABLEKS                       R91 R83 K106 ["runWithPriority"]
      520 SETTABLEKS                       R74 R83 K79 ["getCurrentUpdateLanePriority"]
      522 SETTABLEKS                       R87 R83 K107 ["findHostInstance"]
      524 SETTABLEKS                       R88 R83 K108 ["findHostInstanceWithWarning"]
      526 DUPCLOSURE                       R91 K109 [PROTO_15]
      527 CAPTURE                          VAL R19
      528 CAPTURE                          VAL R13
      529 SETTABLEKS                       R91 R83 K110 ["findHostInstanceWithNoPortals"]
      531 DUPCLOSURE                       R91 K111 [PROTO_16]
      532 NEWCLOSURE                       R92 P15
      533 CAPTURE                          REF R91
      534 SETTABLEKS                       R92 R83 K112 ["shouldSuspend"]
      536 LOADNIL                          R92
      537 LOADNIL                          R93
      538 LOADNIL                          R94
      539 LOADNIL                          R95
      540 LOADNIL                          R96
      541 LOADNIL                          R97
      542 LOADNIL                          R98
      543 LOADNIL                          R99
      544 JUMPIFNOT                        R6 ; [+53]
      545 DUPCLOSURE                       R100 K113 [PROTO_18]
      546 CAPTURE                          VAL R4
      547 CAPTURE                          VAL R100
      548 DUPCLOSURE                       R101 K114 [PROTO_19]
      549 CAPTURE                          VAL R100
      550 DUPCLOSURE                       R102 K115 [PROTO_20]
      551 CAPTURE                          VAL R4
      552 CAPTURE                          VAL R102
      553 DUPCLOSURE                       R103 K116 [PROTO_21]
      554 CAPTURE                          VAL R7
      555 CAPTURE                          VAL R102
      556 DUPCLOSURE                       R104 K117 [PROTO_22]
      557 CAPTURE                          VAL R4
      558 CAPTURE                          VAL R104
      559 DUPCLOSURE                       R105 K118 [PROTO_23]
      560 CAPTURE                          VAL R104
      561 DUPCLOSURE                       R106 K119 [PROTO_24]
      562 DUPCLOSURE                       R92 K120 [PROTO_25]
      563 CAPTURE                          VAL R104
      564 CAPTURE                          VAL R44
      565 CAPTURE                          VAL R68
      566 CAPTURE                          VAL R71
      567 DUPCLOSURE                       R93 K121 [PROTO_26]
      568 CAPTURE                          VAL R100
      569 CAPTURE                          VAL R44
      570 CAPTURE                          VAL R68
      571 CAPTURE                          VAL R71
      572 DUPCLOSURE                       R94 K122 [PROTO_27]
      573 CAPTURE                          VAL R103
      574 CAPTURE                          VAL R44
      575 CAPTURE                          VAL R68
      576 CAPTURE                          VAL R71
      577 DUPCLOSURE                       R95 K123 [PROTO_28]
      578 CAPTURE                          VAL R104
      579 CAPTURE                          VAL R44
      580 CAPTURE                          VAL R68
      581 CAPTURE                          VAL R71
      582 DUPCLOSURE                       R96 K124 [PROTO_29]
      583 CAPTURE                          VAL R100
      584 CAPTURE                          VAL R44
      585 CAPTURE                          VAL R68
      586 CAPTURE                          VAL R71
      587 DUPCLOSURE                       R97 K125 [PROTO_30]
      588 CAPTURE                          VAL R103
      589 CAPTURE                          VAL R44
      590 CAPTURE                          VAL R68
      591 CAPTURE                          VAL R71
      592 DUPCLOSURE                       R98 K126 [PROTO_31]
      593 CAPTURE                          VAL R44
      594 CAPTURE                          VAL R68
      595 CAPTURE                          VAL R71
      596 NEWCLOSURE                       R99 P30
      597 CAPTURE                          REF R91
      598 DUPCLOSURE                       R100 K127 [PROTO_33]
      599 CAPTURE                          VAL R18
      600 SETGLOBAL                        R100 K128 ["findHostInstanceByFiber"]
      602 DUPCLOSURE                       R100 K129 [PROTO_34]
      603 SETGLOBAL                        R100 K130 ["emptyFindFiberByHostInstance"]
      605 DUPCLOSURE                       R100 K131 [PROTO_35]
      606 CAPTURE                          VAL R62
      607 SETGLOBAL                        R100 K132 ["getCurrentFiberForDevTools"]
      609 NEWCLOSURE                       R100 P34
      610 CAPTURE                          VAL R29
      611 CAPTURE                          VAL R6
      612 CAPTURE                          VAL R39
      613 CAPTURE                          REF R92
      614 CAPTURE                          REF R93
      615 CAPTURE                          REF R94
      616 CAPTURE                          REF R95
      617 CAPTURE                          REF R96
      618 CAPTURE                          REF R97
      619 CAPTURE                          REF R99
      620 CAPTURE                          REF R98
      621 CAPTURE                          VAL R80
      622 CAPTURE                          VAL R77
      623 CAPTURE                          VAL R78
      624 CAPTURE                          VAL R79
      625 SETTABLEKS                       R100 R83 K133 ["injectIntoDevTools"]
      627 GETIMPORT                        R100 K4 [require]
      629 GETIMPORT                        R103 K1 [script]
      631 GETTABLEKS                       R102 R103 K2 ["Parent"]
      633 GETTABLEKS                       R101 R102 K134 ["RobloxReactProfiling"]
      635 CALL                             R100 1 1
      636 SETTABLEKS                       R100 R83 K135 ["robloxReactProfiling"]
      638 DUPTABLE                         R100 K138 [{"profilerEventTypes", "registerProfilerEventCallback"}]
      639 GETTABLEKS                       R101 R81 K136 ["profilerEventTypes"]
      641 SETTABLEKS                       R101 R100 K136 ["profilerEventTypes"]
      643 GETTABLEKS                       R101 R81 K137 ["registerProfilerEventCallback"]
      645 SETTABLEKS                       R101 R100 K137 ["registerProfilerEventCallback"]
      647 SETTABLEKS                       R100 R83 K139 ["schedulingProfiler"]
      649 CLOSEUPVALS                      R84
      650 RETURN                           R83 1
