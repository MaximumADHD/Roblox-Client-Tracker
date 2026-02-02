PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIF R0 [+1]
  RETURN R0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K0 ["use"]
  CALL R0 0 1
  NAMECALL R0 R0 K1 ["get"]
  CALL R0 1 1
  GETUPVAL R1 2
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K2 ["useContext"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K3 ["Context"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K4 ["isDialogOpen"]
  JUMPIFNOT R3 [+4]
  GETTABLEKS R3 R2 K5 ["dialogLookType"]
  JUMPIFNOTEQKNIL R3 [+3]
  LOADNIL R3
  RETURN R3 1
  GETTABLEKS R3 R2 K5 ["dialogLookType"]
  GETUPVAL R5 5
  GETTABLE R4 R5 R3
  LOADNIL R5
  GETTABLEKS R6 R2 K6 ["dialogStage"]
  JUMPIFNOTEQKS R6 K7 ["ConfirmItems"] [+14]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K8 ["createElement"]
  GETUPVAL R7 6
  DUPTABLE R8 K10 [{"tag"}]
  LOADK R9 K11 ["col gap-medium size-full-0 auto-y padding-large"]
  SETTABLEKS R9 R8 K9 ["tag"]
  NEWTABLE R9 0 0
  CALL R6 3 1
  MOVE R5 R6
  JUMP [+12]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K8 ["createElement"]
  GETUPVAL R7 6
  DUPTABLE R8 K10 [{"tag"}]
  LOADK R9 K11 ["col gap-medium size-full-0 auto-y padding-large"]
  SETTABLEKS R9 R8 K9 ["tag"]
  NEWTABLE R9 0 0
  CALL R6 3 1
  MOVE R5 R6
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K8 ["createElement"]
  GETUPVAL R8 7
  GETTABLEKS R7 R8 K12 ["Dialog"]
  DUPTABLE R8 K19 [{"Title", "MinContentSize", "Size", "Modal", "OnClose", "Enabled"}]
  LOADK R9 K20 [""]
  SETTABLEKS R9 R8 K13 ["Title"]
  GETIMPORT R9 K23 [Vector2.new]
  LOADN R10 32
  LOADN R11 88
  CALL R9 2 1
  SETTABLEKS R9 R8 K14 ["MinContentSize"]
  GETIMPORT R9 K23 [Vector2.new]
  LOADN R10 32
  LOADN R11 88
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["Size"]
  LOADB R9 1
  SETTABLEKS R9 R8 K16 ["Modal"]
  GETTABLEKS R9 R2 K24 ["closeDialog"]
  SETTABLEKS R9 R8 K17 ["OnClose"]
  LOADB R9 1
  SETTABLEKS R9 R8 K18 ["Enabled"]
  DUPTABLE R9 K27 [{"StyleLink", "MainContainer"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K8 ["createElement"]
  LOADK R11 K25 ["StyleLink"]
  DUPTABLE R12 K29 [{"StyleSheet"}]
  SETTABLEKS R0 R12 K28 ["StyleSheet"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K25 ["StyleLink"]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K8 ["createElement"]
  GETUPVAL R11 6
  DUPTABLE R12 K31 [{"tag", "LayoutOrder"}]
  LOADK R13 K32 ["col size-full"]
  SETTABLEKS R13 R12 K9 ["tag"]
  LOADN R13 1
  SETTABLEKS R13 R12 K30 ["LayoutOrder"]
  DUPTABLE R13 K35 [{"Header", "ScrollableContent"}]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K8 ["createElement"]
  GETUPVAL R15 6
  DUPTABLE R16 K31 [{"tag", "LayoutOrder"}]
  LOADK R17 K36 ["col align-x-left align-y-top size-full-0 auto-y gap-medium padding-large"]
  SETTABLEKS R17 R16 K9 ["tag"]
  LOADN R17 1
  SETTABLEKS R17 R16 K30 ["LayoutOrder"]
  DUPTABLE R17 K39 [{"Title", "Description", "StageInfoBarWrapper"}]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K8 ["createElement"]
  GETUPVAL R19 8
  DUPTABLE R20 K41 [{"Text", "tag", "LayoutOrder"}]
  LOADK R23 K42 ["LookComposerDialog"]
  GETTABLEKS R24 R4 K43 ["title"]
  NAMECALL R21 R1 K44 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K40 ["Text"]
  LOADK R21 K45 ["text-heading-small auto-xy content-default"]
  SETTABLEKS R21 R20 K9 ["tag"]
  LOADN R21 1
  SETTABLEKS R21 R20 K30 ["LayoutOrder"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K13 ["Title"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K8 ["createElement"]
  GETUPVAL R19 8
  DUPTABLE R20 K41 [{"Text", "tag", "LayoutOrder"}]
  LOADK R23 K42 ["LookComposerDialog"]
  GETTABLEKS R24 R4 K46 ["description"]
  NAMECALL R21 R1 K44 ["getText"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K40 ["Text"]
  LOADK R21 K47 ["text-body-medium auto-xy content-default"]
  SETTABLEKS R21 R20 K9 ["tag"]
  LOADN R21 2
  SETTABLEKS R21 R20 K30 ["LayoutOrder"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K37 ["Description"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K8 ["createElement"]
  GETUPVAL R19 6
  DUPTABLE R20 K31 [{"tag", "LayoutOrder"}]
  LOADK R21 K48 ["size-full-0 auto-y padding-top-xlarge"]
  SETTABLEKS R21 R20 K9 ["tag"]
  LOADN R21 3
  SETTABLEKS R21 R20 K30 ["LayoutOrder"]
  DUPTABLE R21 K50 [{"StageInfoBar"}]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K8 ["createElement"]
  GETUPVAL R23 9
  CALL R22 1 1
  SETTABLEKS R22 R21 K49 ["StageInfoBar"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K38 ["StageInfoBarWrapper"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K33 ["Header"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K8 ["createElement"]
  GETUPVAL R15 10
  DUPTABLE R16 K31 [{"tag", "LayoutOrder"}]
  LOADK R17 K51 ["size-full"]
  SETTABLEKS R17 R16 K9 ["tag"]
  LOADN R17 2
  SETTABLEKS R17 R16 K30 ["LayoutOrder"]
  DUPTABLE R17 K53 [{"StageContent"}]
  SETTABLEKS R5 R17 K52 ["StageContent"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K34 ["ScrollableContent"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K26 ["MainContainer"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Foundation"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["View"]
  GETTABLEKS R4 R2 K10 ["Text"]
  GETTABLEKS R5 R2 K11 ["ScrollView"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K6 ["Packages"]
  GETTABLEKS R7 R8 K12 ["Framework"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K13 ["UI"]
  GETTABLEKS R9 R6 K14 ["ContextServices"]
  GETTABLEKS R8 R9 K15 ["Localization"]
  GETTABLEKS R10 R6 K14 ["ContextServices"]
  GETTABLEKS R9 R10 K16 ["Design"]
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K17 ["Src"]
  GETTABLEKS R12 R13 K18 ["Flags"]
  GETTABLEKS R11 R12 K19 ["getFFlagAvatarPreviewerLookComposer"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K17 ["Src"]
  GETTABLEKS R13 R14 K20 ["Components"]
  GETTABLEKS R12 R13 K21 ["LookContext"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETIMPORT R14 K1 [script]
  GETTABLEKS R13 R14 K22 ["StageInfoBar"]
  CALL R12 1 1
  DUPTABLE R13 K25 [{"AvatarLook", "MakeupLook"}]
  DUPTABLE R14 K28 [{"title", "description"}]
  LOADK R15 K29 ["CreateAnAvatarLook"]
  SETTABLEKS R15 R14 K26 ["title"]
  LOADK R15 K30 ["CreateAnAvatarLookDescription"]
  SETTABLEKS R15 R14 K27 ["description"]
  SETTABLEKS R14 R13 K23 ["AvatarLook"]
  DUPTABLE R14 K28 [{"title", "description"}]
  LOADK R15 K31 ["CreateAMakeupLook"]
  SETTABLEKS R15 R14 K26 ["title"]
  LOADK R15 K32 ["CreateAMakeupLookDescription"]
  SETTABLEKS R15 R14 K27 ["description"]
  SETTABLEKS R14 R13 K24 ["MakeupLook"]
  DUPCLOSURE R14 K33 [PROTO_0]
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R1
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R12
  CAPTURE VAL R5
  RETURN R14 1
