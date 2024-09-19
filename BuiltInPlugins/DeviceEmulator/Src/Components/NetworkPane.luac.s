PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"incomingReplicationLag"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["IncomingReplicationLag"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K4 [tostring]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["incomingReplicationLag"]
  NAMECALL R0 R0 K5 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  DUPTABLE R2 K1 [{"incomingReplicationLag"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["IncomingReplicationLag"]
  FASTCALL1 TOSTRING R4 [+2]
  GETIMPORT R3 K4 [tostring]
  CALL R3 1 1
  SETTABLEKS R3 R2 K0 ["incomingReplicationLag"]
  SETTABLEKS R2 R0 K5 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  GETUPVAL R3 1
  MOVE R5 R2
  NAMECALL R3 R3 K6 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K7 ["incomingReplicationLagChangedConnection"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["incomingReplicationLagChangedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  LOADB R1 1
  JUMPIFEQKS R0 K0 [""] [+10]
  FASTCALL1 TONUMBER R0 [+3]
  MOVE R3 R0
  GETIMPORT R2 K2 [tonumber]
  CALL R2 1 1
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  LOADNIL R2
  JUMPIF R1 [+7]
  GETUPVAL R3 0
  LOADK R5 K3 ["NetworkSettings"]
  LOADK R6 K4 ["NetworkReplicationLagNotNumberError"]
  NAMECALL R3 R3 K5 ["getText"]
  CALL R3 3 1
  MOVE R2 R3
  RETURN R1 2

PROTO_4:
  FASTCALL1 STRING_LEN R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K2 [string.len]
  CALL R1 1 1
  LOADN R2 5
  JUMPIFNOTLT R2 R1 [+10]
  LOADN R3 1
  LOADN R4 5
  FASTCALL3 STRING_SUB R0 R3 R4
  MOVE R2 R0
  GETIMPORT R1 K4 [string.sub]
  CALL R1 3 1
  RETURN R1 1
  RETURN R0 1

PROTO_5:
  GETUPVAL R1 0
  ORK R3 R0 K0 [0]
  FASTCALL1 TONUMBER R3 [+2]
  GETIMPORT R2 K2 [tonumber]
  CALL R2 1 1
  SETTABLEKS R2 R1 K3 ["IncomingReplicationLag"]
  GETUPVAL R1 1
  DUPTABLE R3 K5 [{"incomingReplicationLag"}]
  SETTABLEKS R0 R3 K4 ["incomingReplicationLag"]
  NAMECALL R1 R1 K6 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["createElement"]
  GETUPVAL R5 1
  DUPTABLE R6 K9 [{"AutomaticSize", "HorizontalAlignment", "Layout", "Padding", "Spacing"}]
  GETIMPORT R7 K12 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K4 ["AutomaticSize"]
  GETIMPORT R7 K14 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R7 R6 K5 ["HorizontalAlignment"]
  GETIMPORT R7 K17 [Enum.FillDirection.Vertical]
  SETTABLEKS R7 R6 K6 ["Layout"]
  LOADN R7 10
  SETTABLEKS R7 R6 K7 ["Padding"]
  LOADN R7 10
  SETTABLEKS R7 R6 K8 ["Spacing"]
  DUPTABLE R7 K19 [{"networkPane"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K24 [{"AutomaticSize", "HorizontalAlignment", "Layout", "AlwaysExpanded", "LayoutOrder", "Style", "Text"}]
  GETIMPORT R11 K12 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K4 ["AutomaticSize"]
  GETIMPORT R11 K14 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R11 R10 K5 ["HorizontalAlignment"]
  GETIMPORT R11 K17 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K6 ["Layout"]
  LOADB R11 1
  SETTABLEKS R11 R10 K20 ["AlwaysExpanded"]
  LOADN R11 2
  SETTABLEKS R11 R10 K21 ["LayoutOrder"]
  LOADK R11 K25 ["Box"]
  SETTABLEKS R11 R10 K22 ["Style"]
  LOADK R13 K26 ["NetworkSettings"]
  LOADK R14 K27 ["NetworkReplicationLagLabel"]
  NAMECALL R11 R3 K28 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K23 ["Text"]
  NEWTABLE R11 0 1
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K36 [{"PlaceholderText", "ShouldFocus", "Width", "MaxLength", "OnValidateText", "OnFormatText", "Text", "OnTextChanged"}]
  LOADK R17 K26 ["NetworkSettings"]
  LOADK R18 K37 ["NetworkReplicationLagPlaceholder"]
  NAMECALL R15 R3 K28 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K29 ["PlaceholderText"]
  LOADB R15 1
  SETTABLEKS R15 R14 K30 ["ShouldFocus"]
  LOADN R15 100
  SETTABLEKS R15 R14 K31 ["Width"]
  LOADN R15 5
  SETTABLEKS R15 R14 K32 ["MaxLength"]
  NEWCLOSURE R15 P0
  CAPTURE VAL R3
  SETTABLEKS R15 R14 K33 ["OnValidateText"]
  DUPCLOSURE R15 K38 [PROTO_4]
  SETTABLEKS R15 R14 K34 ["OnFormatText"]
  GETTABLEKS R15 R2 K39 ["incomingReplicationLag"]
  SETTABLEKS R15 R14 K23 ["Text"]
  NEWCLOSURE R15 P2
  CAPTURE UPVAL U4
  CAPTURE VAL R0
  SETTABLEKS R15 R14 K35 ["OnTextChanged"]
  CALL R12 2 -1
  SETLIST R11 R12 -1 [1]
  CALL R8 3 1
  SETTABLEKS R8 R7 K18 ["networkPane"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K8 ["ContextServices"]
  GETTABLEKS R4 R3 K9 ["withContext"]
  GETTABLEKS R5 R3 K10 ["Localization"]
  GETTABLEKS R6 R2 K11 ["UI"]
  GETTABLEKS R7 R6 K12 ["Pane"]
  GETTABLEKS R8 R6 K13 ["SimpleExpandablePane"]
  GETTABLEKS R9 R6 K14 ["TextInput"]
  GETTABLEKS R10 R1 K15 ["PureComponent"]
  LOADK R12 K16 ["NetworkPane"]
  NAMECALL R10 R10 K17 ["extend"]
  CALL R10 2 1
  GETIMPORT R12 K19 [settings]
  CALL R12 0 1
  GETTABLEKS R11 R12 K20 ["Network"]
  LOADK R14 K21 ["IncomingReplicationLag"]
  NAMECALL R12 R11 K22 ["GetPropertyChangedSignal"]
  CALL R12 2 1
  DUPCLOSURE R13 K23 [PROTO_1]
  CAPTURE VAL R11
  CAPTURE VAL R12
  SETTABLEKS R13 R10 K24 ["init"]
  DUPCLOSURE R13 K25 [PROTO_2]
  SETTABLEKS R13 R10 K26 ["willUnmount"]
  DUPCLOSURE R13 K27 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R11
  SETTABLEKS R13 R10 K28 ["render"]
  MOVE R13 R4
  DUPTABLE R14 K30 [{"Localization", "Stylizer"}]
  SETTABLEKS R5 R14 K10 ["Localization"]
  GETTABLEKS R15 R3 K29 ["Stylizer"]
  SETTABLEKS R15 R14 K29 ["Stylizer"]
  CALL R13 1 1
  MOVE R14 R10
  CALL R13 1 1
  MOVE R10 R13
  RETURN R10 1
