PROTO_0:
        0 MOVE                             R1 R0
        1 MOVE                             R2 R0
        2 GETTABLEKS                       R3 R0 K0 ["alternate"]
        4 JUMPIF                           R3 ; [+26]
        5 MOVE                             R3 R1
        6 MOVE                             R1 R3
        7 GETTABLEKS                       R5 R1 K1 ["flags"]
        9 GETUPVAL                         R7 0
       10 GETUPVAL                         R8 1
       11 FASTCALL2                        BIT32_BOR R7 R8 ; [+3]
       13 GETIMPORT                        R6 K4 [bit32.bor]
       15 CALL                             R6 2 1
       16 FASTCALL2                        BIT32_BAND R5 R6 ; [+3]
       18 GETIMPORT                        R4 K6 [bit32.band]
       20 CALL                             R4 2 1
       21 GETUPVAL                         R5 2
       22 JUMPIFEQ                         R4 R5 ; [+3]
       24 GETTABLEKS                       R2 R1 K7 ["return_"]
       26 GETTABLEKS                       R3 R1 K7 ["return_"]
       28 JUMPIFNOT                        R3 ; [+8]
       29 JUMPBACK                         ; [-24]
       30 JUMP                             ; [+6]
       31 GETTABLEKS                       R3 R1 K7 ["return_"]
       33 JUMPIFNOT                        R3 ; [+3]
       34 GETTABLEKS                       R1 R1 K7 ["return_"]
       36 JUMPBACK                         ; [-6]
       37 GETTABLEKS                       R3 R1 K8 ["tag"]
       39 GETUPVAL                         R4 3
       40 JUMPIFNOTEQ                      R3 R4 ; [+2]
       42 RETURN                           R2 1
       43 LOADNIL                          R3
       44 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["tag"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+15]
        5 GETTABLEKS                       R1 R0 K1 ["memoizedState"]
        7 JUMPIFNOTEQKNIL                  R1 ; [+7]
        9 GETTABLEKS                       R2 R0 K2 ["alternate"]
       11 JUMPIFEQKNIL                     R2 ; [+3]
       13 GETTABLEKS                       R1 R2 K1 ["memoizedState"]
       15 JUMPIFNOT                        R1 ; [+3]
       16 GETTABLEKS                       R2 R1 K3 ["dehydrated"]
       18 RETURN                           R2 1
       19 LOADNIL                          R1
       20 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["tag"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOTEQ                      R2 R3 ; [+6]
        5 GETTABLEKS                       R1 R0 K1 ["stateNode"]
        7 GETTABLEKS                       R1 R1 K2 ["containerInfo"]
        9 RETURN                           R1 1
       10 LOADNIL                          R1
       11 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFEQ                         R2 R0 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["__DEV__"]
        3 JUMPIFNOT                        R1 ; [+28]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["current"]
        7 JUMPIFEQKNIL                     R1 ; [+24]
        9 GETTABLEKS                       R2 R1 K2 ["tag"]
       11 GETUPVAL                         R3 2
       12 JUMPIFNOTEQ                      R2 R3 ; [+19]
       14 GETTABLEKS                       R2 R1 K3 ["stateNode"]
       16 GETTABLEKS                       R3 R2 K4 ["_warnedAboutRefsInRender"]
       18 JUMPIF                           R3 ; [+10]
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K5 ["error"]
       22 LOADK                            R4 K6 ["%s is accessing isMounted inside its render() function. render() should be a pure function of props and state. It should never access something that requires stale data from the previous render, such as refs. Move this logic to componentDidMount and componentDidUpdate instead."]
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R7 R1 K8 ["type"]
       26 CALL                             R6 1 1
       27 ORK                              R5 R6 K7 ["A component"]
       28 CALL                             R3 2 0
       29 LOADB                            R3 1
       30 SETTABLEKS                       R3 R2 K4 ["_warnedAboutRefsInRender"]
       32 GETUPVAL                         R1 5
       33 MOVE                             R2 R0
       34 CALL                             R1 1 1
       35 JUMPIF                           R1 ; [+2]
       36 LOADB                            R2 0
       37 RETURN                           R2 1
       38 GETUPVAL                         R3 6
       39 MOVE                             R4 R1
       40 CALL                             R3 1 1
       41 JUMPIFEQ                         R3 R1 ; [+2]
       43 LOADB                            R2 0 +1
       44 LOADB                            R2 1
       45 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 JUMPIFEQ                         R3 R0 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 LOADK                            R3 K0 ["Unable to find node on an unmounted component."]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["alternate"]
        2 JUMPIF                           R1 ; [+15]
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 1
        7 JUMPIFNOTEQKNIL                  R2 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 LOADK                            R5 K1 ["Unable to find node on an unmounted component."]
       12 CALL                             R3 2 0
       13 JUMPIFEQ                         R2 R0 ; [+3]
       15 LOADNIL                          R3
       16 RETURN                           R3 1
       17 RETURN                           R0 1
       18 MOVE                             R2 R0
       19 MOVE                             R3 R1
       20 GETTABLEKS                       R4 R2 K2 ["return_"]
       22 JUMPIFEQKNIL                     R4 ; [+116]
       24 GETTABLEKS                       R5 R4 K0 ["alternate"]
       26 JUMPIFNOTEQKNIL                  R5 ; [+9]
       28 GETTABLEKS                       R6 R4 K2 ["return_"]
       30 JUMPIFEQKNIL                     R6 ; [+108]
       32 MOVE                             R2 R6
       33 MOVE                             R3 R6
       34 JUMP                             ; [+103]
       35 JUMP                             ; [+103]
       36 GETTABLEKS                       R6 R4 K3 ["child"]
       38 GETTABLEKS                       R7 R5 K3 ["child"]
       40 JUMPIFNOTEQ                      R6 R7 ; [+37]
       42 GETTABLEKS                       R6 R4 K3 ["child"]
       44 JUMPIFNOT                        R6 ; [+29]
       45 JUMPIFNOTEQ                      R6 R2 ; [+12]
       47 GETUPVAL                         R7 1
       48 GETUPVAL                         R9 0
       49 MOVE                             R10 R4
       50 CALL                             R9 1 1
       51 JUMPIFEQ                         R9 R4 ; [+2]
       53 LOADB                            R8 0 +1
       54 LOADB                            R8 1
       55 LOADK                            R9 K1 ["Unable to find node on an unmounted component."]
       56 CALL                             R7 2 0
       57 RETURN                           R0 1
       58 JUMPIFNOTEQ                      R6 R3 ; [+12]
       60 GETUPVAL                         R7 1
       61 GETUPVAL                         R9 0
       62 MOVE                             R10 R4
       63 CALL                             R9 1 1
       64 JUMPIFEQ                         R9 R4 ; [+2]
       66 LOADB                            R8 0 +1
       67 LOADB                            R8 1
       68 LOADK                            R9 K1 ["Unable to find node on an unmounted component."]
       69 CALL                             R7 2 0
       70 RETURN                           R1 1
       71 GETTABLEKS                       R6 R6 K4 ["sibling"]
       73 JUMPBACK                         ; [-30]
       74 GETUPVAL                         R7 1
       75 LOADB                            R8 0
       76 LOADK                            R9 K1 ["Unable to find node on an unmounted component."]
       77 CALL                             R7 2 0
       78 GETTABLEKS                       R6 R2 K2 ["return_"]
       80 GETTABLEKS                       R7 R3 K2 ["return_"]
       82 JUMPIFEQ                         R6 R7 ; [+4]
       84 MOVE                             R2 R4
       85 MOVE                             R3 R5
       86 JUMP                             ; [+42]
       87 LOADB                            R6 0
       88 GETTABLEKS                       R7 R4 K3 ["child"]
       90 JUMPIFNOT                        R7 ; [+15]
       91 JUMPIFNOTEQ                      R7 R2 ; [+5]
       93 LOADB                            R6 1
       94 MOVE                             R2 R4
       95 MOVE                             R3 R5
       96 JUMP                             ; [+9]
       97 JUMPIFNOTEQ                      R7 R3 ; [+5]
       99 LOADB                            R6 1
      100 MOVE                             R3 R4
      101 MOVE                             R2 R5
      102 JUMP                             ; [+3]
      103 GETTABLEKS                       R7 R7 K4 ["sibling"]
      105 JUMPBACK                         ; [-16]
      106 JUMPIF                           R6 ; [+22]
      107 GETTABLEKS                       R7 R5 K3 ["child"]
      109 JUMPIFNOT                        R7 ; [+15]
      110 JUMPIFNOTEQ                      R7 R2 ; [+5]
      112 LOADB                            R6 1
      113 MOVE                             R2 R5
      114 MOVE                             R3 R4
      115 JUMP                             ; [+9]
      116 JUMPIFNOTEQ                      R7 R3 ; [+5]
      118 LOADB                            R6 1
      119 MOVE                             R3 R5
      120 MOVE                             R2 R4
      121 JUMP                             ; [+3]
      122 GETTABLEKS                       R7 R7 K4 ["sibling"]
      124 JUMPBACK                         ; [-16]
      125 GETUPVAL                         R8 1
      126 MOVE                             R9 R6
      127 LOADK                            R10 K5 ["Child was not found in either parent set. This indicates a bug in React related to the return pointer. Please file an issue."]
      128 CALL                             R8 2 0
      129 GETUPVAL                         R6 1
      130 GETTABLEKS                       R8 R2 K0 ["alternate"]
      132 JUMPIFEQ                         R8 R3 ; [+2]
      134 LOADB                            R7 0 +1
      135 LOADB                            R7 1
      136 LOADK                            R8 K6 ["Return fibers should always be each others' alternates. This error is likely caused by a bug in React. Please file an issue."]
      137 CALL                             R6 2 0
      138 JUMPBACK                         ; [-119]
      139 GETUPVAL                         R4 1
      140 GETTABLEKS                       R6 R2 K7 ["tag"]
      142 GETUPVAL                         R7 2
      143 JUMPIFEQ                         R6 R7 ; [+2]
      145 LOADB                            R5 0 +1
      146 LOADB                            R5 1
      147 LOADK                            R6 K1 ["Unable to find node on an unmounted component."]
      148 CALL                             R4 2 0
      149 GETTABLEKS                       R4 R2 K8 ["stateNode"]
      151 GETTABLEKS                       R4 R4 K9 ["current"]
      153 JUMPIFNOTEQ                      R4 R2 ; [+2]
      155 RETURN                           R0 1
      156 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 MOVE                             R2 R1
        7 GETTABLEKS                       R3 R2 K0 ["child"]
        9 GETTABLEKS                       R4 R2 K1 ["tag"]
       11 GETUPVAL                         R5 1
       12 JUMPIFEQ                         R4 R5 ; [+6]
       14 GETTABLEKS                       R4 R2 K1 ["tag"]
       16 GETUPVAL                         R5 2
       17 JUMPIFNOTEQ                      R4 R5 ; [+2]
       19 RETURN                           R2 1
       20 JUMPIFNOT                        R3 ; [+4]
       21 SETTABLEKS                       R2 R3 K2 ["return_"]
       23 MOVE                             R2 R3
       24 JUMP                             ; [+19]
       25 JUMPIFNOTEQ                      R2 R1 ; [+3]
       27 LOADNIL                          R4
       28 RETURN                           R4 1
       29 GETTABLEKS                       R4 R2 K2 ["return_"]
       31 GETTABLEKS                       R5 R2 K3 ["sibling"]
       33 JUMPIF                           R5 ; [+7]
       34 JUMPIFNOT                        R4 ; [+2]
       35 JUMPIFNOTEQ                      R4 R1 ; [+3]
       37 LOADNIL                          R6
       38 RETURN                           R6 1
       39 MOVE                             R2 R4
       40 JUMPBACK                         ; [-8]
       41 SETTABLEKS                       R4 R5 K2 ["return_"]
       43 MOVE                             R2 R5
       44 JUMPBACK                         ; [-38]
       45 LOADNIL                          R3
       46 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+2]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 MOVE                             R2 R1
        7 GETTABLEKS                       R3 R2 K0 ["child"]
        9 GETTABLEKS                       R4 R2 K1 ["tag"]
       11 GETUPVAL                         R5 1
       12 JUMPIFEQ                         R4 R5 ; [+13]
       14 GETTABLEKS                       R4 R2 K1 ["tag"]
       16 GETUPVAL                         R5 2
       17 JUMPIFEQ                         R4 R5 ; [+8]
       19 GETUPVAL                         R4 3
       20 JUMPIFNOT                        R4 ; [+6]
       21 GETTABLEKS                       R4 R2 K1 ["tag"]
       23 GETUPVAL                         R5 4
       24 JUMPIFNOTEQ                      R4 R5 ; [+2]
       26 RETURN                           R2 1
       27 JUMPIFNOT                        R3 ; [+9]
       28 GETTABLEKS                       R4 R2 K1 ["tag"]
       30 GETUPVAL                         R5 5
       31 JUMPIFEQ                         R4 R5 ; [+5]
       33 SETTABLEKS                       R2 R3 K2 ["return_"]
       35 MOVE                             R2 R3
       36 JUMP                             ; [+19]
       37 JUMPIFNOTEQ                      R2 R1 ; [+3]
       39 LOADNIL                          R4
       40 RETURN                           R4 1
       41 GETTABLEKS                       R4 R2 K2 ["return_"]
       43 GETTABLEKS                       R5 R2 K3 ["sibling"]
       45 JUMPIF                           R5 ; [+7]
       46 JUMPIFNOT                        R4 ; [+2]
       47 JUMPIFNOTEQ                      R4 R1 ; [+3]
       49 LOADNIL                          R6
       50 RETURN                           R6 1
       51 MOVE                             R2 R4
       52 JUMPBACK                         ; [-8]
       53 SETTABLEKS                       R4 R5 K2 ["return_"]
       55 MOVE                             R2 R5
       56 JUMPBACK                         ; [-50]
       57 LOADNIL                          R3
       58 RETURN                           R3 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["memoizedState"]
        2 LOADB                            R2 0
        3 GETTABLEKS                       R3 R0 K1 ["tag"]
        5 GETUPVAL                         R4 0
        6 JUMPIFNOTEQ                      R3 R4 ; [+10]
        8 LOADB                            R2 0
        9 JUMPIFEQKNIL                     R1 ; [+7]
       11 GETTABLEKS                       R3 R1 K2 ["dehydrated"]
       13 JUMPIFEQKNIL                     R3 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 RETURN                           R2 1

