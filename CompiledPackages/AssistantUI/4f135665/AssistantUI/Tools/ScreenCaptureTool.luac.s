PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["tools"]
        3 GETTABLEKS                       R2 R3 K1 ["screenCapture"]
        5 GETTABLEKS                       R1 R2 K2 ["getImageDataBase64Async"]
        7 MOVE                             R2 R0
        8 DUPTABLE                         R3 K5 [{"maxSize", "format"}]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R4 R5 K6 ["getScreenCaptureSize"]
       12 CALL                             R4 0 1
       13 SETTABLEKS                       R4 R3 K3 ["maxSize"]
       15 GETUPVAL                         R4 2
       16 SETTABLEKS                       R4 R3 K4 ["format"]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R2 3
       20 MOVE                             R3 R1
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["tools"]
        3 GETTABLEKS                       R3 R4 K1 ["screenCapture"]
        5 GETTABLEKS                       R2 R3 K2 ["captureScreenshot"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CALL                             R2 1 1
        8 DUPCLOSURE                       R4 K1 [PROTO_2]
        9 NAMECALL                         R2 R2 K2 ["catch"]
       11 CALL                             R2 2 1
       12 NAMECALL                         R2 R2 K3 ["await"]
       14 CALL                             R2 1 2
       15 JUMPIF                           R2 ; [+10]
       16 GETIMPORT                        R4 K5 [error]
       18 LOADK                            R6 K6 ["Screen capture failed: "]
       19 FASTCALL1                        TOSTRING R3 ; [+3]
       20 MOVE                             R8 R3
       21 GETIMPORT                        R7 K8 [tostring]
       23 CALL                             R7 1 1
       24 CONCAT                           R5 R6 R7
       25 CALL                             R4 1 0
       26 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 LOADK                            R3 K0 ["image/%*"]
        5 GETUPVAL                         R5 1
        6 NAMECALL                         R3 R3 K1 ["format"]
        8 CALL                             R3 2 1
        9 MOVE                             R2 R3
       10 GETUPVAL                         R3 2
       11 CALL                             R3 0 1
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 NAMECALL                         R3 R3 K2 ["addImage"]
       16 CALL                             R3 3 1
       17 NAMECALL                         R3 R3 K3 ["build"]
       19 CALL                             R3 1 1
       20 RETURN                           R3 1

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
        4 LOADK                            R3 K2 ["png"]
        5 GETUPVAL                         R4 0
        6 CALL                             R4 0 1
        7 JUMPIFEQKS                       R4 K3 [""] ; [+4]
        9 GETUPVAL                         R4 0
       10 CALL                             R4 0 1
       11 MOVE                             R3 R4
       12 LOADK                            R6 K4 ["ScreenCaptureTool_CaptureScreen"]
       13 NEWCLOSURE                       R7 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          REF R3
       18 NAMECALL                         R4 R1 K5 ["OnHostInvokeAsync"]
       20 CALL                             R4 3 1
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R4
       23 CAPTURE                          REF R3
       24 CAPTURE                          UPVAL U3
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R6 R7 K6 ["define"]
       28 CALL                             R6 0 1
       29 GETUPVAL                         R9 5
       30 GETTABLEKS                       R8 R9 K7 ["ScreenCapture"]
       32 NAMECALL                         R6 R6 K8 ["setName"]
       34 CALL                             R6 2 1
       35 LOADK                            R8 K9 ["Capture current edit-time screen, return the image data."]
       36 NAMECALL                         R6 R6 K10 ["setDescription"]
       38 CALL                             R6 2 1
       39 LOADK                            R8 K11 ["capture_id"]
       40 DUPTABLE                         R9 K14 [{"type", "description"}]
       41 LOADK                            R10 K15 ["string"]
       42 SETTABLEKS                       R10 R9 K12 ["type"]
       44 LOADK                            R10 K16 ["Capture identifier such as 'ScreenCapture_1', 'ScreenCapture_2', etc."]
       45 SETTABLEKS                       R10 R9 K13 ["description"]
       47 NAMECALL                         R6 R6 K17 ["addArgument"]
       49 CALL                             R6 3 1
       50 MOVE                             R8 R5
       51 NAMECALL                         R6 R6 K18 ["setHandler"]
       53 CALL                             R6 2 1
       54 NAMECALL                         R6 R6 K19 ["build"]
       56 CALL                             R6 1 1
       57 DUPTABLE                         R7 K23 [{"definition", "getPreExecuteWarning", "displayNameFunction"}]
       58 SETTABLEKS                       R6 R7 K20 ["definition"]
       60 DUPCLOSURE                       R8 K24 [PROTO_5]
       61 SETTABLEKS                       R8 R7 K21 ["getPreExecuteWarning"]
       63 DUPCLOSURE                       R8 K25 [PROTO_6]
       64 CAPTURE                          UPVAL U6
       65 SETTABLEKS                       R8 R7 K22 ["displayNameFunction"]
       67 CLOSEUPVALS                      R3
       68 RETURN                           R7 1

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
       30 GETTABLEKS                       R6 R0 K11 ["Util"]
       32 GETTABLEKS                       R5 R6 K12 ["ToolUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K13 ["Resources"]
       39 GETTABLEKS                       R7 R8 K14 ["Localization"]
       41 GETTABLEKS                       R6 R7 K15 ["Translator"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K16 ["Flags"]
       48 GETTABLEKS                       R7 R8 K17 ["FStringScreenCaptureFormat"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R8 R1 K11 ["Util"]
       53 GETTABLEKS                       R7 R8 K18 ["ToolBuilder"]
       55 GETTABLEKS                       R9 R1 K11 ["Util"]
       57 GETTABLEKS                       R8 R9 K19 ["ToolResult"]
       59 GETTABLEKS                       R9 R3 K20 ["ToolNames"]
       61 DUPCLOSURE                       R10 K21 [PROTO_7]
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R5
       69 RETURN                           R10 1
