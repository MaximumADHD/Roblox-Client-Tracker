PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 FASTCALL1                        TYPEOF R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [typeof]
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+2]
        9 RETURN                           R0 0
       10 MOVE                             R3 R1
       11 LOADK                            R4 K3 ["_"]
       12 FASTCALL1                        TOSTRING R0 ; [+3]
       13 MOVE                             R6 R0
       14 GETIMPORT                        R5 K5 [tostring]
       16 CALL                             R5 1 1
       17 CONCAT                           R2 R3 R5
       18 GETUPVAL                         R4 0
       19 GETTABLE                         R3 R4 R2
       20 JUMPIF                           R3 ; [+14]
       21 GETUPVAL                         R3 0
       22 LOADB                            R4 1
       23 SETTABLE                         R4 R3 R2
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R3 R4 K6 ["error"]
       27 LOADK                            R4 K7 ["%s(...): Expected the last optional `callback` argument to be a function. Instead received: %s."]
       28 MOVE                             R5 R1
       29 FASTCALL1                        TOSTRING R0 ; [+3]
       30 MOVE                             R7 R0
       31 GETIMPORT                        R6 K5 [tostring]
       33 CALL                             R6 1 1
       34 CALL                             R3 3 0
       35 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["memoizedState"]
        2 GETIMPORT                        R6 K2 [_G]
        4 GETTABLEKS                       R5 R6 K3 ["__DEV__"]
        6 JUMPIFNOT                        R5 ; [+27]
        7 GETUPVAL                         R5 0
        8 JUMPIFNOT                        R5 ; [+25]
        9 GETTABLEKS                       R6 R0 K4 ["mode"]
       11 GETUPVAL                         R7 1
       12 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
       14 GETIMPORT                        R5 K7 [bit32.band]
       16 CALL                             R5 2 1
       17 JUMPIFEQKN                       R5 K8 [0] ; [+16]
       19 GETUPVAL                         R5 2
       20 CALL                             R5 0 0
       21 GETIMPORT                        R5 K10 [pcall]
       23 MOVE                             R6 R2
       24 MOVE                             R7 R3
       25 MOVE                             R8 R4
       26 CALL                             R5 3 2
       27 GETUPVAL                         R7 3
       28 CALL                             R7 0 0
       29 JUMPIF                           R5 ; [+4]
       30 GETIMPORT                        R7 K12 [error]
       32 MOVE                             R8 R6
       33 CALL                             R7 1 0
       34 MOVE                             R5 R2
       35 MOVE                             R6 R3
       36 MOVE                             R7 R4
       37 CALL                             R5 2 1
       38 GETIMPORT                        R7 K2 [_G]
       40 GETTABLEKS                       R6 R7 K3 ["__DEV__"]
       42 JUMPIFNOT                        R6 ; [+4]
       43 GETUPVAL                         R6 4
       44 MOVE                             R7 R1
       45 MOVE                             R8 R5
       46 CALL                             R6 2 0
       47 JUMPIFNOTEQKNIL                  R5 ; [+3]
       49 MOVE                             R6 R4
       50 JUMPIF                           R6 ; [+8]
       51 GETUPVAL                         R7 5
       52 GETTABLEKS                       R6 R7 K13 ["assign"]
       54 NEWTABLE                         R7 0 0
       56 MOVE                             R8 R4
       57 MOVE                             R9 R5
       58 CALL                             R6 3 1
       59 SETTABLEKS                       R6 R0 K0 ["memoizedState"]
       61 GETTABLEKS                       R7 R0 K14 ["lanes"]
       63 GETUPVAL                         R8 6
       64 JUMPIFNOTEQ                      R7 R8 ; [+5]
       66 GETTABLEKS                       R7 R0 K15 ["updateQueue"]
       68 SETTABLEKS                       R6 R7 K16 ["baseState"]
       70 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 CALL                             R4 0 1
        5 GETUPVAL                         R5 2
        6 MOVE                             R6 R3
        7 CALL                             R5 1 1
        8 GETUPVAL                         R6 3
        9 MOVE                             R7 R4
       10 MOVE                             R8 R5
       11 CALL                             R6 2 1
       12 SETTABLEKS                       R1 R6 K0 ["payload"]
       14 JUMPIFEQKNIL                     R2 ; [+12]
       16 GETIMPORT                        R8 K2 [_G]
       18 GETTABLEKS                       R7 R8 K3 ["__DEV__"]
       20 JUMPIFNOT                        R7 ; [+4]
       21 GETUPVAL                         R7 4
       22 MOVE                             R8 R2
       23 LOADK                            R9 K4 ["setState"]
       24 CALL                             R7 2 0
       25 SETTABLEKS                       R2 R6 K5 ["callback"]
       27 GETUPVAL                         R7 5
       28 MOVE                             R8 R3
       29 MOVE                             R9 R6
       30 CALL                             R7 2 0
       31 GETUPVAL                         R7 6
       32 MOVE                             R8 R3
       33 MOVE                             R9 R5
       34 MOVE                             R10 R4
       35 CALL                             R7 3 0
       36 GETIMPORT                        R8 K2 [_G]
       38 GETTABLEKS                       R7 R8 K3 ["__DEV__"]
       40 JUMPIFNOT                        R7 ; [+22]
       41 GETUPVAL                         R7 7
       42 JUMPIFNOT                        R7 ; [+20]
       43 GETTABLEKS                       R8 R3 K6 ["mode"]
       45 GETUPVAL                         R9 8
       46 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
       48 GETIMPORT                        R7 K9 [bit32.band]
       50 CALL                             R7 2 1
       51 JUMPIFEQKN                       R7 K10 [0] ; [+11]
       53 GETUPVAL                         R8 9
       54 GETTABLEKS                       R9 R3 K12 ["type"]
       56 CALL                             R8 1 1
       57 ORK                              R7 R8 K11 ["Unknown"]
       58 GETUPVAL                         R8 10
       59 MOVE                             R9 R7
       60 MOVE                             R10 R5
       61 MOVE                             R11 R1
       62 CALL                             R8 3 0
       63 GETUPVAL                         R7 11
       64 JUMPIFNOT                        R7 ; [+4]
       65 GETUPVAL                         R7 12
       66 MOVE                             R8 R3
       67 MOVE                             R9 R5
       68 CALL                             R7 2 0
       69 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 CALL                             R4 0 1
        5 GETUPVAL                         R5 2
        6 MOVE                             R6 R3
        7 CALL                             R5 1 1
        8 GETUPVAL                         R6 3
        9 MOVE                             R7 R4
       10 MOVE                             R8 R5
       11 CALL                             R6 2 1
       12 GETUPVAL                         R7 4
       13 SETTABLEKS                       R7 R6 K0 ["tag"]
       15 SETTABLEKS                       R1 R6 K1 ["payload"]
       17 JUMPIFEQKNIL                     R2 ; [+12]
       19 GETIMPORT                        R8 K3 [_G]
       21 GETTABLEKS                       R7 R8 K4 ["__DEV__"]
       23 JUMPIFNOT                        R7 ; [+4]
       24 GETUPVAL                         R7 5
       25 MOVE                             R8 R2
       26 LOADK                            R9 K5 ["replaceState"]
       27 CALL                             R7 2 0
       28 SETTABLEKS                       R2 R6 K6 ["callback"]
       30 GETUPVAL                         R7 6
       31 MOVE                             R8 R3
       32 MOVE                             R9 R6
       33 CALL                             R7 2 0
       34 GETUPVAL                         R7 7
       35 MOVE                             R8 R3
       36 MOVE                             R9 R5
       37 MOVE                             R10 R4
       38 CALL                             R7 3 0
       39 GETIMPORT                        R8 K3 [_G]
       41 GETTABLEKS                       R7 R8 K4 ["__DEV__"]
       43 JUMPIFNOT                        R7 ; [+22]
       44 GETUPVAL                         R7 8
       45 JUMPIFNOT                        R7 ; [+20]
       46 GETTABLEKS                       R8 R3 K7 ["mode"]
       48 GETUPVAL                         R9 9
       49 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
       51 GETIMPORT                        R7 K10 [bit32.band]
       53 CALL                             R7 2 1
       54 JUMPIFEQKN                       R7 K11 [0] ; [+11]
       56 GETUPVAL                         R8 10
       57 GETTABLEKS                       R9 R3 K13 ["type"]
       59 CALL                             R8 1 1
       60 ORK                              R7 R8 K12 ["Unknown"]
       61 GETUPVAL                         R8 11
       62 MOVE                             R9 R7
       63 MOVE                             R10 R5
       64 MOVE                             R11 R1
       65 CALL                             R8 3 0
       66 GETUPVAL                         R7 12
       67 JUMPIFNOT                        R7 ; [+4]
       68 GETUPVAL                         R7 13
       69 MOVE                             R8 R3
       70 MOVE                             R9 R5
       71 CALL                             R7 2 0
       72 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 GETUPVAL                         R4 2
        6 MOVE                             R5 R2
        7 CALL                             R4 1 1
        8 GETUPVAL                         R5 3
        9 MOVE                             R6 R3
       10 MOVE                             R7 R4
       11 CALL                             R5 2 1
       12 GETUPVAL                         R6 4
       13 SETTABLEKS                       R6 R5 K0 ["tag"]
       15 JUMPIFEQKNIL                     R1 ; [+12]
       17 GETIMPORT                        R7 K2 [_G]
       19 GETTABLEKS                       R6 R7 K3 ["__DEV__"]
       21 JUMPIFNOT                        R6 ; [+4]
       22 GETUPVAL                         R6 5
       23 MOVE                             R7 R1
       24 LOADK                            R8 K4 ["forceUpdate"]
       25 CALL                             R6 2 0
       26 SETTABLEKS                       R1 R5 K5 ["callback"]
       28 GETUPVAL                         R6 6
       29 MOVE                             R7 R2
       30 MOVE                             R8 R5
       31 CALL                             R6 2 0
       32 GETUPVAL                         R6 7
       33 MOVE                             R7 R2
       34 MOVE                             R8 R4
       35 MOVE                             R9 R3
       36 CALL                             R6 3 0
       37 GETIMPORT                        R7 K2 [_G]
       39 GETTABLEKS                       R6 R7 K3 ["__DEV__"]
       41 JUMPIFNOT                        R6 ; [+21]
       42 GETUPVAL                         R6 8
       43 JUMPIFNOT                        R6 ; [+19]
       44 GETTABLEKS                       R7 R2 K6 ["mode"]
       46 GETUPVAL                         R8 9
       47 FASTCALL2                        BIT32_BAND R7 R8 ; [+3]
       49 GETIMPORT                        R6 K9 [bit32.band]
       51 CALL                             R6 2 1
       52 JUMPIFEQKN                       R6 K10 [0] ; [+10]
       54 GETUPVAL                         R7 10
       55 GETTABLEKS                       R8 R2 K12 ["type"]
       57 CALL                             R7 1 1
       58 ORK                              R6 R7 K11 ["Unknown"]
       59 GETUPVAL                         R7 11
       60 MOVE                             R8 R6
       61 MOVE                             R9 R4
       62 CALL                             R7 2 0
       63 GETUPVAL                         R6 12
       64 JUMPIFNOT                        R6 ; [+4]
       65 GETUPVAL                         R6 13
       66 MOVE                             R7 R2
       67 MOVE                             R8 R4
       68 CALL                             R6 2 0
       69 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [require]
        2 GETIMPORT                        R3 K4 [script]
        4 GETTABLEKS                       R2 R3 K5 ["Parent"]
        6 GETTABLEKS                       R1 R2 K2 ["ReactFiberWorkLoop.new"]
        8 CALL                             R0 1 1
        9 GETTABLEKS                       R1 R0 K6 ["requestEventTime"]
       11 GETTABLEKS                       R2 R0 K7 ["requestUpdateLane"]
       13 GETTABLEKS                       R3 R0 K8 ["scheduleUpdateOnFiber"]
       15 DUPTABLE                         R4 K13 [{"isMounted", "enqueueSetState", "enqueueReplaceState", "enqueueForceUpdate"}]
       16 GETUPVAL                         R5 1
       17 SETTABLEKS                       R5 R4 K9 ["isMounted"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          UPVAL U9
       31 CAPTURE                          UPVAL U10
       32 CAPTURE                          UPVAL U11
       33 SETTABLEKS                       R5 R4 K10 ["enqueueSetState"]
       35 NEWCLOSURE                       R5 P1
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U12
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          UPVAL U7
       46 CAPTURE                          UPVAL U8
       47 CAPTURE                          UPVAL U9
       48 CAPTURE                          UPVAL U10
       49 CAPTURE                          UPVAL U11
       50 SETTABLEKS                       R5 R4 K11 ["enqueueReplaceState"]
       52 NEWCLOSURE                       R5 P2
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          UPVAL U13
       58 CAPTURE                          UPVAL U4
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          VAL R3
       61 CAPTURE                          UPVAL U6
       62 CAPTURE                          UPVAL U7
       63 CAPTURE                          UPVAL U8
       64 CAPTURE                          UPVAL U14
       65 CAPTURE                          UPVAL U10
       66 CAPTURE                          UPVAL U15
       67 SETTABLEKS                       R5 R4 K12 ["enqueueForceUpdate"]
       69 SETUPVAL                         R4 0
       70 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 GETUPVAL                         R0 0
        6 RETURN                           R0 1

PROTO_8:
        0 GETTABLEKS                       R7 R0 K0 ["stateNode"]
        2 GETTABLEKS                       R9 R7 K1 ["shouldComponentUpdate"]
        4 FASTCALL1                        TYPEOF R9 ; [+2]
        5 GETIMPORT                        R8 K3 [typeof]
        7 CALL                             R8 1 1
        8 JUMPIFNOTEQKS                    R8 K4 ["function"] ; [+59]
       10 GETIMPORT                        R9 K6 [_G]
       12 GETTABLEKS                       R8 R9 K7 ["__DEV__"]
       14 JUMPIFNOT                        R8 ; [+30]
       15 GETUPVAL                         R8 0
       16 JUMPIFNOT                        R8 ; [+28]
       17 GETTABLEKS                       R9 R0 K8 ["mode"]
       19 GETUPVAL                         R10 1
       20 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
       22 GETIMPORT                        R8 K11 [bit32.band]
       24 CALL                             R8 2 1
       25 JUMPIFEQKN                       R8 K12 [0] ; [+19]
       27 GETUPVAL                         R8 2
       28 CALL                             R8 0 0
       29 GETIMPORT                        R8 K14 [pcall]
       31 GETTABLEKS                       R9 R7 K1 ["shouldComponentUpdate"]
       33 MOVE                             R10 R7
       34 MOVE                             R11 R3
       35 MOVE                             R12 R5
       36 MOVE                             R13 R6
       37 CALL                             R8 5 2
       38 GETUPVAL                         R10 3
       39 CALL                             R10 0 0
       40 JUMPIF                           R8 ; [+4]
       41 GETIMPORT                        R10 K16 [error]
       43 MOVE                             R11 R9
       44 CALL                             R10 1 0
       45 MOVE                             R10 R3
       46 MOVE                             R11 R5
       47 MOVE                             R12 R6
       48 NAMECALL                         R8 R7 K1 ["shouldComponentUpdate"]
       50 CALL                             R8 4 1
       51 GETIMPORT                        R10 K6 [_G]
       53 GETTABLEKS                       R9 R10 K7 ["__DEV__"]
       55 JUMPIFNOT                        R9 ; [+11]
       56 JUMPIFNOTEQKNIL                  R8 ; [+10]
       58 GETUPVAL                         R10 4
       59 GETTABLEKS                       R9 R10 K15 ["error"]
       61 LOADK                            R10 K17 ["%s.shouldComponentUpdate(): Returned nil instead of a boolean value. Make sure to return true or false."]
       62 GETUPVAL                         R12 5
       63 MOVE                             R13 R1
       64 CALL                             R12 1 1
       65 ORK                              R11 R12 K18 ["Component"]
       66 CALL                             R9 2 0
       67 RETURN                           R8 1
       68 FASTCALL1                        TYPEOF R1 ; [+3]
       69 MOVE                             R9 R1
       70 GETIMPORT                        R8 K3 [typeof]
       72 CALL                             R8 1 1
       73 JUMPIFNOTEQKS                    R8 K19 ["table"] ; [+16]
       75 GETTABLEKS                       R8 R1 K20 ["isPureReactComponent"]
       77 JUMPIFNOT                        R8 ; [+12]
       78 GETUPVAL                         R9 6
       79 MOVE                             R10 R2
       80 MOVE                             R11 R3
       81 CALL                             R9 2 1
       82 NOT                              R8 R9
       83 JUMPIF                           R8 ; [+5]
       84 GETUPVAL                         R9 6
       85 MOVE                             R10 R4
       86 MOVE                             R11 R5
       87 CALL                             R9 2 1
       88 NOT                              R8 R9
       89 RETURN                           R8 1
       90 LOADB                            R8 1
       91 RETURN                           R8 1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["stateNode"]
        2 GETIMPORT                        R5 K2 [_G]
        4 GETTABLEKS                       R4 R5 K3 ["__DEV__"]
        6 JUMPIFNOT                        R4 ; [+343]
        7 GETUPVAL                         R5 0
        8 MOVE                             R6 R1
        9 CALL                             R5 1 1
       10 ORK                              R4 R5 K4 ["Component"]
       11 GETTABLEKS                       R5 R3 K5 ["render"]
       13 JUMPIF                           R5 ; [+21]
       14 GETTABLEKS                       R7 R1 K5 ["render"]
       16 FASTCALL1                        TYPEOF R7 ; [+2]
       17 GETIMPORT                        R6 K7 [typeof]
       19 CALL                             R6 1 1
       20 JUMPIFNOTEQKS                    R6 K8 ["function"] ; [+8]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R6 R7 K9 ["error"]
       25 LOADK                            R7 K10 ["%s(...): No `render` method found on the returned component instance: did you accidentally return an object from the constructor?"]
       26 MOVE                             R8 R4
       27 CALL                             R6 2 0
       28 JUMP                             ; [+6]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R6 R7 K9 ["error"]
       32 LOADK                            R7 K11 ["%s(...): No `render` method found on the returned component instance: you may have forgotten to define `render`."]
       33 MOVE                             R8 R4
       34 CALL                             R6 2 0
       35 GETTABLEKS                       R6 R3 K12 ["getInitialState"]
       37 JUMPIFNOT                        R6 ; [+14]
       38 GETTABLEKS                       R7 R3 K12 ["getInitialState"]
       40 GETTABLEKS                       R6 R7 K13 ["isReactClassApproved"]
       42 JUMPIF                           R6 ; [+9]
       43 GETTABLEKS                       R6 R3 K14 ["state"]
       45 JUMPIF                           R6 ; [+6]
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R6 R7 K9 ["error"]
       49 LOADK                            R7 K15 ["getInitialState was defined on %s, a plain JavaScript class. This is only supported for classes created using React.createClass. Did you mean to define a state property instead?"]
       50 MOVE                             R8 R4
       51 CALL                             R6 2 0
       52 GETTABLEKS                       R6 R3 K16 ["getDefaultProps"]
       54 JUMPIFNOT                        R6 ; [+11]
       55 GETTABLEKS                       R7 R3 K16 ["getDefaultProps"]
       57 GETTABLEKS                       R6 R7 K13 ["isReactClassApproved"]
       59 JUMPIF                           R6 ; [+6]
       60 GETUPVAL                         R7 1
       61 GETTABLEKS                       R6 R7 K9 ["error"]
       63 LOADK                            R7 K17 ["getDefaultProps was defined on %s, a plain JavaScript class. This is only supported for classes created using React.createClass. Use a static property to define defaultProps instead."]
       64 MOVE                             R8 R4
       65 CALL                             R6 2 0
       66 GETTABLEKS                       R6 R3 K18 ["propTypes"]
       68 JUMPIFNOT                        R6 ; [+9]
       69 GETTABLEKS                       R6 R1 K18 ["propTypes"]
       71 JUMPIF                           R6 ; [+6]
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R6 R7 K9 ["error"]
       75 LOADK                            R7 K19 ["propTypes was defined as an instance property on %s. Use a static property to define propTypes instead."]
       76 MOVE                             R8 R4
       77 CALL                             R6 2 0
       78 GETTABLEKS                       R6 R3 K20 ["contextType"]
       80 JUMPIFNOT                        R6 ; [+9]
       81 GETTABLEKS                       R6 R1 K20 ["contextType"]
       83 JUMPIF                           R6 ; [+6]
       84 GETUPVAL                         R7 1
       85 GETTABLEKS                       R6 R7 K9 ["error"]
       87 LOADK                            R7 K21 ["contextType was defined as an instance property on %s. Use a static property to define contextType instead."]
       88 MOVE                             R8 R4
       89 CALL                             R6 2 0
       90 GETUPVAL                         R6 2
       91 JUMPIFNOT                        R6 ; [+19]
       92 GETTABLEKS                       R6 R1 K22 ["childContextTypes"]
       94 JUMPIFNOT                        R6 ; [+6]
       95 GETUPVAL                         R7 1
       96 GETTABLEKS                       R6 R7 K9 ["error"]
       98 LOADK                            R7 K23 ["%s uses the legacy childContextTypes API which is no longer supported. Use React.createContext() instead."]
       99 MOVE                             R8 R4
      100 CALL                             R6 2 0
      101 GETTABLEKS                       R6 R1 K24 ["contextTypes"]
      103 JUMPIFNOT                        R6 ; [+44]
      104 GETUPVAL                         R7 1
      105 GETTABLEKS                       R6 R7 K9 ["error"]
      107 LOADK                            R7 K25 ["%s uses the legacy contextTypes API which is no longer supported. Use React.createContext() with static contextType instead."]
      108 MOVE                             R8 R4
      109 CALL                             R6 2 0
      110 JUMP                             ; [+37]
      111 GETTABLEKS                       R6 R3 K24 ["contextTypes"]
      113 JUMPIFNOT                        R6 ; [+9]
      114 GETTABLEKS                       R6 R1 K24 ["contextTypes"]
      116 JUMPIF                           R6 ; [+6]
      117 GETUPVAL                         R7 1
      118 GETTABLEKS                       R6 R7 K9 ["error"]
      120 LOADK                            R7 K26 ["contextTypes was defined as an instance property on %s. Use a static property to define contextTypes instead."]
      121 MOVE                             R8 R4
      122 CALL                             R6 2 0
      123 FASTCALL1                        TYPEOF R1 ; [+3]
      124 MOVE                             R7 R1
      125 GETIMPORT                        R6 K7 [typeof]
      127 CALL                             R6 1 1
      128 JUMPIFNOTEQKS                    R6 K27 ["table"] ; [+19]
      130 GETTABLEKS                       R6 R1 K20 ["contextType"]
      132 JUMPIFNOT                        R6 ; [+15]
      133 GETTABLEKS                       R6 R1 K24 ["contextTypes"]
      135 JUMPIFNOT                        R6 ; [+12]
      136 GETUPVAL                         R7 3
      137 GETTABLE                         R6 R7 R1
      138 JUMPIF                           R6 ; [+9]
      139 GETUPVAL                         R6 3
      140 LOADB                            R7 1
      141 SETTABLE                         R7 R6 R1
      142 GETUPVAL                         R7 1
      143 GETTABLEKS                       R6 R7 K9 ["error"]
      145 LOADK                            R7 K28 ["%s declares both contextTypes and contextType static properties. The legacy contextTypes property will be ignored."]
      146 MOVE                             R8 R4
      147 CALL                             R6 2 0
      148 GETTABLEKS                       R7 R3 K29 ["componentShouldUpdate"]
      150 FASTCALL1                        TYPEOF R7 ; [+2]
      151 GETIMPORT                        R6 K7 [typeof]
      153 CALL                             R6 1 1
      154 JUMPIFNOTEQKS                    R6 K8 ["function"] ; [+7]
      156 GETUPVAL                         R7 1
      157 GETTABLEKS                       R6 R7 K9 ["error"]
      159 LOADK                            R7 K30 ["%s has a method called componentShouldUpdate(). Did you mean shouldComponentUpdate()? The name is phrased as a question because the function is expected to return a value."]
      160 MOVE                             R8 R4
      161 CALL                             R6 2 0
      162 FASTCALL1                        TYPEOF R1 ; [+3]
      163 MOVE                             R7 R1
      164 GETIMPORT                        R6 K7 [typeof]
      166 CALL                             R6 1 1
      167 JUMPIFNOTEQKS                    R6 K27 ["table"] ; [+17]
      169 GETTABLEKS                       R6 R1 K31 ["isPureReactComponent"]
      171 JUMPIFNOT                        R6 ; [+13]
      172 GETTABLEKS                       R6 R3 K32 ["shouldComponentUpdate"]
      174 JUMPIFEQKNIL                     R6 ; [+10]
      176 GETUPVAL                         R7 1
      177 GETTABLEKS                       R6 R7 K9 ["error"]
      179 LOADK                            R7 K33 ["%s has a method called shouldComponentUpdate(). shouldComponentUpdate should not be used when extending React.PureComponent. Please extend React.Component if shouldComponentUpdate is used."]
      180 GETUPVAL                         R9 0
      181 MOVE                             R10 R1
      182 CALL                             R9 1 1
      183 ORK                              R8 R9 K34 ["A pure component"]
      184 CALL                             R6 2 0
      185 GETTABLEKS                       R7 R3 K35 ["componentDidUnmount"]
      187 FASTCALL1                        TYPEOF R7 ; [+2]
      188 GETIMPORT                        R6 K7 [typeof]
      190 CALL                             R6 1 1
      191 JUMPIFNOTEQKS                    R6 K8 ["function"] ; [+7]
      193 GETUPVAL                         R7 1
      194 GETTABLEKS                       R6 R7 K9 ["error"]
      196 LOADK                            R7 K36 ["%s has a method called componentDidUnmount(). But there is no such lifecycle method. Did you mean componentWillUnmount()?"]
      197 MOVE                             R8 R4
      198 CALL                             R6 2 0
      199 GETTABLEKS                       R7 R3 K37 ["componentDidReceiveProps"]
      201 FASTCALL1                        TYPEOF R7 ; [+2]
      202 GETIMPORT                        R6 K7 [typeof]
      204 CALL                             R6 1 1
      205 JUMPIFNOTEQKS                    R6 K8 ["function"] ; [+7]
      207 GETUPVAL                         R7 1
      208 GETTABLEKS                       R6 R7 K9 ["error"]
      210 LOADK                            R7 K38 ["%s has a method called componentDidReceiveProps(). But there is no such lifecycle method. If you meant to update the state in response to changing props, use componentWillReceiveProps(). If you meant to fetch data or run side-effects or mutations after React has updated the UI, use componentDidUpdate()."]
      211 MOVE                             R8 R4
      212 CALL                             R6 2 0
      213 GETTABLEKS                       R7 R3 K39 ["componentWillRecieveProps"]
      215 FASTCALL1                        TYPEOF R7 ; [+2]
      216 GETIMPORT                        R6 K7 [typeof]
      218 CALL                             R6 1 1
      219 JUMPIFNOTEQKS                    R6 K8 ["function"] ; [+7]
      221 GETUPVAL                         R7 1
      222 GETTABLEKS                       R6 R7 K9 ["error"]
      224 LOADK                            R7 K40 ["%s has a method called componentWillRecieveProps(). Did you mean componentWillReceiveProps()?"]
      225 MOVE                             R8 R4
      226 CALL                             R6 2 0
      227 GETTABLEKS                       R7 R3 K41 ["UNSAFE_componentWillRecieveProps"]
      229 FASTCALL1                        TYPEOF R7 ; [+2]
      230 GETIMPORT                        R6 K7 [typeof]
      232 CALL                             R6 1 1
      233 JUMPIFNOTEQKS                    R6 K8 ["function"] ; [+7]
      235 GETUPVAL                         R7 1
      236 GETTABLEKS                       R6 R7 K9 ["error"]
      238 LOADK                            R7 K42 ["%s has a method called UNSAFE_componentWillRecieveProps(). Did you mean UNSAFE_componentWillReceiveProps()?"]
      239 MOVE                             R8 R4
      240 CALL                             R6 2 0
      241 GETTABLEKS                       R7 R3 K43 ["props"]
      243 JUMPIFNOTEQ                      R7 R2 ; [+2]
      245 LOADB                            R6 0 +1
      246 LOADB                            R6 1
      247 GETTABLEKS                       R7 R3 K43 ["props"]
      249 JUMPIFEQKNIL                     R7 ; [+9]
      251 JUMPIFNOT                        R6 ; [+7]
      252 GETUPVAL                         R8 1
      253 GETTABLEKS                       R7 R8 K9 ["error"]
      255 LOADK                            R8 K44 ["%s(...): When calling super() in `%s`, make sure to pass up the same props that your component's constructor was passed."]
      256 MOVE                             R9 R4
      257 MOVE                             R10 R4
      258 CALL                             R7 3 0
      259 FASTCALL2K                       RAWGET R3 K45 ; [+5]
      261 MOVE                             R8 R3
      262 LOADK                            R9 K45 ["defaultProps"]
      263 GETIMPORT                        R7 K47 [rawget]
      265 CALL                             R7 2 1
      266 JUMPIFNOT                        R7 ; [+7]
      267 GETUPVAL                         R8 1
      268 GETTABLEKS                       R7 R8 K9 ["error"]
      270 LOADK                            R8 K48 ["Setting defaultProps as an instance property on %s is not supported and will be ignored. Instead, define defaultProps as a static property on %s."]
      271 MOVE                             R9 R4
      272 MOVE                             R10 R4
      273 CALL                             R7 3 0
      274 GETTABLEKS                       R8 R3 K49 ["getSnapshotBeforeUpdate"]
      276 FASTCALL1                        TYPEOF R8 ; [+2]
      277 GETIMPORT                        R7 K7 [typeof]
      279 CALL                             R7 1 1
      280 JUMPIFNOTEQKS                    R7 K8 ["function"] ; [+23]
      282 GETTABLEKS                       R8 R3 K50 ["componentDidUpdate"]
      284 FASTCALL1                        TYPEOF R8 ; [+2]
      285 GETIMPORT                        R7 K7 [typeof]
      287 CALL                             R7 1 1
      288 JUMPIFEQKS                       R7 K8 ["function"] ; [+15]
      290 GETUPVAL                         R8 4
      291 GETTABLE                         R7 R8 R1
      292 JUMPIF                           R7 ; [+11]
      293 GETUPVAL                         R7 4
      294 LOADB                            R8 1
      295 SETTABLE                         R8 R7 R1
      296 GETUPVAL                         R8 1
      297 GETTABLEKS                       R7 R8 K9 ["error"]
      299 LOADK                            R8 K51 ["%s: getSnapshotBeforeUpdate() should be used with componentDidUpdate(). This component defines getSnapshotBeforeUpdate() only."]
      300 GETUPVAL                         R9 0
      301 MOVE                             R10 R1
      302 CALL                             R9 1 -1
      303 CALL                             R7 -1 0
      304 GETTABLEKS                       R7 R3 K14 ["state"]
      306 JUMPIFEQKNIL                     R7 ; [+14]
      308 FASTCALL1                        TYPEOF R7 ; [+3]
      309 MOVE                             R9 R7
      310 GETIMPORT                        R8 K7 [typeof]
      312 CALL                             R8 1 1
      313 JUMPIFEQKS                       R8 K27 ["table"] ; [+7]
      315 GETUPVAL                         R9 1
      316 GETTABLEKS                       R8 R9 K9 ["error"]
      318 LOADK                            R9 K52 ["%s.state: must be set to an object or nil"]
      319 MOVE                             R10 R4
      320 CALL                             R8 2 0
      321 FASTCALL1                        TYPEOF R1 ; [+3]
      322 MOVE                             R9 R1
      323 GETIMPORT                        R8 K7 [typeof]
      325 CALL                             R8 1 1
      326 JUMPIFNOTEQKS                    R8 K27 ["table"] ; [+23]
      328 GETTABLEKS                       R9 R3 K53 ["getChildContext"]
      330 FASTCALL1                        TYPEOF R9 ; [+2]
      331 GETIMPORT                        R8 K7 [typeof]
      333 CALL                             R8 1 1
      334 JUMPIFNOTEQKS                    R8 K8 ["function"] ; [+15]
      336 GETTABLEKS                       R9 R1 K22 ["childContextTypes"]
      338 FASTCALL1                        TYPEOF R9 ; [+2]
      339 GETIMPORT                        R8 K7 [typeof]
      341 CALL                             R8 1 1
      342 JUMPIFEQKS                       R8 K27 ["table"] ; [+7]
      344 GETUPVAL                         R9 1
      345 GETTABLEKS                       R8 R9 K9 ["error"]
      347 LOADK                            R9 K54 ["%s.getChildContext(): childContextTypes must be defined in order to use getChildContext()."]
      348 MOVE                             R10 R4
      349 CALL                             R8 2 0
      350 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKNIL                  R3 ; [+3]
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 0
        5 GETUPVAL                         R2 0
        6 SETTABLEKS                       R2 R1 K0 ["__updater"]
        8 SETTABLEKS                       R1 R0 K1 ["stateNode"]
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R1
       12 MOVE                             R4 R0
       13 CALL                             R2 2 0
       14 GETIMPORT                        R3 K3 [_G]
       16 GETTABLEKS                       R2 R3 K4 ["__DEV__"]
       18 JUMPIFNOT                        R2 ; [+3]
       19 GETUPVAL                         R2 3
       20 SETTABLEKS                       R2 R1 K5 ["_reactInternalInstance"]
       22 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R3 0
        1 GETUPVAL                         R4 0
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R6 R1 K0 ["contextType"]
        5 GETIMPORT                        R8 K2 [_G]
        7 GETTABLEKS                       R7 R8 K3 ["__DEV__"]
        9 JUMPIFNOT                        R7 ; [+88]
       10 GETTABLEKS                       R7 R1 K0 ["contextType"]
       12 JUMPIFEQKNIL                     R7 ; [+85]
       14 LOADB                            R7 1
       15 JUMPIFEQKNIL                     R6 ; [+13]
       17 LOADB                            R7 0
       18 GETTABLEKS                       R8 R6 K4 ["$$typeof"]
       20 GETUPVAL                         R9 1
       21 JUMPIFNOTEQ                      R8 R9 ; [+7]
       23 GETTABLEKS                       R8 R6 K5 ["_context"]
       25 JUMPIFEQKNIL                     R8 ; [+2]
       27 LOADB                            R7 0 +1
       28 LOADB                            R7 1
       29 JUMPIF                           R7 ; [+68]
       30 GETUPVAL                         R9 2
       31 GETTABLE                         R8 R9 R1
       32 JUMPIF                           R8 ; [+65]
       33 GETUPVAL                         R8 2
       34 LOADB                            R9 1
       35 SETTABLE                         R9 R8 R1
       36 LOADK                            R8 K6 [""]
       37 JUMPIFNOTEQKNIL                  R6 ; [+3]
       39 LOADK                            R8 K7 [" However, it is set to nil. This can be caused by a typo or by mixing up named and default imports. This can also happen due to a circular dependency, so try moving the createContext() call to a separate file."]
       40 JUMP                             ; [+47]
       41 FASTCALL1                        TYPEOF R6 ; [+3]
       42 MOVE                             R10 R6
       43 GETIMPORT                        R9 K9 [typeof]
       45 CALL                             R9 1 1
       46 JUMPIFEQKS                       R9 K10 ["table"] ; [+11]
       48 LOADK                            R9 K11 [" However, it is set to a "]
       49 FASTCALL1                        TYPEOF R6 ; [+3]
       50 MOVE                             R13 R6
       51 GETIMPORT                        R12 K9 [typeof]
       53 CALL                             R12 1 1
       54 MOVE                             R10 R12
       55 LOADK                            R11 K12 ["."]
       56 CONCAT                           R8 R9 R11
       57 JUMP                             ; [+30]
       58 GETTABLEKS                       R9 R6 K4 ["$$typeof"]
       60 GETUPVAL                         R10 3
       61 JUMPIFNOTEQ                      R9 R10 ; [+3]
       63 LOADK                            R8 K13 [" Did you accidentally pass the Context.Provider instead?"]
       64 JUMP                             ; [+23]
       65 GETTABLEKS                       R9 R6 K5 ["_context"]
       67 JUMPIFEQKNIL                     R9 ; [+3]
       69 LOADK                            R8 K14 [" Did you accidentally pass the Context.Consumer instead?"]
       70 JUMP                             ; [+17]
       71 MOVE                             R9 R8
       72 LOADK                            R10 K15 [" However, it is set to an object with keys {"]
       73 CONCAT                           R8 R9 R10
       74 GETIMPORT                        R9 K17 [pairs]
       76 MOVE                             R10 R6
       77 CALL                             R9 1 3
       78 FORGPREP_NEXT                    R9
       79 MOVE                             R14 R8
       80 MOVE                             R15 R12
       81 LOADK                            R16 K18 [", "]
       82 CONCAT                           R8 R14 R16
       83 FORGLOOP                         R9 2 ; [-5]
       85 MOVE                             R9 R8
       86 LOADK                            R10 K19 ["}."]
       87 CONCAT                           R8 R9 R10
       88 GETUPVAL                         R10 4
       89 GETTABLEKS                       R9 R10 K20 ["error"]
       91 LOADK                            R10 K21 ["%s defines an invalid contextType. contextType should point to the Context object returned by React.createContext().%s"]
       92 GETUPVAL                         R12 5
       93 MOVE                             R13 R1
       94 CALL                             R12 1 1
       95 ORK                              R11 R12 K22 ["Component"]
       96 MOVE                             R12 R8
       97 CALL                             R9 3 0
       98 JUMPIFEQKNIL                     R6 ; [+13]
      100 FASTCALL1                        TYPEOF R6 ; [+3]
      101 MOVE                             R8 R6
      102 GETIMPORT                        R7 K9 [typeof]
      104 CALL                             R7 1 1
      105 JUMPIFNOTEQKS                    R7 K10 ["table"] ; [+6]
      107 GETUPVAL                         R7 6
      108 MOVE                             R8 R6
      109 CALL                             R7 1 1
      110 MOVE                             R5 R7
      111 JUMP                             ; [+22]
      112 GETUPVAL                         R7 7
      113 JUMPIF                           R7 ; [+20]
      114 GETUPVAL                         R7 8
      115 MOVE                             R8 R0
      116 MOVE                             R9 R1
      117 LOADB                            R10 1
      118 CALL                             R7 3 1
      119 MOVE                             R4 R7
      120 GETTABLEKS                       R7 R1 K23 ["contextTypes"]
      122 JUMPIFNOTEQKNIL                  R7 ; [+2]
      124 LOADB                            R3 0 +1
      125 LOADB                            R3 1
      126 JUMPIFNOT                        R3 ; [+5]
      127 GETUPVAL                         R8 9
      128 MOVE                             R9 R0
      129 MOVE                             R10 R4
      130 CALL                             R8 2 1
      131 JUMPIF                           R8 ; [+1]
      132 GETUPVAL                         R8 0
      133 MOVE                             R5 R8
      134 GETIMPORT                        R8 K2 [_G]
      136 GETTABLEKS                       R7 R8 K3 ["__DEV__"]
      138 JUMPIFNOT                        R7 ; [+28]
      139 GETUPVAL                         R7 10
      140 JUMPIFNOT                        R7 ; [+26]
      141 GETTABLEKS                       R8 R0 K24 ["mode"]
      143 GETUPVAL                         R9 11
      144 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
      146 GETIMPORT                        R7 K27 [bit32.band]
      148 CALL                             R7 2 1
      149 JUMPIFEQKN                       R7 K28 [0] ; [+17]
      151 GETUPVAL                         R7 12
      152 CALL                             R7 0 0
      153 GETIMPORT                        R7 K30 [pcall]
      155 GETTABLEKS                       R8 R1 K31 ["__ctor"]
      157 MOVE                             R9 R2
      158 MOVE                             R10 R5
      159 CALL                             R7 3 2
      160 GETUPVAL                         R9 13
      161 CALL                             R9 0 0
      162 JUMPIF                           R7 ; [+4]
      163 GETIMPORT                        R9 K32 [error]
      165 MOVE                             R10 R8
      166 CALL                             R9 1 0
      167 GETTABLEKS                       R7 R1 K31 ["__ctor"]
      169 MOVE                             R8 R2
      170 MOVE                             R9 R5
      171 CALL                             R7 2 1
      172 GETTABLEKS                       R8 R7 K33 ["state"]
      174 SETTABLEKS                       R8 R0 K34 ["memoizedState"]
      176 GETTABLEKS                       R8 R0 K34 ["memoizedState"]
      178 GETUPVAL                         R10 14
      179 JUMPIFNOTEQKNIL                  R10 ; [+3]
      181 GETUPVAL                         R10 15
      182 CALL                             R10 0 0
      183 GETUPVAL                         R9 14
      184 SETTABLEKS                       R9 R7 K35 ["__updater"]
      186 SETTABLEKS                       R7 R0 K36 ["stateNode"]
      188 GETUPVAL                         R9 16
      189 MOVE                             R10 R7
      190 MOVE                             R11 R0
      191 CALL                             R9 2 0
      192 GETIMPORT                        R10 K2 [_G]
      194 GETTABLEKS                       R9 R10 K3 ["__DEV__"]
      196 JUMPIFNOT                        R9 ; [+3]
      197 GETUPVAL                         R9 17
      198 SETTABLEKS                       R9 R7 K37 ["_reactInternalInstance"]
      200 GETIMPORT                        R10 K2 [_G]
      202 GETTABLEKS                       R9 R10 K3 ["__DEV__"]
      204 JUMPIFNOT                        R9 ; [+178]
      205 GETTABLEKS                       R10 R1 K38 ["getDerivedStateFromProps"]
      207 FASTCALL1                        TYPEOF R10 ; [+2]
      208 GETIMPORT                        R9 K9 [typeof]
      210 CALL                             R9 1 1
      211 JUMPIFNOTEQKS                    R9 K39 ["function"] ; [+21]
      213 GETUPVAL                         R9 18
      214 JUMPIFNOTEQ                      R8 R9 ; [+18]
      216 GETUPVAL                         R10 5
      217 MOVE                             R11 R1
      218 CALL                             R10 1 1
      219 ORK                              R9 R10 K22 ["Component"]
      220 GETUPVAL                         R11 19
      221 GETTABLE                         R10 R11 R9
      222 JUMPIF                           R10 ; [+10]
      223 GETUPVAL                         R10 19
      224 LOADB                            R11 1
      225 SETTABLE                         R11 R10 R9
      226 GETUPVAL                         R11 4
      227 GETTABLEKS                       R10 R11 K20 ["error"]
      229 LOADK                            R11 K40 ["`%s` uses `getDerivedStateFromProps` but its initial state has not been initialized. This is not recommended. Instead, define the initial state by passing an object to `self:setState` in the `init` method of `%s`. This ensures that `getDerivedStateFromProps` arguments have a consistent shape."]
      230 MOVE                             R12 R9
      231 MOVE                             R13 R9
      232 CALL                             R10 3 0
      233 GETTABLEKS                       R10 R1 K38 ["getDerivedStateFromProps"]
      235 FASTCALL1                        TYPEOF R10 ; [+2]
      236 GETIMPORT                        R9 K9 [typeof]
      238 CALL                             R9 1 1
      239 JUMPIFEQKS                       R9 K39 ["function"] ; [+9]
      241 GETTABLEKS                       R10 R7 K41 ["getSnapshotBeforeUpdate"]
      243 FASTCALL1                        TYPEOF R10 ; [+2]
      244 GETIMPORT                        R9 K9 [typeof]
      246 CALL                             R9 1 1
      247 JUMPIFNOTEQKS                    R9 K39 ["function"] ; [+135]
      249 LOADNIL                          R9
      250 LOADNIL                          R10
      251 LOADNIL                          R11
      252 GETTABLEKS                       R13 R7 K42 ["componentWillMount"]
      254 FASTCALL1                        TYPEOF R13 ; [+2]
      255 GETIMPORT                        R12 K9 [typeof]
      257 CALL                             R12 1 1
      258 JUMPIFNOTEQKS                    R12 K39 ["function"] ; [+3]
      260 LOADK                            R9 K42 ["componentWillMount"]
      261 JUMP                             ; [+9]
      262 GETTABLEKS                       R13 R7 K43 ["UNSAFE_componentWillMount"]
      264 FASTCALL1                        TYPEOF R13 ; [+2]
      265 GETIMPORT                        R12 K9 [typeof]
      267 CALL                             R12 1 1
      268 JUMPIFNOTEQKS                    R12 K39 ["function"] ; [+2]
      270 LOADK                            R9 K43 ["UNSAFE_componentWillMount"]
      271 GETTABLEKS                       R13 R7 K44 ["componentWillReceiveProps"]
      273 FASTCALL1                        TYPEOF R13 ; [+2]
      274 GETIMPORT                        R12 K9 [typeof]
      276 CALL                             R12 1 1
      277 JUMPIFNOTEQKS                    R12 K39 ["function"] ; [+3]
      279 LOADK                            R10 K44 ["componentWillReceiveProps"]
      280 JUMP                             ; [+9]
      281 GETTABLEKS                       R13 R7 K45 ["UNSAFE_componentWillReceiveProps"]
      283 FASTCALL1                        TYPEOF R13 ; [+2]
      284 GETIMPORT                        R12 K9 [typeof]
      286 CALL                             R12 1 1
      287 JUMPIFNOTEQKS                    R12 K39 ["function"] ; [+2]
      289 LOADK                            R10 K45 ["UNSAFE_componentWillReceiveProps"]
      290 GETTABLEKS                       R13 R7 K46 ["componentWillUpdate"]
      292 FASTCALL1                        TYPEOF R13 ; [+2]
      293 GETIMPORT                        R12 K9 [typeof]
      295 CALL                             R12 1 1
      296 JUMPIFNOTEQKS                    R12 K39 ["function"] ; [+3]
      298 LOADK                            R11 K46 ["componentWillUpdate"]
      299 JUMP                             ; [+9]
      300 GETTABLEKS                       R13 R7 K47 ["UNSAFE_componentWillUpdate"]
      302 FASTCALL1                        TYPEOF R13 ; [+2]
      303 GETIMPORT                        R12 K9 [typeof]
      305 CALL                             R12 1 1
      306 JUMPIFNOTEQKS                    R12 K39 ["function"] ; [+2]
      308 LOADK                            R11 K47 ["UNSAFE_componentWillUpdate"]
      309 JUMPIFNOTEQKNIL                  R9 ; [+5]
      311 JUMPIFNOTEQKNIL                  R10 ; [+3]
      313 JUMPIFEQKNIL                     R11 ; [+69]
      315 GETUPVAL                         R13 5
      316 MOVE                             R14 R1
      317 CALL                             R13 1 1
      318 ORK                              R12 R13 K22 ["Component"]
      319 LOADNIL                          R13
      320 GETTABLEKS                       R15 R1 K38 ["getDerivedStateFromProps"]
      322 FASTCALL1                        TYPEOF R15 ; [+2]
      323 GETIMPORT                        R14 K9 [typeof]
      325 CALL                             R14 1 1
      326 JUMPIFNOTEQKS                    R14 K39 ["function"] ; [+3]
      328 LOADK                            R13 K48 ["getDerivedStateFromProps()"]
      329 JUMP                             ; [+1]
      330 LOADK                            R13 K49 ["getSnapshotBeforeUpdate()"]
      331 LOADNIL                          R14
      332 JUMPIFEQKNIL                     R9 ; [+9]
      334 LOADK                            R15 K50 ["\n  "]
      335 FASTCALL1                        TOSTRING R9 ; [+3]
      336 MOVE                             R17 R9
      337 GETIMPORT                        R16 K52 [tostring]
      339 CALL                             R16 1 1
      340 CONCAT                           R14 R15 R16
      341 JUMP                             ; [+1]
      342 LOADK                            R14 K6 [""]
      343 LOADNIL                          R15
      344 JUMPIFEQKNIL                     R10 ; [+9]
      346 LOADK                            R16 K50 ["\n  "]
      347 FASTCALL1                        TOSTRING R10 ; [+3]
      348 MOVE                             R18 R10
      349 GETIMPORT                        R17 K52 [tostring]
      351 CALL                             R17 1 1
      352 CONCAT                           R15 R16 R17
      353 JUMP                             ; [+1]
      354 LOADK                            R15 K6 [""]
      355 LOADNIL                          R16
      356 JUMPIFEQKNIL                     R11 ; [+9]
      358 LOADK                            R17 K50 ["\n  "]
      359 FASTCALL1                        TOSTRING R11 ; [+3]
      360 MOVE                             R19 R11
      361 GETIMPORT                        R18 K52 [tostring]
      363 CALL                             R18 1 1
      364 CONCAT                           R16 R17 R18
      365 JUMP                             ; [+1]
      366 LOADK                            R16 K6 [""]
      367 GETUPVAL                         R18 20
      368 GETTABLE                         R17 R18 R12
      369 JUMPIF                           R17 ; [+13]
      370 GETUPVAL                         R17 20
      371 LOADB                            R18 1
      372 SETTABLE                         R18 R17 R12
      373 GETUPVAL                         R18 4
      374 GETTABLEKS                       R17 R18 K20 ["error"]
      376 LOADK                            R18 K53 ["Unsafe legacy lifecycles will not be called for components using new component APIs.\n\n%s uses %s but also contains the following legacy lifecycles:%s%s%s\n\nThe above lifecycles should be removed. Learn more about this warning here:\nhttps://reactjs.org/link/unsafe-component-lifecycles"]
      377 MOVE                             R19 R12
      378 MOVE                             R20 R13
      379 MOVE                             R21 R14
      380 MOVE                             R22 R15
      381 MOVE                             R23 R16
      382 CALL                             R17 6 0
      383 JUMPIFNOT                        R3 ; [+5]
      384 GETUPVAL                         R9 21
      385 MOVE                             R10 R0
      386 MOVE                             R11 R4
      387 MOVE                             R12 R5
      388 CALL                             R9 3 0
      389 RETURN                           R7 1

PROTO_12:
        0 GETTABLEKS                       R2 R1 K0 ["state"]
        2 GETTABLEKS                       R4 R1 K1 ["componentWillMount"]
        4 FASTCALL1                        TYPEOF R4 ; [+2]
        5 GETIMPORT                        R3 K3 [typeof]
        7 CALL                             R3 1 1
        8 JUMPIFNOTEQKS                    R3 K4 ["function"] ; [+4]
       10 NAMECALL                         R3 R1 K1 ["componentWillMount"]
       12 CALL                             R3 1 0
       13 GETTABLEKS                       R4 R1 K5 ["UNSAFE_componentWillMount"]
       15 FASTCALL1                        TYPEOF R4 ; [+2]
       16 GETIMPORT                        R3 K3 [typeof]
       18 CALL                             R3 1 1
       19 JUMPIFNOTEQKS                    R3 K4 ["function"] ; [+4]
       21 NAMECALL                         R3 R1 K5 ["UNSAFE_componentWillMount"]
       23 CALL                             R3 1 0
       24 GETTABLEKS                       R3 R1 K0 ["state"]
       26 JUMPIFEQ                         R2 R3 ; [+29]
       28 GETIMPORT                        R4 K7 [_G]
       30 GETTABLEKS                       R3 R4 K8 ["__DEV__"]
       32 JUMPIFNOT                        R3 ; [+10]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R3 R4 K9 ["error"]
       36 LOADK                            R4 K10 ["%s.componentWillMount(): Assigning directly to this.state is deprecated (except inside a component's constructor). Use setState instead."]
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R7 R0 K12 ["type"]
       40 CALL                             R6 1 1
       41 ORK                              R5 R6 K11 ["Component"]
       42 CALL                             R3 2 0
       43 GETUPVAL                         R5 2
       44 JUMPIFNOTEQKNIL                  R5 ; [+3]
       46 GETUPVAL                         R5 3
       47 CALL                             R5 0 0
       48 GETUPVAL                         R4 2
       49 GETTABLEKS                       R3 R4 K13 ["enqueueReplaceState"]
       51 MOVE                             R4 R1
       52 GETTABLEKS                       R5 R1 K0 ["state"]
       54 LOADNIL                          R6
       55 CALL                             R3 3 0
       56 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R4 R1 K0 ["state"]
        2 GETTABLEKS                       R6 R1 K1 ["componentWillReceiveProps"]
        4 FASTCALL1                        TYPEOF R6 ; [+2]
        5 GETIMPORT                        R5 K3 [typeof]
        7 CALL                             R5 1 1
        8 JUMPIFNOTEQKS                    R5 K4 ["function"] ; [+6]
       10 MOVE                             R7 R2
       11 MOVE                             R8 R3
       12 NAMECALL                         R5 R1 K1 ["componentWillReceiveProps"]
       14 CALL                             R5 3 0
       15 GETTABLEKS                       R6 R1 K5 ["UNSAFE_componentWillReceiveProps"]
       17 FASTCALL1                        TYPEOF R6 ; [+2]
       18 GETIMPORT                        R5 K3 [typeof]
       20 CALL                             R5 1 1
       21 JUMPIFNOTEQKS                    R5 K4 ["function"] ; [+6]
       23 MOVE                             R7 R2
       24 MOVE                             R8 R3
       25 NAMECALL                         R5 R1 K5 ["UNSAFE_componentWillReceiveProps"]
       27 CALL                             R5 3 0
       28 GETTABLEKS                       R5 R1 K0 ["state"]
       30 JUMPIFEQ                         R5 R4 ; [+36]
       32 GETIMPORT                        R6 K7 [_G]
       34 GETTABLEKS                       R5 R6 K8 ["__DEV__"]
       36 JUMPIFNOT                        R5 ; [+17]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R7 R0 K10 ["type"]
       40 CALL                             R6 1 1
       41 ORK                              R5 R6 K9 ["Component"]
       42 GETUPVAL                         R7 1
       43 GETTABLE                         R6 R7 R5
       44 JUMPIF                           R6 ; [+9]
       45 GETUPVAL                         R6 1
       46 LOADB                            R7 1
       47 SETTABLE                         R7 R6 R5
       48 GETUPVAL                         R7 2
       49 GETTABLEKS                       R6 R7 K11 ["error"]
       51 LOADK                            R7 K12 ["%s.componentWillReceiveProps(): Assigning directly to this.state is deprecated (except inside a component's constructor). Use setState instead."]
       52 MOVE                             R8 R5
       53 CALL                             R6 2 0
       54 GETUPVAL                         R7 3
       55 JUMPIFNOTEQKNIL                  R7 ; [+3]
       57 GETUPVAL                         R7 4
       58 CALL                             R7 0 0
       59 GETUPVAL                         R6 3
       60 GETTABLEKS                       R5 R6 K13 ["enqueueReplaceState"]
       62 MOVE                             R6 R1
       63 GETTABLEKS                       R7 R1 K0 ["state"]
       65 LOADNIL                          R8
       66 CALL                             R5 3 0
       67 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R5 K1 [_G]
        2 GETTABLEKS                       R4 R5 K2 ["__DEV__"]
        4 JUMPIFNOT                        R4 ; [+5]
        5 GETUPVAL                         R4 0
        6 MOVE                             R5 R0
        7 MOVE                             R6 R1
        8 MOVE                             R7 R2
        9 CALL                             R4 3 0
       10 GETTABLEKS                       R4 R0 K3 ["stateNode"]
       12 SETTABLEKS                       R2 R4 K4 ["props"]
       14 GETTABLEKS                       R5 R0 K5 ["memoizedState"]
       16 SETTABLEKS                       R5 R4 K6 ["state"]
       18 GETUPVAL                         R5 1
       19 SETTABLEKS                       R5 R4 K7 ["__refs"]
       21 GETUPVAL                         R5 2
       22 MOVE                             R6 R0
       23 CALL                             R5 1 0
       24 LOADNIL                          R5
       25 FASTCALL1                        TYPEOF R1 ; [+3]
       26 MOVE                             R7 R1
       27 GETIMPORT                        R6 K9 [typeof]
       29 CALL                             R6 1 1
       30 JUMPIFNOTEQKS                    R6 K10 ["table"] ; [+3]
       32 GETTABLEKS                       R5 R1 K11 ["contextType"]
       34 JUMPIFEQKNIL                     R5 ; [+14]
       36 FASTCALL1                        TYPEOF R5 ; [+3]
       37 MOVE                             R7 R5
       38 GETIMPORT                        R6 K9 [typeof]
       40 CALL                             R6 1 1
       41 JUMPIFNOTEQKS                    R6 K10 ["table"] ; [+7]
       43 GETUPVAL                         R6 3
       44 MOVE                             R7 R5
       45 CALL                             R6 1 1
       46 SETTABLEKS                       R6 R4 K12 ["context"]
       48 JUMP                             ; [+17]
       49 GETUPVAL                         R6 4
       50 JUMPIFNOT                        R6 ; [+4]
       51 GETUPVAL                         R6 5
       52 SETTABLEKS                       R6 R4 K12 ["context"]
       54 JUMP                             ; [+11]
       55 GETUPVAL                         R6 6
       56 MOVE                             R7 R0
       57 MOVE                             R8 R1
       58 LOADB                            R9 1
       59 CALL                             R6 3 1
       60 GETUPVAL                         R7 7
       61 MOVE                             R8 R0
       62 MOVE                             R9 R6
       63 CALL                             R7 2 1
       64 SETTABLEKS                       R7 R4 K12 ["context"]
       66 GETIMPORT                        R7 K1 [_G]
       68 GETTABLEKS                       R6 R7 K2 ["__DEV__"]
       70 JUMPIFNOT                        R6 ; [+44]
       71 GETTABLEKS                       R6 R4 K6 ["state"]
       73 JUMPIFNOTEQ                      R6 R2 ; [+17]
       75 GETUPVAL                         R7 8
       76 MOVE                             R8 R1
       77 CALL                             R7 1 1
       78 ORK                              R6 R7 K13 ["Component"]
       79 GETUPVAL                         R8 9
       80 GETTABLE                         R7 R8 R6
       81 JUMPIF                           R7 ; [+9]
       82 GETUPVAL                         R7 9
       83 LOADB                            R8 1
       84 SETTABLE                         R8 R7 R6
       85 GETUPVAL                         R8 10
       86 GETTABLEKS                       R7 R8 K14 ["error"]
       88 LOADK                            R8 K15 ["%s: It is not recommended to assign props directly to state because updates to props won't be reflected in state. In most cases, it is better to use props directly."]
       89 MOVE                             R9 R6
       90 CALL                             R7 2 0
       91 GETTABLEKS                       R7 R0 K16 ["mode"]
       93 GETUPVAL                         R8 11
       94 FASTCALL2                        BIT32_BAND R7 R8 ; [+3]
       96 GETIMPORT                        R6 K19 [bit32.band]
       98 CALL                             R6 2 1
       99 JUMPIFEQKN                       R6 K20 [0] ; [+7]
      101 GETUPVAL                         R7 12
      102 GETTABLEKS                       R6 R7 K21 ["recordLegacyContextWarning"]
      104 MOVE                             R7 R0
      105 MOVE                             R8 R4
      106 CALL                             R6 2 0
      107 GETUPVAL                         R6 13
      108 JUMPIFNOT                        R6 ; [+6]
      109 GETUPVAL                         R7 12
      110 GETTABLEKS                       R6 R7 K22 ["recordUnsafeLifecycleWarnings"]
      112 MOVE                             R7 R0
      113 MOVE                             R8 R4
      114 CALL                             R6 2 0
      115 GETUPVAL                         R6 14
      116 MOVE                             R7 R0
      117 MOVE                             R8 R2
      118 MOVE                             R9 R4
      119 MOVE                             R10 R3
      120 CALL                             R6 4 0
      121 GETTABLEKS                       R6 R0 K5 ["memoizedState"]
      123 SETTABLEKS                       R6 R4 K6 ["state"]
      125 LOADNIL                          R6
      126 FASTCALL1                        TYPEOF R1 ; [+3]
      127 MOVE                             R8 R1
      128 GETIMPORT                        R7 K9 [typeof]
      130 CALL                             R7 1 1
      131 JUMPIFNOTEQKS                    R7 K10 ["table"] ; [+3]
      133 GETTABLEKS                       R6 R1 K23 ["getDerivedStateFromProps"]
      135 FASTCALL1                        TYPEOF R6 ; [+3]
      136 MOVE                             R8 R6
      137 GETIMPORT                        R7 K9 [typeof]
      139 CALL                             R7 1 1
      140 JUMPIFNOTEQKS                    R7 K24 ["function"] ; [+11]
      142 GETUPVAL                         R7 15
      143 MOVE                             R8 R0
      144 MOVE                             R9 R1
      145 MOVE                             R10 R6
      146 MOVE                             R11 R2
      147 CALL                             R7 4 0
      148 GETTABLEKS                       R7 R0 K5 ["memoizedState"]
      150 SETTABLEKS                       R7 R4 K6 ["state"]
      152 FASTCALL1                        TYPEOF R1 ; [+3]
      153 MOVE                             R8 R1
      154 GETIMPORT                        R7 K9 [typeof]
      156 CALL                             R7 1 1
      157 JUMPIFNOTEQKS                    R7 K10 ["table"] ; [+47]
      159 GETTABLEKS                       R8 R1 K23 ["getDerivedStateFromProps"]
      161 FASTCALL1                        TYPEOF R8 ; [+2]
      162 GETIMPORT                        R7 K9 [typeof]
      164 CALL                             R7 1 1
      165 JUMPIFEQKS                       R7 K24 ["function"] ; [+39]
      167 GETTABLEKS                       R8 R4 K25 ["getSnapshotBeforeUpdate"]
      169 FASTCALL1                        TYPEOF R8 ; [+2]
      170 GETIMPORT                        R7 K9 [typeof]
      172 CALL                             R7 1 1
      173 JUMPIFEQKS                       R7 K24 ["function"] ; [+31]
      175 GETTABLEKS                       R8 R4 K26 ["UNSAFE_componentWillMount"]
      177 FASTCALL1                        TYPEOF R8 ; [+2]
      178 GETIMPORT                        R7 K9 [typeof]
      180 CALL                             R7 1 1
      181 JUMPIFEQKS                       R7 K24 ["function"] ; [+9]
      183 GETTABLEKS                       R8 R4 K27 ["componentWillMount"]
      185 FASTCALL1                        TYPEOF R8 ; [+2]
      186 GETIMPORT                        R7 K9 [typeof]
      188 CALL                             R7 1 1
      189 JUMPIFNOTEQKS                    R7 K24 ["function"] ; [+15]
      191 GETUPVAL                         R7 16
      192 MOVE                             R8 R0
      193 MOVE                             R9 R4
      194 CALL                             R7 2 0
      195 GETUPVAL                         R7 14
      196 MOVE                             R8 R0
      197 MOVE                             R9 R2
      198 MOVE                             R10 R4
      199 MOVE                             R11 R3
      200 CALL                             R7 4 0
      201 GETTABLEKS                       R7 R0 K5 ["memoizedState"]
      203 SETTABLEKS                       R7 R4 K6 ["state"]
      205 GETTABLEKS                       R8 R4 K28 ["componentDidMount"]
      207 FASTCALL1                        TYPEOF R8 ; [+2]
      208 GETIMPORT                        R7 K9 [typeof]
      210 CALL                             R7 1 1
      211 JUMPIFNOTEQKS                    R7 K24 ["function"] ; [+35]
      213 GETIMPORT                        R8 K1 [_G]
      215 GETTABLEKS                       R7 R8 K2 ["__DEV__"]
      217 JUMPIFNOT                        R7 ; [+19]
      218 GETUPVAL                         R7 17
      219 JUMPIFNOT                        R7 ; [+17]
      220 GETTABLEKS                       R8 R0 K29 ["flags"]
      222 GETUPVAL                         R10 18
      223 GETUPVAL                         R11 19
      224 FASTCALL2                        BIT32_BOR R10 R11 ; [+3]
      226 GETIMPORT                        R9 K31 [bit32.bor]
      228 CALL                             R9 2 1
      229 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
      231 GETIMPORT                        R7 K31 [bit32.bor]
      233 CALL                             R7 2 1
      234 SETTABLEKS                       R7 R0 K29 ["flags"]
      236 RETURN                           R0 0
      237 GETTABLEKS                       R8 R0 K29 ["flags"]
      239 GETUPVAL                         R9 19
      240 FASTCALL2                        BIT32_BOR R8 R9 ; [+3]
      242 GETIMPORT                        R7 K31 [bit32.bor]
      244 CALL                             R7 2 1
      245 SETTABLEKS                       R7 R0 K29 ["flags"]
      247 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R4 R0 K0 ["stateNode"]
        2 GETTABLEKS                       R5 R0 K1 ["memoizedProps"]
        4 SETTABLEKS                       R5 R4 K2 ["props"]
        6 GETTABLEKS                       R6 R4 K3 ["context"]
        8 GETTABLEKS                       R7 R1 K4 ["contextType"]
       10 GETUPVAL                         R8 0
       11 JUMPIFEQKNIL                     R7 ; [+13]
       13 FASTCALL1                        TYPEOF R7 ; [+3]
       14 MOVE                             R10 R7
       15 GETIMPORT                        R9 K6 [typeof]
       17 CALL                             R9 1 1
       18 JUMPIFNOTEQKS                    R9 K7 ["table"] ; [+6]
       20 GETUPVAL                         R9 1
       21 MOVE                             R10 R7
       22 CALL                             R9 1 1
       23 MOVE                             R8 R9
       24 JUMP                             ; [+12]
       25 GETUPVAL                         R9 2
       26 JUMPIF                           R9 ; [+10]
       27 GETUPVAL                         R9 3
       28 MOVE                             R10 R0
       29 MOVE                             R11 R1
       30 LOADB                            R12 1
       31 CALL                             R9 3 1
       32 GETUPVAL                         R10 4
       33 MOVE                             R11 R0
       34 MOVE                             R12 R9
       35 CALL                             R10 2 1
       36 MOVE                             R8 R10
       37 GETTABLEKS                       R9 R1 K8 ["getDerivedStateFromProps"]
       39 LOADB                            R10 1
       40 FASTCALL1                        TYPEOF R9 ; [+3]
       41 MOVE                             R12 R9
       42 GETIMPORT                        R11 K6 [typeof]
       44 CALL                             R11 1 1
       45 JUMPIFEQKS                       R11 K9 ["function"] ; [+11]
       47 GETTABLEKS                       R12 R4 K10 ["getSnapshotBeforeUpdate"]
       49 FASTCALL1                        TYPEOF R12 ; [+2]
       50 GETIMPORT                        R11 K6 [typeof]
       52 CALL                             R11 1 1
       53 JUMPIFEQKS                       R11 K9 ["function"] ; [+2]
       55 LOADB                            R10 0 +1
       56 LOADB                            R10 1
       57 JUMPIF                           R10 ; [+27]
       58 GETTABLEKS                       R12 R4 K11 ["UNSAFE_componentWillReceiveProps"]
       60 FASTCALL1                        TYPEOF R12 ; [+2]
       61 GETIMPORT                        R11 K6 [typeof]
       63 CALL                             R11 1 1
       64 JUMPIFEQKS                       R11 K9 ["function"] ; [+9]
       66 GETTABLEKS                       R12 R4 K12 ["componentWillReceiveProps"]
       68 FASTCALL1                        TYPEOF R12 ; [+2]
       69 GETIMPORT                        R11 K6 [typeof]
       71 CALL                             R11 1 1
       72 JUMPIFNOTEQKS                    R11 K9 ["function"] ; [+12]
       74 JUMPIFNOTEQ                      R5 R2 ; [+3]
       76 JUMPIFEQ                         R6 R8 ; [+8]
       78 GETGLOBAL                        R11 K13 ["callComponentWillReceiveProps"]
       80 MOVE                             R12 R0
       81 MOVE                             R13 R4
       82 MOVE                             R14 R2
       83 MOVE                             R15 R8
       84 CALL                             R11 4 0
       85 GETUPVAL                         R11 5
       86 CALL                             R11 0 0
       87 GETTABLEKS                       R11 R0 K14 ["memoizedState"]
       89 SETTABLEKS                       R11 R4 K15 ["state"]
       91 MOVE                             R12 R11
       92 GETUPVAL                         R13 6
       93 MOVE                             R14 R0
       94 MOVE                             R15 R2
       95 MOVE                             R16 R4
       96 MOVE                             R17 R3
       97 CALL                             R13 4 0
       98 GETTABLEKS                       R12 R0 K14 ["memoizedState"]
      100 JUMPIFNOTEQ                      R5 R2 ; [+47]
      102 JUMPIFNOTEQ                      R11 R12 ; [+45]
      104 GETUPVAL                         R13 7
      105 CALL                             R13 0 1
      106 JUMPIF                           R13 ; [+41]
      107 GETUPVAL                         R13 8
      108 CALL                             R13 0 1
      109 JUMPIF                           R13 ; [+38]
      110 GETTABLEKS                       R14 R4 K16 ["componentDidMount"]
      112 FASTCALL1                        TYPEOF R14 ; [+2]
      113 GETIMPORT                        R13 K6 [typeof]
      115 CALL                             R13 1 1
      116 JUMPIFNOTEQKS                    R13 K9 ["function"] ; [+29]
      118 GETIMPORT                        R14 K18 [_G]
      120 GETTABLEKS                       R13 R14 K19 ["__DEV__"]
      122 JUMPIFNOT                        R13 ; [+13]
      123 GETUPVAL                         R13 9
      124 JUMPIFNOT                        R13 ; [+11]
      125 GETTABLEKS                       R14 R0 K20 ["flags"]
      127 GETUPVAL                         R15 10
      128 GETUPVAL                         R16 11
      129 FASTCALL                         BIT32_BOR ; [+2]
      130 GETIMPORT                        R13 K23 [bit32.bor]
      132 CALL                             R13 3 1
      133 SETTABLEKS                       R13 R0 K20 ["flags"]
      135 JUMP                             ; [+10]
      136 GETTABLEKS                       R14 R0 K20 ["flags"]
      138 GETUPVAL                         R15 11
      139 FASTCALL2                        BIT32_BOR R14 R15 ; [+3]
      141 GETIMPORT                        R13 K23 [bit32.bor]
      143 CALL                             R13 2 1
      144 SETTABLEKS                       R13 R0 K20 ["flags"]
      146 LOADB                            R13 0
      147 RETURN                           R13 1
      148 FASTCALL1                        TYPEOF R9 ; [+3]
      149 MOVE                             R14 R9
      150 GETIMPORT                        R13 K6 [typeof]
      152 CALL                             R13 1 1
      153 JUMPIFNOTEQKS                    R13 K9 ["function"] ; [+9]
      155 GETUPVAL                         R13 12
      156 MOVE                             R14 R0
      157 MOVE                             R15 R1
      158 MOVE                             R16 R9
      159 MOVE                             R17 R2
      160 CALL                             R13 4 0
      161 GETTABLEKS                       R12 R0 K14 ["memoizedState"]
      163 GETUPVAL                         R13 8
      164 CALL                             R13 0 1
      165 JUMPIF                           R13 ; [+10]
      166 GETGLOBAL                        R13 K24 ["checkShouldComponentUpdate"]
      168 MOVE                             R14 R0
      169 MOVE                             R15 R1
      170 MOVE                             R16 R5
      171 MOVE                             R17 R2
      172 MOVE                             R18 R11
      173 MOVE                             R19 R12
      174 MOVE                             R20 R8
      175 CALL                             R13 7 1
      176 JUMPIFNOT                        R13 ; [+76]
      177 JUMPIF                           R10 ; [+38]
      178 GETTABLEKS                       R15 R4 K25 ["UNSAFE_componentWillMount"]
      180 FASTCALL1                        TYPEOF R15 ; [+2]
      181 GETIMPORT                        R14 K6 [typeof]
      183 CALL                             R14 1 1
      184 JUMPIFEQKS                       R14 K9 ["function"] ; [+9]
      186 GETTABLEKS                       R15 R4 K26 ["componentWillMount"]
      188 FASTCALL1                        TYPEOF R15 ; [+2]
      189 GETIMPORT                        R14 K6 [typeof]
      191 CALL                             R14 1 1
      192 JUMPIFNOTEQKS                    R14 K9 ["function"] ; [+23]
      194 GETTABLEKS                       R15 R4 K26 ["componentWillMount"]
      196 FASTCALL1                        TYPEOF R15 ; [+2]
      197 GETIMPORT                        R14 K6 [typeof]
      199 CALL                             R14 1 1
      200 JUMPIFNOTEQKS                    R14 K9 ["function"] ; [+4]
      202 NAMECALL                         R14 R4 K26 ["componentWillMount"]
      204 CALL                             R14 1 0
      205 GETTABLEKS                       R15 R4 K25 ["UNSAFE_componentWillMount"]
      207 FASTCALL1                        TYPEOF R15 ; [+2]
      208 GETIMPORT                        R14 K6 [typeof]
      210 CALL                             R14 1 1
      211 JUMPIFNOTEQKS                    R14 K9 ["function"] ; [+4]
      213 NAMECALL                         R14 R4 K25 ["UNSAFE_componentWillMount"]
      215 CALL                             R14 1 0
      216 GETTABLEKS                       R15 R4 K16 ["componentDidMount"]
      218 FASTCALL1                        TYPEOF R15 ; [+2]
      219 GETIMPORT                        R14 K6 [typeof]
      221 CALL                             R14 1 1
      222 JUMPIFNOTEQKS                    R14 K9 ["function"] ; [+70]
      224 GETIMPORT                        R15 K18 [_G]
      226 GETTABLEKS                       R14 R15 K19 ["__DEV__"]
      228 JUMPIFNOT                        R14 ; [+13]
      229 GETUPVAL                         R14 9
      230 JUMPIFNOT                        R14 ; [+11]
      231 GETTABLEKS                       R15 R0 K20 ["flags"]
      233 GETUPVAL                         R16 10
      234 GETUPVAL                         R17 11
      235 FASTCALL                         BIT32_BOR ; [+2]
      236 GETIMPORT                        R14 K23 [bit32.bor]
      238 CALL                             R14 3 1
      239 SETTABLEKS                       R14 R0 K20 ["flags"]
      241 JUMP                             ; [+51]
      242 GETTABLEKS                       R15 R0 K20 ["flags"]
      244 GETUPVAL                         R16 11
      245 FASTCALL2                        BIT32_BOR R15 R16 ; [+3]
      247 GETIMPORT                        R14 K23 [bit32.bor]
      249 CALL                             R14 2 1
      250 SETTABLEKS                       R14 R0 K20 ["flags"]
      252 JUMP                             ; [+40]
      253 GETTABLEKS                       R15 R4 K16 ["componentDidMount"]
      255 FASTCALL1                        TYPEOF R15 ; [+2]
      256 GETIMPORT                        R14 K6 [typeof]
      258 CALL                             R14 1 1
      259 JUMPIFNOTEQKS                    R14 K9 ["function"] ; [+29]
      261 GETIMPORT                        R15 K18 [_G]
      263 GETTABLEKS                       R14 R15 K19 ["__DEV__"]
      265 JUMPIFNOT                        R14 ; [+13]
      266 GETUPVAL                         R14 9
      267 JUMPIFNOT                        R14 ; [+11]
      268 GETTABLEKS                       R15 R0 K20 ["flags"]
      270 GETUPVAL                         R16 10
      271 GETUPVAL                         R17 11
      272 FASTCALL                         BIT32_BOR ; [+2]
      273 GETIMPORT                        R14 K23 [bit32.bor]
      275 CALL                             R14 3 1
      276 SETTABLEKS                       R14 R0 K20 ["flags"]
      278 JUMP                             ; [+10]
      279 GETTABLEKS                       R15 R0 K20 ["flags"]
      281 GETUPVAL                         R16 11
      282 FASTCALL2                        BIT32_BOR R15 R16 ; [+3]
      284 GETIMPORT                        R14 K23 [bit32.bor]
      286 CALL                             R14 2 1
      287 SETTABLEKS                       R14 R0 K20 ["flags"]
      289 SETTABLEKS                       R2 R0 K1 ["memoizedProps"]
      291 SETTABLEKS                       R12 R0 K14 ["memoizedState"]
      293 SETTABLEKS                       R2 R4 K2 ["props"]
      295 SETTABLEKS                       R12 R4 K15 ["state"]
      297 SETTABLEKS                       R8 R4 K3 ["context"]
      299 RETURN                           R13 1

PROTO_16:
        0 GETTABLEKS                       R5 R1 K0 ["stateNode"]
        2 GETUPVAL                         R6 0
        3 MOVE                             R7 R0
        4 MOVE                             R8 R1
        5 CALL                             R6 2 0
        6 GETTABLEKS                       R6 R1 K1 ["memoizedProps"]
        8 GETTABLEKS                       R8 R1 K2 ["type"]
       10 GETTABLEKS                       R9 R1 K3 ["elementType"]
       12 JUMPIFNOTEQ                      R8 R9 ; [+3]
       14 MOVE                             R7 R6
       15 JUMPIF                           R7 ; [+5]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R8 R1 K2 ["type"]
       19 MOVE                             R9 R6
       20 CALL                             R7 2 1
       21 SETTABLEKS                       R7 R5 K4 ["props"]
       23 GETTABLEKS                       R8 R1 K5 ["pendingProps"]
       25 GETTABLEKS                       R9 R5 K6 ["context"]
       27 LOADNIL                          R10
       28 LOADNIL                          R11
       29 FASTCALL1                        TYPEOF R2 ; [+3]
       30 MOVE                             R13 R2
       31 GETIMPORT                        R12 K8 [typeof]
       33 CALL                             R12 1 1
       34 JUMPIFNOTEQKS                    R12 K9 ["table"] ; [+5]
       36 GETTABLEKS                       R10 R2 K10 ["contextType"]
       38 GETTABLEKS                       R11 R2 K11 ["getDerivedStateFromProps"]
       40 GETUPVAL                         R12 2
       41 FASTCALL1                        TYPEOF R10 ; [+3]
       42 MOVE                             R14 R10
       43 GETIMPORT                        R13 K8 [typeof]
       45 CALL                             R13 1 1
       46 JUMPIFNOTEQKS                    R13 K9 ["table"] ; [+6]
       48 GETUPVAL                         R13 3
       49 MOVE                             R14 R10
       50 CALL                             R13 1 1
       51 MOVE                             R12 R13
       52 JUMP                             ; [+12]
       53 GETUPVAL                         R13 4
       54 JUMPIF                           R13 ; [+10]
       55 GETUPVAL                         R13 5
       56 MOVE                             R14 R1
       57 MOVE                             R15 R2
       58 LOADB                            R16 1
       59 CALL                             R13 3 1
       60 GETUPVAL                         R14 6
       61 MOVE                             R15 R1
       62 MOVE                             R16 R13
       63 CALL                             R14 2 1
       64 MOVE                             R12 R14
       65 LOADB                            R13 1
       66 FASTCALL1                        TYPEOF R11 ; [+3]
       67 MOVE                             R15 R11
       68 GETIMPORT                        R14 K8 [typeof]
       70 CALL                             R14 1 1
       71 JUMPIFEQKS                       R14 K12 ["function"] ; [+11]
       73 GETTABLEKS                       R15 R5 K13 ["getSnapshotBeforeUpdate"]
       75 FASTCALL1                        TYPEOF R15 ; [+2]
       76 GETIMPORT                        R14 K8 [typeof]
       78 CALL                             R14 1 1
       79 JUMPIFEQKS                       R14 K12 ["function"] ; [+2]
       81 LOADB                            R13 0 +1
       82 LOADB                            R13 1
       83 JUMPIF                           R13 ; [+27]
       84 GETTABLEKS                       R15 R5 K14 ["UNSAFE_componentWillReceiveProps"]
       86 FASTCALL1                        TYPEOF R15 ; [+2]
       87 GETIMPORT                        R14 K8 [typeof]
       89 CALL                             R14 1 1
       90 JUMPIFEQKS                       R14 K12 ["function"] ; [+9]
       92 GETTABLEKS                       R15 R5 K15 ["componentWillReceiveProps"]
       94 FASTCALL1                        TYPEOF R15 ; [+2]
       95 GETIMPORT                        R14 K8 [typeof]
       97 CALL                             R14 1 1
       98 JUMPIFNOTEQKS                    R14 K12 ["function"] ; [+12]
      100 JUMPIFNOTEQ                      R6 R8 ; [+3]
      102 JUMPIFEQ                         R9 R12 ; [+8]
      104 GETGLOBAL                        R14 K16 ["callComponentWillReceiveProps"]
      106 MOVE                             R15 R1
      107 MOVE                             R16 R5
      108 MOVE                             R17 R3
      109 MOVE                             R18 R12
      110 CALL                             R14 4 0
      111 GETUPVAL                         R14 7
      112 CALL                             R14 0 0
      113 GETTABLEKS                       R14 R1 K17 ["memoizedState"]
      115 SETTABLEKS                       R14 R5 K18 ["state"]
      117 GETTABLEKS                       R15 R5 K18 ["state"]
      119 GETUPVAL                         R16 8
      120 MOVE                             R17 R1
      121 MOVE                             R18 R3
      122 MOVE                             R19 R5
      123 MOVE                             R20 R4
      124 CALL                             R16 4 0
      125 GETTABLEKS                       R15 R1 K17 ["memoizedState"]
      127 JUMPIFNOTEQ                      R6 R8 ; [+63]
      129 JUMPIFNOTEQ                      R14 R15 ; [+61]
      131 GETUPVAL                         R16 9
      132 CALL                             R16 0 1
      133 JUMPIF                           R16 ; [+57]
      134 GETUPVAL                         R16 10
      135 CALL                             R16 0 1
      136 JUMPIF                           R16 ; [+54]
      137 GETTABLEKS                       R17 R5 K19 ["componentDidUpdate"]
      139 FASTCALL1                        TYPEOF R17 ; [+2]
      140 GETIMPORT                        R16 K8 [typeof]
      142 CALL                             R16 1 1
      143 JUMPIFNOTEQKS                    R16 K12 ["function"] ; [+19]
      145 GETTABLEKS                       R16 R0 K1 ["memoizedProps"]
      147 JUMPIFNOTEQ                      R6 R16 ; [+5]
      149 GETTABLEKS                       R16 R0 K17 ["memoizedState"]
      151 JUMPIFEQ                         R14 R16 ; [+11]
      153 GETTABLEKS                       R17 R1 K20 ["flags"]
      155 GETUPVAL                         R18 11
      156 FASTCALL2                        BIT32_BOR R17 R18 ; [+3]
      158 GETIMPORT                        R16 K23 [bit32.bor]
      160 CALL                             R16 2 1
      161 SETTABLEKS                       R16 R1 K20 ["flags"]
      163 GETTABLEKS                       R17 R5 K13 ["getSnapshotBeforeUpdate"]
      165 FASTCALL1                        TYPEOF R17 ; [+2]
      166 GETIMPORT                        R16 K8 [typeof]
      168 CALL                             R16 1 1
      169 JUMPIFNOTEQKS                    R16 K12 ["function"] ; [+19]
      171 GETTABLEKS                       R16 R0 K1 ["memoizedProps"]
      173 JUMPIFNOTEQ                      R6 R16 ; [+5]
      175 GETTABLEKS                       R16 R0 K17 ["memoizedState"]
      177 JUMPIFEQ                         R14 R16 ; [+11]
      179 GETTABLEKS                       R17 R1 K20 ["flags"]
      181 GETUPVAL                         R18 12
      182 FASTCALL2                        BIT32_BOR R17 R18 ; [+3]
      184 GETIMPORT                        R16 K23 [bit32.bor]
      186 CALL                             R16 2 1
      187 SETTABLEKS                       R16 R1 K20 ["flags"]
      189 LOADB                            R16 0
      190 RETURN                           R16 1
      191 FASTCALL1                        TYPEOF R11 ; [+3]
      192 MOVE                             R17 R11
      193 GETIMPORT                        R16 K8 [typeof]
      195 CALL                             R16 1 1
      196 JUMPIFNOTEQKS                    R16 K12 ["function"] ; [+9]
      198 GETUPVAL                         R16 13
      199 MOVE                             R17 R1
      200 MOVE                             R18 R2
      201 MOVE                             R19 R11
      202 MOVE                             R20 R3
      203 CALL                             R16 4 0
      204 GETTABLEKS                       R15 R1 K17 ["memoizedState"]
      206 GETUPVAL                         R16 10
      207 CALL                             R16 0 1
      208 JUMPIF                           R16 ; [+10]
      209 GETGLOBAL                        R16 K24 ["checkShouldComponentUpdate"]
      211 MOVE                             R17 R1
      212 MOVE                             R18 R2
      213 MOVE                             R19 R7
      214 MOVE                             R20 R3
      215 MOVE                             R21 R14
      216 MOVE                             R22 R15
      217 MOVE                             R23 R12
      218 CALL                             R16 7 1
      219 JUMPIFNOT                        R16 ; [+82]
      220 JUMPIF                           R13 ; [+44]
      221 GETTABLEKS                       R18 R5 K25 ["UNSAFE_componentWillUpdate"]
      223 FASTCALL1                        TYPEOF R18 ; [+2]
      224 GETIMPORT                        R17 K8 [typeof]
      226 CALL                             R17 1 1
      227 JUMPIFEQKS                       R17 K12 ["function"] ; [+9]
      229 GETTABLEKS                       R18 R5 K26 ["componentWillUpdate"]
      231 FASTCALL1                        TYPEOF R18 ; [+2]
      232 GETIMPORT                        R17 K8 [typeof]
      234 CALL                             R17 1 1
      235 JUMPIFNOTEQKS                    R17 K12 ["function"] ; [+29]
      237 GETTABLEKS                       R18 R5 K26 ["componentWillUpdate"]
      239 FASTCALL1                        TYPEOF R18 ; [+2]
      240 GETIMPORT                        R17 K8 [typeof]
      242 CALL                             R17 1 1
      243 JUMPIFNOTEQKS                    R17 K12 ["function"] ; [+7]
      245 MOVE                             R19 R3
      246 MOVE                             R20 R15
      247 MOVE                             R21 R12
      248 NAMECALL                         R17 R5 K26 ["componentWillUpdate"]
      250 CALL                             R17 4 0
      251 GETTABLEKS                       R18 R5 K25 ["UNSAFE_componentWillUpdate"]
      253 FASTCALL1                        TYPEOF R18 ; [+2]
      254 GETIMPORT                        R17 K8 [typeof]
      256 CALL                             R17 1 1
      257 JUMPIFNOTEQKS                    R17 K12 ["function"] ; [+7]
      259 MOVE                             R19 R3
      260 MOVE                             R20 R15
      261 MOVE                             R21 R12
      262 NAMECALL                         R17 R5 K25 ["UNSAFE_componentWillUpdate"]
      264 CALL                             R17 4 0
      265 GETTABLEKS                       R18 R5 K19 ["componentDidUpdate"]
      267 FASTCALL1                        TYPEOF R18 ; [+2]
      268 GETIMPORT                        R17 K8 [typeof]
      270 CALL                             R17 1 1
      271 JUMPIFNOTEQKS                    R17 K12 ["function"] ; [+11]
      273 GETTABLEKS                       R18 R1 K20 ["flags"]
      275 GETUPVAL                         R19 11
      276 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      278 GETIMPORT                        R17 K23 [bit32.bor]
      280 CALL                             R17 2 1
      281 SETTABLEKS                       R17 R1 K20 ["flags"]
      283 GETTABLEKS                       R18 R5 K13 ["getSnapshotBeforeUpdate"]
      285 FASTCALL1                        TYPEOF R18 ; [+2]
      286 GETIMPORT                        R17 K8 [typeof]
      288 CALL                             R17 1 1
      289 JUMPIFNOTEQKS                    R17 K12 ["function"] ; [+68]
      291 GETTABLEKS                       R18 R1 K20 ["flags"]
      293 GETUPVAL                         R19 12
      294 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      296 GETIMPORT                        R17 K23 [bit32.bor]
      298 CALL                             R17 2 1
      299 SETTABLEKS                       R17 R1 K20 ["flags"]
      301 JUMP                             ; [+56]
      302 GETTABLEKS                       R18 R5 K19 ["componentDidUpdate"]
      304 FASTCALL1                        TYPEOF R18 ; [+2]
      305 GETIMPORT                        R17 K8 [typeof]
      307 CALL                             R17 1 1
      308 JUMPIFNOTEQKS                    R17 K12 ["function"] ; [+19]
      310 GETTABLEKS                       R17 R0 K1 ["memoizedProps"]
      312 JUMPIFNOTEQ                      R6 R17 ; [+5]
      314 GETTABLEKS                       R17 R0 K17 ["memoizedState"]
      316 JUMPIFEQ                         R14 R17 ; [+11]
      318 GETTABLEKS                       R18 R1 K20 ["flags"]
      320 GETUPVAL                         R19 11
      321 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      323 GETIMPORT                        R17 K23 [bit32.bor]
      325 CALL                             R17 2 1
      326 SETTABLEKS                       R17 R1 K20 ["flags"]
      328 GETTABLEKS                       R18 R5 K13 ["getSnapshotBeforeUpdate"]
      330 FASTCALL1                        TYPEOF R18 ; [+2]
      331 GETIMPORT                        R17 K8 [typeof]
      333 CALL                             R17 1 1
      334 JUMPIFNOTEQKS                    R17 K12 ["function"] ; [+19]
      336 GETTABLEKS                       R17 R0 K1 ["memoizedProps"]
      338 JUMPIFNOTEQ                      R6 R17 ; [+5]
      340 GETTABLEKS                       R17 R0 K17 ["memoizedState"]
      342 JUMPIFEQ                         R14 R17 ; [+11]
      344 GETTABLEKS                       R18 R1 K20 ["flags"]
      346 GETUPVAL                         R19 12
      347 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      349 GETIMPORT                        R17 K23 [bit32.bor]
      351 CALL                             R17 2 1
      352 SETTABLEKS                       R17 R1 K20 ["flags"]
      354 SETTABLEKS                       R3 R1 K1 ["memoizedProps"]
      356 SETTABLEKS                       R15 R1 K17 ["memoizedState"]
      358 SETTABLEKS                       R3 R5 K4 ["props"]
      360 SETTABLEKS                       R15 R5 K18 ["state"]
      362 SETTABLEKS                       R12 R5 K6 ["context"]
      364 RETURN                           R16 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Object"]
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R0 K7 ["Shared"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R3 R4 K8 ["console"]
       21 GETIMPORT                        R4 K4 [require]
       23 GETIMPORT                        R7 K1 [script]
       25 GETTABLEKS                       R6 R7 K2 ["Parent"]
       27 GETTABLEKS                       R5 R6 K9 ["ReactInternalTypes"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETIMPORT                        R8 K1 [script]
       34 GETTABLEKS                       R7 R8 K2 ["Parent"]
       36 GETTABLEKS                       R6 R7 K10 ["ReactFiberLane"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K4 [require]
       41 GETIMPORT                        R9 K1 [script]
       43 GETTABLEKS                       R8 R9 K2 ["Parent"]
       45 GETTABLEKS                       R7 R8 K11 ["ReactUpdateQueue.new"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K4 [require]
       50 GETTABLEKS                       R8 R0 K12 ["React"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K4 [require]
       55 GETIMPORT                        R11 K1 [script]
       57 GETTABLEKS                       R10 R11 K2 ["Parent"]
       59 GETTABLEKS                       R9 R10 K13 ["ReactFiberFlags"]
       61 CALL                             R8 1 1
       62 GETTABLEKS                       R9 R8 K14 ["Update"]
       64 GETTABLEKS                       R10 R8 K15 ["Snapshot"]
       66 GETTABLEKS                       R11 R8 K16 ["MountLayoutDev"]
       68 GETIMPORT                        R13 K4 [require]
       70 GETTABLEKS                       R14 R0 K7 ["Shared"]
       72 CALL                             R13 1 1
       73 GETTABLEKS                       R12 R13 K17 ["ReactFeatureFlags"]
       75 GETTABLEKS                       R13 R12 K18 ["debugRenderPhaseSideEffectsForStrictMode"]
       77 GETTABLEKS                       R14 R12 K19 ["disableLegacyContext"]
       79 GETTABLEKS                       R15 R12 K20 ["enableDebugTracing"]
       81 GETTABLEKS                       R16 R12 K21 ["enableSchedulingProfiler"]
       83 GETTABLEKS                       R17 R12 K22 ["warnAboutDeprecatedLifecycles"]
       85 GETTABLEKS                       R18 R12 K23 ["enableDoubleInvokingEffects"]
       87 GETIMPORT                        R19 K4 [require]
       89 GETIMPORT                        R22 K1 [script]
       91 GETTABLEKS                       R21 R22 K2 ["Parent"]
       93 GETTABLEKS                       R20 R21 K24 ["ReactStrictModeWarnings.new"]
       95 CALL                             R19 1 1
       96 GETIMPORT                        R21 K4 [require]
       98 GETIMPORT                        R24 K1 [script]
      100 GETTABLEKS                       R23 R24 K2 ["Parent"]
      102 GETTABLEKS                       R22 R23 K25 ["ReactFiberTreeReflection"]
      104 CALL                             R21 1 1
      105 GETTABLEKS                       R20 R21 K26 ["isMounted"]
      107 GETIMPORT                        R22 K4 [require]
      109 GETTABLEKS                       R23 R0 K7 ["Shared"]
      111 CALL                             R22 1 1
      112 GETTABLEKS                       R21 R22 K27 ["ReactInstanceMap"]
      114 GETTABLEKS                       R22 R21 K28 ["get"]
      116 GETTABLEKS                       R23 R21 K29 ["set"]
      118 GETIMPORT                        R25 K4 [require]
      120 GETTABLEKS                       R26 R0 K7 ["Shared"]
      122 CALL                             R25 1 1
      123 GETTABLEKS                       R24 R25 K30 ["shallowEqual"]
      125 GETIMPORT                        R26 K4 [require]
      127 GETTABLEKS                       R27 R0 K7 ["Shared"]
      129 CALL                             R26 1 1
      130 GETTABLEKS                       R25 R26 K31 ["getComponentName"]
      132 GETIMPORT                        R27 K4 [require]
      134 GETTABLEKS                       R28 R0 K7 ["Shared"]
      136 CALL                             R27 1 1
      137 GETTABLEKS                       R26 R27 K32 ["UninitializedState"]
      139 GETIMPORT                        R28 K4 [require]
      141 GETTABLEKS                       R29 R0 K7 ["Shared"]
      143 CALL                             R28 1 1
      144 GETTABLEKS                       R27 R28 K33 ["ReactSymbols"]
      146 GETTABLEKS                       R28 R27 K34 ["REACT_CONTEXT_TYPE"]
      148 GETTABLEKS                       R29 R27 K35 ["REACT_PROVIDER_TYPE"]
      150 GETIMPORT                        R31 K4 [require]
      152 GETIMPORT                        R34 K1 [script]
      154 GETTABLEKS                       R33 R34 K2 ["Parent"]
      156 GETTABLEKS                       R32 R33 K36 ["ReactFiberLazyComponent.new"]
      158 CALL                             R31 1 1
      159 GETTABLEKS                       R30 R31 K37 ["resolveDefaultProps"]
      161 GETIMPORT                        R31 K4 [require]
      163 GETIMPORT                        R34 K1 [script]
      165 GETTABLEKS                       R33 R34 K2 ["Parent"]
      167 GETTABLEKS                       R32 R33 K38 ["ReactTypeOfMode"]
      169 CALL                             R31 1 1
      170 GETTABLEKS                       R32 R31 K39 ["DebugTracingMode"]
      172 GETTABLEKS                       R33 R31 K40 ["StrictMode"]
      174 GETTABLEKS                       R34 R6 K41 ["enqueueUpdate"]
      176 GETTABLEKS                       R35 R6 K42 ["processUpdateQueue"]
      178 GETTABLEKS                       R36 R6 K43 ["checkHasForceUpdateAfterProcessing"]
      180 GETTABLEKS                       R37 R6 K44 ["resetHasForceUpdateBeforeProcessing"]
      182 GETTABLEKS                       R38 R6 K45 ["createUpdate"]
      184 GETTABLEKS                       R39 R6 K46 ["ReplaceState"]
      186 GETTABLEKS                       R40 R6 K47 ["ForceUpdate"]
      188 GETTABLEKS                       R41 R6 K48 ["initializeUpdateQueue"]
      190 GETTABLEKS                       R42 R6 K49 ["cloneUpdateQueue"]
      192 GETTABLEKS                       R43 R5 K50 ["NoLanes"]
      194 GETIMPORT                        R44 K4 [require]
      196 GETIMPORT                        R47 K1 [script]
      198 GETTABLEKS                       R46 R47 K2 ["Parent"]
      200 GETTABLEKS                       R45 R46 K51 ["ReactFiberContext.new"]
      202 CALL                             R44 1 1
      203 GETTABLEKS                       R45 R44 K52 ["cacheContext"]
      205 GETTABLEKS                       R46 R44 K53 ["getMaskedContext"]
      207 GETTABLEKS                       R47 R44 K54 ["getUnmaskedContext"]
      209 GETTABLEKS                       R48 R44 K55 ["hasContextChanged"]
      211 GETTABLEKS                       R49 R44 K56 ["emptyContextObject"]
      213 GETIMPORT                        R50 K4 [require]
      215 GETIMPORT                        R53 K1 [script]
      217 GETTABLEKS                       R52 R53 K2 ["Parent"]
      219 GETTABLEKS                       R51 R52 K57 ["ReactFiberNewContext.new"]
      221 CALL                             R50 1 1
      222 GETTABLEKS                       R51 R50 K58 ["readContext"]
      224 GETIMPORT                        R52 K4 [require]
      226 GETIMPORT                        R55 K1 [script]
      228 GETTABLEKS                       R54 R55 K2 ["Parent"]
      230 GETTABLEKS                       R53 R54 K59 ["DebugTracing"]
      232 CALL                             R52 1 1
      233 GETTABLEKS                       R53 R52 K60 ["logForceUpdateScheduled"]
      235 GETTABLEKS                       R54 R52 K61 ["logStateUpdateScheduled"]
      237 GETIMPORT                        R56 K4 [require]
      239 GETTABLEKS                       R57 R0 K7 ["Shared"]
      241 CALL                             R56 1 1
      242 GETTABLEKS                       R55 R56 K62 ["ConsolePatchingDev"]
      244 GETTABLEKS                       R56 R55 K63 ["disableLogs"]
      246 GETTABLEKS                       R57 R55 K64 ["reenableLogs"]
      248 GETIMPORT                        R58 K4 [require]
      250 GETIMPORT                        R61 K1 [script]
      252 GETTABLEKS                       R60 R61 K2 ["Parent"]
      254 GETTABLEKS                       R59 R60 K65 ["SchedulingProfiler"]
      256 CALL                             R58 1 1
      257 GETTABLEKS                       R59 R58 K66 ["markForceUpdateScheduled"]
      259 GETTABLEKS                       R60 R58 K67 ["markStateUpdateScheduled"]
      261 NEWTABLE                         R61 0 0
      263 GETTABLEKS                       R63 R7 K68 ["Component"]
      265 LOADK                            R65 K69 [""]
      266 NAMECALL                         R63 R63 K70 ["extend"]
      268 CALL                             R63 2 1
      269 GETTABLEKS                       R62 R63 K71 ["__refs"]
      271 LOADNIL                          R63
      272 LOADNIL                          R64
      273 LOADNIL                          R65
      274 LOADNIL                          R66
      275 LOADNIL                          R67
      276 LOADNIL                          R68
      277 LOADNIL                          R69
      278 LOADNIL                          R70
      279 LOADNIL                          R71
      280 LOADNIL                          R72
      281 GETIMPORT                        R74 K73 [_G]
      283 GETTABLEKS                       R73 R74 K74 ["__DEV__"]
      285 JUMPIFNOT                        R73 ; [+22]
      286 NEWTABLE                         R63 0 0
      288 NEWTABLE                         R64 0 0
      290 NEWTABLE                         R65 0 0
      292 NEWTABLE                         R66 0 0
      294 NEWTABLE                         R70 0 0
      296 NEWTABLE                         R67 0 0
      298 NEWTABLE                         R71 0 0
      300 NEWTABLE                         R72 0 0
      302 NEWTABLE                         R73 0 0
      304 DUPCLOSURE                       R69 K75 [PROTO_0]
      305 CAPTURE                          VAL R73
      306 CAPTURE                          VAL R3
      307 DUPCLOSURE                       R68 K76 [PROTO_1]
      308 NEWCLOSURE                       R73 P2
      309 CAPTURE                          VAL R13
      310 CAPTURE                          VAL R33
      311 CAPTURE                          VAL R56
      312 CAPTURE                          VAL R57
      313 CAPTURE                          REF R68
      314 CAPTURE                          VAL R2
      315 CAPTURE                          VAL R43
      316 LOADNIL                          R74
      317 NEWCLOSURE                       R75 P3
      318 CAPTURE                          REF R74
      319 CAPTURE                          VAL R20
      320 CAPTURE                          VAL R22
      321 CAPTURE                          VAL R38
      322 CAPTURE                          REF R69
      323 CAPTURE                          VAL R34
      324 CAPTURE                          VAL R15
      325 CAPTURE                          VAL R32
      326 CAPTURE                          VAL R25
      327 CAPTURE                          VAL R54
      328 CAPTURE                          VAL R16
      329 CAPTURE                          VAL R60
      330 CAPTURE                          VAL R39
      331 CAPTURE                          VAL R40
      332 CAPTURE                          VAL R53
      333 CAPTURE                          VAL R59
      334 NEWCLOSURE                       R76 P4
      335 CAPTURE                          REF R74
      336 CAPTURE                          VAL R75
      337 DUPCLOSURE                       R77 K77 [PROTO_8]
      338 CAPTURE                          VAL R13
      339 CAPTURE                          VAL R33
      340 CAPTURE                          VAL R56
      341 CAPTURE                          VAL R57
      342 CAPTURE                          VAL R3
      343 CAPTURE                          VAL R25
      344 CAPTURE                          VAL R24
      345 SETGLOBAL                        R77 K78 ["checkShouldComponentUpdate"]
      347 NEWCLOSURE                       R77 P6
      348 CAPTURE                          VAL R25
      349 CAPTURE                          VAL R3
      350 CAPTURE                          VAL R14
      351 CAPTURE                          REF R71
      352 CAPTURE                          REF R65
      353 NEWCLOSURE                       R78 P7
      354 CAPTURE                          REF R74
      355 CAPTURE                          VAL R75
      356 CAPTURE                          VAL R23
      357 CAPTURE                          VAL R61
      358 NEWCLOSURE                       R79 P8
      359 CAPTURE                          VAL R49
      360 CAPTURE                          VAL R28
      361 CAPTURE                          REF R72
      362 CAPTURE                          VAL R29
      363 CAPTURE                          VAL R3
      364 CAPTURE                          VAL R25
      365 CAPTURE                          VAL R51
      366 CAPTURE                          VAL R14
      367 CAPTURE                          VAL R47
      368 CAPTURE                          VAL R46
      369 CAPTURE                          VAL R13
      370 CAPTURE                          VAL R33
      371 CAPTURE                          VAL R56
      372 CAPTURE                          VAL R57
      373 CAPTURE                          REF R74
      374 CAPTURE                          VAL R75
      375 CAPTURE                          VAL R23
      376 CAPTURE                          VAL R61
      377 CAPTURE                          VAL R26
      378 CAPTURE                          REF R64
      379 CAPTURE                          REF R66
      380 CAPTURE                          VAL R45
      381 NEWCLOSURE                       R80 P9
      382 CAPTURE                          VAL R3
      383 CAPTURE                          VAL R25
      384 CAPTURE                          REF R74
      385 CAPTURE                          VAL R75
      386 NEWCLOSURE                       R81 P10
      387 CAPTURE                          VAL R25
      388 CAPTURE                          REF R63
      389 CAPTURE                          VAL R3
      390 CAPTURE                          REF R74
      391 CAPTURE                          VAL R75
      392 SETGLOBAL                        R81 K79 ["callComponentWillReceiveProps"]
      394 NEWCLOSURE                       R81 P11
      395 CAPTURE                          VAL R77
      396 CAPTURE                          VAL R62
      397 CAPTURE                          VAL R41
      398 CAPTURE                          VAL R51
      399 CAPTURE                          VAL R14
      400 CAPTURE                          VAL R49
      401 CAPTURE                          VAL R47
      402 CAPTURE                          VAL R46
      403 CAPTURE                          VAL R25
      404 CAPTURE                          REF R70
      405 CAPTURE                          VAL R3
      406 CAPTURE                          VAL R33
      407 CAPTURE                          VAL R19
      408 CAPTURE                          VAL R17
      409 CAPTURE                          VAL R35
      410 CAPTURE                          VAL R73
      411 CAPTURE                          VAL R80
      412 CAPTURE                          VAL R18
      413 CAPTURE                          VAL R11
      414 CAPTURE                          VAL R9
      415 DUPCLOSURE                       R82 K80 [PROTO_15]
      416 CAPTURE                          VAL R49
      417 CAPTURE                          VAL R51
      418 CAPTURE                          VAL R14
      419 CAPTURE                          VAL R47
      420 CAPTURE                          VAL R46
      421 CAPTURE                          VAL R37
      422 CAPTURE                          VAL R35
      423 CAPTURE                          VAL R48
      424 CAPTURE                          VAL R36
      425 CAPTURE                          VAL R18
      426 CAPTURE                          VAL R11
      427 CAPTURE                          VAL R9
      428 CAPTURE                          VAL R73
      429 SETGLOBAL                        R82 K81 ["resumeMountClassInstance"]
      431 DUPCLOSURE                       R82 K82 [PROTO_16]
      432 CAPTURE                          VAL R42
      433 CAPTURE                          VAL R30
      434 CAPTURE                          VAL R49
      435 CAPTURE                          VAL R51
      436 CAPTURE                          VAL R14
      437 CAPTURE                          VAL R47
      438 CAPTURE                          VAL R46
      439 CAPTURE                          VAL R37
      440 CAPTURE                          VAL R35
      441 CAPTURE                          VAL R48
      442 CAPTURE                          VAL R36
      443 CAPTURE                          VAL R9
      444 CAPTURE                          VAL R10
      445 CAPTURE                          VAL R73
      446 DUPTABLE                         R83 K89 [{"adoptClassInstance", "constructClassInstance", "mountClassInstance", "resumeMountClassInstance", "updateClassInstance", "applyDerivedStateFromProps", "emptyRefsObject"}]
      447 SETTABLEKS                       R78 R83 K83 ["adoptClassInstance"]
      449 SETTABLEKS                       R79 R83 K84 ["constructClassInstance"]
      451 SETTABLEKS                       R81 R83 K85 ["mountClassInstance"]
      453 GETGLOBAL                        R84 K81 ["resumeMountClassInstance"]
      455 SETTABLEKS                       R84 R83 K81 ["resumeMountClassInstance"]
      457 SETTABLEKS                       R82 R83 K86 ["updateClassInstance"]
      459 SETTABLEKS                       R73 R83 K87 ["applyDerivedStateFromProps"]
      461 SETTABLEKS                       R62 R83 K88 ["emptyRefsObject"]
      463 CLOSEUPVALS                      R63
      464 RETURN                           R83 1
