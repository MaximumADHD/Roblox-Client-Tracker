PROTO_0:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 LOADNIL                          R0
        3 SETUPVAL                         R0 1
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 2
        6 GETIMPORT                        R0 K1 [_G]
        8 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
       10 JUMPIFNOT                        R0 ; [+2]
       11 LOADB                            R0 0
       12 SETUPVAL                         R0 3
       13 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [_G]
        2 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+2]
        5 LOADB                            R0 1
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [_G]
        2 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        4 JUMPIFNOT                        R0 ; [+2]
        5 LOADB                            R0 0
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["type"]
        2 GETTABLEKS                       R2 R2 K1 ["_context"]
        4 GETUPVAL                         R3 0
        5 JUMPIFNOT                        R3 ; [+31]
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R5 R2 K2 ["_currentValue"]
       10 MOVE                             R6 R0
       11 CALL                             R3 3 0
       12 SETTABLEKS                       R1 R2 K2 ["_currentValue"]
       14 GETIMPORT                        R3 K4 [_G]
       16 GETTABLEKS                       R3 R3 K5 ["__DEV__"]
       18 JUMPIFNOT                        R3 ; [+48]
       19 GETTABLEKS                       R3 R2 K6 ["_currentRenderer"]
       21 JUMPIFEQKNIL                     R3 ; [+11]
       23 GETTABLEKS                       R3 R2 K6 ["_currentRenderer"]
       25 GETUPVAL                         R4 3
       26 JUMPIFEQ                         R3 R4 ; [+6]
       28 GETUPVAL                         R3 4
       29 GETTABLEKS                       R3 R3 K7 ["error"]
       31 LOADK                            R4 K8 ["Detected multiple renderers concurrently rendering the same context provider. This is currently unsupported."]
       32 CALL                             R3 1 0
       33 GETUPVAL                         R3 3
       34 SETTABLEKS                       R3 R2 K6 ["_currentRenderer"]
       36 RETURN                           R0 0
       37 GETUPVAL                         R3 1
       38 GETUPVAL                         R4 2
       39 GETTABLEKS                       R5 R2 K9 ["_currentValue2"]
       41 MOVE                             R6 R0
       42 CALL                             R3 3 0
       43 SETTABLEKS                       R1 R2 K9 ["_currentValue2"]
       45 GETIMPORT                        R3 K4 [_G]
       47 GETTABLEKS                       R3 R3 K5 ["__DEV__"]
       49 JUMPIFNOT                        R3 ; [+17]
       50 GETTABLEKS                       R3 R2 K10 ["_currentRenderer2"]
       52 JUMPIFEQKNIL                     R3 ; [+11]
       54 GETTABLEKS                       R3 R2 K10 ["_currentRenderer2"]
       56 GETUPVAL                         R4 3
       57 JUMPIFEQ                         R3 R4 ; [+6]
       59 GETUPVAL                         R3 4
       60 GETTABLEKS                       R3 R3 K7 ["error"]
       62 LOADK                            R4 K8 ["Detected multiple renderers concurrently rendering the same context provider. This is currently unsupported."]
       63 CALL                             R3 1 0
       64 GETUPVAL                         R3 3
       65 SETTABLEKS                       R3 R2 K10 ["_currentRenderer2"]
       67 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R0
        6 CALL                             R2 2 0
        7 GETTABLEKS                       R2 R0 K1 ["type"]
        9 GETTABLEKS                       R2 R2 K2 ["_context"]
       11 GETUPVAL                         R3 2
       12 JUMPIFNOT                        R3 ; [+3]
       13 SETTABLEKS                       R1 R2 K3 ["_currentValue"]
       15 RETURN                           R0 0
       16 SETTABLEKS                       R1 R2 K4 ["_currentValue2"]
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+2]
        5 LOADN                            R3 0
        6 RETURN                           R3 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R5 R0 K0 ["_calculateChangedBits"]
       10 FASTCALL1                        TYPEOF R5 ; [+2]
       11 GETIMPORT                        R4 K2 [typeof]
       13 CALL                             R4 1 1
       14 JUMPIFNOTEQKS                    R4 K3 ["function"] ; [+7]
       16 GETTABLEKS                       R4 R0 K0 ["_calculateChangedBits"]
       18 MOVE                             R5 R2
       19 MOVE                             R6 R1
       20 CALL                             R4 2 1
       21 MOVE                             R3 R4
       22 FASTCALL1                        MATH_FLOOR R3 ; [+3]
       23 MOVE                             R5 R3
       24 GETIMPORT                        R4 K6 [math.floor]
       26 CALL                             R4 1 1
       27 RETURN                           R4 1

