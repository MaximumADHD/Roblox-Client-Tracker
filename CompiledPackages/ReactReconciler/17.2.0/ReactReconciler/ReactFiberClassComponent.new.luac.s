PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+8]
        2 FASTCALL1                        TYPE R0 ; [+3]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R2 K1 [type]
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
        2 GETUPVAL                         R5 0
        3 JUMPIFNOT                        R5 ; [+28]
        4 GETUPVAL                         R5 1
        5 JUMPIFNOT                        R5 ; [+26]
        6 GETTABLEKS                       R6 R0 K1 ["mode"]
        8 GETUPVAL                         R7 2
        9 FASTCALL2                        BIT32_BAND R6 R7 ; [+3]
       11 GETIMPORT                        R5 K4 [bit32.band]
       13 CALL                             R5 2 1
       14 JUMPIFEQKN                       R5 K5 [0] ; [+17]
       16 GETUPVAL                         R5 3
       17 CALL                             R5 0 0
       18 GETIMPORT                        R5 K7 [xpcall]
       20 MOVE                             R6 R2
       21 GETUPVAL                         R7 4
       22 MOVE                             R8 R3
       23 MOVE                             R9 R4
       24 CALL                             R5 4 2
       25 GETUPVAL                         R7 5
       26 CALL                             R7 0 0
       27 JUMPIF                           R5 ; [+4]
       28 GETIMPORT                        R7 K9 [error]
       30 MOVE                             R8 R6
       31 CALL                             R7 1 0
       32 MOVE                             R5 R2
       33 MOVE                             R6 R3
       34 MOVE                             R7 R4
       35 CALL                             R5 2 1
       36 GETUPVAL                         R6 0
       37 JUMPIFNOT                        R6 ; [+4]
       38 GETUPVAL                         R6 6
       39 MOVE                             R7 R1
       40 MOVE                             R8 R5
       41 CALL                             R6 2 0
       42 JUMPIFNOTEQKNIL                  R5 ; [+3]
       44 MOVE                             R6 R4
       45 JUMP                             ; [+8]
       46 GETUPVAL                         R7 7
       47 GETTABLEKS                       R6 R7 K10 ["assign"]
       49 NEWTABLE                         R7 0 0
       51 MOVE                             R8 R4
       52 MOVE                             R9 R5
       53 CALL                             R6 3 1
       54 SETTABLEKS                       R6 R0 K0 ["memoizedState"]
       56 GETTABLEKS                       R7 R0 K11 ["lanes"]
       58 GETUPVAL                         R8 8
       59 JUMPIFNOTEQ                      R7 R8 ; [+5]
       61 GETTABLEKS                       R7 R0 K12 ["updateQueue"]
       63 SETTABLEKS                       R6 R7 K13 ["baseState"]
       65 RETURN                           R0 0

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
       11 MOVE                             R9 R1
       12 MOVE                             R10 R2
       13 CALL                             R6 4 1
       14 JUMPIFEQKNIL                     R2 ; [+7]
       16 GETUPVAL                         R7 4
       17 JUMPIFNOT                        R7 ; [+4]
       18 GETUPVAL                         R7 5
       19 MOVE                             R8 R2
       20 LOADK                            R9 K0 ["setState"]
       21 CALL                             R7 2 0
       22 GETUPVAL                         R7 6
       23 MOVE                             R8 R3
       24 MOVE                             R9 R6
       25 CALL                             R7 2 0
       26 GETUPVAL                         R7 7
       27 MOVE                             R8 R3
       28 MOVE                             R9 R5
       29 MOVE                             R10 R4
       30 CALL                             R7 3 0
       31 GETUPVAL                         R7 4
       32 JUMPIFNOT                        R7 ; [+22]
       33 GETUPVAL                         R7 8
       34 JUMPIFNOT                        R7 ; [+20]
       35 GETTABLEKS                       R8 R3 K1 ["mode"]
       37 GETUPVAL                         R9 9
       38 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
       40 GETIMPORT                        R7 K4 [bit32.band]
       42 CALL                             R7 2 1
       43 JUMPIFEQKN                       R7 K5 [0] ; [+11]
       45 GETUPVAL                         R8 10
       46 GETTABLEKS                       R9 R3 K7 ["type"]
       48 CALL                             R8 1 1
       49 ORK                              R7 R8 K6 ["Unknown"]
       50 GETUPVAL                         R8 11
       51 MOVE                             R9 R7
       52 MOVE                             R10 R5
       53 MOVE                             R11 R1
       54 CALL                             R8 3 0
       55 GETUPVAL                         R7 12
       56 JUMPIFNOT                        R7 ; [+4]
       57 GETUPVAL                         R7 13
       58 MOVE                             R8 R3
       59 MOVE                             R9 R5
       60 CALL                             R7 2 0
       61 RETURN                           R0 0

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
       11 MOVE                             R9 R1
       12 MOVE                             R10 R2
       13 CALL                             R6 4 1
       14 GETUPVAL                         R7 4
       15 SETTABLEKS                       R7 R6 K0 ["tag"]
       17 JUMPIFEQKNIL                     R2 ; [+7]
       19 GETUPVAL                         R7 5
       20 JUMPIFNOT                        R7 ; [+4]
       21 GETUPVAL                         R7 6
       22 MOVE                             R8 R2
       23 LOADK                            R9 K1 ["replaceState"]
       24 CALL                             R7 2 0
       25 GETUPVAL                         R7 7
       26 MOVE                             R8 R3
       27 MOVE                             R9 R6
       28 CALL                             R7 2 0
       29 GETUPVAL                         R7 8
       30 MOVE                             R8 R3
       31 MOVE                             R9 R5
       32 MOVE                             R10 R4
       33 CALL                             R7 3 0
       34 GETUPVAL                         R7 5
       35 JUMPIFNOT                        R7 ; [+22]
       36 GETUPVAL                         R7 9
       37 JUMPIFNOT                        R7 ; [+20]
       38 GETTABLEKS                       R8 R3 K2 ["mode"]
       40 GETUPVAL                         R9 10
       41 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
       43 GETIMPORT                        R7 K5 [bit32.band]
       45 CALL                             R7 2 1
       46 JUMPIFEQKN                       R7 K6 [0] ; [+11]
       48 GETUPVAL                         R8 11
       49 GETTABLEKS                       R9 R3 K8 ["type"]
       51 CALL                             R8 1 1
       52 ORK                              R7 R8 K7 ["Unknown"]
       53 GETUPVAL                         R8 12
       54 MOVE                             R9 R7
       55 MOVE                             R10 R5
       56 MOVE                             R11 R1
       57 CALL                             R8 3 0
       58 GETUPVAL                         R7 13
       59 JUMPIFNOT                        R7 ; [+4]
       60 GETUPVAL                         R7 14
       61 MOVE                             R8 R3
       62 MOVE                             R9 R5
       63 CALL                             R7 2 0
       64 RETURN                           R0 0

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
       11 LOADNIL                          R8
       12 MOVE                             R9 R1
       13 CALL                             R5 4 1
       14 GETUPVAL                         R6 4
       15 SETTABLEKS                       R6 R5 K0 ["tag"]
       17 JUMPIFEQKNIL                     R1 ; [+7]
       19 GETUPVAL                         R6 5
       20 JUMPIFNOT                        R6 ; [+4]
       21 GETUPVAL                         R6 6
       22 MOVE                             R7 R1
       23 LOADK                            R8 K1 ["forceUpdate"]
       24 CALL                             R6 2 0
       25 GETUPVAL                         R6 7
       26 MOVE                             R7 R2
       27 MOVE                             R8 R5
       28 CALL                             R6 2 0
       29 GETUPVAL                         R6 8
       30 MOVE                             R7 R2
       31 MOVE                             R8 R4
       32 MOVE                             R9 R3
       33 CALL                             R6 3 0
       34 GETUPVAL                         R6 5
       35 JUMPIFNOT                        R6 ; [+21]
       36 GETUPVAL                         R6 9
       37 JUMPIFNOT                        R6 ; [+19]
       38 GETTABLEKS                       R7 R2 K2 ["mode"]
       40 GETUPVAL                         R8 10
       41 FASTCALL2                        BIT32_BAND R7 R8 ; [+3]
       43 GETIMPORT                        R6 K5 [bit32.band]
       45 CALL                             R6 2 1
       46 JUMPIFEQKN                       R6 K6 [0] ; [+10]
       48 GETUPVAL                         R7 11
       49 GETTABLEKS                       R8 R2 K8 ["type"]
       51 CALL                             R7 1 1
       52 ORK                              R6 R7 K7 ["Unknown"]
       53 GETUPVAL                         R7 12
       54 MOVE                             R8 R6
       55 MOVE                             R9 R4
       56 CALL                             R7 2 0
       57 GETUPVAL                         R6 13
       58 JUMPIFNOT                        R6 ; [+4]
       59 GETUPVAL                         R6 14
       60 MOVE                             R7 R2
       61 MOVE                             R8 R4
       62 CALL                             R6 2 0
       63 RETURN                           R0 0

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
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          VAL R3
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          UPVAL U9
       31 CAPTURE                          UPVAL U10
       32 CAPTURE                          UPVAL U11
       33 CAPTURE                          UPVAL U12
       34 SETTABLEKS                       R5 R4 K10 ["enqueueSetState"]
       36 NEWCLOSURE                       R5 P1
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R2
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          UPVAL U13
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          VAL R3
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          UPVAL U8
       48 CAPTURE                          UPVAL U9
       49 CAPTURE                          UPVAL U10
       50 CAPTURE                          UPVAL U11
       51 CAPTURE                          UPVAL U12
       52 SETTABLEKS                       R5 R4 K11 ["enqueueReplaceState"]
       54 NEWCLOSURE                       R5 P2
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          UPVAL U14
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          UPVAL U5
       62 CAPTURE                          UPVAL U6
       63 CAPTURE                          VAL R3
       64 CAPTURE                          UPVAL U7
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          UPVAL U9
       67 CAPTURE                          UPVAL U15
       68 CAPTURE                          UPVAL U11
       69 CAPTURE                          UPVAL U16
       70 SETTABLEKS                       R5 R4 K12 ["enqueueForceUpdate"]
       72 SETUPVAL                         R4 0
       73 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 GETUPVAL                         R0 0
        6 RETURN                           R0 1

