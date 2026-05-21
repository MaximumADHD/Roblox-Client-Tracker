PROTO_0:
        0 GETIMPORT                        R1 K2 [string.match]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%.%u[%.%w]-$"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETIMPORT                        R2 K5 [string.gsub]
        8 MOVE                             R3 R1
        9 LOADK                            R4 K6 ["^%."]
       10 LOADK                            R5 K7 [""]
       11 CALL                             R2 3 -1
       12 RETURN                           R2 -1
       13 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["warn"]
        3 LOADK                            R4 K1 ["%s already defined '%s', but it also defining the deprecated Roact method '%s'. %s should only implement one of these methods, preferably using the non-deprecated name."]
        4 MOVE                             R5 R0
        5 MOVE                             R6 R2
        6 MOVE                             R7 R1
        7 MOVE                             R8 R0
        8 CALL                             R3 5 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+35]
        2 GETUPVAL                         R3 1
        3 JUMPIFNOT                        R3 ; [+33]
        4 GETIMPORT                        R3 K2 [debug.info]
        6 LOADN                            R4 3
        7 LOADK                            R5 K3 ["sln"]
        8 CALL                             R3 2 2
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K4 ["warn"]
       12 LOADK                            R6 K5 ["%s is using method '%s', which is no longer supported and should be updated to '%s'\nFile: %s:%s"]
       13 MOVE                             R7 R0
       14 MOVE                             R8 R1
       15 MOVE                             R9 R2
       16 GETIMPORT                        R11 K8 [string.match]
       18 MOVE                             R12 R3
       19 LOADK                            R13 K9 ["%.%u[%.%w]-$"]
       20 CALL                             R11 2 1
       21 JUMPIFNOT                        R11 ; [+8]
       22 GETIMPORT                        R12 K11 [string.gsub]
       24 MOVE                             R13 R11
       25 LOADK                            R14 K12 ["^%."]
       26 LOADK                            R15 K13 [""]
       27 CALL                             R12 3 1
       28 MOVE                             R10 R12
       29 JUMP                             ; [+1]
       30 MOVE                             R10 R3
       31 FASTCALL1                        TOSTRING R4 ; [+3]
       32 MOVE                             R12 R4
       33 GETIMPORT                        R11 K15 [tostring]
       35 CALL                             R11 1 1
       36 CALL                             R5 6 0
       37 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 JUMPIFEQKNIL                     R3 ; [+83]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R1
        6 GETTABLE                         R3 R0 R4
        7 JUMPIFEQKNIL                     R3 ; [+16]
        9 GETTABLEKS                       R3 R0 K0 ["__componentName"]
       11 MOVE                             R4 R1
       12 GETUPVAL                         R6 0
       13 GETTABLE                         R5 R6 R1
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K1 ["warn"]
       17 LOADK                            R7 K2 ["%s already defined '%s', but it also defining the deprecated Roact method '%s'. %s should only implement one of these methods, preferably using the non-deprecated name."]
       18 MOVE                             R8 R3
       19 MOVE                             R9 R5
       20 MOVE                             R10 R4
       21 MOVE                             R11 R3
       22 CALL                             R6 5 0
       23 JUMP                             ; [+60]
       24 JUMPIFNOTEQKS                    R1 K3 ["willUpdate"] ; [+17]
       26 GETTABLEKS                       R3 R0 K4 ["componentWillUpdate"]
       28 JUMPIFNOT                        R3 ; [+13]
       29 GETTABLEKS                       R3 R0 K0 ["__componentName"]
       31 MOVE                             R4 R1
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K1 ["warn"]
       35 LOADK                            R6 K2 ["%s already defined '%s', but it also defining the deprecated Roact method '%s'. %s should only implement one of these methods, preferably using the non-deprecated name."]
       36 MOVE                             R7 R3
       37 LOADK                            R8 K5 ["UNSAFE_componentWillUpdate"]
       38 MOVE                             R9 R4
       39 MOVE                             R10 R3
       40 CALL                             R5 5 0
       41 JUMP                             ; [+42]
       42 GETTABLEKS                       R3 R0 K0 ["__componentName"]
       44 MOVE                             R4 R1
       45 GETUPVAL                         R6 0
       46 GETTABLE                         R5 R6 R1
       47 GETUPVAL                         R6 2
       48 JUMPIFNOT                        R6 ; [+35]
       49 GETUPVAL                         R6 3
       50 JUMPIFNOT                        R6 ; [+33]
       51 GETIMPORT                        R6 K8 [debug.info]
       53 LOADN                            R7 3
       54 LOADK                            R8 K9 ["sln"]
       55 CALL                             R6 2 2
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K1 ["warn"]
       59 LOADK                            R9 K10 ["%s is using method '%s', which is no longer supported and should be updated to '%s'\nFile: %s:%s"]
       60 MOVE                             R10 R3
       61 MOVE                             R11 R4
       62 MOVE                             R12 R5
       63 GETIMPORT                        R14 K13 [string.match]
       65 MOVE                             R15 R6
       66 LOADK                            R16 K14 ["%.%u[%.%w]-$"]
       67 CALL                             R14 2 1
       68 JUMPIFNOT                        R14 ; [+8]
       69 GETIMPORT                        R15 K16 [string.gsub]
       71 MOVE                             R16 R14
       72 LOADK                            R17 K17 ["^%."]
       73 LOADK                            R18 K18 [""]
       74 CALL                             R15 3 1
       75 MOVE                             R13 R15
       76 JUMP                             ; [+1]
       77 MOVE                             R13 R6
       78 FASTCALL1                        TOSTRING R7 ; [+3]
       79 MOVE                             R15 R7
       80 GETIMPORT                        R14 K20 [tostring]
       82 CALL                             R14 1 1
       83 CALL                             R8 6 0
       84 GETUPVAL                         R3 0
       85 GETTABLE                         R1 R3 R1
       86 FASTCALL3                        RAWSET R0 R1 R2
       88 MOVE                             R4 R0
       89 MOVE                             R5 R1
       90 MOVE                             R6 R2
       91 GETIMPORT                        R3 K22 [rawset]
       93 CALL                             R3 3 0
       94 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["__componentName"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+9]
        2 JUMPIFEQKNIL                     R2 ; [+8]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["warn"]
        7 LOADK                            R4 K1 ["Received a `callback` argument to `setState` during initialization of \"%s\". The callback behavior is not supported when using `setState` in `init`.\n\nConsider defining similar behavior in a `compontentDidMount` method instead."]
        8 GETTABLEKS                       R5 R0 K2 ["__componentName"]
       10 CALL                             R3 2 0
       11 MOVE                             R3 R1
       12 JUMPIFNOT                        R3 ; [+5]
       13 FASTCALL1                        TYPE R1 ; [+3]
       14 MOVE                             R4 R1
       15 GETIMPORT                        R3 K4 [type]
       17 CALL                             R3 1 1
       18 JUMPIFEQKNIL                     R1 ; [+5]
       20 JUMPIFEQKS                       R3 K5 ["table"] ; [+7]
       22 JUMPIFEQKS                       R3 K6 ["function"] ; [+5]
       24 GETIMPORT                        R4 K8 [error]
       26 LOADK                            R5 K9 ["setState(...): takes an object of state variables to update or a function which returns an object of state variables."]
       27 CALL                             R4 1 0
       28 GETTABLEKS                       R4 R0 K10 ["state"]
       30 LOADNIL                          R5
       31 JUMPIFNOTEQKS                    R3 K6 ["function"] ; [+8]
       33 MOVE                             R6 R1
       34 MOVE                             R7 R4
       35 GETTABLEKS                       R8 R0 K11 ["props"]
       37 CALL                             R6 2 1
       38 MOVE                             R5 R6
       39 JUMP                             ; [+1]
       40 MOVE                             R5 R1
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R6 R6 K12 ["assign"]
       44 NEWTABLE                         R7 0 0
       46 MOVE                             R8 R4
       47 MOVE                             R9 R5
       48 CALL                             R6 3 1
       49 SETTABLEKS                       R6 R0 K10 ["state"]
       51 RETURN                           R0 0

