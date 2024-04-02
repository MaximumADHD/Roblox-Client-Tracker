PROTO_0:
  GETTABLEKS R1 R0 K0 ["isFinal"]
  JUMPIFNOT R1 [+1]
  RETURN R0 0
  DUPTABLE R1 K3 [{"requestId", "arguments"}]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K1 ["requestId"]
  NEWTABLE R2 0 2
  LOADK R3 K4 ["StreamText"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K5 ["Dictionary"]
  GETTABLEKS R4 R5 K6 ["join"]
  NEWTABLE R5 2 0
  GETUPVAL R6 0
  SETTABLEKS R6 R5 K1 ["requestId"]
  GETUPVAL R6 2
  SETTABLEKS R6 R5 K7 ["streamId"]
  MOVE R6 R0
  CALL R4 2 -1
  SETLIST R2 R3 -1 [1]
  SETTABLEKS R2 R1 K2 ["arguments"]
  GETUPVAL R2 3
  GETUPVAL R4 0
  LOADK R5 K8 ["QueueRichText"]
  MOVE R6 R1
  NAMECALL R2 R2 K9 ["InvokeCommand"]
  CALL R2 4 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R1 0 0
  SETTABLEKS R0 R1 K0 ["requestId"]
  GETUPVAL R2 0
  SETTABLEKS R2 R1 K1 ["streamId"]
  GETUPVAL R2 1
  LOADK R4 K2 ["MessageBubble"]
  MOVE R5 R1
  NAMECALL R2 R2 K3 ["DisplayContent"]
  CALL R2 3 0
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["requestId"]
  GETTABLEKS R2 R0 K1 ["arguments"]
  GETTABLEKS R4 R2 K2 ["text"]
  GETTABLEKS R3 R4 K3 ["streamId"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["RunningEval"]
  JUMPIFNOT R4 [+20]
  JUMPIF R3 [+19]
  GETTABLEKS R5 R2 K2 ["text"]
  FASTCALL1 TYPE R5 [+2]
  GETIMPORT R4 K6 [type]
  CALL R4 1 1
  JUMPIFNOTEQKS R4 K7 ["string"] [+12]
  GETIMPORT R4 K9 [print]
  LOADK R6 K10 ["<< DisplayText got collapsed stream >> 
%*
<< /DisplayText >>"]
  GETTABLEKS R8 R2 K2 ["text"]
  NAMECALL R6 R6 K11 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  CALL R4 1 0
  RETURN R0 0
  NEWCLOSURE R4 P0
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  CAPTURE UPVAL U2
  NEWCLOSURE R5 P1
  CAPTURE VAL R3
  CAPTURE UPVAL U3
  DUPCLOSURE R6 K12 [PROTO_2]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K13 ["requestStreamSubscription"]
  MOVE R8 R1
  MOVE R9 R3
  LOADB R10 1
  MOVE R11 R4
  MOVE R12 R5
  MOVE R13 R6
  CALL R7 6 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Src"]
  GETTABLEKS R3 R4 K7 ["Utils"]
  GETTABLEKS R2 R3 K8 ["CliAdapter"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K9 ["GetService"]
  LOADK R3 K10 ["ChatbotUIService"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["GetService"]
  LOADK R4 K11 ["StreamingService"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K12 ["Packages"]
  GETTABLEKS R5 R6 K13 ["Cryo"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K14 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K15 ["Cache"]
  GETTABLEKS R7 R8 K16 ["StreamCache"]
  CALL R6 1 1
  DUPCLOSURE R7 K17 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R6
  RETURN R7 1
