PROTO_0:
  LOADK R3 K0 ["StyleSheet"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+34]
  LOADK R4 K3 ["StyleCategory"]
  NAMECALL R2 R0 K4 ["GetAttribute"]
  CALL R2 2 1
  ORK R1 R2 K2 ["Other"]
  LOADK R4 K5 ["/"]
  NAMECALL R2 R1 K6 ["split"]
  CALL R2 2 1
  GETTABLEN R1 R2 1
  GETUPVAL R2 0
  JUMPIFNOTEQ R2 R0 [+2]
  LOADK R1 K7 ["Designs"]
  GETUPVAL R3 1
  GETTABLE R2 R3 R1
  JUMPIF R2 [+10]
  GETUPVAL R2 1
  NEWTABLE R3 0 0
  SETTABLE R3 R2 R1
  GETUPVAL R3 2
  FASTCALL2 TABLE_INSERT R3 R1 [+3]
  MOVE R4 R1
  GETUPVAL R2 3
  CALL R2 2 0
  GETUPVAL R4 1
  GETTABLE R3 R4 R1
  FASTCALL2 TABLE_INSERT R3 R0 [+3]
  MOVE R4 R0
  GETUPVAL R2 3
  CALL R2 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  NAMECALL R2 R0 K0 ["GetDescendants"]
  CALL R2 1 1
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["StyleSheetSchema"]
  GETTABLEKS R2 R0 K1 ["Name"]
  JUMPIFNOTEQKS R2 K2 [""] [+9]
  GETUPVAL R2 1
  MOVE R3 R1
  DUPTABLE R4 K4 [{"Editing"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K3 ["Editing"]
  CALL R2 2 1
  MOVE R1 R2
  DUPTABLE R2 K7 [{"Name", "Children", "Instance"}]
  DUPTABLE R3 K11 [{"Actions", "Schema", "Value"}]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K12 ["MoreAction"]
  SETTABLEKS R4 R3 K8 ["Actions"]
  SETTABLEKS R1 R3 K9 ["Schema"]
  GETTABLEKS R4 R0 K1 ["Name"]
  SETTABLEKS R4 R3 K10 ["Value"]
  SETTABLEKS R3 R2 K1 ["Name"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K13 ["getStyleRules"]
  MOVE R4 R0
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["Children"]
  SETTABLEKS R0 R2 K6 ["Instance"]
  RETURN R2 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLE R1 R2 R0
  JUMPIFNOTEQKS R0 K0 ["Designs"] [+36]
  GETTABLEN R2 R1 1
  DUPTABLE R3 K4 [{"Name", "Children", "Instance"}]
  DUPTABLE R4 K10 [{"Actions", "ExpandByDefault", "FullSpan", "Schema", "Value"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K11 ["FullSpanMoreAction"]
  SETTABLEKS R5 R4 K5 ["Actions"]
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["ExpandByDefault"]
  LOADB R5 1
  SETTABLEKS R5 R4 K7 ["FullSpan"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K12 ["StyleSheetSchema"]
  SETTABLEKS R5 R4 K8 ["Schema"]
  GETTABLEKS R5 R2 K1 ["Name"]
  SETTABLEKS R5 R4 K9 ["Value"]
  SETTABLEKS R4 R3 K1 ["Name"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K13 ["getStyleRules"]
  MOVE R5 R2
  CALL R4 1 1
  SETTABLEKS R4 R3 K2 ["Children"]
  SETTABLEKS R2 R3 K3 ["Instance"]
  RETURN R3 1
  LOADNIL R2
  GETUPVAL R3 4
  MOVE R4 R0
  LOADK R5 K14 ["Themes"]
  CALL R3 2 1
  JUMPIFNOT R3 [+7]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K15 ["getThemes"]
  MOVE R4 R1
  CALL R3 1 1
  MOVE R2 R3
  JUMP [+9]
  GETUPVAL R3 5
  MOVE R4 R1
  DUPCLOSURE R5 K16 [PROTO_2]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U6
  CAPTURE UPVAL U1
  CAPTURE UPVAL U3
  CALL R3 2 1
  MOVE R2 R3
  DUPTABLE R3 K17 [{"Name", "Children"}]
  DUPTABLE R4 K18 [{"Actions", "ExpandByDefault", "FullSpan", "Value"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K11 ["FullSpanMoreAction"]
  SETTABLEKS R5 R4 K5 ["Actions"]
  LOADB R5 1
  SETTABLEKS R5 R4 K6 ["ExpandByDefault"]
  LOADB R5 1
  SETTABLEKS R5 R4 K7 ["FullSpan"]
  SETTABLEKS R0 R4 K9 ["Value"]
  SETTABLEKS R4 R3 K1 ["Name"]
  SETTABLEKS R2 R3 K2 ["Children"]
  RETURN R3 1

PROTO_4:
  JUMPIF R1 [+3]
  NEWTABLE R2 0 0
  RETURN R2 1
  JUMPIF R0 [+6]
  NEWTABLE R2 0 1
  GETUPVAL R3 0
  SETLIST R2 R3 1 [1]
  MOVE R0 R2
  DUPTABLE R2 K3 [{"Tokens", "Themes", "Designs"}]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K0 ["Tokens"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K1 ["Themes"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K2 ["Designs"]
  NEWTABLE R3 0 3
  LOADK R4 K2 ["Designs"]
  LOADK R5 K0 ["Tokens"]
  LOADK R6 K1 ["Themes"]
  SETLIST R3 R4 3 [1]
  GETUPVAL R4 1
  MOVE R5 R0
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE UPVAL U2
  CALL R4 2 0
  GETUPVAL R4 3
  MOVE R5 R3
  NEWCLOSURE R6 P1
  CAPTURE VAL R2
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U3
  CAPTURE UPVAL U8
  CALL R4 2 1
  GETUPVAL R6 9
  GETTABLEKS R5 R6 K4 ["updatePaths"]
  MOVE R6 R4
  CALL R5 1 -1
  RETURN R5 -1

PROTO_5:
  LOADK R3 K0 ["StyleCategory"]
  NAMECALL R1 R0 K1 ["GetAttribute"]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["getCategorySuffix"]
  MOVE R3 R1
  CALL R2 1 1
  JUMPIFNOT R2 [+2]
  MOVE R1 R2
  JUMP [+6]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["getThemeCategory"]
  MOVE R4 R0
  CALL R3 1 1
  MOVE R1 R3
  GETUPVAL R5 1
  GETTABLE R4 R5 R1
  FASTCALL2 TABLE_INSERT R4 R0 [+3]
  MOVE R5 R0
  GETUPVAL R3 2
  CALL R3 2 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["StyleSheetSchema"]
  GETTABLEKS R2 R0 K1 ["Name"]
  JUMPIFNOTEQKS R2 K2 [""] [+9]
  GETUPVAL R2 1
  MOVE R3 R1
  DUPTABLE R4 K4 [{"Editing"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K3 ["Editing"]
  CALL R2 2 1
  MOVE R1 R2
  DUPTABLE R2 K7 [{"Name", "Children", "Instance"}]
  DUPTABLE R3 K11 [{"Actions", "Schema", "Value"}]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K12 ["MoreAction"]
  SETTABLEKS R4 R3 K8 ["Actions"]
  SETTABLEKS R1 R3 K9 ["Schema"]
  GETTABLEKS R4 R0 K1 ["Name"]
  SETTABLEKS R4 R3 K10 ["Value"]
  SETTABLEKS R3 R2 K1 ["Name"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K13 ["getStyleRules"]
  MOVE R4 R0
  CALL R3 1 1
  SETTABLEKS R3 R2 K5 ["Children"]
  SETTABLEKS R0 R2 K6 ["Instance"]
  RETURN R2 1

PROTO_7:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["Icons"]
  NAMECALL R5 R1 K1 ["lower"]
  CALL R5 1 1
  GETTABLE R3 R4 R5
  JUMPIF R3 [+5]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["Icons"]
  GETTABLEKS R3 R4 K2 ["folder"]
  LENGTH R4 R2
  JUMPIFNOTEQKN R4 K3 [0] [+3]
  LOADNIL R4
  RETURN R4 1
  DUPTABLE R4 K6 [{"Name", "Children"}]
  DUPTABLE R5 K10 [{"Actions", "LeftIcon", "Value"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K11 ["MoreAction"]
  SETTABLEKS R6 R5 K7 ["Actions"]
  DUPTABLE R6 K14 [{"Image", "Size"}]
  SETTABLEKS R3 R6 K12 ["Image"]
  GETIMPORT R7 K17 [UDim2.fromOffset]
  LOADN R8 16
  LOADN R9 16
  CALL R7 2 1
  SETTABLEKS R7 R6 K13 ["Size"]
  SETTABLEKS R6 R5 K8 ["LeftIcon"]
  SETTABLEKS R1 R5 K9 ["Value"]
  SETTABLEKS R5 R4 K4 ["Name"]
  GETUPVAL R5 2
  MOVE R6 R2
  DUPCLOSURE R7 K18 [PROTO_6]
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["Children"]
  RETURN R4 1

PROTO_8:
  DUPTABLE R1 K4 [{"Color", "Size", "Typography", "Other"}]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["Color"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K1 ["Size"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K2 ["Typography"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K3 ["Other"]
  GETUPVAL R2 0
  MOVE R3 R0
  NEWCLOSURE R4 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CALL R2 2 0
  GETUPVAL R2 3
  GETUPVAL R3 4
  MOVE R4 R1
  CALL R3 1 1
  NEWCLOSURE R4 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U1
  CALL R2 2 1
  RETURN R2 1

PROTO_9:
  LOADK R3 K0 ["StyleRule"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+31]
  LOADK R3 K2 ["StyleCategory"]
  NAMECALL R1 R0 K3 ["GetAttribute"]
  CALL R1 2 1
  JUMPIF R1 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["getSelectorCategory"]
  GETTABLEKS R2 R0 K5 ["Selector"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLE R2 R3 R1
  JUMPIF R2 [+10]
  GETUPVAL R2 1
  NEWTABLE R3 0 0
  SETTABLE R3 R2 R1
  GETUPVAL R3 2
  FASTCALL2 TABLE_INSERT R3 R1 [+3]
  MOVE R4 R1
  GETUPVAL R2 3
  CALL R2 2 0
  GETUPVAL R4 1
  GETTABLE R3 R4 R1
  FASTCALL2 TABLE_INSERT R3 R0 [+3]
  MOVE R4 R0
  GETUPVAL R2 3
  CALL R2 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["SelectorSchema"]
  GETTABLEKS R2 R0 K1 ["Selector"]
  JUMPIFNOTEQKS R2 K2 [""] [+11]
  GETUPVAL R2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["SelectorSchema"]
  DUPTABLE R4 K4 [{"Editing"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K3 ["Editing"]
  CALL R2 2 1
  MOVE R1 R2
  DUPTABLE R2 K8 [{"Name", "Instance", "Children"}]
  DUPTABLE R3 K13 [{"Actions", "ErrorMessage", "Schema", "Value"}]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K14 ["MoreAction"]
  SETTABLEKS R4 R3 K9 ["Actions"]
  JUMPIFNOT R0 [+3]
  GETTABLEKS R4 R0 K15 ["SelectorError"]
  JUMP [+1]
  LOADK R4 K2 [""]
  SETTABLEKS R4 R3 K10 ["ErrorMessage"]
  SETTABLEKS R1 R3 K11 ["Schema"]
  GETTABLEKS R4 R0 K1 ["Selector"]
  SETTABLEKS R4 R3 K12 ["Value"]
  SETTABLEKS R3 R2 K5 ["Name"]
  SETTABLEKS R0 R2 K6 ["Instance"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K16 ["getChildrenStyleRules"]
  MOVE R4 R0
  CALL R3 1 1
  SETTABLEKS R3 R2 K7 ["Children"]
  RETURN R2 1

PROTO_11:
  GETUPVAL R3 0
  GETTABLE R2 R3 R1
  LENGTH R3 R2
  JUMPIFNOTEQKN R3 K0 [0] [+3]
  LOADNIL R3
  RETURN R3 1
  DUPTABLE R3 K3 [{"Name", "Children"}]
  DUPTABLE R4 K7 [{"Actions", "LeftIcon", "Value"}]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K8 ["MoreAction"]
  SETTABLEKS R5 R4 K4 ["Actions"]
  DUPTABLE R5 K11 [{"Image", "Size"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K12 ["Icons"]
  GETTABLEKS R6 R7 K13 ["folder"]
  SETTABLEKS R6 R5 K9 ["Image"]
  GETIMPORT R6 K16 [UDim2.fromOffset]
  LOADN R7 16
  LOADN R8 16
  CALL R6 2 1
  SETTABLEKS R6 R5 K10 ["Size"]
  SETTABLEKS R5 R4 K5 ["LeftIcon"]
  SETTABLEKS R1 R4 K6 ["Value"]
  SETTABLEKS R4 R3 K1 ["Name"]
  GETUPVAL R4 2
  MOVE R5 R2
  DUPCLOSURE R6 K17 [PROTO_10]
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U1
  CAPTURE UPVAL U5
  CALL R4 2 1
  SETTABLEKS R4 R3 K2 ["Children"]
  RETURN R3 1

PROTO_12:
  JUMPIFNOTEQKNIL R0 [+4]
  NEWTABLE R1 0 0
  RETURN R1 1
  NEWTABLE R1 4 0
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K0 ["UI Elements"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K1 ["Tags"]
  NEWTABLE R2 0 0
  SETTABLEKS R2 R1 K2 ["Components"]
  NEWTABLE R2 0 3
  LOADK R3 K0 ["UI Elements"]
  LOADK R4 K1 ["Tags"]
  LOADK R5 K2 ["Components"]
  SETLIST R2 R3 3 [1]
  GETUPVAL R3 0
  NAMECALL R4 R0 K3 ["GetChildren"]
  CALL R4 1 1
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE UPVAL U2
  CALL R3 2 0
  GETUPVAL R3 3
  MOVE R4 R2
  NEWCLOSURE R5 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U1
  CALL R3 2 1
  RETURN R3 1

PROTO_13:
  LOADK R4 K0 ["StyleRule"]
  NAMECALL R2 R1 K1 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADNIL R2
  RETURN R2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["SelectorSchema"]
  GETTABLEKS R3 R1 K3 ["Selector"]
  JUMPIFNOTEQKS R3 K4 [""] [+11]
  GETUPVAL R3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["SelectorSchema"]
  DUPTABLE R5 K6 [{"Editing"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K5 ["Editing"]
  CALL R3 2 1
  MOVE R2 R3
  DUPTABLE R3 K10 [{"Name", "Instance", "Children"}]
  DUPTABLE R4 K15 [{"Actions", "ErrorMessage", "Schema", "Value"}]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K16 ["MoreAction"]
  SETTABLEKS R5 R4 K11 ["Actions"]
  JUMPIFNOT R1 [+3]
  GETTABLEKS R5 R1 K17 ["SelectorError"]
  JUMP [+1]
  LOADK R5 K4 [""]
  SETTABLEKS R5 R4 K12 ["ErrorMessage"]
  SETTABLEKS R2 R4 K13 ["Schema"]
  GETTABLEKS R5 R1 K3 ["Selector"]
  SETTABLEKS R5 R4 K14 ["Value"]
  SETTABLEKS R4 R3 K7 ["Name"]
  SETTABLEKS R1 R3 K8 ["Instance"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K18 ["getChildrenStyleRules"]
  MOVE R5 R1
  CALL R4 1 1
  SETTABLEKS R4 R3 K9 ["Children"]
  RETURN R3 1

PROTO_14:
  JUMPIF R0 [+3]
  NEWTABLE R1 0 0
  RETURN R1 1
  GETUPVAL R1 0
  NAMECALL R2 R0 K0 ["GetChildren"]
  CALL R2 1 1
  DUPCLOSURE R3 K1 [PROTO_13]
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CALL R1 2 -1
  RETURN R1 -1

PROTO_15:
  DUPTABLE R0 K2 [{"Name", "Children"}]
  DUPTABLE R1 K6 [{"Actions", "Schema", "Value"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K7 ["MoreAction"]
  SETTABLEKS R2 R1 K3 ["Actions"]
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K8 ["SelectorSchema"]
  DUPTABLE R4 K10 [{"Editing"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K9 ["Editing"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K4 ["Schema"]
  LOADK R2 K11 [""]
  SETTABLEKS R2 R1 K5 ["Value"]
  SETTABLEKS R1 R0 K0 ["Name"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["Children"]
  RETURN R0 1

PROTO_16:
  DUPTABLE R0 K2 [{"Name", "Children"}]
  DUPTABLE R1 K7 [{"Actions", "LeftIcon", "Schema", "Value"}]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["MoreAction"]
  SETTABLEKS R2 R1 K3 ["Actions"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K9 ["StyleSheetIcon"]
  SETTABLEKS R2 R1 K4 ["LeftIcon"]
  GETUPVAL R2 2
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K10 ["SelectorSchema"]
  DUPTABLE R4 K12 [{"Editing"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K11 ["Editing"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K5 ["Schema"]
  LOADK R2 K13 [""]
  SETTABLEKS R2 R1 K6 ["Value"]
  SETTABLEKS R1 R0 K0 ["Name"]
  NEWTABLE R1 0 0
  SETTABLEKS R1 R0 K1 ["Children"]
  RETURN R0 1

PROTO_17:
  GETUPVAL R1 0
  MOVE R2 R0
  LOADK R3 K0 ["."]
  CALL R1 2 1
  JUMPIFNOT R1 [+2]
  LOADK R1 K1 ["Tags"]
  RETURN R1 1
  LOADK R3 K2 ["%.Component-"]
  NAMECALL R1 R0 K3 ["match"]
  CALL R1 2 1
  JUMPIFNOT R1 [+2]
  LOADK R1 K4 ["Components"]
  RETURN R1 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K5 ["isElement"]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+2]
  LOADK R1 K6 ["UI Elements"]
  RETURN R1 1
  LOADK R1 K7 ["Other"]
  RETURN R1 1

PROTO_18:
  NAMECALL R1 R0 K0 ["GetAttributes"]
  CALL R1 1 1
  LOADN R2 0
  LOADN R3 0
  LOADN R4 0
  MOVE R5 R1
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  JUMPIFEQKS R8 K1 ["StyleCategory"] [+67]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K2 ["parseAttributeName"]
  MOVE R11 R9
  CALL R10 1 1
  JUMPIFNOT R10 [+7]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K3 ["getTokenValue"]
  MOVE R11 R0
  MOVE R12 R9
  CALL R10 2 1
  MOVE R9 R10
  FASTCALL1 TYPEOF R9 [+3]
  MOVE R11 R9
  GETIMPORT R10 K5 [typeof]
  CALL R10 1 1
  JUMPIFNOTEQKS R10 K6 ["Color3"] [+3]
  ADDK R2 R2 K7 [1]
  JUMP [+44]
  FASTCALL1 TYPEOF R9 [+3]
  MOVE R11 R9
  GETIMPORT R10 K5 [typeof]
  CALL R10 1 1
  JUMPIFEQKS R10 K8 ["Font"] [+14]
  FASTCALL1 TYPEOF R9 [+3]
  MOVE R11 R9
  GETIMPORT R10 K5 [typeof]
  CALL R10 1 1
  JUMPIFNOTEQKS R10 K9 ["EnumItem"] [+9]
  GETTABLEKS R10 R9 K10 ["EnumType"]
  GETIMPORT R11 K12 [Enum.Font]
  JUMPIFNOTEQ R10 R11 [+3]
  ADDK R3 R3 K7 [1]
  JUMP [+22]
  FASTCALL1 TYPEOF R9 [+3]
  MOVE R11 R9
  GETIMPORT R10 K5 [typeof]
  CALL R10 1 1
  JUMPIFEQKS R10 K13 ["number"] [+15]
  FASTCALL1 TYPEOF R9 [+3]
  MOVE R11 R9
  GETIMPORT R10 K5 [typeof]
  CALL R10 1 1
  JUMPIFEQKS R10 K14 ["UDim"] [+8]
  FASTCALL1 TYPEOF R9 [+3]
  MOVE R11 R9
  GETIMPORT R10 K5 [typeof]
  CALL R10 1 1
  JUMPIFNOTEQKS R10 K15 ["UDim2"] [+2]
  ADDK R4 R4 K7 [1]
  FORGLOOP R5 2 [-69]
  MOVE R6 R2
  MOVE R7 R3
  MOVE R8 R4
  FASTCALL MATH_MAX [+2]
  GETIMPORT R5 K18 [math.max]
  CALL R5 3 1
  JUMPIFNOTEQKN R5 K19 [0] [+3]
  LOADK R6 K20 ["Other"]
  RETURN R6 1
  JUMPIFNOTEQ R5 R2 [+3]
  LOADK R6 K21 ["Color"]
  RETURN R6 1
  JUMPIFNOTEQ R5 R3 [+3]
  LOADK R6 K22 ["Typography"]
  RETURN R6 1
  LOADK R6 K23 ["Size"]
  RETURN R6 1

PROTO_19:
  LENGTH R2 R1
  LENGTH R3 R0
  JUMPIFNOTLT R3 R2 [+3]
  LOADB R2 0
  RETURN R2 1
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLE R7 R0 R5
  JUMPIFEQ R6 R7 [+3]
  LOADB R7 0
  RETURN R7 1
  FORGLOOP R2 2 [-6]
  LOADB R2 1
  RETURN R2 1

PROTO_20:
  LOADK R3 K0 ["StyleCategory"]
  NAMECALL R1 R0 K1 ["GetAttribute"]
  CALL R1 2 1
  MOVE R2 R1
  JUMPIFNOT R2 [+14]
  GETUPVAL R2 0
  MOVE R3 R1
  LOADK R4 K2 ["Themes"]
  CALL R2 2 1
  JUMPIF R2 [+9]
  GETUPVAL R2 0
  MOVE R3 R1
  LOADK R4 K3 ["Tokens"]
  CALL R2 2 1
  JUMPIF R2 [+4]
  JUMPIFEQKS R1 K4 ["Design"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  RETURN R2 1

PROTO_21:
  JUMPIFNOT R0 [+5]
  LOADK R3 K0 ["/"]
  NAMECALL R1 R0 K1 ["match"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  RETURN R0 0
  LOADK R4 K0 ["/"]
  NAMECALL R2 R0 K2 ["split"]
  CALL R2 2 1
  GETTABLEN R1 R2 2
  RETURN R1 1

PROTO_22:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["GetDescendants"]
  CALL R1 1 3
  FORGPREP R1
  LOADK R8 K1 ["StyleCategory"]
  NAMECALL R6 R5 K2 ["GetAttribute"]
  CALL R6 2 1
  JUMPIFNOT R6 [+18]
  GETUPVAL R7 1
  MOVE R8 R6
  LOADK R9 K3 ["Themes"]
  CALL R7 2 1
  JUMPIFNOT R7 [+13]
  NAMECALL R7 R5 K4 ["GetDerives"]
  CALL R7 1 1
  FASTCALL2 TABLE_INSERT R7 R0 [+4]
  MOVE R9 R7
  MOVE R10 R0
  GETUPVAL R8 2
  CALL R8 2 0
  MOVE R10 R7
  NAMECALL R8 R5 K5 ["SetDerives"]
  CALL R8 2 0
  FORGLOOP R1 2 [-24]
  RETURN R0 0

PROTO_23:
  LOADK R3 K0 ["StyleCategory"]
  NAMECALL R1 R0 K1 ["GetAttribute"]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["getCategorySuffix"]
  MOVE R3 R1
  CALL R2 1 1
  JUMPIFNOT R1 [+8]
  GETUPVAL R3 1
  MOVE R4 R1
  LOADK R5 K3 ["Tokens"]
  CALL R3 2 1
  JUMPIFNOT R3 [+3]
  JUMPIF R2 [+2]
  LOADB R3 1
  RETURN R3 1
  LOADB R3 0
  RETURN R3 1

PROTO_24:
  GETUPVAL R1 0
  GETUPVAL R2 1
  NAMECALL R2 R2 K0 ["GetDescendants"]
  CALL R2 1 1
  DUPCLOSURE R3 K1 [PROTO_23]
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R1 2 1
  MOVE R4 R1
  NAMECALL R2 R0 K2 ["SetDerives"]
  CALL R2 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ReplicatedStorage"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K11 ["UI"]
  GETTABLEKS R4 R3 K12 ["TreeTable"]
  GETTABLEKS R5 R4 K13 ["EditTree"]
  GETIMPORT R6 K8 [require]
  GETTABLEKS R9 R1 K14 ["Src"]
  GETTABLEKS R8 R9 K15 ["Util"]
  GETTABLEKS R7 R8 K16 ["MenuHelpers"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R10 R1 K14 ["Src"]
  GETTABLEKS R9 R10 K15 ["Util"]
  GETTABLEKS R8 R9 K17 ["SelectorHelpers"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R11 R1 K14 ["Src"]
  GETTABLEKS R10 R11 K15 ["Util"]
  GETTABLEKS R9 R10 K18 ["StyleSchema"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETTABLEKS R12 R1 K14 ["Src"]
  GETTABLEKS R11 R12 K15 ["Util"]
  GETTABLEKS R10 R11 K19 ["TokenHelpers"]
  CALL R9 1 1
  GETIMPORT R10 K8 [require]
  GETTABLEKS R12 R1 K9 ["Packages"]
  GETTABLEKS R11 R12 K20 ["Dash"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K21 ["collectArray"]
  GETTABLEKS R12 R10 K22 ["filter"]
  GETTABLEKS R13 R10 K23 ["forEach"]
  GETTABLEKS R14 R10 K24 ["keys"]
  GETTABLEKS R15 R10 K25 ["join"]
  GETTABLEKS R16 R10 K26 ["map"]
  GETTABLEKS R17 R10 K27 ["startsWith"]
  GETIMPORT R18 K30 [table.insert]
  NEWTABLE R19 16 0
  DUPTABLE R20 K35 [{"Image", "ImageRectOffset", "ImageRectSize", "Size"}]
  GETTABLEKS R21 R6 K36 ["getClassIcon"]
  LOADK R22 K37 ["StyleSheet"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K31 ["Image"]
  GETIMPORT R21 K40 [Vector2.new]
  LOADN R22 0
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K32 ["ImageRectOffset"]
  GETIMPORT R21 K40 [Vector2.new]
  LOADN R22 16
  LOADN R23 16
  CALL R21 2 1
  SETTABLEKS R21 R20 K33 ["ImageRectSize"]
  GETIMPORT R21 K43 [UDim2.fromOffset]
  LOADN R22 16
  LOADN R23 16
  CALL R21 2 1
  SETTABLEKS R21 R20 K34 ["Size"]
  SETTABLEKS R20 R19 K44 ["StyleSheetIcon"]
  DUPTABLE R20 K48 [{"UI_ELEMENTS", "THEMES", "SELECTOR"}]
  NEWTABLE R21 0 2
  LOADN R22 1
  LOADN R23 1
  SETLIST R21 R22 2 [1]
  SETTABLEKS R21 R20 K45 ["UI_ELEMENTS"]
  NEWTABLE R21 0 1
  LOADN R22 3
  SETLIST R21 R22 1 [1]
  SETTABLEKS R21 R20 K46 ["THEMES"]
  NEWTABLE R21 0 1
  LOADN R22 1
  SETLIST R21 R22 1 [1]
  SETTABLEKS R21 R20 K47 ["SELECTOR"]
  SETTABLEKS R20 R19 K49 ["PATHS"]
  DUPCLOSURE R20 K50 [PROTO_4]
  CAPTURE VAL R0
  CAPTURE VAL R13
  CAPTURE VAL R18
  CAPTURE VAL R16
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R19
  CAPTURE VAL R17
  CAPTURE VAL R15
  CAPTURE VAL R5
  SETTABLEKS R20 R19 K51 ["getItems"]
  DUPCLOSURE R20 K52 [PROTO_8]
  CAPTURE VAL R13
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R11
  CAPTURE VAL R14
  CAPTURE VAL R6
  CAPTURE VAL R16
  CAPTURE VAL R8
  CAPTURE VAL R15
  SETTABLEKS R20 R19 K53 ["getThemes"]
  DUPCLOSURE R20 K54 [PROTO_12]
  CAPTURE VAL R13
  CAPTURE VAL R19
  CAPTURE VAL R18
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE VAL R16
  CAPTURE VAL R8
  CAPTURE VAL R15
  SETTABLEKS R20 R19 K55 ["getStyleRules"]
  DUPCLOSURE R20 K56 [PROTO_14]
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R19
  SETTABLEKS R20 R19 K57 ["getChildrenStyleRules"]
  DUPCLOSURE R20 K58 [PROTO_15]
  CAPTURE VAL R6
  CAPTURE VAL R15
  CAPTURE VAL R8
  SETTABLEKS R20 R19 K59 ["getEmptyStyleRuleRow"]
  DUPCLOSURE R20 K60 [PROTO_16]
  CAPTURE VAL R6
  CAPTURE VAL R19
  CAPTURE VAL R15
  CAPTURE VAL R8
  SETTABLEKS R20 R19 K61 ["getEmptyStyleSheetRow"]
  DUPCLOSURE R20 K62 [PROTO_17]
  CAPTURE VAL R17
  CAPTURE VAL R7
  SETTABLEKS R20 R19 K63 ["getSelectorCategory"]
  DUPCLOSURE R20 K64 [PROTO_18]
  CAPTURE VAL R9
  SETTABLEKS R20 R19 K65 ["getThemeCategory"]
  DUPCLOSURE R20 K66 [PROTO_19]
  SETTABLEKS R20 R19 K67 ["isUnderPath"]
  DUPCLOSURE R20 K68 [PROTO_20]
  CAPTURE VAL R17
  SETTABLEKS R20 R19 K69 ["isPartOfDesignSystem"]
  DUPCLOSURE R20 K70 [PROTO_21]
  SETTABLEKS R20 R19 K71 ["getCategorySuffix"]
  DUPCLOSURE R20 K72 [PROTO_22]
  CAPTURE VAL R0
  CAPTURE VAL R17
  CAPTURE VAL R18
  SETTABLEKS R20 R19 K73 ["setAsToken"]
  DUPCLOSURE R20 K74 [PROTO_24]
  CAPTURE VAL R12
  CAPTURE VAL R0
  CAPTURE VAL R19
  CAPTURE VAL R17
  SETTABLEKS R20 R19 K75 ["setAsTheme"]
  RETURN R19 1
