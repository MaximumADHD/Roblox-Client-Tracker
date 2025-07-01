PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R1 1
  SETTABLEKS R1 R0 K0 ["current"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFEQKN R0 K1 [0] [+10]
  GETIMPORT R0 K3 [pcall]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["current"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["current"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R0 P0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  RETURN R0 1

PROTO_3:
  GETUPVAL R0 0
  JUMPIFNOTEQKN R0 K0 [1] [+5]
  GETUPVAL R0 1
  LOADN R1 0
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 1
  LOADN R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  JUMPIFNOTEQKN R0 K0 [-1] [+5]
  GETUPVAL R0 1
  LOADN R1 0
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R0 1
  LOADN R1 255
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["tutorialInfo"]
  JUMPIF R1 [+2]
  LOADNIL R2
  RETURN R2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["useState"]
  LOADN R3 0
  CALL R2 1 2
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["useRef"]
  MOVE R5 R2
  CALL R4 1 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["useRef"]
  GETTABLEKS R6 R0 K3 ["onRate"]
  CALL R5 1 1
  GETTABLEKS R6 R0 K3 ["onRate"]
  SETTABLEKS R6 R5 K4 ["current"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["useEffect"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  CAPTURE VAL R2
  NEWTABLE R8 0 1
  MOVE R9 R2
  SETLIST R8 R9 1 [1]
  CALL R6 2 0
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["useEffect"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R4
  CAPTURE VAL R5
  NEWTABLE R8 0 0
  CALL R6 2 0
  GETUPVAL R6 1
  NAMECALL R6 R6 K6 ["use"]
  CALL R6 1 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K7 ["Hooks"]
  GETTABLEKS R7 R8 K8 ["useTokens"]
  CALL R7 0 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["createElement"]
  GETUPVAL R9 3
  DUPTABLE R10 K12 [{"ZIndex", "tag"}]
  LOADN R11 0
  SETTABLEKS R11 R10 K10 ["ZIndex"]
  LOADK R11 K13 ["col align-y-center align-x-center flex-evenly gap-small size-full padding-large bg-surface-200"]
  SETTABLEKS R11 R10 K11 ["tag"]
  DUPTABLE R11 K19 [{"Image", "Heading", "Subheading", "Divider", "ActionsRow"}]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 4
  DUPTABLE R14 K21 [{"LayoutOrder", "Image", "tag"}]
  LOADN R15 0
  SETTABLEKS R15 R14 K20 ["LayoutOrder"]
  LOADK R15 K22 ["icons/graphic/success_xlarge"]
  SETTABLEKS R15 R14 K14 ["Image"]
  LOADK R15 K23 ["size-2000"]
  SETTABLEKS R15 R14 K11 ["tag"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K14 ["Image"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K25 [{"LayoutOrder", "Text", "tag"}]
  LOADN R15 1
  SETTABLEKS R15 R14 K20 ["LayoutOrder"]
  LOADK R17 K26 ["Plugin"]
  LOADK R18 K27 ["Congratulations"]
  DUPTABLE R19 K29 [{"tutorialTitle"}]
  GETTABLEKS R20 R1 K30 ["title"]
  SETTABLEKS R20 R19 K28 ["tutorialTitle"]
  NAMECALL R15 R6 K31 ["getText"]
  CALL R15 4 1
  SETTABLEKS R15 R14 K24 ["Text"]
  LOADK R15 K32 ["text-heading-medium size-full-0 text-align-x-center auto-y"]
  SETTABLEKS R15 R14 K11 ["tag"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K15 ["Heading"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 5
  DUPTABLE R14 K25 [{"LayoutOrder", "Text", "tag"}]
  LOADN R15 2
  SETTABLEKS R15 R14 K20 ["LayoutOrder"]
  LOADK R17 K26 ["Plugin"]
  LOADK R18 K33 ["YouveCompleted"]
  DUPTABLE R19 K29 [{"tutorialTitle"}]
  GETTABLEKS R20 R1 K30 ["title"]
  SETTABLEKS R20 R19 K28 ["tutorialTitle"]
  NAMECALL R15 R6 K31 ["getText"]
  CALL R15 4 1
  SETTABLEKS R15 R14 K24 ["Text"]
  LOADK R15 K34 ["text-body-large size-full-0 text-wrap text-align-x-center auto-y"]
  SETTABLEKS R15 R14 K11 ["tag"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K16 ["Subheading"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 6
  DUPTABLE R14 K35 [{"LayoutOrder"}]
  LOADN R15 9
  SETTABLEKS R15 R14 K20 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K17 ["Divider"]
  GETUPVAL R13 0
  GETTABLEKS R12 R13 K9 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K36 [{"LayoutOrder", "tag"}]
  LOADN R15 10
  SETTABLEKS R15 R14 K20 ["LayoutOrder"]
  LOADK R15 K37 ["auto-y size-full-0 row flex-between align-y-center gap-medium"]
  SETTABLEKS R15 R14 K11 ["tag"]
  DUPTABLE R15 K40 [{"Rating", "Buttons"}]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K9 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K36 [{"LayoutOrder", "tag"}]
  LOADN R19 1
  SETTABLEKS R19 R18 K20 ["LayoutOrder"]
  LOADK R19 K41 ["row gap-small align-x-left align-y-center auto-x size-0-1000"]
  SETTABLEKS R19 R18 K11 ["tag"]
  DUPTABLE R19 K44 [{"RatingText", "VoteButtons"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K9 ["createElement"]
  GETUPVAL R21 5
  DUPTABLE R22 K25 [{"LayoutOrder", "Text", "tag"}]
  LOADN R23 0
  SETTABLEKS R23 R22 K20 ["LayoutOrder"]
  LOADK R25 K26 ["Plugin"]
  LOADK R26 K45 ["RatingPrompt"]
  NAMECALL R23 R6 K31 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K24 ["Text"]
  LOADK R23 K46 ["text-body-medium content-muted text-align-x-center auto-xy"]
  SETTABLEKS R23 R22 K11 ["tag"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K42 ["RatingText"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K9 ["createElement"]
  GETUPVAL R21 3
  DUPTABLE R22 K36 [{"LayoutOrder", "tag"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K20 ["LayoutOrder"]
  LOADK R23 K47 ["auto-xy"]
  SETTABLEKS R23 R22 K11 ["tag"]
  DUPTABLE R23 K50 [{"Upvote", "Downvote"}]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K9 ["createElement"]
  GETUPVAL R25 4
  DUPTABLE R26 K53 [{"Image", "tag", "imageStyle", "onActivated"}]
  LOADK R27 K54 ["rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png"]
  SETTABLEKS R27 R26 K14 ["Image"]
  LOADK R27 K55 ["size-400"]
  SETTABLEKS R27 R26 K11 ["tag"]
  JUMPIFNOTEQKN R2 K56 [1] [+10]
  GETTABLEKS R30 R7 K57 ["Color"]
  GETTABLEKS R29 R30 K58 ["Extended"]
  GETTABLEKS R28 R29 K59 ["Green"]
  GETTABLEKS R27 R28 K60 ["Green_500"]
  JUMP [+6]
  GETTABLEKS R29 R7 K57 ["Color"]
  GETTABLEKS R28 R29 K61 ["Content"]
  GETTABLEKS R27 R28 K62 ["Muted"]
  SETTABLEKS R27 R26 K51 ["imageStyle"]
  NEWCLOSURE R27 P2
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R27 R26 K52 ["onActivated"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K48 ["Upvote"]
  GETUPVAL R25 0
  GETTABLEKS R24 R25 K9 ["createElement"]
  GETUPVAL R25 4
  DUPTABLE R26 K65 [{"Image", "Rotation", "Position", "tag", "imageStyle", "onActivated"}]
  LOADK R27 K54 ["rbxasset://textures/DeveloperFramework/Votes/rating_up_white.png"]
  SETTABLEKS R27 R26 K14 ["Image"]
  LOADN R27 180
  SETTABLEKS R27 R26 K63 ["Rotation"]
  GETIMPORT R27 K68 [UDim2.fromOffset]
  LOADN R28 20
  LOADN R29 0
  CALL R27 2 1
  SETTABLEKS R27 R26 K64 ["Position"]
  LOADK R27 K55 ["size-400"]
  SETTABLEKS R27 R26 K11 ["tag"]
  JUMPIFNOTEQKN R2 K69 [-1] [+10]
  GETTABLEKS R30 R7 K57 ["Color"]
  GETTABLEKS R29 R30 K58 ["Extended"]
  GETTABLEKS R28 R29 K70 ["Red"]
  GETTABLEKS R27 R28 K71 ["Red_600"]
  JUMP [+6]
  GETTABLEKS R29 R7 K57 ["Color"]
  GETTABLEKS R28 R29 K61 ["Content"]
  GETTABLEKS R27 R28 K62 ["Muted"]
  SETTABLEKS R27 R26 K51 ["imageStyle"]
  NEWCLOSURE R27 P3
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R27 R26 K52 ["onActivated"]
  CALL R24 2 1
  SETTABLEKS R24 R23 K49 ["Downvote"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K43 ["VoteButtons"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K38 ["Rating"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K9 ["createElement"]
  GETUPVAL R17 3
  DUPTABLE R18 K36 [{"LayoutOrder", "tag"}]
  LOADN R19 2
  SETTABLEKS R19 R18 K20 ["LayoutOrder"]
  LOADK R19 K72 ["auto-xy row align-x-right align-y-bottom gap-medium"]
  SETTABLEKS R19 R18 K11 ["tag"]
  DUPTABLE R19 K75 [{"RestartButton", "CloseButton"}]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K9 ["createElement"]
  GETUPVAL R21 7
  DUPTABLE R22 K78 [{"LayoutOrder", "text", "variant", "onActivated"}]
  LOADN R23 0
  SETTABLEKS R23 R22 K20 ["LayoutOrder"]
  LOADK R25 K26 ["Plugin"]
  LOADK R26 K79 ["Restart"]
  NAMECALL R23 R6 K31 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K76 ["text"]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K80 ["Enums"]
  GETTABLEKS R24 R25 K81 ["ButtonVariant"]
  GETTABLEKS R23 R24 K82 ["Standard"]
  SETTABLEKS R23 R22 K77 ["variant"]
  GETTABLEKS R23 R0 K83 ["onRestart"]
  SETTABLEKS R23 R22 K52 ["onActivated"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K73 ["RestartButton"]
  GETUPVAL R21 0
  GETTABLEKS R20 R21 K9 ["createElement"]
  GETUPVAL R21 7
  DUPTABLE R22 K85 [{"LayoutOrder", "text", "variant", "size", "onActivated"}]
  LOADN R23 1
  SETTABLEKS R23 R22 K20 ["LayoutOrder"]
  LOADK R25 K26 ["Plugin"]
  LOADK R26 K86 ["Close"]
  NAMECALL R23 R6 K31 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K76 ["text"]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K80 ["Enums"]
  GETTABLEKS R24 R25 K81 ["ButtonVariant"]
  GETTABLEKS R23 R24 K87 ["Emphasis"]
  SETTABLEKS R23 R22 K77 ["variant"]
  GETUPVAL R26 2
  GETTABLEKS R25 R26 K80 ["Enums"]
  GETTABLEKS R24 R25 K88 ["InputSize"]
  GETTABLEKS R23 R24 K89 ["Medium"]
  SETTABLEKS R23 R22 K84 ["size"]
  GETTABLEKS R23 R0 K90 ["onClose"]
  SETTABLEKS R23 R22 K52 ["onActivated"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K74 ["CloseButton"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K39 ["Buttons"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K18 ["ActionsRow"]
  CALL R8 3 -1
  RETURN R8 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["KnowledgeTutorials"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Foundation"]
  CALL R4 1 1
  GETTABLEKS R5 R3 K12 ["ContextServices"]
  GETTABLEKS R6 R5 K13 ["Localization"]
  GETTABLEKS R7 R4 K14 ["Text"]
  GETTABLEKS R8 R4 K15 ["Image"]
  GETTABLEKS R9 R4 K16 ["View"]
  GETTABLEKS R10 R4 K17 ["Button"]
  GETTABLEKS R11 R4 K18 ["Divider"]
  DUPCLOSURE R12 K19 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R10
  RETURN R12 1
