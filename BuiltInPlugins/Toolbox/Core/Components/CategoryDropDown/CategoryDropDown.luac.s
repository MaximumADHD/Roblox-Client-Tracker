PROTO_0:
  DUPTABLE R1 K1 [{"selectedIndex"}]
  LOADN R2 1
  SETTABLEKS R2 R1 K0 ["selectedIndex"]
  SETTABLEKS R1 R0 K2 ["state"]
  RETURN R0 0

PROTO_1:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["AudioType"]
  GETTABLEKS R4 R1 K1 ["AudioType"]
  JUMPIFEQ R3 R4 [+8]
  DUPTABLE R5 K3 [{"selectedIndex"}]
  LOADN R6 1
  SETTABLEKS R6 R5 K2 ["selectedIndex"]
  NAMECALL R3 R0 K4 ["setState"]
  CALL R3 2 0
  RETURN R0 0

PROTO_2:
  GETTABLEKS R3 R0 K0 ["index"]
  GETTABLEKS R4 R1 K0 ["index"]
  SUB R2 R3 R4
  RETURN R2 1

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"selectedIndex"}]
  SETTABLEKS R0 R3 K0 ["selectedIndex"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  GETUPVAL R1 1
  GETUPVAL R4 2
  GETTABLE R3 R4 R0
  GETTABLEKS R2 R3 K3 ["subcategory"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  LOADN R0 152
  RETURN R0 1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETTABLEKS R4 R1 K3 ["LayoutOrder"]
  GETTABLEKS R5 R1 K4 ["OnCategorySelect"]
  GETTABLEKS R6 R1 K5 ["AudioType"]
  GETTABLEKS R7 R2 K6 ["selectedIndex"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K7 ["MUSIC"]
  GETTABLEKS R9 R10 K8 ["name"]
  JUMPIFNOTEQ R9 R6 [+6]
  GETTABLEKS R9 R1 K10 ["Subcategories"]
  GETTABLEKS R8 R9 K9 ["music"]
  JUMP [+4]
  GETTABLEKS R9 R1 K10 ["Subcategories"]
  GETTABLEKS R8 R9 K11 ["sound-effect"]
  NEWTABLE R9 0 0
  DUPTABLE R12 K13 [{"index", "name"}]
  LOADN R13 1
  SETTABLEKS R13 R12 K12 ["index"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K7 ["MUSIC"]
  GETTABLEKS R14 R15 K8 ["name"]
  JUMPIFNOTEQ R14 R6 [+7]
  LOADK R15 K14 ["Audio.Music"]
  LOADK R16 K15 ["Browse"]
  NAMECALL R13 R3 K16 ["getText"]
  CALL R13 3 1
  JUMP [+5]
  LOADK R15 K17 ["Audio.SoundEffect"]
  LOADK R16 K15 ["Browse"]
  NAMECALL R13 R3 K16 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K8 ["name"]
  FASTCALL2 TABLE_INSERT R9 R12 [+4]
  MOVE R11 R9
  GETIMPORT R10 K20 [table.insert]
  CALL R10 2 0
  JUMPIFNOT R8 [+46]
  GETTABLEKS R10 R8 K21 ["children"]
  JUMPIFNOT R10 [+43]
  GETIMPORT R10 K23 [pairs]
  GETTABLEKS R11 R8 K21 ["children"]
  CALL R10 1 3
  FORGPREP_NEXT R10
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K7 ["MUSIC"]
  GETTABLEKS R16 R17 K8 ["name"]
  JUMPIFNOTEQ R16 R6 [+3]
  LOADK R15 K24 ["Audio.Music.Genre"]
  JUMP [+1]
  LOADK R15 K25 ["Audio.SoundEffect.Category"]
  GETTABLEKS R16 R14 K26 ["hidden"]
  JUMPIF R16 [+22]
  DUPTABLE R16 K28 [{"name", "subcategory", "index"}]
  MOVE R19 R15
  MOVE R20 R13
  NAMECALL R17 R3 K16 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K8 ["name"]
  SETTABLEKS R14 R16 K27 ["subcategory"]
  GETTABLEKS R18 R14 K12 ["index"]
  ADDK R17 R18 K29 [1]
  SETTABLEKS R17 R16 K12 ["index"]
  FASTCALL2 TABLE_INSERT R9 R16 [+5]
  MOVE R18 R9
  MOVE R19 R16
  GETIMPORT R17 K20 [table.insert]
  CALL R17 2 0
  FORGLOOP R10 2 [-36]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K30 ["sort"]
  MOVE R11 R9
  DUPCLOSURE R12 K31 [PROTO_2]
  CALL R10 2 1
  MOVE R9 R10
  NEWCLOSURE R10 P1
  CAPTURE VAL R0
  CAPTURE VAL R5
  CAPTURE REF R9
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K32 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K40 [{"Size", "visibleDropDownCount", "selectedDropDownIndex", "fontSize", "items", "onItemClicked", "setDropdownHeight", "LayoutOrder"}]
  GETIMPORT R14 K43 [UDim2.new]
  LOADN R15 1
  LOADN R16 0
  LOADN R17 0
  LOADN R18 40
  CALL R14 4 1
  SETTABLEKS R14 R13 K33 ["Size"]
  LOADN R14 5
  SETTABLEKS R14 R13 K34 ["visibleDropDownCount"]
  SETTABLEKS R7 R13 K35 ["selectedDropDownIndex"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K44 ["FONT_SIZE_LARGE"]
  SETTABLEKS R14 R13 K36 ["fontSize"]
  SETTABLEKS R9 R13 K37 ["items"]
  SETTABLEKS R10 R13 K38 ["onItemClicked"]
  DUPCLOSURE R14 K45 [PROTO_4]
  SETTABLEKS R14 R13 K39 ["setDropdownHeight"]
  SETTABLEKS R4 R13 K3 ["LayoutOrder"]
  CALL R11 2 -1
  CLOSEUPVALS R9
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["Dash"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K10 ["Core"]
  GETTABLEKS R5 R6 K11 ["Util"]
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R5 K12 ["LayoutOrderIterator"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R5 K13 ["Constants"]
  CALL R7 1 1
  GETTABLEKS R8 R3 K14 ["ContextServices"]
  GETTABLEKS R9 R8 K15 ["withContext"]
  GETIMPORT R10 K6 [require]
  GETTABLEKS R11 R1 K16 ["LuauPolyfill"]
  CALL R10 1 1
  GETTABLEKS R11 R10 K17 ["Array"]
  GETIMPORT R12 K6 [require]
  GETTABLEKS R15 R0 K10 ["Core"]
  GETTABLEKS R14 R15 K11 ["Util"]
  GETTABLEKS R13 R14 K18 ["Images"]
  CALL R12 1 1
  GETIMPORT R13 K6 [require]
  GETTABLEKS R16 R0 K10 ["Core"]
  GETTABLEKS R15 R16 K19 ["Types"]
  GETTABLEKS R14 R15 K20 ["Category"]
  CALL R13 1 1
  GETIMPORT R14 K6 [require]
  GETTABLEKS R17 R0 K10 ["Core"]
  GETTABLEKS R16 R17 K19 ["Types"]
  GETTABLEKS R15 R16 K21 ["HomeTypes"]
  CALL R14 1 1
  GETIMPORT R15 K6 [require]
  GETTABLEKS R18 R0 K10 ["Core"]
  GETTABLEKS R17 R18 K22 ["Components"]
  GETTABLEKS R16 R17 K23 ["DropdownMenu"]
  CALL R15 1 1
  GETTABLEKS R16 R2 K24 ["PureComponent"]
  LOADK R18 K25 ["CategoryDropDown"]
  NAMECALL R16 R16 K26 ["extend"]
  CALL R16 2 1
  DUPCLOSURE R17 K27 [PROTO_0]
  SETTABLEKS R17 R16 K28 ["init"]
  DUPCLOSURE R17 K29 [PROTO_1]
  SETTABLEKS R17 R16 K30 ["didUpdate"]
  DUPCLOSURE R17 K31 [PROTO_5]
  CAPTURE VAL R13
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R15
  CAPTURE VAL R7
  SETTABLEKS R17 R16 K32 ["render"]
  MOVE R17 R9
  DUPTABLE R18 K34 [{"Localization"}]
  GETTABLEKS R19 R8 K33 ["Localization"]
  SETTABLEKS R19 R18 K33 ["Localization"]
  CALL R17 1 1
  MOVE R18 R16
  CALL R17 1 1
  MOVE R16 R17
  RETURN R16 1
