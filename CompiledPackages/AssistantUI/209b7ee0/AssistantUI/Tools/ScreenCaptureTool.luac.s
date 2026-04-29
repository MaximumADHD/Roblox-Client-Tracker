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
        0 DUPTABLE                         R1 K3 [{"type", "imageContents", "expanded"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K4 ["Type"]
        4 SETTABLEKS                       R2 R1 K0 ["type"]
        6 NEWTABLE                         R2 0 0
        8 SETTABLEKS                       R2 R1 K1 ["imageContents"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K2 ["expanded"]
       13 RETURN                           R1 1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R2 R5 K0 ["content"]
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLEKS                       R7 R6 K1 ["type"]
       10 JUMPIFNOTEQKS                    R7 K2 ["image"] ; [+8]
       12 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       14 MOVE                             R8 R1
       15 MOVE                             R9 R6
       16 GETIMPORT                        R7 K5 [table.insert]
       18 CALL                             R7 2 0
       19 FORGLOOP                         R2 2 ; [-12]
       21 SETTABLEKS                       R1 R0 K6 ["imageContents"]
       23 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_8:
        0 DUPTABLE                         R0 K1 [{"shouldConfirm"}]
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["shouldConfirm"]
        4 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["ScreenCapture"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_10:
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
       57 DUPTABLE                         R7 K22 [{"transformInitialContent", "getTransformResultFn"}]
       58 DUPCLOSURE                       R8 K23 [PROTO_5]
       59 CAPTURE                          UPVAL U6
       60 SETTABLEKS                       R8 R7 K20 ["transformInitialContent"]
       62 DUPCLOSURE                       R8 K24 [PROTO_7]
       63 SETTABLEKS                       R8 R7 K21 ["getTransformResultFn"]
       65 DUPTABLE                         R8 K30 [{"definition", "getPreExecuteWarning", "displayNameFunction", "streamTransform", "contentWidgets"}]
       66 SETTABLEKS                       R6 R8 K25 ["definition"]
       68 DUPCLOSURE                       R9 K31 [PROTO_8]
       69 SETTABLEKS                       R9 R8 K26 ["getPreExecuteWarning"]
       71 DUPCLOSURE                       R9 K32 [PROTO_9]
       72 CAPTURE                          UPVAL U7
       73 SETTABLEKS                       R9 R8 K27 ["displayNameFunction"]
       75 SETTABLEKS                       R7 R8 K28 ["streamTransform"]
       77 NEWTABLE                         R9 0 1
       79 GETUPVAL                         R10 6
       80 SETLIST                          R9 R10 1 [1]
       82 SETTABLEKS                       R9 R8 K29 ["contentWidgets"]
       84 CLOSEUPVALS                      R3
       85 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["ContentWidgets"]
       13 GETTABLEKS                       R2 R3 K8 ["ImageContentWidget"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["ModelContextProtocol"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R5 K11 ["Promise"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K12 ["Tools"]
       34 GETTABLEKS                       R5 R6 K13 ["ToolTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K14 ["Util"]
       41 GETTABLEKS                       R6 R7 K15 ["ToolUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K16 ["Resources"]
       48 GETTABLEKS                       R8 R9 K17 ["Localization"]
       50 GETTABLEKS                       R7 R8 K18 ["Translator"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R9 R0 K19 ["Flags"]
       57 GETTABLEKS                       R8 R9 K20 ["FStringScreenCaptureFormat"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R9 R2 K14 ["Util"]
       62 GETTABLEKS                       R8 R9 K21 ["ToolBuilder"]
       64 GETTABLEKS                       R10 R2 K14 ["Util"]
       66 GETTABLEKS                       R9 R10 K22 ["ToolResult"]
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K23 ["Types"]
       72 CALL                             R10 1 1
       73 GETTABLEKS                       R11 R4 K24 ["ToolNames"]
       75 DUPCLOSURE                       R12 K25 [PROTO_10]
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R6
       84 RETURN                           R12 1
