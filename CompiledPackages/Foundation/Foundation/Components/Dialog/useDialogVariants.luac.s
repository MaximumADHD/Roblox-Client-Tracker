PROTO_0:
  DUPTABLE R1 K11 [{"backdrop", "shadow", "container", "inner", "body", "heroMediaWrapper", "title", "titleText", "content", "contentText", "actionsLabel"}]
  DUPTABLE R2 K13 [{"backgroundStyle"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K14 ["FoundationDialogBackdropColorUpdate"]
  JUMPIFNOT R4 [+7]
  GETTABLEKS R5 R0 K15 ["Color"]
  GETTABLEKS R4 R5 K16 ["Common"]
  GETTABLEKS R3 R4 K17 ["Backdrop"]
  JUMP [+6]
  GETTABLEKS R5 R0 K15 ["Color"]
  GETTABLEKS R4 R5 K18 ["OverMedia"]
  GETTABLEKS R3 R4 K19 ["OverMedia_200"]
  SETTABLEKS R3 R2 K12 ["backgroundStyle"]
  SETTABLEKS R2 R1 K0 ["backdrop"]
  DUPTABLE R2 K21 [{"imageStyle"}]
  GETTABLEKS R6 R0 K15 ["Color"]
  GETTABLEKS R5 R6 K22 ["Extended"]
  GETTABLEKS R4 R5 K23 ["Black"]
  GETTABLEKS R3 R4 K24 ["Black_15"]
  SETTABLEKS R3 R2 K20 ["imageStyle"]
  SETTABLEKS R2 R1 K1 ["shadow"]
  DUPTABLE R2 K26 [{"tag"}]
  LOADK R3 K27 ["size-full-full col align-x-center align-y-center"]
  SETTABLEKS R3 R2 K25 ["tag"]
  SETTABLEKS R2 R1 K2 ["container"]
  DUPTABLE R2 K26 [{"tag"}]
  LOADK R3 K28 ["size-full-0 auto-y shrink-1 bg-surface-100 clip"]
  SETTABLEKS R3 R2 K25 ["tag"]
  SETTABLEKS R2 R1 K3 ["inner"]
  DUPTABLE R2 K26 [{"tag"}]
  LOADK R4 K29 ["size-full auto-y col padding-bottom-xlarge %*"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K30 ["FoundationDialogBodyUpdate"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K31 ["gap-xlarge"]
  JUMP [+1]
  LOADK R6 K32 [""]
  NAMECALL R4 R4 K33 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K25 ["tag"]
  SETTABLEKS R2 R1 K4 ["body"]
  DUPTABLE R2 K26 [{"tag"}]
  LOADK R4 K34 ["auto-y size-full-full position-top-center %*"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K35 ["FoundationDialogHeroImageOnlyFix"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K36 ["shrink"]
  JUMP [+1]
  LOADK R6 K32 [""]
  NAMECALL R4 R4 K33 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K25 ["tag"]
  SETTABLEKS R2 R1 K5 ["heroMediaWrapper"]
  DUPTABLE R2 K26 [{"tag"}]
  LOADK R3 K37 ["size-full-0 auto-y"]
  SETTABLEKS R3 R2 K25 ["tag"]
  SETTABLEKS R2 R1 K6 ["title"]
  DUPTABLE R2 K26 [{"tag"}]
  LOADK R3 K38 ["size-full-0 auto-y content-emphasized text-wrap text-align-x-left"]
  SETTABLEKS R3 R2 K25 ["tag"]
  SETTABLEKS R2 R1 K7 ["titleText"]
  DUPTABLE R2 K26 [{"tag"}]
  LOADK R3 K39 ["auto-y size-full fill"]
  SETTABLEKS R3 R2 K25 ["tag"]
  SETTABLEKS R2 R1 K8 ["content"]
  DUPTABLE R2 K26 [{"tag"}]
  LOADK R4 K40 ["text-wrap text-align-x-left text-align-y-top auto-y size-full-0 %*"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K30 ["FoundationDialogBodyUpdate"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K41 ["padding-right-xxlarge"]
  JUMP [+1]
  LOADK R6 K32 [""]
  NAMECALL R4 R4 K33 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K25 ["tag"]
  SETTABLEKS R2 R1 K9 ["contentText"]
  DUPTABLE R2 K26 [{"tag"}]
  LOADK R4 K42 ["text-align-x-left text-wrap text-align-y-top auto-y size-full-0 %*"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K43 ["FoundationDialogActionsUpdate"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K44 ["text-body-small"]
  JUMP [+1]
  LOADK R6 K32 [""]
  NAMECALL R4 R4 K33 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  SETTABLEKS R3 R2 K25 ["tag"]
  SETTABLEKS R2 R1 K10 ["actionsLabel"]
  NEWTABLE R2 4 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K45 ["Small"]
  DUPTABLE R4 K48 [{"container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
  DUPTABLE R5 K26 [{"tag"}]
  LOADK R6 K49 ["padding-large"]
  SETTABLEKS R6 R5 K25 ["tag"]
  SETTABLEKS R5 R4 K2 ["container"]
  DUPTABLE R5 K51 [{"maxWidth", "tag"}]
  GETUPVAL R7 2
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K45 ["Small"]
  GETTABLE R6 R7 R8
  SETTABLEKS R6 R5 K50 ["maxWidth"]
  LOADK R6 K52 ["radius-medium"]
  SETTABLEKS R6 R5 K25 ["tag"]
  SETTABLEKS R5 R4 K3 ["inner"]
  DUPTABLE R5 K26 [{"tag"}]
  LOADK R7 K53 ["padding-x-large %*"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K30 ["FoundationDialogBodyUpdate"]
  JUMPIFNOT R10 [+2]
  LOADK R9 K32 [""]
  JUMP [+1]
  LOADK R9 K54 ["gap-large"]
  NAMECALL R7 R7 K33 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  SETTABLEKS R6 R5 K25 ["tag"]
  SETTABLEKS R5 R4 K4 ["body"]
  DUPTABLE R5 K56 [{"offset"}]
  GETTABLEKS R7 R0 K57 ["Size"]
  GETTABLEKS R6 R7 K58 ["Size_300"]
  SETTABLEKS R6 R5 K55 ["offset"]
  SETTABLEKS R5 R4 K46 ["closeAffordance"]
  DUPTABLE R5 K60 [{"tag", "offsetX"}]
  LOADK R6 K52 ["radius-medium"]
  SETTABLEKS R6 R5 K25 ["tag"]
  GETTABLEKS R7 R0 K61 ["Padding"]
  GETTABLEKS R6 R7 K62 ["Large"]
  SETTABLEKS R6 R5 K59 ["offsetX"]
  SETTABLEKS R5 R4 K47 ["heroMedia"]
  DUPTABLE R5 K26 [{"tag"}]
  LOADK R6 K63 ["text-heading-small"]
  SETTABLEKS R6 R5 K25 ["tag"]
  SETTABLEKS R5 R4 K7 ["titleText"]
  DUPTABLE R5 K26 [{"tag"}]
  LOADK R6 K64 ["text-body-medium"]
  SETTABLEKS R6 R5 K25 ["tag"]
  SETTABLEKS R5 R4 K9 ["contentText"]
  DUPTABLE R5 K26 [{"tag"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K43 ["FoundationDialogActionsUpdate"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K65 ["padding-top-large"]
  JUMP [+1]
  LOADK R6 K66 ["text-label-small"]
  SETTABLEKS R6 R5 K25 ["tag"]
  SETTABLEKS R5 R4 K10 ["actionsLabel"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K67 ["Medium"]
  DUPTABLE R4 K48 [{"container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
  DUPTABLE R5 K26 [{"tag"}]
  LOADK R6 K68 ["padding-xlarge"]
  SETTABLEKS R6 R5 K25 ["tag"]
  SETTABLEKS R5 R4 K2 ["container"]
  DUPTABLE R5 K51 [{"maxWidth", "tag"}]
  GETUPVAL R7 2
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K67 ["Medium"]
  GETTABLE R6 R7 R8
  SETTABLEKS R6 R5 K50 ["maxWidth"]
  LOADK R6 K69 ["radius-large"]
  SETTABLEKS R6 R5 K25 ["tag"]
  SETTABLEKS R5 R4 K3 ["inner"]
  DUPTABLE R5 K26 [{"tag"}]
  LOADK R7 K70 ["padding-x-xlarge %*"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K30 ["FoundationDialogBodyUpdate"]
  JUMPIFNOT R10 [+2]
  LOADK R9 K32 [""]
  JUMP [+1]
  LOADK R9 K31 ["gap-xlarge"]
  NAMECALL R7 R7 K33 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  SETTABLEKS R6 R5 K25 ["tag"]
  SETTABLEKS R5 R4 K4 ["body"]
  DUPTABLE R5 K56 [{"offset"}]
  GETTABLEKS R7 R0 K57 ["Size"]
  GETTABLEKS R6 R7 K71 ["Size_400"]
  SETTABLEKS R6 R5 K55 ["offset"]
  SETTABLEKS R5 R4 K46 ["closeAffordance"]
  DUPTABLE R5 K60 [{"tag", "offsetX"}]
  LOADK R6 K69 ["radius-large"]
  SETTABLEKS R6 R5 K25 ["tag"]
  GETTABLEKS R7 R0 K61 ["Padding"]
  GETTABLEKS R6 R7 K72 ["XLarge"]
  SETTABLEKS R6 R5 K59 ["offsetX"]
  SETTABLEKS R5 R4 K47 ["heroMedia"]
  DUPTABLE R5 K26 [{"tag"}]
  LOADK R6 K73 ["text-heading-medium"]
  SETTABLEKS R6 R5 K25 ["tag"]
  SETTABLEKS R5 R4 K7 ["titleText"]
  DUPTABLE R5 K26 [{"tag"}]
  LOADK R6 K64 ["text-body-medium"]
  SETTABLEKS R6 R5 K25 ["tag"]
  SETTABLEKS R5 R4 K9 ["contentText"]
  DUPTABLE R5 K26 [{"tag"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K43 ["FoundationDialogActionsUpdate"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K74 ["padding-top-xlarge"]
  JUMP [+1]
  LOADK R6 K66 ["text-label-small"]
  SETTABLEKS R6 R5 K25 ["tag"]
  SETTABLEKS R5 R4 K10 ["actionsLabel"]
  SETTABLE R4 R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K62 ["Large"]
  DUPTABLE R4 K48 [{"container", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
  DUPTABLE R5 K26 [{"tag"}]
  LOADK R6 K68 ["padding-xlarge"]
  SETTABLEKS R6 R5 K25 ["tag"]
  SETTABLEKS R5 R4 K2 ["container"]
  DUPTABLE R5 K51 [{"maxWidth", "tag"}]
  GETUPVAL R7 2
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K62 ["Large"]
  GETTABLE R6 R7 R8
  SETTABLEKS R6 R5 K50 ["maxWidth"]
  LOADK R6 K69 ["radius-large"]
  SETTABLEKS R6 R5 K25 ["tag"]
  SETTABLEKS R5 R4 K3 ["inner"]
  DUPTABLE R5 K26 [{"tag"}]
  LOADK R7 K70 ["padding-x-xlarge %*"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K30 ["FoundationDialogBodyUpdate"]
  JUMPIFNOT R10 [+2]
  LOADK R9 K32 [""]
  JUMP [+1]
  LOADK R9 K31 ["gap-xlarge"]
  NAMECALL R7 R7 K33 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  SETTABLEKS R6 R5 K25 ["tag"]
  SETTABLEKS R5 R4 K4 ["body"]
  DUPTABLE R5 K56 [{"offset"}]
  GETTABLEKS R7 R0 K57 ["Size"]
  GETTABLEKS R6 R7 K71 ["Size_400"]
  SETTABLEKS R6 R5 K55 ["offset"]
  SETTABLEKS R5 R4 K46 ["closeAffordance"]
  DUPTABLE R5 K60 [{"tag", "offsetX"}]
  LOADK R6 K69 ["radius-large"]
  SETTABLEKS R6 R5 K25 ["tag"]
  GETTABLEKS R7 R0 K61 ["Padding"]
  GETTABLEKS R6 R7 K72 ["XLarge"]
  SETTABLEKS R6 R5 K59 ["offsetX"]
  SETTABLEKS R5 R4 K47 ["heroMedia"]
  DUPTABLE R5 K26 [{"tag"}]
  LOADK R6 K75 ["text-heading-large"]
  SETTABLEKS R6 R5 K25 ["tag"]
  SETTABLEKS R5 R4 K7 ["titleText"]
  DUPTABLE R5 K26 [{"tag"}]
  LOADK R6 K76 ["text-body-large"]
  SETTABLEKS R6 R5 K25 ["tag"]
  SETTABLEKS R5 R4 K9 ["contentText"]
  DUPTABLE R5 K26 [{"tag"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K43 ["FoundationDialogActionsUpdate"]
  JUMPIFNOT R7 [+2]
  LOADK R6 K74 ["padding-top-xlarge"]
  JUMP [+1]
  LOADK R6 K66 ["text-label-small"]
  SETTABLEKS R6 R5 K25 ["tag"]
  SETTABLEKS R5 R4 K10 ["actionsLabel"]
  SETTABLE R4 R2 R3
  DUPTABLE R3 K79 [{"common", "size"}]
  SETTABLEKS R1 R3 K77 ["common"]
  SETTABLEKS R2 R3 K78 ["size"]
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
  GETTABLEKS R9 R10 K19 ["useDialog"]
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
