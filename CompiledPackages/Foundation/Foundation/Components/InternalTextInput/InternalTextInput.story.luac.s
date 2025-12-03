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
  LOADK R13 K7 ["auto-xy padding-xlarge"]
  SETTABLEKS R13 R12 K5 ["tag"]
  DUPTABLE R13 K9 [{"WidthContainer"}]
  GETUPVAL R15 1
  GETTABLEKS R14 R15 K4 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K11 [{"Size", "tag"}]
  GETIMPORT R17 K14 [UDim2.fromOffset]
  GETTABLEKS R18 R1 K15 ["width"]
  GETTABLEKS R20 R2 K10 ["Size"]
  GETTABLEKS R19 R20 K16 ["Size_3000"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K10 ["Size"]
  LOADK R17 K17 ["col gap-large auto-y"]
  SETTABLEKS R17 R16 K5 ["tag"]
  DUPTABLE R17 K21 [{"InternalTextInput", "Output", "NumReturnPressed"}]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K4 ["createElement"]
  GETUPVAL R19 3
  DUPTABLE R20 K34 [{"text", "size", "hasError", "isDisabled", "maxLines", "onChanged", "onReturnPressed", "placeholder", "leadingElement", "trailingElement", "textInputType", "LayoutOrder"}]
  SETTABLEKS R3 R20 K22 ["text"]
  GETTABLEKS R21 R1 K23 ["size"]
  SETTABLEKS R21 R20 K23 ["size"]
  GETTABLEKS R21 R1 K24 ["hasError"]
  SETTABLEKS R21 R20 K24 ["hasError"]
  GETTABLEKS R21 R1 K25 ["isDisabled"]
  SETTABLEKS R21 R20 K25 ["isDisabled"]
  GETTABLEKS R21 R1 K26 ["maxLines"]
  SETTABLEKS R21 R20 K26 ["maxLines"]
  SETTABLEKS R7 R20 K27 ["onChanged"]
  SETTABLEKS R9 R20 K28 ["onReturnPressed"]
  GETTABLEKS R21 R1 K29 ["placeholder"]
  SETTABLEKS R21 R20 K29 ["placeholder"]
  GETTABLEKS R22 R1 K35 ["leadingComponentIcon"]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K36 ["None"]
  JUMPIFNOTEQ R22 R23 [+3]
  LOADNIL R21
  JUMP [+15]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K4 ["createElement"]
  GETUPVAL R22 4
  DUPTABLE R23 K38 [{"name", "size"}]
  GETTABLEKS R24 R1 K35 ["leadingComponentIcon"]
  SETTABLEKS R24 R23 K37 ["name"]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K39 ["Small"]
  SETTABLEKS R24 R23 K23 ["size"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K30 ["leadingElement"]
  GETTABLEKS R22 R1 K40 ["trailingComponentIcon"]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K36 ["None"]
  JUMPIFNOTEQ R22 R23 [+3]
  LOADNIL R21
  JUMP [+21]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K4 ["createElement"]
  GETUPVAL R22 6
  DUPTABLE R23 K43 [{"onActivated", "isDisabled", "size", "icon"}]
  SETTABLEKS R8 R23 K41 ["onActivated"]
  GETTABLEKS R24 R1 K25 ["isDisabled"]
  SETTABLEKS R24 R23 K25 ["isDisabled"]
  GETUPVAL R25 5
  GETTABLEKS R24 R25 K39 ["Small"]
  SETTABLEKS R24 R23 K23 ["size"]
  GETTABLEKS R24 R1 K40 ["trailingComponentIcon"]
  SETTABLEKS R24 R23 K42 ["icon"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K31 ["trailingElement"]
  GETTABLEKS R22 R1 K32 ["textInputType"]
  GETUPVAL R24 1
  GETTABLEKS R23 R24 K36 ["None"]
  JUMPIFNOTEQ R22 R23 [+3]
  LOADNIL R21
  JUMP [+2]
  GETTABLEKS R21 R1 K32 ["textInputType"]
  SETTABLEKS R21 R20 K32 ["textInputType"]
  LOADN R21 1
  SETTABLEKS R21 R20 K33 ["LayoutOrder"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K18 ["InternalTextInput"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K4 ["createElement"]
  GETUPVAL R19 7
  DUPTABLE R20 K46 [{"Text", "textStyle", "LayoutOrder", "tag"}]
  SETTABLEKS R3 R20 K44 ["Text"]
  GETTABLEKS R23 R2 K47 ["Color"]
  GETTABLEKS R22 R23 K48 ["System"]
  GETTABLEKS R21 R22 K49 ["Alert"]
  SETTABLEKS R21 R20 K45 ["textStyle"]
  LOADN R21 2
  SETTABLEKS R21 R20 K33 ["LayoutOrder"]
  LOADK R21 K50 ["auto-xy"]
  SETTABLEKS R21 R20 K5 ["tag"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K19 ["Output"]
  GETUPVAL R19 1
  GETTABLEKS R18 R19 K4 ["createElement"]
  GETUPVAL R19 7
  DUPTABLE R20 K51 [{"LayoutOrder", "Text", "textStyle", "tag"}]
  LOADN R21 3
  SETTABLEKS R21 R20 K33 ["LayoutOrder"]
  LOADK R22 K52 ["Num return pressed: "]
  FASTCALL1 TOSTRING R5 [+3]
  MOVE R24 R5
  GETIMPORT R23 K54 [tostring]
  CALL R23 1 1
  CONCAT R21 R22 R23
  SETTABLEKS R21 R20 K44 ["Text"]
  GETTABLEKS R23 R2 K47 ["Color"]
  GETTABLEKS R22 R23 K55 ["Content"]
  GETTABLEKS R21 R22 K56 ["Emphasis"]
  SETTABLEKS R21 R20 K45 ["textStyle"]
  LOADK R21 K50 ["auto-xy"]
  SETTABLEKS R21 R20 K5 ["tag"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K20 ["NumReturnPressed"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K8 ["WidthContainer"]
  CALL R10 3 -1
  RETURN R10 -1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["union"]
  MOVE R4 R0
  DUPTABLE R5 K3 [{"controls"}]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K1 ["union"]
  GETTABLEKS R7 R0 K2 ["controls"]
  DUPTABLE R8 K5 [{"maxLines"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K4 ["maxLines"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K2 ["controls"]
  CALL R3 2 -1
  CALL R1 -1 -1
  RETURN R1 -1

PROTO_6:
  LOADK R1 K0 [""]
  NEWTABLE R2 0 0
  LOADN R5 1
  LOADN R3 232
  LOADN R4 1
  FORNPREP R3
  FASTCALL2 TABLE_INSERT R2 R5 [+5]
  MOVE R7 R2
  MOVE R8 R5
  GETIMPORT R6 K3 [table.insert]
  CALL R6 2 0
  FORNLOOP R3
  GETIMPORT R3 K5 [table.concat]
  MOVE R4 R2
  LOADK R5 K6 ["
"]
  CALL R3 2 1
  MOVE R1 R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["createElement"]
  GETUPVAL R4 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K8 ["union"]
  MOVE R6 R0
  DUPTABLE R7 K10 [{"controls"}]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K8 ["union"]
  GETTABLEKS R9 R0 K9 ["controls"]
  DUPTABLE R10 K12 [{"placeholder"}]
  SETTABLEKS R1 R10 K11 ["placeholder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["controls"]
  CALL R5 2 -1
  CALL R3 -1 -1
  RETURN R3 -1

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
  DUPTABLE R13 K25 [{"summary", "stories", "controls"}]
  LOADK R14 K26 ["Internal text input"]
  SETTABLEKS R14 R13 K22 ["summary"]
  NEWTABLE R14 0 2
  DUPTABLE R15 K29 [{"name", "story"}]
  LOADK R16 K30 ["Single-line"]
  SETTABLEKS R16 R15 K27 ["name"]
  DUPCLOSURE R16 K31 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R3
  SETTABLEKS R16 R15 K28 ["story"]
  DUPTABLE R16 K29 [{"name", "story"}]
  LOADK R17 K32 ["Multi-line"]
  SETTABLEKS R17 R16 K27 ["name"]
  DUPCLOSURE R17 K33 [PROTO_6]
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R3
  SETTABLEKS R17 R16 K28 ["story"]
  SETLIST R14 R15 2 [1]
  SETTABLEKS R14 R13 K23 ["stories"]
  DUPTABLE R14 K43 [{"hasError", "isDisabled", "size", "maxLines", "width", "placeholder", "leadingComponentIcon", "trailingComponentIcon", "textInputType"}]
  LOADB R15 0
  SETTABLEKS R15 R14 K34 ["hasError"]
  LOADB R15 0
  SETTABLEKS R15 R14 K35 ["isDisabled"]
  GETTABLEKS R15 R3 K44 ["values"]
  MOVE R16 R10
  CALL R15 1 1
  SETTABLEKS R15 R14 K36 ["size"]
  LOADN R15 3
  SETTABLEKS R15 R14 K37 ["maxLines"]
  LOADN R15 144
  SETTABLEKS R15 R14 K38 ["width"]
  LOADK R15 K45 ["Placeholder text"]
  SETTABLEKS R15 R14 K39 ["placeholder"]
  NEWTABLE R15 0 4
  LOADK R16 K46 ["icons/placeholder/placeholderOn_small"]
  LOADK R17 K47 ["icons/status/private_small"]
  LOADK R18 K48 ["icons/common/search_small"]
  GETTABLEKS R19 R2 K49 ["None"]
  SETLIST R15 R16 4 [1]
  SETTABLEKS R15 R14 K40 ["leadingComponentIcon"]
  NEWTABLE R15 0 6
  LOADK R16 K50 ["icons/placeholder/placeholderOff"]
  LOADK R17 K51 ["icons/actions/edit/clear_small"]
  LOADK R18 K52 ["icons/actions/info_small"]
  LOADK R19 K53 ["icons/actions/viewOn"]
  LOADK R20 K54 ["icons/actions/viewOff"]
  GETTABLEKS R21 R2 K49 ["None"]
  SETLIST R15 R16 6 [1]
  SETTABLEKS R15 R14 K41 ["trailingComponentIcon"]
  NEWTABLE R15 0 4
  GETTABLEKS R16 R2 K49 ["None"]
  GETIMPORT R17 K58 [Enum.TextInputType.Default]
  GETIMPORT R18 K60 [Enum.TextInputType.Password]
  GETIMPORT R19 K62 [Enum.TextInputType.Number]
  SETLIST R15 R16 4 [1]
  SETTABLEKS R15 R14 K42 ["textInputType"]
  SETTABLEKS R14 R13 K24 ["controls"]
  RETURN R13 1
