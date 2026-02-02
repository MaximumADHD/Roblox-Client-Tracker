PROTO_0:
  JUMPIFEQKNIL R0 [+8]
  FASTCALL1 TYPEOF R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K2 ["function"] [+2]
  RETURN R0 0
  MOVE R3 R1
  LOADK R4 K3 ["_"]
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R6 R0
  GETIMPORT R5 K5 [tostring]
  CALL R5 1 1
  CONCAT R2 R3 R5
  GETUPVAL R4 0
  GETTABLE R3 R4 R2
  JUMPIF R3 [+14]
  GETUPVAL R3 0
  LOADB R4 1
  SETTABLE R4 R3 R2
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["error"]
  LOADK R4 K7 ["%s(...): Expected the last optional `callback` argument to be a function. Instead received: %s."]
  MOVE R5 R1
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R7 R0
  GETIMPORT R6 K5 [tostring]
  CALL R6 1 1
  CALL R3 3 0
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  GETTABLEKS R4 R0 K0 ["memoizedState"]
  GETIMPORT R6 K2 [_G]
  GETTABLEKS R5 R6 K3 ["__DEV__"]
  JUMPIFNOT R5 [+27]
  GETUPVAL R5 0
  JUMPIFNOT R5 [+25]
  GETTABLEKS R6 R0 K4 ["mode"]
  GETUPVAL R7 1
  FASTCALL2 BIT32_BAND R6 R7 [+3]
  GETIMPORT R5 K7 [bit32.band]
  CALL R5 2 1
  JUMPIFEQKN R5 K8 [0] [+16]
  GETUPVAL R5 2
  CALL R5 0 0
  GETIMPORT R5 K10 [pcall]
  MOVE R6 R2
  MOVE R7 R3
  MOVE R8 R4
  CALL R5 3 2
  GETUPVAL R7 3
  CALL R7 0 0
  JUMPIF R5 [+4]
  GETIMPORT R7 K12 [error]
  MOVE R8 R6
  CALL R7 1 0
  MOVE R5 R2
  MOVE R6 R3
  MOVE R7 R4
  CALL R5 2 1
  GETIMPORT R7 K2 [_G]
  GETTABLEKS R6 R7 K3 ["__DEV__"]
  JUMPIFNOT R6 [+4]
  GETUPVAL R6 4
  MOVE R7 R1
  MOVE R8 R5
  CALL R6 2 0
  JUMPIFNOTEQKNIL R5 [+3]
  MOVE R6 R4
  JUMPIF R6 [+8]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K13 ["assign"]
  NEWTABLE R7 0 0
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 1
  SETTABLEKS R6 R0 K0 ["memoizedState"]
  GETTABLEKS R7 R0 K14 ["lanes"]
  GETUPVAL R8 6
  JUMPIFNOTEQ R7 R8 [+5]
  GETTABLEKS R7 R0 K15 ["updateQueue"]
  SETTABLEKS R6 R7 K16 ["baseState"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  MOVE R4 R0
  CALL R3 1 1
  GETUPVAL R4 1
  CALL R4 0 1
  GETUPVAL R5 2
  MOVE R6 R3
  CALL R5 1 1
  GETUPVAL R6 3
  MOVE R7 R4
  MOVE R8 R5
  CALL R6 2 1
  SETTABLEKS R1 R6 K0 ["payload"]
  JUMPIFEQKNIL R2 [+12]
  GETIMPORT R8 K2 [_G]
  GETTABLEKS R7 R8 K3 ["__DEV__"]
  JUMPIFNOT R7 [+4]
  GETUPVAL R7 4
  MOVE R8 R2
  LOADK R9 K4 ["setState"]
  CALL R7 2 0
  SETTABLEKS R2 R6 K5 ["callback"]
  GETUPVAL R7 5
  MOVE R8 R3
  MOVE R9 R6
  CALL R7 2 0
  GETUPVAL R7 6
  MOVE R8 R3
  MOVE R9 R5
  MOVE R10 R4
  CALL R7 3 0
  GETIMPORT R8 K2 [_G]
  GETTABLEKS R7 R8 K3 ["__DEV__"]
  JUMPIFNOT R7 [+22]
  GETUPVAL R7 7
  JUMPIFNOT R7 [+20]
  GETTABLEKS R8 R3 K6 ["mode"]
  GETUPVAL R9 8
  FASTCALL2 BIT32_BAND R8 R9 [+3]
  GETIMPORT R7 K9 [bit32.band]
  CALL R7 2 1
  JUMPIFEQKN R7 K10 [0] [+11]
  GETUPVAL R8 9
  GETTABLEKS R9 R3 K12 ["type"]
  CALL R8 1 1
  ORK R7 R8 K11 ["Unknown"]
  GETUPVAL R8 10
  MOVE R9 R7
  MOVE R10 R5
  MOVE R11 R1
  CALL R8 3 0
  GETUPVAL R7 11
  JUMPIFNOT R7 [+4]
  GETUPVAL R7 12
  MOVE R8 R3
  MOVE R9 R5
  CALL R7 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  MOVE R4 R0
  CALL R3 1 1
  GETUPVAL R4 1
  CALL R4 0 1
  GETUPVAL R5 2
  MOVE R6 R3
  CALL R5 1 1
  GETUPVAL R6 3
  MOVE R7 R4
  MOVE R8 R5
  CALL R6 2 1
  GETUPVAL R7 4
  SETTABLEKS R7 R6 K0 ["tag"]
  SETTABLEKS R1 R6 K1 ["payload"]
  JUMPIFEQKNIL R2 [+12]
  GETIMPORT R8 K3 [_G]
  GETTABLEKS R7 R8 K4 ["__DEV__"]
  JUMPIFNOT R7 [+4]
  GETUPVAL R7 5
  MOVE R8 R2
  LOADK R9 K5 ["replaceState"]
  CALL R7 2 0
  SETTABLEKS R2 R6 K6 ["callback"]
  GETUPVAL R7 6
  MOVE R8 R3
  MOVE R9 R6
  CALL R7 2 0
  GETUPVAL R7 7
  MOVE R8 R3
  MOVE R9 R5
  MOVE R10 R4
  CALL R7 3 0
  GETIMPORT R8 K3 [_G]
  GETTABLEKS R7 R8 K4 ["__DEV__"]
  JUMPIFNOT R7 [+22]
  GETUPVAL R7 8
  JUMPIFNOT R7 [+20]
  GETTABLEKS R8 R3 K7 ["mode"]
  GETUPVAL R9 9
  FASTCALL2 BIT32_BAND R8 R9 [+3]
  GETIMPORT R7 K10 [bit32.band]
  CALL R7 2 1
  JUMPIFEQKN R7 K11 [0] [+11]
  GETUPVAL R8 10
  GETTABLEKS R9 R3 K13 ["type"]
  CALL R8 1 1
  ORK R7 R8 K12 ["Unknown"]
  GETUPVAL R8 11
  MOVE R9 R7
  MOVE R10 R5
  MOVE R11 R1
  CALL R8 3 0
  GETUPVAL R7 12
  JUMPIFNOT R7 [+4]
  GETUPVAL R7 13
  MOVE R8 R3
  MOVE R9 R5
  CALL R7 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  MOVE R3 R0
  CALL R2 1 1
  GETUPVAL R3 1
  CALL R3 0 1
  GETUPVAL R4 2
  MOVE R5 R2
  CALL R4 1 1
  GETUPVAL R5 3
  MOVE R6 R3
  MOVE R7 R4
  CALL R5 2 1
  GETUPVAL R6 4
  SETTABLEKS R6 R5 K0 ["tag"]
  JUMPIFEQKNIL R1 [+12]
  GETIMPORT R7 K2 [_G]
  GETTABLEKS R6 R7 K3 ["__DEV__"]
  JUMPIFNOT R6 [+4]
  GETUPVAL R6 5
  MOVE R7 R1
  LOADK R8 K4 ["forceUpdate"]
  CALL R6 2 0
  SETTABLEKS R1 R5 K5 ["callback"]
  GETUPVAL R6 6
  MOVE R7 R2
  MOVE R8 R5
  CALL R6 2 0
  GETUPVAL R6 7
  MOVE R7 R2
  MOVE R8 R4
  MOVE R9 R3
  CALL R6 3 0
  GETIMPORT R7 K2 [_G]
  GETTABLEKS R6 R7 K3 ["__DEV__"]
  JUMPIFNOT R6 [+21]
  GETUPVAL R6 8
  JUMPIFNOT R6 [+19]
  GETTABLEKS R7 R2 K6 ["mode"]
  GETUPVAL R8 9
  FASTCALL2 BIT32_BAND R7 R8 [+3]
  GETIMPORT R6 K9 [bit32.band]
  CALL R6 2 1
  JUMPIFEQKN R6 K10 [0] [+10]
  GETUPVAL R7 10
  GETTABLEKS R8 R2 K12 ["type"]
  CALL R7 1 1
  ORK R6 R7 K11 ["Unknown"]
  GETUPVAL R7 11
  MOVE R8 R6
  MOVE R9 R4
  CALL R7 2 0
  GETUPVAL R6 12
  JUMPIFNOT R6 [+4]
  GETUPVAL R6 13
  MOVE R7 R2
  MOVE R8 R4
  CALL R6 2 0
  RETURN R0 0

PROTO_6:
  GETIMPORT R0 K1 [require]
  GETIMPORT R3 K4 [script]
  GETTABLEKS R2 R3 K5 ["Parent"]
  GETTABLEKS R1 R2 K2 ["ReactFiberWorkLoop.new"]
  CALL R0 1 1
  GETTABLEKS R1 R0 K6 ["requestEventTime"]
  GETTABLEKS R2 R0 K7 ["requestUpdateLane"]
  GETTABLEKS R3 R0 K8 ["scheduleUpdateOnFiber"]
  DUPTABLE R4 K13 [{"isMounted", "enqueueSetState", "enqueueReplaceState", "enqueueForceUpdate"}]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K9 ["isMounted"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R3
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  SETTABLEKS R5 R4 K10 ["enqueueSetState"]
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U12
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R3
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  SETTABLEKS R5 R4 K11 ["enqueueReplaceState"]
  NEWCLOSURE R5 P2
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U13
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE VAL R3
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U14
  CAPTURE UPVAL U10
  CAPTURE UPVAL U15
  SETTABLEKS R5 R4 K12 ["enqueueForceUpdate"]
  SETUPVAL R4 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+3]
  GETUPVAL R0 1
  CALL R0 0 0
  GETUPVAL R0 0
  RETURN R0 1

PROTO_8:
  GETTABLEKS R7 R0 K0 ["stateNode"]
  GETTABLEKS R9 R7 K1 ["shouldComponentUpdate"]
  FASTCALL1 TYPEOF R9 [+2]
  GETIMPORT R8 K3 [typeof]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K4 ["function"] [+59]
  GETIMPORT R9 K6 [_G]
  GETTABLEKS R8 R9 K7 ["__DEV__"]
  JUMPIFNOT R8 [+30]
  GETUPVAL R8 0
  JUMPIFNOT R8 [+28]
  GETTABLEKS R9 R0 K8 ["mode"]
  GETUPVAL R10 1
  FASTCALL2 BIT32_BAND R9 R10 [+3]
  GETIMPORT R8 K11 [bit32.band]
  CALL R8 2 1
  JUMPIFEQKN R8 K12 [0] [+19]
  GETUPVAL R8 2
  CALL R8 0 0
  GETIMPORT R8 K14 [pcall]
  GETTABLEKS R9 R7 K1 ["shouldComponentUpdate"]
  MOVE R10 R7
  MOVE R11 R3
  MOVE R12 R5
  MOVE R13 R6
  CALL R8 5 2
  GETUPVAL R10 3
  CALL R10 0 0
  JUMPIF R8 [+4]
  GETIMPORT R10 K16 [error]
  MOVE R11 R9
  CALL R10 1 0
  MOVE R10 R3
  MOVE R11 R5
  MOVE R12 R6
  NAMECALL R8 R7 K1 ["shouldComponentUpdate"]
  CALL R8 4 1
  GETIMPORT R10 K6 [_G]
  GETTABLEKS R9 R10 K7 ["__DEV__"]
  JUMPIFNOT R9 [+11]
  JUMPIFNOTEQKNIL R8 [+10]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K15 ["error"]
  LOADK R10 K17 ["%s.shouldComponentUpdate(): Returned nil instead of a boolean value. Make sure to return true or false."]
  GETUPVAL R12 5
  MOVE R13 R1
  CALL R12 1 1
  ORK R11 R12 K18 ["Component"]
  CALL R9 2 0
  RETURN R8 1
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R9 R1
  GETIMPORT R8 K3 [typeof]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K19 ["table"] [+16]
  GETTABLEKS R8 R1 K20 ["isPureReactComponent"]
  JUMPIFNOT R8 [+12]
  GETUPVAL R9 6
  MOVE R10 R2
  MOVE R11 R3
  CALL R9 2 1
  NOT R8 R9
  JUMPIF R8 [+5]
  GETUPVAL R9 6
  MOVE R10 R4
  MOVE R11 R5
  CALL R9 2 1
  NOT R8 R9
  RETURN R8 1
  LOADB R8 1
  RETURN R8 1

PROTO_9:
  GETTABLEKS R3 R0 K0 ["stateNode"]
  GETIMPORT R5 K2 [_G]
  GETTABLEKS R4 R5 K3 ["__DEV__"]
  JUMPIFNOT R4 [+343]
  GETUPVAL R5 0
  MOVE R6 R1
  CALL R5 1 1
  ORK R4 R5 K4 ["Component"]
  GETTABLEKS R5 R3 K5 ["render"]
  JUMPIF R5 [+21]
  GETTABLEKS R7 R1 K5 ["render"]
  FASTCALL1 TYPEOF R7 [+2]
  GETIMPORT R6 K7 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K8 ["function"] [+8]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["error"]
  LOADK R7 K10 ["%s(...): No `render` method found on the returned component instance: did you accidentally return an object from the constructor?"]
  MOVE R8 R4
  CALL R6 2 0
  JUMP [+6]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["error"]
  LOADK R7 K11 ["%s(...): No `render` method found on the returned component instance: you may have forgotten to define `render`."]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R6 R3 K12 ["getInitialState"]
  JUMPIFNOT R6 [+14]
  GETTABLEKS R7 R3 K12 ["getInitialState"]
  GETTABLEKS R6 R7 K13 ["isReactClassApproved"]
  JUMPIF R6 [+9]
  GETTABLEKS R6 R3 K14 ["state"]
  JUMPIF R6 [+6]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["error"]
  LOADK R7 K15 ["getInitialState was defined on %s, a plain JavaScript class. This is only supported for classes created using React.createClass. Did you mean to define a state property instead?"]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R6 R3 K16 ["getDefaultProps"]
  JUMPIFNOT R6 [+11]
  GETTABLEKS R7 R3 K16 ["getDefaultProps"]
  GETTABLEKS R6 R7 K13 ["isReactClassApproved"]
  JUMPIF R6 [+6]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["error"]
  LOADK R7 K17 ["getDefaultProps was defined on %s, a plain JavaScript class. This is only supported for classes created using React.createClass. Use a static property to define defaultProps instead."]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R6 R3 K18 ["propTypes"]
  JUMPIFNOT R6 [+9]
  GETTABLEKS R6 R1 K18 ["propTypes"]
  JUMPIF R6 [+6]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["error"]
  LOADK R7 K19 ["propTypes was defined as an instance property on %s. Use a static property to define propTypes instead."]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R6 R3 K20 ["contextType"]
  JUMPIFNOT R6 [+9]
  GETTABLEKS R6 R1 K20 ["contextType"]
  JUMPIF R6 [+6]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["error"]
  LOADK R7 K21 ["contextType was defined as an instance property on %s. Use a static property to define contextType instead."]
  MOVE R8 R4
  CALL R6 2 0
  GETUPVAL R6 2
  JUMPIFNOT R6 [+19]
  GETTABLEKS R6 R1 K22 ["childContextTypes"]
  JUMPIFNOT R6 [+6]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["error"]
  LOADK R7 K23 ["%s uses the legacy childContextTypes API which is no longer supported. Use React.createContext() instead."]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R6 R1 K24 ["contextTypes"]
  JUMPIFNOT R6 [+44]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["error"]
  LOADK R7 K25 ["%s uses the legacy contextTypes API which is no longer supported. Use React.createContext() with static contextType instead."]
  MOVE R8 R4
  CALL R6 2 0
  JUMP [+37]
  GETTABLEKS R6 R3 K24 ["contextTypes"]
  JUMPIFNOT R6 [+9]
  GETTABLEKS R6 R1 K24 ["contextTypes"]
  JUMPIF R6 [+6]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["error"]
  LOADK R7 K26 ["contextTypes was defined as an instance property on %s. Use a static property to define contextTypes instead."]
  MOVE R8 R4
  CALL R6 2 0
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K7 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K27 ["table"] [+19]
  GETTABLEKS R6 R1 K20 ["contextType"]
  JUMPIFNOT R6 [+15]
  GETTABLEKS R6 R1 K24 ["contextTypes"]
  JUMPIFNOT R6 [+12]
  GETUPVAL R7 3
  GETTABLE R6 R7 R1
  JUMPIF R6 [+9]
  GETUPVAL R6 3
  LOADB R7 1
  SETTABLE R7 R6 R1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["error"]
  LOADK R7 K28 ["%s declares both contextTypes and contextType static properties. The legacy contextTypes property will be ignored."]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R7 R3 K29 ["componentShouldUpdate"]
  FASTCALL1 TYPEOF R7 [+2]
  GETIMPORT R6 K7 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K8 ["function"] [+7]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["error"]
  LOADK R7 K30 ["%s has a method called componentShouldUpdate(). Did you mean shouldComponentUpdate()? The name is phrased as a question because the function is expected to return a value."]
  MOVE R8 R4
  CALL R6 2 0
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K7 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K27 ["table"] [+17]
  GETTABLEKS R6 R1 K31 ["isPureReactComponent"]
  JUMPIFNOT R6 [+13]
  GETTABLEKS R6 R3 K32 ["shouldComponentUpdate"]
  JUMPIFEQKNIL R6 [+10]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["error"]
  LOADK R7 K33 ["%s has a method called shouldComponentUpdate(). shouldComponentUpdate should not be used when extending React.PureComponent. Please extend React.Component if shouldComponentUpdate is used."]
  GETUPVAL R9 0
  MOVE R10 R1
  CALL R9 1 1
  ORK R8 R9 K34 ["A pure component"]
  CALL R6 2 0
  GETTABLEKS R7 R3 K35 ["componentDidUnmount"]
  FASTCALL1 TYPEOF R7 [+2]
  GETIMPORT R6 K7 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K8 ["function"] [+7]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["error"]
  LOADK R7 K36 ["%s has a method called componentDidUnmount(). But there is no such lifecycle method. Did you mean componentWillUnmount()?"]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R7 R3 K37 ["componentDidReceiveProps"]
  FASTCALL1 TYPEOF R7 [+2]
  GETIMPORT R6 K7 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K8 ["function"] [+7]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["error"]
  LOADK R7 K38 ["%s has a method called componentDidReceiveProps(). But there is no such lifecycle method. If you meant to update the state in response to changing props, use componentWillReceiveProps(). If you meant to fetch data or run side-effects or mutations after React has updated the UI, use componentDidUpdate()."]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R7 R3 K39 ["componentWillRecieveProps"]
  FASTCALL1 TYPEOF R7 [+2]
  GETIMPORT R6 K7 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K8 ["function"] [+7]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["error"]
  LOADK R7 K40 ["%s has a method called componentWillRecieveProps(). Did you mean componentWillReceiveProps()?"]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R7 R3 K41 ["UNSAFE_componentWillRecieveProps"]
  FASTCALL1 TYPEOF R7 [+2]
  GETIMPORT R6 K7 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K8 ["function"] [+7]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["error"]
  LOADK R7 K42 ["%s has a method called UNSAFE_componentWillRecieveProps(). Did you mean UNSAFE_componentWillReceiveProps()?"]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R7 R3 K43 ["props"]
  JUMPIFNOTEQ R7 R2 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  GETTABLEKS R7 R3 K43 ["props"]
  JUMPIFEQKNIL R7 [+9]
  JUMPIFNOT R6 [+7]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["error"]
  LOADK R8 K44 ["%s(...): When calling super() in `%s`, make sure to pass up the same props that your component's constructor was passed."]
  MOVE R9 R4
  MOVE R10 R4
  CALL R7 3 0
  FASTCALL2K RAWGET R3 K45 [+5]
  MOVE R8 R3
  LOADK R9 K45 ["defaultProps"]
  GETIMPORT R7 K47 [rawget]
  CALL R7 2 1
  JUMPIFNOT R7 [+7]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["error"]
  LOADK R8 K48 ["Setting defaultProps as an instance property on %s is not supported and will be ignored. Instead, define defaultProps as a static property on %s."]
  MOVE R9 R4
  MOVE R10 R4
  CALL R7 3 0
  GETTABLEKS R8 R3 K49 ["getSnapshotBeforeUpdate"]
  FASTCALL1 TYPEOF R8 [+2]
  GETIMPORT R7 K7 [typeof]
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K8 ["function"] [+23]
  GETTABLEKS R8 R3 K50 ["componentDidUpdate"]
  FASTCALL1 TYPEOF R8 [+2]
  GETIMPORT R7 K7 [typeof]
  CALL R7 1 1
  JUMPIFEQKS R7 K8 ["function"] [+15]
  GETUPVAL R8 4
  GETTABLE R7 R8 R1
  JUMPIF R7 [+11]
  GETUPVAL R7 4
  LOADB R8 1
  SETTABLE R8 R7 R1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K9 ["error"]
  LOADK R8 K51 ["%s: getSnapshotBeforeUpdate() should be used with componentDidUpdate(). This component defines getSnapshotBeforeUpdate() only."]
  GETUPVAL R9 0
  MOVE R10 R1
  CALL R9 1 -1
  CALL R7 -1 0
  GETTABLEKS R7 R3 K14 ["state"]
  JUMPIFEQKNIL R7 [+14]
  FASTCALL1 TYPEOF R7 [+3]
  MOVE R9 R7
  GETIMPORT R8 K7 [typeof]
  CALL R8 1 1
  JUMPIFEQKS R8 K27 ["table"] [+7]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["error"]
  LOADK R9 K52 ["%s.state: must be set to an object or nil"]
  MOVE R10 R4
  CALL R8 2 0
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R9 R1
  GETIMPORT R8 K7 [typeof]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K27 ["table"] [+23]
  GETTABLEKS R9 R3 K53 ["getChildContext"]
  FASTCALL1 TYPEOF R9 [+2]
  GETIMPORT R8 K7 [typeof]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K8 ["function"] [+15]
  GETTABLEKS R9 R1 K22 ["childContextTypes"]
  FASTCALL1 TYPEOF R9 [+2]
  GETIMPORT R8 K7 [typeof]
  CALL R8 1 1
  JUMPIFEQKS R8 K27 ["table"] [+7]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K9 ["error"]
  LOADK R9 K54 ["%s.getChildContext(): childContextTypes must be defined in order to use getChildContext()."]
  MOVE R10 R4
  CALL R8 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R3 0
  JUMPIFNOTEQKNIL R3 [+3]
  GETUPVAL R3 1
  CALL R3 0 0
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K0 ["__updater"]
  SETTABLEKS R1 R0 K1 ["stateNode"]
  GETUPVAL R2 2
  MOVE R3 R1
  MOVE R4 R0
  CALL R2 2 0
  GETIMPORT R3 K3 [_G]
  GETTABLEKS R2 R3 K4 ["__DEV__"]
  JUMPIFNOT R2 [+3]
  GETUPVAL R2 3
  SETTABLEKS R2 R1 K5 ["_reactInternalInstance"]
  RETURN R0 0

PROTO_11:
  LOADB R3 0
  GETUPVAL R4 0
  GETUPVAL R5 0
  GETTABLEKS R6 R1 K0 ["contextType"]
  GETIMPORT R8 K2 [_G]
  GETTABLEKS R7 R8 K3 ["__DEV__"]
  JUMPIFNOT R7 [+88]
  GETTABLEKS R7 R1 K0 ["contextType"]
  JUMPIFEQKNIL R7 [+85]
  LOADB R7 1
  JUMPIFEQKNIL R6 [+13]
  LOADB R7 0
  GETTABLEKS R8 R6 K4 ["$$typeof"]
  GETUPVAL R9 1
  JUMPIFNOTEQ R8 R9 [+7]
  GETTABLEKS R8 R6 K5 ["_context"]
  JUMPIFEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  JUMPIF R7 [+68]
  GETUPVAL R9 2
  GETTABLE R8 R9 R1
  JUMPIF R8 [+65]
  GETUPVAL R8 2
  LOADB R9 1
  SETTABLE R9 R8 R1
  LOADK R8 K6 [""]
  JUMPIFNOTEQKNIL R6 [+3]
  LOADK R8 K7 [" However, it is set to nil. This can be caused by a typo or by mixing up named and default imports. This can also happen due to a circular dependency, so try moving the createContext() call to a separate file."]
  JUMP [+47]
  FASTCALL1 TYPEOF R6 [+3]
  MOVE R10 R6
  GETIMPORT R9 K9 [typeof]
  CALL R9 1 1
  JUMPIFEQKS R9 K10 ["table"] [+11]
  LOADK R9 K11 [" However, it is set to a "]
  FASTCALL1 TYPEOF R6 [+3]
  MOVE R13 R6
  GETIMPORT R12 K9 [typeof]
  CALL R12 1 1
  MOVE R10 R12
  LOADK R11 K12 ["."]
  CONCAT R8 R9 R11
  JUMP [+30]
  GETTABLEKS R9 R6 K4 ["$$typeof"]
  GETUPVAL R10 3
  JUMPIFNOTEQ R9 R10 [+3]
  LOADK R8 K13 [" Did you accidentally pass the Context.Provider instead?"]
  JUMP [+23]
  GETTABLEKS R9 R6 K5 ["_context"]
  JUMPIFEQKNIL R9 [+3]
  LOADK R8 K14 [" Did you accidentally pass the Context.Consumer instead?"]
  JUMP [+17]
  MOVE R9 R8
  LOADK R10 K15 [" However, it is set to an object with keys {"]
  CONCAT R8 R9 R10
  GETIMPORT R9 K17 [pairs]
  MOVE R10 R6
  CALL R9 1 3
  FORGPREP_NEXT R9
  MOVE R14 R8
  MOVE R15 R12
  LOADK R16 K18 [", "]
  CONCAT R8 R14 R16
  FORGLOOP R9 2 [-5]
  MOVE R9 R8
  LOADK R10 K19 ["}."]
  CONCAT R8 R9 R10
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K20 ["error"]
  LOADK R10 K21 ["%s defines an invalid contextType. contextType should point to the Context object returned by React.createContext().%s"]
  GETUPVAL R12 5
  MOVE R13 R1
  CALL R12 1 1
  ORK R11 R12 K22 ["Component"]
  MOVE R12 R8
  CALL R9 3 0
  JUMPIFEQKNIL R6 [+13]
  FASTCALL1 TYPEOF R6 [+3]
  MOVE R8 R6
  GETIMPORT R7 K9 [typeof]
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K10 ["table"] [+6]
  GETUPVAL R7 6
  MOVE R8 R6
  CALL R7 1 1
  MOVE R5 R7
  JUMP [+22]
  GETUPVAL R7 7
  JUMPIF R7 [+20]
  GETUPVAL R7 8
  MOVE R8 R0
  MOVE R9 R1
  LOADB R10 1
  CALL R7 3 1
  MOVE R4 R7
  GETTABLEKS R7 R1 K23 ["contextTypes"]
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+5]
  GETUPVAL R8 9
  MOVE R9 R0
  MOVE R10 R4
  CALL R8 2 1
  JUMPIF R8 [+1]
  GETUPVAL R8 0
  MOVE R5 R8
  GETIMPORT R8 K2 [_G]
  GETTABLEKS R7 R8 K3 ["__DEV__"]
  JUMPIFNOT R7 [+28]
  GETUPVAL R7 10
  JUMPIFNOT R7 [+26]
  GETTABLEKS R8 R0 K24 ["mode"]
  GETUPVAL R9 11
  FASTCALL2 BIT32_BAND R8 R9 [+3]
  GETIMPORT R7 K27 [bit32.band]
  CALL R7 2 1
  JUMPIFEQKN R7 K28 [0] [+17]
  GETUPVAL R7 12
  CALL R7 0 0
  GETIMPORT R7 K30 [pcall]
  GETTABLEKS R8 R1 K31 ["__ctor"]
  MOVE R9 R2
  MOVE R10 R5
  CALL R7 3 2
  GETUPVAL R9 13
  CALL R9 0 0
  JUMPIF R7 [+4]
  GETIMPORT R9 K32 [error]
  MOVE R10 R8
  CALL R9 1 0
  GETTABLEKS R7 R1 K31 ["__ctor"]
  MOVE R8 R2
  MOVE R9 R5
  CALL R7 2 1
  GETTABLEKS R8 R7 K33 ["state"]
  SETTABLEKS R8 R0 K34 ["memoizedState"]
  GETTABLEKS R8 R0 K34 ["memoizedState"]
  GETUPVAL R10 14
  JUMPIFNOTEQKNIL R10 [+3]
  GETUPVAL R10 15
  CALL R10 0 0
  GETUPVAL R9 14
  SETTABLEKS R9 R7 K35 ["__updater"]
  SETTABLEKS R7 R0 K36 ["stateNode"]
  GETUPVAL R9 16
  MOVE R10 R7
  MOVE R11 R0
  CALL R9 2 0
  GETIMPORT R10 K2 [_G]
  GETTABLEKS R9 R10 K3 ["__DEV__"]
  JUMPIFNOT R9 [+3]
  GETUPVAL R9 17
  SETTABLEKS R9 R7 K37 ["_reactInternalInstance"]
  GETIMPORT R10 K2 [_G]
  GETTABLEKS R9 R10 K3 ["__DEV__"]
  JUMPIFNOT R9 [+178]
  GETTABLEKS R10 R1 K38 ["getDerivedStateFromProps"]
  FASTCALL1 TYPEOF R10 [+2]
  GETIMPORT R9 K9 [typeof]
  CALL R9 1 1
  JUMPIFNOTEQKS R9 K39 ["function"] [+21]
  GETUPVAL R9 18
  JUMPIFNOTEQ R8 R9 [+18]
  GETUPVAL R10 5
  MOVE R11 R1
  CALL R10 1 1
  ORK R9 R10 K22 ["Component"]
  GETUPVAL R11 19
  GETTABLE R10 R11 R9
  JUMPIF R10 [+10]
  GETUPVAL R10 19
  LOADB R11 1
  SETTABLE R11 R10 R9
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K20 ["error"]
  LOADK R11 K40 ["`%s` uses `getDerivedStateFromProps` but its initial state has not been initialized. This is not recommended. Instead, define the initial state by passing an object to `self:setState` in the `init` method of `%s`. This ensures that `getDerivedStateFromProps` arguments have a consistent shape."]
  MOVE R12 R9
  MOVE R13 R9
  CALL R10 3 0
  GETTABLEKS R10 R1 K38 ["getDerivedStateFromProps"]
  FASTCALL1 TYPEOF R10 [+2]
  GETIMPORT R9 K9 [typeof]
  CALL R9 1 1
  JUMPIFEQKS R9 K39 ["function"] [+9]
  GETTABLEKS R10 R7 K41 ["getSnapshotBeforeUpdate"]
  FASTCALL1 TYPEOF R10 [+2]
  GETIMPORT R9 K9 [typeof]
  CALL R9 1 1
  JUMPIFNOTEQKS R9 K39 ["function"] [+135]
  LOADNIL R9
  LOADNIL R10
  LOADNIL R11
  GETTABLEKS R13 R7 K42 ["componentWillMount"]
  FASTCALL1 TYPEOF R13 [+2]
  GETIMPORT R12 K9 [typeof]
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K39 ["function"] [+3]
  LOADK R9 K42 ["componentWillMount"]
  JUMP [+9]
  GETTABLEKS R13 R7 K43 ["UNSAFE_componentWillMount"]
  FASTCALL1 TYPEOF R13 [+2]
  GETIMPORT R12 K9 [typeof]
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K39 ["function"] [+2]
  LOADK R9 K43 ["UNSAFE_componentWillMount"]
  GETTABLEKS R13 R7 K44 ["componentWillReceiveProps"]
  FASTCALL1 TYPEOF R13 [+2]
  GETIMPORT R12 K9 [typeof]
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K39 ["function"] [+3]
  LOADK R10 K44 ["componentWillReceiveProps"]
  JUMP [+9]
  GETTABLEKS R13 R7 K45 ["UNSAFE_componentWillReceiveProps"]
  FASTCALL1 TYPEOF R13 [+2]
  GETIMPORT R12 K9 [typeof]
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K39 ["function"] [+2]
  LOADK R10 K45 ["UNSAFE_componentWillReceiveProps"]
  GETTABLEKS R13 R7 K46 ["componentWillUpdate"]
  FASTCALL1 TYPEOF R13 [+2]
  GETIMPORT R12 K9 [typeof]
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K39 ["function"] [+3]
  LOADK R11 K46 ["componentWillUpdate"]
  JUMP [+9]
  GETTABLEKS R13 R7 K47 ["UNSAFE_componentWillUpdate"]
  FASTCALL1 TYPEOF R13 [+2]
  GETIMPORT R12 K9 [typeof]
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K39 ["function"] [+2]
  LOADK R11 K47 ["UNSAFE_componentWillUpdate"]
  JUMPIFNOTEQKNIL R9 [+5]
  JUMPIFNOTEQKNIL R10 [+3]
  JUMPIFEQKNIL R11 [+69]
  GETUPVAL R13 5
  MOVE R14 R1
  CALL R13 1 1
  ORK R12 R13 K22 ["Component"]
  LOADNIL R13
  GETTABLEKS R15 R1 K38 ["getDerivedStateFromProps"]
  FASTCALL1 TYPEOF R15 [+2]
  GETIMPORT R14 K9 [typeof]
  CALL R14 1 1
  JUMPIFNOTEQKS R14 K39 ["function"] [+3]
  LOADK R13 K48 ["getDerivedStateFromProps()"]
  JUMP [+1]
  LOADK R13 K49 ["getSnapshotBeforeUpdate()"]
  LOADNIL R14
  JUMPIFEQKNIL R9 [+9]
  LOADK R15 K50 ["
  "]
  FASTCALL1 TOSTRING R9 [+3]
  MOVE R17 R9
  GETIMPORT R16 K52 [tostring]
  CALL R16 1 1
  CONCAT R14 R15 R16
  JUMP [+1]
  LOADK R14 K6 [""]
  LOADNIL R15
  JUMPIFEQKNIL R10 [+9]
  LOADK R16 K50 ["
  "]
  FASTCALL1 TOSTRING R10 [+3]
  MOVE R18 R10
  GETIMPORT R17 K52 [tostring]
  CALL R17 1 1
  CONCAT R15 R16 R17
  JUMP [+1]
  LOADK R15 K6 [""]
  LOADNIL R16
  JUMPIFEQKNIL R11 [+9]
  LOADK R17 K50 ["
  "]
  FASTCALL1 TOSTRING R11 [+3]
  MOVE R19 R11
  GETIMPORT R18 K52 [tostring]
  CALL R18 1 1
  CONCAT R16 R17 R18
  JUMP [+1]
  LOADK R16 K6 [""]
  GETUPVAL R18 20
  GETTABLE R17 R18 R12
  JUMPIF R17 [+13]
  GETUPVAL R17 20
  LOADB R18 1
  SETTABLE R18 R17 R12
  GETUPVAL R18 4
  GETTABLEKS R17 R18 K20 ["error"]
  LOADK R18 K53 ["Unsafe legacy lifecycles will not be called for components using new component APIs.

%s uses %s but also contains the following legacy lifecycles:%s%s%s

The above lifecycles should be removed. Learn more about this warning here:
https://reactjs.org/link/unsafe-component-lifecycles"]
  MOVE R19 R12
  MOVE R20 R13
  MOVE R21 R14
  MOVE R22 R15
  MOVE R23 R16
  CALL R17 6 0
  JUMPIFNOT R3 [+5]
  GETUPVAL R9 21
  MOVE R10 R0
  MOVE R11 R4
  MOVE R12 R5
  CALL R9 3 0
  RETURN R7 1

PROTO_12:
  GETTABLEKS R2 R1 K0 ["state"]
  GETTABLEKS R4 R1 K1 ["componentWillMount"]
  FASTCALL1 TYPEOF R4 [+2]
  GETIMPORT R3 K3 [typeof]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K4 ["function"] [+4]
  NAMECALL R3 R1 K1 ["componentWillMount"]
  CALL R3 1 0
  GETTABLEKS R4 R1 K5 ["UNSAFE_componentWillMount"]
  FASTCALL1 TYPEOF R4 [+2]
  GETIMPORT R3 K3 [typeof]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K4 ["function"] [+4]
  NAMECALL R3 R1 K5 ["UNSAFE_componentWillMount"]
  CALL R3 1 0
  GETTABLEKS R3 R1 K0 ["state"]
  JUMPIFEQ R2 R3 [+29]
  GETIMPORT R4 K7 [_G]
  GETTABLEKS R3 R4 K8 ["__DEV__"]
  JUMPIFNOT R3 [+10]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K9 ["error"]
  LOADK R4 K10 ["%s.componentWillMount(): Assigning directly to this.state is deprecated (except inside a component's constructor). Use setState instead."]
  GETUPVAL R6 1
  GETTABLEKS R7 R0 K12 ["type"]
  CALL R6 1 1
  ORK R5 R6 K11 ["Component"]
  CALL R3 2 0
  GETUPVAL R5 2
  JUMPIFNOTEQKNIL R5 [+3]
  GETUPVAL R5 3
  CALL R5 0 0
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K13 ["enqueueReplaceState"]
  MOVE R4 R1
  GETTABLEKS R5 R1 K0 ["state"]
  LOADNIL R6
  CALL R3 3 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R4 R1 K0 ["state"]
  GETTABLEKS R6 R1 K1 ["componentWillReceiveProps"]
  FASTCALL1 TYPEOF R6 [+2]
  GETIMPORT R5 K3 [typeof]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K4 ["function"] [+6]
  MOVE R7 R2
  MOVE R8 R3
  NAMECALL R5 R1 K1 ["componentWillReceiveProps"]
  CALL R5 3 0
  GETTABLEKS R6 R1 K5 ["UNSAFE_componentWillReceiveProps"]
  FASTCALL1 TYPEOF R6 [+2]
  GETIMPORT R5 K3 [typeof]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K4 ["function"] [+6]
  MOVE R7 R2
  MOVE R8 R3
  NAMECALL R5 R1 K5 ["UNSAFE_componentWillReceiveProps"]
  CALL R5 3 0
  GETTABLEKS R5 R1 K0 ["state"]
  JUMPIFEQ R5 R4 [+36]
  GETIMPORT R6 K7 [_G]
  GETTABLEKS R5 R6 K8 ["__DEV__"]
  JUMPIFNOT R5 [+17]
  GETUPVAL R6 0
  GETTABLEKS R7 R0 K10 ["type"]
  CALL R6 1 1
  ORK R5 R6 K9 ["Component"]
  GETUPVAL R7 1
  GETTABLE R6 R7 R5
  JUMPIF R6 [+9]
  GETUPVAL R6 1
  LOADB R7 1
  SETTABLE R7 R6 R5
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K11 ["error"]
  LOADK R7 K12 ["%s.componentWillReceiveProps(): Assigning directly to this.state is deprecated (except inside a component's constructor). Use setState instead."]
  MOVE R8 R5
  CALL R6 2 0
  GETUPVAL R7 3
  JUMPIFNOTEQKNIL R7 [+3]
  GETUPVAL R7 4
  CALL R7 0 0
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K13 ["enqueueReplaceState"]
  MOVE R6 R1
  GETTABLEKS R7 R1 K0 ["state"]
  LOADNIL R8
  CALL R5 3 0
  RETURN R0 0

PROTO_14:
  GETIMPORT R5 K1 [_G]
  GETTABLEKS R4 R5 K2 ["__DEV__"]
  JUMPIFNOT R4 [+5]
  GETUPVAL R4 0
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 0
  GETTABLEKS R4 R0 K3 ["stateNode"]
  SETTABLEKS R2 R4 K4 ["props"]
  GETTABLEKS R5 R0 K5 ["memoizedState"]
  SETTABLEKS R5 R4 K6 ["state"]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K7 ["__refs"]
  GETUPVAL R5 2
  MOVE R6 R0
  CALL R5 1 0
  LOADNIL R5
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K9 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K10 ["table"] [+3]
  GETTABLEKS R5 R1 K11 ["contextType"]
  JUMPIFEQKNIL R5 [+14]
  FASTCALL1 TYPEOF R5 [+3]
  MOVE R7 R5
  GETIMPORT R6 K9 [typeof]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K10 ["table"] [+7]
  GETUPVAL R6 3
  MOVE R7 R5
  CALL R6 1 1
  SETTABLEKS R6 R4 K12 ["context"]
  JUMP [+17]
  GETUPVAL R6 4
  JUMPIFNOT R6 [+4]
  GETUPVAL R6 5
  SETTABLEKS R6 R4 K12 ["context"]
  JUMP [+11]
  GETUPVAL R6 6
  MOVE R7 R0
  MOVE R8 R1
  LOADB R9 1
  CALL R6 3 1
  GETUPVAL R7 7
  MOVE R8 R0
  MOVE R9 R6
  CALL R7 2 1
  SETTABLEKS R7 R4 K12 ["context"]
  GETIMPORT R7 K1 [_G]
  GETTABLEKS R6 R7 K2 ["__DEV__"]
  JUMPIFNOT R6 [+44]
  GETTABLEKS R6 R4 K6 ["state"]
  JUMPIFNOTEQ R6 R2 [+17]
  GETUPVAL R7 8
  MOVE R8 R1
  CALL R7 1 1
  ORK R6 R7 K13 ["Component"]
  GETUPVAL R8 9
  GETTABLE R7 R8 R6
  JUMPIF R7 [+9]
  GETUPVAL R7 9
  LOADB R8 1
  SETTABLE R8 R7 R6
  GETUPVAL R8 10
  GETTABLEKS R7 R8 K14 ["error"]
  LOADK R8 K15 ["%s: It is not recommended to assign props directly to state because updates to props won't be reflected in state. In most cases, it is better to use props directly."]
  MOVE R9 R6
  CALL R7 2 0
  GETTABLEKS R7 R0 K16 ["mode"]
  GETUPVAL R8 11
  FASTCALL2 BIT32_BAND R7 R8 [+3]
  GETIMPORT R6 K19 [bit32.band]
  CALL R6 2 1
  JUMPIFEQKN R6 K20 [0] [+7]
  GETUPVAL R7 12
  GETTABLEKS R6 R7 K21 ["recordLegacyContextWarning"]
  MOVE R7 R0
  MOVE R8 R4
  CALL R6 2 0
  GETUPVAL R6 13
  JUMPIFNOT R6 [+6]
  GETUPVAL R7 12
  GETTABLEKS R6 R7 K22 ["recordUnsafeLifecycleWarnings"]
  MOVE R7 R0
  MOVE R8 R4
  CALL R6 2 0
  GETUPVAL R6 14
  MOVE R7 R0
  MOVE R8 R2
  MOVE R9 R4
  MOVE R10 R3
  CALL R6 4 0
  GETTABLEKS R6 R0 K5 ["memoizedState"]
  SETTABLEKS R6 R4 K6 ["state"]
  LOADNIL R6
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R8 R1
  GETIMPORT R7 K9 [typeof]
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K10 ["table"] [+3]
  GETTABLEKS R6 R1 K23 ["getDerivedStateFromProps"]
  FASTCALL1 TYPEOF R6 [+3]
  MOVE R8 R6
  GETIMPORT R7 K9 [typeof]
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K24 ["function"] [+11]
  GETUPVAL R7 15
  MOVE R8 R0
  MOVE R9 R1
  MOVE R10 R6
  MOVE R11 R2
  CALL R7 4 0
  GETTABLEKS R7 R0 K5 ["memoizedState"]
  SETTABLEKS R7 R4 K6 ["state"]
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R8 R1
  GETIMPORT R7 K9 [typeof]
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K10 ["table"] [+47]
  GETTABLEKS R8 R1 K23 ["getDerivedStateFromProps"]
  FASTCALL1 TYPEOF R8 [+2]
  GETIMPORT R7 K9 [typeof]
  CALL R7 1 1
  JUMPIFEQKS R7 K24 ["function"] [+39]
  GETTABLEKS R8 R4 K25 ["getSnapshotBeforeUpdate"]
  FASTCALL1 TYPEOF R8 [+2]
  GETIMPORT R7 K9 [typeof]
  CALL R7 1 1
  JUMPIFEQKS R7 K24 ["function"] [+31]
  GETTABLEKS R8 R4 K26 ["UNSAFE_componentWillMount"]
  FASTCALL1 TYPEOF R8 [+2]
  GETIMPORT R7 K9 [typeof]
  CALL R7 1 1
  JUMPIFEQKS R7 K24 ["function"] [+9]
  GETTABLEKS R8 R4 K27 ["componentWillMount"]
  FASTCALL1 TYPEOF R8 [+2]
  GETIMPORT R7 K9 [typeof]
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K24 ["function"] [+15]
  GETUPVAL R7 16
  MOVE R8 R0
  MOVE R9 R4
  CALL R7 2 0
  GETUPVAL R7 14
  MOVE R8 R0
  MOVE R9 R2
  MOVE R10 R4
  MOVE R11 R3
  CALL R7 4 0
  GETTABLEKS R7 R0 K5 ["memoizedState"]
  SETTABLEKS R7 R4 K6 ["state"]
  GETTABLEKS R8 R4 K28 ["componentDidMount"]
  FASTCALL1 TYPEOF R8 [+2]
  GETIMPORT R7 K9 [typeof]
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K24 ["function"] [+35]
  GETIMPORT R8 K1 [_G]
  GETTABLEKS R7 R8 K2 ["__DEV__"]
  JUMPIFNOT R7 [+19]
  GETUPVAL R7 17
  JUMPIFNOT R7 [+17]
  GETTABLEKS R8 R0 K29 ["flags"]
  GETUPVAL R10 18
  GETUPVAL R11 19
  FASTCALL2 BIT32_BOR R10 R11 [+3]
  GETIMPORT R9 K31 [bit32.bor]
  CALL R9 2 1
  FASTCALL2 BIT32_BOR R8 R9 [+3]
  GETIMPORT R7 K31 [bit32.bor]
  CALL R7 2 1
  SETTABLEKS R7 R0 K29 ["flags"]
  RETURN R0 0
  GETTABLEKS R8 R0 K29 ["flags"]
  GETUPVAL R9 19
  FASTCALL2 BIT32_BOR R8 R9 [+3]
  GETIMPORT R7 K31 [bit32.bor]
  CALL R7 2 1
  SETTABLEKS R7 R0 K29 ["flags"]
  RETURN R0 0

PROTO_15:
  GETTABLEKS R4 R0 K0 ["stateNode"]
  GETTABLEKS R5 R0 K1 ["memoizedProps"]
  SETTABLEKS R5 R4 K2 ["props"]
  GETTABLEKS R6 R4 K3 ["context"]
  GETTABLEKS R7 R1 K4 ["contextType"]
  GETUPVAL R8 0
  JUMPIFEQKNIL R7 [+13]
  FASTCALL1 TYPEOF R7 [+3]
  MOVE R10 R7
  GETIMPORT R9 K6 [typeof]
  CALL R9 1 1
  JUMPIFNOTEQKS R9 K7 ["table"] [+6]
  GETUPVAL R9 1
  MOVE R10 R7
  CALL R9 1 1
  MOVE R8 R9
  JUMP [+12]
  GETUPVAL R9 2
  JUMPIF R9 [+10]
  GETUPVAL R9 3
  MOVE R10 R0
  MOVE R11 R1
  LOADB R12 1
  CALL R9 3 1
  GETUPVAL R10 4
  MOVE R11 R0
  MOVE R12 R9
  CALL R10 2 1
  MOVE R8 R10
  GETTABLEKS R9 R1 K8 ["getDerivedStateFromProps"]
  LOADB R10 1
  FASTCALL1 TYPEOF R9 [+3]
  MOVE R12 R9
  GETIMPORT R11 K6 [typeof]
  CALL R11 1 1
  JUMPIFEQKS R11 K9 ["function"] [+11]
  GETTABLEKS R12 R4 K10 ["getSnapshotBeforeUpdate"]
  FASTCALL1 TYPEOF R12 [+2]
  GETIMPORT R11 K6 [typeof]
  CALL R11 1 1
  JUMPIFEQKS R11 K9 ["function"] [+2]
  LOADB R10 0 +1
  LOADB R10 1
  JUMPIF R10 [+27]
  GETTABLEKS R12 R4 K11 ["UNSAFE_componentWillReceiveProps"]
  FASTCALL1 TYPEOF R12 [+2]
  GETIMPORT R11 K6 [typeof]
  CALL R11 1 1
  JUMPIFEQKS R11 K9 ["function"] [+9]
  GETTABLEKS R12 R4 K12 ["componentWillReceiveProps"]
  FASTCALL1 TYPEOF R12 [+2]
  GETIMPORT R11 K6 [typeof]
  CALL R11 1 1
  JUMPIFNOTEQKS R11 K9 ["function"] [+12]
  JUMPIFNOTEQ R5 R2 [+3]
  JUMPIFEQ R6 R8 [+8]
  GETGLOBAL R11 K13 ["callComponentWillReceiveProps"]
  MOVE R12 R0
  MOVE R13 R4
  MOVE R14 R2
  MOVE R15 R8
  CALL R11 4 0
  GETUPVAL R11 5
  CALL R11 0 0
  GETTABLEKS R11 R0 K14 ["memoizedState"]
  SETTABLEKS R11 R4 K15 ["state"]
  MOVE R12 R11
  GETUPVAL R13 6
  MOVE R14 R0
  MOVE R15 R2
  MOVE R16 R4
  MOVE R17 R3
  CALL R13 4 0
  GETTABLEKS R12 R0 K14 ["memoizedState"]
  JUMPIFNOTEQ R5 R2 [+47]
  JUMPIFNOTEQ R11 R12 [+45]
  GETUPVAL R13 7
  CALL R13 0 1
  JUMPIF R13 [+41]
  GETUPVAL R13 8
  CALL R13 0 1
  JUMPIF R13 [+38]
  GETTABLEKS R14 R4 K16 ["componentDidMount"]
  FASTCALL1 TYPEOF R14 [+2]
  GETIMPORT R13 K6 [typeof]
  CALL R13 1 1
  JUMPIFNOTEQKS R13 K9 ["function"] [+29]
  GETIMPORT R14 K18 [_G]
  GETTABLEKS R13 R14 K19 ["__DEV__"]
  JUMPIFNOT R13 [+13]
  GETUPVAL R13 9
  JUMPIFNOT R13 [+11]
  GETTABLEKS R14 R0 K20 ["flags"]
  GETUPVAL R15 10
  GETUPVAL R16 11
  FASTCALL BIT32_BOR [+2]
  GETIMPORT R13 K23 [bit32.bor]
  CALL R13 3 1
  SETTABLEKS R13 R0 K20 ["flags"]
  JUMP [+10]
  GETTABLEKS R14 R0 K20 ["flags"]
  GETUPVAL R15 11
  FASTCALL2 BIT32_BOR R14 R15 [+3]
  GETIMPORT R13 K23 [bit32.bor]
  CALL R13 2 1
  SETTABLEKS R13 R0 K20 ["flags"]
  LOADB R13 0
  RETURN R13 1
  FASTCALL1 TYPEOF R9 [+3]
  MOVE R14 R9
  GETIMPORT R13 K6 [typeof]
  CALL R13 1 1
  JUMPIFNOTEQKS R13 K9 ["function"] [+9]
  GETUPVAL R13 12
  MOVE R14 R0
  MOVE R15 R1
  MOVE R16 R9
  MOVE R17 R2
  CALL R13 4 0
  GETTABLEKS R12 R0 K14 ["memoizedState"]
  GETUPVAL R13 8
  CALL R13 0 1
  JUMPIF R13 [+10]
  GETGLOBAL R13 K24 ["checkShouldComponentUpdate"]
  MOVE R14 R0
  MOVE R15 R1
  MOVE R16 R5
  MOVE R17 R2
  MOVE R18 R11
  MOVE R19 R12
  MOVE R20 R8
  CALL R13 7 1
  JUMPIFNOT R13 [+76]
  JUMPIF R10 [+38]
  GETTABLEKS R15 R4 K25 ["UNSAFE_componentWillMount"]
  FASTCALL1 TYPEOF R15 [+2]
  GETIMPORT R14 K6 [typeof]
  CALL R14 1 1
  JUMPIFEQKS R14 K9 ["function"] [+9]
  GETTABLEKS R15 R4 K26 ["componentWillMount"]
  FASTCALL1 TYPEOF R15 [+2]
  GETIMPORT R14 K6 [typeof]
  CALL R14 1 1
  JUMPIFNOTEQKS R14 K9 ["function"] [+23]
  GETTABLEKS R15 R4 K26 ["componentWillMount"]
  FASTCALL1 TYPEOF R15 [+2]
  GETIMPORT R14 K6 [typeof]
  CALL R14 1 1
  JUMPIFNOTEQKS R14 K9 ["function"] [+4]
  NAMECALL R14 R4 K26 ["componentWillMount"]
  CALL R14 1 0
  GETTABLEKS R15 R4 K25 ["UNSAFE_componentWillMount"]
  FASTCALL1 TYPEOF R15 [+2]
  GETIMPORT R14 K6 [typeof]
  CALL R14 1 1
  JUMPIFNOTEQKS R14 K9 ["function"] [+4]
  NAMECALL R14 R4 K25 ["UNSAFE_componentWillMount"]
  CALL R14 1 0
  GETTABLEKS R15 R4 K16 ["componentDidMount"]
  FASTCALL1 TYPEOF R15 [+2]
  GETIMPORT R14 K6 [typeof]
  CALL R14 1 1
  JUMPIFNOTEQKS R14 K9 ["function"] [+70]
  GETIMPORT R15 K18 [_G]
  GETTABLEKS R14 R15 K19 ["__DEV__"]
  JUMPIFNOT R14 [+13]
  GETUPVAL R14 9
  JUMPIFNOT R14 [+11]
  GETTABLEKS R15 R0 K20 ["flags"]
  GETUPVAL R16 10
  GETUPVAL R17 11
  FASTCALL BIT32_BOR [+2]
  GETIMPORT R14 K23 [bit32.bor]
  CALL R14 3 1
  SETTABLEKS R14 R0 K20 ["flags"]
  JUMP [+51]
  GETTABLEKS R15 R0 K20 ["flags"]
  GETUPVAL R16 11
  FASTCALL2 BIT32_BOR R15 R16 [+3]
  GETIMPORT R14 K23 [bit32.bor]
  CALL R14 2 1
  SETTABLEKS R14 R0 K20 ["flags"]
  JUMP [+40]
  GETTABLEKS R15 R4 K16 ["componentDidMount"]
  FASTCALL1 TYPEOF R15 [+2]
  GETIMPORT R14 K6 [typeof]
  CALL R14 1 1
  JUMPIFNOTEQKS R14 K9 ["function"] [+29]
  GETIMPORT R15 K18 [_G]
  GETTABLEKS R14 R15 K19 ["__DEV__"]
  JUMPIFNOT R14 [+13]
  GETUPVAL R14 9
  JUMPIFNOT R14 [+11]
  GETTABLEKS R15 R0 K20 ["flags"]
  GETUPVAL R16 10
  GETUPVAL R17 11
  FASTCALL BIT32_BOR [+2]
  GETIMPORT R14 K23 [bit32.bor]
  CALL R14 3 1
  SETTABLEKS R14 R0 K20 ["flags"]
  JUMP [+10]
  GETTABLEKS R15 R0 K20 ["flags"]
  GETUPVAL R16 11
  FASTCALL2 BIT32_BOR R15 R16 [+3]
  GETIMPORT R14 K23 [bit32.bor]
  CALL R14 2 1
  SETTABLEKS R14 R0 K20 ["flags"]
  SETTABLEKS R2 R0 K1 ["memoizedProps"]
  SETTABLEKS R12 R0 K14 ["memoizedState"]
  SETTABLEKS R2 R4 K2 ["props"]
  SETTABLEKS R12 R4 K15 ["state"]
  SETTABLEKS R8 R4 K3 ["context"]
  RETURN R13 1

PROTO_16:
  GETTABLEKS R5 R1 K0 ["stateNode"]
  GETUPVAL R6 0
  MOVE R7 R0
  MOVE R8 R1
  CALL R6 2 0
  GETTABLEKS R6 R1 K1 ["memoizedProps"]
  GETTABLEKS R8 R1 K2 ["type"]
  GETTABLEKS R9 R1 K3 ["elementType"]
  JUMPIFNOTEQ R8 R9 [+3]
  MOVE R7 R6
  JUMPIF R7 [+5]
  GETUPVAL R7 1
  GETTABLEKS R8 R1 K2 ["type"]
  MOVE R9 R6
  CALL R7 2 1
  SETTABLEKS R7 R5 K4 ["props"]
  GETTABLEKS R8 R1 K5 ["pendingProps"]
  GETTABLEKS R9 R5 K6 ["context"]
  LOADNIL R10
  LOADNIL R11
  FASTCALL1 TYPEOF R2 [+3]
  MOVE R13 R2
  GETIMPORT R12 K8 [typeof]
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K9 ["table"] [+5]
  GETTABLEKS R10 R2 K10 ["contextType"]
  GETTABLEKS R11 R2 K11 ["getDerivedStateFromProps"]
  GETUPVAL R12 2
  FASTCALL1 TYPEOF R10 [+3]
  MOVE R14 R10
  GETIMPORT R13 K8 [typeof]
  CALL R13 1 1
  JUMPIFNOTEQKS R13 K9 ["table"] [+6]
  GETUPVAL R13 3
  MOVE R14 R10
  CALL R13 1 1
  MOVE R12 R13
  JUMP [+12]
  GETUPVAL R13 4
  JUMPIF R13 [+10]
  GETUPVAL R13 5
  MOVE R14 R1
  MOVE R15 R2
  LOADB R16 1
  CALL R13 3 1
  GETUPVAL R14 6
  MOVE R15 R1
  MOVE R16 R13
  CALL R14 2 1
  MOVE R12 R14
  LOADB R13 1
  FASTCALL1 TYPEOF R11 [+3]
  MOVE R15 R11
  GETIMPORT R14 K8 [typeof]
  CALL R14 1 1
  JUMPIFEQKS R14 K12 ["function"] [+11]
  GETTABLEKS R15 R5 K13 ["getSnapshotBeforeUpdate"]
  FASTCALL1 TYPEOF R15 [+2]
  GETIMPORT R14 K8 [typeof]
  CALL R14 1 1
  JUMPIFEQKS R14 K12 ["function"] [+2]
  LOADB R13 0 +1
  LOADB R13 1
  JUMPIF R13 [+27]
  GETTABLEKS R15 R5 K14 ["UNSAFE_componentWillReceiveProps"]
  FASTCALL1 TYPEOF R15 [+2]
  GETIMPORT R14 K8 [typeof]
  CALL R14 1 1
  JUMPIFEQKS R14 K12 ["function"] [+9]
  GETTABLEKS R15 R5 K15 ["componentWillReceiveProps"]
  FASTCALL1 TYPEOF R15 [+2]
  GETIMPORT R14 K8 [typeof]
  CALL R14 1 1
  JUMPIFNOTEQKS R14 K12 ["function"] [+12]
  JUMPIFNOTEQ R6 R8 [+3]
  JUMPIFEQ R9 R12 [+8]
  GETGLOBAL R14 K16 ["callComponentWillReceiveProps"]
  MOVE R15 R1
  MOVE R16 R5
  MOVE R17 R3
  MOVE R18 R12
  CALL R14 4 0
  GETUPVAL R14 7
  CALL R14 0 0
  GETTABLEKS R14 R1 K17 ["memoizedState"]
  SETTABLEKS R14 R5 K18 ["state"]
  GETTABLEKS R15 R5 K18 ["state"]
  GETUPVAL R16 8
  MOVE R17 R1
  MOVE R18 R3
  MOVE R19 R5
  MOVE R20 R4
  CALL R16 4 0
  GETTABLEKS R15 R1 K17 ["memoizedState"]
  JUMPIFNOTEQ R6 R8 [+63]
  JUMPIFNOTEQ R14 R15 [+61]
  GETUPVAL R16 9
  CALL R16 0 1
  JUMPIF R16 [+57]
  GETUPVAL R16 10
  CALL R16 0 1
  JUMPIF R16 [+54]
  GETTABLEKS R17 R5 K19 ["componentDidUpdate"]
  FASTCALL1 TYPEOF R17 [+2]
  GETIMPORT R16 K8 [typeof]
  CALL R16 1 1
  JUMPIFNOTEQKS R16 K12 ["function"] [+19]
  GETTABLEKS R16 R0 K1 ["memoizedProps"]
  JUMPIFNOTEQ R6 R16 [+5]
  GETTABLEKS R16 R0 K17 ["memoizedState"]
  JUMPIFEQ R14 R16 [+11]
  GETTABLEKS R17 R1 K20 ["flags"]
  GETUPVAL R18 11
  FASTCALL2 BIT32_BOR R17 R18 [+3]
  GETIMPORT R16 K23 [bit32.bor]
  CALL R16 2 1
  SETTABLEKS R16 R1 K20 ["flags"]
  GETTABLEKS R17 R5 K13 ["getSnapshotBeforeUpdate"]
  FASTCALL1 TYPEOF R17 [+2]
  GETIMPORT R16 K8 [typeof]
  CALL R16 1 1
  JUMPIFNOTEQKS R16 K12 ["function"] [+19]
  GETTABLEKS R16 R0 K1 ["memoizedProps"]
  JUMPIFNOTEQ R6 R16 [+5]
  GETTABLEKS R16 R0 K17 ["memoizedState"]
  JUMPIFEQ R14 R16 [+11]
  GETTABLEKS R17 R1 K20 ["flags"]
  GETUPVAL R18 12
  FASTCALL2 BIT32_BOR R17 R18 [+3]
  GETIMPORT R16 K23 [bit32.bor]
  CALL R16 2 1
  SETTABLEKS R16 R1 K20 ["flags"]
  LOADB R16 0
  RETURN R16 1
  FASTCALL1 TYPEOF R11 [+3]
  MOVE R17 R11
  GETIMPORT R16 K8 [typeof]
  CALL R16 1 1
  JUMPIFNOTEQKS R16 K12 ["function"] [+9]
  GETUPVAL R16 13
  MOVE R17 R1
  MOVE R18 R2
  MOVE R19 R11
  MOVE R20 R3
  CALL R16 4 0
  GETTABLEKS R15 R1 K17 ["memoizedState"]
  GETUPVAL R16 10
  CALL R16 0 1
  JUMPIF R16 [+10]
  GETGLOBAL R16 K24 ["checkShouldComponentUpdate"]
  MOVE R17 R1
  MOVE R18 R2
  MOVE R19 R7
  MOVE R20 R3
  MOVE R21 R14
  MOVE R22 R15
  MOVE R23 R12
  CALL R16 7 1
  JUMPIFNOT R16 [+82]
  JUMPIF R13 [+44]
  GETTABLEKS R18 R5 K25 ["UNSAFE_componentWillUpdate"]
  FASTCALL1 TYPEOF R18 [+2]
  GETIMPORT R17 K8 [typeof]
  CALL R17 1 1
  JUMPIFEQKS R17 K12 ["function"] [+9]
  GETTABLEKS R18 R5 K26 ["componentWillUpdate"]
  FASTCALL1 TYPEOF R18 [+2]
  GETIMPORT R17 K8 [typeof]
  CALL R17 1 1
  JUMPIFNOTEQKS R17 K12 ["function"] [+29]
  GETTABLEKS R18 R5 K26 ["componentWillUpdate"]
  FASTCALL1 TYPEOF R18 [+2]
  GETIMPORT R17 K8 [typeof]
  CALL R17 1 1
  JUMPIFNOTEQKS R17 K12 ["function"] [+7]
  MOVE R19 R3
  MOVE R20 R15
  MOVE R21 R12
  NAMECALL R17 R5 K26 ["componentWillUpdate"]
  CALL R17 4 0
  GETTABLEKS R18 R5 K25 ["UNSAFE_componentWillUpdate"]
  FASTCALL1 TYPEOF R18 [+2]
  GETIMPORT R17 K8 [typeof]
  CALL R17 1 1
  JUMPIFNOTEQKS R17 K12 ["function"] [+7]
  MOVE R19 R3
  MOVE R20 R15
  MOVE R21 R12
  NAMECALL R17 R5 K25 ["UNSAFE_componentWillUpdate"]
  CALL R17 4 0
  GETTABLEKS R18 R5 K19 ["componentDidUpdate"]
  FASTCALL1 TYPEOF R18 [+2]
  GETIMPORT R17 K8 [typeof]
  CALL R17 1 1
  JUMPIFNOTEQKS R17 K12 ["function"] [+11]
  GETTABLEKS R18 R1 K20 ["flags"]
  GETUPVAL R19 11
  FASTCALL2 BIT32_BOR R18 R19 [+3]
  GETIMPORT R17 K23 [bit32.bor]
  CALL R17 2 1
  SETTABLEKS R17 R1 K20 ["flags"]
  GETTABLEKS R18 R5 K13 ["getSnapshotBeforeUpdate"]
  FASTCALL1 TYPEOF R18 [+2]
  GETIMPORT R17 K8 [typeof]
  CALL R17 1 1
  JUMPIFNOTEQKS R17 K12 ["function"] [+68]
  GETTABLEKS R18 R1 K20 ["flags"]
  GETUPVAL R19 12
  FASTCALL2 BIT32_BOR R18 R19 [+3]
  GETIMPORT R17 K23 [bit32.bor]
  CALL R17 2 1
  SETTABLEKS R17 R1 K20 ["flags"]
  JUMP [+56]
  GETTABLEKS R18 R5 K19 ["componentDidUpdate"]
  FASTCALL1 TYPEOF R18 [+2]
  GETIMPORT R17 K8 [typeof]
  CALL R17 1 1
  JUMPIFNOTEQKS R17 K12 ["function"] [+19]
  GETTABLEKS R17 R0 K1 ["memoizedProps"]
  JUMPIFNOTEQ R6 R17 [+5]
  GETTABLEKS R17 R0 K17 ["memoizedState"]
  JUMPIFEQ R14 R17 [+11]
  GETTABLEKS R18 R1 K20 ["flags"]
  GETUPVAL R19 11
  FASTCALL2 BIT32_BOR R18 R19 [+3]
  GETIMPORT R17 K23 [bit32.bor]
  CALL R17 2 1
  SETTABLEKS R17 R1 K20 ["flags"]
  GETTABLEKS R18 R5 K13 ["getSnapshotBeforeUpdate"]
  FASTCALL1 TYPEOF R18 [+2]
  GETIMPORT R17 K8 [typeof]
  CALL R17 1 1
  JUMPIFNOTEQKS R17 K12 ["function"] [+19]
  GETTABLEKS R17 R0 K1 ["memoizedProps"]
  JUMPIFNOTEQ R6 R17 [+5]
  GETTABLEKS R17 R0 K17 ["memoizedState"]
  JUMPIFEQ R14 R17 [+11]
  GETTABLEKS R18 R1 K20 ["flags"]
  GETUPVAL R19 12
  FASTCALL2 BIT32_BOR R18 R19 [+3]
  GETIMPORT R17 K23 [bit32.bor]
  CALL R17 2 1
  SETTABLEKS R17 R1 K20 ["flags"]
  SETTABLEKS R3 R1 K1 ["memoizedProps"]
  SETTABLEKS R15 R1 K17 ["memoizedState"]
  SETTABLEKS R3 R5 K4 ["props"]
  SETTABLEKS R15 R5 K18 ["state"]
  SETTABLEKS R12 R5 K6 ["context"]
  RETURN R16 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["LuauPolyfill"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K6 ["Object"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R5 R0 K7 ["Shared"]
  CALL R4 1 1
  GETTABLEKS R3 R4 K8 ["console"]
  GETIMPORT R4 K4 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K2 ["Parent"]
  GETTABLEKS R5 R6 K9 ["ReactInternalTypes"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K2 ["Parent"]
  GETTABLEKS R6 R7 K10 ["ReactFiberLane"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K11 ["ReactUpdateQueue.new"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R8 R0 K12 ["React"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K2 ["Parent"]
  GETTABLEKS R9 R10 K13 ["ReactFiberFlags"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K14 ["Update"]
  GETTABLEKS R10 R8 K15 ["Snapshot"]
  GETTABLEKS R11 R8 K16 ["MountLayoutDev"]
  GETIMPORT R13 K4 [require]
  GETTABLEKS R14 R0 K7 ["Shared"]
  CALL R13 1 1
  GETTABLEKS R12 R13 K17 ["ReactFeatureFlags"]
  GETTABLEKS R13 R12 K18 ["debugRenderPhaseSideEffectsForStrictMode"]
  GETTABLEKS R14 R12 K19 ["disableLegacyContext"]
  GETTABLEKS R15 R12 K20 ["enableDebugTracing"]
  GETTABLEKS R16 R12 K21 ["enableSchedulingProfiler"]
  GETTABLEKS R17 R12 K22 ["warnAboutDeprecatedLifecycles"]
  GETTABLEKS R18 R12 K23 ["enableDoubleInvokingEffects"]
  GETIMPORT R19 K4 [require]
  GETIMPORT R22 K1 [script]
  GETTABLEKS R21 R22 K2 ["Parent"]
  GETTABLEKS R20 R21 K24 ["ReactStrictModeWarnings.new"]
  CALL R19 1 1
  GETIMPORT R21 K4 [require]
  GETIMPORT R24 K1 [script]
  GETTABLEKS R23 R24 K2 ["Parent"]
  GETTABLEKS R22 R23 K25 ["ReactFiberTreeReflection"]
  CALL R21 1 1
  GETTABLEKS R20 R21 K26 ["isMounted"]
  GETIMPORT R22 K4 [require]
  GETTABLEKS R23 R0 K7 ["Shared"]
  CALL R22 1 1
  GETTABLEKS R21 R22 K27 ["ReactInstanceMap"]
  GETTABLEKS R22 R21 K28 ["get"]
  GETTABLEKS R23 R21 K29 ["set"]
  GETIMPORT R25 K4 [require]
  GETTABLEKS R26 R0 K7 ["Shared"]
  CALL R25 1 1
  GETTABLEKS R24 R25 K30 ["shallowEqual"]
  GETIMPORT R26 K4 [require]
  GETTABLEKS R27 R0 K7 ["Shared"]
  CALL R26 1 1
  GETTABLEKS R25 R26 K31 ["getComponentName"]
  GETIMPORT R27 K4 [require]
  GETTABLEKS R28 R0 K7 ["Shared"]
  CALL R27 1 1
  GETTABLEKS R26 R27 K32 ["UninitializedState"]
  GETIMPORT R28 K4 [require]
  GETTABLEKS R29 R0 K7 ["Shared"]
  CALL R28 1 1
  GETTABLEKS R27 R28 K33 ["ReactSymbols"]
  GETTABLEKS R28 R27 K34 ["REACT_CONTEXT_TYPE"]
  GETTABLEKS R29 R27 K35 ["REACT_PROVIDER_TYPE"]
  GETIMPORT R31 K4 [require]
  GETIMPORT R34 K1 [script]
  GETTABLEKS R33 R34 K2 ["Parent"]
  GETTABLEKS R32 R33 K36 ["ReactFiberLazyComponent.new"]
  CALL R31 1 1
  GETTABLEKS R30 R31 K37 ["resolveDefaultProps"]
  GETIMPORT R31 K4 [require]
  GETIMPORT R34 K1 [script]
  GETTABLEKS R33 R34 K2 ["Parent"]
  GETTABLEKS R32 R33 K38 ["ReactTypeOfMode"]
  CALL R31 1 1
  GETTABLEKS R32 R31 K39 ["DebugTracingMode"]
  GETTABLEKS R33 R31 K40 ["StrictMode"]
  GETTABLEKS R34 R6 K41 ["enqueueUpdate"]
  GETTABLEKS R35 R6 K42 ["processUpdateQueue"]
  GETTABLEKS R36 R6 K43 ["checkHasForceUpdateAfterProcessing"]
  GETTABLEKS R37 R6 K44 ["resetHasForceUpdateBeforeProcessing"]
  GETTABLEKS R38 R6 K45 ["createUpdate"]
  GETTABLEKS R39 R6 K46 ["ReplaceState"]
  GETTABLEKS R40 R6 K47 ["ForceUpdate"]
  GETTABLEKS R41 R6 K48 ["initializeUpdateQueue"]
  GETTABLEKS R42 R6 K49 ["cloneUpdateQueue"]
  GETTABLEKS R43 R5 K50 ["NoLanes"]
  GETIMPORT R44 K4 [require]
  GETIMPORT R47 K1 [script]
  GETTABLEKS R46 R47 K2 ["Parent"]
  GETTABLEKS R45 R46 K51 ["ReactFiberContext.new"]
  CALL R44 1 1
  GETTABLEKS R45 R44 K52 ["cacheContext"]
  GETTABLEKS R46 R44 K53 ["getMaskedContext"]
  GETTABLEKS R47 R44 K54 ["getUnmaskedContext"]
  GETTABLEKS R48 R44 K55 ["hasContextChanged"]
  GETTABLEKS R49 R44 K56 ["emptyContextObject"]
  GETIMPORT R50 K4 [require]
  GETIMPORT R53 K1 [script]
  GETTABLEKS R52 R53 K2 ["Parent"]
  GETTABLEKS R51 R52 K57 ["ReactFiberNewContext.new"]
  CALL R50 1 1
  GETTABLEKS R51 R50 K58 ["readContext"]
  GETIMPORT R52 K4 [require]
  GETIMPORT R55 K1 [script]
  GETTABLEKS R54 R55 K2 ["Parent"]
  GETTABLEKS R53 R54 K59 ["DebugTracing"]
  CALL R52 1 1
  GETTABLEKS R53 R52 K60 ["logForceUpdateScheduled"]
  GETTABLEKS R54 R52 K61 ["logStateUpdateScheduled"]
  GETIMPORT R56 K4 [require]
  GETTABLEKS R57 R0 K7 ["Shared"]
  CALL R56 1 1
  GETTABLEKS R55 R56 K62 ["ConsolePatchingDev"]
  GETTABLEKS R56 R55 K63 ["disableLogs"]
  GETTABLEKS R57 R55 K64 ["reenableLogs"]
  GETIMPORT R58 K4 [require]
  GETIMPORT R61 K1 [script]
  GETTABLEKS R60 R61 K2 ["Parent"]
  GETTABLEKS R59 R60 K65 ["SchedulingProfiler"]
  CALL R58 1 1
  GETTABLEKS R59 R58 K66 ["markForceUpdateScheduled"]
  GETTABLEKS R60 R58 K67 ["markStateUpdateScheduled"]
  NEWTABLE R61 0 0
  GETTABLEKS R63 R7 K68 ["Component"]
  LOADK R65 K69 [""]
  NAMECALL R63 R63 K70 ["extend"]
  CALL R63 2 1
  GETTABLEKS R62 R63 K71 ["__refs"]
  LOADNIL R63
  LOADNIL R64
  LOADNIL R65
  LOADNIL R66
  LOADNIL R67
  LOADNIL R68
  LOADNIL R69
  LOADNIL R70
  LOADNIL R71
  LOADNIL R72
  GETIMPORT R74 K73 [_G]
  GETTABLEKS R73 R74 K74 ["__DEV__"]
  JUMPIFNOT R73 [+22]
  NEWTABLE R63 0 0
  NEWTABLE R64 0 0
  NEWTABLE R65 0 0
  NEWTABLE R66 0 0
  NEWTABLE R70 0 0
  NEWTABLE R67 0 0
  NEWTABLE R71 0 0
  NEWTABLE R72 0 0
  NEWTABLE R73 0 0
  DUPCLOSURE R69 K75 [PROTO_0]
  CAPTURE VAL R73
  CAPTURE VAL R3
  DUPCLOSURE R68 K76 [PROTO_1]
  NEWCLOSURE R73 P2
  CAPTURE VAL R13
  CAPTURE VAL R33
  CAPTURE VAL R56
  CAPTURE VAL R57
  CAPTURE REF R68
  CAPTURE VAL R2
  CAPTURE VAL R43
  LOADNIL R74
  NEWCLOSURE R75 P3
  CAPTURE REF R74
  CAPTURE VAL R20
  CAPTURE VAL R22
  CAPTURE VAL R38
  CAPTURE REF R69
  CAPTURE VAL R34
  CAPTURE VAL R15
  CAPTURE VAL R32
  CAPTURE VAL R25
  CAPTURE VAL R54
  CAPTURE VAL R16
  CAPTURE VAL R60
  CAPTURE VAL R39
  CAPTURE VAL R40
  CAPTURE VAL R53
  CAPTURE VAL R59
  NEWCLOSURE R76 P4
  CAPTURE REF R74
  CAPTURE VAL R75
  DUPCLOSURE R77 K77 [PROTO_8]
  CAPTURE VAL R13
  CAPTURE VAL R33
  CAPTURE VAL R56
  CAPTURE VAL R57
  CAPTURE VAL R3
  CAPTURE VAL R25
  CAPTURE VAL R24
  SETGLOBAL R77 K78 ["checkShouldComponentUpdate"]
  NEWCLOSURE R77 P6
  CAPTURE VAL R25
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE REF R71
  CAPTURE REF R65
  NEWCLOSURE R78 P7
  CAPTURE REF R74
  CAPTURE VAL R75
  CAPTURE VAL R23
  CAPTURE VAL R61
  NEWCLOSURE R79 P8
  CAPTURE VAL R49
  CAPTURE VAL R28
  CAPTURE REF R72
  CAPTURE VAL R29
  CAPTURE VAL R3
  CAPTURE VAL R25
  CAPTURE VAL R51
  CAPTURE VAL R14
  CAPTURE VAL R47
  CAPTURE VAL R46
  CAPTURE VAL R13
  CAPTURE VAL R33
  CAPTURE VAL R56
  CAPTURE VAL R57
  CAPTURE REF R74
  CAPTURE VAL R75
  CAPTURE VAL R23
  CAPTURE VAL R61
  CAPTURE VAL R26
  CAPTURE REF R64
  CAPTURE REF R66
  CAPTURE VAL R45
  NEWCLOSURE R80 P9
  CAPTURE VAL R3
  CAPTURE VAL R25
  CAPTURE REF R74
  CAPTURE VAL R75
  NEWCLOSURE R81 P10
  CAPTURE VAL R25
  CAPTURE REF R63
  CAPTURE VAL R3
  CAPTURE REF R74
  CAPTURE VAL R75
  SETGLOBAL R81 K79 ["callComponentWillReceiveProps"]
  NEWCLOSURE R81 P11
  CAPTURE VAL R77
  CAPTURE VAL R62
  CAPTURE VAL R41
  CAPTURE VAL R51
  CAPTURE VAL R14
  CAPTURE VAL R49
  CAPTURE VAL R47
  CAPTURE VAL R46
  CAPTURE VAL R25
  CAPTURE REF R70
  CAPTURE VAL R3
  CAPTURE VAL R33
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R35
  CAPTURE VAL R73
  CAPTURE VAL R80
  CAPTURE VAL R18
  CAPTURE VAL R11
  CAPTURE VAL R9
  DUPCLOSURE R82 K80 [PROTO_15]
  CAPTURE VAL R49
  CAPTURE VAL R51
  CAPTURE VAL R14
  CAPTURE VAL R47
  CAPTURE VAL R46
  CAPTURE VAL R37
  CAPTURE VAL R35
  CAPTURE VAL R48
  CAPTURE VAL R36
  CAPTURE VAL R18
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R73
  SETGLOBAL R82 K81 ["resumeMountClassInstance"]
  DUPCLOSURE R82 K82 [PROTO_16]
  CAPTURE VAL R42
  CAPTURE VAL R30
  CAPTURE VAL R49
  CAPTURE VAL R51
  CAPTURE VAL R14
  CAPTURE VAL R47
  CAPTURE VAL R46
  CAPTURE VAL R37
  CAPTURE VAL R35
  CAPTURE VAL R48
  CAPTURE VAL R36
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R73
  DUPTABLE R83 K89 [{"adoptClassInstance", "constructClassInstance", "mountClassInstance", "resumeMountClassInstance", "updateClassInstance", "applyDerivedStateFromProps", "emptyRefsObject"}]
  SETTABLEKS R78 R83 K83 ["adoptClassInstance"]
  SETTABLEKS R79 R83 K84 ["constructClassInstance"]
  SETTABLEKS R81 R83 K85 ["mountClassInstance"]
  GETGLOBAL R84 K81 ["resumeMountClassInstance"]
  SETTABLEKS R84 R83 K81 ["resumeMountClassInstance"]
  SETTABLEKS R82 R83 K86 ["updateClassInstance"]
  SETTABLEKS R73 R83 K87 ["applyDerivedStateFromProps"]
  SETTABLEKS R62 R83 K88 ["emptyRefsObject"]
  CLOSEUPVALS R63
  RETURN R83 1