PROTO_6:
        0 LOADNIL                          R3
        1 GETUPVAL                         R4 0
        2 GETUPVAL                         R5 1
        3 JUMPIFNOTLE                      R4 R5 ; [+16]
        5 GETUPVAL                         R4 2
        6 GETUPVAL                         R5 0
        7 GETTABLE                         R3 R4 R5
        8 SETTABLEKS                       R0 R3 K0 ["props"]
       10 SETTABLEKS                       R1 R3 K1 ["context"]
       12 GETUPVAL                         R4 2
       13 GETUPVAL                         R5 0
       14 LOADNIL                          R6
       15 SETTABLE                         R6 R4 R5
       16 GETUPVAL                         R4 0
       17 ADDK                             R4 R4 K2 [1]
       18 SETUPVAL                         R4 0
       19 JUMP                             ; [+17]
       20 DUPTABLE                         R4 K6 [{"props", "context", "state", "__refs", "__updater"}]
       21 SETTABLEKS                       R0 R4 K0 ["props"]
       23 SETTABLEKS                       R1 R4 K1 ["context"]
       25 GETUPVAL                         R5 3
       26 SETTABLEKS                       R5 R4 K3 ["state"]
       28 GETUPVAL                         R5 4
       29 SETTABLEKS                       R5 R4 K4 ["__refs"]
       31 MOVE                             R5 R2
       32 JUMPIF                           R5 ; [+1]
       33 GETUPVAL                         R5 5
       34 SETTABLEKS                       R5 R4 K5 ["__updater"]
       36 MOVE                             R3 R4
       37 GETUPVAL                         R6 6
       38 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       40 MOVE                             R5 R3
       41 GETIMPORT                        R4 K8 [setmetatable]
       43 CALL                             R4 2 1
       44 MOVE                             R3 R4
       45 GETUPVAL                         R4 6
       46 GETTABLEKS                       R4 R4 K9 ["init"]
       48 JUMPIFNOT                        R4 ; [+22]
       49 GETUPVAL                         R5 6
       50 GETTABLEKS                       R5 R5 K9 ["init"]
       52 FASTCALL1                        TYPE R5 ; [+2]
       53 GETIMPORT                        R4 K11 [type]
       55 CALL                             R4 1 1
       56 JUMPIFNOTEQKS                    R4 K12 ["function"] ; [+14]
       58 GETUPVAL                         R4 7
       59 SETTABLEKS                       R4 R3 K13 ["setState"]
       61 GETUPVAL                         R4 6
       62 GETTABLEKS                       R4 R4 K9 ["init"]
       64 MOVE                             R5 R3
       65 MOVE                             R6 R0
       66 MOVE                             R7 R1
       67 CALL                             R4 3 0
       68 LOADNIL                          R4
       69 SETTABLEKS                       R4 R3 K13 ["setState"]
       71 RETURN                           R3 1

