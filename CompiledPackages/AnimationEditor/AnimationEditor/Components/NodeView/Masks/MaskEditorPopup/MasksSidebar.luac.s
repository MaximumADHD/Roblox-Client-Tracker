PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["properties"]
  GETTABLEKS R0 R1 K1 ["observeString"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K2 ["maskInstance"]
  LOADK R2 K3 ["Name"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["setSelectedMaskInstance"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["maskInstance"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useSignalState"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  NEWTABLE R4 0 1
  GETTABLEKS R5 R0 K2 ["maskInstance"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 -1
  CALL R1 -1 1
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K4 [typeof]
  CALL R4 1 1
  JUMPIFEQKS R4 K5 ["string"] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  FASTCALL2K ASSERT R3 K6 [+4]
  LOADK R4 K6 ["Name is not a string"]
  GETIMPORT R2 K8 [assert]
  CALL R2 2 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K9 ["useCallback"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  NEWTABLE R4 0 2
  GETTABLEKS R5 R0 K10 ["setSelectedMaskInstance"]
  GETTABLEKS R6 R0 K2 ["maskInstance"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K11 ["createElement"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K12 ["View"]
  DUPTABLE R5 K17 [{"LayoutOrder", "onActivated", "tag", "backgroundStyle"}]
  GETTABLEKS R6 R0 K18 ["layoutOrder"]
  SETTABLEKS R6 R5 K13 ["LayoutOrder"]
  SETTABLEKS R2 R5 K14 ["onActivated"]
  LOADK R6 K19 ["size-full-600 auto-x bg-surface-300 content-muted padding-x-small padding-y-xxsmall"]
  SETTABLEKS R6 R5 K15 ["tag"]
  GETTABLEKS R7 R0 K20 ["selectedMaskInstance"]
  GETTABLEKS R8 R0 K2 ["maskInstance"]
  JUMPIFNOTEQ R7 R8 [+12]
  DUPTABLE R6 K23 [{"Color3", "Transparency"}]
  GETIMPORT R7 K25 [Color3.fromHex]
  LOADK R8 K26 ["2A3B77"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K21 ["Color3"]
  LOADN R7 0
  SETTABLEKS R7 R6 K22 ["Transparency"]
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K16 ["backgroundStyle"]
  DUPTABLE R6 K28 [{"Text"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["createElement"]
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K27 ["Text"]
  DUPTABLE R9 K29 [{"Text", "tag"}]
  SETTABLEKS R1 R9 K27 ["Text"]
  LOADK R10 K30 ["text-align-x-left text-align-y-center text-body-medium size-0-full auto-x"]
  SETTABLEKS R10 R9 K15 ["tag"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K27 ["Text"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["sharedMasks"]
  GETTABLEKS R1 R2 K1 ["observeMasks"]
  MOVE R2 R0
  CALL R1 1 1
  NEWTABLE R2 0 0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K2 ["properties"]
  GETTABLEKS R8 R9 K3 ["observeString"]
  MOVE R9 R7
  LOADK R10 K4 ["Name"]
  CALL R8 2 0
  DUPTABLE R10 K7 [{"instance", "name"}]
  SETTABLEKS R7 R10 K5 ["instance"]
  GETTABLEKS R11 R7 K4 ["Name"]
  SETTABLEKS R11 R10 K6 ["name"]
  FASTCALL2 TABLE_INSERT R2 R10 [+4]
  MOVE R9 R2
  GETIMPORT R8 K10 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-22]
  RETURN R2 1

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createComputed"]
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CALL R0 1 -1
  RETURN R0 -1

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useSignalState"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  NEWTABLE R4 0 1
  GETTABLEKS R6 R0 K2 ["sharedMasks"]
  GETTABLEKS R5 R6 K3 ["observeMasks"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 -1
  CALL R1 -1 1
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K4 ["createNextOrder"]
  CALL R2 0 1
  NEWTABLE R3 0 0
  MOVE R4 R1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  GETTABLEKS R9 R8 K5 ["name"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K6 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K11 [{"layoutOrder", "maskInstance", "selectedMaskInstance", "setSelectedMaskInstance"}]
  MOVE R13 R2
  CALL R13 0 1
  SETTABLEKS R13 R12 K7 ["layoutOrder"]
  GETTABLEKS R13 R8 K12 ["instance"]
  SETTABLEKS R13 R12 K8 ["maskInstance"]
  GETTABLEKS R13 R0 K9 ["selectedMaskInstance"]
  SETTABLEKS R13 R12 K9 ["selectedMaskInstance"]
  GETTABLEKS R13 R0 K10 ["setSelectedMaskInstance"]
  SETTABLEKS R13 R12 K10 ["setSelectedMaskInstance"]
  CALL R10 2 1
  SETTABLE R10 R3 R9
  FORGLOOP R4 2 [-26]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K6 ["createElement"]
  GETUPVAL R6 6
  GETTABLEKS R5 R6 K13 ["ScrollView"]
  DUPTABLE R6 K18 [{"tag", "scroll", "layout", "LayoutOrder"}]
  LOADK R7 K19 ["size-full-0 grow bg-surface-300"]
  SETTABLEKS R7 R6 K14 ["tag"]
  DUPTABLE R7 K23 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
  GETIMPORT R8 K27 [Enum.AutomaticSize.XY]
  SETTABLEKS R8 R7 K20 ["AutomaticCanvasSize"]
  GETIMPORT R8 K30 [UDim2.new]
  CALL R8 0 1
  SETTABLEKS R8 R7 K21 ["CanvasSize"]
  GETIMPORT R8 K31 [Enum.ScrollingDirection.XY]
  SETTABLEKS R8 R7 K22 ["ScrollingDirection"]
  SETTABLEKS R7 R6 K15 ["scroll"]
  DUPTABLE R7 K33 [{"FillDirection"}]
  GETIMPORT R8 K35 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K32 ["FillDirection"]
  SETTABLEKS R7 R6 K16 ["layout"]
  GETTABLEKS R7 R0 K7 ["layoutOrder"]
  SETTABLEKS R7 R6 K17 ["LayoutOrder"]
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1

PROTO_6:
  NEWTABLE R1 0 0
  GETUPVAL R3 0
  GETTABLE R2 R3 R0
  JUMPIFEQKNIL R2 [+15]
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  MOVE R9 R1
  GETUPVAL R10 1
  MOVE R11 R7
  CALL R10 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K2 [table.insert]
  CALL R8 -1 0
  FORGLOOP R3 2 [-9]
  DUPTABLE R3 K5 [{"name", "children"}]
  GETTABLEKS R4 R0 K6 ["Name"]
  SETTABLEKS R4 R3 K3 ["name"]
  SETTABLEKS R1 R3 K4 ["children"]
  RETURN R3 1

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["getChildrenByParent"]
  CALL R0 0 1
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE VAL R1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["sharedMasks"]
  GETTABLEKS R2 R3 K2 ["createMask"]
  LOADK R3 K3 ["Mask"]
  NEWTABLE R4 0 1
  MOVE R5 R1
  GETIMPORT R6 K7 [Enum.RigLabel.Root]
  CALL R5 1 1
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  LOADK R5 K8 ["RBX_MaskRigType"]
  LOADK R6 K9 ["HRD"]
  NAMECALL R3 R2 K10 ["SetAttribute"]
  CALL R3 3 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K11 ["setSelectedMaskInstance"]
  MOVE R4 R2
  CALL R3 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["selectedMaskInstance"]
  JUMPIFNOTEQKNIL R2 [+2]
  LOADB R1 0 +1
  LOADB R1 1
  FASTCALL2K ASSERT R1 K1 [+4]
  LOADK R2 K1 ["Deleting with no selected mask"]
  GETIMPORT R0 K3 [assert]
  CALL R0 2 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K4 ["setSelectedMaskInstance"]
  LOADNIL R1
  CALL R0 1 0
  GETUPVAL R0 1
  LOADK R2 K5 ["Delete mask"]
  NAMECALL R0 R0 K6 ["TryBeginRecording"]
  CALL R0 2 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["selectedMaskInstance"]
  LOADNIL R2
  SETTABLEKS R2 R1 K7 ["Parent"]
  JUMPIFEQKNIL R0 [+8]
  GETUPVAL R1 1
  MOVE R3 R0
  GETIMPORT R4 K11 [Enum.FinishRecordingOperation.Commit]
  NAMECALL R1 R1 K12 ["FinishRecording"]
  CALL R1 3 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ContextServices"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  NAMECALL R1 R1 K2 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["useCallback"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R0
  NEWTABLE R4 0 2
  GETTABLEKS R6 R0 K4 ["sharedMasks"]
  GETTABLEKS R5 R6 K5 ["createMask"]
  GETTABLEKS R6 R0 K6 ["setSelectedMaskInstance"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["useCallback"]
  NEWCLOSURE R4 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  NEWTABLE R5 0 2
  GETTABLEKS R6 R0 K6 ["setSelectedMaskInstance"]
  GETTABLEKS R7 R0 K7 ["selectedMaskInstance"]
  SETLIST R5 R6 2 [1]
  CALL R3 2 1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K8 ["createNextOrder"]
  CALL R4 0 1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K9 ["createElement"]
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K10 ["View"]
  DUPTABLE R7 K13 [{"tag", "LayoutOrder"}]
  LOADK R8 K14 ["size-3000-full col shrink"]
  SETTABLEKS R8 R7 K11 ["tag"]
  GETTABLEKS R8 R0 K15 ["layoutOrder"]
  SETTABLEKS R8 R7 K12 ["LayoutOrder"]
  DUPTABLE R8 K18 [{"Toolbar", "List"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["createElement"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K10 ["View"]
  DUPTABLE R11 K13 [{"tag", "LayoutOrder"}]
  LOADK R12 K19 ["size-full-600 align-y-center row"]
  SETTABLEKS R12 R11 K11 ["tag"]
  MOVE R12 R4
  CALL R12 0 1
  SETTABLEKS R12 R11 K12 ["LayoutOrder"]
  DUPTABLE R12 K23 [{"MasksLabel", "Delete", "Add"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K9 ["createElement"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K24 ["Text"]
  DUPTABLE R15 K25 [{"Text", "LayoutOrder", "tag"}]
  LOADK R18 K26 ["MaskEditorPopup"]
  LOADK R19 K27 ["Masks"]
  NAMECALL R16 R1 K28 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K24 ["Text"]
  MOVE R16 R4
  CALL R16 0 1
  SETTABLEKS R16 R15 K12 ["LayoutOrder"]
  LOADK R16 K29 ["text-align-x-left text-align-y-center text-label-small size-0-full gap-xsmall content-emphasis grow"]
  SETTABLEKS R16 R15 K11 ["tag"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K20 ["MasksLabel"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K9 ["createElement"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K30 ["IconButton"]
  DUPTABLE R15 K35 [{"size", "icon", "LayoutOrder", "isDisabled", "onActivated"}]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K36 ["Enums"]
  GETTABLEKS R17 R18 K37 ["InputSize"]
  GETTABLEKS R16 R17 K38 ["XSmall"]
  SETTABLEKS R16 R15 K31 ["size"]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K36 ["Enums"]
  GETTABLEKS R17 R18 K39 ["IconName"]
  GETTABLEKS R16 R17 K40 ["MinusSmall"]
  SETTABLEKS R16 R15 K32 ["icon"]
  MOVE R16 R4
  CALL R16 0 1
  SETTABLEKS R16 R15 K12 ["LayoutOrder"]
  GETTABLEKS R17 R0 K7 ["selectedMaskInstance"]
  JUMPIFEQKNIL R17 [+2]
  LOADB R16 0 +1
  LOADB R16 1
  SETTABLEKS R16 R15 K33 ["isDisabled"]
  SETTABLEKS R3 R15 K34 ["onActivated"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K21 ["Delete"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K9 ["createElement"]
  GETUPVAL R15 5
  GETTABLEKS R14 R15 K30 ["IconButton"]
  DUPTABLE R15 K41 [{"size", "icon", "LayoutOrder", "onActivated"}]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K36 ["Enums"]
  GETTABLEKS R17 R18 K37 ["InputSize"]
  GETTABLEKS R16 R17 K42 ["Small"]
  SETTABLEKS R16 R15 K31 ["size"]
  GETUPVAL R19 5
  GETTABLEKS R18 R19 K36 ["Enums"]
  GETTABLEKS R17 R18 K39 ["IconName"]
  GETTABLEKS R16 R17 K43 ["PlusSmall"]
  SETTABLEKS R16 R15 K32 ["icon"]
  MOVE R16 R4
  CALL R16 0 1
  SETTABLEKS R16 R15 K12 ["LayoutOrder"]
  SETTABLEKS R2 R15 K34 ["onActivated"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K22 ["Add"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K16 ["Toolbar"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["createElement"]
  GETUPVAL R10 6
  DUPTABLE R11 K44 [{"sharedMasks", "layoutOrder", "selectedMaskInstance", "setSelectedMaskInstance"}]
  GETTABLEKS R12 R0 K4 ["sharedMasks"]
  SETTABLEKS R12 R11 K4 ["sharedMasks"]
  MOVE R12 R4
  CALL R12 0 1
  SETTABLEKS R12 R11 K15 ["layoutOrder"]
  GETTABLEKS R12 R0 K7 ["selectedMaskInstance"]
  SETTABLEKS R12 R11 K7 ["selectedMaskInstance"]
  GETTABLEKS R12 R0 K6 ["setSelectedMaskInstance"]
  SETTABLEKS R12 R11 K6 ["setSelectedMaskInstance"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K17 ["List"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ChangeHistoryService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AnimationEditor"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["AdaptiveAnimationTools"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Parent"]
  GETTABLEKS R4 R5 K12 ["Foundation"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R1 K10 ["Parent"]
  GETTABLEKS R5 R6 K13 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R7 R1 K10 ["Parent"]
  GETTABLEKS R6 R7 K14 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R8 R1 K10 ["Parent"]
  GETTABLEKS R7 R8 K15 ["ReactUtils"]
  CALL R6 1 1
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R1 K10 ["Parent"]
  GETTABLEKS R8 R9 K16 ["Signals"]
  CALL R7 1 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R1 K10 ["Parent"]
  GETTABLEKS R9 R10 K17 ["SignalsReact"]
  CALL R8 1 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R12 R1 K18 ["Util"]
  GETTABLEKS R11 R12 K16 ["Signals"]
  GETTABLEKS R10 R11 K19 ["TypedInstanceSignals"]
  CALL R9 1 1
  GETIMPORT R10 K9 [require]
  GETIMPORT R13 K5 [script]
  GETTABLEKS R12 R13 K10 ["Parent"]
  GETTABLEKS R11 R12 K20 ["useSharedMasks"]
  CALL R10 1 1
  DUPCLOSURE R11 K21 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R9
  CAPTURE VAL R3
  DUPCLOSURE R12 K22 [PROTO_5]
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R11
  CAPTURE VAL R3
  DUPCLOSURE R13 K23 [PROTO_9]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R0
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R12
  RETURN R13 1