PROTO_6:
        0 MOVE                             R2 R0
        1 JUMPIFEQKNIL                     R2 ; [+46]
        3 GETTABLEKS                       R3 R2 K0 ["alternate"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R5 R2 K1 ["childLanes"]
        8 MOVE                             R6 R1
        9 CALL                             R4 2 1
       10 JUMPIF                           R4 ; [+17]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R5 R2 K1 ["childLanes"]
       14 MOVE                             R6 R1
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R2 K1 ["childLanes"]
       18 JUMPIFEQKNIL                     R3 ; [+26]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R5 R3 K1 ["childLanes"]
       23 MOVE                             R6 R1
       24 CALL                             R4 2 1
       25 SETTABLEKS                       R4 R3 K1 ["childLanes"]
       27 JUMP                             ; [+17]
       28 JUMPIFEQKNIL                     R3 ; [+19]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R5 R3 K1 ["childLanes"]
       33 MOVE                             R6 R1
       34 CALL                             R4 2 1
       35 JUMPIF                           R4 ; [+12]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R5 R3 K1 ["childLanes"]
       39 MOVE                             R6 R1
       40 CALL                             R4 2 1
       41 SETTABLEKS                       R4 R3 K1 ["childLanes"]
       43 JUMP                             ; [+1]
       44 RETURN                           R0 0
       45 GETTABLEKS                       R2 R2 K2 ["return_"]
       47 JUMPBACK                         ; [-47]
       48 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["child"]
        2 JUMPIFEQKNIL                     R4 ; [+3]
        4 SETTABLEKS                       R0 R4 K1 ["return_"]
        6 JUMPIFEQKNIL                     R4 ; [+153]
        8 LOADNIL                          R5
        9 GETTABLEKS                       R6 R4 K2 ["dependencies"]
       11 JUMPIFEQKNIL                     R6 ; [+103]
       13 GETTABLEKS                       R5 R4 K0 ["child"]
       15 GETTABLEKS                       R7 R6 K3 ["firstContext"]
       17 JUMPIFEQKNIL                     R7 ; [+115]
       19 GETTABLEKS                       R8 R7 K4 ["context"]
       21 JUMPIFNOTEQ                      R8 R1 ; [+89]
       23 GETTABLEKS                       R9 R7 K5 ["observedBits"]
       25 FASTCALL2                        BIT32_BAND R9 R2 ; [+4]
       27 MOVE                             R10 R2
       28 GETIMPORT                        R8 K8 [bit32.band]
       30 CALL                             R8 2 1
       31 JUMPIFEQKN                       R8 K9 [0] ; [+79]
       33 GETTABLEKS                       R8 R4 K10 ["tag"]
       35 GETUPVAL                         R9 0
       36 JUMPIFNOTEQ                      R8 R9 ; [+32]
       38 GETUPVAL                         R8 1
       39 GETUPVAL                         R9 2
       40 GETUPVAL                         R10 3
       41 MOVE                             R11 R3
       42 CALL                             R10 1 -1
       43 CALL                             R8 -1 1
       44 GETUPVAL                         R9 4
       45 SETTABLEKS                       R9 R8 K10 ["tag"]
       47 GETTABLEKS                       R9 R4 K11 ["updateQueue"]
       49 JUMPIFNOTEQKNIL                  R9 ; [+2]
       51 JUMP                             ; [+17]
       52 GETTABLEKS                       R10 R9 K12 ["shared"]
       54 GETTABLEKS                       R11 R10 K13 ["pending"]
       56 JUMPIFNOTEQKNIL                  R11 ; [+4]
       58 SETTABLEKS                       R8 R8 K14 ["next"]
       60 JUMP                             ; [+6]
       61 GETTABLEKS                       R12 R11 K14 ["next"]
       63 SETTABLEKS                       R12 R8 K14 ["next"]
       65 SETTABLEKS                       R8 R11 K14 ["next"]
       67 SETTABLEKS                       R8 R10 K13 ["pending"]
       69 GETTABLEKS                       R9 R4 K15 ["lanes"]
       71 FASTCALL2                        BIT32_BOR R9 R3 ; [+4]
       73 MOVE                             R10 R3
       74 GETIMPORT                        R8 K17 [bit32.bor]
       76 CALL                             R8 2 1
       77 SETTABLEKS                       R8 R4 K15 ["lanes"]
       79 GETTABLEKS                       R8 R4 K18 ["alternate"]
       81 JUMPIFEQKNIL                     R8 ; [+11]
       83 GETTABLEKS                       R10 R8 K15 ["lanes"]
       85 FASTCALL2                        BIT32_BOR R10 R3 ; [+4]
       87 MOVE                             R11 R3
       88 GETIMPORT                        R9 K17 [bit32.bor]
       90 CALL                             R9 2 1
       91 SETTABLEKS                       R9 R8 K15 ["lanes"]
       93 GETUPVAL                         R9 5
       94 GETTABLEKS                       R9 R9 K19 ["scheduleWorkOnParentPath"]
       96 GETTABLEKS                       R10 R4 K1 ["return_"]
       98 MOVE                             R11 R3
       99 CALL                             R9 2 0
      100 GETTABLEKS                       R10 R6 K15 ["lanes"]
      102 FASTCALL2                        BIT32_BOR R10 R3 ; [+4]
      104 MOVE                             R11 R3
      105 GETIMPORT                        R9 K17 [bit32.bor]
      107 CALL                             R9 2 1
      108 SETTABLEKS                       R9 R6 K15 ["lanes"]
      110 JUMP                             ; [+22]
      111 GETTABLEKS                       R7 R7 K14 ["next"]
      113 JUMPBACK                         ; [-97]
      114 JUMP                             ; [+18]
      115 GETTABLEKS                       R7 R4 K10 ["tag"]
      117 GETUPVAL                         R8 6
      118 JUMPIFNOTEQ                      R7 R8 ; [+12]
      120 GETTABLEKS                       R7 R4 K20 ["type"]
      122 GETTABLEKS                       R8 R0 K20 ["type"]
      124 JUMPIFNOTEQ                      R7 R8 ; [+3]
      126 LOADNIL                          R5
      127 JUMP                             ; [+5]
      128 GETTABLEKS                       R5 R4 K0 ["child"]
      130 JUMP                             ; [+2]
      131 GETTABLEKS                       R5 R4 K0 ["child"]
      133 JUMPIFEQKNIL                     R5 ; [+4]
      135 SETTABLEKS                       R4 R5 K1 ["return_"]
      137 JUMP                             ; [+20]
      138 MOVE                             R5 R4
      139 JUMPIFEQKNIL                     R5 ; [+18]
      141 JUMPIFNOTEQ                      R5 R0 ; [+3]
      143 LOADNIL                          R5
      144 JUMP                             ; [+13]
      145 GETTABLEKS                       R7 R5 K21 ["sibling"]
      147 JUMPIFEQKNIL                     R7 ; [+7]
      149 GETTABLEKS                       R8 R5 K1 ["return_"]
      151 SETTABLEKS                       R8 R7 K1 ["return_"]
      153 MOVE                             R5 R7
      154 JUMP                             ; [+3]
      155 GETTABLEKS                       R5 R5 K1 ["return_"]
      157 JUMPBACK                         ; [-19]
      158 MOVE                             R4 R5
      159 JUMPBACK                         ; [-154]
      160 RETURN                           R0 0

PROTO_8:
        0 SETUPVAL                         R0 0
        1 LOADNIL                          R3
        2 SETUPVAL                         R3 1
        3 LOADNIL                          R3
        4 SETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R0 K0 ["dependencies"]
        7 JUMPIFEQKNIL                     R3 ; [+16]
        9 GETTABLEKS                       R4 R3 K1 ["firstContext"]
       11 JUMPIFEQKNIL                     R4 ; [+12]
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R6 R3 K2 ["lanes"]
       16 MOVE                             R7 R1
       17 CALL                             R5 2 1
       18 JUMPIFNOT                        R5 ; [+2]
       19 MOVE                             R5 R2
       20 CALL                             R5 0 0
       21 LOADNIL                          R5
       22 SETTABLEKS                       R5 R3 K1 ["firstContext"]
       24 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R2 K1 [_G]
        2 GETTABLEKS                       R2 R2 K2 ["__DEV__"]
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETUPVAL                         R2 0
        6 JUMPIFNOT                        R2 ; [+5]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K3 ["error"]
       10 LOADK                            R3 K4 ["Context can only be read while React is rendering. In classes, you can read it in the render method or getDerivedStateFromProps. In function components, you can read it directly in the function body, but not inside Hooks like useReducer() or useMemo()."]
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 2
       13 JUMPIFNOTEQ                      R2 R0 ; [+2]
       15 JUMP                             ; [+64]
       16 JUMPIFEQKB                       R1 FALSE ; [+63]
       18 JUMPIFNOTEQKN                    R1 K5 [0] ; [+2]
       20 JUMP                             ; [+59]
       21 LOADNIL                          R2
       22 FASTCALL1                        TYPEOF R1 ; [+3]
       23 MOVE                             R4 R1
       24 GETIMPORT                        R3 K7 [typeof]
       26 CALL                             R3 1 1
       27 JUMPIFNOTEQKS                    R3 K8 ["number"] ; [+6]
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R3 R3 K9 ["MAX_SAFE_INTEGER"]
       32 JUMPIFNOTEQ                      R1 R3 ; [+6]
       34 SETUPVAL                         R0 2
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R2 R3 K9 ["MAX_SAFE_INTEGER"]
       38 JUMP                             ; [+1]
       39 MOVE                             R2 R1
       40 DUPTABLE                         R3 K13 [{"context", "observedBits", "next"}]
       41 SETTABLEKS                       R0 R3 K10 ["context"]
       43 SETTABLEKS                       R2 R3 K11 ["observedBits"]
       45 LOADNIL                          R4
       46 SETTABLEKS                       R4 R3 K12 ["next"]
       48 GETUPVAL                         R4 4
       49 JUMPIFNOTEQKNIL                  R4 ; [+26]
       51 GETUPVAL                         R4 5
       52 JUMPIFNOTEQKNIL                  R4 ; [+9]
       54 GETIMPORT                        R4 K14 [error]
       56 GETUPVAL                         R5 6
       57 GETTABLEKS                       R5 R5 K15 ["new"]
       59 LOADK                            R6 K4 ["Context can only be read while React is rendering. In classes, you can read it in the render method or getDerivedStateFromProps. In function components, you can read it directly in the function body, but not inside Hooks like useReducer() or useMemo()."]
       60 CALL                             R5 1 -1
       61 CALL                             R4 -1 0
       62 SETUPVAL                         R3 4
       63 GETUPVAL                         R4 5
       64 DUPTABLE                         R5 K19 [{"lanes", "firstContext", "responders"}]
       65 GETUPVAL                         R6 7
       66 SETTABLEKS                       R6 R5 K16 ["lanes"]
       68 SETTABLEKS                       R3 R5 K17 ["firstContext"]
       70 LOADNIL                          R6
       71 SETTABLEKS                       R6 R5 K18 ["responders"]
       73 SETTABLEKS                       R5 R4 K20 ["dependencies"]
       75 JUMP                             ; [+4]
       76 GETUPVAL                         R4 4
       77 SETTABLEKS                       R3 R4 K12 ["next"]
       79 SETUPVAL                         R3 4
       80 GETUPVAL                         R3 8
       81 JUMPIFNOT                        R3 ; [+3]
       82 GETTABLEKS                       R2 R0 K21 ["_currentValue"]
       84 JUMPIF                           R2 ; [+2]
       85 GETTABLEKS                       R2 R0 K22 ["_currentValue2"]
       87 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Number"]
       14 GETTABLEKS                       R3 R1 K7 ["Error"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R0 K8 ["Shared"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R4 R4 K9 ["console"]
       23 GETIMPORT                        R5 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Shared"]
       27 CALL                             R5 1 1
       28 GETIMPORT                        R6 K4 [require]
       30 GETIMPORT                        R7 K1 [script]
       32 GETTABLEKS                       R7 R7 K2 ["Parent"]
       34 GETTABLEKS                       R7 R7 K10 ["ReactInternalTypes"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K4 [require]
       39 GETIMPORT                        R9 K1 [script]
       41 GETTABLEKS                       R9 R9 K2 ["Parent"]
       43 GETTABLEKS                       R8 R9 K11 ["ReactFiberStack.new"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K4 [require]
       48 GETIMPORT                        R9 K1 [script]
       50 GETTABLEKS                       R9 R9 K2 ["Parent"]
       52 GETTABLEKS                       R9 R9 K12 ["ReactFiberLane"]
       54 CALL                             R8 1 1
       55 GETIMPORT                        R9 K4 [require]
       57 GETIMPORT                        R11 K1 [script]
       59 GETTABLEKS                       R11 R11 K2 ["Parent"]
       61 GETTABLEKS                       R10 R11 K13 ["ReactUpdateQueue.new"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K4 [require]
       66 GETIMPORT                        R11 K1 [script]
       68 GETTABLEKS                       R11 R11 K2 ["Parent"]
       70 GETTABLEKS                       R11 R11 K14 ["ReactFiberHostConfig"]
       72 CALL                             R10 1 1
       73 GETTABLEKS                       R11 R10 K15 ["isPrimaryRenderer"]
       75 GETTABLEKS                       R12 R7 K16 ["createCursor"]
       77 GETTABLEKS                       R13 R7 K17 ["push"]
       79 GETTABLEKS                       R14 R7 K18 ["pop"]
       81 GETIMPORT                        R15 K4 [require]
       83 GETIMPORT                        R16 K1 [script]
       85 GETTABLEKS                       R16 R16 K2 ["Parent"]
       87 GETTABLEKS                       R16 R16 K19 ["MaxInts"]
       89 CALL                             R15 1 1
       90 GETTABLEKS                       R15 R15 K20 ["MAX_SIGNED_31_BIT_INT"]
       92 GETIMPORT                        R16 K4 [require]
       94 GETIMPORT                        R17 K1 [script]
       96 GETTABLEKS                       R17 R17 K2 ["Parent"]
       98 GETTABLEKS                       R17 R17 K21 ["ReactWorkTags"]
      100 CALL                             R16 1 1
      101 GETTABLEKS                       R17 R16 K22 ["ContextProvider"]
      103 GETTABLEKS                       R18 R16 K23 ["ClassComponent"]
      105 GETTABLEKS                       R19 R8 K24 ["NoLanes"]
      107 GETTABLEKS                       R20 R8 K25 ["NoTimestamp"]
      109 GETTABLEKS                       R21 R8 K26 ["isSubsetOfLanes"]
      111 GETTABLEKS                       R22 R8 K27 ["includesSomeLane"]
      113 GETTABLEKS                       R23 R8 K28 ["mergeLanes"]
      115 GETTABLEKS                       R24 R8 K29 ["pickArbitraryLane"]
      117 GETIMPORT                        R25 K4 [require]
      119 GETTABLEKS                       R26 R0 K8 ["Shared"]
      121 CALL                             R25 1 1
      122 GETTABLEKS                       R25 R25 K30 ["objectIs"]
      124 GETTABLEKS                       R26 R9 K31 ["createUpdate"]
      126 GETTABLEKS                       R27 R9 K32 ["ForceUpdate"]
      128 NEWTABLE                         R28 16 0
      130 MOVE                             R29 R12
      131 LOADNIL                          R30
      132 CALL                             R29 1 1
      133 LOADNIL                          R30
      134 GETIMPORT                        R31 K34 [_G]
      136 GETTABLEKS                       R31 R31 K35 ["__DEV__"]
      138 JUMPIFNOT                        R31 ; [+2]
      139 NEWTABLE                         R30 0 0
      141 LOADNIL                          R31
      142 LOADNIL                          R32
      143 LOADNIL                          R33
      144 LOADB                            R34 0
      145 NEWCLOSURE                       R35 P0
      146 CAPTURE                          REF R31
      147 CAPTURE                          REF R32
      148 CAPTURE                          REF R33
      149 CAPTURE                          REF R34
      150 SETTABLEKS                       R35 R28 K36 ["resetContextDependencies"]
      152 NEWCLOSURE                       R35 P1
      153 CAPTURE                          REF R34
      154 SETTABLEKS                       R35 R28 K37 ["enterDisallowedContextReadInDEV"]
      156 NEWCLOSURE                       R35 P2
      157 CAPTURE                          REF R34
      158 SETTABLEKS                       R35 R28 K38 ["exitDisallowedContextReadInDEV"]
      160 NEWCLOSURE                       R35 P3
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R13
      163 CAPTURE                          VAL R29
      164 CAPTURE                          REF R30
      165 CAPTURE                          VAL R4
      166 SETTABLEKS                       R35 R28 K39 ["pushProvider"]
      168 DUPCLOSURE                       R35 K40 [PROTO_4]
      169 CAPTURE                          VAL R29
      170 CAPTURE                          VAL R14
      171 CAPTURE                          VAL R11
      172 SETTABLEKS                       R35 R28 K41 ["popProvider"]
      174 DUPCLOSURE                       R35 K42 [PROTO_5]
      175 CAPTURE                          VAL R25
      176 CAPTURE                          VAL R15
      177 SETTABLEKS                       R35 R28 K43 ["calculateChangedBits"]
      179 DUPCLOSURE                       R35 K44 [PROTO_6]
      180 CAPTURE                          VAL R21
      181 CAPTURE                          VAL R23
      182 SETTABLEKS                       R35 R28 K45 ["scheduleWorkOnParentPath"]
      184 DUPCLOSURE                       R35 K46 [PROTO_7]
      185 CAPTURE                          VAL R18
      186 CAPTURE                          VAL R26
      187 CAPTURE                          VAL R20
      188 CAPTURE                          VAL R24
      189 CAPTURE                          VAL R27
      190 CAPTURE                          VAL R28
      191 CAPTURE                          VAL R17
      192 SETTABLEKS                       R35 R28 K47 ["propagateContextChange"]
      194 NEWCLOSURE                       R35 P8
      195 CAPTURE                          REF R31
      196 CAPTURE                          REF R32
      197 CAPTURE                          REF R33
      198 CAPTURE                          VAL R22
      199 SETTABLEKS                       R35 R28 K48 ["prepareToReadContext"]
      201 NEWCLOSURE                       R35 P9
      202 CAPTURE                          REF R34
      203 CAPTURE                          VAL R4
      204 CAPTURE                          REF R33
      205 CAPTURE                          VAL R2
      206 CAPTURE                          REF R32
      207 CAPTURE                          REF R31
      208 CAPTURE                          VAL R3
      209 CAPTURE                          VAL R19
      210 CAPTURE                          VAL R11
      211 SETTABLEKS                       R35 R28 K49 ["readContext"]
      213 CLOSEUPVALS                      R30
      214 RETURN                           R28 1
