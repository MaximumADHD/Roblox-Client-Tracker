PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setMenuVisible"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["menuVisible"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["setMenuVisible"]
  LOADB R4 0
  CALL R3 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["trayVisible"]
  JUMPIF R0 [+5]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["setMenuVisible"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useContext"]
  GETUPVAL R3 2
  CALL R2 1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["useContext"]
  GETUPVAL R4 3
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["useCallback"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R3
  NEWTABLE R6 0 1
  MOVE R7 R3
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K2 ["useCallback"]
  NEWCLOSURE R6 P1
  CAPTURE VAL R3
  NEWTABLE R7 0 0
  CALL R5 2 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["useEffect"]
  NEWCLOSURE R7 P2
  CAPTURE VAL R2
  CAPTURE VAL R3
  NEWTABLE R8 0 1
  GETTABLEKS R9 R2 K4 ["trayVisible"]
  SETLIST R8 R9 1 [1]
  CALL R6 2 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["createElement"]
  LOADK R7 K6 ["Frame"]
  NEWTABLE R8 2 0
  GETTABLEKS R9 R0 K7 ["LayoutOrder"]
  SETTABLEKS R9 R8 K7 ["LayoutOrder"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K8 ["Tag"]
  LOADK R10 K9 ["Component-NotificationHeader"]
  SETTABLE R10 R8 R9
  DUPTABLE R9 K13 [{"Title", "MoreOptionsFrame", "DropdownMenu"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K5 ["createElement"]
  LOADK R11 K14 ["TextLabel"]
  DUPTABLE R12 K16 [{"Text"}]
  LOADK R15 K17 ["Plugin"]
  LOADK R16 K18 ["Name"]
  NAMECALL R13 R1 K19 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K15 ["Text"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K10 ["Title"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K5 ["createElement"]
  LOADK R11 K6 ["Frame"]
  NEWTABLE R12 0 0
  DUPTABLE R13 K21 [{"MoreOptionsButton"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K5 ["createElement"]
  LOADK R15 K22 ["ImageButton"]
  NEWTABLE R16 4 0
  LOADB R17 0
  SETTABLEKS R17 R16 K23 ["AutoButtonColor"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K24 ["Event"]
  GETTABLEKS R17 R18 K25 ["MouseButton1Click"]
  SETTABLE R4 R16 R17
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K8 ["Tag"]
  LOADK R18 K26 ["Plugin-Icon-ThreeDots"]
  SETTABLE R18 R16 R17
  CALL R14 2 1
  SETTABLEKS R14 R13 K20 ["MoreOptionsButton"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K11 ["MoreOptionsFrame"]
  GETTABLEKS R11 R3 K27 ["menuVisible"]
  JUMPIFNOT R11 [+9]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K29 [{"OnDropdownMenuFocusLost"}]
  SETTABLEKS R5 R12 K28 ["OnDropdownMenuFocusLost"]
  CALL R10 2 1
  JUMP [+1]
  LOADNIL R10
  SETTABLEKS R10 R9 K12 ["DropdownMenu"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["ContextServices"]
  GETTABLEKS R3 R4 K9 ["Localization"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K10 ["Src"]
  GETTABLEKS R6 R7 K11 ["Contexts"]
  GETTABLEKS R5 R6 K12 ["TrayVisibleContext"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Contexts"]
  GETTABLEKS R6 R7 K13 ["MenuVisibleContext"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K2 ["Parent"]
  GETTABLEKS R7 R8 K14 ["NotificationMenu"]
  CALL R6 1 1
  DUPCLOSURE R7 K15 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R7 1
