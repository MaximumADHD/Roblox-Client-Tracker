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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["warn"]
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
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K4 ["warn"]
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
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K1 ["warn"]
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
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R5 R6 K1 ["warn"]
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
       56 GETUPVAL                         R9 1
       57 GETTABLEKS                       R8 R9 K1 ["warn"]
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
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["warn"]
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
       41 GETUPVAL                         R7 2
       42 GETTABLEKS                       R6 R7 K12 ["assign"]
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
       45 GETUPVAL                         R5 6
       46 GETTABLEKS                       R4 R5 K9 ["init"]
       48 JUMPIFNOT                        R4 ; [+22]
       49 GETUPVAL                         R6 6
       50 GETTABLEKS                       R5 R6 K9 ["init"]
       52 FASTCALL1                        TYPE R5 ; [+2]
       53 GETIMPORT                        R4 K11 [type]
       55 CALL                             R4 1 1
       56 JUMPIFNOTEQKS                    R4 K12 ["function"] ; [+14]
       58 GETUPVAL                         R4 7
       59 SETTABLEKS                       R4 R3 K13 ["setState"]
       61 GETUPVAL                         R5 6
       62 GETTABLEKS                       R4 R5 K9 ["init"]
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
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["warn"]
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
       20 GETTABLEKS                       R4 R0 K7 ["__updater"]
       22 GETTABLEKS                       R3 R4 K8 ["enqueueSetState"]
       24 MOVE                             R4 R0
       25 MOVE                             R5 R1
       26 MOVE                             R6 R2
       27 LOADK                            R7 K9 ["setState"]
       28 CALL                             R3 4 0
       29 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["__updater"]
        2 GETTABLEKS                       R2 R3 K1 ["enqueueForceUpdate"]
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 LOADK                            R5 K2 ["forceUpdate"]
        7 CALL                             R2 3 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["warn"]
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
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["ReactGlobals"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["LuauPolyfill"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R3 R2 K7 ["Object"]
       19 GETIMPORT                        R5 K4 [require]
       21 GETTABLEKS                       R6 R0 K8 ["Shared"]
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R4 R5 K9 ["console"]
       26 GETIMPORT                        R5 K4 [require]
       28 GETTABLEKS                       R6 R0 K8 ["Shared"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K4 [require]
       33 GETIMPORT                        R9 K1 [script]
       35 GETTABLEKS                       R8 R9 K2 ["Parent"]
       37 GETTABLEKS                       R7 R8 K10 ["ReactNoopUpdateQueue"]
       39 CALL                             R6 1 1
       40 NEWTABLE                         R7 0 0
       42 GETTABLEKS                       R8 R1 K11 ["__DEV__"]
       44 GETTABLEKS                       R9 R1 K12 ["__COMPAT_WARNINGS__"]
       46 JUMPIFNOT                        R8 ; [+4]
       47 GETTABLEKS                       R10 R3 K13 ["freeze"]
       49 MOVE                             R11 R7
       50 CALL                             R10 1 0
       51 GETIMPORT                        R11 K4 [require]
       53 GETTABLEKS                       R12 R0 K8 ["Shared"]
       55 CALL                             R11 1 1
       56 GETTABLEKS                       R10 R11 K14 ["UninitializedState"]
       58 DUPTABLE                         R11 K16 [{"isReactComponent"}]
       59 LOADB                            R12 1
       60 SETTABLEKS                       R12 R11 K15 ["isReactComponent"]
       62 DUPCLOSURE                       R12 K17 [PROTO_0]
       63 DUPCLOSURE                       R13 K18 [PROTO_1]
       64 CAPTURE                          VAL R4
       65 DUPCLOSURE                       R14 K19 [PROTO_2]
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R4
       69 DUPTABLE                         R15 K25 [{"didMount", "shouldUpdate", "willUpdate", "didUpdate", "willUnmount"}]
       70 LOADK                            R16 K26 ["componentDidMount"]
       71 SETTABLEKS                       R16 R15 K20 ["didMount"]
       73 LOADK                            R16 K27 ["shouldComponentUpdate"]
       74 SETTABLEKS                       R16 R15 K21 ["shouldUpdate"]
       76 LOADK                            R16 K28 ["UNSAFE_componentWillUpdate"]
       77 SETTABLEKS                       R16 R15 K22 ["willUpdate"]
       79 LOADK                            R16 K29 ["componentDidUpdate"]
       80 SETTABLEKS                       R16 R15 K23 ["didUpdate"]
       82 LOADK                            R16 K30 ["componentWillUnmount"]
       83 SETTABLEKS                       R16 R15 K24 ["willUnmount"]
       85 DUPCLOSURE                       R16 K31 [PROTO_3]
       86 CAPTURE                          VAL R15
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R9
       90 DUPTABLE                         R17 K35 [{"__newindex", "__index", "__tostring"}]
       91 SETTABLEKS                       R16 R17 K32 ["__newindex"]
       93 SETTABLEKS                       R11 R17 K33 ["__index"]
       95 DUPCLOSURE                       R18 K36 [PROTO_4]
       96 SETTABLEKS                       R18 R17 K34 ["__tostring"]
       98 DUPTABLE                         R19 K38 [{"__componentName"}]
       99 LOADK                            R20 K39 ["Component"]
      100 SETTABLEKS                       R20 R19 K37 ["__componentName"]
      102 FASTCALL2                        SETMETATABLE R19 R17 ; [+4]
      104 MOVE                             R20 R17
      105 GETIMPORT                        R18 K41 [setmetatable]
      107 CALL                             R18 2 1
      108 GETTABLEKS                       R20 R1 K42 ["__TESTEZ_RUNNING_TEST__"]
      110 JUMPIF                           R20 ; [+2]
      111 LOADN                            R19 132
      112 JUMP                             ; [+1]
      113 LOADN                            R19 0
      114 LOADN                            R20 1
      115 GETIMPORT                        R21 K45 [table.create]
      117 MOVE                             R22 R19
      118 CALL                             R21 1 1
      119 LOADN                            R24 1
      120 MOVE                             R22 R19
      121 LOADN                            R23 1
      122 FORNPREP                         R22
      123 DUPTABLE                         R27 K51 [{"props", "context", "state", "__refs", "__updater"}]
      124 LOADNIL                          R28
      125 SETTABLEKS                       R28 R27 K46 ["props"]
      127 LOADNIL                          R28
      128 SETTABLEKS                       R28 R27 K47 ["context"]
      130 SETTABLEKS                       R10 R27 K48 ["state"]
      132 SETTABLEKS                       R7 R27 K49 ["__refs"]
      134 SETTABLEKS                       R6 R27 K50 ["__updater"]
      136 FASTCALL2                        TABLE_INSERT R21 R27 ; [+4]
      138 MOVE                             R26 R21
      139 GETIMPORT                        R25 K53 [table.insert]
      141 CALL                             R25 2 0
      142 FORNLOOP                         R22
      143 DUPCLOSURE                       R22 K54 [PROTO_5]
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R3
      147 NEWCLOSURE                       R23 P6
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R4
      150 CAPTURE                          REF R20
      151 CAPTURE                          VAL R19
      152 CAPTURE                          VAL R21
      153 CAPTURE                          VAL R10
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R22
      157 SETTABLEKS                       R23 R18 K55 ["extend"]
      159 DUPCLOSURE                       R23 K56 [PROTO_8]
      160 SETTABLEKS                       R23 R18 K57 ["setState"]
      162 DUPCLOSURE                       R23 K58 [PROTO_9]
      163 SETTABLEKS                       R23 R18 K59 ["forceUpdate"]
      165 JUMPIFNOT                        R8 ; [+34]
      166 DUPTABLE                         R23 K62 [{"isMounted", "replaceState"}]
      167 NEWTABLE                         R24 0 2
      169 LOADK                            R25 K60 ["isMounted"]
      170 LOADK                            R26 K63 ["Instead, make sure to clean up subscriptions and pending requests in componentWillUnmount to prevent memory leaks."]
      171 SETLIST                          R24 R25 2 [1]
      173 SETTABLEKS                       R24 R23 K60 ["isMounted"]
      175 NEWTABLE                         R24 0 2
      177 LOADK                            R25 K61 ["replaceState"]
      178 LOADK                            R26 K64 ["Refactor your code to use setState instead (see https://github.com/facebook/react/issues/3236)."]
      179 SETLIST                          R24 R25 2 [1]
      181 SETTABLEKS                       R24 R23 K61 ["replaceState"]
      183 DUPCLOSURE                       R24 K65 [PROTO_11]
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R4
      186 MOVE                             R25 R23
      187 LOADNIL                          R26
      188 LOADNIL                          R27
      189 FORGPREP                         R25
      190 GETTABLE                         R30 R23 R28
      191 JUMPIFEQKNIL                     R30 ; [+6]
      193 GETTABLE                         R30 R23 R28
      194 NEWCLOSURE                       R31 P10
      195 CAPTURE                          VAL R4
      196 CAPTURE                          VAL R30
      197 SETTABLE                         R31 R18 R28
      198 FORGLOOP                         R25 2 ; [-9]
      200 LOADK                            R25 K66 ["PureComponent"]
      201 NAMECALL                         R23 R18 K55 ["extend"]
      203 CALL                             R23 2 1
      204 GETTABLEKS                       R24 R18 K55 ["extend"]
      206 SETTABLEKS                       R24 R23 K55 ["extend"]
      208 DUPTABLE                         R24 K68 [{"isReactComponent", "isPureReactComponent"}]
      209 LOADB                            R25 1
      210 SETTABLEKS                       R25 R24 K15 ["isReactComponent"]
      212 LOADB                            R25 1
      213 SETTABLEKS                       R25 R24 K67 ["isPureReactComponent"]
      215 DUPTABLE                         R27 K35 [{"__newindex", "__index", "__tostring"}]
      216 SETTABLEKS                       R16 R27 K32 ["__newindex"]
      218 SETTABLEKS                       R24 R27 K33 ["__index"]
      220 DUPCLOSURE                       R28 K69 [PROTO_12]
      221 SETTABLEKS                       R28 R27 K34 ["__tostring"]
      223 FASTCALL2                        SETMETATABLE R23 R27 ; [+4]
      225 MOVE                             R26 R23
      226 GETIMPORT                        R25 K41 [setmetatable]
      228 CALL                             R25 2 0
      229 DUPTABLE                         R25 K70 [{"Component", "PureComponent"}]
      230 SETTABLEKS                       R18 R25 K39 ["Component"]
      232 SETTABLEKS                       R23 R25 K66 ["PureComponent"]
      234 CLOSEUPVALS                      R20
      235 RETURN                           R25 1
