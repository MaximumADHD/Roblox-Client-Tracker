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
        0 GETIMPORT                        R4 K1 [_G]
        2 GETTABLEKS                       R3 R4 K2 ["__DEV__"]
        4 JUMPIFNOT                        R3 ; [+38]
        5 GETIMPORT                        R4 K1 [_G]
        7 GETTABLEKS                       R3 R4 K3 ["__COMPAT_WARNINGS__"]
        9 JUMPIFNOT                        R3 ; [+33]
       10 GETIMPORT                        R3 K6 [debug.info]
       12 LOADN                            R4 3
       13 LOADK                            R5 K7 ["sln"]
       14 CALL                             R3 2 2
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K8 ["warn"]
       18 LOADK                            R6 K9 ["%s is using method '%s', which is no longer supported and should be updated to '%s'\nFile: %s:%s"]
       19 MOVE                             R7 R0
       20 MOVE                             R8 R1
       21 MOVE                             R9 R2
       22 GETIMPORT                        R11 K12 [string.match]
       24 MOVE                             R12 R3
       25 LOADK                            R13 K13 ["%.%u[%.%w]-$"]
       26 CALL                             R11 2 1
       27 JUMPIFNOT                        R11 ; [+8]
       28 GETIMPORT                        R12 K15 [string.gsub]
       30 MOVE                             R13 R11
       31 LOADK                            R14 K16 ["^%."]
       32 LOADK                            R15 K17 [""]
       33 CALL                             R12 3 1
       34 MOVE                             R10 R12
       35 JUMP                             ; [+1]
       36 MOVE                             R10 R3
       37 FASTCALL1                        TOSTRING R4 ; [+3]
       38 MOVE                             R12 R4
       39 GETIMPORT                        R11 K19 [tostring]
       41 CALL                             R11 1 1
       42 CALL                             R5 6 0
       43 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R1
        2 JUMPIFEQKNIL                     R3 ; [+89]
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
       23 JUMP                             ; [+66]
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
       41 JUMP                             ; [+48]
       42 GETTABLEKS                       R3 R0 K0 ["__componentName"]
       44 MOVE                             R4 R1
       45 GETUPVAL                         R6 0
       46 GETTABLE                         R5 R6 R1
       47 GETIMPORT                        R7 K7 [_G]
       49 GETTABLEKS                       R6 R7 K8 ["__DEV__"]
       51 JUMPIFNOT                        R6 ; [+38]
       52 GETIMPORT                        R7 K7 [_G]
       54 GETTABLEKS                       R6 R7 K9 ["__COMPAT_WARNINGS__"]
       56 JUMPIFNOT                        R6 ; [+33]
       57 GETIMPORT                        R6 K12 [debug.info]
       59 LOADN                            R7 3
       60 LOADK                            R8 K13 ["sln"]
       61 CALL                             R6 2 2
       62 GETUPVAL                         R9 1
       63 GETTABLEKS                       R8 R9 K1 ["warn"]
       65 LOADK                            R9 K14 ["%s is using method '%s', which is no longer supported and should be updated to '%s'\nFile: %s:%s"]
       66 MOVE                             R10 R3
       67 MOVE                             R11 R4
       68 MOVE                             R12 R5
       69 GETIMPORT                        R14 K17 [string.match]
       71 MOVE                             R15 R6
       72 LOADK                            R16 K18 ["%.%u[%.%w]-$"]
       73 CALL                             R14 2 1
       74 JUMPIFNOT                        R14 ; [+8]
       75 GETIMPORT                        R15 K20 [string.gsub]
       77 MOVE                             R16 R14
       78 LOADK                            R17 K21 ["^%."]
       79 LOADK                            R18 K22 [""]
       80 CALL                             R15 3 1
       81 MOVE                             R13 R15
       82 JUMP                             ; [+1]
       83 MOVE                             R13 R6
       84 FASTCALL1                        TOSTRING R7 ; [+3]
       85 MOVE                             R15 R7
       86 GETIMPORT                        R14 K24 [tostring]
       88 CALL                             R14 1 1
       89 CALL                             R8 6 0
       90 GETUPVAL                         R3 0
       91 GETTABLE                         R1 R3 R1
       92 FASTCALL3                        RAWSET R0 R1 R2
       94 MOVE                             R4 R0
       95 MOVE                             R5 R1
       96 MOVE                             R6 R2
       97 GETIMPORT                        R3 K26 [rawset]
       99 CALL                             R3 3 0
      100 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["__componentName"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R1 R2 K0 ["state"]
        3 RETURN                           R0 0

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
       48 JUMPIFNOT                        R4 ; [+23]
       49 GETUPVAL                         R6 6
       50 GETTABLEKS                       R5 R6 K9 ["init"]
       52 FASTCALL1                        TYPEOF R5 ; [+2]
       53 GETIMPORT                        R4 K11 [typeof]
       55 CALL                             R4 1 1
       56 JUMPIFNOTEQKS                    R4 K12 ["function"] ; [+15]
       58 NEWCLOSURE                       R4 P0
       59 CAPTURE                          REF R3
       60 SETTABLEKS                       R4 R3 K13 ["setState"]
       62 GETUPVAL                         R5 6
       63 GETTABLEKS                       R4 R5 K9 ["init"]
       65 MOVE                             R5 R3
       66 MOVE                             R6 R0
       67 MOVE                             R7 R1
       68 CALL                             R4 3 0
       69 LOADNIL                          R4
       70 SETTABLEKS                       R4 R3 K13 ["setState"]
       72 CLOSEUPVALS                      R3
       73 RETURN                           R3 1

PROTO_7:
        0 JUMPIFNOTEQKNIL                  R1 ; [+12]
        2 GETIMPORT                        R3 K1 [_G]
        4 GETTABLEKS                       R2 R3 K2 ["__COMPAT_WARNINGS__"]
        6 JUMPIFNOT                        R2 ; [+5]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K3 ["warn"]
       10 LOADK                            R3 K4 ["Component:extend() accepting no arguments is deprecated, and will not be supported in a future version of Roact. Please provide an explicit name."]
       11 CALL                             R2 1 0
       12 LOADK                            R1 K5 [""]
       13 FASTCALL1                        TYPEOF R1 ; [+3]
       14 MOVE                             R5 R1
       15 GETIMPORT                        R4 K7 [typeof]
       17 CALL                             R4 1 1
       18 JUMPIFEQKS                       R4 K8 ["string"] ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       24 LOADK                            R4 K9 ["Component class name must be a string"]
       25 GETIMPORT                        R2 K11 [assert]
       27 CALL                             R2 2 0
       28 DUPTABLE                         R2 K16 [{"__componentName", "setState", "forceUpdate", "init"}]
       29 SETTABLEKS                       R1 R2 K12 ["__componentName"]
       31 GETTABLEKS                       R3 R0 K13 ["setState"]
       33 SETTABLEKS                       R3 R2 K13 ["setState"]
       35 GETTABLEKS                       R3 R0 K14 ["forceUpdate"]
       37 SETTABLEKS                       R3 R2 K14 ["forceUpdate"]
       39 LOADNIL                          R3
       40 SETTABLEKS                       R3 R2 K15 ["init"]
       42 SETTABLEKS                       R2 R2 K17 ["__index"]
       44 NEWCLOSURE                       R3 P0
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          UPVAL U6
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R3 R2 K18 ["__ctor"]
       54 FASTCALL1                        GETMETATABLE R0 ; [+3]
       55 MOVE                             R6 R0
       56 GETIMPORT                        R5 K20 [getmetatable]
       58 CALL                             R5 1 1
       59 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       61 MOVE                             R4 R2
       62 GETIMPORT                        R3 K22 [setmetatable]
       64 CALL                             R3 2 0
       65 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 1
        2 FASTCALL1                        TYPEOF R1 ; [+3]
        3 MOVE                             R6 R1
        4 GETIMPORT                        R5 K1 [typeof]
        6 CALL                             R5 1 1
        7 JUMPIFEQKS                       R5 K2 ["table"] ; [+13]
        9 LOADB                            R4 1
       10 FASTCALL1                        TYPEOF R1 ; [+3]
       11 MOVE                             R6 R1
       12 GETIMPORT                        R5 K1 [typeof]
       14 CALL                             R5 1 1
       15 JUMPIFEQKS                       R5 K3 ["function"] ; [+5]
       17 JUMPIFEQKNIL                     R1 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 LOADK                            R5 K4 ["setState(...): takes an object of state variables to update or a function which returns an object of state variables."]
       22 CALL                             R3 2 0
       23 GETTABLEKS                       R4 R0 K5 ["__updater"]
       25 GETTABLEKS                       R3 R4 K6 ["enqueueSetState"]
       27 MOVE                             R4 R0
       28 MOVE                             R5 R1
       29 MOVE                             R6 R2
       30 LOADK                            R7 K7 ["setState"]
       31 CALL                             R3 4 0
       32 RETURN                           R0 0

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
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Object"]
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R0 K7 ["Shared"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R3 R4 K8 ["console"]
       21 GETIMPORT                        R5 K4 [require]
       23 GETTABLEKS                       R6 R0 K7 ["Shared"]
       25 CALL                             R5 1 1
       26 GETTABLEKS                       R4 R5 K9 ["invariant"]
       28 GETIMPORT                        R5 K4 [require]
       30 GETIMPORT                        R8 K1 [script]
       32 GETTABLEKS                       R7 R8 K2 ["Parent"]
       34 GETTABLEKS                       R6 R7 K10 ["ReactNoopUpdateQueue"]
       36 CALL                             R5 1 1
       37 NEWTABLE                         R6 0 0
       39 GETIMPORT                        R8 K12 [_G]
       41 GETTABLEKS                       R7 R8 K13 ["__DEV__"]
       43 JUMPIFNOT                        R7 ; [+4]
       44 GETTABLEKS                       R7 R2 K14 ["freeze"]
       46 MOVE                             R8 R6
       47 CALL                             R7 1 0
       48 GETIMPORT                        R8 K4 [require]
       50 GETTABLEKS                       R9 R0 K7 ["Shared"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R7 R8 K15 ["UninitializedState"]
       55 DUPTABLE                         R8 K17 [{"isReactComponent"}]
       56 LOADB                            R9 1
       57 SETTABLEKS                       R9 R8 K16 ["isReactComponent"]
       59 DUPCLOSURE                       R9 K18 [PROTO_0]
       60 DUPCLOSURE                       R10 K19 [PROTO_1]
       61 CAPTURE                          VAL R3
       62 DUPCLOSURE                       R11 K20 [PROTO_2]
       63 CAPTURE                          VAL R3
       64 DUPTABLE                         R12 K26 [{"didMount", "shouldUpdate", "willUpdate", "didUpdate", "willUnmount"}]
       65 LOADK                            R13 K27 ["componentDidMount"]
       66 SETTABLEKS                       R13 R12 K21 ["didMount"]
       68 LOADK                            R13 K28 ["shouldComponentUpdate"]
       69 SETTABLEKS                       R13 R12 K22 ["shouldUpdate"]
       71 LOADK                            R13 K29 ["UNSAFE_componentWillUpdate"]
       72 SETTABLEKS                       R13 R12 K23 ["willUpdate"]
       74 LOADK                            R13 K30 ["componentDidUpdate"]
       75 SETTABLEKS                       R13 R12 K24 ["didUpdate"]
       77 LOADK                            R13 K31 ["componentWillUnmount"]
       78 SETTABLEKS                       R13 R12 K25 ["willUnmount"]
       80 DUPCLOSURE                       R13 K32 [PROTO_3]
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R3
       83 DUPTABLE                         R14 K36 [{"__newindex", "__index", "__tostring"}]
       84 SETTABLEKS                       R13 R14 K33 ["__newindex"]
       86 SETTABLEKS                       R8 R14 K34 ["__index"]
       88 DUPCLOSURE                       R15 K37 [PROTO_4]
       89 SETTABLEKS                       R15 R14 K35 ["__tostring"]
       91 NEWTABLE                         R15 4 0
       93 FASTCALL2                        SETMETATABLE R15 R14 ; [+5]
       95 MOVE                             R17 R15
       96 MOVE                             R18 R14
       97 GETIMPORT                        R16 K39 [setmetatable]
       99 CALL                             R16 2 0
      100 LOADK                            R16 K40 ["Component"]
      101 SETTABLEKS                       R16 R15 K41 ["__componentName"]
      103 GETIMPORT                        R18 K12 [_G]
      105 GETTABLEKS                       R17 R18 K42 ["__TESTEZ_RUNNING_TEST__"]
      107 JUMPIF                           R17 ; [+2]
      108 LOADN                            R16 132
      109 JUMP                             ; [+1]
      110 LOADN                            R16 0
      111 LOADN                            R17 1
      112 GETIMPORT                        R18 K45 [table.create]
      114 MOVE                             R19 R16
      115 CALL                             R18 1 1
      116 LOADN                            R21 1
      117 MOVE                             R19 R16
      118 LOADN                            R20 1
      119 FORNPREP                         R19
      120 DUPTABLE                         R24 K51 [{"props", "context", "state", "__refs", "__updater"}]
      121 LOADNIL                          R25
      122 SETTABLEKS                       R25 R24 K46 ["props"]
      124 LOADNIL                          R25
      125 SETTABLEKS                       R25 R24 K47 ["context"]
      127 SETTABLEKS                       R7 R24 K48 ["state"]
      129 SETTABLEKS                       R6 R24 K49 ["__refs"]
      131 SETTABLEKS                       R5 R24 K50 ["__updater"]
      133 FASTCALL2                        TABLE_INSERT R18 R24 ; [+4]
      135 MOVE                             R23 R18
      136 GETIMPORT                        R22 K53 [table.insert]
      138 CALL                             R22 2 0
      139 FORNLOOP                         R19
      140 NEWCLOSURE                       R19 P5
      141 CAPTURE                          VAL R3
      142 CAPTURE                          REF R17
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R18
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R5
      148 SETTABLEKS                       R19 R15 K54 ["extend"]
      150 DUPCLOSURE                       R19 K55 [PROTO_8]
      151 CAPTURE                          VAL R4
      152 SETTABLEKS                       R19 R15 K56 ["setState"]
      154 DUPCLOSURE                       R19 K57 [PROTO_9]
      155 SETTABLEKS                       R19 R15 K58 ["forceUpdate"]
      157 GETIMPORT                        R20 K12 [_G]
      159 GETTABLEKS                       R19 R20 K13 ["__DEV__"]
      161 JUMPIFNOT                        R19 ; [+35]
      162 DUPTABLE                         R19 K61 [{"isMounted", "replaceState"}]
      163 NEWTABLE                         R20 0 2
      165 LOADK                            R21 K59 ["isMounted"]
      166 LOADK                            R22 K62 ["Instead, make sure to clean up subscriptions and pending requests in componentWillUnmount to prevent memory leaks."]
      167 SETLIST                          R20 R21 2 [1]
      169 SETTABLEKS                       R20 R19 K59 ["isMounted"]
      171 NEWTABLE                         R20 0 2
      173 LOADK                            R21 K60 ["replaceState"]
      174 LOADK                            R22 K63 ["Refactor your code to use setState instead (see https://github.com/facebook/react/issues/3236)."]
      175 SETLIST                          R20 R21 2 [1]
      177 SETTABLEKS                       R20 R19 K60 ["replaceState"]
      179 DUPCLOSURE                       R20 K64 [PROTO_11]
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R3
      182 GETIMPORT                        R21 K66 [pairs]
      184 MOVE                             R22 R19
      185 CALL                             R21 1 3
      186 FORGPREP_NEXT                    R21
      187 GETTABLE                         R26 R19 R24
      188 JUMPIFEQKNIL                     R26 ; [+6]
      190 GETTABLE                         R26 R19 R24
      191 NEWCLOSURE                       R27 P9
      192 CAPTURE                          VAL R3
      193 CAPTURE                          VAL R26
      194 SETTABLE                         R27 R15 R24
      195 FORGLOOP                         R21 2 ; [-9]
      197 LOADK                            R21 K67 ["PureComponent"]
      198 NAMECALL                         R19 R15 K54 ["extend"]
      200 CALL                             R19 2 1
      201 GETTABLEKS                       R20 R15 K54 ["extend"]
      203 SETTABLEKS                       R20 R19 K54 ["extend"]
      205 DUPTABLE                         R20 K69 [{"isReactComponent", "isPureReactComponent"}]
      206 LOADB                            R21 1
      207 SETTABLEKS                       R21 R20 K16 ["isReactComponent"]
      209 LOADB                            R21 1
      210 SETTABLEKS                       R21 R20 K68 ["isPureReactComponent"]
      212 DUPTABLE                         R23 K36 [{"__newindex", "__index", "__tostring"}]
      213 SETTABLEKS                       R13 R23 K33 ["__newindex"]
      215 SETTABLEKS                       R20 R23 K34 ["__index"]
      217 DUPCLOSURE                       R24 K70 [PROTO_12]
      218 SETTABLEKS                       R24 R23 K35 ["__tostring"]
      220 FASTCALL2                        SETMETATABLE R19 R23 ; [+4]
      222 MOVE                             R22 R19
      223 GETIMPORT                        R21 K39 [setmetatable]
      225 CALL                             R21 2 0
      226 DUPTABLE                         R21 K71 [{"Component", "PureComponent"}]
      227 SETTABLEKS                       R15 R21 K40 ["Component"]
      229 SETTABLEKS                       R19 R21 K67 ["PureComponent"]
      231 CLOSEUPVALS                      R17
      232 RETURN                           R21 1
