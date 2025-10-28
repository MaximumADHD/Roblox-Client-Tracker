PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["typeChecks"]
  JUMPIFNOT R3 [+46]
  JUMPIFNOTEQKNIL R0 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K1 [+4]
  LOADK R5 K1 ["`component` is required"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  LOADB R4 1
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R6 R1
  GETIMPORT R5 K5 [typeof]
  CALL R5 1 1
  JUMPIFEQKS R5 K6 ["table"] [+5]
  JUMPIFEQKNIL R1 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K7 [+4]
  LOADK R5 K7 ["`props` must be a table or nil"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  LOADB R4 1
  FASTCALL1 TYPEOF R2 [+3]
  MOVE R6 R2
  GETIMPORT R5 K5 [typeof]
  CALL R5 1 1
  JUMPIFEQKS R5 K6 ["table"] [+5]
  JUMPIFEQKNIL R2 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  FASTCALL2K ASSERT R4 K8 [+4]
  LOADK R5 K8 ["`children` must be a table or nil"]
  GETIMPORT R3 K3 [assert]
  CALL R3 2 0
  JUMPIFNOTEQKNIL R1 [+3]
  NEWTABLE R1 0 0
  JUMPIFEQKNIL R2 [+12]
  GETUPVAL R4 1
  GETTABLE R3 R1 R4
  JUMPIFEQKNIL R3 [+6]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K9 ["warnOnce"]
  LOADK R4 K10 ["The prop `Roact.Children` was defined but was overridden by the third parameter to createElement!
This can happen when a component passes props through to a child element but also uses the `children` argument:

	Roact.createElement(\"Frame\", passedProps, {
		child = ...
	})

Instead, consider using a utility function to merge tables of children together:

	local children = mergeTables(passedProps[Roact.Children], {
		child = ...
	})

	local fullProps = mergeTables(passedProps, {
		[Roact.Children] = children
	})

	Roact.createElement(\"Frame\", fullProps)"]
  CALL R3 1 0
  GETUPVAL R3 1
  SETTABLE R2 R1 R3
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K11 ["fromComponent"]
  MOVE R4 R0
  CALL R3 1 1
  NEWTABLE R4 4 0
  GETUPVAL R5 4
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K12 ["Element"]
  SETTABLE R6 R4 R5
  GETUPVAL R5 3
  SETTABLE R3 R4 R5
  SETTABLEKS R0 R4 K13 ["component"]
  SETTABLEKS R1 R4 K14 ["props"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K15 ["elementTracing"]
  JUMPIFNOT R5 [+11]
  GETIMPORT R5 K18 [debug.traceback]
  LOADK R6 K19 [""]
  LOADN R7 2
  CALL R5 2 1
  LOADN R7 2
  NAMECALL R5 R5 K20 ["sub"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K21 ["source"]
  RETURN R4 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K5 ["PropMarkers"]
  GETTABLEKS R1 R2 K6 ["Children"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R4 K3 [script]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K7 ["ElementKind"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Logging"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K9 ["Type"]
  CALL R3 1 1
  GETIMPORT R5 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K4 ["Parent"]
  GETTABLEKS R6 R7 K10 ["GlobalConfig"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K11 ["get"]
  CALL R4 0 1
  DUPCLOSURE R5 K12 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R5 1
