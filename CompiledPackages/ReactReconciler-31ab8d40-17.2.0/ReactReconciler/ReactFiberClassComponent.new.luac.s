PROTO_0:
  JUMPIFEQKNIL R0 [+8]
  FASTCALL1 TYPE R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K1 [type]
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
  GETUPVAL R5 0
  JUMPIFNOT R5 [+28]
  GETUPVAL R5 1
  JUMPIFNOT R5 [+26]
  GETTABLEKS R6 R0 K1 ["mode"]
  GETUPVAL R7 2
  FASTCALL2 BIT32_BAND R6 R7 [+3]
  GETIMPORT R5 K4 [bit32.band]
  CALL R5 2 1
  JUMPIFEQKN R5 K5 [0] [+17]
  GETUPVAL R5 3
  CALL R5 0 0
  GETIMPORT R5 K7 [xpcall]
  MOVE R6 R2
  GETUPVAL R7 4
  MOVE R8 R3
  MOVE R9 R4
  CALL R5 4 2
  GETUPVAL R7 5
  CALL R7 0 0
  JUMPIF R5 [+4]
  GETIMPORT R7 K9 [error]
  MOVE R8 R6
  CALL R7 1 0
  MOVE R5 R2
  MOVE R6 R3
  MOVE R7 R4
  CALL R5 2 1
  GETUPVAL R6 0
  JUMPIFNOT R6 [+4]
  GETUPVAL R6 6
  MOVE R7 R1
  MOVE R8 R5
  CALL R6 2 0
  JUMPIFNOTEQKNIL R5 [+3]
  MOVE R6 R4
  JUMP [+8]
  GETUPVAL R7 7
  GETTABLEKS R6 R7 K10 ["assign"]
  NEWTABLE R7 0 0
  MOVE R8 R4
  MOVE R9 R5
  CALL R6 3 1
  SETTABLEKS R6 R0 K0 ["memoizedState"]
  GETTABLEKS R7 R0 K11 ["lanes"]
  GETUPVAL R8 8
  JUMPIFNOTEQ R7 R8 [+5]
  GETTABLEKS R7 R0 K12 ["updateQueue"]
  SETTABLEKS R6 R7 K13 ["baseState"]
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
  MOVE R9 R1
  MOVE R10 R2
  CALL R6 4 1
  JUMPIFEQKNIL R2 [+7]
  GETUPVAL R7 4
  JUMPIFNOT R7 [+4]
  GETUPVAL R7 5
  MOVE R8 R2
  LOADK R9 K0 ["setState"]
  CALL R7 2 0
  GETUPVAL R7 6
  MOVE R8 R3
  MOVE R9 R6
  CALL R7 2 0
  GETUPVAL R7 7
  MOVE R8 R3
  MOVE R9 R5
  MOVE R10 R4
  CALL R7 3 0
  GETUPVAL R7 4
  JUMPIFNOT R7 [+22]
  GETUPVAL R7 8
  JUMPIFNOT R7 [+20]
  GETTABLEKS R8 R3 K1 ["mode"]
  GETUPVAL R9 9
  FASTCALL2 BIT32_BAND R8 R9 [+3]
  GETIMPORT R7 K4 [bit32.band]
  CALL R7 2 1
  JUMPIFEQKN R7 K5 [0] [+11]
  GETUPVAL R8 10
  GETTABLEKS R9 R3 K7 ["type"]
  CALL R8 1 1
  ORK R7 R8 K6 ["Unknown"]
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
  MOVE R9 R1
  MOVE R10 R2
  CALL R6 4 1
  GETUPVAL R7 4
  SETTABLEKS R7 R6 K0 ["tag"]
  JUMPIFEQKNIL R2 [+7]
  GETUPVAL R7 5
  JUMPIFNOT R7 [+4]
  GETUPVAL R7 6
  MOVE R8 R2
  LOADK R9 K1 ["replaceState"]
  CALL R7 2 0
  GETUPVAL R7 7
  MOVE R8 R3
  MOVE R9 R6
  CALL R7 2 0
  GETUPVAL R7 8
  MOVE R8 R3
  MOVE R9 R5
  MOVE R10 R4
  CALL R7 3 0
  GETUPVAL R7 5
  JUMPIFNOT R7 [+22]
  GETUPVAL R7 9
  JUMPIFNOT R7 [+20]
  GETTABLEKS R8 R3 K2 ["mode"]
  GETUPVAL R9 10
  FASTCALL2 BIT32_BAND R8 R9 [+3]
  GETIMPORT R7 K5 [bit32.band]
  CALL R7 2 1
  JUMPIFEQKN R7 K6 [0] [+11]
  GETUPVAL R8 11
  GETTABLEKS R9 R3 K8 ["type"]
  CALL R8 1 1
  ORK R7 R8 K7 ["Unknown"]
  GETUPVAL R8 12
  MOVE R9 R7
  MOVE R10 R5
  MOVE R11 R1
  CALL R8 3 0
  GETUPVAL R7 13
  JUMPIFNOT R7 [+4]
  GETUPVAL R7 14
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
  LOADNIL R8
  MOVE R9 R1
  CALL R5 4 1
  GETUPVAL R6 4
  SETTABLEKS R6 R5 K0 ["tag"]
  JUMPIFEQKNIL R1 [+7]
  GETUPVAL R6 5
  JUMPIFNOT R6 [+4]
  GETUPVAL R6 6
  MOVE R7 R1
  LOADK R8 K1 ["forceUpdate"]
  CALL R6 2 0
  GETUPVAL R6 7
  MOVE R7 R2
  MOVE R8 R5
  CALL R6 2 0
  GETUPVAL R6 8
  MOVE R7 R2
  MOVE R8 R4
  MOVE R9 R3
  CALL R6 3 0
  GETUPVAL R6 5
  JUMPIFNOT R6 [+21]
  GETUPVAL R6 9
  JUMPIFNOT R6 [+19]
  GETTABLEKS R7 R2 K2 ["mode"]
  GETUPVAL R8 10
  FASTCALL2 BIT32_BAND R7 R8 [+3]
  GETIMPORT R6 K5 [bit32.band]
  CALL R6 2 1
  JUMPIFEQKN R6 K6 [0] [+10]
  GETUPVAL R7 11
  GETTABLEKS R8 R2 K8 ["type"]
  CALL R7 1 1
  ORK R6 R7 K7 ["Unknown"]
  GETUPVAL R7 12
  MOVE R8 R6
  MOVE R9 R4
  CALL R7 2 0
  GETUPVAL R6 13
  JUMPIFNOT R6 [+4]
  GETUPVAL R6 14
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
  CAPTURE UPVAL U6
  CAPTURE VAL R3
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  SETTABLEKS R5 R4 K10 ["enqueueSetState"]
  NEWCLOSURE R5 P1
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U13
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R3
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U11
  CAPTURE UPVAL U12
  SETTABLEKS R5 R4 K11 ["enqueueReplaceState"]
  NEWCLOSURE R5 P2
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U14
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE VAL R3
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U15
  CAPTURE UPVAL U11
  CAPTURE UPVAL U16
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
  GETTABLEKS R8 R7 K1 ["shouldComponentUpdate"]
  JUMPIFEQKNIL R8 [+62]
  GETTABLEKS R9 R7 K1 ["shouldComponentUpdate"]
  FASTCALL1 TYPE R9 [+2]
  GETIMPORT R8 K3 [type]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K4 ["function"] [+54]
  GETUPVAL R8 0
  JUMPIFNOT R8 [+31]
  GETUPVAL R8 1
  JUMPIFNOT R8 [+29]
  GETTABLEKS R9 R0 K5 ["mode"]
  GETUPVAL R10 2
  FASTCALL2 BIT32_BAND R9 R10 [+3]
  GETIMPORT R8 K8 [bit32.band]
  CALL R8 2 1
  JUMPIFEQKN R8 K9 [0] [+20]
  GETUPVAL R8 3
  CALL R8 0 0
  GETIMPORT R8 K11 [xpcall]
  GETTABLEKS R9 R7 K1 ["shouldComponentUpdate"]
  GETUPVAL R10 4
  MOVE R11 R7
  MOVE R12 R3
  MOVE R13 R5
  MOVE R14 R6
  CALL R8 6 2
  GETUPVAL R10 5
  CALL R10 0 0
  JUMPIF R8 [+4]
  GETIMPORT R10 K13 [error]
  MOVE R11 R9
  CALL R10 1 0
  MOVE R10 R3
  MOVE R11 R5
  MOVE R12 R6
  NAMECALL R8 R7 K1 ["shouldComponentUpdate"]
  CALL R8 4 1
  GETUPVAL R9 0
  JUMPIFNOT R9 [+11]
  JUMPIFNOTEQKNIL R8 [+10]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K12 ["error"]
  LOADK R10 K14 ["%s.shouldComponentUpdate(): Returned nil instead of a boolean value. Make sure to return true or false."]
  GETUPVAL R12 7
  MOVE R13 R1
  CALL R12 1 1
  ORK R11 R12 K15 ["Component"]
  CALL R9 2 0
  RETURN R8 1
  FASTCALL1 TYPE R1 [+3]
  MOVE R9 R1
  GETIMPORT R8 K3 [type]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K16 ["table"] [+16]
  GETTABLEKS R8 R1 K17 ["isPureReactComponent"]
  JUMPIFNOT R8 [+12]
  GETUPVAL R9 8
  MOVE R10 R2
  MOVE R11 R3
  CALL R9 2 1
  NOT R8 R9
  JUMPIF R8 [+5]
  GETUPVAL R9 8
  MOVE R10 R4
  MOVE R11 R5
  CALL R9 2 1
  NOT R8 R9
  RETURN R8 1
  LOADB R8 1
  RETURN R8 1

