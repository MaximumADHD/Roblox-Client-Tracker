PROTO_0:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["tools"]
  GETTABLEKS R2 R3 K1 ["screenCapture"]
  GETTABLEKS R1 R2 K2 ["getImageDataBase64Async"]
  MOVE R2 R0
  DUPTABLE R3 K4 [{"maxSize"}]
  GETIMPORT R4 K7 [Vector2.new]
  LOADN R5 128
  LOADN R6 56
  CALL R4 2 1
  SETTABLEKS R4 R3 K3 ["maxSize"]
  CALL R1 2 1
  GETUPVAL R2 1
  MOVE R3 R1
  CALL R2 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["tools"]
  GETTABLEKS R3 R4 K1 ["screenCapture"]
  GETTABLEKS R2 R3 K2 ["captureScreenshot"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  LOADNIL R1
  RETURN R1 1

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CALL R2 1 1
  DUPCLOSURE R4 K1 [PROTO_2]
  NAMECALL R2 R2 K2 ["catch"]
  CALL R2 2 1
  NAMECALL R2 R2 K3 ["await"]
  CALL R2 1 2
  JUMPIF R2 [+10]
  GETIMPORT R4 K5 [error]
  LOADK R6 K6 ["Screen capture failed: "]
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R8 R3
  GETIMPORT R7 K8 [tostring]
  CALL R7 1 1
  CONCAT R5 R6 R7
  CALL R4 1 0
  RETURN R3 1

PROTO_4:
  GETUPVAL R1 0
  LOADNIL R2
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R2 1
  CALL R2 0 1
  MOVE R4 R1
  LOADK R5 K0 ["image/png"]
  NAMECALL R2 R2 K1 ["addImage"]
  CALL R2 3 1
  NAMECALL R2 R2 K2 ["build"]
  CALL R2 1 1
  RETURN R2 1

PROTO_5:
  DUPTABLE R0 K1 [{"shouldConfirm"}]
  LOADB R1 1
  SETTABLEKS R1 R0 K0 ["shouldConfirm"]
  RETURN R0 1

PROTO_6:
  GETUPVAL R0 0
  LOADK R2 K0 ["Tools"]
  LOADK R3 K1 ["ScreenCapture"]
  NAMECALL R0 R0 K2 ["getText"]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_7:
  GETTABLEKS R1 R0 K0 ["networking"]
  GETTABLEKS R2 R0 K1 ["environment"]
  LOADK R5 K2 ["ScreenCaptureTool_CaptureScreen"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  NAMECALL R3 R1 K3 ["OnHostInvokeAsync"]
  CALL R3 3 1
  NEWCLOSURE R4 P1
  CAPTURE VAL R3
  CAPTURE UPVAL U1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["define"]
  CALL R5 0 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K5 ["ScreenCapture"]
  NAMECALL R5 R5 K6 ["setName"]
  CALL R5 2 1
  LOADK R7 K7 ["Capture current edit-time screen, return the image data."]
  NAMECALL R5 R5 K8 ["setDescription"]
  CALL R5 2 1
  LOADK R7 K9 ["capture_id"]
  DUPTABLE R8 K12 [{"type", "description"}]
  LOADK R9 K13 ["string"]
  SETTABLEKS R9 R8 K10 ["type"]
  LOADK R9 K14 ["Capture identifier such as 'ScreenCapture_1', 'ScreenCapture_2', etc."]
  SETTABLEKS R9 R8 K11 ["description"]
  NAMECALL R5 R5 K15 ["addArgument"]
  CALL R5 3 1
  MOVE R7 R4
  NAMECALL R5 R5 K16 ["setHandler"]
  CALL R5 2 1
  NAMECALL R5 R5 K17 ["build"]
  CALL R5 1 1
  DUPTABLE R6 K21 [{"definition", "getPreExecuteWarning", "displayNameFunction"}]
  SETTABLEKS R5 R6 K18 ["definition"]
  DUPCLOSURE R7 K22 [PROTO_5]
  SETTABLEKS R7 R6 K19 ["getPreExecuteWarning"]
  DUPCLOSURE R7 K23 [PROTO_6]
  CAPTURE UPVAL U4
  SETTABLEKS R7 R6 K20 ["displayNameFunction"]
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["ModelContextProtocol"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Promise"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Tools"]
  GETTABLEKS R4 R5 K10 ["ToolTypes"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Resources"]
  GETTABLEKS R6 R7 K12 ["Localization"]
  GETTABLEKS R5 R6 K13 ["Translator"]
  CALL R4 1 1
  GETTABLEKS R6 R1 K14 ["Util"]
  GETTABLEKS R5 R6 K15 ["ToolBuilder"]
  GETTABLEKS R7 R1 K14 ["Util"]
  GETTABLEKS R6 R7 K16 ["ToolResult"]
  GETTABLEKS R7 R3 K17 ["ToolNames"]
  DUPCLOSURE R8 K18 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R4
  RETURN R8 1