PROTO_8:
        0 GETTABLEKS                       R7 R0 K0 ["stateNode"]
        2 GETTABLEKS                       R8 R7 K1 ["shouldComponentUpdate"]
        4 JUMPIFEQKNIL                     R8 ; [+62]
        6 GETTABLEKS                       R9 R7 K1 ["shouldComponentUpdate"]
        8 FASTCALL1                        TYPE R9 ; [+2]
        9 GETIMPORT                        R8 K3 [type]
       11 CALL                             R8 1 1
       12 JUMPIFNOTEQKS                    R8 K4 ["function"] ; [+54]
       14 GETUPVAL                         R8 0
       15 JUMPIFNOT                        R8 ; [+31]
       16 GETUPVAL                         R8 1
       17 JUMPIFNOT                        R8 ; [+29]
       18 GETTABLEKS                       R9 R0 K5 ["mode"]
       20 GETUPVAL                         R10 2
       21 FASTCALL2                        BIT32_BAND R9 R10 ; [+3]
       23 GETIMPORT                        R8 K8 [bit32.band]
       25 CALL                             R8 2 1
       26 JUMPIFEQKN                       R8 K9 [0] ; [+20]
       28 GETUPVAL                         R8 3
       29 CALL                             R8 0 0
       30 GETIMPORT                        R8 K11 [xpcall]
       32 GETTABLEKS                       R9 R7 K1 ["shouldComponentUpdate"]
       34 GETUPVAL                         R10 4
       35 MOVE                             R11 R7
       36 MOVE                             R12 R3
       37 MOVE                             R13 R5
       38 MOVE                             R14 R6
       39 CALL                             R8 6 2
       40 GETUPVAL                         R10 5
       41 CALL                             R10 0 0
       42 JUMPIF                           R8 ; [+4]
       43 GETIMPORT                        R10 K13 [error]
       45 MOVE                             R11 R9
       46 CALL                             R10 1 0
       47 MOVE                             R10 R3
       48 MOVE                             R11 R5
       49 MOVE                             R12 R6
       50 NAMECALL                         R8 R7 K1 ["shouldComponentUpdate"]
       52 CALL                             R8 4 1
       53 GETUPVAL                         R9 0
       54 JUMPIFNOT                        R9 ; [+11]
       55 JUMPIFNOTEQKNIL                  R8 ; [+10]
       57 GETUPVAL                         R10 6
       58 GETTABLEKS                       R9 R10 K12 ["error"]
       60 LOADK                            R10 K14 ["%s.shouldComponentUpdate(): Returned nil instead of a boolean value. Make sure to return true or false."]
       61 GETUPVAL                         R12 7
       62 MOVE                             R13 R1
       63 CALL                             R12 1 1
       64 ORK                              R11 R12 K15 ["Component"]
       65 CALL                             R9 2 0
       66 RETURN                           R8 1
       67 FASTCALL1                        TYPE R1 ; [+3]
       68 MOVE                             R9 R1
       69 GETIMPORT                        R8 K3 [type]
       71 CALL                             R8 1 1
       72 JUMPIFNOTEQKS                    R8 K16 ["table"] ; [+16]
       74 GETTABLEKS                       R8 R1 K17 ["isPureReactComponent"]
       76 JUMPIFNOT                        R8 ; [+12]
       77 GETUPVAL                         R9 8
       78 MOVE                             R10 R2
       79 MOVE                             R11 R3
       80 CALL                             R9 2 1
       81 NOT                              R8 R9
       82 JUMPIF                           R8 ; [+5]
       83 GETUPVAL                         R9 8
       84 MOVE                             R10 R4
       85 MOVE                             R11 R5
       86 CALL                             R9 2 1
       87 NOT                              R8 R9
       88 RETURN                           R8 1
       89 LOADB                            R8 1
       90 RETURN                           R8 1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["stateNode"]
        2 GETUPVAL                         R4 0
        3 JUMPIFNOT                        R4 ; [+343]
        4 GETUPVAL                         R5 1
        5 MOVE                             R6 R1
        6 CALL                             R5 1 1
        7 ORK                              R4 R5 K1 ["Component"]
        8 GETTABLEKS                       R5 R3 K2 ["render"]
       10 JUMPIF                           R5 ; [+21]
       11 GETTABLEKS                       R7 R1 K2 ["render"]
       13 FASTCALL1                        TYPE R7 ; [+2]
       14 GETIMPORT                        R6 K4 [type]
       16 CALL                             R6 1 1
       17 JUMPIFNOTEQKS                    R6 K5 ["function"] ; [+8]
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R6 R7 K6 ["error"]
       22 LOADK                            R7 K7 ["%s(...): No `render` method found on the returned component instance: did you accidentally return an object from the constructor?"]
       23 MOVE                             R8 R4
       24 CALL                             R6 2 0
       25 JUMP                             ; [+6]
       26 GETUPVAL                         R7 2
       27 GETTABLEKS                       R6 R7 K6 ["error"]
       29 LOADK                            R7 K8 ["%s(...): No `render` method found on the returned component instance: you may have forgotten to define `render`."]
       30 MOVE                             R8 R4
       31 CALL                             R6 2 0
       32 GETTABLEKS                       R6 R3 K9 ["getInitialState"]
       34 JUMPIFNOT                        R6 ; [+14]
       35 GETTABLEKS                       R7 R3 K9 ["getInitialState"]
       37 GETTABLEKS                       R6 R7 K10 ["isReactClassApproved"]
       39 JUMPIF                           R6 ; [+9]
       40 GETTABLEKS                       R6 R3 K11 ["state"]
       42 JUMPIF                           R6 ; [+6]
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R6 R7 K6 ["error"]
       46 LOADK                            R7 K12 ["getInitialState was defined on %s, a plain JavaScript class. This is only supported for classes created using React.createClass. Did you mean to define a state property instead?"]
       47 MOVE                             R8 R4
       48 CALL                             R6 2 0
       49 GETTABLEKS                       R6 R3 K13 ["getDefaultProps"]
       51 JUMPIFNOT                        R6 ; [+11]
       52 GETTABLEKS                       R7 R3 K13 ["getDefaultProps"]
       54 GETTABLEKS                       R6 R7 K10 ["isReactClassApproved"]
       56 JUMPIF                           R6 ; [+6]
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R6 R7 K6 ["error"]
       60 LOADK                            R7 K14 ["getDefaultProps was defined on %s, a plain JavaScript class. This is only supported for classes created using React.createClass. Use a static property to define defaultProps instead."]
       61 MOVE                             R8 R4
       62 CALL                             R6 2 0
       63 GETTABLEKS                       R6 R3 K15 ["propTypes"]
       65 JUMPIFNOT                        R6 ; [+9]
       66 GETTABLEKS                       R6 R1 K15 ["propTypes"]
       68 JUMPIF                           R6 ; [+6]
       69 GETUPVAL                         R7 2
       70 GETTABLEKS                       R6 R7 K6 ["error"]
       72 LOADK                            R7 K16 ["propTypes was defined as an instance property on %s. Use a static property to define propTypes instead."]
       73 MOVE                             R8 R4
       74 CALL                             R6 2 0
       75 GETTABLEKS                       R6 R3 K17 ["contextType"]
       77 JUMPIFNOT                        R6 ; [+9]
       78 GETTABLEKS                       R6 R1 K17 ["contextType"]
       80 JUMPIF                           R6 ; [+6]
       81 GETUPVAL                         R7 2
       82 GETTABLEKS                       R6 R7 K6 ["error"]
       84 LOADK                            R7 K18 ["contextType was defined as an instance property on %s. Use a static property to define contextType instead."]
       85 MOVE                             R8 R4
       86 CALL                             R6 2 0
       87 GETUPVAL                         R6 3
       88 JUMPIFNOT                        R6 ; [+19]
       89 GETTABLEKS                       R6 R1 K19 ["childContextTypes"]
       91 JUMPIFNOT                        R6 ; [+6]
       92 GETUPVAL                         R7 2
       93 GETTABLEKS                       R6 R7 K6 ["error"]
       95 LOADK                            R7 K20 ["%s uses the legacy childContextTypes API which is no longer supported. Use React.createContext() instead."]
       96 MOVE                             R8 R4
       97 CALL                             R6 2 0
       98 GETTABLEKS                       R6 R1 K21 ["contextTypes"]
      100 JUMPIFNOT                        R6 ; [+44]
      101 GETUPVAL                         R7 2
      102 GETTABLEKS                       R6 R7 K6 ["error"]
      104 LOADK                            R7 K22 ["%s uses the legacy contextTypes API which is no longer supported. Use React.createContext() with static contextType instead."]
      105 MOVE                             R8 R4
      106 CALL                             R6 2 0
      107 JUMP                             ; [+37]
      108 GETTABLEKS                       R6 R3 K21 ["contextTypes"]
      110 JUMPIFNOT                        R6 ; [+9]
      111 GETTABLEKS                       R6 R1 K21 ["contextTypes"]
      113 JUMPIF                           R6 ; [+6]
      114 GETUPVAL                         R7 2
      115 GETTABLEKS                       R6 R7 K6 ["error"]
      117 LOADK                            R7 K23 ["contextTypes was defined as an instance property on %s. Use a static property to define contextTypes instead."]
      118 MOVE                             R8 R4
      119 CALL                             R6 2 0
      120 FASTCALL1                        TYPE R1 ; [+3]
      121 MOVE                             R7 R1
      122 GETIMPORT                        R6 K4 [type]
      124 CALL                             R6 1 1
      125 JUMPIFNOTEQKS                    R6 K24 ["table"] ; [+19]
      127 GETTABLEKS                       R6 R1 K17 ["contextType"]
      129 JUMPIFNOT                        R6 ; [+15]
      130 GETTABLEKS                       R6 R1 K21 ["contextTypes"]
      132 JUMPIFNOT                        R6 ; [+12]
      133 GETUPVAL                         R7 4
      134 GETTABLE                         R6 R7 R1
      135 JUMPIF                           R6 ; [+9]
      136 GETUPVAL                         R6 4
      137 LOADB                            R7 1
      138 SETTABLE                         R7 R6 R1
      139 GETUPVAL                         R7 2
      140 GETTABLEKS                       R6 R7 K6 ["error"]
      142 LOADK                            R7 K25 ["%s declares both contextTypes and contextType static properties. The legacy contextTypes property will be ignored."]
      143 MOVE                             R8 R4
      144 CALL                             R6 2 0
      145 GETTABLEKS                       R7 R3 K26 ["componentShouldUpdate"]
      147 FASTCALL1                        TYPE R7 ; [+2]
      148 GETIMPORT                        R6 K4 [type]
      150 CALL                             R6 1 1
      151 JUMPIFNOTEQKS                    R6 K5 ["function"] ; [+7]
      153 GETUPVAL                         R7 2
      154 GETTABLEKS                       R6 R7 K6 ["error"]
      156 LOADK                            R7 K27 ["%s has a method called componentShouldUpdate(). Did you mean shouldComponentUpdate()? The name is phrased as a question because the function is expected to return a value."]
      157 MOVE                             R8 R4
      158 CALL                             R6 2 0
      159 FASTCALL1                        TYPE R1 ; [+3]
      160 MOVE                             R7 R1
      161 GETIMPORT                        R6 K4 [type]
      163 CALL                             R6 1 1
      164 JUMPIFNOTEQKS                    R6 K24 ["table"] ; [+17]
      166 GETTABLEKS                       R6 R1 K28 ["isPureReactComponent"]
      168 JUMPIFNOT                        R6 ; [+13]
      169 GETTABLEKS                       R6 R3 K29 ["shouldComponentUpdate"]
      171 JUMPIFEQKNIL                     R6 ; [+10]
      173 GETUPVAL                         R7 2
      174 GETTABLEKS                       R6 R7 K6 ["error"]
      176 LOADK                            R7 K30 ["%s has a method called shouldComponentUpdate(). shouldComponentUpdate should not be used when extending React.PureComponent. Please extend React.Component if shouldComponentUpdate is used."]
      177 GETUPVAL                         R9 1
      178 MOVE                             R10 R1
      179 CALL                             R9 1 1
      180 ORK                              R8 R9 K31 ["A pure component"]
      181 CALL                             R6 2 0
      182 GETTABLEKS                       R7 R3 K32 ["componentDidUnmount"]
      184 FASTCALL1                        TYPE R7 ; [+2]
      185 GETIMPORT                        R6 K4 [type]
      187 CALL                             R6 1 1
      188 JUMPIFNOTEQKS                    R6 K5 ["function"] ; [+7]
      190 GETUPVAL                         R7 2
      191 GETTABLEKS                       R6 R7 K6 ["error"]
      193 LOADK                            R7 K33 ["%s has a method called componentDidUnmount(). But there is no such lifecycle method. Did you mean componentWillUnmount()?"]
      194 MOVE                             R8 R4
      195 CALL                             R6 2 0
      196 GETTABLEKS                       R7 R3 K34 ["componentDidReceiveProps"]
      198 FASTCALL1                        TYPE R7 ; [+2]
      199 GETIMPORT                        R6 K4 [type]
      201 CALL                             R6 1 1
      202 JUMPIFNOTEQKS                    R6 K5 ["function"] ; [+7]
      204 GETUPVAL                         R7 2
      205 GETTABLEKS                       R6 R7 K6 ["error"]
      207 LOADK                            R7 K35 ["%s has a method called componentDidReceiveProps(). But there is no such lifecycle method. If you meant to update the state in response to changing props, use componentWillReceiveProps(). If you meant to fetch data or run side-effects or mutations after React has updated the UI, use componentDidUpdate()."]
      208 MOVE                             R8 R4
      209 CALL                             R6 2 0
      210 GETTABLEKS                       R7 R3 K36 ["componentWillRecieveProps"]
      212 FASTCALL1                        TYPE R7 ; [+2]
      213 GETIMPORT                        R6 K4 [type]
      215 CALL                             R6 1 1
      216 JUMPIFNOTEQKS                    R6 K5 ["function"] ; [+7]
      218 GETUPVAL                         R7 2
      219 GETTABLEKS                       R6 R7 K6 ["error"]
      221 LOADK                            R7 K37 ["%s has a method called componentWillRecieveProps(). Did you mean componentWillReceiveProps()?"]
      222 MOVE                             R8 R4
      223 CALL                             R6 2 0
      224 GETTABLEKS                       R7 R3 K38 ["UNSAFE_componentWillRecieveProps"]
      226 FASTCALL1                        TYPE R7 ; [+2]
      227 GETIMPORT                        R6 K4 [type]
      229 CALL                             R6 1 1
      230 JUMPIFNOTEQKS                    R6 K5 ["function"] ; [+7]
      232 GETUPVAL                         R7 2
      233 GETTABLEKS                       R6 R7 K6 ["error"]
      235 LOADK                            R7 K39 ["%s has a method called UNSAFE_componentWillRecieveProps(). Did you mean UNSAFE_componentWillReceiveProps()?"]
      236 MOVE                             R8 R4
      237 CALL                             R6 2 0
      238 GETTABLEKS                       R7 R3 K40 ["props"]
      240 JUMPIFNOTEQ                      R7 R2 ; [+2]
      242 LOADB                            R6 0 +1
      243 LOADB                            R6 1
      244 GETTABLEKS                       R7 R3 K40 ["props"]
      246 JUMPIFEQKNIL                     R7 ; [+9]
      248 JUMPIFNOT                        R6 ; [+7]
      249 GETUPVAL                         R8 2
      250 GETTABLEKS                       R7 R8 K6 ["error"]
      252 LOADK                            R8 K41 ["%s(...): When calling super() in `%s`, make sure to pass up the same props that your component's constructor was passed."]
      253 MOVE                             R9 R4
      254 MOVE                             R10 R4
      255 CALL                             R7 3 0
      256 FASTCALL2K                       RAWGET R3 K42 ; [+5]
      258 MOVE                             R8 R3
      259 LOADK                            R9 K42 ["defaultProps"]
      260 GETIMPORT                        R7 K44 [rawget]
      262 CALL                             R7 2 1
      263 JUMPIFNOT                        R7 ; [+7]
      264 GETUPVAL                         R8 2
      265 GETTABLEKS                       R7 R8 K6 ["error"]
      267 LOADK                            R8 K45 ["Setting defaultProps as an instance property on %s is not supported and will be ignored. Instead, define defaultProps as a static property on %s."]
      268 MOVE                             R9 R4
      269 MOVE                             R10 R4
      270 CALL                             R7 3 0
      271 GETTABLEKS                       R8 R3 K46 ["getSnapshotBeforeUpdate"]
      273 FASTCALL1                        TYPE R8 ; [+2]
      274 GETIMPORT                        R7 K4 [type]
      276 CALL                             R7 1 1
      277 JUMPIFNOTEQKS                    R7 K5 ["function"] ; [+23]
      279 GETTABLEKS                       R8 R3 K47 ["componentDidUpdate"]
      281 FASTCALL1                        TYPE R8 ; [+2]
      282 GETIMPORT                        R7 K4 [type]
      284 CALL                             R7 1 1
      285 JUMPIFEQKS                       R7 K5 ["function"] ; [+15]
      287 GETUPVAL                         R8 5
      288 GETTABLE                         R7 R8 R1
      289 JUMPIF                           R7 ; [+11]
      290 GETUPVAL                         R7 5
      291 LOADB                            R8 1
      292 SETTABLE                         R8 R7 R1
      293 GETUPVAL                         R8 2
      294 GETTABLEKS                       R7 R8 K6 ["error"]
      296 LOADK                            R8 K48 ["%s: getSnapshotBeforeUpdate() should be used with componentDidUpdate(). This component defines getSnapshotBeforeUpdate() only."]
      297 GETUPVAL                         R9 1
      298 MOVE                             R10 R1
      299 CALL                             R9 1 -1
      300 CALL                             R7 -1 0
      301 GETTABLEKS                       R7 R3 K11 ["state"]
      303 JUMPIFEQKNIL                     R7 ; [+14]
      305 FASTCALL1                        TYPE R7 ; [+3]
      306 MOVE                             R9 R7
      307 GETIMPORT                        R8 K4 [type]
      309 CALL                             R8 1 1
      310 JUMPIFEQKS                       R8 K24 ["table"] ; [+7]
      312 GETUPVAL                         R9 2
      313 GETTABLEKS                       R8 R9 K6 ["error"]
      315 LOADK                            R9 K49 ["%s.state: must be set to an object or nil"]
      316 MOVE                             R10 R4
      317 CALL                             R8 2 0
      318 FASTCALL1                        TYPE R1 ; [+3]
      319 MOVE                             R9 R1
      320 GETIMPORT                        R8 K4 [type]
      322 CALL                             R8 1 1
      323 JUMPIFNOTEQKS                    R8 K24 ["table"] ; [+23]
      325 GETTABLEKS                       R9 R3 K50 ["getChildContext"]
      327 FASTCALL1                        TYPE R9 ; [+2]
      328 GETIMPORT                        R8 K4 [type]
      330 CALL                             R8 1 1
      331 JUMPIFNOTEQKS                    R8 K5 ["function"] ; [+15]
      333 GETTABLEKS                       R9 R1 K19 ["childContextTypes"]
      335 FASTCALL1                        TYPE R9 ; [+2]
      336 GETIMPORT                        R8 K4 [type]
      338 CALL                             R8 1 1
      339 JUMPIFEQKS                       R8 K24 ["table"] ; [+7]
      341 GETUPVAL                         R9 2
      342 GETTABLEKS                       R8 R9 K6 ["error"]
      344 LOADK                            R9 K51 ["%s.getChildContext(): childContextTypes must be defined in order to use getChildContext()."]
      345 MOVE                             R10 R4
      346 CALL                             R8 2 0
      347 RETURN                           R0 0

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
       14 GETUPVAL                         R2 3
       15 JUMPIFNOT                        R2 ; [+3]
       16 GETUPVAL                         R2 4
       17 SETTABLEKS                       R2 R1 K2 ["_reactInternalInstance"]
       19 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R3 0
        1 GETUPVAL                         R4 0
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R6 R1 K0 ["contextType"]
        5 GETUPVAL                         R7 1
        6 JUMPIFNOT                        R7 ; [+87]
        7 GETTABLEKS                       R7 R1 K0 ["contextType"]
        9 JUMPIFEQKNIL                     R7 ; [+84]
       11 LOADB                            R7 1
       12 JUMPIFEQKNIL                     R6 ; [+13]
       14 LOADB                            R7 0
       15 GETTABLEKS                       R8 R6 K1 ["$$typeof"]
       17 GETUPVAL                         R9 2
       18 JUMPIFNOTEQ                      R8 R9 ; [+7]
       20 GETTABLEKS                       R8 R6 K2 ["_context"]
       22 JUMPIFEQKNIL                     R8 ; [+2]
       24 LOADB                            R7 0 +1
       25 LOADB                            R7 1
       26 JUMPIF                           R7 ; [+67]
       27 GETUPVAL                         R9 3
       28 GETTABLE                         R8 R9 R1
       29 JUMPIF                           R8 ; [+64]
       30 GETUPVAL                         R8 3
       31 LOADB                            R9 1
       32 SETTABLE                         R9 R8 R1
       33 LOADK                            R8 K3 [""]
       34 JUMPIFNOTEQKNIL                  R6 ; [+3]
       36 LOADK                            R8 K4 [" However, it is set to nil. This can be caused by a typo or by mixing up named and default imports. This can also happen due to a circular dependency, so try moving the createContext() call to a separate file."]
       37 JUMP                             ; [+46]
       38 FASTCALL1                        TYPE R6 ; [+3]
       39 MOVE                             R10 R6
       40 GETIMPORT                        R9 K6 [type]
       42 CALL                             R9 1 1
       43 JUMPIFEQKS                       R9 K7 ["table"] ; [+11]
       45 LOADK                            R9 K8 [" However, it is set to a "]
       46 FASTCALL1                        TYPE R6 ; [+3]
       47 MOVE                             R13 R6
       48 GETIMPORT                        R12 K6 [type]
       50 CALL                             R12 1 1
       51 MOVE                             R10 R12
       52 LOADK                            R11 K9 ["."]
       53 CONCAT                           R8 R9 R11
       54 JUMP                             ; [+29]
       55 GETTABLEKS                       R9 R6 K1 ["$$typeof"]
       57 GETUPVAL                         R10 4
       58 JUMPIFNOTEQ                      R9 R10 ; [+3]
       60 LOADK                            R8 K10 [" Did you accidentally pass the Context.Provider instead?"]
       61 JUMP                             ; [+22]
       62 GETTABLEKS                       R9 R6 K2 ["_context"]
       64 JUMPIFEQKNIL                     R9 ; [+3]
       66 LOADK                            R8 K11 [" Did you accidentally pass the Context.Consumer instead?"]
       67 JUMP                             ; [+16]
       68 MOVE                             R9 R8
       69 LOADK                            R10 K12 [" However, it is set to an object with keys {"]
       70 CONCAT                           R8 R9 R10
       71 MOVE                             R9 R6
       72 LOADNIL                          R10
       73 LOADNIL                          R11
       74 FORGPREP                         R9
       75 MOVE                             R14 R8
       76 MOVE                             R15 R12
       77 LOADK                            R16 K13 [", "]
       78 CONCAT                           R8 R14 R16
       79 FORGLOOP                         R9 2 ; [-5]
       81 MOVE                             R9 R8
       82 LOADK                            R10 K14 ["}."]
       83 CONCAT                           R8 R9 R10
       84 GETUPVAL                         R10 5
       85 GETTABLEKS                       R9 R10 K15 ["error"]
       87 LOADK                            R10 K16 ["%s defines an invalid contextType. contextType should point to the Context object returned by React.createContext().%s"]
       88 GETUPVAL                         R12 6
       89 MOVE                             R13 R1
       90 CALL                             R12 1 1
       91 ORK                              R11 R12 K17 ["Component"]
       92 MOVE                             R12 R8
       93 CALL                             R9 3 0
       94 JUMPIFEQKNIL                     R6 ; [+13]
       96 FASTCALL1                        TYPE R6 ; [+3]
       97 MOVE                             R8 R6
       98 GETIMPORT                        R7 K6 [type]
      100 CALL                             R7 1 1
      101 JUMPIFNOTEQKS                    R7 K7 ["table"] ; [+6]
      103 GETUPVAL                         R7 7
      104 MOVE                             R8 R6
      105 CALL                             R7 1 1
      106 MOVE                             R5 R7
      107 JUMP                             ; [+22]
      108 GETUPVAL                         R7 8
      109 JUMPIF                           R7 ; [+20]
      110 GETUPVAL                         R7 9
      111 MOVE                             R8 R0
      112 MOVE                             R9 R1
      113 LOADB                            R10 1
      114 CALL                             R7 3 1
      115 MOVE                             R4 R7
      116 GETTABLEKS                       R7 R1 K18 ["contextTypes"]
      118 JUMPIFNOTEQKNIL                  R7 ; [+2]
      120 LOADB                            R3 0 +1
      121 LOADB                            R3 1
      122 JUMPIFNOT                        R3 ; [+5]
      123 GETUPVAL                         R8 10
      124 MOVE                             R9 R0
      125 MOVE                             R10 R4
      126 CALL                             R8 2 1
      127 JUMPIF                           R8 ; [+1]
      128 GETUPVAL                         R8 0
      129 MOVE                             R5 R8
      130 GETUPVAL                         R7 1
      131 JUMPIFNOT                        R7 ; [+29]
      132 GETUPVAL                         R7 11
      133 JUMPIFNOT                        R7 ; [+27]
      134 GETTABLEKS                       R8 R0 K19 ["mode"]
      136 GETUPVAL                         R9 12
      137 FASTCALL2                        BIT32_BAND R8 R9 ; [+3]
      139 GETIMPORT                        R7 K22 [bit32.band]
      141 CALL                             R7 2 1
      142 JUMPIFEQKN                       R7 K23 [0] ; [+18]
      144 GETUPVAL                         R7 13
      145 CALL                             R7 0 0
      146 GETIMPORT                        R7 K25 [xpcall]
      148 GETTABLEKS                       R8 R1 K26 ["__ctor"]
      150 GETUPVAL                         R9 14
      151 MOVE                             R10 R2
      152 MOVE                             R11 R5
      153 CALL                             R7 4 2
      154 GETUPVAL                         R9 15
      155 CALL                             R9 0 0
      156 JUMPIF                           R7 ; [+4]
      157 GETIMPORT                        R9 K27 [error]
      159 MOVE                             R10 R8
      160 CALL                             R9 1 0
      161 GETTABLEKS                       R7 R1 K26 ["__ctor"]
      163 MOVE                             R8 R2
      164 MOVE                             R9 R5
      165 CALL                             R7 2 1
      166 GETTABLEKS                       R8 R7 K28 ["state"]
      168 SETTABLEKS                       R8 R0 K29 ["memoizedState"]
      170 GETTABLEKS                       R8 R0 K29 ["memoizedState"]
      172 GETUPVAL                         R10 16
      173 JUMPIFNOTEQKNIL                  R10 ; [+3]
      175 GETUPVAL                         R10 17
      176 CALL                             R10 0 0
      177 GETUPVAL                         R9 16
      178 SETTABLEKS                       R9 R7 K30 ["__updater"]
      180 SETTABLEKS                       R7 R0 K31 ["stateNode"]
      182 GETUPVAL                         R9 18
      183 MOVE                             R10 R7
      184 MOVE                             R11 R0
      185 CALL                             R9 2 0
      186 GETUPVAL                         R9 1
      187 JUMPIFNOT                        R9 ; [+3]
      188 GETUPVAL                         R9 19
      189 SETTABLEKS                       R9 R7 K32 ["_reactInternalInstance"]
      191 GETUPVAL                         R9 1
      192 JUMPIFNOT                        R9 ; [+178]
      193 GETTABLEKS                       R10 R1 K33 ["getDerivedStateFromProps"]
      195 FASTCALL1                        TYPE R10 ; [+2]
      196 GETIMPORT                        R9 K6 [type]
      198 CALL                             R9 1 1
      199 JUMPIFNOTEQKS                    R9 K34 ["function"] ; [+21]
      201 GETUPVAL                         R9 20
      202 JUMPIFNOTEQ                      R8 R9 ; [+18]
      204 GETUPVAL                         R10 6
      205 MOVE                             R11 R1
      206 CALL                             R10 1 1
      207 ORK                              R9 R10 K17 ["Component"]
      208 GETUPVAL                         R11 21
      209 GETTABLE                         R10 R11 R9
      210 JUMPIF                           R10 ; [+10]
      211 GETUPVAL                         R10 21
      212 LOADB                            R11 1
      213 SETTABLE                         R11 R10 R9
      214 GETUPVAL                         R11 5
      215 GETTABLEKS                       R10 R11 K15 ["error"]
      217 LOADK                            R11 K35 ["`%s` uses `getDerivedStateFromProps` but its initial state has not been initialized. This is not recommended. Instead, define the initial state by passing an object to `self:setState` in the `init` method of `%s`. This ensures that `getDerivedStateFromProps` arguments have a consistent shape."]
      218 MOVE                             R12 R9
      219 MOVE                             R13 R9
      220 CALL                             R10 3 0
      221 GETTABLEKS                       R10 R1 K33 ["getDerivedStateFromProps"]
      223 FASTCALL1                        TYPE R10 ; [+2]
      224 GETIMPORT                        R9 K6 [type]
      226 CALL                             R9 1 1
      227 JUMPIFEQKS                       R9 K34 ["function"] ; [+9]
      229 GETTABLEKS                       R10 R7 K36 ["getSnapshotBeforeUpdate"]
      231 FASTCALL1                        TYPE R10 ; [+2]
      232 GETIMPORT                        R9 K6 [type]
      234 CALL                             R9 1 1
      235 JUMPIFNOTEQKS                    R9 K34 ["function"] ; [+135]
      237 LOADNIL                          R9
      238 LOADNIL                          R10
      239 LOADNIL                          R11
      240 GETTABLEKS                       R13 R7 K37 ["componentWillMount"]
      242 FASTCALL1                        TYPE R13 ; [+2]
      243 GETIMPORT                        R12 K6 [type]
      245 CALL                             R12 1 1
      246 JUMPIFNOTEQKS                    R12 K34 ["function"] ; [+3]
      248 LOADK                            R9 K37 ["componentWillMount"]
      249 JUMP                             ; [+9]
      250 GETTABLEKS                       R13 R7 K38 ["UNSAFE_componentWillMount"]
      252 FASTCALL1                        TYPE R13 ; [+2]
      253 GETIMPORT                        R12 K6 [type]
      255 CALL                             R12 1 1
      256 JUMPIFNOTEQKS                    R12 K34 ["function"] ; [+2]
      258 LOADK                            R9 K38 ["UNSAFE_componentWillMount"]
      259 GETTABLEKS                       R13 R7 K39 ["componentWillReceiveProps"]
      261 FASTCALL1                        TYPE R13 ; [+2]
      262 GETIMPORT                        R12 K6 [type]
      264 CALL                             R12 1 1
      265 JUMPIFNOTEQKS                    R12 K34 ["function"] ; [+3]
      267 LOADK                            R10 K39 ["componentWillReceiveProps"]
      268 JUMP                             ; [+9]
      269 GETTABLEKS                       R13 R7 K40 ["UNSAFE_componentWillReceiveProps"]
      271 FASTCALL1                        TYPE R13 ; [+2]
      272 GETIMPORT                        R12 K6 [type]
      274 CALL                             R12 1 1
      275 JUMPIFNOTEQKS                    R12 K34 ["function"] ; [+2]
      277 LOADK                            R10 K40 ["UNSAFE_componentWillReceiveProps"]
      278 GETTABLEKS                       R13 R7 K41 ["componentWillUpdate"]
      280 FASTCALL1                        TYPE R13 ; [+2]
      281 GETIMPORT                        R12 K6 [type]
      283 CALL                             R12 1 1
      284 JUMPIFNOTEQKS                    R12 K34 ["function"] ; [+3]
      286 LOADK                            R11 K41 ["componentWillUpdate"]
      287 JUMP                             ; [+9]
      288 GETTABLEKS                       R13 R7 K42 ["UNSAFE_componentWillUpdate"]
      290 FASTCALL1                        TYPE R13 ; [+2]
      291 GETIMPORT                        R12 K6 [type]
      293 CALL                             R12 1 1
      294 JUMPIFNOTEQKS                    R12 K34 ["function"] ; [+2]
      296 LOADK                            R11 K42 ["UNSAFE_componentWillUpdate"]
      297 JUMPIFNOTEQKNIL                  R9 ; [+5]
      299 JUMPIFNOTEQKNIL                  R10 ; [+3]
      301 JUMPIFEQKNIL                     R11 ; [+69]
      303 GETUPVAL                         R13 6
      304 MOVE                             R14 R1
      305 CALL                             R13 1 1
      306 ORK                              R12 R13 K17 ["Component"]
      307 LOADNIL                          R13
      308 GETTABLEKS                       R15 R1 K33 ["getDerivedStateFromProps"]
      310 FASTCALL1                        TYPE R15 ; [+2]
      311 GETIMPORT                        R14 K6 [type]
      313 CALL                             R14 1 1
      314 JUMPIFNOTEQKS                    R14 K34 ["function"] ; [+3]
      316 LOADK                            R13 K43 ["getDerivedStateFromProps()"]
      317 JUMP                             ; [+1]
      318 LOADK                            R13 K44 ["getSnapshotBeforeUpdate()"]
      319 LOADNIL                          R14
      320 JUMPIFEQKNIL                     R9 ; [+9]
      322 LOADK                            R15 K45 ["\n  "]
      323 FASTCALL1                        TOSTRING R9 ; [+3]
      324 MOVE                             R17 R9
      325 GETIMPORT                        R16 K47 [tostring]
      327 CALL                             R16 1 1
      328 CONCAT                           R14 R15 R16
      329 JUMP                             ; [+1]
      330 LOADK                            R14 K3 [""]
      331 LOADNIL                          R15
      332 JUMPIFEQKNIL                     R10 ; [+9]
      334 LOADK                            R16 K45 ["\n  "]
      335 FASTCALL1                        TOSTRING R10 ; [+3]
      336 MOVE                             R18 R10
      337 GETIMPORT                        R17 K47 [tostring]
      339 CALL                             R17 1 1
      340 CONCAT                           R15 R16 R17
      341 JUMP                             ; [+1]
      342 LOADK                            R15 K3 [""]
      343 LOADNIL                          R16
      344 JUMPIFEQKNIL                     R11 ; [+9]
      346 LOADK                            R17 K45 ["\n  "]
      347 FASTCALL1                        TOSTRING R11 ; [+3]
      348 MOVE                             R19 R11
      349 GETIMPORT                        R18 K47 [tostring]
      351 CALL                             R18 1 1
      352 CONCAT                           R16 R17 R18
      353 JUMP                             ; [+1]
      354 LOADK                            R16 K3 [""]
      355 GETUPVAL                         R18 22
      356 GETTABLE                         R17 R18 R12
      357 JUMPIF                           R17 ; [+13]
      358 GETUPVAL                         R17 22
      359 LOADB                            R18 1
      360 SETTABLE                         R18 R17 R12
      361 GETUPVAL                         R18 5
      362 GETTABLEKS                       R17 R18 K15 ["error"]
      364 LOADK                            R18 K48 ["Unsafe legacy lifecycles will not be called for components using new component APIs.\n\n%s uses %s but also contains the following legacy lifecycles:%s%s%s\n\nThe above lifecycles should be removed. Learn more about this warning here:\nhttps://reactjs.org/link/unsafe-component-lifecycles"]
      365 MOVE                             R19 R12
      366 MOVE                             R20 R13
      367 MOVE                             R21 R14
      368 MOVE                             R22 R15
      369 MOVE                             R23 R16
      370 CALL                             R17 6 0
      371 JUMPIFNOT                        R3 ; [+5]
      372 GETUPVAL                         R9 23
      373 MOVE                             R10 R0
      374 MOVE                             R11 R4
      375 MOVE                             R12 R5
      376 CALL                             R9 3 0
      377 RETURN                           R7 1

