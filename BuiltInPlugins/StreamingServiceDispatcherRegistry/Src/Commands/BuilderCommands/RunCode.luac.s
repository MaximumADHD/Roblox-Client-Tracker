PROTO_0:
  GETUPVAL R2 0
  FASTCALL2K ASSERT R2 K0 [+4]
  LOADK R3 K0 ["Feature is not turned on - RunCode command"]
  GETIMPORT R1 K2 [assert]
  CALL R1 2 0
  GETTABLEKS R1 R0 K3 ["arguments"]
  GETTABLEKS R2 R1 K4 ["code"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["StartRecordingActions"]
  GETTABLEKS R4 R0 K6 ["requestId"]
  CALL R3 1 0
  LOADB R3 1
  GETTABLEKS R4 R1 K7 ["localShowCode"]
  JUMPIFEQKB R4 TRUE [+7]
  GETTABLEKS R4 R1 K7 ["localShowCode"]
  JUMPIFEQKN R4 K8 [1] [+2]
  LOADB R3 0 +1
  LOADB R3 1
  JUMPIFNOT R3 [+17]
  GETUPVAL R4 2
  LOADK R6 K9 ["StreamText"]
  DUPTABLE R7 K11 [{"requestId", "content"}]
  GETTABLEKS R8 R0 K6 ["requestId"]
  SETTABLEKS R8 R7 K6 ["requestId"]
  LOADK R8 K12 ["
```lua
%s
```"]
  MOVE R10 R2
  NAMECALL R8 R8 K13 ["format"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["content"]
  NAMECALL R4 R4 K14 ["DisplayContent"]
  CALL R4 3 0
  GETIMPORT R4 K16 [pcall]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K17 ["RunSandboxedCode"]
  GETUPVAL R6 3
  MOVE R7 R2
  CALL R4 3 3
  JUMPIFNOT R4 [+15]
  JUMPIFNOT R5 [+14]
  GETUPVAL R7 2
  LOADK R9 K9 ["StreamText"]
  DUPTABLE R10 K11 [{"requestId", "content"}]
  GETTABLEKS R11 R0 K6 ["requestId"]
  SETTABLEKS R11 R10 K6 ["requestId"]
  LOADK R11 K18 ["
<p style = \"color:#73ff57\">Code executed successfully!</p>
"]
  SETTABLEKS R11 R10 K10 ["content"]
  NAMECALL R7 R7 K14 ["DisplayContent"]
  CALL R7 3 0
  JUMP [+27]
  JUMPIFNOT R4 [+2]
  MOVE R7 R6
  JUMP [+1]
  MOVE R7 R5
  GETIMPORT R8 K21 [task.spawn]
  GETIMPORT R9 K23 [error]
  MOVE R10 R7
  CALL R8 2 0
  GETUPVAL R8 2
  LOADK R10 K9 ["StreamText"]
  DUPTABLE R11 K11 [{"requestId", "content"}]
  GETTABLEKS R12 R0 K6 ["requestId"]
  SETTABLEKS R12 R11 K6 ["requestId"]
  LOADK R12 K24 ["
<p style = \"color:#ff3838\">%s</p>
"]
  MOVE R14 R7
  NAMECALL R12 R12 K13 ["format"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K10 ["content"]
  NAMECALL R8 R8 K14 ["DisplayContent"]
  CALL R8 3 0
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K25 ["EndRecordingActions"]
  GETTABLEKS R8 R0 K6 ["requestId"]
  CALL R7 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StreamingService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["ChatbotUIService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K1 [game]
  LOADK R4 K5 ["ConvAICodeRunner"]
  NAMECALL R2 R2 K6 ["GetFastFlag"]
  CALL R2 2 1
  GETIMPORT R7 K8 [script]
  GETTABLEKS R6 R7 K9 ["Parent"]
  GETTABLEKS R5 R6 K9 ["Parent"]
  GETTABLEKS R4 R5 K9 ["Parent"]
  GETTABLEKS R3 R4 K9 ["Parent"]
  GETIMPORT R4 K11 [require]
  GETTABLEKS R6 R3 K12 ["Src"]
  GETTABLEKS R5 R6 K13 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K11 [require]
  GETIMPORT R8 K8 [script]
  GETTABLEKS R7 R8 K9 ["Parent"]
  GETTABLEKS R6 R7 K14 ["BuilderNameMap"]
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R0
  RETURN R6 1