PROTO_9:
  GETTABLEKS R3 R0 K0 ["stateNode"]
  GETUPVAL R4 0
  JUMPIFNOT R4 [+343]
  GETUPVAL R5 1
  MOVE R6 R1
  CALL R5 1 1
  ORK R4 R5 K1 ["Component"]
  GETTABLEKS R5 R3 K2 ["render"]
  JUMPIF R5 [+21]
  GETTABLEKS R7 R1 K2 ["render"]
  FASTCALL1 TYPE R7 [+2]
  GETIMPORT R6 K4 [type]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K5 ["function"] [+8]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["error"]
  LOADK R7 K7 ["%s(...): No `render` method found on the returned component instance: did you accidentally return an object from the constructor?"]
  MOVE R8 R4
  CALL R6 2 0
  JUMP [+6]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["error"]
  LOADK R7 K8 ["%s(...): No `render` method found on the returned component instance: you may have forgotten to define `render`."]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R6 R3 K9 ["getInitialState"]
  JUMPIFNOT R6 [+14]
  GETTABLEKS R7 R3 K9 ["getInitialState"]
  GETTABLEKS R6 R7 K10 ["isReactClassApproved"]
  JUMPIF R6 [+9]
  GETTABLEKS R6 R3 K11 ["state"]
  JUMPIF R6 [+6]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["error"]
  LOADK R7 K12 ["getInitialState was defined on %s, a plain JavaScript class. This is only supported for classes created using React.createClass. Did you mean to define a state property instead?"]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R6 R3 K13 ["getDefaultProps"]
  JUMPIFNOT R6 [+11]
  GETTABLEKS R7 R3 K13 ["getDefaultProps"]
  GETTABLEKS R6 R7 K10 ["isReactClassApproved"]
  JUMPIF R6 [+6]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["error"]
  LOADK R7 K14 ["getDefaultProps was defined on %s, a plain JavaScript class. This is only supported for classes created using React.createClass. Use a static property to define defaultProps instead."]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R6 R3 K15 ["propTypes"]
  JUMPIFNOT R6 [+9]
  GETTABLEKS R6 R1 K15 ["propTypes"]
  JUMPIF R6 [+6]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["error"]
  LOADK R7 K16 ["propTypes was defined as an instance property on %s. Use a static property to define propTypes instead."]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R6 R3 K17 ["contextType"]
  JUMPIFNOT R6 [+9]
  GETTABLEKS R6 R1 K17 ["contextType"]
  JUMPIF R6 [+6]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["error"]
  LOADK R7 K18 ["contextType was defined as an instance property on %s. Use a static property to define contextType instead."]
  MOVE R8 R4
  CALL R6 2 0
  GETUPVAL R6 3
  JUMPIFNOT R6 [+19]
  GETTABLEKS R6 R1 K19 ["childContextTypes"]
  JUMPIFNOT R6 [+6]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["error"]
  LOADK R7 K20 ["%s uses the legacy childContextTypes API which is no longer supported. Use React.createContext() instead."]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R6 R1 K21 ["contextTypes"]
  JUMPIFNOT R6 [+44]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["error"]
  LOADK R7 K22 ["%s uses the legacy contextTypes API which is no longer supported. Use React.createContext() with static contextType instead."]
  MOVE R8 R4
  CALL R6 2 0
  JUMP [+37]
  GETTABLEKS R6 R3 K21 ["contextTypes"]
  JUMPIFNOT R6 [+9]
  GETTABLEKS R6 R1 K21 ["contextTypes"]
  JUMPIF R6 [+6]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["error"]
  LOADK R7 K23 ["contextTypes was defined as an instance property on %s. Use a static property to define contextTypes instead."]
  MOVE R8 R4
  CALL R6 2 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K4 [type]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K24 ["table"] [+19]
  GETTABLEKS R6 R1 K17 ["contextType"]
  JUMPIFNOT R6 [+15]
  GETTABLEKS R6 R1 K21 ["contextTypes"]
  JUMPIFNOT R6 [+12]
  GETUPVAL R7 4
  GETTABLE R6 R7 R1
  JUMPIF R6 [+9]
  GETUPVAL R6 4
  LOADB R7 1
  SETTABLE R7 R6 R1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["error"]
  LOADK R7 K25 ["%s declares both contextTypes and contextType static properties. The legacy contextTypes property will be ignored."]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R7 R3 K26 ["componentShouldUpdate"]
  FASTCALL1 TYPE R7 [+2]
  GETIMPORT R6 K4 [type]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K5 ["function"] [+7]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["error"]
  LOADK R7 K27 ["%s has a method called componentShouldUpdate(). Did you mean shouldComponentUpdate()? The name is phrased as a question because the function is expected to return a value."]
  MOVE R8 R4
  CALL R6 2 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K4 [type]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K24 ["table"] [+17]
  GETTABLEKS R6 R1 K28 ["isPureReactComponent"]
  JUMPIFNOT R6 [+13]
  GETTABLEKS R6 R3 K29 ["shouldComponentUpdate"]
  JUMPIFEQKNIL R6 [+10]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["error"]
  LOADK R7 K30 ["%s has a method called shouldComponentUpdate(). shouldComponentUpdate should not be used when extending React.PureComponent. Please extend React.Component if shouldComponentUpdate is used."]
  GETUPVAL R9 1
  MOVE R10 R1
  CALL R9 1 1
  ORK R8 R9 K31 ["A pure component"]
  CALL R6 2 0
  GETTABLEKS R7 R3 K32 ["componentDidUnmount"]
  FASTCALL1 TYPE R7 [+2]
  GETIMPORT R6 K4 [type]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K5 ["function"] [+7]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["error"]
  LOADK R7 K33 ["%s has a method called componentDidUnmount(). But there is no such lifecycle method. Did you mean componentWillUnmount()?"]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R7 R3 K34 ["componentDidReceiveProps"]
  FASTCALL1 TYPE R7 [+2]
  GETIMPORT R6 K4 [type]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K5 ["function"] [+7]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["error"]
  LOADK R7 K35 ["%s has a method called componentDidReceiveProps(). But there is no such lifecycle method. If you meant to update the state in response to changing props, use componentWillReceiveProps(). If you meant to fetch data or run side-effects or mutations after React has updated the UI, use componentDidUpdate()."]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R7 R3 K36 ["componentWillRecieveProps"]
  FASTCALL1 TYPE R7 [+2]
  GETIMPORT R6 K4 [type]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K5 ["function"] [+7]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["error"]
  LOADK R7 K37 ["%s has a method called componentWillRecieveProps(). Did you mean componentWillReceiveProps()?"]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R7 R3 K38 ["UNSAFE_componentWillRecieveProps"]
  FASTCALL1 TYPE R7 [+2]
  GETIMPORT R6 K4 [type]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K5 ["function"] [+7]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K6 ["error"]
  LOADK R7 K39 ["%s has a method called UNSAFE_componentWillRecieveProps(). Did you mean UNSAFE_componentWillReceiveProps()?"]
  MOVE R8 R4
  CALL R6 2 0
  GETTABLEKS R7 R3 K40 ["props"]
  JUMPIFNOTEQ R7 R2 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  GETTABLEKS R7 R3 K40 ["props"]
  JUMPIFEQKNIL R7 [+9]
  JUMPIFNOT R6 [+7]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K6 ["error"]
  LOADK R8 K41 ["%s(...): When calling super() in `%s`, make sure to pass up the same props that your component's constructor was passed."]
  MOVE R9 R4
  MOVE R10 R4
  CALL R7 3 0
  FASTCALL2K RAWGET R3 K42 [+5]
  MOVE R8 R3
  LOADK R9 K42 ["defaultProps"]
  GETIMPORT R7 K44 [rawget]
  CALL R7 2 1
  JUMPIFNOT R7 [+7]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K6 ["error"]
  LOADK R8 K45 ["Setting defaultProps as an instance property on %s is not supported and will be ignored. Instead, define defaultProps as a static property on %s."]
  MOVE R9 R4
  MOVE R10 R4
  CALL R7 3 0
  GETTABLEKS R8 R3 K46 ["getSnapshotBeforeUpdate"]
  FASTCALL1 TYPE R8 [+2]
  GETIMPORT R7 K4 [type]
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K5 ["function"] [+23]
  GETTABLEKS R8 R3 K47 ["componentDidUpdate"]
  FASTCALL1 TYPE R8 [+2]
  GETIMPORT R7 K4 [type]
  CALL R7 1 1
  JUMPIFEQKS R7 K5 ["function"] [+15]
  GETUPVAL R8 5
  GETTABLE R7 R8 R1
  JUMPIF R7 [+11]
  GETUPVAL R7 5
  LOADB R8 1
  SETTABLE R8 R7 R1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K6 ["error"]
  LOADK R8 K48 ["%s: getSnapshotBeforeUpdate() should be used with componentDidUpdate(). This component defines getSnapshotBeforeUpdate() only."]
  GETUPVAL R9 1
  MOVE R10 R1
  CALL R9 1 -1
  CALL R7 -1 0
  GETTABLEKS R7 R3 K11 ["state"]
  JUMPIFEQKNIL R7 [+14]
  FASTCALL1 TYPE R7 [+3]
  MOVE R9 R7
  GETIMPORT R8 K4 [type]
  CALL R8 1 1
  JUMPIFEQKS R8 K24 ["table"] [+7]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["error"]
  LOADK R9 K49 ["%s.state: must be set to an object or nil"]
  MOVE R10 R4
  CALL R8 2 0
  FASTCALL1 TYPE R1 [+3]
  MOVE R9 R1
  GETIMPORT R8 K4 [type]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K24 ["table"] [+23]
  GETTABLEKS R9 R3 K50 ["getChildContext"]
  FASTCALL1 TYPE R9 [+2]
  GETIMPORT R8 K4 [type]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K5 ["function"] [+15]
  GETTABLEKS R9 R1 K19 ["childContextTypes"]
  FASTCALL1 TYPE R9 [+2]
  GETIMPORT R8 K4 [type]
  CALL R8 1 1
  JUMPIFEQKS R8 K24 ["table"] [+7]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["error"]
  LOADK R9 K51 ["%s.getChildContext(): childContextTypes must be defined in order to use getChildContext()."]
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
  GETUPVAL R2 3
  JUMPIFNOT R2 [+3]
  GETUPVAL R2 4
  SETTABLEKS R2 R1 K2 ["_reactInternalInstance"]
  RETURN R0 0

