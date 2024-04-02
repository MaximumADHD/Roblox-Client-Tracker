PROTO_0:
  NEWTABLE R1 0 0
  LOADK R4 K0 ["FilterMenu"]
  LOADK R5 K1 ["FilterForExperience"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K3 ["Experience"]
  LOADK R4 K0 ["FilterMenu"]
  LOADK R5 K4 ["FilterForLocalization"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K5 ["Localization"]
  LOADK R4 K0 ["FilterMenu"]
  LOADK R5 K6 ["FilterForMonetization"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K7 ["Monetization"]
  LOADK R4 K0 ["FilterMenu"]
  LOADK R5 K8 ["FilterForPermissions"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K9 ["Permissions"]
  LOADK R4 K0 ["FilterMenu"]
  LOADK R5 K10 ["FilterForPlace"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K11 ["Place"]
  LOADK R4 K0 ["FilterMenu"]
  LOADK R5 K12 ["FilterForPublish"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  SETTABLEKS R2 R1 K13 ["Publish"]
  RETURN R1 1

PROTO_1:
  NEWTABLE R1 0 5
  LOADK R4 K0 ["FilterMenu"]
  LOADK R5 K1 ["FilterForAllEvents"]
  NAMECALL R2 R0 K2 ["getText"]
  CALL R2 3 1
  LOADK R5 K0 ["FilterMenu"]
  LOADK R6 K3 ["FilterFor7days"]
  NAMECALL R3 R0 K2 ["getText"]
  CALL R3 3 1
  LOADK R6 K0 ["FilterMenu"]
  LOADK R7 K4 ["FilterFor30days"]
  NAMECALL R4 R0 K2 ["getText"]
  CALL R4 3 1
  LOADK R7 K0 ["FilterMenu"]
  LOADK R8 K5 ["FilterFor90days"]
  NAMECALL R5 R0 K2 ["getText"]
  CALL R5 3 1
  LOADK R8 K0 ["FilterMenu"]
  LOADK R9 K6 ["FilterFor365days"]
  NAMECALL R6 R0 K2 ["getText"]
  CALL R6 3 -1
  SETLIST R1 R2 -1 [1]
  RETURN R1 1

PROTO_2:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_NEXT R2
  JUMPIF R6 [+7]
  FASTCALL2 TABLE_INSERT R1 R5 [+5]
  MOVE R8 R1
  MOVE R9 R5
  GETIMPORT R7 K4 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-9]
  RETURN R1 1

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ordering"]
  JUMPIFNOTEQKNIL R0 [+11]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Dictionary"]
  GETTABLEKS R0 R1 K2 ["keys"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["rows"]
  CALL R0 1 -1
  RETURN R0 -1
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["ordering"]
  RETURN R0 1

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Dictionary"]
  GETTABLEKS R0 R1 K1 ["join"]
  GETUPVAL R1 1
  NEWTABLE R2 1 0
  GETUPVAL R3 2
  LOADB R5 1
  GETUPVAL R7 1
  GETUPVAL R8 2
  GETTABLE R6 R7 R8
  JUMPIFEQKNIL R6 [+4]
  GETUPVAL R6 1
  GETUPVAL R7 2
  GETTABLE R5 R6 R7
  NOT R4 R5
  SETTABLE R4 R2 R3
  CALL R0 2 1
  GETUPVAL R1 3
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K2 ["OnChange"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  GETTABLEKS R3 R0 K2 ["rows"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  LOADB R7 1
  SETTABLE R7 R1 R5
  FORGLOOP R2 2 [-3]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["useState"]
  MOVE R3 R1
  CALL R2 1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["useMemo"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  NEWTABLE R6 0 2
  GETTABLEKS R7 R0 K5 ["ordering"]
  GETTABLEKS R8 R0 K2 ["rows"]
  SETLIST R6 R7 2 [1]
  CALL R4 2 1
  NEWTABLE R5 0 0
  LOADN R6 1
  GETIMPORT R7 K7 [ipairs]
  MOVE R8 R4
  CALL R7 1 3
  FORGPREP_INEXT R7
  GETTABLEKS R13 R0 K2 ["rows"]
  GETTABLE R12 R13 R11
  JUMPIFEQKNIL R12 [+85]
  ADDK R6 R6 K8 [1]
  NEWCLOSURE R13 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R3
  CAPTURE VAL R0
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K9 ["createElement"]
  LOADK R15 K10 ["Frame"]
  NEWTABLE R16 2 0
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K11 ["Tag"]
  GETUPVAL R18 2
  LOADK R19 K12 ["X-Row"]
  LOADK R20 K13 ["Component-FilterMenu-CheckBoxes"]
  LOADK R21 K14 ["CX-Invisible"]
  CALL R18 3 1
  SETTABLE R18 R16 R17
  GETUPVAL R17 3
  NAMECALL R17 R17 K15 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K16 ["LayoutOrder"]
  DUPTABLE R17 K19 [{"Checkbox", "Text"}]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K9 ["createElement"]
  GETUPVAL R19 4
  DUPTABLE R20 K22 [{"LayoutOrder", "Checked", "OnClick"}]
  GETUPVAL R21 3
  NAMECALL R21 R21 K15 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K16 ["LayoutOrder"]
  LOADB R21 1
  GETTABLE R22 R2 R11
  JUMPIFEQKNIL R22 [+2]
  GETTABLE R21 R2 R11
  SETTABLEKS R21 R20 K20 ["Checked"]
  SETTABLEKS R13 R20 K21 ["OnClick"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K17 ["Checkbox"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K9 ["createElement"]
  LOADK R19 K23 ["TextButton"]
  NEWTABLE R20 4 0
  GETUPVAL R22 0
  GETTABLEKS R21 R22 K11 ["Tag"]
  GETUPVAL R22 2
  LOADK R23 K24 ["Component-CheckboxButton"]
  CALL R22 1 1
  SETTABLE R22 R20 R21
  SETTABLEKS R12 R20 K18 ["Text"]
  GETUPVAL R21 3
  NAMECALL R21 R21 K15 ["getNextOrder"]
  CALL R21 1 1
  SETTABLEKS R21 R20 K16 ["LayoutOrder"]
  GETUPVAL R23 0
  GETTABLEKS R22 R23 K25 ["Event"]
  GETTABLEKS R21 R22 K26 ["Activated"]
  SETTABLE R13 R20 R21
  CALL R18 2 1
  SETTABLEKS R18 R17 K18 ["Text"]
  CALL R14 3 1
  SETTABLE R14 R5 R6
  FORGLOOP R7 2 [inext] [-90]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K9 ["createElement"]
  LOADK R8 K10 ["Frame"]
  NEWTABLE R9 4 0
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K11 ["Tag"]
  GETUPVAL R11 2
  LOADK R12 K27 ["X-Column"]
  LOADK R13 K14 ["CX-Invisible"]
  CALL R11 2 1
  SETTABLE R11 R9 R10
  GETIMPORT R10 K30 [UDim2.new]
  LOADN R11 1
  LOADN R12 0
  LOADN R13 0
  GETUPVAL R16 5
  GETTABLEKS R15 R16 K31 ["checkBoxRowHeight"]
  MUL R14 R15 R6
  CALL R10 4 1
  SETTABLEKS R10 R9 K32 ["Size"]
  GETTABLEKS R10 R0 K16 ["LayoutOrder"]
  SETTABLEKS R10 R9 K16 ["LayoutOrder"]
  MOVE R10 R5
  CALL R7 3 -1
  RETURN R7 -1

PROTO_6:
  NEWTABLE R0 0 0
  GETIMPORT R1 K1 [pairs]
  GETUPVAL R4 0
  GETTABLEKS R2 R4 K2 ["collaborators"]
  CALL R1 1 3
  FORGPREP_NEXT R1
  SETTABLE R5 R0 R4
  FORGLOOP R1 2 [-2]
  LOADN R1 255
  GETUPVAL R2 1
  LOADK R4 K3 ["FilterMenu"]
  LOADK R5 K4 ["EveryoneElse"]
  NAMECALL R2 R2 K5 ["getText"]
  CALL R2 3 1
  SETTABLE R2 R0 R1
  RETURN R0 1

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnClear"]
  JUMPIFNOT R0 [+4]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnClear"]
  CALL R0 0 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnApply"]
  JUMPIFNOT R0 [+5]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["OnApply"]
  GETUPVAL R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  GETUPVAL R3 2
  DUPTABLE R4 K3 [{"EndDate"}]
  GETUPVAL R6 3
  GETTABLE R5 R6 R0
  SETTABLEKS R5 R4 K2 ["EndDate"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  GETUPVAL R3 2
  DUPTABLE R4 K3 [{"ExcludedEventCategories"}]
  GETUPVAL R5 3
  MOVE R6 R0
  CALL R5 1 1
  SETTABLEKS R5 R4 K2 ["ExcludedEventCategories"]
  CALL R2 2 -1
  CALL R1 -1 0
  RETURN R0 0

PROTO_11:
  NEWTABLE R1 0 0
  GETIMPORT R2 K1 [pairs]
  GETUPVAL R5 0
  GETTABLEKS R3 R5 K2 ["collaborators"]
  CALL R2 1 3
  FORGPREP_NEXT R2
  LOADB R7 1
  SETTABLE R7 R1 R5
  FORGLOOP R2 2 [-3]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 1
  LOADN R3 255
  LOADNIL R4
  SETTABLE R4 R2 R3
  GETIMPORT R3 K1 [pairs]
  MOVE R4 R2
  CALL R3 1 3
  FORGPREP_NEXT R3
  JUMPIFNOT R7 [+2]
  LOADB R8 0
  SETTABLE R8 R1 R7
  FORGLOOP R3 2 [-4]
  GETUPVAL R3 2
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K3 ["Dictionary"]
  GETTABLEKS R4 R5 K4 ["join"]
  GETUPVAL R5 4
  DUPTABLE R6 K7 [{"ShowCollaborators", "ShowEveryoneElse"}]
  SETTABLEKS R1 R6 K5 ["ShowCollaborators"]
  LOADN R9 255
  GETTABLE R8 R0 R9
  NOT R7 R8
  SETTABLEKS R7 R6 K6 ["ShowEveryoneElse"]
  CALL R4 2 -1
  CALL R3 -1 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  GETUPVAL R2 1
  CALL R1 1 2
  GETUPVAL R3 2
  NAMECALL R3 R3 K1 ["use"]
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["useMemo"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R3
  NEWTABLE R6 0 1
  GETTABLEKS R7 R0 K3 ["collaborators"]
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  LOADK R6 K5 ["Frame"]
  NEWTABLE R7 1 0
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K6 ["Tag"]
  GETUPVAL R9 3
  LOADK R10 K7 ["Component-FilterMenu"]
  LOADK R11 K8 ["X-Column"]
  LOADK R12 K9 ["X-Fill"]
  CALL R9 3 1
  SETTABLE R9 R7 R8
  DUPTABLE R8 K13 [{"Header", "Divider", "Contents"}]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  LOADK R10 K5 ["Frame"]
  NEWTABLE R11 2 0
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K6 ["Tag"]
  GETUPVAL R13 3
  LOADK R14 K14 ["X-Row"]
  LOADK R15 K15 ["CX-Invisible"]
  CALL R13 2 1
  SETTABLE R13 R11 R12
  GETUPVAL R12 4
  NAMECALL R12 R12 K16 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K17 ["LayoutOrder"]
  DUPTABLE R12 K21 [{"Text", "Clear", "Apply"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  LOADK R14 K22 ["TextLabel"]
  DUPTABLE R15 K23 [{"Text", "LayoutOrder"}]
  LOADK R18 K24 ["FilterMenu"]
  LOADK R19 K25 ["FilterEvents"]
  NAMECALL R16 R3 K26 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K18 ["Text"]
  GETUPVAL R16 4
  NAMECALL R16 R16 K16 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K17 ["LayoutOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K18 ["Text"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  LOADK R14 K27 ["TextButton"]
  NEWTABLE R15 4 0
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K6 ["Tag"]
  GETUPVAL R17 3
  LOADK R18 K28 ["Component-OptionButton"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  LOADK R18 K24 ["FilterMenu"]
  LOADK R19 K19 ["Clear"]
  NAMECALL R16 R3 K26 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K18 ["Text"]
  GETUPVAL R16 4
  NAMECALL R16 R16 K16 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K17 ["LayoutOrder"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K29 ["Event"]
  GETTABLEKS R16 R17 K30 ["Activated"]
  NEWCLOSURE R17 P1
  CAPTURE VAL R0
  SETTABLE R17 R15 R16
  CALL R13 2 1
  SETTABLEKS R13 R12 K19 ["Clear"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  LOADK R14 K27 ["TextButton"]
  NEWTABLE R15 4 0
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K6 ["Tag"]
  GETUPVAL R17 3
  LOADK R18 K28 ["Component-OptionButton"]
  CALL R17 1 1
  SETTABLE R17 R15 R16
  LOADK R18 K24 ["FilterMenu"]
  LOADK R19 K20 ["Apply"]
  NAMECALL R16 R3 K26 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K18 ["Text"]
  GETUPVAL R16 4
  NAMECALL R16 R16 K16 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K17 ["LayoutOrder"]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K29 ["Event"]
  GETTABLEKS R16 R17 K30 ["Activated"]
  NEWCLOSURE R17 P2
  CAPTURE VAL R0
  CAPTURE VAL R1
  SETTABLE R17 R15 R16
  CALL R13 2 1
  SETTABLEKS R13 R12 K20 ["Apply"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K10 ["Header"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  LOADK R10 K5 ["Frame"]
  NEWTABLE R11 2 0
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K6 ["Tag"]
  GETUPVAL R13 3
  LOADK R14 K31 ["CX-Divider"]
  CALL R13 1 1
  SETTABLE R13 R11 R12
  GETUPVAL R12 4
  NAMECALL R12 R12 K16 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K17 ["LayoutOrder"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K11 ["Divider"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["createElement"]
  LOADK R10 K32 ["ScrollingFrame"]
  NEWTABLE R11 8 0
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K6 ["Tag"]
  GETUPVAL R13 3
  LOADK R14 K15 ["CX-Invisible"]
  CALL R13 1 1
  SETTABLE R13 R11 R12
  GETUPVAL R12 4
  NAMECALL R12 R12 K16 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K17 ["LayoutOrder"]
  GETIMPORT R12 K36 [Enum.AutomaticSize.Y]
  SETTABLEKS R12 R11 K37 ["AutomaticCanvasSize"]
  GETIMPORT R12 K40 [UDim2.new]
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  LOADN R16 0
  CALL R12 4 1
  SETTABLEKS R12 R11 K41 ["CanvasSize"]
  GETIMPORT R12 K44 [Enum.ScrollBarInset.Always]
  SETTABLEKS R12 R11 K45 ["VerticalScrollBarInset"]
  DUPTABLE R12 K53 [{"Layout", "ByDateRange", "ByDateRangeFilter", "ByType", "ByTypeCheckBoxes", "ByCollaborator", "ByCollaboratorCheckBoxes"}]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  LOADK R14 K54 ["UIListLayout"]
  DUPTABLE R15 K57 [{"FillDirection", "SortOrder"}]
  GETIMPORT R16 K59 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K55 ["FillDirection"]
  GETIMPORT R16 K60 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R16 R15 K56 ["SortOrder"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K46 ["Layout"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  LOADK R14 K5 ["Frame"]
  NEWTABLE R15 2 0
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K6 ["Tag"]
  LOADK R17 K61 ["Component-FilterMenu-By"]
  SETTABLE R17 R15 R16
  GETUPVAL R16 4
  NAMECALL R16 R16 K16 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K17 ["LayoutOrder"]
  DUPTABLE R16 K63 [{"ByDateRangeText"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K4 ["createElement"]
  LOADK R18 K22 ["TextLabel"]
  DUPTABLE R19 K64 [{"Text"}]
  LOADK R22 K24 ["FilterMenu"]
  LOADK R23 K65 ["ByDate"]
  NAMECALL R20 R3 K26 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K18 ["Text"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K62 ["ByDateRangeText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K47 ["ByDateRange"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K68 [{"LayoutOrder", "OnChanged", "items"}]
  GETUPVAL R16 4
  NAMECALL R16 R16 K16 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K17 ["LayoutOrder"]
  NEWCLOSURE R16 P3
  CAPTURE VAL R2
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  CAPTURE UPVAL U7
  SETTABLEKS R16 R15 K66 ["OnChanged"]
  GETUPVAL R16 8
  MOVE R17 R3
  CALL R16 1 1
  SETTABLEKS R16 R15 K67 ["items"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K48 ["ByDateRangeFilter"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  LOADK R14 K5 ["Frame"]
  NEWTABLE R15 2 0
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K6 ["Tag"]
  LOADK R17 K61 ["Component-FilterMenu-By"]
  SETTABLE R17 R15 R16
  GETUPVAL R16 4
  NAMECALL R16 R16 K16 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K17 ["LayoutOrder"]
  DUPTABLE R16 K70 [{"ByTypeText"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K4 ["createElement"]
  LOADK R18 K22 ["TextLabel"]
  DUPTABLE R19 K64 [{"Text"}]
  LOADK R22 K24 ["FilterMenu"]
  LOADK R23 K49 ["ByType"]
  NAMECALL R20 R3 K26 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K18 ["Text"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K69 ["ByTypeText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K49 ["ByType"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  GETUPVAL R14 9
  DUPTABLE R15 K73 [{"rows", "LayoutOrder", "OnChange"}]
  GETUPVAL R16 10
  MOVE R17 R3
  CALL R16 1 1
  SETTABLEKS R16 R15 K71 ["rows"]
  GETUPVAL R16 4
  NAMECALL R16 R16 K16 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K17 ["LayoutOrder"]
  NEWCLOSURE R16 P4
  CAPTURE VAL R2
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  CAPTURE UPVAL U11
  SETTABLEKS R16 R15 K72 ["OnChange"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K50 ["ByTypeCheckBoxes"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  LOADK R14 K5 ["Frame"]
  NEWTABLE R15 2 0
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K6 ["Tag"]
  LOADK R17 K61 ["Component-FilterMenu-By"]
  SETTABLE R17 R15 R16
  GETUPVAL R16 4
  NAMECALL R16 R16 K16 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K17 ["LayoutOrder"]
  DUPTABLE R16 K75 [{"ByCollaboratorText"}]
  GETUPVAL R18 0
  GETTABLEKS R17 R18 K4 ["createElement"]
  LOADK R18 K22 ["TextLabel"]
  DUPTABLE R19 K64 [{"Text"}]
  LOADK R22 K24 ["FilterMenu"]
  LOADK R23 K76 ["ByUser"]
  NAMECALL R20 R3 K26 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K18 ["Text"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K74 ["ByCollaboratorText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K51 ["ByCollaborator"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K4 ["createElement"]
  GETUPVAL R14 9
  DUPTABLE R15 K73 [{"rows", "LayoutOrder", "OnChange"}]
  SETTABLEKS R4 R15 K71 ["rows"]
  GETUPVAL R16 4
  NAMECALL R16 R16 K16 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K17 ["LayoutOrder"]
  NEWCLOSURE R16 P5
  CAPTURE VAL R0
  CAPTURE UPVAL U11
  CAPTURE VAL R2
  CAPTURE UPVAL U6
  CAPTURE VAL R1
  SETTABLEKS R16 R15 K72 ["OnChange"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K52 ["ByCollaboratorCheckBoxes"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K12 ["Contents"]
  CALL R5 3 -1
  RETURN R5 -1

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
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Cryo"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Components"]
  GETTABLEKS R5 R6 K11 ["FilterDropdown"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K9 ["Src"]
  GETTABLEKS R7 R8 K12 ["Resources"]
  GETTABLEKS R6 R7 K13 ["StyleTips"]
  CALL R5 1 1
  GETTABLEKS R7 R2 K14 ["ContextServices"]
  GETTABLEKS R6 R7 K15 ["Localization"]
  GETTABLEKS R7 R2 K16 ["UI"]
  GETTABLEKS R8 R7 K17 ["Checkbox"]
  GETTABLEKS R10 R2 K18 ["Util"]
  GETTABLEKS R9 R10 K19 ["LayoutOrderIterator"]
  GETTABLEKS R10 R9 K20 ["new"]
  CALL R10 0 1
  GETTABLEKS R12 R2 K21 ["Styling"]
  GETTABLEKS R11 R12 K22 ["joinTags"]
  DUPCLOSURE R12 K23 [PROTO_0]
  DUPCLOSURE R13 K24 [PROTO_1]
  NEWTABLE R14 0 5
  LOADN R15 0
  LOADN R16 7
  LOADN R17 30
  LOADN R18 90
  LOADN R19 109
  SETLIST R14 R15 5 [1]
  DUPTABLE R15 K29 [{"EndDate", "ExcludedEventCategories", "ShowCollaborators", "ShowEveryoneElse"}]
  LOADK R16 K30 [""]
  SETTABLEKS R16 R15 K25 ["EndDate"]
  NEWTABLE R16 0 0
  SETTABLEKS R16 R15 K26 ["ExcludedEventCategories"]
  NEWTABLE R16 0 0
  SETTABLEKS R16 R15 K27 ["ShowCollaborators"]
  LOADB R16 1
  SETTABLEKS R16 R15 K28 ["ShowEveryoneElse"]
  DUPCLOSURE R16 K31 [PROTO_2]
  DUPCLOSURE R17 K32 [PROTO_5]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R5
  DUPCLOSURE R18 K33 [PROTO_12]
  CAPTURE VAL R1
  CAPTURE VAL R15
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R17
  CAPTURE VAL R12
  CAPTURE VAL R16
  RETURN R18 1
