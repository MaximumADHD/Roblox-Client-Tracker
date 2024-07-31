PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["requestCanUploadBundles"]
  CALL R0 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["validateBundle"]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["Avatar"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["enable"]
  CALL R0 0 0
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["disable"]
  CALL R0 0 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  JUMPIFNOT R0 [+71]
  GETUPVAL R0 1
  JUMPIF R0 [+69]
  GETUPVAL R0 2
  JUMPIFNOT R0 [+67]
  GETUPVAL R0 3
  JUMPIFEQKNIL R0 [+65]
  GETUPVAL R0 4
  JUMPIFEQKNIL R0 [+62]
  GETUPVAL R0 5
  LOADB R1 1
  CALL R0 1 0
  GETUPVAL R2 4
  GETTABLEKS R1 R2 K0 ["errors"]
  LENGTH R0 R1
  JUMPIFNOTEQKN R0 K1 [0] [+7]
  GETUPVAL R0 6
  LOADK R2 K2 ["autoSetupPassedValidation"]
  NAMECALL R0 R0 K3 ["report"]
  CALL R0 2 0
  JUMP [+5]
  GETUPVAL R0 6
  LOADK R2 K4 ["autoSetupFailedValidation"]
  NAMECALL R0 R0 K3 ["report"]
  CALL R0 2 0
  GETUPVAL R0 6
  LOADK R2 K5 ["autoSetupValidationDuration"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K6 ["duration"]
  NAMECALL R0 R0 K3 ["report"]
  CALL R0 3 0
  GETUPVAL R0 6
  LOADK R2 K7 ["autoSetupValidationErrorCount"]
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K0 ["errors"]
  LENGTH R3 R4
  NAMECALL R0 R0 K3 ["report"]
  CALL R0 3 0
  GETUPVAL R3 4
  GETTABLEKS R0 R3 K0 ["errors"]
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  GETTABLEKS R6 R4 K8 ["error"]
  GETTABLEKS R5 R6 K9 ["type"]
  JUMPIFNOTEQKS R5 K10 ["message"] [+11]
  GETUPVAL R5 6
  LOADK R7 K11 ["autoSetupValidationError"]
  GETUPVAL R8 7
  GETTABLEKS R10 R4 K8 ["error"]
  GETTABLEKS R9 R10 K10 ["message"]
  NAMECALL R5 R5 K3 ["report"]
  CALL R5 4 0
  FORGLOOP R0 2 [-17]
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  LOADK R4 K1 ["UGCValidationNotice"]
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["useContext"]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K3 ["Context"]
  CALL R3 1 1
  GETUPVAL R4 4
  LOADB R5 1
  CALL R4 1 1
  GETUPVAL R5 4
  LOADB R6 0
  CALL R5 1 1
  GETTABLEKS R7 R3 K4 ["cachedResponses"]
  GETTABLEKS R8 R0 K5 ["Avatar"]
  GETTABLE R6 R7 R8
  MOVE R7 R6
  JUMPIFNOT R7 [+2]
  GETTABLEKS R7 R6 K6 ["ugcValidationResponse"]
  JUMPIFNOTEQKNIL R7 [+3]
  LOADN R9 0
  JUMP [+3]
  GETTABLEKS R10 R7 K7 ["errors"]
  LENGTH R9 R10
  GETTABLEKS R11 R3 K8 ["canUploadBundles"]
  JUMPIFEQKNIL R11 [+9]
  GETTABLEKS R12 R3 K8 ["canUploadBundles"]
  GETTABLEKS R11 R12 K9 ["type"]
  JUMPIFNOTEQKS R11 K10 ["notAllowed"] [+3]
  LOADN R10 1
  JUMP [+1]
  LOADN R10 0
  ADD R8 R9 R10
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K11 ["useEffect"]
  NEWCLOSURE R10 P0
  CAPTURE VAL R3
  NEWTABLE R11 0 1
  GETTABLEKS R12 R3 K12 ["requestCanUploadBundles"]
  SETLIST R11 R12 1 [1]
  CALL R9 2 0
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K11 ["useEffect"]
  NEWCLOSURE R10 P1
  CAPTURE VAL R3
  CAPTURE VAL R0
  NEWTABLE R11 0 1
  GETTABLEKS R12 R0 K5 ["Avatar"]
  SETLIST R11 R12 1 [1]
  CALL R9 2 0
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K11 ["useEffect"]
  NEWCLOSURE R10 P2
  CAPTURE VAL R4
  CAPTURE VAL R5
  NEWTABLE R11 0 1
  GETTABLEKS R12 R0 K5 ["Avatar"]
  SETLIST R11 R12 1 [1]
  CALL R9 2 0
  GETUPVAL R9 5
  GETTABLEKS R10 R0 K5 ["Avatar"]
  CALL R9 1 1
  GETUPVAL R10 6
  MOVE R11 R1
  LOADK R12 K13 ["UGCValidation"]
  LOADK R13 K14 ["WarningLongTitle"]
  MOVE R14 R8
  CALL R10 4 1
  GETUPVAL R11 7
  GETTABLEKS R12 R0 K5 ["Avatar"]
  LOADK R13 K15 ["AutoSetupValidationResultReported"]
  LOADB R14 0
  CALL R11 3 2
  GETUPVAL R13 7
  GETTABLEKS R14 R0 K5 ["Avatar"]
  GETUPVAL R16 8
  GETTABLEKS R15 R16 K16 ["ATTRIBUTE_AUTO_SETUP_INPUT_ASSET"]
  LOADNIL R16
  CALL R13 3 1
  LOADB R14 0
  JUMPIFEQKNIL R6 [+3]
  GETTABLEKS R14 R6 K17 ["completed"]
  GETUPVAL R15 9
  NAMECALL R15 R15 K0 ["use"]
  CALL R15 1 1
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K11 ["useEffect"]
  NEWCLOSURE R17 P3
  CAPTURE VAL R14
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R15
  CAPTURE VAL R13
  NEWTABLE R18 0 1
  MOVE R19 R14
  SETLIST R18 R19 1 [1]
  CALL R16 2 0
  GETUPVAL R17 2
  GETTABLEKS R16 R17 K18 ["createElement"]
  GETUPVAL R17 10
  DUPTABLE R18 K21 [{"Position", "Size"}]
  GETTABLEKS R19 R2 K19 ["Position"]
  SETTABLEKS R19 R18 K19 ["Position"]
  GETTABLEKS R19 R2 K20 ["Size"]
  SETTABLEKS R19 R18 K20 ["Size"]
  DUPTABLE R19 K25 [{"Alert", "StatusIcon", "FullDetails"}]
  LOADB R20 0
  JUMPIFEQKNIL R7 [+45]
  LOADB R20 0
  LOADN R21 0
  JUMPIFNOTLT R21 R8 [+41]
  GETTABLEKS R20 R4 K26 ["enabled"]
  JUMPIFNOT R20 [+37]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K18 ["createElement"]
  GETUPVAL R21 11
  DUPTABLE R22 K32 [{"Title", "ShortTitle", "PrimaryAction", "OnClose", "Style"}]
  SETTABLEKS R10 R22 K27 ["Title"]
  GETUPVAL R23 6
  MOVE R24 R1
  LOADK R25 K13 ["UGCValidation"]
  LOADK R26 K33 ["WarningShortTitle"]
  MOVE R27 R8
  CALL R23 4 1
  SETTABLEKS R23 R22 K28 ["ShortTitle"]
  DUPTABLE R23 K36 [{"Text", "OnClick"}]
  LOADK R26 K13 ["UGCValidation"]
  LOADK R27 K37 ["WarningAction"]
  NAMECALL R24 R1 K38 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K34 ["Text"]
  GETTABLEKS R24 R5 K39 ["enable"]
  SETTABLEKS R24 R23 K35 ["OnClick"]
  SETTABLEKS R23 R22 K29 ["PrimaryAction"]
  GETTABLEKS R23 R4 K40 ["disable"]
  SETTABLEKS R23 R22 K30 ["OnClose"]
  LOADK R23 K41 ["WarningLong"]
  SETTABLEKS R23 R22 K31 ["Style"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K22 ["Alert"]
  LOADN R21 0
  JUMPIFNOTLT R21 R8 [+20]
  GETTABLEKS R21 R4 K26 ["enabled"]
  JUMPIF R21 [+16]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K18 ["createElement"]
  GETUPVAL R21 12
  DUPTABLE R22 K43 [{"Style", "TooltipText", "OnClick"}]
  LOADK R23 K44 ["Failure"]
  SETTABLEKS R23 R22 K31 ["Style"]
  SETTABLEKS R10 R22 K42 ["TooltipText"]
  GETTABLEKS R23 R5 K39 ["enable"]
  SETTABLEKS R23 R22 K35 ["OnClick"]
  CALL R20 2 1
  JUMP [+29]
  JUMPIFNOTEQKN R8 K45 [0] [+27]
  GETTABLEKS R21 R3 K8 ["canUploadBundles"]
  JUMPIFEQKNIL R21 [+23]
  JUMPIFEQKNIL R6 [+21]
  GETTABLEKS R21 R6 K17 ["completed"]
  JUMPIFNOT R21 [+17]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K18 ["createElement"]
  GETUPVAL R21 12
  DUPTABLE R22 K46 [{"Style", "TooltipText"}]
  LOADK R23 K47 ["Success"]
  SETTABLEKS R23 R22 K31 ["Style"]
  LOADK R25 K13 ["UGCValidation"]
  LOADK R26 K48 ["SuccessTooltip"]
  NAMECALL R23 R1 K38 ["getText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K42 ["TooltipText"]
  CALL R20 2 1
  JUMP [+1]
  LOADNIL R20
  SETTABLEKS R20 R19 K23 ["StatusIcon"]
  LOADB R20 0
  JUMPIFEQKNIL R7 [+22]
  LOADB R20 0
  LOADN R21 0
  JUMPIFNOTLT R21 R8 [+18]
  GETTABLEKS R20 R5 K26 ["enabled"]
  JUMPIFNOT R20 [+14]
  GETUPVAL R21 2
  GETTABLEKS R20 R21 K18 ["createElement"]
  GETUPVAL R21 13
  DUPTABLE R22 K50 [{"Errors", "OnClose"}]
  GETTABLEKS R23 R7 K7 ["errors"]
  SETTABLEKS R23 R22 K49 ["Errors"]
  GETTABLEKS R23 R5 K40 ["disable"]
  SETTABLEKS R23 R22 K30 ["OnClose"]
  CALL R20 2 1
  SETTABLEKS R20 R19 K24 ["FullDetails"]
  CALL R16 3 -1
  RETURN R16 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETIMPORT R5 K1 [script]
  GETTABLEKS R4 R5 K9 ["StatusIcon"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K10 ["UGCValidationErrorDialog"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Components"]
  GETTABLEKS R6 R7 K13 ["UGCValidationContext"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K11 ["Src"]
  GETTABLEKS R8 R9 K14 ["Util"]
  GETTABLEKS R7 R8 K15 ["Constants"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K16 ["Resources"]
  GETTABLEKS R8 R9 K17 ["Theme"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K11 ["Src"]
  GETTABLEKS R9 R10 K18 ["Types"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K11 ["Src"]
  GETTABLEKS R11 R12 K14 ["Util"]
  GETTABLEKS R10 R11 K19 ["localizePlural"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K11 ["Src"]
  GETTABLEKS R12 R13 K20 ["Hooks"]
  GETTABLEKS R11 R12 K21 ["useCreatedByAutoSetup"]
  CALL R10 1 1
  GETIMPORT R11 K5 [require]
  GETTABLEKS R14 R0 K11 ["Src"]
  GETTABLEKS R13 R14 K20 ["Hooks"]
  GETTABLEKS R12 R13 K22 ["useToggleState"]
  CALL R11 1 1
  GETIMPORT R12 K5 [require]
  GETTABLEKS R15 R0 K11 ["Src"]
  GETTABLEKS R14 R15 K20 ["Hooks"]
  GETTABLEKS R13 R14 K23 ["useSerializedState"]
  CALL R12 1 1
  GETTABLEKS R13 R1 K24 ["UI"]
  GETTABLEKS R14 R13 K25 ["Alert"]
  GETTABLEKS R15 R13 K26 ["Pane"]
  GETTABLEKS R17 R1 K27 ["ContextServices"]
  GETTABLEKS R16 R17 K28 ["Analytics"]
  GETTABLEKS R18 R1 K27 ["ContextServices"]
  GETTABLEKS R17 R18 K29 ["Localization"]
  GETTABLEKS R19 R1 K27 ["ContextServices"]
  GETTABLEKS R18 R19 K30 ["Stylizer"]
  DUPCLOSURE R19 K31 [PROTO_4]
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R6
  CAPTURE VAL R16
  CAPTURE VAL R15
  CAPTURE VAL R14
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R19 1