PROTO_12:
        0 GETTABLEKS                       R2 R1 K0 ["state"]
        2 GETTABLEKS                       R3 R1 K1 ["componentWillMount"]
        4 JUMPIFEQKNIL                     R3 ; [+12]
        6 GETTABLEKS                       R4 R1 K1 ["componentWillMount"]
        8 FASTCALL1                        TYPE R4 ; [+2]
        9 GETIMPORT                        R3 K3 [type]
       11 CALL                             R3 1 1
       12 JUMPIFNOTEQKS                    R3 K4 ["function"] ; [+4]
       14 NAMECALL                         R3 R1 K1 ["componentWillMount"]
       16 CALL                             R3 1 0
       17 GETTABLEKS                       R3 R1 K5 ["UNSAFE_componentWillMount"]
       19 JUMPIFEQKNIL                     R3 ; [+12]
       21 GETTABLEKS                       R4 R1 K5 ["UNSAFE_componentWillMount"]
       23 FASTCALL1                        TYPE R4 ; [+2]
       24 GETIMPORT                        R3 K3 [type]
       26 CALL                             R3 1 1
       27 JUMPIFNOTEQKS                    R3 K4 ["function"] ; [+4]
       29 NAMECALL                         R3 R1 K5 ["UNSAFE_componentWillMount"]
       31 CALL                             R3 1 0
       32 GETTABLEKS                       R3 R1 K0 ["state"]
       34 JUMPIFEQ                         R2 R3 ; [+25]
       36 GETUPVAL                         R3 0
       37 JUMPIFNOT                        R3 ; [+10]
       38 GETUPVAL                         R4 1
       39 GETTABLEKS                       R3 R4 K6 ["error"]
       41 LOADK                            R4 K7 ["%s.componentWillMount(): Assigning directly to this.state is deprecated (except inside a component's constructor). Use setState instead."]
       42 GETUPVAL                         R6 2
       43 GETTABLEKS                       R7 R0 K2 ["type"]
       45 CALL                             R6 1 1
       46 ORK                              R5 R6 K8 ["Component"]
       47 CALL                             R3 2 0
       48 GETUPVAL                         R5 3
       49 JUMPIFNOTEQKNIL                  R5 ; [+3]
       51 GETUPVAL                         R5 4
       52 CALL                             R5 0 0
       53 GETUPVAL                         R4 3
       54 GETTABLEKS                       R3 R4 K9 ["enqueueReplaceState"]
       56 MOVE                             R4 R1
       57 GETTABLEKS                       R5 R1 K0 ["state"]
       59 CALL                             R3 2 0
       60 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R4 R1 K0 ["state"]
        2 GETTABLEKS                       R5 R1 K1 ["componentWillReceiveProps"]
        4 JUMPIFEQKNIL                     R5 ; [+14]
        6 GETTABLEKS                       R6 R1 K1 ["componentWillReceiveProps"]
        8 FASTCALL1                        TYPE R6 ; [+2]
        9 GETIMPORT                        R5 K3 [type]
       11 CALL                             R5 1 1
       12 JUMPIFNOTEQKS                    R5 K4 ["function"] ; [+6]
       14 MOVE                             R7 R2
       15 MOVE                             R8 R3
       16 NAMECALL                         R5 R1 K1 ["componentWillReceiveProps"]
       18 CALL                             R5 3 0
       19 GETTABLEKS                       R5 R1 K5 ["UNSAFE_componentWillReceiveProps"]
       21 JUMPIFEQKNIL                     R5 ; [+14]
       23 GETTABLEKS                       R6 R1 K5 ["UNSAFE_componentWillReceiveProps"]
       25 FASTCALL1                        TYPE R6 ; [+2]
       26 GETIMPORT                        R5 K3 [type]
       28 CALL                             R5 1 1
       29 JUMPIFNOTEQKS                    R5 K4 ["function"] ; [+6]
       31 MOVE                             R7 R2
       32 MOVE                             R8 R3
       33 NAMECALL                         R5 R1 K5 ["UNSAFE_componentWillReceiveProps"]
       35 CALL                             R5 3 0
       36 GETTABLEKS                       R5 R1 K0 ["state"]
       38 JUMPIFEQ                         R5 R4 ; [+32]
       40 GETUPVAL                         R5 0
       41 JUMPIFNOT                        R5 ; [+17]
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R7 R0 K2 ["type"]
       45 CALL                             R6 1 1
       46 ORK                              R5 R6 K6 ["Component"]
       47 GETUPVAL                         R7 2
       48 GETTABLE                         R6 R7 R5
       49 JUMPIF                           R6 ; [+9]
       50 GETUPVAL                         R6 2
       51 LOADB                            R7 1
       52 SETTABLE                         R7 R6 R5
       53 GETUPVAL                         R7 3
       54 GETTABLEKS                       R6 R7 K7 ["error"]
       56 LOADK                            R7 K8 ["%s.componentWillReceiveProps(): Assigning directly to this.state is deprecated (except inside a component's constructor). Use setState instead."]
       57 MOVE                             R8 R5
       58 CALL                             R6 2 0
       59 GETUPVAL                         R7 4
       60 JUMPIFNOTEQKNIL                  R7 ; [+3]
       62 GETUPVAL                         R7 5
       63 CALL                             R7 0 0
       64 GETUPVAL                         R6 4
       65 GETTABLEKS                       R5 R6 K9 ["enqueueReplaceState"]
       67 MOVE                             R6 R1
       68 GETTABLEKS                       R7 R1 K0 ["state"]
       70 CALL                             R5 2 0
       71 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+5]
        2 GETUPVAL                         R4 1
        3 MOVE                             R5 R0
        4 MOVE                             R6 R1
        5 MOVE                             R7 R2
        6 CALL                             R4 3 0
        7 GETTABLEKS                       R4 R0 K0 ["stateNode"]
        9 SETTABLEKS                       R2 R4 K1 ["props"]
       11 GETTABLEKS                       R5 R0 K2 ["memoizedState"]
       13 SETTABLEKS                       R5 R4 K3 ["state"]
       15 GETUPVAL                         R5 2
       16 SETTABLEKS                       R5 R4 K4 ["__refs"]
       18 GETUPVAL                         R5 3
       19 MOVE                             R6 R0
       20 CALL                             R5 1 0
       21 LOADNIL                          R5
       22 FASTCALL1                        TYPE R1 ; [+3]
       23 MOVE                             R7 R1
       24 GETIMPORT                        R6 K6 [type]
       26 CALL                             R6 1 1
       27 JUMPIFNOTEQKS                    R6 K7 ["table"] ; [+3]
       29 GETTABLEKS                       R5 R1 K8 ["contextType"]
       31 JUMPIFEQKNIL                     R5 ; [+14]
       33 FASTCALL1                        TYPE R5 ; [+3]
       34 MOVE                             R7 R5
       35 GETIMPORT                        R6 K6 [type]
       37 CALL                             R6 1 1
       38 JUMPIFNOTEQKS                    R6 K7 ["table"] ; [+7]
       40 GETUPVAL                         R6 4
       41 MOVE                             R7 R5
       42 CALL                             R6 1 1
       43 SETTABLEKS                       R6 R4 K9 ["context"]
       45 JUMP                             ; [+17]
       46 GETUPVAL                         R6 5
       47 JUMPIFNOT                        R6 ; [+4]
       48 GETUPVAL                         R6 6
       49 SETTABLEKS                       R6 R4 K9 ["context"]
       51 JUMP                             ; [+11]
       52 GETUPVAL                         R6 7
       53 MOVE                             R7 R0
       54 MOVE                             R8 R1
       55 LOADB                            R9 1
       56 CALL                             R6 3 1
       57 GETUPVAL                         R7 8
       58 MOVE                             R8 R0
       59 MOVE                             R9 R6
       60 CALL                             R7 2 1
       61 SETTABLEKS                       R7 R4 K9 ["context"]
       63 GETUPVAL                         R6 0
       64 JUMPIFNOT                        R6 ; [+44]
       65 GETTABLEKS                       R6 R4 K3 ["state"]
       67 JUMPIFNOTEQ                      R6 R2 ; [+17]
       69 GETUPVAL                         R7 9
       70 MOVE                             R8 R1
       71 CALL                             R7 1 1
       72 ORK                              R6 R7 K10 ["Component"]
       73 GETUPVAL                         R8 10
       74 GETTABLE                         R7 R8 R6
       75 JUMPIF                           R7 ; [+9]
       76 GETUPVAL                         R7 10
       77 LOADB                            R8 1
       78 SETTABLE                         R8 R7 R6
       79 GETUPVAL                         R8 11
       80 GETTABLEKS                       R7 R8 K11 ["error"]
       82 LOADK                            R8 K12 ["%s: It is not recommended to assign props directly to state because updates to props won't be reflected in state. In most cases, it is better to use props directly."]
       83 MOVE                             R9 R6
       84 CALL                             R7 2 0
       85 GETTABLEKS                       R7 R0 K13 ["mode"]
       87 GETUPVAL                         R8 12
       88 FASTCALL2                        BIT32_BAND R7 R8 ; [+3]
       90 GETIMPORT                        R6 K16 [bit32.band]
       92 CALL                             R6 2 1
       93 JUMPIFEQKN                       R6 K17 [0] ; [+7]
       95 GETUPVAL                         R7 13
       96 GETTABLEKS                       R6 R7 K18 ["recordLegacyContextWarning"]
       98 MOVE                             R7 R0
       99 MOVE                             R8 R4
      100 CALL                             R6 2 0
      101 GETUPVAL                         R6 14
      102 JUMPIFNOT                        R6 ; [+6]
      103 GETUPVAL                         R7 13
      104 GETTABLEKS                       R6 R7 K19 ["recordUnsafeLifecycleWarnings"]
      106 MOVE                             R7 R0
      107 MOVE                             R8 R4
      108 CALL                             R6 2 0
      109 GETUPVAL                         R6 15
      110 MOVE                             R7 R0
      111 MOVE                             R8 R2
      112 MOVE                             R9 R4
      113 MOVE                             R10 R3
      114 CALL                             R6 4 0
      115 GETTABLEKS                       R6 R0 K2 ["memoizedState"]
      117 SETTABLEKS                       R6 R4 K3 ["state"]
      119 FASTCALL1                        TYPE R1 ; [+3]
      120 MOVE                             R7 R1
      121 GETIMPORT                        R6 K6 [type]
      123 CALL                             R6 1 1
      124 LOADNIL                          R7
      125 FASTCALL1                        TYPE R1 ; [+3]
      126 MOVE                             R9 R1
      127 GETIMPORT                        R8 K6 [type]
      129 CALL                             R8 1 1
      130 JUMPIFNOTEQKS                    R8 K7 ["table"] ; [+3]
      132 GETTABLEKS                       R7 R1 K20 ["getDerivedStateFromProps"]
      134 JUMPIFEQKNIL                     R7 ; [+18]
      136 FASTCALL1                        TYPE R7 ; [+3]
      137 MOVE                             R9 R7
      138 GETIMPORT                        R8 K6 [type]
      140 CALL                             R8 1 1
      141 JUMPIFNOTEQKS                    R8 K21 ["function"] ; [+11]
      143 GETUPVAL                         R8 16
      144 MOVE                             R9 R0
      145 MOVE                             R10 R1
      146 MOVE                             R11 R7
      147 MOVE                             R12 R2
      148 CALL                             R8 4 0
      149 GETTABLEKS                       R8 R0 K2 ["memoizedState"]
      151 SETTABLEKS                       R8 R4 K3 ["state"]
      153 JUMPIFNOTEQKS                    R6 K7 ["table"] ; [+47]
      155 GETTABLEKS                       R9 R1 K20 ["getDerivedStateFromProps"]
      157 FASTCALL1                        TYPE R9 ; [+2]
      158 GETIMPORT                        R8 K6 [type]
      160 CALL                             R8 1 1
      161 JUMPIFEQKS                       R8 K21 ["function"] ; [+39]
      163 GETTABLEKS                       R9 R4 K22 ["getSnapshotBeforeUpdate"]
      165 FASTCALL1                        TYPE R9 ; [+2]
      166 GETIMPORT                        R8 K6 [type]
      168 CALL                             R8 1 1
      169 JUMPIFEQKS                       R8 K21 ["function"] ; [+31]
      171 GETTABLEKS                       R9 R4 K23 ["UNSAFE_componentWillMount"]
      173 FASTCALL1                        TYPE R9 ; [+2]
      174 GETIMPORT                        R8 K6 [type]
      176 CALL                             R8 1 1
      177 JUMPIFEQKS                       R8 K21 ["function"] ; [+9]
      179 GETTABLEKS                       R9 R4 K24 ["componentWillMount"]
      181 FASTCALL1                        TYPE R9 ; [+2]
      182 GETIMPORT                        R8 K6 [type]
      184 CALL                             R8 1 1
      185 JUMPIFNOTEQKS                    R8 K21 ["function"] ; [+15]
      187 GETUPVAL                         R8 17
      188 MOVE                             R9 R0
      189 MOVE                             R10 R4
      190 CALL                             R8 2 0
      191 GETUPVAL                         R8 15
      192 MOVE                             R9 R0
      193 MOVE                             R10 R2
      194 MOVE                             R11 R4
      195 MOVE                             R12 R3
      196 CALL                             R8 4 0
      197 GETTABLEKS                       R8 R0 K2 ["memoizedState"]
      199 SETTABLEKS                       R8 R4 K3 ["state"]
      201 GETTABLEKS                       R9 R4 K25 ["componentDidMount"]
      203 FASTCALL1                        TYPE R9 ; [+2]
      204 GETIMPORT                        R8 K6 [type]
      206 CALL                             R8 1 1
      207 JUMPIFNOTEQKS                    R8 K21 ["function"] ; [+32]
      209 GETUPVAL                         R8 0
      210 JUMPIFNOT                        R8 ; [+19]
      211 GETUPVAL                         R8 18
      212 JUMPIFNOT                        R8 ; [+17]
      213 GETTABLEKS                       R9 R0 K26 ["flags"]
      215 GETUPVAL                         R11 19
      216 GETUPVAL                         R12 20
      217 FASTCALL2                        BIT32_BOR R11 R12 ; [+3]
      219 GETIMPORT                        R10 K28 [bit32.bor]
      221 CALL                             R10 2 1
      222 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
      224 GETIMPORT                        R8 K28 [bit32.bor]
      226 CALL                             R8 2 1
      227 SETTABLEKS                       R8 R0 K26 ["flags"]
      229 RETURN                           R0 0
      230 GETTABLEKS                       R9 R0 K26 ["flags"]
      232 GETUPVAL                         R10 20
      233 FASTCALL2                        BIT32_BOR R9 R10 ; [+3]
      235 GETIMPORT                        R8 K28 [bit32.bor]
      237 CALL                             R8 2 1
      238 SETTABLEKS                       R8 R0 K26 ["flags"]
      240 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R4 R0 K0 ["stateNode"]
        2 GETTABLEKS                       R5 R0 K1 ["memoizedProps"]
        4 SETTABLEKS                       R5 R4 K2 ["props"]
        6 GETTABLEKS                       R6 R4 K3 ["context"]
        8 GETTABLEKS                       R7 R1 K4 ["contextType"]
       10 GETUPVAL                         R8 0
       11 JUMPIFEQKNIL                     R7 ; [+13]
       13 FASTCALL1                        TYPE R7 ; [+3]
       14 MOVE                             R10 R7
       15 GETIMPORT                        R9 K6 [type]
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
       40 FASTCALL1                        TYPE R9 ; [+3]
       41 MOVE                             R12 R9
       42 GETIMPORT                        R11 K6 [type]
       44 CALL                             R11 1 1
       45 JUMPIFEQKS                       R11 K9 ["function"] ; [+11]
       47 GETTABLEKS                       R12 R4 K10 ["getSnapshotBeforeUpdate"]
       49 FASTCALL1                        TYPE R12 ; [+2]
       50 GETIMPORT                        R11 K6 [type]
       52 CALL                             R11 1 1
       53 JUMPIFEQKS                       R11 K9 ["function"] ; [+2]
       55 LOADB                            R10 0 +1
       56 LOADB                            R10 1
       57 JUMPIF                           R10 ; [+27]
       58 GETTABLEKS                       R12 R4 K11 ["UNSAFE_componentWillReceiveProps"]
       60 FASTCALL1                        TYPE R12 ; [+2]
       61 GETIMPORT                        R11 K6 [type]
       63 CALL                             R11 1 1
       64 JUMPIFEQKS                       R11 K9 ["function"] ; [+9]
       66 GETTABLEKS                       R12 R4 K12 ["componentWillReceiveProps"]
       68 FASTCALL1                        TYPE R12 ; [+2]
       69 GETIMPORT                        R11 K6 [type]
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
      100 JUMPIFNOTEQ                      R5 R2 ; [+44]
      102 JUMPIFNOTEQ                      R11 R12 ; [+42]
      104 GETUPVAL                         R13 7
      105 CALL                             R13 0 1
      106 JUMPIF                           R13 ; [+38]
      107 GETUPVAL                         R13 8
      108 CALL                             R13 0 1
      109 JUMPIF                           R13 ; [+35]
      110 GETTABLEKS                       R14 R4 K16 ["componentDidMount"]
      112 FASTCALL1                        TYPE R14 ; [+2]
      113 GETIMPORT                        R13 K6 [type]
      115 CALL                             R13 1 1
      116 JUMPIFNOTEQKS                    R13 K9 ["function"] ; [+26]
      118 GETUPVAL                         R13 9
      119 JUMPIFNOT                        R13 ; [+13]
      120 GETUPVAL                         R13 10
      121 JUMPIFNOT                        R13 ; [+11]
      122 GETTABLEKS                       R14 R0 K17 ["flags"]
      124 GETUPVAL                         R15 11
      125 GETUPVAL                         R16 12
      126 FASTCALL                         BIT32_BOR ; [+2]
      127 GETIMPORT                        R13 K20 [bit32.bor]
      129 CALL                             R13 3 1
      130 SETTABLEKS                       R13 R0 K17 ["flags"]
      132 JUMP                             ; [+10]
      133 GETTABLEKS                       R14 R0 K17 ["flags"]
      135 GETUPVAL                         R15 12
      136 FASTCALL2                        BIT32_BOR R14 R15 ; [+3]
      138 GETIMPORT                        R13 K20 [bit32.bor]
      140 CALL                             R13 2 1
      141 SETTABLEKS                       R13 R0 K17 ["flags"]
      143 LOADB                            R13 0
      144 RETURN                           R13 1
      145 JUMPIFEQKNIL                     R9 ; [+16]
      147 FASTCALL1                        TYPE R9 ; [+3]
      148 MOVE                             R14 R9
      149 GETIMPORT                        R13 K6 [type]
      151 CALL                             R13 1 1
      152 JUMPIFNOTEQKS                    R13 K9 ["function"] ; [+9]
      154 GETUPVAL                         R13 13
      155 MOVE                             R14 R0
      156 MOVE                             R15 R1
      157 MOVE                             R16 R9
      158 MOVE                             R17 R2
      159 CALL                             R13 4 0
      160 GETTABLEKS                       R12 R0 K14 ["memoizedState"]
      162 GETUPVAL                         R13 8
      163 CALL                             R13 0 1
      164 JUMPIF                           R13 ; [+10]
      165 GETGLOBAL                        R13 K21 ["checkShouldComponentUpdate"]
      167 MOVE                             R14 R0
      168 MOVE                             R15 R1
      169 MOVE                             R16 R5
      170 MOVE                             R17 R2
      171 MOVE                             R18 R11
      172 MOVE                             R19 R12
      173 MOVE                             R20 R8
      174 CALL                             R13 7 1
      175 JUMPIFNOT                        R13 ; [+73]
      176 JUMPIF                           R10 ; [+38]
      177 GETTABLEKS                       R15 R4 K22 ["UNSAFE_componentWillMount"]
      179 FASTCALL1                        TYPE R15 ; [+2]
      180 GETIMPORT                        R14 K6 [type]
      182 CALL                             R14 1 1
      183 JUMPIFEQKS                       R14 K9 ["function"] ; [+9]
      185 GETTABLEKS                       R15 R4 K23 ["componentWillMount"]
      187 FASTCALL1                        TYPE R15 ; [+2]
      188 GETIMPORT                        R14 K6 [type]
      190 CALL                             R14 1 1
      191 JUMPIFNOTEQKS                    R14 K9 ["function"] ; [+23]
      193 GETTABLEKS                       R15 R4 K23 ["componentWillMount"]
      195 FASTCALL1                        TYPE R15 ; [+2]
      196 GETIMPORT                        R14 K6 [type]
      198 CALL                             R14 1 1
      199 JUMPIFNOTEQKS                    R14 K9 ["function"] ; [+4]
      201 NAMECALL                         R14 R4 K23 ["componentWillMount"]
      203 CALL                             R14 1 0
      204 GETTABLEKS                       R15 R4 K22 ["UNSAFE_componentWillMount"]
      206 FASTCALL1                        TYPE R15 ; [+2]
      207 GETIMPORT                        R14 K6 [type]
      209 CALL                             R14 1 1
      210 JUMPIFNOTEQKS                    R14 K9 ["function"] ; [+4]
      212 NAMECALL                         R14 R4 K22 ["UNSAFE_componentWillMount"]
      214 CALL                             R14 1 0
      215 GETTABLEKS                       R15 R4 K16 ["componentDidMount"]
      217 FASTCALL1                        TYPE R15 ; [+2]
      218 GETIMPORT                        R14 K6 [type]
      220 CALL                             R14 1 1
      221 JUMPIFNOTEQKS                    R14 K9 ["function"] ; [+64]
      223 GETUPVAL                         R14 9
      224 JUMPIFNOT                        R14 ; [+13]
      225 GETUPVAL                         R14 10
      226 JUMPIFNOT                        R14 ; [+11]
      227 GETTABLEKS                       R15 R0 K17 ["flags"]
      229 GETUPVAL                         R16 11
      230 GETUPVAL                         R17 12
      231 FASTCALL                         BIT32_BOR ; [+2]
      232 GETIMPORT                        R14 K20 [bit32.bor]
      234 CALL                             R14 3 1
      235 SETTABLEKS                       R14 R0 K17 ["flags"]
      237 JUMP                             ; [+48]
      238 GETTABLEKS                       R15 R0 K17 ["flags"]
      240 GETUPVAL                         R16 12
      241 FASTCALL2                        BIT32_BOR R15 R16 ; [+3]
      243 GETIMPORT                        R14 K20 [bit32.bor]
      245 CALL                             R14 2 1
      246 SETTABLEKS                       R14 R0 K17 ["flags"]
      248 JUMP                             ; [+37]
      249 GETTABLEKS                       R15 R4 K16 ["componentDidMount"]
      251 FASTCALL1                        TYPE R15 ; [+2]
      252 GETIMPORT                        R14 K6 [type]
      254 CALL                             R14 1 1
      255 JUMPIFNOTEQKS                    R14 K9 ["function"] ; [+26]
      257 GETUPVAL                         R14 9
      258 JUMPIFNOT                        R14 ; [+13]
      259 GETUPVAL                         R14 10
      260 JUMPIFNOT                        R14 ; [+11]
      261 GETTABLEKS                       R15 R0 K17 ["flags"]
      263 GETUPVAL                         R16 11
      264 GETUPVAL                         R17 12
      265 FASTCALL                         BIT32_BOR ; [+2]
      266 GETIMPORT                        R14 K20 [bit32.bor]
      268 CALL                             R14 3 1
      269 SETTABLEKS                       R14 R0 K17 ["flags"]
      271 JUMP                             ; [+10]
      272 GETTABLEKS                       R15 R0 K17 ["flags"]
      274 GETUPVAL                         R16 12
      275 FASTCALL2                        BIT32_BOR R15 R16 ; [+3]
      277 GETIMPORT                        R14 K20 [bit32.bor]
      279 CALL                             R14 2 1
      280 SETTABLEKS                       R14 R0 K17 ["flags"]
      282 SETTABLEKS                       R2 R0 K1 ["memoizedProps"]
      284 SETTABLEKS                       R12 R0 K14 ["memoizedState"]
      286 SETTABLEKS                       R2 R4 K2 ["props"]
      288 SETTABLEKS                       R12 R4 K15 ["state"]
      290 SETTABLEKS                       R8 R4 K3 ["context"]
      292 RETURN                           R13 1

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
       15 JUMP                             ; [+5]
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R8 R1 K2 ["type"]
       19 MOVE                             R9 R6
       20 CALL                             R7 2 1
       21 SETTABLEKS                       R7 R5 K4 ["props"]
       23 GETTABLEKS                       R8 R1 K5 ["pendingProps"]
       25 GETTABLEKS                       R9 R5 K6 ["context"]
       27 LOADNIL                          R10
       28 LOADNIL                          R11
       29 FASTCALL1                        TYPE R2 ; [+3]
       30 MOVE                             R13 R2
       31 GETIMPORT                        R12 K7 [type]
       33 CALL                             R12 1 1
       34 JUMPIFNOTEQKS                    R12 K8 ["table"] ; [+5]
       36 GETTABLEKS                       R10 R2 K9 ["contextType"]
       38 GETTABLEKS                       R11 R2 K10 ["getDerivedStateFromProps"]
       40 GETUPVAL                         R12 2
       41 FASTCALL1                        TYPE R10 ; [+3]
       42 MOVE                             R14 R10
       43 GETIMPORT                        R13 K7 [type]
       45 CALL                             R13 1 1
       46 JUMPIFNOTEQKS                    R13 K8 ["table"] ; [+6]
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
       65 JUMPIFEQKNIL                     R11 ; [+9]
       67 LOADB                            R13 1
       68 FASTCALL1                        TYPE R11 ; [+3]
       69 MOVE                             R15 R11
       70 GETIMPORT                        R14 K7 [type]
       72 CALL                             R14 1 1
       73 JUMPIFEQKS                       R14 K11 ["function"] ; [+16]
       75 LOADB                            R13 0
       76 GETTABLEKS                       R14 R5 K12 ["getSnapshotBeforeUpdate"]
       78 JUMPIFEQKNIL                     R14 ; [+11]
       80 GETTABLEKS                       R15 R5 K12 ["getSnapshotBeforeUpdate"]
       82 FASTCALL1                        TYPE R15 ; [+2]
       83 GETIMPORT                        R14 K7 [type]
       85 CALL                             R14 1 1
       86 JUMPIFEQKS                       R14 K11 ["function"] ; [+2]
       88 LOADB                            R13 0 +1
       89 LOADB                            R13 1
       90 JUMPIF                           R13 ; [+35]
       91 GETTABLEKS                       R14 R5 K13 ["UNSAFE_componentWillReceiveProps"]
       93 JUMPIFEQKNIL                     R14 ; [+9]
       95 GETTABLEKS                       R15 R5 K13 ["UNSAFE_componentWillReceiveProps"]
       97 FASTCALL1                        TYPE R15 ; [+2]
       98 GETIMPORT                        R14 K7 [type]
      100 CALL                             R14 1 1
      101 JUMPIFEQKS                       R14 K11 ["function"] ; [+13]
      103 GETTABLEKS                       R14 R5 K14 ["componentWillReceiveProps"]
      105 JUMPIFEQKNIL                     R14 ; [+20]
      107 GETTABLEKS                       R15 R5 K14 ["componentWillReceiveProps"]
      109 FASTCALL1                        TYPE R15 ; [+2]
      110 GETIMPORT                        R14 K7 [type]
      112 CALL                             R14 1 1
      113 JUMPIFNOTEQKS                    R14 K11 ["function"] ; [+12]
      115 JUMPIFNOTEQ                      R6 R8 ; [+3]
      117 JUMPIFEQ                         R9 R12 ; [+8]
      119 GETGLOBAL                        R14 K15 ["callComponentWillReceiveProps"]
      121 MOVE                             R15 R1
      122 MOVE                             R16 R5
      123 MOVE                             R17 R3
      124 MOVE                             R18 R12
      125 CALL                             R14 4 0
      126 GETUPVAL                         R14 7
      127 CALL                             R14 0 0
      128 GETTABLEKS                       R14 R1 K16 ["memoizedState"]
      130 SETTABLEKS                       R14 R5 K17 ["state"]
      132 GETTABLEKS                       R15 R5 K17 ["state"]
      134 GETUPVAL                         R16 8
      135 MOVE                             R17 R1
      136 MOVE                             R18 R3
      137 MOVE                             R19 R5
      138 MOVE                             R20 R4
      139 CALL                             R16 4 0
      140 GETTABLEKS                       R15 R1 K16 ["memoizedState"]
      142 JUMPIFNOTEQ                      R6 R8 ; [+71]
      144 JUMPIFNOTEQ                      R14 R15 ; [+69]
      146 GETUPVAL                         R16 9
      147 CALL                             R16 0 1
      148 JUMPIF                           R16 ; [+65]
      149 GETUPVAL                         R16 10
      150 CALL                             R16 0 1
      151 JUMPIF                           R16 ; [+62]
      152 GETTABLEKS                       R16 R5 K18 ["componentDidUpdate"]
      154 JUMPIFEQKNIL                     R16 ; [+27]
      156 GETTABLEKS                       R17 R5 K18 ["componentDidUpdate"]
      158 FASTCALL1                        TYPE R17 ; [+2]
      159 GETIMPORT                        R16 K7 [type]
      161 CALL                             R16 1 1
      162 JUMPIFNOTEQKS                    R16 K11 ["function"] ; [+19]
      164 GETTABLEKS                       R16 R0 K1 ["memoizedProps"]
      166 JUMPIFNOTEQ                      R6 R16 ; [+5]
      168 GETTABLEKS                       R16 R0 K16 ["memoizedState"]
      170 JUMPIFEQ                         R14 R16 ; [+11]
      172 GETTABLEKS                       R17 R1 K19 ["flags"]
      174 GETUPVAL                         R18 11
      175 FASTCALL2                        BIT32_BOR R17 R18 ; [+3]
      177 GETIMPORT                        R16 K22 [bit32.bor]
      179 CALL                             R16 2 1
      180 SETTABLEKS                       R16 R1 K19 ["flags"]
      182 GETTABLEKS                       R16 R5 K12 ["getSnapshotBeforeUpdate"]
      184 JUMPIFEQKNIL                     R16 ; [+27]
      186 GETTABLEKS                       R17 R5 K12 ["getSnapshotBeforeUpdate"]
      188 FASTCALL1                        TYPE R17 ; [+2]
      189 GETIMPORT                        R16 K7 [type]
      191 CALL                             R16 1 1
      192 JUMPIFNOTEQKS                    R16 K11 ["function"] ; [+19]
      194 GETTABLEKS                       R16 R0 K1 ["memoizedProps"]
      196 JUMPIFNOTEQ                      R6 R16 ; [+5]
      198 GETTABLEKS                       R16 R0 K16 ["memoizedState"]
      200 JUMPIFEQ                         R14 R16 ; [+11]
      202 GETTABLEKS                       R17 R1 K19 ["flags"]
      204 GETUPVAL                         R18 12
      205 FASTCALL2                        BIT32_BOR R17 R18 ; [+3]
      207 GETIMPORT                        R16 K22 [bit32.bor]
      209 CALL                             R16 2 1
      210 SETTABLEKS                       R16 R1 K19 ["flags"]
      212 LOADB                            R16 0
      213 RETURN                           R16 1
      214 JUMPIFEQKNIL                     R11 ; [+16]
      216 FASTCALL1                        TYPE R11 ; [+3]
      217 MOVE                             R17 R11
      218 GETIMPORT                        R16 K7 [type]
      220 CALL                             R16 1 1
      221 JUMPIFNOTEQKS                    R16 K11 ["function"] ; [+9]
      223 GETUPVAL                         R16 13
      224 MOVE                             R17 R1
      225 MOVE                             R18 R2
      226 MOVE                             R19 R11
      227 MOVE                             R20 R3
      228 CALL                             R16 4 0
      229 GETTABLEKS                       R15 R1 K16 ["memoizedState"]
      231 GETUPVAL                         R16 10
      232 CALL                             R16 0 1
      233 JUMPIF                           R16 ; [+10]
      234 GETGLOBAL                        R16 K23 ["checkShouldComponentUpdate"]
      236 MOVE                             R17 R1
      237 MOVE                             R18 R2
      238 MOVE                             R19 R7
      239 MOVE                             R20 R3
      240 MOVE                             R21 R14
      241 MOVE                             R22 R15
      242 MOVE                             R23 R12
      243 CALL                             R16 7 1
      244 JUMPIFNOT                        R16 ; [+106]
      245 JUMPIF                           R13 ; [+60]
      246 GETTABLEKS                       R17 R5 K24 ["UNSAFE_componentWillUpdate"]
      248 JUMPIFEQKNIL                     R17 ; [+9]
      250 GETTABLEKS                       R18 R5 K24 ["UNSAFE_componentWillUpdate"]
      252 FASTCALL1                        TYPE R18 ; [+2]
      253 GETIMPORT                        R17 K7 [type]
      255 CALL                             R17 1 1
      256 JUMPIFEQKS                       R17 K11 ["function"] ; [+13]
      258 GETTABLEKS                       R17 R5 K25 ["componentWillUpdate"]
      260 JUMPIFEQKNIL                     R17 ; [+45]
      262 GETTABLEKS                       R18 R5 K25 ["componentWillUpdate"]
      264 FASTCALL1                        TYPE R18 ; [+2]
      265 GETIMPORT                        R17 K7 [type]
      267 CALL                             R17 1 1
      268 JUMPIFNOTEQKS                    R17 K11 ["function"] ; [+37]
      270 GETTABLEKS                       R17 R5 K25 ["componentWillUpdate"]
      272 JUMPIFEQKNIL                     R17 ; [+15]
      274 GETTABLEKS                       R18 R5 K25 ["componentWillUpdate"]
      276 FASTCALL1                        TYPE R18 ; [+2]
      277 GETIMPORT                        R17 K7 [type]
      279 CALL                             R17 1 1
      280 JUMPIFNOTEQKS                    R17 K11 ["function"] ; [+7]
      282 MOVE                             R19 R3
      283 MOVE                             R20 R15
      284 MOVE                             R21 R12
      285 NAMECALL                         R17 R5 K25 ["componentWillUpdate"]
      287 CALL                             R17 4 0
      288 GETTABLEKS                       R17 R5 K24 ["UNSAFE_componentWillUpdate"]
      290 JUMPIFEQKNIL                     R17 ; [+15]
      292 GETTABLEKS                       R18 R5 K24 ["UNSAFE_componentWillUpdate"]
      294 FASTCALL1                        TYPE R18 ; [+2]
      295 GETIMPORT                        R17 K7 [type]
      297 CALL                             R17 1 1
      298 JUMPIFNOTEQKS                    R17 K11 ["function"] ; [+7]
      300 MOVE                             R19 R3
      301 MOVE                             R20 R15
      302 MOVE                             R21 R12
      303 NAMECALL                         R17 R5 K24 ["UNSAFE_componentWillUpdate"]
      305 CALL                             R17 4 0
      306 GETTABLEKS                       R17 R5 K18 ["componentDidUpdate"]
      308 JUMPIFEQKNIL                     R17 ; [+19]
      310 GETTABLEKS                       R18 R5 K18 ["componentDidUpdate"]
      312 FASTCALL1                        TYPE R18 ; [+2]
      313 GETIMPORT                        R17 K7 [type]
      315 CALL                             R17 1 1
      316 JUMPIFNOTEQKS                    R17 K11 ["function"] ; [+11]
      318 GETTABLEKS                       R18 R1 K19 ["flags"]
      320 GETUPVAL                         R19 11
      321 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      323 GETIMPORT                        R17 K22 [bit32.bor]
      325 CALL                             R17 2 1
      326 SETTABLEKS                       R17 R1 K19 ["flags"]
      328 GETTABLEKS                       R17 R5 K12 ["getSnapshotBeforeUpdate"]
      330 JUMPIFEQKNIL                     R17 ; [+84]
      332 GETTABLEKS                       R18 R5 K12 ["getSnapshotBeforeUpdate"]
      334 FASTCALL1                        TYPE R18 ; [+2]
      335 GETIMPORT                        R17 K7 [type]
      337 CALL                             R17 1 1
      338 JUMPIFNOTEQKS                    R17 K11 ["function"] ; [+76]
      340 GETTABLEKS                       R18 R1 K19 ["flags"]
      342 GETUPVAL                         R19 12
      343 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      345 GETIMPORT                        R17 K22 [bit32.bor]
      347 CALL                             R17 2 1
      348 SETTABLEKS                       R17 R1 K19 ["flags"]
      350 JUMP                             ; [+64]
      351 GETTABLEKS                       R17 R5 K18 ["componentDidUpdate"]
      353 JUMPIFEQKNIL                     R17 ; [+27]
      355 GETTABLEKS                       R18 R5 K18 ["componentDidUpdate"]
      357 FASTCALL1                        TYPE R18 ; [+2]
      358 GETIMPORT                        R17 K7 [type]
      360 CALL                             R17 1 1
      361 JUMPIFNOTEQKS                    R17 K11 ["function"] ; [+19]
      363 GETTABLEKS                       R17 R0 K1 ["memoizedProps"]
      365 JUMPIFNOTEQ                      R6 R17 ; [+5]
      367 GETTABLEKS                       R17 R0 K16 ["memoizedState"]
      369 JUMPIFEQ                         R14 R17 ; [+11]
      371 GETTABLEKS                       R18 R1 K19 ["flags"]
      373 GETUPVAL                         R19 11
      374 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      376 GETIMPORT                        R17 K22 [bit32.bor]
      378 CALL                             R17 2 1
      379 SETTABLEKS                       R17 R1 K19 ["flags"]
      381 GETTABLEKS                       R17 R5 K12 ["getSnapshotBeforeUpdate"]
      383 JUMPIFEQKNIL                     R17 ; [+27]
      385 GETTABLEKS                       R18 R5 K12 ["getSnapshotBeforeUpdate"]
      387 FASTCALL1                        TYPE R18 ; [+2]
      388 GETIMPORT                        R17 K7 [type]
      390 CALL                             R17 1 1
      391 JUMPIFNOTEQKS                    R17 K11 ["function"] ; [+19]
      393 GETTABLEKS                       R17 R0 K1 ["memoizedProps"]
      395 JUMPIFNOTEQ                      R6 R17 ; [+5]
      397 GETTABLEKS                       R17 R0 K16 ["memoizedState"]
      399 JUMPIFEQ                         R14 R17 ; [+11]
      401 GETTABLEKS                       R18 R1 K19 ["flags"]
      403 GETUPVAL                         R19 12
      404 FASTCALL2                        BIT32_BOR R18 R19 ; [+3]
      406 GETIMPORT                        R17 K22 [bit32.bor]
      408 CALL                             R17 2 1
      409 SETTABLEKS                       R17 R1 K19 ["flags"]
      411 SETTABLEKS                       R3 R1 K1 ["memoizedProps"]
      413 SETTABLEKS                       R15 R1 K16 ["memoizedState"]
      415 SETTABLEKS                       R3 R5 K4 ["props"]
      417 SETTABLEKS                       R15 R5 K17 ["state"]
      419 SETTABLEKS                       R12 R5 K6 ["context"]
      421 RETURN                           R16 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [_G]
        3 GETTABLEKS                       R0 R1 K2 ["__DEV__"]
        5 GETIMPORT                        R3 K4 [script]
        7 GETTABLEKS                       R2 R3 K5 ["Parent"]
        9 GETTABLEKS                       R1 R2 K5 ["Parent"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["LuauPolyfill"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K9 ["Object"]
       18 GETIMPORT                        R5 K7 [require]
       20 GETTABLEKS                       R6 R1 K10 ["Shared"]
       22 CALL                             R5 1 1
       23 GETTABLEKS                       R4 R5 K11 ["console"]
       25 GETIMPORT                        R5 K7 [require]
       27 GETIMPORT                        R8 K4 [script]
       29 GETTABLEKS                       R7 R8 K5 ["Parent"]
       31 GETTABLEKS                       R6 R7 K12 ["ReactInternalTypes"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K7 [require]
       36 GETIMPORT                        R9 K4 [script]
       38 GETTABLEKS                       R8 R9 K5 ["Parent"]
       40 GETTABLEKS                       R7 R8 K13 ["ReactFiberLane"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K7 [require]
       45 GETIMPORT                        R10 K4 [script]
       47 GETTABLEKS                       R9 R10 K5 ["Parent"]
       49 GETTABLEKS                       R8 R9 K14 ["ReactUpdateQueue.new"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K7 [require]
       54 GETTABLEKS                       R9 R1 K10 ["Shared"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K7 [require]
       59 GETTABLEKS                       R10 R1 K15 ["React"]
       61 CALL                             R9 1 1
       62 GETIMPORT                        R10 K7 [require]
       64 GETIMPORT                        R13 K4 [script]
       66 GETTABLEKS                       R12 R13 K5 ["Parent"]
       68 GETTABLEKS                       R11 R12 K16 ["ReactFiberFlags"]
       70 CALL                             R10 1 1
       71 GETTABLEKS                       R11 R10 K17 ["Update"]
       73 GETTABLEKS                       R12 R10 K18 ["Snapshot"]
       75 GETTABLEKS                       R13 R10 K19 ["MountLayoutDev"]
       77 GETIMPORT                        R15 K7 [require]
       79 GETTABLEKS                       R16 R1 K10 ["Shared"]
       81 CALL                             R15 1 1
       82 GETTABLEKS                       R14 R15 K20 ["ReactFeatureFlags"]
       84 GETTABLEKS                       R15 R14 K21 ["debugRenderPhaseSideEffectsForStrictMode"]
       86 GETTABLEKS                       R16 R14 K22 ["disableLegacyContext"]
       88 GETTABLEKS                       R17 R14 K23 ["enableDebugTracing"]
       90 GETTABLEKS                       R18 R14 K24 ["enableSchedulingProfiler"]
       92 GETTABLEKS                       R19 R14 K25 ["warnAboutDeprecatedLifecycles"]
       94 GETTABLEKS                       R20 R14 K26 ["enableDoubleInvokingEffects"]
       96 GETIMPORT                        R21 K7 [require]
       98 GETIMPORT                        R24 K4 [script]
      100 GETTABLEKS                       R23 R24 K5 ["Parent"]
      102 GETTABLEKS                       R22 R23 K27 ["ReactStrictModeWarnings.new"]
      104 CALL                             R21 1 1
      105 GETIMPORT                        R23 K7 [require]
      107 GETIMPORT                        R26 K4 [script]
      109 GETTABLEKS                       R25 R26 K5 ["Parent"]
      111 GETTABLEKS                       R24 R25 K28 ["ReactFiberTreeReflection"]
      113 CALL                             R23 1 1
      114 GETTABLEKS                       R22 R23 K29 ["isMounted"]
      116 GETIMPORT                        R24 K7 [require]
      118 GETTABLEKS                       R25 R1 K10 ["Shared"]
      120 CALL                             R24 1 1
      121 GETTABLEKS                       R23 R24 K30 ["ReactInstanceMap"]
      123 GETTABLEKS                       R24 R23 K31 ["get"]
      125 GETTABLEKS                       R25 R23 K32 ["set"]
      127 GETIMPORT                        R27 K7 [require]
      129 GETTABLEKS                       R28 R1 K10 ["Shared"]
      131 CALL                             R27 1 1
      132 GETTABLEKS                       R26 R27 K33 ["shallowEqual"]
      134 GETIMPORT                        R28 K7 [require]
      136 GETTABLEKS                       R29 R1 K10 ["Shared"]
      138 CALL                             R28 1 1
      139 GETTABLEKS                       R27 R28 K34 ["getComponentName"]
      141 GETIMPORT                        R29 K7 [require]
      143 GETTABLEKS                       R30 R1 K10 ["Shared"]
      145 CALL                             R29 1 1
      146 GETTABLEKS                       R28 R29 K35 ["UninitializedState"]
      148 GETIMPORT                        R30 K7 [require]
      150 GETTABLEKS                       R31 R1 K10 ["Shared"]
      152 CALL                             R30 1 1
      153 GETTABLEKS                       R29 R30 K36 ["describeError"]
      155 GETIMPORT                        R31 K7 [require]
      157 GETTABLEKS                       R32 R1 K10 ["Shared"]
      159 CALL                             R31 1 1
      160 GETTABLEKS                       R30 R31 K37 ["ReactSymbols"]
      162 GETTABLEKS                       R31 R30 K38 ["REACT_CONTEXT_TYPE"]
      164 GETTABLEKS                       R32 R30 K39 ["REACT_PROVIDER_TYPE"]
      166 GETIMPORT                        R34 K7 [require]
      168 GETIMPORT                        R37 K4 [script]
      170 GETTABLEKS                       R36 R37 K5 ["Parent"]
      172 GETTABLEKS                       R35 R36 K40 ["ReactFiberLazyComponent.new"]
      174 CALL                             R34 1 1
      175 GETTABLEKS                       R33 R34 K41 ["resolveDefaultProps"]
      177 GETIMPORT                        R34 K7 [require]
      179 GETIMPORT                        R37 K4 [script]
      181 GETTABLEKS                       R36 R37 K5 ["Parent"]
      183 GETTABLEKS                       R35 R36 K42 ["ReactTypeOfMode"]
      185 CALL                             R34 1 1
      186 GETTABLEKS                       R35 R34 K43 ["DebugTracingMode"]
      188 GETTABLEKS                       R36 R34 K44 ["StrictMode"]
      190 GETTABLEKS                       R37 R7 K45 ["enqueueUpdate"]
      192 GETTABLEKS                       R38 R7 K46 ["processUpdateQueue"]
      194 GETTABLEKS                       R39 R7 K47 ["checkHasForceUpdateAfterProcessing"]
      196 GETTABLEKS                       R40 R7 K48 ["resetHasForceUpdateBeforeProcessing"]
      198 GETTABLEKS                       R41 R7 K49 ["createUpdate"]
      200 GETTABLEKS                       R42 R7 K50 ["ReplaceState"]
      202 GETTABLEKS                       R43 R7 K51 ["ForceUpdate"]
      204 GETTABLEKS                       R44 R7 K52 ["initializeUpdateQueue"]
      206 GETTABLEKS                       R45 R7 K53 ["cloneUpdateQueue"]
      208 GETTABLEKS                       R46 R6 K54 ["NoLanes"]
      210 GETIMPORT                        R47 K7 [require]
      212 GETIMPORT                        R50 K4 [script]
      214 GETTABLEKS                       R49 R50 K5 ["Parent"]
      216 GETTABLEKS                       R48 R49 K55 ["ReactFiberContext.new"]
      218 CALL                             R47 1 1
      219 GETTABLEKS                       R48 R47 K56 ["cacheContext"]
      221 GETTABLEKS                       R49 R47 K57 ["getMaskedContext"]
      223 GETTABLEKS                       R50 R47 K58 ["getUnmaskedContext"]
      225 GETTABLEKS                       R51 R47 K59 ["hasContextChanged"]
      227 GETTABLEKS                       R52 R47 K60 ["emptyContextObject"]
      229 GETIMPORT                        R53 K7 [require]
      231 GETIMPORT                        R56 K4 [script]
      233 GETTABLEKS                       R55 R56 K5 ["Parent"]
      235 GETTABLEKS                       R54 R55 K61 ["ReactFiberNewContext.new"]
      237 CALL                             R53 1 1
      238 GETTABLEKS                       R54 R53 K62 ["readContext"]
      240 GETIMPORT                        R55 K7 [require]
      242 GETIMPORT                        R58 K4 [script]
      244 GETTABLEKS                       R57 R58 K5 ["Parent"]
      246 GETTABLEKS                       R56 R57 K63 ["DebugTracing"]
      248 CALL                             R55 1 1
      249 GETTABLEKS                       R56 R55 K64 ["logForceUpdateScheduled"]
      251 GETTABLEKS                       R57 R55 K65 ["logStateUpdateScheduled"]
      253 GETIMPORT                        R59 K7 [require]
      255 GETTABLEKS                       R60 R1 K10 ["Shared"]
      257 CALL                             R59 1 1
      258 GETTABLEKS                       R58 R59 K66 ["ConsolePatchingDev"]
      260 GETTABLEKS                       R59 R58 K67 ["disableLogs"]
      262 GETTABLEKS                       R60 R58 K68 ["reenableLogs"]
      264 GETIMPORT                        R61 K7 [require]
      266 GETIMPORT                        R64 K4 [script]
      268 GETTABLEKS                       R63 R64 K5 ["Parent"]
      270 GETTABLEKS                       R62 R63 K69 ["SchedulingProfiler"]
      272 CALL                             R61 1 1
      273 GETTABLEKS                       R62 R61 K70 ["markForceUpdateScheduled"]
      275 GETTABLEKS                       R63 R61 K71 ["markStateUpdateScheduled"]
      277 NEWTABLE                         R64 0 0
      279 GETTABLEKS                       R66 R9 K72 ["Component"]
      281 LOADK                            R68 K73 [""]
      282 NAMECALL                         R66 R66 K74 ["extend"]
      284 CALL                             R66 2 1
      285 GETTABLEKS                       R65 R66 K75 ["__refs"]
      287 LOADNIL                          R66
      288 LOADNIL                          R67
      289 LOADNIL                          R68
      290 LOADNIL                          R69
      291 LOADNIL                          R70
      292 LOADNIL                          R71
      293 LOADNIL                          R72
      294 LOADNIL                          R73
      295 LOADNIL                          R74
      296 LOADNIL                          R75
      297 JUMPIFNOT                        R0 ; [+22]
      298 NEWTABLE                         R66 0 0
      300 NEWTABLE                         R67 0 0
      302 NEWTABLE                         R68 0 0
      304 NEWTABLE                         R69 0 0
      306 NEWTABLE                         R73 0 0
      308 NEWTABLE                         R70 0 0
      310 NEWTABLE                         R74 0 0
      312 NEWTABLE                         R75 0 0
      314 NEWTABLE                         R76 0 0
      316 DUPCLOSURE                       R72 K76 [PROTO_0]
      317 CAPTURE                          VAL R76
      318 CAPTURE                          VAL R4
      319 DUPCLOSURE                       R71 K77 [PROTO_1]
      320 NEWCLOSURE                       R76 P2
      321 CAPTURE                          VAL R0
      322 CAPTURE                          VAL R15
      323 CAPTURE                          VAL R36
      324 CAPTURE                          VAL R59
      325 CAPTURE                          VAL R29
      326 CAPTURE                          VAL R60
      327 CAPTURE                          REF R71
      328 CAPTURE                          VAL R3
      329 CAPTURE                          VAL R46
      330 LOADNIL                          R77
      331 NEWCLOSURE                       R78 P3
      332 CAPTURE                          REF R77
      333 CAPTURE                          VAL R22
      334 CAPTURE                          VAL R24
      335 CAPTURE                          VAL R41
      336 CAPTURE                          VAL R0
      337 CAPTURE                          REF R72
      338 CAPTURE                          VAL R37
      339 CAPTURE                          VAL R17
      340 CAPTURE                          VAL R35
      341 CAPTURE                          VAL R27
      342 CAPTURE                          VAL R57
      343 CAPTURE                          VAL R18
      344 CAPTURE                          VAL R63
      345 CAPTURE                          VAL R42
      346 CAPTURE                          VAL R43
      347 CAPTURE                          VAL R56
      348 CAPTURE                          VAL R62
      349 NEWCLOSURE                       R79 P4
      350 CAPTURE                          REF R77
      351 CAPTURE                          VAL R78
      352 DUPCLOSURE                       R80 K78 [PROTO_8]
      353 CAPTURE                          VAL R0
      354 CAPTURE                          VAL R15
      355 CAPTURE                          VAL R36
      356 CAPTURE                          VAL R59
      357 CAPTURE                          VAL R29
      358 CAPTURE                          VAL R60
      359 CAPTURE                          VAL R4
      360 CAPTURE                          VAL R27
      361 CAPTURE                          VAL R26
      362 SETGLOBAL                        R80 K79 ["checkShouldComponentUpdate"]
      364 NEWCLOSURE                       R80 P6
      365 CAPTURE                          VAL R0
      366 CAPTURE                          VAL R27
      367 CAPTURE                          VAL R4
      368 CAPTURE                          VAL R16
      369 CAPTURE                          REF R74
      370 CAPTURE                          REF R68
      371 NEWCLOSURE                       R81 P7
      372 CAPTURE                          REF R77
      373 CAPTURE                          VAL R78
      374 CAPTURE                          VAL R25
      375 CAPTURE                          VAL R0
      376 CAPTURE                          VAL R64
      377 NEWCLOSURE                       R82 P8
      378 CAPTURE                          VAL R52
      379 CAPTURE                          VAL R0
      380 CAPTURE                          VAL R31
      381 CAPTURE                          REF R75
      382 CAPTURE                          VAL R32
      383 CAPTURE                          VAL R4
      384 CAPTURE                          VAL R27
      385 CAPTURE                          VAL R54
      386 CAPTURE                          VAL R16
      387 CAPTURE                          VAL R50
      388 CAPTURE                          VAL R49
      389 CAPTURE                          VAL R15
      390 CAPTURE                          VAL R36
      391 CAPTURE                          VAL R59
      392 CAPTURE                          VAL R29
      393 CAPTURE                          VAL R60
      394 CAPTURE                          REF R77
      395 CAPTURE                          VAL R78
      396 CAPTURE                          VAL R25
      397 CAPTURE                          VAL R64
      398 CAPTURE                          VAL R28
      399 CAPTURE                          REF R67
      400 CAPTURE                          REF R69
      401 CAPTURE                          VAL R48
      402 NEWCLOSURE                       R83 P9
      403 CAPTURE                          VAL R0
      404 CAPTURE                          VAL R4
      405 CAPTURE                          VAL R27
      406 CAPTURE                          REF R77
      407 CAPTURE                          VAL R78
      408 NEWCLOSURE                       R84 P10
      409 CAPTURE                          VAL R0
      410 CAPTURE                          VAL R27
      411 CAPTURE                          REF R66
      412 CAPTURE                          VAL R4
      413 CAPTURE                          REF R77
      414 CAPTURE                          VAL R78
      415 SETGLOBAL                        R84 K80 ["callComponentWillReceiveProps"]
      417 NEWCLOSURE                       R84 P11
      418 CAPTURE                          VAL R0
      419 CAPTURE                          VAL R80
      420 CAPTURE                          VAL R65
      421 CAPTURE                          VAL R44
      422 CAPTURE                          VAL R54
      423 CAPTURE                          VAL R16
      424 CAPTURE                          VAL R52
      425 CAPTURE                          VAL R50
      426 CAPTURE                          VAL R49
      427 CAPTURE                          VAL R27
      428 CAPTURE                          REF R73
      429 CAPTURE                          VAL R4
      430 CAPTURE                          VAL R36
      431 CAPTURE                          VAL R21
      432 CAPTURE                          VAL R19
      433 CAPTURE                          VAL R38
      434 CAPTURE                          VAL R76
      435 CAPTURE                          VAL R83
      436 CAPTURE                          VAL R20
      437 CAPTURE                          VAL R13
      438 CAPTURE                          VAL R11
      439 DUPCLOSURE                       R85 K81 [PROTO_15]
      440 CAPTURE                          VAL R52
      441 CAPTURE                          VAL R54
      442 CAPTURE                          VAL R16
      443 CAPTURE                          VAL R50
      444 CAPTURE                          VAL R49
      445 CAPTURE                          VAL R40
      446 CAPTURE                          VAL R38
      447 CAPTURE                          VAL R51
      448 CAPTURE                          VAL R39
      449 CAPTURE                          VAL R0
      450 CAPTURE                          VAL R20
      451 CAPTURE                          VAL R13
      452 CAPTURE                          VAL R11
      453 CAPTURE                          VAL R76
      454 SETGLOBAL                        R85 K82 ["resumeMountClassInstance"]
      456 DUPCLOSURE                       R85 K83 [PROTO_16]
      457 CAPTURE                          VAL R45
      458 CAPTURE                          VAL R33
      459 CAPTURE                          VAL R52
      460 CAPTURE                          VAL R54
      461 CAPTURE                          VAL R16
      462 CAPTURE                          VAL R50
      463 CAPTURE                          VAL R49
      464 CAPTURE                          VAL R40
      465 CAPTURE                          VAL R38
      466 CAPTURE                          VAL R51
      467 CAPTURE                          VAL R39
      468 CAPTURE                          VAL R11
      469 CAPTURE                          VAL R12
      470 CAPTURE                          VAL R76
      471 DUPTABLE                         R86 K90 [{"adoptClassInstance", "constructClassInstance", "mountClassInstance", "resumeMountClassInstance", "updateClassInstance", "applyDerivedStateFromProps", "emptyRefsObject"}]
      472 SETTABLEKS                       R81 R86 K84 ["adoptClassInstance"]
      474 SETTABLEKS                       R82 R86 K85 ["constructClassInstance"]
      476 SETTABLEKS                       R84 R86 K86 ["mountClassInstance"]
      478 GETGLOBAL                        R87 K82 ["resumeMountClassInstance"]
      480 SETTABLEKS                       R87 R86 K82 ["resumeMountClassInstance"]
      482 SETTABLEKS                       R85 R86 K87 ["updateClassInstance"]
      484 SETTABLEKS                       R76 R86 K88 ["applyDerivedStateFromProps"]
      486 SETTABLEKS                       R65 R86 K89 ["emptyRefsObject"]
      488 CLOSEUPVALS                      R66
      489 RETURN                           R86 1
