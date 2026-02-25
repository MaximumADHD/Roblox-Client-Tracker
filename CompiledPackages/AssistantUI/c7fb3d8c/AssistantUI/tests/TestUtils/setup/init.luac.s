PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Get"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["Set"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        3 MOVE                             R3 R0
        4 GETIMPORT                        R1 K2 [table.insert]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K3 [{"tempId", "width", "height"}]
        1 SETTABLEKS                       R0 R1 K0 ["tempId"]
        3 LOADN                            R2 100
        4 SETTABLEKS                       R2 R1 K1 ["width"]
        6 LOADN                            R2 100
        7 SETTABLEKS                       R2 R1 K2 ["height"]
        9 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_6:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["new"]
        7 GETUPVAL                         R6 1
        8 GETTABLEKS                       R5 R6 K1 ["Implementations"]
       10 GETTABLEKS                       R4 R5 K2 ["CallbackNetworking"]
       12 GETTABLEKS                       R3 R4 K0 ["new"]
       14 DUPTABLE                         R4 K5 [{"isHost", "isGuest"}]
       15 LOADB                            R5 1
       16 SETTABLEKS                       R5 R4 K3 ["isHost"]
       18 LOADB                            R5 1
       19 SETTABLEKS                       R5 R4 K4 ["isGuest"]
       21 CALL                             R3 1 -1
       22 CALL                             R2 -1 1
       23 GETIMPORT                        R3 K8 [table.clone]
       25 GETUPVAL                         R4 2
       26 CALL                             R3 1 1
       27 SETTABLEKS                       R3 R1 K9 ["EventLogger"]
       29 NEWCLOSURE                       R3 P0
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R3 R1 K10 ["getNetworking"]
       33 GETTABLEKS                       R3 R1 K11 ["selection"]
       35 DUPCLOSURE                       R4 K12 [PROTO_1]
       36 CAPTURE                          UPVAL U3
       37 SETTABLEKS                       R4 R3 K13 ["get"]
       39 GETTABLEKS                       R3 R1 K11 ["selection"]
       41 DUPCLOSURE                       R4 K14 [PROTO_2]
       42 CAPTURE                          UPVAL U3
       43 SETTABLEKS                       R4 R3 K15 ["set"]
       45 NEWCLOSURE                       R3 P3
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R3 R1 K16 ["copyToClipboard"]
       49 DUPCLOSURE                       R3 K17 [PROTO_4]
       50 SETTABLEKS                       R3 R1 K18 ["convertImageDataToTempIdAsync"]
       52 NEWTABLE                         R3 1 0
       54 GETUPVAL                         R5 4
       55 GETTABLEKS                       R4 R5 K19 ["CLAUDE_API_KEY"]
       57 LOADK                            R5 K20 ["initial-test-api-key"]
       58 SETTABLE                         R5 R3 R4
       59 NEWCLOSURE                       R4 P5
       60 CAPTURE                          REF R3
       61 SETTABLEKS                       R4 R1 K21 ["getSecureSettingsAsync"]
       63 NEWCLOSURE                       R4 P6
       64 CAPTURE                          REF R3
       65 SETTABLEKS                       R4 R1 K22 ["setSecureSettingsAsync"]
       67 GETUPVAL                         R5 5
       68 GETTABLEKS                       R4 R5 K23 ["setup"]
       70 MOVE                             R5 R1
       71 GETUPVAL                         R6 6
       72 CALL                             R6 0 -1
       73 CALL                             R4 -1 0
       74 CLOSEUPVALS                      R3
       75 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+4]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["clear"]
        6 CALL                             R0 0 0
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R0 R1 K0 ["clear"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 JUMPIFNOTLT                      R1 R0 ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLE                         R1 R2 R0
        8 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["render"]
        3 DUPTABLE                         R2 K2 [{"MockDevFramework"}]
        4 GETUPVAL                         R3 1
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K3 ["provideMockContext"]
        8 DUPTABLE                         R5 K5 [{"MockFoundation"}]
        9 GETUPVAL                         R6 3
       10 DUPTABLE                         R7 K7 [{"ContextStack"}]
       11 GETUPVAL                         R8 4
       12 GETUPVAL                         R10 5
       13 GETTABLEKS                       R9 R10 K6 ["ContextStack"]
       15 DUPTABLE                         R10 K9 [{"providers"}]
       16 GETUPVAL                         R11 6
       17 SETTABLEKS                       R11 R10 K8 ["providers"]
       19 DUPTABLE                         R11 K11 [{"Node"}]
       20 SETTABLEKS                       R0 R11 K10 ["Node"]
       22 CALL                             R8 3 1
       23 SETTABLEKS                       R8 R7 K6 ["ContextStack"]
       25 CALL                             R6 1 1
       26 SETTABLEKS                       R6 R5 K4 ["MockFoundation"]
       28 CALL                             R3 2 1
       29 SETTABLEKS                       R3 R2 K1 ["MockDevFramework"]
       31 CALL                             R1 1 1
       32 GETTABLEKS                       R2 R1 K12 ["container"]
       34 SETUPVAL                         R2 7
       35 GETUPVAL                         R2 7
       36 JUMPIFNOT                        R2 ; [+12]
       37 GETUPVAL                         R2 7
       38 LOADK                            R4 K13 ["ScreenGui"]
       39 NAMECALL                         R2 R2 K14 ["FindFirstAncestorWhichIsA"]
       41 CALL                             R2 2 1
       42 JUMPIFNOT                        R2 ; [+6]
       43 LOADK                            R3 K15 ["MockAssistant"]
       44 SETTABLEKS                       R3 R2 K16 ["Name"]
       46 GETTABLEKS                       R3 R2 K17 ["Parent"]
       48 SETUPVAL                         R3 8
       49 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["UserInputService"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 NAMECALL                         R2 R1 K4 ["GetFocusedTextBox"]
        8 CALL                             R2 1 1
        9 MOVE                             R4 R2
       10 JUMPIFNOT                        R4 ; [+4]
       11 LOADK                            R6 K5 ["TextBox"]
       12 NAMECALL                         R4 R2 K6 ["IsA"]
       14 CALL                             R4 2 1
       15 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       17 LOADK                            R5 K7 ["Focused instance not found"]
       18 GETIMPORT                        R3 K9 [assert]
       20 CALL                             R3 2 0
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R3 R4 K10 ["change"]
       24 MOVE                             R4 R2
       25 DUPTABLE                         R5 K12 [{"target"}]
       26 DUPTABLE                         R6 K14 [{"Text"}]
       27 SETTABLEKS                       R0 R6 K13 ["Text"]
       29 SETTABLEKS                       R6 R5 K11 ["target"]
       31 CALL                             R3 2 0
       32 RETURN                           R0 0

PROTO_12:
        0 SETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [coroutine.status]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K3 ["suspended"] ; [+5]
        7 GETIMPORT                        R1 K6 [task.spawn]
        9 GETUPVAL                         R2 1
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R0 R1 K1 ["getThread"]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R0 K2 [coroutine.running]
        2 CALL                             R0 0 1
        3 LOADNIL                          R1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          REF R1
        6 CAPTURE                          VAL R0
        7 GETUPVAL                         R3 0
        8 NEWCLOSURE                       R4 P1
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R2
       11 CALL                             R3 1 0
       12 JUMPIF                           R1 ; [+4]
       13 GETIMPORT                        R3 K4 [coroutine.yield]
       15 MOVE                             R4 R0
       16 CALL                             R3 1 0
       17 FASTCALL2K                       ASSERT R1 K5 ; [+5]
       19 MOVE                             R4 R1
       20 LOADK                            R5 K5 ["getCurrentConversationThread: No thread returned"]
       21 GETIMPORT                        R3 K7 [assert]
       23 CALL                             R3 2 0
       24 CLOSEUPVALS                      R1
       25 RETURN                           R1 1

PROTO_15:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R2 K0 ["messages"]
        6 FASTCALL2K                       ASSERT R3 K1 ; [+5]
        8 MOVE                             R5 R3
        9 LOADK                            R6 K1 ["Thread messages should not be nil"]
       10 GETIMPORT                        R4 K3 [assert]
       12 CALL                             R4 2 0
       13 MOVE                             R4 R3
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 GETTABLEKS                       R9 R8 K4 ["contents"]
       19 LOADNIL                          R10
       20 LOADNIL                          R11
       21 FORGPREP                         R9
       22 GETTABLEKS                       R14 R13 K5 ["toolResult"]
       24 JUMPIFNOT                        R14 ; [+14]
       25 GETTABLEKS                       R15 R13 K5 ["toolResult"]
       27 GETTABLEKS                       R14 R15 K6 ["name"]
       29 JUMPIFNOTEQ                      R14 R0 ; [+9]
       31 GETTABLEKS                       R16 R13 K5 ["toolResult"]
       33 FASTCALL2                        TABLE_INSERT R1 R16 ; [+4]
       35 MOVE                             R15 R1
       36 GETIMPORT                        R14 K9 [table.insert]
       38 CALL                             R14 2 0
       39 FORGLOOP                         R9 2 ; [-18]
       41 FORGLOOP                         R4 2 ; [-25]
       43 RETURN                           R1 1

PROTO_16:
        0 LOADK                            R1 K0 ["tool_test_utils_"]
        1 GETUPVAL                         R2 0
        2 LOADB                            R4 0
        3 NAMECALL                         R2 R2 K1 ["GenerateGUID"]
        5 CALL                             R2 2 1
        6 CONCAT                           R0 R1 R2
        7 DUPTABLE                         R1 K6 [{"type", "id", "name", "input"}]
        8 LOADK                            R2 K7 ["tool_use"]
        9 SETTABLEKS                       R2 R1 K2 ["type"]
       11 SETTABLEKS                       R0 R1 K3 ["id"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K8 ["definition"]
       16 GETTABLEKS                       R3 R4 K8 ["definition"]
       18 GETTABLEKS                       R2 R3 K4 ["name"]
       20 SETTABLEKS                       R2 R1 K4 ["name"]
       22 GETUPVAL                         R2 2
       23 SETTABLEKS                       R2 R1 K5 ["input"]
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R3 R4 K9 ["get"]
       28 CALL                             R3 0 1
       29 GETTABLEKS                       R2 R3 K10 ["getContentObserver"]
       31 CALL                             R2 0 1
       32 GETTABLEKS                       R3 R2 K11 ["onNewMessage"]
       34 GETUPVAL                         R4 4
       35 CALL                             R3 1 0
       36 GETTABLEKS                       R3 R2 K12 ["onContentStart"]
       38 MOVE                             R4 R1
       39 CALL                             R3 1 1
       40 JUMPIFNOT                        R3 ; [+4]
       41 GETTABLEKS                       R4 R2 K13 ["onContentFinished"]
       43 MOVE                             R5 R3
       44 CALL                             R4 1 0
       45 GETUPVAL                         R5 6
       46 GETTABLEKS                       R4 R5 K14 ["assign"]
       48 GETUPVAL                         R5 5
       49 JUMPIF                           R5 ; [+2]
       50 NEWTABLE                         R5 0 0
       52 DUPTABLE                         R6 K17 [{"messageId", "contentId"}]
       53 GETUPVAL                         R7 4
       54 SETTABLEKS                       R7 R6 K15 ["messageId"]
       56 SETTABLEKS                       R3 R6 K16 ["contentId"]
       58 CALL                             R4 2 1
       59 SETUPVAL                         R4 5
       60 JUMPIFNOT                        R3 ; [+5]
       61 GETTABLEKS                       R4 R2 K18 ["onPreExecuteToolUse"]
       63 MOVE                             R5 R3
       64 MOVE                             R6 R1
       65 CALL                             R4 2 0
       66 GETUPVAL                         R6 1
       67 GETTABLEKS                       R5 R6 K8 ["definition"]
       69 GETTABLEKS                       R4 R5 K19 ["handler"]
       71 GETUPVAL                         R5 2
       72 GETUPVAL                         R6 5
       73 GETUPVAL                         R7 7
       74 CALL                             R4 3 1
       75 DUPTABLE                         R5 K24 [{"type", "id", "name", "content", "isError", "startTime", "startTimeAfterConfirmation"}]
       76 LOADK                            R6 K25 ["tool_result"]
       77 SETTABLEKS                       R6 R5 K2 ["type"]
       79 SETTABLEKS                       R0 R5 K3 ["id"]
       81 GETUPVAL                         R9 1
       82 GETTABLEKS                       R8 R9 K8 ["definition"]
       84 GETTABLEKS                       R7 R8 K8 ["definition"]
       86 GETTABLEKS                       R6 R7 K4 ["name"]
       88 SETTABLEKS                       R6 R5 K4 ["name"]
       90 GETTABLEKS                       R6 R4 K20 ["content"]
       92 SETTABLEKS                       R6 R5 K20 ["content"]
       94 GETTABLEKS                       R6 R4 K21 ["isError"]
       96 SETTABLEKS                       R6 R5 K21 ["isError"]
       98 LOADN                            R6 0
       99 SETTABLEKS                       R6 R5 K22 ["startTime"]
      101 LOADN                            R6 0
      102 SETTABLEKS                       R6 R5 K23 ["startTimeAfterConfirmation"]
      104 JUMPIFNOT                        R3 ; [+5]
      105 GETTABLEKS                       R6 R2 K26 ["onToolResult"]
      107 MOVE                             R7 R3
      108 MOVE                             R8 R5
      109 CALL                             R6 2 0
      110 RETURN                           R5 1

PROTO_17:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CALL                             R1 1 2
       12 SETUPVAL                         R1 0
       13 SETUPVAL                         R2 1
       14 GETIMPORT                        R1 K4 [coroutine.status]
       16 GETUPVAL                         R2 9
       17 CALL                             R1 1 1
       18 JUMPIFNOTEQKS                    R1 K5 ["suspended"] ; [+5]
       20 GETIMPORT                        R1 K8 [task.spawn]
       22 GETUPVAL                         R2 9
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R0 R1 K1 ["getOrAddMessage"]
        6 LOADK                            R1 K2 ["assistant"]
        7 GETUPVAL                         R2 1
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIF                           R4 ; [+8]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K0 ["invoke"]
        6 MOVE                             R5 R0
        7 MOVE                             R6 R1
        8 CALL                             R4 2 1
        9 CLOSEUPVALS                      R2
       10 RETURN                           R4 1
       11 JUMPIF                           R3 ; [+26]
       12 DUPTABLE                         R4 K6 [{"signal", "sessionId", "sendNotification", "sendRequest", "sendProgress"}]
       13 LOADNIL                          R5
       14 SETTABLEKS                       R5 R4 K1 ["signal"]
       16 LOADK                            R5 K7 [""]
       17 SETTABLEKS                       R5 R4 K2 ["sessionId"]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R5 R6 K8 ["fn"]
       22 CALL                             R5 0 1
       23 SETTABLEKS                       R5 R4 K3 ["sendNotification"]
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R5 R6 K8 ["fn"]
       28 CALL                             R5 0 1
       29 SETTABLEKS                       R5 R4 K4 ["sendRequest"]
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R5 R6 K8 ["fn"]
       34 CALL                             R5 0 1
       35 SETTABLEKS                       R5 R4 K5 ["sendProgress"]
       37 MOVE                             R3 R4
       38 FASTCALL2K                       ASSERT R3 K9 ; [+5]
       40 MOVE                             R5 R3
       41 LOADK                            R6 K9 ["RequestHandlerExtra is required for invoking tool"]
       42 GETIMPORT                        R4 K11 [assert]
       44 CALL                             R4 2 0
       45 GETIMPORT                        R4 K14 [coroutine.running]
       47 CALL                             R4 0 1
       48 LOADNIL                          R5
       49 LOADNIL                          R6
       50 NEWCLOSURE                       R7 P0
       51 CAPTURE                          REF R5
       52 CAPTURE                          REF R6
       53 CAPTURE                          UPVAL U3
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R1
       56 CAPTURE                          UPVAL U4
       57 CAPTURE                          REF R2
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          REF R3
       60 CAPTURE                          VAL R4
       61 GETUPVAL                         R8 6
       62 NEWCLOSURE                       R9 P1
       63 CAPTURE                          UPVAL U4
       64 CAPTURE                          VAL R7
       65 CALL                             R8 1 0
       66 JUMPIFNOTEQKNIL                  R5 ; [+4]
       68 GETIMPORT                        R8 K16 [coroutine.yield]
       70 CALL                             R8 0 0
       71 LOADK                            R11 K17 ["Tool invocation failed: %*"]
       72 MOVE                             R13 R6
       73 NAMECALL                         R11 R11 K18 ["format"]
       75 CALL                             R11 2 1
       76 MOVE                             R10 R11
       77 FASTCALL2                        ASSERT R5 R10 ; [+4]
       79 MOVE                             R9 R5
       80 GETIMPORT                        R8 K11 [assert]
       82 CALL                             R8 2 0
       83 CLOSEUPVALS                      R2
       84 RETURN                           R6 1

PROTO_20:
        0 GETUPVAL                         R6 0
        1 LENGTH                           R5 R6
        2 JUMPIFEQKN                       R5 K0 [1] ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        8 LOADK                            R5 K1 ["callTool only supports a single tool in the controller"]
        9 GETIMPORT                        R3 K3 [assert]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R4 0
       13 GETTABLEN                        R3 R4 1
       14 GETUPVAL                         R4 1
       15 MOVE                             R5 R3
       16 MOVE                             R6 R0
       17 MOVE                             R7 R1
       18 MOVE                             R8 R2
       19 CALL                             R4 4 1
       20 RETURN                           R4 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        7 LOADK                            R2 K0 ["Container not mounted, ensure render is called"]
        8 GETIMPORT                        R0 K2 [assert]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 0
       12 RETURN                           R0 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        7 LOADK                            R2 K0 ["GUI root not available, ensure render is called"]
        8 GETIMPORT                        R0 K2 [assert]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 0
       12 RETURN                           R0 1

PROTO_23:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOTEQKNIL                  R4 ; [+2]
        3 LOADB                            R3 0 +1
        4 LOADB                            R3 1
        5 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        7 LOADK                            R4 K0 ["GUI root not available, ensure render is called"]
        8 GETIMPORT                        R2 K2 [assert]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R1 0
       12 MOVE                             R4 R0
       13 NAMECALL                         R2 R1 K3 ["FindFirstChild"]
       15 CALL                             R2 2 1
       16 MOVE                             R4 R2
       17 JUMPIFNOT                        R4 ; [+4]
       18 LOADK                            R6 K4 ["LayerCollector"]
       19 NAMECALL                         R4 R2 K5 ["IsA"]
       21 CALL                             R4 2 1
       22 LOADK                            R6 K6 ["GUI object not found for title: "]
       23 MOVE                             R7 R0
       24 CONCAT                           R5 R6 R7
       25 FASTCALL2                        ASSERT R4 R5 ; [+3]
       27 GETIMPORT                        R3 K2 [assert]
       29 CALL                             R3 2 0
       30 RETURN                           R2 1

PROTO_24:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+12]
        2 GETUPVAL                         R5 0
        3 JUMPIFNOTEQKNIL                  R5 ; [+2]
        5 LOADB                            R4 0 +1
        6 LOADB                            R4 1
        7 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        9 LOADK                            R5 K0 ["Container not mounted, ensure render is called"]
       10 GETIMPORT                        R3 K2 [assert]
       12 CALL                             R3 2 0
       13 GETUPVAL                         R2 0
       14 MOVE                             R1 R2
       15 FASTCALL2K                       ASSERT R1 K3 ; [+5]
       17 MOVE                             R3 R1
       18 LOADK                            R4 K3 ["Query container not found"]
       19 GETIMPORT                        R2 K2 [assert]
       21 CALL                             R2 2 0
       22 GETUPVAL                         R3 1
       23 MOVE                             R4 R1
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R2 R3 K4 ["queryByTestId"]
       27 MOVE                             R3 R0
       28 CALL                             R2 1 1
       29 RETURN                           R2 1

PROTO_25:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+12]
        2 GETUPVAL                         R5 0
        3 JUMPIFNOTEQKNIL                  R5 ; [+2]
        5 LOADB                            R4 0 +1
        6 LOADB                            R4 1
        7 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        9 LOADK                            R5 K0 ["Container not mounted, ensure render is called"]
       10 GETIMPORT                        R3 K2 [assert]
       12 CALL                             R3 2 0
       13 GETUPVAL                         R2 0
       14 MOVE                             R1 R2
       15 FASTCALL2K                       ASSERT R1 K3 ; [+5]
       17 MOVE                             R3 R1
       18 LOADK                            R4 K3 ["Query container not found"]
       19 GETIMPORT                        R2 K2 [assert]
       21 CALL                             R2 2 0
       22 GETUPVAL                         R3 1
       23 MOVE                             R4 R1
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R2 R3 K4 ["getByTestId"]
       27 MOVE                             R3 R0
       28 CALL                             R2 1 1
       29 LOADK                            R6 K5 ["No result found for testId \"%*\""]
       30 MOVE                             R8 R0
       31 NAMECALL                         R6 R6 K6 ["format"]
       33 CALL                             R6 2 1
       34 MOVE                             R5 R6
       35 FASTCALL2                        ASSERT R2 R5 ; [+4]
       37 MOVE                             R4 R2
       38 GETIMPORT                        R3 K2 [assert]
       40 CALL                             R3 2 0
       41 RETURN                           R2 1

PROTO_26:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+12]
        2 GETUPVAL                         R5 0
        3 JUMPIFNOTEQKNIL                  R5 ; [+2]
        5 LOADB                            R4 0 +1
        6 LOADB                            R4 1
        7 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        9 LOADK                            R5 K0 ["Container not mounted, ensure render is called"]
       10 GETIMPORT                        R3 K2 [assert]
       12 CALL                             R3 2 0
       13 GETUPVAL                         R2 0
       14 MOVE                             R1 R2
       15 FASTCALL2K                       ASSERT R1 K3 ; [+5]
       17 MOVE                             R3 R1
       18 LOADK                            R4 K3 ["Query container not found"]
       19 GETIMPORT                        R2 K2 [assert]
       21 CALL                             R2 2 0
       22 GETUPVAL                         R3 1
       23 MOVE                             R4 R1
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R2 R3 K4 ["queryAllByTestId"]
       27 MOVE                             R3 R0
       28 CALL                             R2 1 1
       29 RETURN                           R2 1

