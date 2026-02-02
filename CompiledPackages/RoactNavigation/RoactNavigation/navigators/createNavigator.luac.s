PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["screenProps"]
  DUPTABLE R2 K3 [{"descriptors", "screenProps"}]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K2 ["descriptors"]
  SETTABLEKS R1 R2 K1 ["screenProps"]
  SETTABLEKS R2 R0 K4 ["state"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getComponentForRouteName"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["routeName"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_2:
  GETTABLEKS R2 R1 K0 ["descriptors"]
  GETTABLEKS R3 R0 K1 ["navigation"]
  GETTABLEKS R4 R0 K2 ["screenProps"]
  GETUPVAL R5 0
  JUMPIFNOTEQKNIL R3 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  LOADK R7 K3 ["The navigation prop is missing for this navigator"]
  CALL R5 2 0
  GETTABLEKS R6 R3 K4 ["state"]
  GETTABLEKS R5 R6 K5 ["routes"]
  GETUPVAL R6 0
  FASTCALL1 TYPE R5 [+3]
  MOVE R9 R5
  GETIMPORT R8 K7 [type]
  CALL R8 1 1
  JUMPIFEQKS R8 K8 ["table"] [+2]
  LOADB R7 0 +1
  LOADB R7 1
  LOADK R8 K9 ["No 'routes' found in navigation state. Don't try to pass the navigation prop from a Roact component to a Navigator child."]
  CALL R6 2 0
  NEWTABLE R6 0 0
  GETIMPORT R7 K11 [ipairs]
  MOVE R8 R5
  CALL R7 1 3
  FORGPREP_INEXT R7
  JUMPIFNOT R2 [+22]
  GETTABLEKS R13 R11 K12 ["key"]
  GETTABLE R12 R2 R13
  JUMPIFNOT R12 [+18]
  GETTABLEKS R14 R11 K12 ["key"]
  GETTABLE R13 R2 R14
  GETTABLEKS R12 R13 K4 ["state"]
  JUMPIFNOTEQ R11 R12 [+12]
  GETTABLEKS R12 R1 K2 ["screenProps"]
  JUMPIFNOTEQ R4 R12 [+8]
  GETTABLEKS R12 R11 K12 ["key"]
  GETTABLEKS R14 R11 K12 ["key"]
  GETTABLE R13 R2 R14
  SETTABLE R13 R6 R12
  JUMP [+30]
  NEWCLOSURE R12 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R11
  GETTABLEKS R13 R3 K13 ["getChildNavigation"]
  GETTABLEKS R14 R11 K12 ["key"]
  CALL R13 1 1
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K14 ["getScreenOptions"]
  MOVE R15 R13
  MOVE R16 R4
  CALL R14 2 1
  GETTABLEKS R15 R11 K12 ["key"]
  DUPTABLE R16 K17 [{"key", "getComponent", "options", "state", "navigation"}]
  GETTABLEKS R17 R11 K12 ["key"]
  SETTABLEKS R17 R16 K12 ["key"]
  SETTABLEKS R12 R16 K15 ["getComponent"]
  SETTABLEKS R14 R16 K16 ["options"]
  SETTABLEKS R11 R16 K4 ["state"]
  SETTABLEKS R13 R16 K1 ["navigation"]
  SETTABLE R16 R6 R15
  FORGLOOP R7 2 [inext] [-54]
  DUPTABLE R7 K18 [{"descriptors", "screenProps"}]
  SETTABLEKS R6 R7 K0 ["descriptors"]
  SETTABLEKS R4 R7 K2 ["screenProps"]
  RETURN R7 1

PROTO_3:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["navigation"]
  GETTABLEKS R3 R0 K2 ["state"]
  GETTABLEKS R2 R3 K3 ["screenProps"]
  GETTABLEKS R4 R0 K2 ["state"]
  GETTABLEKS R3 R4 K4 ["descriptors"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["createElement"]
  GETUPVAL R5 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K6 ["Dictionary"]
  GETTABLEKS R6 R7 K7 ["join"]
  GETTABLEKS R7 R0 K0 ["props"]
  DUPTABLE R8 K9 [{"screenProps", "navigation", "navigationConfig", "descriptors"}]
  SETTABLEKS R2 R8 K3 ["screenProps"]
  SETTABLEKS R1 R8 K1 ["navigation"]
  GETUPVAL R9 3
  SETTABLEKS R9 R8 K8 ["navigationConfig"]
  SETTABLEKS R3 R8 K4 ["descriptors"]
  CALL R6 2 -1
  CALL R4 -1 -1
  RETURN R4 -1

PROTO_4:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Component"]
  LOADK R5 K1 ["Navigator"]
  NAMECALL R3 R3 K2 ["extend"]
  CALL R3 2 1
  SETTABLEKS R1 R3 K3 ["router"]
  GETTABLEKS R4 R2 K4 ["navigationOptions"]
  SETTABLEKS R4 R3 K4 ["navigationOptions"]
  DUPCLOSURE R4 K5 [PROTO_0]
  SETTABLEKS R4 R3 K6 ["init"]
  NEWCLOSURE R4 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K7 ["getDerivedStateFromProps"]
  NEWCLOSURE R4 P2
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K8 ["render"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K5 ["Roact"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K7 ["utils"]
  GETTABLEKS R3 R4 K8 ["validate"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_4]
  CAPTURE VAL R0
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1
