PROTO_0:
  GETIMPORT R2 K2 [math.random]
  LOADN R3 1
  LENGTH R4 R0
  CALL R2 2 1
  GETUPVAL R3 0
  LOADK R5 K3 ["ErrorMessage"]
  GETTABLE R6 R0 R2
  MOVE R7 R1
  NAMECALL R3 R3 K4 ["getText"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_1:
  GETUPVAL R2 0
  LOADK R4 K0 ["StreamText"]
  DUPTABLE R5 K3 [{"requestId", "content"}]
  SETTABLEKS R0 R5 K1 ["requestId"]
  SETTABLEKS R1 R5 K2 ["content"]
  NAMECALL R2 R2 K4 ["DisplayContent"]
  CALL R2 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  LOADK R5 K0 ["SetErrorMessage"]
  DUPTABLE R6 K4 [{"message", "disableInput", "timeout"}]
  SETTABLEKS R0 R6 K1 ["message"]
  SETTABLEKS R1 R6 K2 ["disableInput"]
  SETTABLEKS R2 R6 K3 ["timeout"]
  NAMECALL R3 R3 K5 ["DisplayContent"]
  CALL R3 3 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R2 R1 K0 ["errorId"]
  JUMPIFNOTEQKS R2 K1 ["RawErrorMessage"] [+15]
  GETTABLEKS R2 R1 K2 ["content"]
  GETUPVAL R3 0
  LOADK R5 K3 ["StreamText"]
  DUPTABLE R6 K5 [{"requestId", "content"}]
  SETTABLEKS R0 R6 K4 ["requestId"]
  SETTABLEKS R2 R6 K2 ["content"]
  NAMECALL R3 R3 K6 ["DisplayContent"]
  CALL R3 3 0
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_4:
  GETTABLEKS R2 R1 K0 ["errorId"]
  JUMPIFNOTEQKS R2 K1 ["RawErrorStatusBar"] [+24]
  GETUPVAL R2 0
  LOADK R4 K2 ["SetStatusBarMessage"]
  DUPTABLE R5 K6 [{"message", "disableInput", "timeout"}]
  GETTABLEKS R7 R1 K8 ["content"]
  ORK R6 R7 K7 [""]
  SETTABLEKS R6 R5 K3 ["message"]
  GETTABLEKS R7 R1 K4 ["disableInput"]
  ORK R6 R7 K9 [False]
  SETTABLEKS R6 R5 K4 ["disableInput"]
  GETTABLEKS R7 R1 K5 ["timeout"]
  ORK R6 R7 K10 [0]
  SETTABLEKS R6 R5 K5 ["timeout"]
  NAMECALL R2 R2 K11 ["DisplayContent"]
  CALL R2 3 0
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_5:
  GETTABLEKS R2 R1 K0 ["errorId"]
  JUMPIFNOTEQKS R2 K1 ["InappropriateRequest"] [+41]
  GETIMPORT R2 K4 [string.format]
  LOADK R3 K5 ["<br/><a href=\"%s\">%s</a>"]
  LOADK R4 K6 ["https://en.help.roblox.com/hc/en-us/articles/203313410-Roblox-Community-Standards"]
  LOADK R5 K6 ["https://en.help.roblox.com/hc/en-us/articles/203313410-Roblox-Community-Standards"]
  CALL R2 3 1
  NEWTABLE R4 0 2
  LOADK R5 K7 ["InappropriateRequestOne1"]
  LOADK R6 K8 ["InappropriateRequestTwo1"]
  SETLIST R4 R5 2 [1]
  DUPTABLE R5 K10 [{"url"}]
  SETTABLEKS R2 R5 K9 ["url"]
  GETIMPORT R6 K13 [math.random]
  LOADN R7 1
  LENGTH R8 R4
  CALL R6 2 1
  GETUPVAL R7 0
  LOADK R9 K14 ["ErrorMessage"]
  GETTABLE R10 R4 R6
  MOVE R11 R5
  NAMECALL R7 R7 K15 ["getText"]
  CALL R7 4 1
  MOVE R3 R7
  GETUPVAL R4 1
  LOADK R6 K16 ["StreamText"]
  DUPTABLE R7 K19 [{"requestId", "content"}]
  SETTABLEKS R0 R7 K17 ["requestId"]
  SETTABLEKS R3 R7 K18 ["content"]
  NAMECALL R4 R4 K20 ["DisplayContent"]
  CALL R4 3 0
  LOADB R4 1
  RETURN R4 1
  LOADB R2 0
  RETURN R2 1

PROTO_6:
  GETTABLEKS R2 R1 K0 ["errorId"]
  JUMPIFNOTEQKS R2 K1 ["QuotaError"] [+42]
  NEWTABLE R3 0 3
  LOADK R4 K2 ["QuotaErrorOne"]
  LOADK R5 K3 ["QuotaErrorTwo"]
  LOADK R6 K4 ["QuotaErrorThree"]
  SETLIST R3 R4 3 [1]
  GETIMPORT R4 K7 [math.random]
  LOADN R5 1
  LENGTH R6 R3
  CALL R4 2 1
  GETUPVAL R5 0
  LOADK R7 K8 ["ErrorMessage"]
  GETTABLE R8 R3 R4
  LOADNIL R9
  NAMECALL R5 R5 K9 ["getText"]
  CALL R5 4 1
  MOVE R2 R5
  GETIMPORT R3 K11 [game]
  LOADK R5 K12 ["ConvAIMaxQuotaTimeout"]
  NAMECALL R3 R3 K13 ["GetFastInt"]
  CALL R3 2 1
  GETUPVAL R4 1
  LOADK R6 K14 ["SetErrorMessage"]
  DUPTABLE R7 K18 [{"message", "disableInput", "timeout"}]
  SETTABLEKS R2 R7 K15 ["message"]
  LOADB R8 1
  SETTABLEKS R8 R7 K16 ["disableInput"]
  SETTABLEKS R3 R7 K17 ["timeout"]
  NAMECALL R4 R4 K19 ["DisplayContent"]
  CALL R4 3 0
  LOADB R4 1
  RETURN R4 1
  LOADB R2 0
  RETURN R2 1

PROTO_7:
  GETTABLEKS R2 R1 K0 ["errorId"]
  JUMPIFNOTEQKS R2 K1 ["ConnectionLost"] [+32]
  NEWTABLE R3 0 2
  LOADK R4 K2 ["ConnectionLostOne"]
  LOADK R5 K3 ["ConnectionLostTwo"]
  SETLIST R3 R4 2 [1]
  GETIMPORT R4 K6 [math.random]
  LOADN R5 1
  LENGTH R6 R3
  CALL R4 2 1
  GETUPVAL R5 0
  LOADK R7 K7 ["ErrorMessage"]
  GETTABLE R8 R3 R4
  LOADNIL R9
  NAMECALL R5 R5 K8 ["getText"]
  CALL R5 4 1
  MOVE R2 R5
  GETUPVAL R3 1
  LOADK R5 K9 ["StreamText"]
  DUPTABLE R6 K12 [{"requestId", "content"}]
  SETTABLEKS R0 R6 K10 ["requestId"]
  SETTABLEKS R2 R6 K11 ["content"]
  NAMECALL R3 R3 K13 ["DisplayContent"]
  CALL R3 3 0
  LOADB R3 1
  RETURN R3 1
  LOADB R2 0
  RETURN R2 1

PROTO_8:
  GETTABLEKS R2 R1 K0 ["errorId"]
  JUMPIFNOTEQKS R2 K1 ["ServersAtMaxCapacity"] [+40]
  NEWTABLE R3 0 1
  LOADK R4 K1 ["ServersAtMaxCapacity"]
  SETLIST R3 R4 1 [1]
  GETIMPORT R4 K4 [math.random]
  LOADN R5 1
  LENGTH R6 R3
  CALL R4 2 1
  GETUPVAL R5 0
  LOADK R7 K5 ["ErrorMessage"]
  GETTABLE R8 R3 R4
  LOADNIL R9
  NAMECALL R5 R5 K6 ["getText"]
  CALL R5 4 1
  MOVE R2 R5
  GETIMPORT R3 K8 [game]
  LOADK R5 K9 ["ConvAIServersAtMaxCapacityTimeout"]
  NAMECALL R3 R3 K10 ["GetFastInt"]
  CALL R3 2 1
  GETUPVAL R4 1
  LOADK R6 K11 ["SetErrorMessage"]
  DUPTABLE R7 K15 [{"message", "disableInput", "timeout"}]
  SETTABLEKS R2 R7 K12 ["message"]
  LOADB R8 1
  SETTABLEKS R8 R7 K13 ["disableInput"]
  SETTABLEKS R3 R7 K14 ["timeout"]
  NAMECALL R4 R4 K16 ["DisplayContent"]
  CALL R4 3 0
  LOADB R4 1
  RETURN R4 1
  LOADB R2 0
  RETURN R2 1

PROTO_9:
  GETTABLEKS R2 R1 K0 ["errorId"]
  JUMPIFNOTEQKS R2 K1 ["GeneralError"] [+31]
  NEWTABLE R3 0 1
  LOADK R4 K1 ["GeneralError"]
  SETLIST R3 R4 1 [1]
  GETIMPORT R4 K4 [math.random]
  LOADN R5 1
  LENGTH R6 R3
  CALL R4 2 1
  GETUPVAL R5 0
  LOADK R7 K5 ["ErrorMessage"]
  GETTABLE R8 R3 R4
  LOADNIL R9
  NAMECALL R5 R5 K6 ["getText"]
  CALL R5 4 1
  MOVE R2 R5
  GETUPVAL R3 1
  LOADK R5 K7 ["StreamText"]
  DUPTABLE R6 K10 [{"requestId", "content"}]
  SETTABLEKS R0 R6 K8 ["requestId"]
  SETTABLEKS R2 R6 K9 ["content"]
  NAMECALL R3 R3 K11 ["DisplayContent"]
  CALL R3 3 0
  LOADB R3 1
  RETURN R3 1
  LOADB R2 0
  RETURN R2 1

PROTO_10:
  GETTABLEKS R2 R1 K0 ["errorId"]
  JUMPIFNOTEQKS R2 K1 ["StreamingServiceError"] [+40]
  GETTABLEKS R2 R1 K2 ["errorType"]
  JUMPIFNOTEQKS R2 K3 ["HttpFailed"] [+34]
  GETTABLEKS R2 R1 K4 ["errorMessage"]
  JUMPIFEQKN R2 K5 [200] [+30]
  NEWTABLE R4 0 2
  LOADK R5 K6 ["ConnectionLostOne"]
  LOADK R6 K7 ["ConnectionLostTwo"]
  SETLIST R4 R5 2 [1]
  GETIMPORT R5 K10 [math.random]
  LOADN R6 1
  LENGTH R7 R4
  CALL R5 2 1
  GETUPVAL R6 0
  LOADK R8 K11 ["ErrorMessage"]
  GETTABLE R9 R4 R5
  LOADNIL R10
  NAMECALL R6 R6 K12 ["getText"]
  CALL R6 4 1
  MOVE R3 R6
  GETUPVAL R4 1
  LOADK R6 K13 ["StreamText"]
  DUPTABLE R7 K16 [{"requestId", "content"}]
  SETTABLEKS R0 R7 K14 ["requestId"]
  SETTABLEKS R3 R7 K15 ["content"]
  NAMECALL R4 R4 K17 ["DisplayContent"]
  CALL R4 3 0
  LOADB R2 1
  RETURN R2 1
  LOADB R2 0
  RETURN R2 1

PROTO_11:
  GETTABLEKS R1 R0 K0 ["arguments"]
  GETIMPORT R2 K2 [ipairs]
  GETUPVAL R3 0
  CALL R2 1 3
  FORGPREP_INEXT R2
  MOVE R7 R6
  GETTABLEKS R9 R0 K4 ["requestId"]
  ORK R8 R9 K3 [""]
  MOVE R9 R1
  CALL R7 2 1
  JUMPIF R7 [+2]
  FORGLOOP R2 2 [inext] [-8]
  GETIMPORT R2 K6 [game]
  LOADK R4 K7 ["EndRequestWhenDisplayErrorMessage"]
  NAMECALL R2 R2 K8 ["GetFastFlag"]
  CALL R2 2 1
  JUMPIFNOT R2 [+11]
  GETUPVAL R2 1
  LOADK R4 K9 ["EndRequest"]
  NEWTABLE R5 1 0
  GETTABLEKS R6 R0 K4 ["requestId"]
  SETTABLEKS R6 R5 K4 ["requestId"]
  NAMECALL R2 R2 K10 ["DisplayContent"]
  CALL R2 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["ChatbotUIService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R4 K5 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K6 ["Parent"]
  GETTABLEKS R1 R2 K6 ["Parent"]
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R1 K9 ["Src"]
  GETTABLEKS R3 R4 K10 ["Types"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R6 R1 K9 ["Src"]
  GETTABLEKS R5 R6 K11 ["Localization"]
  GETTABLEKS R4 R5 K11 ["Localization"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_0]
  CAPTURE VAL R3
  DUPCLOSURE R5 K13 [PROTO_1]
  CAPTURE VAL R0
  DUPCLOSURE R6 K14 [PROTO_2]
  CAPTURE VAL R0
  DUPCLOSURE R7 K15 [PROTO_3]
  CAPTURE VAL R0
  DUPCLOSURE R8 K16 [PROTO_4]
  CAPTURE VAL R0
  DUPCLOSURE R9 K17 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R0
  DUPCLOSURE R10 K18 [PROTO_6]
  CAPTURE VAL R3
  CAPTURE VAL R0
  DUPCLOSURE R11 K19 [PROTO_7]
  CAPTURE VAL R3
  CAPTURE VAL R0
  DUPCLOSURE R12 K20 [PROTO_8]
  CAPTURE VAL R3
  CAPTURE VAL R0
  DUPCLOSURE R13 K21 [PROTO_9]
  CAPTURE VAL R3
  CAPTURE VAL R0
  DUPCLOSURE R14 K22 [PROTO_10]
  CAPTURE VAL R3
  CAPTURE VAL R0
  NEWTABLE R15 0 8
  MOVE R16 R7
  MOVE R17 R8
  MOVE R18 R9
  MOVE R19 R10
  MOVE R20 R11
  MOVE R21 R12
  MOVE R22 R13
  MOVE R23 R14
  SETLIST R15 R16 8 [1]
  DUPCLOSURE R16 K23 [PROTO_11]
  CAPTURE VAL R15
  CAPTURE VAL R0
  RETURN R16 1
