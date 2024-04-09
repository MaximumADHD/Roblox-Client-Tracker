PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["Items"]
  GETUPVAL R4 1
  NAMECALL R1 R1 K1 ["getChild"]
  CALL R1 3 1
  JUMPIF R1 [+2]
  LOADNIL R2
  RETURN R2 1
  DUPTABLE R2 K3 [{"Schema"}]
  GETUPVAL R3 2
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K4 ["SelectorSchema"]
  DUPTABLE R5 K6 [{"Editing"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K5 ["Editing"]
  CALL R3 2 1
  SETTABLEKS R3 R2 K2 ["Schema"]
  GETUPVAL R3 0
  MOVE R5 R0
  MOVE R6 R2
  GETUPVAL R7 1
  LOADN R8 1
  NAMECALL R3 R3 K7 ["updateCell"]
  CALL R3 5 -1
  RETURN R3 -1

PROTO_1:
  GETUPVAL R1 0
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["ClipboardProperty"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["ClipboardInstance"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  RETURN R1 1

PROTO_4:
  GETTABLEKS R1 R0 K0 ["Expansion"]
  GETUPVAL R2 0
  JUMPIFNOT R2 [+20]
  GETTABLEKS R3 R0 K1 ["Selection"]
  GETUPVAL R4 1
  GETTABLE R2 R3 R4
  JUMPIFNOTEQKB R2 TRUE [+15]
  GETTABLEKS R4 R0 K0 ["Expansion"]
  GETUPVAL R5 1
  GETTABLE R3 R4 R5
  NOT R2 R3
  GETUPVAL R3 2
  GETTABLEKS R4 R0 K0 ["Expansion"]
  NEWTABLE R5 1 0
  GETUPVAL R6 1
  SETTABLE R2 R5 R6
  CALL R3 2 1
  MOVE R1 R3
  GETUPVAL R2 2
  MOVE R3 R0
  DUPTABLE R4 K2 [{"Selection", "Expansion"}]
  NEWTABLE R5 1 0
  GETUPVAL R6 1
  LOADB R7 1
  SETTABLE R7 R5 R6
  SETTABLEKS R5 R4 K1 ["Selection"]
  SETTABLEKS R1 R4 K0 ["Expansion"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_5:
  GETUPVAL R2 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  CALL R2 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["item"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["selectRow"]
  GETTABLEKS R3 R1 K2 ["Id"]
  LOADB R4 0
  CALL R2 2 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["showContextMenu"]
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  DUPTABLE R3 K4 [{"Id", "Children"}]
  LOADK R4 K5 ["EmptyRowMenu"]
  SETTABLEKS R4 R3 K2 ["Id"]
  NEWTABLE R4 0 1
  DUPTABLE R5 K10 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
  LOADK R6 K11 ["PasteProperty"]
  SETTABLEKS R6 R5 K2 ["Id"]
  LOADK R8 K12 ["ContextMenu"]
  LOADK R9 K13 ["Paste"]
  NAMECALL R6 R2 K14 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K6 ["Text"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K15 ["paste"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K7 ["Icon"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K16 ["canPasteProperty"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K8 ["Enabled"]
  GETUPVAL R6 2
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K17 ["menuActions"]
  GETTABLEKS R7 R8 K18 ["pasteProperty"]
  NEWTABLE R8 0 1
  MOVE R9 R0
  SETLIST R8 R9 1 [1]
  CALL R6 2 1
  SETTABLEKS R6 R5 K9 ["OnItemClicked"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K3 ["Children"]
  GETTABLEKS R4 R1 K19 ["Plugin"]
  NAMECALL R4 R4 K20 ["get"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K21 ["Telemetry"]
  NAMECALL R5 R5 K20 ["get"]
  CALL R5 1 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K22 ["trackClicks"]
  MOVE R7 R3
  MOVE R8 R5
  CALL R6 2 0
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K23 ["showContextMenu"]
  MOVE R7 R4
  MOVE R8 R3
  CALL R6 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R6 R0 K2 ["Value"]
  GETTABLEKS R5 R6 K3 ["Schema"]
  GETTABLEKS R4 R5 K4 ["Type"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["TokenReferenceSchema"]
  GETTABLEKS R5 R6 K4 ["Type"]
  JUMPIFEQ R4 R5 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K6 ["getSelectorChain"]
  GETTABLEKS R5 R1 K7 ["RootInstance"]
  CALL R4 1 1
  JUMPIFNOT R4 [+7]
  GETTABLEKS R6 R4 K8 ["Class"]
  JUMPIFNOTEQKS R6 K9 [""] [+2]
  LOADB R5 0 +1
  LOADB R5 1
  JUMP [+1]
  LOADB R5 0
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K10 ["getTokenSourceStyleSheet"]
  GETTABLEKS R7 R1 K7 ["RootInstance"]
  GETTABLEKS R9 R0 K2 ["Value"]
  GETTABLEKS R8 R9 K2 ["Value"]
  CALL R6 2 1
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K11 ["isTheme"]
  MOVE R8 R6
  CALL R7 1 1
  JUMPIFNOT R3 [+34]
  DUPTABLE R8 K16 [{"Id", "Text", "Icon", "OnItemClicked"}]
  LOADK R9 K17 ["UnlinkToken"]
  SETTABLEKS R9 R8 K12 ["Id"]
  LOADK R11 K18 ["ContextMenu"]
  LOADK R12 K17 ["UnlinkToken"]
  NAMECALL R9 R2 K19 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K13 ["Text"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K20 ["Standard"]
  GETTABLEKS R9 R10 K21 ["TokenSheet"]
  CALL R9 0 1
  SETTABLEKS R9 R8 K14 ["Icon"]
  GETUPVAL R9 6
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K22 ["menuActions"]
  GETTABLEKS R10 R11 K23 ["unlinkToken"]
  NEWTABLE R11 0 1
  MOVE R12 R0
  SETLIST R11 R12 1 [1]
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["OnItemClicked"]
  JUMP [+33]
  DUPTABLE R8 K16 [{"Id", "Text", "Icon", "OnItemClicked"}]
  LOADK R9 K24 ["LinkToken"]
  SETTABLEKS R9 R8 K12 ["Id"]
  LOADK R11 K18 ["ContextMenu"]
  LOADK R12 K24 ["LinkToken"]
  NAMECALL R9 R2 K19 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K13 ["Text"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K20 ["Standard"]
  GETTABLEKS R9 R10 K21 ["TokenSheet"]
  CALL R9 0 1
  SETTABLEKS R9 R8 K14 ["Icon"]
  GETUPVAL R9 6
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K22 ["menuActions"]
  GETTABLEKS R10 R11 K25 ["linkToken"]
  NEWTABLE R11 0 1
  MOVE R12 R0
  SETLIST R11 R12 1 [1]
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["OnItemClicked"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K26 ["getPossiblePropertyTypes"]
  GETTABLEKS R11 R0 K27 ["Name"]
  GETTABLEKS R10 R11 K2 ["Value"]
  CALL R9 1 1
  GETUPVAL R11 7
  GETTABLEKS R10 R11 K28 ["getAttributeTypeActions"]
  MOVE R11 R9
  GETUPVAL R12 6
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K22 ["menuActions"]
  GETTABLEKS R13 R14 K29 ["changePropertyType"]
  NEWTABLE R14 0 1
  MOVE R15 R0
  SETLIST R14 R15 1 [1]
  CALL R12 2 -1
  CALL R10 -1 1
  DUPTABLE R11 K31 [{"Id", "Children"}]
  LOADK R12 K32 ["PropertyRowMenu"]
  SETTABLEKS R12 R11 K12 ["Id"]
  NEWTABLE R12 0 6
  MOVE R13 R8
  DUPTABLE R14 K34 [{"Id", "Text", "Icon", "Hidden", "OnItemClicked"}]
  LOADK R15 K35 ["ViewTheme"]
  SETTABLEKS R15 R14 K12 ["Id"]
  LOADK R17 K18 ["ContextMenu"]
  JUMPIFNOT R7 [+2]
  LOADK R18 K35 ["ViewTheme"]
  JUMP [+1]
  LOADK R18 K36 ["ViewToken"]
  NAMECALL R15 R2 K19 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K13 ["Text"]
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K37 ["open"]
  CALL R15 0 1
  SETTABLEKS R15 R14 K14 ["Icon"]
  NOT R15 R3
  SETTABLEKS R15 R14 K33 ["Hidden"]
  GETUPVAL R15 6
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K22 ["menuActions"]
  GETTABLEKS R16 R17 K38 ["viewTheme"]
  NEWTABLE R17 0 1
  MOVE R18 R0
  SETLIST R17 R18 1 [1]
  CALL R15 2 1
  SETTABLEKS R15 R14 K15 ["OnItemClicked"]
  DUPTABLE R15 K39 [{"Id", "Text", "Hidden", "Children"}]
  LOADK R16 K40 ["ChangeType"]
  SETTABLEKS R16 R15 K12 ["Id"]
  LOADK R18 K18 ["ContextMenu"]
  LOADK R19 K40 ["ChangeType"]
  NAMECALL R16 R2 K19 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K13 ["Text"]
  MOVE R16 R5
  JUMPIF R16 [+6]
  LENGTH R17 R9
  LOADN R18 1
  JUMPIFLE R17 R18 [+2]
  LOADB R16 0 +1
  LOADB R16 1
  SETTABLEKS R16 R15 K33 ["Hidden"]
  SETTABLEKS R10 R15 K30 ["Children"]
  DUPTABLE R16 K16 [{"Id", "Text", "Icon", "OnItemClicked"}]
  LOADK R17 K41 ["Copy"]
  SETTABLEKS R17 R16 K12 ["Id"]
  LOADK R19 K18 ["ContextMenu"]
  LOADK R20 K41 ["Copy"]
  NAMECALL R17 R2 K19 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K13 ["Text"]
  GETUPVAL R18 5
  GETTABLEKS R17 R18 K42 ["copy"]
  CALL R17 0 1
  SETTABLEKS R17 R16 K14 ["Icon"]
  GETUPVAL R17 6
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K22 ["menuActions"]
  GETTABLEKS R18 R19 K43 ["copyProperty"]
  NEWTABLE R19 0 1
  MOVE R20 R0
  SETLIST R19 R20 1 [1]
  CALL R17 2 1
  SETTABLEKS R17 R16 K15 ["OnItemClicked"]
  DUPTABLE R17 K45 [{"Id", "Text", "Icon", "Enabled", "OnItemClicked"}]
  LOADK R18 K46 ["Paste"]
  SETTABLEKS R18 R17 K12 ["Id"]
  LOADK R20 K18 ["ContextMenu"]
  LOADK R21 K46 ["Paste"]
  NAMECALL R18 R2 K19 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K13 ["Text"]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K47 ["paste"]
  CALL R18 0 1
  SETTABLEKS R18 R17 K14 ["Icon"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K48 ["canPasteProperty"]
  CALL R18 0 1
  SETTABLEKS R18 R17 K44 ["Enabled"]
  GETUPVAL R18 6
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K22 ["menuActions"]
  GETTABLEKS R19 R20 K49 ["pasteProperty"]
  NEWTABLE R20 0 1
  MOVE R21 R0
  SETLIST R20 R21 1 [1]
  CALL R18 2 1
  SETTABLEKS R18 R17 K15 ["OnItemClicked"]
  DUPTABLE R18 K16 [{"Id", "Text", "Icon", "OnItemClicked"}]
  LOADK R19 K50 ["Delete"]
  SETTABLEKS R19 R18 K12 ["Id"]
  LOADK R21 K18 ["ContextMenu"]
  LOADK R22 K50 ["Delete"]
  NAMECALL R19 R2 K19 ["getText"]
  CALL R19 3 1
  SETTABLEKS R19 R18 K13 ["Text"]
  GETUPVAL R20 5
  GETTABLEKS R19 R20 K51 ["delete"]
  CALL R19 0 1
  SETTABLEKS R19 R18 K14 ["Icon"]
  GETUPVAL R19 6
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K22 ["menuActions"]
  GETTABLEKS R20 R21 K52 ["deleteProperty"]
  NEWTABLE R21 0 1
  MOVE R22 R0
  SETLIST R21 R22 1 [1]
  CALL R19 2 1
  SETTABLEKS R19 R18 K15 ["OnItemClicked"]
  SETLIST R12 R13 6 [1]
  SETTABLEKS R12 R11 K30 ["Children"]
  GETTABLEKS R12 R1 K53 ["Plugin"]
  NAMECALL R12 R12 K54 ["get"]
  CALL R12 1 1
  GETTABLEKS R13 R1 K55 ["Telemetry"]
  NAMECALL R13 R13 K54 ["get"]
  CALL R13 1 1
  GETUPVAL R15 7
  GETTABLEKS R14 R15 K56 ["trackClicks"]
  MOVE R15 R11
  MOVE R16 R13
  CALL R14 2 0
  GETUPVAL R15 7
  GETTABLEKS R14 R15 K57 ["showContextMenu"]
  MOVE R15 R12
  MOVE R16 R11
  CALL R14 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R3 R0 K1 ["Instance"]
  FASTCALL1 TYPEOF R3 [+2]
  GETIMPORT R2 K3 [typeof]
  CALL R2 1 1
  JUMPIFNOTEQKS R2 K1 ["Instance"] [+15]
  GETTABLEKS R2 R1 K4 ["dispatch"]
  GETUPVAL R3 1
  GETTABLEKS R4 R0 K1 ["Instance"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["menuActions"]
  GETTABLEKS R5 R6 K6 ["rename"]
  LOADB R6 0
  CALL R3 3 -1
  CALL R2 -1 0
  RETURN R0 0
  GETTABLEKS R2 R0 K7 ["Value"]
  JUMPIFNOT R2 [+5]
  GETTABLEKS R3 R0 K7 ["Value"]
  GETTABLEKS R2 R3 K8 ["Schema"]
  JUMPIF R2 [+1]
  RETURN R0 0
  GETTABLEKS R4 R0 K7 ["Value"]
  GETTABLEKS R3 R4 K8 ["Schema"]
  GETTABLEKS R2 R3 K9 ["Type"]
  JUMPIFNOTEQKS R2 K10 ["Empty"] [+7]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K11 ["showEmptyRowContextMenu"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K12 ["showPropertyRowContextMenu"]
  MOVE R3 R0
  CALL R2 1 0
  RETURN R0 0

PROTO_10:
  DUPTABLE R1 K1 [{"Schema"}]
  GETUPVAL R2 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["SelectorSchema"]
  DUPTABLE R4 K4 [{"Editing"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K3 ["Editing"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["Schema"]
  GETUPVAL R2 2
  MOVE R4 R0
  MOVE R5 R1
  GETUPVAL R6 3
  LOADN R7 1
  NAMECALL R2 R2 K5 ["updateCell"]
  CALL R2 5 -1
  RETURN R2 -1

PROTO_11:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["props"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K1 ["state"]
  GETUPVAL R5 1
  GETTABLEKS R8 R4 K2 ["table"]
  GETTABLEKS R7 R8 K3 ["Items"]
  MOVE R8 R1
  NAMECALL R5 R5 K4 ["getChild"]
  CALL R5 3 1
  JUMPIF R5 [+1]
  RETURN R0 0
  GETTABLEKS R7 R5 K5 ["Name"]
  GETTABLEKS R6 R7 K6 ["FullSpan"]
  JUMPIFNOT R6 [+44]
  GETTABLEKS R6 R5 K7 ["Instance"]
  JUMPIF R6 [+6]
  GETIMPORT R6 K9 [warn]
  LOADK R7 K10 ["Table row without valid StyleRule reference:"]
  MOVE R8 R5
  CALL R6 2 0
  RETURN R0 0
  GETTABLEKS R8 R5 K7 ["Instance"]
  JUMPIFNOTEQKNIL R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  FASTCALL2K ASSERT R7 K11 [+4]
  LOADK R8 K11 ["expecting valid instance"]
  GETIMPORT R6 K13 [assert]
  CALL R6 2 0
  MOVE R6 R0
  GETTABLEKS R7 R3 K14 ["dispatch"]
  GETUPVAL R8 2
  GETTABLEKS R9 R5 K7 ["Instance"]
  MOVE R10 R6
  CALL R8 2 -1
  CALL R7 -1 0
  GETTABLEKS R8 R5 K5 ["Name"]
  GETTABLEKS R7 R8 K15 ["Value"]
  JUMPIFNOTEQ R6 R7 [+8]
  GETUPVAL R7 3
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U1
  CAPTURE VAL R1
  CALL R7 1 0
  RETURN R0 0
  GETTABLEKS R7 R5 K5 ["Name"]
  GETTABLEKS R6 R7 K15 ["Value"]
  GETUPVAL R7 1
  GETTABLEKS R10 R4 K2 ["table"]
  GETTABLEKS R9 R10 K3 ["Items"]
  MOVE R10 R5
  NAMECALL R7 R7 K16 ["getParent"]
  CALL R7 3 1
  GETTABLEKS R8 R7 K7 ["Instance"]
  GETTABLEKS R10 R5 K17 ["SetParentValue"]
  FASTCALL1 TYPEOF R10 [+2]
  GETIMPORT R9 K19 [typeof]
  CALL R9 1 1
  JUMPIFNOTEQKS R9 K20 ["function"] [+21]
  GETTABLEKS R9 R5 K17 ["SetParentValue"]
  MOVE R10 R0
  CALL R9 1 1
  MOVE R0 R9
  GETTABLEKS R9 R7 K5 ["Name"]
  GETTABLEKS R6 R9 K15 ["Value"]
  GETUPVAL R9 1
  GETTABLEKS R12 R4 K2 ["table"]
  GETTABLEKS R11 R12 K3 ["Items"]
  MOVE R12 R7
  NAMECALL R9 R9 K16 ["getParent"]
  CALL R9 3 1
  GETTABLEKS R8 R9 K7 ["Instance"]
  JUMPIF R8 [+6]
  GETIMPORT R9 K9 [warn]
  LOADK R10 K10 ["Table row without valid StyleRule reference:"]
  MOVE R11 R7
  CALL R9 2 0
  RETURN R0 0
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K21 ["NAME_COLUMN_INDEX"]
  JUMPIFNOTEQ R2 R9 [+10]
  GETTABLEKS R9 R3 K14 ["dispatch"]
  GETUPVAL R10 7
  MOVE R11 R8
  MOVE R12 R6
  MOVE R13 R0
  CALL R10 3 -1
  CALL R9 -1 0
  RETURN R0 0
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K22 ["VALUE_COLUMN_INDEX"]
  JUMPIFNOTEQ R2 R9 [+9]
  GETTABLEKS R9 R3 K14 ["dispatch"]
  GETUPVAL R10 8
  MOVE R11 R8
  MOVE R12 R6
  MOVE R13 R0
  CALL R10 3 -1
  CALL R9 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["getOneSelectedItem"]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+6]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["selectRow"]
  MOVE R3 R1
  LOADB R4 1
  CALL R2 2 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R1 K1 [{"table"}]
  GETUPVAL R2 0
  GETTABLEKS R3 R0 K0 ["table"]
  DUPTABLE R4 K3 [{"Columns"}]
  NEWTABLE R5 0 2
  DUPTABLE R6 K5 [{"Width"}]
  GETUPVAL R7 1
  SETTABLEKS R7 R6 K4 ["Width"]
  DUPTABLE R7 K5 [{"Width"}]
  GETUPVAL R8 2
  SETTABLEKS R8 R7 K4 ["Width"]
  SETLIST R5 R6 2 [1]
  SETTABLEKS R5 R4 K2 ["Columns"]
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["table"]
  RETURN R1 1

PROTO_14:
  LOADN R3 250
  LOADK R5 K0 [0.4]
  MUL R4 R5 R1
  FASTCALL2 MATH_MIN R3 R4 [+3]
  GETIMPORT R2 K3 [math.min]
  CALL R2 2 1
  GETIMPORT R3 K6 [UDim.new]
  LOADN R4 0
  MOVE R5 R2
  CALL R3 2 1
  GETIMPORT R4 K6 [UDim.new]
  LOADN R5 1
  MINUS R6 R2
  CALL R4 2 1
  GETUPVAL R5 0
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  CAPTURE VAL R4
  NAMECALL R5 R5 K7 ["setState"]
  CALL R5 2 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["state"]
  GETUPVAL R4 1
  GETTABLEKS R7 R3 K2 ["table"]
  GETTABLEKS R6 R7 K3 ["Items"]
  MOVE R7 R0
  NAMECALL R4 R4 K4 ["getParent"]
  CALL R4 3 1
  GETTABLEKS R6 R0 K5 ["Name"]
  GETTABLEKS R5 R6 K6 ["Value"]
  GETTABLEKS R6 R2 K7 ["dispatch"]
  GETUPVAL R7 2
  GETTABLEKS R8 R4 K8 ["Instance"]
  MOVE R9 R5
  LOADK R10 K9 ["TokenReference"]
  CALL R7 3 -1
  CALL R6 -1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["state"]
  GETUPVAL R4 1
  GETTABLEKS R7 R3 K2 ["table"]
  GETTABLEKS R6 R7 K3 ["Items"]
  MOVE R7 R0
  NAMECALL R4 R4 K4 ["getParent"]
  CALL R4 3 1
  GETTABLEKS R6 R0 K5 ["Name"]
  GETTABLEKS R5 R6 K6 ["Value"]
  GETTABLEKS R6 R2 K7 ["dispatch"]
  GETUPVAL R7 2
  GETTABLEKS R8 R4 K8 ["Instance"]
  MOVE R9 R5
  CALL R7 2 -1
  CALL R6 -1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R4 R1 K1 ["Data"]
  JUMPIFNOT R4 [+5]
  GETTABLEKS R4 R1 K1 ["Data"]
  GETTABLEKS R3 R4 K2 ["Type"]
  JUMP [+1]
  LOADNIL R3
  JUMPIF R3 [+5]
  GETIMPORT R4 K4 [warn]
  LOADK R5 K5 ["Cannot change to nil type"]
  CALL R4 1 0
  RETURN R0 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K6 ["state"]
  GETUPVAL R5 1
  GETTABLEKS R8 R4 K7 ["table"]
  GETTABLEKS R7 R8 K8 ["Items"]
  MOVE R8 R0
  NAMECALL R5 R5 K9 ["getParent"]
  CALL R5 3 1
  GETTABLEKS R7 R0 K10 ["Name"]
  GETTABLEKS R6 R7 K11 ["Value"]
  GETTABLEKS R7 R2 K12 ["dispatch"]
  GETUPVAL R8 2
  GETTABLEKS R9 R5 K13 ["Instance"]
  MOVE R10 R6
  MOVE R11 R3
  CALL R8 3 -1
  CALL R7 -1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["dispatch"]
  GETUPVAL R4 1
  GETTABLEKS R6 R0 K2 ["Name"]
  GETTABLEKS R5 R6 K3 ["Value"]
  GETTABLEKS R7 R0 K3 ["Value"]
  GETTABLEKS R6 R7 K3 ["Value"]
  CALL R4 2 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Instance"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["ClipboardProperty"]
  GETTABLEKS R3 R4 K2 ["Name"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K1 ["ClipboardProperty"]
  GETTABLEKS R4 R5 K3 ["Value"]
  NAMECALL R1 R0 K4 ["SetProperty"]
  CALL R1 3 0
  GETIMPORT R1 K8 [Enum.FinishRecordingOperation.Commit]
  RETURN R1 1

PROTO_20:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["props"]
  GETTABLEKS R4 R3 K2 ["ClipboardProperty"]
  JUMPIF R4 [+1]
  RETURN R0 0
  GETTABLEKS R5 R3 K2 ["ClipboardProperty"]
  FASTCALL2K ASSERT R5 K3 [+4]
  LOADK R6 K3 ["ClipboardProperty cannot be nil"]
  GETIMPORT R4 K5 [assert]
  CALL R4 2 0
  GETUPVAL R4 1
  GETTABLEKS R7 R2 K6 ["table"]
  GETTABLEKS R6 R7 K7 ["Items"]
  MOVE R7 R0
  NAMECALL R4 R4 K8 ["getParent"]
  CALL R4 3 1
  JUMPIFNOT R4 [+3]
  GETTABLEKS R5 R4 K9 ["Instance"]
  JUMPIF R5 [+1]
  RETURN R0 0
  GETUPVAL R5 2
  DUPTABLE R6 K13 [{"Name", "DisplayName", "DoChange"}]
  LOADK R7 K14 ["StyleEditor.PasteProperty"]
  SETTABLEKS R7 R6 K10 ["Name"]
  LOADK R7 K15 ["StyleEditor - Paste Property"]
  SETTABLEKS R7 R6 K11 ["DisplayName"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  CAPTURE VAL R3
  SETTABLEKS R7 R6 K12 ["DoChange"]
  CALL R5 1 0
  RETURN R0 0

PROTO_21:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Instance"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Name"]
  GETTABLEKS R2 R3 K2 ["Value"]
  LOADNIL R3
  NAMECALL R0 R0 K3 ["SetProperty"]
  CALL R0 3 0
  GETIMPORT R0 K7 [Enum.FinishRecordingOperation.Commit]
  RETURN R0 1

PROTO_22:
  GETUPVAL R2 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["state"]
  GETTABLEKS R5 R6 K1 ["table"]
  GETTABLEKS R4 R5 K2 ["Items"]
  MOVE R5 R0
  NAMECALL R2 R2 K3 ["getParent"]
  CALL R2 3 1
  JUMPIFNOT R2 [+3]
  GETTABLEKS R3 R2 K4 ["Instance"]
  JUMPIF R3 [+1]
  RETURN R0 0
  GETUPVAL R3 2
  DUPTABLE R4 K8 [{"Name", "DisplayName", "DoChange"}]
  LOADK R5 K9 ["StyleEditor.DeleteProperty"]
  SETTABLEKS R5 R4 K5 ["Name"]
  LOADK R5 K10 ["Style Editor - Delete Property"]
  SETTABLEKS R5 R4 K6 ["DisplayName"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R2
  CAPTURE VAL R0
  SETTABLEKS R5 R4 K7 ["DoChange"]
  CALL R3 1 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["getTokenSourceStyleSheet"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["props"]
  GETTABLEKS R4 R5 K2 ["RootInstance"]
  GETTABLEKS R6 R0 K3 ["Value"]
  GETTABLEKS R5 R6 K3 ["Value"]
  CALL R3 2 1
  JUMPIFNOT R3 [+11]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["createItemId"]
  MOVE R5 R3
  CALL R4 1 1
  GETTABLEKS R5 R2 K5 ["dispatch"]
  GETUPVAL R6 3
  MOVE R7 R4
  CALL R6 1 -1
  CALL R5 -1 0
  RETURN R0 0

PROTO_24:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["onDoubleClick"]
  GETTABLEKS R3 R0 K1 ["Path"]
  CALL R2 1 0
  RETURN R0 0

PROTO_25:
  JUMPIFNOTEQKS R0 K0 ["Menu"] [+18]
  GETUPVAL R3 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["state"]
  GETTABLEKS R6 R7 K2 ["table"]
  GETTABLEKS R5 R6 K3 ["Items"]
  MOVE R6 R1
  NAMECALL R3 R3 K4 ["getChild"]
  CALL R3 3 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K5 ["showContextMenu"]
  MOVE R5 R3
  CALL R4 1 0
  RETURN R0 0

PROTO_26:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["state"]
  GETUPVAL R3 1
  GETTABLEKS R6 R2 K1 ["table"]
  GETTABLEKS R5 R6 K2 ["Items"]
  MOVE R6 R0
  NAMECALL R3 R3 K3 ["getChild"]
  CALL R3 3 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["selectRow"]
  GETTABLEKS R5 R3 K5 ["Id"]
  LOADB R6 0
  CALL R4 2 0
  RETURN R0 0

PROTO_27:
  DUPTABLE R1 K2 [{"rootInstance", "table"}]
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["rootInstance"]
  DUPTABLE R2 K7 [{"Columns", "Expansion", "Selection", "Items"}]
  GETUPVAL R3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K3 ["Columns"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K3 ["Columns"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K4 ["Expansion"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K5 ["Selection"]
  NEWTABLE R3 0 0
  SETTABLEKS R3 R2 K6 ["Items"]
  SETTABLEKS R2 R1 K1 ["table"]
  SETTABLEKS R1 R0 K8 ["state"]
  GETUPVAL R1 2
  MOVE R3 R0
  LOADK R4 K1 ["table"]
  NAMECALL R1 R1 K9 ["getStateAdaptor"]
  CALL R1 3 1
  GETUPVAL R2 2
  MOVE R4 R1
  NAMECALL R2 R2 K10 ["getCallbacks"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K11 ["tableCallbacks"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  SETTABLEKS R2 R0 K12 ["onDoubleClick"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K13 ["canPasteProperty"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K14 ["canPasteSelector"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  SETTABLEKS R2 R0 K15 ["selectRow"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K16 ["onRightClickRow"]
  NEWCLOSURE R2 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  SETTABLEKS R2 R0 K17 ["showEmptyRowContextMenu"]
  NEWCLOSURE R2 P6
  CAPTURE VAL R0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  SETTABLEKS R2 R0 K18 ["showPropertyRowContextMenu"]
  NEWCLOSURE R2 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U11
  SETTABLEKS R2 R0 K19 ["showContextMenu"]
  NEWCLOSURE R2 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U12
  CAPTURE VAL R1
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U1
  CAPTURE UPVAL U13
  CAPTURE UPVAL U14
  SETTABLEKS R2 R0 K20 ["onEdited"]
  GETTABLEKS R2 R0 K11 ["tableCallbacks"]
  NEWCLOSURE R3 P9
  CAPTURE UPVAL U15
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K21 ["OnSelectionChange"]
  NEWCLOSURE R2 P10
  CAPTURE VAL R0
  CAPTURE UPVAL U16
  SETTABLEKS R2 R0 K22 ["onSizeChange"]
  DUPTABLE R2 K31 [{"linkToken", "unlinkToken", "changePropertyType", "copyProperty", "pasteProperty", "deleteProperty", "viewTheme", "rename"}]
  NEWCLOSURE R3 P11
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U17
  SETTABLEKS R3 R2 K23 ["linkToken"]
  NEWCLOSURE R3 P12
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U18
  SETTABLEKS R3 R2 K24 ["unlinkToken"]
  NEWCLOSURE R3 P13
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U17
  SETTABLEKS R3 R2 K25 ["changePropertyType"]
  NEWCLOSURE R3 P14
  CAPTURE VAL R0
  CAPTURE UPVAL U19
  SETTABLEKS R3 R2 K26 ["copyProperty"]
  NEWCLOSURE R3 P15
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE UPVAL U20
  SETTABLEKS R3 R2 K27 ["pasteProperty"]
  NEWCLOSURE R3 P16
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U20
  SETTABLEKS R3 R2 K28 ["deleteProperty"]
  NEWCLOSURE R3 P17
  CAPTURE VAL R0
  CAPTURE UPVAL U9
  CAPTURE UPVAL U15
  CAPTURE UPVAL U21
  SETTABLEKS R3 R2 K29 ["viewTheme"]
  NEWCLOSURE R3 P18
  CAPTURE VAL R0
  SETTABLEKS R3 R2 K30 ["rename"]
  SETTABLEKS R2 R0 K32 ["menuActions"]
  NEWCLOSURE R2 P19
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K33 ["onAction"]
  NEWCLOSURE R2 P20
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  SETTABLEKS R2 R0 K34 ["onPropertyPressed"]
  RETURN R0 0

PROTO_28:
  GETTABLEKS R2 R0 K0 ["RootInstance"]
  GETTABLEKS R3 R1 K1 ["rootInstance"]
  JUMPIFNOTEQ R2 R3 [+4]
  GETTABLEKS R3 R0 K2 ["IsDirty"]
  JUMPIFNOT R3 [+53]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["buildItems"]
  MOVE R4 R2
  CALL R3 1 1
  NEWTABLE R4 0 0
  NEWTABLE R5 0 0
  GETTABLEKS R6 R1 K1 ["rootInstance"]
  JUMPIFNOTEQ R2 R6 [+15]
  GETUPVAL R6 1
  GETTABLEKS R8 R1 K4 ["table"]
  GETTABLEKS R7 R8 K5 ["Expansion"]
  CALL R6 1 1
  MOVE R5 R6
  GETUPVAL R6 1
  GETTABLEKS R8 R1 K4 ["table"]
  GETTABLEKS R7 R8 K6 ["Selection"]
  CALL R6 1 1
  MOVE R4 R6
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K7 ["expandNewRows"]
  MOVE R7 R3
  MOVE R8 R5
  CALL R6 2 0
  GETUPVAL R6 2
  MOVE R7 R1
  DUPTABLE R8 K8 [{"rootInstance", "table"}]
  SETTABLEKS R2 R8 K1 ["rootInstance"]
  GETUPVAL R9 2
  GETTABLEKS R10 R1 K4 ["table"]
  DUPTABLE R11 K10 [{"Expansion", "Selection", "Items"}]
  SETTABLEKS R5 R11 K5 ["Expansion"]
  SETTABLEKS R4 R11 K6 ["Selection"]
  SETTABLEKS R3 R11 K9 ["Items"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K4 ["table"]
  CALL R6 2 -1
  RETURN R6 -1
  RETURN R1 1

PROTO_29:
  GETTABLEKS R1 R0 K0 ["state"]
  GETUPVAL R2 0
  DUPTABLE R3 K21 [{"Columns", "ClampSize", "Expansion", "FullSpanEmphasis", "GetChildren", "GetItemId", "LayoutOrder", "OnCellAction", "OnCellEdited", "OnCellDoubleClick", "OnSizeChange", "Renderers", "RightClick", "RootItems", "RowHeight", "Selection", "Scroll", "ScrollProps", "ShowHeader", "UseScale"}]
  GETTABLEKS R5 R1 K22 ["table"]
  GETTABLEKS R4 R5 K1 ["Columns"]
  SETTABLEKS R4 R3 K1 ["Columns"]
  LOADB R4 1
  SETTABLEKS R4 R3 K2 ["ClampSize"]
  GETTABLEKS R5 R1 K22 ["table"]
  GETTABLEKS R4 R5 K3 ["Expansion"]
  SETTABLEKS R4 R3 K3 ["Expansion"]
  LOADB R4 1
  SETTABLEKS R4 R3 K4 ["FullSpanEmphasis"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K23 ["getItemChildren"]
  SETTABLEKS R4 R3 K5 ["GetChildren"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K24 ["getItemId"]
  SETTABLEKS R4 R3 K6 ["GetItemId"]
  LOADN R4 2
  SETTABLEKS R4 R3 K7 ["LayoutOrder"]
  GETTABLEKS R4 R0 K25 ["onAction"]
  SETTABLEKS R4 R3 K8 ["OnCellAction"]
  GETTABLEKS R4 R0 K26 ["onEdited"]
  SETTABLEKS R4 R3 K9 ["OnCellEdited"]
  GETTABLEKS R4 R0 K27 ["onDoubleClick"]
  SETTABLEKS R4 R3 K10 ["OnCellDoubleClick"]
  GETTABLEKS R4 R0 K28 ["onSizeChange"]
  SETTABLEKS R4 R3 K11 ["OnSizeChange"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K12 ["Renderers"]
  GETTABLEKS R4 R0 K29 ["onRightClickRow"]
  SETTABLEKS R4 R3 K13 ["RightClick"]
  GETTABLEKS R5 R1 K22 ["table"]
  GETTABLEKS R4 R5 K30 ["Items"]
  SETTABLEKS R4 R3 K14 ["RootItems"]
  LOADN R4 32
  SETTABLEKS R4 R3 K15 ["RowHeight"]
  GETTABLEKS R5 R1 K22 ["table"]
  GETTABLEKS R4 R5 K16 ["Selection"]
  SETTABLEKS R4 R3 K16 ["Selection"]
  LOADB R4 1
  SETTABLEKS R4 R3 K17 ["Scroll"]
  DUPTABLE R4 K32 [{"VerticalScrollBarInset"}]
  GETIMPORT R5 K36 [Enum.ScrollBarInset.ScrollBar]
  SETTABLEKS R5 R4 K31 ["VerticalScrollBarInset"]
  SETTABLEKS R4 R3 K18 ["ScrollProps"]
  LOADB R4 0
  SETTABLEKS R4 R3 K19 ["ShowHeader"]
  LOADB R4 1
  SETTABLEKS R4 R3 K20 ["UseScale"]
  GETTABLEKS R4 R0 K37 ["tableCallbacks"]
  CALL R2 2 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K38 ["createElement"]
  GETUPVAL R4 4
  MOVE R5 R2
  CALL R3 2 -1
  RETURN R3 -1

PROTO_30:
  DUPTABLE R1 K3 [{"IsDirty", "ClipboardInstance", "ClipboardProperty"}]
  GETTABLEKS R3 R0 K4 ["Window"]
  GETTABLEKS R2 R3 K0 ["IsDirty"]
  SETTABLEKS R2 R1 K0 ["IsDirty"]
  GETTABLEKS R3 R0 K5 ["Clipboard"]
  GETTABLEKS R2 R3 K6 ["Instance"]
  SETTABLEKS R2 R1 K1 ["ClipboardInstance"]
  GETTABLEKS R3 R0 K5 ["Clipboard"]
  GETTABLEKS R2 R3 K7 ["Property"]
  SETTABLEKS R2 R1 K2 ["ClipboardProperty"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ChangeHistoryService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R1 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["RoactRodux"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R6 R1 K9 ["Packages"]
  GETTABLEKS R5 R6 K12 ["Dash"]
  CALL R4 1 1
  GETTABLEKS R5 R4 K13 ["copy"]
  GETTABLEKS R6 R4 K14 ["join"]
  GETTABLEKS R7 R4 K15 ["joinDeep"]
  GETIMPORT R8 K8 [require]
  GETTABLEKS R10 R1 K9 ["Packages"]
  GETTABLEKS R9 R10 K16 ["Framework"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K17 ["UI"]
  GETTABLEKS R10 R9 K18 ["TreeTable"]
  GETTABLEKS R11 R8 K19 ["ContextServices"]
  GETTABLEKS R12 R11 K20 ["withContext"]
  GETIMPORT R13 K8 [require]
  GETTABLEKS R15 R1 K21 ["Src"]
  GETTABLEKS R14 R15 K22 ["Types"]
  CALL R13 1 1
  GETIMPORT R14 K8 [require]
  GETTABLEKS R17 R1 K21 ["Src"]
  GETTABLEKS R16 R17 K23 ["Reducers"]
  GETTABLEKS R15 R16 K24 ["Clipboard"]
  CALL R14 1 1
  GETIMPORT R15 K8 [require]
  GETTABLEKS R18 R1 K21 ["Src"]
  GETTABLEKS R17 R18 K23 ["Reducers"]
  GETTABLEKS R16 R17 K25 ["RootReducer"]
  CALL R15 1 1
  GETTABLEKS R17 R1 K21 ["Src"]
  GETTABLEKS R16 R17 K26 ["Actions"]
  GETIMPORT R17 K8 [require]
  GETTABLEKS R19 R16 K24 ["Clipboard"]
  GETTABLEKS R18 R19 K27 ["CopyPropertyToClipboard"]
  CALL R17 1 1
  GETIMPORT R18 K8 [require]
  GETTABLEKS R20 R16 K28 ["Window"]
  GETTABLEKS R19 R20 K29 ["SelectItem"]
  CALL R18 1 1
  GETTABLEKS R20 R1 K21 ["Src"]
  GETTABLEKS R19 R20 K30 ["Thunks"]
  GETIMPORT R20 K8 [require]
  GETTABLEKS R22 R19 K31 ["Change"]
  GETTABLEKS R21 R22 K32 ["RenameStyleRuleProperty"]
  CALL R20 1 1
  GETIMPORT R21 K8 [require]
  GETTABLEKS R23 R19 K31 ["Change"]
  GETTABLEKS R22 R23 K33 ["SetStyleRuleProperty"]
  CALL R21 1 1
  GETIMPORT R22 K8 [require]
  GETTABLEKS R24 R19 K31 ["Change"]
  GETTABLEKS R23 R24 K34 ["SetStyleRulePropertyType"]
  CALL R22 1 1
  GETIMPORT R23 K8 [require]
  GETTABLEKS R25 R19 K31 ["Change"]
  GETTABLEKS R24 R25 K35 ["SetStyleRuleSelector"]
  CALL R23 1 1
  GETIMPORT R24 K8 [require]
  GETTABLEKS R26 R19 K36 ["ContextMenu"]
  GETTABLEKS R25 R26 K37 ["ShowStyleRuleMenu"]
  CALL R24 1 1
  GETIMPORT R25 K8 [require]
  GETTABLEKS R27 R19 K31 ["Change"]
  GETTABLEKS R26 R27 K38 ["UnlinkStyleRulePropertyTokenReference"]
  CALL R25 1 1
  GETIMPORT R26 K8 [require]
  GETTABLEKS R29 R1 K21 ["Src"]
  GETTABLEKS R28 R29 K39 ["Util"]
  GETTABLEKS R27 R28 K40 ["mapDispatchToProps"]
  CALL R26 1 1
  GETIMPORT R27 K8 [require]
  GETTABLEKS R30 R1 K21 ["Src"]
  GETTABLEKS R29 R30 K39 ["Util"]
  GETTABLEKS R28 R29 K41 ["DesignHelpers"]
  CALL R27 1 1
  GETIMPORT R28 K8 [require]
  GETTABLEKS R31 R1 K21 ["Src"]
  GETTABLEKS R30 R31 K39 ["Util"]
  GETTABLEKS R29 R30 K42 ["MenuHelpers"]
  CALL R28 1 1
  GETIMPORT R29 K8 [require]
  GETTABLEKS R32 R1 K21 ["Src"]
  GETTABLEKS R31 R32 K43 ["Resources"]
  GETTABLEKS R30 R31 K44 ["ModernIcons"]
  CALL R29 1 1
  GETIMPORT R30 K8 [require]
  GETTABLEKS R33 R1 K21 ["Src"]
  GETTABLEKS R32 R33 K39 ["Util"]
  GETTABLEKS R31 R32 K45 ["StyleSchema"]
  CALL R30 1 1
  GETIMPORT R31 K8 [require]
  GETTABLEKS R34 R1 K21 ["Src"]
  GETTABLEKS R33 R34 K39 ["Util"]
  GETTABLEKS R32 R33 K46 ["SelectorHelpers"]
  CALL R31 1 1
  GETIMPORT R32 K8 [require]
  GETTABLEKS R35 R1 K21 ["Src"]
  GETTABLEKS R34 R35 K39 ["Util"]
  GETTABLEKS R33 R34 K47 ["TokenHelpers"]
  CALL R32 1 1
  GETIMPORT R33 K8 [require]
  GETTABLEKS R35 R1 K21 ["Src"]
  GETTABLEKS R34 R35 K48 ["Renderers"]
  CALL R33 1 1
  GETIMPORT R34 K8 [require]
  GETTABLEKS R37 R1 K21 ["Src"]
  GETTABLEKS R36 R37 K39 ["Util"]
  GETTABLEKS R35 R36 K49 ["bind"]
  CALL R34 1 1
  GETIMPORT R35 K8 [require]
  GETTABLEKS R38 R1 K21 ["Src"]
  GETTABLEKS R37 R38 K39 ["Util"]
  GETTABLEKS R36 R37 K50 ["recordChange"]
  CALL R35 1 1
  MOVE R36 R0
  CALL R35 1 1
  GETIMPORT R36 K8 [require]
  GETTABLEKS R39 R1 K21 ["Src"]
  GETTABLEKS R38 R39 K39 ["Util"]
  GETTABLEKS R37 R38 K51 ["TreeTableHelpers"]
  CALL R36 1 1
  GETIMPORT R37 K8 [require]
  GETTABLEKS R41 R1 K21 ["Src"]
  GETTABLEKS R40 R41 K52 ["Contexts"]
  GETTABLEKS R39 R40 K53 ["Telemetry"]
  GETTABLEKS R38 R39 K54 ["TelemetryContext"]
  CALL R37 1 1
  GETIMPORT R38 K8 [require]
  GETIMPORT R40 K5 [script]
  GETTABLEKS R39 R40 K55 ["Tree"]
  CALL R38 1 1
  GETTABLEKS R39 R38 K56 ["EditTree"]
  GETTABLEKS R40 R2 K57 ["PureComponent"]
  LOADK R42 K58 ["SelectorPropertyTable"]
  NAMECALL R40 R40 K59 ["extend"]
  CALL R40 2 1
  DUPCLOSURE R41 K60 [PROTO_27]
  CAPTURE VAL R5
  CAPTURE VAL R38
  CAPTURE VAL R39
  CAPTURE VAL R6
  CAPTURE VAL R30
  CAPTURE VAL R29
  CAPTURE VAL R34
  CAPTURE VAL R28
  CAPTURE VAL R31
  CAPTURE VAL R32
  CAPTURE VAL R27
  CAPTURE VAL R24
  CAPTURE VAL R23
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R36
  CAPTURE VAL R7
  CAPTURE VAL R22
  CAPTURE VAL R25
  CAPTURE VAL R17
  CAPTURE VAL R35
  CAPTURE VAL R18
  SETTABLEKS R41 R40 K61 ["init"]
  DUPCLOSURE R41 K62 [PROTO_28]
  CAPTURE VAL R38
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R41 R40 K63 ["getDerivedStateFromProps"]
  DUPCLOSURE R41 K64 [PROTO_29]
  CAPTURE VAL R6
  CAPTURE VAL R38
  CAPTURE VAL R33
  CAPTURE VAL R2
  CAPTURE VAL R10
  SETTABLEKS R41 R40 K65 ["render"]
  MOVE R41 R12
  DUPTABLE R42 K68 [{"Plugin", "Localization", "Telemetry"}]
  GETTABLEKS R43 R11 K66 ["Plugin"]
  SETTABLEKS R43 R42 K66 ["Plugin"]
  GETTABLEKS R43 R11 K67 ["Localization"]
  SETTABLEKS R43 R42 K67 ["Localization"]
  SETTABLEKS R37 R42 K53 ["Telemetry"]
  CALL R41 1 1
  MOVE R42 R40
  CALL R41 1 1
  MOVE R40 R41
  GETTABLEKS R41 R3 K69 ["connect"]
  DUPCLOSURE R42 K70 [PROTO_30]
  MOVE R43 R26
  CALL R41 2 1
  MOVE R42 R40
  CALL R41 1 -1
  RETURN R41 -1
