PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"VRDialogEnabled"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["VRDialogEnabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  JUMPIFNOT R0 [+8]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["DeviceSelected"]
  LOADK R2 K2 ["VR"]
  MOVE R3 R0
  CALL R1 2 0
  GETUPVAL R1 0
  DUPTABLE R3 K4 [{"VRDialogEnabled"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K3 ["VRDialogEnabled"]
  NAMECALL R1 R1 K5 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  LOADNIL R1
  GETUPVAL R2 0
  JUMPIFNOT R2 [+3]
  GETUPVAL R2 1
  JUMPIF R2 [+1]
  LOADB R1 0
  DUPTABLE R2 K1 [{"VRDialogEnabled"}]
  GETUPVAL R4 1
  JUMPIFNOT R4 [+2]
  LOADNIL R3
  JUMP [+1]
  MOVE R3 R1
  SETTABLEKS R3 R2 K0 ["VRDialogEnabled"]
  SETTABLEKS R2 R0 K2 ["state"]
  GETUPVAL R2 0
  JUMPIFNOT R2 [+17]
  GETUPVAL R2 1
  JUMPIF R2 [+15]
  GETTABLEKS R3 R0 K3 ["props"]
  GETTABLEKS R2 R3 K4 ["DeviceSelected"]
  LOADK R3 K5 ["VR"]
  LOADB R4 0
  CALL R2 2 0
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["showVRDialog"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K7 ["closeVRDialog"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  JUMPIF R1 [+14]
  GETUPVAL R1 1
  JUMPIFNOT R1 [+12]
  GETTABLEKS R1 R0 K0 ["Id"]
  JUMPIFNOTEQKS R1 K1 ["VR"] [+9]
  GETTABLEKS R1 R0 K2 ["Selected"]
  JUMPIF R1 [+5]
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K3 ["showVRDialog"]
  CALL R1 0 0
  RETURN R0 0
  GETUPVAL R1 3
  GETTABLEKS R2 R0 K0 ["Id"]
  GETTABLEKS R4 R0 K2 ["Selected"]
  NOT R3 R4
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  JUMPIFNOTEQKS R0 K0 ["Agree"] [+7]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["closeVRDialog"]
  LOADB R2 1
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["closeVRDialog"]
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["closeVRDialog"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Localization"]
  GETTABLEKS R3 R1 K2 ["Stylizer"]
  GETTABLEKS R5 R1 K4 ["LayoutOrder"]
  ORK R4 R5 K3 [0]
  GETTABLEKS R5 R1 K5 ["DevicesError"]
  GETTABLEKS R6 R1 K6 ["DeviceSelected"]
  GETTABLEKS R7 R1 K7 ["Devices"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K8 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K15 [{"Title", "LayoutOrder", "Boxes", "ErrorMessage", "EntryClicked", "AbsoluteMaxHeight", "UseGridLayout"}]
  LOADK R13 K16 ["PageTitle"]
  LOADK R14 K7 ["Devices"]
  NAMECALL R11 R2 K17 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K9 ["Title"]
  SETTABLEKS R4 R10 K4 ["LayoutOrder"]
  NEWTABLE R11 0 5
  DUPTABLE R12 K20 [{"Id", "Title", "Selected"}]
  LOADK R13 K21 ["Computer"]
  SETTABLEKS R13 R12 K18 ["Id"]
  LOADK R15 K7 ["Devices"]
  LOADK R16 K21 ["Computer"]
  NAMECALL R13 R2 K17 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K9 ["Title"]
  GETTABLEKS R13 R7 K21 ["Computer"]
  SETTABLEKS R13 R12 K19 ["Selected"]
  DUPTABLE R13 K20 [{"Id", "Title", "Selected"}]
  LOADK R14 K22 ["Phone"]
  SETTABLEKS R14 R13 K18 ["Id"]
  LOADK R16 K7 ["Devices"]
  LOADK R17 K22 ["Phone"]
  NAMECALL R14 R2 K17 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K9 ["Title"]
  GETTABLEKS R14 R7 K22 ["Phone"]
  SETTABLEKS R14 R13 K19 ["Selected"]
  DUPTABLE R14 K20 [{"Id", "Title", "Selected"}]
  LOADK R15 K23 ["Tablet"]
  SETTABLEKS R15 R14 K18 ["Id"]
  LOADK R17 K7 ["Devices"]
  LOADK R18 K23 ["Tablet"]
  NAMECALL R15 R2 K17 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K9 ["Title"]
  GETTABLEKS R15 R7 K23 ["Tablet"]
  SETTABLEKS R15 R14 K19 ["Selected"]
  DUPTABLE R15 K20 [{"Id", "Title", "Selected"}]
  LOADK R16 K24 ["Console"]
  SETTABLEKS R16 R15 K18 ["Id"]
  LOADK R18 K7 ["Devices"]
  LOADK R19 K24 ["Console"]
  NAMECALL R16 R2 K17 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K9 ["Title"]
  GETTABLEKS R16 R7 K24 ["Console"]
  SETTABLEKS R16 R15 K19 ["Selected"]
  GETUPVAL R17 2
  JUMPIFNOT R17 [+16]
  DUPTABLE R16 K20 [{"Id", "Title", "Selected"}]
  LOADK R17 K25 ["VR"]
  SETTABLEKS R17 R16 K18 ["Id"]
  LOADK R19 K7 ["Devices"]
  LOADK R20 K25 ["VR"]
  NAMECALL R17 R2 K17 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K9 ["Title"]
  GETTABLEKS R17 R7 K25 ["VR"]
  SETTABLEKS R17 R16 K19 ["Selected"]
  JUMP [+1]
  LOADNIL R16
  SETLIST R11 R12 5 [1]
  SETTABLEKS R11 R10 K10 ["Boxes"]
  JUMPIFNOT R5 [+6]
  LOADK R13 K26 ["Error"]
  LOADK R14 K27 ["NoDevices"]
  NAMECALL R11 R2 K17 ["getText"]
  CALL R11 3 1
  JUMPIF R11 [+1]
  LOADNIL R11
  SETTABLEKS R11 R10 K11 ["ErrorMessage"]
  NEWCLOSURE R11 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K12 ["EntryClicked"]
  GETTABLEKS R12 R3 K28 ["checkboxset"]
  GETTABLEKS R11 R12 K29 ["maxHeight"]
  SETTABLEKS R11 R10 K13 ["AbsoluteMaxHeight"]
  LOADB R11 1
  SETTABLEKS R11 R10 K14 ["UseGridLayout"]
  DUPTABLE R11 K31 [{"VRDialog"}]
  GETTABLEKS R14 R0 K32 ["state"]
  GETTABLEKS R13 R14 K33 ["VRDialogEnabled"]
  JUMPIFNOT R13 [+98]
  GETUPVAL R13 3
  JUMPIF R13 [+96]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K8 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K40 [{"Title", "Header", "Entries", "Buttons", "OnButtonClicked", "OnClose", "minContentSize"}]
  LOADK R17 K41 ["VRPrompt"]
  LOADK R18 K9 ["Title"]
  NAMECALL R15 R2 K17 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K9 ["Title"]
  LOADK R17 K41 ["VRPrompt"]
  LOADK R18 K34 ["Header"]
  NAMECALL R15 R2 K17 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K34 ["Header"]
  NEWTABLE R15 0 4
  LOADK R18 K41 ["VRPrompt"]
  LOADK R19 K42 ["DialogItem1"]
  NAMECALL R16 R2 K17 ["getText"]
  CALL R16 3 1
  LOADK R19 K41 ["VRPrompt"]
  LOADK R20 K43 ["DialogItem2"]
  NAMECALL R17 R2 K17 ["getText"]
  CALL R17 3 1
  LOADK R20 K41 ["VRPrompt"]
  LOADK R21 K44 ["DialogItem3"]
  NAMECALL R18 R2 K17 ["getText"]
  CALL R18 3 1
  LOADK R21 K41 ["VRPrompt"]
  LOADK R22 K45 ["DialogItem4"]
  NAMECALL R19 R2 K17 ["getText"]
  CALL R19 3 -1
  SETLIST R15 R16 -1 [1]
  SETTABLEKS R15 R14 K35 ["Entries"]
  NEWTABLE R15 0 2
  DUPTABLE R16 K49 [{"Key", "Text", "Style"}]
  LOADK R17 K50 ["Disagree"]
  SETTABLEKS R17 R16 K46 ["Key"]
  LOADK R19 K51 ["Button"]
  LOADK R20 K52 ["ReplyDisagree"]
  NAMECALL R17 R2 K17 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K47 ["Text"]
  LOADK R17 K53 ["RoundLargeText"]
  SETTABLEKS R17 R16 K48 ["Style"]
  DUPTABLE R17 K49 [{"Key", "Text", "Style"}]
  LOADK R18 K54 ["Agree"]
  SETTABLEKS R18 R17 K46 ["Key"]
  LOADK R20 K51 ["Button"]
  LOADK R21 K55 ["ReplyAgree"]
  NAMECALL R18 R2 K17 ["getText"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K47 ["Text"]
  LOADK R18 K56 ["RoundLargeTextPrimary"]
  SETTABLEKS R18 R17 K48 ["Style"]
  SETLIST R15 R16 2 [1]
  SETTABLEKS R15 R14 K36 ["Buttons"]
  NEWCLOSURE R15 P1
  CAPTURE VAL R0
  SETTABLEKS R15 R14 K37 ["OnButtonClicked"]
  NEWCLOSURE R15 P2
  CAPTURE VAL R0
  SETTABLEKS R15 R14 K38 ["OnClose"]
  GETIMPORT R15 K59 [Vector2.new]
  LOADN R16 88
  LOADN R17 220
  CALL R15 2 1
  SETTABLEKS R15 R14 K39 ["minContentSize"]
  CALL R12 2 1
  JUMP [+1]
  LOADNIL R12
  SETTABLEKS R12 R11 K30 ["VRDialog"]
  CALL R8 3 -1
  RETURN R8 -1

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
  GETIMPORT R5 K4 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Components"]
  GETTABLEKS R6 R7 K12 ["CheckBoxSet"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R9 R0 K10 ["Src"]
  GETTABLEKS R8 R9 K11 ["Components"]
  GETTABLEKS R7 R8 K13 ["ListDialog"]
  CALL R6 1 1
  GETTABLEKS R7 R1 K14 ["PureComponent"]
  LOADK R9 K15 ["PlatformSelect"]
  NAMECALL R7 R7 K16 ["extend"]
  CALL R7 2 1
  GETTABLEKS R8 R2 K17 ["SharedFlags"]
  GETIMPORT R9 K19 [game]
  LOADK R11 K20 ["StudioEnableVRToggle"]
  NAMECALL R9 R9 K21 ["GetFastFlag"]
  CALL R9 2 1
  GETIMPORT R10 K19 [game]
  LOADK R12 K22 ["RemoveVRToggleDialog2"]
  NAMECALL R10 R10 K21 ["GetFastFlag"]
  CALL R10 2 1
  DUPCLOSURE R11 K23 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R11 R7 K24 ["init"]
  DUPCLOSURE R11 K25 [PROTO_6]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R10
  CAPTURE VAL R6
  SETTABLEKS R11 R7 K26 ["render"]
  MOVE R11 R4
  DUPTABLE R12 K29 [{"Localization", "Stylizer"}]
  GETTABLEKS R13 R3 K27 ["Localization"]
  SETTABLEKS R13 R12 K27 ["Localization"]
  GETTABLEKS R13 R3 K28 ["Stylizer"]
  SETTABLEKS R13 R12 K28 ["Stylizer"]
  CALL R11 1 1
  MOVE R12 R7
  CALL R11 1 1
  MOVE R7 R11
  RETURN R7 1
