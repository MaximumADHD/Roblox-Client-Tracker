PROTO_0:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["press!"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  ADDK R1 R0 K0 [1]
  RETURN R1 1

PROTO_3:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Return pressed!"]
  CALL R0 1 0
  GETUPVAL R0 0
  DUPCLOSURE R1 K3 [PROTO_2]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R2 0
  CALL R2 0 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["useState"]
  LOADK R4 K2 [""]
  CALL R3 1 2
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["useState"]
  LOADN R6 0
  CALL R5 1 2
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  DUPCLOSURE R8 K3 [PROTO_1]
  NEWCLOSURE R9 P2
  CAPTURE VAL R6
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K4 ["createElement"]
  GETUPVAL R11 2
  DUPTABLE R12 K6 [{"tag"}]
  LOADK R13 K7 ["col gap-large auto-xy padding-xlarge size-3000"]
  SETTABLEKS R13 R12 K5 ["tag"]
  DUPTABLE R13 K11 [{"InternalTextInput", "Output", "NumReturnPressed"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K4 ["createElement"]
  GETUPVAL R15 3
  DUPTABLE R16 K23 [{"text", "size", "hasError", "isDisabled", "onChanged", "onReturnPressed", "placeholder", "leadingElement", "trailingElement", "textInputType", "LayoutOrder"}]
  SETTABLEKS R3 R16 K12 ["text"]
  GETTABLEKS R17 R1 K13 ["size"]
  SETTABLEKS R17 R16 K13 ["size"]
  GETTABLEKS R17 R1 K14 ["hasError"]
  SETTABLEKS R17 R16 K14 ["hasError"]
  GETTABLEKS R17 R1 K15 ["isDisabled"]
  SETTABLEKS R17 R16 K15 ["isDisabled"]
  SETTABLEKS R7 R16 K16 ["onChanged"]
  SETTABLEKS R9 R16 K17 ["onReturnPressed"]
  GETTABLEKS R17 R1 K18 ["placeholder"]
  SETTABLEKS R17 R16 K18 ["placeholder"]
  GETTABLEKS R18 R1 K24 ["leadingComponentIcon"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K25 ["None"]
  JUMPIFNOTEQ R18 R19 [+3]
  LOADNIL R17
  JUMP [+15]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K4 ["createElement"]
  GETUPVAL R18 4
  DUPTABLE R19 K27 [{"name", "size"}]
  GETTABLEKS R20 R1 K24 ["leadingComponentIcon"]
  SETTABLEKS R20 R19 K26 ["name"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K28 ["Small"]
  SETTABLEKS R20 R19 K13 ["size"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K19 ["leadingElement"]
  GETTABLEKS R18 R1 K29 ["trailingComponentIcon"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K25 ["None"]
  JUMPIFNOTEQ R18 R19 [+3]
  LOADNIL R17
  JUMP [+21]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K4 ["createElement"]
  GETUPVAL R18 6
  DUPTABLE R19 K32 [{"onActivated", "isDisabled", "size", "icon"}]
  SETTABLEKS R8 R19 K30 ["onActivated"]
  GETTABLEKS R20 R1 K15 ["isDisabled"]
  SETTABLEKS R20 R19 K15 ["isDisabled"]
  GETUPVAL R21 5
  GETTABLEKS R20 R21 K28 ["Small"]
  SETTABLEKS R20 R19 K13 ["size"]
  GETTABLEKS R20 R1 K29 ["trailingComponentIcon"]
  SETTABLEKS R20 R19 K31 ["icon"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K20 ["trailingElement"]
  GETTABLEKS R18 R1 K21 ["textInputType"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K25 ["None"]
  JUMPIFNOTEQ R18 R19 [+3]
  LOADNIL R17
  JUMP [+2]
  GETTABLEKS R17 R1 K21 ["textInputType"]
  SETTABLEKS R17 R16 K21 ["textInputType"]
  LOADN R17 1
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K8 ["InternalTextInput"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K4 ["createElement"]
  GETUPVAL R15 7
  DUPTABLE R16 K35 [{"Text", "textStyle", "LayoutOrder", "tag"}]
  SETTABLEKS R3 R16 K33 ["Text"]
  GETTABLEKS R19 R2 K36 ["Color"]
  GETTABLEKS R18 R19 K37 ["System"]
  GETTABLEKS R17 R18 K38 ["Alert"]
  SETTABLEKS R17 R16 K34 ["textStyle"]
  LOADN R17 2
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  LOADK R17 K39 ["auto-xy"]
  SETTABLEKS R17 R16 K5 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K9 ["Output"]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K4 ["createElement"]
  GETUPVAL R15 7
  DUPTABLE R16 K40 [{"LayoutOrder", "Text", "textStyle", "tag"}]
  LOADN R17 3
  SETTABLEKS R17 R16 K22 ["LayoutOrder"]
  LOADK R18 K41 ["Num return pressed: "]
  FASTCALL1 TOSTRING R5 [+3]
  MOVE R20 R5
  GETIMPORT R19 K43 [tostring]
  CALL R19 1 1
  CONCAT R17 R18 R19
  SETTABLEKS R17 R16 K33 ["Text"]
  GETTABLEKS R19 R2 K36 ["Color"]
  GETTABLEKS R18 R19 K44 ["Content"]
  GETTABLEKS R17 R18 K45 ["Emphasis"]
  SETTABLEKS R17 R16 K34 ["textStyle"]
  LOADK R17 K39 ["auto-xy"]
  SETTABLEKS R17 R16 K5 ["tag"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K10 ["NumReturnPressed"]
  CALL R10 3 -1
  RETURN R10 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Dash"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["Icon"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["IconButton"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K9 ["Components"]
  GETTABLEKS R7 R8 K12 ["View"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K9 ["Components"]
  GETTABLEKS R8 R9 K13 ["Text"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R11 R0 K14 ["Providers"]
  GETTABLEKS R10 R11 K15 ["Style"]
  GETTABLEKS R9 R10 K16 ["useTokens"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K17 ["Enums"]
  GETTABLEKS R10 R11 K18 ["IconSize"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R0 K17 ["Enums"]
  GETTABLEKS R11 R12 K19 ["InputSize"]
  CALL R10 1 1
  GETIMPORT R11 K6 [require]
  GETTABLEKS R13 R0 K9 ["Components"]
  GETTABLEKS R12 R13 K20 ["InternalTextInput"]
  CALL R11 1 1
  DUPCLOSURE R12 K21 [PROTO_4]
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R5
  CAPTURE VAL R7
  DUPTABLE R13 K25 [{"summary", "story", "controls"}]
  LOADK R14 K26 ["Internal text input"]
  SETTABLEKS R14 R13 K22 ["summary"]
  SETTABLEKS R12 R13 K23 ["story"]
  DUPTABLE R14 K34 [{"hasError", "isDisabled", "size", "placeholder", "leadingComponentIcon", "trailingComponentIcon", "textInputType"}]
  LOADB R15 0
  SETTABLEKS R15 R14 K27 ["hasError"]
  LOADB R15 0
  SETTABLEKS R15 R14 K28 ["isDisabled"]
  GETTABLEKS R15 R3 K35 ["values"]
  MOVE R16 R10
  CALL R15 1 1
  SETTABLEKS R15 R14 K29 ["size"]
  LOADK R15 K36 ["Placeholder text"]
  SETTABLEKS R15 R14 K30 ["placeholder"]
  NEWTABLE R15 0 4
  LOADK R16 K37 ["icons/placeholder/placeholderOn_small"]
  LOADK R17 K38 ["icons/status/private_small"]
  LOADK R18 K39 ["icons/common/search_small"]
  GETTABLEKS R19 R2 K40 ["None"]
  SETLIST R15 R16 4 [1]
  SETTABLEKS R15 R14 K31 ["leadingComponentIcon"]
  NEWTABLE R15 0 6
  LOADK R16 K41 ["icons/placeholder/placeholderOff"]
  LOADK R17 K42 ["icons/actions/edit/clear_small"]
  LOADK R18 K43 ["icons/actions/info_small"]
  LOADK R19 K44 ["icons/actions/viewOn"]
  LOADK R20 K45 ["icons/actions/viewOff"]
  GETTABLEKS R21 R2 K40 ["None"]
  SETLIST R15 R16 6 [1]
  SETTABLEKS R15 R14 K32 ["trailingComponentIcon"]
  NEWTABLE R15 0 4
  GETTABLEKS R16 R2 K40 ["None"]
  GETIMPORT R17 K49 [Enum.TextInputType.Default]
  GETIMPORT R18 K51 [Enum.TextInputType.Password]
  GETIMPORT R19 K53 [Enum.TextInputType.Number]
  SETLIST R15 R16 4 [1]
  SETTABLEKS R15 R14 K33 ["textInputType"]
  SETTABLEKS R14 R13 K24 ["controls"]
  RETURN R13 1
