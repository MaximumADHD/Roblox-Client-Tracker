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
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+12]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  GETTABLEKS R0 R1 K1 ["focus"]
  JUMPIFNOT R0 [+6]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  GETTABLEKS R0 R1 K1 ["focus"]
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["focus gained!"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["focus lost!"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  ADDK R1 R0 K0 [1]
  RETURN R1 1

PROTO_6:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Return pressed!"]
  CALL R0 1 0
  GETUPVAL R0 0
  DUPCLOSURE R1 K3 [PROTO_5]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADK R3 K2 [""]
  CALL R2 1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["useState"]
  LOADN R5 0
  CALL R4 1 2
  GETUPVAL R6 1
  CALL R6 0 1
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["useRef"]
  LOADNIL R8
  CALL R7 1 1
  NEWCLOSURE R8 P0
  CAPTURE VAL R3
  DUPCLOSURE R9 K4 [PROTO_1]
  NEWCLOSURE R10 P2
  CAPTURE VAL R7
  DUPCLOSURE R11 K5 [PROTO_3]
  DUPCLOSURE R12 K6 [PROTO_4]
  NEWCLOSURE R13 P5
  CAPTURE VAL R5
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K7 ["createElement"]
  GETUPVAL R15 2
  DUPTABLE R16 K9 [{"tag"}]
  LOADK R17 K10 ["col gap-large auto-xy padding-xlarge"]
  SETTABLEKS R17 R16 K8 ["tag"]
  DUPTABLE R17 K15 [{"TextInput", "Output", "FocusButton", "NumReturnPressed"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K7 ["createElement"]
  GETUPVAL R19 3
  DUPTABLE R20 K33 [{"LayoutOrder", "text", "textInputType", "hasError", "isDisabled", "isRequired", "onChanged", "onFocusGained", "onFocusLost", "onReturnPressed", "label", "size", "hint", "placeholder", "iconLeading", "iconTrailing", "textBoxRef"}]
  LOADN R21 1
  SETTABLEKS R21 R20 K16 ["LayoutOrder"]
  SETTABLEKS R2 R20 K17 ["text"]
  GETTABLEKS R22 R1 K18 ["textInputType"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K34 ["None"]
  JUMPIFNOTEQ R22 R23 [+3]
  LOADNIL R21
  JUMP [+2]
  GETTABLEKS R21 R1 K18 ["textInputType"]
  SETTABLEKS R21 R20 K18 ["textInputType"]
  GETTABLEKS R21 R1 K19 ["hasError"]
  SETTABLEKS R21 R20 K19 ["hasError"]
  GETTABLEKS R21 R1 K20 ["isDisabled"]
  SETTABLEKS R21 R20 K20 ["isDisabled"]
  GETTABLEKS R21 R1 K21 ["isRequired"]
  SETTABLEKS R21 R20 K21 ["isRequired"]
  SETTABLEKS R8 R20 K22 ["onChanged"]
  SETTABLEKS R11 R20 K23 ["onFocusGained"]
  SETTABLEKS R12 R20 K24 ["onFocusLost"]
  SETTABLEKS R13 R20 K25 ["onReturnPressed"]
  GETTABLEKS R21 R1 K26 ["label"]
  SETTABLEKS R21 R20 K26 ["label"]
  GETTABLEKS R21 R1 K27 ["size"]
  SETTABLEKS R21 R20 K27 ["size"]
  GETTABLEKS R22 R1 K28 ["hint"]
  JUMPIFNOTEQKS R22 K2 [""] [+3]
  LOADNIL R21
  JUMP [+2]
  GETTABLEKS R21 R1 K28 ["hint"]
  SETTABLEKS R21 R20 K28 ["hint"]
  GETTABLEKS R21 R1 K29 ["placeholder"]
  SETTABLEKS R21 R20 K29 ["placeholder"]
  GETTABLEKS R22 R1 K30 ["iconLeading"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K34 ["None"]
  JUMPIFNOTEQ R22 R23 [+3]
  LOADNIL R21
  JUMP [+2]
  GETTABLEKS R21 R1 K30 ["iconLeading"]
  SETTABLEKS R21 R20 K30 ["iconLeading"]
  GETTABLEKS R22 R1 K31 ["iconTrailing"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K34 ["None"]
  JUMPIFNOTEQ R22 R23 [+3]
  LOADNIL R21
  JUMP [+13]
  GETTABLEKS R22 R1 K35 ["trailingButton"]
  JUMPIFNOT R22 [+8]
  DUPTABLE R21 K38 [{"name", "onActivated"}]
  GETTABLEKS R22 R1 K31 ["iconTrailing"]
  SETTABLEKS R22 R21 K36 ["name"]
  SETTABLEKS R9 R21 K37 ["onActivated"]
  JUMP [+2]
  GETTABLEKS R21 R1 K31 ["iconTrailing"]
  SETTABLEKS R21 R20 K31 ["iconTrailing"]
  SETTABLEKS R7 R20 K32 ["textBoxRef"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K11 ["TextInput"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K7 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K41 [{"LayoutOrder", "Text", "textStyle", "tag"}]
  LOADN R21 2
  SETTABLEKS R21 R20 K16 ["LayoutOrder"]
  SETTABLEKS R2 R20 K39 ["Text"]
  GETTABLEKS R23 R6 K42 ["Color"]
  GETTABLEKS R22 R23 K43 ["System"]
  GETTABLEKS R21 R22 K44 ["Alert"]
  SETTABLEKS R21 R20 K40 ["textStyle"]
  LOADK R21 K45 ["auto-xy"]
  SETTABLEKS R21 R20 K8 ["tag"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K12 ["Output"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K7 ["createElement"]
  GETUPVAL R19 5
  DUPTABLE R20 K47 [{"LayoutOrder", "text", "onActivated", "variant"}]
  LOADN R21 3
  SETTABLEKS R21 R20 K16 ["LayoutOrder"]
  LOADK R21 K48 ["Focus TextInput"]
  SETTABLEKS R21 R20 K17 ["text"]
  SETTABLEKS R10 R20 K37 ["onActivated"]
  GETUPVAL R22 6
  GETTABLEKS R21 R22 K49 ["Standard"]
  SETTABLEKS R21 R20 K46 ["variant"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K13 ["FocusButton"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K7 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K41 [{"LayoutOrder", "Text", "textStyle", "tag"}]
  LOADN R21 4
  SETTABLEKS R21 R20 K16 ["LayoutOrder"]
  LOADK R22 K50 ["Num return pressed: "]
  FASTCALL1 TOSTRING R4 [+3]
  MOVE R24 R4
  GETIMPORT R23 K52 [tostring]
  CALL R23 1 1
  CONCAT R21 R22 R23
  SETTABLEKS R21 R20 K39 ["Text"]
  GETTABLEKS R23 R6 K42 ["Color"]
  GETTABLEKS R22 R23 K53 ["Content"]
  GETTABLEKS R21 R22 K54 ["Emphasis"]
  SETTABLEKS R21 R20 K40 ["textStyle"]
  LOADK R21 K45 ["auto-xy"]
  SETTABLEKS R21 R20 K8 ["tag"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K14 ["NumReturnPressed"]
  CALL R14 3 -1
  RETURN R14 -1

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
  GETTABLEKS R5 R6 K10 ["View"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["Text"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R0 K12 ["Providers"]
  GETTABLEKS R8 R9 K13 ["Style"]
  GETTABLEKS R7 R8 K14 ["useTokens"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K9 ["Components"]
  GETTABLEKS R8 R9 K15 ["Button"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K16 ["Enums"]
  GETTABLEKS R9 R10 K17 ["ButtonVariant"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R11 R0 K16 ["Enums"]
  GETTABLEKS R10 R11 K18 ["InputSize"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R12 R0 K9 ["Components"]
  GETTABLEKS R11 R12 K19 ["TextInput"]
  CALL R10 1 1
  DUPCLOSURE R11 K20 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R8
  DUPTABLE R12 K24 [{"summary", "story", "controls"}]
  LOADK R13 K25 ["Text field"]
  SETTABLEKS R13 R12 K21 ["summary"]
  SETTABLEKS R11 R12 K22 ["story"]
  DUPTABLE R13 K37 [{"hasError", "isDisabled", "isRequired", "textInputType", "size", "label", "hint", "placeholder", "iconLeading", "iconTrailing", "trailingButton"}]
  LOADB R14 0
  SETTABLEKS R14 R13 K26 ["hasError"]
  LOADB R14 0
  SETTABLEKS R14 R13 K27 ["isDisabled"]
  NEWTABLE R14 0 3
  GETTABLEKS R15 R2 K38 ["None"]
  LOADB R16 0
  LOADB R17 1
  SETLIST R14 R15 3 [1]
  SETTABLEKS R14 R13 K28 ["isRequired"]
  NEWTABLE R14 0 4
  GETTABLEKS R15 R2 K38 ["None"]
  GETIMPORT R16 K42 [Enum.TextInputType.Default]
  GETIMPORT R17 K44 [Enum.TextInputType.Password]
  GETIMPORT R18 K46 [Enum.TextInputType.Number]
  SETLIST R14 R15 4 [1]
  SETTABLEKS R14 R13 K29 ["textInputType"]
  GETTABLEKS R14 R3 K47 ["values"]
  MOVE R15 R9
  CALL R14 1 1
  SETTABLEKS R14 R13 K30 ["size"]
  LOADK R14 K48 ["Input Label"]
  SETTABLEKS R14 R13 K31 ["label"]
  LOADK R14 K49 ["Helper text goes here"]
  SETTABLEKS R14 R13 K32 ["hint"]
  LOADK R14 K50 ["Placeholder text"]
  SETTABLEKS R14 R13 K33 ["placeholder"]
  NEWTABLE R14 0 4
  LOADK R15 K51 ["icons/placeholder/placeholderOn_small"]
  LOADK R16 K52 ["icons/status/private_small"]
  LOADK R17 K53 ["icons/common/search_small"]
  GETTABLEKS R18 R2 K38 ["None"]
  SETLIST R14 R15 4 [1]
  SETTABLEKS R14 R13 K34 ["iconLeading"]
  NEWTABLE R14 0 6
  LOADK R15 K54 ["icons/placeholder/placeholderOff"]
  LOADK R16 K55 ["icons/actions/edit/clear_small"]
  LOADK R17 K56 ["icons/actions/info_small"]
  LOADK R18 K57 ["icons/actions/viewOn"]
  LOADK R19 K58 ["icons/actions/viewOff"]
  GETTABLEKS R20 R2 K38 ["None"]
  SETLIST R14 R15 6 [1]
  SETTABLEKS R14 R13 K35 ["iconTrailing"]
  LOADB R14 0
  SETTABLEKS R14 R13 K36 ["trailingButton"]
  SETTABLEKS R13 R12 K23 ["controls"]
  RETURN R12 1