PROTO_7:
        0 JUMPIFNOTEQKNIL                  R1 ; [+10]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["warn"]
        7 LOADK                            R3 K1 ["Component:extend() accepting no arguments is deprecated, and will not be supported in a future version of Roact. Please provide an explicit name."]
        8 CALL                             R2 1 0
        9 LOADK                            R1 K2 [""]
       10 JUMP                             ; [+11]
       11 FASTCALL1                        TYPE R1 ; [+3]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K4 [type]
       15 CALL                             R2 1 1
       16 JUMPIFEQKS                       R2 K5 ["string"] ; [+5]
       18 GETIMPORT                        R2 K7 [error]
       20 LOADK                            R3 K8 ["Component class name must be a string"]
       21 CALL                             R2 1 0
       22 DUPTABLE                         R2 K13 [{"__componentName", "setState", "forceUpdate", "init"}]
       23 SETTABLEKS                       R1 R2 K9 ["__componentName"]
       25 GETTABLEKS                       R3 R0 K10 ["setState"]
       27 SETTABLEKS                       R3 R2 K10 ["setState"]
       29 GETTABLEKS                       R3 R0 K11 ["forceUpdate"]
       31 SETTABLEKS                       R3 R2 K11 ["forceUpdate"]
       33 LOADNIL                          R3
       34 SETTABLEKS                       R3 R2 K12 ["init"]
       36 SETTABLEKS                       R2 R2 K14 ["__index"]
       38 NEWCLOSURE                       R3 P0
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          VAL R2
       46 CAPTURE                          UPVAL U8
       47 SETTABLEKS                       R3 R2 K15 ["__ctor"]
       49 FASTCALL1                        GETMETATABLE R0 ; [+3]
       50 MOVE                             R6 R0
       51 GETIMPORT                        R5 K17 [getmetatable]
       53 CALL                             R5 1 1
       54 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       56 MOVE                             R4 R2
       57 GETIMPORT                        R3 K19 [setmetatable]
       59 CALL                             R3 2 0
       60 RETURN                           R2 1

