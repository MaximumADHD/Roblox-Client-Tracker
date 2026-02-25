PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["tools"]
        3 GETTABLEKS                       R2 R3 K1 ["screenCapture"]
        5 GETTABLEKS                       R1 R2 K2 ["getImageDataBase64Async"]
        7 MOVE                             R2 R0
        8 DUPTABLE                         R3 K4 [{"maxSize"}]
        9 GETIMPORT                        R4 K7 [Vector2.new]
       11 LOADN                            R5 128
       12 LOADN                            R6 56
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K3 ["maxSize"]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R2 1
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["tools"]
        3 GETTABLEKS                       R3 R4 K1 ["screenCapture"]
        5 GETTABLEKS                       R2 R3 K2 ["captureScreenshot"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R2 1 1
        6 DUPCLOSURE                       R4 K1 [PROTO_2]
        7 NAMECALL                         R2 R2 K2 ["catch"]
        9 CALL                             R2 2 1
       10 NAMECALL                         R2 R2 K3 ["await"]
       12 CALL                             R2 1 2
       13 JUMPIF                           R2 ; [+10]
       14 GETIMPORT                        R4 K5 [error]
       16 LOADK                            R6 K6 ["Screen capture failed: "]
       17 FASTCALL1                        TOSTRING R3 ; [+3]
       18 MOVE                             R8 R3
       19 GETIMPORT                        R7 K8 [tostring]
       21 CALL                             R7 1 1
       22 CONCAT                           R5 R6 R7
       23 CALL                             R4 1 0
       24 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 MOVE                             R4 R1
        7 LOADK                            R5 K0 ["image/png"]
        8 NAMECALL                         R2 R2 K1 ["addImage"]
       10 CALL                             R2 3 1
       11 NAMECALL                         R2 R2 K2 ["build"]
       13 CALL                             R2 1 1
       14 RETURN                           R2 1

PROTO_5:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        4 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["ScreenCapture"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 LOADK                            R5 K2 ["ScreenCaptureTool_CaptureScreen"]
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R2
        8 NAMECALL                         R3 R1 K3 ["OnHostInvokeAsync"]
       10 CALL                             R3 3 1
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K4 ["define"]
       17 CALL                             R5 0 1
       18 GETUPVAL                         R8 3
       19 GETTABLEKS                       R7 R8 K5 ["ScreenCapture"]
       21 NAMECALL                         R5 R5 K6 ["setName"]
       23 CALL                             R5 2 1
       24 LOADK                            R7 K7 ["Capture current edit-time screen, return the image data."]
       25 NAMECALL                         R5 R5 K8 ["setDescription"]
       27 CALL                             R5 2 1
       28 LOADK                            R7 K9 ["capture_id"]
       29 DUPTABLE                         R8 K12 [{"type", "description"}]
       30 LOADK                            R9 K13 ["string"]
       31 SETTABLEKS                       R9 R8 K10 ["type"]
       33 LOADK                            R9 K14 ["Capture identifier such as 'ScreenCapture_1', 'ScreenCapture_2', etc."]
       34 SETTABLEKS                       R9 R8 K11 ["description"]
       36 NAMECALL                         R5 R5 K15 ["addArgument"]
       38 CALL                             R5 3 1
       39 MOVE                             R7 R4
       40 NAMECALL                         R5 R5 K16 ["setHandler"]
       42 CALL                             R5 2 1
       43 NAMECALL                         R5 R5 K17 ["build"]
       45 CALL                             R5 1 1
       46 DUPTABLE                         R6 K21 [{"definition", "getPreExecuteWarning", "displayNameFunction"}]
       47 SETTABLEKS                       R5 R6 K18 ["definition"]
       49 DUPCLOSURE                       R7 K22 [PROTO_5]
       50 SETTABLEKS                       R7 R6 K19 ["getPreExecuteWarning"]
       52 DUPCLOSURE                       R7 K23 [PROTO_6]
       53 CAPTURE                          UPVAL U4
       54 SETTABLEKS                       R7 R6 K20 ["displayNameFunction"]
       56 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Promise"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Tools"]
       25 GETTABLEKS                       R4 R5 K10 ["ToolTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K11 ["Resources"]
       32 GETTABLEKS                       R6 R7 K12 ["Localization"]
       34 GETTABLEKS                       R5 R6 K13 ["Translator"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R6 R1 K14 ["Util"]
       39 GETTABLEKS                       R5 R6 K15 ["ToolBuilder"]
       41 GETTABLEKS                       R7 R1 K14 ["Util"]
       43 GETTABLEKS                       R6 R7 K16 ["ToolResult"]
       45 GETTABLEKS                       R7 R3 K17 ["ToolNames"]
       47 DUPCLOSURE                       R8 K18 [PROTO_7]
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R4
       53 RETURN                           R8 1
