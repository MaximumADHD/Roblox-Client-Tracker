PROTO_0:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 LOADNIL                          R0
        3 SETUPVAL                         R0 1
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 2
        6 GETUPVAL                         R1 3
        7 GETTABLEKS                       R0 R1 K0 ["__DEV__"]
        9 JUMPIFNOT                        R0 ; [+2]
       10 LOADB                            R0 0
       11 SETUPVAL                         R0 4
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["__DEV__"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADB                            R0 1
        5 SETUPVAL                         R0 1
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["__DEV__"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADB                            R0 0
        5 SETUPVAL                         R0 1
        6 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["type"]
        2 GETTABLEKS                       R2 R3 K1 ["_context"]
        4 GETUPVAL                         R3 0
        5 JUMPIFNOT                        R3 ; [+30]
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R5 R2 K2 ["_currentValue"]
       10 MOVE                             R6 R0
       11 CALL                             R3 3 0
       12 SETTABLEKS                       R1 R2 K2 ["_currentValue"]
       14 GETUPVAL                         R4 3
       15 GETTABLEKS                       R3 R4 K3 ["__DEV__"]
       17 JUMPIFNOT                        R3 ; [+47]
       18 GETTABLEKS                       R3 R2 K4 ["_currentRenderer"]
       20 JUMPIFEQKNIL                     R3 ; [+11]
       22 GETTABLEKS                       R3 R2 K4 ["_currentRenderer"]
       24 GETUPVAL                         R4 4
       25 JUMPIFEQ                         R3 R4 ; [+6]
       27 GETUPVAL                         R4 5
       28 GETTABLEKS                       R3 R4 K5 ["error"]
       30 LOADK                            R4 K6 ["Detected multiple renderers concurrently rendering the same context provider. This is currently unsupported."]
       31 CALL                             R3 1 0
       32 GETUPVAL                         R3 4
       33 SETTABLEKS                       R3 R2 K4 ["_currentRenderer"]
       35 RETURN                           R0 0
       36 GETUPVAL                         R3 1
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R5 R2 K7 ["_currentValue2"]
       40 MOVE                             R6 R0
       41 CALL                             R3 3 0
       42 SETTABLEKS                       R1 R2 K7 ["_currentValue2"]
       44 GETUPVAL                         R4 3
       45 GETTABLEKS                       R3 R4 K3 ["__DEV__"]
       47 JUMPIFNOT                        R3 ; [+17]
       48 GETTABLEKS                       R3 R2 K8 ["_currentRenderer2"]
       50 JUMPIFEQKNIL                     R3 ; [+11]
       52 GETTABLEKS                       R3 R2 K8 ["_currentRenderer2"]
       54 GETUPVAL                         R4 4
       55 JUMPIFEQ                         R3 R4 ; [+6]
       57 GETUPVAL                         R4 5
       58 GETTABLEKS                       R3 R4 K5 ["error"]
       60 LOADK                            R4 K6 ["Detected multiple renderers concurrently rendering the same context provider. This is currently unsupported."]
       61 CALL                             R3 1 0
       62 GETUPVAL                         R3 4
       63 SETTABLEKS                       R3 R2 K8 ["_currentRenderer2"]
       65 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R0
        6 CALL                             R2 2 0
        7 GETTABLEKS                       R3 R0 K1 ["type"]
        9 GETTABLEKS                       R2 R3 K2 ["_context"]
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
       93 GETUPVAL                         R10 5
       94 GETTABLEKS                       R9 R10 K19 ["scheduleWorkOnParentPath"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["__DEV__"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K1 ["error"]
        9 LOADK                            R3 K2 ["Context can only be read while React is rendering. In classes, you can read it in the render method or getDerivedStateFromProps. In function components, you can read it directly in the function body, but not inside Hooks like useReducer() or useMemo()."]
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 3
       12 JUMPIFNOTEQ                      R2 R0 ; [+2]
       14 JUMP                             ; [+64]
       15 JUMPIFEQKB                       R1 FALSE ; [+63]
       17 JUMPIFNOTEQKN                    R1 K3 [0] ; [+2]
       19 JUMP                             ; [+59]
       20 LOADNIL                          R2
       21 FASTCALL1                        TYPEOF R1 ; [+3]
       22 MOVE                             R4 R1
       23 GETIMPORT                        R3 K5 [typeof]
       25 CALL                             R3 1 1
       26 JUMPIFNOTEQKS                    R3 K6 ["number"] ; [+6]
       28 GETUPVAL                         R4 4
       29 GETTABLEKS                       R3 R4 K7 ["MAX_SAFE_INTEGER"]
       31 JUMPIFNOTEQ                      R1 R3 ; [+6]
       33 SETUPVAL                         R0 3
       34 GETUPVAL                         R3 4
       35 GETTABLEKS                       R2 R3 K7 ["MAX_SAFE_INTEGER"]
       37 JUMP                             ; [+1]
       38 MOVE                             R2 R1
       39 DUPTABLE                         R3 K11 [{"context", "observedBits", "next"}]
       40 SETTABLEKS                       R0 R3 K8 ["context"]
       42 SETTABLEKS                       R2 R3 K9 ["observedBits"]
       44 LOADNIL                          R4
       45 SETTABLEKS                       R4 R3 K10 ["next"]
       47 GETUPVAL                         R4 5
       48 JUMPIFNOTEQKNIL                  R4 ; [+26]
       50 GETUPVAL                         R4 6
       51 JUMPIFNOTEQKNIL                  R4 ; [+9]
       53 GETIMPORT                        R4 K12 [error]
       55 GETUPVAL                         R6 7
       56 GETTABLEKS                       R5 R6 K13 ["new"]
       58 LOADK                            R6 K2 ["Context can only be read while React is rendering. In classes, you can read it in the render method or getDerivedStateFromProps. In function components, you can read it directly in the function body, but not inside Hooks like useReducer() or useMemo()."]
       59 CALL                             R5 1 -1
       60 CALL                             R4 -1 0
       61 SETUPVAL                         R3 5
       62 GETUPVAL                         R4 6
       63 DUPTABLE                         R5 K17 [{"lanes", "firstContext", "responders"}]
       64 GETUPVAL                         R6 8
       65 SETTABLEKS                       R6 R5 K14 ["lanes"]
       67 SETTABLEKS                       R3 R5 K15 ["firstContext"]
       69 LOADNIL                          R6
       70 SETTABLEKS                       R6 R5 K16 ["responders"]
       72 SETTABLEKS                       R5 R4 K18 ["dependencies"]
       74 JUMP                             ; [+4]
       75 GETUPVAL                         R4 5
       76 SETTABLEKS                       R3 R4 K10 ["next"]
       78 SETUPVAL                         R3 5
       79 GETUPVAL                         R3 9
       80 JUMPIFNOT                        R3 ; [+3]
       81 GETTABLEKS                       R2 R0 K19 ["_currentValue"]
       83 RETURN                           R2 1
       84 GETTABLEKS                       R2 R0 K20 ["_currentValue2"]
       86 RETURN                           R2 1

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
       17 GETTABLEKS                       R3 R2 K7 ["Number"]
       19 GETTABLEKS                       R4 R2 K8 ["Error"]
       21 GETIMPORT                        R6 K4 [require]
       23 GETTABLEKS                       R7 R0 K9 ["Shared"]
       25 CALL                             R6 1 1
       26 GETTABLEKS                       R5 R6 K10 ["console"]
       28 GETIMPORT                        R6 K4 [require]
       30 GETTABLEKS                       R7 R0 K9 ["Shared"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K4 [require]
       35 GETIMPORT                        R10 K1 [script]
       37 GETTABLEKS                       R9 R10 K2 ["Parent"]
       39 GETTABLEKS                       R8 R9 K11 ["ReactInternalTypes"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K4 [require]
       44 GETIMPORT                        R11 K1 [script]
       46 GETTABLEKS                       R10 R11 K2 ["Parent"]
       48 GETTABLEKS                       R9 R10 K12 ["ReactFiberStack.new"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K4 [require]
       53 GETIMPORT                        R12 K1 [script]
       55 GETTABLEKS                       R11 R12 K2 ["Parent"]
       57 GETTABLEKS                       R10 R11 K13 ["ReactFiberLane"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K4 [require]
       62 GETIMPORT                        R13 K1 [script]
       64 GETTABLEKS                       R12 R13 K2 ["Parent"]
       66 GETTABLEKS                       R11 R12 K14 ["ReactUpdateQueue.new"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K4 [require]
       71 GETIMPORT                        R14 K1 [script]
       73 GETTABLEKS                       R13 R14 K2 ["Parent"]
       75 GETTABLEKS                       R12 R13 K15 ["ReactFiberHostConfig"]
       77 CALL                             R11 1 1
       78 GETTABLEKS                       R12 R11 K16 ["isPrimaryRenderer"]
       80 GETTABLEKS                       R13 R8 K17 ["createCursor"]
       82 GETTABLEKS                       R14 R8 K18 ["push"]
       84 GETTABLEKS                       R15 R8 K19 ["pop"]
       86 GETIMPORT                        R17 K4 [require]
       88 GETIMPORT                        R20 K1 [script]
       90 GETTABLEKS                       R19 R20 K2 ["Parent"]
       92 GETTABLEKS                       R18 R19 K20 ["MaxInts"]
       94 CALL                             R17 1 1
       95 GETTABLEKS                       R16 R17 K21 ["MAX_SIGNED_31_BIT_INT"]
       97 GETIMPORT                        R17 K4 [require]
       99 GETIMPORT                        R20 K1 [script]
      101 GETTABLEKS                       R19 R20 K2 ["Parent"]
      103 GETTABLEKS                       R18 R19 K22 ["ReactWorkTags"]
      105 CALL                             R17 1 1
      106 GETTABLEKS                       R18 R17 K23 ["ContextProvider"]
      108 GETTABLEKS                       R19 R17 K24 ["ClassComponent"]
      110 GETTABLEKS                       R20 R9 K25 ["NoLanes"]
      112 GETTABLEKS                       R21 R9 K26 ["NoTimestamp"]
      114 GETTABLEKS                       R22 R9 K27 ["isSubsetOfLanes"]
      116 GETTABLEKS                       R23 R9 K28 ["includesSomeLane"]
      118 GETTABLEKS                       R24 R9 K29 ["mergeLanes"]
      120 GETTABLEKS                       R25 R9 K30 ["pickArbitraryLane"]
      122 GETIMPORT                        R27 K4 [require]
      124 GETTABLEKS                       R28 R0 K9 ["Shared"]
      126 CALL                             R27 1 1
      127 GETTABLEKS                       R26 R27 K31 ["objectIs"]
      129 GETTABLEKS                       R27 R10 K32 ["createUpdate"]
      131 GETTABLEKS                       R28 R10 K33 ["ForceUpdate"]
      133 NEWTABLE                         R29 16 0
      135 MOVE                             R30 R13
      136 LOADNIL                          R31
      137 CALL                             R30 1 1
      138 LOADNIL                          R31
      139 GETTABLEKS                       R32 R1 K34 ["__DEV__"]
      141 JUMPIFNOT                        R32 ; [+2]
      142 NEWTABLE                         R31 0 0
      144 LOADNIL                          R32
      145 LOADNIL                          R33
      146 LOADNIL                          R34
      147 LOADB                            R35 0
      148 NEWCLOSURE                       R36 P0
      149 CAPTURE                          REF R32
      150 CAPTURE                          REF R33
      151 CAPTURE                          REF R34
      152 CAPTURE                          VAL R1
      153 CAPTURE                          REF R35
      154 SETTABLEKS                       R36 R29 K35 ["resetContextDependencies"]
      156 NEWCLOSURE                       R36 P1
      157 CAPTURE                          VAL R1
      158 CAPTURE                          REF R35
      159 SETTABLEKS                       R36 R29 K36 ["enterDisallowedContextReadInDEV"]
      161 NEWCLOSURE                       R36 P2
      162 CAPTURE                          VAL R1
      163 CAPTURE                          REF R35
      164 SETTABLEKS                       R36 R29 K37 ["exitDisallowedContextReadInDEV"]
      166 NEWCLOSURE                       R36 P3
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R14
      169 CAPTURE                          VAL R30
      170 CAPTURE                          VAL R1
      171 CAPTURE                          REF R31
      172 CAPTURE                          VAL R5
      173 SETTABLEKS                       R36 R29 K38 ["pushProvider"]
      175 DUPCLOSURE                       R36 K39 [PROTO_4]
      176 CAPTURE                          VAL R30
      177 CAPTURE                          VAL R15
      178 CAPTURE                          VAL R12
      179 SETTABLEKS                       R36 R29 K40 ["popProvider"]
      181 DUPCLOSURE                       R36 K41 [PROTO_5]
      182 CAPTURE                          VAL R26
      183 CAPTURE                          VAL R16
      184 SETTABLEKS                       R36 R29 K42 ["calculateChangedBits"]
      186 DUPCLOSURE                       R36 K43 [PROTO_6]
      187 CAPTURE                          VAL R22
      188 CAPTURE                          VAL R24
      189 SETTABLEKS                       R36 R29 K44 ["scheduleWorkOnParentPath"]
      191 DUPCLOSURE                       R36 K45 [PROTO_7]
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R27
      194 CAPTURE                          VAL R21
      195 CAPTURE                          VAL R25
      196 CAPTURE                          VAL R28
      197 CAPTURE                          VAL R29
      198 CAPTURE                          VAL R18
      199 SETTABLEKS                       R36 R29 K46 ["propagateContextChange"]
      201 NEWCLOSURE                       R36 P8
      202 CAPTURE                          REF R32
      203 CAPTURE                          REF R33
      204 CAPTURE                          REF R34
      205 CAPTURE                          VAL R23
      206 SETTABLEKS                       R36 R29 K47 ["prepareToReadContext"]
      208 NEWCLOSURE                       R36 P9
      209 CAPTURE                          VAL R1
      210 CAPTURE                          REF R35
      211 CAPTURE                          VAL R5
      212 CAPTURE                          REF R34
      213 CAPTURE                          VAL R3
      214 CAPTURE                          REF R33
      215 CAPTURE                          REF R32
      216 CAPTURE                          VAL R4
      217 CAPTURE                          VAL R20
      218 CAPTURE                          VAL R12
      219 SETTABLEKS                       R36 R29 K48 ["readContext"]
      221 CLOSEUPVALS                      R31
      222 RETURN                           R29 1
