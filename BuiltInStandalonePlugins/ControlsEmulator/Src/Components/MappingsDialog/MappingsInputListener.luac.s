PROTO_0:
  GETTABLEKS R1 R0 K0 ["UserInputType"]
  GETIMPORT R2 K3 [Enum.UserInputType.Keyboard]
  JUMPIFNOTEQ R1 R2 [+13]
  GETUPVAL R1 0
  JUMPIFNOT R1 [+10]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+8]
  GETUPVAL R1 1
  NEWTABLE R2 0 1
  GETTABLEKS R3 R0 K4 ["KeyCode"]
  SETLIST R2 R3 1 [1]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  NAMECALL R0 R0 K1 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["InputBegan"]
  JUMPIFNOT R0 [+20]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["InputChanged"]
  JUMPIFNOT R0 [+16]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K2 ["InputEnded"]
  JUMPIFNOT R0 [+12]
  GETUPVAL R0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["InputEnded"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  NAMECALL R1 R1 K3 ["Connect"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K4 ["current"]
  NEWCLOSURE R0 P1
  CAPTURE UPVAL U1
  RETURN R0 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useRef"]
  LOADNIL R2
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useContext"]
  GETUPVAL R3 1
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["useContext"]
  GETUPVAL R4 2
  CALL R3 1 1
  GETTABLEKS R4 R3 K2 ["isUpdatingMappingForKey"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["useContext"]
  GETUPVAL R7 3
  CALL R6 1 1
  GETTABLEKS R5 R6 K3 ["setMapping"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["useEffect"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R5
  NEWTABLE R8 0 3
  MOVE R9 R2
  MOVE R10 R4
  MOVE R11 R5
  SETLIST R8 R9 3 [1]
  CALL R6 2 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["createElement"]
  LOADK R7 K6 ["Frame"]
  NEWTABLE R8 1 0
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K7 ["Tag"]
  LOADK R10 K8 ["Component-MappingsDialog data-testid=Component-MappingsDialog"]
  SETTABLE R10 R8 R9
  GETTABLEKS R9 R0 K9 ["children"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ControlsEmulator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["RootContainerInputContext"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Util"]
  GETTABLEKS R5 R6 K12 ["MappingsContext"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K10 ["Util"]
  GETTABLEKS R6 R7 K13 ["MappingsActionsContext"]
  CALL R5 1 1
  DUPCLOSURE R6 K14 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  RETURN R6 1
