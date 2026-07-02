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
        0 GETIMPORT                        R3 K1 [_G]
        2 GETTABLEKS                       R3 R3 K2 ["__DEV__"]
        4 JUMPIFNOT                        R3 ; [+38]
        5 GETIMPORT                        R3 K1 [_G]
        7 GETTABLEKS                       R3 R3 K3 ["__COMPAT_WARNINGS__"]
        9 JUMPIFNOT                        R3 ; [+33]
       10 GETIMPORT                        R3 K6 [debug.info]
       12 LOADN                            R4 3
       13 LOADK                            R5 K7 ["sln"]
       14 CALL                             R3 2 2
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K8 ["warn"]
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
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K1 ["warn"]
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
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K1 ["warn"]
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
       47 GETIMPORT                        R6 K7 [_G]
       49 GETTABLEKS                       R6 R6 K8 ["__DEV__"]
       51 JUMPIFNOT                        R6 ; [+38]
       52 GETIMPORT                        R6 K7 [_G]
       54 GETTABLEKS                       R6 R6 K9 ["__COMPAT_WARNINGS__"]
       56 JUMPIFNOT                        R6 ; [+33]
       57 GETIMPORT                        R6 K12 [debug.info]
       59 LOADN                            R7 3
       60 LOADK                            R8 K13 ["sln"]
       61 CALL                             R6 2 2
       62 GETUPVAL                         R8 1
       63 GETTABLEKS                       R8 R8 K1 ["warn"]
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
       45 GETUPVAL                         R4 6
       46 GETTABLEKS                       R4 R4 K9 ["init"]
       48 JUMPIFNOT                        R4 ; [+23]
       49 GETUPVAL                         R5 6
       50 GETTABLEKS                       R5 R5 K9 ["init"]
       52 FASTCALL1                        TYPEOF R5 ; [+2]
       53 GETIMPORT                        R4 K11 [typeof]
       55 CALL                             R4 1 1
       56 JUMPIFNOTEQKS                    R4 K12 ["function"] ; [+15]
       58 NEWCLOSURE                       R4 P0
       59 CAPTURE                          REF R3
       60 SETTABLEKS                       R4 R3 K13 ["setState"]
       62 GETUPVAL                         R4 6
       63 GETTABLEKS                       R4 R4 K9 ["init"]
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
        2 GETIMPORT                        R2 K1 [_G]
        4 GETTABLEKS                       R2 R2 K2 ["__COMPAT_WARNINGS__"]
        6 JUMPIFNOT                        R2 ; [+5]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["warn"]
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
       28 DUPTABLE                         R2 K17 [{["__componentName"], ["setState"], ["forceUpdate"], ["init"] = }]
       29 SETTABLEKS                       R1 R2 K12 ["__componentName"]
       31 GETTABLEKS                       R3 R0 K13 ["setState"]
       33 SETTABLEKS                       R3 R2 K13 ["setState"]
       35 GETTABLEKS                       R3 R0 K14 ["forceUpdate"]
       37 SETTABLEKS                       R3 R2 K14 ["forceUpdate"]
       39 SETTABLEKS                       R2 R2 K18 ["__index"]
       41 NEWCLOSURE                       R3 P0
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U6
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R3 R2 K19 ["__ctor"]
       51 FASTCALL1                        GETMETATABLE R0 ; [+3]
       52 MOVE                             R6 R0
       53 GETIMPORT                        R5 K21 [getmetatable]
       55 CALL                             R5 1 1
       56 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       58 MOVE                             R4 R2
       59 GETIMPORT                        R3 K23 [setmetatable]
       61 CALL                             R3 2 0
       62 RETURN                           R2 1

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
       23 GETTABLEKS                       R3 R0 K5 ["__updater"]
       25 GETTABLEKS                       R3 R3 K6 ["enqueueSetState"]
       27 MOVE                             R4 R0
       28 MOVE                             R5 R1
       29 MOVE                             R6 R2
       30 LOADK                            R7 K7 ["setState"]
       31 CALL                             R3 4 0
       32 RETURN                           R0 0

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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Object"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K7 ["Shared"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R3 R3 K8 ["console"]
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R0 K7 ["Shared"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R4 R4 K9 ["invariant"]
       28 GETIMPORT                        R5 K4 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R6 R6 K2 ["Parent"]
       34 GETTABLEKS                       R6 R6 K10 ["ReactNoopUpdateQueue"]
       36 CALL                             R5 1 1
       37 NEWTABLE                         R6 0 0
       39 GETIMPORT                        R7 K12 [_G]
       41 GETTABLEKS                       R7 R7 K13 ["__DEV__"]
       43 JUMPIFNOT                        R7 ; [+4]
       44 GETTABLEKS                       R7 R2 K14 ["freeze"]
       46 MOVE                             R8 R6
       47 CALL                             R7 1 0
       48 GETIMPORT                        R7 K4 [require]
       50 GETTABLEKS                       R8 R0 K7 ["Shared"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R7 R7 K15 ["UninitializedState"]
       55 DUPTABLE                         R8 K18 [{["isReactComponent"] = True}]
       56 DUPCLOSURE                       R9 K19 [PROTO_0]
       57 DUPCLOSURE                       R10 K20 [PROTO_1]
       58 CAPTURE                          VAL R3
       59 DUPCLOSURE                       R11 K21 [PROTO_2]
       60 CAPTURE                          VAL R3
       61 DUPTABLE                         R12 K32 [{["didMount"] = "componentDidMount", ["shouldUpdate"] = "shouldComponentUpdate", ["willUpdate"] = "UNSAFE_componentWillUpdate", ["didUpdate"] = "componentDidUpdate", ["willUnmount"] = "componentWillUnmount"}]
       62 DUPCLOSURE                       R13 K33 [PROTO_3]
       63 CAPTURE                          VAL R12
       64 CAPTURE                          VAL R3
       65 DUPTABLE                         R14 K37 [{"__newindex", "__index", "__tostring"}]
       66 SETTABLEKS                       R13 R14 K34 ["__newindex"]
       68 SETTABLEKS                       R8 R14 K35 ["__index"]
       70 DUPCLOSURE                       R15 K38 [PROTO_4]
       71 SETTABLEKS                       R15 R14 K36 ["__tostring"]
       73 NEWTABLE                         R15 4 0
       75 FASTCALL2                        SETMETATABLE R15 R14 ; [+5]
       77 MOVE                             R17 R15
       78 MOVE                             R18 R14
       79 GETIMPORT                        R16 K40 [setmetatable]
       81 CALL                             R16 2 0
       82 LOADK                            R16 K41 ["Component"]
       83 SETTABLEKS                       R16 R15 K42 ["__componentName"]
       85 GETIMPORT                        R17 K12 [_G]
       87 GETTABLEKS                       R17 R17 K43 ["__TESTEZ_RUNNING_TEST__"]
       89 JUMPIF                           R17 ; [+2]
       90 LOADN                            R16 900
       91 JUMP                             ; [+1]
       92 LOADN                            R16 0
       93 LOADN                            R17 1
       94 GETIMPORT                        R18 K46 [table.create]
       96 MOVE                             R19 R16
       97 CALL                             R18 1 1
       98 LOADN                            R21 1
       99 MOVE                             R19 R16
      100 LOADN                            R20 1
      101 FORNPREP                         R19
      102 DUPTABLE                         R24 K53 [{["props"] = , ["context"] = , ["state"], ["__refs"], ["__updater"]}]
      103 SETTABLEKS                       R7 R24 K50 ["state"]
      105 SETTABLEKS                       R6 R24 K51 ["__refs"]
      107 SETTABLEKS                       R5 R24 K52 ["__updater"]
      109 FASTCALL2                        TABLE_INSERT R18 R24 ; [+4]
      111 MOVE                             R23 R18
      112 GETIMPORT                        R22 K55 [table.insert]
      114 CALL                             R22 2 0
      115 FORNLOOP                         R19
      116 NEWCLOSURE                       R19 P5
      117 CAPTURE                          VAL R3
      118 CAPTURE                          REF R17
      119 CAPTURE                          VAL R16
      120 CAPTURE                          VAL R18
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R5
      124 SETTABLEKS                       R19 R15 K56 ["extend"]
      126 DUPCLOSURE                       R19 K57 [PROTO_8]
      127 CAPTURE                          VAL R4
      128 SETTABLEKS                       R19 R15 K58 ["setState"]
      130 DUPCLOSURE                       R19 K59 [PROTO_9]
      131 SETTABLEKS                       R19 R15 K60 ["forceUpdate"]
      133 GETIMPORT                        R19 K12 [_G]
      135 GETTABLEKS                       R19 R19 K13 ["__DEV__"]
      137 JUMPIFNOT                        R19 ; [+35]
      138 DUPTABLE                         R19 K63 [{"isMounted", "replaceState"}]
      139 NEWTABLE                         R20 0 2
      141 LOADK                            R21 K61 ["isMounted"]
      142 LOADK                            R22 K64 ["Instead, make sure to clean up subscriptions and pending requests in componentWillUnmount to prevent memory leaks."]
      143 SETLIST                          R20 R21 2 [1]
      145 SETTABLEKS                       R20 R19 K61 ["isMounted"]
      147 NEWTABLE                         R20 0 2
      149 LOADK                            R21 K62 ["replaceState"]
      150 LOADK                            R22 K65 ["Refactor your code to use setState instead (see https://github.com/facebook/react/issues/3236)."]
      151 SETLIST                          R20 R21 2 [1]
      153 SETTABLEKS                       R20 R19 K62 ["replaceState"]
      155 DUPCLOSURE                       R20 K66 [PROTO_11]
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R3
      158 GETIMPORT                        R21 K68 [pairs]
      160 MOVE                             R22 R19
      161 CALL                             R21 1 3
      162 FORGPREP_NEXT                    R21
      163 GETTABLE                         R26 R19 R24
      164 JUMPIFEQKNIL                     R26 ; [+6]
      166 GETTABLE                         R26 R19 R24
      167 NEWCLOSURE                       R27 P9
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R26
      170 SETTABLE                         R27 R15 R24
      171 FORGLOOP                         R21 2 ; [-9]
      173 LOADK                            R21 K69 ["PureComponent"]
      174 NAMECALL                         R19 R15 K56 ["extend"]
      176 CALL                             R19 2 1
      177 GETTABLEKS                       R20 R15 K56 ["extend"]
      179 SETTABLEKS                       R20 R19 K56 ["extend"]
      181 DUPTABLE                         R20 K71 [{["isReactComponent"] = True, ["isPureReactComponent"] = True}]
      182 DUPTABLE                         R23 K37 [{"__newindex", "__index", "__tostring"}]
      183 SETTABLEKS                       R13 R23 K34 ["__newindex"]
      185 SETTABLEKS                       R20 R23 K35 ["__index"]
      187 DUPCLOSURE                       R24 K72 [PROTO_12]
      188 SETTABLEKS                       R24 R23 K36 ["__tostring"]
      190 FASTCALL2                        SETMETATABLE R19 R23 ; [+4]
      192 MOVE                             R22 R19
      193 GETIMPORT                        R21 K40 [setmetatable]
      195 CALL                             R21 2 0
      196 DUPTABLE                         R21 K73 [{"Component", "PureComponent"}]
      197 SETTABLEKS                       R15 R21 K41 ["Component"]
      199 SETTABLEKS                       R19 R21 K69 ["PureComponent"]
      201 CLOSEUPVALS                      R17
      202 RETURN                           R21 1