PROTO_11:
  LOADB R3 0
  GETUPVAL R4 0
  GETUPVAL R5 0
  GETTABLEKS R6 R1 K0 ["contextType"]
  GETUPVAL R7 1
  JUMPIFNOT R7 [+87]
  GETTABLEKS R7 R1 K0 ["contextType"]
  JUMPIFEQKNIL R7 [+84]
  LOADB R7 1
  JUMPIFEQKNIL R6 [+13]
  LOADB R7 0
  GETTABLEKS R8 R6 K1 ["$$typeof"]
  GETUPVAL R9 2
  JUMPIFNOTEQ R8 R9 [+7]
  GETTABLEKS R8 R6 K2 ["_context"]
  JUMPIFEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  JUMPIF R7 [+67]
  GETUPVAL R9 3
  GETTABLE R8 R9 R1
  JUMPIF R8 [+64]
  GETUPVAL R8 3
  LOADB R9 1
  SETTABLE R9 R8 R1
  LOADK R8 K3 [""]
  JUMPIFNOTEQKNIL R6 [+3]
  LOADK R8 K4 [" However, it is set to nil. This can be caused by a typo or by mixing up named and default imports. This can also happen due to a circular dependency, so try moving the createContext() call to a separate file."]
  JUMP [+46]
  FASTCALL1 TYPE R6 [+3]
  MOVE R10 R6
  GETIMPORT R9 K6 [type]
  CALL R9 1 1
  JUMPIFEQKS R9 K7 ["table"] [+11]
  LOADK R9 K8 [" However, it is set to a "]
  FASTCALL1 TYPE R6 [+3]
  MOVE R13 R6
  GETIMPORT R12 K6 [type]
  CALL R12 1 1
  MOVE R10 R12
  LOADK R11 K9 ["."]
  CONCAT R8 R9 R11
  JUMP [+29]
  GETTABLEKS R9 R6 K1 ["$$typeof"]
  GETUPVAL R10 4
  JUMPIFNOTEQ R9 R10 [+3]
  LOADK R8 K10 [" Did you accidentally pass the Context.Provider instead?"]
  JUMP [+22]
  GETTABLEKS R9 R6 K2 ["_context"]
  JUMPIFEQKNIL R9 [+3]
  LOADK R8 K11 [" Did you accidentally pass the Context.Consumer instead?"]
  JUMP [+16]
  MOVE R9 R8
  LOADK R10 K12 [" However, it is set to an object with keys {"]
  CONCAT R8 R9 R10
  MOVE R9 R6
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  MOVE R14 R8
  MOVE R15 R12
  LOADK R16 K13 [", "]
  CONCAT R8 R14 R16
  FORGLOOP R9 2 [-5]
  MOVE R9 R8
  LOADK R10 K14 ["}."]
  CONCAT R8 R9 R10
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K15 ["error"]
  LOADK R10 K16 ["%s defines an invalid contextType. contextType should point to the Context object returned by React.createContext().%s"]
  GETUPVAL R12 6
  MOVE R13 R1
  CALL R12 1 1
  ORK R11 R12 K17 ["Component"]
  MOVE R12 R8
  CALL R9 3 0
  JUMPIFEQKNIL R6 [+13]
  FASTCALL1 TYPE R6 [+3]
  MOVE R8 R6
  GETIMPORT R7 K6 [type]
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K7 ["table"] [+6]
  GETUPVAL R7 7
  MOVE R8 R6
  CALL R7 1 1
  MOVE R5 R7
  JUMP [+22]
  GETUPVAL R7 8
  JUMPIF R7 [+20]
  GETUPVAL R7 9
  MOVE R8 R0
  MOVE R9 R1
  LOADB R10 1
  CALL R7 3 1
  MOVE R4 R7
  GETTABLEKS R7 R1 K18 ["contextTypes"]
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+5]
  GETUPVAL R8 10
  MOVE R9 R0
  MOVE R10 R4
  CALL R8 2 1
  JUMPIF R8 [+1]
  GETUPVAL R8 0
  MOVE R5 R8
  GETUPVAL R7 1
  JUMPIFNOT R7 [+29]
  GETUPVAL R7 11
  JUMPIFNOT R7 [+27]
  GETTABLEKS R8 R0 K19 ["mode"]
  GETUPVAL R9 12
  FASTCALL2 BIT32_BAND R8 R9 [+3]
  GETIMPORT R7 K22 [bit32.band]
  CALL R7 2 1
  JUMPIFEQKN R7 K23 [0] [+18]
  GETUPVAL R7 13
  CALL R7 0 0
  GETIMPORT R7 K25 [xpcall]
  GETTABLEKS R8 R1 K26 ["__ctor"]
  GETUPVAL R9 14
  MOVE R10 R2
  MOVE R11 R5
  CALL R7 4 2
  GETUPVAL R9 15
  CALL R9 0 0
  JUMPIF R7 [+4]
  GETIMPORT R9 K27 [error]
  MOVE R10 R8
  CALL R9 1 0
  GETTABLEKS R7 R1 K26 ["__ctor"]
  MOVE R8 R2
  MOVE R9 R5
  CALL R7 2 1
  GETTABLEKS R8 R7 K28 ["state"]
  SETTABLEKS R8 R0 K29 ["memoizedState"]
  GETTABLEKS R8 R0 K29 ["memoizedState"]
  GETUPVAL R10 16
  JUMPIFNOTEQKNIL R10 [+3]
  GETUPVAL R10 17
  CALL R10 0 0
  GETUPVAL R9 16
  SETTABLEKS R9 R7 K30 ["__updater"]
  SETTABLEKS R7 R0 K31 ["stateNode"]
  GETUPVAL R9 18
  MOVE R10 R7
  MOVE R11 R0
  CALL R9 2 0
  GETUPVAL R9 1
  JUMPIFNOT R9 [+3]
  GETUPVAL R9 19
  SETTABLEKS R9 R7 K32 ["_reactInternalInstance"]
  GETUPVAL R9 1
  JUMPIFNOT R9 [+178]
  GETTABLEKS R10 R1 K33 ["getDerivedStateFromProps"]
  FASTCALL1 TYPE R10 [+2]
  GETIMPORT R9 K6 [type]
  CALL R9 1 1
  JUMPIFNOTEQKS R9 K34 ["function"] [+21]
  GETUPVAL R9 20
  JUMPIFNOTEQ R8 R9 [+18]
  GETUPVAL R10 6
  MOVE R11 R1
  CALL R10 1 1
  ORK R9 R10 K17 ["Component"]
  GETUPVAL R11 21
  GETTABLE R10 R11 R9
  JUMPIF R10 [+10]
  GETUPVAL R10 21
  LOADB R11 1
  SETTABLE R11 R10 R9
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K15 ["error"]
  LOADK R11 K35 ["`%s` uses `getDerivedStateFromProps` but its initial state has not been initialized. This is not recommended. Instead, define the initial state by passing an object to `self:setState` in the `init` method of `%s`. This ensures that `getDerivedStateFromProps` arguments have a consistent shape."]
  MOVE R12 R9
  MOVE R13 R9
  CALL R10 3 0
  GETTABLEKS R10 R1 K33 ["getDerivedStateFromProps"]
  FASTCALL1 TYPE R10 [+2]
  GETIMPORT R9 K6 [type]
  CALL R9 1 1
  JUMPIFEQKS R9 K34 ["function"] [+9]
  GETTABLEKS R10 R7 K36 ["getSnapshotBeforeUpdate"]
  FASTCALL1 TYPE R10 [+2]
  GETIMPORT R9 K6 [type]
  CALL R9 1 1
  JUMPIFNOTEQKS R9 K34 ["function"] [+135]
  LOADNIL R9
  LOADNIL R10
  LOADNIL R11
  GETTABLEKS R13 R7 K37 ["componentWillMount"]
  FASTCALL1 TYPE R13 [+2]
  GETIMPORT R12 K6 [type]
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K34 ["function"] [+3]
  LOADK R9 K37 ["componentWillMount"]
  JUMP [+9]
  GETTABLEKS R13 R7 K38 ["UNSAFE_componentWillMount"]
  FASTCALL1 TYPE R13 [+2]
  GETIMPORT R12 K6 [type]
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K34 ["function"] [+2]
  LOADK R9 K38 ["UNSAFE_componentWillMount"]
  GETTABLEKS R13 R7 K39 ["componentWillReceiveProps"]
  FASTCALL1 TYPE R13 [+2]
  GETIMPORT R12 K6 [type]
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K34 ["function"] [+3]
  LOADK R10 K39 ["componentWillReceiveProps"]
  JUMP [+9]
  GETTABLEKS R13 R7 K40 ["UNSAFE_componentWillReceiveProps"]
  FASTCALL1 TYPE R13 [+2]
  GETIMPORT R12 K6 [type]
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K34 ["function"] [+2]
  LOADK R10 K40 ["UNSAFE_componentWillReceiveProps"]
  GETTABLEKS R13 R7 K41 ["componentWillUpdate"]
  FASTCALL1 TYPE R13 [+2]
  GETIMPORT R12 K6 [type]
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K34 ["function"] [+3]
  LOADK R11 K41 ["componentWillUpdate"]
  JUMP [+9]
  GETTABLEKS R13 R7 K42 ["UNSAFE_componentWillUpdate"]
  FASTCALL1 TYPE R13 [+2]
  GETIMPORT R12 K6 [type]
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K34 ["function"] [+2]
  LOADK R11 K42 ["UNSAFE_componentWillUpdate"]
  JUMPIFNOTEQKNIL R9 [+5]
  JUMPIFNOTEQKNIL R10 [+3]
  JUMPIFEQKNIL R11 [+69]
  GETUPVAL R13 6
  MOVE R14 R1
  CALL R13 1 1
  ORK R12 R13 K17 ["Component"]
  LOADNIL R13
  GETTABLEKS R15 R1 K33 ["getDerivedStateFromProps"]
  FASTCALL1 TYPE R15 [+2]
  GETIMPORT R14 K6 [type]
  CALL R14 1 1
  JUMPIFNOTEQKS R14 K34 ["function"] [+3]
  LOADK R13 K43 ["getDerivedStateFromProps()"]
  JUMP [+1]
  LOADK R13 K44 ["getSnapshotBeforeUpdate()"]
  LOADNIL R14
  JUMPIFEQKNIL R9 [+9]
  LOADK R15 K45 ["
  "]
  FASTCALL1 TOSTRING R9 [+3]
  MOVE R17 R9
  GETIMPORT R16 K47 [tostring]
  CALL R16 1 1
  CONCAT R14 R15 R16
  JUMP [+1]
  LOADK R14 K3 [""]
  LOADNIL R15
  JUMPIFEQKNIL R10 [+9]
  LOADK R16 K45 ["
  "]
  FASTCALL1 TOSTRING R10 [+3]
  MOVE R18 R10
  GETIMPORT R17 K47 [tostring]
  CALL R17 1 1
  CONCAT R15 R16 R17
  JUMP [+1]
  LOADK R15 K3 [""]
  LOADNIL R16
  JUMPIFEQKNIL R11 [+9]
  LOADK R17 K45 ["
  "]
  FASTCALL1 TOSTRING R11 [+3]
  MOVE R19 R11
  GETIMPORT R18 K47 [tostring]
  CALL R18 1 1
  CONCAT R16 R17 R18
  JUMP [+1]
  LOADK R16 K3 [""]
  GETUPVAL R18 22
  GETTABLE R17 R18 R12
  JUMPIF R17 [+13]
  GETUPVAL R17 22
  LOADB R18 1
  SETTABLE R18 R17 R12
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K15 ["error"]
  LOADK R18 K48 ["Unsafe legacy lifecycles will not be called for components using new component APIs.

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
  GETUPVAL R9 23
  MOVE R10 R0
  MOVE R11 R4
  MOVE R12 R5
  CALL R9 3 0
  RETURN R7 1

PROTO_12:
  GETTABLEKS R2 R1 K0 ["state"]
  GETTABLEKS R3 R1 K1 ["componentWillMount"]
  JUMPIFEQKNIL R3 [+12]
  GETTABLEKS R4 R1 K1 ["componentWillMount"]
  FASTCALL1 TYPE R4 [+2]
  GETIMPORT R3 K3 [type]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K4 ["function"] [+4]
  NAMECALL R3 R1 K1 ["componentWillMount"]
  CALL R3 1 0
  GETTABLEKS R3 R1 K5 ["UNSAFE_componentWillMount"]
  JUMPIFEQKNIL R3 [+12]
  GETTABLEKS R4 R1 K5 ["UNSAFE_componentWillMount"]
  FASTCALL1 TYPE R4 [+2]
  GETIMPORT R3 K3 [type]
  CALL R3 1 1
  JUMPIFNOTEQKS R3 K4 ["function"] [+4]
  NAMECALL R3 R1 K5 ["UNSAFE_componentWillMount"]
  CALL R3 1 0
  GETTABLEKS R3 R1 K0 ["state"]
  JUMPIFEQ R2 R3 [+25]
  GETUPVAL R3 0
  JUMPIFNOT R3 [+10]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K6 ["error"]
  LOADK R4 K7 ["%s.componentWillMount(): Assigning directly to this.state is deprecated (except inside a component's constructor). Use setState instead."]
  GETUPVAL R6 2
  GETTABLEKS R7 R0 K2 ["type"]
  CALL R6 1 1
  ORK R5 R6 K8 ["Component"]
  CALL R3 2 0
  GETUPVAL R5 3
  JUMPIFNOTEQKNIL R5 [+3]
  GETUPVAL R5 4
  CALL R5 0 0
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K9 ["enqueueReplaceState"]
  MOVE R4 R1
  GETTABLEKS R5 R1 K0 ["state"]
  CALL R3 2 0
  RETURN R0 0

PROTO_13:
  GETTABLEKS R4 R1 K0 ["state"]
  GETTABLEKS R5 R1 K1 ["componentWillReceiveProps"]
  JUMPIFEQKNIL R5 [+14]
  GETTABLEKS R6 R1 K1 ["componentWillReceiveProps"]
  FASTCALL1 TYPE R6 [+2]
  GETIMPORT R5 K3 [type]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K4 ["function"] [+6]
  MOVE R7 R2
  MOVE R8 R3
  NAMECALL R5 R1 K1 ["componentWillReceiveProps"]
  CALL R5 3 0
  GETTABLEKS R5 R1 K5 ["UNSAFE_componentWillReceiveProps"]
  JUMPIFEQKNIL R5 [+14]
  GETTABLEKS R6 R1 K5 ["UNSAFE_componentWillReceiveProps"]
  FASTCALL1 TYPE R6 [+2]
  GETIMPORT R5 K3 [type]
  CALL R5 1 1
  JUMPIFNOTEQKS R5 K4 ["function"] [+6]
  MOVE R7 R2
  MOVE R8 R3
  NAMECALL R5 R1 K5 ["UNSAFE_componentWillReceiveProps"]
  CALL R5 3 0
  GETTABLEKS R5 R1 K0 ["state"]
  JUMPIFEQ R5 R4 [+32]
  GETUPVAL R5 0
  JUMPIFNOT R5 [+17]
  GETUPVAL R6 1
  GETTABLEKS R7 R0 K2 ["type"]
  CALL R6 1 1
  ORK R5 R6 K6 ["Component"]
  GETUPVAL R7 2
  GETTABLE R6 R7 R5
  JUMPIF R6 [+9]
  GETUPVAL R6 2
  LOADB R7 1
  SETTABLE R7 R6 R5
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K7 ["error"]
  LOADK R7 K8 ["%s.componentWillReceiveProps(): Assigning directly to this.state is deprecated (except inside a component's constructor). Use setState instead."]
  MOVE R8 R5
  CALL R6 2 0
  GETUPVAL R7 4
  JUMPIFNOTEQKNIL R7 [+3]
  GETUPVAL R7 5
  CALL R7 0 0
  GETUPVAL R6 4
  GETTABLEKS R5 R6 K9 ["enqueueReplaceState"]
  MOVE R6 R1
  GETTABLEKS R7 R1 K0 ["state"]
  CALL R5 2 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R4 0
  JUMPIFNOT R4 [+5]
  GETUPVAL R4 1
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  CALL R4 3 0
  GETTABLEKS R4 R0 K0 ["stateNode"]
  SETTABLEKS R2 R4 K1 ["props"]
  GETTABLEKS R5 R0 K2 ["memoizedState"]
  SETTABLEKS R5 R4 K3 ["state"]
  GETUPVAL R5 2
  SETTABLEKS R5 R4 K4 ["__refs"]
  GETUPVAL R5 3
  MOVE R6 R0
  CALL R5 1 0
  LOADNIL R5
  FASTCALL1 TYPE R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K6 [type]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K7 ["table"] [+3]
  GETTABLEKS R5 R1 K8 ["contextType"]
  JUMPIFEQKNIL R5 [+14]
  FASTCALL1 TYPE R5 [+3]
  MOVE R7 R5
  GETIMPORT R6 K6 [type]
  CALL R6 1 1
  JUMPIFNOTEQKS R6 K7 ["table"] [+7]
  GETUPVAL R6 4
  MOVE R7 R5
  CALL R6 1 1
  SETTABLEKS R6 R4 K9 ["context"]
  JUMP [+17]
  GETUPVAL R6 5
  JUMPIFNOT R6 [+4]
  GETUPVAL R6 6
  SETTABLEKS R6 R4 K9 ["context"]
  JUMP [+11]
  GETUPVAL R6 7
  MOVE R7 R0
  MOVE R8 R1
  LOADB R9 1
  CALL R6 3 1
  GETUPVAL R7 8
  MOVE R8 R0
  MOVE R9 R6
  CALL R7 2 1
  SETTABLEKS R7 R4 K9 ["context"]
  GETUPVAL R6 0
  JUMPIFNOT R6 [+44]
  GETTABLEKS R6 R4 K3 ["state"]
  JUMPIFNOTEQ R6 R2 [+17]
  GETUPVAL R7 9
  MOVE R8 R1
  CALL R7 1 1
  ORK R6 R7 K10 ["Component"]
  GETUPVAL R8 10
  GETTABLE R7 R8 R6
  JUMPIF R7 [+9]
  GETUPVAL R7 10
  LOADB R8 1
  SETTABLE R8 R7 R6
  GETUPVAL R8 11
  GETTABLEKS R7 R8 K11 ["error"]
  LOADK R8 K12 ["%s: It is not recommended to assign props directly to state because updates to props won't be reflected in state. In most cases, it is better to use props directly."]
  MOVE R9 R6
  CALL R7 2 0
  GETTABLEKS R7 R0 K13 ["mode"]
  GETUPVAL R8 12
  FASTCALL2 BIT32_BAND R7 R8 [+3]
  GETIMPORT R6 K16 [bit32.band]
  CALL R6 2 1
  JUMPIFEQKN R6 K17 [0] [+7]
  GETUPVAL R7 13
  GETTABLEKS R6 R7 K18 ["recordLegacyContextWarning"]
  MOVE R7 R0
  MOVE R8 R4
  CALL R6 2 0
  GETUPVAL R6 14
  JUMPIFNOT R6 [+6]
  GETUPVAL R7 13
  GETTABLEKS R6 R7 K19 ["recordUnsafeLifecycleWarnings"]
  MOVE R7 R0
  MOVE R8 R4
  CALL R6 2 0
  GETUPVAL R6 15
  MOVE R7 R0
  MOVE R8 R2
  MOVE R9 R4
  MOVE R10 R3
  CALL R6 4 0
  GETTABLEKS R6 R0 K2 ["memoizedState"]
  SETTABLEKS R6 R4 K3 ["state"]
  FASTCALL1 TYPE R1 [+3]
  MOVE R7 R1
  GETIMPORT R6 K6 [type]
  CALL R6 1 1
  LOADNIL R7
  FASTCALL1 TYPE R1 [+3]
  MOVE R9 R1
  GETIMPORT R8 K6 [type]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K7 ["table"] [+3]
  GETTABLEKS R7 R1 K20 ["getDerivedStateFromProps"]
  JUMPIFEQKNIL R7 [+18]
  FASTCALL1 TYPE R7 [+3]
  MOVE R9 R7
  GETIMPORT R8 K6 [type]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K21 ["function"] [+11]
  GETUPVAL R8 16
  MOVE R9 R0
  MOVE R10 R1
  MOVE R11 R7
  MOVE R12 R2
  CALL R8 4 0
  GETTABLEKS R8 R0 K2 ["memoizedState"]
  SETTABLEKS R8 R4 K3 ["state"]
  JUMPIFNOTEQKS R6 K7 ["table"] [+47]
  GETTABLEKS R9 R1 K20 ["getDerivedStateFromProps"]
  FASTCALL1 TYPE R9 [+2]
  GETIMPORT R8 K6 [type]
  CALL R8 1 1
  JUMPIFEQKS R8 K21 ["function"] [+39]
  GETTABLEKS R9 R4 K22 ["getSnapshotBeforeUpdate"]
  FASTCALL1 TYPE R9 [+2]
  GETIMPORT R8 K6 [type]
  CALL R8 1 1
  JUMPIFEQKS R8 K21 ["function"] [+31]
  GETTABLEKS R9 R4 K23 ["UNSAFE_componentWillMount"]
  FASTCALL1 TYPE R9 [+2]
  GETIMPORT R8 K6 [type]
  CALL R8 1 1
  JUMPIFEQKS R8 K21 ["function"] [+9]
  GETTABLEKS R9 R4 K24 ["componentWillMount"]
  FASTCALL1 TYPE R9 [+2]
  GETIMPORT R8 K6 [type]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K21 ["function"] [+15]
  GETUPVAL R8 17
  MOVE R9 R0
  MOVE R10 R4
  CALL R8 2 0
  GETUPVAL R8 15
  MOVE R9 R0
  MOVE R10 R2
  MOVE R11 R4
  MOVE R12 R3
  CALL R8 4 0
  GETTABLEKS R8 R0 K2 ["memoizedState"]
  SETTABLEKS R8 R4 K3 ["state"]
  GETTABLEKS R9 R4 K25 ["componentDidMount"]
  FASTCALL1 TYPE R9 [+2]
  GETIMPORT R8 K6 [type]
  CALL R8 1 1
  JUMPIFNOTEQKS R8 K21 ["function"] [+32]
  GETUPVAL R8 0
  JUMPIFNOT R8 [+19]
  GETUPVAL R8 18
  JUMPIFNOT R8 [+17]
  GETTABLEKS R9 R0 K26 ["flags"]
  GETUPVAL R11 19
  GETUPVAL R12 20
  FASTCALL2 BIT32_BOR R11 R12 [+3]
  GETIMPORT R10 K28 [bit32.bor]
  CALL R10 2 1
  FASTCALL2 BIT32_BOR R9 R10 [+3]
  GETIMPORT R8 K28 [bit32.bor]
  CALL R8 2 1
  SETTABLEKS R8 R0 K26 ["flags"]
  RETURN R0 0
  GETTABLEKS R9 R0 K26 ["flags"]
  GETUPVAL R10 20
  FASTCALL2 BIT32_BOR R9 R10 [+3]
  GETIMPORT R8 K28 [bit32.bor]
  CALL R8 2 1
  SETTABLEKS R8 R0 K26 ["flags"]
  RETURN R0 0

PROTO_15:
  GETTABLEKS R4 R0 K0 ["stateNode"]
  GETTABLEKS R5 R0 K1 ["memoizedProps"]
  SETTABLEKS R5 R4 K2 ["props"]
  GETTABLEKS R6 R4 K3 ["context"]
  GETTABLEKS R7 R1 K4 ["contextType"]
  GETUPVAL R8 0
  JUMPIFEQKNIL R7 [+13]
  FASTCALL1 TYPE R7 [+3]
  MOVE R10 R7
  GETIMPORT R9 K6 [type]
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
  FASTCALL1 TYPE R9 [+3]
  MOVE R12 R9
  GETIMPORT R11 K6 [type]
  CALL R11 1 1
  JUMPIFEQKS R11 K9 ["function"] [+11]
  GETTABLEKS R12 R4 K10 ["getSnapshotBeforeUpdate"]
  FASTCALL1 TYPE R12 [+2]
  GETIMPORT R11 K6 [type]
  CALL R11 1 1
  JUMPIFEQKS R11 K9 ["function"] [+2]
  LOADB R10 0 +1
  LOADB R10 1
  JUMPIF R10 [+27]
  GETTABLEKS R12 R4 K11 ["UNSAFE_componentWillReceiveProps"]
  FASTCALL1 TYPE R12 [+2]
  GETIMPORT R11 K6 [type]
  CALL R11 1 1
  JUMPIFEQKS R11 K9 ["function"] [+9]
  GETTABLEKS R12 R4 K12 ["componentWillReceiveProps"]
  FASTCALL1 TYPE R12 [+2]
  GETIMPORT R11 K6 [type]
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
  JUMPIFNOTEQ R5 R2 [+44]
  JUMPIFNOTEQ R11 R12 [+42]
  GETUPVAL R13 7
  CALL R13 0 1
  JUMPIF R13 [+38]
  GETUPVAL R13 8
  CALL R13 0 1
  JUMPIF R13 [+35]
  GETTABLEKS R14 R4 K16 ["componentDidMount"]
  FASTCALL1 TYPE R14 [+2]
  GETIMPORT R13 K6 [type]
  CALL R13 1 1
  JUMPIFNOTEQKS R13 K9 ["function"] [+26]
  GETUPVAL R13 9
  JUMPIFNOT R13 [+13]
  GETUPVAL R13 10
  JUMPIFNOT R13 [+11]
  GETTABLEKS R14 R0 K17 ["flags"]
  GETUPVAL R15 11
  GETUPVAL R16 12
  FASTCALL BIT32_BOR [+2]
  GETIMPORT R13 K20 [bit32.bor]
  CALL R13 3 1
  SETTABLEKS R13 R0 K17 ["flags"]
  JUMP [+10]
  GETTABLEKS R14 R0 K17 ["flags"]
  GETUPVAL R15 12
  FASTCALL2 BIT32_BOR R14 R15 [+3]
  GETIMPORT R13 K20 [bit32.bor]
  CALL R13 2 1
  SETTABLEKS R13 R0 K17 ["flags"]
  LOADB R13 0
  RETURN R13 1
  JUMPIFEQKNIL R9 [+16]
  FASTCALL1 TYPE R9 [+3]
  MOVE R14 R9
  GETIMPORT R13 K6 [type]
  CALL R13 1 1
  JUMPIFNOTEQKS R13 K9 ["function"] [+9]
  GETUPVAL R13 13
  MOVE R14 R0
  MOVE R15 R1
  MOVE R16 R9
  MOVE R17 R2
  CALL R13 4 0
  GETTABLEKS R12 R0 K14 ["memoizedState"]
  GETUPVAL R13 8
  CALL R13 0 1
  JUMPIF R13 [+10]
  GETGLOBAL R13 K21 ["checkShouldComponentUpdate"]
  MOVE R14 R0
  MOVE R15 R1
  MOVE R16 R5
  MOVE R17 R2
  MOVE R18 R11
  MOVE R19 R12
  MOVE R20 R8
  CALL R13 7 1
  JUMPIFNOT R13 [+73]
  JUMPIF R10 [+38]
  GETTABLEKS R15 R4 K22 ["UNSAFE_componentWillMount"]
  FASTCALL1 TYPE R15 [+2]
  GETIMPORT R14 K6 [type]
  CALL R14 1 1
  JUMPIFEQKS R14 K9 ["function"] [+9]
  GETTABLEKS R15 R4 K23 ["componentWillMount"]
  FASTCALL1 TYPE R15 [+2]
  GETIMPORT R14 K6 [type]
  CALL R14 1 1
  JUMPIFNOTEQKS R14 K9 ["function"] [+23]
  GETTABLEKS R15 R4 K23 ["componentWillMount"]
  FASTCALL1 TYPE R15 [+2]
  GETIMPORT R14 K6 [type]
  CALL R14 1 1
  JUMPIFNOTEQKS R14 K9 ["function"] [+4]
  NAMECALL R14 R4 K23 ["componentWillMount"]
  CALL R14 1 0
  GETTABLEKS R15 R4 K22 ["UNSAFE_componentWillMount"]
  FASTCALL1 TYPE R15 [+2]
  GETIMPORT R14 K6 [type]
  CALL R14 1 1
  JUMPIFNOTEQKS R14 K9 ["function"] [+4]
  NAMECALL R14 R4 K22 ["UNSAFE_componentWillMount"]
  CALL R14 1 0
  GETTABLEKS R15 R4 K16 ["componentDidMount"]
  FASTCALL1 TYPE R15 [+2]
  GETIMPORT R14 K6 [type]
  CALL R14 1 1
  JUMPIFNOTEQKS R14 K9 ["function"] [+64]
  GETUPVAL R14 9
  JUMPIFNOT R14 [+13]
  GETUPVAL R14 10
  JUMPIFNOT R14 [+11]
  GETTABLEKS R15 R0 K17 ["flags"]
  GETUPVAL R16 11
  GETUPVAL R17 12
  FASTCALL BIT32_BOR [+2]
  GETIMPORT R14 K20 [bit32.bor]
  CALL R14 3 1
  SETTABLEKS R14 R0 K17 ["flags"]
  JUMP [+48]
  GETTABLEKS R15 R0 K17 ["flags"]
  GETUPVAL R16 12
  FASTCALL2 BIT32_BOR R15 R16 [+3]
  GETIMPORT R14 K20 [bit32.bor]
  CALL R14 2 1
  SETTABLEKS R14 R0 K17 ["flags"]
  JUMP [+37]
  GETTABLEKS R15 R4 K16 ["componentDidMount"]
  FASTCALL1 TYPE R15 [+2]
  GETIMPORT R14 K6 [type]
  CALL R14 1 1
  JUMPIFNOTEQKS R14 K9 ["function"] [+26]
  GETUPVAL R14 9
  JUMPIFNOT R14 [+13]
  GETUPVAL R14 10
  JUMPIFNOT R14 [+11]
  GETTABLEKS R15 R0 K17 ["flags"]
  GETUPVAL R16 11
  GETUPVAL R17 12
  FASTCALL BIT32_BOR [+2]
  GETIMPORT R14 K20 [bit32.bor]
  CALL R14 3 1
  SETTABLEKS R14 R0 K17 ["flags"]
  JUMP [+10]
  GETTABLEKS R15 R0 K17 ["flags"]
  GETUPVAL R16 12
  FASTCALL2 BIT32_BOR R15 R16 [+3]
  GETIMPORT R14 K20 [bit32.bor]
  CALL R14 2 1
  SETTABLEKS R14 R0 K17 ["flags"]
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
  JUMP [+5]
  GETUPVAL R7 1
  GETTABLEKS R8 R1 K2 ["type"]
  MOVE R9 R6
  CALL R7 2 1
  SETTABLEKS R7 R5 K4 ["props"]
  GETTABLEKS R8 R1 K5 ["pendingProps"]
  GETTABLEKS R9 R5 K6 ["context"]
  LOADNIL R10
  LOADNIL R11
  FASTCALL1 TYPE R2 [+3]
  MOVE R13 R2
  GETIMPORT R12 K7 [type]
  CALL R12 1 1
  JUMPIFNOTEQKS R12 K8 ["table"] [+5]
  GETTABLEKS R10 R2 K9 ["contextType"]
  GETTABLEKS R11 R2 K10 ["getDerivedStateFromProps"]
  GETUPVAL R12 2
  FASTCALL1 TYPE R10 [+3]
  MOVE R14 R10
  GETIMPORT R13 K7 [type]
  CALL R13 1 1
  JUMPIFNOTEQKS R13 K8 ["table"] [+6]
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
  JUMPIFEQKNIL R11 [+9]
  LOADB R13 1
  FASTCALL1 TYPE R11 [+3]
  MOVE R15 R11
  GETIMPORT R14 K7 [type]
  CALL R14 1 1
  JUMPIFEQKS R14 K11 ["function"] [+16]
  LOADB R13 0
  GETTABLEKS R14 R5 K12 ["getSnapshotBeforeUpdate"]
  JUMPIFEQKNIL R14 [+11]
  GETTABLEKS R15 R5 K12 ["getSnapshotBeforeUpdate"]
  FASTCALL1 TYPE R15 [+2]
  GETIMPORT R14 K7 [type]
  CALL R14 1 1
  JUMPIFEQKS R14 K11 ["function"] [+2]
  LOADB R13 0 +1
  LOADB R13 1
  JUMPIF R13 [+35]
  GETTABLEKS R14 R5 K13 ["UNSAFE_componentWillReceiveProps"]
  JUMPIFEQKNIL R14 [+9]
  GETTABLEKS R15 R5 K13 ["UNSAFE_componentWillReceiveProps"]
  FASTCALL1 TYPE R15 [+2]
  GETIMPORT R14 K7 [type]
  CALL R14 1 1
  JUMPIFEQKS R14 K11 ["function"] [+13]
  GETTABLEKS R14 R5 K14 ["componentWillReceiveProps"]
  JUMPIFEQKNIL R14 [+20]
  GETTABLEKS R15 R5 K14 ["componentWillReceiveProps"]
  FASTCALL1 TYPE R15 [+2]
  GETIMPORT R14 K7 [type]
  CALL R14 1 1
  JUMPIFNOTEQKS R14 K11 ["function"] [+12]
  JUMPIFNOTEQ R6 R8 [+3]
  JUMPIFEQ R9 R12 [+8]
  GETGLOBAL R14 K15 ["callComponentWillReceiveProps"]
  MOVE R15 R1
  MOVE R16 R5
  MOVE R17 R3
  MOVE R18 R12
  CALL R14 4 0
  GETUPVAL R14 7
  CALL R14 0 0
  GETTABLEKS R14 R1 K16 ["memoizedState"]
  SETTABLEKS R14 R5 K17 ["state"]
  GETTABLEKS R15 R5 K17 ["state"]
  GETUPVAL R16 8
  MOVE R17 R1
  MOVE R18 R3
  MOVE R19 R5
  MOVE R20 R4
  CALL R16 4 0
  GETTABLEKS R15 R1 K16 ["memoizedState"]
  JUMPIFNOTEQ R6 R8 [+71]
  JUMPIFNOTEQ R14 R15 [+69]
  GETUPVAL R16 9
  CALL R16 0 1
  JUMPIF R16 [+65]
  GETUPVAL R16 10
  CALL R16 0 1
  JUMPIF R16 [+62]
  GETTABLEKS R16 R5 K18 ["componentDidUpdate"]
  JUMPIFEQKNIL R16 [+27]
  GETTABLEKS R17 R5 K18 ["componentDidUpdate"]
  FASTCALL1 TYPE R17 [+2]
  GETIMPORT R16 K7 [type]
  CALL R16 1 1
  JUMPIFNOTEQKS R16 K11 ["function"] [+19]
  GETTABLEKS R16 R0 K1 ["memoizedProps"]
  JUMPIFNOTEQ R6 R16 [+5]
  GETTABLEKS R16 R0 K16 ["memoizedState"]
  JUMPIFEQ R14 R16 [+11]
  GETTABLEKS R17 R1 K19 ["flags"]
  GETUPVAL R18 11
  FASTCALL2 BIT32_BOR R17 R18 [+3]
  GETIMPORT R16 K22 [bit32.bor]
  CALL R16 2 1
  SETTABLEKS R16 R1 K19 ["flags"]
  GETTABLEKS R16 R5 K12 ["getSnapshotBeforeUpdate"]
  JUMPIFEQKNIL R16 [+27]
  GETTABLEKS R17 R5 K12 ["getSnapshotBeforeUpdate"]
  FASTCALL1 TYPE R17 [+2]
  GETIMPORT R16 K7 [type]
  CALL R16 1 1
  JUMPIFNOTEQKS R16 K11 ["function"] [+19]
  GETTABLEKS R16 R0 K1 ["memoizedProps"]
  JUMPIFNOTEQ R6 R16 [+5]
  GETTABLEKS R16 R0 K16 ["memoizedState"]
  JUMPIFEQ R14 R16 [+11]
  GETTABLEKS R17 R1 K19 ["flags"]
  GETUPVAL R18 12
  FASTCALL2 BIT32_BOR R17 R18 [+3]
  GETIMPORT R16 K22 [bit32.bor]
  CALL R16 2 1
  SETTABLEKS R16 R1 K19 ["flags"]
  LOADB R16 0
  RETURN R16 1
  JUMPIFEQKNIL R11 [+16]
  FASTCALL1 TYPE R11 [+3]
  MOVE R17 R11
  GETIMPORT R16 K7 [type]
  CALL R16 1 1
  JUMPIFNOTEQKS R16 K11 ["function"] [+9]
  GETUPVAL R16 13
  MOVE R17 R1
  MOVE R18 R2
  MOVE R19 R11
  MOVE R20 R3
  CALL R16 4 0
  GETTABLEKS R15 R1 K16 ["memoizedState"]
  GETUPVAL R16 10
  CALL R16 0 1
  JUMPIF R16 [+10]
  GETGLOBAL R16 K23 ["checkShouldComponentUpdate"]
  MOVE R17 R1
  MOVE R18 R2
  MOVE R19 R7
  MOVE R20 R3
  MOVE R21 R14
  MOVE R22 R15
  MOVE R23 R12
  CALL R16 7 1
  JUMPIFNOT R16 [+106]
  JUMPIF R13 [+60]
  GETTABLEKS R17 R5 K24 ["UNSAFE_componentWillUpdate"]
  JUMPIFEQKNIL R17 [+9]
  GETTABLEKS R18 R5 K24 ["UNSAFE_componentWillUpdate"]
  FASTCALL1 TYPE R18 [+2]
  GETIMPORT R17 K7 [type]
  CALL R17 1 1
  JUMPIFEQKS R17 K11 ["function"] [+13]
  GETTABLEKS R17 R5 K25 ["componentWillUpdate"]
  JUMPIFEQKNIL R17 [+45]
  GETTABLEKS R18 R5 K25 ["componentWillUpdate"]
  FASTCALL1 TYPE R18 [+2]
  GETIMPORT R17 K7 [type]
  CALL R17 1 1
  JUMPIFNOTEQKS R17 K11 ["function"] [+37]
  GETTABLEKS R17 R5 K25 ["componentWillUpdate"]
  JUMPIFEQKNIL R17 [+15]
  GETTABLEKS R18 R5 K25 ["componentWillUpdate"]
  FASTCALL1 TYPE R18 [+2]
  GETIMPORT R17 K7 [type]
  CALL R17 1 1
  JUMPIFNOTEQKS R17 K11 ["function"] [+7]
  MOVE R19 R3
  MOVE R20 R15
  MOVE R21 R12
  NAMECALL R17 R5 K25 ["componentWillUpdate"]
  CALL R17 4 0
  GETTABLEKS R17 R5 K24 ["UNSAFE_componentWillUpdate"]
  JUMPIFEQKNIL R17 [+15]
  GETTABLEKS R18 R5 K24 ["UNSAFE_componentWillUpdate"]
  FASTCALL1 TYPE R18 [+2]
  GETIMPORT R17 K7 [type]
  CALL R17 1 1
  JUMPIFNOTEQKS R17 K11 ["function"] [+7]
  MOVE R19 R3
  MOVE R20 R15
  MOVE R21 R12
  NAMECALL R17 R5 K24 ["UNSAFE_componentWillUpdate"]
  CALL R17 4 0
  GETTABLEKS R17 R5 K18 ["componentDidUpdate"]
  JUMPIFEQKNIL R17 [+19]
  GETTABLEKS R18 R5 K18 ["componentDidUpdate"]
  FASTCALL1 TYPE R18 [+2]
  GETIMPORT R17 K7 [type]
  CALL R17 1 1
  JUMPIFNOTEQKS R17 K11 ["function"] [+11]
  GETTABLEKS R18 R1 K19 ["flags"]
  GETUPVAL R19 11
  FASTCALL2 BIT32_BOR R18 R19 [+3]
  GETIMPORT R17 K22 [bit32.bor]
  CALL R17 2 1
  SETTABLEKS R17 R1 K19 ["flags"]
  GETTABLEKS R17 R5 K12 ["getSnapshotBeforeUpdate"]
  JUMPIFEQKNIL R17 [+84]
  GETTABLEKS R18 R5 K12 ["getSnapshotBeforeUpdate"]
  FASTCALL1 TYPE R18 [+2]
  GETIMPORT R17 K7 [type]
  CALL R17 1 1
  JUMPIFNOTEQKS R17 K11 ["function"] [+76]
  GETTABLEKS R18 R1 K19 ["flags"]
  GETUPVAL R19 12
  FASTCALL2 BIT32_BOR R18 R19 [+3]
  GETIMPORT R17 K22 [bit32.bor]
  CALL R17 2 1
  SETTABLEKS R17 R1 K19 ["flags"]
  JUMP [+64]
  GETTABLEKS R17 R5 K18 ["componentDidUpdate"]
  JUMPIFEQKNIL R17 [+27]
  GETTABLEKS R18 R5 K18 ["componentDidUpdate"]
  FASTCALL1 TYPE R18 [+2]
  GETIMPORT R17 K7 [type]
  CALL R17 1 1
  JUMPIFNOTEQKS R17 K11 ["function"] [+19]
  GETTABLEKS R17 R0 K1 ["memoizedProps"]
  JUMPIFNOTEQ R6 R17 [+5]
  GETTABLEKS R17 R0 K16 ["memoizedState"]
  JUMPIFEQ R14 R17 [+11]
  GETTABLEKS R18 R1 K19 ["flags"]
  GETUPVAL R19 11
  FASTCALL2 BIT32_BOR R18 R19 [+3]
  GETIMPORT R17 K22 [bit32.bor]
  CALL R17 2 1
  SETTABLEKS R17 R1 K19 ["flags"]
  GETTABLEKS R17 R5 K12 ["getSnapshotBeforeUpdate"]
  JUMPIFEQKNIL R17 [+27]
  GETTABLEKS R18 R5 K12 ["getSnapshotBeforeUpdate"]
  FASTCALL1 TYPE R18 [+2]
  GETIMPORT R17 K7 [type]
  CALL R17 1 1
  JUMPIFNOTEQKS R17 K11 ["function"] [+19]
  GETTABLEKS R17 R0 K1 ["memoizedProps"]
  JUMPIFNOTEQ R6 R17 [+5]
  GETTABLEKS R17 R0 K16 ["memoizedState"]
  JUMPIFEQ R14 R17 [+11]
  GETTABLEKS R18 R1 K19 ["flags"]
  GETUPVAL R19 12
  FASTCALL2 BIT32_BOR R18 R19 [+3]
  GETIMPORT R17 K22 [bit32.bor]
  CALL R17 2 1
  SETTABLEKS R17 R1 K19 ["flags"]
  SETTABLEKS R3 R1 K1 ["memoizedProps"]
  SETTABLEKS R15 R1 K16 ["memoizedState"]
  SETTABLEKS R3 R5 K4 ["props"]
  SETTABLEKS R15 R5 K17 ["state"]
  SETTABLEKS R12 R5 K6 ["context"]
  RETURN R16 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [_G]
  GETTABLEKS R0 R1 K2 ["__DEV__"]
  GETIMPORT R3 K4 [script]
  GETTABLEKS R2 R3 K5 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Parent"]
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["LuauPolyfill"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Object"]
  GETIMPORT R5 K7 [require]
  GETTABLEKS R6 R1 K10 ["Shared"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K11 ["console"]
  GETIMPORT R5 K7 [require]
  GETIMPORT R8 K4 [script]
  GETTABLEKS R7 R8 K5 ["Parent"]
  GETTABLEKS R6 R7 K12 ["ReactInternalTypes"]
  CALL R5 1 1
  GETIMPORT R6 K7 [require]
  GETIMPORT R9 K4 [script]
  GETTABLEKS R8 R9 K5 ["Parent"]
  GETTABLEKS R7 R8 K13 ["ReactFiberLane"]
  CALL R6 1 1
  GETIMPORT R7 K7 [require]
  GETIMPORT R10 K4 [script]
  GETTABLEKS R9 R10 K5 ["Parent"]
  GETTABLEKS R8 R9 K14 ["ReactUpdateQueue.new"]
  CALL R7 1 1
  GETIMPORT R8 K7 [require]
  GETTABLEKS R9 R1 K10 ["Shared"]
  CALL R8 1 1
  GETIMPORT R9 K7 [require]
  GETTABLEKS R10 R1 K15 ["React"]
  CALL R9 1 1
  GETIMPORT R10 K7 [require]
  GETIMPORT R13 K4 [script]
  GETTABLEKS R12 R13 K5 ["Parent"]
  GETTABLEKS R11 R12 K16 ["ReactFiberFlags"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K17 ["Update"]
  GETTABLEKS R12 R10 K18 ["Snapshot"]
  GETTABLEKS R13 R10 K19 ["MountLayoutDev"]
  GETIMPORT R15 K7 [require]
  GETTABLEKS R16 R1 K10 ["Shared"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K20 ["ReactFeatureFlags"]
  GETTABLEKS R15 R14 K21 ["debugRenderPhaseSideEffectsForStrictMode"]
  GETTABLEKS R16 R14 K22 ["disableLegacyContext"]
  GETTABLEKS R17 R14 K23 ["enableDebugTracing"]
  GETTABLEKS R18 R14 K24 ["enableSchedulingProfiler"]
  GETTABLEKS R19 R14 K25 ["warnAboutDeprecatedLifecycles"]
  GETTABLEKS R20 R14 K26 ["enableDoubleInvokingEffects"]
  GETIMPORT R21 K7 [require]
  GETIMPORT R24 K4 [script]
  GETTABLEKS R23 R24 K5 ["Parent"]
  GETTABLEKS R22 R23 K27 ["ReactStrictModeWarnings.new"]
  CALL R21 1 1
  GETIMPORT R23 K7 [require]
  GETIMPORT R26 K4 [script]
  GETTABLEKS R25 R26 K5 ["Parent"]
  GETTABLEKS R24 R25 K28 ["ReactFiberTreeReflection"]
  CALL R23 1 1
  GETTABLEKS R22 R23 K29 ["isMounted"]
  GETIMPORT R24 K7 [require]
  GETTABLEKS R25 R1 K10 ["Shared"]
  CALL R24 1 1
  GETTABLEKS R23 R24 K30 ["ReactInstanceMap"]
  GETTABLEKS R24 R23 K31 ["get"]
  GETTABLEKS R25 R23 K32 ["set"]
  GETIMPORT R27 K7 [require]
  GETTABLEKS R28 R1 K10 ["Shared"]
  CALL R27 1 1
  GETTABLEKS R26 R27 K33 ["shallowEqual"]
  GETIMPORT R28 K7 [require]
  GETTABLEKS R29 R1 K10 ["Shared"]
  CALL R28 1 1
  GETTABLEKS R27 R28 K34 ["getComponentName"]
  GETIMPORT R29 K7 [require]
  GETTABLEKS R30 R1 K10 ["Shared"]
  CALL R29 1 1
  GETTABLEKS R28 R29 K35 ["UninitializedState"]
  GETIMPORT R30 K7 [require]
  GETTABLEKS R31 R1 K10 ["Shared"]
  CALL R30 1 1
  GETTABLEKS R29 R30 K36 ["describeError"]
  GETIMPORT R31 K7 [require]
  GETTABLEKS R32 R1 K10 ["Shared"]
  CALL R31 1 1
  GETTABLEKS R30 R31 K37 ["ReactSymbols"]
  GETTABLEKS R31 R30 K38 ["REACT_CONTEXT_TYPE"]
  GETTABLEKS R32 R30 K39 ["REACT_PROVIDER_TYPE"]
  GETIMPORT R34 K7 [require]
  GETIMPORT R37 K4 [script]
  GETTABLEKS R36 R37 K5 ["Parent"]
  GETTABLEKS R35 R36 K40 ["ReactFiberLazyComponent.new"]
  CALL R34 1 1
  GETTABLEKS R33 R34 K41 ["resolveDefaultProps"]
  GETIMPORT R34 K7 [require]
  GETIMPORT R37 K4 [script]
  GETTABLEKS R36 R37 K5 ["Parent"]
  GETTABLEKS R35 R36 K42 ["ReactTypeOfMode"]
  CALL R34 1 1
  GETTABLEKS R35 R34 K43 ["DebugTracingMode"]
  GETTABLEKS R36 R34 K44 ["StrictMode"]
  GETTABLEKS R37 R7 K45 ["enqueueUpdate"]
  GETTABLEKS R38 R7 K46 ["processUpdateQueue"]
  GETTABLEKS R39 R7 K47 ["checkHasForceUpdateAfterProcessing"]
  GETTABLEKS R40 R7 K48 ["resetHasForceUpdateBeforeProcessing"]
  GETTABLEKS R41 R7 K49 ["createUpdate"]
  GETTABLEKS R42 R7 K50 ["ReplaceState"]
  GETTABLEKS R43 R7 K51 ["ForceUpdate"]
  GETTABLEKS R44 R7 K52 ["initializeUpdateQueue"]
  GETTABLEKS R45 R7 K53 ["cloneUpdateQueue"]
  GETTABLEKS R46 R6 K54 ["NoLanes"]
  GETIMPORT R47 K7 [require]
  GETIMPORT R50 K4 [script]
  GETTABLEKS R49 R50 K5 ["Parent"]
  GETTABLEKS R48 R49 K55 ["ReactFiberContext.new"]
  CALL R47 1 1
  GETTABLEKS R48 R47 K56 ["cacheContext"]
  GETTABLEKS R49 R47 K57 ["getMaskedContext"]
  GETTABLEKS R50 R47 K58 ["getUnmaskedContext"]
  GETTABLEKS R51 R47 K59 ["hasContextChanged"]
  GETTABLEKS R52 R47 K60 ["emptyContextObject"]
  GETIMPORT R53 K7 [require]
  GETIMPORT R56 K4 [script]
  GETTABLEKS R55 R56 K5 ["Parent"]
  GETTABLEKS R54 R55 K61 ["ReactFiberNewContext.new"]
  CALL R53 1 1
  GETTABLEKS R54 R53 K62 ["readContext"]
  GETIMPORT R55 K7 [require]
  GETIMPORT R58 K4 [script]
  GETTABLEKS R57 R58 K5 ["Parent"]
  GETTABLEKS R56 R57 K63 ["DebugTracing"]
  CALL R55 1 1
  GETTABLEKS R56 R55 K64 ["logForceUpdateScheduled"]
  GETTABLEKS R57 R55 K65 ["logStateUpdateScheduled"]
  GETIMPORT R59 K7 [require]
  GETTABLEKS R60 R1 K10 ["Shared"]
  CALL R59 1 1
  GETTABLEKS R58 R59 K66 ["ConsolePatchingDev"]
  GETTABLEKS R59 R58 K67 ["disableLogs"]
  GETTABLEKS R60 R58 K68 ["reenableLogs"]
  GETIMPORT R61 K7 [require]
  GETIMPORT R64 K4 [script]
  GETTABLEKS R63 R64 K5 ["Parent"]
  GETTABLEKS R62 R63 K69 ["SchedulingProfiler"]
  CALL R61 1 1
  GETTABLEKS R62 R61 K70 ["markForceUpdateScheduled"]
  GETTABLEKS R63 R61 K71 ["markStateUpdateScheduled"]
  NEWTABLE R64 0 0
  GETTABLEKS R66 R9 K72 ["Component"]
  LOADK R68 K73 [""]
  NAMECALL R66 R66 K74 ["extend"]
  CALL R66 2 1
  GETTABLEKS R65 R66 K75 ["__refs"]
  LOADNIL R66
  LOADNIL R67
  LOADNIL R68
  LOADNIL R69
  LOADNIL R70
  LOADNIL R71
  LOADNIL R72
  LOADNIL R73
  LOADNIL R74
  LOADNIL R75
  JUMPIFNOT R0 [+22]
  NEWTABLE R66 0 0
  NEWTABLE R67 0 0
  NEWTABLE R68 0 0
  NEWTABLE R69 0 0
  NEWTABLE R73 0 0
  NEWTABLE R70 0 0
  NEWTABLE R74 0 0
  NEWTABLE R75 0 0
  NEWTABLE R76 0 0
  DUPCLOSURE R72 K76 [PROTO_0]
  CAPTURE VAL R76
  CAPTURE VAL R4
  DUPCLOSURE R71 K77 [PROTO_1]
  NEWCLOSURE R76 P2
  CAPTURE VAL R0
  CAPTURE VAL R15
  CAPTURE VAL R36
  CAPTURE VAL R59
  CAPTURE VAL R29
  CAPTURE VAL R60
  CAPTURE REF R71
  CAPTURE VAL R3
  CAPTURE VAL R46
  LOADNIL R77
  NEWCLOSURE R78 P3
  CAPTURE REF R77
  CAPTURE VAL R22
  CAPTURE VAL R24
  CAPTURE VAL R41
  CAPTURE VAL R0
  CAPTURE REF R72
  CAPTURE VAL R37
  CAPTURE VAL R17
  CAPTURE VAL R35
  CAPTURE VAL R27
  CAPTURE VAL R57
  CAPTURE VAL R18
  CAPTURE VAL R63
  CAPTURE VAL R42
  CAPTURE VAL R43
  CAPTURE VAL R56
  CAPTURE VAL R62
  NEWCLOSURE R79 P4
  CAPTURE REF R77
  CAPTURE VAL R78
  DUPCLOSURE R80 K78 [PROTO_8]
  CAPTURE VAL R0
  CAPTURE VAL R15
  CAPTURE VAL R36
  CAPTURE VAL R59
  CAPTURE VAL R29
  CAPTURE VAL R60
  CAPTURE VAL R4
  CAPTURE VAL R27
  CAPTURE VAL R26
  SETGLOBAL R80 K79 ["checkShouldComponentUpdate"]
  NEWCLOSURE R80 P6
  CAPTURE VAL R0
  CAPTURE VAL R27
  CAPTURE VAL R4
  CAPTURE VAL R16
  CAPTURE REF R74
  CAPTURE REF R68
  NEWCLOSURE R81 P7
  CAPTURE REF R77
  CAPTURE VAL R78
  CAPTURE VAL R25
  CAPTURE VAL R0
  CAPTURE VAL R64
  NEWCLOSURE R82 P8
  CAPTURE VAL R52
  CAPTURE VAL R0
  CAPTURE VAL R31
  CAPTURE REF R75
  CAPTURE VAL R32
  CAPTURE VAL R4
  CAPTURE VAL R27
  CAPTURE VAL R54
  CAPTURE VAL R16
  CAPTURE VAL R50
  CAPTURE VAL R49
  CAPTURE VAL R15
  CAPTURE VAL R36
  CAPTURE VAL R59
  CAPTURE VAL R29
  CAPTURE VAL R60
  CAPTURE REF R77
  CAPTURE VAL R78
  CAPTURE VAL R25
  CAPTURE VAL R64
  CAPTURE VAL R28
  CAPTURE REF R67
  CAPTURE REF R69
  CAPTURE VAL R48
  NEWCLOSURE R83 P9
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE VAL R27
  CAPTURE REF R77
  CAPTURE VAL R78
  NEWCLOSURE R84 P10
  CAPTURE VAL R0
  CAPTURE VAL R27
  CAPTURE REF R66
  CAPTURE VAL R4
  CAPTURE REF R77
  CAPTURE VAL R78
  SETGLOBAL R84 K80 ["callComponentWillReceiveProps"]
  NEWCLOSURE R84 P11
  CAPTURE VAL R0
  CAPTURE VAL R80
  CAPTURE VAL R65
  CAPTURE VAL R44
  CAPTURE VAL R54
  CAPTURE VAL R16
  CAPTURE VAL R52
  CAPTURE VAL R50
  CAPTURE VAL R49
  CAPTURE VAL R27
  CAPTURE REF R73
  CAPTURE VAL R4
  CAPTURE VAL R36
  CAPTURE VAL R21
  CAPTURE VAL R19
  CAPTURE VAL R38
  CAPTURE VAL R76
  CAPTURE VAL R83
  CAPTURE VAL R20
  CAPTURE VAL R13
  CAPTURE VAL R11
  DUPCLOSURE R85 K81 [PROTO_15]
  CAPTURE VAL R52
  CAPTURE VAL R54
  CAPTURE VAL R16
  CAPTURE VAL R50
  CAPTURE VAL R49
  CAPTURE VAL R40
  CAPTURE VAL R38
  CAPTURE VAL R51
  CAPTURE VAL R39
  CAPTURE VAL R0
  CAPTURE VAL R20
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R76
  SETGLOBAL R85 K82 ["resumeMountClassInstance"]
  DUPCLOSURE R85 K83 [PROTO_16]
  CAPTURE VAL R45
  CAPTURE VAL R33
  CAPTURE VAL R52
  CAPTURE VAL R54
  CAPTURE VAL R16
  CAPTURE VAL R50
  CAPTURE VAL R49
  CAPTURE VAL R40
  CAPTURE VAL R38
  CAPTURE VAL R51
  CAPTURE VAL R39
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R76
  DUPTABLE R86 K90 [{"adoptClassInstance", "constructClassInstance", "mountClassInstance", "resumeMountClassInstance", "updateClassInstance", "applyDerivedStateFromProps", "emptyRefsObject"}]
  SETTABLEKS R81 R86 K84 ["adoptClassInstance"]
  SETTABLEKS R82 R86 K85 ["constructClassInstance"]
  SETTABLEKS R84 R86 K86 ["mountClassInstance"]
  GETGLOBAL R87 K82 ["resumeMountClassInstance"]
  SETTABLEKS R87 R86 K82 ["resumeMountClassInstance"]
  SETTABLEKS R85 R86 K87 ["updateClassInstance"]
  SETTABLEKS R76 R86 K88 ["applyDerivedStateFromProps"]
  SETTABLEKS R65 R86 K89 ["emptyRefsObject"]
  CLOSEUPVALS R66
  RETURN R86 1
