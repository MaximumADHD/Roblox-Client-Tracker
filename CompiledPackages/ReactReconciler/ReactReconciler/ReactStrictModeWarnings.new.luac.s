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
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  FASTCALL2 TABLE_INSERT R1 R5 [+5]
  MOVE R8 R1
  MOVE R9 R5
  GETIMPORT R7 K2 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-8]
  GETIMPORT R2 K4 [table.sort]
  MOVE R3 R1
  CALL R2 1 0
  GETIMPORT R2 K6 [table.concat]
  MOVE R3 R1
  LOADK R4 K7 [", "]
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
  JUMPIFNOTLT R2 R1 [+23]
  GETUPVAL R1 0
  LOADNIL R2
  LOADNIL R3
  FORGPREP R1
  GETUPVAL R7 1
  GETTABLEKS R8 R5 K1 ["type"]
  CALL R7 1 1
  ORK R6 R7 K0 ["Component"]
  LOADB R7 1
  SETTABLE R7 R0 R6
  GETUPVAL R6 2
  GETTABLEKS R7 R5 K1 ["type"]
  LOADB R8 1
  SETTABLE R8 R6 R7
  FORGLOOP R1 2 [-13]
  GETIMPORT R1 K4 [table.clear]
  GETUPVAL R2 0
  CALL R1 1 0
  NEWTABLE R1 0 0
  GETUPVAL R3 3
  LENGTH R2 R3
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+23]
  GETUPVAL R2 3
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R8 1
  GETTABLEKS R9 R6 K1 ["type"]
  CALL R8 1 1
  ORK R7 R8 K0 ["Component"]
  LOADB R8 1
  SETTABLE R8 R1 R7
  GETUPVAL R7 2
  GETTABLEKS R8 R6 K1 ["type"]
  LOADB R9 1
  SETTABLE R9 R7 R8
  FORGLOOP R2 2 [-13]
  GETIMPORT R2 K4 [table.clear]
  GETUPVAL R3 3
  CALL R2 1 0
  NEWTABLE R2 0 0
  GETUPVAL R4 4
  LENGTH R3 R4
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+23]
  GETUPVAL R3 4
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETUPVAL R9 1
  GETTABLEKS R10 R7 K1 ["type"]
  CALL R9 1 1
  ORK R8 R9 K0 ["Component"]
  LOADB R9 1
  SETTABLE R9 R2 R8
  GETUPVAL R8 2
  GETTABLEKS R9 R7 K1 ["type"]
  LOADB R10 1
  SETTABLE R10 R8 R9
  FORGLOOP R3 2 [-13]
  GETIMPORT R3 K4 [table.clear]
  GETUPVAL R4 4
  CALL R3 1 0
  NEWTABLE R3 0 0
  GETUPVAL R5 5
  LENGTH R4 R5
  LOADN R5 0
  JUMPIFNOTLT R5 R4 [+23]
  GETUPVAL R4 5
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETUPVAL R10 1
  GETTABLEKS R11 R8 K1 ["type"]
  CALL R10 1 1
  ORK R9 R10 K0 ["Component"]
  LOADB R10 1
  SETTABLE R10 R3 R9
  GETUPVAL R9 2
  GETTABLEKS R10 R8 K1 ["type"]
  LOADB R11 1
  SETTABLE R11 R9 R10
  FORGLOOP R4 2 [-13]
  GETIMPORT R4 K4 [table.clear]
  GETUPVAL R5 5
  CALL R4 1 0
  NEWTABLE R4 0 0
  GETUPVAL R6 6
  LENGTH R5 R6
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+23]
  GETUPVAL R5 6
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETUPVAL R11 1
  GETTABLEKS R12 R9 K1 ["type"]
  CALL R11 1 1
  ORK R10 R11 K0 ["Component"]
  LOADB R11 1
  SETTABLE R11 R4 R10
  GETUPVAL R10 2
  GETTABLEKS R11 R9 K1 ["type"]
  LOADB R12 1
  SETTABLE R12 R10 R11
  FORGLOOP R5 2 [-13]
  GETIMPORT R5 K4 [table.clear]
  GETUPVAL R6 6
  CALL R5 1 0
  NEWTABLE R5 0 0
  GETUPVAL R7 7
  LENGTH R6 R7
  LOADN R7 0
  JUMPIFNOTLT R7 R6 [+23]
  GETUPVAL R6 7
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  GETUPVAL R12 1
  GETTABLEKS R13 R10 K1 ["type"]
  CALL R12 1 1
  ORK R11 R12 K0 ["Component"]
  LOADB R12 1
  SETTABLE R12 R5 R11
  GETUPVAL R11 2
  GETTABLEKS R12 R10 K1 ["type"]
  LOADB R13 1
  SETTABLE R13 R11 R12
  FORGLOOP R6 2 [-13]
  GETIMPORT R6 K4 [table.clear]
  GETUPVAL R7 7
  CALL R6 1 0
  GETIMPORT R6 K6 [next]
  MOVE R7 R1
  CALL R6 1 1
  JUMPIFEQKNIL R6 [+10]
  GETUPVAL R6 8
  MOVE R7 R1
  CALL R6 1 1
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K7 ["error"]
  LOADK R8 K8 ["Using UNSAFE_componentWillMount in strict mode is not recommended and may indicate bugs in your code. See https://reactjs.org/link/unsafe-component-lifecycles for details.

* Move code with side effects to componentDidMount, and set initial state in the constructor.

Please update the following components: %s"]
  MOVE R9 R6
  CALL R7 2 0
  GETIMPORT R6 K6 [next]
  MOVE R7 R3
  CALL R6 1 1
  JUMPIFEQKNIL R6 [+10]
  GETUPVAL R6 8
  MOVE R7 R3
  CALL R6 1 1
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K7 ["error"]
  LOADK R8 K9 ["Using UNSAFE_componentWillReceiveProps in strict mode is not recommended and may indicate bugs in your code. See https://reactjs.org/link/unsafe-component-lifecycles for details.

* Move data fetching code or side effects to componentDidUpdate.
* If you're updating state whenever props change, refactor your code to use memoization techniques or move it to static getDerivedStateFromProps. Learn more at: https://reactjs.org/link/derived-state

Please update the following components: %s"]
  MOVE R9 R6
  CALL R7 2 0
  GETIMPORT R6 K6 [next]
  MOVE R7 R5
  CALL R6 1 1
  JUMPIFEQKNIL R6 [+10]
  GETUPVAL R6 8
  MOVE R7 R5
  CALL R6 1 1
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K7 ["error"]
  LOADK R8 K10 ["Using UNSAFE_componentWillUpdate in strict mode is not recommended and may indicate bugs in your code. See https://reactjs.org/link/unsafe-component-lifecycles for details.

* Move data fetching code or side effects to componentDidUpdate.

Please update the following components: %s"]
  MOVE R9 R6
  CALL R7 2 0
  GETIMPORT R6 K6 [next]
  MOVE R7 R0
  CALL R6 1 1
  JUMPIFEQKNIL R6 [+10]
  GETUPVAL R6 8
  MOVE R7 R0
  CALL R6 1 1
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K11 ["warn"]
  LOADK R8 K12 ["componentWillMount has been renamed, and is not recommended for use. See https://reactjs.org/link/unsafe-component-lifecycles for details.

* Move code with side effects to componentDidMount, and set initial state in the constructor.
* Rename componentWillMount to UNSAFE_componentWillMount to suppress this warning in non-strict mode. In React 18.x, only the UNSAFE_ name will work.

Please update the following components: %s"]
  MOVE R9 R6
  CALL R7 2 0
  GETIMPORT R6 K6 [next]
  MOVE R7 R2
  CALL R6 1 1
  JUMPIFEQKNIL R6 [+10]
  GETUPVAL R6 8
  MOVE R7 R2
  CALL R6 1 1
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K11 ["warn"]
  LOADK R8 K13 ["componentWillReceiveProps has been renamed, and is not recommended for use. See https://reactjs.org/link/unsafe-component-lifecycles for details.

* Move data fetching code or side effects to componentDidUpdate.
* If you're updating state whenever props change, refactor your code to use memoization techniques or move it to static getDerivedStateFromProps. Learn more at: https://reactjs.org/link/derived-state
* Rename componentWillReceiveProps to UNSAFE_componentWillReceiveProps to suppress this warning in non-strict mode. In React 18.x, only the UNSAFE_ name will work.

Please update the following components: %s"]
  MOVE R9 R6
  CALL R7 2 0
  GETIMPORT R6 K6 [next]
  MOVE R7 R4
  CALL R6 1 1
  JUMPIFEQKNIL R6 [+10]
  GETUPVAL R6 8
  MOVE R7 R4
  CALL R6 1 1
  GETUPVAL R8 9
  GETTABLEKS R7 R8 K11 ["warn"]
  LOADK R8 K14 ["componentWillUpdate has been renamed, and is not recommended for use. See https://reactjs.org/link/unsafe-component-lifecycles for details.

* Move data fetching code or side effects to componentDidUpdate.
* Rename componentWillUpdate to UNSAFE_componentWillUpdate to suppress this warning in non-strict mode. In React 18.x, only the UNSAFE_ name will work.

Please update the following components: %s"]
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
  JUMPIFNOTEQKNIL R2 [+7]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["error"]
  LOADK R4 K7 ["Expected to find a StrictMode component in a strict mode tree. This error is likely caused by a bug in React. Please file an issue."]
  CALL R3 1 0
  RETURN R0 0
  GETUPVAL R4 2
  GETTABLEKS R5 R0 K8 ["type"]
  GETTABLE R3 R4 R5
  JUMPIFNOT R3 [+1]
  RETURN R0 0
  GETUPVAL R4 3
  GETTABLE R3 R4 R2
  GETTABLEKS R5 R0 K8 ["type"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K10 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K11 ["function"] [+36]
  GETTABLEKS R5 R0 K8 ["type"]
  GETTABLEKS R4 R5 K12 ["contextTypes"]
  JUMPIFNOTEQKNIL R4 [+17]
  GETTABLEKS R5 R0 K8 ["type"]
  GETTABLEKS R4 R5 K13 ["childContextTypes"]
  JUMPIFNOTEQKNIL R4 [+11]
  JUMPIFEQKNIL R1 [+22]
  GETTABLEKS R5 R1 K14 ["getChildContext"]
  FASTCALL1 TYPEOF R5 [+2]
  GETIMPORT R4 K10 [typeof]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K11 ["function"] [+14]
  JUMPIFNOTEQKNIL R3 [+5]
  NEWTABLE R3 0 0
  GETUPVAL R4 3
  SETTABLE R3 R4 R2
  FASTCALL2 TABLE_INSERT R3 R0 [+5]
  MOVE R5 R3
  MOVE R6 R0
  GETIMPORT R4 K17 [table.insert]
  CALL R4 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  GETUPVAL R1 1
  CALL R0 1 0
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K0 ["error"]
  LOADK R1 K1 ["Legacy context API has been detected within a strict-mode tree.

The old API will be supported in all 16.x releases, but applications using it should migrate to the new version.

Please update the following components: %s

Learn more about this warning here: https://reactjs.org/link/legacy-context"]
  GETUPVAL R2 3
  CALL R0 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R0 0
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  LENGTH R5 R4
  JUMPIFNOTEQKN R5 K0 [0] [+2]
  RETURN R0 0
  GETTABLEN R5 R4 1
  NEWTABLE R6 0 0
  MOVE R7 R4
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  GETUPVAL R13 1
  GETTABLEKS R14 R11 K2 ["type"]
  CALL R13 1 1
  ORK R12 R13 K1 ["Component"]
  LOADB R13 1
  SETTABLE R13 R6 R12
  GETUPVAL R12 2
  GETTABLEKS R13 R11 K2 ["type"]
  LOADB R14 1
  SETTABLE R14 R12 R13
  FORGLOOP R7 2 [-13]
  GETUPVAL R7 3
  MOVE R8 R6
  CALL R7 1 1
  GETIMPORT R8 K4 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U4
  CAPTURE VAL R5
  CAPTURE UPVAL U5
  CAPTURE VAL R7
  CALL R8 1 2
  GETUPVAL R10 6
  CALL R10 0 0
  JUMPIF R8 [+4]
  GETIMPORT R10 K6 [error]
  MOVE R11 R9
  CALL R10 1 0
  FORGLOOP R0 2 [-44]
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
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["ReactGlobals"]
  CALL R1 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R4 R0 K6 ["Shared"]
  CALL R3 1 1
  GETTABLEKS R2 R3 K7 ["console"]
  GETIMPORT R3 K4 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K2 ["Parent"]
  GETTABLEKS R4 R5 K8 ["ReactInternalTypes"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K9 ["ReactCurrentFiber"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K10 ["resetCurrentFiber"]
  GETTABLEKS R6 R4 K11 ["setCurrentFiber"]
  GETIMPORT R8 K4 [require]
  GETTABLEKS R9 R0 K6 ["Shared"]
  CALL R8 1 1
  GETTABLEKS R7 R8 K12 ["getComponentName"]
  GETIMPORT R9 K4 [require]
  GETIMPORT R12 K1 [script]
  GETTABLEKS R11 R12 K2 ["Parent"]
  GETTABLEKS R10 R11 K13 ["ReactTypeOfMode"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K14 ["StrictMode"]
  DUPTABLE R9 K20 [{"recordUnsafeLifecycleWarnings", "flushPendingUnsafeLifecycleWarnings", "recordLegacyContextWarning", "flushLegacyContextWarning", "discardPendingWarnings"}]
  DUPCLOSURE R10 K21 [PROTO_0]
  SETTABLEKS R10 R9 K15 ["recordUnsafeLifecycleWarnings"]
  DUPCLOSURE R10 K22 [PROTO_1]
  SETTABLEKS R10 R9 K16 ["flushPendingUnsafeLifecycleWarnings"]
  DUPCLOSURE R10 K23 [PROTO_2]
  SETTABLEKS R10 R9 K17 ["recordLegacyContextWarning"]
  DUPCLOSURE R10 K24 [PROTO_3]
  SETTABLEKS R10 R9 K18 ["flushLegacyContextWarning"]
  DUPCLOSURE R10 K25 [PROTO_4]
  SETTABLEKS R10 R9 K19 ["discardPendingWarnings"]
  GETTABLEKS R10 R1 K26 ["__DEV__"]
  JUMPIFNOT R10 [+72]
  DUPCLOSURE R10 K27 [PROTO_5]
  CAPTURE VAL R8
  DUPCLOSURE R11 K28 [PROTO_6]
  NEWTABLE R12 0 0
  NEWTABLE R13 0 0
  NEWTABLE R14 0 0
  NEWTABLE R15 0 0
  NEWTABLE R16 0 0
  NEWTABLE R17 0 0
  NEWTABLE R18 0 0
  DUPCLOSURE R19 K29 [PROTO_7]
  CAPTURE VAL R18
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R17
  SETTABLEKS R19 R9 K15 ["recordUnsafeLifecycleWarnings"]
  DUPCLOSURE R19 K30 [PROTO_8]
  CAPTURE VAL R12
  CAPTURE VAL R7
  CAPTURE VAL R18
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R11
  CAPTURE VAL R2
  SETTABLEKS R19 R9 K16 ["flushPendingUnsafeLifecycleWarnings"]
  NEWTABLE R19 0 0
  NEWTABLE R20 0 0
  DUPCLOSURE R21 K31 [PROTO_9]
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R20
  CAPTURE VAL R19
  SETTABLEKS R21 R9 K17 ["recordLegacyContextWarning"]
  DUPCLOSURE R21 K32 [PROTO_11]
  CAPTURE VAL R19
  CAPTURE VAL R7
  CAPTURE VAL R20
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R5
  SETTABLEKS R21 R9 K18 ["flushLegacyContextWarning"]
  DUPCLOSURE R21 K33 [PROTO_12]
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R19
  SETTABLEKS R21 R9 K19 ["discardPendingWarnings"]
  RETURN R9 1