PROTO_10:
        0 MOVE                             R2 R1
        1 GETTABLEKS                       R3 R0 K0 ["alternate"]
        3 JUMPIFEQKNIL                     R2 ; [+10]
        5 JUMPIFEQ                         R2 R0 ; [+3]
        7 JUMPIFNOTEQ                      R2 R3 ; [+3]
        9 LOADB                            R4 1
       10 RETURN                           R4 1
       11 GETTABLEKS                       R2 R2 K1 ["return_"]
       13 JUMPBACK                         ; [-11]
       14 LOADB                            R4 0
       15 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Shared"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K7 ["console"]
       19 GETIMPORT                        R3 K4 [require]
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R4 R4 K2 ["Parent"]
       25 GETTABLEKS                       R4 R4 K8 ["ReactInternalTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K2 ["Parent"]
       34 GETTABLEKS                       R5 R5 K9 ["ReactFiberHostConfig"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETIMPORT                        R7 K1 [script]
       41 GETTABLEKS                       R7 R7 K2 ["Parent"]
       43 GETTABLEKS                       R6 R7 K10 ["ReactFiberSuspenseComponent.new"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K4 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Shared"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R6 R6 K11 ["invariant"]
       53 GETIMPORT                        R7 K4 [require]
       55 GETTABLEKS                       R8 R0 K6 ["Shared"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R7 R7 K12 ["ReactInstanceMap"]
       60 GETTABLEKS                       R7 R7 K13 ["get"]
       62 GETIMPORT                        R8 K4 [require]
       64 GETTABLEKS                       R9 R0 K6 ["Shared"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R8 R8 K14 ["ReactSharedInternals"]
       69 GETIMPORT                        R9 K4 [require]
       71 GETTABLEKS                       R10 R0 K6 ["Shared"]
       73 CALL                             R9 1 1
       74 GETTABLEKS                       R9 R9 K15 ["getComponentName"]
       76 GETIMPORT                        R10 K4 [require]
       78 GETIMPORT                        R11 K1 [script]
       80 GETTABLEKS                       R11 R11 K2 ["Parent"]
       82 GETTABLEKS                       R11 R11 K16 ["ReactWorkTags"]
       84 CALL                             R10 1 1
       85 GETTABLEKS                       R11 R10 K17 ["ClassComponent"]
       87 GETTABLEKS                       R12 R10 K18 ["HostComponent"]
       89 GETTABLEKS                       R13 R10 K19 ["HostRoot"]
       91 GETTABLEKS                       R14 R10 K20 ["HostPortal"]
       93 GETTABLEKS                       R15 R10 K21 ["HostText"]
       95 GETTABLEKS                       R16 R10 K22 ["FundamentalComponent"]
       97 GETTABLEKS                       R17 R10 K23 ["SuspenseComponent"]
       99 GETIMPORT                        R18 K4 [require]
      101 GETIMPORT                        R19 K1 [script]
      103 GETTABLEKS                       R19 R19 K2 ["Parent"]
      105 GETTABLEKS                       R19 R19 K24 ["ReactFiberFlags"]
      107 CALL                             R18 1 1
      108 GETTABLEKS                       R19 R18 K25 ["NoFlags"]
      110 GETTABLEKS                       R20 R18 K26 ["Placement"]
      112 GETTABLEKS                       R21 R18 K27 ["Hydrating"]
      114 GETIMPORT                        R22 K4 [require]
      116 GETTABLEKS                       R23 R0 K6 ["Shared"]
      118 CALL                             R22 1 1
      119 GETTABLEKS                       R22 R22 K28 ["ReactFeatureFlags"]
      121 GETTABLEKS                       R22 R22 K29 ["enableFundamentalAPI"]
      123 GETTABLEKS                       R23 R8 K30 ["ReactCurrentOwner"]
      125 NEWTABLE                         R24 16 0
      127 DUPCLOSURE                       R25 K31 [PROTO_0]
      128 CAPTURE                          VAL R20
      129 CAPTURE                          VAL R21
      130 CAPTURE                          VAL R19
      131 CAPTURE                          VAL R13
      132 SETTABLEKS                       R25 R24 K32 ["getNearestMountedFiber"]
      134 DUPCLOSURE                       R26 K33 [PROTO_1]
      135 CAPTURE                          VAL R17
      136 SETTABLEKS                       R26 R24 K34 ["getSuspenseInstanceFromFiber"]
      138 DUPCLOSURE                       R26 K35 [PROTO_2]
      139 CAPTURE                          VAL R13
      140 SETTABLEKS                       R26 R24 K36 ["getContainerFromFiber"]
      142 DUPCLOSURE                       R26 K37 [PROTO_3]
      143 CAPTURE                          VAL R25
      144 SETTABLEKS                       R26 R24 K38 ["isFiberMounted"]
      146 DUPCLOSURE                       R26 K39 [PROTO_4]
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R23
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R25
      154 SETTABLEKS                       R26 R24 K40 ["isMounted"]
      156 DUPCLOSURE                       R26 K41 [PROTO_5]
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R25
      159 DUPCLOSURE                       R27 K42 [PROTO_6]
      160 CAPTURE                          VAL R25
      161 CAPTURE                          VAL R6
      162 CAPTURE                          VAL R13
      163 SETTABLEKS                       R27 R24 K43 ["findCurrentFiberUsingSlowPath"]
      165 DUPCLOSURE                       R28 K44 [PROTO_7]
      166 CAPTURE                          VAL R27
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R15
      169 SETTABLEKS                       R28 R24 K45 ["findCurrentHostFiber"]
      171 DUPCLOSURE                       R28 K46 [PROTO_8]
      172 CAPTURE                          VAL R27
      173 CAPTURE                          VAL R12
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R22
      176 CAPTURE                          VAL R16
      177 CAPTURE                          VAL R14
      178 SETTABLEKS                       R28 R24 K47 ["findCurrentHostFiberWithNoPortals"]
      180 DUPCLOSURE                       R28 K48 [PROTO_9]
      181 CAPTURE                          VAL R17
      182 SETTABLEKS                       R28 R24 K49 ["isFiberSuspenseAndTimedOut"]
      184 DUPCLOSURE                       R28 K50 [PROTO_10]
      185 SETTABLEKS                       R28 R24 K51 ["doesFiberContain"]
      187 RETURN                           R24 1