PROTO_8:
        0 JUMPIFEQKNIL                     R1 ; [+19]
        2 FASTCALL1                        TYPE R1 ; [+3]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R3 K1 [type]
        6 CALL                             R3 1 1
        7 JUMPIFEQKS                       R3 K2 ["table"] ; [+12]
        9 FASTCALL1                        TYPE R1 ; [+3]
       10 MOVE                             R4 R1
       11 GETIMPORT                        R3 K1 [type]
       13 CALL                             R3 1 1
       14 JUMPIFEQKS                       R3 K3 ["function"] ; [+5]
       16 GETIMPORT                        R3 K5 [error]
       18 LOADK                            R4 K6 ["setState(...): takes an object of state variables to update or a function which returns an object of state variables."]
       19 CALL                             R3 1 0
       20 GETTABLEKS                       R3 R0 K7 ["__updater"]
       22 GETTABLEKS                       R3 R3 K8 ["enqueueSetState"]
       24 MOVE                             R4 R0
       25 MOVE                             R5 R1
       26 MOVE                             R6 R2
       27 LOADK                            R7 K9 ["setState"]
       28 CALL                             R3 4 0
       29 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["__updater"]
        2 GETTABLEKS                       R2 R2 K1 ["enqueueForceUpdate"]
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 LOADK                            R5 K2 ["forceUpdate"]
        7 CALL                             R2 3 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["warn"]
        3 LOADK                            R1 K1 ["%s(...) is deprecated in plain JavaScript React classes. %s"]
        4 GETUPVAL                         R3 1
        5 GETTABLEN                        R2 R3 1
        6 GETUPVAL                         R4 1
        7 GETTABLEN                        R3 R4 2
        8 CALL                             R0 3 0
        9 LOADNIL                          R0
       10 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R1
        4 SETTABLE                         R3 R2 R0
        5 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["__componentName"]
        2 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [_G]
        3 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        5 GETIMPORT                        R1 K1 [_G]
        7 GETTABLEKS                       R1 R1 K3 ["__COMPAT_WARNINGS__"]
        9 GETIMPORT                        R2 K5 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K6 ["Parent"]
       15 GETIMPORT                        R3 K8 [require]
       17 GETTABLEKS                       R4 R2 K9 ["LuauPolyfill"]
       19 CALL                             R3 1 1
       20 GETTABLEKS                       R4 R3 K10 ["Object"]
       22 GETIMPORT                        R5 K8 [require]
       24 GETTABLEKS                       R6 R2 K11 ["Shared"]
       26 CALL                             R5 1 1
       27 GETTABLEKS                       R5 R5 K12 ["console"]
       29 GETIMPORT                        R6 K8 [require]
       31 GETTABLEKS                       R7 R2 K11 ["Shared"]
       33 CALL                             R6 1 1
       34 GETIMPORT                        R7 K8 [require]
       36 GETIMPORT                        R8 K5 [script]
       38 GETTABLEKS                       R8 R8 K6 ["Parent"]
       40 GETTABLEKS                       R8 R8 K13 ["ReactNoopUpdateQueue"]
       42 CALL                             R7 1 1
       43 NEWTABLE                         R8 0 0
       45 JUMPIFNOT                        R0 ; [+4]
       46 GETTABLEKS                       R9 R4 K14 ["freeze"]
       48 MOVE                             R10 R8
       49 CALL                             R9 1 0
       50 GETIMPORT                        R9 K8 [require]
       52 GETTABLEKS                       R10 R2 K11 ["Shared"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R9 R9 K15 ["UninitializedState"]
       57 DUPTABLE                         R10 K17 [{"isReactComponent"}]
       58 LOADB                            R11 1
       59 SETTABLEKS                       R11 R10 K16 ["isReactComponent"]
       61 DUPCLOSURE                       R11 K18 [PROTO_0]
       62 DUPCLOSURE                       R12 K19 [PROTO_1]
       63 CAPTURE                          VAL R5
       64 DUPCLOSURE                       R13 K20 [PROTO_2]
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R5
       68 DUPTABLE                         R14 K26 [{"didMount", "shouldUpdate", "willUpdate", "didUpdate", "willUnmount"}]
       69 LOADK                            R15 K27 ["componentDidMount"]
       70 SETTABLEKS                       R15 R14 K21 ["didMount"]
       72 LOADK                            R15 K28 ["shouldComponentUpdate"]
       73 SETTABLEKS                       R15 R14 K22 ["shouldUpdate"]
       75 LOADK                            R15 K29 ["UNSAFE_componentWillUpdate"]
       76 SETTABLEKS                       R15 R14 K23 ["willUpdate"]
       78 LOADK                            R15 K30 ["componentDidUpdate"]
       79 SETTABLEKS                       R15 R14 K24 ["didUpdate"]
       81 LOADK                            R15 K31 ["componentWillUnmount"]
       82 SETTABLEKS                       R15 R14 K25 ["willUnmount"]
       84 DUPCLOSURE                       R15 K32 [PROTO_3]
       85 CAPTURE                          VAL R14
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R1
       89 DUPTABLE                         R16 K36 [{"__newindex", "__index", "__tostring"}]
       90 SETTABLEKS                       R15 R16 K33 ["__newindex"]
       92 SETTABLEKS                       R10 R16 K34 ["__index"]
       94 DUPCLOSURE                       R17 K37 [PROTO_4]
       95 SETTABLEKS                       R17 R16 K35 ["__tostring"]
       97 DUPTABLE                         R18 K39 [{"__componentName"}]
       98 LOADK                            R19 K40 ["Component"]
       99 SETTABLEKS                       R19 R18 K38 ["__componentName"]
      101 FASTCALL2                        SETMETATABLE R18 R16 ; [+4]
      103 MOVE                             R19 R16
      104 GETIMPORT                        R17 K42 [setmetatable]
      106 CALL                             R17 2 1
      107 GETIMPORT                        R19 K1 [_G]
      109 GETTABLEKS                       R19 R19 K43 ["__TESTEZ_RUNNING_TEST__"]
      111 JUMPIF                           R19 ; [+2]
      112 LOADN                            R18 132
      113 JUMP                             ; [+1]
      114 LOADN                            R18 0
      115 LOADN                            R19 1
      116 GETIMPORT                        R20 K46 [table.create]
      118 MOVE                             R21 R18
      119 CALL                             R20 1 1
      120 LOADN                            R23 1
      121 MOVE                             R21 R18
      122 LOADN                            R22 1
      123 FORNPREP                         R21
      124 DUPTABLE                         R26 K52 [{"props", "context", "state", "__refs", "__updater"}]
      125 LOADNIL                          R27
      126 SETTABLEKS                       R27 R26 K47 ["props"]
      128 LOADNIL                          R27
      129 SETTABLEKS                       R27 R26 K48 ["context"]
      131 SETTABLEKS                       R9 R26 K49 ["state"]
      133 SETTABLEKS                       R8 R26 K50 ["__refs"]
      135 SETTABLEKS                       R7 R26 K51 ["__updater"]
      137 FASTCALL2                        TABLE_INSERT R20 R26 ; [+4]
      139 MOVE                             R25 R20
      140 GETIMPORT                        R24 K54 [table.insert]
      142 CALL                             R24 2 0
      143 FORNLOOP                         R21
      144 DUPCLOSURE                       R21 K55 [PROTO_5]
      145 CAPTURE                          VAL R0
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R4
      148 NEWCLOSURE                       R22 P6
      149 CAPTURE                          VAL R1
      150 CAPTURE                          VAL R5
      151 CAPTURE                          REF R19
      152 CAPTURE                          VAL R18
      153 CAPTURE                          VAL R20
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R21
      158 SETTABLEKS                       R22 R17 K56 ["extend"]
      160 DUPCLOSURE                       R22 K57 [PROTO_8]
      161 SETTABLEKS                       R22 R17 K58 ["setState"]
      163 DUPCLOSURE                       R22 K59 [PROTO_9]
      164 SETTABLEKS                       R22 R17 K60 ["forceUpdate"]
      166 JUMPIFNOT                        R0 ; [+34]
      167 DUPTABLE                         R22 K63 [{"isMounted", "replaceState"}]
      168 NEWTABLE                         R23 0 2
      170 LOADK                            R24 K61 ["isMounted"]
      171 LOADK                            R25 K64 ["Instead, make sure to clean up subscriptions and pending requests in componentWillUnmount to prevent memory leaks."]
      172 SETLIST                          R23 R24 2 [1]
      174 SETTABLEKS                       R23 R22 K61 ["isMounted"]
      176 NEWTABLE                         R23 0 2
      178 LOADK                            R24 K62 ["replaceState"]
      179 LOADK                            R25 K65 ["Refactor your code to use setState instead (see https://github.com/facebook/react/issues/3236)."]
      180 SETLIST                          R23 R24 2 [1]
      182 SETTABLEKS                       R23 R22 K62 ["replaceState"]
      184 DUPCLOSURE                       R23 K66 [PROTO_11]
      185 CAPTURE                          VAL R17
      186 CAPTURE                          VAL R5
      187 MOVE                             R24 R22
      188 LOADNIL                          R25
      189 LOADNIL                          R26
      190 FORGPREP                         R24
      191 GETTABLE                         R29 R22 R27
      192 JUMPIFEQKNIL                     R29 ; [+6]
      194 GETTABLE                         R29 R22 R27
      195 NEWCLOSURE                       R30 P10
      196 CAPTURE                          VAL R5
      197 CAPTURE                          VAL R29
      198 SETTABLE                         R30 R17 R27
      199 FORGLOOP                         R24 2 ; [-9]
      201 LOADK                            R24 K67 ["PureComponent"]
      202 NAMECALL                         R22 R17 K56 ["extend"]
      204 CALL                             R22 2 1
      205 GETTABLEKS                       R23 R17 K56 ["extend"]
      207 SETTABLEKS                       R23 R22 K56 ["extend"]
      209 DUPTABLE                         R23 K69 [{"isReactComponent", "isPureReactComponent"}]
      210 LOADB                            R24 1
      211 SETTABLEKS                       R24 R23 K16 ["isReactComponent"]
      213 LOADB                            R24 1
      214 SETTABLEKS                       R24 R23 K68 ["isPureReactComponent"]
      216 DUPTABLE                         R26 K36 [{"__newindex", "__index", "__tostring"}]
      217 SETTABLEKS                       R15 R26 K33 ["__newindex"]
      219 SETTABLEKS                       R23 R26 K34 ["__index"]
      221 DUPCLOSURE                       R27 K70 [PROTO_12]
      222 SETTABLEKS                       R27 R26 K35 ["__tostring"]
      224 FASTCALL2                        SETMETATABLE R22 R26 ; [+4]
      226 MOVE                             R25 R22
      227 GETIMPORT                        R24 K42 [setmetatable]
      229 CALL                             R24 2 0
      230 DUPTABLE                         R24 K71 [{"Component", "PureComponent"}]
      231 SETTABLEKS                       R17 R24 K40 ["Component"]
      233 SETTABLEKS                       R22 R24 K67 ["PureComponent"]
      235 CLOSEUPVALS                      R19
      236 RETURN                           R24 1
