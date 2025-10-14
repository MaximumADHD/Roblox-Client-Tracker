PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  RETURN R0 0

PROTO_4:
  RETURN R0 0

PROTO_5:
  LOADNIL R1
  MOVE R2 R0
  JUMPIFEQKNIL R2 [+15]
  GETTABLEKS R4 R2 K0 ["mode"]
  GETUPVAL R5 0
  FASTCALL2 BIT32_BAND R4 R5 [+3]
  GETIMPORT R3 K3 [bit32.band]
  CALL R3 2 1
  JUMPIFEQKN R3 K4 [0] [+2]
  MOVE R1 R2
  GETTABLEKS R2 R2 K5 ["return_"]
  JUMPBACK [-16]
  RETURN R1 1

PROTO_6:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  FASTCALL2 TABLE_INSERT R1 R5 [+5]
  MOVE R8 R1
  MOVE R9 R5
  GETIMPORT R7 K4 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-8]
  GETIMPORT R2 K6 [table.sort]
  MOVE R3 R1
  CALL R2 1 0
  GETIMPORT R2 K8 [table.concat]
  MOVE R3 R1
  LOADK R4 K9 [", "]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_7:
  GETUPVAL R3 0
  GETTABLEKS R4 R0 K0 ["type"]
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+1]
  RETURN R0 0
  GETTABLEKS R3 R1 K1 ["componentWillMount"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K3 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K4 ["function"] [+8]
  GETUPVAL R3 1
  FASTCALL2 TABLE_INSERT R3 R0 [+4]
  MOVE R4 R0
  GETIMPORT R2 K7 [table.insert]
  CALL R2 2 0
  GETTABLEKS R3 R0 K8 ["mode"]
  GETUPVAL R4 2
  FASTCALL2 BIT32_BAND R3 R4 [+3]
  GETIMPORT R2 K11 [bit32.band]
  CALL R2 2 1
  JUMPIFEQKN R2 K12 [0] [+16]
  GETTABLEKS R3 R1 K13 ["UNSAFE_componentWillMount"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K3 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K4 ["function"] [+8]
  GETUPVAL R3 3
  FASTCALL2 TABLE_INSERT R3 R0 [+4]
  MOVE R4 R0
  GETIMPORT R2 K7 [table.insert]
  CALL R2 2 0
  GETTABLEKS R3 R1 K14 ["componentWillReceiveProps"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K3 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K4 ["function"] [+8]
  GETUPVAL R3 4
  FASTCALL2 TABLE_INSERT R3 R0 [+4]
  MOVE R4 R0
  GETIMPORT R2 K7 [table.insert]
  CALL R2 2 0
  GETTABLEKS R3 R0 K8 ["mode"]
  GETUPVAL R4 2
  FASTCALL2 BIT32_BAND R3 R4 [+3]
  GETIMPORT R2 K11 [bit32.band]
  CALL R2 2 1
  JUMPIFEQKN R2 K12 [0] [+16]
  GETTABLEKS R3 R1 K15 ["UNSAFE_componentWillReceiveProps"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K3 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K4 ["function"] [+8]
  GETUPVAL R3 5
  FASTCALL2 TABLE_INSERT R3 R0 [+4]
  MOVE R4 R0
  GETIMPORT R2 K7 [table.insert]
  CALL R2 2 0
  GETTABLEKS R3 R1 K16 ["componentWillUpdate"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K3 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K4 ["function"] [+8]
  GETUPVAL R3 6
  FASTCALL2 TABLE_INSERT R3 R0 [+4]
  MOVE R4 R0
  GETIMPORT R2 K7 [table.insert]
  CALL R2 2 0
  GETTABLEKS R3 R0 K8 ["mode"]
  GETUPVAL R4 2
  FASTCALL2 BIT32_BAND R3 R4 [+3]
  GETIMPORT R2 K11 [bit32.band]
  CALL R2 2 1
  JUMPIFEQKN R2 K12 [0] [+16]
  GETTABLEKS R3 R1 K17 ["UNSAFE_componentWillUpdate"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K3 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K4 ["function"] [+8]
  GETUPVAL R3 7
  FASTCALL2 TABLE_INSERT R3 R0 [+4]
  MOVE R4 R0
  GETIMPORT R2 K7 [table.insert]
  CALL R2 2 0
  RETURN R0 0

PROTO_8:
  NEWTABLE R0 0 0
  GETUPVAL R2 0
  LENGTH R1 R2
  LOADN R2 0
  JUMPIFNOTLT R2 R1 [+24]
  GETIMPORT R1 K1 [ipairs]
  GETUPVAL R2 0
  CALL R1 1 3
  FORGPREP_INEXT R1
  GETUPVAL R7 1
  GETTABLEKS R8 R5 K3 ["type"]
  CALL R7 1 1
  ORK R6 R7 K2 ["Component"]
  LOADB R7 1
  SETTABLE R7 R0 R6
  GETUPVAL R6 2
  GETTABLEKS R7 R5 K3 ["type"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  FORGLOOP R1 2 [inext] [-13]
  GETIMPORT R1 K6 [table.clear]
  GETUPVAL R2 0
  CALL R1 1 0
  NEWTABLE R1 0 0
  GETUPVAL R3 3
  LENGTH R2 R3
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+24]
  GETIMPORT R2 K1 [ipairs]
  GETUPVAL R3 3
  CALL R2 1 3
  FORGPREP_INEXT R2
  GETUPVAL R8 1
  GETTABLEKS R9 R6 K3 ["type"]
  CALL R8 1 1
  ORK R7 R8 K2 ["Component"]
  LOADB R8 1
  SETTABLE R8 R1 R7
  GETUPVAL R7 2
  GETTABLEKS R8 R6 K3 ["type"]
  LOADB R9 1
  SETTABLE R9 R7 R8
  FORGLOOP R2 2 [inext] [-13]
  GETIMPORT R2 K6 [table.clear]
  GETUPVAL R3 3
  CALL R2 1 0
  NEWTABLE R2 0 0
  GETUPVAL R4 4
  LENGTH R3 R4
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+24]
  GETIMPORT R3 K1 [ipairs]
  GETUPVAL R4 4
  CALL R3 1 3
  FORGPREP_INEXT R3
  GETUPVAL R9 1
  GETTABLEKS R10 R7 K3 ["type"]
  CALL R9 1 1
  ORK R8 R9 K2 ["Component"]
  LOADB R9 1
  SETTABLE R9 R2 R8
  GETUPVAL R8 2
  GETTABLEKS R9 R7 K3 ["type"]
  LOADB R10 1
  SETTABLE R10 R8 R9
  FORGLOOP R3 2 [inext] [-13]
  GETIMPORT R3 K6 [table.clear]
  GETUPVAL R4 4
  CALL R3 1 0
  NEWTABLE R3 0 0
  GETUPVAL R5 5
  LENGTH R4 R5
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+24]
  GETIMPORT R4 K1 [ipairs]
  GETUPVAL R5 5
  CALL R4 1 3
  FORGPREP_INEXT R4
  GETUPVAL R10 1
  GETTABLEKS R11 R8 K3 ["type"]
  CALL R10 1 1
  ORK R9 R10 K2 ["Component"]
  LOADB R10 1
  SETTABLE R10 R3 R9
  GETUPVAL R9 2
  GETTABLEKS R10 R8 K3 ["type"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  FORGLOOP R4 2 [inext] [-13]
  GETIMPORT R4 K6 [table.clear]
  GETUPVAL R5 5
  CALL R4 1 0
  NEWTABLE R4 0 0
  GETUPVAL R6 6
  LENGTH R5 R6
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+24]
  GETIMPORT R5 K1 [ipairs]
  GETUPVAL R6 6
  CALL R5 1 3
  FORGPREP_INEXT R5
  GETUPVAL R11 1
  GETTABLEKS R12 R9 K3 ["type"]
  CALL R11 1 1
  ORK R10 R11 K2 ["Component"]
  LOADB R11 1
  SETTABLE R11 R4 R10
  GETUPVAL R10 2
  GETTABLEKS R11 R9 K3 ["type"]
  LOADB R12 1
  SETTABLE R12 R10 R11
  FORGLOOP R5 2 [inext] [-13]
  GETIMPORT R5 K6 [table.clear]
  GETUPVAL R6 6
  CALL R5 1 0
  NEWTABLE R5 0 0
  GETUPVAL R7 7
  LENGTH R6 R7
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+24]
  GETIMPORT R6 K1 [ipairs]
  GETUPVAL R7 7
  CALL R6 1 3
  FORGPREP_INEXT R6
  GETUPVAL R12 1
  GETTABLEKS R13 R10 K3 ["type"]
  CALL R12 1 1
  ORK R11 R12 K2 ["Component"]
  LOADB R12 1
  SETTABLE R12 R5 R11
  GETUPVAL R11 2
  GETTABLEKS R12 R10 K3 ["type"]
  LOADB R13 1
  SETTABLE R13 R11 R12
  FORGLOOP R6 2 [inext] [-13]
  GETIMPORT R6 K6 [table.clear]
  GETUPVAL R7 7
  CALL R6 1 0
  GETIMPORT R6 K8 [next]
  MOVE R7 R1
  CALL R6 1 1
  JUMPIFEQKNIL R6 [+14]
  GETUPVAL R6 8
  MOVE R7 R1
  CALL R6 1 1
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K9 ["error"]
  LOADK R9 K10 ["Using UNSAFE_componentWillMount in strict mode is not recommended and may indicate bugs in your code. "]
  LOADK R10 K11 ["See https://reactjs.org/link/unsafe-component-lifecycles for details.

"]
  LOADK R11 K12 ["* Move code with side effects to componentDidMount, and set initial state in the constructor.
"]
  LOADK R12 K13 ["
Please update the following components: %s"]
  CONCAT R8 R9 R12
  MOVE R9 R6
  CALL R7 2 0
  GETIMPORT R6 K8 [next]
  MOVE R7 R3
  CALL R6 1 1
  JUMPIFEQKNIL R6 [+18]
  GETUPVAL R6 8
  MOVE R7 R3
  CALL R6 1 1
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K9 ["error"]
  LOADK R9 K14 ["Using UNSAFE_componentWillReceiveProps in strict mode is not recommended "]
  LOADK R10 K15 ["and may indicate bugs in your code. "]
  LOADK R11 K11 ["See https://reactjs.org/link/unsafe-component-lifecycles for details.

"]
  LOADK R12 K16 ["* Move data fetching code or side effects to componentDidUpdate.
"]
  LOADK R13 K17 ["* If you're updating state whenever props change, "]
  LOADK R14 K18 ["refactor your code to use memoization techniques or move it to "]
  LOADK R15 K19 ["static getDerivedStateFromProps. Learn more at: https://reactjs.org/link/derived-state
"]
  LOADK R16 K13 ["
Please update the following components: %s"]
  CONCAT R8 R9 R16
  MOVE R9 R6
  CALL R7 2 0
  GETIMPORT R6 K8 [next]
  MOVE R7 R5
  CALL R6 1 1
  JUMPIFEQKNIL R6 [+15]
  GETUPVAL R6 8
  MOVE R7 R5
  CALL R6 1 1
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K9 ["error"]
  LOADK R9 K20 ["Using UNSAFE_componentWillUpdate in strict mode is not recommended "]
  LOADK R10 K15 ["and may indicate bugs in your code. "]
  LOADK R11 K11 ["See https://reactjs.org/link/unsafe-component-lifecycles for details.

"]
  LOADK R12 K16 ["* Move data fetching code or side effects to componentDidUpdate.
"]
  LOADK R13 K13 ["
Please update the following components: %s"]
  CONCAT R8 R9 R13
  MOVE R9 R6
  CALL R7 2 0
  GETIMPORT R6 K8 [next]
  MOVE R7 R0
  CALL R6 1 1
  JUMPIFEQKNIL R6 [+16]
  GETUPVAL R6 8
  MOVE R7 R0
  CALL R6 1 1
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K21 ["warn"]
  LOADK R9 K22 ["componentWillMount has been renamed, and is not recommended for use. "]
  LOADK R10 K11 ["See https://reactjs.org/link/unsafe-component-lifecycles for details.

"]
  LOADK R11 K12 ["* Move code with side effects to componentDidMount, and set initial state in the constructor.
"]
  LOADK R12 K23 ["* Rename componentWillMount to UNSAFE_componentWillMount to suppress "]
  LOADK R13 K24 ["this warning in non-strict mode. In React 18.x, only the UNSAFE_ name will work.
"]
  LOADK R14 K13 ["
Please update the following components: %s"]
  CONCAT R8 R9 R14
  MOVE R9 R6
  CALL R7 2 0
  GETIMPORT R6 K8 [next]
  MOVE R7 R2
  CALL R6 1 1
  JUMPIFEQKNIL R6 [+19]
  GETUPVAL R6 8
  MOVE R7 R2
  CALL R6 1 1
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K21 ["warn"]
  LOADK R9 K25 ["componentWillReceiveProps has been renamed, and is not recommended for use. "]
  LOADK R10 K11 ["See https://reactjs.org/link/unsafe-component-lifecycles for details.

"]
  LOADK R11 K16 ["* Move data fetching code or side effects to componentDidUpdate.
"]
  LOADK R12 K26 ["* If you're updating state whenever props change, refactor your "]
  LOADK R13 K27 ["code to use memoization techniques or move it to "]
  LOADK R14 K19 ["static getDerivedStateFromProps. Learn more at: https://reactjs.org/link/derived-state
"]
  LOADK R15 K28 ["* Rename componentWillReceiveProps to UNSAFE_componentWillReceiveProps to suppress "]
  LOADK R16 K24 ["this warning in non-strict mode. In React 18.x, only the UNSAFE_ name will work.
"]
  LOADK R17 K13 ["
Please update the following components: %s"]
  CONCAT R8 R9 R17
  MOVE R9 R6
  CALL R7 2 0
  GETIMPORT R6 K8 [next]
  MOVE R7 R4
  CALL R6 1 1
  JUMPIFEQKNIL R6 [+16]
  GETUPVAL R6 8
  MOVE R7 R4
  CALL R6 1 1
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K21 ["warn"]
  LOADK R9 K29 ["componentWillUpdate has been renamed, and is not recommended for use. "]
  LOADK R10 K11 ["See https://reactjs.org/link/unsafe-component-lifecycles for details.

"]
  LOADK R11 K16 ["* Move data fetching code or side effects to componentDidUpdate.
"]
  LOADK R12 K30 ["* Rename componentWillUpdate to UNSAFE_componentWillUpdate to suppress "]
  LOADK R13 K24 ["this warning in non-strict mode. In React 18.x, only the UNSAFE_ name will work.
"]
  LOADK R14 K13 ["
Please update the following components: %s"]
  CONCAT R8 R9 R14
  MOVE R9 R6
  CALL R7 2 0
  RETURN R0 0

PROTO_9:
  LOADNIL R3
  MOVE R4 R0
  JUMPIFEQKNIL R4 [+15]
  GETTABLEKS R6 R4 K0 ["mode"]
  GETUPVAL R7 0
  FASTCALL2 BIT32_BAND R6 R7 [+3]
  GETIMPORT R5 K3 [bit32.band]
  CALL R5 2 1
  JUMPIFEQKN R5 K4 [0] [+2]
  MOVE R3 R4
  GETTABLEKS R4 R4 K5 ["return_"]
  JUMPBACK [-16]
  MOVE R2 R3
  JUMPIFNOTEQKNIL R2 [+9]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["error"]
  LOADK R5 K7 ["Expected to find a StrictMode component in a strict mode tree. "]
  LOADK R6 K8 ["This error is likely caused by a bug in React. Please file an issue."]
  CONCAT R4 R5 R6
  CALL R3 1 0
  RETURN R0 0
  GETUPVAL R4 2
  GETTABLEKS R5 R0 K9 ["type"]
  GETTABLE R3 R4 R5
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETUPVAL R4 3
  GETTABLE R3 R4 R2
  GETTABLEKS R5 R0 K9 ["type"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K11 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K12 ["function"] [+36]
  GETTABLEKS R5 R0 K9 ["type"]
  GETTABLEKS R4 R5 K13 ["contextTypes"]
  JUMPIFNOTEQKNIL R4 [+17]
  GETTABLEKS R5 R0 K9 ["type"]
  GETTABLEKS R4 R5 K14 ["childContextTypes"]
  JUMPIFNOTEQKNIL R4 [+11]
  JUMPIFEQKNIL R1 [+22]
  GETTABLEKS R5 R1 K15 ["getChildContext"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K11 [typeof]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K12 ["function"] [+14]
  JUMPIFNOTEQKNIL R3 [+5]
  NEWTABLE R3 0 0
  GETUPVAL R4 3
  SETTABLE R3 R4 R2
  FASTCALL2 TABLE_INSERT R3 R0 [+5]
  MOVE R5 R3
  MOVE R6 R0
  GETIMPORT R4 K18 [table.insert]
  CALL R4 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K0 ["error"]
  LOADK R2 K1 ["Legacy context API has been detected within a strict-mode tree."]
  LOADK R3 K2 ["

The old API will be supported in all 16.x releases, but applications "]
  LOADK R4 K3 ["using it should migrate to the new version."]
  LOADK R5 K4 ["

Please update the following components: %s"]
  LOADK R6 K5 ["

Learn more about this warning here: https://reactjs.org/link/legacy-context"]
  CONCAT R1 R2 R6
  GETUPVAL R2 3
  CALL R0 2 0
  RETURN R0 0

PROTO_11:
  GETIMPORT R0 K1 [pairs]
  GETUPVAL R1 0
  CALL R0 1 3
  FORGPREP_NEXT R0
  LENGTH R5 R4
  JUMPIFNOTEQKN R5 K2 [0] [+2]
  RETURN R0 0
  GETTABLEN R5 R4 1
  NEWTABLE R6 0 0
  GETIMPORT R7 K4 [ipairs]
  MOVE R8 R4
  CALL R7 1 3
  FORGPREP_INEXT R7
  GETUPVAL R13 1
  GETTABLEKS R14 R11 K6 ["type"]
  CALL R13 1 1
  ORK R12 R13 K5 ["Component"]
  LOADB R13 1
  SETTABLE R13 R6 R12
  GETUPVAL R12 2
  GETTABLEKS R13 R11 K6 ["type"]
  LOADB R14 1
  SETTABLE R14 R12 R13
  FORGLOOP R7 2 [inext] [-13]
  GETUPVAL R7 3
  MOVE R8 R6
  CALL R7 1 1
  GETIMPORT R8 K8 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U4
  CAPTURE VAL R5
  CAPTURE UPVAL U5
  CAPTURE VAL R7
  CALL R8 1 2
  GETUPVAL R10 6
  CALL R10 0 0
  JUMPIF R8 [+4]
  GETIMPORT R10 K10 [error]
  MOVE R11 R9
  CALL R10 1 0
  FORGLOOP R0 2 [-45]
  RETURN R0 0

PROTO_12:
  GETIMPORT R0 K2 [table.clear]
  GETUPVAL R1 0
  CALL R0 1 0
  GETIMPORT R0 K2 [table.clear]
  GETUPVAL R1 1
  CALL R0 1 0
  GETIMPORT R0 K2 [table.clear]
  GETUPVAL R1 2
  CALL R0 1 0
  GETIMPORT R0 K2 [table.clear]
  GETUPVAL R1 3
  CALL R0 1 0
  GETIMPORT R0 K2 [table.clear]
  GETUPVAL R1 4
  CALL R0 1 0
  GETIMPORT R0 K2 [table.clear]
  GETUPVAL R1 5
  CALL R0 1 0
  GETIMPORT R0 K2 [table.clear]
  GETUPVAL R1 6
  CALL R0 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R0 K5 ["Shared"]
  CALL R2 1 1
  GETTABLEKS R1 R2 K6 ["console"]
  GETIMPORT R2 K4 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K2 ["Parent"]
  GETTABLEKS R3 R4 K7 ["ReactInternalTypes"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K8 ["ReactCurrentFiber"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["resetCurrentFiber"]
  GETTABLEKS R5 R3 K10 ["setCurrentFiber"]
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R0 K5 ["Shared"]
  CALL R7 1 1
  GETTABLEKS R6 R7 K11 ["getComponentName"]
  GETIMPORT R8 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K2 ["Parent"]
  GETTABLEKS R9 R10 K12 ["ReactTypeOfMode"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K13 ["StrictMode"]
  DUPTABLE R8 K19 [{"recordUnsafeLifecycleWarnings", "flushPendingUnsafeLifecycleWarnings", "recordLegacyContextWarning", "flushLegacyContextWarning", "discardPendingWarnings"}]
  DUPCLOSURE R9 K20 [PROTO_0]
  SETTABLEKS R9 R8 K14 ["recordUnsafeLifecycleWarnings"]
  DUPCLOSURE R9 K21 [PROTO_1]
  SETTABLEKS R9 R8 K15 ["flushPendingUnsafeLifecycleWarnings"]
  DUPCLOSURE R9 K22 [PROTO_2]
  SETTABLEKS R9 R8 K16 ["recordLegacyContextWarning"]
  DUPCLOSURE R9 K23 [PROTO_3]
  SETTABLEKS R9 R8 K17 ["flushLegacyContextWarning"]
  DUPCLOSURE R9 K24 [PROTO_4]
  SETTABLEKS R9 R8 K18 ["discardPendingWarnings"]
  GETIMPORT R10 K26 [_G]
  GETTABLEKS R9 R10 K27 ["__DEV__"]
  JUMPIFNOT R9 [+72]
  DUPCLOSURE R9 K28 [PROTO_5]
  CAPTURE VAL R7
  DUPCLOSURE R10 K29 [PROTO_6]
  NEWTABLE R11 0 0
  NEWTABLE R12 0 0
  NEWTABLE R13 0 0
  NEWTABLE R14 0 0
  NEWTABLE R15 0 0
  NEWTABLE R16 0 0
  NEWTABLE R17 0 0
  DUPCLOSURE R18 K30 [PROTO_7]
  CAPTURE VAL R17
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  SETTABLEKS R18 R8 K14 ["recordUnsafeLifecycleWarnings"]
  DUPCLOSURE R18 K31 [PROTO_8]
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE VAL R17
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R10
  CAPTURE VAL R1
  SETTABLEKS R18 R8 K15 ["flushPendingUnsafeLifecycleWarnings"]
  NEWTABLE R18 0 0
  NEWTABLE R19 0 0
  DUPCLOSURE R20 K32 [PROTO_9]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R19
  CAPTURE VAL R18
  SETTABLEKS R20 R8 K16 ["recordLegacyContextWarning"]
  DUPCLOSURE R20 K33 [PROTO_11]
  CAPTURE VAL R18
  CAPTURE VAL R6
  CAPTURE VAL R19
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R4
  SETTABLEKS R20 R8 K17 ["flushLegacyContextWarning"]
  DUPCLOSURE R20 K34 [PROTO_12]
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R18
  SETTABLEKS R20 R8 K18 ["discardPendingWarnings"]
  RETURN R8 1
