PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["messageId"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADK R2 K0 ["AssistantMessageSent_%*_%*"]
  GETUPVAL R4 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K1 ["messageId"]
  NAMECALL R2 R2 K2 ["format"]
  CALL R2 3 1
  MOVE R1 R2
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U2
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+26]
  GETUPVAL R0 1
  LOADK R1 K0 ["up"]
  CALL R0 1 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["get"]
  CALL R1 0 1
  GETTABLEKS R0 R1 K2 ["EventLogger"]
  GETTABLEKS R1 R0 K3 ["getMessageGuid"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K4 ["messageId"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K5 ["logThumbsUp"]
  DUPTABLE R3 K8 [{"messageGuid", "conversationId"}]
  SETTABLEKS R1 R3 K6 ["messageGuid"]
  GETUPVAL R5 4
  ORK R4 R5 K9 [""]
  SETTABLEKS R4 R3 K7 ["conversationId"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  JUMPIFNOTEQKNIL R0 [+26]
  GETUPVAL R0 1
  LOADK R1 K0 ["down"]
  CALL R0 1 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K1 ["get"]
  CALL R1 0 1
  GETTABLEKS R0 R1 K2 ["EventLogger"]
  GETTABLEKS R1 R0 K3 ["getMessageGuid"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K4 ["messageId"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K5 ["logThumbsDown"]
  DUPTABLE R3 K8 [{"messageGuid", "conversationId"}]
  SETTABLEKS R1 R3 K6 ["messageGuid"]
  GETUPVAL R5 4
  ORK R4 R5 K9 [""]
  SETTABLEKS R4 R3 K7 ["conversationId"]
  CALL R2 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["get"]
  CALL R1 0 1
  GETTABLEKS R0 R1 K1 ["EventLogger"]
  GETTABLEKS R1 R0 K2 ["getMessageGuid"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["messageId"]
  CALL R1 1 1
  GETTABLEKS R2 R0 K4 ["logRetry"]
  DUPTABLE R3 K7 [{"messageGuid", "conversationId"}]
  SETTABLEKS R1 R3 K5 ["messageGuid"]
  GETUPVAL R5 2
  ORK R4 R5 K8 [""]
  SETTABLEKS R4 R3 K6 ["conversationId"]
  CALL R2 1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K9 ["retryMessage"]
  CALL R2 0 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Hooks"]
  GETTABLEKS R1 R2 K1 ["useTokens"]
  CALL R1 0 1
  GETTABLEKS R4 R1 K2 ["Config"]
  GETTABLEKS R3 R4 K3 ["ColorMode"]
  GETTABLEKS R2 R3 K4 ["Name"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["useState"]
  LOADNIL R4
  CALL R3 1 2
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K6 ["useContext"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K7 ["Context"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K8 ["conversationId"]
  GETUPVAL R7 3
  CALL R7 0 1
  GETUPVAL R8 4
  CALL R8 0 1
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K9 ["useEffect"]
  NEWCLOSURE R10 P0
  CAPTURE UPVAL U5
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE VAL R7
  NEWTABLE R11 0 2
  GETTABLEKS R12 R0 K10 ["messageId"]
  MOVE R13 R6
  SETLIST R11 R12 2 [1]
  CALL R9 2 0
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K11 ["useCallback"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE VAL R6
  NEWTABLE R11 0 3
  MOVE R12 R3
  GETTABLEKS R13 R0 K10 ["messageId"]
  MOVE R14 R6
  SETLIST R11 R12 3 [1]
  CALL R9 2 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K11 ["useCallback"]
  NEWCLOSURE R11 P2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE VAL R6
  NEWTABLE R12 0 3
  MOVE R13 R3
  GETTABLEKS R14 R0 K10 ["messageId"]
  MOVE R15 R6
  SETLIST R12 R13 3 [1]
  CALL R10 2 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K11 ["useCallback"]
  NEWCLOSURE R12 P3
  CAPTURE UPVAL U6
  CAPTURE VAL R0
  CAPTURE VAL R6
  NEWTABLE R13 0 3
  GETTABLEKS R14 R0 K12 ["retryMessage"]
  GETTABLEKS R15 R0 K10 ["messageId"]
  MOVE R16 R6
  SETLIST R13 R14 3 [1]
  CALL R11 2 1
  JUMPIFNOTEQKS R3 K13 ["up"] [+4]
  GETUPVAL R13 7
  GETTABLE R12 R13 R2
  JUMP [+2]
  GETUPVAL R13 8
  GETTABLE R12 R13 R2
  JUMPIFNOTEQKS R3 K14 ["down"] [+4]
  GETUPVAL R14 9
  GETTABLE R13 R14 R2
  JUMP [+2]
  GETUPVAL R14 10
  GETTABLE R13 R14 R2
  GETUPVAL R14 11
  GETUPVAL R15 12
  DUPTABLE R16 K17 [{"tag", "LayoutOrder"}]
  LOADK R17 K18 ["row gap-small auto-xy"]
  SETTABLEKS R17 R16 K15 ["tag"]
  GETTABLEKS R17 R0 K16 ["LayoutOrder"]
  SETTABLEKS R17 R16 K16 ["LayoutOrder"]
  DUPTABLE R17 K22 [{"ThumbsUpButton", "ThumbsDownButton", "RetryButton"}]
  GETUPVAL R18 11
  GETUPVAL R19 13
  DUPTABLE R20 K27 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
  SETTABLEKS R12 R20 K23 ["icon"]
  LOADK R21 K28 ["size-600-600 radius-small align-x-center align-y-center"]
  SETTABLEKS R21 R20 K15 ["tag"]
  LOADK R21 K29 ["size-400-400 content-system-neutral"]
  SETTABLEKS R21 R20 K24 ["iconTag"]
  SETTABLEKS R9 R20 K25 ["onActivated"]
  MOVE R21 R8
  CALL R21 0 1
  SETTABLEKS R21 R20 K16 ["LayoutOrder"]
  LOADK R21 K30 ["Assistant-MessageActions-ThumbsUp"]
  SETTABLEKS R21 R20 K26 ["testId"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K19 ["ThumbsUpButton"]
  GETUPVAL R18 11
  GETUPVAL R19 13
  DUPTABLE R20 K27 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
  SETTABLEKS R13 R20 K23 ["icon"]
  LOADK R21 K28 ["size-600-600 radius-small align-x-center align-y-center"]
  SETTABLEKS R21 R20 K15 ["tag"]
  LOADK R21 K29 ["size-400-400 content-system-neutral"]
  SETTABLEKS R21 R20 K24 ["iconTag"]
  SETTABLEKS R10 R20 K25 ["onActivated"]
  MOVE R21 R8
  CALL R21 0 1
  SETTABLEKS R21 R20 K16 ["LayoutOrder"]
  LOADK R21 K31 ["Assistant-MessageActions-ThumbsDown"]
  SETTABLEKS R21 R20 K26 ["testId"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K20 ["ThumbsDownButton"]
  GETUPVAL R18 11
  GETUPVAL R19 13
  DUPTABLE R20 K27 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
  GETUPVAL R22 14
  GETTABLE R21 R22 R2
  SETTABLEKS R21 R20 K23 ["icon"]
  LOADK R21 K28 ["size-600-600 radius-small align-x-center align-y-center"]
  SETTABLEKS R21 R20 K15 ["tag"]
  LOADK R21 K29 ["size-400-400 content-system-neutral"]
  SETTABLEKS R21 R20 K24 ["iconTag"]
  SETTABLEKS R11 R20 K25 ["onActivated"]
  MOVE R21 R8
  CALL R21 0 1
  SETTABLEKS R21 R20 K16 ["LayoutOrder"]
  LOADK R21 K32 ["Assistant-MessageActions-Retry"]
  SETTABLEKS R21 R20 K26 ["testId"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K21 ["RetryButton"]
  CALL R14 3 -1
  RETURN R14 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Components"]
  GETTABLEKS R3 R4 K7 ["Contexts"]
  GETTABLEKS R2 R3 K8 ["ConversationIdContext"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Components"]
  GETTABLEKS R3 R4 K9 ["CustomIconButton"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Guest"]
  GETTABLEKS R4 R5 K11 ["Environment"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K12 ["Parent"]
  GETTABLEKS R5 R6 K13 ["Foundation"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K12 ["Parent"]
  GETTABLEKS R6 R7 K14 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K12 ["Parent"]
  GETTABLEKS R7 R8 K15 ["ReactUtils"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R0 K16 ["Types"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K17 ["Util"]
  GETTABLEKS R9 R10 K18 ["callOnce"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K19 ["Hooks"]
  GETTABLEKS R10 R11 K20 ["useLogAssistantMessageSent"]
  CALL R9 1 1
  GETTABLEKS R10 R4 K21 ["View"]
  GETTABLEKS R11 R6 K22 ["createNextOrder"]
  GETTABLEKS R12 R5 K23 ["createElement"]
  DUPTABLE R13 K26 [{"Dark", "Light"}]
  LOADK R14 K27 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsUpOutline.png"]
  SETTABLEKS R14 R13 K24 ["Dark"]
  LOADK R14 K28 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsUpOutline.png"]
  SETTABLEKS R14 R13 K25 ["Light"]
  DUPTABLE R14 K26 [{"Dark", "Light"}]
  LOADK R15 K29 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsUp.png"]
  SETTABLEKS R15 R14 K24 ["Dark"]
  LOADK R15 K30 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsUp.png"]
  SETTABLEKS R15 R14 K25 ["Light"]
  DUPTABLE R15 K26 [{"Dark", "Light"}]
  LOADK R16 K31 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsDownOutline.png"]
  SETTABLEKS R16 R15 K24 ["Dark"]
  LOADK R16 K32 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsDownOutline.png"]
  SETTABLEKS R16 R15 K25 ["Light"]
  DUPTABLE R16 K26 [{"Dark", "Light"}]
  LOADK R17 K33 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/ThumbsDown.png"]
  SETTABLEKS R17 R16 K24 ["Dark"]
  LOADK R17 K34 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/ThumbsDown.png"]
  SETTABLEKS R17 R16 K25 ["Light"]
  DUPTABLE R17 K26 [{"Dark", "Light"}]
  LOADK R18 K35 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Dark/Standard/Regenerate.png"]
  SETTABLEKS R18 R17 K24 ["Dark"]
  LOADK R18 K36 ["rbxasset://studio_svg_textures/Shared/GenerativeAI/Light/Standard/Regenerate.png"]
  SETTABLEKS R18 R17 K25 ["Light"]
  DUPCLOSURE R18 K37 [PROTO_5]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R14
  CAPTURE VAL R13
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R12
  CAPTURE VAL R10
  CAPTURE VAL R2
  CAPTURE VAL R17
  RETURN R18 1
