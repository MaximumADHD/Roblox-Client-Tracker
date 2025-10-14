PROTO_0:
  DUPTABLE R1 K11 [{"backdrop", "shadow", "container", "inner", "body", "heroMediaWrapper", "title", "titleText", "content", "contentText", "actionsLabel"}]
  DUPTABLE R2 K13 [{"backgroundStyle"}]
  GETTABLEKS R5 R0 K14 ["Color"]
  GETTABLEKS R4 R5 K15 ["OverMedia"]
  GETTABLEKS R3 R4 K16 ["OverMedia_200"]
  SETTABLEKS R3 R2 K12 ["backgroundStyle"]
  SETTABLEKS R2 R1 K0 ["backdrop"]
  DUPTABLE R2 K18 [{"imageStyle"}]
  GETTABLEKS R6 R0 K14 ["Color"]
  GETTABLEKS R5 R6 K19 ["Extended"]
  GETTABLEKS R4 R5 K20 ["Black"]
  GETTABLEKS R3 R4 K21 ["Black_15"]
  SETTABLEKS R3 R2 K17 ["imageStyle"]
  SETTABLEKS R2 R1 K1 ["shadow"]
  DUPTABLE R2 K23 [{"tag"}]
  LOADK R3 K24 ["size-full-full col align-x-center align-y-center"]
  SETTABLEKS R3 R2 K22 ["tag"]
  SETTABLEKS R2 R1 K2 ["container"]
  DUPTABLE R2 K23 [{"tag"}]
  LOADK R3 K25 ["size-full-0 auto-y shrink-1 bg-surface-100 clip"]
  SETTABLEKS R3 R2 K22 ["tag"]
  SETTABLEKS R2 R1 K3 ["inner"]
  DUPTABLE R2 K23 [{"tag"}]
  LOADK R4 K26 ["size-full auto-y col padding-bottom-xlarge %*"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K27 ["FoundationDialogBodyUpdate"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K28 ["gap-xlarge"]
  JUMP [+1]
  LOADK R6 K29 [""]
  NAMECALL R4 R4 K30 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K22 ["tag"]
  SETTABLEKS R2 R1 K4 ["body"]
  DUPTABLE R2 K23 [{"tag"}]
  LOADK R4 K31 ["auto-y size-full-full position-top-center %*"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K32 ["FoundationDialogHeroImageOnlyFix"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K33 ["shrink"]
  JUMP [+1]
  LOADK R6 K29 [""]
  NAMECALL R4 R4 K30 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K22 ["tag"]
  SETTABLEKS R2 R1 K5 ["heroMediaWrapper"]
  DUPTABLE R2 K23 [{"tag"}]
  LOADK R3 K34 ["size-full-0 auto-y"]
  SETTABLEKS R3 R2 K22 ["tag"]
  SETTABLEKS R2 R1 K6 ["title"]
  DUPTABLE R2 K23 [{"tag"}]
  LOADK R3 K35 ["size-full-0 auto-y content-emphasized text-wrap text-align-x-left"]
  SETTABLEKS R3 R2 K22 ["tag"]
  SETTABLEKS R2 R1 K7 ["titleText"]
  DUPTABLE R2 K23 [{"tag"}]
  LOADK R3 K36 ["auto-y size-full fill"]
  SETTABLEKS R3 R2 K22 ["tag"]
  SETTABLEKS R2 R1 K8 ["content"]
  DUPTABLE R2 K23 [{"tag"}]
  LOADK R4 K37 ["text-wrap text-align-x-left text-align-y-top auto-y size-full-0 %*"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K27 ["FoundationDialogBodyUpdate"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K38 ["padding-right-xxlarge"]
  JUMP [+1]
  LOADK R6 K29 [""]
  NAMECALL R4 R4 K30 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K22 ["tag"]
  SETTABLEKS R2 R1 K9 ["contentText"]
  DUPTABLE R2 K23 [{"tag"}]
  LOADK R4 K39 ["text-align-x-left text-wrap text-align-y-top auto-y size-full-0 %*"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K40 ["FoundationDialogActionsUpdate"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K41 ["text-body-small"]
  JUMP [+1]
  LOADK R6 K29 [""]
  NAMECALL R4 R4 K30 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K22 ["tag"]
  SETTABLEKS R2 R1 K10 ["actionsLabel"]
  NEWTABLE R2 4 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K42 ["Small"]
  DUPTABLE R4 K45 [{"container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
  DUPTABLE R5 K23 [{"tag"}]
  LOADK R6 K46 ["padding-large"]
  SETTABLEKS R6 R5 K22 ["tag"]
  SETTABLEKS R5 R4 K2 ["container"]
  DUPTABLE R5 K48 [{"maxWidth", "tag"}]
  GETUPVAL R7 2
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K42 ["Small"]
  GETTABLE R6 R7 R8
  SETTABLEKS R6 R5 K47 ["maxWidth"]
  LOADK R6 K49 ["radius-medium"]
  SETTABLEKS R6 R5 K22 ["tag"]
  SETTABLEKS R5 R4 K3 ["inner"]
  DUPTABLE R5 K23 [{"tag"}]
  LOADK R7 K50 ["padding-x-large %*"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K27 ["FoundationDialogBodyUpdate"]
  JUMPIFNOT R10 [+2]
  LOADK R9 K29 [""]
  JUMP [+1]
  LOADK R9 K51 ["gap-large"]
  NAMECALL R7 R7 K30 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  SETTABLEKS R6 R5 K22 ["tag"]
  SETTABLEKS R5 R4 K4 ["body"]
  DUPTABLE R5 K53 [{"offset"}]
  GETTABLEKS R7 R0 K54 ["Size"]
  GETTABLEKS R6 R7 K55 ["Size_300"]
  SETTABLEKS R6 R5 K52 ["offset"]
  SETTABLEKS R5 R4 K43 ["closeAffordance"]
  DUPTABLE R5 K57 [{"tag", "offsetX"}]
  LOADK R6 K49 ["radius-medium"]
  SETTABLEKS R6 R5 K22 ["tag"]
  GETTABLEKS R7 R0 K58 ["Padding"]
  GETTABLEKS R6 R7 K59 ["Large"]
  SETTABLEKS R6 R5 K56 ["offsetX"]
  SETTABLEKS R5 R4 K44 ["heroMedia"]
  DUPTABLE R5 K23 [{"tag"}]
  LOADK R6 K60 ["text-heading-small"]
  SETTABLEKS R6 R5 K22 ["tag"]
  SETTABLEKS R5 R4 K7 ["titleText"]
  DUPTABLE R5 K23 [{"tag"}]
  LOADK R6 K61 ["text-body-medium"]
  SETTABLEKS R6 R5 K22 ["tag"]
  SETTABLEKS R5 R4 K9 ["contentText"]
  DUPTABLE R5 K23 [{"tag"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K40 ["FoundationDialogActionsUpdate"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K62 ["padding-top-large"]
  JUMP [+1]
  LOADK R6 K63 ["text-label-small"]
  SETTABLEKS R6 R5 K22 ["tag"]
  SETTABLEKS R5 R4 K10 ["actionsLabel"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K64 ["Medium"]
  DUPTABLE R4 K45 [{"container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
  DUPTABLE R5 K23 [{"tag"}]
  LOADK R6 K65 ["padding-xlarge"]
  SETTABLEKS R6 R5 K22 ["tag"]
  SETTABLEKS R5 R4 K2 ["container"]
  DUPTABLE R5 K48 [{"maxWidth", "tag"}]
  GETUPVAL R7 2
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K64 ["Medium"]
  GETTABLE R6 R7 R8
  SETTABLEKS R6 R5 K47 ["maxWidth"]
  LOADK R6 K66 ["radius-large"]
  SETTABLEKS R6 R5 K22 ["tag"]
  SETTABLEKS R5 R4 K3 ["inner"]
  DUPTABLE R5 K23 [{"tag"}]
  LOADK R7 K67 ["padding-x-xlarge %*"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K27 ["FoundationDialogBodyUpdate"]
  JUMPIFNOT R10 [+2]
  LOADK R9 K29 [""]
  JUMP [+1]
  LOADK R9 K28 ["gap-xlarge"]
  NAMECALL R7 R7 K30 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  SETTABLEKS R6 R5 K22 ["tag"]
  SETTABLEKS R5 R4 K4 ["body"]
  DUPTABLE R5 K53 [{"offset"}]
  GETTABLEKS R7 R0 K54 ["Size"]
  GETTABLEKS R6 R7 K68 ["Size_400"]
  SETTABLEKS R6 R5 K52 ["offset"]
  SETTABLEKS R5 R4 K43 ["closeAffordance"]
  DUPTABLE R5 K57 [{"tag", "offsetX"}]
  LOADK R6 K66 ["radius-large"]
  SETTABLEKS R6 R5 K22 ["tag"]
  GETTABLEKS R7 R0 K58 ["Padding"]
  GETTABLEKS R6 R7 K69 ["XLarge"]
  SETTABLEKS R6 R5 K56 ["offsetX"]
  SETTABLEKS R5 R4 K44 ["heroMedia"]
  DUPTABLE R5 K23 [{"tag"}]
  LOADK R6 K70 ["text-heading-medium"]
  SETTABLEKS R6 R5 K22 ["tag"]
  SETTABLEKS R5 R4 K7 ["titleText"]
  DUPTABLE R5 K23 [{"tag"}]
  LOADK R6 K61 ["text-body-medium"]
  SETTABLEKS R6 R5 K22 ["tag"]
  SETTABLEKS R5 R4 K9 ["contentText"]
  DUPTABLE R5 K23 [{"tag"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K40 ["FoundationDialogActionsUpdate"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K71 ["padding-top-xlarge"]
  JUMP [+1]
  LOADK R6 K63 ["text-label-small"]
  SETTABLEKS R6 R5 K22 ["tag"]
  SETTABLEKS R5 R4 K10 ["actionsLabel"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K59 ["Large"]
  DUPTABLE R4 K45 [{"container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
  DUPTABLE R5 K23 [{"tag"}]
  LOADK R6 K65 ["padding-xlarge"]
  SETTABLEKS R6 R5 K22 ["tag"]
  SETTABLEKS R5 R4 K2 ["container"]
  DUPTABLE R5 K48 [{"maxWidth", "tag"}]
  GETUPVAL R7 2
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K59 ["Large"]
  GETTABLE R6 R7 R8
  SETTABLEKS R6 R5 K47 ["maxWidth"]
  LOADK R6 K66 ["radius-large"]
  SETTABLEKS R6 R5 K22 ["tag"]
  SETTABLEKS R5 R4 K3 ["inner"]
  DUPTABLE R5 K23 [{"tag"}]
  LOADK R7 K67 ["padding-x-xlarge %*"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K27 ["FoundationDialogBodyUpdate"]
  JUMPIFNOT R10 [+2]
  LOADK R9 K29 [""]
  JUMP [+1]
  LOADK R9 K28 ["gap-xlarge"]
  NAMECALL R7 R7 K30 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  SETTABLEKS R6 R5 K22 ["tag"]
  SETTABLEKS R5 R4 K4 ["body"]
  DUPTABLE R5 K53 [{"offset"}]
  GETTABLEKS R7 R0 K54 ["Size"]
  GETTABLEKS R6 R7 K68 ["Size_400"]
  SETTABLEKS R6 R5 K52 ["offset"]
  SETTABLEKS R5 R4 K43 ["closeAffordance"]
  DUPTABLE R5 K57 [{"tag", "offsetX"}]
  LOADK R6 K66 ["radius-large"]
  SETTABLEKS R6 R5 K22 ["tag"]
  GETTABLEKS R7 R0 K58 ["Padding"]
  GETTABLEKS R6 R7 K69 ["XLarge"]
  SETTABLEKS R6 R5 K56 ["offsetX"]
  SETTABLEKS R5 R4 K44 ["heroMedia"]
  DUPTABLE R5 K23 [{"tag"}]
  LOADK R6 K72 ["text-heading-large"]
  SETTABLEKS R6 R5 K22 ["tag"]
  SETTABLEKS R5 R4 K7 ["titleText"]
  DUPTABLE R5 K23 [{"tag"}]
  LOADK R6 K73 ["text-body-large"]
  SETTABLEKS R6 R5 K22 ["tag"]
  SETTABLEKS R5 R4 K9 ["contentText"]
  DUPTABLE R5 K23 [{"tag"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K40 ["FoundationDialogActionsUpdate"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K71 ["padding-top-xlarge"]
  JUMP [+1]
  LOADK R6 K63 ["text-label-small"]
  SETTABLEKS R6 R5 K22 ["tag"]
  SETTABLEKS R5 R4 K10 ["actionsLabel"]
  SETTABLE R4 R2 R3
  DUPTABLE R3 K76 [{"common", "size"}]
  SETTABLEKS R1 R3 K74 ["common"]
  SETTABLEKS R2 R3 K75 ["size"]
  RETURN R3 1

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 1
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["useVariants"]
  LOADK R2 K1 ["Dialog"]
  GETUPVAL R3 2
  MOVE R4 R0
  CALL R1 3 1
  GETUPVAL R2 3
  CALL R2 0 1
  GETUPVAL R3 4
  GETTABLEKS R4 R1 K2 ["common"]
  GETTABLEKS R6 R1 K3 ["size"]
  GETTABLEKS R7 R2 K4 ["responsiveSize"]
  GETTABLE R5 R6 R7
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Components"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Enums"]
  GETTABLEKS R3 R4 K9 ["DialogSize"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Utility"]
  GETTABLEKS R4 R5 K11 ["composeStyleVariant"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K12 ["Providers"]
  GETTABLEKS R6 R7 K13 ["Style"]
  GETTABLEKS R5 R6 K14 ["Tokens"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K10 ["Utility"]
  GETTABLEKS R6 R7 K15 ["Flags"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Providers"]
  GETTABLEKS R8 R9 K13 ["Style"]
  GETTABLEKS R7 R8 K16 ["useTokens"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K12 ["Providers"]
  GETTABLEKS R9 R10 K13 ["Style"]
  GETTABLEKS R8 R9 K17 ["VariantsContext"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETIMPORT R11 K1 [script]
  GETTABLEKS R10 R11 K18 ["Parent"]
  GETTABLEKS R9 R10 K19 ["useDialogLayout"]
  CALL R8 1 1
  NEWTABLE R9 4 0
  GETTABLEKS R10 R2 K20 ["Small"]
  LOADN R11 64
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R2 K21 ["Medium"]
  LOADN R11 224
  SETTABLE R11 R9 R10
  GETTABLEKS R10 R2 K22 ["Large"]
  LOADN R11 128
  SETTABLE R11 R9 R10
  DUPCLOSURE R10 K23 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R9
  DUPCLOSURE R11 K24 [PROTO_1]
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R3
  SETGLOBAL R11 K25 ["useDialogVariants"]
  DUPTABLE R11 K27 [{"useDialogVariants", "DIALOG_SIZES"}]
  GETGLOBAL R12 K25 ["useDialogVariants"]
  SETTABLEKS R12 R11 K25 ["useDialogVariants"]
  SETTABLEKS R9 R11 K26 ["DIALOG_SIZES"]
  RETURN R11 1