PROTO_27:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+12]
        2 GETUPVAL                         R5 0
        3 JUMPIFNOTEQKNIL                  R5 ; [+2]
        5 LOADB                            R4 0 +1
        6 LOADB                            R4 1
        7 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        9 LOADK                            R5 K0 ["Container not mounted, ensure render is called"]
       10 GETIMPORT                        R3 K2 [assert]
       12 CALL                             R3 2 0
       13 GETUPVAL                         R2 0
       14 MOVE                             R1 R2
       15 FASTCALL2K                       ASSERT R1 K3 ; [+5]
       17 MOVE                             R3 R1
       18 LOADK                            R4 K3 ["Query container not found"]
       19 GETIMPORT                        R2 K2 [assert]
       21 CALL                             R2 2 0
       22 GETUPVAL                         R3 1
       23 MOVE                             R4 R1
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R2 R3 K4 ["getAllByTestId"]
       27 MOVE                             R3 R0
       28 CALL                             R2 1 1
       29 MOVE                             R4 R2
       30 JUMPIFNOT                        R4 ; [+6]
       31 LENGTH                           R5 R2
       32 LOADN                            R6 0
       33 JUMPIFLT                         R6 R5 ; [+2]
       35 LOADB                            R4 0 +1
       36 LOADB                            R4 1
       37 LOADK                            R6 K5 ["No results found for testId \"%*\""]
       38 MOVE                             R8 R0
       39 NAMECALL                         R6 R6 K6 ["format"]
       41 CALL                             R6 2 1
       42 MOVE                             R5 R6
       43 FASTCALL2                        ASSERT R4 R5 ; [+3]
       45 GETIMPORT                        R3 K2 [assert]
       47 CALL                             R3 2 0
       48 RETURN                           R2 1

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["click"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["mouseEnter"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["mouseLeave"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["InputArea"]
        3 GETTABLEKS                       R1 R2 K1 ["Container"]
        5 LOADNIL                          R2
        6 MOVE                             R3 R2
        7 JUMPIF                           R3 ; [+12]
        8 GETUPVAL                         R6 1
        9 JUMPIFNOTEQKNIL                  R6 ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       15 LOADK                            R6 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R4 K4 [assert]
       18 CALL                             R4 2 0
       19 GETUPVAL                         R3 1
       20 MOVE                             R2 R3
       21 FASTCALL2K                       ASSERT R2 K5 ; [+5]
       23 MOVE                             R4 R2
       24 LOADK                            R5 K5 ["Query container not found"]
       25 GETIMPORT                        R3 K4 [assert]
       27 CALL                             R3 2 0
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R2
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R3 R4 K6 ["getByTestId"]
       33 MOVE                             R4 R1
       34 CALL                             R3 1 1
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R1
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 MOVE                             R6 R7
       41 FASTCALL2                        ASSERT R3 R6 ; [+4]
       43 MOVE                             R5 R3
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
       47 MOVE                             R0 R3
       48 RETURN                           R0 1

PROTO_32:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["InputArea"]
        3 GETTABLEKS                       R1 R2 K1 ["Container"]
        5 LOADNIL                          R2
        6 MOVE                             R3 R2
        7 JUMPIF                           R3 ; [+12]
        8 GETUPVAL                         R6 1
        9 JUMPIFNOTEQKNIL                  R6 ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       15 LOADK                            R6 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R4 K4 [assert]
       18 CALL                             R4 2 0
       19 GETUPVAL                         R3 1
       20 MOVE                             R2 R3
       21 FASTCALL2K                       ASSERT R2 K5 ; [+5]
       23 MOVE                             R4 R2
       24 LOADK                            R5 K5 ["Query container not found"]
       25 GETIMPORT                        R3 K4 [assert]
       27 CALL                             R3 2 0
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R2
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R3 R4 K6 ["getByTestId"]
       33 MOVE                             R4 R1
       34 CALL                             R3 1 1
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R1
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 MOVE                             R6 R7
       41 FASTCALL2                        ASSERT R3 R6 ; [+4]
       43 MOVE                             R5 R3
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
       47 MOVE                             R0 R3
       48 LOADK                            R2 K9 ["TextBox"]
       49 LOADB                            R3 1
       50 NAMECALL                         R0 R0 K10 ["FindFirstChild"]
       52 CALL                             R0 3 1
       53 MOVE                             R2 R0
       54 JUMPIFNOT                        R2 ; [+4]
       55 LOADK                            R4 K9 ["TextBox"]
       56 NAMECALL                         R2 R0 K11 ["IsA"]
       58 CALL                             R2 2 1
       59 FASTCALL2K                       ASSERT R2 K12 ; [+4]
       61 LOADK                            R3 K12 ["TextBox not found"]
       62 GETIMPORT                        R1 K4 [assert]
       64 CALL                             R1 2 0
       65 RETURN                           R0 1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R6 1
        2 JUMPIFNOTEQKNIL                  R6 ; [+2]
        4 LOADB                            R5 0 +1
        5 LOADB                            R5 1
        6 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        8 LOADK                            R6 K0 ["Container not mounted, ensure render is called"]
        9 GETIMPORT                        R4 K2 [assert]
       11 CALL                             R4 2 0
       12 GETUPVAL                         R3 1
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R1 R2 K3 ["getByDisplayValue"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R2 R3 K4 ["firstAncestorWithTag"]
       21 MOVE                             R3 R1
       22 LOADK                            R4 K5 ["Assistant-MessageWidget"]
       23 CALL                             R2 2 1
       24 LOADK                            R6 K6 ["Message widget not found for message: "]
       25 MOVE                             R7 R0
       26 CONCAT                           R5 R6 R7
       27 FASTCALL2                        ASSERT R2 R5 ; [+4]
       29 MOVE                             R4 R2
       30 GETIMPORT                        R3 K2 [assert]
       32 CALL                             R3 2 0
       33 LOADK                            R5 K7 ["ScrollingFrame"]
       34 NAMECALL                         R3 R2 K8 ["FindFirstAncestorWhichIsA"]
       36 CALL                             R3 2 1
       37 LOADK                            R7 K9 ["Scroll area not found for message: "]
       38 MOVE                             R8 R0
       39 CONCAT                           R6 R7 R8
       40 FASTCALL2                        ASSERT R3 R6 ; [+4]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K2 [assert]
       45 CALL                             R4 2 0
       46 RETURN                           R3 1

PROTO_34:
        0 LOADNIL                          R2
        1 JUMPIFNOTEQKS                    R1 K0 ["user"] ; [+21]
        3 GETUPVAL                         R4 0
        4 GETUPVAL                         R8 1
        5 JUMPIFNOTEQKNIL                  R8 ; [+2]
        7 LOADB                            R7 0 +1
        8 LOADB                            R7 1
        9 FASTCALL2K                       ASSERT R7 K1 ; [+4]
       11 LOADK                            R8 K1 ["Container not mounted, ensure render is called"]
       12 GETIMPORT                        R6 K3 [assert]
       14 CALL                             R6 2 0
       15 GETUPVAL                         R5 1
       16 CALL                             R4 1 1
       17 GETTABLEKS                       R3 R4 K4 ["getByDisplayValue"]
       19 MOVE                             R4 R0
       20 CALL                             R3 1 1
       21 MOVE                             R2 R3
       22 JUMP                             ; [+19]
       23 GETUPVAL                         R4 0
       24 GETUPVAL                         R8 1
       25 JUMPIFNOTEQKNIL                  R8 ; [+2]
       27 LOADB                            R7 0 +1
       28 LOADB                            R7 1
       29 FASTCALL2K                       ASSERT R7 K1 ; [+4]
       31 LOADK                            R8 K1 ["Container not mounted, ensure render is called"]
       32 GETIMPORT                        R6 K3 [assert]
       34 CALL                             R6 2 0
       35 GETUPVAL                         R5 1
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R3 R4 K5 ["getByText"]
       39 MOVE                             R4 R0
       40 CALL                             R3 1 1
       41 MOVE                             R2 R3
       42 GETUPVAL                         R4 2
       43 GETTABLEKS                       R3 R4 K6 ["firstAncestorWithTag"]
       45 MOVE                             R4 R2
       46 LOADK                            R5 K7 ["Assistant-MessageWidget"]
       47 CALL                             R3 2 1
       48 MOVE                             R5 R3
       49 JUMPIFNOT                        R5 ; [+4]
       50 LOADK                            R7 K8 ["GuiObject"]
       51 NAMECALL                         R5 R3 K9 ["IsA"]
       53 CALL                             R5 2 1
       54 LOADK                            R7 K10 ["Message widget not found for message: "]
       55 MOVE                             R8 R0
       56 CONCAT                           R6 R7 R8
       57 FASTCALL2                        ASSERT R5 R6 ; [+3]
       59 GETIMPORT                        R4 K3 [assert]
       61 CALL                             R4 2 0
       62 RETURN                           R3 1

PROTO_35:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R7 1
        2 JUMPIFNOTEQKNIL                  R7 ; [+2]
        4 LOADB                            R6 0 +1
        5 LOADB                            R6 1
        6 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        8 LOADK                            R7 K0 ["Container not mounted, ensure render is called"]
        9 GETIMPORT                        R5 K2 [assert]
       11 CALL                             R5 2 0
       12 GETUPVAL                         R4 1
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R2 R3 K3 ["getByText"]
       16 MOVE                             R3 R0
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R4 R5 K4 ["assign"]
       20 DUPTABLE                         R5 K6 [{"exact"}]
       21 LOADB                            R6 0
       22 SETTABLEKS                       R6 R5 K5 ["exact"]
       24 MOVE                             R6 R1
       25 JUMPIF                           R6 ; [+2]
       26 NEWTABLE                         R6 0 0
       28 CALL                             R4 2 -1
       29 CALL                             R2 -1 1
       30 GETUPVAL                         R4 3
       31 GETTABLEKS                       R3 R4 K7 ["firstAncestorWithTag"]
       33 MOVE                             R4 R2
       34 LOADK                            R5 K8 ["Assistant-MessageWidget"]
       35 CALL                             R3 2 1
       36 MOVE                             R5 R3
       37 JUMPIFNOT                        R5 ; [+4]
       38 LOADK                            R7 K9 ["GuiObject"]
       39 NAMECALL                         R5 R3 K10 ["IsA"]
       41 CALL                             R5 2 1
       42 LOADK                            R7 K11 ["Message widget not found for message: "]
       43 MOVE                             R8 R0
       44 CONCAT                           R6 R7 R8
       45 FASTCALL2                        ASSERT R5 R6 ; [+3]
       47 GETIMPORT                        R4 K2 [assert]
       49 CALL                             R4 2 0
       50 MOVE                             R4 R2
       51 GETTABLEKS                       R5 R4 K12 ["Parent"]
       53 JUMPIFEQ                         R5 R3 ; [+4]
       55 GETTABLEKS                       R4 R4 K12 ["Parent"]
       57 JUMPBACK                         ; [-7]
       58 MOVE                             R6 R4
       59 JUMPIFNOT                        R6 ; [+4]
       60 LOADK                            R8 K9 ["GuiObject"]
       61 NAMECALL                         R6 R4 K10 ["IsA"]
       63 CALL                             R6 2 1
       64 LOADK                            R8 K13 ["Content widget not found for message: "]
       65 MOVE                             R9 R0
       66 CONCAT                           R7 R8 R9
       67 FASTCALL2                        ASSERT R6 R7 ; [+3]
       69 GETIMPORT                        R5 K2 [assert]
       71 CALL                             R5 2 0
       72 RETURN                           R4 1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R5 1
        2 JUMPIFNOTEQKNIL                  R5 ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        8 LOADK                            R5 K0 ["Container not mounted, ensure render is called"]
        9 GETIMPORT                        R3 K2 [assert]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R2 1
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R0 R1 K3 ["getByText"]
       16 GETUPVAL                         R1 2
       17 DUPTABLE                         R2 K5 [{"exact"}]
       18 LOADB                            R3 0
       19 SETTABLEKS                       R3 R2 K4 ["exact"]
       21 CALL                             R0 2 -1
       22 RETURN                           R0 -1

PROTO_37:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [pcall]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CALL                             R2 1 2
        8 JUMPIFNOT                        R2 ; [+2]
        9 MOVE                             R1 R3
       10 JUMP                             ; [+19]
       11 GETUPVAL                         R5 0
       12 GETUPVAL                         R9 1
       13 JUMPIFNOTEQKNIL                  R9 ; [+2]
       15 LOADB                            R8 0 +1
       16 LOADB                            R8 1
       17 FASTCALL2K                       ASSERT R8 K2 ; [+4]
       19 LOADK                            R9 K2 ["Container not mounted, ensure render is called"]
       20 GETIMPORT                        R7 K4 [assert]
       22 CALL                             R7 2 0
       23 GETUPVAL                         R6 1
       24 CALL                             R5 1 1
       25 GETTABLEKS                       R4 R5 K5 ["getByDisplayValue"]
       27 MOVE                             R5 R0
       28 CALL                             R4 1 1
       29 MOVE                             R1 R4
       30 LOADK                            R7 K6 ["Message content not found for message: "]
       31 MOVE                             R8 R0
       32 CONCAT                           R6 R7 R8
       33 FASTCALL2                        ASSERT R1 R6 ; [+4]
       35 MOVE                             R5 R1
       36 GETIMPORT                        R4 K4 [assert]
       38 CALL                             R4 2 0
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R4 R5 K7 ["firstAncestorWithTag"]
       42 MOVE                             R5 R1
       43 LOADK                            R6 K8 ["Assistant-MessageWidget"]
       44 CALL                             R4 2 1
       45 LOADK                            R8 K9 ["Message widget not found for message: "]
       46 MOVE                             R9 R0
       47 CONCAT                           R7 R8 R9
       48 FASTCALL2                        ASSERT R4 R7 ; [+4]
       50 MOVE                             R6 R4
       51 GETIMPORT                        R5 K4 [assert]
       53 CALL                             R5 2 0
       54 GETUPVAL                         R8 3
       55 GETTABLEKS                       R7 R8 K10 ["MessageActions"]
       57 GETTABLEKS                       R6 R7 K11 ["Retry"]
       59 MOVE                             R7 R4
       60 MOVE                             R8 R7
       61 JUMPIF                           R8 ; [+12]
       62 GETUPVAL                         R11 1
       63 JUMPIFNOTEQKNIL                  R11 ; [+2]
       65 LOADB                            R10 0 +1
       66 LOADB                            R10 1
       67 FASTCALL2K                       ASSERT R10 K2 ; [+4]
       69 LOADK                            R11 K2 ["Container not mounted, ensure render is called"]
       70 GETIMPORT                        R9 K4 [assert]
       72 CALL                             R9 2 0
       73 GETUPVAL                         R8 1
       74 MOVE                             R7 R8
       75 FASTCALL2K                       ASSERT R7 K12 ; [+5]
       77 MOVE                             R9 R7
       78 LOADK                            R10 K12 ["Query container not found"]
       79 GETIMPORT                        R8 K4 [assert]
       81 CALL                             R8 2 0
       82 GETUPVAL                         R9 0
       83 MOVE                             R10 R7
       84 CALL                             R9 1 1
       85 GETTABLEKS                       R8 R9 K13 ["queryByTestId"]
       87 MOVE                             R9 R6
       88 CALL                             R8 1 1
       89 MOVE                             R5 R8
       90 JUMPIFNOT                        R5 ; [+15]
       91 GETTABLEKS                       R6 R5 K14 ["Parent"]
       93 NOT                              R8 R6
       94 JUMPIF                           R8 ; [+4]
       95 LOADK                            R10 K15 ["GuiObject"]
       96 NAMECALL                         R8 R6 K16 ["IsA"]
       98 CALL                             R8 2 1
       99 FASTCALL2K                       ASSERT R8 K17 ; [+4]
      101 LOADK                            R9 K17 ["Button parent is not a GuiObject"]
      102 GETIMPORT                        R7 K4 [assert]
      104 CALL                             R7 2 0
      105 RETURN                           R6 1
      106 LOADNIL                          R6
      107 RETURN                           R6 1

PROTO_38:
        0 GETTABLEKS                       R4 R0 K0 ["messageContainer"]
        2 GETTABLEKS                       R3 R4 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R5 R1 K0 ["messageContainer"]
        6 GETTABLEKS                       R4 R5 K1 ["LayoutOrder"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["queryAll"]
        3 GETUPVAL                         R4 1
        4 JUMPIFNOTEQKNIL                  R4 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       10 LOADK                            R4 K1 ["Container not mounted, ensure render is called"]
       11 GETIMPORT                        R2 K3 [assert]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R1 1
       15 LOADK                            R2 K4 ["Assistant-MessageWidget"]
       16 CALL                             R0 2 1
       17 NEWTABLE                         R1 0 0
       19 MOVE                             R2 R0
       20 LOADNIL                          R3
       21 LOADNIL                          R4
       22 FORGPREP                         R2
       23 LOADK                            R10 K5 ["GuiObject"]
       24 NAMECALL                         R8 R6 K6 ["IsA"]
       26 CALL                             R8 2 1
       27 FASTCALL2K                       ASSERT R8 K7 ; [+4]
       29 LOADK                            R9 K7 ["Message is not a GuiObject, something weird happened"]
       30 GETIMPORT                        R7 K3 [assert]
       32 CALL                             R7 2 0
       33 LOADK                            R9 K8 ["Assistant-UserMessage"]
       34 NAMECALL                         R7 R6 K9 ["HasTag"]
       36 CALL                             R7 2 1
       37 DUPTABLE                         R10 K12 [{"messageContainer", "user"}]
       38 SETTABLEKS                       R6 R10 K10 ["messageContainer"]
       40 SETTABLEKS                       R7 R10 K11 ["user"]
       42 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       44 MOVE                             R9 R1
       45 GETIMPORT                        R8 K15 [table.insert]
       47 CALL                             R8 2 0
       48 FORGLOOP                         R2 2 ; [-26]
       50 GETIMPORT                        R2 K17 [table.sort]
       52 MOVE                             R3 R1
       53 DUPCLOSURE                       R4 K18 [PROTO_38]
       54 CALL                             R2 2 0
       55 RETURN                           R1 1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R0 R1 K0 ["getByText"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R5 1
        2 JUMPIFNOTEQKNIL                  R5 ; [+2]
        4 LOADB                            R4 0 +1
        5 LOADB                            R4 1
        6 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        8 LOADK                            R5 K0 ["Container not mounted, ensure render is called"]
        9 GETIMPORT                        R3 K2 [assert]
       11 CALL                             R3 2 0
       12 GETUPVAL                         R2 1
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R0 R1 K3 ["getByDisplayValue"]
       16 GETUPVAL                         R1 2
       17 GETUPVAL                         R2 3
       18 CALL                             R0 2 -1
       19 RETURN                           R0 -1

PROTO_42:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+12]
        2 GETUPVAL                         R6 0
        3 JUMPIFNOTEQKNIL                  R6 ; [+2]
        5 LOADB                            R5 0 +1
        6 LOADB                            R5 1
        7 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        9 LOADK                            R6 K0 ["Container not mounted, ensure render is called"]
       10 GETIMPORT                        R4 K2 [assert]
       12 CALL                             R4 2 0
       13 GETUPVAL                         R3 0
       14 MOVE                             R1 R3
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K3 ["assign"]
       18 DUPTABLE                         R4 K5 [{"exact"}]
       19 LOADB                            R5 0
       20 SETTABLEKS                       R5 R4 K4 ["exact"]
       22 MOVE                             R5 R2
       23 JUMPIF                           R5 ; [+2]
       24 NEWTABLE                         R5 0 0
       26 CALL                             R3 2 1
       27 GETIMPORT                        R4 K7 [pcall]
       29 NEWCLOSURE                       R5 P0
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          REF R1
       32 CAPTURE                          VAL R0
       33 CAPTURE                          VAL R3
       34 CALL                             R4 1 2
       35 JUMPIFNOT                        R4 ; [+2]
       36 CLOSEUPVALS                      R1
       37 RETURN                           R5 1
       38 GETIMPORT                        R6 K7 [pcall]
       40 NEWCLOSURE                       R7 P1
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          UPVAL U0
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R3
       45 CALL                             R6 1 2
       46 JUMPIFNOT                        R6 ; [+2]
       47 CLOSEUPVALS                      R1
       48 RETURN                           R7 1
       49 GETIMPORT                        R8 K9 [error]
       51 LOADK                            R10 K10 ["No text object found for message \"%*\".\n%*\n%*"]
       52 MOVE                             R12 R0
       53 MOVE                             R13 R5
       54 MOVE                             R14 R7
       55 NAMECALL                         R10 R10 K11 ["format"]
       57 CALL                             R10 4 1
       58 MOVE                             R9 R10
       59 CALL                             R8 1 0
       60 CLOSEUPVALS                      R1
       61 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ModelQualityWarning"]
        3 LOADNIL                          R2
        4 MOVE                             R3 R2
        5 JUMPIF                           R3 ; [+12]
        6 GETUPVAL                         R6 1
        7 JUMPIFNOTEQKNIL                  R6 ; [+2]
        9 LOADB                            R5 0 +1
       10 LOADB                            R5 1
       11 FASTCALL2K                       ASSERT R5 K1 ; [+4]
       13 LOADK                            R6 K1 ["Container not mounted, ensure render is called"]
       14 GETIMPORT                        R4 K3 [assert]
       16 CALL                             R4 2 0
       17 GETUPVAL                         R3 1
       18 MOVE                             R2 R3
       19 FASTCALL2K                       ASSERT R2 K4 ; [+5]
       21 MOVE                             R4 R2
       22 LOADK                            R5 K4 ["Query container not found"]
       23 GETIMPORT                        R3 K3 [assert]
       25 CALL                             R3 2 0
       26 GETUPVAL                         R4 2
       27 MOVE                             R5 R2
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R3 R4 K5 ["getByTestId"]
       31 MOVE                             R4 R1
       32 CALL                             R3 1 1
       33 LOADK                            R7 K6 ["No result found for testId \"%*\""]
       34 MOVE                             R9 R1
       35 NAMECALL                         R7 R7 K7 ["format"]
       37 CALL                             R7 2 1
       38 MOVE                             R6 R7
       39 FASTCALL2                        ASSERT R3 R6 ; [+4]
       41 MOVE                             R5 R3
       42 GETIMPORT                        R4 K3 [assert]
       44 CALL                             R4 2 0
       45 MOVE                             R0 R3
       46 RETURN                           R0 1

PROTO_44:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["GenerationIndicator"]
        3 LOADNIL                          R2
        4 MOVE                             R3 R2
        5 JUMPIF                           R3 ; [+12]
        6 GETUPVAL                         R6 1
        7 JUMPIFNOTEQKNIL                  R6 ; [+2]
        9 LOADB                            R5 0 +1
       10 LOADB                            R5 1
       11 FASTCALL2K                       ASSERT R5 K1 ; [+4]
       13 LOADK                            R6 K1 ["Container not mounted, ensure render is called"]
       14 GETIMPORT                        R4 K3 [assert]
       16 CALL                             R4 2 0
       17 GETUPVAL                         R3 1
       18 MOVE                             R2 R3
       19 FASTCALL2K                       ASSERT R2 K4 ; [+5]
       21 MOVE                             R4 R2
       22 LOADK                            R5 K4 ["Query container not found"]
       23 GETIMPORT                        R3 K3 [assert]
       25 CALL                             R3 2 0
       26 GETUPVAL                         R4 2
       27 MOVE                             R5 R2
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R3 R4 K5 ["getByTestId"]
       31 MOVE                             R4 R1
       32 CALL                             R3 1 1
       33 LOADK                            R7 K6 ["No result found for testId \"%*\""]
       34 MOVE                             R9 R1
       35 NAMECALL                         R7 R7 K7 ["format"]
       37 CALL                             R7 2 1
       38 MOVE                             R6 R7
       39 FASTCALL2                        ASSERT R3 R6 ; [+4]
       41 MOVE                             R5 R3
       42 GETIMPORT                        R4 K3 [assert]
       44 CALL                             R4 2 0
       45 MOVE                             R0 R3
       46 RETURN                           R0 1

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setModelQuality"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["InputArea"]
        3 GETTABLEKS                       R2 R3 K1 ["Container"]
        5 LOADNIL                          R3
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R3 K9 ["TextBox"]
       49 LOADB                            R4 1
       50 NAMECALL                         R1 R1 K10 ["FindFirstChild"]
       52 CALL                             R1 3 1
       53 MOVE                             R3 R1
       54 JUMPIFNOT                        R3 ; [+4]
       55 LOADK                            R5 K9 ["TextBox"]
       56 NAMECALL                         R3 R1 K11 ["IsA"]
       58 CALL                             R3 2 1
       59 FASTCALL2K                       ASSERT R3 K12 ; [+4]
       61 LOADK                            R4 K12 ["TextBox not found"]
       62 GETIMPORT                        R2 K4 [assert]
       64 CALL                             R2 2 0
       65 MOVE                             R0 R1
       66 GETUPVAL                         R1 3
       67 NEWCLOSURE                       R2 P0
       68 CAPTURE                          VAL R0
       69 CALL                             R1 1 0
       70 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["change"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K1 ["InputArea"]
        6 GETTABLEKS                       R4 R5 K2 ["Container"]
        8 LOADNIL                          R5
        9 MOVE                             R6 R5
       10 JUMPIF                           R6 ; [+12]
       11 GETUPVAL                         R9 2
       12 JUMPIFNOTEQKNIL                  R9 ; [+2]
       14 LOADB                            R8 0 +1
       15 LOADB                            R8 1
       16 FASTCALL2K                       ASSERT R8 K3 ; [+4]
       18 LOADK                            R9 K3 ["Container not mounted, ensure render is called"]
       19 GETIMPORT                        R7 K5 [assert]
       21 CALL                             R7 2 0
       22 GETUPVAL                         R6 2
       23 MOVE                             R5 R6
       24 FASTCALL2K                       ASSERT R5 K6 ; [+5]
       26 MOVE                             R7 R5
       27 LOADK                            R8 K6 ["Query container not found"]
       28 GETIMPORT                        R6 K5 [assert]
       30 CALL                             R6 2 0
       31 GETUPVAL                         R7 3
       32 MOVE                             R8 R5
       33 CALL                             R7 1 1
       34 GETTABLEKS                       R6 R7 K7 ["getByTestId"]
       36 MOVE                             R7 R4
       37 CALL                             R6 1 1
       38 LOADK                            R10 K8 ["No result found for testId \"%*\""]
       39 MOVE                             R12 R4
       40 NAMECALL                         R10 R10 K9 ["format"]
       42 CALL                             R10 2 1
       43 MOVE                             R9 R10
       44 FASTCALL2                        ASSERT R6 R9 ; [+4]
       46 MOVE                             R8 R6
       47 GETIMPORT                        R7 K5 [assert]
       49 CALL                             R7 2 0
       50 MOVE                             R3 R6
       51 LOADK                            R5 K10 ["TextBox"]
       52 LOADB                            R6 1
       53 NAMECALL                         R3 R3 K11 ["FindFirstChild"]
       55 CALL                             R3 3 1
       56 MOVE                             R5 R3
       57 JUMPIFNOT                        R5 ; [+4]
       58 LOADK                            R7 K10 ["TextBox"]
       59 NAMECALL                         R5 R3 K12 ["IsA"]
       61 CALL                             R5 2 1
       62 FASTCALL2K                       ASSERT R5 K13 ; [+4]
       64 LOADK                            R6 K13 ["TextBox not found"]
       65 GETIMPORT                        R4 K5 [assert]
       67 CALL                             R4 2 0
       68 MOVE                             R2 R3
       69 DUPTABLE                         R3 K15 [{"target"}]
       70 DUPTABLE                         R4 K17 [{"Text"}]
       71 SETTABLEKS                       R0 R4 K16 ["Text"]
       73 SETTABLEKS                       R4 R3 K14 ["target"]
       75 CALL                             R1 2 0
       76 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["CursorPosition"]
        4 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["InputArea"]
        3 GETTABLEKS                       R3 R4 K1 ["Container"]
        5 LOADNIL                          R4
        6 MOVE                             R5 R4
        7 JUMPIF                           R5 ; [+12]
        8 GETUPVAL                         R8 1
        9 JUMPIFNOTEQKNIL                  R8 ; [+2]
       11 LOADB                            R7 0 +1
       12 LOADB                            R7 1
       13 FASTCALL2K                       ASSERT R7 K2 ; [+4]
       15 LOADK                            R8 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R6 K4 [assert]
       18 CALL                             R6 2 0
       19 GETUPVAL                         R5 1
       20 MOVE                             R4 R5
       21 FASTCALL2K                       ASSERT R4 K5 ; [+5]
       23 MOVE                             R6 R4
       24 LOADK                            R7 K5 ["Query container not found"]
       25 GETIMPORT                        R5 K4 [assert]
       27 CALL                             R5 2 0
       28 GETUPVAL                         R6 2
       29 MOVE                             R7 R4
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R5 R6 K6 ["getByTestId"]
       33 MOVE                             R6 R3
       34 CALL                             R5 1 1
       35 LOADK                            R9 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R11 R3
       37 NAMECALL                         R9 R9 K8 ["format"]
       39 CALL                             R9 2 1
       40 MOVE                             R8 R9
       41 FASTCALL2                        ASSERT R5 R8 ; [+4]
       43 MOVE                             R7 R5
       44 GETIMPORT                        R6 K4 [assert]
       46 CALL                             R6 2 0
       47 MOVE                             R2 R5
       48 LOADK                            R4 K9 ["TextBox"]
       49 LOADB                            R5 1
       50 NAMECALL                         R2 R2 K10 ["FindFirstChild"]
       52 CALL                             R2 3 1
       53 MOVE                             R4 R2
       54 JUMPIFNOT                        R4 ; [+4]
       55 LOADK                            R6 K9 ["TextBox"]
       56 NAMECALL                         R4 R2 K11 ["IsA"]
       58 CALL                             R4 2 1
       59 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       61 LOADK                            R5 K12 ["TextBox not found"]
       62 GETIMPORT                        R3 K4 [assert]
       64 CALL                             R3 2 0
       65 MOVE                             R1 R2
       66 GETUPVAL                         R2 3
       67 NEWCLOSURE                       R3 P0
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R0
       70 CALL                             R2 1 0
       71 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["InputArea"]
        3 GETTABLEKS                       R2 R3 K1 ["Container"]
        5 LOADNIL                          R3
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R3 K9 ["TextBox"]
       49 LOADB                            R4 1
       50 NAMECALL                         R1 R1 K10 ["FindFirstChild"]
       52 CALL                             R1 3 1
       53 MOVE                             R3 R1
       54 JUMPIFNOT                        R3 ; [+4]
       55 LOADK                            R5 K9 ["TextBox"]
       56 NAMECALL                         R3 R1 K11 ["IsA"]
       58 CALL                             R3 2 1
       59 FASTCALL2K                       ASSERT R3 K12 ; [+4]
       61 LOADK                            R4 K12 ["TextBox not found"]
       62 GETIMPORT                        R2 K4 [assert]
       64 CALL                             R2 2 0
       65 MOVE                             R0 R1
       66 LOADK                            R3 K13 ["ScrollingFrame"]
       67 NAMECALL                         R1 R0 K14 ["FindFirstAncestorWhichIsA"]
       69 CALL                             R1 2 1
       70 MOVE                             R3 R1
       71 JUMPIFNOT                        R3 ; [+4]
       72 LOADK                            R5 K13 ["ScrollingFrame"]
       73 NAMECALL                         R3 R1 K11 ["IsA"]
       75 CALL                             R3 2 1
       76 FASTCALL2K                       ASSERT R3 K15 ; [+4]
       78 LOADK                            R4 K15 ["Scroll area not found for text box"]
       79 GETIMPORT                        R2 K4 [assert]
       81 CALL                             R2 2 0
       82 RETURN                           R1 1

PROTO_53:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["screen"]
        3 GETTABLEKS                       R1 R2 K1 ["debug"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["InputArea"]
        3 GETTABLEKS                       R1 R2 K1 ["StopButton"]
        5 LOADNIL                          R2
        6 MOVE                             R3 R2
        7 JUMPIF                           R3 ; [+12]
        8 GETUPVAL                         R6 1
        9 JUMPIFNOTEQKNIL                  R6 ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       15 LOADK                            R6 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R4 K4 [assert]
       18 CALL                             R4 2 0
       19 GETUPVAL                         R3 1
       20 MOVE                             R2 R3
       21 FASTCALL2K                       ASSERT R2 K5 ; [+5]
       23 MOVE                             R4 R2
       24 LOADK                            R5 K5 ["Query container not found"]
       25 GETIMPORT                        R3 K4 [assert]
       27 CALL                             R3 2 0
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R2
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R3 R4 K6 ["getByTestId"]
       33 MOVE                             R4 R1
       34 CALL                             R3 1 1
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R1
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 MOVE                             R6 R7
       41 FASTCALL2                        ASSERT R3 R6 ; [+4]
       43 MOVE                             R5 R3
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
       47 MOVE                             R0 R3
       48 GETUPVAL                         R2 3
       49 GETTABLEKS                       R1 R2 K9 ["click"]
       51 MOVE                             R2 R0
       52 CALL                             R1 1 0
       53 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["keyDown"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"key"}]
        5 GETIMPORT                        R4 K6 [Enum.KeyCode.Return]
        7 SETTABLEKS                       R4 R3 K1 ["key"]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K7 ["keyUp"]
       13 MOVE                             R2 R0
       14 DUPTABLE                         R3 K2 [{"key"}]
       15 GETIMPORT                        R4 K6 [Enum.KeyCode.Return]
       17 SETTABLEKS                       R4 R3 K1 ["key"]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R2 1 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["change"]
        7 MOVE                             R3 R0
        8 DUPTABLE                         R4 K2 [{"target"}]
        9 DUPTABLE                         R5 K4 [{"Text"}]
       10 SETTABLEKS                       R1 R5 K3 ["Text"]
       12 SETTABLEKS                       R5 R4 K1 ["target"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["InputArea"]
        4 GETTABLEKS                       R3 R4 K1 ["Container"]
        6 LOADNIL                          R4
        7 MOVE                             R5 R4
        8 JUMPIF                           R5 ; [+12]
        9 GETUPVAL                         R8 2
       10 JUMPIFNOTEQKNIL                  R8 ; [+2]
       12 LOADB                            R7 0 +1
       13 LOADB                            R7 1
       14 FASTCALL2K                       ASSERT R7 K2 ; [+4]
       16 LOADK                            R8 K2 ["Container not mounted, ensure render is called"]
       17 GETIMPORT                        R6 K4 [assert]
       19 CALL                             R6 2 0
       20 GETUPVAL                         R5 2
       21 MOVE                             R4 R5
       22 FASTCALL2K                       ASSERT R4 K5 ; [+5]
       24 MOVE                             R6 R4
       25 LOADK                            R7 K5 ["Query container not found"]
       26 GETIMPORT                        R5 K4 [assert]
       28 CALL                             R5 2 0
       29 GETUPVAL                         R6 3
       30 MOVE                             R7 R4
       31 CALL                             R6 1 1
       32 GETTABLEKS                       R5 R6 K6 ["getByTestId"]
       34 MOVE                             R6 R3
       35 CALL                             R5 1 1
       36 LOADK                            R9 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R11 R3
       38 NAMECALL                         R9 R9 K8 ["format"]
       40 CALL                             R9 2 1
       41 MOVE                             R8 R9
       42 FASTCALL2                        ASSERT R5 R8 ; [+4]
       44 MOVE                             R7 R5
       45 GETIMPORT                        R6 K4 [assert]
       47 CALL                             R6 2 0
       48 MOVE                             R2 R5
       49 LOADK                            R4 K9 ["TextBox"]
       50 LOADB                            R5 1
       51 NAMECALL                         R2 R2 K10 ["FindFirstChild"]
       53 CALL                             R2 3 1
       54 MOVE                             R4 R2
       55 JUMPIFNOT                        R4 ; [+4]
       56 LOADK                            R6 K9 ["TextBox"]
       57 NAMECALL                         R4 R2 K11 ["IsA"]
       59 CALL                             R4 2 1
       60 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       62 LOADK                            R5 K12 ["TextBox not found"]
       63 GETIMPORT                        R3 K4 [assert]
       65 CALL                             R3 2 0
       66 MOVE                             R1 R2
       67 CALL                             R0 1 0
       68 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R5 R6 K0 ["InputArea"]
        4 GETTABLEKS                       R4 R5 K1 ["Container"]
        6 LOADNIL                          R5
        7 MOVE                             R6 R5
        8 JUMPIF                           R6 ; [+12]
        9 GETUPVAL                         R9 2
       10 JUMPIFNOTEQKNIL                  R9 ; [+2]
       12 LOADB                            R8 0 +1
       13 LOADB                            R8 1
       14 FASTCALL2K                       ASSERT R8 K2 ; [+4]
       16 LOADK                            R9 K2 ["Container not mounted, ensure render is called"]
       17 GETIMPORT                        R7 K4 [assert]
       19 CALL                             R7 2 0
       20 GETUPVAL                         R6 2
       21 MOVE                             R5 R6
       22 FASTCALL2K                       ASSERT R5 K5 ; [+5]
       24 MOVE                             R7 R5
       25 LOADK                            R8 K5 ["Query container not found"]
       26 GETIMPORT                        R6 K4 [assert]
       28 CALL                             R6 2 0
       29 GETUPVAL                         R7 3
       30 MOVE                             R8 R5
       31 CALL                             R7 1 1
       32 GETTABLEKS                       R6 R7 K6 ["getByTestId"]
       34 MOVE                             R7 R4
       35 CALL                             R6 1 1
       36 LOADK                            R10 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R12 R4
       38 NAMECALL                         R10 R10 K8 ["format"]
       40 CALL                             R10 2 1
       41 MOVE                             R9 R10
       42 FASTCALL2                        ASSERT R6 R9 ; [+4]
       44 MOVE                             R8 R6
       45 GETIMPORT                        R7 K4 [assert]
       47 CALL                             R7 2 0
       48 MOVE                             R3 R6
       49 LOADK                            R5 K9 ["TextBox"]
       50 LOADB                            R6 1
       51 NAMECALL                         R3 R3 K10 ["FindFirstChild"]
       53 CALL                             R3 3 1
       54 MOVE                             R5 R3
       55 JUMPIFNOT                        R5 ; [+4]
       56 LOADK                            R7 K9 ["TextBox"]
       57 NAMECALL                         R5 R3 K11 ["IsA"]
       59 CALL                             R5 2 1
       60 FASTCALL2K                       ASSERT R5 K12 ; [+4]
       62 LOADK                            R6 K12 ["TextBox not found"]
       63 GETIMPORT                        R4 K4 [assert]
       65 CALL                             R4 2 0
       66 MOVE                             R2 R3
       67 MOVE                             R3 R0
       68 CALL                             R1 2 0
       69 GETUPVAL                         R1 4
       70 GETUPVAL                         R6 1
       71 GETTABLEKS                       R5 R6 K0 ["InputArea"]
       73 GETTABLEKS                       R4 R5 K1 ["Container"]
       75 LOADNIL                          R5
       76 MOVE                             R6 R5
       77 JUMPIF                           R6 ; [+12]
       78 GETUPVAL                         R9 2
       79 JUMPIFNOTEQKNIL                  R9 ; [+2]
       81 LOADB                            R8 0 +1
       82 LOADB                            R8 1
       83 FASTCALL2K                       ASSERT R8 K2 ; [+4]
       85 LOADK                            R9 K2 ["Container not mounted, ensure render is called"]
       86 GETIMPORT                        R7 K4 [assert]
       88 CALL                             R7 2 0
       89 GETUPVAL                         R6 2
       90 MOVE                             R5 R6
       91 FASTCALL2K                       ASSERT R5 K5 ; [+5]
       93 MOVE                             R7 R5
       94 LOADK                            R8 K5 ["Query container not found"]
       95 GETIMPORT                        R6 K4 [assert]
       97 CALL                             R6 2 0
       98 GETUPVAL                         R7 3
       99 MOVE                             R8 R5
      100 CALL                             R7 1 1
      101 GETTABLEKS                       R6 R7 K6 ["getByTestId"]
      103 MOVE                             R7 R4
      104 CALL                             R6 1 1
      105 LOADK                            R10 K7 ["No result found for testId \"%*\""]
      106 MOVE                             R12 R4
      107 NAMECALL                         R10 R10 K8 ["format"]
      109 CALL                             R10 2 1
      110 MOVE                             R9 R10
      111 FASTCALL2                        ASSERT R6 R9 ; [+4]
      113 MOVE                             R8 R6
      114 GETIMPORT                        R7 K4 [assert]
      116 CALL                             R7 2 0
      117 MOVE                             R3 R6
      118 LOADK                            R5 K9 ["TextBox"]
      119 LOADB                            R6 1
      120 NAMECALL                         R3 R3 K10 ["FindFirstChild"]
      122 CALL                             R3 3 1
      123 MOVE                             R5 R3
      124 JUMPIFNOT                        R5 ; [+4]
      125 LOADK                            R7 K9 ["TextBox"]
      126 NAMECALL                         R5 R3 K11 ["IsA"]
      128 CALL                             R5 2 1
      129 FASTCALL2K                       ASSERT R5 K12 ; [+4]
      131 LOADK                            R6 K12 ["TextBox not found"]
      132 GETIMPORT                        R4 K4 [assert]
      134 CALL                             R4 2 0
      135 MOVE                             R2 R3
      136 CALL                             R1 1 0
      137 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["InputArea"]
        3 GETTABLEKS                       R3 R4 K1 ["Container"]
        5 LOADNIL                          R4
        6 MOVE                             R5 R4
        7 JUMPIF                           R5 ; [+12]
        8 GETUPVAL                         R8 1
        9 JUMPIFNOTEQKNIL                  R8 ; [+2]
       11 LOADB                            R7 0 +1
       12 LOADB                            R7 1
       13 FASTCALL2K                       ASSERT R7 K2 ; [+4]
       15 LOADK                            R8 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R6 K4 [assert]
       18 CALL                             R6 2 0
       19 GETUPVAL                         R5 1
       20 MOVE                             R4 R5
       21 FASTCALL2K                       ASSERT R4 K5 ; [+5]
       23 MOVE                             R6 R4
       24 LOADK                            R7 K5 ["Query container not found"]
       25 GETIMPORT                        R5 K4 [assert]
       27 CALL                             R5 2 0
       28 GETUPVAL                         R6 2
       29 MOVE                             R7 R4
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R5 R6 K6 ["getByTestId"]
       33 MOVE                             R6 R3
       34 CALL                             R5 1 1
       35 LOADK                            R9 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R11 R3
       37 NAMECALL                         R9 R9 K8 ["format"]
       39 CALL                             R9 2 1
       40 MOVE                             R8 R9
       41 FASTCALL2                        ASSERT R5 R8 ; [+4]
       43 MOVE                             R7 R5
       44 GETIMPORT                        R6 K4 [assert]
       46 CALL                             R6 2 0
       47 MOVE                             R2 R5
       48 LOADK                            R4 K9 ["TextBox"]
       49 LOADB                            R5 1
       50 NAMECALL                         R2 R2 K10 ["FindFirstChild"]
       52 CALL                             R2 3 1
       53 MOVE                             R4 R2
       54 JUMPIFNOT                        R4 ; [+4]
       55 LOADK                            R6 K9 ["TextBox"]
       56 NAMECALL                         R4 R2 K11 ["IsA"]
       58 CALL                             R4 2 1
       59 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       61 LOADK                            R5 K12 ["TextBox not found"]
       62 GETIMPORT                        R3 K4 [assert]
       64 CALL                             R3 2 0
       65 MOVE                             R1 R2
       66 GETUPVAL                         R3 3
       67 GETTABLEKS                       R2 R3 K13 ["keyDown"]
       69 MOVE                             R3 R1
       70 DUPTABLE                         R4 K15 [{"key"}]
       71 SETTABLEKS                       R0 R4 K14 ["key"]
       73 CALL                             R2 2 0
       74 GETUPVAL                         R3 3
       75 GETTABLEKS                       R2 R3 K16 ["keyUp"]
       77 MOVE                             R3 R1
       78 DUPTABLE                         R4 K15 [{"key"}]
       79 SETTABLEKS                       R0 R4 K14 ["key"]
       81 CALL                             R2 2 0
       82 RETURN                           R0 0

PROTO_61:
        0 JUMPIFNOT                        R2 ; [+9]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["keyDown"]
        4 MOVE                             R4 R0
        5 DUPTABLE                         R5 K2 [{"key"}]
        6 SETTABLEKS                       R1 R5 K1 ["key"]
        8 CALL                             R3 2 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K3 ["keyUp"]
       13 MOVE                             R4 R0
       14 DUPTABLE                         R5 K2 [{"key"}]
       15 SETTABLEKS                       R1 R5 K1 ["key"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["InputArea"]
        3 GETTABLEKS                       R2 R3 K1 ["Container"]
        5 LOADNIL                          R3
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R3 K9 ["TextBox"]
       49 LOADB                            R4 1
       50 NAMECALL                         R1 R1 K10 ["FindFirstChild"]
       52 CALL                             R1 3 1
       53 MOVE                             R3 R1
       54 JUMPIFNOT                        R3 ; [+4]
       55 LOADK                            R5 K9 ["TextBox"]
       56 NAMECALL                         R3 R1 K11 ["IsA"]
       58 CALL                             R3 2 1
       59 FASTCALL2K                       ASSERT R3 K12 ; [+4]
       61 LOADK                            R4 K12 ["TextBox not found"]
       62 GETIMPORT                        R2 K4 [assert]
       64 CALL                             R2 2 0
       65 MOVE                             R0 R1
       66 GETTABLEKS                       R1 R0 K13 ["Visible"]
       68 JUMPIFNOT                        R1 ; [+2]
       69 GETTABLEKS                       R1 R0 K14 ["TextEditable"]
       71 RETURN                           R1 1

PROTO_63:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["InputArea"]
        4 GETTABLEKS                       R5 R6 K1 ["Container"]
        6 LOADNIL                          R6
        7 MOVE                             R7 R6
        8 JUMPIF                           R7 ; [+12]
        9 GETUPVAL                         R10 2
       10 JUMPIFNOTEQKNIL                  R10 ; [+2]
       12 LOADB                            R9 0 +1
       13 LOADB                            R9 1
       14 FASTCALL2K                       ASSERT R9 K2 ; [+4]
       16 LOADK                            R10 K2 ["Container not mounted, ensure render is called"]
       17 GETIMPORT                        R8 K4 [assert]
       19 CALL                             R8 2 0
       20 GETUPVAL                         R7 2
       21 MOVE                             R6 R7
       22 FASTCALL2K                       ASSERT R6 K5 ; [+5]
       24 MOVE                             R8 R6
       25 LOADK                            R9 K5 ["Query container not found"]
       26 GETIMPORT                        R7 K4 [assert]
       28 CALL                             R7 2 0
       29 GETUPVAL                         R8 3
       30 MOVE                             R9 R6
       31 CALL                             R8 1 1
       32 GETTABLEKS                       R7 R8 K6 ["getByTestId"]
       34 MOVE                             R8 R5
       35 CALL                             R7 1 1
       36 LOADK                            R11 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R13 R5
       38 NAMECALL                         R11 R11 K8 ["format"]
       40 CALL                             R11 2 1
       41 MOVE                             R10 R11
       42 FASTCALL2                        ASSERT R7 R10 ; [+4]
       44 MOVE                             R9 R7
       45 GETIMPORT                        R8 K4 [assert]
       47 CALL                             R8 2 0
       48 MOVE                             R4 R7
       49 LOADK                            R6 K9 ["TextBox"]
       50 LOADB                            R7 1
       51 NAMECALL                         R4 R4 K10 ["FindFirstChild"]
       53 CALL                             R4 3 1
       54 MOVE                             R6 R4
       55 JUMPIFNOT                        R6 ; [+4]
       56 LOADK                            R8 K9 ["TextBox"]
       57 NAMECALL                         R6 R4 K11 ["IsA"]
       59 CALL                             R6 2 1
       60 FASTCALL2K                       ASSERT R6 K12 ; [+4]
       62 LOADK                            R7 K12 ["TextBox not found"]
       63 GETIMPORT                        R5 K4 [assert]
       65 CALL                             R5 2 0
       66 MOVE                             R3 R4
       67 GETTABLEKS                       R2 R3 K13 ["Visible"]
       69 JUMPIFNOT                        R2 ; [+2]
       70 GETTABLEKS                       R2 R3 K14 ["TextEditable"]
       72 CALL                             R1 1 1
       73 GETTABLEKS                       R0 R1 K15 ["toBe"]
       75 GETUPVAL                         R1 4
       76 CALL                             R0 1 0
       77 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R0
        7 CALL                             R1 1 1
        8 NAMECALL                         R1 R1 K0 ["await"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LENGTH                           R4 R1
        3 LOADN                            R2 1
        4 LOADN                            R3 255
        5 FORNPREP                         R2
        6 GETTABLE                         R5 R1 R4
        7 GETTABLEKS                       R6 R5 K0 ["user"]
        9 JUMPIFNOT                        R6 ; [+12]
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R8 R5 K1 ["messageContainer"]
       13 CALL                             R7 1 1
       14 GETTABLEKS                       R6 R7 K2 ["findByDisplayValue"]
       16 MOVE                             R7 R0
       17 CALL                             R6 1 1
       18 NAMECALL                         R6 R6 K3 ["await"]
       20 CALL                             R6 1 2
       21 RETURN                           R6 1
       22 FORNLOOP                         R2
       23 GETIMPORT                        R2 K5 [error]
       25 LOADK                            R3 K6 ["No user message found"]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LENGTH                           R0 R1
        3 RETURN                           R0 1

PROTO_67:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["InputArea"]
        3 GETTABLEKS                       R2 R3 K1 ["Container"]
        5 LOADNIL                          R3
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R3 K9 ["TextBox"]
       49 LOADB                            R4 1
       50 NAMECALL                         R1 R1 K10 ["FindFirstChild"]
       52 CALL                             R1 3 1
       53 MOVE                             R3 R1
       54 JUMPIFNOT                        R3 ; [+4]
       55 LOADK                            R5 K9 ["TextBox"]
       56 NAMECALL                         R3 R1 K11 ["IsA"]
       58 CALL                             R3 2 1
       59 FASTCALL2K                       ASSERT R3 K12 ; [+4]
       61 LOADK                            R4 K12 ["TextBox not found"]
       62 GETIMPORT                        R2 K4 [assert]
       64 CALL                             R2 2 0
       65 MOVE                             R0 R1
       66 GETTABLEKS                       R2 R0 K13 ["PlaceholderText"]
       68 JUMPIFEQKS                       R2 K14 ["Responding..."] ; [+2]
       70 LOADB                            R1 0 +1
       71 LOADB                            R1 1
       72 RETURN                           R1 1

PROTO_68:
        0 LOADK                            R3 K0 ["ScrollingFrame"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R1 2 1
        4 MOVE                             R3 R1
        5 JUMPIFNOT                        R3 ; [+4]
        6 LOADK                            R5 K0 ["ScrollingFrame"]
        7 NAMECALL                         R3 R1 K2 ["IsA"]
        9 CALL                             R3 2 1
       10 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       12 LOADK                            R4 K3 ["Scroll area not found for widget"]
       13 GETIMPORT                        R2 K5 [assert]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R3 R1 K6 ["AbsolutePosition"]
       18 GETTABLEKS                       R5 R0 K6 ["AbsolutePosition"]
       20 GETTABLEKS                       R7 R0 K8 ["AbsoluteSize"]
       22 DIVK                             R6 R7 K7 [2]
       23 ADD                              R4 R5 R6
       24 SUB                              R2 R3 R4
       25 GETTABLEKS                       R3 R1 K9 ["CanvasPosition"]
       27 SUB                              R3 R3 R2
       28 SETTABLEKS                       R3 R1 K9 ["CanvasPosition"]
       30 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["RunCode"]
        3 GETTABLEKS                       R2 R3 K1 ["Expand"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_70:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["AssetVariation"]
        3 GETTABLEKS                       R2 R3 K1 ["Expand"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_71:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MaterialGen"]
        3 GETTABLEKS                       R2 R3 K1 ["Expand"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_72:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MaterialGen"]
        3 GETTABLEKS                       R2 R3 K1 ["StudsPerTileValueBar"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MaterialGen"]
        3 GETTABLEKS                       R2 R3 K1 ["OrganicPatternToggle"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_74:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MeshGen"]
        3 GETTABLEKS                       R2 R3 K1 ["Expand"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_75:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MeshGen"]
        3 GETTABLEKS                       R2 R3 K1 ["Regenerate"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MeshGen"]
        3 GETTABLEKS                       R2 R3 K1 ["Cancel"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_77:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MeshGen"]
        3 GETTABLEKS                       R2 R3 K1 ["Publish"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_78:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MeshGen"]
        3 GETTABLEKS                       R2 R3 K1 ["Insert"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_79:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MeshGen"]
        3 GETTABLEKS                       R2 R3 K1 ["PreviewImage"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 RETURN                           R1 1

PROTO_80:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MeshGen"]
        3 GETTABLEKS                       R2 R3 K1 ["LastPreview"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_81:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MeshGen"]
        3 GETTABLEKS                       R2 R3 K1 ["NextPreview"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_82:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MeshGen"]
        3 GETTABLEKS                       R2 R3 K1 ["UseSelection"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["GuiButton"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstChildWhichIsA"]
       51 CALL                             R2 2 1
       52 FASTCALL2K                       ASSERT R2 K11 ; [+5]
       54 MOVE                             R4 R2
       55 LOADK                            R5 K11 ["Toggle button not found inside use selection toggle"]
       56 GETIMPORT                        R3 K4 [assert]
       58 CALL                             R3 2 0
       59 LOADK                            R5 K12 ["ScrollingFrame"]
       60 NAMECALL                         R3 R2 K13 ["FindFirstAncestorWhichIsA"]
       62 CALL                             R3 2 1
       63 MOVE                             R5 R3
       64 JUMPIFNOT                        R5 ; [+4]
       65 LOADK                            R7 K12 ["ScrollingFrame"]
       66 NAMECALL                         R5 R3 K14 ["IsA"]
       68 CALL                             R5 2 1
       69 FASTCALL2K                       ASSERT R5 K15 ; [+4]
       71 LOADK                            R6 K15 ["Scroll area not found for widget"]
       72 GETIMPORT                        R4 K4 [assert]
       74 CALL                             R4 2 0
       75 GETTABLEKS                       R5 R3 K16 ["AbsolutePosition"]
       77 GETTABLEKS                       R7 R2 K16 ["AbsolutePosition"]
       79 GETTABLEKS                       R9 R2 K18 ["AbsoluteSize"]
       81 DIVK                             R8 R9 K17 [2]
       82 ADD                              R6 R7 R8
       83 SUB                              R4 R5 R6
       84 GETTABLEKS                       R5 R3 K19 ["CanvasPosition"]
       86 SUB                              R5 R5 R4
       87 SETTABLEKS                       R5 R3 K19 ["CanvasPosition"]
       89 GETUPVAL                         R4 3
       90 GETTABLEKS                       R3 R4 K20 ["click"]
       92 MOVE                             R4 R2
       93 CALL                             R3 1 0
       94 RETURN                           R0 0

PROTO_83:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_84:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["spyOn"]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K1 ["Util"]
        6 GETTABLEKS                       R3 R4 K2 ["MarkdownParser"]
        8 LOADK                            R4 K3 ["parse"]
        9 CALL                             R2 2 1
       10 GETTABLEKS                       R1 R2 K4 ["mockImplementation"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_85:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Carousel"]
        3 GETTABLEKS                       R2 R3 K1 ["Container"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 RETURN                           R1 1

PROTO_86:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 LOADK                            R9 K1 ["GuiObject"]
        5 NAMECALL                         R7 R6 K2 ["IsA"]
        7 CALL                             R7 2 1
        8 JUMPIFNOT                        R7 ; [+5]
        9 GETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       11 JUMPIFNOTEQ                      R7 R1 ; [+2]
       13 RETURN                           R6 1
       14 FORGLOOP                         R2 2 ; [-11]
       16 GETIMPORT                        R2 K5 [error]
       18 LOADK                            R4 K6 ["Carousel item with index %* not found"]
       19 MOVE                             R6 R1
       20 NAMECALL                         R4 R4 K7 ["format"]
       22 CALL                             R4 2 1
       23 MOVE                             R3 R4
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_87:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+35]
        2 GETTABLEKS                       R3 R2 K0 ["Parent"]
        4 LOADK                            R7 K1 ["Parent not found for element: "]
        5 NAMECALL                         R8 R2 K2 ["GetFullName"]
        7 CALL                             R8 1 1
        8 CONCAT                           R6 R7 R8
        9 FASTCALL2                        ASSERT R3 R6 ; [+4]
       11 MOVE                             R5 R3
       12 GETIMPORT                        R4 K4 [assert]
       14 CALL                             R4 2 0
       15 LOADK                            R7 K5 ["GuiObject"]
       16 NAMECALL                         R5 R3 K6 ["IsA"]
       18 CALL                             R5 2 1
       19 LOADK                            R7 K7 ["Parent is not a GuiObject: "]
       20 NAMECALL                         R8 R3 K2 ["GetFullName"]
       22 CALL                             R8 1 1
       23 CONCAT                           R6 R7 R8
       24 FASTCALL2                        ASSERT R5 R6 ; [+3]
       26 GETIMPORT                        R4 K4 [assert]
       28 CALL                             R4 2 0
       29 MOVE                             R2 R3
       30 MOVE                             R6 R1
       31 NAMECALL                         R4 R2 K8 ["HasTag"]
       33 CALL                             R4 2 1
       34 JUMPIFNOT                        R4 ; [+1]
       35 RETURN                           R2 1
       36 JUMPBACK                         ; [-36]
       37 LOADK                            R6 K9 ["Ancestor with tag %* not found for element %*"]
       38 MOVE                             R8 R1
       39 NAMECALL                         R9 R0 K2 ["GetFullName"]
       41 CALL                             R9 1 1
       42 NAMECALL                         R6 R6 K10 ["format"]
       44 CALL                             R6 3 1
       45 MOVE                             R5 R6
       46 FASTCALL2                        ASSERT R2 R5 ; [+4]
       48 MOVE                             R4 R2
       49 GETIMPORT                        R3 K4 [assert]
       51 CALL                             R3 2 0
       52 RETURN                           R2 1

PROTO_88:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["CarouselItem"]
        3 GETTABLEKS                       R2 R3 K1 ["Selected"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 GETUPVAL                         R2 3
       49 MOVE                             R3 R1
       50 LOADK                            R4 K9 ["Component-CarouselItem"]
       51 CALL                             R2 2 1
       52 RETURN                           R2 1

PROTO_89:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 LOADK                            R6 K0 ["Carousel item not found at index: "]
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R8 R1
        7 GETIMPORT                        R7 K2 [tostring]
        9 CALL                             R7 1 1
       10 CONCAT                           R5 R6 R7
       11 FASTCALL2                        ASSERT R2 R5 ; [+4]
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K4 [assert]
       16 CALL                             R3 2 0
       17 GETUPVAL                         R3 1
       18 MOVE                             R4 R0
       19 LOADK                            R5 K5 ["Component-Carousel"]
       20 CALL                             R3 2 1
       21 LOADK                            R6 K6 ["ScrollingFrame"]
       22 NAMECALL                         R4 R3 K7 ["FindFirstAncestorWhichIsA"]
       24 CALL                             R4 2 1
       25 MOVE                             R6 R4
       26 JUMPIFNOT                        R6 ; [+4]
       27 LOADK                            R8 K6 ["ScrollingFrame"]
       28 NAMECALL                         R6 R4 K8 ["IsA"]
       30 CALL                             R6 2 1
       31 FASTCALL2K                       ASSERT R6 K9 ; [+4]
       33 LOADK                            R7 K9 ["Scroll area not found for widget"]
       34 GETIMPORT                        R5 K4 [assert]
       36 CALL                             R5 2 0
       37 GETTABLEKS                       R6 R4 K10 ["AbsolutePosition"]
       39 GETTABLEKS                       R8 R3 K10 ["AbsolutePosition"]
       41 GETTABLEKS                       R10 R3 K12 ["AbsoluteSize"]
       43 DIVK                             R9 R10 K11 [2]
       44 ADD                              R7 R8 R9
       45 SUB                              R5 R6 R7
       46 GETTABLEKS                       R6 R4 K13 ["CanvasPosition"]
       48 SUB                              R6 R6 R5
       49 SETTABLEKS                       R6 R4 K13 ["CanvasPosition"]
       51 LOADK                            R6 K6 ["ScrollingFrame"]
       52 NAMECALL                         R4 R2 K7 ["FindFirstAncestorWhichIsA"]
       54 CALL                             R4 2 1
       55 MOVE                             R6 R4
       56 JUMPIFNOT                        R6 ; [+4]
       57 LOADK                            R8 K6 ["ScrollingFrame"]
       58 NAMECALL                         R6 R4 K8 ["IsA"]
       60 CALL                             R6 2 1
       61 FASTCALL2K                       ASSERT R6 K9 ; [+4]
       63 LOADK                            R7 K9 ["Scroll area not found for widget"]
       64 GETIMPORT                        R5 K4 [assert]
       66 CALL                             R5 2 0
       67 GETTABLEKS                       R6 R4 K10 ["AbsolutePosition"]
       69 GETTABLEKS                       R8 R2 K10 ["AbsolutePosition"]
       71 GETTABLEKS                       R10 R2 K12 ["AbsoluteSize"]
       73 DIVK                             R9 R10 K11 [2]
       74 ADD                              R7 R8 R9
       75 SUB                              R5 R6 R7
       76 GETTABLEKS                       R6 R4 K13 ["CanvasPosition"]
       78 SUB                              R6 R6 R5
       79 SETTABLEKS                       R6 R4 K13 ["CanvasPosition"]
       81 GETUPVAL                         R5 2
       82 GETTABLEKS                       R4 R5 K14 ["click"]
       84 MOVE                             R5 R2
       85 CALL                             R4 1 0
       86 RETURN                           R0 0

PROTO_90:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["RunCode"]
        3 GETTABLEKS                       R2 R3 K1 ["Copy"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_91:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["RunCode"]
        3 GETTABLEKS                       R2 R3 K1 ["Run"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_92:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["RunCode"]
        3 GETTABLEKS                       R2 R3 K1 ["Stop"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_93:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ImageContent"]
        3 GETTABLEKS                       R2 R3 K1 ["Expand"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_94:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ImageContent"]
        3 GETTABLEKS                       R2 R3 K1 ["Image"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 RETURN                           R1 1

PROTO_95:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MessageActions"]
        3 GETTABLEKS                       R2 R3 K1 ["Retry"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_96:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MessageActions"]
        3 GETTABLEKS                       R2 R3 K1 ["ThumbsUp"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R5 K9 ["GuiButton"]
       49 NAMECALL                         R3 R1 K10 ["IsA"]
       51 CALL                             R3 2 1
       52 FASTCALL2K                       ASSERT R3 K11 ; [+4]
       54 LOADK                            R4 K11 ["Thumbs up button is not a GuiButton"]
       55 GETIMPORT                        R2 K4 [assert]
       57 CALL                             R2 2 0
       58 LOADK                            R4 K12 ["ScrollingFrame"]
       59 NAMECALL                         R2 R1 K13 ["FindFirstAncestorWhichIsA"]
       61 CALL                             R2 2 1
       62 MOVE                             R4 R2
       63 JUMPIFNOT                        R4 ; [+4]
       64 LOADK                            R6 K12 ["ScrollingFrame"]
       65 NAMECALL                         R4 R2 K10 ["IsA"]
       67 CALL                             R4 2 1
       68 FASTCALL2K                       ASSERT R4 K14 ; [+4]
       70 LOADK                            R5 K14 ["Scroll area not found for widget"]
       71 GETIMPORT                        R3 K4 [assert]
       73 CALL                             R3 2 0
       74 GETTABLEKS                       R4 R2 K15 ["AbsolutePosition"]
       76 GETTABLEKS                       R6 R1 K15 ["AbsolutePosition"]
       78 GETTABLEKS                       R8 R1 K17 ["AbsoluteSize"]
       80 DIVK                             R7 R8 K16 [2]
       81 ADD                              R5 R6 R7
       82 SUB                              R3 R4 R5
       83 GETTABLEKS                       R4 R2 K18 ["CanvasPosition"]
       85 SUB                              R4 R4 R3
       86 SETTABLEKS                       R4 R2 K18 ["CanvasPosition"]
       88 GETUPVAL                         R3 3
       89 GETTABLEKS                       R2 R3 K19 ["click"]
       91 MOVE                             R3 R1
       92 CALL                             R2 1 0
       93 RETURN                           R0 0

PROTO_97:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MessageActions"]
        3 GETTABLEKS                       R2 R3 K1 ["ThumbsDown"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R5 K9 ["GuiButton"]
       49 NAMECALL                         R3 R1 K10 ["IsA"]
       51 CALL                             R3 2 1
       52 FASTCALL2K                       ASSERT R3 K11 ; [+4]
       54 LOADK                            R4 K11 ["Thumbs down button is not a GuiButton"]
       55 GETIMPORT                        R2 K4 [assert]
       57 CALL                             R2 2 0
       58 LOADK                            R4 K12 ["ScrollingFrame"]
       59 NAMECALL                         R2 R1 K13 ["FindFirstAncestorWhichIsA"]
       61 CALL                             R2 2 1
       62 MOVE                             R4 R2
       63 JUMPIFNOT                        R4 ; [+4]
       64 LOADK                            R6 K12 ["ScrollingFrame"]
       65 NAMECALL                         R4 R2 K10 ["IsA"]
       67 CALL                             R4 2 1
       68 FASTCALL2K                       ASSERT R4 K14 ; [+4]
       70 LOADK                            R5 K14 ["Scroll area not found for widget"]
       71 GETIMPORT                        R3 K4 [assert]
       73 CALL                             R3 2 0
       74 GETTABLEKS                       R4 R2 K15 ["AbsolutePosition"]
       76 GETTABLEKS                       R6 R1 K15 ["AbsolutePosition"]
       78 GETTABLEKS                       R8 R1 K17 ["AbsoluteSize"]
       80 DIVK                             R7 R8 K16 [2]
       81 ADD                              R5 R6 R7
       82 SUB                              R3 R4 R5
       83 GETTABLEKS                       R4 R2 K18 ["CanvasPosition"]
       85 SUB                              R4 R4 R3
       86 SETTABLEKS                       R4 R2 K18 ["CanvasPosition"]
       88 GETUPVAL                         R3 3
       89 GETTABLEKS                       R2 R3 K19 ["click"]
       91 MOVE                             R3 R1
       92 CALL                             R2 1 0
       93 RETURN                           R0 0

PROTO_98:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MessageActions"]
        3 GETTABLEKS                       R2 R3 K1 ["ThumbsUp"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R5 K9 ["GuiButton"]
       49 NAMECALL                         R3 R1 K10 ["IsA"]
       51 CALL                             R3 2 1
       52 FASTCALL2K                       ASSERT R3 K11 ; [+4]
       54 LOADK                            R4 K11 ["Thumbs up button is not a GuiButton"]
       55 GETIMPORT                        R2 K4 [assert]
       57 CALL                             R2 2 0
       58 LOADK                            R4 K12 ["ImageLabel"]
       59 LOADB                            R5 1
       60 NAMECALL                         R2 R1 K13 ["FindFirstChildWhichIsA"]
       62 CALL                             R2 3 1
       63 FASTCALL2K                       ASSERT R2 K14 ; [+5]
       65 MOVE                             R4 R2
       66 LOADK                            R5 K14 ["Icon child not found in thumbs up button"]
       67 GETIMPORT                        R3 K4 [assert]
       69 CALL                             R3 2 0
       70 GETTABLEKS                       R3 R2 K15 ["Image"]
       72 RETURN                           R3 1

PROTO_99:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["MessageActions"]
        3 GETTABLEKS                       R2 R3 K1 ["ThumbsDown"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R5 K9 ["GuiButton"]
       49 NAMECALL                         R3 R1 K10 ["IsA"]
       51 CALL                             R3 2 1
       52 FASTCALL2K                       ASSERT R3 K11 ; [+4]
       54 LOADK                            R4 K11 ["Thumbs down button is not a GuiButton"]
       55 GETIMPORT                        R2 K4 [assert]
       57 CALL                             R2 2 0
       58 LOADK                            R4 K12 ["ImageLabel"]
       59 LOADB                            R5 1
       60 NAMECALL                         R2 R1 K13 ["FindFirstChildWhichIsA"]
       62 CALL                             R2 3 1
       63 FASTCALL2K                       ASSERT R2 K14 ; [+5]
       65 MOVE                             R4 R2
       66 LOADK                            R5 K14 ["Icon child not found in thumbs down button"]
       67 GETIMPORT                        R3 K4 [assert]
       69 CALL                             R3 2 0
       70 GETTABLEKS                       R3 R2 K15 ["Image"]
       72 RETURN                           R3 1

PROTO_100:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getConversation"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_101:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setConversation"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_102:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_103:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setThreadId"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_104:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getThreadId"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 CALL                             R2 1 0
        9 RETURN                           R1 1

PROTO_105:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+4]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["reset"]
        6 CALL                             R1 0 0
        7 GETUPVAL                         R1 2
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 0
       12 GETIMPORT                        R1 K2 [next]
       14 GETUPVAL                         R3 4
       15 CALL                             R3 0 1
       16 JUMPIFNOT                        R3 ; [+3]
       17 GETTABLEKS                       R2 R0 K3 ["threads"]
       19 JUMP                             ; [+1]
       20 MOVE                             R2 R0
       21 CALL                             R1 1 1
       22 FASTCALL2K                       ASSERT R1 K4 ; [+5]
       24 MOVE                             R3 R1
       25 LOADK                            R4 K4 ["Conversation must have at least one thread"]
       26 GETIMPORT                        R2 K6 [assert]
       28 CALL                             R2 2 0
       29 GETUPVAL                         R3 5
       30 GETTABLEKS                       R2 R3 K7 ["getThreadId"]
       32 CALL                             R2 0 1
       33 GETUPVAL                         R3 2
       34 NEWCLOSURE                       R4 P1
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R1
       37 CALL                             R3 1 0
       38 RETURN                           R0 0

PROTO_106:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Header"]
        3 GETTABLEKS                       R1 R2 K1 ["SettingsButton"]
        5 LOADNIL                          R2
        6 MOVE                             R3 R2
        7 JUMPIF                           R3 ; [+12]
        8 GETUPVAL                         R6 1
        9 JUMPIFNOTEQKNIL                  R6 ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       15 LOADK                            R6 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R4 K4 [assert]
       18 CALL                             R4 2 0
       19 GETUPVAL                         R3 1
       20 MOVE                             R2 R3
       21 FASTCALL2K                       ASSERT R2 K5 ; [+5]
       23 MOVE                             R4 R2
       24 LOADK                            R5 K5 ["Query container not found"]
       25 GETIMPORT                        R3 K4 [assert]
       27 CALL                             R3 2 0
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R2
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R3 R4 K6 ["getByTestId"]
       33 MOVE                             R4 R1
       34 CALL                             R3 1 1
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R1
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 MOVE                             R6 R7
       41 FASTCALL2                        ASSERT R3 R6 ; [+4]
       43 MOVE                             R5 R3
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
       47 MOVE                             R0 R3
       48 GETUPVAL                         R2 3
       49 GETTABLEKS                       R1 R2 K9 ["click"]
       51 MOVE                             R2 R0
       52 CALL                             R1 1 0
       53 RETURN                           R0 0

PROTO_107:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Header"]
        3 GETTABLEKS                       R1 R2 K1 ["SettingsContent"]
        5 GETUPVAL                         R5 1
        6 JUMPIFNOTEQKNIL                  R5 ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       12 LOADK                            R5 K2 ["GUI root not available, ensure render is called"]
       13 GETIMPORT                        R3 K4 [assert]
       15 CALL                             R3 2 0
       16 GETUPVAL                         R2 1
       17 MOVE                             R3 R2
       18 JUMPIF                           R3 ; [+12]
       19 GETUPVAL                         R6 2
       20 JUMPIFNOTEQKNIL                  R6 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       26 LOADK                            R6 K5 ["Container not mounted, ensure render is called"]
       27 GETIMPORT                        R4 K4 [assert]
       29 CALL                             R4 2 0
       30 GETUPVAL                         R3 2
       31 MOVE                             R2 R3
       32 FASTCALL2K                       ASSERT R2 K6 ; [+5]
       34 MOVE                             R4 R2
       35 LOADK                            R5 K6 ["Query container not found"]
       36 GETIMPORT                        R3 K4 [assert]
       38 CALL                             R3 2 0
       39 GETUPVAL                         R4 3
       40 MOVE                             R5 R2
       41 CALL                             R4 1 1
       42 GETTABLEKS                       R3 R4 K7 ["getByTestId"]
       44 MOVE                             R4 R1
       45 CALL                             R3 1 1
       46 LOADK                            R7 K8 ["No result found for testId \"%*\""]
       47 MOVE                             R9 R1
       48 NAMECALL                         R7 R7 K9 ["format"]
       50 CALL                             R7 2 1
       51 MOVE                             R6 R7
       52 FASTCALL2                        ASSERT R3 R6 ; [+4]
       54 MOVE                             R5 R3
       55 GETIMPORT                        R4 K4 [assert]
       57 CALL                             R4 2 0
       58 MOVE                             R0 R3
       59 RETURN                           R0 1

PROTO_108:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Header"]
        3 GETTABLEKS                       R1 R2 K1 ["SettingsButton"]
        5 LOADNIL                          R2
        6 MOVE                             R3 R2
        7 JUMPIF                           R3 ; [+12]
        8 GETUPVAL                         R6 1
        9 JUMPIFNOTEQKNIL                  R6 ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       15 LOADK                            R6 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R4 K4 [assert]
       18 CALL                             R4 2 0
       19 GETUPVAL                         R3 1
       20 MOVE                             R2 R3
       21 FASTCALL2K                       ASSERT R2 K5 ; [+5]
       23 MOVE                             R4 R2
       24 LOADK                            R5 K5 ["Query container not found"]
       25 GETIMPORT                        R3 K4 [assert]
       27 CALL                             R3 2 0
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R2
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R3 R4 K6 ["getByTestId"]
       33 MOVE                             R4 R1
       34 CALL                             R3 1 1
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R1
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 MOVE                             R6 R7
       41 FASTCALL2                        ASSERT R3 R6 ; [+4]
       43 MOVE                             R5 R3
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
       47 MOVE                             R0 R3
       48 GETUPVAL                         R2 3
       49 GETTABLEKS                       R1 R2 K9 ["click"]
       51 MOVE                             R2 R0
       52 CALL                             R1 1 0
       53 GETUPVAL                         R1 2
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R4 R5 K0 ["Header"]
       57 GETTABLEKS                       R3 R4 K10 ["SettingsContent"]
       59 GETUPVAL                         R7 4
       60 JUMPIFNOTEQKNIL                  R7 ; [+2]
       62 LOADB                            R6 0 +1
       63 LOADB                            R6 1
       64 FASTCALL2K                       ASSERT R6 K11 ; [+4]
       66 LOADK                            R7 K11 ["GUI root not available, ensure render is called"]
       67 GETIMPORT                        R5 K4 [assert]
       69 CALL                             R5 2 0
       70 GETUPVAL                         R4 4
       71 MOVE                             R5 R4
       72 JUMPIF                           R5 ; [+12]
       73 GETUPVAL                         R8 1
       74 JUMPIFNOTEQKNIL                  R8 ; [+2]
       76 LOADB                            R7 0 +1
       77 LOADB                            R7 1
       78 FASTCALL2K                       ASSERT R7 K2 ; [+4]
       80 LOADK                            R8 K2 ["Container not mounted, ensure render is called"]
       81 GETIMPORT                        R6 K4 [assert]
       83 CALL                             R6 2 0
       84 GETUPVAL                         R5 1
       85 MOVE                             R4 R5
       86 FASTCALL2K                       ASSERT R4 K5 ; [+5]
       88 MOVE                             R6 R4
       89 LOADK                            R7 K5 ["Query container not found"]
       90 GETIMPORT                        R5 K4 [assert]
       92 CALL                             R5 2 0
       93 GETUPVAL                         R6 2
       94 MOVE                             R7 R4
       95 CALL                             R6 1 1
       96 GETTABLEKS                       R5 R6 K6 ["getByTestId"]
       98 MOVE                             R6 R3
       99 CALL                             R5 1 1
      100 LOADK                            R9 K7 ["No result found for testId \"%*\""]
      101 MOVE                             R11 R3
      102 NAMECALL                         R9 R9 K8 ["format"]
      104 CALL                             R9 2 1
      105 MOVE                             R8 R9
      106 FASTCALL2                        ASSERT R5 R8 ; [+4]
      108 MOVE                             R7 R5
      109 GETIMPORT                        R6 K4 [assert]
      111 CALL                             R6 2 0
      112 MOVE                             R2 R5
      113 CALL                             R1 1 1
      114 GETTABLEKS                       R0 R1 K12 ["findByText"]
      116 LOADK                            R1 K13 ["Clear conversation"]
      117 CALL                             R0 1 1
      118 NAMECALL                         R0 R0 K14 ["await"]
      120 CALL                             R0 1 2
      121 FASTCALL2K                       ASSERT R1 K15 ; [+5]
      123 MOVE                             R3 R1
      124 LOADK                            R4 K15 ["Clear conversation text not found"]
      125 GETIMPORT                        R2 K4 [assert]
      127 CALL                             R2 2 0
      128 GETTABLEKS                       R2 R1 K16 ["Parent"]
      130 MOVE                             R4 R2
      131 JUMPIFNOT                        R4 ; [+4]
      132 LOADK                            R6 K17 ["GuiButton"]
      133 NAMECALL                         R4 R2 K18 ["IsA"]
      135 CALL                             R4 2 1
      136 FASTCALL2K                       ASSERT R4 K19 ; [+4]
      138 LOADK                            R5 K19 ["Clear conversation button not found"]
      139 GETIMPORT                        R3 K4 [assert]
      141 CALL                             R3 2 0
      142 GETUPVAL                         R4 3
      143 GETTABLEKS                       R3 R4 K9 ["click"]
      145 MOVE                             R4 R2
      146 CALL                             R3 1 0
      147 RETURN                           R0 0

PROTO_109:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["wasToolInvoked"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_110:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_111:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["overrideMethod"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_112:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getClientObject"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_113:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getClientObject"]
        3 CALL                             R1 0 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R2 R1 K1 ["getClient"]
        7 CALL                             R2 2 1
        8 FASTCALL2K                       ASSERT R2 K2 ; [+5]
       10 MOVE                             R4 R2
       11 LOADK                            R5 K2 ["Client not found"]
       12 GETIMPORT                        R3 K4 [assert]
       14 CALL                             R3 2 0
       15 NAMECALL                         R3 R2 K5 ["getStatus"]
       17 CALL                             R3 1 1
       18 NAMECALL                         R3 R3 K6 ["get"]
       20 CALL                             R3 1 1
       21 RETURN                           R3 1

PROTO_114:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getClientObject"]
        3 CALL                             R0 0 1
        4 NAMECALL                         R1 R0 K1 ["close"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_115:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getToolAlias"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_116:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["wasRequestHandlerCalled"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_117:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getLastRequestHandlerBody"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 GETTABLE                         R2 R1 R0
        6 JUMPIF                           R2 ; [+1]
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_118:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setInputOverride"]
        3 DUPTABLE                         R1 K3 [{"overrideText", "iconType"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["overrideText"]
        7 GETUPVAL                         R3 2
        8 JUMPIFNOT                        R3 ; [+4]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R2 R3 K2 ["iconType"]
       12 JUMPIF                           R2 ; [+5]
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R3 R4 K4 ["InputIconTypes"]
       16 GETTABLEKS                       R2 R3 K5 ["Error"]
       18 SETTABLEKS                       R2 R1 K2 ["iconType"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_119:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 LOADK                            R3 K0 ["GuiObject"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_120:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R2 1 0
        7 JUMPIFNOT                        R1 ; [+13]
        8 GETTABLEKS                       R2 R1 K0 ["expectedErrorContent"]
       10 JUMPIFNOT                        R2 ; [+10]
       11 GETTABLEKS                       R2 R1 K0 ["expectedErrorContent"]
       13 GETUPVAL                         R3 3
       14 NEWCLOSURE                       R4 P1
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R2
       17 CALL                             R3 1 1
       18 NAMECALL                         R3 R3 K1 ["await"]
       20 CALL                             R3 1 0
       21 RETURN                           R0 0

PROTO_121:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setInputOverride"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_122:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_123:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ProviderCheckbox"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R6 1
        6 JUMPIFNOTEQKNIL                  R6 ; [+2]
        8 LOADB                            R5 0 +1
        9 LOADB                            R5 1
       10 FASTCALL2K                       ASSERT R5 K1 ; [+4]
       12 LOADK                            R6 K1 ["GUI root not available, ensure render is called"]
       13 GETIMPORT                        R4 K3 [assert]
       15 CALL                             R4 2 0
       16 GETUPVAL                         R3 1
       17 MOVE                             R4 R3
       18 JUMPIF                           R4 ; [+12]
       19 GETUPVAL                         R7 2
       20 JUMPIFNOTEQKNIL                  R7 ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 FASTCALL2K                       ASSERT R6 K4 ; [+4]
       26 LOADK                            R7 K4 ["Container not mounted, ensure render is called"]
       27 GETIMPORT                        R5 K3 [assert]
       29 CALL                             R5 2 0
       30 GETUPVAL                         R4 2
       31 MOVE                             R3 R4
       32 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       34 MOVE                             R5 R3
       35 LOADK                            R6 K5 ["Query container not found"]
       36 GETIMPORT                        R4 K3 [assert]
       38 CALL                             R4 2 0
       39 GETUPVAL                         R5 3
       40 MOVE                             R6 R3
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       44 MOVE                             R5 R1
       45 CALL                             R4 1 1
       46 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       47 MOVE                             R10 R1
       48 NAMECALL                         R8 R8 K8 ["format"]
       50 CALL                             R8 2 1
       51 MOVE                             R7 R8
       52 FASTCALL2                        ASSERT R4 R7 ; [+4]
       54 MOVE                             R6 R4
       55 GETIMPORT                        R5 K3 [assert]
       57 CALL                             R5 2 0
       58 MOVE                             R2 R4
       59 LOADK                            R6 K9 ["GuiButton"]
       60 NAMECALL                         R4 R2 K10 ["IsA"]
       62 CALL                             R4 2 1
       63 LOADK                            R6 K11 ["Provider checkbox is not a GuiButton for %* (testId: %*)"]
       64 MOVE                             R8 R0
       65 MOVE                             R9 R1
       66 NAMECALL                         R6 R6 K8 ["format"]
       68 CALL                             R6 3 1
       69 MOVE                             R5 R6
       70 FASTCALL2                        ASSERT R4 R5 ; [+3]
       72 GETIMPORT                        R3 K3 [assert]
       74 CALL                             R3 2 0
       75 RETURN                           R2 1

PROTO_124:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["click"]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_125:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ProviderCheckbox"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R7 1
        6 JUMPIFNOTEQKNIL                  R7 ; [+2]
        8 LOADB                            R6 0 +1
        9 LOADB                            R6 1
       10 FASTCALL2K                       ASSERT R6 K1 ; [+4]
       12 LOADK                            R7 K1 ["GUI root not available, ensure render is called"]
       13 GETIMPORT                        R5 K3 [assert]
       15 CALL                             R5 2 0
       16 GETUPVAL                         R4 1
       17 MOVE                             R5 R4
       18 JUMPIF                           R5 ; [+12]
       19 GETUPVAL                         R8 2
       20 JUMPIFNOTEQKNIL                  R8 ; [+2]
       22 LOADB                            R7 0 +1
       23 LOADB                            R7 1
       24 FASTCALL2K                       ASSERT R7 K4 ; [+4]
       26 LOADK                            R8 K4 ["Container not mounted, ensure render is called"]
       27 GETIMPORT                        R6 K3 [assert]
       29 CALL                             R6 2 0
       30 GETUPVAL                         R5 2
       31 MOVE                             R4 R5
       32 FASTCALL2K                       ASSERT R4 K5 ; [+5]
       34 MOVE                             R6 R4
       35 LOADK                            R7 K5 ["Query container not found"]
       36 GETIMPORT                        R5 K3 [assert]
       38 CALL                             R5 2 0
       39 GETUPVAL                         R6 3
       40 MOVE                             R7 R4
       41 CALL                             R6 1 1
       42 GETTABLEKS                       R5 R6 K6 ["getByTestId"]
       44 MOVE                             R6 R2
       45 CALL                             R5 1 1
       46 LOADK                            R9 K7 ["No result found for testId \"%*\""]
       47 MOVE                             R11 R2
       48 NAMECALL                         R9 R9 K8 ["format"]
       50 CALL                             R9 2 1
       51 MOVE                             R8 R9
       52 FASTCALL2                        ASSERT R5 R8 ; [+4]
       54 MOVE                             R7 R5
       55 GETIMPORT                        R6 K3 [assert]
       57 CALL                             R6 2 0
       58 MOVE                             R3 R5
       59 LOADK                            R7 K9 ["GuiButton"]
       60 NAMECALL                         R5 R3 K10 ["IsA"]
       62 CALL                             R5 2 1
       63 LOADK                            R7 K11 ["Provider checkbox is not a GuiButton for %* (testId: %*)"]
       64 MOVE                             R9 R0
       65 MOVE                             R10 R2
       66 NAMECALL                         R7 R7 K8 ["format"]
       68 CALL                             R7 3 1
       69 MOVE                             R6 R7
       70 FASTCALL2                        ASSERT R5 R6 ; [+3]
       72 GETIMPORT                        R4 K3 [assert]
       74 CALL                             R4 2 0
       75 MOVE                             R1 R3
       76 LOADK                            R4 K12 ["ScrollingFrame"]
       77 NAMECALL                         R2 R1 K13 ["FindFirstAncestorWhichIsA"]
       79 CALL                             R2 2 1
       80 MOVE                             R4 R2
       81 JUMPIFNOT                        R4 ; [+4]
       82 LOADK                            R6 K12 ["ScrollingFrame"]
       83 NAMECALL                         R4 R2 K10 ["IsA"]
       85 CALL                             R4 2 1
       86 FASTCALL2K                       ASSERT R4 K14 ; [+4]
       88 LOADK                            R5 K14 ["Scroll area not found for widget"]
       89 GETIMPORT                        R3 K3 [assert]
       91 CALL                             R3 2 0
       92 GETTABLEKS                       R4 R2 K15 ["AbsolutePosition"]
       94 GETTABLEKS                       R6 R1 K15 ["AbsolutePosition"]
       96 GETTABLEKS                       R8 R1 K17 ["AbsoluteSize"]
       98 DIVK                             R7 R8 K16 [2]
       99 ADD                              R5 R6 R7
      100 SUB                              R3 R4 R5
      101 GETTABLEKS                       R4 R2 K18 ["CanvasPosition"]
      103 SUB                              R4 R4 R3
      104 SETTABLEKS                       R4 R2 K18 ["CanvasPosition"]
      106 GETUPVAL                         R2 4
      107 NEWCLOSURE                       R3 P0
      108 CAPTURE                          VAL R1
      109 CAPTURE                          UPVAL U5
      110 CALL                             R2 1 0
      111 RETURN                           R0 0

PROTO_126:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getSecureSettingsAsync"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["ASSISTANT_PROVIDER_SETTINGS"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R2 R3 K2 ["getCheckboxSettingsKeyForProvider"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 LOADB                            R3 0
       13 JUMPIFEQKNIL                     R2 ; [+6]
       15 GETTABLE                         R4 R1 R2
       16 JUMPIFEQKS                       R4 K3 ["true"] ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 RETURN                           R3 1

PROTO_127:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ModelPicker"]
        3 GETTABLEKS                       R1 R2 K1 ["Container"]
        5 GETUPVAL                         R5 1
        6 JUMPIFNOTEQKNIL                  R5 ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       12 LOADK                            R5 K2 ["GUI root not available, ensure render is called"]
       13 GETIMPORT                        R3 K4 [assert]
       15 CALL                             R3 2 0
       16 GETUPVAL                         R2 1
       17 MOVE                             R3 R2
       18 JUMPIF                           R3 ; [+12]
       19 GETUPVAL                         R6 2
       20 JUMPIFNOTEQKNIL                  R6 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       26 LOADK                            R6 K5 ["Container not mounted, ensure render is called"]
       27 GETIMPORT                        R4 K4 [assert]
       29 CALL                             R4 2 0
       30 GETUPVAL                         R3 2
       31 MOVE                             R2 R3
       32 FASTCALL2K                       ASSERT R2 K6 ; [+5]
       34 MOVE                             R4 R2
       35 LOADK                            R5 K6 ["Query container not found"]
       36 GETIMPORT                        R3 K4 [assert]
       38 CALL                             R3 2 0
       39 GETUPVAL                         R4 3
       40 MOVE                             R5 R2
       41 CALL                             R4 1 1
       42 GETTABLEKS                       R3 R4 K7 ["getByTestId"]
       44 MOVE                             R4 R1
       45 CALL                             R3 1 1
       46 LOADK                            R7 K8 ["No result found for testId \"%*\""]
       47 MOVE                             R9 R1
       48 NAMECALL                         R7 R7 K9 ["format"]
       50 CALL                             R7 2 1
       51 MOVE                             R6 R7
       52 FASTCALL2                        ASSERT R3 R6 ; [+4]
       54 MOVE                             R5 R3
       55 GETIMPORT                        R4 K4 [assert]
       57 CALL                             R4 2 0
       58 MOVE                             R0 R3
       59 RETURN                           R0 1

PROTO_128:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ModelPicker"]
        3 GETTABLEKS                       R1 R2 K1 ["Container"]
        5 GETUPVAL                         R5 1
        6 JUMPIFNOTEQKNIL                  R5 ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       12 LOADK                            R5 K2 ["GUI root not available, ensure render is called"]
       13 GETIMPORT                        R3 K4 [assert]
       15 CALL                             R3 2 0
       16 GETUPVAL                         R2 1
       17 MOVE                             R3 R2
       18 JUMPIF                           R3 ; [+12]
       19 GETUPVAL                         R6 2
       20 JUMPIFNOTEQKNIL                  R6 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       26 LOADK                            R6 K5 ["Container not mounted, ensure render is called"]
       27 GETIMPORT                        R4 K4 [assert]
       29 CALL                             R4 2 0
       30 GETUPVAL                         R3 2
       31 MOVE                             R2 R3
       32 FASTCALL2K                       ASSERT R2 K6 ; [+5]
       34 MOVE                             R4 R2
       35 LOADK                            R5 K6 ["Query container not found"]
       36 GETIMPORT                        R3 K4 [assert]
       38 CALL                             R3 2 0
       39 GETUPVAL                         R4 3
       40 MOVE                             R5 R2
       41 CALL                             R4 1 1
       42 GETTABLEKS                       R3 R4 K7 ["getByTestId"]
       44 MOVE                             R4 R1
       45 CALL                             R3 1 1
       46 LOADK                            R7 K8 ["No result found for testId \"%*\""]
       47 MOVE                             R9 R1
       48 NAMECALL                         R7 R7 K9 ["format"]
       50 CALL                             R7 2 1
       51 MOVE                             R6 R7
       52 FASTCALL2                        ASSERT R3 R6 ; [+4]
       54 MOVE                             R5 R3
       55 GETIMPORT                        R4 K4 [assert]
       57 CALL                             R4 2 0
       58 MOVE                             R0 R3
       59 GETUPVAL                         R4 0
       60 GETTABLEKS                       R3 R4 K0 ["ModelPicker"]
       62 GETTABLEKS                       R2 R3 K10 ["Dropdown"]
       64 MOVE                             R3 R0
       65 MOVE                             R4 R3
       66 JUMPIF                           R4 ; [+12]
       67 GETUPVAL                         R7 2
       68 JUMPIFNOTEQKNIL                  R7 ; [+2]
       70 LOADB                            R6 0 +1
       71 LOADB                            R6 1
       72 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       74 LOADK                            R7 K5 ["Container not mounted, ensure render is called"]
       75 GETIMPORT                        R5 K4 [assert]
       77 CALL                             R5 2 0
       78 GETUPVAL                         R4 2
       79 MOVE                             R3 R4
       80 FASTCALL2K                       ASSERT R3 K6 ; [+5]
       82 MOVE                             R5 R3
       83 LOADK                            R6 K6 ["Query container not found"]
       84 GETIMPORT                        R4 K4 [assert]
       86 CALL                             R4 2 0
       87 GETUPVAL                         R5 3
       88 MOVE                             R6 R3
       89 CALL                             R5 1 1
       90 GETTABLEKS                       R4 R5 K7 ["getByTestId"]
       92 MOVE                             R5 R2
       93 CALL                             R4 1 1
       94 LOADK                            R8 K8 ["No result found for testId \"%*\""]
       95 MOVE                             R10 R2
       96 NAMECALL                         R8 R8 K9 ["format"]
       98 CALL                             R8 2 1
       99 MOVE                             R7 R8
      100 FASTCALL2                        ASSERT R4 R7 ; [+4]
      102 MOVE                             R6 R4
      103 GETIMPORT                        R5 K4 [assert]
      105 CALL                             R5 2 0
      106 MOVE                             R1 R4
      107 NAMECALL                         R2 R1 K11 ["GetDescendants"]
      109 CALL                             R2 1 1
      110 MOVE                             R3 R2
      111 LOADNIL                          R4
      112 LOADNIL                          R5
      113 FORGPREP                         R3
      114 LOADK                            R10 K12 ["TextLabel"]
      115 NAMECALL                         R8 R7 K13 ["IsA"]
      117 CALL                             R8 2 1
      118 JUMPIFNOT                        R8 ; [+24]
      119 GETTABLEKS                       R8 R7 K14 ["Text"]
      121 JUMPIFNOT                        R8 ; [+21]
      122 FASTCALL1                        STRING_LEN R8 ; [+3]
      123 MOVE                             R10 R8
      124 GETIMPORT                        R9 K17 [string.len]
      126 CALL                             R9 1 1
      127 LOADN                            R10 0
      128 JUMPIFNOTLT                      R10 R9 ; [+14]
      130 GETIMPORT                        R9 K19 [string.find]
      132 MOVE                             R10 R8
      133 LOADK                            R11 K20 ["chevron"]
      134 CALL                             R9 2 1
      135 JUMPIF                           R9 ; [+7]
      136 GETIMPORT                        R9 K19 [string.find]
      138 MOVE                             R10 R8
      139 LOADK                            R11 K21 ["icon"]
      140 CALL                             R9 2 1
      141 JUMPIF                           R9 ; [+1]
      142 RETURN                           R8 1
      143 FORGLOOP                         R3 2 ; [-30]
      145 GETUPVAL                         R4 4
      146 GETTABLEKS                       R3 R4 K22 ["DEFAULT_STUDIO_MODEL"]
      148 RETURN                           R3 1

PROTO_129:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["click"]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_130:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["click"]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_131:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ModelPicker"]
        3 GETTABLEKS                       R2 R3 K1 ["Container"]
        5 GETUPVAL                         R6 1
        6 JUMPIFNOTEQKNIL                  R6 ; [+2]
        8 LOADB                            R5 0 +1
        9 LOADB                            R5 1
       10 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       12 LOADK                            R6 K2 ["GUI root not available, ensure render is called"]
       13 GETIMPORT                        R4 K4 [assert]
       15 CALL                             R4 2 0
       16 GETUPVAL                         R3 1
       17 MOVE                             R4 R3
       18 JUMPIF                           R4 ; [+12]
       19 GETUPVAL                         R7 2
       20 JUMPIFNOTEQKNIL                  R7 ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       26 LOADK                            R7 K5 ["Container not mounted, ensure render is called"]
       27 GETIMPORT                        R5 K4 [assert]
       29 CALL                             R5 2 0
       30 GETUPVAL                         R4 2
       31 MOVE                             R3 R4
       32 FASTCALL2K                       ASSERT R3 K6 ; [+5]
       34 MOVE                             R5 R3
       35 LOADK                            R6 K6 ["Query container not found"]
       36 GETIMPORT                        R4 K4 [assert]
       38 CALL                             R4 2 0
       39 GETUPVAL                         R5 3
       40 MOVE                             R6 R3
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R4 R5 K7 ["getByTestId"]
       44 MOVE                             R5 R2
       45 CALL                             R4 1 1
       46 LOADK                            R8 K8 ["No result found for testId \"%*\""]
       47 MOVE                             R10 R2
       48 NAMECALL                         R8 R8 K9 ["format"]
       50 CALL                             R8 2 1
       51 MOVE                             R7 R8
       52 FASTCALL2                        ASSERT R4 R7 ; [+4]
       54 MOVE                             R6 R4
       55 GETIMPORT                        R5 K4 [assert]
       57 CALL                             R5 2 0
       58 MOVE                             R1 R4
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R4 R5 K0 ["ModelPicker"]
       62 GETTABLEKS                       R3 R4 K10 ["Dropdown"]
       64 MOVE                             R4 R1
       65 MOVE                             R5 R4
       66 JUMPIF                           R5 ; [+12]
       67 GETUPVAL                         R8 2
       68 JUMPIFNOTEQKNIL                  R8 ; [+2]
       70 LOADB                            R7 0 +1
       71 LOADB                            R7 1
       72 FASTCALL2K                       ASSERT R7 K5 ; [+4]
       74 LOADK                            R8 K5 ["Container not mounted, ensure render is called"]
       75 GETIMPORT                        R6 K4 [assert]
       77 CALL                             R6 2 0
       78 GETUPVAL                         R5 2
       79 MOVE                             R4 R5
       80 FASTCALL2K                       ASSERT R4 K6 ; [+5]
       82 MOVE                             R6 R4
       83 LOADK                            R7 K6 ["Query container not found"]
       84 GETIMPORT                        R5 K4 [assert]
       86 CALL                             R5 2 0
       87 GETUPVAL                         R6 3
       88 MOVE                             R7 R4
       89 CALL                             R6 1 1
       90 GETTABLEKS                       R5 R6 K7 ["getByTestId"]
       92 MOVE                             R6 R3
       93 CALL                             R5 1 1
       94 LOADK                            R9 K8 ["No result found for testId \"%*\""]
       95 MOVE                             R11 R3
       96 NAMECALL                         R9 R9 K9 ["format"]
       98 CALL                             R9 2 1
       99 MOVE                             R8 R9
      100 FASTCALL2                        ASSERT R5 R8 ; [+4]
      102 MOVE                             R7 R5
      103 GETIMPORT                        R6 K4 [assert]
      105 CALL                             R6 2 0
      106 MOVE                             R2 R5
      107 LOADNIL                          R3
      108 NAMECALL                         R4 R2 K11 ["GetDescendants"]
      110 CALL                             R4 1 3
      111 FORGPREP                         R4
      112 LOADK                            R11 K12 ["ImageButton"]
      113 NAMECALL                         R9 R8 K13 ["IsA"]
      115 CALL                             R9 2 1
      116 JUMPIF                           R9 ; [+5]
      117 LOADK                            R11 K14 ["TextButton"]
      118 NAMECALL                         R9 R8 K13 ["IsA"]
      120 CALL                             R9 2 1
      121 JUMPIFNOT                        R9 ; [+2]
      122 MOVE                             R3 R8
      123 JUMP                             ; [+2]
      124 FORGLOOP                         R4 2 ; [-13]
      126 FASTCALL2K                       ASSERT R3 K15 ; [+5]
      128 MOVE                             R5 R3
      129 LOADK                            R6 K15 ["No clickable button found in dropdown"]
      130 GETIMPORT                        R4 K4 [assert]
      132 CALL                             R4 2 0
      133 MOVE                             R4 R3
      134 LOADK                            R7 K16 ["ScrollingFrame"]
      135 NAMECALL                         R5 R4 K17 ["FindFirstAncestorWhichIsA"]
      137 CALL                             R5 2 1
      138 MOVE                             R7 R5
      139 JUMPIFNOT                        R7 ; [+4]
      140 LOADK                            R9 K16 ["ScrollingFrame"]
      141 NAMECALL                         R7 R5 K13 ["IsA"]
      143 CALL                             R7 2 1
      144 FASTCALL2K                       ASSERT R7 K18 ; [+4]
      146 LOADK                            R8 K18 ["Scroll area not found for widget"]
      147 GETIMPORT                        R6 K4 [assert]
      149 CALL                             R6 2 0
      150 GETTABLEKS                       R7 R5 K19 ["AbsolutePosition"]
      152 GETTABLEKS                       R9 R4 K19 ["AbsolutePosition"]
      154 GETTABLEKS                       R11 R4 K21 ["AbsoluteSize"]
      156 DIVK                             R10 R11 K20 [2]
      157 ADD                              R8 R9 R10
      158 SUB                              R6 R7 R8
      159 GETTABLEKS                       R7 R5 K22 ["CanvasPosition"]
      161 SUB                              R7 R7 R6
      162 SETTABLEKS                       R7 R5 K22 ["CanvasPosition"]
      164 GETUPVAL                         R4 4
      165 NEWCLOSURE                       R5 P0
      166 CAPTURE                          REF R3
      167 CAPTURE                          UPVAL U5
      168 CALL                             R4 1 0
      169 GETUPVAL                         R5 3
      170 GETUPVAL                         R9 1
      171 JUMPIFNOTEQKNIL                  R9 ; [+2]
      173 LOADB                            R8 0 +1
      174 LOADB                            R8 1
      175 FASTCALL2K                       ASSERT R8 K2 ; [+4]
      177 LOADK                            R9 K2 ["GUI root not available, ensure render is called"]
      178 GETIMPORT                        R7 K4 [assert]
      180 CALL                             R7 2 0
      181 GETUPVAL                         R6 1
      182 CALL                             R5 1 1
      183 GETTABLEKS                       R4 R5 K23 ["queryByText"]
      185 MOVE                             R5 R0
      186 DUPTABLE                         R6 K25 [{"exact"}]
      187 LOADB                            R7 1
      188 SETTABLEKS                       R7 R6 K24 ["exact"]
      190 CALL                             R4 2 1
      191 LOADK                            R8 K26 ["Model option not found: %*"]
      192 MOVE                             R10 R0
      193 NAMECALL                         R8 R8 K9 ["format"]
      195 CALL                             R8 2 1
      196 MOVE                             R7 R8
      197 FASTCALL2                        ASSERT R4 R7 ; [+4]
      199 MOVE                             R6 R4
      200 GETIMPORT                        R5 K4 [assert]
      202 CALL                             R5 2 0
      203 GETUPVAL                         R5 4
      204 NEWCLOSURE                       R6 P1
      205 CAPTURE                          VAL R4
      206 CAPTURE                          UPVAL U5
      207 CALL                             R5 1 0
      208 CLOSEUPVALS                      R3
      209 RETURN                           R0 0

PROTO_132:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["InputArea"]
        3 GETTABLEKS                       R2 R3 K1 ["Footer"]
        5 GETTABLEKS                       R1 R2 K2 ["Container"]
        7 LOADNIL                          R2
        8 MOVE                             R3 R2
        9 JUMPIF                           R3 ; [+12]
       10 GETUPVAL                         R6 1
       11 JUMPIFNOTEQKNIL                  R6 ; [+2]
       13 LOADB                            R5 0 +1
       14 LOADB                            R5 1
       15 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       17 LOADK                            R6 K3 ["Container not mounted, ensure render is called"]
       18 GETIMPORT                        R4 K5 [assert]
       20 CALL                             R4 2 0
       21 GETUPVAL                         R3 1
       22 MOVE                             R2 R3
       23 FASTCALL2K                       ASSERT R2 K6 ; [+5]
       25 MOVE                             R4 R2
       26 LOADK                            R5 K6 ["Query container not found"]
       27 GETIMPORT                        R3 K5 [assert]
       29 CALL                             R3 2 0
       30 GETUPVAL                         R4 2
       31 MOVE                             R5 R2
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R3 R4 K7 ["getByTestId"]
       35 MOVE                             R4 R1
       36 CALL                             R3 1 1
       37 LOADK                            R7 K8 ["No result found for testId \"%*\""]
       38 MOVE                             R9 R1
       39 NAMECALL                         R7 R7 K9 ["format"]
       41 CALL                             R7 2 1
       42 MOVE                             R6 R7
       43 FASTCALL2                        ASSERT R3 R6 ; [+4]
       45 MOVE                             R5 R3
       46 GETIMPORT                        R4 K5 [assert]
       48 CALL                             R4 2 0
       49 MOVE                             R0 R3
       50 RETURN                           R0 1

PROTO_133:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["InputArea"]
        3 GETTABLEKS                       R3 R4 K1 ["Footer"]
        5 GETTABLEKS                       R2 R3 K2 ["Container"]
        7 LOADNIL                          R3
        8 MOVE                             R4 R3
        9 JUMPIF                           R4 ; [+12]
       10 GETUPVAL                         R7 1
       11 JUMPIFNOTEQKNIL                  R7 ; [+2]
       13 LOADB                            R6 0 +1
       14 LOADB                            R6 1
       15 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       17 LOADK                            R7 K3 ["Container not mounted, ensure render is called"]
       18 GETIMPORT                        R5 K5 [assert]
       20 CALL                             R5 2 0
       21 GETUPVAL                         R4 1
       22 MOVE                             R3 R4
       23 FASTCALL2K                       ASSERT R3 K6 ; [+5]
       25 MOVE                             R5 R3
       26 LOADK                            R6 K6 ["Query container not found"]
       27 GETIMPORT                        R4 K5 [assert]
       29 CALL                             R4 2 0
       30 GETUPVAL                         R5 2
       31 MOVE                             R6 R3
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R4 R5 K7 ["getByTestId"]
       35 MOVE                             R5 R2
       36 CALL                             R4 1 1
       37 LOADK                            R8 K8 ["No result found for testId \"%*\""]
       38 MOVE                             R10 R2
       39 NAMECALL                         R8 R8 K9 ["format"]
       41 CALL                             R8 2 1
       42 MOVE                             R7 R8
       43 FASTCALL2                        ASSERT R4 R7 ; [+4]
       45 MOVE                             R6 R4
       46 GETIMPORT                        R5 K5 [assert]
       48 CALL                             R5 2 0
       49 MOVE                             R1 R4
       50 GETUPVAL                         R4 2
       51 MOVE                             R5 R1
       52 CALL                             R4 1 1
       53 GETTABLEKS                       R3 R4 K10 ["queryByText"]
       55 MOVE                             R4 R0
       56 CALL                             R3 1 1
       57 JUMPIFNOTEQKNIL                  R3 ; [+2]
       59 LOADB                            R2 0 +1
       60 LOADB                            R2 1
       61 RETURN                           R2 1

PROTO_134:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["InputArea"]
        3 GETTABLEKS                       R2 R3 K1 ["Footer"]
        5 GETTABLEKS                       R1 R2 K2 ["Container"]
        7 LOADNIL                          R2
        8 MOVE                             R3 R2
        9 JUMPIF                           R3 ; [+12]
       10 GETUPVAL                         R6 1
       11 JUMPIFNOTEQKNIL                  R6 ; [+2]
       13 LOADB                            R5 0 +1
       14 LOADB                            R5 1
       15 FASTCALL2K                       ASSERT R5 K3 ; [+4]
       17 LOADK                            R6 K3 ["Container not mounted, ensure render is called"]
       18 GETIMPORT                        R4 K5 [assert]
       20 CALL                             R4 2 0
       21 GETUPVAL                         R3 1
       22 MOVE                             R2 R3
       23 FASTCALL2K                       ASSERT R2 K6 ; [+5]
       25 MOVE                             R4 R2
       26 LOADK                            R5 K6 ["Query container not found"]
       27 GETIMPORT                        R3 K5 [assert]
       29 CALL                             R3 2 0
       30 GETUPVAL                         R4 2
       31 MOVE                             R5 R2
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R3 R4 K7 ["getByTestId"]
       35 MOVE                             R4 R1
       36 CALL                             R3 1 1
       37 LOADK                            R7 K8 ["No result found for testId \"%*\""]
       38 MOVE                             R9 R1
       39 NAMECALL                         R7 R7 K9 ["format"]
       41 CALL                             R7 2 1
       42 MOVE                             R6 R7
       43 FASTCALL2                        ASSERT R3 R6 ; [+4]
       45 MOVE                             R5 R3
       46 GETIMPORT                        R4 K5 [assert]
       48 CALL                             R4 2 0
       49 MOVE                             R0 R3
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R4 R5 K0 ["InputArea"]
       53 GETTABLEKS                       R3 R4 K1 ["Footer"]
       55 GETTABLEKS                       R2 R3 K10 ["Icon"]
       57 MOVE                             R3 R0
       58 MOVE                             R4 R3
       59 JUMPIF                           R4 ; [+12]
       60 GETUPVAL                         R7 1
       61 JUMPIFNOTEQKNIL                  R7 ; [+2]
       63 LOADB                            R6 0 +1
       64 LOADB                            R6 1
       65 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       67 LOADK                            R7 K3 ["Container not mounted, ensure render is called"]
       68 GETIMPORT                        R5 K5 [assert]
       70 CALL                             R5 2 0
       71 GETUPVAL                         R4 1
       72 MOVE                             R3 R4
       73 FASTCALL2K                       ASSERT R3 K6 ; [+5]
       75 MOVE                             R5 R3
       76 LOADK                            R6 K6 ["Query container not found"]
       77 GETIMPORT                        R4 K5 [assert]
       79 CALL                             R4 2 0
       80 GETUPVAL                         R5 2
       81 MOVE                             R6 R3
       82 CALL                             R5 1 1
       83 GETTABLEKS                       R4 R5 K11 ["queryByTestId"]
       85 MOVE                             R5 R2
       86 CALL                             R4 1 1
       87 MOVE                             R1 R4
       88 JUMPIFNOTEQKNIL                  R1 ; [+2]
       90 LOADB                            R2 0 +1
       91 LOADB                            R2 1
       92 RETURN                           R2 1

PROTO_135:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 GETIMPORT                        R1 K2 [game]
        5 LOADK                            R3 K3 ["data-testid=%*"]
        6 GETUPVAL                         R7 1
        7 GETTABLEKS                       R6 R7 K4 ["ToolMenuView"]
        9 GETTABLEKS                       R5 R6 K5 ["Container"]
       11 NAMECALL                         R3 R3 K6 ["format"]
       13 CALL                             R3 2 1
       14 MOVE                             R2 R3
       15 CALL                             R0 2 1
       16 MOVE                             R2 R0
       17 JUMPIFNOT                        R2 ; [+4]
       18 LOADK                            R4 K7 ["GuiObject"]
       19 NAMECALL                         R2 R0 K8 ["IsA"]
       21 CALL                             R2 2 1
       22 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       24 LOADK                            R3 K9 ["ToolMenuView not found"]
       25 GETIMPORT                        R1 K11 [assert]
       27 CALL                             R1 2 0
       28 RETURN                           R0 1

PROTO_136:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ServerManagement"]
        3 GETTABLEKS                       R1 R2 K1 ["Button"]
        5 LOADNIL                          R2
        6 MOVE                             R3 R2
        7 JUMPIF                           R3 ; [+12]
        8 GETUPVAL                         R6 1
        9 JUMPIFNOTEQKNIL                  R6 ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       15 LOADK                            R6 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R4 K4 [assert]
       18 CALL                             R4 2 0
       19 GETUPVAL                         R3 1
       20 MOVE                             R2 R3
       21 FASTCALL2K                       ASSERT R2 K5 ; [+5]
       23 MOVE                             R4 R2
       24 LOADK                            R5 K5 ["Query container not found"]
       25 GETIMPORT                        R3 K4 [assert]
       27 CALL                             R3 2 0
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R2
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R3 R4 K6 ["getByTestId"]
       33 MOVE                             R4 R1
       34 CALL                             R3 1 1
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R1
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 MOVE                             R6 R7
       41 FASTCALL2                        ASSERT R3 R6 ; [+4]
       43 MOVE                             R5 R3
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
       47 MOVE                             R0 R3
       48 GETUPVAL                         R2 3
       49 GETTABLEKS                       R1 R2 K9 ["click"]
       51 MOVE                             R2 R0
       52 CALL                             R1 1 0
       53 RETURN                           R0 0

PROTO_137:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 GETUPVAL                         R4 1
        4 JUMPIFNOTEQKNIL                  R4 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       10 LOADK                            R4 K1 ["GUI root not available, ensure render is called"]
       11 GETIMPORT                        R2 K3 [assert]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R1 1
       15 LOADK                            R3 K4 ["data-testid=%*"]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R6 R7 K5 ["IntegrationMenu"]
       19 GETTABLEKS                       R5 R6 K6 ["AddIntegrationDialog"]
       21 NAMECALL                         R3 R3 K7 ["format"]
       23 CALL                             R3 2 1
       24 MOVE                             R2 R3
       25 CALL                             R0 2 1
       26 MOVE                             R2 R0
       27 JUMPIFNOT                        R2 ; [+4]
       28 LOADK                            R4 K8 ["GuiObject"]
       29 NAMECALL                         R2 R0 K9 ["IsA"]
       31 CALL                             R2 2 1
       32 FASTCALL2K                       ASSERT R2 K10 ; [+4]
       34 LOADK                            R3 K10 ["Add integration dialog not found"]
       35 GETIMPORT                        R1 K3 [assert]
       37 CALL                             R1 2 0
       38 RETURN                           R0 1

PROTO_138:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 GETUPVAL                         R4 1
        4 JUMPIFNOTEQKNIL                  R4 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       10 LOADK                            R4 K1 ["GUI root not available, ensure render is called"]
       11 GETIMPORT                        R2 K3 [assert]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R1 1
       15 LOADK                            R3 K4 ["data-testid=%*"]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R6 R7 K5 ["IntegrationItem"]
       19 GETTABLEKS                       R5 R6 K6 ["Dialog"]
       21 NAMECALL                         R3 R3 K7 ["format"]
       23 CALL                             R3 2 1
       24 MOVE                             R2 R3
       25 CALL                             R0 2 1
       26 MOVE                             R2 R0
       27 JUMPIFNOT                        R2 ; [+4]
       28 LOADK                            R4 K8 ["GuiObject"]
       29 NAMECALL                         R2 R0 K9 ["IsA"]
       31 CALL                             R2 2 1
       32 FASTCALL2K                       ASSERT R2 K10 ; [+4]
       34 LOADK                            R3 K10 ["Integration item dialog not found"]
       35 GETIMPORT                        R1 K3 [assert]
       37 CALL                             R1 2 0
       38 RETURN                           R0 1

PROTO_139:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 GETUPVAL                         R4 1
        4 JUMPIFNOTEQKNIL                  R4 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       10 LOADK                            R4 K1 ["GUI root not available, ensure render is called"]
       11 GETIMPORT                        R2 K3 [assert]
       13 CALL                             R2 2 0
       14 GETUPVAL                         R1 1
       15 LOADK                            R3 K4 ["data-testid=%*"]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R6 R7 K5 ["IntegrationMenu"]
       19 GETTABLEKS                       R5 R6 K6 ["EmptyState"]
       21 NAMECALL                         R3 R3 K7 ["format"]
       23 CALL                             R3 2 1
       24 MOVE                             R2 R3
       25 CALL                             R0 2 1
       26 MOVE                             R2 R0
       27 JUMPIFNOT                        R2 ; [+4]
       28 LOADK                            R4 K8 ["GuiObject"]
       29 NAMECALL                         R2 R0 K9 ["IsA"]
       31 CALL                             R2 2 1
       32 FASTCALL2K                       ASSERT R2 K10 ; [+4]
       34 LOADK                            R3 K10 ["Integration menu empty state not found"]
       35 GETIMPORT                        R1 K3 [assert]
       37 CALL                             R1 2 0
       38 RETURN                           R0 1

PROTO_140:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["APIKey"]
        3 GETTABLEKS                       R1 R2 K1 ["EditButton"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R6 1
        8 JUMPIFNOTEQKNIL                  R6 ; [+2]
       10 LOADB                            R5 0 +1
       11 LOADB                            R5 1
       12 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       14 LOADK                            R6 K2 ["GUI root not available, ensure render is called"]
       15 GETIMPORT                        R4 K4 [assert]
       17 CALL                             R4 2 0
       18 GETUPVAL                         R3 1
       19 MOVE                             R4 R3
       20 JUMPIF                           R4 ; [+12]
       21 GETUPVAL                         R7 2
       22 JUMPIFNOTEQKNIL                  R7 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       28 LOADK                            R7 K5 ["Container not mounted, ensure render is called"]
       29 GETIMPORT                        R5 K4 [assert]
       31 CALL                             R5 2 0
       32 GETUPVAL                         R4 2
       33 MOVE                             R3 R4
       34 FASTCALL2K                       ASSERT R3 K6 ; [+5]
       36 MOVE                             R5 R3
       37 LOADK                            R6 K6 ["Query container not found"]
       38 GETIMPORT                        R4 K4 [assert]
       40 CALL                             R4 2 0
       41 GETUPVAL                         R5 3
       42 MOVE                             R6 R3
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R4 R5 K7 ["getByTestId"]
       46 MOVE                             R5 R1
       47 CALL                             R4 1 1
       48 LOADK                            R8 K8 ["No result found for testId \"%*\""]
       49 MOVE                             R10 R1
       50 NAMECALL                         R8 R8 K9 ["format"]
       52 CALL                             R8 2 1
       53 MOVE                             R7 R8
       54 FASTCALL2                        ASSERT R4 R7 ; [+4]
       56 MOVE                             R6 R4
       57 GETIMPORT                        R5 K4 [assert]
       59 CALL                             R5 2 0
       60 MOVE                             R2 R4
       61 LOADK                            R5 K10 ["ScrollingFrame"]
       62 NAMECALL                         R3 R2 K11 ["FindFirstAncestorWhichIsA"]
       64 CALL                             R3 2 1
       65 MOVE                             R5 R3
       66 JUMPIFNOT                        R5 ; [+4]
       67 LOADK                            R7 K10 ["ScrollingFrame"]
       68 NAMECALL                         R5 R3 K12 ["IsA"]
       70 CALL                             R5 2 1
       71 FASTCALL2K                       ASSERT R5 K13 ; [+4]
       73 LOADK                            R6 K13 ["Scroll area not found for widget"]
       74 GETIMPORT                        R4 K4 [assert]
       76 CALL                             R4 2 0
       77 GETTABLEKS                       R5 R3 K14 ["AbsolutePosition"]
       79 GETTABLEKS                       R7 R2 K14 ["AbsolutePosition"]
       81 GETTABLEKS                       R9 R2 K16 ["AbsoluteSize"]
       83 DIVK                             R8 R9 K15 [2]
       84 ADD                              R6 R7 R8
       85 SUB                              R4 R5 R6
       86 GETTABLEKS                       R5 R3 K17 ["CanvasPosition"]
       88 SUB                              R5 R5 R4
       89 SETTABLEKS                       R5 R3 K17 ["CanvasPosition"]
       91 GETUPVAL                         R4 4
       92 GETTABLEKS                       R3 R4 K18 ["click"]
       94 MOVE                             R4 R2
       95 CALL                             R3 1 0
       96 RETURN                           R0 0

PROTO_141:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["APIKey"]
        3 GETTABLEKS                       R1 R2 K1 ["SaveButton"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R6 1
        8 JUMPIFNOTEQKNIL                  R6 ; [+2]
       10 LOADB                            R5 0 +1
       11 LOADB                            R5 1
       12 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       14 LOADK                            R6 K2 ["GUI root not available, ensure render is called"]
       15 GETIMPORT                        R4 K4 [assert]
       17 CALL                             R4 2 0
       18 GETUPVAL                         R3 1
       19 MOVE                             R4 R3
       20 JUMPIF                           R4 ; [+12]
       21 GETUPVAL                         R7 2
       22 JUMPIFNOTEQKNIL                  R7 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       28 LOADK                            R7 K5 ["Container not mounted, ensure render is called"]
       29 GETIMPORT                        R5 K4 [assert]
       31 CALL                             R5 2 0
       32 GETUPVAL                         R4 2
       33 MOVE                             R3 R4
       34 FASTCALL2K                       ASSERT R3 K6 ; [+5]
       36 MOVE                             R5 R3
       37 LOADK                            R6 K6 ["Query container not found"]
       38 GETIMPORT                        R4 K4 [assert]
       40 CALL                             R4 2 0
       41 GETUPVAL                         R5 3
       42 MOVE                             R6 R3
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R4 R5 K7 ["getByTestId"]
       46 MOVE                             R5 R1
       47 CALL                             R4 1 1
       48 LOADK                            R8 K8 ["No result found for testId \"%*\""]
       49 MOVE                             R10 R1
       50 NAMECALL                         R8 R8 K9 ["format"]
       52 CALL                             R8 2 1
       53 MOVE                             R7 R8
       54 FASTCALL2                        ASSERT R4 R7 ; [+4]
       56 MOVE                             R6 R4
       57 GETIMPORT                        R5 K4 [assert]
       59 CALL                             R5 2 0
       60 MOVE                             R2 R4
       61 LOADK                            R5 K10 ["ScrollingFrame"]
       62 NAMECALL                         R3 R2 K11 ["FindFirstAncestorWhichIsA"]
       64 CALL                             R3 2 1
       65 MOVE                             R5 R3
       66 JUMPIFNOT                        R5 ; [+4]
       67 LOADK                            R7 K10 ["ScrollingFrame"]
       68 NAMECALL                         R5 R3 K12 ["IsA"]
       70 CALL                             R5 2 1
       71 FASTCALL2K                       ASSERT R5 K13 ; [+4]
       73 LOADK                            R6 K13 ["Scroll area not found for widget"]
       74 GETIMPORT                        R4 K4 [assert]
       76 CALL                             R4 2 0
       77 GETTABLEKS                       R5 R3 K14 ["AbsolutePosition"]
       79 GETTABLEKS                       R7 R2 K14 ["AbsolutePosition"]
       81 GETTABLEKS                       R9 R2 K16 ["AbsoluteSize"]
       83 DIVK                             R8 R9 K15 [2]
       84 ADD                              R6 R7 R8
       85 SUB                              R4 R5 R6
       86 GETTABLEKS                       R5 R3 K17 ["CanvasPosition"]
       88 SUB                              R5 R5 R4
       89 SETTABLEKS                       R5 R3 K17 ["CanvasPosition"]
       91 GETUPVAL                         R4 4
       92 GETTABLEKS                       R3 R4 K18 ["click"]
       94 MOVE                             R4 R2
       95 CALL                             R3 1 0
       96 RETURN                           R0 0

PROTO_142:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["APIKey"]
        3 GETTABLEKS                       R1 R2 K1 ["CancelButton"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R6 1
        8 JUMPIFNOTEQKNIL                  R6 ; [+2]
       10 LOADB                            R5 0 +1
       11 LOADB                            R5 1
       12 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       14 LOADK                            R6 K2 ["GUI root not available, ensure render is called"]
       15 GETIMPORT                        R4 K4 [assert]
       17 CALL                             R4 2 0
       18 GETUPVAL                         R3 1
       19 MOVE                             R4 R3
       20 JUMPIF                           R4 ; [+12]
       21 GETUPVAL                         R7 2
       22 JUMPIFNOTEQKNIL                  R7 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       28 LOADK                            R7 K5 ["Container not mounted, ensure render is called"]
       29 GETIMPORT                        R5 K4 [assert]
       31 CALL                             R5 2 0
       32 GETUPVAL                         R4 2
       33 MOVE                             R3 R4
       34 FASTCALL2K                       ASSERT R3 K6 ; [+5]
       36 MOVE                             R5 R3
       37 LOADK                            R6 K6 ["Query container not found"]
       38 GETIMPORT                        R4 K4 [assert]
       40 CALL                             R4 2 0
       41 GETUPVAL                         R5 3
       42 MOVE                             R6 R3
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R4 R5 K7 ["getByTestId"]
       46 MOVE                             R5 R1
       47 CALL                             R4 1 1
       48 LOADK                            R8 K8 ["No result found for testId \"%*\""]
       49 MOVE                             R10 R1
       50 NAMECALL                         R8 R8 K9 ["format"]
       52 CALL                             R8 2 1
       53 MOVE                             R7 R8
       54 FASTCALL2                        ASSERT R4 R7 ; [+4]
       56 MOVE                             R6 R4
       57 GETIMPORT                        R5 K4 [assert]
       59 CALL                             R5 2 0
       60 MOVE                             R2 R4
       61 LOADK                            R5 K10 ["ScrollingFrame"]
       62 NAMECALL                         R3 R2 K11 ["FindFirstAncestorWhichIsA"]
       64 CALL                             R3 2 1
       65 MOVE                             R5 R3
       66 JUMPIFNOT                        R5 ; [+4]
       67 LOADK                            R7 K10 ["ScrollingFrame"]
       68 NAMECALL                         R5 R3 K12 ["IsA"]
       70 CALL                             R5 2 1
       71 FASTCALL2K                       ASSERT R5 K13 ; [+4]
       73 LOADK                            R6 K13 ["Scroll area not found for widget"]
       74 GETIMPORT                        R4 K4 [assert]
       76 CALL                             R4 2 0
       77 GETTABLEKS                       R5 R3 K14 ["AbsolutePosition"]
       79 GETTABLEKS                       R7 R2 K14 ["AbsolutePosition"]
       81 GETTABLEKS                       R9 R2 K16 ["AbsoluteSize"]
       83 DIVK                             R8 R9 K15 [2]
       84 ADD                              R6 R7 R8
       85 SUB                              R4 R5 R6
       86 GETTABLEKS                       R5 R3 K17 ["CanvasPosition"]
       88 SUB                              R5 R5 R4
       89 SETTABLEKS                       R5 R3 K17 ["CanvasPosition"]
       91 GETUPVAL                         R4 4
       92 GETTABLEKS                       R3 R4 K18 ["click"]
       94 MOVE                             R4 R2
       95 CALL                             R3 1 0
       96 RETURN                           R0 0

PROTO_143:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["APIKey"]
        3 GETTABLEKS                       R1 R2 K1 ["Input"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R6 1
        8 JUMPIFNOTEQKNIL                  R6 ; [+2]
       10 LOADB                            R5 0 +1
       11 LOADB                            R5 1
       12 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       14 LOADK                            R6 K2 ["GUI root not available, ensure render is called"]
       15 GETIMPORT                        R4 K4 [assert]
       17 CALL                             R4 2 0
       18 GETUPVAL                         R3 1
       19 MOVE                             R4 R3
       20 JUMPIF                           R4 ; [+12]
       21 GETUPVAL                         R7 2
       22 JUMPIFNOTEQKNIL                  R7 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       28 LOADK                            R7 K5 ["Container not mounted, ensure render is called"]
       29 GETIMPORT                        R5 K4 [assert]
       31 CALL                             R5 2 0
       32 GETUPVAL                         R4 2
       33 MOVE                             R3 R4
       34 FASTCALL2K                       ASSERT R3 K6 ; [+5]
       36 MOVE                             R5 R3
       37 LOADK                            R6 K6 ["Query container not found"]
       38 GETIMPORT                        R4 K4 [assert]
       40 CALL                             R4 2 0
       41 GETUPVAL                         R5 3
       42 MOVE                             R6 R3
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R4 R5 K7 ["getByTestId"]
       46 MOVE                             R5 R1
       47 CALL                             R4 1 1
       48 LOADK                            R8 K8 ["No result found for testId \"%*\""]
       49 MOVE                             R10 R1
       50 NAMECALL                         R8 R8 K9 ["format"]
       52 CALL                             R8 2 1
       53 MOVE                             R7 R8
       54 FASTCALL2                        ASSERT R4 R7 ; [+4]
       56 MOVE                             R6 R4
       57 GETIMPORT                        R5 K4 [assert]
       59 CALL                             R5 2 0
       60 MOVE                             R2 R4
       61 NAMECALL                         R3 R2 K10 ["GetDescendants"]
       63 CALL                             R3 1 3
       64 FORGPREP                         R3
       65 LOADK                            R10 K11 ["TextBox"]
       66 NAMECALL                         R8 R7 K12 ["IsA"]
       68 CALL                             R8 2 1
       69 JUMPIFNOT                        R8 ; [+3]
       70 GETTABLEKS                       R8 R7 K13 ["Text"]
       72 RETURN                           R8 1
       73 FORGLOOP                         R3 2 ; [-9]
       75 GETIMPORT                        R3 K15 [error]
       77 LOADK                            R5 K16 ["No TextBox found in API key input for %*"]
       78 MOVE                             R7 R0
       79 NAMECALL                         R5 R5 K9 ["format"]
       81 CALL                             R5 2 1
       82 MOVE                             R4 R5
       83 CALL                             R3 1 0
       84 RETURN                           R0 0

PROTO_144:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["change"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"target"}]
        5 DUPTABLE                         R3 K4 [{"Text"}]
        6 GETUPVAL                         R4 2
        7 SETTABLEKS                       R4 R3 K3 ["Text"]
        9 SETTABLEKS                       R3 R2 K1 ["target"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_145:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["APIKey"]
        3 GETTABLEKS                       R2 R3 K1 ["Input"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R7 1
        8 JUMPIFNOTEQKNIL                  R7 ; [+2]
       10 LOADB                            R6 0 +1
       11 LOADB                            R6 1
       12 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       14 LOADK                            R7 K2 ["GUI root not available, ensure render is called"]
       15 GETIMPORT                        R5 K4 [assert]
       17 CALL                             R5 2 0
       18 GETUPVAL                         R4 1
       19 MOVE                             R5 R4
       20 JUMPIF                           R5 ; [+12]
       21 GETUPVAL                         R8 2
       22 JUMPIFNOTEQKNIL                  R8 ; [+2]
       24 LOADB                            R7 0 +1
       25 LOADB                            R7 1
       26 FASTCALL2K                       ASSERT R7 K5 ; [+4]
       28 LOADK                            R8 K5 ["Container not mounted, ensure render is called"]
       29 GETIMPORT                        R6 K4 [assert]
       31 CALL                             R6 2 0
       32 GETUPVAL                         R5 2
       33 MOVE                             R4 R5
       34 FASTCALL2K                       ASSERT R4 K6 ; [+5]
       36 MOVE                             R6 R4
       37 LOADK                            R7 K6 ["Query container not found"]
       38 GETIMPORT                        R5 K4 [assert]
       40 CALL                             R5 2 0
       41 GETUPVAL                         R6 3
       42 MOVE                             R7 R4
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R5 R6 K7 ["getByTestId"]
       46 MOVE                             R6 R2
       47 CALL                             R5 1 1
       48 LOADK                            R9 K8 ["No result found for testId \"%*\""]
       49 MOVE                             R11 R2
       50 NAMECALL                         R9 R9 K9 ["format"]
       52 CALL                             R9 2 1
       53 MOVE                             R8 R9
       54 FASTCALL2                        ASSERT R5 R8 ; [+4]
       56 MOVE                             R7 R5
       57 GETIMPORT                        R6 K4 [assert]
       59 CALL                             R6 2 0
       60 MOVE                             R3 R5
       61 LOADK                            R6 K10 ["ScrollingFrame"]
       62 NAMECALL                         R4 R3 K11 ["FindFirstAncestorWhichIsA"]
       64 CALL                             R4 2 1
       65 MOVE                             R6 R4
       66 JUMPIFNOT                        R6 ; [+4]
       67 LOADK                            R8 K10 ["ScrollingFrame"]
       68 NAMECALL                         R6 R4 K12 ["IsA"]
       70 CALL                             R6 2 1
       71 FASTCALL2K                       ASSERT R6 K13 ; [+4]
       73 LOADK                            R7 K13 ["Scroll area not found for widget"]
       74 GETIMPORT                        R5 K4 [assert]
       76 CALL                             R5 2 0
       77 GETTABLEKS                       R6 R4 K14 ["AbsolutePosition"]
       79 GETTABLEKS                       R8 R3 K14 ["AbsolutePosition"]
       81 GETTABLEKS                       R10 R3 K16 ["AbsoluteSize"]
       83 DIVK                             R9 R10 K15 [2]
       84 ADD                              R7 R8 R9
       85 SUB                              R5 R6 R7
       86 GETTABLEKS                       R6 R4 K17 ["CanvasPosition"]
       88 SUB                              R6 R6 R5
       89 SETTABLEKS                       R6 R4 K17 ["CanvasPosition"]
       91 NAMECALL                         R4 R3 K18 ["GetDescendants"]
       93 CALL                             R4 1 3
       94 FORGPREP                         R4
       95 LOADK                            R11 K19 ["TextBox"]
       96 NAMECALL                         R9 R8 K12 ["IsA"]
       98 CALL                             R9 2 1
       99 JUMPIFNOT                        R9 ; [+7]
      100 GETUPVAL                         R9 4
      101 NEWCLOSURE                       R10 P0
      102 CAPTURE                          UPVAL U5
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R1
      105 CALL                             R9 1 0
      106 RETURN                           R0 0
      107 FORGLOOP                         R4 2 ; [-13]
      109 GETIMPORT                        R4 K21 [error]
      111 LOADK                            R6 K22 ["No TextBox found in API key input for %*"]
      112 MOVE                             R8 R0
      113 NAMECALL                         R6 R6 K9 ["format"]
      115 CALL                             R6 2 1
      116 MOVE                             R5 R6
      117 CALL                             R4 1 0
      118 RETURN                           R0 0

PROTO_146:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["APIKey"]
        3 GETTABLEKS                       R1 R2 K1 ["Display"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R6 1
        8 JUMPIFNOTEQKNIL                  R6 ; [+2]
       10 LOADB                            R5 0 +1
       11 LOADB                            R5 1
       12 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       14 LOADK                            R6 K2 ["GUI root not available, ensure render is called"]
       15 GETIMPORT                        R4 K4 [assert]
       17 CALL                             R4 2 0
       18 GETUPVAL                         R3 1
       19 MOVE                             R4 R3
       20 JUMPIF                           R4 ; [+12]
       21 GETUPVAL                         R7 2
       22 JUMPIFNOTEQKNIL                  R7 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       28 LOADK                            R7 K5 ["Container not mounted, ensure render is called"]
       29 GETIMPORT                        R5 K4 [assert]
       31 CALL                             R5 2 0
       32 GETUPVAL                         R4 2
       33 MOVE                             R3 R4
       34 FASTCALL2K                       ASSERT R3 K6 ; [+5]
       36 MOVE                             R5 R3
       37 LOADK                            R6 K6 ["Query container not found"]
       38 GETIMPORT                        R4 K4 [assert]
       40 CALL                             R4 2 0
       41 GETUPVAL                         R5 3
       42 MOVE                             R6 R3
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R4 R5 K7 ["getByTestId"]
       46 MOVE                             R5 R1
       47 CALL                             R4 1 1
       48 LOADK                            R8 K8 ["No result found for testId \"%*\""]
       49 MOVE                             R10 R1
       50 NAMECALL                         R8 R8 K9 ["format"]
       52 CALL                             R8 2 1
       53 MOVE                             R7 R8
       54 FASTCALL2                        ASSERT R4 R7 ; [+4]
       56 MOVE                             R6 R4
       57 GETIMPORT                        R5 K4 [assert]
       59 CALL                             R5 2 0
       60 MOVE                             R2 R4
       61 LOADK                            R5 K10 ["TextLabel"]
       62 NAMECALL                         R3 R2 K11 ["IsA"]
       64 CALL                             R3 2 1
       65 JUMPIFNOT                        R3 ; [+3]
       66 GETTABLEKS                       R3 R2 K12 ["Text"]
       68 RETURN                           R3 1
       69 GETIMPORT                        R3 K14 [error]
       71 LOADK                            R5 K15 ["Displayed API key element is not a TextLabel for %*"]
       72 MOVE                             R7 R0
       73 NAMECALL                         R5 R5 K9 ["format"]
       75 CALL                             R5 2 1
       76 MOVE                             R4 R5
       77 CALL                             R3 1 0
       78 RETURN                           R0 0

PROTO_147:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getSecureSettingsAsync"]
        3 LOADK                            R2 K1 ["ProviderKeys"]
        4 CALL                             R1 1 1
        5 GETTABLE                         R2 R1 R0
        6 RETURN                           R2 1

PROTO_148:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["IntegrationItem"]
        3 GETTABLEKS                       R2 R3 K1 ["Actions"]
        5 GETTABLEKS                       R1 R2 K2 ["Toggle"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R3
        9 JUMPIF                           R4 ; [+12]
       10 GETUPVAL                         R7 1
       11 JUMPIFNOTEQKNIL                  R7 ; [+2]
       13 LOADB                            R6 0 +1
       14 LOADB                            R6 1
       15 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       17 LOADK                            R7 K3 ["Container not mounted, ensure render is called"]
       18 GETIMPORT                        R5 K5 [assert]
       20 CALL                             R5 2 0
       21 GETUPVAL                         R4 1
       22 MOVE                             R3 R4
       23 FASTCALL2K                       ASSERT R3 K6 ; [+5]
       25 MOVE                             R5 R3
       26 LOADK                            R6 K6 ["Query container not found"]
       27 GETIMPORT                        R4 K5 [assert]
       29 CALL                             R4 2 0
       30 GETUPVAL                         R5 2
       31 MOVE                             R6 R3
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R4 R5 K7 ["getByTestId"]
       35 MOVE                             R5 R1
       36 CALL                             R4 1 1
       37 LOADK                            R8 K8 ["No result found for testId \"%*\""]
       38 MOVE                             R10 R1
       39 NAMECALL                         R8 R8 K9 ["format"]
       41 CALL                             R8 2 1
       42 MOVE                             R7 R8
       43 FASTCALL2                        ASSERT R4 R7 ; [+4]
       45 MOVE                             R6 R4
       46 GETIMPORT                        R5 K5 [assert]
       48 CALL                             R5 2 0
       49 MOVE                             R2 R4
       50 GETUPVAL                         R4 3
       51 GETTABLEKS                       R3 R4 K10 ["click"]
       53 MOVE                             R4 R2
       54 CALL                             R3 1 0
       55 RETURN                           R0 0

PROTO_149:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R2 R3 K0 ["getByText"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 MOVE                             R4 R2
        8 JUMPIFNOT                        R4 ; [+4]
        9 LOADK                            R6 K1 ["GuiObject"]
       10 NAMECALL                         R4 R2 K2 ["IsA"]
       12 CALL                             R4 2 1
       13 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       15 LOADK                            R5 K3 ["Label text not found"]
       16 GETIMPORT                        R3 K5 [assert]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K6 ["firstAncestorWithTag"]
       22 MOVE                             R4 R2
       23 LOADK                            R6 K7 ["data-testid=%*"]
       24 GETUPVAL                         R10 2
       25 GETTABLEKS                       R9 R10 K8 ["IntegrationItem"]
       27 GETTABLEKS                       R8 R9 K9 ["Header"]
       29 NAMECALL                         R6 R6 K10 ["format"]
       31 CALL                             R6 2 1
       32 MOVE                             R5 R6
       33 CALL                             R3 2 1
       34 MOVE                             R5 R3
       35 JUMPIFNOT                        R5 ; [+4]
       36 LOADK                            R7 K1 ["GuiObject"]
       37 NAMECALL                         R5 R3 K2 ["IsA"]
       39 CALL                             R5 2 1
       40 FASTCALL2K                       ASSERT R5 K11 ; [+4]
       42 LOADK                            R6 K11 ["Integration item not found"]
       43 GETIMPORT                        R4 K5 [assert]
       45 CALL                             R4 2 0
       46 RETURN                           R3 1

PROTO_150:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["IntegrationItem"]
        3 GETTABLEKS                       R2 R3 K1 ["Actions"]
        5 GETTABLEKS                       R1 R2 K2 ["OverflowButton"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R3
        9 JUMPIF                           R4 ; [+12]
       10 GETUPVAL                         R7 1
       11 JUMPIFNOTEQKNIL                  R7 ; [+2]
       13 LOADB                            R6 0 +1
       14 LOADB                            R6 1
       15 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       17 LOADK                            R7 K3 ["Container not mounted, ensure render is called"]
       18 GETIMPORT                        R5 K5 [assert]
       20 CALL                             R5 2 0
       21 GETUPVAL                         R4 1
       22 MOVE                             R3 R4
       23 FASTCALL2K                       ASSERT R3 K6 ; [+5]
       25 MOVE                             R5 R3
       26 LOADK                            R6 K6 ["Query container not found"]
       27 GETIMPORT                        R4 K5 [assert]
       29 CALL                             R4 2 0
       30 GETUPVAL                         R5 2
       31 MOVE                             R6 R3
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R4 R5 K7 ["getByTestId"]
       35 MOVE                             R5 R1
       36 CALL                             R4 1 1
       37 LOADK                            R8 K8 ["No result found for testId \"%*\""]
       38 MOVE                             R10 R1
       39 NAMECALL                         R8 R8 K9 ["format"]
       41 CALL                             R8 2 1
       42 MOVE                             R7 R8
       43 FASTCALL2                        ASSERT R4 R7 ; [+4]
       45 MOVE                             R6 R4
       46 GETIMPORT                        R5 K5 [assert]
       48 CALL                             R5 2 0
       49 MOVE                             R2 R4
       50 GETUPVAL                         R4 3
       51 GETTABLEKS                       R3 R4 K10 ["click"]
       53 MOVE                             R4 R2
       54 CALL                             R3 1 0
       55 RETURN                           R0 0

PROTO_151:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["IntegrationItem"]
        3 GETTABLEKS                       R1 R2 K1 ["Actions"]
        5 GETTABLEKS                       R0 R1 K2 ["OverflowContent"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K3 ["queryAll"]
       10 GETUPVAL                         R5 2
       11 JUMPIFNOTEQKNIL                  R5 ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       17 LOADK                            R5 K4 ["GUI root not available, ensure render is called"]
       18 GETIMPORT                        R3 K6 [assert]
       20 CALL                             R3 2 0
       21 GETUPVAL                         R2 2
       22 LOADK                            R4 K7 ["data-testid=%*"]
       23 MOVE                             R6 R0
       24 NAMECALL                         R4 R4 K8 ["format"]
       26 CALL                             R4 2 1
       27 MOVE                             R3 R4
       28 CALL                             R1 2 1
       29 MOVE                             R2 R1
       30 LOADNIL                          R3
       31 LOADNIL                          R4
       32 FORGPREP                         R2
       33 LOADK                            R9 K9 ["GuiObject"]
       34 NAMECALL                         R7 R6 K10 ["IsA"]
       36 CALL                             R7 2 1
       37 JUMPIFNOT                        R7 ; [+5]
       38 GETUPVAL                         R7 3
       39 MOVE                             R8 R6
       40 CALL                             R7 1 1
       41 JUMPIFNOT                        R7 ; [+1]
       42 RETURN                           R6 1
       43 FORGLOOP                         R2 2 ; [-11]
       45 GETIMPORT                        R2 K12 [error]
       47 LOADK                            R3 K13 ["Overflow content not found"]
       48 CALL                             R2 1 0
       49 RETURN                           R0 0

PROTO_152:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Alert"]
        3 GETTABLEKS                       R2 R3 K1 ["Close"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_153:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Alert"]
        3 GETTABLEKS                       R2 R3 K1 ["Continue"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_154:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ToolConfirmation"]
        3 GETTABLEKS                       R2 R3 K1 ["Accept"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_155:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ToolConfirmation"]
        3 GETTABLEKS                       R2 R3 K1 ["Reject"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_156:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ToolConfirmation"]
        3 GETTABLEKS                       R2 R3 K1 ["AlwaysAccept"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["TextLabel"]
       49 LOADB                            R5 1
       50 NAMECALL                         R2 R1 K10 ["FindFirstChildWhichIsA"]
       52 CALL                             R2 3 1
       53 FASTCALL2K                       ASSERT R2 K11 ; [+5]
       55 MOVE                             R4 R2
       56 LOADK                            R5 K11 ["TextLabel not found in Always Accept button"]
       57 GETIMPORT                        R3 K4 [assert]
       59 CALL                             R3 2 0
       60 GETTABLEKS                       R3 R2 K12 ["Text"]
       62 RETURN                           R3 1

PROTO_157:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ToolConfirmation"]
        3 GETTABLEKS                       R2 R3 K1 ["AlwaysAccept"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       15 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K4 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K5 ["Query container not found"]
       25 GETIMPORT                        R4 K4 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K8 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 LOADK                            R4 K9 ["ScrollingFrame"]
       49 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       51 CALL                             R2 2 1
       52 MOVE                             R4 R2
       53 JUMPIFNOT                        R4 ; [+4]
       54 LOADK                            R6 K9 ["ScrollingFrame"]
       55 NAMECALL                         R4 R2 K11 ["IsA"]
       57 CALL                             R4 2 1
       58 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       60 LOADK                            R5 K12 ["Scroll area not found for widget"]
       61 GETIMPORT                        R3 K4 [assert]
       63 CALL                             R3 2 0
       64 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       66 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       70 DIVK                             R7 R8 K14 [2]
       71 ADD                              R5 R6 R7
       72 SUB                              R3 R4 R5
       73 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       75 SUB                              R4 R4 R3
       76 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       78 GETUPVAL                         R3 3
       79 GETTABLEKS                       R2 R3 K17 ["click"]
       81 MOVE                             R3 R1
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_158:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getProcessEvent"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_159:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_160:
        0 DUPTABLE                         R3 K3 [{"type", "contentId", "contentBlock"}]
        1 LOADK                            R4 K4 ["content_start"]
        2 SETTABLEKS                       R4 R3 K0 ["type"]
        4 SETTABLEKS                       R2 R3 K1 ["contentId"]
        6 DUPTABLE                         R4 K8 [{"type", "id", "name", "input"}]
        7 LOADK                            R5 K9 ["tool_use"]
        8 SETTABLEKS                       R5 R4 K0 ["type"]
       10 MOVE                             R6 R0
       11 LOADK                            R7 K10 ["_"]
       12 MOVE                             R8 R2
       13 CONCAT                           R5 R6 R8
       14 SETTABLEKS                       R5 R4 K5 ["id"]
       16 SETTABLEKS                       R0 R4 K6 ["name"]
       18 NEWTABLE                         R5 0 0
       20 SETTABLEKS                       R5 R4 K7 ["input"]
       22 SETTABLEKS                       R4 R3 K2 ["contentBlock"]
       24 GETUPVAL                         R4 0
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R3
       28 CALL                             R4 1 0
       29 DUPTABLE                         R4 K12 [{"type", "contentId", "delta"}]
       30 LOADK                            R5 K13 ["content_delta"]
       31 SETTABLEKS                       R5 R4 K0 ["type"]
       33 SETTABLEKS                       R2 R4 K1 ["contentId"]
       35 DUPTABLE                         R5 K15 [{"type", "jsonDelta"}]
       36 LOADK                            R6 K16 ["json_delta"]
       37 SETTABLEKS                       R6 R5 K0 ["type"]
       39 SETTABLEKS                       R1 R5 K14 ["jsonDelta"]
       41 SETTABLEKS                       R5 R4 K11 ["delta"]
       43 GETUPVAL                         R5 0
       44 NEWCLOSURE                       R6 P0
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          VAL R4
       47 CALL                             R5 1 0
       48 DUPTABLE                         R5 K17 [{"type", "contentId"}]
       49 LOADK                            R6 K18 ["content_end"]
       50 SETTABLEKS                       R6 R5 K0 ["type"]
       52 SETTABLEKS                       R2 R5 K1 ["contentId"]
       54 GETUPVAL                         R6 0
       55 NEWCLOSURE                       R7 P0
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          VAL R5
       58 CALL                             R6 1 0
       59 RETURN                           R0 0

PROTO_161:
        0 DUPTABLE                         R2 K3 [{"type", "contentId", "contentBlock"}]
        1 LOADK                            R3 K4 ["content_start"]
        2 SETTABLEKS                       R3 R2 K0 ["type"]
        4 SETTABLEKS                       R1 R2 K1 ["contentId"]
        6 DUPTABLE                         R3 K6 [{"type", "text"}]
        7 LOADK                            R4 K5 ["text"]
        8 SETTABLEKS                       R4 R3 K0 ["type"]
       10 SETTABLEKS                       R0 R3 K5 ["text"]
       12 SETTABLEKS                       R3 R2 K2 ["contentBlock"]
       14 GETUPVAL                         R3 0
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          UPVAL U1
       17 CAPTURE                          VAL R2
       18 CALL                             R3 1 0
       19 DUPTABLE                         R3 K8 [{"type", "contentId", "delta"}]
       20 LOADK                            R4 K9 ["content_delta"]
       21 SETTABLEKS                       R4 R3 K0 ["type"]
       23 SETTABLEKS                       R1 R3 K1 ["contentId"]
       25 DUPTABLE                         R4 K6 [{"type", "text"}]
       26 LOADK                            R5 K10 ["text_delta"]
       27 SETTABLEKS                       R5 R4 K0 ["type"]
       29 SETTABLEKS                       R0 R4 K5 ["text"]
       31 SETTABLEKS                       R4 R3 K7 ["delta"]
       33 GETUPVAL                         R4 0
       34 NEWCLOSURE                       R5 P0
       35 CAPTURE                          UPVAL U1
       36 CAPTURE                          VAL R3
       37 CALL                             R4 1 0
       38 DUPTABLE                         R4 K11 [{"type", "contentId"}]
       39 LOADK                            R5 K12 ["content_end"]
       40 SETTABLEKS                       R5 R4 K0 ["type"]
       42 SETTABLEKS                       R1 R4 K1 ["contentId"]
       44 GETUPVAL                         R5 0
       45 NEWCLOSURE                       R6 P0
       46 CAPTURE                          UPVAL U1
       47 CAPTURE                          VAL R4
       48 CALL                             R5 1 0
       49 RETURN                           R0 0

PROTO_162:
        0 DUPTABLE                         R0 K1 [{"type"}]
        1 LOADK                            R1 K2 ["message_start"]
        2 SETTABLEKS                       R1 R0 K0 ["type"]
        4 GETUPVAL                         R1 0
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_163:
        0 DUPTABLE                         R1 K2 [{"type", "delta"}]
        1 LOADK                            R2 K3 ["message_delta"]
        2 SETTABLEKS                       R2 R1 K0 ["type"]
        4 DUPTABLE                         R2 K5 [{"stopReason"}]
        5 SETTABLEKS                       R0 R2 K4 ["stopReason"]
        7 SETTABLEKS                       R2 R1 K1 ["delta"]
        9 GETUPVAL                         R2 0
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 CALL                             R2 1 0
       14 DUPTABLE                         R1 K6 [{"type"}]
       15 LOADK                            R2 K7 ["message_stop"]
       16 SETTABLEKS                       R2 R1 K0 ["type"]
       18 GETUPVAL                         R2 0
       19 NEWCLOSURE                       R3 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R1
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_164:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["spyOn"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["EventLogger"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_165:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 CALL                             R4 1 1
        3 GETTABLEKS                       R3 R4 K0 ["getByText"]
        5 MOVE                             R4 R1
        6 DUPTABLE                         R5 K2 [{"exact"}]
        7 JUMPIFNOT                        R2 ; [+3]
        8 GETTABLEKS                       R6 R2 K1 ["exact"]
       10 JUMPIF                           R6 ; [+1]
       11 LOADB                            R6 0
       12 SETTABLEKS                       R6 R5 K1 ["exact"]
       14 CALL                             R3 2 1
       15 FASTCALL2K                       ASSERT R3 K3 ; [+5]
       17 MOVE                             R5 R3
       18 LOADK                            R6 K3 ["Text object not found"]
       19 GETIMPORT                        R4 K5 [assert]
       21 CALL                             R4 2 0
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R4 R5 K6 ["click"]
       25 MOVE                             R5 R3
       26 CALL                             R4 1 0
       27 RETURN                           R0 0

PROTO_166:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["SlashCommandMenu"]
        3 GETTABLEKS                       R1 R2 K1 ["Container"]
        5 GETUPVAL                         R5 1
        6 JUMPIFNOTEQKNIL                  R5 ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       12 LOADK                            R5 K2 ["GUI root not available, ensure render is called"]
       13 GETIMPORT                        R3 K4 [assert]
       15 CALL                             R3 2 0
       16 GETUPVAL                         R2 1
       17 MOVE                             R3 R2
       18 JUMPIF                           R3 ; [+12]
       19 GETUPVAL                         R6 2
       20 JUMPIFNOTEQKNIL                  R6 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       26 LOADK                            R6 K5 ["Container not mounted, ensure render is called"]
       27 GETIMPORT                        R4 K4 [assert]
       29 CALL                             R4 2 0
       30 GETUPVAL                         R3 2
       31 MOVE                             R2 R3
       32 FASTCALL2K                       ASSERT R2 K6 ; [+5]
       34 MOVE                             R4 R2
       35 LOADK                            R5 K6 ["Query container not found"]
       36 GETIMPORT                        R3 K4 [assert]
       38 CALL                             R3 2 0
       39 GETUPVAL                         R4 3
       40 MOVE                             R5 R2
       41 CALL                             R4 1 1
       42 GETTABLEKS                       R3 R4 K7 ["getByTestId"]
       44 MOVE                             R4 R1
       45 CALL                             R3 1 1
       46 LOADK                            R7 K8 ["No result found for testId \"%*\""]
       47 MOVE                             R9 R1
       48 NAMECALL                         R7 R7 K9 ["format"]
       50 CALL                             R7 2 1
       51 MOVE                             R6 R7
       52 FASTCALL2                        ASSERT R3 R6 ; [+4]
       54 MOVE                             R5 R3
       55 GETIMPORT                        R4 K4 [assert]
       57 CALL                             R4 2 0
       58 MOVE                             R0 R3
       59 RETURN                           R0 1

PROTO_167:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["SlashCommandMenu"]
        3 GETTABLEKS                       R3 R4 K1 ["Item"]
        5 GETTABLEKS                       R2 R3 K2 ["Container"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R3
        9 JUMPIF                           R4 ; [+12]
       10 GETUPVAL                         R7 1
       11 JUMPIFNOTEQKNIL                  R7 ; [+2]
       13 LOADB                            R6 0 +1
       14 LOADB                            R6 1
       15 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       17 LOADK                            R7 K3 ["Container not mounted, ensure render is called"]
       18 GETIMPORT                        R5 K5 [assert]
       20 CALL                             R5 2 0
       21 GETUPVAL                         R4 1
       22 MOVE                             R3 R4
       23 FASTCALL2K                       ASSERT R3 K6 ; [+5]
       25 MOVE                             R5 R3
       26 LOADK                            R6 K6 ["Query container not found"]
       27 GETIMPORT                        R4 K5 [assert]
       29 CALL                             R4 2 0
       30 GETUPVAL                         R5 2
       31 MOVE                             R6 R3
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R4 R5 K7 ["getAllByTestId"]
       35 MOVE                             R5 R2
       36 CALL                             R4 1 1
       37 MOVE                             R6 R4
       38 JUMPIFNOT                        R6 ; [+6]
       39 LENGTH                           R7 R4
       40 LOADN                            R8 0
       41 JUMPIFLT                         R8 R7 ; [+2]
       43 LOADB                            R6 0 +1
       44 LOADB                            R6 1
       45 LOADK                            R8 K8 ["No results found for testId \"%*\""]
       46 MOVE                             R10 R2
       47 NAMECALL                         R8 R8 K9 ["format"]
       49 CALL                             R8 2 1
       50 MOVE                             R7 R8
       51 FASTCALL2                        ASSERT R6 R7 ; [+3]
       53 GETIMPORT                        R5 K5 [assert]
       55 CALL                             R5 2 0
       56 MOVE                             R1 R4
       57 NEWTABLE                         R2 0 0
       59 MOVE                             R3 R1
       60 LOADNIL                          R4
       61 LOADNIL                          R5
       62 FORGPREP                         R3
       63 GETUPVAL                         R12 0
       64 GETTABLEKS                       R11 R12 K0 ["SlashCommandMenu"]
       66 GETTABLEKS                       R10 R11 K1 ["Item"]
       68 GETTABLEKS                       R9 R10 K10 ["Command"]
       70 MOVE                             R10 R7
       71 MOVE                             R11 R10
       72 JUMPIF                           R11 ; [+12]
       73 GETUPVAL                         R14 1
       74 JUMPIFNOTEQKNIL                  R14 ; [+2]
       76 LOADB                            R13 0 +1
       77 LOADB                            R13 1
       78 FASTCALL2K                       ASSERT R13 K3 ; [+4]
       80 LOADK                            R14 K3 ["Container not mounted, ensure render is called"]
       81 GETIMPORT                        R12 K5 [assert]
       83 CALL                             R12 2 0
       84 GETUPVAL                         R11 1
       85 MOVE                             R10 R11
       86 FASTCALL2K                       ASSERT R10 K6 ; [+5]
       88 MOVE                             R12 R10
       89 LOADK                            R13 K6 ["Query container not found"]
       90 GETIMPORT                        R11 K5 [assert]
       92 CALL                             R11 2 0
       93 GETUPVAL                         R12 2
       94 MOVE                             R13 R10
       95 CALL                             R12 1 1
       96 GETTABLEKS                       R11 R12 K11 ["getByTestId"]
       98 MOVE                             R12 R9
       99 CALL                             R11 1 1
      100 LOADK                            R15 K12 ["No result found for testId \"%*\""]
      101 MOVE                             R17 R9
      102 NAMECALL                         R15 R15 K9 ["format"]
      104 CALL                             R15 2 1
      105 MOVE                             R14 R15
      106 FASTCALL2                        ASSERT R11 R14 ; [+4]
      108 MOVE                             R13 R11
      109 GETIMPORT                        R12 K5 [assert]
      111 CALL                             R12 2 0
      112 MOVE                             R8 R11
      113 LOADK                            R12 K13 ["TextLabel"]
      114 NAMECALL                         R10 R8 K14 ["IsA"]
      116 CALL                             R10 2 1
      117 FASTCALL2K                       ASSERT R10 K15 ; [+4]
      119 LOADK                            R11 K15 ["Text is not a TextLabel"]
      120 GETIMPORT                        R9 K5 [assert]
      122 CALL                             R9 2 0
      123 GETTABLEKS                       R11 R8 K16 ["Text"]
      125 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      127 MOVE                             R10 R2
      128 GETIMPORT                        R9 K19 [table.insert]
      130 CALL                             R9 2 0
      131 FORGLOOP                         R3 2 ; [-69]
      133 RETURN                           R2 1

PROTO_168:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setOptions"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_169:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_170:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["get"]
        4 GETIMPORT                        R5 K2 [game]
        6 LOADK                            R7 K3 ["data-testid=%*"]
        7 GETUPVAL                         R11 2
        8 GETTABLEKS                       R10 R11 K4 ["ToolMenuView"]
       10 GETTABLEKS                       R9 R10 K5 ["Container"]
       12 NAMECALL                         R7 R7 K6 ["format"]
       14 CALL                             R7 2 1
       15 MOVE                             R6 R7
       16 CALL                             R4 2 1
       17 MOVE                             R6 R4
       18 JUMPIFNOT                        R6 ; [+4]
       19 LOADK                            R8 K7 ["GuiObject"]
       20 NAMECALL                         R6 R4 K8 ["IsA"]
       22 CALL                             R6 2 1
       23 FASTCALL2K                       ASSERT R6 K9 ; [+4]
       25 LOADK                            R7 K9 ["ToolMenuView not found"]
       26 GETIMPORT                        R5 K11 [assert]
       28 CALL                             R5 2 0
       29 MOVE                             R3 R4
       30 CALL                             R2 1 1
       31 GETTABLEKS                       R1 R2 K12 ["getByText"]
       33 MOVE                             R2 R0
       34 CALL                             R1 1 1
       35 FASTCALL2K                       ASSERT R1 K13 ; [+5]
       37 MOVE                             R3 R1
       38 LOADK                            R4 K13 ["Option not found"]
       39 GETIMPORT                        R2 K11 [assert]
       41 CALL                             R2 2 0
       42 GETUPVAL                         R3 1
       43 GETTABLEKS                       R2 R3 K14 ["firstAncestorWithTag"]
       45 MOVE                             R3 R1
       46 LOADK                            R5 K3 ["data-testid=%*"]
       47 GETUPVAL                         R10 2
       48 GETTABLEKS                       R9 R10 K4 ["ToolMenuView"]
       50 GETTABLEKS                       R8 R9 K15 ["Option"]
       52 GETTABLEKS                       R7 R8 K5 ["Container"]
       54 NAMECALL                         R5 R5 K6 ["format"]
       56 CALL                             R5 2 1
       57 MOVE                             R4 R5
       58 CALL                             R2 2 1
       59 FASTCALL2K                       ASSERT R2 K16 ; [+5]
       61 MOVE                             R4 R2
       62 LOADK                            R5 K16 ["Option container not found"]
       63 GETIMPORT                        R3 K11 [assert]
       65 CALL                             R3 2 0
       66 GETUPVAL                         R4 1
       67 GETTABLEKS                       R3 R4 K0 ["get"]
       69 MOVE                             R4 R2
       70 LOADK                            R6 K3 ["data-testid=%*"]
       71 GETUPVAL                         R11 2
       72 GETTABLEKS                       R10 R11 K4 ["ToolMenuView"]
       74 GETTABLEKS                       R9 R10 K15 ["Option"]
       76 GETTABLEKS                       R8 R9 K17 ["Checkbox"]
       78 NAMECALL                         R6 R6 K6 ["format"]
       80 CALL                             R6 2 1
       81 MOVE                             R5 R6
       82 CALL                             R3 2 1
       83 FASTCALL2K                       ASSERT R3 K18 ; [+5]
       85 MOVE                             R5 R3
       86 LOADK                            R6 K18 ["Checkbox not found"]
       87 GETIMPORT                        R4 K11 [assert]
       89 CALL                             R4 2 0
       90 LOADK                            R7 K7 ["GuiObject"]
       91 NAMECALL                         R5 R3 K8 ["IsA"]
       93 CALL                             R5 2 1
       94 FASTCALL2K                       ASSERT R5 K19 ; [+4]
       96 LOADK                            R6 K19 ["Checkbox is not a GuiObject"]
       97 GETIMPORT                        R4 K11 [assert]
       99 CALL                             R4 2 0
      100 GETUPVAL                         R5 3
      101 GETTABLEKS                       R4 R5 K20 ["click"]
      103 MOVE                             R5 R3
      104 CALL                             R4 1 0
      105 RETURN                           R0 0

PROTO_171:
        0 LOADK                            R3 K0 ["bg-action-soft-emphasis"]
        1 NAMECALL                         R1 R0 K1 ["HasTag"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_172:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ThreadsMenu"]
        3 GETTABLEKS                       R1 R2 K1 ["ExistingThreadButton"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R2
        7 JUMPIF                           R3 ; [+12]
        8 GETUPVAL                         R6 2
        9 JUMPIFNOTEQKNIL                  R6 ; [+2]
       11 LOADB                            R5 0 +1
       12 LOADB                            R5 1
       13 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       15 LOADK                            R6 K2 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R4 K4 [assert]
       18 CALL                             R4 2 0
       19 GETUPVAL                         R3 2
       20 MOVE                             R2 R3
       21 FASTCALL2K                       ASSERT R2 K5 ; [+5]
       23 MOVE                             R4 R2
       24 LOADK                            R5 K5 ["Query container not found"]
       25 GETIMPORT                        R3 K4 [assert]
       27 CALL                             R3 2 0
       28 GETUPVAL                         R4 3
       29 MOVE                             R5 R2
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R3 R4 K6 ["queryAllByTestId"]
       33 MOVE                             R4 R1
       34 CALL                             R3 1 1
       35 MOVE                             R0 R3
       36 RETURN                           R0 1

PROTO_173:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ThreadsMenu"]
        3 GETTABLEKS                       R1 R2 K1 ["Container"]
        5 GETUPVAL                         R5 1
        6 JUMPIFNOTEQKNIL                  R5 ; [+2]
        8 LOADB                            R4 0 +1
        9 LOADB                            R4 1
       10 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       12 LOADK                            R5 K2 ["GUI root not available, ensure render is called"]
       13 GETIMPORT                        R3 K4 [assert]
       15 CALL                             R3 2 0
       16 GETUPVAL                         R2 1
       17 MOVE                             R3 R2
       18 JUMPIF                           R3 ; [+12]
       19 GETUPVAL                         R6 2
       20 JUMPIFNOTEQKNIL                  R6 ; [+2]
       22 LOADB                            R5 0 +1
       23 LOADB                            R5 1
       24 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       26 LOADK                            R6 K5 ["Container not mounted, ensure render is called"]
       27 GETIMPORT                        R4 K4 [assert]
       29 CALL                             R4 2 0
       30 GETUPVAL                         R3 2
       31 MOVE                             R2 R3
       32 FASTCALL2K                       ASSERT R2 K6 ; [+5]
       34 MOVE                             R4 R2
       35 LOADK                            R5 K6 ["Query container not found"]
       36 GETIMPORT                        R3 K4 [assert]
       38 CALL                             R3 2 0
       39 GETUPVAL                         R4 3
       40 MOVE                             R5 R2
       41 CALL                             R4 1 1
       42 GETTABLEKS                       R3 R4 K7 ["getByTestId"]
       44 MOVE                             R4 R1
       45 CALL                             R3 1 1
       46 LOADK                            R7 K8 ["No result found for testId \"%*\""]
       47 MOVE                             R9 R1
       48 NAMECALL                         R7 R7 K9 ["format"]
       50 CALL                             R7 2 1
       51 MOVE                             R6 R7
       52 FASTCALL2                        ASSERT R3 R6 ; [+4]
       54 MOVE                             R5 R3
       55 GETIMPORT                        R4 K4 [assert]
       57 CALL                             R4 2 0
       58 MOVE                             R0 R3
       59 GETIMPORT                        R1 K11 [pcall]
       61 NEWCLOSURE                       R2 P0
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          UPVAL U3
       66 CALL                             R1 1 2
       67 JUMPIFNOT                        R1 ; [+13]
       68 JUMPIFNOT                        R2 ; [+12]
       69 MOVE                             R3 R2
       70 LOADNIL                          R4
       71 LOADNIL                          R5
       72 FORGPREP                         R3
       73 LOADK                            R10 K12 ["bg-action-soft-emphasis"]
       74 NAMECALL                         R8 R7 K13 ["HasTag"]
       76 CALL                             R8 2 1
       77 JUMPIFNOT                        R8 ; [+1]
       78 RETURN                           R7 1
       79 FORGLOOP                         R3 2 ; [-7]
       81 GETUPVAL                         R6 0
       82 GETTABLEKS                       R5 R6 K0 ["ThreadsMenu"]
       84 GETTABLEKS                       R4 R5 K14 ["AddThreadButton"]
       86 MOVE                             R5 R0
       87 MOVE                             R6 R5
       88 JUMPIF                           R6 ; [+12]
       89 GETUPVAL                         R9 2
       90 JUMPIFNOTEQKNIL                  R9 ; [+2]
       92 LOADB                            R8 0 +1
       93 LOADB                            R8 1
       94 FASTCALL2K                       ASSERT R8 K5 ; [+4]
       96 LOADK                            R9 K5 ["Container not mounted, ensure render is called"]
       97 GETIMPORT                        R7 K4 [assert]
       99 CALL                             R7 2 0
      100 GETUPVAL                         R6 2
      101 MOVE                             R5 R6
      102 FASTCALL2K                       ASSERT R5 K6 ; [+5]
      104 MOVE                             R7 R5
      105 LOADK                            R8 K6 ["Query container not found"]
      106 GETIMPORT                        R6 K4 [assert]
      108 CALL                             R6 2 0
      109 GETUPVAL                         R7 3
      110 MOVE                             R8 R5
      111 CALL                             R7 1 1
      112 GETTABLEKS                       R6 R7 K7 ["getByTestId"]
      114 MOVE                             R7 R4
      115 CALL                             R6 1 1
      116 LOADK                            R10 K8 ["No result found for testId \"%*\""]
      117 MOVE                             R12 R4
      118 NAMECALL                         R10 R10 K9 ["format"]
      120 CALL                             R10 2 1
      121 MOVE                             R9 R10
      122 FASTCALL2                        ASSERT R6 R9 ; [+4]
      124 MOVE                             R8 R6
      125 GETIMPORT                        R7 K4 [assert]
      127 CALL                             R7 2 0
      128 MOVE                             R3 R6
      129 RETURN                           R3 1

PROTO_174:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 FASTCALL2K                       ASSERT R0 K0 ; [+5]
        7 MOVE                             R2 R0
        8 LOADK                            R3 K0 ["Props table is nil"]
        9 GETIMPORT                        R1 K2 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 CALL                             R1 0 1
       14 GETUPVAL                         R2 1
       15 CALL                             R2 0 2
       16 GETUPVAL                         R4 2
       17 CALL                             R4 0 2
       18 GETUPVAL                         R6 3
       19 CALL                             R6 0 2
       20 GETUPVAL                         R8 4
       21 CALL                             R8 0 2
       22 GETUPVAL                         R10 5
       23 CALL                             R10 0 2
       24 GETUPVAL                         R12 6
       25 CALL                             R12 0 2
       26 GETUPVAL                         R14 7
       27 CALL                             R14 0 2
       28 GETUPVAL                         R16 8
       29 CALL                             R16 0 2
       30 GETUPVAL                         R18 9
       31 CALL                             R18 0 2
       32 DUPTABLE                         R20 K16 [{"SettingsContext", "ConversationProvider", "ThreadIdContext", "SessionIdContext", "InputStateContext", "McpClientContext", "LLMPackageContext", "ModelQualityContext", "PopoutWidgetContext", "OptionsContext", "WindowInputContext", "LLMProviderSelectionContext", "ExternalServerContext"}]
       33 GETUPVAL                         R21 10
       34 MOVE                             R22 R1
       35 CALL                             R21 1 1
       36 SETTABLEKS                       R21 R20 K3 ["SettingsContext"]
       38 GETUPVAL                         R21 10
       39 MOVE                             R22 R2
       40 CALL                             R21 1 1
       41 SETTABLEKS                       R21 R20 K4 ["ConversationProvider"]
       43 GETUPVAL                         R21 10
       44 MOVE                             R22 R6
       45 CALL                             R21 1 1
       46 SETTABLEKS                       R21 R20 K5 ["ThreadIdContext"]
       48 GETUPVAL                         R21 10
       49 GETUPVAL                         R23 11
       50 GETTABLEKS                       R22 R23 K17 ["Provider"]
       52 DUPTABLE                         R23 K19 [{"sessionId"}]
       53 GETUPVAL                         R24 12
       54 LOADB                            R26 0
       55 NAMECALL                         R24 R24 K20 ["GenerateGUID"]
       57 CALL                             R24 2 1
       58 SETTABLEKS                       R24 R23 K18 ["sessionId"]
       60 CALL                             R21 2 1
       61 SETTABLEKS                       R21 R20 K6 ["SessionIdContext"]
       63 GETUPVAL                         R21 10
       64 MOVE                             R22 R4
       65 CALL                             R21 1 1
       66 SETTABLEKS                       R21 R20 K7 ["InputStateContext"]
       68 GETUPVAL                         R21 10
       69 MOVE                             R22 R8
       70 CALL                             R21 1 1
       71 SETTABLEKS                       R21 R20 K8 ["McpClientContext"]
       73 GETUPVAL                         R21 10
       74 MOVE                             R22 R10
       75 CALL                             R21 1 1
       76 SETTABLEKS                       R21 R20 K9 ["LLMPackageContext"]
       78 GETUPVAL                         R21 10
       79 MOVE                             R22 R12
       80 CALL                             R21 1 1
       81 SETTABLEKS                       R21 R20 K10 ["ModelQualityContext"]
       83 GETUPVAL                         R21 10
       84 MOVE                             R22 R16
       85 CALL                             R21 1 1
       86 SETTABLEKS                       R21 R20 K11 ["PopoutWidgetContext"]
       88 GETUPVAL                         R21 10
       89 MOVE                             R22 R14
       90 CALL                             R21 1 1
       91 SETTABLEKS                       R21 R20 K12 ["OptionsContext"]
       93 GETUPVAL                         R21 10
       94 GETUPVAL                         R23 13
       95 GETTABLEKS                       R22 R23 K21 ["StandardProvider"]
       97 CALL                             R21 1 1
       98 SETTABLEKS                       R21 R20 K13 ["WindowInputContext"]
      100 GETUPVAL                         R21 10
      101 GETUPVAL                         R23 14
      102 GETTABLEKS                       R22 R23 K17 ["Provider"]
      104 CALL                             R21 1 1
      105 SETTABLEKS                       R21 R20 K14 ["LLMProviderSelectionContext"]
      107 GETUPVAL                         R21 10
      108 MOVE                             R22 R18
      109 CALL                             R21 1 1
      110 SETTABLEKS                       R21 R20 K15 ["ExternalServerContext"]
      112 GETUPVAL                         R22 15
      113 GETTABLEKS                       R21 R22 K22 ["join"]
      115 MOVE                             R22 R20
      116 GETTABLEKS                       R23 R0 K23 ["overrideProviders"]
      118 JUMPIF                           R23 ; [+2]
      119 NEWTABLE                         R23 0 0
      121 CALL                             R21 2 1
      122 NEWTABLE                         R22 0 0
      124 GETUPVAL                         R23 16
      125 MOVE                             R24 R22
      126 CALL                             R23 1 1
      127 GETTABLEKS                       R24 R0 K24 ["overrideEnvironment"]
      129 JUMPIFNOT                        R24 ; [+8]
      130 GETTABLEKS                       R24 R0 K24 ["overrideEnvironment"]
      132 LOADNIL                          R25
      133 LOADNIL                          R26
      134 FORGPREP                         R24
      135 SETTABLE                         R28 R23 R27
      136 FORGLOOP                         R24 2 ; [-2]
      138 LOADNIL                          R24
      139 GETTABLEKS                       R25 R0 K25 ["tools"]
      141 JUMPIFNOT                        R25 ; [+12]
      142 GETUPVAL                         R26 17
      143 GETTABLEKS                       R25 R26 K26 ["toolSetup"]
      145 GETTABLEKS                       R26 R0 K25 ["tools"]
      147 GETTABLEKS                       R27 R0 K27 ["editEnvironment"]
      149 MOVE                             R28 R23
      150 CALL                             R25 3 2
      151 MOVE                             R24 R25
      152 MOVE                             R23 R26
      153 JUMP                             ; [+8]
      154 GETTABLEKS                       R25 R0 K27 ["editEnvironment"]
      156 JUMPIFNOT                        R25 ; [+5]
      157 GETTABLEKS                       R25 R0 K27 ["editEnvironment"]
      159 MOVE                             R26 R23
      160 CALL                             R25 1 1
      161 MOVE                             R23 R25
      162 GETUPVAL                         R26 18
      163 GETTABLEKS                       R25 R26 K28 ["set"]
      165 MOVE                             R26 R23
      166 CALL                             R25 1 0
      167 GETUPVAL                         R25 19
      168 CALL                             R25 0 1
      169 JUMPIFNOT                        R25 ; [+12]
      170 GETUPVAL                         R26 20
      171 GETTABLEKS                       R25 R26 K29 ["registerDefaultWidgets"]
      173 CALL                             R25 0 0
      174 GETTABLEKS                       R25 R0 K30 ["contentWidgets"]
      176 JUMPIFNOT                        R25 ; [+5]
      177 GETUPVAL                         R27 20
      178 GETTABLEKS                       R26 R27 K31 ["registerWidgetList"]
      180 MOVE                             R27 R25
      181 CALL                             R26 1 0
      182 NEWCLOSURE                       R25 P0
      183 CAPTURE                          VAL R22
      184 GETUPVAL                         R27 15
      185 GETTABLEKS                       R26 R27 K32 ["values"]
      187 MOVE                             R27 R21
      188 CALL                             R26 1 1
      189 GETTABLEKS                       R27 R0 K33 ["orderedOverrideProviders"]
      191 JUMPIFNOT                        R27 ; [+14]
      192 GETTABLEKS                       R27 R0 K33 ["orderedOverrideProviders"]
      194 LOADNIL                          R28
      195 LOADNIL                          R29
      196 FORGPREP                         R27
      197 FASTCALL2                        TABLE_INSERT R26 R31 ; [+5]
      199 MOVE                             R33 R26
      200 MOVE                             R34 R31
      201 GETIMPORT                        R32 K36 [table.insert]
      203 CALL                             R32 2 0
      204 FORGLOOP                         R27 2 ; [-8]
      206 LOADNIL                          R27
      207 LOADNIL                          R28
      208 NEWCLOSURE                       R29 P1
      209 CAPTURE                          UPVAL U21
      210 CAPTURE                          UPVAL U22
      211 CAPTURE                          REF R0
      212 CAPTURE                          UPVAL U23
      213 CAPTURE                          UPVAL U10
      214 CAPTURE                          UPVAL U24
      215 CAPTURE                          VAL R26
      216 CAPTURE                          REF R27
      217 CAPTURE                          REF R28
      218 DUPCLOSURE                       R30 K37 [PROTO_11]
      219 CAPTURE                          UPVAL U25
      220 DUPCLOSURE                       R31 K38 [PROTO_14]
      221 CAPTURE                          UPVAL U26
      222 CAPTURE                          UPVAL U27
      223 DUPCLOSURE                       R32 K39 [PROTO_15]
      224 CAPTURE                          VAL R31
      225 DUPCLOSURE                       R33 K40 [PROTO_19]
      226 CAPTURE                          UPVAL U28
      227 CAPTURE                          UPVAL U17
      228 CAPTURE                          UPVAL U29
      229 CAPTURE                          UPVAL U12
      230 CAPTURE                          UPVAL U27
      231 CAPTURE                          UPVAL U15
      232 CAPTURE                          UPVAL U26
      233 NEWCLOSURE                       R34 P6
      234 CAPTURE                          REF R24
      235 CAPTURE                          VAL R33
      236 NEWCLOSURE                       R35 P7
      237 CAPTURE                          REF R27
      238 NEWCLOSURE                       R36 P8
      239 CAPTURE                          REF R28
      240 NEWCLOSURE                       R37 P9
      241 CAPTURE                          REF R28
      242 NEWCLOSURE                       R38 P10
      243 CAPTURE                          REF R27
      244 CAPTURE                          UPVAL U30
      245 NEWCLOSURE                       R39 P11
      246 CAPTURE                          REF R27
      247 CAPTURE                          UPVAL U30
      248 NEWCLOSURE                       R40 P12
      249 CAPTURE                          REF R27
      250 CAPTURE                          UPVAL U30
      251 NEWCLOSURE                       R41 P13
      252 CAPTURE                          REF R27
      253 CAPTURE                          UPVAL U30
      254 DUPCLOSURE                       R42 K41 [PROTO_28]
      255 CAPTURE                          UPVAL U25
      256 DUPCLOSURE                       R43 K42 [PROTO_29]
      257 CAPTURE                          UPVAL U25
      258 DUPCLOSURE                       R44 K43 [PROTO_30]
      259 CAPTURE                          UPVAL U25
      260 NEWCLOSURE                       R45 P17
      261 CAPTURE                          UPVAL U31
      262 CAPTURE                          REF R27
      263 CAPTURE                          UPVAL U30
      264 NEWCLOSURE                       R46 P18
      265 CAPTURE                          UPVAL U31
      266 CAPTURE                          REF R27
      267 CAPTURE                          UPVAL U30
      268 NEWCLOSURE                       R47 P19
      269 CAPTURE                          UPVAL U30
      270 CAPTURE                          REF R27
      271 CAPTURE                          UPVAL U32
      272 NEWCLOSURE                       R48 P20
      273 CAPTURE                          UPVAL U30
      274 CAPTURE                          REF R27
      275 CAPTURE                          UPVAL U32
      276 NEWCLOSURE                       R49 P21
      277 CAPTURE                          UPVAL U30
      278 CAPTURE                          REF R27
      279 CAPTURE                          UPVAL U15
      280 CAPTURE                          UPVAL U32
      281 NEWCLOSURE                       R50 P22
      282 CAPTURE                          UPVAL U30
      283 CAPTURE                          REF R27
      284 CAPTURE                          UPVAL U32
      285 CAPTURE                          UPVAL U31
      286 NEWCLOSURE                       R51 P23
      287 CAPTURE                          UPVAL U32
      288 CAPTURE                          REF R27
      289 NEWCLOSURE                       R52 P24
      290 CAPTURE                          REF R27
      291 CAPTURE                          UPVAL U15
      292 CAPTURE                          UPVAL U30
      293 NEWCLOSURE                       R53 P25
      294 CAPTURE                          UPVAL U31
      295 CAPTURE                          REF R27
      296 CAPTURE                          UPVAL U30
      297 NEWCLOSURE                       R54 P26
      298 CAPTURE                          UPVAL U31
      299 CAPTURE                          REF R27
      300 CAPTURE                          UPVAL U30
      301 NEWCLOSURE                       R55 P27
      302 CAPTURE                          UPVAL U26
      303 CAPTURE                          VAL R13
      304 NEWCLOSURE                       R56 P28
      305 CAPTURE                          UPVAL U31
      306 CAPTURE                          REF R27
      307 CAPTURE                          UPVAL U30
      308 CAPTURE                          UPVAL U26
      309 NEWCLOSURE                       R57 P29
      310 CAPTURE                          UPVAL U25
      311 CAPTURE                          UPVAL U31
      312 CAPTURE                          REF R27
      313 CAPTURE                          UPVAL U30
      314 NEWCLOSURE                       R58 P30
      315 CAPTURE                          UPVAL U31
      316 CAPTURE                          REF R27
      317 CAPTURE                          UPVAL U30
      318 CAPTURE                          UPVAL U26
      319 NEWCLOSURE                       R59 P31
      320 CAPTURE                          UPVAL U31
      321 CAPTURE                          REF R27
      322 CAPTURE                          UPVAL U30
      323 DUPCLOSURE                       R60 K44 [PROTO_53]
      324 CAPTURE                          UPVAL U21
      325 NEWCLOSURE                       R61 P33
      326 CAPTURE                          UPVAL U31
      327 CAPTURE                          REF R27
      328 CAPTURE                          UPVAL U30
      329 CAPTURE                          UPVAL U25
      330 DUPCLOSURE                       R62 K45 [PROTO_55]
      331 CAPTURE                          UPVAL U25
      332 DUPCLOSURE                       R63 K46 [PROTO_57]
      333 CAPTURE                          UPVAL U26
      334 CAPTURE                          UPVAL U25
      335 NEWCLOSURE                       R64 P36
      336 CAPTURE                          VAL R62
      337 CAPTURE                          UPVAL U31
      338 CAPTURE                          REF R27
      339 CAPTURE                          UPVAL U30
      340 NEWCLOSURE                       R65 P37
      341 CAPTURE                          VAL R63
      342 CAPTURE                          UPVAL U31
      343 CAPTURE                          REF R27
      344 CAPTURE                          UPVAL U30
      345 CAPTURE                          VAL R62
      346 NEWCLOSURE                       R66 P38
      347 CAPTURE                          UPVAL U31
      348 CAPTURE                          REF R27
      349 CAPTURE                          UPVAL U30
      350 CAPTURE                          UPVAL U25
      351 DUPCLOSURE                       R67 K47 [PROTO_61]
      352 CAPTURE                          UPVAL U25
      353 NEWCLOSURE                       R68 P40
      354 CAPTURE                          UPVAL U31
      355 CAPTURE                          REF R27
      356 CAPTURE                          UPVAL U30
      357 NEWCLOSURE                       R69 P41
      358 CAPTURE                          UPVAL U33
      359 CAPTURE                          UPVAL U34
      360 CAPTURE                          UPVAL U31
      361 CAPTURE                          REF R27
      362 CAPTURE                          UPVAL U30
      363 NEWCLOSURE                       R70 P42
      364 CAPTURE                          VAL R51
      365 CAPTURE                          UPVAL U30
      366 NEWCLOSURE                       R71 P43
      367 CAPTURE                          VAL R51
      368 NEWCLOSURE                       R72 P44
      369 CAPTURE                          UPVAL U31
      370 CAPTURE                          REF R27
      371 CAPTURE                          UPVAL U30
      372 DUPCLOSURE                       R73 K48 [PROTO_68]
      373 NEWCLOSURE                       R74 P46
      374 CAPTURE                          UPVAL U31
      375 CAPTURE                          REF R27
      376 CAPTURE                          UPVAL U30
      377 CAPTURE                          UPVAL U25
      378 NEWCLOSURE                       R75 P47
      379 CAPTURE                          UPVAL U31
      380 CAPTURE                          REF R27
      381 CAPTURE                          UPVAL U30
      382 CAPTURE                          UPVAL U25
      383 NEWCLOSURE                       R76 P48
      384 CAPTURE                          UPVAL U31
      385 CAPTURE                          REF R27
      386 CAPTURE                          UPVAL U30
      387 CAPTURE                          UPVAL U25
      388 NEWCLOSURE                       R77 P49
      389 CAPTURE                          UPVAL U31
      390 CAPTURE                          REF R27
      391 CAPTURE                          UPVAL U30
      392 CAPTURE                          UPVAL U25
      393 NEWCLOSURE                       R78 P50
      394 CAPTURE                          UPVAL U31
      395 CAPTURE                          REF R27
      396 CAPTURE                          UPVAL U30
      397 CAPTURE                          UPVAL U25
      398 NEWCLOSURE                       R79 P51
      399 CAPTURE                          UPVAL U31
      400 CAPTURE                          REF R27
      401 CAPTURE                          UPVAL U30
      402 CAPTURE                          UPVAL U25
      403 NEWCLOSURE                       R80 P52
      404 CAPTURE                          UPVAL U31
      405 CAPTURE                          REF R27
      406 CAPTURE                          UPVAL U30
      407 CAPTURE                          UPVAL U25
      408 NEWCLOSURE                       R81 P53
      409 CAPTURE                          UPVAL U31
      410 CAPTURE                          REF R27
      411 CAPTURE                          UPVAL U30
      412 CAPTURE                          UPVAL U25
      413 NEWCLOSURE                       R82 P54
      414 CAPTURE                          UPVAL U31
      415 CAPTURE                          REF R27
      416 CAPTURE                          UPVAL U30
      417 CAPTURE                          UPVAL U25
      418 NEWCLOSURE                       R83 P55
      419 CAPTURE                          UPVAL U31
      420 CAPTURE                          REF R27
      421 CAPTURE                          UPVAL U30
      422 CAPTURE                          UPVAL U25
      423 NEWCLOSURE                       R84 P56
      424 CAPTURE                          UPVAL U31
      425 CAPTURE                          REF R27
      426 CAPTURE                          UPVAL U30
      427 NEWCLOSURE                       R85 P57
      428 CAPTURE                          UPVAL U31
      429 CAPTURE                          REF R27
      430 CAPTURE                          UPVAL U30
      431 CAPTURE                          UPVAL U25
      432 NEWCLOSURE                       R86 P58
      433 CAPTURE                          UPVAL U31
      434 CAPTURE                          REF R27
      435 CAPTURE                          UPVAL U30
      436 CAPTURE                          UPVAL U25
      437 NEWCLOSURE                       R87 P59
      438 CAPTURE                          UPVAL U31
      439 CAPTURE                          REF R27
      440 CAPTURE                          UPVAL U30
      441 CAPTURE                          UPVAL U25
      442 DUPCLOSURE                       R88 K49 [PROTO_84]
      443 CAPTURE                          UPVAL U29
      444 CAPTURE                          UPVAL U35
      445 NEWCLOSURE                       R89 P61
      446 CAPTURE                          UPVAL U31
      447 CAPTURE                          REF R27
      448 CAPTURE                          UPVAL U30
      449 DUPCLOSURE                       R90 K50 [PROTO_86]
      450 DUPCLOSURE                       R91 K51 [PROTO_87]
      451 NEWCLOSURE                       R92 P64
      452 CAPTURE                          UPVAL U31
      453 CAPTURE                          REF R27
      454 CAPTURE                          UPVAL U30
      455 CAPTURE                          VAL R91
      456 DUPCLOSURE                       R93 K52 [PROTO_89]
      457 CAPTURE                          VAL R90
      458 CAPTURE                          VAL R91
      459 CAPTURE                          UPVAL U25
      460 NEWCLOSURE                       R94 P66
      461 CAPTURE                          UPVAL U31
      462 CAPTURE                          REF R27
      463 CAPTURE                          UPVAL U30
      464 CAPTURE                          UPVAL U25
      465 NEWCLOSURE                       R95 P67
      466 CAPTURE                          UPVAL U31
      467 CAPTURE                          REF R27
      468 CAPTURE                          UPVAL U30
      469 CAPTURE                          UPVAL U25
      470 NEWCLOSURE                       R96 P68
      471 CAPTURE                          UPVAL U31
      472 CAPTURE                          REF R27
      473 CAPTURE                          UPVAL U30
      474 CAPTURE                          UPVAL U25
      475 NEWCLOSURE                       R97 P69
      476 CAPTURE                          UPVAL U31
      477 CAPTURE                          REF R27
      478 CAPTURE                          UPVAL U30
      479 CAPTURE                          UPVAL U25
      480 NEWCLOSURE                       R98 P70
      481 CAPTURE                          UPVAL U31
      482 CAPTURE                          REF R27
      483 CAPTURE                          UPVAL U30
      484 NEWCLOSURE                       R99 P71
      485 CAPTURE                          UPVAL U31
      486 CAPTURE                          REF R27
      487 CAPTURE                          UPVAL U30
      488 CAPTURE                          UPVAL U25
      489 NEWCLOSURE                       R100 P72
      490 CAPTURE                          UPVAL U31
      491 CAPTURE                          REF R27
      492 CAPTURE                          UPVAL U30
      493 CAPTURE                          UPVAL U25
      494 NEWCLOSURE                       R101 P73
      495 CAPTURE                          UPVAL U31
      496 CAPTURE                          REF R27
      497 CAPTURE                          UPVAL U30
      498 CAPTURE                          UPVAL U25
      499 NEWCLOSURE                       R102 P74
      500 CAPTURE                          UPVAL U31
      501 CAPTURE                          REF R27
      502 CAPTURE                          UPVAL U30
      503 NEWCLOSURE                       R103 P75
      504 CAPTURE                          UPVAL U31
      505 CAPTURE                          REF R27
      506 CAPTURE                          UPVAL U30
      507 NEWCLOSURE                       R104 P76
      508 CAPTURE                          VAL R3
      509 NEWCLOSURE                       R105 P77
      510 CAPTURE                          UPVAL U26
      511 CAPTURE                          VAL R3
      512 NEWCLOSURE                       R106 P78
      513 CAPTURE                          VAL R7
      514 CAPTURE                          UPVAL U26
      515 NEWCLOSURE                       R107 P79
      516 CAPTURE                          UPVAL U36
      517 CAPTURE                          UPVAL U37
      518 CAPTURE                          UPVAL U26
      519 CAPTURE                          VAL R3
      520 CAPTURE                          UPVAL U38
      521 CAPTURE                          VAL R7
      522 NEWCLOSURE                       R108 P80
      523 CAPTURE                          UPVAL U31
      524 CAPTURE                          REF R27
      525 CAPTURE                          UPVAL U30
      526 CAPTURE                          UPVAL U25
      527 NEWCLOSURE                       R109 P81
      528 CAPTURE                          UPVAL U31
      529 CAPTURE                          REF R28
      530 CAPTURE                          REF R27
      531 CAPTURE                          UPVAL U30
      532 NEWCLOSURE                       R110 P82
      533 CAPTURE                          UPVAL U31
      534 CAPTURE                          REF R27
      535 CAPTURE                          UPVAL U30
      536 CAPTURE                          UPVAL U25
      537 CAPTURE                          REF R28
      538 NEWCLOSURE                       R111 P83
      539 CAPTURE                          VAL R9
      540 NEWCLOSURE                       R112 P84
      541 CAPTURE                          VAL R9
      542 NEWCLOSURE                       R113 P85
      543 CAPTURE                          VAL R9
      544 NEWCLOSURE                       R114 P86
      545 CAPTURE                          VAL R9
      546 NEWCLOSURE                       R115 P87
      547 CAPTURE                          VAL R9
      548 NEWCLOSURE                       R116 P88
      549 CAPTURE                          VAL R9
      550 NEWCLOSURE                       R117 P89
      551 CAPTURE                          VAL R11
      552 NEWCLOSURE                       R118 P90
      553 CAPTURE                          VAL R11
      554 NEWCLOSURE                       R119 P91
      555 CAPTURE                          UPVAL U26
      556 CAPTURE                          VAL R5
      557 CAPTURE                          UPVAL U39
      558 CAPTURE                          UPVAL U33
      559 CAPTURE                          VAL R49
      560 NEWCLOSURE                       R120 P92
      561 CAPTURE                          UPVAL U26
      562 CAPTURE                          VAL R5
      563 NEWCLOSURE                       R121 P93
      564 CAPTURE                          UPVAL U31
      565 CAPTURE                          REF R28
      566 CAPTURE                          REF R27
      567 CAPTURE                          UPVAL U30
      568 NEWCLOSURE                       R122 P94
      569 CAPTURE                          UPVAL U31
      570 CAPTURE                          REF R28
      571 CAPTURE                          REF R27
      572 CAPTURE                          UPVAL U30
      573 CAPTURE                          UPVAL U26
      574 CAPTURE                          UPVAL U25
      575 NEWCLOSURE                       R123 P95
      576 CAPTURE                          REF R23
      577 CAPTURE                          UPVAL U40
      578 CAPTURE                          UPVAL U41
      579 NEWCLOSURE                       R124 P96
      580 CAPTURE                          UPVAL U31
      581 CAPTURE                          REF R28
      582 CAPTURE                          REF R27
      583 CAPTURE                          UPVAL U30
      584 NEWCLOSURE                       R125 P97
      585 CAPTURE                          UPVAL U31
      586 CAPTURE                          REF R28
      587 CAPTURE                          REF R27
      588 CAPTURE                          UPVAL U30
      589 CAPTURE                          UPVAL U40
      590 NEWCLOSURE                       R126 P98
      591 CAPTURE                          UPVAL U31
      592 CAPTURE                          REF R28
      593 CAPTURE                          REF R27
      594 CAPTURE                          UPVAL U30
      595 CAPTURE                          UPVAL U26
      596 CAPTURE                          UPVAL U25
      597 NEWCLOSURE                       R127 P99
      598 CAPTURE                          UPVAL U31
      599 CAPTURE                          REF R27
      600 CAPTURE                          UPVAL U30
      601 NEWCLOSURE                       R128 P100
      602 CAPTURE                          UPVAL U31
      603 CAPTURE                          REF R27
      604 CAPTURE                          UPVAL U30
      605 NEWCLOSURE                       R129 P101
      606 CAPTURE                          UPVAL U31
      607 CAPTURE                          REF R27
      608 CAPTURE                          UPVAL U30
      609 DUPCLOSURE                       R130 K53 [PROTO_135]
      610 CAPTURE                          UPVAL U32
      611 CAPTURE                          UPVAL U31
      612 NEWCLOSURE                       R131 P103
      613 CAPTURE                          UPVAL U31
      614 CAPTURE                          REF R27
      615 CAPTURE                          UPVAL U30
      616 CAPTURE                          UPVAL U25
      617 NEWCLOSURE                       R132 P104
      618 CAPTURE                          UPVAL U32
      619 CAPTURE                          REF R28
      620 CAPTURE                          UPVAL U31
      621 NEWCLOSURE                       R133 P105
      622 CAPTURE                          UPVAL U32
      623 CAPTURE                          REF R28
      624 CAPTURE                          UPVAL U31
      625 NEWCLOSURE                       R134 P106
      626 CAPTURE                          UPVAL U32
      627 CAPTURE                          REF R28
      628 CAPTURE                          UPVAL U31
      629 NEWCLOSURE                       R135 P107
      630 CAPTURE                          UPVAL U31
      631 CAPTURE                          REF R28
      632 CAPTURE                          REF R27
      633 CAPTURE                          UPVAL U30
      634 CAPTURE                          UPVAL U25
      635 NEWCLOSURE                       R136 P108
      636 CAPTURE                          UPVAL U31
      637 CAPTURE                          REF R28
      638 CAPTURE                          REF R27
      639 CAPTURE                          UPVAL U30
      640 CAPTURE                          UPVAL U25
      641 NEWCLOSURE                       R137 P109
      642 CAPTURE                          UPVAL U31
      643 CAPTURE                          REF R28
      644 CAPTURE                          REF R27
      645 CAPTURE                          UPVAL U30
      646 CAPTURE                          UPVAL U25
      647 NEWCLOSURE                       R138 P110
      648 CAPTURE                          UPVAL U31
      649 CAPTURE                          REF R28
      650 CAPTURE                          REF R27
      651 CAPTURE                          UPVAL U30
      652 NEWCLOSURE                       R139 P111
      653 CAPTURE                          UPVAL U31
      654 CAPTURE                          REF R28
      655 CAPTURE                          REF R27
      656 CAPTURE                          UPVAL U30
      657 CAPTURE                          UPVAL U26
      658 CAPTURE                          UPVAL U25
      659 NEWCLOSURE                       R140 P112
      660 CAPTURE                          UPVAL U31
      661 CAPTURE                          REF R28
      662 CAPTURE                          REF R27
      663 CAPTURE                          UPVAL U30
      664 NEWCLOSURE                       R141 P113
      665 CAPTURE                          REF R23
      666 NEWCLOSURE                       R142 P114
      667 CAPTURE                          UPVAL U31
      668 CAPTURE                          REF R27
      669 CAPTURE                          UPVAL U30
      670 CAPTURE                          UPVAL U25
      671 DUPCLOSURE                       R143 K54 [PROTO_149]
      672 CAPTURE                          UPVAL U30
      673 CAPTURE                          UPVAL U32
      674 CAPTURE                          UPVAL U31
      675 NEWCLOSURE                       R144 P116
      676 CAPTURE                          UPVAL U31
      677 CAPTURE                          REF R27
      678 CAPTURE                          UPVAL U30
      679 CAPTURE                          UPVAL U25
      680 NEWCLOSURE                       R145 P117
      681 CAPTURE                          UPVAL U31
      682 CAPTURE                          UPVAL U32
      683 CAPTURE                          REF R28
      684 CAPTURE                          UPVAL U42
      685 NEWCLOSURE                       R146 P118
      686 CAPTURE                          UPVAL U31
      687 CAPTURE                          REF R27
      688 CAPTURE                          UPVAL U30
      689 CAPTURE                          UPVAL U25
      690 NEWCLOSURE                       R147 P119
      691 CAPTURE                          UPVAL U31
      692 CAPTURE                          REF R27
      693 CAPTURE                          UPVAL U30
      694 CAPTURE                          UPVAL U25
      695 NEWCLOSURE                       R148 P120
      696 CAPTURE                          UPVAL U31
      697 CAPTURE                          REF R27
      698 CAPTURE                          UPVAL U30
      699 CAPTURE                          UPVAL U25
      700 NEWCLOSURE                       R149 P121
      701 CAPTURE                          UPVAL U31
      702 CAPTURE                          REF R27
      703 CAPTURE                          UPVAL U30
      704 CAPTURE                          UPVAL U25
      705 NEWCLOSURE                       R150 P122
      706 CAPTURE                          UPVAL U31
      707 CAPTURE                          REF R27
      708 CAPTURE                          UPVAL U30
      709 NEWCLOSURE                       R151 P123
      710 CAPTURE                          UPVAL U31
      711 CAPTURE                          REF R27
      712 CAPTURE                          UPVAL U30
      713 CAPTURE                          UPVAL U25
      714 NEWCLOSURE                       R152 P124
      715 CAPTURE                          UPVAL U26
      716 CAPTURE                          VAL R11
      717 NEWCLOSURE                       R153 P125
      718 CAPTURE                          UPVAL U26
      719 CAPTURE                          VAL R11
      720 NEWCLOSURE                       R154 P126
      721 CAPTURE                          UPVAL U26
      722 CAPTURE                          VAL R11
      723 NEWCLOSURE                       R155 P127
      724 CAPTURE                          UPVAL U26
      725 CAPTURE                          VAL R11
      726 NEWCLOSURE                       R156 P128
      727 CAPTURE                          UPVAL U26
      728 CAPTURE                          VAL R11
      729 NEWCLOSURE                       R157 P129
      730 CAPTURE                          UPVAL U29
      731 CAPTURE                          REF R23
      732 DUPCLOSURE                       R158 K55 [PROTO_165]
      733 CAPTURE                          UPVAL U30
      734 CAPTURE                          UPVAL U25
      735 NEWCLOSURE                       R159 P131
      736 CAPTURE                          UPVAL U31
      737 CAPTURE                          REF R28
      738 CAPTURE                          REF R27
      739 CAPTURE                          UPVAL U30
      740 NEWCLOSURE                       R160 P132
      741 CAPTURE                          UPVAL U31
      742 CAPTURE                          REF R27
      743 CAPTURE                          UPVAL U30
      744 NEWCLOSURE                       R161 P133
      745 CAPTURE                          UPVAL U26
      746 CAPTURE                          VAL R15
      747 DUPCLOSURE                       R162 K56 [PROTO_170]
      748 CAPTURE                          UPVAL U30
      749 CAPTURE                          UPVAL U32
      750 CAPTURE                          UPVAL U31
      751 CAPTURE                          UPVAL U25
      752 DUPCLOSURE                       R163 K57 [PROTO_171]
      753 NEWCLOSURE                       R164 P136
      754 CAPTURE                          UPVAL U31
      755 CAPTURE                          REF R28
      756 CAPTURE                          REF R27
      757 CAPTURE                          UPVAL U30
      758 MOVE                             R165 R29
      759 GETUPVAL                         R166 10
      760 LOADK                            R167 K58 ["Frame"]
      761 DUPTABLE                         R168 K60 [{"Size"}]
      762 GETIMPORT                        R169 K63 [UDim2.fromScale]
      764 LOADN                            R170 1
      765 LOADN                            R171 1
      766 CALL                             R169 2 1
      767 SETTABLEKS                       R169 R168 K59 ["Size"]
      769 DUPTABLE                         R169 K66 [{"UIListLayout", "MainView"}]
      770 GETUPVAL                         R170 10
      771 LOADK                            R171 K64 ["UIListLayout"]
      772 DUPTABLE                         R172 K68 [{"FillDirection"}]
      773 GETIMPORT                        R173 K71 [Enum.FillDirection.Vertical]
      775 SETTABLEKS                       R173 R172 K67 ["FillDirection"]
      777 CALL                             R170 2 1
      778 SETTABLEKS                       R170 R169 K64 ["UIListLayout"]
      780 GETUPVAL                         R170 10
      781 GETUPVAL                         R171 43
      782 CALL                             R170 1 1
      783 SETTABLEKS                       R170 R169 K65 ["MainView"]
      785 CALL                             R166 3 -1
      786 CALL                             R165 -1 0
      787 NEWTABLE                         R165 256 0
      789 SETTABLEKS                       R29 R165 K72 ["render"]
      791 SETTABLEKS                       R24 R165 K25 ["tools"]
      793 SETTABLEKS                       R33 R165 K73 ["invokeTool"]
      795 SETTABLEKS                       R34 R165 K74 ["callTool"]
      797 SETTABLEKS                       R30 R165 K75 ["typeText"]
      799 SETTABLEKS                       R31 R165 K76 ["getCurrentConversationThread"]
      801 SETTABLEKS                       R35 R165 K77 ["getContainer"]
      803 SETTABLEKS                       R36 R165 K78 ["getGuiRoot"]
      805 SETTABLEKS                       R37 R165 K79 ["getGuiByTitle"]
      807 SETTABLEKS                       R38 R165 K80 ["queryByTestId"]
      809 SETTABLEKS                       R39 R165 K81 ["getByTestId"]
      811 SETTABLEKS                       R40 R165 K82 ["queryAllByTestId"]
      813 SETTABLEKS                       R41 R165 K83 ["getAllByTestId"]
      815 SETTABLEKS                       R42 R165 K84 ["clickButton"]
      817 SETTABLEKS                       R43 R165 K85 ["mouseEnter"]
      819 SETTABLEKS                       R44 R165 K86 ["mouseLeave"]
      821 SETTABLEKS                       R46 R165 K87 ["getTextBox"]
      823 SETTABLEKS                       R47 R165 K88 ["getMessageScrollArea"]
      825 SETTABLEKS                       R48 R165 K89 ["getContainingMessageWidget"]
      827 SETTABLEKS                       R49 R165 K90 ["getContainingContentWidget"]
      829 SETTABLEKS                       R50 R165 K91 ["getMessageActionsWidget"]
      831 SETTABLEKS                       R52 R165 K92 ["getTextObjectWithMessage"]
      833 SETTABLEKS                       R25 R165 K93 ["getClipboardTextAtIndex"]
      835 SETTABLEKS                       R32 R165 K94 ["getToolResults"]
      837 SETTABLEKS                       R63 R165 K95 ["typeInTextBox"]
      839 SETTABLEKS                       R62 R165 K96 ["enterInTextBox"]
      841 SETTABLEKS                       R56 R165 K97 ["focusTextBox"]
      843 SETTABLEKS                       R57 R165 K98 ["setInputText"]
      845 SETTABLEKS                       R58 R165 K99 ["setCursorPosition"]
      847 SETTABLEKS                       R59 R165 K100 ["getInputScrollArea"]
      849 SETTABLEKS                       R60 R165 K101 ["printScreen"]
      851 SETTABLEKS                       R61 R165 K102 ["clickStopGenerationButton"]
      853 SETTABLEKS                       R64 R165 K103 ["enterTextBox"]
      855 SETTABLEKS                       R65 R165 K104 ["enterUserMessage"]
      857 SETTABLEKS                       R66 R165 K105 ["pressKeyInInput"]
      859 SETTABLEKS                       R67 R165 K106 ["setKeyDown"]
      861 SETTABLEKS                       R68 R165 K107 ["isInputEnabled"]
      863 SETTABLEKS                       R69 R165 K108 ["waitForInputState"]
      865 SETTABLEKS                       R70 R165 K109 ["lastUserTextMatches"]
      867 SETTABLEKS                       R71 R165 K110 ["getMessageCount"]
      869 SETTABLEKS                       R72 R165 K111 ["isResponding"]
      871 SETTABLEKS                       R119 R165 K112 ["setExternalInputOverride"]
      873 SETTABLEKS                       R120 R165 K113 ["clearExternalInputOverride"]
      875 SETTABLEKS                       R108 R165 K114 ["clickSettingsButton"]
      877 SETTABLEKS                       R109 R165 K115 ["getSettingsContent"]
      879 SETTABLEKS                       R121 R165 K116 ["getProviderCheckbox"]
      881 SETTABLEKS                       R122 R165 K117 ["clickProviderCheckbox"]
      883 SETTABLEKS                       R123 R165 K118 ["isProviderCheckboxChecked"]
      885 SETTABLEKS                       R124 R165 K119 ["getModelPickerDropdown"]
      887 SETTABLEKS                       R125 R165 K120 ["getSelectedModelFromPicker"]
      889 SETTABLEKS                       R126 R165 K121 ["selectModelFromPicker"]
      891 SETTABLEKS                       R135 R165 K122 ["clickEditAPIKeyButton"]
      893 SETTABLEKS                       R136 R165 K123 ["clickSaveAPIKeyButton"]
      895 SETTABLEKS                       R137 R165 K124 ["clickCancelAPIKeyButton"]
      897 SETTABLEKS                       R138 R165 K125 ["getAPIKeyInputText"]
      899 SETTABLEKS                       R139 R165 K126 ["setAPIKeyInputText"]
      901 SETTABLEKS                       R140 R165 K127 ["getDisplayedAPIKey"]
      903 SETTABLEKS                       R141 R165 K128 ["getAPIKeySetting"]
      905 SETTABLEKS                       R128 R165 K129 ["hasFooterText"]
      907 SETTABLEKS                       R129 R165 K130 ["hasFooterIcon"]
      909 SETTABLEKS                       R130 R165 K131 ["getToolMenuView"]
      911 SETTABLEKS                       R131 R165 K132 ["clickServerManagementButton"]
      913 SETTABLEKS                       R132 R165 K133 ["getManageIntegrationsDialog"]
      915 SETTABLEKS                       R133 R165 K134 ["getIntegrationItemDialog"]
      917 SETTABLEKS                       R134 R165 K135 ["getIntegrationMenuEmptyState"]
      919 SETTABLEKS                       R143 R165 K136 ["getIntegrationItemForLabel"]
      921 SETTABLEKS                       R142 R165 K137 ["clickIntegrationItemActionsToggle"]
      923 SETTABLEKS                       R144 R165 K138 ["clickIntegrationItemActionsOverflowButton"]
      925 SETTABLEKS                       R145 R165 K139 ["getIntegrationItemActionsOverflowContent"]
      927 SETTABLEKS                       R88 R165 K140 ["throwMarkdownParserError"]
      929 SETTABLEKS                       R89 R165 K141 ["getCarousel"]
      931 SETTABLEKS                       R90 R165 K142 ["getCarouselItem"]
      933 SETTABLEKS                       R92 R165 K143 ["getSelectedCarouselItem"]
      935 SETTABLEKS                       R93 R165 K144 ["clickCarouselItem"]
      937 SETTABLEKS                       R146 R165 K145 ["clickAlertCloseButton"]
      939 SETTABLEKS                       R147 R165 K146 ["clickAlertContinueButton"]
      941 SETTABLEKS                       R148 R165 K147 ["clickToolConfirmationAcceptButton"]
      943 SETTABLEKS                       R149 R165 K148 ["clickToolConfirmationRejectButton"]
      945 SETTABLEKS                       R150 R165 K149 ["getToolConfirmationAlwaysAcceptText"]
      947 SETTABLEKS                       R151 R165 K150 ["clickToolConfirmationAlwaysAcceptButton"]
      949 SETTABLEKS                       R74 R165 K151 ["clickRunCodeExpandButton"]
      951 SETTABLEKS                       R94 R165 K152 ["clickCopyButton"]
      953 SETTABLEKS                       R95 R165 K153 ["clickRunButton"]
      955 SETTABLEKS                       R96 R165 K154 ["clickStopButton"]
      957 SETTABLEKS                       R97 R165 K155 ["clickImageExpandButton"]
      959 SETTABLEKS                       R98 R165 K156 ["getImageContentImage"]
      961 SETTABLEKS                       R75 R165 K157 ["clickAssetVariationExpandButton"]
      963 SETTABLEKS                       R76 R165 K158 ["clickMaterialGenExpandButton"]
      965 SETTABLEKS                       R77 R165 K159 ["clickMaterialGenStudsPerTileValueBar"]
      967 SETTABLEKS                       R78 R165 K160 ["clickMaterialGenOrganicPatternToggle"]
      969 SETTABLEKS                       R79 R165 K161 ["clickMeshGenExpandButton"]
      971 SETTABLEKS                       R80 R165 K162 ["clickMeshGenRegenerateButton"]
      973 SETTABLEKS                       R81 R165 K163 ["clickMeshGenCancelGenerationButton"]
      975 SETTABLEKS                       R82 R165 K164 ["clickMeshGenPublishButton"]
      977 SETTABLEKS                       R83 R165 K165 ["clickMeshGenInsertButton"]
      979 SETTABLEKS                       R84 R165 K166 ["getMeshGenPreviewImage"]
      981 SETTABLEKS                       R85 R165 K167 ["clickMeshGenLastPreviewButton"]
      983 SETTABLEKS                       R86 R165 K168 ["clickMeshGenNextPreviewButton"]
      985 SETTABLEKS                       R87 R165 K169 ["clickMeshGenSelectionToggle"]
      987 SETTABLEKS                       R99 R165 K170 ["clickRetryButton"]
      989 SETTABLEKS                       R100 R165 K171 ["clickThumbsUpButton"]
      991 SETTABLEKS                       R101 R165 K172 ["clickThumbsDownButton"]
      993 SETTABLEKS                       R102 R165 K173 ["getThumbsUpButtonIcon"]
      995 SETTABLEKS                       R103 R165 K174 ["getThumbsDownButtonIcon"]
      997 SETTABLEKS                       R104 R165 K175 ["getConversation"]
      999 SETTABLEKS                       R105 R165 K176 ["addConversation"]
     1001 SETTABLEKS                       R106 R165 K177 ["setThreadId"]
     1003 SETTABLEKS                       R107 R165 K178 ["applyConversation"]
     1005 SETTABLEKS                       R110 R165 K179 ["clearConversation"]
     1007 SETTABLEKS                       R111 R165 K180 ["wasToolInvoked"]
     1009 SETTABLEKS                       R112 R165 K181 ["overrideMethodWithError"]
     1011 SETTABLEKS                       R117 R165 K182 ["wasRequestHandlerCalled"]
     1013 SETTABLEKS                       R118 R165 K183 ["getLastRequestField"]
     1015 SETTABLEKS                       R113 R165 K184 ["getMultiplexedClient"]
     1017 SETTABLEKS                       R114 R165 K185 ["getClientStatusForIdentifier"]
     1019 SETTABLEKS                       R115 R165 K186 ["closeAllClients"]
     1021 SETTABLEKS                       R116 R165 K187 ["getToolAlias"]
     1023 SETTABLEKS                       R152 R165 K188 ["streamEvent"]
     1025 SETTABLEKS                       R153 R165 K189 ["addToolCall"]
     1027 SETTABLEKS                       R154 R165 K190 ["streamText"]
     1029 SETTABLEKS                       R155 R165 K191 ["startMessage"]
     1031 SETTABLEKS                       R156 R165 K192 ["sendMessageDeltaAndStop"]
     1033 SETTABLEKS                       R157 R165 K193 ["mockEventLoggerCall"]
     1035 SETTABLEKS                       R158 R165 K194 ["clickTextWithin"]
     1037 SETTABLEKS                       R53 R165 K195 ["getModelQualityWarning"]
     1039 SETTABLEKS                       R55 R165 K196 ["setModelQuality"]
     1041 SETTABLEKS                       R54 R165 K197 ["getGenerationIndicator"]
     1043 SETTABLEKS                       R159 R165 K198 ["getSlashCommandMenu"]
     1045 SETTABLEKS                       R160 R165 K199 ["getSlashCommandItems"]
     1047 SETTABLEKS                       R161 R165 K200 ["setOptions"]
     1049 SETTABLEKS                       R162 R165 K201 ["clickOptionWithDisplayName"]
     1051 SETTABLEKS                       R164 R165 K202 ["getSelectedThreadButton"]
     1053 GETTABLEKS                       R166 R19 K203 ["setState"]
     1055 SETTABLEKS                       R166 R165 K204 ["setExternalServerState"]
     1057 GETTABLEKS                       R166 R19 K205 ["getState"]
     1059 SETTABLEKS                       R166 R165 K206 ["getExternalServerState"]
     1061 GETTABLEKS                       R166 R19 K207 ["getStartCallCount"]
     1063 SETTABLEKS                       R166 R165 K208 ["getExternalServerStartCallCount"]
     1065 GETTABLEKS                       R166 R19 K209 ["getStopCallCount"]
     1067 SETTABLEKS                       R166 R165 K210 ["getExternalServerStopCallCount"]
     1069 CLOSEUPVALS                      R0
     1070 RETURN                           R165 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["Selection"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R0 K11 ["Util"]
       23 GETTABLEKS                       R4 R5 K12 ["ContentWidgetRegistry"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R6 R0 K13 ["Parent"]
       30 GETTABLEKS                       R5 R6 K14 ["DMNetworking"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R7 R0 K13 ["Parent"]
       37 GETTABLEKS                       R6 R7 K15 ["Dash"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K10 [require]
       42 GETTABLEKS                       R9 R0 K16 ["Guest"]
       44 GETTABLEKS                       R8 R9 K17 ["Environment"]
       46 GETTABLEKS                       R7 R8 K18 ["EventLogger"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R9 R0 K16 ["Guest"]
       53 GETTABLEKS                       R8 R9 K17 ["Environment"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K10 [require]
       58 GETTABLEKS                       R10 R0 K19 ["Hooks"]
       60 GETTABLEKS                       R9 R10 K20 ["ExternalHooks"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K10 [require]
       65 GETTABLEKS                       R12 R0 K21 ["Components"]
       67 GETTABLEKS                       R11 R12 K22 ["Contexts"]
       69 GETTABLEKS                       R10 R11 K23 ["ExternalServerContext"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K10 [require]
       74 GETTABLEKS                       R12 R0 K13 ["Parent"]
       76 GETTABLEKS                       R11 R12 K24 ["Foundation"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K10 [require]
       81 GETTABLEKS                       R13 R0 K13 ["Parent"]
       83 GETTABLEKS                       R12 R13 K25 ["Framework"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K10 [require]
       88 GETTABLEKS                       R15 R0 K21 ["Components"]
       90 GETTABLEKS                       R14 R15 K22 ["Contexts"]
       92 GETTABLEKS                       R13 R14 K26 ["InputStateContext"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K10 [require]
       97 GETTABLEKS                       R15 R0 K16 ["Guest"]
       99 GETTABLEKS                       R14 R15 K27 ["JsonEnvironment"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K10 [require]
      104 GETTABLEKS                       R17 R0 K21 ["Components"]
      106 GETTABLEKS                       R16 R17 K22 ["Contexts"]
      108 GETTABLEKS                       R15 R16 K28 ["LLMProviderSelectionContext"]
      110 CALL                             R14 1 1
      111 GETIMPORT                        R15 K10 [require]
      113 GETTABLEKS                       R17 R0 K21 ["Components"]
      115 GETTABLEKS                       R16 R17 K29 ["MainView"]
      117 CALL                             R15 1 1
      118 GETIMPORT                        R16 K10 [require]
      120 GETTABLEKS                       R18 R0 K11 ["Util"]
      122 GETTABLEKS                       R17 R18 K30 ["MessageLayoutOrder"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K10 [require]
      127 GETTABLEKS                       R19 R0 K13 ["Parent"]
      129 GETTABLEKS                       R18 R19 K31 ["ModelContextProtocol"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K10 [require]
      134 GETTABLEKS                       R21 R0 K21 ["Components"]
      136 GETTABLEKS                       R20 R21 K22 ["Contexts"]
      138 GETTABLEKS                       R19 R20 K32 ["ModelQualityContext"]
      140 CALL                             R18 1 1
      141 GETIMPORT                        R19 K10 [require]
      143 GETTABLEKS                       R22 R0 K21 ["Components"]
      145 GETTABLEKS                       R21 R22 K22 ["Contexts"]
      147 GETTABLEKS                       R20 R21 K33 ["OptionsContext"]
      149 CALL                             R19 1 1
      150 GETIMPORT                        R20 K10 [require]
      152 GETTABLEKS                       R23 R0 K21 ["Components"]
      154 GETTABLEKS                       R22 R23 K34 ["APIKeyManagement"]
      156 GETTABLEKS                       R21 R22 K35 ["ProviderModels"]
      158 CALL                             R20 1 1
      159 GETIMPORT                        R21 K10 [require]
      161 GETTABLEKS                       R23 R0 K13 ["Parent"]
      163 GETTABLEKS                       R22 R23 K36 ["React"]
      165 CALL                             R21 1 1
      166 GETIMPORT                        R22 K10 [require]
      168 GETTABLEKS                       R24 R0 K13 ["Parent"]
      170 GETTABLEKS                       R23 R24 K37 ["ReactUtils"]
      172 CALL                             R22 1 1
      173 GETIMPORT                        R23 K10 [require]
      175 GETTABLEKS                       R26 R0 K11 ["Util"]
      177 GETTABLEKS                       R25 R26 K38 ["Serializer"]
      179 GETTABLEKS                       R24 R25 K39 ["SerializerRegistry"]
      181 CALL                             R23 1 1
      182 GETIMPORT                        R24 K10 [require]
      184 GETTABLEKS                       R27 R0 K21 ["Components"]
      186 GETTABLEKS                       R26 R27 K22 ["Contexts"]
      188 GETTABLEKS                       R25 R26 K40 ["SessionIdContext"]
      190 CALL                             R24 1 1
      191 GETIMPORT                        R25 K10 [require]
      193 GETTABLEKS                       R28 R0 K41 ["tests"]
      195 GETTABLEKS                       R27 R28 K42 ["TestUtils"]
      197 GETTABLEKS                       R26 R27 K43 ["TagSearch"]
      199 CALL                             R25 1 1
      200 GETIMPORT                        R26 K10 [require]
      202 GETTABLEKS                       R28 R0 K11 ["Util"]
      204 GETTABLEKS                       R27 R28 K44 ["TestIds"]
      206 CALL                             R26 1 1
      207 GETIMPORT                        R27 K10 [require]
      209 GETTABLEKS                       R30 R0 K41 ["tests"]
      211 GETTABLEKS                       R29 R30 K42 ["TestUtils"]
      213 GETTABLEKS                       R28 R29 K45 ["ToolTestUtils"]
      215 CALL                             R27 1 1
      216 GETIMPORT                        R28 K10 [require]
      218 GETTABLEKS                       R30 R0 K46 ["Tools"]
      220 GETTABLEKS                       R29 R30 K47 ["ToolTypes"]
      222 CALL                             R28 1 1
      223 GETIMPORT                        R29 K10 [require]
      225 GETTABLEKS                       R30 R0 K48 ["Types"]
      227 CALL                             R29 1 1
      228 GETIMPORT                        R30 K10 [require]
      230 GETTABLEKS                       R32 R0 K21 ["Components"]
      232 GETTABLEKS                       R31 R32 K49 ["UIToolRegistry"]
      234 CALL                             R30 1 1
      235 GETIMPORT                        R31 K10 [require]
      237 GETTABLEKS                       R34 R0 K21 ["Components"]
      239 GETTABLEKS                       R33 R34 K22 ["Contexts"]
      241 GETTABLEKS                       R32 R33 K50 ["WindowInputContext"]
      243 CALL                             R31 1 1
      244 GETIMPORT                        R32 K10 [require]
      246 GETTABLEKS                       R36 R0 K41 ["tests"]
      248 GETTABLEKS                       R35 R36 K42 ["TestUtils"]
      250 GETTABLEKS                       R34 R35 K51 ["setup"]
      252 GETTABLEKS                       R33 R34 K52 ["createMockConversationContext"]
      254 CALL                             R32 1 1
      255 GETIMPORT                        R33 K10 [require]
      257 GETTABLEKS                       R37 R0 K41 ["tests"]
      259 GETTABLEKS                       R36 R37 K42 ["TestUtils"]
      261 GETTABLEKS                       R35 R36 K51 ["setup"]
      263 GETTABLEKS                       R34 R35 K53 ["createMockExternalServerContext"]
      265 CALL                             R33 1 1
      266 GETIMPORT                        R34 K10 [require]
      268 GETTABLEKS                       R38 R0 K41 ["tests"]
      270 GETTABLEKS                       R37 R38 K42 ["TestUtils"]
      272 GETTABLEKS                       R36 R37 K51 ["setup"]
      274 GETTABLEKS                       R35 R36 K54 ["createMockInputStateContext"]
      276 CALL                             R34 1 1
      277 GETIMPORT                        R35 K10 [require]
      279 GETTABLEKS                       R39 R0 K41 ["tests"]
      281 GETTABLEKS                       R38 R39 K42 ["TestUtils"]
      283 GETTABLEKS                       R37 R38 K51 ["setup"]
      285 GETTABLEKS                       R36 R37 K55 ["createMockLLMPackageContext"]
      287 CALL                             R35 1 1
      288 GETIMPORT                        R36 K10 [require]
      290 GETTABLEKS                       R40 R0 K41 ["tests"]
      292 GETTABLEKS                       R39 R40 K42 ["TestUtils"]
      294 GETTABLEKS                       R38 R39 K51 ["setup"]
      296 GETTABLEKS                       R37 R38 K56 ["createMockMcpClientContext"]
      298 CALL                             R36 1 1
      299 GETIMPORT                        R37 K10 [require]
      301 GETTABLEKS                       R41 R0 K41 ["tests"]
      303 GETTABLEKS                       R40 R41 K42 ["TestUtils"]
      305 GETTABLEKS                       R39 R40 K51 ["setup"]
      307 GETTABLEKS                       R38 R39 K57 ["createMockModelQualityContext"]
      309 CALL                             R37 1 1
      310 GETIMPORT                        R38 K10 [require]
      312 GETTABLEKS                       R42 R0 K41 ["tests"]
      314 GETTABLEKS                       R41 R42 K42 ["TestUtils"]
      316 GETTABLEKS                       R40 R41 K51 ["setup"]
      318 GETTABLEKS                       R39 R40 K58 ["createMockOptionsContext"]
      320 CALL                             R38 1 1
      321 GETIMPORT                        R39 K10 [require]
      323 GETTABLEKS                       R43 R0 K41 ["tests"]
      325 GETTABLEKS                       R42 R43 K42 ["TestUtils"]
      327 GETTABLEKS                       R41 R42 K51 ["setup"]
      329 GETTABLEKS                       R40 R41 K59 ["createMockPopoutWidgetContext"]
      331 CALL                             R39 1 1
      332 GETIMPORT                        R40 K10 [require]
      334 GETTABLEKS                       R44 R0 K41 ["tests"]
      336 GETTABLEKS                       R43 R44 K42 ["TestUtils"]
      338 GETTABLEKS                       R42 R43 K51 ["setup"]
      340 GETTABLEKS                       R41 R42 K60 ["createMockSettingsContext"]
      342 CALL                             R40 1 1
      343 GETIMPORT                        R41 K10 [require]
      345 GETTABLEKS                       R45 R0 K41 ["tests"]
      347 GETTABLEKS                       R44 R45 K42 ["TestUtils"]
      349 GETTABLEKS                       R43 R44 K51 ["setup"]
      351 GETTABLEKS                       R42 R43 K61 ["createMockThreadIdContext"]
      353 CALL                             R41 1 1
      354 GETIMPORT                        R42 K10 [require]
      356 GETTABLEKS                       R45 R0 K41 ["tests"]
      358 GETTABLEKS                       R44 R45 K42 ["TestUtils"]
      360 GETTABLEKS                       R43 R44 K62 ["isVisibleGuiObject"]
      362 CALL                             R42 1 1
      363 LOADK                            R46 K63 ["Packages"]
      364 NAMECALL                         R44 R0 K3 ["FindFirstAncestor"]
      366 CALL                             R44 2 1
      367 GETTABLEKS                       R43 R44 K64 ["Dev"]
      369 GETIMPORT                        R44 K10 [require]
      371 GETTABLEKS                       R45 R43 K65 ["JestGlobals"]
      373 CALL                             R44 1 1
      374 GETIMPORT                        R45 K10 [require]
      376 GETTABLEKS                       R46 R43 K66 ["ReactTestingLibrary"]
      378 CALL                             R45 1 1
      379 GETIMPORT                        R46 K10 [require]
      381 GETTABLEKS                       R48 R0 K67 ["Flags"]
      383 GETTABLEKS                       R47 R48 K68 ["FFlagAssistantJsonEncoderUseHiddenMetatable"]
      385 CALL                             R46 1 1
      386 GETIMPORT                        R47 K10 [require]
      388 GETTABLEKS                       R49 R0 K67 ["Flags"]
      390 GETTABLEKS                       R48 R49 K69 ["FFlagAssistantMultipleChatSupport"]
      392 CALL                             R47 1 1
      393 GETIMPORT                        R48 K10 [require]
      395 GETTABLEKS                       R50 R0 K67 ["Flags"]
      397 GETTABLEKS                       R49 R50 K70 ["FFlagAssistantPersistConversations"]
      399 CALL                             R48 1 1
      400 GETIMPORT                        R49 K10 [require]
      402 GETTABLEKS                       R51 R0 K67 ["Flags"]
      404 GETTABLEKS                       R50 R51 K71 ["FFlagAssistantRegisterWidgetsThroughTools"]
      406 CALL                             R49 1 1
      407 GETIMPORT                        R50 K10 [require]
      409 GETTABLEKS                       R52 R0 K67 ["Flags"]
      411 GETTABLEKS                       R51 R52 K72 ["FFlagMCPAssistantLongRunningToolCalls"]
      413 CALL                             R50 1 1
      414 GETTABLEKS                       R51 R21 K73 ["createElement"]
      416 GETTABLEKS                       R53 R11 K74 ["TestHelpers"]
      418 GETTABLEKS                       R52 R53 K75 ["provideMockContext"]
      420 GETTABLEKS                       R54 R10 K76 ["Utility"]
      422 GETTABLEKS                       R53 R54 K77 ["mockComponent"]
      424 GETTABLEKS                       R54 R44 K78 ["afterEach"]
      426 GETTABLEKS                       R55 R44 K79 ["expect"]
      428 GETTABLEKS                       R56 R44 K80 ["jest"]
      430 GETTABLEKS                       R57 R45 K81 ["act"]
      432 GETTABLEKS                       R58 R45 K82 ["fireEvent"]
      434 GETTABLEKS                       R59 R45 K83 ["waitFor"]
      436 GETTABLEKS                       R60 R45 K84 ["within"]
      438 DUPCLOSURE                       R61 K85 [PROTO_7]
      439 CAPTURE                          VAL R7
      440 CAPTURE                          VAL R4
      441 CAPTURE                          VAL R6
      442 CAPTURE                          VAL R2
      443 CAPTURE                          VAL R29
      444 CAPTURE                          VAL R13
      445 CAPTURE                          VAL R46
      446 MOVE                             R62 R54
      447 DUPCLOSURE                       R63 K86 [PROTO_8]
      448 CAPTURE                          VAL R49
      449 CAPTURE                          VAL R3
      450 CAPTURE                          VAL R23
      451 CALL                             R62 1 0
      452 DUPCLOSURE                       R62 K87 [PROTO_174]
      453 CAPTURE                          VAL R40
      454 CAPTURE                          VAL R32
      455 CAPTURE                          VAL R34
      456 CAPTURE                          VAL R41
      457 CAPTURE                          VAL R36
      458 CAPTURE                          VAL R35
      459 CAPTURE                          VAL R37
      460 CAPTURE                          VAL R38
      461 CAPTURE                          VAL R39
      462 CAPTURE                          VAL R33
      463 CAPTURE                          VAL R51
      464 CAPTURE                          VAL R24
      465 CAPTURE                          VAL R1
      466 CAPTURE                          VAL R31
      467 CAPTURE                          VAL R14
      468 CAPTURE                          VAL R5
      469 CAPTURE                          VAL R61
      470 CAPTURE                          VAL R27
      471 CAPTURE                          VAL R7
      472 CAPTURE                          VAL R49
      473 CAPTURE                          VAL R3
      474 CAPTURE                          VAL R45
      475 CAPTURE                          VAL R52
      476 CAPTURE                          VAL R53
      477 CAPTURE                          VAL R22
      478 CAPTURE                          VAL R58
      479 CAPTURE                          VAL R57
      480 CAPTURE                          VAL R8
      481 CAPTURE                          VAL R50
      482 CAPTURE                          VAL R56
      483 CAPTURE                          VAL R60
      484 CAPTURE                          VAL R26
      485 CAPTURE                          VAL R25
      486 CAPTURE                          VAL R59
      487 CAPTURE                          VAL R55
      488 CAPTURE                          VAL R11
      489 CAPTURE                          VAL R48
      490 CAPTURE                          VAL R16
      491 CAPTURE                          VAL R47
      492 CAPTURE                          VAL R12
      493 CAPTURE                          VAL R29
      494 CAPTURE                          VAL R20
      495 CAPTURE                          VAL R42
      496 CAPTURE                          VAL R15
      497 RETURN                           R62 1
