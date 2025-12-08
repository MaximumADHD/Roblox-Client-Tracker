PROTO_0:
  GETIMPORT R1 K2 [string.match]
  MOVE R2 R0
  LOADK R3 K3 ["%.%u[%.%w]-$"]
  CALL R1 2 1
  JUMPIFNOT R1 [+7]
  GETIMPORT R2 K5 [string.gsub]
  MOVE R3 R1
  LOADK R4 K6 ["^%."]
  LOADK R5 K7 [""]
  CALL R2 3 -1
  RETURN R2 -1
  RETURN R0 1

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["warn"]
  LOADK R4 K1 ["%s already defined '%s', but it also defining the deprecated Roact method '%s'. %s should only implement one of these methods, preferably using the non-deprecated name."]
  MOVE R5 R0
  MOVE R6 R2
  MOVE R7 R1
  MOVE R8 R0
  CALL R3 5 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+35]
  GETUPVAL R3 1
  JUMPIFNOT R3 [+33]
  GETIMPORT R3 K2 [debug.info]
  LOADN R4 3
  LOADK R5 K3 ["sln"]
  CALL R3 2 2
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["warn"]
  LOADK R6 K5 ["%s is using method '%s', which is no longer supported and should be updated to '%s'
File: %s:%s"]
  MOVE R7 R0
  MOVE R8 R1
  MOVE R9 R2
  GETIMPORT R11 K8 [string.match]
  MOVE R12 R3
  LOADK R13 K9 ["%.%u[%.%w]-$"]
  CALL R11 2 1
  JUMPIFNOT R11 [+8]
  GETIMPORT R12 K11 [string.gsub]
  MOVE R13 R11
  LOADK R14 K12 ["^%."]
  LOADK R15 K13 [""]
  CALL R12 3 1
  MOVE R10 R12
  JUMP [+1]
  MOVE R10 R3
  FASTCALL1 TOSTRING R4 [+3]
  MOVE R12 R4
  GETIMPORT R11 K15 [tostring]
  CALL R11 1 1
  CALL R5 6 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R4 0
  GETTABLE R3 R4 R1
  JUMPIFEQKNIL R3 [+83]
  GETUPVAL R5 0
  GETTABLE R4 R5 R1
  GETTABLE R3 R0 R4
  JUMPIFEQKNIL R3 [+16]
  GETTABLEKS R3 R0 K0 ["__componentName"]
  MOVE R4 R1
  GETUPVAL R6 0
  GETTABLE R5 R6 R1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["warn"]
  LOADK R7 K2 ["%s already defined '%s', but it also defining the deprecated Roact method '%s'. %s should only implement one of these methods, preferably using the non-deprecated name."]
  MOVE R8 R3
  MOVE R9 R5
  MOVE R10 R4
  MOVE R11 R3
  CALL R6 5 0
  JUMP [+60]
  JUMPIFNOTEQKS R1 K3 ["willUpdate"] [+17]
  GETTABLEKS R3 R0 K4 ["componentWillUpdate"]
  JUMPIFNOT R3 [+13]
  GETTABLEKS R3 R0 K0 ["__componentName"]
  MOVE R4 R1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["warn"]
  LOADK R6 K2 ["%s already defined '%s', but it also defining the deprecated Roact method '%s'. %s should only implement one of these methods, preferably using the non-deprecated name."]
  MOVE R7 R3
  LOADK R8 K5 ["UNSAFE_componentWillUpdate"]
  MOVE R9 R4
  MOVE R10 R3
  CALL R5 5 0
  JUMP [+42]
  GETTABLEKS R3 R0 K0 ["__componentName"]
  MOVE R4 R1
  GETUPVAL R6 0
  GETTABLE R5 R6 R1
  GETUPVAL R6 2
  JUMPIFNOT R6 [+35]
  GETUPVAL R6 3
  JUMPIFNOT R6 [+33]
  GETIMPORT R6 K8 [debug.info]
  LOADN R7 3
  LOADK R8 K9 ["sln"]
  CALL R6 2 2
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K1 ["warn"]
  LOADK R9 K10 ["%s is using method '%s', which is no longer supported and should be updated to '%s'
File: %s:%s"]
  MOVE R10 R3
  MOVE R11 R4
  MOVE R12 R5
  GETIMPORT R14 K13 [string.match]
  MOVE R15 R6
  LOADK R16 K14 ["%.%u[%.%w]-$"]
  CALL R14 2 1
  JUMPIFNOT R14 [+8]
  GETIMPORT R15 K16 [string.gsub]
  MOVE R16 R14
  LOADK R17 K17 ["^%."]
  LOADK R18 K18 [""]
  CALL R15 3 1
  MOVE R13 R15
  JUMP [+1]
  MOVE R13 R6
  FASTCALL1 TOSTRING R7 [+3]
  MOVE R15 R7
  GETIMPORT R14 K20 [tostring]
  CALL R14 1 1
  CALL R8 6 0
  GETUPVAL R3 0
  GETTABLE R1 R3 R1
  FASTCALL3 RAWSET R0 R1 R2
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  GETIMPORT R3 K22 [rawset]
  CALL R3 3 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["__componentName"]
  RETURN R1 1

PROTO_5:
  GETUPVAL R3 0
  JUMPIFNOT R3 [+9]
  JUMPIFEQKNIL R2 [+8]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["warn"]
  LOADK R4 K1 ["Received a `callback` argument to `setState` during initialization of \"%s\". The callback behavior is not supported when using `setState` in `init`.

Consider defining similar behavior in a `compontentDidMount` method instead."]
  GETTABLEKS R5 R0 K2 ["__componentName"]
  CALL R3 2 0
  MOVE R3 R1
  JUMPIFNOT R3 [+5]
  FASTCALL1 TYPE R1 [+3]
  MOVE R4 R1
  GETIMPORT R3 K4 [type]
  CALL R3 1 1
  JUMPIFEQKNIL R1 [+5]
  JUMPIFEQKS R3 K5 ["table"] [+7]
  JUMPIFEQKS R3 K6 ["function"] [+5]
  GETIMPORT R4 K8 [error]
  LOADK R5 K9 ["setState(...): takes an object of state variables to update or a function which returns an object of state variables."]
  CALL R4 1 0
  GETTABLEKS R4 R0 K10 ["state"]
  LOADNIL R5
  JUMPIFNOTEQKS R3 K6 ["function"] [+8]
  MOVE R6 R1
  MOVE R7 R4
  GETTABLEKS R8 R0 K11 ["props"]
  CALL R6 2 1
  MOVE R5 R6
  JUMP [+1]
  MOVE R5 R1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K12 ["assign"]
  NEWTABLE R7 0 0
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 1
  SETTABLEKS R6 R0 K10 ["state"]
  RETURN R0 0

PROTO_6:
  LOADNIL R3
  GETUPVAL R4 0
  GETUPVAL R5 1
  JUMPIFNOTLE R4 R5 [+16]
  GETUPVAL R4 2
  GETUPVAL R5 0
  GETTABLE R3 R4 R5
  SETTABLEKS R0 R3 K0 ["props"]
  SETTABLEKS R1 R3 K1 ["context"]
  GETUPVAL R4 2
  GETUPVAL R5 0
  LOADNIL R6
  SETTABLE R6 R4 R5
  GETUPVAL R4 0
  ADDK R4 R4 K2 [1]
  SETUPVAL R4 0
  JUMP [+17]
  DUPTABLE R4 K6 [{"props", "context", "state", "__refs", "__updater"}]
  SETTABLEKS R0 R4 K0 ["props"]
  SETTABLEKS R1 R4 K1 ["context"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K3 ["state"]
  GETUPVAL R5 4
  SETTABLEKS R5 R4 K4 ["__refs"]
  MOVE R5 R2
  JUMPIF R5 [+1]
  GETUPVAL R5 5
  SETTABLEKS R5 R4 K5 ["__updater"]
  MOVE R3 R4
  GETUPVAL R6 6
  FASTCALL2 SETMETATABLE R3 R6 [+4]
  MOVE R5 R3
  GETIMPORT R4 K8 [setmetatable]
  CALL R4 2 1
  MOVE R3 R4
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K9 ["init"]
  JUMPIFNOT R4 [+22]
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K9 ["init"]
  FASTCALL1 TYPE R5 [+2]
  GETIMPORT R4 K11 [type]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K12 ["function"] [+14]
  GETUPVAL R4 7
  SETTABLEKS R4 R3 K13 ["setState"]
  GETUPVAL R5 6
  GETTABLEKS R4 R5 K9 ["init"]
  MOVE R5 R3
  MOVE R6 R0
  MOVE R7 R1
  CALL R4 3 0
  LOADNIL R4
  SETTABLEKS R4 R3 K13 ["setState"]
  RETURN R3 1

PROTO_7:
  JUMPIFNOTEQKNIL R1 [+10]
  GETUPVAL R2 0
  JUMPIFNOT R2 [+5]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["warn"]
  LOADK R3 K1 ["Component:extend() accepting no arguments is deprecated, and will not be supported in a future version of Roact. Please provide an explicit name."]
  CALL R2 1 0
  LOADK R1 K2 [""]
  JUMP [+11]
  FASTCALL1 TYPE R1 [+3]
  MOVE R3 R1
  GETIMPORT R2 K4 [type]
  CALL R2 1 1
  JUMPIFEQKS R2 K5 ["string"] [+5]
  GETIMPORT R2 K7 [error]
  LOADK R3 K8 ["Component class name must be a string"]
  CALL R2 1 0
  DUPTABLE R2 K13 [{"__componentName", "setState", "forceUpdate", "init"}]
  SETTABLEKS R1 R2 K9 ["__componentName"]
  GETTABLEKS R3 R0 K10 ["setState"]
  SETTABLEKS R3 R2 K10 ["setState"]
  GETTABLEKS R3 R0 K11 ["forceUpdate"]
  SETTABLEKS R3 R2 K11 ["forceUpdate"]
  LOADNIL R3
  SETTABLEKS R3 R2 K12 ["init"]
  SETTABLEKS R2 R2 K14 ["__index"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE VAL R2
  CAPTURE UPVAL U8
  SETTABLEKS R3 R2 K15 ["__ctor"]
  FASTCALL1 GETMETATABLE R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K17 [getmetatable]
  CALL R5 1 1
  FASTCALL2 SETMETATABLE R2 R5 [+4]
  MOVE R4 R2
  GETIMPORT R3 K19 [setmetatable]
  CALL R3 2 0
  RETURN R2 1

PROTO_8:
  JUMPIFEQKNIL R1 [+19]
  FASTCALL1 TYPE R1 [+3]
  MOVE R4 R1
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K2 ["table"] [+12]
  FASTCALL1 TYPE R1 [+3]
  MOVE R4 R1
  GETIMPORT R3 K1 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K3 ["function"] [+5]
  GETIMPORT R3 K5 [error]
  LOADK R4 K6 ["setState(...): takes an object of state variables to update or a function which returns an object of state variables."]
  CALL R3 1 0
  GETTABLEKS R4 R0 K7 ["__updater"]
  GETTABLEKS R3 R4 K8 ["enqueueSetState"]
  MOVE R4 R0
  MOVE R5 R1
  MOVE R6 R2
  LOADK R7 K9 ["setState"]
  CALL R3 4 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R3 R0 K0 ["__updater"]
  GETTABLEKS R2 R3 K1 ["enqueueForceUpdate"]
  MOVE R3 R0
  MOVE R4 R1
  LOADK R5 K2 ["forceUpdate"]
  CALL R2 3 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["warn"]
  LOADK R1 K1 ["%s(...) is deprecated in plain JavaScript React classes. %s"]
  GETUPVAL R3 1
  GETTABLEN R2 R3 1
  GETUPVAL R4 1
  GETTABLEN R3 R4 2
  CALL R0 3 0
  LOADNIL R0
  RETURN R0 1

PROTO_11:
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  SETTABLE R3 R2 R0
  RETURN R0 0

PROTO_12:
  GETTABLEKS R1 R0 K0 ["__componentName"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [_G]
  GETTABLEKS R0 R1 K2 ["__DEV__"]
  GETIMPORT R2 K1 [_G]
  GETTABLEKS R1 R2 K3 ["__COMPAT_WARNINGS__"]
  GETIMPORT R2 K5 [require]
  GETIMPORT R5 K7 [script]
  GETTABLEKS R4 R5 K8 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Parent"]
  LOADK R5 K9 ["luau-polyfill"]
  NAMECALL R3 R3 K10 ["WaitForChild"]
  CALL R3 2 -1
  CALL R2 -1 1
  GETTABLEKS R3 R2 K11 ["Object"]
  GETIMPORT R5 K5 [require]
  GETIMPORT R8 K7 [script]
  GETTABLEKS R7 R8 K8 ["Parent"]
  GETTABLEKS R6 R7 K8 ["Parent"]
  LOADK R8 K12 ["shared"]
  NAMECALL R6 R6 K10 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  GETTABLEKS R4 R5 K13 ["console"]
  GETIMPORT R5 K5 [require]
  GETIMPORT R8 K7 [script]
  GETTABLEKS R7 R8 K8 ["Parent"]
  GETTABLEKS R6 R7 K8 ["Parent"]
  LOADK R8 K12 ["shared"]
  NAMECALL R6 R6 K10 ["WaitForChild"]
  CALL R6 2 -1
  CALL R5 -1 1
  GETIMPORT R6 K5 [require]
  GETIMPORT R8 K7 [script]
  GETTABLEKS R7 R8 K8 ["Parent"]
  LOADK R9 K14 ["ReactNoopUpdateQueue"]
  NAMECALL R7 R7 K10 ["WaitForChild"]
  CALL R7 2 -1
  CALL R6 -1 1
  NEWTABLE R7 0 0
  JUMPIFNOT R0 [+4]
  GETTABLEKS R8 R3 K15 ["freeze"]
  MOVE R9 R7
  CALL R8 1 0
  GETIMPORT R9 K5 [require]
  GETIMPORT R12 K7 [script]
  GETTABLEKS R11 R12 K8 ["Parent"]
  GETTABLEKS R10 R11 K8 ["Parent"]
  LOADK R12 K12 ["shared"]
  NAMECALL R10 R10 K10 ["WaitForChild"]
  CALL R10 2 -1
  CALL R9 -1 1
  GETTABLEKS R8 R9 K16 ["UninitializedState"]
  DUPTABLE R9 K18 [{"isReactComponent"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K17 ["isReactComponent"]
  DUPCLOSURE R10 K19 [PROTO_0]
  DUPCLOSURE R11 K20 [PROTO_1]
  CAPTURE VAL R4
  DUPCLOSURE R12 K21 [PROTO_2]
  CAPTURE VAL R0
  CAPTURE VAL R1
  CAPTURE VAL R4
  DUPTABLE R13 K27 [{"didMount", "shouldUpdate", "willUpdate", "didUpdate", "willUnmount"}]
  LOADK R14 K28 ["componentDidMount"]
  SETTABLEKS R14 R13 K22 ["didMount"]
  LOADK R14 K29 ["shouldComponentUpdate"]
  SETTABLEKS R14 R13 K23 ["shouldUpdate"]
  LOADK R14 K30 ["UNSAFE_componentWillUpdate"]
  SETTABLEKS R14 R13 K24 ["willUpdate"]
  LOADK R14 K31 ["componentDidUpdate"]
  SETTABLEKS R14 R13 K25 ["didUpdate"]
  LOADK R14 K32 ["componentWillUnmount"]
  SETTABLEKS R14 R13 K26 ["willUnmount"]
  DUPCLOSURE R14 K33 [PROTO_3]
  CAPTURE VAL R13
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R1
  DUPTABLE R15 K37 [{"__newindex", "__index", "__tostring"}]
  SETTABLEKS R14 R15 K34 ["__newindex"]
  SETTABLEKS R9 R15 K35 ["__index"]
  DUPCLOSURE R16 K38 [PROTO_4]
  SETTABLEKS R16 R15 K36 ["__tostring"]
  DUPTABLE R17 K40 [{"__componentName"}]
  LOADK R18 K41 ["Component"]
  SETTABLEKS R18 R17 K39 ["__componentName"]
  FASTCALL2 SETMETATABLE R17 R15 [+4]
  MOVE R18 R15
  GETIMPORT R16 K43 [setmetatable]
  CALL R16 2 1
  GETIMPORT R19 K1 [_G]
  GETTABLEKS R18 R19 K44 ["__TESTEZ_RUNNING_TEST__"]
  JUMPIF R18 [+2]
  LOADN R17 132
  JUMP [+1]
  LOADN R17 0
  LOADN R18 1
  GETIMPORT R19 K47 [table.create]
  MOVE R20 R17
  CALL R19 1 1
  LOADN R22 1
  MOVE R20 R17
  LOADN R21 1
  FORNPREP R20
  DUPTABLE R25 K53 [{"props", "context", "state", "__refs", "__updater"}]
  LOADNIL R26
  SETTABLEKS R26 R25 K48 ["props"]
  LOADNIL R26
  SETTABLEKS R26 R25 K49 ["context"]
  SETTABLEKS R8 R25 K50 ["state"]
  SETTABLEKS R7 R25 K51 ["__refs"]
  SETTABLEKS R6 R25 K52 ["__updater"]
  FASTCALL2 TABLE_INSERT R19 R25 [+4]
  MOVE R24 R19
  GETIMPORT R23 K55 [table.insert]
  CALL R23 2 0
  FORNLOOP R20
  DUPCLOSURE R20 K56 [PROTO_5]
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE VAL R3
  NEWCLOSURE R21 P6
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE REF R18
  CAPTURE VAL R17
  CAPTURE VAL R19
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R20
  SETTABLEKS R21 R16 K57 ["extend"]
  DUPCLOSURE R21 K58 [PROTO_8]
  SETTABLEKS R21 R16 K59 ["setState"]
  DUPCLOSURE R21 K60 [PROTO_9]
  SETTABLEKS R21 R16 K61 ["forceUpdate"]
  JUMPIFNOT R0 [+34]
  DUPTABLE R21 K64 [{"isMounted", "replaceState"}]
  NEWTABLE R22 0 2
  LOADK R23 K62 ["isMounted"]
  LOADK R24 K65 ["Instead, make sure to clean up subscriptions and pending requests in componentWillUnmount to prevent memory leaks."]
  SETLIST R22 R23 2 [1]
  SETTABLEKS R22 R21 K62 ["isMounted"]
  NEWTABLE R22 0 2
  LOADK R23 K63 ["replaceState"]
  LOADK R24 K66 ["Refactor your code to use setState instead (see https://github.com/facebook/react/issues/3236)."]
  SETLIST R22 R23 2 [1]
  SETTABLEKS R22 R21 K63 ["replaceState"]
  DUPCLOSURE R22 K67 [PROTO_11]
  CAPTURE VAL R16
  CAPTURE VAL R4
  MOVE R23 R21
  LOADNIL R24
  LOADNIL R25
  FORGPREP R23
  GETTABLE R28 R21 R26
  JUMPIFEQKNIL R28 [+6]
  GETTABLE R28 R21 R26
  NEWCLOSURE R29 P10
  CAPTURE VAL R4
  CAPTURE VAL R28
  SETTABLE R29 R16 R26
  FORGLOOP R23 2 [-9]
  LOADK R23 K68 ["PureComponent"]
  NAMECALL R21 R16 K57 ["extend"]
  CALL R21 2 1
  GETTABLEKS R22 R16 K57 ["extend"]
  SETTABLEKS R22 R21 K57 ["extend"]
  DUPTABLE R22 K70 [{"isReactComponent", "isPureReactComponent"}]
  LOADB R23 1
  SETTABLEKS R23 R22 K17 ["isReactComponent"]
  LOADB R23 1
  SETTABLEKS R23 R22 K69 ["isPureReactComponent"]
  DUPTABLE R25 K37 [{"__newindex", "__index", "__tostring"}]
  SETTABLEKS R14 R25 K34 ["__newindex"]
  SETTABLEKS R22 R25 K35 ["__index"]
  DUPCLOSURE R26 K71 [PROTO_12]
  SETTABLEKS R26 R25 K36 ["__tostring"]
  FASTCALL2 SETMETATABLE R21 R25 [+4]
  MOVE R24 R21
  GETIMPORT R23 K43 [setmetatable]
  CALL R23 2 0
  DUPTABLE R23 K72 [{"Component", "PureComponent"}]
  SETTABLEKS R16 R23 K41 ["Component"]
  SETTABLEKS R21 R23 K68 ["PureComponent"]
  CLOSEUPVALS R18
  RETURN R23 1
