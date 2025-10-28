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
  LOADK R10 K2 [""]
  GETTABLEKS R11 R1 K4 ["maxLines"]
  LOADN R12 1
  JUMPIFNOTLT R12 R11 [+22]
  NEWTABLE R11 0 0
  LOADN R14 1
  LOADN R12 232
  LOADN R13 1
  FORNPREP R12
  FASTCALL2 TABLE_INSERT R11 R14 [+5]
  MOVE R16 R11
  MOVE R17 R14
  GETIMPORT R15 K7 [table.insert]
  CALL R15 2 0
  FORNLOOP R12
  GETIMPORT R12 K9 [table.concat]
  MOVE R13 R11
  LOADK R14 K10 ["
"]
  CALL R12 2 1
  MOVE R10 R12
  JUMP [+2]
  GETTABLEKS R10 R1 K11 ["placeholder"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K12 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K14 [{"tag"}]
  LOADK R14 K15 ["auto-xy padding-xlarge"]
  SETTABLEKS R14 R13 K13 ["tag"]
  DUPTABLE R14 K17 [{"WidthContainer"}]
  GETUPVAL R16 1
  GETTABLEKS R15 R16 K12 ["createElement"]
  GETUPVAL R16 2
  DUPTABLE R17 K19 [{"Size", "tag"}]
  GETIMPORT R18 K22 [UDim2.fromOffset]
  GETTABLEKS R19 R1 K23 ["width"]
  GETTABLEKS R21 R2 K18 ["Size"]
  GETTABLEKS R20 R21 K24 ["Size_3000"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K18 ["Size"]
  LOADK R18 K25 ["col gap-large auto-y"]
  SETTABLEKS R18 R17 K13 ["tag"]
  DUPTABLE R18 K29 [{"InternalTextInput", "Output", "NumReturnPressed"}]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K12 ["createElement"]
  GETUPVAL R20 3
  DUPTABLE R21 K40 [{"text", "size", "hasError", "isDisabled", "maxLines", "onChanged", "onReturnPressed", "placeholder", "leadingElement", "trailingElement", "textInputType", "LayoutOrder"}]
  SETTABLEKS R3 R21 K30 ["text"]
  GETTABLEKS R22 R1 K31 ["size"]
  SETTABLEKS R22 R21 K31 ["size"]
  GETTABLEKS R22 R1 K32 ["hasError"]
  SETTABLEKS R22 R21 K32 ["hasError"]
  GETTABLEKS R22 R1 K33 ["isDisabled"]
  SETTABLEKS R22 R21 K33 ["isDisabled"]
  GETTABLEKS R22 R1 K4 ["maxLines"]
  SETTABLEKS R22 R21 K4 ["maxLines"]
  SETTABLEKS R7 R21 K34 ["onChanged"]
  SETTABLEKS R9 R21 K35 ["onReturnPressed"]
  SETTABLEKS R10 R21 K11 ["placeholder"]
  GETTABLEKS R23 R1 K41 ["leadingComponentIcon"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K42 ["None"]
  JUMPIFNOTEQ R23 R24 [+3]
  LOADNIL R22
  JUMP [+15]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K12 ["createElement"]
  GETUPVAL R23 4
  DUPTABLE R24 K44 [{"name", "size"}]
  GETTABLEKS R25 R1 K41 ["leadingComponentIcon"]
  SETTABLEKS R25 R24 K43 ["name"]
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K45 ["Small"]
  SETTABLEKS R25 R24 K31 ["size"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K36 ["leadingElement"]
  GETTABLEKS R23 R1 K46 ["trailingComponentIcon"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K42 ["None"]
  JUMPIFNOTEQ R23 R24 [+3]
  LOADNIL R22
  JUMP [+21]
  GETUPVAL R23 1
  GETTABLEKS R22 R23 K12 ["createElement"]
  GETUPVAL R23 6
  DUPTABLE R24 K49 [{"onActivated", "isDisabled", "size", "icon"}]
  SETTABLEKS R8 R24 K47 ["onActivated"]
  GETTABLEKS R25 R1 K33 ["isDisabled"]
  SETTABLEKS R25 R24 K33 ["isDisabled"]
  GETUPVAL R26 5
  GETTABLEKS R25 R26 K45 ["Small"]
  SETTABLEKS R25 R24 K31 ["size"]
  GETTABLEKS R25 R1 K46 ["trailingComponentIcon"]
  SETTABLEKS R25 R24 K48 ["icon"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K37 ["trailingElement"]
  GETTABLEKS R23 R1 K38 ["textInputType"]
  GETUPVAL R25 1
  GETTABLEKS R24 R25 K42 ["None"]
  JUMPIFNOTEQ R23 R24 [+3]
  LOADNIL R22
  JUMP [+2]
  GETTABLEKS R22 R1 K38 ["textInputType"]
  SETTABLEKS R22 R21 K38 ["textInputType"]
  LOADN R22 1
  SETTABLEKS R22 R21 K39 ["LayoutOrder"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K26 ["InternalTextInput"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K12 ["createElement"]
  GETUPVAL R20 7
  DUPTABLE R21 K52 [{"Text", "textStyle", "LayoutOrder", "tag"}]
  SETTABLEKS R3 R21 K50 ["Text"]
  GETTABLEKS R24 R2 K53 ["Color"]
  GETTABLEKS R23 R24 K54 ["System"]
  GETTABLEKS R22 R23 K55 ["Alert"]
  SETTABLEKS R22 R21 K51 ["textStyle"]
  LOADN R22 2
  SETTABLEKS R22 R21 K39 ["LayoutOrder"]
  LOADK R22 K56 ["auto-xy"]
  SETTABLEKS R22 R21 K13 ["tag"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K27 ["Output"]
  GETUPVAL R20 1
  GETTABLEKS R19 R20 K12 ["createElement"]
  GETUPVAL R20 7
  DUPTABLE R21 K57 [{"LayoutOrder", "Text", "textStyle", "tag"}]
  LOADN R22 3
  SETTABLEKS R22 R21 K39 ["LayoutOrder"]
  LOADK R23 K58 ["Num return pressed: "]
  FASTCALL1 TOSTRING R5 [+3]
  MOVE R25 R5
  GETIMPORT R24 K60 [tostring]
  CALL R24 1 1
  CONCAT R22 R23 R24
  SETTABLEKS R22 R21 K50 ["Text"]
  GETTABLEKS R24 R2 K53 ["Color"]
  GETTABLEKS R23 R24 K61 ["Content"]
  GETTABLEKS R22 R23 K62 ["Emphasis"]
  SETTABLEKS R22 R21 K51 ["textStyle"]
  LOADK R22 K56 ["auto-xy"]
  SETTABLEKS R22 R21 K13 ["tag"]
  CALL R19 2 1
  SETTABLEKS R19 R18 K28 ["NumReturnPressed"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K16 ["WidthContainer"]
  CALL R11 3 -1
  RETURN R11 -1

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
  DUPTABLE R14 K36 [{"hasError", "isDisabled", "size", "maxLines", "width", "placeholder", "leadingComponentIcon", "trailingComponentIcon", "textInputType"}]
  LOADB R15 0
  SETTABLEKS R15 R14 K27 ["hasError"]
  LOADB R15 0
  SETTABLEKS R15 R14 K28 ["isDisabled"]
  GETTABLEKS R15 R3 K37 ["values"]
  MOVE R16 R10
  CALL R15 1 1
  SETTABLEKS R15 R14 K29 ["size"]
  LOADN R15 1
  SETTABLEKS R15 R14 K30 ["maxLines"]
  LOADN R15 144
  SETTABLEKS R15 R14 K31 ["width"]
  LOADK R15 K38 ["Placeholder text"]
  SETTABLEKS R15 R14 K32 ["placeholder"]
  NEWTABLE R15 0 4
  LOADK R16 K39 ["icons/placeholder/placeholderOn_small"]
  LOADK R17 K40 ["icons/status/private_small"]
  LOADK R18 K41 ["icons/common/search_small"]
  GETTABLEKS R19 R2 K42 ["None"]
  SETLIST R15 R16 4 [1]
  SETTABLEKS R15 R14 K33 ["leadingComponentIcon"]
  NEWTABLE R15 0 6
  LOADK R16 K43 ["icons/placeholder/placeholderOff"]
  LOADK R17 K44 ["icons/actions/edit/clear_small"]
  LOADK R18 K45 ["icons/actions/info_small"]
  LOADK R19 K46 ["icons/actions/viewOn"]
  LOADK R20 K47 ["icons/actions/viewOff"]
  GETTABLEKS R21 R2 K42 ["None"]
  SETLIST R15 R16 6 [1]
  SETTABLEKS R15 R14 K34 ["trailingComponentIcon"]
  NEWTABLE R15 0 4
  GETTABLEKS R16 R2 K42 ["None"]
  GETIMPORT R17 K51 [Enum.TextInputType.Default]
  GETIMPORT R18 K53 [Enum.TextInputType.Password]
  GETIMPORT R19 K55 [Enum.TextInputType.Number]
  SETLIST R15 R16 4 [1]
  SETTABLEKS R15 R14 K35 ["textInputType"]
  SETTABLEKS R14 R13 K24 ["controls"]
  RETURN R13 1
