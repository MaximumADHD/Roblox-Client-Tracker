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
       71 CALL                             R4 1 0
       72 CLOSEUPVALS                      R3
       73 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clear"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["clear"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

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
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["Stepped"]
        7 NAMECALL                         R0 R0 K2 ["Wait"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K1 ["Stepped"]
       13 NAMECALL                         R0 R0 K2 ["Wait"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["render"]
        3 DUPTABLE                         R2 K2 [{"MockDevFramework"}]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K3 ["TestHelpers"]
        7 GETTABLEKS                       R3 R4 K4 ["provideMockContext"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K4 ["provideMockContext"]
       12 DUPTABLE                         R5 K6 [{"MockFoundation"}]
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R6 R7 K7 ["mockComponent"]
       16 DUPTABLE                         R7 K9 [{"ContextStack"}]
       17 GETUPVAL                         R8 4
       18 GETUPVAL                         R10 5
       19 GETTABLEKS                       R9 R10 K8 ["ContextStack"]
       21 DUPTABLE                         R10 K11 [{"providers"}]
       22 GETUPVAL                         R11 6
       23 SETTABLEKS                       R11 R10 K10 ["providers"]
       25 DUPTABLE                         R11 K13 [{"Node"}]
       26 SETTABLEKS                       R0 R11 K12 ["Node"]
       28 CALL                             R8 3 1
       29 SETTABLEKS                       R8 R7 K8 ["ContextStack"]
       31 CALL                             R6 1 1
       32 SETTABLEKS                       R6 R5 K5 ["MockFoundation"]
       34 CALL                             R3 2 1
       35 SETTABLEKS                       R3 R2 K1 ["MockDevFramework"]
       37 CALL                             R1 1 1
       38 GETUPVAL                         R2 7
       39 NAMECALL                         R2 R2 K14 ["UpdateUnitTestOnly"]
       41 CALL                             R2 1 0
       42 GETUPVAL                         R3 8
       43 GETTABLEKS                       R2 R3 K15 ["Stepped"]
       45 NAMECALL                         R2 R2 K16 ["Wait"]
       47 CALL                             R2 1 0
       48 GETUPVAL                         R3 8
       49 GETTABLEKS                       R2 R3 K15 ["Stepped"]
       51 NAMECALL                         R2 R2 K16 ["Wait"]
       53 CALL                             R2 1 0
       54 GETTABLEKS                       R3 R1 K17 ["container"]
       56 LOADK                            R5 K18 ["ScreenGui"]
       57 NAMECALL                         R3 R3 K19 ["FindFirstAncestorWhichIsA"]
       59 CALL                             R3 2 1
       60 GETTABLEKS                       R2 R3 K20 ["Parent"]
       62 SETUPVAL                         R2 9
       63 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 SETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [coroutine.status]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K3 ["suspended"] ; [+5]
        7 GETIMPORT                        R1 K6 [task.spawn]
        9 GETUPVAL                         R2 1
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R0 R1 K1 ["getThread"]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R0 R1 K1 ["getOrAddMessage"]
        6 LOADK                            R1 K2 ["assistant"]
        7 GETUPVAL                         R2 1
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_20:
        0 JUMPIF                           R3 ; [+26]
        1 DUPTABLE                         R4 K5 [{"signal", "sessionId", "sendNotification", "sendRequest", "sendProgress"}]
        2 LOADNIL                          R5
        3 SETTABLEKS                       R5 R4 K0 ["signal"]
        5 LOADK                            R5 K6 [""]
        6 SETTABLEKS                       R5 R4 K1 ["sessionId"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K7 ["fn"]
       11 CALL                             R5 0 1
       12 SETTABLEKS                       R5 R4 K2 ["sendNotification"]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R5 R6 K7 ["fn"]
       17 CALL                             R5 0 1
       18 SETTABLEKS                       R5 R4 K3 ["sendRequest"]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K7 ["fn"]
       23 CALL                             R5 0 1
       24 SETTABLEKS                       R5 R4 K4 ["sendProgress"]
       26 MOVE                             R3 R4
       27 FASTCALL2K                       ASSERT R3 K8 ; [+5]
       29 MOVE                             R5 R3
       30 LOADK                            R6 K8 ["RequestHandlerExtra is required for invoking tool"]
       31 GETIMPORT                        R4 K10 [assert]
       33 CALL                             R4 2 0
       34 GETIMPORT                        R4 K13 [coroutine.running]
       36 CALL                             R4 0 1
       37 LOADNIL                          R5
       38 LOADNIL                          R6
       39 NEWCLOSURE                       R7 P0
       40 CAPTURE                          REF R5
       41 CAPTURE                          REF R6
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          REF R2
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          REF R3
       49 CAPTURE                          VAL R4
       50 GETUPVAL                         R8 4
       51 NEWCLOSURE                       R9 P1
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          VAL R7
       54 CALL                             R8 1 0
       55 JUMPIFNOTEQKNIL                  R5 ; [+4]
       57 GETIMPORT                        R8 K15 [coroutine.yield]
       59 CALL                             R8 0 0
       60 LOADK                            R11 K16 ["Tool invocation failed: %*"]
       61 MOVE                             R13 R6
       62 NAMECALL                         R11 R11 K17 ["format"]
       64 CALL                             R11 2 1
       65 MOVE                             R10 R11
       66 FASTCALL2                        ASSERT R5 R10 ; [+4]
       68 MOVE                             R9 R5
       69 GETIMPORT                        R8 K10 [assert]
       71 CALL                             R8 2 0
       72 CLOSEUPVALS                      R2
       73 RETURN                           R6 1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOTEQKNIL                  R4 ; [+2]
        3 LOADB                            R3 0 +1
        4 LOADB                            R3 1
        5 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        7 LOADK                            R4 K0 ["Container not mounted, ensure render is called"]
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
       15 FASTCALL2K                       ASSERT R1 K3 ; [+5]
       17 MOVE                             R4 R1
       18 LOADK                            R5 K3 ["Query container not found"]
       19 GETIMPORT                        R3 K2 [assert]
       21 CALL                             R3 2 0
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R3 R4 K4 ["assign"]
       25 DUPTABLE                         R4 K6 [{"exact"}]
       26 LOADB                            R5 1
       27 SETTABLEKS                       R5 R4 K5 ["exact"]
       29 MOVE                             R5 R2
       30 JUMPIF                           R5 ; [+2]
       31 NEWTABLE                         R5 0 0
       33 CALL                             R3 2 1
       34 MOVE                             R2 R3
       35 GETUPVAL                         R4 2
       36 MOVE                             R5 R1
       37 CALL                             R4 1 1
       38 GETTABLEKS                       R3 R4 K7 ["queryByText"]
       40 MOVE                             R4 R0
       41 MOVE                             R5 R2
       42 CALL                             R3 2 1
       43 JUMPIF                           R3 ; [+8]
       44 GETUPVAL                         R4 2
       45 MOVE                             R5 R1
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R3 R4 K8 ["queryByDisplayValue"]
       49 MOVE                             R4 R0
       50 MOVE                             R5 R2
       51 CALL                             R3 2 1
       52 LOADK                            R7 K9 ["No GuiObject found for message \"%*\""]
       53 MOVE                             R9 R0
       54 NAMECALL                         R7 R7 K10 ["format"]
       56 CALL                             R7 2 1
       57 MOVE                             R6 R7
       58 FASTCALL2                        ASSERT R3 R6 ; [+4]
       60 MOVE                             R5 R3
       61 GETIMPORT                        R4 K2 [assert]
       63 CALL                             R4 2 0
       64 RETURN                           R3 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K1 ["Stepped"]
       12 NAMECALL                         R1 R1 K2 ["Wait"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R1 R2 K1 ["Stepped"]
       18 NAMECALL                         R1 R1 K2 ["Wait"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["mouseEnter"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K1 ["UpdateUnitTestOnly"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K2 ["Stepped"]
       12 NAMECALL                         R1 R1 K3 ["Wait"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R1 R2 K2 ["Stepped"]
       18 NAMECALL                         R1 R1 K3 ["Wait"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["mouseLeave"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K1 ["UpdateUnitTestOnly"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K2 ["Stepped"]
       12 NAMECALL                         R1 R1 K3 ["Wait"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R1 R2 K2 ["Stepped"]
       18 NAMECALL                         R1 R1 K3 ["Wait"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["Stepped"]
        7 NAMECALL                         R0 R0 K2 ["Wait"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K1 ["Stepped"]
       13 NAMECALL                         R0 R0 K2 ["Wait"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R2 R3 K3 ["InputArea"]
       19 GETTABLEKS                       R1 R2 K4 ["Container"]
       21 LOADNIL                          R2
       22 MOVE                             R3 R2
       23 JUMPIF                           R3 ; [+12]
       24 GETUPVAL                         R6 3
       25 JUMPIFNOTEQKNIL                  R6 ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       31 LOADK                            R6 K5 ["Container not mounted, ensure render is called"]
       32 GETIMPORT                        R4 K7 [assert]
       34 CALL                             R4 2 0
       35 GETUPVAL                         R3 3
       36 MOVE                             R2 R3
       37 FASTCALL2K                       ASSERT R2 K8 ; [+5]
       39 MOVE                             R4 R2
       40 LOADK                            R5 K8 ["Query container not found"]
       41 GETIMPORT                        R3 K7 [assert]
       43 CALL                             R3 2 0
       44 GETUPVAL                         R4 4
       45 MOVE                             R5 R2
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R3 R4 K9 ["getByTestId"]
       49 MOVE                             R4 R1
       50 CALL                             R3 1 1
       51 LOADK                            R7 K10 ["No result found for testId \"%*\""]
       52 MOVE                             R9 R1
       53 NAMECALL                         R7 R7 K11 ["format"]
       55 CALL                             R7 2 1
       56 MOVE                             R6 R7
       57 FASTCALL2                        ASSERT R3 R6 ; [+4]
       59 MOVE                             R5 R3
       60 GETIMPORT                        R4 K7 [assert]
       62 CALL                             R4 2 0
       63 MOVE                             R0 R3
       64 RETURN                           R0 1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["Stepped"]
        7 NAMECALL                         R0 R0 K2 ["Wait"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K1 ["Stepped"]
       13 NAMECALL                         R0 R0 K2 ["Wait"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R1 0
       17 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K1 ["Stepped"]
       23 NAMECALL                         R1 R1 K2 ["Wait"]
       25 CALL                             R1 1 0
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R1 R2 K1 ["Stepped"]
       29 NAMECALL                         R1 R1 K2 ["Wait"]
       31 CALL                             R1 1 0
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R2 R3 K3 ["InputArea"]
       35 GETTABLEKS                       R1 R2 K4 ["Container"]
       37 LOADNIL                          R2
       38 MOVE                             R3 R2
       39 JUMPIF                           R3 ; [+12]
       40 GETUPVAL                         R6 3
       41 JUMPIFNOTEQKNIL                  R6 ; [+2]
       43 LOADB                            R5 0 +1
       44 LOADB                            R5 1
       45 FASTCALL2K                       ASSERT R5 K5 ; [+4]
       47 LOADK                            R6 K5 ["Container not mounted, ensure render is called"]
       48 GETIMPORT                        R4 K7 [assert]
       50 CALL                             R4 2 0
       51 GETUPVAL                         R3 3
       52 MOVE                             R2 R3
       53 FASTCALL2K                       ASSERT R2 K8 ; [+5]
       55 MOVE                             R4 R2
       56 LOADK                            R5 K8 ["Query container not found"]
       57 GETIMPORT                        R3 K7 [assert]
       59 CALL                             R3 2 0
       60 GETUPVAL                         R4 4
       61 MOVE                             R5 R2
       62 CALL                             R4 1 1
       63 GETTABLEKS                       R3 R4 K9 ["getByTestId"]
       65 MOVE                             R4 R1
       66 CALL                             R3 1 1
       67 LOADK                            R7 K10 ["No result found for testId \"%*\""]
       68 MOVE                             R9 R1
       69 NAMECALL                         R7 R7 K11 ["format"]
       71 CALL                             R7 2 1
       72 MOVE                             R6 R7
       73 FASTCALL2                        ASSERT R3 R6 ; [+4]
       75 MOVE                             R5 R3
       76 GETIMPORT                        R4 K7 [assert]
       78 CALL                             R4 2 0
       79 MOVE                             R0 R3
       80 LOADK                            R2 K12 ["TextBox"]
       81 LOADB                            R3 1
       82 NAMECALL                         R0 R0 K13 ["FindFirstChild"]
       84 CALL                             R0 3 1
       85 MOVE                             R2 R0
       86 JUMPIFNOT                        R2 ; [+4]
       87 LOADK                            R4 K12 ["TextBox"]
       88 NAMECALL                         R2 R0 K14 ["IsA"]
       90 CALL                             R2 2 1
       91 FASTCALL2K                       ASSERT R2 K15 ; [+4]
       93 LOADK                            R3 K15 ["TextBox not found"]
       94 GETIMPORT                        R1 K7 [assert]
       96 CALL                             R1 2 0
       97 RETURN                           R0 1

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
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
       54 GETUPVAL                         R5 3
       55 CALL                             R5 0 1
       56 JUMPIFNOT                        R5 ; [+37]
       57 GETUPVAL                         R8 4
       58 GETTABLEKS                       R7 R8 K10 ["MessageActions"]
       60 GETTABLEKS                       R6 R7 K11 ["Container"]
       62 MOVE                             R7 R4
       63 MOVE                             R8 R7
       64 JUMPIF                           R8 ; [+12]
       65 GETUPVAL                         R11 1
       66 JUMPIFNOTEQKNIL                  R11 ; [+2]
       68 LOADB                            R10 0 +1
       69 LOADB                            R10 1
       70 FASTCALL2K                       ASSERT R10 K2 ; [+4]
       72 LOADK                            R11 K2 ["Container not mounted, ensure render is called"]
       73 GETIMPORT                        R9 K4 [assert]
       75 CALL                             R9 2 0
       76 GETUPVAL                         R8 1
       77 MOVE                             R7 R8
       78 FASTCALL2K                       ASSERT R7 K12 ; [+5]
       80 MOVE                             R9 R7
       81 LOADK                            R10 K12 ["Query container not found"]
       82 GETIMPORT                        R8 K4 [assert]
       84 CALL                             R8 2 0
       85 GETUPVAL                         R9 0
       86 MOVE                             R10 R7
       87 CALL                             R9 1 1
       88 GETTABLEKS                       R8 R9 K13 ["queryByTestId"]
       90 MOVE                             R9 R6
       91 CALL                             R8 1 1
       92 MOVE                             R5 R8
       93 RETURN                           R5 1
       94 GETUPVAL                         R8 4
       95 GETTABLEKS                       R7 R8 K10 ["MessageActions"]
       97 GETTABLEKS                       R6 R7 K14 ["Retry"]
       99 MOVE                             R7 R4
      100 MOVE                             R8 R7
      101 JUMPIF                           R8 ; [+12]
      102 GETUPVAL                         R11 1
      103 JUMPIFNOTEQKNIL                  R11 ; [+2]
      105 LOADB                            R10 0 +1
      106 LOADB                            R10 1
      107 FASTCALL2K                       ASSERT R10 K2 ; [+4]
      109 LOADK                            R11 K2 ["Container not mounted, ensure render is called"]
      110 GETIMPORT                        R9 K4 [assert]
      112 CALL                             R9 2 0
      113 GETUPVAL                         R8 1
      114 MOVE                             R7 R8
      115 FASTCALL2K                       ASSERT R7 K12 ; [+5]
      117 MOVE                             R9 R7
      118 LOADK                            R10 K12 ["Query container not found"]
      119 GETIMPORT                        R8 K4 [assert]
      121 CALL                             R8 2 0
      122 GETUPVAL                         R9 0
      123 MOVE                             R10 R7
      124 CALL                             R9 1 1
      125 GETTABLEKS                       R8 R9 K13 ["queryByTestId"]
      127 MOVE                             R9 R6
      128 CALL                             R8 1 1
      129 MOVE                             R5 R8
      130 JUMPIFNOT                        R5 ; [+15]
      131 GETTABLEKS                       R6 R5 K15 ["Parent"]
      133 NOT                              R8 R6
      134 JUMPIF                           R8 ; [+4]
      135 LOADK                            R10 K16 ["GuiObject"]
      136 NAMECALL                         R8 R6 K17 ["IsA"]
      138 CALL                             R8 2 1
      139 FASTCALL2K                       ASSERT R8 K18 ; [+4]
      141 LOADK                            R9 K18 ["Button parent is not a GuiObject"]
      142 GETIMPORT                        R7 K4 [assert]
      144 CALL                             R7 2 0
      145 RETURN                           R6 1
      146 LOADNIL                          R6
      147 RETURN                           R6 1

PROTO_40:
        0 GETTABLEKS                       R4 R0 K0 ["messageContainer"]
        2 GETTABLEKS                       R3 R4 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R5 R1 K0 ["messageContainer"]
        6 GETTABLEKS                       R4 R5 K1 ["LayoutOrder"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_41:
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
       53 DUPCLOSURE                       R4 K18 [PROTO_40]
       54 CALL                             R2 2 0
       55 RETURN                           R1 1

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R0 R1 K0 ["getByText"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setModelQuality"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["Stepped"]
        7 NAMECALL                         R1 R1 K2 ["Wait"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K1 ["Stepped"]
       13 NAMECALL                         R1 R1 K2 ["Wait"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R2 0
       17 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
       19 CALL                             R2 1 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K1 ["Stepped"]
       23 NAMECALL                         R2 R2 K2 ["Wait"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R2 R3 K1 ["Stepped"]
       29 NAMECALL                         R2 R2 K2 ["Wait"]
       31 CALL                             R2 1 0
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R3 R4 K3 ["InputArea"]
       35 GETTABLEKS                       R2 R3 K4 ["Container"]
       37 LOADNIL                          R3
       38 MOVE                             R4 R3
       39 JUMPIF                           R4 ; [+12]
       40 GETUPVAL                         R7 3
       41 JUMPIFNOTEQKNIL                  R7 ; [+2]
       43 LOADB                            R6 0 +1
       44 LOADB                            R6 1
       45 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       47 LOADK                            R7 K5 ["Container not mounted, ensure render is called"]
       48 GETIMPORT                        R5 K7 [assert]
       50 CALL                             R5 2 0
       51 GETUPVAL                         R4 3
       52 MOVE                             R3 R4
       53 FASTCALL2K                       ASSERT R3 K8 ; [+5]
       55 MOVE                             R5 R3
       56 LOADK                            R6 K8 ["Query container not found"]
       57 GETIMPORT                        R4 K7 [assert]
       59 CALL                             R4 2 0
       60 GETUPVAL                         R5 4
       61 MOVE                             R6 R3
       62 CALL                             R5 1 1
       63 GETTABLEKS                       R4 R5 K9 ["getByTestId"]
       65 MOVE                             R5 R2
       66 CALL                             R4 1 1
       67 LOADK                            R8 K10 ["No result found for testId \"%*\""]
       68 MOVE                             R10 R2
       69 NAMECALL                         R8 R8 K11 ["format"]
       71 CALL                             R8 2 1
       72 MOVE                             R7 R8
       73 FASTCALL2                        ASSERT R4 R7 ; [+4]
       75 MOVE                             R6 R4
       76 GETIMPORT                        R5 K7 [assert]
       78 CALL                             R5 2 0
       79 MOVE                             R1 R4
       80 LOADK                            R3 K12 ["TextBox"]
       81 LOADB                            R4 1
       82 NAMECALL                         R1 R1 K13 ["FindFirstChild"]
       84 CALL                             R1 3 1
       85 MOVE                             R3 R1
       86 JUMPIFNOT                        R3 ; [+4]
       87 LOADK                            R5 K12 ["TextBox"]
       88 NAMECALL                         R3 R1 K14 ["IsA"]
       90 CALL                             R3 2 1
       91 FASTCALL2K                       ASSERT R3 K15 ; [+4]
       93 LOADK                            R4 K15 ["TextBox not found"]
       94 GETIMPORT                        R2 K7 [assert]
       96 CALL                             R2 2 0
       97 MOVE                             R0 R1
       98 GETUPVAL                         R1 5
       99 NEWCLOSURE                       R2 P0
      100 CAPTURE                          VAL R0
      101 CALL                             R1 1 0
      102 GETUPVAL                         R1 0
      103 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
      105 CALL                             R1 1 0
      106 GETUPVAL                         R2 1
      107 GETTABLEKS                       R1 R2 K1 ["Stepped"]
      109 NAMECALL                         R1 R1 K2 ["Wait"]
      111 CALL                             R1 1 0
      112 GETUPVAL                         R2 1
      113 GETTABLEKS                       R1 R2 K1 ["Stepped"]
      115 NAMECALL                         R1 R1 K2 ["Wait"]
      117 CALL                             R1 1 0
      118 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["change"]
        3 GETUPVAL                         R3 1
        4 NAMECALL                         R3 R3 K1 ["UpdateUnitTestOnly"]
        6 CALL                             R3 1 0
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R3 R4 K2 ["Stepped"]
       10 NAMECALL                         R3 R3 K3 ["Wait"]
       12 CALL                             R3 1 0
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R3 R4 K2 ["Stepped"]
       16 NAMECALL                         R3 R3 K3 ["Wait"]
       18 CALL                             R3 1 0
       19 GETUPVAL                         R4 1
       20 NAMECALL                         R4 R4 K1 ["UpdateUnitTestOnly"]
       22 CALL                             R4 1 0
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R4 R5 K2 ["Stepped"]
       26 NAMECALL                         R4 R4 K3 ["Wait"]
       28 CALL                             R4 1 0
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R4 R5 K2 ["Stepped"]
       32 NAMECALL                         R4 R4 K3 ["Wait"]
       34 CALL                             R4 1 0
       35 GETUPVAL                         R6 3
       36 GETTABLEKS                       R5 R6 K4 ["InputArea"]
       38 GETTABLEKS                       R4 R5 K5 ["Container"]
       40 LOADNIL                          R5
       41 MOVE                             R6 R5
       42 JUMPIF                           R6 ; [+12]
       43 GETUPVAL                         R9 4
       44 JUMPIFNOTEQKNIL                  R9 ; [+2]
       46 LOADB                            R8 0 +1
       47 LOADB                            R8 1
       48 FASTCALL2K                       ASSERT R8 K6 ; [+4]
       50 LOADK                            R9 K6 ["Container not mounted, ensure render is called"]
       51 GETIMPORT                        R7 K8 [assert]
       53 CALL                             R7 2 0
       54 GETUPVAL                         R6 4
       55 MOVE                             R5 R6
       56 FASTCALL2K                       ASSERT R5 K9 ; [+5]
       58 MOVE                             R7 R5
       59 LOADK                            R8 K9 ["Query container not found"]
       60 GETIMPORT                        R6 K8 [assert]
       62 CALL                             R6 2 0
       63 GETUPVAL                         R7 5
       64 MOVE                             R8 R5
       65 CALL                             R7 1 1
       66 GETTABLEKS                       R6 R7 K10 ["getByTestId"]
       68 MOVE                             R7 R4
       69 CALL                             R6 1 1
       70 LOADK                            R10 K11 ["No result found for testId \"%*\""]
       71 MOVE                             R12 R4
       72 NAMECALL                         R10 R10 K12 ["format"]
       74 CALL                             R10 2 1
       75 MOVE                             R9 R10
       76 FASTCALL2                        ASSERT R6 R9 ; [+4]
       78 MOVE                             R8 R6
       79 GETIMPORT                        R7 K8 [assert]
       81 CALL                             R7 2 0
       82 MOVE                             R3 R6
       83 LOADK                            R5 K13 ["TextBox"]
       84 LOADB                            R6 1
       85 NAMECALL                         R3 R3 K14 ["FindFirstChild"]
       87 CALL                             R3 3 1
       88 MOVE                             R5 R3
       89 JUMPIFNOT                        R5 ; [+4]
       90 LOADK                            R7 K13 ["TextBox"]
       91 NAMECALL                         R5 R3 K15 ["IsA"]
       93 CALL                             R5 2 1
       94 FASTCALL2K                       ASSERT R5 K16 ; [+4]
       96 LOADK                            R6 K16 ["TextBox not found"]
       97 GETIMPORT                        R4 K8 [assert]
       99 CALL                             R4 2 0
      100 MOVE                             R2 R3
      101 DUPTABLE                         R3 K18 [{"target"}]
      102 DUPTABLE                         R4 K20 [{"Text"}]
      103 SETTABLEKS                       R0 R4 K19 ["Text"]
      105 SETTABLEKS                       R4 R3 K17 ["target"]
      107 CALL                             R1 2 0
      108 GETUPVAL                         R1 1
      109 NAMECALL                         R1 R1 K1 ["UpdateUnitTestOnly"]
      111 CALL                             R1 1 0
      112 GETUPVAL                         R2 2
      113 GETTABLEKS                       R1 R2 K2 ["Stepped"]
      115 NAMECALL                         R1 R1 K3 ["Wait"]
      117 CALL                             R1 1 0
      118 GETUPVAL                         R2 2
      119 GETTABLEKS                       R1 R2 K2 ["Stepped"]
      121 NAMECALL                         R1 R1 K3 ["Wait"]
      123 CALL                             R1 1 0
      124 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["CursorPosition"]
        4 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["Stepped"]
        7 NAMECALL                         R2 R2 K2 ["Wait"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K1 ["Stepped"]
       13 NAMECALL                         R2 R2 K2 ["Wait"]
       15 CALL                             R2 1 0
       16 GETUPVAL                         R3 0
       17 NAMECALL                         R3 R3 K0 ["UpdateUnitTestOnly"]
       19 CALL                             R3 1 0
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K1 ["Stepped"]
       23 NAMECALL                         R3 R3 K2 ["Wait"]
       25 CALL                             R3 1 0
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R3 R4 K1 ["Stepped"]
       29 NAMECALL                         R3 R3 K2 ["Wait"]
       31 CALL                             R3 1 0
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R4 R5 K3 ["InputArea"]
       35 GETTABLEKS                       R3 R4 K4 ["Container"]
       37 LOADNIL                          R4
       38 MOVE                             R5 R4
       39 JUMPIF                           R5 ; [+12]
       40 GETUPVAL                         R8 3
       41 JUMPIFNOTEQKNIL                  R8 ; [+2]
       43 LOADB                            R7 0 +1
       44 LOADB                            R7 1
       45 FASTCALL2K                       ASSERT R7 K5 ; [+4]
       47 LOADK                            R8 K5 ["Container not mounted, ensure render is called"]
       48 GETIMPORT                        R6 K7 [assert]
       50 CALL                             R6 2 0
       51 GETUPVAL                         R5 3
       52 MOVE                             R4 R5
       53 FASTCALL2K                       ASSERT R4 K8 ; [+5]
       55 MOVE                             R6 R4
       56 LOADK                            R7 K8 ["Query container not found"]
       57 GETIMPORT                        R5 K7 [assert]
       59 CALL                             R5 2 0
       60 GETUPVAL                         R6 4
       61 MOVE                             R7 R4
       62 CALL                             R6 1 1
       63 GETTABLEKS                       R5 R6 K9 ["getByTestId"]
       65 MOVE                             R6 R3
       66 CALL                             R5 1 1
       67 LOADK                            R9 K10 ["No result found for testId \"%*\""]
       68 MOVE                             R11 R3
       69 NAMECALL                         R9 R9 K11 ["format"]
       71 CALL                             R9 2 1
       72 MOVE                             R8 R9
       73 FASTCALL2                        ASSERT R5 R8 ; [+4]
       75 MOVE                             R7 R5
       76 GETIMPORT                        R6 K7 [assert]
       78 CALL                             R6 2 0
       79 MOVE                             R2 R5
       80 LOADK                            R4 K12 ["TextBox"]
       81 LOADB                            R5 1
       82 NAMECALL                         R2 R2 K13 ["FindFirstChild"]
       84 CALL                             R2 3 1
       85 MOVE                             R4 R2
       86 JUMPIFNOT                        R4 ; [+4]
       87 LOADK                            R6 K12 ["TextBox"]
       88 NAMECALL                         R4 R2 K14 ["IsA"]
       90 CALL                             R4 2 1
       91 FASTCALL2K                       ASSERT R4 K15 ; [+4]
       93 LOADK                            R5 K15 ["TextBox not found"]
       94 GETIMPORT                        R3 K7 [assert]
       96 CALL                             R3 2 0
       97 MOVE                             R1 R2
       98 GETUPVAL                         R2 5
       99 NEWCLOSURE                       R3 P0
      100 CAPTURE                          VAL R1
      101 CAPTURE                          VAL R0
      102 CALL                             R2 1 0
      103 GETUPVAL                         R2 0
      104 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
      106 CALL                             R2 1 0
      107 GETUPVAL                         R3 1
      108 GETTABLEKS                       R2 R3 K1 ["Stepped"]
      110 NAMECALL                         R2 R2 K2 ["Wait"]
      112 CALL                             R2 1 0
      113 GETUPVAL                         R3 1
      114 GETTABLEKS                       R2 R3 K1 ["Stepped"]
      116 NAMECALL                         R2 R2 K2 ["Wait"]
      118 CALL                             R2 1 0
      119 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["Stepped"]
        7 NAMECALL                         R1 R1 K2 ["Wait"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K1 ["Stepped"]
       13 NAMECALL                         R1 R1 K2 ["Wait"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R2 0
       17 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
       19 CALL                             R2 1 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K1 ["Stepped"]
       23 NAMECALL                         R2 R2 K2 ["Wait"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R2 R3 K1 ["Stepped"]
       29 NAMECALL                         R2 R2 K2 ["Wait"]
       31 CALL                             R2 1 0
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R3 R4 K3 ["InputArea"]
       35 GETTABLEKS                       R2 R3 K4 ["Container"]
       37 LOADNIL                          R3
       38 MOVE                             R4 R3
       39 JUMPIF                           R4 ; [+12]
       40 GETUPVAL                         R7 3
       41 JUMPIFNOTEQKNIL                  R7 ; [+2]
       43 LOADB                            R6 0 +1
       44 LOADB                            R6 1
       45 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       47 LOADK                            R7 K5 ["Container not mounted, ensure render is called"]
       48 GETIMPORT                        R5 K7 [assert]
       50 CALL                             R5 2 0
       51 GETUPVAL                         R4 3
       52 MOVE                             R3 R4
       53 FASTCALL2K                       ASSERT R3 K8 ; [+5]
       55 MOVE                             R5 R3
       56 LOADK                            R6 K8 ["Query container not found"]
       57 GETIMPORT                        R4 K7 [assert]
       59 CALL                             R4 2 0
       60 GETUPVAL                         R5 4
       61 MOVE                             R6 R3
       62 CALL                             R5 1 1
       63 GETTABLEKS                       R4 R5 K9 ["getByTestId"]
       65 MOVE                             R5 R2
       66 CALL                             R4 1 1
       67 LOADK                            R8 K10 ["No result found for testId \"%*\""]
       68 MOVE                             R10 R2
       69 NAMECALL                         R8 R8 K11 ["format"]
       71 CALL                             R8 2 1
       72 MOVE                             R7 R8
       73 FASTCALL2                        ASSERT R4 R7 ; [+4]
       75 MOVE                             R6 R4
       76 GETIMPORT                        R5 K7 [assert]
       78 CALL                             R5 2 0
       79 MOVE                             R1 R4
       80 LOADK                            R3 K12 ["TextBox"]
       81 LOADB                            R4 1
       82 NAMECALL                         R1 R1 K13 ["FindFirstChild"]
       84 CALL                             R1 3 1
       85 MOVE                             R3 R1
       86 JUMPIFNOT                        R3 ; [+4]
       87 LOADK                            R5 K12 ["TextBox"]
       88 NAMECALL                         R3 R1 K14 ["IsA"]
       90 CALL                             R3 2 1
       91 FASTCALL2K                       ASSERT R3 K15 ; [+4]
       93 LOADK                            R4 K15 ["TextBox not found"]
       94 GETIMPORT                        R2 K7 [assert]
       96 CALL                             R2 2 0
       97 MOVE                             R0 R1
       98 LOADK                            R3 K16 ["ScrollingFrame"]
       99 NAMECALL                         R1 R0 K17 ["FindFirstAncestorWhichIsA"]
      101 CALL                             R1 2 1
      102 MOVE                             R3 R1
      103 JUMPIFNOT                        R3 ; [+4]
      104 LOADK                            R5 K16 ["ScrollingFrame"]
      105 NAMECALL                         R3 R1 K14 ["IsA"]
      107 CALL                             R3 2 1
      108 FASTCALL2K                       ASSERT R3 K18 ; [+4]
      110 LOADK                            R4 K18 ["Scroll area not found for text box"]
      111 GETIMPORT                        R2 K7 [assert]
      113 CALL                             R2 2 0
      114 RETURN                           R1 1

PROTO_55:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["screen"]
        3 GETTABLEKS                       R2 R3 K1 ["debug"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_56:
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
       48 GETUPVAL                         R1 3
       49 NEWCLOSURE                       R2 P0
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          VAL R0
       52 CALL                             R1 1 0
       53 GETUPVAL                         R1 5
       54 NAMECALL                         R1 R1 K9 ["UpdateUnitTestOnly"]
       56 CALL                             R1 1 0
       57 GETUPVAL                         R2 6
       58 GETTABLEKS                       R1 R2 K10 ["Stepped"]
       60 NAMECALL                         R1 R1 K11 ["Wait"]
       62 CALL                             R1 1 0
       63 GETUPVAL                         R2 6
       64 GETTABLEKS                       R1 R2 K10 ["Stepped"]
       66 NAMECALL                         R1 R1 K11 ["Wait"]
       68 CALL                             R1 1 0
       69 RETURN                           R0 0

PROTO_57:
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
       20 GETUPVAL                         R1 1
       21 NAMECALL                         R1 R1 K8 ["UpdateUnitTestOnly"]
       23 CALL                             R1 1 0
       24 GETUPVAL                         R2 2
       25 GETTABLEKS                       R1 R2 K9 ["Stepped"]
       27 NAMECALL                         R1 R1 K10 ["Wait"]
       29 CALL                             R1 1 0
       30 GETUPVAL                         R2 2
       31 GETTABLEKS                       R1 R2 K9 ["Stepped"]
       33 NAMECALL                         R1 R1 K10 ["Wait"]
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_59:
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
       15 GETUPVAL                         R2 2
       16 NAMECALL                         R2 R2 K5 ["UpdateUnitTestOnly"]
       18 CALL                             R2 1 0
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R2 R3 K6 ["Stepped"]
       22 NAMECALL                         R2 R2 K7 ["Wait"]
       24 CALL                             R2 1 0
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R2 R3 K6 ["Stepped"]
       28 NAMECALL                         R2 R2 K7 ["Wait"]
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["Stepped"]
        8 NAMECALL                         R2 R2 K2 ["Wait"]
       10 CALL                             R2 1 0
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R2 R3 K1 ["Stepped"]
       14 NAMECALL                         R2 R2 K2 ["Wait"]
       16 CALL                             R2 1 0
       17 GETUPVAL                         R3 1
       18 NAMECALL                         R3 R3 K0 ["UpdateUnitTestOnly"]
       20 CALL                             R3 1 0
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R3 R4 K1 ["Stepped"]
       24 NAMECALL                         R3 R3 K2 ["Wait"]
       26 CALL                             R3 1 0
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R3 R4 K1 ["Stepped"]
       30 NAMECALL                         R3 R3 K2 ["Wait"]
       32 CALL                             R3 1 0
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R4 R5 K3 ["InputArea"]
       36 GETTABLEKS                       R3 R4 K4 ["Container"]
       38 LOADNIL                          R4
       39 MOVE                             R5 R4
       40 JUMPIF                           R5 ; [+12]
       41 GETUPVAL                         R8 4
       42 JUMPIFNOTEQKNIL                  R8 ; [+2]
       44 LOADB                            R7 0 +1
       45 LOADB                            R7 1
       46 FASTCALL2K                       ASSERT R7 K5 ; [+4]
       48 LOADK                            R8 K5 ["Container not mounted, ensure render is called"]
       49 GETIMPORT                        R6 K7 [assert]
       51 CALL                             R6 2 0
       52 GETUPVAL                         R5 4
       53 MOVE                             R4 R5
       54 FASTCALL2K                       ASSERT R4 K8 ; [+5]
       56 MOVE                             R6 R4
       57 LOADK                            R7 K8 ["Query container not found"]
       58 GETIMPORT                        R5 K7 [assert]
       60 CALL                             R5 2 0
       61 GETUPVAL                         R6 5
       62 MOVE                             R7 R4
       63 CALL                             R6 1 1
       64 GETTABLEKS                       R5 R6 K9 ["getByTestId"]
       66 MOVE                             R6 R3
       67 CALL                             R5 1 1
       68 LOADK                            R9 K10 ["No result found for testId \"%*\""]
       69 MOVE                             R11 R3
       70 NAMECALL                         R9 R9 K11 ["format"]
       72 CALL                             R9 2 1
       73 MOVE                             R8 R9
       74 FASTCALL2                        ASSERT R5 R8 ; [+4]
       76 MOVE                             R7 R5
       77 GETIMPORT                        R6 K7 [assert]
       79 CALL                             R6 2 0
       80 MOVE                             R2 R5
       81 LOADK                            R4 K12 ["TextBox"]
       82 LOADB                            R5 1
       83 NAMECALL                         R2 R2 K13 ["FindFirstChild"]
       85 CALL                             R2 3 1
       86 MOVE                             R4 R2
       87 JUMPIFNOT                        R4 ; [+4]
       88 LOADK                            R6 K12 ["TextBox"]
       89 NAMECALL                         R4 R2 K14 ["IsA"]
       91 CALL                             R4 2 1
       92 FASTCALL2K                       ASSERT R4 K15 ; [+4]
       94 LOADK                            R5 K15 ["TextBox not found"]
       95 GETIMPORT                        R3 K7 [assert]
       97 CALL                             R3 2 0
       98 MOVE                             R1 R2
       99 CALL                             R0 1 0
      100 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R3 R3 K0 ["UpdateUnitTestOnly"]
        4 CALL                             R3 1 0
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["Stepped"]
        8 NAMECALL                         R3 R3 K2 ["Wait"]
       10 CALL                             R3 1 0
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R3 R4 K1 ["Stepped"]
       14 NAMECALL                         R3 R3 K2 ["Wait"]
       16 CALL                             R3 1 0
       17 GETUPVAL                         R4 1
       18 NAMECALL                         R4 R4 K0 ["UpdateUnitTestOnly"]
       20 CALL                             R4 1 0
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R4 R5 K1 ["Stepped"]
       24 NAMECALL                         R4 R4 K2 ["Wait"]
       26 CALL                             R4 1 0
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R4 R5 K1 ["Stepped"]
       30 NAMECALL                         R4 R4 K2 ["Wait"]
       32 CALL                             R4 1 0
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R5 R6 K3 ["InputArea"]
       36 GETTABLEKS                       R4 R5 K4 ["Container"]
       38 LOADNIL                          R5
       39 MOVE                             R6 R5
       40 JUMPIF                           R6 ; [+12]
       41 GETUPVAL                         R9 4
       42 JUMPIFNOTEQKNIL                  R9 ; [+2]
       44 LOADB                            R8 0 +1
       45 LOADB                            R8 1
       46 FASTCALL2K                       ASSERT R8 K5 ; [+4]
       48 LOADK                            R9 K5 ["Container not mounted, ensure render is called"]
       49 GETIMPORT                        R7 K7 [assert]
       51 CALL                             R7 2 0
       52 GETUPVAL                         R6 4
       53 MOVE                             R5 R6
       54 FASTCALL2K                       ASSERT R5 K8 ; [+5]
       56 MOVE                             R7 R5
       57 LOADK                            R8 K8 ["Query container not found"]
       58 GETIMPORT                        R6 K7 [assert]
       60 CALL                             R6 2 0
       61 GETUPVAL                         R7 5
       62 MOVE                             R8 R5
       63 CALL                             R7 1 1
       64 GETTABLEKS                       R6 R7 K9 ["getByTestId"]
       66 MOVE                             R7 R4
       67 CALL                             R6 1 1
       68 LOADK                            R10 K10 ["No result found for testId \"%*\""]
       69 MOVE                             R12 R4
       70 NAMECALL                         R10 R10 K11 ["format"]
       72 CALL                             R10 2 1
       73 MOVE                             R9 R10
       74 FASTCALL2                        ASSERT R6 R9 ; [+4]
       76 MOVE                             R8 R6
       77 GETIMPORT                        R7 K7 [assert]
       79 CALL                             R7 2 0
       80 MOVE                             R3 R6
       81 LOADK                            R5 K12 ["TextBox"]
       82 LOADB                            R6 1
       83 NAMECALL                         R3 R3 K13 ["FindFirstChild"]
       85 CALL                             R3 3 1
       86 MOVE                             R5 R3
       87 JUMPIFNOT                        R5 ; [+4]
       88 LOADK                            R7 K12 ["TextBox"]
       89 NAMECALL                         R5 R3 K14 ["IsA"]
       91 CALL                             R5 2 1
       92 FASTCALL2K                       ASSERT R5 K15 ; [+4]
       94 LOADK                            R6 K15 ["TextBox not found"]
       95 GETIMPORT                        R4 K7 [assert]
       97 CALL                             R4 2 0
       98 MOVE                             R2 R3
       99 MOVE                             R3 R0
      100 CALL                             R1 2 0
      101 GETUPVAL                         R1 6
      102 GETUPVAL                         R3 1
      103 NAMECALL                         R3 R3 K0 ["UpdateUnitTestOnly"]
      105 CALL                             R3 1 0
      106 GETUPVAL                         R4 2
      107 GETTABLEKS                       R3 R4 K1 ["Stepped"]
      109 NAMECALL                         R3 R3 K2 ["Wait"]
      111 CALL                             R3 1 0
      112 GETUPVAL                         R4 2
      113 GETTABLEKS                       R3 R4 K1 ["Stepped"]
      115 NAMECALL                         R3 R3 K2 ["Wait"]
      117 CALL                             R3 1 0
      118 GETUPVAL                         R4 1
      119 NAMECALL                         R4 R4 K0 ["UpdateUnitTestOnly"]
      121 CALL                             R4 1 0
      122 GETUPVAL                         R5 2
      123 GETTABLEKS                       R4 R5 K1 ["Stepped"]
      125 NAMECALL                         R4 R4 K2 ["Wait"]
      127 CALL                             R4 1 0
      128 GETUPVAL                         R5 2
      129 GETTABLEKS                       R4 R5 K1 ["Stepped"]
      131 NAMECALL                         R4 R4 K2 ["Wait"]
      133 CALL                             R4 1 0
      134 GETUPVAL                         R6 3
      135 GETTABLEKS                       R5 R6 K3 ["InputArea"]
      137 GETTABLEKS                       R4 R5 K4 ["Container"]
      139 LOADNIL                          R5
      140 MOVE                             R6 R5
      141 JUMPIF                           R6 ; [+12]
      142 GETUPVAL                         R9 4
      143 JUMPIFNOTEQKNIL                  R9 ; [+2]
      145 LOADB                            R8 0 +1
      146 LOADB                            R8 1
      147 FASTCALL2K                       ASSERT R8 K5 ; [+4]
      149 LOADK                            R9 K5 ["Container not mounted, ensure render is called"]
      150 GETIMPORT                        R7 K7 [assert]
      152 CALL                             R7 2 0
      153 GETUPVAL                         R6 4
      154 MOVE                             R5 R6
      155 FASTCALL2K                       ASSERT R5 K8 ; [+5]
      157 MOVE                             R7 R5
      158 LOADK                            R8 K8 ["Query container not found"]
      159 GETIMPORT                        R6 K7 [assert]
      161 CALL                             R6 2 0
      162 GETUPVAL                         R7 5
      163 MOVE                             R8 R5
      164 CALL                             R7 1 1
      165 GETTABLEKS                       R6 R7 K9 ["getByTestId"]
      167 MOVE                             R7 R4
      168 CALL                             R6 1 1
      169 LOADK                            R10 K10 ["No result found for testId \"%*\""]
      170 MOVE                             R12 R4
      171 NAMECALL                         R10 R10 K11 ["format"]
      173 CALL                             R10 2 1
      174 MOVE                             R9 R10
      175 FASTCALL2                        ASSERT R6 R9 ; [+4]
      177 MOVE                             R8 R6
      178 GETIMPORT                        R7 K7 [assert]
      180 CALL                             R7 2 0
      181 MOVE                             R3 R6
      182 LOADK                            R5 K12 ["TextBox"]
      183 LOADB                            R6 1
      184 NAMECALL                         R3 R3 K13 ["FindFirstChild"]
      186 CALL                             R3 3 1
      187 MOVE                             R5 R3
      188 JUMPIFNOT                        R5 ; [+4]
      189 LOADK                            R7 K12 ["TextBox"]
      190 NAMECALL                         R5 R3 K14 ["IsA"]
      192 CALL                             R5 2 1
      193 FASTCALL2K                       ASSERT R5 K15 ; [+4]
      195 LOADK                            R6 K15 ["TextBox not found"]
      196 GETIMPORT                        R4 K7 [assert]
      198 CALL                             R4 2 0
      199 MOVE                             R2 R3
      200 CALL                             R1 1 0
      201 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["Stepped"]
        7 NAMECALL                         R2 R2 K2 ["Wait"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K1 ["Stepped"]
       13 NAMECALL                         R2 R2 K2 ["Wait"]
       15 CALL                             R2 1 0
       16 GETUPVAL                         R3 0
       17 NAMECALL                         R3 R3 K0 ["UpdateUnitTestOnly"]
       19 CALL                             R3 1 0
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K1 ["Stepped"]
       23 NAMECALL                         R3 R3 K2 ["Wait"]
       25 CALL                             R3 1 0
       26 GETUPVAL                         R4 1
       27 GETTABLEKS                       R3 R4 K1 ["Stepped"]
       29 NAMECALL                         R3 R3 K2 ["Wait"]
       31 CALL                             R3 1 0
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R4 R5 K3 ["InputArea"]
       35 GETTABLEKS                       R3 R4 K4 ["Container"]
       37 LOADNIL                          R4
       38 MOVE                             R5 R4
       39 JUMPIF                           R5 ; [+12]
       40 GETUPVAL                         R8 3
       41 JUMPIFNOTEQKNIL                  R8 ; [+2]
       43 LOADB                            R7 0 +1
       44 LOADB                            R7 1
       45 FASTCALL2K                       ASSERT R7 K5 ; [+4]
       47 LOADK                            R8 K5 ["Container not mounted, ensure render is called"]
       48 GETIMPORT                        R6 K7 [assert]
       50 CALL                             R6 2 0
       51 GETUPVAL                         R5 3
       52 MOVE                             R4 R5
       53 FASTCALL2K                       ASSERT R4 K8 ; [+5]
       55 MOVE                             R6 R4
       56 LOADK                            R7 K8 ["Query container not found"]
       57 GETIMPORT                        R5 K7 [assert]
       59 CALL                             R5 2 0
       60 GETUPVAL                         R6 4
       61 MOVE                             R7 R4
       62 CALL                             R6 1 1
       63 GETTABLEKS                       R5 R6 K9 ["getByTestId"]
       65 MOVE                             R6 R3
       66 CALL                             R5 1 1
       67 LOADK                            R9 K10 ["No result found for testId \"%*\""]
       68 MOVE                             R11 R3
       69 NAMECALL                         R9 R9 K11 ["format"]
       71 CALL                             R9 2 1
       72 MOVE                             R8 R9
       73 FASTCALL2                        ASSERT R5 R8 ; [+4]
       75 MOVE                             R7 R5
       76 GETIMPORT                        R6 K7 [assert]
       78 CALL                             R6 2 0
       79 MOVE                             R2 R5
       80 LOADK                            R4 K12 ["TextBox"]
       81 LOADB                            R5 1
       82 NAMECALL                         R2 R2 K13 ["FindFirstChild"]
       84 CALL                             R2 3 1
       85 MOVE                             R4 R2
       86 JUMPIFNOT                        R4 ; [+4]
       87 LOADK                            R6 K12 ["TextBox"]
       88 NAMECALL                         R4 R2 K14 ["IsA"]
       90 CALL                             R4 2 1
       91 FASTCALL2K                       ASSERT R4 K15 ; [+4]
       93 LOADK                            R5 K15 ["TextBox not found"]
       94 GETIMPORT                        R3 K7 [assert]
       96 CALL                             R3 2 0
       97 MOVE                             R1 R2
       98 GETUPVAL                         R3 5
       99 GETTABLEKS                       R2 R3 K16 ["keyDown"]
      101 MOVE                             R3 R1
      102 DUPTABLE                         R4 K18 [{"key"}]
      103 SETTABLEKS                       R0 R4 K17 ["key"]
      105 CALL                             R2 2 0
      106 GETUPVAL                         R3 5
      107 GETTABLEKS                       R2 R3 K19 ["keyUp"]
      109 MOVE                             R3 R1
      110 DUPTABLE                         R4 K18 [{"key"}]
      111 SETTABLEKS                       R0 R4 K17 ["key"]
      113 CALL                             R2 2 0
      114 GETUPVAL                         R2 0
      115 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
      117 CALL                             R2 1 0
      118 GETUPVAL                         R3 1
      119 GETTABLEKS                       R2 R3 K1 ["Stepped"]
      121 NAMECALL                         R2 R2 K2 ["Wait"]
      123 CALL                             R2 1 0
      124 GETUPVAL                         R3 1
      125 GETTABLEKS                       R2 R3 K1 ["Stepped"]
      127 NAMECALL                         R2 R2 K2 ["Wait"]
      129 CALL                             R2 1 0
      130 RETURN                           R0 0

PROTO_63:
        0 JUMPIFNOT                        R2 ; [+9]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["keyDown"]
        4 MOVE                             R4 R0
        5 DUPTABLE                         R5 K2 [{"key"}]
        6 SETTABLEKS                       R1 R5 K1 ["key"]
        8 CALL                             R3 2 0
        9 JUMP                             ; [+8]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K3 ["keyUp"]
       13 MOVE                             R4 R0
       14 DUPTABLE                         R5 K2 [{"key"}]
       15 SETTABLEKS                       R1 R5 K1 ["key"]
       17 CALL                             R3 2 0
       18 GETUPVAL                         R3 1
       19 NAMECALL                         R3 R3 K4 ["UpdateUnitTestOnly"]
       21 CALL                             R3 1 0
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R3 R4 K5 ["Stepped"]
       25 NAMECALL                         R3 R3 K6 ["Wait"]
       27 CALL                             R3 1 0
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R3 R4 K5 ["Stepped"]
       31 NAMECALL                         R3 R3 K6 ["Wait"]
       33 CALL                             R3 1 0
       34 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["Stepped"]
        7 NAMECALL                         R1 R1 K2 ["Wait"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K1 ["Stepped"]
       13 NAMECALL                         R1 R1 K2 ["Wait"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R2 0
       17 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
       19 CALL                             R2 1 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K1 ["Stepped"]
       23 NAMECALL                         R2 R2 K2 ["Wait"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R2 R3 K1 ["Stepped"]
       29 NAMECALL                         R2 R2 K2 ["Wait"]
       31 CALL                             R2 1 0
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R3 R4 K3 ["InputArea"]
       35 GETTABLEKS                       R2 R3 K4 ["Container"]
       37 LOADNIL                          R3
       38 MOVE                             R4 R3
       39 JUMPIF                           R4 ; [+12]
       40 GETUPVAL                         R7 3
       41 JUMPIFNOTEQKNIL                  R7 ; [+2]
       43 LOADB                            R6 0 +1
       44 LOADB                            R6 1
       45 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       47 LOADK                            R7 K5 ["Container not mounted, ensure render is called"]
       48 GETIMPORT                        R5 K7 [assert]
       50 CALL                             R5 2 0
       51 GETUPVAL                         R4 3
       52 MOVE                             R3 R4
       53 FASTCALL2K                       ASSERT R3 K8 ; [+5]
       55 MOVE                             R5 R3
       56 LOADK                            R6 K8 ["Query container not found"]
       57 GETIMPORT                        R4 K7 [assert]
       59 CALL                             R4 2 0
       60 GETUPVAL                         R5 4
       61 MOVE                             R6 R3
       62 CALL                             R5 1 1
       63 GETTABLEKS                       R4 R5 K9 ["getByTestId"]
       65 MOVE                             R5 R2
       66 CALL                             R4 1 1
       67 LOADK                            R8 K10 ["No result found for testId \"%*\""]
       68 MOVE                             R10 R2
       69 NAMECALL                         R8 R8 K11 ["format"]
       71 CALL                             R8 2 1
       72 MOVE                             R7 R8
       73 FASTCALL2                        ASSERT R4 R7 ; [+4]
       75 MOVE                             R6 R4
       76 GETIMPORT                        R5 K7 [assert]
       78 CALL                             R5 2 0
       79 MOVE                             R1 R4
       80 LOADK                            R3 K12 ["TextBox"]
       81 LOADB                            R4 1
       82 NAMECALL                         R1 R1 K13 ["FindFirstChild"]
       84 CALL                             R1 3 1
       85 MOVE                             R3 R1
       86 JUMPIFNOT                        R3 ; [+4]
       87 LOADK                            R5 K12 ["TextBox"]
       88 NAMECALL                         R3 R1 K14 ["IsA"]
       90 CALL                             R3 2 1
       91 FASTCALL2K                       ASSERT R3 K15 ; [+4]
       93 LOADK                            R4 K15 ["TextBox not found"]
       94 GETIMPORT                        R2 K7 [assert]
       96 CALL                             R2 2 0
       97 MOVE                             R0 R1
       98 GETTABLEKS                       R1 R0 K16 ["Visible"]
      100 JUMPIFNOT                        R1 ; [+2]
      101 GETTABLEKS                       R1 R0 K17 ["TextEditable"]
      103 RETURN                           R1 1

PROTO_65:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 NAMECALL                         R4 R4 K0 ["UpdateUnitTestOnly"]
        4 CALL                             R4 1 0
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R4 R5 K1 ["Stepped"]
        8 NAMECALL                         R4 R4 K2 ["Wait"]
       10 CALL                             R4 1 0
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K1 ["Stepped"]
       14 NAMECALL                         R4 R4 K2 ["Wait"]
       16 CALL                             R4 1 0
       17 GETUPVAL                         R5 1
       18 NAMECALL                         R5 R5 K0 ["UpdateUnitTestOnly"]
       20 CALL                             R5 1 0
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R5 R6 K1 ["Stepped"]
       24 NAMECALL                         R5 R5 K2 ["Wait"]
       26 CALL                             R5 1 0
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R5 R6 K1 ["Stepped"]
       30 NAMECALL                         R5 R5 K2 ["Wait"]
       32 CALL                             R5 1 0
       33 GETUPVAL                         R7 3
       34 GETTABLEKS                       R6 R7 K3 ["InputArea"]
       36 GETTABLEKS                       R5 R6 K4 ["Container"]
       38 LOADNIL                          R6
       39 MOVE                             R7 R6
       40 JUMPIF                           R7 ; [+12]
       41 GETUPVAL                         R10 4
       42 JUMPIFNOTEQKNIL                  R10 ; [+2]
       44 LOADB                            R9 0 +1
       45 LOADB                            R9 1
       46 FASTCALL2K                       ASSERT R9 K5 ; [+4]
       48 LOADK                            R10 K5 ["Container not mounted, ensure render is called"]
       49 GETIMPORT                        R8 K7 [assert]
       51 CALL                             R8 2 0
       52 GETUPVAL                         R7 4
       53 MOVE                             R6 R7
       54 FASTCALL2K                       ASSERT R6 K8 ; [+5]
       56 MOVE                             R8 R6
       57 LOADK                            R9 K8 ["Query container not found"]
       58 GETIMPORT                        R7 K7 [assert]
       60 CALL                             R7 2 0
       61 GETUPVAL                         R8 5
       62 MOVE                             R9 R6
       63 CALL                             R8 1 1
       64 GETTABLEKS                       R7 R8 K9 ["getByTestId"]
       66 MOVE                             R8 R5
       67 CALL                             R7 1 1
       68 LOADK                            R11 K10 ["No result found for testId \"%*\""]
       69 MOVE                             R13 R5
       70 NAMECALL                         R11 R11 K11 ["format"]
       72 CALL                             R11 2 1
       73 MOVE                             R10 R11
       74 FASTCALL2                        ASSERT R7 R10 ; [+4]
       76 MOVE                             R9 R7
       77 GETIMPORT                        R8 K7 [assert]
       79 CALL                             R8 2 0
       80 MOVE                             R4 R7
       81 LOADK                            R6 K12 ["TextBox"]
       82 LOADB                            R7 1
       83 NAMECALL                         R4 R4 K13 ["FindFirstChild"]
       85 CALL                             R4 3 1
       86 MOVE                             R6 R4
       87 JUMPIFNOT                        R6 ; [+4]
       88 LOADK                            R8 K12 ["TextBox"]
       89 NAMECALL                         R6 R4 K14 ["IsA"]
       91 CALL                             R6 2 1
       92 FASTCALL2K                       ASSERT R6 K15 ; [+4]
       94 LOADK                            R7 K15 ["TextBox not found"]
       95 GETIMPORT                        R5 K7 [assert]
       97 CALL                             R5 2 0
       98 MOVE                             R3 R4
       99 GETTABLEKS                       R2 R3 K16 ["Visible"]
      101 JUMPIFNOT                        R2 ; [+2]
      102 GETTABLEKS                       R2 R3 K17 ["TextEditable"]
      104 CALL                             R1 1 1
      105 GETTABLEKS                       R0 R1 K18 ["toBe"]
      107 GETUPVAL                         R1 6
      108 CALL                             R0 1 0
      109 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          UPVAL U5
        7 CAPTURE                          UPVAL U6
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 1
       10 NAMECALL                         R1 R1 K0 ["await"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_67:
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

PROTO_68:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LENGTH                           R0 R1
        3 RETURN                           R0 1

PROTO_69:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["Stepped"]
        7 NAMECALL                         R1 R1 K2 ["Wait"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R1 R2 K1 ["Stepped"]
       13 NAMECALL                         R1 R1 K2 ["Wait"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R2 0
       17 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
       19 CALL                             R2 1 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K1 ["Stepped"]
       23 NAMECALL                         R2 R2 K2 ["Wait"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R2 R3 K1 ["Stepped"]
       29 NAMECALL                         R2 R2 K2 ["Wait"]
       31 CALL                             R2 1 0
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R3 R4 K3 ["InputArea"]
       35 GETTABLEKS                       R2 R3 K4 ["Container"]
       37 LOADNIL                          R3
       38 MOVE                             R4 R3
       39 JUMPIF                           R4 ; [+12]
       40 GETUPVAL                         R7 3
       41 JUMPIFNOTEQKNIL                  R7 ; [+2]
       43 LOADB                            R6 0 +1
       44 LOADB                            R6 1
       45 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       47 LOADK                            R7 K5 ["Container not mounted, ensure render is called"]
       48 GETIMPORT                        R5 K7 [assert]
       50 CALL                             R5 2 0
       51 GETUPVAL                         R4 3
       52 MOVE                             R3 R4
       53 FASTCALL2K                       ASSERT R3 K8 ; [+5]
       55 MOVE                             R5 R3
       56 LOADK                            R6 K8 ["Query container not found"]
       57 GETIMPORT                        R4 K7 [assert]
       59 CALL                             R4 2 0
       60 GETUPVAL                         R5 4
       61 MOVE                             R6 R3
       62 CALL                             R5 1 1
       63 GETTABLEKS                       R4 R5 K9 ["getByTestId"]
       65 MOVE                             R5 R2
       66 CALL                             R4 1 1
       67 LOADK                            R8 K10 ["No result found for testId \"%*\""]
       68 MOVE                             R10 R2
       69 NAMECALL                         R8 R8 K11 ["format"]
       71 CALL                             R8 2 1
       72 MOVE                             R7 R8
       73 FASTCALL2                        ASSERT R4 R7 ; [+4]
       75 MOVE                             R6 R4
       76 GETIMPORT                        R5 K7 [assert]
       78 CALL                             R5 2 0
       79 MOVE                             R1 R4
       80 LOADK                            R3 K12 ["TextBox"]
       81 LOADB                            R4 1
       82 NAMECALL                         R1 R1 K13 ["FindFirstChild"]
       84 CALL                             R1 3 1
       85 MOVE                             R3 R1
       86 JUMPIFNOT                        R3 ; [+4]
       87 LOADK                            R5 K12 ["TextBox"]
       88 NAMECALL                         R3 R1 K14 ["IsA"]
       90 CALL                             R3 2 1
       91 FASTCALL2K                       ASSERT R3 K15 ; [+4]
       93 LOADK                            R4 K15 ["TextBox not found"]
       94 GETIMPORT                        R2 K7 [assert]
       96 CALL                             R2 2 0
       97 MOVE                             R0 R1
       98 GETTABLEKS                       R2 R0 K16 ["PlaceholderText"]
      100 JUMPIFEQKS                       R2 K17 ["Responding..."] ; [+2]
      102 LOADB                            R1 0 +1
      103 LOADB                            R1 1
      104 RETURN                           R1 1

PROTO_70:
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
       30 GETUPVAL                         R3 0
       31 NAMECALL                         R3 R3 K10 ["UpdateUnitTestOnly"]
       33 CALL                             R3 1 0
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R3 R4 K11 ["Stepped"]
       37 NAMECALL                         R3 R3 K12 ["Wait"]
       39 CALL                             R3 1 0
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R3 R4 K11 ["Stepped"]
       43 NAMECALL                         R3 R3 K12 ["Wait"]
       45 CALL                             R3 1 0
       46 RETURN                           R0 0

PROTO_71:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_72:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_73:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_74:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_75:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_76:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_77:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_78:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_79:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_80:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_81:
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

PROTO_82:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_83:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_84:
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
       89 GETUPVAL                         R5 3
       90 NAMECALL                         R5 R5 K20 ["UpdateUnitTestOnly"]
       92 CALL                             R5 1 0
       93 GETUPVAL                         R6 4
       94 GETTABLEKS                       R5 R6 K21 ["Stepped"]
       96 NAMECALL                         R5 R5 K22 ["Wait"]
       98 CALL                             R5 1 0
       99 GETUPVAL                         R6 4
      100 GETTABLEKS                       R5 R6 K21 ["Stepped"]
      102 NAMECALL                         R5 R5 K22 ["Wait"]
      104 CALL                             R5 1 0
      105 GETUPVAL                         R3 5
      106 NEWCLOSURE                       R4 P0
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          VAL R2
      109 CALL                             R3 1 0
      110 GETUPVAL                         R3 3
      111 NAMECALL                         R3 R3 K20 ["UpdateUnitTestOnly"]
      113 CALL                             R3 1 0
      114 GETUPVAL                         R4 4
      115 GETTABLEKS                       R3 R4 K21 ["Stepped"]
      117 NAMECALL                         R3 R3 K22 ["Wait"]
      119 CALL                             R3 1 0
      120 GETUPVAL                         R4 4
      121 GETTABLEKS                       R3 R4 K21 ["Stepped"]
      123 NAMECALL                         R3 R3 K22 ["Wait"]
      125 CALL                             R3 1 0
      126 RETURN                           R0 0

PROTO_85:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_86:
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

PROTO_87:
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

PROTO_88:
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

PROTO_89:
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

PROTO_90:
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

PROTO_91:
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
       51 GETUPVAL                         R6 2
       52 NAMECALL                         R6 R6 K14 ["UpdateUnitTestOnly"]
       54 CALL                             R6 1 0
       55 GETUPVAL                         R7 3
       56 GETTABLEKS                       R6 R7 K15 ["Stepped"]
       58 NAMECALL                         R6 R6 K16 ["Wait"]
       60 CALL                             R6 1 0
       61 GETUPVAL                         R7 3
       62 GETTABLEKS                       R6 R7 K15 ["Stepped"]
       64 NAMECALL                         R6 R6 K16 ["Wait"]
       66 CALL                             R6 1 0
       67 LOADK                            R6 K6 ["ScrollingFrame"]
       68 NAMECALL                         R4 R2 K7 ["FindFirstAncestorWhichIsA"]
       70 CALL                             R4 2 1
       71 MOVE                             R6 R4
       72 JUMPIFNOT                        R6 ; [+4]
       73 LOADK                            R8 K6 ["ScrollingFrame"]
       74 NAMECALL                         R6 R4 K8 ["IsA"]
       76 CALL                             R6 2 1
       77 FASTCALL2K                       ASSERT R6 K9 ; [+4]
       79 LOADK                            R7 K9 ["Scroll area not found for widget"]
       80 GETIMPORT                        R5 K4 [assert]
       82 CALL                             R5 2 0
       83 GETTABLEKS                       R6 R4 K10 ["AbsolutePosition"]
       85 GETTABLEKS                       R8 R2 K10 ["AbsolutePosition"]
       87 GETTABLEKS                       R10 R2 K12 ["AbsoluteSize"]
       89 DIVK                             R9 R10 K11 [2]
       90 ADD                              R7 R8 R9
       91 SUB                              R5 R6 R7
       92 GETTABLEKS                       R6 R4 K13 ["CanvasPosition"]
       94 SUB                              R6 R6 R5
       95 SETTABLEKS                       R6 R4 K13 ["CanvasPosition"]
       97 GETUPVAL                         R6 2
       98 NAMECALL                         R6 R6 K14 ["UpdateUnitTestOnly"]
      100 CALL                             R6 1 0
      101 GETUPVAL                         R7 3
      102 GETTABLEKS                       R6 R7 K15 ["Stepped"]
      104 NAMECALL                         R6 R6 K16 ["Wait"]
      106 CALL                             R6 1 0
      107 GETUPVAL                         R7 3
      108 GETTABLEKS                       R6 R7 K15 ["Stepped"]
      110 NAMECALL                         R6 R6 K16 ["Wait"]
      112 CALL                             R6 1 0
      113 GETUPVAL                         R4 4
      114 NEWCLOSURE                       R5 P0
      115 CAPTURE                          UPVAL U5
      116 CAPTURE                          VAL R2
      117 CALL                             R4 1 0
      118 GETUPVAL                         R4 2
      119 NAMECALL                         R4 R4 K14 ["UpdateUnitTestOnly"]
      121 CALL                             R4 1 0
      122 GETUPVAL                         R5 3
      123 GETTABLEKS                       R4 R5 K15 ["Stepped"]
      125 NAMECALL                         R4 R4 K16 ["Wait"]
      127 CALL                             R4 1 0
      128 GETUPVAL                         R5 3
      129 GETTABLEKS                       R4 R5 K15 ["Stepped"]
      131 NAMECALL                         R4 R4 K16 ["Wait"]
      133 CALL                             R4 1 0
      134 RETURN                           R0 0

PROTO_92:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_93:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_94:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_95:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_96:
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

PROTO_97:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K0 ["Enums"]
        8 GETTABLEKS                       R4 R5 K1 ["IconName"]
       10 GETTABLEKS                       R3 R4 K2 ["TwoArrowsSpinClockwise"]
       12 MOVE                             R4 R0
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 JUMP                             ; [+48]
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R3 R4 K3 ["MessageActions"]
       19 GETTABLEKS                       R2 R3 K4 ["Retry"]
       21 MOVE                             R3 R0
       22 MOVE                             R4 R3
       23 JUMPIF                           R4 ; [+12]
       24 GETUPVAL                         R7 4
       25 JUMPIFNOTEQKNIL                  R7 ; [+2]
       27 LOADB                            R6 0 +1
       28 LOADB                            R6 1
       29 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       31 LOADK                            R7 K5 ["Container not mounted, ensure render is called"]
       32 GETIMPORT                        R5 K7 [assert]
       34 CALL                             R5 2 0
       35 GETUPVAL                         R4 4
       36 MOVE                             R3 R4
       37 FASTCALL2K                       ASSERT R3 K8 ; [+5]
       39 MOVE                             R5 R3
       40 LOADK                            R6 K8 ["Query container not found"]
       41 GETIMPORT                        R4 K7 [assert]
       43 CALL                             R4 2 0
       44 GETUPVAL                         R5 5
       45 MOVE                             R6 R3
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R4 R5 K9 ["getByTestId"]
       49 MOVE                             R5 R2
       50 CALL                             R4 1 1
       51 LOADK                            R8 K10 ["No result found for testId \"%*\""]
       52 MOVE                             R10 R2
       53 NAMECALL                         R8 R8 K11 ["format"]
       55 CALL                             R8 2 1
       56 MOVE                             R7 R8
       57 FASTCALL2                        ASSERT R4 R7 ; [+4]
       59 MOVE                             R6 R4
       60 GETIMPORT                        R5 K7 [assert]
       62 CALL                             R5 2 0
       63 MOVE                             R1 R4
       64 MOVE                             R2 R1
       65 LOADK                            R5 K12 ["ScrollingFrame"]
       66 NAMECALL                         R3 R2 K13 ["FindFirstAncestorWhichIsA"]
       68 CALL                             R3 2 1
       69 MOVE                             R5 R3
       70 JUMPIFNOT                        R5 ; [+4]
       71 LOADK                            R7 K12 ["ScrollingFrame"]
       72 NAMECALL                         R5 R3 K14 ["IsA"]
       74 CALL                             R5 2 1
       75 FASTCALL2K                       ASSERT R5 K15 ; [+4]
       77 LOADK                            R6 K15 ["Scroll area not found for widget"]
       78 GETIMPORT                        R4 K7 [assert]
       80 CALL                             R4 2 0
       81 GETTABLEKS                       R5 R3 K16 ["AbsolutePosition"]
       83 GETTABLEKS                       R7 R2 K16 ["AbsolutePosition"]
       85 GETTABLEKS                       R9 R2 K18 ["AbsoluteSize"]
       87 DIVK                             R8 R9 K17 [2]
       88 ADD                              R6 R7 R8
       89 SUB                              R4 R5 R6
       90 GETTABLEKS                       R5 R3 K19 ["CanvasPosition"]
       92 SUB                              R5 R5 R4
       93 SETTABLEKS                       R5 R3 K19 ["CanvasPosition"]
       95 GETUPVAL                         R5 6
       96 NAMECALL                         R5 R5 K20 ["UpdateUnitTestOnly"]
       98 CALL                             R5 1 0
       99 GETUPVAL                         R6 7
      100 GETTABLEKS                       R5 R6 K21 ["Stepped"]
      102 NAMECALL                         R5 R5 K22 ["Wait"]
      104 CALL                             R5 1 0
      105 GETUPVAL                         R6 7
      106 GETTABLEKS                       R5 R6 K21 ["Stepped"]
      108 NAMECALL                         R5 R5 K22 ["Wait"]
      110 CALL                             R5 1 0
      111 MOVE                             R2 R1
      112 GETUPVAL                         R3 8
      113 NEWCLOSURE                       R4 P0
      114 CAPTURE                          UPVAL U9
      115 CAPTURE                          VAL R2
      116 CALL                             R3 1 0
      117 GETUPVAL                         R3 6
      118 NAMECALL                         R3 R3 K20 ["UpdateUnitTestOnly"]
      120 CALL                             R3 1 0
      121 GETUPVAL                         R4 7
      122 GETTABLEKS                       R3 R4 K21 ["Stepped"]
      124 NAMECALL                         R3 R3 K22 ["Wait"]
      126 CALL                             R3 1 0
      127 GETUPVAL                         R4 7
      128 GETTABLEKS                       R3 R4 K21 ["Stepped"]
      130 NAMECALL                         R3 R3 K22 ["Wait"]
      132 CALL                             R3 1 0
      133 RETURN                           R0 0

PROTO_98:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K0 ["Enums"]
        8 GETTABLEKS                       R4 R5 K1 ["IconName"]
       10 GETTABLEKS                       R3 R4 K2 ["ThumbUp"]
       12 MOVE                             R4 R0
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 JUMP                             ; [+58]
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R3 R4 K3 ["MessageActions"]
       19 GETTABLEKS                       R2 R3 K4 ["ThumbsUp"]
       21 MOVE                             R3 R0
       22 MOVE                             R4 R3
       23 JUMPIF                           R4 ; [+12]
       24 GETUPVAL                         R7 4
       25 JUMPIFNOTEQKNIL                  R7 ; [+2]
       27 LOADB                            R6 0 +1
       28 LOADB                            R6 1
       29 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       31 LOADK                            R7 K5 ["Container not mounted, ensure render is called"]
       32 GETIMPORT                        R5 K7 [assert]
       34 CALL                             R5 2 0
       35 GETUPVAL                         R4 4
       36 MOVE                             R3 R4
       37 FASTCALL2K                       ASSERT R3 K8 ; [+5]
       39 MOVE                             R5 R3
       40 LOADK                            R6 K8 ["Query container not found"]
       41 GETIMPORT                        R4 K7 [assert]
       43 CALL                             R4 2 0
       44 GETUPVAL                         R5 5
       45 MOVE                             R6 R3
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R4 R5 K9 ["getByTestId"]
       49 MOVE                             R5 R2
       50 CALL                             R4 1 1
       51 LOADK                            R8 K10 ["No result found for testId \"%*\""]
       52 MOVE                             R10 R2
       53 NAMECALL                         R8 R8 K11 ["format"]
       55 CALL                             R8 2 1
       56 MOVE                             R7 R8
       57 FASTCALL2                        ASSERT R4 R7 ; [+4]
       59 MOVE                             R6 R4
       60 GETIMPORT                        R5 K7 [assert]
       62 CALL                             R5 2 0
       63 MOVE                             R1 R4
       64 LOADK                            R5 K12 ["GuiButton"]
       65 NAMECALL                         R3 R1 K13 ["IsA"]
       67 CALL                             R3 2 1
       68 FASTCALL2K                       ASSERT R3 K14 ; [+4]
       70 LOADK                            R4 K14 ["Thumbs up button is not a GuiButton"]
       71 GETIMPORT                        R2 K7 [assert]
       73 CALL                             R2 2 0
       74 MOVE                             R2 R1
       75 LOADK                            R5 K15 ["ScrollingFrame"]
       76 NAMECALL                         R3 R2 K16 ["FindFirstAncestorWhichIsA"]
       78 CALL                             R3 2 1
       79 MOVE                             R5 R3
       80 JUMPIFNOT                        R5 ; [+4]
       81 LOADK                            R7 K15 ["ScrollingFrame"]
       82 NAMECALL                         R5 R3 K13 ["IsA"]
       84 CALL                             R5 2 1
       85 FASTCALL2K                       ASSERT R5 K17 ; [+4]
       87 LOADK                            R6 K17 ["Scroll area not found for widget"]
       88 GETIMPORT                        R4 K7 [assert]
       90 CALL                             R4 2 0
       91 GETTABLEKS                       R5 R3 K18 ["AbsolutePosition"]
       93 GETTABLEKS                       R7 R2 K18 ["AbsolutePosition"]
       95 GETTABLEKS                       R9 R2 K20 ["AbsoluteSize"]
       97 DIVK                             R8 R9 K19 [2]
       98 ADD                              R6 R7 R8
       99 SUB                              R4 R5 R6
      100 GETTABLEKS                       R5 R3 K21 ["CanvasPosition"]
      102 SUB                              R5 R5 R4
      103 SETTABLEKS                       R5 R3 K21 ["CanvasPosition"]
      105 GETUPVAL                         R5 6
      106 NAMECALL                         R5 R5 K22 ["UpdateUnitTestOnly"]
      108 CALL                             R5 1 0
      109 GETUPVAL                         R6 7
      110 GETTABLEKS                       R5 R6 K23 ["Stepped"]
      112 NAMECALL                         R5 R5 K24 ["Wait"]
      114 CALL                             R5 1 0
      115 GETUPVAL                         R6 7
      116 GETTABLEKS                       R5 R6 K23 ["Stepped"]
      118 NAMECALL                         R5 R5 K24 ["Wait"]
      120 CALL                             R5 1 0
      121 MOVE                             R2 R1
      122 GETUPVAL                         R3 8
      123 NEWCLOSURE                       R4 P0
      124 CAPTURE                          UPVAL U9
      125 CAPTURE                          VAL R2
      126 CALL                             R3 1 0
      127 GETUPVAL                         R3 6
      128 NAMECALL                         R3 R3 K22 ["UpdateUnitTestOnly"]
      130 CALL                             R3 1 0
      131 GETUPVAL                         R4 7
      132 GETTABLEKS                       R3 R4 K23 ["Stepped"]
      134 NAMECALL                         R3 R3 K24 ["Wait"]
      136 CALL                             R3 1 0
      137 GETUPVAL                         R4 7
      138 GETTABLEKS                       R3 R4 K23 ["Stepped"]
      140 NAMECALL                         R3 R3 K24 ["Wait"]
      142 CALL                             R3 1 0
      143 RETURN                           R0 0

PROTO_99:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K0 ["Enums"]
        8 GETTABLEKS                       R4 R5 K1 ["IconName"]
       10 GETTABLEKS                       R3 R4 K2 ["ThumbDown"]
       12 MOVE                             R4 R0
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 JUMP                             ; [+58]
       16 GETUPVAL                         R4 3
       17 GETTABLEKS                       R3 R4 K3 ["MessageActions"]
       19 GETTABLEKS                       R2 R3 K4 ["ThumbsDown"]
       21 MOVE                             R3 R0
       22 MOVE                             R4 R3
       23 JUMPIF                           R4 ; [+12]
       24 GETUPVAL                         R7 4
       25 JUMPIFNOTEQKNIL                  R7 ; [+2]
       27 LOADB                            R6 0 +1
       28 LOADB                            R6 1
       29 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       31 LOADK                            R7 K5 ["Container not mounted, ensure render is called"]
       32 GETIMPORT                        R5 K7 [assert]
       34 CALL                             R5 2 0
       35 GETUPVAL                         R4 4
       36 MOVE                             R3 R4
       37 FASTCALL2K                       ASSERT R3 K8 ; [+5]
       39 MOVE                             R5 R3
       40 LOADK                            R6 K8 ["Query container not found"]
       41 GETIMPORT                        R4 K7 [assert]
       43 CALL                             R4 2 0
       44 GETUPVAL                         R5 5
       45 MOVE                             R6 R3
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R4 R5 K9 ["getByTestId"]
       49 MOVE                             R5 R2
       50 CALL                             R4 1 1
       51 LOADK                            R8 K10 ["No result found for testId \"%*\""]
       52 MOVE                             R10 R2
       53 NAMECALL                         R8 R8 K11 ["format"]
       55 CALL                             R8 2 1
       56 MOVE                             R7 R8
       57 FASTCALL2                        ASSERT R4 R7 ; [+4]
       59 MOVE                             R6 R4
       60 GETIMPORT                        R5 K7 [assert]
       62 CALL                             R5 2 0
       63 MOVE                             R1 R4
       64 LOADK                            R5 K12 ["GuiButton"]
       65 NAMECALL                         R3 R1 K13 ["IsA"]
       67 CALL                             R3 2 1
       68 FASTCALL2K                       ASSERT R3 K14 ; [+4]
       70 LOADK                            R4 K14 ["Thumbs down button is not a GuiButton"]
       71 GETIMPORT                        R2 K7 [assert]
       73 CALL                             R2 2 0
       74 MOVE                             R2 R1
       75 LOADK                            R5 K15 ["ScrollingFrame"]
       76 NAMECALL                         R3 R2 K16 ["FindFirstAncestorWhichIsA"]
       78 CALL                             R3 2 1
       79 MOVE                             R5 R3
       80 JUMPIFNOT                        R5 ; [+4]
       81 LOADK                            R7 K15 ["ScrollingFrame"]
       82 NAMECALL                         R5 R3 K13 ["IsA"]
       84 CALL                             R5 2 1
       85 FASTCALL2K                       ASSERT R5 K17 ; [+4]
       87 LOADK                            R6 K17 ["Scroll area not found for widget"]
       88 GETIMPORT                        R4 K7 [assert]
       90 CALL                             R4 2 0
       91 GETTABLEKS                       R5 R3 K18 ["AbsolutePosition"]
       93 GETTABLEKS                       R7 R2 K18 ["AbsolutePosition"]
       95 GETTABLEKS                       R9 R2 K20 ["AbsoluteSize"]
       97 DIVK                             R8 R9 K19 [2]
       98 ADD                              R6 R7 R8
       99 SUB                              R4 R5 R6
      100 GETTABLEKS                       R5 R3 K21 ["CanvasPosition"]
      102 SUB                              R5 R5 R4
      103 SETTABLEKS                       R5 R3 K21 ["CanvasPosition"]
      105 GETUPVAL                         R5 6
      106 NAMECALL                         R5 R5 K22 ["UpdateUnitTestOnly"]
      108 CALL                             R5 1 0
      109 GETUPVAL                         R6 7
      110 GETTABLEKS                       R5 R6 K23 ["Stepped"]
      112 NAMECALL                         R5 R5 K24 ["Wait"]
      114 CALL                             R5 1 0
      115 GETUPVAL                         R6 7
      116 GETTABLEKS                       R5 R6 K23 ["Stepped"]
      118 NAMECALL                         R5 R5 K24 ["Wait"]
      120 CALL                             R5 1 0
      121 MOVE                             R2 R1
      122 GETUPVAL                         R3 8
      123 NEWCLOSURE                       R4 P0
      124 CAPTURE                          UPVAL U9
      125 CAPTURE                          VAL R2
      126 CALL                             R3 1 0
      127 GETUPVAL                         R3 6
      128 NAMECALL                         R3 R3 K22 ["UpdateUnitTestOnly"]
      130 CALL                             R3 1 0
      131 GETUPVAL                         R4 7
      132 GETTABLEKS                       R3 R4 K23 ["Stepped"]
      134 NAMECALL                         R3 R3 K24 ["Wait"]
      136 CALL                             R3 1 0
      137 GETUPVAL                         R4 7
      138 GETTABLEKS                       R3 R4 K23 ["Stepped"]
      140 NAMECALL                         R3 R3 K24 ["Wait"]
      142 CALL                             R3 1 0
      143 RETURN                           R0 0

PROTO_100:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["Enums"]
        4 GETTABLEKS                       R3 R4 K1 ["IconName"]
        6 GETTABLEKS                       R2 R3 K2 ["TwoArrowsBranchRight"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 1
       10 LOADK                            R4 K3 ["ScrollingFrame"]
       11 NAMECALL                         R2 R1 K4 ["FindFirstAncestorWhichIsA"]
       13 CALL                             R2 2 1
       14 MOVE                             R4 R2
       15 JUMPIFNOT                        R4 ; [+4]
       16 LOADK                            R6 K3 ["ScrollingFrame"]
       17 NAMECALL                         R4 R2 K5 ["IsA"]
       19 CALL                             R4 2 1
       20 FASTCALL2K                       ASSERT R4 K6 ; [+4]
       22 LOADK                            R5 K6 ["Scroll area not found for widget"]
       23 GETIMPORT                        R3 K8 [assert]
       25 CALL                             R3 2 0
       26 GETTABLEKS                       R4 R2 K9 ["AbsolutePosition"]
       28 GETTABLEKS                       R6 R1 K9 ["AbsolutePosition"]
       30 GETTABLEKS                       R8 R1 K11 ["AbsoluteSize"]
       32 DIVK                             R7 R8 K10 [2]
       33 ADD                              R5 R6 R7
       34 SUB                              R3 R4 R5
       35 GETTABLEKS                       R4 R2 K12 ["CanvasPosition"]
       37 SUB                              R4 R4 R3
       38 SETTABLEKS                       R4 R2 K12 ["CanvasPosition"]
       40 GETUPVAL                         R4 2
       41 NAMECALL                         R4 R4 K13 ["UpdateUnitTestOnly"]
       43 CALL                             R4 1 0
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R4 R5 K14 ["Stepped"]
       47 NAMECALL                         R4 R4 K15 ["Wait"]
       49 CALL                             R4 1 0
       50 GETUPVAL                         R5 3
       51 GETTABLEKS                       R4 R5 K14 ["Stepped"]
       53 NAMECALL                         R4 R4 K15 ["Wait"]
       55 CALL                             R4 1 0
       56 GETUPVAL                         R2 4
       57 NEWCLOSURE                       R3 P0
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          VAL R1
       60 CALL                             R2 1 0
       61 GETUPVAL                         R2 2
       62 NAMECALL                         R2 R2 K13 ["UpdateUnitTestOnly"]
       64 CALL                             R2 1 0
       65 GETUPVAL                         R3 3
       66 GETTABLEKS                       R2 R3 K14 ["Stepped"]
       68 NAMECALL                         R2 R2 K15 ["Wait"]
       70 CALL                             R2 1 0
       71 GETUPVAL                         R3 3
       72 GETTABLEKS                       R2 R3 K14 ["Stepped"]
       74 NAMECALL                         R2 R2 K15 ["Wait"]
       76 CALL                             R2 1 0
       77 RETURN                           R0 0

PROTO_101:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+36]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K0 ["Enums"]
        7 GETTABLEKS                       R3 R4 K1 ["IconName"]
        9 GETTABLEKS                       R2 R3 K2 ["ThumbUp"]
       11 MOVE                             R3 R0
       12 CALL                             R1 2 1
       13 LOADK                            R5 K3 ["TextLabel"]
       14 NAMECALL                         R3 R1 K4 ["IsA"]
       16 CALL                             R3 2 1
       17 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       19 LOADK                            R4 K5 ["Thumbs up button is not a TextLabel"]
       20 GETIMPORT                        R2 K7 [assert]
       22 CALL                             R2 2 0
       23 GETTABLEKS                       R3 R1 K8 ["FontFace"]
       25 GETTABLEKS                       R2 R3 K9 ["Bold"]
       27 JUMPIFNOT                        R2 ; [+8]
       28 LOADK                            R3 K10 ["%*-Filled"]
       29 GETTABLEKS                       R5 R1 K11 ["Text"]
       31 NAMECALL                         R3 R3 K12 ["format"]
       33 CALL                             R3 2 1
       34 MOVE                             R2 R3
       35 RETURN                           R2 1
       36 GETTABLEKS                       R2 R1 K11 ["Text"]
       38 RETURN                           R2 1
       39 GETUPVAL                         R4 3
       40 GETTABLEKS                       R3 R4 K13 ["MessageActions"]
       42 GETTABLEKS                       R2 R3 K14 ["ThumbsUp"]
       44 MOVE                             R3 R0
       45 MOVE                             R4 R3
       46 JUMPIF                           R4 ; [+12]
       47 GETUPVAL                         R7 4
       48 JUMPIFNOTEQKNIL                  R7 ; [+2]
       50 LOADB                            R6 0 +1
       51 LOADB                            R6 1
       52 FASTCALL2K                       ASSERT R6 K15 ; [+4]
       54 LOADK                            R7 K15 ["Container not mounted, ensure render is called"]
       55 GETIMPORT                        R5 K7 [assert]
       57 CALL                             R5 2 0
       58 GETUPVAL                         R4 4
       59 MOVE                             R3 R4
       60 FASTCALL2K                       ASSERT R3 K16 ; [+5]
       62 MOVE                             R5 R3
       63 LOADK                            R6 K16 ["Query container not found"]
       64 GETIMPORT                        R4 K7 [assert]
       66 CALL                             R4 2 0
       67 GETUPVAL                         R5 5
       68 MOVE                             R6 R3
       69 CALL                             R5 1 1
       70 GETTABLEKS                       R4 R5 K17 ["getByTestId"]
       72 MOVE                             R5 R2
       73 CALL                             R4 1 1
       74 LOADK                            R8 K18 ["No result found for testId \"%*\""]
       75 MOVE                             R10 R2
       76 NAMECALL                         R8 R8 K12 ["format"]
       78 CALL                             R8 2 1
       79 MOVE                             R7 R8
       80 FASTCALL2                        ASSERT R4 R7 ; [+4]
       82 MOVE                             R6 R4
       83 GETIMPORT                        R5 K7 [assert]
       85 CALL                             R5 2 0
       86 MOVE                             R1 R4
       87 LOADK                            R5 K19 ["GuiButton"]
       88 NAMECALL                         R3 R1 K4 ["IsA"]
       90 CALL                             R3 2 1
       91 FASTCALL2K                       ASSERT R3 K20 ; [+4]
       93 LOADK                            R4 K20 ["Thumbs up button is not a GuiButton"]
       94 GETIMPORT                        R2 K7 [assert]
       96 CALL                             R2 2 0
       97 LOADK                            R4 K21 ["ImageLabel"]
       98 LOADB                            R5 1
       99 NAMECALL                         R2 R1 K22 ["FindFirstChildWhichIsA"]
      101 CALL                             R2 3 1
      102 FASTCALL2K                       ASSERT R2 K23 ; [+5]
      104 MOVE                             R4 R2
      105 LOADK                            R5 K23 ["Icon child not found in thumbs up button"]
      106 GETIMPORT                        R3 K7 [assert]
      108 CALL                             R3 2 0
      109 GETTABLEKS                       R3 R2 K24 ["Image"]
      111 RETURN                           R3 1

PROTO_102:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+36]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R4 R5 K0 ["Enums"]
        7 GETTABLEKS                       R3 R4 K1 ["IconName"]
        9 GETTABLEKS                       R2 R3 K2 ["ThumbDown"]
       11 MOVE                             R3 R0
       12 CALL                             R1 2 1
       13 LOADK                            R5 K3 ["TextLabel"]
       14 NAMECALL                         R3 R1 K4 ["IsA"]
       16 CALL                             R3 2 1
       17 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       19 LOADK                            R4 K5 ["Thumbs down button is not a TextLabel"]
       20 GETIMPORT                        R2 K7 [assert]
       22 CALL                             R2 2 0
       23 GETTABLEKS                       R3 R1 K8 ["FontFace"]
       25 GETTABLEKS                       R2 R3 K9 ["Bold"]
       27 JUMPIFNOT                        R2 ; [+8]
       28 LOADK                            R3 K10 ["%*-Filled"]
       29 GETTABLEKS                       R5 R1 K11 ["Text"]
       31 NAMECALL                         R3 R3 K12 ["format"]
       33 CALL                             R3 2 1
       34 MOVE                             R2 R3
       35 RETURN                           R2 1
       36 GETTABLEKS                       R2 R1 K11 ["Text"]
       38 RETURN                           R2 1
       39 GETUPVAL                         R4 3
       40 GETTABLEKS                       R3 R4 K13 ["MessageActions"]
       42 GETTABLEKS                       R2 R3 K14 ["ThumbsDown"]
       44 MOVE                             R3 R0
       45 MOVE                             R4 R3
       46 JUMPIF                           R4 ; [+12]
       47 GETUPVAL                         R7 4
       48 JUMPIFNOTEQKNIL                  R7 ; [+2]
       50 LOADB                            R6 0 +1
       51 LOADB                            R6 1
       52 FASTCALL2K                       ASSERT R6 K15 ; [+4]
       54 LOADK                            R7 K15 ["Container not mounted, ensure render is called"]
       55 GETIMPORT                        R5 K7 [assert]
       57 CALL                             R5 2 0
       58 GETUPVAL                         R4 4
       59 MOVE                             R3 R4
       60 FASTCALL2K                       ASSERT R3 K16 ; [+5]
       62 MOVE                             R5 R3
       63 LOADK                            R6 K16 ["Query container not found"]
       64 GETIMPORT                        R4 K7 [assert]
       66 CALL                             R4 2 0
       67 GETUPVAL                         R5 5
       68 MOVE                             R6 R3
       69 CALL                             R5 1 1
       70 GETTABLEKS                       R4 R5 K17 ["getByTestId"]
       72 MOVE                             R5 R2
       73 CALL                             R4 1 1
       74 LOADK                            R8 K18 ["No result found for testId \"%*\""]
       75 MOVE                             R10 R2
       76 NAMECALL                         R8 R8 K12 ["format"]
       78 CALL                             R8 2 1
       79 MOVE                             R7 R8
       80 FASTCALL2                        ASSERT R4 R7 ; [+4]
       82 MOVE                             R6 R4
       83 GETIMPORT                        R5 K7 [assert]
       85 CALL                             R5 2 0
       86 MOVE                             R1 R4
       87 LOADK                            R5 K19 ["GuiButton"]
       88 NAMECALL                         R3 R1 K4 ["IsA"]
       90 CALL                             R3 2 1
       91 FASTCALL2K                       ASSERT R3 K20 ; [+4]
       93 LOADK                            R4 K20 ["Thumbs down button is not a GuiButton"]
       94 GETIMPORT                        R2 K7 [assert]
       96 CALL                             R2 2 0
       97 LOADK                            R4 K21 ["ImageLabel"]
       98 LOADB                            R5 1
       99 NAMECALL                         R2 R1 K22 ["FindFirstChildWhichIsA"]
      101 CALL                             R2 3 1
      102 FASTCALL2K                       ASSERT R2 K23 ; [+5]
      104 MOVE                             R4 R2
      105 LOADK                            R5 K23 ["Icon child not found in thumbs down button"]
      106 GETIMPORT                        R3 K7 [assert]
      108 CALL                             R3 2 0
      109 GETTABLEKS                       R3 R2 K24 ["Image"]
      111 RETURN                           R3 1

PROTO_103:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getConversation"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_104:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setConversation"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_105:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K1 ["Stepped"]
       12 NAMECALL                         R1 R1 K2 ["Wait"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R1 R2 K1 ["Stepped"]
       18 NAMECALL                         R1 R1 K2 ["Wait"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_106:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setThreadId"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_107:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getThreadId"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 2
       10 NAMECALL                         R2 R2 K1 ["UpdateUnitTestOnly"]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R2 R3 K2 ["Stepped"]
       16 NAMECALL                         R2 R2 K3 ["Wait"]
       18 CALL                             R2 1 0
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R2 R3 K2 ["Stepped"]
       22 NAMECALL                         R2 R2 K3 ["Wait"]
       24 CALL                             R2 1 0
       25 RETURN                           R1 1

PROTO_108:
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
       12 GETUPVAL                         R1 4
       13 NAMECALL                         R1 R1 K1 ["UpdateUnitTestOnly"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R2 5
       17 GETTABLEKS                       R1 R2 K2 ["Stepped"]
       19 NAMECALL                         R1 R1 K3 ["Wait"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R2 5
       23 GETTABLEKS                       R1 R2 K2 ["Stepped"]
       25 NAMECALL                         R1 R1 K3 ["Wait"]
       27 CALL                             R1 1 0
       28 GETIMPORT                        R1 K5 [next]
       30 GETUPVAL                         R3 0
       31 CALL                             R3 0 1
       32 JUMPIFNOT                        R3 ; [+3]
       33 GETTABLEKS                       R2 R0 K6 ["threads"]
       35 JUMP                             ; [+1]
       36 MOVE                             R2 R0
       37 CALL                             R1 1 1
       38 FASTCALL2K                       ASSERT R1 K7 ; [+5]
       40 MOVE                             R3 R1
       41 LOADK                            R4 K7 ["Conversation must have at least one thread"]
       42 GETIMPORT                        R2 K9 [assert]
       44 CALL                             R2 2 0
       45 GETUPVAL                         R3 6
       46 GETTABLEKS                       R2 R3 K10 ["getThreadId"]
       48 CALL                             R2 0 1
       49 GETUPVAL                         R3 2
       50 NEWCLOSURE                       R4 P1
       51 CAPTURE                          UPVAL U6
       52 CAPTURE                          VAL R1
       53 CALL                             R3 1 0
       54 GETUPVAL                         R3 4
       55 NAMECALL                         R3 R3 K1 ["UpdateUnitTestOnly"]
       57 CALL                             R3 1 0
       58 GETUPVAL                         R4 5
       59 GETTABLEKS                       R3 R4 K2 ["Stepped"]
       61 NAMECALL                         R3 R3 K3 ["Wait"]
       63 CALL                             R3 1 0
       64 GETUPVAL                         R4 5
       65 GETTABLEKS                       R3 R4 K2 ["Stepped"]
       67 NAMECALL                         R3 R3 K3 ["Wait"]
       69 CALL                             R3 1 0
       70 GETUPVAL                         R2 4
       71 NAMECALL                         R2 R2 K1 ["UpdateUnitTestOnly"]
       73 CALL                             R2 1 0
       74 GETUPVAL                         R3 5
       75 GETTABLEKS                       R2 R3 K2 ["Stepped"]
       77 NAMECALL                         R2 R2 K3 ["Wait"]
       79 CALL                             R2 1 0
       80 GETUPVAL                         R3 5
       81 GETTABLEKS                       R2 R3 K2 ["Stepped"]
       83 NAMECALL                         R2 R2 K3 ["Wait"]
       85 CALL                             R2 1 0
       86 RETURN                           R0 0

PROTO_109:
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
       48 GETUPVAL                         R1 3
       49 NEWCLOSURE                       R2 P0
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          VAL R0
       52 CALL                             R1 1 0
       53 GETUPVAL                         R1 5
       54 NAMECALL                         R1 R1 K9 ["UpdateUnitTestOnly"]
       56 CALL                             R1 1 0
       57 GETUPVAL                         R2 6
       58 GETTABLEKS                       R1 R2 K10 ["Stepped"]
       60 NAMECALL                         R1 R1 K11 ["Wait"]
       62 CALL                             R1 1 0
       63 GETUPVAL                         R2 6
       64 GETTABLEKS                       R1 R2 K10 ["Stepped"]
       66 NAMECALL                         R1 R1 K11 ["Wait"]
       68 CALL                             R1 1 0
       69 RETURN                           R0 0

PROTO_110:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Header"]
        3 GETTABLEKS                       R1 R2 K1 ["SettingsContent"]
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

PROTO_111:
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
       48 GETUPVAL                         R1 3
       49 NEWCLOSURE                       R2 P0
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          VAL R0
       52 CALL                             R1 1 0
       53 GETUPVAL                         R1 5
       54 NAMECALL                         R1 R1 K9 ["UpdateUnitTestOnly"]
       56 CALL                             R1 1 0
       57 GETUPVAL                         R2 6
       58 GETTABLEKS                       R1 R2 K10 ["Stepped"]
       60 NAMECALL                         R1 R1 K11 ["Wait"]
       62 CALL                             R1 1 0
       63 GETUPVAL                         R2 6
       64 GETTABLEKS                       R1 R2 K10 ["Stepped"]
       66 NAMECALL                         R1 R1 K11 ["Wait"]
       68 CALL                             R1 1 0
       69 LOADNIL                          R0
       70 GETUPVAL                         R1 7
       71 CALL                             R1 0 1
       72 JUMPIFNOT                        R1 ; [+8]
       73 GETUPVAL                         R1 8
       74 LOADK                            R3 K12 ["Settings"]
       75 LOADK                            R4 K13 ["RemoveCurrentChat"]
       76 NAMECALL                         R1 R1 K14 ["getText"]
       78 CALL                             R1 3 1
       79 MOVE                             R0 R1
       80 JUMP                             ; [+7]
       81 GETUPVAL                         R1 8
       82 LOADK                            R3 K12 ["Settings"]
       83 LOADK                            R4 K15 ["ClearConversation"]
       84 NAMECALL                         R1 R1 K14 ["getText"]
       86 CALL                             R1 3 1
       87 MOVE                             R0 R1
       88 GETUPVAL                         R2 2
       89 GETUPVAL                         R6 0
       90 GETTABLEKS                       R5 R6 K0 ["Header"]
       92 GETTABLEKS                       R4 R5 K16 ["SettingsContent"]
       94 LOADNIL                          R5
       95 MOVE                             R6 R5
       96 JUMPIF                           R6 ; [+12]
       97 GETUPVAL                         R9 1
       98 JUMPIFNOTEQKNIL                  R9 ; [+2]
      100 LOADB                            R8 0 +1
      101 LOADB                            R8 1
      102 FASTCALL2K                       ASSERT R8 K2 ; [+4]
      104 LOADK                            R9 K2 ["Container not mounted, ensure render is called"]
      105 GETIMPORT                        R7 K4 [assert]
      107 CALL                             R7 2 0
      108 GETUPVAL                         R6 1
      109 MOVE                             R5 R6
      110 FASTCALL2K                       ASSERT R5 K5 ; [+5]
      112 MOVE                             R7 R5
      113 LOADK                            R8 K5 ["Query container not found"]
      114 GETIMPORT                        R6 K4 [assert]
      116 CALL                             R6 2 0
      117 GETUPVAL                         R7 2
      118 MOVE                             R8 R5
      119 CALL                             R7 1 1
      120 GETTABLEKS                       R6 R7 K6 ["getByTestId"]
      122 MOVE                             R7 R4
      123 CALL                             R6 1 1
      124 LOADK                            R10 K7 ["No result found for testId \"%*\""]
      125 MOVE                             R12 R4
      126 NAMECALL                         R10 R10 K8 ["format"]
      128 CALL                             R10 2 1
      129 MOVE                             R9 R10
      130 FASTCALL2                        ASSERT R6 R9 ; [+4]
      132 MOVE                             R8 R6
      133 GETIMPORT                        R7 K4 [assert]
      135 CALL                             R7 2 0
      136 MOVE                             R3 R6
      137 CALL                             R2 1 1
      138 GETTABLEKS                       R1 R2 K17 ["findByText"]
      140 MOVE                             R2 R0
      141 CALL                             R1 1 1
      142 NAMECALL                         R1 R1 K18 ["await"]
      144 CALL                             R1 1 2
      145 FASTCALL2K                       ASSERT R2 K19 ; [+5]
      147 MOVE                             R4 R2
      148 LOADK                            R5 K19 ["Clear conversation text not found"]
      149 GETIMPORT                        R3 K4 [assert]
      151 CALL                             R3 2 0
      152 GETTABLEKS                       R3 R2 K20 ["Parent"]
      154 MOVE                             R5 R3
      155 JUMPIFNOT                        R5 ; [+4]
      156 LOADK                            R7 K21 ["GuiButton"]
      157 NAMECALL                         R5 R3 K22 ["IsA"]
      159 CALL                             R5 2 1
      160 FASTCALL2K                       ASSERT R5 K23 ; [+4]
      162 LOADK                            R6 K23 ["Clear conversation button not found"]
      163 GETIMPORT                        R4 K4 [assert]
      165 CALL                             R4 2 0
      166 GETUPVAL                         R4 3
      167 NEWCLOSURE                       R5 P0
      168 CAPTURE                          UPVAL U4
      169 CAPTURE                          VAL R3
      170 CALL                             R4 1 0
      171 GETUPVAL                         R4 5
      172 NAMECALL                         R4 R4 K9 ["UpdateUnitTestOnly"]
      174 CALL                             R4 1 0
      175 GETUPVAL                         R5 6
      176 GETTABLEKS                       R4 R5 K10 ["Stepped"]
      178 NAMECALL                         R4 R4 K11 ["Wait"]
      180 CALL                             R4 1 0
      181 GETUPVAL                         R5 6
      182 GETTABLEKS                       R4 R5 K10 ["Stepped"]
      184 NAMECALL                         R4 R4 K11 ["Wait"]
      186 CALL                             R4 1 0
      187 RETURN                           R0 0

PROTO_112:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["wasToolInvoked"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_113:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_114:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["overrideMethod"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_115:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getClientObject"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_116:
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

PROTO_117:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getClientObject"]
        3 CALL                             R0 0 1
        4 NAMECALL                         R1 R0 K1 ["close"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_118:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getToolAlias"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_119:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["wasRequestHandlerCalled"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_120:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getLastRequestHandlerBody"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 GETTABLE                         R2 R1 R0
        6 JUMPIF                           R2 ; [+1]
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_121:
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

PROTO_122:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 LOADK                            R3 K0 ["GuiObject"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_123:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R2 1 0
        7 GETUPVAL                         R2 3
        8 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
       10 CALL                             R2 1 0
       11 GETUPVAL                         R3 4
       12 GETTABLEKS                       R2 R3 K1 ["Stepped"]
       14 NAMECALL                         R2 R2 K2 ["Wait"]
       16 CALL                             R2 1 0
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R2 R3 K1 ["Stepped"]
       20 NAMECALL                         R2 R2 K2 ["Wait"]
       22 CALL                             R2 1 0
       23 JUMPIFNOT                        R1 ; [+13]
       24 GETTABLEKS                       R2 R1 K3 ["expectedErrorContent"]
       26 JUMPIFNOT                        R2 ; [+10]
       27 GETTABLEKS                       R2 R1 K3 ["expectedErrorContent"]
       29 GETUPVAL                         R3 5
       30 NEWCLOSURE                       R4 P1
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          VAL R2
       33 CALL                             R3 1 1
       34 NAMECALL                         R3 R3 K4 ["await"]
       36 CALL                             R3 1 0
       37 RETURN                           R0 0

PROTO_124:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setInputOverride"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_125:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_126:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["ProviderCheckbox"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LOADNIL                          R3
        6 MOVE                             R4 R3
        7 JUMPIF                           R4 ; [+12]
        8 GETUPVAL                         R7 1
        9 JUMPIFNOTEQKNIL                  R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 FASTCALL2K                       ASSERT R6 K1 ; [+4]
       15 LOADK                            R7 K1 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R5 K3 [assert]
       18 CALL                             R5 2 0
       19 GETUPVAL                         R4 1
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K4 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K4 ["Query container not found"]
       25 GETIMPORT                        R4 K3 [assert]
       27 CALL                             R4 2 0
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R3
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R4 R5 K5 ["getByTestId"]
       33 MOVE                             R5 R1
       34 CALL                             R4 1 1
       35 LOADK                            R8 K6 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R1
       37 NAMECALL                         R8 R8 K7 ["format"]
       39 CALL                             R8 2 1
       40 MOVE                             R7 R8
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K3 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R2 R4
       48 LOADK                            R6 K8 ["GuiButton"]
       49 NAMECALL                         R4 R2 K9 ["IsA"]
       51 CALL                             R4 2 1
       52 LOADK                            R6 K10 ["Provider checkbox is not a GuiButton for %* (testId: %*)"]
       53 MOVE                             R8 R0
       54 MOVE                             R9 R1
       55 NAMECALL                         R6 R6 K7 ["format"]
       57 CALL                             R6 3 1
       58 MOVE                             R5 R6
       59 FASTCALL2                        ASSERT R4 R5 ; [+3]
       61 GETIMPORT                        R3 K3 [assert]
       63 CALL                             R3 2 0
       64 RETURN                           R2 1

PROTO_127:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 3
        7 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R2 4
       11 GETTABLEKS                       R1 R2 K1 ["Stepped"]
       13 NAMECALL                         R1 R1 K2 ["Wait"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R1 R2 K1 ["Stepped"]
       19 NAMECALL                         R1 R1 K2 ["Wait"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_128:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ProviderCheckbox"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 LOADNIL                          R4
        6 MOVE                             R5 R4
        7 JUMPIF                           R5 ; [+12]
        8 GETUPVAL                         R8 1
        9 JUMPIFNOTEQKNIL                  R8 ; [+2]
       11 LOADB                            R7 0 +1
       12 LOADB                            R7 1
       13 FASTCALL2K                       ASSERT R7 K1 ; [+4]
       15 LOADK                            R8 K1 ["Container not mounted, ensure render is called"]
       16 GETIMPORT                        R6 K3 [assert]
       18 CALL                             R6 2 0
       19 GETUPVAL                         R5 1
       20 MOVE                             R4 R5
       21 FASTCALL2K                       ASSERT R4 K4 ; [+5]
       23 MOVE                             R6 R4
       24 LOADK                            R7 K4 ["Query container not found"]
       25 GETIMPORT                        R5 K3 [assert]
       27 CALL                             R5 2 0
       28 GETUPVAL                         R6 2
       29 MOVE                             R7 R4
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R5 R6 K5 ["getByTestId"]
       33 MOVE                             R6 R2
       34 CALL                             R5 1 1
       35 LOADK                            R9 K6 ["No result found for testId \"%*\""]
       36 MOVE                             R11 R2
       37 NAMECALL                         R9 R9 K7 ["format"]
       39 CALL                             R9 2 1
       40 MOVE                             R8 R9
       41 FASTCALL2                        ASSERT R5 R8 ; [+4]
       43 MOVE                             R7 R5
       44 GETIMPORT                        R6 K3 [assert]
       46 CALL                             R6 2 0
       47 MOVE                             R3 R5
       48 LOADK                            R7 K8 ["GuiButton"]
       49 NAMECALL                         R5 R3 K9 ["IsA"]
       51 CALL                             R5 2 1
       52 LOADK                            R7 K10 ["Provider checkbox is not a GuiButton for %* (testId: %*)"]
       53 MOVE                             R9 R0
       54 MOVE                             R10 R2
       55 NAMECALL                         R7 R7 K7 ["format"]
       57 CALL                             R7 3 1
       58 MOVE                             R6 R7
       59 FASTCALL2                        ASSERT R5 R6 ; [+3]
       61 GETIMPORT                        R4 K3 [assert]
       63 CALL                             R4 2 0
       64 MOVE                             R1 R3
       65 LOADK                            R4 K11 ["ScrollingFrame"]
       66 NAMECALL                         R2 R1 K12 ["FindFirstAncestorWhichIsA"]
       68 CALL                             R2 2 1
       69 MOVE                             R4 R2
       70 JUMPIFNOT                        R4 ; [+4]
       71 LOADK                            R6 K11 ["ScrollingFrame"]
       72 NAMECALL                         R4 R2 K9 ["IsA"]
       74 CALL                             R4 2 1
       75 FASTCALL2K                       ASSERT R4 K13 ; [+4]
       77 LOADK                            R5 K13 ["Scroll area not found for widget"]
       78 GETIMPORT                        R3 K3 [assert]
       80 CALL                             R3 2 0
       81 GETTABLEKS                       R4 R2 K14 ["AbsolutePosition"]
       83 GETTABLEKS                       R6 R1 K14 ["AbsolutePosition"]
       85 GETTABLEKS                       R8 R1 K16 ["AbsoluteSize"]
       87 DIVK                             R7 R8 K15 [2]
       88 ADD                              R5 R6 R7
       89 SUB                              R3 R4 R5
       90 GETTABLEKS                       R4 R2 K17 ["CanvasPosition"]
       92 SUB                              R4 R4 R3
       93 SETTABLEKS                       R4 R2 K17 ["CanvasPosition"]
       95 GETUPVAL                         R4 3
       96 NAMECALL                         R4 R4 K18 ["UpdateUnitTestOnly"]
       98 CALL                             R4 1 0
       99 GETUPVAL                         R5 4
      100 GETTABLEKS                       R4 R5 K19 ["Stepped"]
      102 NAMECALL                         R4 R4 K20 ["Wait"]
      104 CALL                             R4 1 0
      105 GETUPVAL                         R5 4
      106 GETTABLEKS                       R4 R5 K19 ["Stepped"]
      108 NAMECALL                         R4 R4 K20 ["Wait"]
      110 CALL                             R4 1 0
      111 GETUPVAL                         R2 5
      112 NEWCLOSURE                       R3 P0
      113 CAPTURE                          VAL R1
      114 CAPTURE                          UPVAL U5
      115 CAPTURE                          UPVAL U6
      116 CAPTURE                          UPVAL U3
      117 CAPTURE                          UPVAL U4
      118 CALL                             R2 1 0
      119 RETURN                           R0 0

PROTO_129:
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

PROTO_130:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ModelPicker"]
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

PROTO_131:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ModelPicker"]
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
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R3 R4 K0 ["ModelPicker"]
       51 GETTABLEKS                       R2 R3 K9 ["Dropdown"]
       53 MOVE                             R3 R0
       54 MOVE                             R4 R3
       55 JUMPIF                           R4 ; [+12]
       56 GETUPVAL                         R7 1
       57 JUMPIFNOTEQKNIL                  R7 ; [+2]
       59 LOADB                            R6 0 +1
       60 LOADB                            R6 1
       61 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       63 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       64 GETIMPORT                        R5 K4 [assert]
       66 CALL                             R5 2 0
       67 GETUPVAL                         R4 1
       68 MOVE                             R3 R4
       69 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       71 MOVE                             R5 R3
       72 LOADK                            R6 K5 ["Query container not found"]
       73 GETIMPORT                        R4 K4 [assert]
       75 CALL                             R4 2 0
       76 GETUPVAL                         R5 2
       77 MOVE                             R6 R3
       78 CALL                             R5 1 1
       79 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       81 MOVE                             R5 R2
       82 CALL                             R4 1 1
       83 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       84 MOVE                             R10 R2
       85 NAMECALL                         R8 R8 K8 ["format"]
       87 CALL                             R8 2 1
       88 MOVE                             R7 R8
       89 FASTCALL2                        ASSERT R4 R7 ; [+4]
       91 MOVE                             R6 R4
       92 GETIMPORT                        R5 K4 [assert]
       94 CALL                             R5 2 0
       95 MOVE                             R1 R4
       96 NAMECALL                         R2 R1 K10 ["GetDescendants"]
       98 CALL                             R2 1 1
       99 MOVE                             R3 R2
      100 LOADNIL                          R4
      101 LOADNIL                          R5
      102 FORGPREP                         R3
      103 LOADK                            R10 K11 ["TextLabel"]
      104 NAMECALL                         R8 R7 K12 ["IsA"]
      106 CALL                             R8 2 1
      107 JUMPIFNOT                        R8 ; [+24]
      108 GETTABLEKS                       R8 R7 K13 ["Text"]
      110 JUMPIFNOT                        R8 ; [+21]
      111 FASTCALL1                        STRING_LEN R8 ; [+3]
      112 MOVE                             R10 R8
      113 GETIMPORT                        R9 K16 [string.len]
      115 CALL                             R9 1 1
      116 LOADN                            R10 0
      117 JUMPIFNOTLT                      R10 R9 ; [+14]
      119 GETIMPORT                        R9 K18 [string.find]
      121 MOVE                             R10 R8
      122 LOADK                            R11 K19 ["chevron"]
      123 CALL                             R9 2 1
      124 JUMPIF                           R9 ; [+7]
      125 GETIMPORT                        R9 K18 [string.find]
      127 MOVE                             R10 R8
      128 LOADK                            R11 K20 ["icon"]
      129 CALL                             R9 2 1
      130 JUMPIF                           R9 ; [+1]
      131 RETURN                           R8 1
      132 FORGLOOP                         R3 2 ; [-30]
      134 GETUPVAL                         R4 3
      135 GETTABLEKS                       R3 R4 K21 ["DEFAULT_STUDIO_MODEL"]
      137 RETURN                           R3 1

PROTO_132:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 3
        7 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R2 4
       11 GETTABLEKS                       R1 R2 K1 ["Stepped"]
       13 NAMECALL                         R1 R1 K2 ["Wait"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R1 R2 K1 ["Stepped"]
       19 NAMECALL                         R1 R1 K2 ["Wait"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_133:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 3
        7 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R2 4
       11 GETTABLEKS                       R1 R2 K1 ["Stepped"]
       13 NAMECALL                         R1 R1 K2 ["Wait"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R2 4
       17 GETTABLEKS                       R1 R2 K1 ["Stepped"]
       19 NAMECALL                         R1 R1 K2 ["Wait"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_134:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["ModelPicker"]
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
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R4 R5 K0 ["ModelPicker"]
       51 GETTABLEKS                       R3 R4 K9 ["Dropdown"]
       53 MOVE                             R4 R1
       54 MOVE                             R5 R4
       55 JUMPIF                           R5 ; [+12]
       56 GETUPVAL                         R8 1
       57 JUMPIFNOTEQKNIL                  R8 ; [+2]
       59 LOADB                            R7 0 +1
       60 LOADB                            R7 1
       61 FASTCALL2K                       ASSERT R7 K2 ; [+4]
       63 LOADK                            R8 K2 ["Container not mounted, ensure render is called"]
       64 GETIMPORT                        R6 K4 [assert]
       66 CALL                             R6 2 0
       67 GETUPVAL                         R5 1
       68 MOVE                             R4 R5
       69 FASTCALL2K                       ASSERT R4 K5 ; [+5]
       71 MOVE                             R6 R4
       72 LOADK                            R7 K5 ["Query container not found"]
       73 GETIMPORT                        R5 K4 [assert]
       75 CALL                             R5 2 0
       76 GETUPVAL                         R6 2
       77 MOVE                             R7 R4
       78 CALL                             R6 1 1
       79 GETTABLEKS                       R5 R6 K6 ["getByTestId"]
       81 MOVE                             R6 R3
       82 CALL                             R5 1 1
       83 LOADK                            R9 K7 ["No result found for testId \"%*\""]
       84 MOVE                             R11 R3
       85 NAMECALL                         R9 R9 K8 ["format"]
       87 CALL                             R9 2 1
       88 MOVE                             R8 R9
       89 FASTCALL2                        ASSERT R5 R8 ; [+4]
       91 MOVE                             R7 R5
       92 GETIMPORT                        R6 K4 [assert]
       94 CALL                             R6 2 0
       95 MOVE                             R2 R5
       96 LOADNIL                          R3
       97 NAMECALL                         R4 R2 K10 ["GetDescendants"]
       99 CALL                             R4 1 3
      100 FORGPREP                         R4
      101 LOADK                            R11 K11 ["ImageButton"]
      102 NAMECALL                         R9 R8 K12 ["IsA"]
      104 CALL                             R9 2 1
      105 JUMPIF                           R9 ; [+5]
      106 LOADK                            R11 K13 ["TextButton"]
      107 NAMECALL                         R9 R8 K12 ["IsA"]
      109 CALL                             R9 2 1
      110 JUMPIFNOT                        R9 ; [+2]
      111 MOVE                             R3 R8
      112 JUMP                             ; [+2]
      113 FORGLOOP                         R4 2 ; [-13]
      115 FASTCALL2K                       ASSERT R3 K14 ; [+5]
      117 MOVE                             R5 R3
      118 LOADK                            R6 K14 ["No clickable button found in dropdown"]
      119 GETIMPORT                        R4 K4 [assert]
      121 CALL                             R4 2 0
      122 MOVE                             R4 R3
      123 LOADK                            R7 K15 ["ScrollingFrame"]
      124 NAMECALL                         R5 R4 K16 ["FindFirstAncestorWhichIsA"]
      126 CALL                             R5 2 1
      127 MOVE                             R7 R5
      128 JUMPIFNOT                        R7 ; [+4]
      129 LOADK                            R9 K15 ["ScrollingFrame"]
      130 NAMECALL                         R7 R5 K12 ["IsA"]
      132 CALL                             R7 2 1
      133 FASTCALL2K                       ASSERT R7 K17 ; [+4]
      135 LOADK                            R8 K17 ["Scroll area not found for widget"]
      136 GETIMPORT                        R6 K4 [assert]
      138 CALL                             R6 2 0
      139 GETTABLEKS                       R7 R5 K18 ["AbsolutePosition"]
      141 GETTABLEKS                       R9 R4 K18 ["AbsolutePosition"]
      143 GETTABLEKS                       R11 R4 K20 ["AbsoluteSize"]
      145 DIVK                             R10 R11 K19 [2]
      146 ADD                              R8 R9 R10
      147 SUB                              R6 R7 R8
      148 GETTABLEKS                       R7 R5 K21 ["CanvasPosition"]
      150 SUB                              R7 R7 R6
      151 SETTABLEKS                       R7 R5 K21 ["CanvasPosition"]
      153 GETUPVAL                         R7 3
      154 NAMECALL                         R7 R7 K22 ["UpdateUnitTestOnly"]
      156 CALL                             R7 1 0
      157 GETUPVAL                         R8 4
      158 GETTABLEKS                       R7 R8 K23 ["Stepped"]
      160 NAMECALL                         R7 R7 K24 ["Wait"]
      162 CALL                             R7 1 0
      163 GETUPVAL                         R8 4
      164 GETTABLEKS                       R7 R8 K23 ["Stepped"]
      166 NAMECALL                         R7 R7 K24 ["Wait"]
      168 CALL                             R7 1 0
      169 GETUPVAL                         R4 5
      170 NEWCLOSURE                       R5 P0
      171 CAPTURE                          REF R3
      172 CAPTURE                          UPVAL U5
      173 CAPTURE                          UPVAL U6
      174 CAPTURE                          UPVAL U3
      175 CAPTURE                          UPVAL U4
      176 CALL                             R4 1 0
      177 GETUPVAL                         R5 2
      178 GETUPVAL                         R9 1
      179 JUMPIFNOTEQKNIL                  R9 ; [+2]
      181 LOADB                            R8 0 +1
      182 LOADB                            R8 1
      183 FASTCALL2K                       ASSERT R8 K2 ; [+4]
      185 LOADK                            R9 K2 ["Container not mounted, ensure render is called"]
      186 GETIMPORT                        R7 K4 [assert]
      188 CALL                             R7 2 0
      189 GETUPVAL                         R6 1
      190 CALL                             R5 1 1
      191 GETTABLEKS                       R4 R5 K25 ["queryByText"]
      193 MOVE                             R5 R0
      194 DUPTABLE                         R6 K27 [{"exact"}]
      195 LOADB                            R7 1
      196 SETTABLEKS                       R7 R6 K26 ["exact"]
      198 CALL                             R4 2 1
      199 LOADK                            R8 K28 ["Model option not found: %*"]
      200 MOVE                             R10 R0
      201 NAMECALL                         R8 R8 K8 ["format"]
      203 CALL                             R8 2 1
      204 MOVE                             R7 R8
      205 FASTCALL2                        ASSERT R4 R7 ; [+4]
      207 MOVE                             R6 R4
      208 GETIMPORT                        R5 K4 [assert]
      210 CALL                             R5 2 0
      211 GETUPVAL                         R5 5
      212 NEWCLOSURE                       R6 P1
      213 CAPTURE                          VAL R4
      214 CAPTURE                          UPVAL U5
      215 CAPTURE                          UPVAL U6
      216 CAPTURE                          UPVAL U3
      217 CAPTURE                          UPVAL U4
      218 CALL                             R5 1 0
      219 CLOSEUPVALS                      R3
      220 RETURN                           R0 0

PROTO_135:
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

PROTO_136:
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

PROTO_137:
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

PROTO_138:
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

PROTO_139:
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
       48 GETUPVAL                         R1 3
       49 NEWCLOSURE                       R2 P0
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          VAL R0
       52 CALL                             R1 1 0
       53 GETUPVAL                         R1 5
       54 NAMECALL                         R1 R1 K9 ["UpdateUnitTestOnly"]
       56 CALL                             R1 1 0
       57 GETUPVAL                         R2 6
       58 GETTABLEKS                       R1 R2 K10 ["Stepped"]
       60 NAMECALL                         R1 R1 K11 ["Wait"]
       62 CALL                             R1 1 0
       63 GETUPVAL                         R2 6
       64 GETTABLEKS                       R1 R2 K10 ["Stepped"]
       66 NAMECALL                         R1 R1 K11 ["Wait"]
       68 CALL                             R1 1 0
       69 RETURN                           R0 0

PROTO_140:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 GETUPVAL                         R4 1
        4 JUMPIFNOTEQKNIL                  R4 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       10 LOADK                            R4 K1 ["Container not mounted, ensure render is called"]
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

PROTO_141:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 GETUPVAL                         R4 1
        4 JUMPIFNOTEQKNIL                  R4 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       10 LOADK                            R4 K1 ["Container not mounted, ensure render is called"]
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

PROTO_142:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 GETUPVAL                         R4 1
        4 JUMPIFNOTEQKNIL                  R4 ; [+2]
        6 LOADB                            R3 0 +1
        7 LOADB                            R3 1
        8 FASTCALL2K                       ASSERT R3 K1 ; [+4]
       10 LOADK                            R4 K1 ["Container not mounted, ensure render is called"]
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

PROTO_143:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["APIKey"]
        3 GETTABLEKS                       R1 R2 K1 ["EditButton"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 LOADNIL                          R3
        8 MOVE                             R4 R3
        9 JUMPIF                           R4 ; [+12]
       10 GETUPVAL                         R7 1
       11 JUMPIFNOTEQKNIL                  R7 ; [+2]
       13 LOADB                            R6 0 +1
       14 LOADB                            R6 1
       15 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       17 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       18 GETIMPORT                        R5 K4 [assert]
       20 CALL                             R5 2 0
       21 GETUPVAL                         R4 1
       22 MOVE                             R3 R4
       23 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       25 MOVE                             R5 R3
       26 LOADK                            R6 K5 ["Query container not found"]
       27 GETIMPORT                        R4 K4 [assert]
       29 CALL                             R4 2 0
       30 GETUPVAL                         R5 2
       31 MOVE                             R6 R3
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       35 MOVE                             R5 R1
       36 CALL                             R4 1 1
       37 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       38 MOVE                             R10 R1
       39 NAMECALL                         R8 R8 K8 ["format"]
       41 CALL                             R8 2 1
       42 MOVE                             R7 R8
       43 FASTCALL2                        ASSERT R4 R7 ; [+4]
       45 MOVE                             R6 R4
       46 GETIMPORT                        R5 K4 [assert]
       48 CALL                             R5 2 0
       49 MOVE                             R2 R4
       50 LOADK                            R5 K9 ["ScrollingFrame"]
       51 NAMECALL                         R3 R2 K10 ["FindFirstAncestorWhichIsA"]
       53 CALL                             R3 2 1
       54 MOVE                             R5 R3
       55 JUMPIFNOT                        R5 ; [+4]
       56 LOADK                            R7 K9 ["ScrollingFrame"]
       57 NAMECALL                         R5 R3 K11 ["IsA"]
       59 CALL                             R5 2 1
       60 FASTCALL2K                       ASSERT R5 K12 ; [+4]
       62 LOADK                            R6 K12 ["Scroll area not found for widget"]
       63 GETIMPORT                        R4 K4 [assert]
       65 CALL                             R4 2 0
       66 GETTABLEKS                       R5 R3 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R7 R2 K13 ["AbsolutePosition"]
       70 GETTABLEKS                       R9 R2 K15 ["AbsoluteSize"]
       72 DIVK                             R8 R9 K14 [2]
       73 ADD                              R6 R7 R8
       74 SUB                              R4 R5 R6
       75 GETTABLEKS                       R5 R3 K16 ["CanvasPosition"]
       77 SUB                              R5 R5 R4
       78 SETTABLEKS                       R5 R3 K16 ["CanvasPosition"]
       80 GETUPVAL                         R5 3
       81 NAMECALL                         R5 R5 K17 ["UpdateUnitTestOnly"]
       83 CALL                             R5 1 0
       84 GETUPVAL                         R6 4
       85 GETTABLEKS                       R5 R6 K18 ["Stepped"]
       87 NAMECALL                         R5 R5 K19 ["Wait"]
       89 CALL                             R5 1 0
       90 GETUPVAL                         R6 4
       91 GETTABLEKS                       R5 R6 K18 ["Stepped"]
       93 NAMECALL                         R5 R5 K19 ["Wait"]
       95 CALL                             R5 1 0
       96 GETUPVAL                         R3 5
       97 NEWCLOSURE                       R4 P0
       98 CAPTURE                          UPVAL U6
       99 CAPTURE                          VAL R2
      100 CALL                             R3 1 0
      101 GETUPVAL                         R3 3
      102 NAMECALL                         R3 R3 K17 ["UpdateUnitTestOnly"]
      104 CALL                             R3 1 0
      105 GETUPVAL                         R4 4
      106 GETTABLEKS                       R3 R4 K18 ["Stepped"]
      108 NAMECALL                         R3 R3 K19 ["Wait"]
      110 CALL                             R3 1 0
      111 GETUPVAL                         R4 4
      112 GETTABLEKS                       R3 R4 K18 ["Stepped"]
      114 NAMECALL                         R3 R3 K19 ["Wait"]
      116 CALL                             R3 1 0
      117 RETURN                           R0 0

PROTO_144:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["APIKey"]
        3 GETTABLEKS                       R1 R2 K1 ["SaveButton"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 LOADNIL                          R3
        8 MOVE                             R4 R3
        9 JUMPIF                           R4 ; [+12]
       10 GETUPVAL                         R7 1
       11 JUMPIFNOTEQKNIL                  R7 ; [+2]
       13 LOADB                            R6 0 +1
       14 LOADB                            R6 1
       15 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       17 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       18 GETIMPORT                        R5 K4 [assert]
       20 CALL                             R5 2 0
       21 GETUPVAL                         R4 1
       22 MOVE                             R3 R4
       23 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       25 MOVE                             R5 R3
       26 LOADK                            R6 K5 ["Query container not found"]
       27 GETIMPORT                        R4 K4 [assert]
       29 CALL                             R4 2 0
       30 GETUPVAL                         R5 2
       31 MOVE                             R6 R3
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       35 MOVE                             R5 R1
       36 CALL                             R4 1 1
       37 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       38 MOVE                             R10 R1
       39 NAMECALL                         R8 R8 K8 ["format"]
       41 CALL                             R8 2 1
       42 MOVE                             R7 R8
       43 FASTCALL2                        ASSERT R4 R7 ; [+4]
       45 MOVE                             R6 R4
       46 GETIMPORT                        R5 K4 [assert]
       48 CALL                             R5 2 0
       49 MOVE                             R2 R4
       50 LOADK                            R5 K9 ["ScrollingFrame"]
       51 NAMECALL                         R3 R2 K10 ["FindFirstAncestorWhichIsA"]
       53 CALL                             R3 2 1
       54 MOVE                             R5 R3
       55 JUMPIFNOT                        R5 ; [+4]
       56 LOADK                            R7 K9 ["ScrollingFrame"]
       57 NAMECALL                         R5 R3 K11 ["IsA"]
       59 CALL                             R5 2 1
       60 FASTCALL2K                       ASSERT R5 K12 ; [+4]
       62 LOADK                            R6 K12 ["Scroll area not found for widget"]
       63 GETIMPORT                        R4 K4 [assert]
       65 CALL                             R4 2 0
       66 GETTABLEKS                       R5 R3 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R7 R2 K13 ["AbsolutePosition"]
       70 GETTABLEKS                       R9 R2 K15 ["AbsoluteSize"]
       72 DIVK                             R8 R9 K14 [2]
       73 ADD                              R6 R7 R8
       74 SUB                              R4 R5 R6
       75 GETTABLEKS                       R5 R3 K16 ["CanvasPosition"]
       77 SUB                              R5 R5 R4
       78 SETTABLEKS                       R5 R3 K16 ["CanvasPosition"]
       80 GETUPVAL                         R5 3
       81 NAMECALL                         R5 R5 K17 ["UpdateUnitTestOnly"]
       83 CALL                             R5 1 0
       84 GETUPVAL                         R6 4
       85 GETTABLEKS                       R5 R6 K18 ["Stepped"]
       87 NAMECALL                         R5 R5 K19 ["Wait"]
       89 CALL                             R5 1 0
       90 GETUPVAL                         R6 4
       91 GETTABLEKS                       R5 R6 K18 ["Stepped"]
       93 NAMECALL                         R5 R5 K19 ["Wait"]
       95 CALL                             R5 1 0
       96 GETUPVAL                         R3 5
       97 NEWCLOSURE                       R4 P0
       98 CAPTURE                          UPVAL U6
       99 CAPTURE                          VAL R2
      100 CALL                             R3 1 0
      101 GETUPVAL                         R3 3
      102 NAMECALL                         R3 R3 K17 ["UpdateUnitTestOnly"]
      104 CALL                             R3 1 0
      105 GETUPVAL                         R4 4
      106 GETTABLEKS                       R3 R4 K18 ["Stepped"]
      108 NAMECALL                         R3 R3 K19 ["Wait"]
      110 CALL                             R3 1 0
      111 GETUPVAL                         R4 4
      112 GETTABLEKS                       R3 R4 K18 ["Stepped"]
      114 NAMECALL                         R3 R3 K19 ["Wait"]
      116 CALL                             R3 1 0
      117 RETURN                           R0 0

PROTO_145:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["APIKey"]
        3 GETTABLEKS                       R1 R2 K1 ["CancelButton"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 LOADNIL                          R3
        8 MOVE                             R4 R3
        9 JUMPIF                           R4 ; [+12]
       10 GETUPVAL                         R7 1
       11 JUMPIFNOTEQKNIL                  R7 ; [+2]
       13 LOADB                            R6 0 +1
       14 LOADB                            R6 1
       15 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       17 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       18 GETIMPORT                        R5 K4 [assert]
       20 CALL                             R5 2 0
       21 GETUPVAL                         R4 1
       22 MOVE                             R3 R4
       23 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       25 MOVE                             R5 R3
       26 LOADK                            R6 K5 ["Query container not found"]
       27 GETIMPORT                        R4 K4 [assert]
       29 CALL                             R4 2 0
       30 GETUPVAL                         R5 2
       31 MOVE                             R6 R3
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       35 MOVE                             R5 R1
       36 CALL                             R4 1 1
       37 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       38 MOVE                             R10 R1
       39 NAMECALL                         R8 R8 K8 ["format"]
       41 CALL                             R8 2 1
       42 MOVE                             R7 R8
       43 FASTCALL2                        ASSERT R4 R7 ; [+4]
       45 MOVE                             R6 R4
       46 GETIMPORT                        R5 K4 [assert]
       48 CALL                             R5 2 0
       49 MOVE                             R2 R4
       50 LOADK                            R5 K9 ["ScrollingFrame"]
       51 NAMECALL                         R3 R2 K10 ["FindFirstAncestorWhichIsA"]
       53 CALL                             R3 2 1
       54 MOVE                             R5 R3
       55 JUMPIFNOT                        R5 ; [+4]
       56 LOADK                            R7 K9 ["ScrollingFrame"]
       57 NAMECALL                         R5 R3 K11 ["IsA"]
       59 CALL                             R5 2 1
       60 FASTCALL2K                       ASSERT R5 K12 ; [+4]
       62 LOADK                            R6 K12 ["Scroll area not found for widget"]
       63 GETIMPORT                        R4 K4 [assert]
       65 CALL                             R4 2 0
       66 GETTABLEKS                       R5 R3 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R7 R2 K13 ["AbsolutePosition"]
       70 GETTABLEKS                       R9 R2 K15 ["AbsoluteSize"]
       72 DIVK                             R8 R9 K14 [2]
       73 ADD                              R6 R7 R8
       74 SUB                              R4 R5 R6
       75 GETTABLEKS                       R5 R3 K16 ["CanvasPosition"]
       77 SUB                              R5 R5 R4
       78 SETTABLEKS                       R5 R3 K16 ["CanvasPosition"]
       80 GETUPVAL                         R5 3
       81 NAMECALL                         R5 R5 K17 ["UpdateUnitTestOnly"]
       83 CALL                             R5 1 0
       84 GETUPVAL                         R6 4
       85 GETTABLEKS                       R5 R6 K18 ["Stepped"]
       87 NAMECALL                         R5 R5 K19 ["Wait"]
       89 CALL                             R5 1 0
       90 GETUPVAL                         R6 4
       91 GETTABLEKS                       R5 R6 K18 ["Stepped"]
       93 NAMECALL                         R5 R5 K19 ["Wait"]
       95 CALL                             R5 1 0
       96 GETUPVAL                         R3 5
       97 NEWCLOSURE                       R4 P0
       98 CAPTURE                          UPVAL U6
       99 CAPTURE                          VAL R2
      100 CALL                             R3 1 0
      101 GETUPVAL                         R3 3
      102 NAMECALL                         R3 R3 K17 ["UpdateUnitTestOnly"]
      104 CALL                             R3 1 0
      105 GETUPVAL                         R4 4
      106 GETTABLEKS                       R3 R4 K18 ["Stepped"]
      108 NAMECALL                         R3 R3 K19 ["Wait"]
      110 CALL                             R3 1 0
      111 GETUPVAL                         R4 4
      112 GETTABLEKS                       R3 R4 K18 ["Stepped"]
      114 NAMECALL                         R3 R3 K19 ["Wait"]
      116 CALL                             R3 1 0
      117 RETURN                           R0 0

PROTO_146:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["APIKey"]
        3 GETTABLEKS                       R1 R2 K1 ["Input"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 LOADNIL                          R3
        8 MOVE                             R4 R3
        9 JUMPIF                           R4 ; [+12]
       10 GETUPVAL                         R7 1
       11 JUMPIFNOTEQKNIL                  R7 ; [+2]
       13 LOADB                            R6 0 +1
       14 LOADB                            R6 1
       15 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       17 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       18 GETIMPORT                        R5 K4 [assert]
       20 CALL                             R5 2 0
       21 GETUPVAL                         R4 1
       22 MOVE                             R3 R4
       23 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       25 MOVE                             R5 R3
       26 LOADK                            R6 K5 ["Query container not found"]
       27 GETIMPORT                        R4 K4 [assert]
       29 CALL                             R4 2 0
       30 GETUPVAL                         R5 2
       31 MOVE                             R6 R3
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       35 MOVE                             R5 R1
       36 CALL                             R4 1 1
       37 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       38 MOVE                             R10 R1
       39 NAMECALL                         R8 R8 K8 ["format"]
       41 CALL                             R8 2 1
       42 MOVE                             R7 R8
       43 FASTCALL2                        ASSERT R4 R7 ; [+4]
       45 MOVE                             R6 R4
       46 GETIMPORT                        R5 K4 [assert]
       48 CALL                             R5 2 0
       49 MOVE                             R2 R4
       50 NAMECALL                         R3 R2 K9 ["GetDescendants"]
       52 CALL                             R3 1 3
       53 FORGPREP                         R3
       54 LOADK                            R10 K10 ["TextBox"]
       55 NAMECALL                         R8 R7 K11 ["IsA"]
       57 CALL                             R8 2 1
       58 JUMPIFNOT                        R8 ; [+3]
       59 GETTABLEKS                       R8 R7 K12 ["Text"]
       61 RETURN                           R8 1
       62 FORGLOOP                         R3 2 ; [-9]
       64 GETIMPORT                        R3 K14 [error]
       66 LOADK                            R5 K15 ["No TextBox found in API key input for %*"]
       67 MOVE                             R7 R0
       68 NAMECALL                         R5 R5 K8 ["format"]
       70 CALL                             R5 2 1
       71 MOVE                             R4 R5
       72 CALL                             R3 1 0
       73 RETURN                           R0 0

PROTO_147:
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

PROTO_148:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["APIKey"]
        3 GETTABLEKS                       R2 R3 K1 ["Input"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 LOADNIL                          R4
        8 MOVE                             R5 R4
        9 JUMPIF                           R5 ; [+12]
       10 GETUPVAL                         R8 1
       11 JUMPIFNOTEQKNIL                  R8 ; [+2]
       13 LOADB                            R7 0 +1
       14 LOADB                            R7 1
       15 FASTCALL2K                       ASSERT R7 K2 ; [+4]
       17 LOADK                            R8 K2 ["Container not mounted, ensure render is called"]
       18 GETIMPORT                        R6 K4 [assert]
       20 CALL                             R6 2 0
       21 GETUPVAL                         R5 1
       22 MOVE                             R4 R5
       23 FASTCALL2K                       ASSERT R4 K5 ; [+5]
       25 MOVE                             R6 R4
       26 LOADK                            R7 K5 ["Query container not found"]
       27 GETIMPORT                        R5 K4 [assert]
       29 CALL                             R5 2 0
       30 GETUPVAL                         R6 2
       31 MOVE                             R7 R4
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R5 R6 K6 ["getByTestId"]
       35 MOVE                             R6 R2
       36 CALL                             R5 1 1
       37 LOADK                            R9 K7 ["No result found for testId \"%*\""]
       38 MOVE                             R11 R2
       39 NAMECALL                         R9 R9 K8 ["format"]
       41 CALL                             R9 2 1
       42 MOVE                             R8 R9
       43 FASTCALL2                        ASSERT R5 R8 ; [+4]
       45 MOVE                             R7 R5
       46 GETIMPORT                        R6 K4 [assert]
       48 CALL                             R6 2 0
       49 MOVE                             R3 R5
       50 LOADK                            R6 K9 ["ScrollingFrame"]
       51 NAMECALL                         R4 R3 K10 ["FindFirstAncestorWhichIsA"]
       53 CALL                             R4 2 1
       54 MOVE                             R6 R4
       55 JUMPIFNOT                        R6 ; [+4]
       56 LOADK                            R8 K9 ["ScrollingFrame"]
       57 NAMECALL                         R6 R4 K11 ["IsA"]
       59 CALL                             R6 2 1
       60 FASTCALL2K                       ASSERT R6 K12 ; [+4]
       62 LOADK                            R7 K12 ["Scroll area not found for widget"]
       63 GETIMPORT                        R5 K4 [assert]
       65 CALL                             R5 2 0
       66 GETTABLEKS                       R6 R4 K13 ["AbsolutePosition"]
       68 GETTABLEKS                       R8 R3 K13 ["AbsolutePosition"]
       70 GETTABLEKS                       R10 R3 K15 ["AbsoluteSize"]
       72 DIVK                             R9 R10 K14 [2]
       73 ADD                              R7 R8 R9
       74 SUB                              R5 R6 R7
       75 GETTABLEKS                       R6 R4 K16 ["CanvasPosition"]
       77 SUB                              R6 R6 R5
       78 SETTABLEKS                       R6 R4 K16 ["CanvasPosition"]
       80 GETUPVAL                         R6 3
       81 NAMECALL                         R6 R6 K17 ["UpdateUnitTestOnly"]
       83 CALL                             R6 1 0
       84 GETUPVAL                         R7 4
       85 GETTABLEKS                       R6 R7 K18 ["Stepped"]
       87 NAMECALL                         R6 R6 K19 ["Wait"]
       89 CALL                             R6 1 0
       90 GETUPVAL                         R7 4
       91 GETTABLEKS                       R6 R7 K18 ["Stepped"]
       93 NAMECALL                         R6 R6 K19 ["Wait"]
       95 CALL                             R6 1 0
       96 NAMECALL                         R4 R3 K20 ["GetDescendants"]
       98 CALL                             R4 1 3
       99 FORGPREP                         R4
      100 LOADK                            R11 K21 ["TextBox"]
      101 NAMECALL                         R9 R8 K11 ["IsA"]
      103 CALL                             R9 2 1
      104 JUMPIFNOT                        R9 ; [+23]
      105 GETUPVAL                         R9 5
      106 NEWCLOSURE                       R10 P0
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R1
      110 CALL                             R9 1 0
      111 GETUPVAL                         R9 3
      112 NAMECALL                         R9 R9 K17 ["UpdateUnitTestOnly"]
      114 CALL                             R9 1 0
      115 GETUPVAL                         R10 4
      116 GETTABLEKS                       R9 R10 K18 ["Stepped"]
      118 NAMECALL                         R9 R9 K19 ["Wait"]
      120 CALL                             R9 1 0
      121 GETUPVAL                         R10 4
      122 GETTABLEKS                       R9 R10 K18 ["Stepped"]
      124 NAMECALL                         R9 R9 K19 ["Wait"]
      126 CALL                             R9 1 0
      127 RETURN                           R0 0
      128 FORGLOOP                         R4 2 ; [-29]
      130 GETIMPORT                        R4 K23 [error]
      132 LOADK                            R6 K24 ["No TextBox found in API key input for %*"]
      133 MOVE                             R8 R0
      134 NAMECALL                         R6 R6 K8 ["format"]
      136 CALL                             R6 2 1
      137 MOVE                             R5 R6
      138 CALL                             R4 1 0
      139 RETURN                           R0 0

PROTO_149:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["APIKey"]
        3 GETTABLEKS                       R1 R2 K1 ["Display"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 1
        7 LOADNIL                          R3
        8 MOVE                             R4 R3
        9 JUMPIF                           R4 ; [+12]
       10 GETUPVAL                         R7 1
       11 JUMPIFNOTEQKNIL                  R7 ; [+2]
       13 LOADB                            R6 0 +1
       14 LOADB                            R6 1
       15 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       17 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       18 GETIMPORT                        R5 K4 [assert]
       20 CALL                             R5 2 0
       21 GETUPVAL                         R4 1
       22 MOVE                             R3 R4
       23 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       25 MOVE                             R5 R3
       26 LOADK                            R6 K5 ["Query container not found"]
       27 GETIMPORT                        R4 K4 [assert]
       29 CALL                             R4 2 0
       30 GETUPVAL                         R5 2
       31 MOVE                             R6 R3
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R4 R5 K6 ["getByTestId"]
       35 MOVE                             R5 R1
       36 CALL                             R4 1 1
       37 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       38 MOVE                             R10 R1
       39 NAMECALL                         R8 R8 K8 ["format"]
       41 CALL                             R8 2 1
       42 MOVE                             R7 R8
       43 FASTCALL2                        ASSERT R4 R7 ; [+4]
       45 MOVE                             R6 R4
       46 GETIMPORT                        R5 K4 [assert]
       48 CALL                             R5 2 0
       49 MOVE                             R2 R4
       50 LOADK                            R5 K9 ["TextLabel"]
       51 NAMECALL                         R3 R2 K10 ["IsA"]
       53 CALL                             R3 2 1
       54 JUMPIFNOT                        R3 ; [+3]
       55 GETTABLEKS                       R3 R2 K11 ["Text"]
       57 RETURN                           R3 1
       58 GETIMPORT                        R3 K13 [error]
       60 LOADK                            R5 K14 ["Displayed API key element is not a TextLabel for %*"]
       61 MOVE                             R7 R0
       62 NAMECALL                         R5 R5 K8 ["format"]
       64 CALL                             R5 2 1
       65 MOVE                             R4 R5
       66 CALL                             R3 1 0
       67 RETURN                           R0 0

PROTO_150:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getSecureSettingsAsync"]
        3 LOADK                            R2 K1 ["ProviderKeys"]
        4 CALL                             R1 1 1
        5 GETTABLE                         R2 R1 R0
        6 RETURN                           R2 1

PROTO_151:
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
       50 GETUPVAL                         R3 3
       51 NEWCLOSURE                       R4 P0
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          VAL R2
       54 CALL                             R3 1 0
       55 GETUPVAL                         R3 5
       56 NAMECALL                         R3 R3 K10 ["UpdateUnitTestOnly"]
       58 CALL                             R3 1 0
       59 GETUPVAL                         R4 6
       60 GETTABLEKS                       R3 R4 K11 ["Stepped"]
       62 NAMECALL                         R3 R3 K12 ["Wait"]
       64 CALL                             R3 1 0
       65 GETUPVAL                         R4 6
       66 GETTABLEKS                       R3 R4 K11 ["Stepped"]
       68 NAMECALL                         R3 R3 K12 ["Wait"]
       70 CALL                             R3 1 0
       71 RETURN                           R0 0

PROTO_152:
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

PROTO_153:
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
       50 GETUPVAL                         R3 3
       51 NEWCLOSURE                       R4 P0
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          VAL R2
       54 CALL                             R3 1 0
       55 GETUPVAL                         R3 5
       56 NAMECALL                         R3 R3 K10 ["UpdateUnitTestOnly"]
       58 CALL                             R3 1 0
       59 GETUPVAL                         R4 6
       60 GETTABLEKS                       R3 R4 K11 ["Stepped"]
       62 NAMECALL                         R3 R3 K12 ["Wait"]
       64 CALL                             R3 1 0
       65 GETUPVAL                         R4 6
       66 GETTABLEKS                       R3 R4 K11 ["Stepped"]
       68 NAMECALL                         R3 R3 K12 ["Wait"]
       70 CALL                             R3 1 0
       71 RETURN                           R0 0

PROTO_154:
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
       17 LOADK                            R5 K4 ["Container not mounted, ensure render is called"]
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

PROTO_155:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_156:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_157:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_158:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_159:
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

PROTO_160:
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
       78 GETUPVAL                         R4 3
       79 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       81 CALL                             R4 1 0
       82 GETUPVAL                         R5 4
       83 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R4 R5 K18 ["Stepped"]
       91 NAMECALL                         R4 R4 K19 ["Wait"]
       93 CALL                             R4 1 0
       94 GETUPVAL                         R2 5
       95 NEWCLOSURE                       R3 P0
       96 CAPTURE                          UPVAL U6
       97 CAPTURE                          VAL R1
       98 CALL                             R2 1 0
       99 GETUPVAL                         R2 3
      100 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      102 CALL                             R2 1 0
      103 GETUPVAL                         R3 4
      104 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R3 4
      110 GETTABLEKS                       R2 R3 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_161:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getProcessEvent"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_162:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K1 ["Stepped"]
       12 NAMECALL                         R1 R1 K2 ["Wait"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R1 R2 K1 ["Stepped"]
       18 NAMECALL                         R1 R1 K2 ["Wait"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_163:
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
       29 GETUPVAL                         R4 2
       30 NAMECALL                         R4 R4 K11 ["UpdateUnitTestOnly"]
       32 CALL                             R4 1 0
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R4 R5 K12 ["Stepped"]
       36 NAMECALL                         R4 R4 K13 ["Wait"]
       38 CALL                             R4 1 0
       39 GETUPVAL                         R5 3
       40 GETTABLEKS                       R4 R5 K12 ["Stepped"]
       42 NAMECALL                         R4 R4 K13 ["Wait"]
       44 CALL                             R4 1 0
       45 DUPTABLE                         R4 K15 [{"type", "contentId", "delta"}]
       46 LOADK                            R5 K16 ["content_delta"]
       47 SETTABLEKS                       R5 R4 K0 ["type"]
       49 SETTABLEKS                       R2 R4 K1 ["contentId"]
       51 DUPTABLE                         R5 K18 [{"type", "jsonDelta"}]
       52 LOADK                            R6 K19 ["json_delta"]
       53 SETTABLEKS                       R6 R5 K0 ["type"]
       55 SETTABLEKS                       R1 R5 K17 ["jsonDelta"]
       57 SETTABLEKS                       R5 R4 K14 ["delta"]
       59 GETUPVAL                         R5 0
       60 NEWCLOSURE                       R6 P0
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          VAL R4
       63 CALL                             R5 1 0
       64 GETUPVAL                         R5 2
       65 NAMECALL                         R5 R5 K11 ["UpdateUnitTestOnly"]
       67 CALL                             R5 1 0
       68 GETUPVAL                         R6 3
       69 GETTABLEKS                       R5 R6 K12 ["Stepped"]
       71 NAMECALL                         R5 R5 K13 ["Wait"]
       73 CALL                             R5 1 0
       74 GETUPVAL                         R6 3
       75 GETTABLEKS                       R5 R6 K12 ["Stepped"]
       77 NAMECALL                         R5 R5 K13 ["Wait"]
       79 CALL                             R5 1 0
       80 DUPTABLE                         R5 K20 [{"type", "contentId"}]
       81 LOADK                            R6 K21 ["content_end"]
       82 SETTABLEKS                       R6 R5 K0 ["type"]
       84 SETTABLEKS                       R2 R5 K1 ["contentId"]
       86 GETUPVAL                         R6 0
       87 NEWCLOSURE                       R7 P0
       88 CAPTURE                          UPVAL U1
       89 CAPTURE                          VAL R5
       90 CALL                             R6 1 0
       91 GETUPVAL                         R6 2
       92 NAMECALL                         R6 R6 K11 ["UpdateUnitTestOnly"]
       94 CALL                             R6 1 0
       95 GETUPVAL                         R7 3
       96 GETTABLEKS                       R6 R7 K12 ["Stepped"]
       98 NAMECALL                         R6 R6 K13 ["Wait"]
      100 CALL                             R6 1 0
      101 GETUPVAL                         R7 3
      102 GETTABLEKS                       R6 R7 K12 ["Stepped"]
      104 NAMECALL                         R6 R6 K13 ["Wait"]
      106 CALL                             R6 1 0
      107 RETURN                           R0 0

PROTO_164:
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
       19 GETUPVAL                         R3 2
       20 NAMECALL                         R3 R3 K7 ["UpdateUnitTestOnly"]
       22 CALL                             R3 1 0
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R3 R4 K8 ["Stepped"]
       26 NAMECALL                         R3 R3 K9 ["Wait"]
       28 CALL                             R3 1 0
       29 GETUPVAL                         R4 3
       30 GETTABLEKS                       R3 R4 K8 ["Stepped"]
       32 NAMECALL                         R3 R3 K9 ["Wait"]
       34 CALL                             R3 1 0
       35 DUPTABLE                         R3 K11 [{"type", "contentId", "delta"}]
       36 LOADK                            R4 K12 ["content_delta"]
       37 SETTABLEKS                       R4 R3 K0 ["type"]
       39 SETTABLEKS                       R1 R3 K1 ["contentId"]
       41 DUPTABLE                         R4 K6 [{"type", "text"}]
       42 LOADK                            R5 K13 ["text_delta"]
       43 SETTABLEKS                       R5 R4 K0 ["type"]
       45 SETTABLEKS                       R0 R4 K5 ["text"]
       47 SETTABLEKS                       R4 R3 K10 ["delta"]
       49 GETUPVAL                         R4 0
       50 NEWCLOSURE                       R5 P0
       51 CAPTURE                          UPVAL U1
       52 CAPTURE                          VAL R3
       53 CALL                             R4 1 0
       54 GETUPVAL                         R4 2
       55 NAMECALL                         R4 R4 K7 ["UpdateUnitTestOnly"]
       57 CALL                             R4 1 0
       58 GETUPVAL                         R5 3
       59 GETTABLEKS                       R4 R5 K8 ["Stepped"]
       61 NAMECALL                         R4 R4 K9 ["Wait"]
       63 CALL                             R4 1 0
       64 GETUPVAL                         R5 3
       65 GETTABLEKS                       R4 R5 K8 ["Stepped"]
       67 NAMECALL                         R4 R4 K9 ["Wait"]
       69 CALL                             R4 1 0
       70 DUPTABLE                         R4 K14 [{"type", "contentId"}]
       71 LOADK                            R5 K15 ["content_end"]
       72 SETTABLEKS                       R5 R4 K0 ["type"]
       74 SETTABLEKS                       R1 R4 K1 ["contentId"]
       76 GETUPVAL                         R5 0
       77 NEWCLOSURE                       R6 P0
       78 CAPTURE                          UPVAL U1
       79 CAPTURE                          VAL R4
       80 CALL                             R5 1 0
       81 GETUPVAL                         R5 2
       82 NAMECALL                         R5 R5 K7 ["UpdateUnitTestOnly"]
       84 CALL                             R5 1 0
       85 GETUPVAL                         R6 3
       86 GETTABLEKS                       R5 R6 K8 ["Stepped"]
       88 NAMECALL                         R5 R5 K9 ["Wait"]
       90 CALL                             R5 1 0
       91 GETUPVAL                         R6 3
       92 GETTABLEKS                       R5 R6 K8 ["Stepped"]
       94 NAMECALL                         R5 R5 K9 ["Wait"]
       96 CALL                             R5 1 0
       97 RETURN                           R0 0

PROTO_165:
        0 DUPTABLE                         R0 K1 [{"type"}]
        1 LOADK                            R1 K2 ["message_start"]
        2 SETTABLEKS                       R1 R0 K0 ["type"]
        4 GETUPVAL                         R1 0
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R0
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 NAMECALL                         R1 R1 K3 ["UpdateUnitTestOnly"]
       12 CALL                             R1 1 0
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R1 R2 K4 ["Stepped"]
       16 NAMECALL                         R1 R1 K5 ["Wait"]
       18 CALL                             R1 1 0
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R1 R2 K4 ["Stepped"]
       22 NAMECALL                         R1 R1 K5 ["Wait"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_166:
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
       14 GETUPVAL                         R2 2
       15 NAMECALL                         R2 R2 K6 ["UpdateUnitTestOnly"]
       17 CALL                             R2 1 0
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R2 R3 K7 ["Stepped"]
       21 NAMECALL                         R2 R2 K8 ["Wait"]
       23 CALL                             R2 1 0
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R2 R3 K7 ["Stepped"]
       27 NAMECALL                         R2 R2 K8 ["Wait"]
       29 CALL                             R2 1 0
       30 DUPTABLE                         R1 K9 [{"type"}]
       31 LOADK                            R2 K10 ["message_stop"]
       32 SETTABLEKS                       R2 R1 K0 ["type"]
       34 GETUPVAL                         R2 0
       35 NEWCLOSURE                       R3 P0
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R1
       38 CALL                             R2 1 0
       39 GETUPVAL                         R2 2
       40 NAMECALL                         R2 R2 K6 ["UpdateUnitTestOnly"]
       42 CALL                             R2 1 0
       43 GETUPVAL                         R3 3
       44 GETTABLEKS                       R2 R3 K7 ["Stepped"]
       46 NAMECALL                         R2 R2 K8 ["Wait"]
       48 CALL                             R2 1 0
       49 GETUPVAL                         R3 3
       50 GETTABLEKS                       R2 R3 K7 ["Stepped"]
       52 NAMECALL                         R2 R2 K8 ["Wait"]
       54 CALL                             R2 1 0
       55 RETURN                           R0 0

PROTO_167:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["spyOn"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["EventLogger"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_168:
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
       22 GETUPVAL                         R4 1
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R3
       26 CALL                             R4 1 0
       27 GETUPVAL                         R4 3
       28 NAMECALL                         R4 R4 K6 ["UpdateUnitTestOnly"]
       30 CALL                             R4 1 0
       31 GETUPVAL                         R5 4
       32 GETTABLEKS                       R4 R5 K7 ["Stepped"]
       34 NAMECALL                         R4 R4 K8 ["Wait"]
       36 CALL                             R4 1 0
       37 GETUPVAL                         R5 4
       38 GETTABLEKS                       R4 R5 K7 ["Stepped"]
       40 NAMECALL                         R4 R4 K8 ["Wait"]
       42 CALL                             R4 1 0
       43 RETURN                           R0 0

PROTO_169:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["SlashCommandMenu"]
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

PROTO_170:
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

PROTO_171:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setOptions"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_172:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_173:
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
      100 GETUPVAL                         R4 3
      101 NEWCLOSURE                       R5 P0
      102 CAPTURE                          UPVAL U4
      103 CAPTURE                          VAL R3
      104 CALL                             R4 1 0
      105 GETUPVAL                         R4 5
      106 NAMECALL                         R4 R4 K20 ["UpdateUnitTestOnly"]
      108 CALL                             R4 1 0
      109 GETUPVAL                         R5 6
      110 GETTABLEKS                       R4 R5 K21 ["Stepped"]
      112 NAMECALL                         R4 R4 K22 ["Wait"]
      114 CALL                             R4 1 0
      115 GETUPVAL                         R5 6
      116 GETTABLEKS                       R4 R5 K21 ["Stepped"]
      118 NAMECALL                         R4 R4 K22 ["Wait"]
      120 CALL                             R4 1 0
      121 RETURN                           R0 0

PROTO_174:
        0 LOADK                            R3 K0 ["bg-action-soft-emphasis"]
        1 NAMECALL                         R1 R0 K1 ["HasTag"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_175:
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

PROTO_176:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["ThreadsMenu"]
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
       48 GETIMPORT                        R1 K10 [pcall]
       50 NEWCLOSURE                       R2 P0
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U2
       55 CALL                             R1 1 2
       56 JUMPIFNOT                        R1 ; [+13]
       57 JUMPIFNOT                        R2 ; [+12]
       58 MOVE                             R3 R2
       59 LOADNIL                          R4
       60 LOADNIL                          R5
       61 FORGPREP                         R3
       62 LOADK                            R10 K11 ["bg-action-soft-emphasis"]
       63 NAMECALL                         R8 R7 K12 ["HasTag"]
       65 CALL                             R8 2 1
       66 JUMPIFNOT                        R8 ; [+1]
       67 RETURN                           R7 1
       68 FORGLOOP                         R3 2 ; [-7]
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R5 R6 K0 ["ThreadsMenu"]
       73 GETTABLEKS                       R4 R5 K13 ["AddThreadButton"]
       75 MOVE                             R5 R0
       76 MOVE                             R6 R5
       77 JUMPIF                           R6 ; [+12]
       78 GETUPVAL                         R9 1
       79 JUMPIFNOTEQKNIL                  R9 ; [+2]
       81 LOADB                            R8 0 +1
       82 LOADB                            R8 1
       83 FASTCALL2K                       ASSERT R8 K2 ; [+4]
       85 LOADK                            R9 K2 ["Container not mounted, ensure render is called"]
       86 GETIMPORT                        R7 K4 [assert]
       88 CALL                             R7 2 0
       89 GETUPVAL                         R6 1
       90 MOVE                             R5 R6
       91 FASTCALL2K                       ASSERT R5 K5 ; [+5]
       93 MOVE                             R7 R5
       94 LOADK                            R8 K5 ["Query container not found"]
       95 GETIMPORT                        R6 K4 [assert]
       97 CALL                             R6 2 0
       98 GETUPVAL                         R7 2
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
      118 RETURN                           R3 1

PROTO_177:
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
      167 GETUPVAL                         R26 19
      168 GETTABLEKS                       R25 R26 K29 ["registerDefaultWidgets"]
      170 CALL                             R25 0 0
      171 GETTABLEKS                       R25 R0 K30 ["contentWidgets"]
      173 JUMPIFNOT                        R25 ; [+5]
      174 GETUPVAL                         R27 19
      175 GETTABLEKS                       R26 R27 K31 ["registerWidgetList"]
      177 MOVE                             R27 R25
      178 CALL                             R26 1 0
      179 NEWCLOSURE                       R26 P0
      180 CAPTURE                          VAL R22
      181 GETUPVAL                         R28 15
      182 GETTABLEKS                       R27 R28 K32 ["values"]
      184 MOVE                             R28 R21
      185 CALL                             R27 1 1
      186 GETTABLEKS                       R28 R0 K33 ["orderedOverrideProviders"]
      188 JUMPIFNOT                        R28 ; [+14]
      189 GETTABLEKS                       R28 R0 K33 ["orderedOverrideProviders"]
      191 LOADNIL                          R29
      192 LOADNIL                          R30
      193 FORGPREP                         R28
      194 FASTCALL2                        TABLE_INSERT R27 R32 ; [+5]
      196 MOVE                             R34 R27
      197 MOVE                             R35 R32
      198 GETIMPORT                        R33 K36 [table.insert]
      200 CALL                             R33 2 0
      201 FORGLOOP                         R28 2 ; [-8]
      203 DUPCLOSURE                       R28 K37 [PROTO_10]
      204 CAPTURE                          UPVAL U20
      205 CAPTURE                          UPVAL U21
      206 LOADNIL                          R29
      207 NEWCLOSURE                       R30 P2
      208 CAPTURE                          UPVAL U22
      209 CAPTURE                          UPVAL U23
      210 CAPTURE                          REF R0
      211 CAPTURE                          UPVAL U24
      212 CAPTURE                          UPVAL U10
      213 CAPTURE                          UPVAL U25
      214 CAPTURE                          VAL R27
      215 CAPTURE                          UPVAL U20
      216 CAPTURE                          UPVAL U21
      217 CAPTURE                          REF R29
      218 DUPCLOSURE                       R31 K38 [PROTO_12]
      219 CAPTURE                          UPVAL U26
      220 DUPCLOSURE                       R32 K39 [PROTO_15]
      221 CAPTURE                          UPVAL U27
      222 CAPTURE                          UPVAL U28
      223 DUPCLOSURE                       R33 K40 [PROTO_16]
      224 CAPTURE                          VAL R32
      225 DUPCLOSURE                       R34 K41 [PROTO_20]
      226 CAPTURE                          UPVAL U29
      227 CAPTURE                          UPVAL U12
      228 CAPTURE                          UPVAL U28
      229 CAPTURE                          UPVAL U15
      230 CAPTURE                          UPVAL U27
      231 NEWCLOSURE                       R35 P7
      232 CAPTURE                          REF R24
      233 CAPTURE                          VAL R34
      234 NEWCLOSURE                       R36 P8
      235 CAPTURE                          REF R29
      236 NEWCLOSURE                       R37 P9
      237 CAPTURE                          REF R29
      238 NEWCLOSURE                       R38 P10
      239 CAPTURE                          REF R29
      240 CAPTURE                          UPVAL U30
      241 NEWCLOSURE                       R39 P11
      242 CAPTURE                          REF R29
      243 CAPTURE                          UPVAL U30
      244 NEWCLOSURE                       R40 P12
      245 CAPTURE                          REF R29
      246 CAPTURE                          UPVAL U30
      247 NEWCLOSURE                       R41 P13
      248 CAPTURE                          REF R29
      249 CAPTURE                          UPVAL U30
      250 NEWCLOSURE                       R42 P14
      251 CAPTURE                          REF R29
      252 CAPTURE                          UPVAL U15
      253 CAPTURE                          UPVAL U30
      254 DUPCLOSURE                       R43 K42 [PROTO_30]
      255 CAPTURE                          UPVAL U27
      256 CAPTURE                          UPVAL U26
      257 CAPTURE                          UPVAL U20
      258 CAPTURE                          UPVAL U21
      259 DUPCLOSURE                       R44 K43 [PROTO_31]
      260 CAPTURE                          UPVAL U26
      261 CAPTURE                          UPVAL U20
      262 CAPTURE                          UPVAL U21
      263 DUPCLOSURE                       R45 K44 [PROTO_32]
      264 CAPTURE                          UPVAL U26
      265 CAPTURE                          UPVAL U20
      266 CAPTURE                          UPVAL U21
      267 NEWCLOSURE                       R46 P18
      268 CAPTURE                          UPVAL U20
      269 CAPTURE                          UPVAL U21
      270 CAPTURE                          UPVAL U31
      271 CAPTURE                          REF R29
      272 CAPTURE                          UPVAL U30
      273 NEWCLOSURE                       R47 P19
      274 CAPTURE                          UPVAL U20
      275 CAPTURE                          UPVAL U21
      276 CAPTURE                          UPVAL U31
      277 CAPTURE                          REF R29
      278 CAPTURE                          UPVAL U30
      279 NEWCLOSURE                       R48 P20
      280 CAPTURE                          UPVAL U30
      281 CAPTURE                          REF R29
      282 CAPTURE                          UPVAL U32
      283 NEWCLOSURE                       R49 P21
      284 CAPTURE                          UPVAL U30
      285 CAPTURE                          REF R29
      286 CAPTURE                          UPVAL U32
      287 NEWCLOSURE                       R50 P22
      288 CAPTURE                          UPVAL U30
      289 CAPTURE                          REF R29
      290 CAPTURE                          UPVAL U15
      291 CAPTURE                          UPVAL U32
      292 NEWCLOSURE                       R51 P23
      293 CAPTURE                          UPVAL U30
      294 CAPTURE                          REF R29
      295 CAPTURE                          UPVAL U32
      296 CAPTURE                          UPVAL U33
      297 CAPTURE                          UPVAL U31
      298 NEWCLOSURE                       R52 P24
      299 CAPTURE                          UPVAL U32
      300 CAPTURE                          REF R29
      301 NEWCLOSURE                       R53 P25
      302 CAPTURE                          REF R29
      303 CAPTURE                          UPVAL U15
      304 CAPTURE                          UPVAL U30
      305 NEWCLOSURE                       R54 P26
      306 CAPTURE                          UPVAL U31
      307 CAPTURE                          REF R29
      308 CAPTURE                          UPVAL U30
      309 NEWCLOSURE                       R55 P27
      310 CAPTURE                          UPVAL U31
      311 CAPTURE                          REF R29
      312 CAPTURE                          UPVAL U30
      313 NEWCLOSURE                       R56 P28
      314 CAPTURE                          UPVAL U27
      315 CAPTURE                          VAL R13
      316 NEWCLOSURE                       R57 P29
      317 CAPTURE                          UPVAL U20
      318 CAPTURE                          UPVAL U21
      319 CAPTURE                          UPVAL U31
      320 CAPTURE                          REF R29
      321 CAPTURE                          UPVAL U30
      322 CAPTURE                          UPVAL U27
      323 NEWCLOSURE                       R58 P30
      324 CAPTURE                          UPVAL U26
      325 CAPTURE                          UPVAL U20
      326 CAPTURE                          UPVAL U21
      327 CAPTURE                          UPVAL U31
      328 CAPTURE                          REF R29
      329 CAPTURE                          UPVAL U30
      330 NEWCLOSURE                       R59 P31
      331 CAPTURE                          UPVAL U20
      332 CAPTURE                          UPVAL U21
      333 CAPTURE                          UPVAL U31
      334 CAPTURE                          REF R29
      335 CAPTURE                          UPVAL U30
      336 CAPTURE                          UPVAL U27
      337 NEWCLOSURE                       R60 P32
      338 CAPTURE                          UPVAL U20
      339 CAPTURE                          UPVAL U21
      340 CAPTURE                          UPVAL U31
      341 CAPTURE                          REF R29
      342 CAPTURE                          UPVAL U30
      343 DUPCLOSURE                       R61 K45 [PROTO_55]
      344 CAPTURE                          UPVAL U22
      345 NEWCLOSURE                       R62 P34
      346 CAPTURE                          UPVAL U31
      347 CAPTURE                          REF R29
      348 CAPTURE                          UPVAL U30
      349 CAPTURE                          UPVAL U27
      350 CAPTURE                          UPVAL U26
      351 CAPTURE                          UPVAL U20
      352 CAPTURE                          UPVAL U21
      353 DUPCLOSURE                       R63 K46 [PROTO_57]
      354 CAPTURE                          UPVAL U26
      355 CAPTURE                          UPVAL U20
      356 CAPTURE                          UPVAL U21
      357 DUPCLOSURE                       R64 K47 [PROTO_59]
      358 CAPTURE                          UPVAL U27
      359 CAPTURE                          UPVAL U26
      360 CAPTURE                          UPVAL U20
      361 CAPTURE                          UPVAL U21
      362 NEWCLOSURE                       R65 P37
      363 CAPTURE                          VAL R63
      364 CAPTURE                          UPVAL U20
      365 CAPTURE                          UPVAL U21
      366 CAPTURE                          UPVAL U31
      367 CAPTURE                          REF R29
      368 CAPTURE                          UPVAL U30
      369 NEWCLOSURE                       R66 P38
      370 CAPTURE                          VAL R64
      371 CAPTURE                          UPVAL U20
      372 CAPTURE                          UPVAL U21
      373 CAPTURE                          UPVAL U31
      374 CAPTURE                          REF R29
      375 CAPTURE                          UPVAL U30
      376 CAPTURE                          VAL R63
      377 NEWCLOSURE                       R67 P39
      378 CAPTURE                          UPVAL U20
      379 CAPTURE                          UPVAL U21
      380 CAPTURE                          UPVAL U31
      381 CAPTURE                          REF R29
      382 CAPTURE                          UPVAL U30
      383 CAPTURE                          UPVAL U26
      384 DUPCLOSURE                       R68 K48 [PROTO_63]
      385 CAPTURE                          UPVAL U26
      386 CAPTURE                          UPVAL U20
      387 CAPTURE                          UPVAL U21
      388 NEWCLOSURE                       R69 P41
      389 CAPTURE                          UPVAL U20
      390 CAPTURE                          UPVAL U21
      391 CAPTURE                          UPVAL U31
      392 CAPTURE                          REF R29
      393 CAPTURE                          UPVAL U30
      394 NEWCLOSURE                       R70 P42
      395 CAPTURE                          UPVAL U34
      396 CAPTURE                          UPVAL U35
      397 CAPTURE                          UPVAL U20
      398 CAPTURE                          UPVAL U21
      399 CAPTURE                          UPVAL U31
      400 CAPTURE                          REF R29
      401 CAPTURE                          UPVAL U30
      402 NEWCLOSURE                       R71 P43
      403 CAPTURE                          VAL R52
      404 CAPTURE                          UPVAL U30
      405 NEWCLOSURE                       R72 P44
      406 CAPTURE                          VAL R52
      407 NEWCLOSURE                       R73 P45
      408 CAPTURE                          UPVAL U20
      409 CAPTURE                          UPVAL U21
      410 CAPTURE                          UPVAL U31
      411 CAPTURE                          REF R29
      412 CAPTURE                          UPVAL U30
      413 DUPCLOSURE                       R74 K49 [PROTO_70]
      414 CAPTURE                          UPVAL U20
      415 CAPTURE                          UPVAL U21
      416 NEWCLOSURE                       R75 P47
      417 CAPTURE                          UPVAL U31
      418 CAPTURE                          REF R29
      419 CAPTURE                          UPVAL U30
      420 CAPTURE                          UPVAL U20
      421 CAPTURE                          UPVAL U21
      422 CAPTURE                          UPVAL U27
      423 CAPTURE                          UPVAL U26
      424 NEWCLOSURE                       R76 P48
      425 CAPTURE                          UPVAL U31
      426 CAPTURE                          REF R29
      427 CAPTURE                          UPVAL U30
      428 CAPTURE                          UPVAL U20
      429 CAPTURE                          UPVAL U21
      430 CAPTURE                          UPVAL U27
      431 CAPTURE                          UPVAL U26
      432 NEWCLOSURE                       R77 P49
      433 CAPTURE                          UPVAL U31
      434 CAPTURE                          REF R29
      435 CAPTURE                          UPVAL U30
      436 CAPTURE                          UPVAL U20
      437 CAPTURE                          UPVAL U21
      438 CAPTURE                          UPVAL U27
      439 CAPTURE                          UPVAL U26
      440 NEWCLOSURE                       R78 P50
      441 CAPTURE                          UPVAL U31
      442 CAPTURE                          REF R29
      443 CAPTURE                          UPVAL U30
      444 CAPTURE                          UPVAL U20
      445 CAPTURE                          UPVAL U21
      446 CAPTURE                          UPVAL U27
      447 CAPTURE                          UPVAL U26
      448 NEWCLOSURE                       R79 P51
      449 CAPTURE                          UPVAL U31
      450 CAPTURE                          REF R29
      451 CAPTURE                          UPVAL U30
      452 CAPTURE                          UPVAL U20
      453 CAPTURE                          UPVAL U21
      454 CAPTURE                          UPVAL U27
      455 CAPTURE                          UPVAL U26
      456 NEWCLOSURE                       R80 P52
      457 CAPTURE                          UPVAL U31
      458 CAPTURE                          REF R29
      459 CAPTURE                          UPVAL U30
      460 CAPTURE                          UPVAL U20
      461 CAPTURE                          UPVAL U21
      462 CAPTURE                          UPVAL U27
      463 CAPTURE                          UPVAL U26
      464 NEWCLOSURE                       R81 P53
      465 CAPTURE                          UPVAL U31
      466 CAPTURE                          REF R29
      467 CAPTURE                          UPVAL U30
      468 CAPTURE                          UPVAL U20
      469 CAPTURE                          UPVAL U21
      470 CAPTURE                          UPVAL U27
      471 CAPTURE                          UPVAL U26
      472 NEWCLOSURE                       R82 P54
      473 CAPTURE                          UPVAL U31
      474 CAPTURE                          REF R29
      475 CAPTURE                          UPVAL U30
      476 CAPTURE                          UPVAL U20
      477 CAPTURE                          UPVAL U21
      478 CAPTURE                          UPVAL U27
      479 CAPTURE                          UPVAL U26
      480 NEWCLOSURE                       R83 P55
      481 CAPTURE                          UPVAL U31
      482 CAPTURE                          REF R29
      483 CAPTURE                          UPVAL U30
      484 CAPTURE                          UPVAL U20
      485 CAPTURE                          UPVAL U21
      486 CAPTURE                          UPVAL U27
      487 CAPTURE                          UPVAL U26
      488 NEWCLOSURE                       R84 P56
      489 CAPTURE                          UPVAL U31
      490 CAPTURE                          REF R29
      491 CAPTURE                          UPVAL U30
      492 CAPTURE                          UPVAL U20
      493 CAPTURE                          UPVAL U21
      494 CAPTURE                          UPVAL U27
      495 CAPTURE                          UPVAL U26
      496 NEWCLOSURE                       R85 P57
      497 CAPTURE                          UPVAL U31
      498 CAPTURE                          REF R29
      499 CAPTURE                          UPVAL U30
      500 NEWCLOSURE                       R86 P58
      501 CAPTURE                          UPVAL U31
      502 CAPTURE                          REF R29
      503 CAPTURE                          UPVAL U30
      504 CAPTURE                          UPVAL U20
      505 CAPTURE                          UPVAL U21
      506 CAPTURE                          UPVAL U27
      507 CAPTURE                          UPVAL U26
      508 NEWCLOSURE                       R87 P59
      509 CAPTURE                          UPVAL U31
      510 CAPTURE                          REF R29
      511 CAPTURE                          UPVAL U30
      512 CAPTURE                          UPVAL U20
      513 CAPTURE                          UPVAL U21
      514 CAPTURE                          UPVAL U27
      515 CAPTURE                          UPVAL U26
      516 NEWCLOSURE                       R88 P60
      517 CAPTURE                          UPVAL U31
      518 CAPTURE                          REF R29
      519 CAPTURE                          UPVAL U30
      520 CAPTURE                          UPVAL U20
      521 CAPTURE                          UPVAL U21
      522 CAPTURE                          UPVAL U27
      523 CAPTURE                          UPVAL U26
      524 DUPCLOSURE                       R89 K50 [PROTO_86]
      525 CAPTURE                          UPVAL U29
      526 CAPTURE                          UPVAL U23
      527 NEWCLOSURE                       R90 P62
      528 CAPTURE                          UPVAL U31
      529 CAPTURE                          REF R29
      530 CAPTURE                          UPVAL U30
      531 DUPCLOSURE                       R91 K51 [PROTO_88]
      532 DUPCLOSURE                       R92 K52 [PROTO_89]
      533 NEWCLOSURE                       R93 P65
      534 CAPTURE                          UPVAL U31
      535 CAPTURE                          REF R29
      536 CAPTURE                          UPVAL U30
      537 CAPTURE                          VAL R92
      538 DUPCLOSURE                       R94 K53 [PROTO_91]
      539 CAPTURE                          VAL R91
      540 CAPTURE                          VAL R92
      541 CAPTURE                          UPVAL U20
      542 CAPTURE                          UPVAL U21
      543 CAPTURE                          UPVAL U27
      544 CAPTURE                          UPVAL U26
      545 NEWCLOSURE                       R95 P67
      546 CAPTURE                          UPVAL U31
      547 CAPTURE                          REF R29
      548 CAPTURE                          UPVAL U30
      549 CAPTURE                          UPVAL U20
      550 CAPTURE                          UPVAL U21
      551 CAPTURE                          UPVAL U27
      552 CAPTURE                          UPVAL U26
      553 NEWCLOSURE                       R96 P68
      554 CAPTURE                          UPVAL U31
      555 CAPTURE                          REF R29
      556 CAPTURE                          UPVAL U30
      557 CAPTURE                          UPVAL U20
      558 CAPTURE                          UPVAL U21
      559 CAPTURE                          UPVAL U27
      560 CAPTURE                          UPVAL U26
      561 NEWCLOSURE                       R97 P69
      562 CAPTURE                          UPVAL U31
      563 CAPTURE                          REF R29
      564 CAPTURE                          UPVAL U30
      565 CAPTURE                          UPVAL U20
      566 CAPTURE                          UPVAL U21
      567 CAPTURE                          UPVAL U27
      568 CAPTURE                          UPVAL U26
      569 NEWCLOSURE                       R98 P70
      570 CAPTURE                          UPVAL U31
      571 CAPTURE                          REF R29
      572 CAPTURE                          UPVAL U30
      573 CAPTURE                          UPVAL U20
      574 CAPTURE                          UPVAL U21
      575 CAPTURE                          UPVAL U27
      576 CAPTURE                          UPVAL U26
      577 NEWCLOSURE                       R99 P71
      578 CAPTURE                          UPVAL U31
      579 CAPTURE                          REF R29
      580 CAPTURE                          UPVAL U30
      581 NEWCLOSURE                       R100 P72
      582 CAPTURE                          UPVAL U33
      583 CAPTURE                          VAL R42
      584 CAPTURE                          UPVAL U36
      585 CAPTURE                          UPVAL U31
      586 CAPTURE                          REF R29
      587 CAPTURE                          UPVAL U30
      588 CAPTURE                          UPVAL U20
      589 CAPTURE                          UPVAL U21
      590 CAPTURE                          UPVAL U27
      591 CAPTURE                          UPVAL U26
      592 NEWCLOSURE                       R101 P73
      593 CAPTURE                          UPVAL U33
      594 CAPTURE                          VAL R42
      595 CAPTURE                          UPVAL U36
      596 CAPTURE                          UPVAL U31
      597 CAPTURE                          REF R29
      598 CAPTURE                          UPVAL U30
      599 CAPTURE                          UPVAL U20
      600 CAPTURE                          UPVAL U21
      601 CAPTURE                          UPVAL U27
      602 CAPTURE                          UPVAL U26
      603 NEWCLOSURE                       R102 P74
      604 CAPTURE                          UPVAL U33
      605 CAPTURE                          VAL R42
      606 CAPTURE                          UPVAL U36
      607 CAPTURE                          UPVAL U31
      608 CAPTURE                          REF R29
      609 CAPTURE                          UPVAL U30
      610 CAPTURE                          UPVAL U20
      611 CAPTURE                          UPVAL U21
      612 CAPTURE                          UPVAL U27
      613 CAPTURE                          UPVAL U26
      614 NEWCLOSURE                       R103 P75
      615 CAPTURE                          VAL R42
      616 CAPTURE                          UPVAL U36
      617 CAPTURE                          UPVAL U20
      618 CAPTURE                          UPVAL U21
      619 CAPTURE                          UPVAL U27
      620 CAPTURE                          UPVAL U26
      621 NEWCLOSURE                       R104 P76
      622 CAPTURE                          UPVAL U33
      623 CAPTURE                          VAL R42
      624 CAPTURE                          UPVAL U36
      625 CAPTURE                          UPVAL U31
      626 CAPTURE                          REF R29
      627 CAPTURE                          UPVAL U30
      628 NEWCLOSURE                       R105 P77
      629 CAPTURE                          UPVAL U33
      630 CAPTURE                          VAL R42
      631 CAPTURE                          UPVAL U36
      632 CAPTURE                          UPVAL U31
      633 CAPTURE                          REF R29
      634 CAPTURE                          UPVAL U30
      635 NEWCLOSURE                       R106 P78
      636 CAPTURE                          VAL R3
      637 NEWCLOSURE                       R107 P79
      638 CAPTURE                          UPVAL U27
      639 CAPTURE                          VAL R3
      640 CAPTURE                          UPVAL U20
      641 CAPTURE                          UPVAL U21
      642 NEWCLOSURE                       R108 P80
      643 CAPTURE                          VAL R7
      644 CAPTURE                          UPVAL U27
      645 CAPTURE                          UPVAL U20
      646 CAPTURE                          UPVAL U21
      647 NEWCLOSURE                       R109 P81
      648 CAPTURE                          UPVAL U33
      649 CAPTURE                          UPVAL U37
      650 CAPTURE                          UPVAL U27
      651 CAPTURE                          VAL R3
      652 CAPTURE                          UPVAL U20
      653 CAPTURE                          UPVAL U21
      654 CAPTURE                          VAL R7
      655 NEWCLOSURE                       R110 P82
      656 CAPTURE                          UPVAL U31
      657 CAPTURE                          REF R29
      658 CAPTURE                          UPVAL U30
      659 CAPTURE                          UPVAL U27
      660 CAPTURE                          UPVAL U26
      661 CAPTURE                          UPVAL U20
      662 CAPTURE                          UPVAL U21
      663 NEWCLOSURE                       R111 P83
      664 CAPTURE                          UPVAL U31
      665 CAPTURE                          REF R29
      666 CAPTURE                          UPVAL U30
      667 NEWCLOSURE                       R112 P84
      668 CAPTURE                          UPVAL U31
      669 CAPTURE                          REF R29
      670 CAPTURE                          UPVAL U30
      671 CAPTURE                          UPVAL U27
      672 CAPTURE                          UPVAL U26
      673 CAPTURE                          UPVAL U20
      674 CAPTURE                          UPVAL U21
      675 CAPTURE                          UPVAL U33
      676 CAPTURE                          UPVAL U38
      677 NEWCLOSURE                       R113 P85
      678 CAPTURE                          VAL R9
      679 NEWCLOSURE                       R114 P86
      680 CAPTURE                          VAL R9
      681 NEWCLOSURE                       R115 P87
      682 CAPTURE                          VAL R9
      683 NEWCLOSURE                       R116 P88
      684 CAPTURE                          VAL R9
      685 NEWCLOSURE                       R117 P89
      686 CAPTURE                          VAL R9
      687 NEWCLOSURE                       R118 P90
      688 CAPTURE                          VAL R9
      689 NEWCLOSURE                       R119 P91
      690 CAPTURE                          VAL R11
      691 NEWCLOSURE                       R120 P92
      692 CAPTURE                          VAL R11
      693 NEWCLOSURE                       R121 P93
      694 CAPTURE                          UPVAL U27
      695 CAPTURE                          VAL R5
      696 CAPTURE                          UPVAL U39
      697 CAPTURE                          UPVAL U20
      698 CAPTURE                          UPVAL U21
      699 CAPTURE                          UPVAL U34
      700 CAPTURE                          VAL R50
      701 NEWCLOSURE                       R122 P94
      702 CAPTURE                          UPVAL U27
      703 CAPTURE                          VAL R5
      704 NEWCLOSURE                       R123 P95
      705 CAPTURE                          UPVAL U31
      706 CAPTURE                          REF R29
      707 CAPTURE                          UPVAL U30
      708 NEWCLOSURE                       R124 P96
      709 CAPTURE                          UPVAL U31
      710 CAPTURE                          REF R29
      711 CAPTURE                          UPVAL U30
      712 CAPTURE                          UPVAL U20
      713 CAPTURE                          UPVAL U21
      714 CAPTURE                          UPVAL U27
      715 CAPTURE                          UPVAL U26
      716 NEWCLOSURE                       R125 P97
      717 CAPTURE                          REF R23
      718 CAPTURE                          UPVAL U40
      719 CAPTURE                          UPVAL U41
      720 NEWCLOSURE                       R126 P98
      721 CAPTURE                          UPVAL U31
      722 CAPTURE                          REF R29
      723 CAPTURE                          UPVAL U30
      724 NEWCLOSURE                       R127 P99
      725 CAPTURE                          UPVAL U31
      726 CAPTURE                          REF R29
      727 CAPTURE                          UPVAL U30
      728 CAPTURE                          UPVAL U40
      729 NEWCLOSURE                       R128 P100
      730 CAPTURE                          UPVAL U31
      731 CAPTURE                          REF R29
      732 CAPTURE                          UPVAL U30
      733 CAPTURE                          UPVAL U20
      734 CAPTURE                          UPVAL U21
      735 CAPTURE                          UPVAL U27
      736 CAPTURE                          UPVAL U26
      737 NEWCLOSURE                       R129 P101
      738 CAPTURE                          UPVAL U31
      739 CAPTURE                          REF R29
      740 CAPTURE                          UPVAL U30
      741 NEWCLOSURE                       R130 P102
      742 CAPTURE                          UPVAL U31
      743 CAPTURE                          REF R29
      744 CAPTURE                          UPVAL U30
      745 NEWCLOSURE                       R131 P103
      746 CAPTURE                          UPVAL U31
      747 CAPTURE                          REF R29
      748 CAPTURE                          UPVAL U30
      749 DUPCLOSURE                       R132 K54 [PROTO_138]
      750 CAPTURE                          UPVAL U32
      751 CAPTURE                          UPVAL U31
      752 NEWCLOSURE                       R133 P105
      753 CAPTURE                          UPVAL U31
      754 CAPTURE                          REF R29
      755 CAPTURE                          UPVAL U30
      756 CAPTURE                          UPVAL U27
      757 CAPTURE                          UPVAL U26
      758 CAPTURE                          UPVAL U20
      759 CAPTURE                          UPVAL U21
      760 NEWCLOSURE                       R134 P106
      761 CAPTURE                          UPVAL U32
      762 CAPTURE                          REF R29
      763 CAPTURE                          UPVAL U31
      764 NEWCLOSURE                       R135 P107
      765 CAPTURE                          UPVAL U32
      766 CAPTURE                          REF R29
      767 CAPTURE                          UPVAL U31
      768 NEWCLOSURE                       R136 P108
      769 CAPTURE                          UPVAL U32
      770 CAPTURE                          REF R29
      771 CAPTURE                          UPVAL U31
      772 NEWCLOSURE                       R137 P109
      773 CAPTURE                          UPVAL U31
      774 CAPTURE                          REF R29
      775 CAPTURE                          UPVAL U30
      776 CAPTURE                          UPVAL U20
      777 CAPTURE                          UPVAL U21
      778 CAPTURE                          UPVAL U27
      779 CAPTURE                          UPVAL U26
      780 NEWCLOSURE                       R138 P110
      781 CAPTURE                          UPVAL U31
      782 CAPTURE                          REF R29
      783 CAPTURE                          UPVAL U30
      784 CAPTURE                          UPVAL U20
      785 CAPTURE                          UPVAL U21
      786 CAPTURE                          UPVAL U27
      787 CAPTURE                          UPVAL U26
      788 NEWCLOSURE                       R139 P111
      789 CAPTURE                          UPVAL U31
      790 CAPTURE                          REF R29
      791 CAPTURE                          UPVAL U30
      792 CAPTURE                          UPVAL U20
      793 CAPTURE                          UPVAL U21
      794 CAPTURE                          UPVAL U27
      795 CAPTURE                          UPVAL U26
      796 NEWCLOSURE                       R140 P112
      797 CAPTURE                          UPVAL U31
      798 CAPTURE                          REF R29
      799 CAPTURE                          UPVAL U30
      800 NEWCLOSURE                       R141 P113
      801 CAPTURE                          UPVAL U31
      802 CAPTURE                          REF R29
      803 CAPTURE                          UPVAL U30
      804 CAPTURE                          UPVAL U20
      805 CAPTURE                          UPVAL U21
      806 CAPTURE                          UPVAL U27
      807 CAPTURE                          UPVAL U26
      808 NEWCLOSURE                       R142 P114
      809 CAPTURE                          UPVAL U31
      810 CAPTURE                          REF R29
      811 CAPTURE                          UPVAL U30
      812 NEWCLOSURE                       R143 P115
      813 CAPTURE                          REF R23
      814 NEWCLOSURE                       R144 P116
      815 CAPTURE                          UPVAL U31
      816 CAPTURE                          REF R29
      817 CAPTURE                          UPVAL U30
      818 CAPTURE                          UPVAL U27
      819 CAPTURE                          UPVAL U26
      820 CAPTURE                          UPVAL U20
      821 CAPTURE                          UPVAL U21
      822 DUPCLOSURE                       R145 K55 [PROTO_152]
      823 CAPTURE                          UPVAL U30
      824 CAPTURE                          UPVAL U32
      825 CAPTURE                          UPVAL U31
      826 NEWCLOSURE                       R146 P118
      827 CAPTURE                          UPVAL U31
      828 CAPTURE                          REF R29
      829 CAPTURE                          UPVAL U30
      830 CAPTURE                          UPVAL U27
      831 CAPTURE                          UPVAL U26
      832 CAPTURE                          UPVAL U20
      833 CAPTURE                          UPVAL U21
      834 NEWCLOSURE                       R147 P119
      835 CAPTURE                          UPVAL U31
      836 CAPTURE                          UPVAL U32
      837 CAPTURE                          REF R29
      838 CAPTURE                          UPVAL U42
      839 NEWCLOSURE                       R148 P120
      840 CAPTURE                          UPVAL U31
      841 CAPTURE                          REF R29
      842 CAPTURE                          UPVAL U30
      843 CAPTURE                          UPVAL U20
      844 CAPTURE                          UPVAL U21
      845 CAPTURE                          UPVAL U27
      846 CAPTURE                          UPVAL U26
      847 NEWCLOSURE                       R149 P121
      848 CAPTURE                          UPVAL U31
      849 CAPTURE                          REF R29
      850 CAPTURE                          UPVAL U30
      851 CAPTURE                          UPVAL U20
      852 CAPTURE                          UPVAL U21
      853 CAPTURE                          UPVAL U27
      854 CAPTURE                          UPVAL U26
      855 NEWCLOSURE                       R150 P122
      856 CAPTURE                          UPVAL U31
      857 CAPTURE                          REF R29
      858 CAPTURE                          UPVAL U30
      859 CAPTURE                          UPVAL U20
      860 CAPTURE                          UPVAL U21
      861 CAPTURE                          UPVAL U27
      862 CAPTURE                          UPVAL U26
      863 NEWCLOSURE                       R151 P123
      864 CAPTURE                          UPVAL U31
      865 CAPTURE                          REF R29
      866 CAPTURE                          UPVAL U30
      867 CAPTURE                          UPVAL U20
      868 CAPTURE                          UPVAL U21
      869 CAPTURE                          UPVAL U27
      870 CAPTURE                          UPVAL U26
      871 NEWCLOSURE                       R152 P124
      872 CAPTURE                          UPVAL U31
      873 CAPTURE                          REF R29
      874 CAPTURE                          UPVAL U30
      875 NEWCLOSURE                       R153 P125
      876 CAPTURE                          UPVAL U31
      877 CAPTURE                          REF R29
      878 CAPTURE                          UPVAL U30
      879 CAPTURE                          UPVAL U20
      880 CAPTURE                          UPVAL U21
      881 CAPTURE                          UPVAL U27
      882 CAPTURE                          UPVAL U26
      883 NEWCLOSURE                       R154 P126
      884 CAPTURE                          UPVAL U27
      885 CAPTURE                          VAL R11
      886 CAPTURE                          UPVAL U20
      887 CAPTURE                          UPVAL U21
      888 NEWCLOSURE                       R155 P127
      889 CAPTURE                          UPVAL U27
      890 CAPTURE                          VAL R11
      891 CAPTURE                          UPVAL U20
      892 CAPTURE                          UPVAL U21
      893 NEWCLOSURE                       R156 P128
      894 CAPTURE                          UPVAL U27
      895 CAPTURE                          VAL R11
      896 CAPTURE                          UPVAL U20
      897 CAPTURE                          UPVAL U21
      898 NEWCLOSURE                       R157 P129
      899 CAPTURE                          UPVAL U27
      900 CAPTURE                          VAL R11
      901 CAPTURE                          UPVAL U20
      902 CAPTURE                          UPVAL U21
      903 NEWCLOSURE                       R158 P130
      904 CAPTURE                          UPVAL U27
      905 CAPTURE                          VAL R11
      906 CAPTURE                          UPVAL U20
      907 CAPTURE                          UPVAL U21
      908 NEWCLOSURE                       R159 P131
      909 CAPTURE                          UPVAL U29
      910 CAPTURE                          REF R23
      911 DUPCLOSURE                       R160 K56 [PROTO_168]
      912 CAPTURE                          UPVAL U30
      913 CAPTURE                          UPVAL U27
      914 CAPTURE                          UPVAL U26
      915 CAPTURE                          UPVAL U20
      916 CAPTURE                          UPVAL U21
      917 NEWCLOSURE                       R161 P133
      918 CAPTURE                          UPVAL U31
      919 CAPTURE                          REF R29
      920 CAPTURE                          UPVAL U30
      921 NEWCLOSURE                       R162 P134
      922 CAPTURE                          UPVAL U31
      923 CAPTURE                          REF R29
      924 CAPTURE                          UPVAL U30
      925 NEWCLOSURE                       R163 P135
      926 CAPTURE                          UPVAL U27
      927 CAPTURE                          VAL R15
      928 DUPCLOSURE                       R164 K57 [PROTO_173]
      929 CAPTURE                          UPVAL U30
      930 CAPTURE                          UPVAL U32
      931 CAPTURE                          UPVAL U31
      932 CAPTURE                          UPVAL U27
      933 CAPTURE                          UPVAL U26
      934 CAPTURE                          UPVAL U20
      935 CAPTURE                          UPVAL U21
      936 DUPCLOSURE                       R165 K58 [PROTO_174]
      937 NEWCLOSURE                       R166 P138
      938 CAPTURE                          UPVAL U31
      939 CAPTURE                          REF R29
      940 CAPTURE                          UPVAL U30
      941 MOVE                             R167 R30
      942 GETUPVAL                         R168 10
      943 LOADK                            R169 K59 ["Frame"]
      944 DUPTABLE                         R170 K61 [{"Size"}]
      945 GETIMPORT                        R171 K64 [UDim2.fromScale]
      947 LOADN                            R172 1
      948 LOADN                            R173 1
      949 CALL                             R171 2 1
      950 SETTABLEKS                       R171 R170 K60 ["Size"]
      952 DUPTABLE                         R171 K67 [{"UIListLayout", "MainView"}]
      953 GETUPVAL                         R172 10
      954 LOADK                            R173 K65 ["UIListLayout"]
      955 DUPTABLE                         R174 K69 [{"FillDirection"}]
      956 GETIMPORT                        R175 K72 [Enum.FillDirection.Vertical]
      958 SETTABLEKS                       R175 R174 K68 ["FillDirection"]
      960 CALL                             R172 2 1
      961 SETTABLEKS                       R172 R171 K65 ["UIListLayout"]
      963 GETUPVAL                         R172 10
      964 GETUPVAL                         R173 43
      965 CALL                             R172 1 1
      966 SETTABLEKS                       R172 R171 K66 ["MainView"]
      968 CALL                             R168 3 -1
      969 CALL                             R167 -1 0
      970 NEWTABLE                         R167 256 0
      972 SETTABLEKS                       R30 R167 K73 ["render"]
      974 SETTABLEKS                       R24 R167 K25 ["tools"]
      976 SETTABLEKS                       R34 R167 K74 ["invokeTool"]
      978 SETTABLEKS                       R35 R167 K75 ["callTool"]
      980 SETTABLEKS                       R31 R167 K76 ["typeText"]
      982 SETTABLEKS                       R32 R167 K77 ["getCurrentConversationThread"]
      984 SETTABLEKS                       R36 R167 K78 ["getContainer"]
      986 SETTABLEKS                       R37 R167 K79 ["getGuiByTitle"]
      988 SETTABLEKS                       R28 R167 K80 ["waitForTagApplication"]
      990 SETTABLEKS                       R38 R167 K81 ["queryByTestId"]
      992 SETTABLEKS                       R39 R167 K82 ["getByTestId"]
      994 SETTABLEKS                       R40 R167 K83 ["queryAllByTestId"]
      996 SETTABLEKS                       R41 R167 K84 ["getAllByTestId"]
      998 SETTABLEKS                       R42 R167 K85 ["getByMessage"]
     1000 SETTABLEKS                       R43 R167 K86 ["clickButton"]
     1002 SETTABLEKS                       R44 R167 K87 ["mouseEnter"]
     1004 SETTABLEKS                       R45 R167 K88 ["mouseLeave"]
     1006 SETTABLEKS                       R47 R167 K89 ["getTextBox"]
     1008 SETTABLEKS                       R48 R167 K90 ["getMessageScrollArea"]
     1010 SETTABLEKS                       R49 R167 K91 ["getContainingMessageWidget"]
     1012 SETTABLEKS                       R50 R167 K92 ["getContainingContentWidget"]
     1014 SETTABLEKS                       R51 R167 K93 ["getMessageActionsWidget"]
     1016 SETTABLEKS                       R53 R167 K94 ["getTextObjectWithMessage"]
     1018 SETTABLEKS                       R26 R167 K95 ["getClipboardTextAtIndex"]
     1020 SETTABLEKS                       R33 R167 K96 ["getToolResults"]
     1022 SETTABLEKS                       R64 R167 K97 ["typeInTextBox"]
     1024 SETTABLEKS                       R63 R167 K98 ["enterInTextBox"]
     1026 SETTABLEKS                       R57 R167 K99 ["focusTextBox"]
     1028 SETTABLEKS                       R58 R167 K100 ["setInputText"]
     1030 SETTABLEKS                       R59 R167 K101 ["setCursorPosition"]
     1032 SETTABLEKS                       R60 R167 K102 ["getInputScrollArea"]
     1034 SETTABLEKS                       R61 R167 K103 ["printScreen"]
     1036 SETTABLEKS                       R62 R167 K104 ["clickStopGenerationButton"]
     1038 SETTABLEKS                       R65 R167 K105 ["enterTextBox"]
     1040 SETTABLEKS                       R66 R167 K106 ["enterUserMessage"]
     1042 SETTABLEKS                       R67 R167 K107 ["pressKeyInInput"]
     1044 SETTABLEKS                       R68 R167 K108 ["setKeyDown"]
     1046 SETTABLEKS                       R69 R167 K109 ["isInputEnabled"]
     1048 SETTABLEKS                       R70 R167 K110 ["waitForInputState"]
     1050 SETTABLEKS                       R71 R167 K111 ["lastUserTextMatches"]
     1052 SETTABLEKS                       R72 R167 K112 ["getMessageCount"]
     1054 SETTABLEKS                       R73 R167 K113 ["isResponding"]
     1056 SETTABLEKS                       R121 R167 K114 ["setExternalInputOverride"]
     1058 SETTABLEKS                       R122 R167 K115 ["clearExternalInputOverride"]
     1060 SETTABLEKS                       R110 R167 K116 ["clickSettingsButton"]
     1062 SETTABLEKS                       R111 R167 K117 ["getSettingsContent"]
     1064 SETTABLEKS                       R123 R167 K118 ["getProviderCheckbox"]
     1066 SETTABLEKS                       R124 R167 K119 ["clickProviderCheckbox"]
     1068 SETTABLEKS                       R125 R167 K120 ["isProviderCheckboxChecked"]
     1070 SETTABLEKS                       R126 R167 K121 ["getModelPickerDropdown"]
     1072 SETTABLEKS                       R127 R167 K122 ["getSelectedModelFromPicker"]
     1074 SETTABLEKS                       R128 R167 K123 ["selectModelFromPicker"]
     1076 SETTABLEKS                       R137 R167 K124 ["clickEditAPIKeyButton"]
     1078 SETTABLEKS                       R138 R167 K125 ["clickSaveAPIKeyButton"]
     1080 SETTABLEKS                       R139 R167 K126 ["clickCancelAPIKeyButton"]
     1082 SETTABLEKS                       R140 R167 K127 ["getAPIKeyInputText"]
     1084 SETTABLEKS                       R141 R167 K128 ["setAPIKeyInputText"]
     1086 SETTABLEKS                       R142 R167 K129 ["getDisplayedAPIKey"]
     1088 SETTABLEKS                       R143 R167 K130 ["getAPIKeySetting"]
     1090 SETTABLEKS                       R130 R167 K131 ["hasFooterText"]
     1092 SETTABLEKS                       R131 R167 K132 ["hasFooterIcon"]
     1094 SETTABLEKS                       R132 R167 K133 ["getToolMenuView"]
     1096 SETTABLEKS                       R133 R167 K134 ["clickServerManagementButton"]
     1098 SETTABLEKS                       R134 R167 K135 ["getManageIntegrationsDialog"]
     1100 SETTABLEKS                       R135 R167 K136 ["getIntegrationItemDialog"]
     1102 SETTABLEKS                       R136 R167 K137 ["getIntegrationMenuEmptyState"]
     1104 SETTABLEKS                       R145 R167 K138 ["getIntegrationItemForLabel"]
     1106 SETTABLEKS                       R144 R167 K139 ["clickIntegrationItemActionsToggle"]
     1108 SETTABLEKS                       R146 R167 K140 ["clickIntegrationItemActionsOverflowButton"]
     1110 SETTABLEKS                       R147 R167 K141 ["getIntegrationItemActionsOverflowContent"]
     1112 SETTABLEKS                       R89 R167 K142 ["throwMarkdownParserError"]
     1114 SETTABLEKS                       R90 R167 K143 ["getCarousel"]
     1116 SETTABLEKS                       R91 R167 K144 ["getCarouselItem"]
     1118 SETTABLEKS                       R93 R167 K145 ["getSelectedCarouselItem"]
     1120 SETTABLEKS                       R94 R167 K146 ["clickCarouselItem"]
     1122 SETTABLEKS                       R148 R167 K147 ["clickAlertCloseButton"]
     1124 SETTABLEKS                       R149 R167 K148 ["clickAlertContinueButton"]
     1126 SETTABLEKS                       R150 R167 K149 ["clickToolConfirmationAcceptButton"]
     1128 SETTABLEKS                       R151 R167 K150 ["clickToolConfirmationRejectButton"]
     1130 SETTABLEKS                       R152 R167 K151 ["getToolConfirmationAlwaysAcceptText"]
     1132 SETTABLEKS                       R153 R167 K152 ["clickToolConfirmationAlwaysAcceptButton"]
     1134 SETTABLEKS                       R75 R167 K153 ["clickRunCodeExpandButton"]
     1136 SETTABLEKS                       R95 R167 K154 ["clickCopyButton"]
     1138 SETTABLEKS                       R96 R167 K155 ["clickRunButton"]
     1140 SETTABLEKS                       R97 R167 K156 ["clickStopButton"]
     1142 SETTABLEKS                       R98 R167 K157 ["clickImageExpandButton"]
     1144 SETTABLEKS                       R99 R167 K158 ["getImageContentImage"]
     1146 SETTABLEKS                       R76 R167 K159 ["clickAssetVariationExpandButton"]
     1148 SETTABLEKS                       R77 R167 K160 ["clickMaterialGenExpandButton"]
     1150 SETTABLEKS                       R78 R167 K161 ["clickMaterialGenStudsPerTileValueBar"]
     1152 SETTABLEKS                       R79 R167 K162 ["clickMaterialGenOrganicPatternToggle"]
     1154 SETTABLEKS                       R80 R167 K163 ["clickMeshGenExpandButton"]
     1156 SETTABLEKS                       R81 R167 K164 ["clickMeshGenRegenerateButton"]
     1158 SETTABLEKS                       R82 R167 K165 ["clickMeshGenCancelGenerationButton"]
     1160 SETTABLEKS                       R83 R167 K166 ["clickMeshGenPublishButton"]
     1162 SETTABLEKS                       R84 R167 K167 ["clickMeshGenInsertButton"]
     1164 SETTABLEKS                       R85 R167 K168 ["getMeshGenPreviewImage"]
     1166 SETTABLEKS                       R86 R167 K169 ["clickMeshGenLastPreviewButton"]
     1168 SETTABLEKS                       R87 R167 K170 ["clickMeshGenNextPreviewButton"]
     1170 SETTABLEKS                       R88 R167 K171 ["clickMeshGenSelectionToggle"]
     1172 SETTABLEKS                       R100 R167 K172 ["clickRetryButton"]
     1174 SETTABLEKS                       R101 R167 K173 ["clickThumbsUpButton"]
     1176 SETTABLEKS                       R102 R167 K174 ["clickThumbsDownButton"]
     1178 SETTABLEKS                       R103 R167 K175 ["clickBranchButton"]
     1180 SETTABLEKS                       R104 R167 K176 ["getThumbsUpButtonIcon"]
     1182 SETTABLEKS                       R105 R167 K177 ["getThumbsDownButtonIcon"]
     1184 SETTABLEKS                       R106 R167 K178 ["getConversation"]
     1186 SETTABLEKS                       R107 R167 K179 ["addConversation"]
     1188 SETTABLEKS                       R108 R167 K180 ["setThreadId"]
     1190 SETTABLEKS                       R109 R167 K181 ["applyConversation"]
     1192 SETTABLEKS                       R112 R167 K182 ["clearConversation"]
     1194 SETTABLEKS                       R113 R167 K183 ["wasToolInvoked"]
     1196 SETTABLEKS                       R114 R167 K184 ["overrideMethodWithError"]
     1198 SETTABLEKS                       R119 R167 K185 ["wasRequestHandlerCalled"]
     1200 SETTABLEKS                       R120 R167 K186 ["getLastRequestField"]
     1202 SETTABLEKS                       R115 R167 K187 ["getMultiplexedClient"]
     1204 SETTABLEKS                       R116 R167 K188 ["getClientStatusForIdentifier"]
     1206 SETTABLEKS                       R117 R167 K189 ["closeAllClients"]
     1208 SETTABLEKS                       R118 R167 K190 ["getToolAlias"]
     1210 SETTABLEKS                       R154 R167 K191 ["streamEvent"]
     1212 SETTABLEKS                       R155 R167 K192 ["addToolCall"]
     1214 SETTABLEKS                       R156 R167 K193 ["streamText"]
     1216 SETTABLEKS                       R157 R167 K194 ["startMessage"]
     1218 SETTABLEKS                       R158 R167 K195 ["sendMessageDeltaAndStop"]
     1220 SETTABLEKS                       R159 R167 K196 ["mockEventLoggerCall"]
     1222 SETTABLEKS                       R160 R167 K197 ["clickTextWithin"]
     1224 SETTABLEKS                       R54 R167 K198 ["getModelQualityWarning"]
     1226 SETTABLEKS                       R56 R167 K199 ["setModelQuality"]
     1228 SETTABLEKS                       R55 R167 K200 ["getGenerationIndicator"]
     1230 SETTABLEKS                       R161 R167 K201 ["getSlashCommandMenu"]
     1232 SETTABLEKS                       R162 R167 K202 ["getSlashCommandItems"]
     1234 SETTABLEKS                       R163 R167 K203 ["setOptions"]
     1236 SETTABLEKS                       R164 R167 K204 ["clickOptionWithDisplayName"]
     1238 SETTABLEKS                       R166 R167 K205 ["getSelectedThreadButton"]
     1240 GETTABLEKS                       R168 R19 K206 ["setState"]
     1242 SETTABLEKS                       R168 R167 K207 ["setExternalServerState"]
     1244 GETTABLEKS                       R168 R19 K208 ["getState"]
     1246 SETTABLEKS                       R168 R167 K209 ["getExternalServerState"]
     1248 GETTABLEKS                       R168 R19 K210 ["getStartCallCount"]
     1250 SETTABLEKS                       R168 R167 K211 ["getExternalServerStartCallCount"]
     1252 GETTABLEKS                       R168 R19 K212 ["getStopCallCount"]
     1254 SETTABLEKS                       R168 R167 K213 ["getExternalServerStopCallCount"]
     1256 CLOSEUPVALS                      R0
     1257 RETURN                           R167 1

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
       15 LOADK                            R4 K8 ["RunService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K5 [game]
       21 LOADK                            R5 K9 ["Selection"]
       22 NAMECALL                         R3 R3 K7 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K5 [game]
       27 LOADK                            R6 K10 ["StylingService"]
       28 NAMECALL                         R4 R4 K7 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R7 R0 K13 ["Util"]
       35 GETTABLEKS                       R6 R7 K14 ["ContentWidgetRegistry"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K12 [require]
       40 GETTABLEKS                       R8 R0 K15 ["Parent"]
       42 GETTABLEKS                       R7 R8 K16 ["DMNetworking"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K12 [require]
       47 GETTABLEKS                       R9 R0 K15 ["Parent"]
       49 GETTABLEKS                       R8 R9 K17 ["Dash"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K12 [require]
       54 GETTABLEKS                       R11 R0 K18 ["Guest"]
       56 GETTABLEKS                       R10 R11 K19 ["Environment"]
       58 GETTABLEKS                       R9 R10 K20 ["EventLogger"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K12 [require]
       63 GETTABLEKS                       R11 R0 K18 ["Guest"]
       65 GETTABLEKS                       R10 R11 K19 ["Environment"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K12 [require]
       70 GETTABLEKS                       R12 R0 K21 ["Hooks"]
       72 GETTABLEKS                       R11 R12 K22 ["ExternalHooks"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K12 [require]
       77 GETTABLEKS                       R14 R0 K23 ["Components"]
       79 GETTABLEKS                       R13 R14 K24 ["Contexts"]
       81 GETTABLEKS                       R12 R13 K25 ["ExternalServerContext"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K12 [require]
       86 GETTABLEKS                       R14 R0 K15 ["Parent"]
       88 GETTABLEKS                       R13 R14 K26 ["Foundation"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K12 [require]
       93 GETTABLEKS                       R15 R0 K15 ["Parent"]
       95 GETTABLEKS                       R14 R15 K27 ["Framework"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K12 [require]
      100 GETTABLEKS                       R17 R0 K23 ["Components"]
      102 GETTABLEKS                       R16 R17 K24 ["Contexts"]
      104 GETTABLEKS                       R15 R16 K28 ["InputStateContext"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K12 [require]
      109 GETTABLEKS                       R17 R0 K18 ["Guest"]
      111 GETTABLEKS                       R16 R17 K29 ["JsonEnvironment"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K12 [require]
      116 GETTABLEKS                       R19 R0 K23 ["Components"]
      118 GETTABLEKS                       R18 R19 K24 ["Contexts"]
      120 GETTABLEKS                       R17 R18 K30 ["LLMProviderSelectionContext"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K12 [require]
      125 GETTABLEKS                       R19 R0 K23 ["Components"]
      127 GETTABLEKS                       R18 R19 K31 ["MainView"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K12 [require]
      132 GETTABLEKS                       R20 R0 K13 ["Util"]
      134 GETTABLEKS                       R19 R20 K32 ["MessageLayoutOrder"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K12 [require]
      139 GETTABLEKS                       R21 R0 K15 ["Parent"]
      141 GETTABLEKS                       R20 R21 K33 ["ModelContextProtocol"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K12 [require]
      146 GETTABLEKS                       R23 R0 K23 ["Components"]
      148 GETTABLEKS                       R22 R23 K24 ["Contexts"]
      150 GETTABLEKS                       R21 R22 K34 ["ModelQualityContext"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K12 [require]
      155 GETTABLEKS                       R24 R0 K23 ["Components"]
      157 GETTABLEKS                       R23 R24 K24 ["Contexts"]
      159 GETTABLEKS                       R22 R23 K35 ["OptionsContext"]
      161 CALL                             R21 1 1
      162 GETIMPORT                        R22 K12 [require]
      164 GETTABLEKS                       R25 R0 K23 ["Components"]
      166 GETTABLEKS                       R24 R25 K36 ["APIKeyManagement"]
      168 GETTABLEKS                       R23 R24 K37 ["ProviderModels"]
      170 CALL                             R22 1 1
      171 GETIMPORT                        R23 K12 [require]
      173 GETTABLEKS                       R25 R0 K15 ["Parent"]
      175 GETTABLEKS                       R24 R25 K38 ["React"]
      177 CALL                             R23 1 1
      178 GETIMPORT                        R24 K12 [require]
      180 GETTABLEKS                       R26 R0 K15 ["Parent"]
      182 GETTABLEKS                       R25 R26 K39 ["ReactUtils"]
      184 CALL                             R24 1 1
      185 GETIMPORT                        R25 K12 [require]
      187 GETTABLEKS                       R28 R0 K13 ["Util"]
      189 GETTABLEKS                       R27 R28 K40 ["Serializer"]
      191 GETTABLEKS                       R26 R27 K41 ["SerializerRegistry"]
      193 CALL                             R25 1 1
      194 GETIMPORT                        R26 K12 [require]
      196 GETTABLEKS                       R29 R0 K23 ["Components"]
      198 GETTABLEKS                       R28 R29 K24 ["Contexts"]
      200 GETTABLEKS                       R27 R28 K42 ["SessionIdContext"]
      202 CALL                             R26 1 1
      203 GETIMPORT                        R27 K12 [require]
      205 GETTABLEKS                       R30 R0 K43 ["tests"]
      207 GETTABLEKS                       R29 R30 K44 ["TestUtils"]
      209 GETTABLEKS                       R28 R29 K45 ["TagSearch"]
      211 CALL                             R27 1 1
      212 GETIMPORT                        R28 K12 [require]
      214 GETTABLEKS                       R30 R0 K13 ["Util"]
      216 GETTABLEKS                       R29 R30 K46 ["TestIds"]
      218 CALL                             R28 1 1
      219 GETIMPORT                        R29 K12 [require]
      221 GETTABLEKS                       R32 R0 K43 ["tests"]
      223 GETTABLEKS                       R31 R32 K44 ["TestUtils"]
      225 GETTABLEKS                       R30 R31 K47 ["ToolTestUtils"]
      227 CALL                             R29 1 1
      228 GETIMPORT                        R30 K12 [require]
      230 GETTABLEKS                       R32 R0 K48 ["Tools"]
      232 GETTABLEKS                       R31 R32 K49 ["ToolTypes"]
      234 CALL                             R30 1 1
      235 GETIMPORT                        R31 K12 [require]
      237 GETTABLEKS                       R34 R0 K50 ["Resources"]
      239 GETTABLEKS                       R33 R34 K51 ["Localization"]
      241 GETTABLEKS                       R32 R33 K52 ["Translator"]
      243 CALL                             R31 1 1
      244 GETIMPORT                        R32 K12 [require]
      246 GETTABLEKS                       R33 R0 K53 ["Types"]
      248 CALL                             R32 1 1
      249 GETIMPORT                        R33 K12 [require]
      251 GETTABLEKS                       R35 R0 K23 ["Components"]
      253 GETTABLEKS                       R34 R35 K54 ["UIToolRegistry"]
      255 CALL                             R33 1 1
      256 GETIMPORT                        R34 K12 [require]
      258 GETTABLEKS                       R37 R0 K23 ["Components"]
      260 GETTABLEKS                       R36 R37 K24 ["Contexts"]
      262 GETTABLEKS                       R35 R36 K55 ["WindowInputContext"]
      264 CALL                             R34 1 1
      265 GETIMPORT                        R35 K12 [require]
      267 GETTABLEKS                       R39 R0 K43 ["tests"]
      269 GETTABLEKS                       R38 R39 K44 ["TestUtils"]
      271 GETTABLEKS                       R37 R38 K56 ["setup"]
      273 GETTABLEKS                       R36 R37 K57 ["createMockConversationContext"]
      275 CALL                             R35 1 1
      276 GETIMPORT                        R36 K12 [require]
      278 GETTABLEKS                       R40 R0 K43 ["tests"]
      280 GETTABLEKS                       R39 R40 K44 ["TestUtils"]
      282 GETTABLEKS                       R38 R39 K56 ["setup"]
      284 GETTABLEKS                       R37 R38 K58 ["createMockExternalServerContext"]
      286 CALL                             R36 1 1
      287 GETIMPORT                        R37 K12 [require]
      289 GETTABLEKS                       R41 R0 K43 ["tests"]
      291 GETTABLEKS                       R40 R41 K44 ["TestUtils"]
      293 GETTABLEKS                       R39 R40 K56 ["setup"]
      295 GETTABLEKS                       R38 R39 K59 ["createMockInputStateContext"]
      297 CALL                             R37 1 1
      298 GETIMPORT                        R38 K12 [require]
      300 GETTABLEKS                       R42 R0 K43 ["tests"]
      302 GETTABLEKS                       R41 R42 K44 ["TestUtils"]
      304 GETTABLEKS                       R40 R41 K56 ["setup"]
      306 GETTABLEKS                       R39 R40 K60 ["createMockLLMPackageContext"]
      308 CALL                             R38 1 1
      309 GETIMPORT                        R39 K12 [require]
      311 GETTABLEKS                       R43 R0 K43 ["tests"]
      313 GETTABLEKS                       R42 R43 K44 ["TestUtils"]
      315 GETTABLEKS                       R41 R42 K56 ["setup"]
      317 GETTABLEKS                       R40 R41 K61 ["createMockMcpClientContext"]
      319 CALL                             R39 1 1
      320 GETIMPORT                        R40 K12 [require]
      322 GETTABLEKS                       R44 R0 K43 ["tests"]
      324 GETTABLEKS                       R43 R44 K44 ["TestUtils"]
      326 GETTABLEKS                       R42 R43 K56 ["setup"]
      328 GETTABLEKS                       R41 R42 K62 ["createMockModelQualityContext"]
      330 CALL                             R40 1 1
      331 GETIMPORT                        R41 K12 [require]
      333 GETTABLEKS                       R45 R0 K43 ["tests"]
      335 GETTABLEKS                       R44 R45 K44 ["TestUtils"]
      337 GETTABLEKS                       R43 R44 K56 ["setup"]
      339 GETTABLEKS                       R42 R43 K63 ["createMockOptionsContext"]
      341 CALL                             R41 1 1
      342 GETIMPORT                        R42 K12 [require]
      344 GETTABLEKS                       R46 R0 K43 ["tests"]
      346 GETTABLEKS                       R45 R46 K44 ["TestUtils"]
      348 GETTABLEKS                       R44 R45 K56 ["setup"]
      350 GETTABLEKS                       R43 R44 K64 ["createMockPopoutWidgetContext"]
      352 CALL                             R42 1 1
      353 GETIMPORT                        R43 K12 [require]
      355 GETTABLEKS                       R47 R0 K43 ["tests"]
      357 GETTABLEKS                       R46 R47 K44 ["TestUtils"]
      359 GETTABLEKS                       R45 R46 K56 ["setup"]
      361 GETTABLEKS                       R44 R45 K65 ["createMockSettingsContext"]
      363 CALL                             R43 1 1
      364 GETIMPORT                        R44 K12 [require]
      366 GETTABLEKS                       R48 R0 K43 ["tests"]
      368 GETTABLEKS                       R47 R48 K44 ["TestUtils"]
      370 GETTABLEKS                       R46 R47 K56 ["setup"]
      372 GETTABLEKS                       R45 R46 K66 ["createMockThreadIdContext"]
      374 CALL                             R44 1 1
      375 GETIMPORT                        R45 K12 [require]
      377 GETTABLEKS                       R48 R0 K43 ["tests"]
      379 GETTABLEKS                       R47 R48 K44 ["TestUtils"]
      381 GETTABLEKS                       R46 R47 K67 ["isVisibleGuiObject"]
      383 CALL                             R45 1 1
      384 LOADK                            R49 K68 ["Packages"]
      385 NAMECALL                         R47 R0 K3 ["FindFirstAncestor"]
      387 CALL                             R47 2 1
      388 GETTABLEKS                       R46 R47 K69 ["Dev"]
      390 GETIMPORT                        R47 K12 [require]
      392 GETTABLEKS                       R48 R46 K70 ["FoundationTestingLibrary"]
      394 CALL                             R47 1 1
      395 GETIMPORT                        R48 K12 [require]
      397 GETTABLEKS                       R49 R46 K71 ["JestGlobals"]
      399 CALL                             R48 1 1
      400 GETIMPORT                        R49 K12 [require]
      402 GETTABLEKS                       R50 R46 K72 ["ReactTestingLibrary"]
      404 CALL                             R49 1 1
      405 GETIMPORT                        R50 K12 [require]
      407 GETTABLEKS                       R52 R0 K73 ["Flags"]
      409 GETTABLEKS                       R51 R52 K74 ["FFlagAssistantMultipleChatPersistence"]
      411 CALL                             R50 1 1
      412 GETTABLEKS                       R51 R23 K75 ["createElement"]
      414 GETTABLEKS                       R52 R48 K76 ["afterEach"]
      416 GETTABLEKS                       R53 R48 K77 ["expect"]
      418 GETTABLEKS                       R54 R48 K78 ["jest"]
      420 GETTABLEKS                       R55 R49 K79 ["act"]
      422 GETTABLEKS                       R56 R49 K80 ["fireEvent"]
      424 GETTABLEKS                       R57 R49 K81 ["waitFor"]
      426 GETTABLEKS                       R58 R49 K82 ["within"]
      428 DUPCLOSURE                       R59 K83 [PROTO_7]
      429 CAPTURE                          VAL R9
      430 CAPTURE                          VAL R6
      431 CAPTURE                          VAL R8
      432 CAPTURE                          VAL R3
      433 CAPTURE                          VAL R32
      434 CAPTURE                          VAL R15
      435 MOVE                             R60 R52
      436 DUPCLOSURE                       R61 K84 [PROTO_8]
      437 CAPTURE                          VAL R5
      438 CAPTURE                          VAL R25
      439 CALL                             R60 1 0
      440 DUPCLOSURE                       R60 K85 [PROTO_177]
      441 CAPTURE                          VAL R43
      442 CAPTURE                          VAL R35
      443 CAPTURE                          VAL R37
      444 CAPTURE                          VAL R44
      445 CAPTURE                          VAL R39
      446 CAPTURE                          VAL R38
      447 CAPTURE                          VAL R40
      448 CAPTURE                          VAL R41
      449 CAPTURE                          VAL R42
      450 CAPTURE                          VAL R36
      451 CAPTURE                          VAL R51
      452 CAPTURE                          VAL R26
      453 CAPTURE                          VAL R1
      454 CAPTURE                          VAL R34
      455 CAPTURE                          VAL R16
      456 CAPTURE                          VAL R7
      457 CAPTURE                          VAL R59
      458 CAPTURE                          VAL R29
      459 CAPTURE                          VAL R9
      460 CAPTURE                          VAL R5
      461 CAPTURE                          VAL R4
      462 CAPTURE                          VAL R2
      463 CAPTURE                          VAL R49
      464 CAPTURE                          VAL R13
      465 CAPTURE                          VAL R47
      466 CAPTURE                          VAL R24
      467 CAPTURE                          VAL R56
      468 CAPTURE                          VAL R55
      469 CAPTURE                          VAL R10
      470 CAPTURE                          VAL R54
      471 CAPTURE                          VAL R58
      472 CAPTURE                          VAL R28
      473 CAPTURE                          VAL R27
      474 CAPTURE                          VAL R50
      475 CAPTURE                          VAL R57
      476 CAPTURE                          VAL R53
      477 CAPTURE                          VAL R12
      478 CAPTURE                          VAL R18
      479 CAPTURE                          VAL R31
      480 CAPTURE                          VAL R14
      481 CAPTURE                          VAL R32
      482 CAPTURE                          VAL R22
      483 CAPTURE                          VAL R45
      484 CAPTURE                          VAL R17
      485 RETURN                           R60 1
