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
        0 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["new"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["Implementations"]
       10 GETTABLEKS                       R3 R3 K2 ["CallbackNetworking"]
       12 GETTABLEKS                       R3 R3 K0 ["new"]
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
       52 DUPCLOSURE                       R3 K19 [PROTO_5]
       53 SETTABLEKS                       R3 R1 K20 ["releaseTempIdAsync"]
       55 NEWTABLE                         R3 1 0
       57 GETUPVAL                         R4 4
       58 GETTABLEKS                       R4 R4 K21 ["CLAUDE_API_KEY"]
       60 LOADK                            R5 K22 ["initial-test-api-key"]
       61 SETTABLE                         R5 R3 R4
       62 NEWCLOSURE                       R4 P6
       63 CAPTURE                          REF R3
       64 SETTABLEKS                       R4 R1 K23 ["getSecureSettingsAsync"]
       66 NEWCLOSURE                       R4 P7
       67 CAPTURE                          REF R3
       68 SETTABLEKS                       R4 R1 K24 ["setSecureSettingsAsync"]
       70 GETUPVAL                         R4 5
       71 GETTABLEKS                       R4 R4 K25 ["setup"]
       73 MOVE                             R5 R1
       74 CALL                             R4 1 0
       75 CLOSEUPVALS                      R3
       76 RETURN                           R1 1

PROTO_9:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["spyOn"]
        3 GETUPVAL                         R1 2
        4 LOADK                            R2 K1 ["_batchTagUpdates"]
        5 CALL                             R0 2 1
        6 GETTABLEKS                       R0 R0 K2 ["mockImplementation"]
        8 DUPCLOSURE                       R1 K3 [PROTO_9]
        9 CALL                             R0 1 1
       10 SETUPVAL                         R0 0
       11 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["mockRestore"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clear"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["clear"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 JUMPIFNOTLT                      R1 R0 ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLE                         R1 R2 R0
        8 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["Stepped"]
        7 NAMECALL                         R0 R0 K2 ["Wait"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K1 ["Stepped"]
       13 NAMECALL                         R0 R0 K2 ["Wait"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["render"]
        3 DUPTABLE                         R2 K2 [{"MockDevFramework"}]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K3 ["TestHelpers"]
        7 GETTABLEKS                       R3 R3 K4 ["provideMockContext"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K4 ["provideMockContext"]
       12 DUPTABLE                         R5 K6 [{"MockFoundation"}]
       13 GETUPVAL                         R6 3
       14 GETTABLEKS                       R6 R6 K7 ["mockComponent"]
       16 DUPTABLE                         R7 K9 [{"ContextStack"}]
       17 GETUPVAL                         R8 4
       18 GETUPVAL                         R9 5
       19 GETTABLEKS                       R9 R9 K8 ["ContextStack"]
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
       42 GETUPVAL                         R2 8
       43 GETTABLEKS                       R2 R2 K15 ["Stepped"]
       45 NAMECALL                         R2 R2 K16 ["Wait"]
       47 CALL                             R2 1 0
       48 GETUPVAL                         R2 8
       49 GETTABLEKS                       R2 R2 K15 ["Stepped"]
       51 NAMECALL                         R2 R2 K16 ["Wait"]
       53 CALL                             R2 1 0
       54 GETTABLEKS                       R2 R1 K17 ["container"]
       56 LOADK                            R4 K18 ["ScreenGui"]
       57 NAMECALL                         R2 R2 K19 ["FindFirstAncestorWhichIsA"]
       59 CALL                             R2 2 1
       60 GETTABLEKS                       R2 R2 K20 ["Parent"]
       62 SETUPVAL                         R2 9
       63 RETURN                           R0 0

PROTO_16:
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
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K10 ["change"]
       24 MOVE                             R4 R2
       25 DUPTABLE                         R5 K12 [{"target"}]
       26 DUPTABLE                         R6 K14 [{"Text"}]
       27 SETTABLEKS                       R0 R6 K13 ["Text"]
       29 SETTABLEKS                       R6 R5 K11 ["target"]
       31 CALL                             R3 2 0
       32 RETURN                           R0 0

PROTO_17:
        0 SETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [coroutine.status]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K3 ["suspended"] ; [+5]
        7 GETIMPORT                        R1 K6 [task.spawn]
        9 GETUPVAL                         R2 1
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getThread"]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
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
       25 GETTABLEKS                       R14 R13 K5 ["toolResult"]
       27 GETTABLEKS                       R14 R14 K6 ["name"]
       29 JUMPIFNOTEQ                      R14 R0 ; [+9]
       31 GETTABLEKS                       R16 R13 K5 ["toolResult"]
       33 FASTCALL2                        TABLE_INSERT R1 R16 ; [+4]
       35 MOVE                             R15 R1
       36 GETIMPORT                        R14 K9 [table.insert]
       38 CALL                             R14 2 0
       39 FORGLOOP                         R9 2 ; [-18]
       41 FORGLOOP                         R4 2 ; [-25]
       43 RETURN                           R1 1

PROTO_21:
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
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K8 ["definition"]
       16 GETTABLEKS                       R2 R2 K8 ["definition"]
       18 GETTABLEKS                       R2 R2 K4 ["name"]
       20 SETTABLEKS                       R2 R1 K4 ["name"]
       22 GETUPVAL                         R2 2
       23 SETTABLEKS                       R2 R1 K5 ["input"]
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K9 ["get"]
       28 CALL                             R2 0 1
       29 GETTABLEKS                       R2 R2 K10 ["getContentObserver"]
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
       45 GETUPVAL                         R4 6
       46 GETTABLEKS                       R4 R4 K14 ["assign"]
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
       66 GETUPVAL                         R4 1
       67 GETTABLEKS                       R4 R4 K8 ["definition"]
       69 GETTABLEKS                       R4 R4 K19 ["handler"]
       71 GETUPVAL                         R5 2
       72 GETUPVAL                         R6 5
       73 GETUPVAL                         R7 7
       74 CALL                             R4 3 1
       75 DUPTABLE                         R5 K24 [{"type", "id", "name", "content", "isError", "startTime", "startTimeAfterConfirmation"}]
       76 LOADK                            R6 K25 ["tool_result"]
       77 SETTABLEKS                       R6 R5 K2 ["type"]
       79 SETTABLEKS                       R0 R5 K3 ["id"]
       81 GETUPVAL                         R6 1
       82 GETTABLEKS                       R6 R6 K8 ["definition"]
       84 GETTABLEKS                       R6 R6 K8 ["definition"]
       86 GETTABLEKS                       R6 R6 K4 ["name"]
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

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R0 R0 K1 ["getOrAddMessage"]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["ROLE"]
        9 GETTABLEKS                       R1 R1 K3 ["Assistant"]
       11 GETUPVAL                         R2 2
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_24:
        0 JUMPIF                           R3 ; [+26]
        1 DUPTABLE                         R4 K5 [{"signal", "sessionId", "sendNotification", "sendRequest", "sendProgress"}]
        2 LOADNIL                          R5
        3 SETTABLEKS                       R5 R4 K0 ["signal"]
        5 LOADK                            R5 K6 [""]
        6 SETTABLEKS                       R5 R4 K1 ["sessionId"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K7 ["fn"]
       11 CALL                             R5 0 1
       12 SETTABLEKS                       R5 R4 K2 ["sendNotification"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K7 ["fn"]
       17 CALL                             R5 0 1
       18 SETTABLEKS                       R5 R4 K3 ["sendRequest"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K7 ["fn"]
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
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          VAL R7
       55 CALL                             R8 1 0
       56 JUMPIFNOTEQKNIL                  R5 ; [+4]
       58 GETIMPORT                        R8 K15 [coroutine.yield]
       60 CALL                             R8 0 0
       61 LOADK                            R11 K16 ["Tool invocation failed: %*"]
       62 MOVE                             R13 R6
       63 NAMECALL                         R11 R11 K17 ["format"]
       65 CALL                             R11 2 1
       66 MOVE                             R10 R11
       67 FASTCALL2                        ASSERT R5 R10 ; [+4]
       69 MOVE                             R9 R5
       70 GETIMPORT                        R8 K10 [assert]
       72 CALL                             R8 2 0
       73 CLOSEUPVALS                      R2
       74 RETURN                           R6 1

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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
       22 GETUPVAL                         R2 1
       23 MOVE                             R3 R1
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R2 R2 K4 ["queryByTestId"]
       27 MOVE                             R3 R0
       28 CALL                             R2 1 1
       29 RETURN                           R2 1

PROTO_29:
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
       22 GETUPVAL                         R2 1
       23 MOVE                             R3 R1
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R2 R2 K4 ["getByTestId"]
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

PROTO_30:
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
       22 GETUPVAL                         R2 1
       23 MOVE                             R3 R1
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R2 R2 K4 ["queryAllByTestId"]
       27 MOVE                             R3 R0
       28 CALL                             R2 1 1
       29 RETURN                           R2 1

PROTO_31:
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
       22 GETUPVAL                         R2 1
       23 MOVE                             R3 R1
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R2 R2 K4 ["getAllByTestId"]
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

PROTO_32:
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
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K4 ["assign"]
       25 DUPTABLE                         R4 K6 [{"exact"}]
       26 LOADB                            R5 1
       27 SETTABLEKS                       R5 R4 K5 ["exact"]
       29 MOVE                             R5 R2
       30 JUMPIF                           R5 ; [+2]
       31 NEWTABLE                         R5 0 0
       33 CALL                             R3 2 1
       34 MOVE                             R2 R3
       35 GETUPVAL                         R3 2
       36 MOVE                             R4 R1
       37 CALL                             R3 1 1
       38 GETTABLEKS                       R3 R3 K7 ["queryByText"]
       40 MOVE                             R4 R0
       41 MOVE                             R5 R2
       42 CALL                             R3 2 1
       43 JUMPIF                           R3 ; [+8]
       44 GETUPVAL                         R3 2
       45 MOVE                             R4 R1
       46 CALL                             R3 1 1
       47 GETTABLEKS                       R3 R3 K8 ["queryByDisplayValue"]
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

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       12 NAMECALL                         R1 R1 K2 ["Wait"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       18 NAMECALL                         R1 R1 K2 ["Wait"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mouseEnter"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K1 ["UpdateUnitTestOnly"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["Stepped"]
       12 NAMECALL                         R1 R1 K3 ["Wait"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K2 ["Stepped"]
       18 NAMECALL                         R1 R1 K3 ["Wait"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mouseLeave"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K1 ["UpdateUnitTestOnly"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["Stepped"]
       12 NAMECALL                         R1 R1 K3 ["Wait"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K2 ["Stepped"]
       18 NAMECALL                         R1 R1 K3 ["Wait"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["act"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 NAMECALL                         R1 R1 K1 ["UpdateUnitTestOnly"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["Stepped"]
       12 NAMECALL                         R1 R1 K3 ["Wait"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R1 R1 K2 ["Stepped"]
       18 NAMECALL                         R1 R1 K3 ["Wait"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["Stepped"]
        7 NAMECALL                         R0 R0 K2 ["Wait"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K1 ["Stepped"]
       13 NAMECALL                         R0 R0 K2 ["Wait"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R1 R1 K3 ["InputArea"]
       19 GETTABLEKS                       R1 R1 K4 ["Container"]
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
       44 GETUPVAL                         R3 4
       45 MOVE                             R4 R2
       46 CALL                             R3 1 1
       47 GETTABLEKS                       R3 R3 K9 ["getByTestId"]
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

PROTO_39:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["Stepped"]
        7 NAMECALL                         R0 R0 K2 ["Wait"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 1
       11 GETTABLEKS                       R0 R0 K1 ["Stepped"]
       13 NAMECALL                         R0 R0 K2 ["Wait"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R1 0
       17 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       23 NAMECALL                         R1 R1 K2 ["Wait"]
       25 CALL                             R1 1 0
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       29 NAMECALL                         R1 R1 K2 ["Wait"]
       31 CALL                             R1 1 0
       32 GETUPVAL                         R1 2
       33 GETTABLEKS                       R1 R1 K3 ["InputArea"]
       35 GETTABLEKS                       R1 R1 K4 ["Container"]
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
       60 GETUPVAL                         R3 4
       61 MOVE                             R4 R2
       62 CALL                             R3 1 1
       63 GETTABLEKS                       R3 R3 K9 ["getByTestId"]
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

PROTO_40:
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
       14 GETTABLEKS                       R1 R1 K3 ["getByDisplayValue"]
       16 MOVE                             R2 R0
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 2
       19 GETTABLEKS                       R2 R2 K4 ["firstAncestorWithTag"]
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

PROTO_41:
        0 LOADNIL                          R2
        1 JUMPIFNOTEQKS                    R1 K0 ["user"] ; [+21]
        3 GETUPVAL                         R3 0
        4 GETUPVAL                         R7 1
        5 JUMPIFNOTEQKNIL                  R7 ; [+2]
        7 LOADB                            R6 0 +1
        8 LOADB                            R6 1
        9 FASTCALL2K                       ASSERT R6 K1 ; [+4]
       11 LOADK                            R7 K1 ["Container not mounted, ensure render is called"]
       12 GETIMPORT                        R5 K3 [assert]
       14 CALL                             R5 2 0
       15 GETUPVAL                         R4 1
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R3 R3 K4 ["getByDisplayValue"]
       19 MOVE                             R4 R0
       20 CALL                             R3 1 1
       21 MOVE                             R2 R3
       22 JUMP                             ; [+19]
       23 GETUPVAL                         R3 0
       24 GETUPVAL                         R7 1
       25 JUMPIFNOTEQKNIL                  R7 ; [+2]
       27 LOADB                            R6 0 +1
       28 LOADB                            R6 1
       29 FASTCALL2K                       ASSERT R6 K1 ; [+4]
       31 LOADK                            R7 K1 ["Container not mounted, ensure render is called"]
       32 GETIMPORT                        R5 K3 [assert]
       34 CALL                             R5 2 0
       35 GETUPVAL                         R4 1
       36 CALL                             R3 1 1
       37 GETTABLEKS                       R3 R3 K5 ["getByText"]
       39 MOVE                             R4 R0
       40 CALL                             R3 1 1
       41 MOVE                             R2 R3
       42 GETUPVAL                         R3 2
       43 GETTABLEKS                       R3 R3 K6 ["firstAncestorWithTag"]
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

PROTO_42:
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
       14 GETTABLEKS                       R2 R2 K3 ["getByText"]
       16 MOVE                             R3 R0
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K4 ["assign"]
       20 DUPTABLE                         R5 K6 [{"exact"}]
       21 LOADB                            R6 0
       22 SETTABLEKS                       R6 R5 K5 ["exact"]
       24 MOVE                             R6 R1
       25 JUMPIF                           R6 ; [+2]
       26 NEWTABLE                         R6 0 0
       28 CALL                             R4 2 -1
       29 CALL                             R2 -1 1
       30 GETUPVAL                         R3 3
       31 GETTABLEKS                       R3 R3 K7 ["firstAncestorWithTag"]
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

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 JUMPIFNOTEQKNIL                  R4 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        8 LOADK                            R4 K0 ["Container not mounted, ensure render is called"]
        9 GETIMPORT                        R2 K2 [assert]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R1 1
       13 CALL                             R0 1 1
       14 GETTABLEKS                       R0 R0 K3 ["getByText"]
       16 GETUPVAL                         R1 2
       17 DUPTABLE                         R2 K5 [{"exact"}]
       18 LOADB                            R3 0
       19 SETTABLEKS                       R3 R2 K4 ["exact"]
       21 CALL                             R0 2 -1
       22 RETURN                           R0 -1

PROTO_44:
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
       11 GETUPVAL                         R4 0
       12 GETUPVAL                         R8 1
       13 JUMPIFNOTEQKNIL                  R8 ; [+2]
       15 LOADB                            R7 0 +1
       16 LOADB                            R7 1
       17 FASTCALL2K                       ASSERT R7 K2 ; [+4]
       19 LOADK                            R8 K2 ["Container not mounted, ensure render is called"]
       20 GETIMPORT                        R6 K4 [assert]
       22 CALL                             R6 2 0
       23 GETUPVAL                         R5 1
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R4 R4 K5 ["getByDisplayValue"]
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
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R4 R4 K7 ["firstAncestorWithTag"]
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
       57 GETUPVAL                         R6 4
       58 GETTABLEKS                       R6 R6 K10 ["MessageActions"]
       60 GETTABLEKS                       R6 R6 K11 ["Container"]
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
       85 GETUPVAL                         R8 0
       86 MOVE                             R9 R7
       87 CALL                             R8 1 1
       88 GETTABLEKS                       R8 R8 K13 ["queryByTestId"]
       90 MOVE                             R9 R6
       91 CALL                             R8 1 1
       92 MOVE                             R5 R8
       93 RETURN                           R5 1
       94 GETUPVAL                         R6 4
       95 GETTABLEKS                       R6 R6 K10 ["MessageActions"]
       97 GETTABLEKS                       R6 R6 K14 ["Retry"]
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
      122 GETUPVAL                         R8 0
      123 MOVE                             R9 R7
      124 CALL                             R8 1 1
      125 GETTABLEKS                       R8 R8 K13 ["queryByTestId"]
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

PROTO_45:
        0 GETTABLEKS                       R3 R0 K0 ["messageContainer"]
        2 GETTABLEKS                       R3 R3 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R4 R1 K0 ["messageContainer"]
        6 GETTABLEKS                       R4 R4 K1 ["LayoutOrder"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["queryAll"]
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
       53 DUPCLOSURE                       R4 K18 [PROTO_45]
       54 CALL                             R2 2 0
       55 RETURN                           R1 1

PROTO_47:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETTABLEKS                       R0 R0 K0 ["getByText"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 JUMPIFNOTEQKNIL                  R4 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        8 LOADK                            R4 K0 ["Container not mounted, ensure render is called"]
        9 GETIMPORT                        R2 K2 [assert]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R1 1
       13 CALL                             R0 1 1
       14 GETTABLEKS                       R0 R0 K3 ["getByDisplayValue"]
       16 GETUPVAL                         R1 2
       17 GETUPVAL                         R2 3
       18 CALL                             R0 2 -1
       19 RETURN                           R0 -1

PROTO_49:
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
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["assign"]
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

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ModelQualityWarning"]
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
       26 GETUPVAL                         R3 2
       27 MOVE                             R4 R2
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R3 R3 K5 ["getByTestId"]
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

PROTO_51:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["GenerationIndicator"]
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
       26 GETUPVAL                         R3 2
       27 MOVE                             R4 R2
       28 CALL                             R3 1 1
       29 GETTABLEKS                       R3 R3 K5 ["getByTestId"]
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

PROTO_52:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setModelQuality"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Stepped"]
        7 NAMECALL                         R1 R1 K2 ["Wait"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       13 NAMECALL                         R1 R1 K2 ["Wait"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R2 0
       17 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K1 ["Stepped"]
       23 NAMECALL                         R2 R2 K2 ["Wait"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K1 ["Stepped"]
       29 NAMECALL                         R2 R2 K2 ["Wait"]
       31 CALL                             R2 1 0
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K3 ["InputArea"]
       35 GETTABLEKS                       R2 R2 K4 ["Container"]
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
       60 GETUPVAL                         R4 4
       61 MOVE                             R5 R3
       62 CALL                             R4 1 1
       63 GETTABLEKS                       R4 R4 K9 ["getByTestId"]
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
      106 GETUPVAL                         R1 1
      107 GETTABLEKS                       R1 R1 K1 ["Stepped"]
      109 NAMECALL                         R1 R1 K2 ["Wait"]
      111 CALL                             R1 1 0
      112 GETUPVAL                         R1 1
      113 GETTABLEKS                       R1 R1 K1 ["Stepped"]
      115 NAMECALL                         R1 R1 K2 ["Wait"]
      117 CALL                             R1 1 0
      118 RETURN                           R0 0

PROTO_56:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["change"]
        3 GETUPVAL                         R3 1
        4 NAMECALL                         R3 R3 K1 ["UpdateUnitTestOnly"]
        6 CALL                             R3 1 0
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["Stepped"]
       10 NAMECALL                         R3 R3 K3 ["Wait"]
       12 CALL                             R3 1 0
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K2 ["Stepped"]
       16 NAMECALL                         R3 R3 K3 ["Wait"]
       18 CALL                             R3 1 0
       19 GETUPVAL                         R4 1
       20 NAMECALL                         R4 R4 K1 ["UpdateUnitTestOnly"]
       22 CALL                             R4 1 0
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K2 ["Stepped"]
       26 NAMECALL                         R4 R4 K3 ["Wait"]
       28 CALL                             R4 1 0
       29 GETUPVAL                         R4 2
       30 GETTABLEKS                       R4 R4 K2 ["Stepped"]
       32 NAMECALL                         R4 R4 K3 ["Wait"]
       34 CALL                             R4 1 0
       35 GETUPVAL                         R4 3
       36 GETTABLEKS                       R4 R4 K4 ["InputArea"]
       38 GETTABLEKS                       R4 R4 K5 ["Container"]
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
       63 GETUPVAL                         R6 5
       64 MOVE                             R7 R5
       65 CALL                             R6 1 1
       66 GETTABLEKS                       R6 R6 K10 ["getByTestId"]
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
      112 GETUPVAL                         R1 2
      113 GETTABLEKS                       R1 R1 K2 ["Stepped"]
      115 NAMECALL                         R1 R1 K3 ["Wait"]
      117 CALL                             R1 1 0
      118 GETUPVAL                         R1 2
      119 GETTABLEKS                       R1 R1 K2 ["Stepped"]
      121 NAMECALL                         R1 R1 K3 ["Wait"]
      123 CALL                             R1 1 0
      124 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["CursorPosition"]
        4 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Stepped"]
        7 NAMECALL                         R2 R2 K2 ["Wait"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K1 ["Stepped"]
       13 NAMECALL                         R2 R2 K2 ["Wait"]
       15 CALL                             R2 1 0
       16 GETUPVAL                         R3 0
       17 NAMECALL                         R3 R3 K0 ["UpdateUnitTestOnly"]
       19 CALL                             R3 1 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K1 ["Stepped"]
       23 NAMECALL                         R3 R3 K2 ["Wait"]
       25 CALL                             R3 1 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K1 ["Stepped"]
       29 NAMECALL                         R3 R3 K2 ["Wait"]
       31 CALL                             R3 1 0
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R3 R3 K3 ["InputArea"]
       35 GETTABLEKS                       R3 R3 K4 ["Container"]
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
       60 GETUPVAL                         R5 4
       61 MOVE                             R6 R4
       62 CALL                             R5 1 1
       63 GETTABLEKS                       R5 R5 K9 ["getByTestId"]
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
      107 GETUPVAL                         R2 1
      108 GETTABLEKS                       R2 R2 K1 ["Stepped"]
      110 NAMECALL                         R2 R2 K2 ["Wait"]
      112 CALL                             R2 1 0
      113 GETUPVAL                         R2 1
      114 GETTABLEKS                       R2 R2 K1 ["Stepped"]
      116 NAMECALL                         R2 R2 K2 ["Wait"]
      118 CALL                             R2 1 0
      119 RETURN                           R0 0

PROTO_59:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Stepped"]
        7 NAMECALL                         R1 R1 K2 ["Wait"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       13 NAMECALL                         R1 R1 K2 ["Wait"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R2 0
       17 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K1 ["Stepped"]
       23 NAMECALL                         R2 R2 K2 ["Wait"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K1 ["Stepped"]
       29 NAMECALL                         R2 R2 K2 ["Wait"]
       31 CALL                             R2 1 0
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K3 ["InputArea"]
       35 GETTABLEKS                       R2 R2 K4 ["Container"]
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
       60 GETUPVAL                         R4 4
       61 MOVE                             R5 R3
       62 CALL                             R4 1 1
       63 GETTABLEKS                       R4 R4 K9 ["getByTestId"]
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

PROTO_60:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["screen"]
        3 GETTABLEKS                       R2 R2 K1 ["debug"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_61:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputArea"]
        3 GETTABLEKS                       R1 R1 K1 ["StopButton"]
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
       28 GETUPVAL                         R3 2
       29 MOVE                             R4 R2
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R3 R3 K6 ["getByTestId"]
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
       57 GETUPVAL                         R1 6
       58 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       60 NAMECALL                         R1 R1 K11 ["Wait"]
       62 CALL                             R1 1 0
       63 GETUPVAL                         R1 6
       64 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       66 NAMECALL                         R1 R1 K11 ["Wait"]
       68 CALL                             R1 1 0
       69 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["keyDown"]
        3 MOVE                             R2 R0
        4 DUPTABLE                         R3 K2 [{"key"}]
        5 GETIMPORT                        R4 K6 [Enum.KeyCode.Return]
        7 SETTABLEKS                       R4 R3 K1 ["key"]
        9 CALL                             R1 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K7 ["keyUp"]
       13 MOVE                             R2 R0
       14 DUPTABLE                         R3 K2 [{"key"}]
       15 GETIMPORT                        R4 K6 [Enum.KeyCode.Return]
       17 SETTABLEKS                       R4 R3 K1 ["key"]
       19 CALL                             R1 2 0
       20 GETUPVAL                         R1 1
       21 NAMECALL                         R1 R1 K8 ["UpdateUnitTestOnly"]
       23 CALL                             R1 1 0
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R1 R1 K9 ["Stepped"]
       27 NAMECALL                         R1 R1 K10 ["Wait"]
       29 CALL                             R1 1 0
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R1 R1 K9 ["Stepped"]
       33 NAMECALL                         R1 R1 K10 ["Wait"]
       35 CALL                             R1 1 0
       36 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_64:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["change"]
        7 MOVE                             R3 R0
        8 DUPTABLE                         R4 K2 [{"target"}]
        9 DUPTABLE                         R5 K4 [{"Text"}]
       10 SETTABLEKS                       R1 R5 K3 ["Text"]
       12 SETTABLEKS                       R5 R4 K1 ["target"]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 2
       16 NAMECALL                         R2 R2 K5 ["UpdateUnitTestOnly"]
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K6 ["Stepped"]
       22 NAMECALL                         R2 R2 K7 ["Wait"]
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K6 ["Stepped"]
       28 NAMECALL                         R2 R2 K7 ["Wait"]
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["Stepped"]
        8 NAMECALL                         R2 R2 K2 ["Wait"]
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R2 R2 K1 ["Stepped"]
       14 NAMECALL                         R2 R2 K2 ["Wait"]
       16 CALL                             R2 1 0
       17 GETUPVAL                         R3 1
       18 NAMECALL                         R3 R3 K0 ["UpdateUnitTestOnly"]
       20 CALL                             R3 1 0
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R3 R3 K1 ["Stepped"]
       24 NAMECALL                         R3 R3 K2 ["Wait"]
       26 CALL                             R3 1 0
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K1 ["Stepped"]
       30 NAMECALL                         R3 R3 K2 ["Wait"]
       32 CALL                             R3 1 0
       33 GETUPVAL                         R3 3
       34 GETTABLEKS                       R3 R3 K3 ["InputArea"]
       36 GETTABLEKS                       R3 R3 K4 ["Container"]
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
       61 GETUPVAL                         R5 5
       62 MOVE                             R6 R4
       63 CALL                             R5 1 1
       64 GETTABLEKS                       R5 R5 K9 ["getByTestId"]
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

PROTO_66:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R3 R3 K0 ["UpdateUnitTestOnly"]
        4 CALL                             R3 1 0
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Stepped"]
        8 NAMECALL                         R3 R3 K2 ["Wait"]
       10 CALL                             R3 1 0
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K1 ["Stepped"]
       14 NAMECALL                         R3 R3 K2 ["Wait"]
       16 CALL                             R3 1 0
       17 GETUPVAL                         R4 1
       18 NAMECALL                         R4 R4 K0 ["UpdateUnitTestOnly"]
       20 CALL                             R4 1 0
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K1 ["Stepped"]
       24 NAMECALL                         R4 R4 K2 ["Wait"]
       26 CALL                             R4 1 0
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K1 ["Stepped"]
       30 NAMECALL                         R4 R4 K2 ["Wait"]
       32 CALL                             R4 1 0
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K3 ["InputArea"]
       36 GETTABLEKS                       R4 R4 K4 ["Container"]
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
       61 GETUPVAL                         R6 5
       62 MOVE                             R7 R5
       63 CALL                             R6 1 1
       64 GETTABLEKS                       R6 R6 K9 ["getByTestId"]
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
      106 GETUPVAL                         R3 2
      107 GETTABLEKS                       R3 R3 K1 ["Stepped"]
      109 NAMECALL                         R3 R3 K2 ["Wait"]
      111 CALL                             R3 1 0
      112 GETUPVAL                         R3 2
      113 GETTABLEKS                       R3 R3 K1 ["Stepped"]
      115 NAMECALL                         R3 R3 K2 ["Wait"]
      117 CALL                             R3 1 0
      118 GETUPVAL                         R4 1
      119 NAMECALL                         R4 R4 K0 ["UpdateUnitTestOnly"]
      121 CALL                             R4 1 0
      122 GETUPVAL                         R4 2
      123 GETTABLEKS                       R4 R4 K1 ["Stepped"]
      125 NAMECALL                         R4 R4 K2 ["Wait"]
      127 CALL                             R4 1 0
      128 GETUPVAL                         R4 2
      129 GETTABLEKS                       R4 R4 K1 ["Stepped"]
      131 NAMECALL                         R4 R4 K2 ["Wait"]
      133 CALL                             R4 1 0
      134 GETUPVAL                         R4 3
      135 GETTABLEKS                       R4 R4 K3 ["InputArea"]
      137 GETTABLEKS                       R4 R4 K4 ["Container"]
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
      162 GETUPVAL                         R6 5
      163 MOVE                             R7 R5
      164 CALL                             R6 1 1
      165 GETTABLEKS                       R6 R6 K9 ["getByTestId"]
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

PROTO_67:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Stepped"]
        7 NAMECALL                         R2 R2 K2 ["Wait"]
        9 CALL                             R2 1 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K1 ["Stepped"]
       13 NAMECALL                         R2 R2 K2 ["Wait"]
       15 CALL                             R2 1 0
       16 GETUPVAL                         R3 0
       17 NAMECALL                         R3 R3 K0 ["UpdateUnitTestOnly"]
       19 CALL                             R3 1 0
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K1 ["Stepped"]
       23 NAMECALL                         R3 R3 K2 ["Wait"]
       25 CALL                             R3 1 0
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K1 ["Stepped"]
       29 NAMECALL                         R3 R3 K2 ["Wait"]
       31 CALL                             R3 1 0
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R3 R3 K3 ["InputArea"]
       35 GETTABLEKS                       R3 R3 K4 ["Container"]
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
       60 GETUPVAL                         R5 4
       61 MOVE                             R6 R4
       62 CALL                             R5 1 1
       63 GETTABLEKS                       R5 R5 K9 ["getByTestId"]
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
       99 GETTABLEKS                       R2 R2 K16 ["keyDown"]
      101 MOVE                             R3 R1
      102 DUPTABLE                         R4 K18 [{"key"}]
      103 SETTABLEKS                       R0 R4 K17 ["key"]
      105 CALL                             R2 2 0
      106 GETUPVAL                         R2 5
      107 GETTABLEKS                       R2 R2 K19 ["keyUp"]
      109 MOVE                             R3 R1
      110 DUPTABLE                         R4 K18 [{"key"}]
      111 SETTABLEKS                       R0 R4 K17 ["key"]
      113 CALL                             R2 2 0
      114 GETUPVAL                         R2 0
      115 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
      117 CALL                             R2 1 0
      118 GETUPVAL                         R2 1
      119 GETTABLEKS                       R2 R2 K1 ["Stepped"]
      121 NAMECALL                         R2 R2 K2 ["Wait"]
      123 CALL                             R2 1 0
      124 GETUPVAL                         R2 1
      125 GETTABLEKS                       R2 R2 K1 ["Stepped"]
      127 NAMECALL                         R2 R2 K2 ["Wait"]
      129 CALL                             R2 1 0
      130 RETURN                           R0 0

PROTO_68:
        0 JUMPIFNOT                        R2 ; [+9]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["keyDown"]
        4 MOVE                             R4 R0
        5 DUPTABLE                         R5 K2 [{"key"}]
        6 SETTABLEKS                       R1 R5 K1 ["key"]
        8 CALL                             R3 2 0
        9 JUMP                             ; [+8]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["keyUp"]
       13 MOVE                             R4 R0
       14 DUPTABLE                         R5 K2 [{"key"}]
       15 SETTABLEKS                       R1 R5 K1 ["key"]
       17 CALL                             R3 2 0
       18 GETUPVAL                         R3 1
       19 NAMECALL                         R3 R3 K4 ["UpdateUnitTestOnly"]
       21 CALL                             R3 1 0
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K5 ["Stepped"]
       25 NAMECALL                         R3 R3 K6 ["Wait"]
       27 CALL                             R3 1 0
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R3 R3 K5 ["Stepped"]
       31 NAMECALL                         R3 R3 K6 ["Wait"]
       33 CALL                             R3 1 0
       34 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Stepped"]
        7 NAMECALL                         R1 R1 K2 ["Wait"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       13 NAMECALL                         R1 R1 K2 ["Wait"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R2 0
       17 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K1 ["Stepped"]
       23 NAMECALL                         R2 R2 K2 ["Wait"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K1 ["Stepped"]
       29 NAMECALL                         R2 R2 K2 ["Wait"]
       31 CALL                             R2 1 0
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K3 ["InputArea"]
       35 GETTABLEKS                       R2 R2 K4 ["Container"]
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
       60 GETUPVAL                         R4 4
       61 MOVE                             R5 R3
       62 CALL                             R4 1 1
       63 GETTABLEKS                       R4 R4 K9 ["getByTestId"]
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

PROTO_70:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 NAMECALL                         R3 R3 K0 ["UpdateUnitTestOnly"]
        4 CALL                             R3 1 0
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Stepped"]
        8 NAMECALL                         R3 R3 K2 ["Wait"]
       10 CALL                             R3 1 0
       11 GETUPVAL                         R3 2
       12 GETTABLEKS                       R3 R3 K1 ["Stepped"]
       14 NAMECALL                         R3 R3 K2 ["Wait"]
       16 CALL                             R3 1 0
       17 GETUPVAL                         R4 1
       18 NAMECALL                         R4 R4 K0 ["UpdateUnitTestOnly"]
       20 CALL                             R4 1 0
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K1 ["Stepped"]
       24 NAMECALL                         R4 R4 K2 ["Wait"]
       26 CALL                             R4 1 0
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K1 ["Stepped"]
       30 NAMECALL                         R4 R4 K2 ["Wait"]
       32 CALL                             R4 1 0
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K3 ["InputArea"]
       36 GETTABLEKS                       R4 R4 K4 ["Container"]
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
       61 GETUPVAL                         R6 5
       62 MOVE                             R7 R5
       63 CALL                             R6 1 1
       64 GETTABLEKS                       R6 R6 K9 ["getByTestId"]
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
       99 GETTABLEKS                       R1 R2 K16 ["Visible"]
      101 JUMPIFNOT                        R1 ; [+2]
      102 GETTABLEKS                       R1 R2 K17 ["TextEditable"]
      104 CALL                             R0 1 1
      105 GETTABLEKS                       R0 R0 K18 ["toBe"]
      107 GETUPVAL                         R1 6
      108 CALL                             R0 1 0
      109 RETURN                           R0 0

PROTO_71:
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

PROTO_72:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LENGTH                           R4 R1
        3 LOADN                            R2 1
        4 LOADN                            R3 255
        5 FORNPREP                         R2
        6 GETTABLE                         R5 R1 R4
        7 GETTABLEKS                       R6 R5 K0 ["user"]
        9 JUMPIFNOT                        R6 ; [+12]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R7 R5 K1 ["messageContainer"]
       13 CALL                             R6 1 1
       14 GETTABLEKS                       R6 R6 K2 ["findByDisplayValue"]
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

PROTO_73:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LENGTH                           R0 R1
        3 RETURN                           R0 1

PROTO_74:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Stepped"]
        7 NAMECALL                         R1 R1 K2 ["Wait"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       13 NAMECALL                         R1 R1 K2 ["Wait"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R2 0
       17 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
       19 CALL                             R2 1 0
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R2 R2 K1 ["Stepped"]
       23 NAMECALL                         R2 R2 K2 ["Wait"]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K1 ["Stepped"]
       29 NAMECALL                         R2 R2 K2 ["Wait"]
       31 CALL                             R2 1 0
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K3 ["InputArea"]
       35 GETTABLEKS                       R2 R2 K4 ["Container"]
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
       60 GETUPVAL                         R4 4
       61 MOVE                             R5 R3
       62 CALL                             R4 1 1
       63 GETTABLEKS                       R4 R4 K9 ["getByTestId"]
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

PROTO_75:
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
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K11 ["Stepped"]
       37 NAMECALL                         R3 R3 K12 ["Wait"]
       39 CALL                             R3 1 0
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R3 R3 K11 ["Stepped"]
       43 NAMECALL                         R3 R3 K12 ["Wait"]
       45 CALL                             R3 1 0
       46 RETURN                           R0 0

PROTO_76:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["RunCode"]
        3 GETTABLEKS                       R2 R2 K1 ["Expand"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       82 GETUPVAL                         R4 4
       83 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R4 4
       89 GETTABLEKS                       R4 R4 K18 ["Stepped"]
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
      103 GETUPVAL                         R2 4
      104 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R2 4
      110 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_77:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["AssetVariation"]
        3 GETTABLEKS                       R2 R2 K1 ["Expand"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       82 GETUPVAL                         R4 4
       83 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R4 4
       89 GETTABLEKS                       R4 R4 K18 ["Stepped"]
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
      103 GETUPVAL                         R2 4
      104 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R2 4
      110 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_78:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["MaterialGen"]
        3 GETTABLEKS                       R2 R2 K1 ["Expand"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       82 GETUPVAL                         R4 4
       83 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R4 4
       89 GETTABLEKS                       R4 R4 K18 ["Stepped"]
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
      103 GETUPVAL                         R2 4
      104 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R2 4
      110 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_79:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["MaterialGen"]
        3 GETTABLEKS                       R2 R2 K1 ["StudsPerTileValueBar"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       82 GETUPVAL                         R4 4
       83 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R4 4
       89 GETTABLEKS                       R4 R4 K18 ["Stepped"]
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
      103 GETUPVAL                         R2 4
      104 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R2 4
      110 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_80:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["MaterialGen"]
        3 GETTABLEKS                       R2 R2 K1 ["OrganicPatternToggle"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       82 GETUPVAL                         R4 4
       83 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R4 4
       89 GETTABLEKS                       R4 R4 K18 ["Stepped"]
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
      103 GETUPVAL                         R2 4
      104 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R2 4
      110 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_81:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["MeshGen"]
        3 GETTABLEKS                       R2 R2 K1 ["Expand"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       82 GETUPVAL                         R4 4
       83 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R4 4
       89 GETTABLEKS                       R4 R4 K18 ["Stepped"]
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
      103 GETUPVAL                         R2 4
      104 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R2 4
      110 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_82:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["MeshGen"]
        3 GETTABLEKS                       R2 R2 K1 ["PreviewImage"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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

PROTO_83:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["MeshGen"]
        3 GETTABLEKS                       R2 R2 K1 ["UseSelection"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       93 GETUPVAL                         R5 4
       94 GETTABLEKS                       R5 R5 K21 ["Stepped"]
       96 NAMECALL                         R5 R5 K22 ["Wait"]
       98 CALL                             R5 1 0
       99 GETUPVAL                         R5 4
      100 GETTABLEKS                       R5 R5 K21 ["Stepped"]
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
      114 GETUPVAL                         R3 4
      115 GETTABLEKS                       R3 R3 K21 ["Stepped"]
      117 NAMECALL                         R3 R3 K22 ["Wait"]
      119 CALL                             R3 1 0
      120 GETUPVAL                         R3 4
      121 GETTABLEKS                       R3 R3 K21 ["Stepped"]
      123 NAMECALL                         R3 R3 K22 ["Wait"]
      125 CALL                             R3 1 0
      126 RETURN                           R0 0

PROTO_84:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_85:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["spyOn"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Util"]
        6 GETTABLEKS                       R2 R2 K2 ["MarkdownParser"]
        8 LOADK                            R3 K3 ["parse"]
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R1 R1 K4 ["mockImplementation"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

PROTO_86:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Carousel"]
        3 GETTABLEKS                       R2 R2 K1 ["Container"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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

PROTO_87:
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

PROTO_88:
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

PROTO_89:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["CarouselItem"]
        3 GETTABLEKS                       R2 R2 K1 ["Selected"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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

PROTO_90:
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
       55 GETUPVAL                         R6 3
       56 GETTABLEKS                       R6 R6 K15 ["Stepped"]
       58 NAMECALL                         R6 R6 K16 ["Wait"]
       60 CALL                             R6 1 0
       61 GETUPVAL                         R6 3
       62 GETTABLEKS                       R6 R6 K15 ["Stepped"]
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
      101 GETUPVAL                         R6 3
      102 GETTABLEKS                       R6 R6 K15 ["Stepped"]
      104 NAMECALL                         R6 R6 K16 ["Wait"]
      106 CALL                             R6 1 0
      107 GETUPVAL                         R6 3
      108 GETTABLEKS                       R6 R6 K15 ["Stepped"]
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
      122 GETUPVAL                         R4 3
      123 GETTABLEKS                       R4 R4 K15 ["Stepped"]
      125 NAMECALL                         R4 R4 K16 ["Wait"]
      127 CALL                             R4 1 0
      128 GETUPVAL                         R4 3
      129 GETTABLEKS                       R4 R4 K15 ["Stepped"]
      131 NAMECALL                         R4 R4 K16 ["Wait"]
      133 CALL                             R4 1 0
      134 RETURN                           R0 0

PROTO_91:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["RunCode"]
        3 GETTABLEKS                       R2 R2 K1 ["Copy"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       82 GETUPVAL                         R4 4
       83 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R4 4
       89 GETTABLEKS                       R4 R4 K18 ["Stepped"]
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
      103 GETUPVAL                         R2 4
      104 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R2 4
      110 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_92:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["RunCode"]
        3 GETTABLEKS                       R2 R2 K1 ["Run"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       82 GETUPVAL                         R4 4
       83 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R4 4
       89 GETTABLEKS                       R4 R4 K18 ["Stepped"]
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
      103 GETUPVAL                         R2 4
      104 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R2 4
      110 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_93:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["RunCode"]
        3 GETTABLEKS                       R2 R2 K1 ["Stop"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       82 GETUPVAL                         R4 4
       83 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R4 4
       89 GETTABLEKS                       R4 R4 K18 ["Stepped"]
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
      103 GETUPVAL                         R2 4
      104 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R2 4
      110 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_94:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ImageContent"]
        3 GETTABLEKS                       R2 R2 K1 ["Expand"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       82 GETUPVAL                         R4 4
       83 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R4 4
       89 GETTABLEKS                       R4 R4 K18 ["Stepped"]
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
      103 GETUPVAL                         R2 4
      104 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R2 4
      110 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_95:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ImageContent"]
        3 GETTABLEKS                       R2 R2 K1 ["Image"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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

PROTO_96:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K0 ["Enums"]
        8 GETTABLEKS                       R3 R3 K1 ["IconName"]
       10 GETTABLEKS                       R3 R3 K2 ["TwoArrowsSpinClockwise"]
       12 MOVE                             R4 R0
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 JUMP                             ; [+48]
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K3 ["MessageActions"]
       19 GETTABLEKS                       R2 R2 K4 ["Retry"]
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
       44 GETUPVAL                         R4 5
       45 MOVE                             R5 R3
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R4 R4 K9 ["getByTestId"]
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
       99 GETUPVAL                         R5 7
      100 GETTABLEKS                       R5 R5 K21 ["Stepped"]
      102 NAMECALL                         R5 R5 K22 ["Wait"]
      104 CALL                             R5 1 0
      105 GETUPVAL                         R5 7
      106 GETTABLEKS                       R5 R5 K21 ["Stepped"]
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
      121 GETUPVAL                         R3 7
      122 GETTABLEKS                       R3 R3 K21 ["Stepped"]
      124 NAMECALL                         R3 R3 K22 ["Wait"]
      126 CALL                             R3 1 0
      127 GETUPVAL                         R3 7
      128 GETTABLEKS                       R3 R3 K21 ["Stepped"]
      130 NAMECALL                         R3 R3 K22 ["Wait"]
      132 CALL                             R3 1 0
      133 RETURN                           R0 0

PROTO_97:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K0 ["Enums"]
        8 GETTABLEKS                       R3 R3 K1 ["IconName"]
       10 GETTABLEKS                       R3 R3 K2 ["ThumbUp"]
       12 MOVE                             R4 R0
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 JUMP                             ; [+58]
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K3 ["MessageActions"]
       19 GETTABLEKS                       R2 R2 K4 ["ThumbsUp"]
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
       44 GETUPVAL                         R4 5
       45 MOVE                             R5 R3
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R4 R4 K9 ["getByTestId"]
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
      109 GETUPVAL                         R5 7
      110 GETTABLEKS                       R5 R5 K23 ["Stepped"]
      112 NAMECALL                         R5 R5 K24 ["Wait"]
      114 CALL                             R5 1 0
      115 GETUPVAL                         R5 7
      116 GETTABLEKS                       R5 R5 K23 ["Stepped"]
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
      131 GETUPVAL                         R3 7
      132 GETTABLEKS                       R3 R3 K23 ["Stepped"]
      134 NAMECALL                         R3 R3 K24 ["Wait"]
      136 CALL                             R3 1 0
      137 GETUPVAL                         R3 7
      138 GETTABLEKS                       R3 R3 K23 ["Stepped"]
      140 NAMECALL                         R3 R3 K24 ["Wait"]
      142 CALL                             R3 1 0
      143 RETURN                           R0 0

PROTO_98:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K0 ["Enums"]
        8 GETTABLEKS                       R3 R3 K1 ["IconName"]
       10 GETTABLEKS                       R3 R3 K2 ["ThumbDown"]
       12 MOVE                             R4 R0
       13 CALL                             R2 2 1
       14 MOVE                             R1 R2
       15 JUMP                             ; [+58]
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K3 ["MessageActions"]
       19 GETTABLEKS                       R2 R2 K4 ["ThumbsDown"]
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
       44 GETUPVAL                         R4 5
       45 MOVE                             R5 R3
       46 CALL                             R4 1 1
       47 GETTABLEKS                       R4 R4 K9 ["getByTestId"]
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
      109 GETUPVAL                         R5 7
      110 GETTABLEKS                       R5 R5 K23 ["Stepped"]
      112 NAMECALL                         R5 R5 K24 ["Wait"]
      114 CALL                             R5 1 0
      115 GETUPVAL                         R5 7
      116 GETTABLEKS                       R5 R5 K23 ["Stepped"]
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
      131 GETUPVAL                         R3 7
      132 GETTABLEKS                       R3 R3 K23 ["Stepped"]
      134 NAMECALL                         R3 R3 K24 ["Wait"]
      136 CALL                             R3 1 0
      137 GETUPVAL                         R3 7
      138 GETTABLEKS                       R3 R3 K23 ["Stepped"]
      140 NAMECALL                         R3 R3 K24 ["Wait"]
      142 CALL                             R3 1 0
      143 RETURN                           R0 0

PROTO_99:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Enums"]
        4 GETTABLEKS                       R2 R2 K1 ["IconName"]
        6 GETTABLEKS                       R2 R2 K2 ["TwoArrowsBranchRight"]
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
       44 GETUPVAL                         R4 3
       45 GETTABLEKS                       R4 R4 K14 ["Stepped"]
       47 NAMECALL                         R4 R4 K15 ["Wait"]
       49 CALL                             R4 1 0
       50 GETUPVAL                         R4 3
       51 GETTABLEKS                       R4 R4 K14 ["Stepped"]
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
       65 GETUPVAL                         R2 3
       66 GETTABLEKS                       R2 R2 K14 ["Stepped"]
       68 NAMECALL                         R2 R2 K15 ["Wait"]
       70 CALL                             R2 1 0
       71 GETUPVAL                         R2 3
       72 GETTABLEKS                       R2 R2 K14 ["Stepped"]
       74 NAMECALL                         R2 R2 K15 ["Wait"]
       76 CALL                             R2 1 0
       77 RETURN                           R0 0

PROTO_100:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+36]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["Enums"]
        7 GETTABLEKS                       R2 R2 K1 ["IconName"]
        9 GETTABLEKS                       R2 R2 K2 ["ThumbUp"]
       11 MOVE                             R3 R0
       12 CALL                             R1 2 1
       13 LOADK                            R5 K3 ["TextLabel"]
       14 NAMECALL                         R3 R1 K4 ["IsA"]
       16 CALL                             R3 2 1
       17 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       19 LOADK                            R4 K5 ["Thumbs up button is not a TextLabel"]
       20 GETIMPORT                        R2 K7 [assert]
       22 CALL                             R2 2 0
       23 GETTABLEKS                       R2 R1 K8 ["FontFace"]
       25 GETTABLEKS                       R2 R2 K9 ["Bold"]
       27 JUMPIFNOT                        R2 ; [+8]
       28 LOADK                            R3 K10 ["%*-Filled"]
       29 GETTABLEKS                       R5 R1 K11 ["Text"]
       31 NAMECALL                         R3 R3 K12 ["format"]
       33 CALL                             R3 2 1
       34 MOVE                             R2 R3
       35 RETURN                           R2 1
       36 GETTABLEKS                       R2 R1 K11 ["Text"]
       38 RETURN                           R2 1
       39 GETUPVAL                         R2 3
       40 GETTABLEKS                       R2 R2 K13 ["MessageActions"]
       42 GETTABLEKS                       R2 R2 K14 ["ThumbsUp"]
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
       67 GETUPVAL                         R4 5
       68 MOVE                             R5 R3
       69 CALL                             R4 1 1
       70 GETTABLEKS                       R4 R4 K17 ["getByTestId"]
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

PROTO_101:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+36]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["Enums"]
        7 GETTABLEKS                       R2 R2 K1 ["IconName"]
        9 GETTABLEKS                       R2 R2 K2 ["ThumbDown"]
       11 MOVE                             R3 R0
       12 CALL                             R1 2 1
       13 LOADK                            R5 K3 ["TextLabel"]
       14 NAMECALL                         R3 R1 K4 ["IsA"]
       16 CALL                             R3 2 1
       17 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       19 LOADK                            R4 K5 ["Thumbs down button is not a TextLabel"]
       20 GETIMPORT                        R2 K7 [assert]
       22 CALL                             R2 2 0
       23 GETTABLEKS                       R2 R1 K8 ["FontFace"]
       25 GETTABLEKS                       R2 R2 K9 ["Bold"]
       27 JUMPIFNOT                        R2 ; [+8]
       28 LOADK                            R3 K10 ["%*-Filled"]
       29 GETTABLEKS                       R5 R1 K11 ["Text"]
       31 NAMECALL                         R3 R3 K12 ["format"]
       33 CALL                             R3 2 1
       34 MOVE                             R2 R3
       35 RETURN                           R2 1
       36 GETTABLEKS                       R2 R1 K11 ["Text"]
       38 RETURN                           R2 1
       39 GETUPVAL                         R2 3
       40 GETTABLEKS                       R2 R2 K13 ["MessageActions"]
       42 GETTABLEKS                       R2 R2 K14 ["ThumbsDown"]
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
       67 GETUPVAL                         R4 5
       68 MOVE                             R5 R3
       69 CALL                             R4 1 1
       70 GETTABLEKS                       R4 R4 K17 ["getByTestId"]
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

PROTO_102:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getConversation"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_103:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setConversation"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_104:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       12 NAMECALL                         R1 R1 K2 ["Wait"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       18 NAMECALL                         R1 R1 K2 ["Wait"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_105:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setThreadId"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_106:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getThreadId"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R0
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 2
       10 NAMECALL                         R2 R2 K1 ["UpdateUnitTestOnly"]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K2 ["Stepped"]
       16 NAMECALL                         R2 R2 K3 ["Wait"]
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K2 ["Stepped"]
       22 NAMECALL                         R2 R2 K3 ["Wait"]
       24 CALL                             R2 1 0
       25 RETURN                           R1 1

PROTO_107:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+4]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["reset"]
        6 CALL                             R1 0 0
        7 GETUPVAL                         R1 2
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R0
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 4
       13 NAMECALL                         R1 R1 K1 ["UpdateUnitTestOnly"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 5
       17 GETTABLEKS                       R1 R1 K2 ["Stepped"]
       19 NAMECALL                         R1 R1 K3 ["Wait"]
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 5
       23 GETTABLEKS                       R1 R1 K2 ["Stepped"]
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
       45 GETUPVAL                         R2 6
       46 GETTABLEKS                       R2 R2 K10 ["getThreadId"]
       48 CALL                             R2 0 1
       49 GETUPVAL                         R3 2
       50 NEWCLOSURE                       R4 P1
       51 CAPTURE                          UPVAL U6
       52 CAPTURE                          VAL R1
       53 CALL                             R3 1 0
       54 GETUPVAL                         R3 4
       55 NAMECALL                         R3 R3 K1 ["UpdateUnitTestOnly"]
       57 CALL                             R3 1 0
       58 GETUPVAL                         R3 5
       59 GETTABLEKS                       R3 R3 K2 ["Stepped"]
       61 NAMECALL                         R3 R3 K3 ["Wait"]
       63 CALL                             R3 1 0
       64 GETUPVAL                         R3 5
       65 GETTABLEKS                       R3 R3 K2 ["Stepped"]
       67 NAMECALL                         R3 R3 K3 ["Wait"]
       69 CALL                             R3 1 0
       70 GETUPVAL                         R2 4
       71 NAMECALL                         R2 R2 K1 ["UpdateUnitTestOnly"]
       73 CALL                             R2 1 0
       74 GETUPVAL                         R2 5
       75 GETTABLEKS                       R2 R2 K2 ["Stepped"]
       77 NAMECALL                         R2 R2 K3 ["Wait"]
       79 CALL                             R2 1 0
       80 GETUPVAL                         R2 5
       81 GETTABLEKS                       R2 R2 K2 ["Stepped"]
       83 NAMECALL                         R2 R2 K3 ["Wait"]
       85 CALL                             R2 1 0
       86 RETURN                           R0 0

PROTO_108:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Header"]
        3 GETTABLEKS                       R1 R1 K1 ["SettingsButton"]
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
       28 GETUPVAL                         R3 2
       29 MOVE                             R4 R2
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R3 R3 K6 ["getByTestId"]
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
       57 GETUPVAL                         R1 6
       58 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       60 NAMECALL                         R1 R1 K11 ["Wait"]
       62 CALL                             R1 1 0
       63 GETUPVAL                         R1 6
       64 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       66 NAMECALL                         R1 R1 K11 ["Wait"]
       68 CALL                             R1 1 0
       69 RETURN                           R0 0

PROTO_109:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Header"]
        3 GETTABLEKS                       R1 R1 K1 ["SettingsContent"]
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
       28 GETUPVAL                         R3 2
       29 MOVE                             R4 R2
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R3 R3 K6 ["getByTestId"]
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

PROTO_110:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+378]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["Header"]
        6 GETTABLEKS                       R1 R1 K1 ["ToggleThreadsMenu"]
        8 LOADNIL                          R2
        9 MOVE                             R3 R2
       10 JUMPIF                           R3 ; [+12]
       11 GETUPVAL                         R6 2
       12 JUMPIFNOTEQKNIL                  R6 ; [+2]
       14 LOADB                            R5 0 +1
       15 LOADB                            R5 1
       16 FASTCALL2K                       ASSERT R5 K2 ; [+4]
       18 LOADK                            R6 K2 ["Container not mounted, ensure render is called"]
       19 GETIMPORT                        R4 K4 [assert]
       21 CALL                             R4 2 0
       22 GETUPVAL                         R3 2
       23 MOVE                             R2 R3
       24 FASTCALL2K                       ASSERT R2 K5 ; [+5]
       26 MOVE                             R4 R2
       27 LOADK                            R5 K5 ["Query container not found"]
       28 GETIMPORT                        R3 K4 [assert]
       30 CALL                             R3 2 0
       31 GETUPVAL                         R3 3
       32 MOVE                             R4 R2
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R3 R3 K6 ["getByTestId"]
       36 MOVE                             R4 R1
       37 CALL                             R3 1 1
       38 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       39 MOVE                             R9 R1
       40 NAMECALL                         R7 R7 K8 ["format"]
       42 CALL                             R7 2 1
       43 MOVE                             R6 R7
       44 FASTCALL2                        ASSERT R3 R6 ; [+4]
       46 MOVE                             R5 R3
       47 GETIMPORT                        R4 K4 [assert]
       49 CALL                             R4 2 0
       50 MOVE                             R0 R3
       51 GETUPVAL                         R1 4
       52 NEWCLOSURE                       R2 P0
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          VAL R0
       55 CALL                             R1 1 0
       56 GETUPVAL                         R1 6
       57 NAMECALL                         R1 R1 K9 ["UpdateUnitTestOnly"]
       59 CALL                             R1 1 0
       60 GETUPVAL                         R1 7
       61 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       63 NAMECALL                         R1 R1 K11 ["Wait"]
       65 CALL                             R1 1 0
       66 GETUPVAL                         R1 7
       67 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       69 NAMECALL                         R1 R1 K11 ["Wait"]
       71 CALL                             R1 1 0
       72 GETUPVAL                         R2 1
       73 GETTABLEKS                       R2 R2 K12 ["ThreadsMenu"]
       75 GETTABLEKS                       R2 R2 K13 ["Container"]
       77 LOADNIL                          R3
       78 MOVE                             R4 R3
       79 JUMPIF                           R4 ; [+12]
       80 GETUPVAL                         R7 2
       81 JUMPIFNOTEQKNIL                  R7 ; [+2]
       83 LOADB                            R6 0 +1
       84 LOADB                            R6 1
       85 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       87 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       88 GETIMPORT                        R5 K4 [assert]
       90 CALL                             R5 2 0
       91 GETUPVAL                         R4 2
       92 MOVE                             R3 R4
       93 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       95 MOVE                             R5 R3
       96 LOADK                            R6 K5 ["Query container not found"]
       97 GETIMPORT                        R4 K4 [assert]
       99 CALL                             R4 2 0
      100 GETUPVAL                         R4 3
      101 MOVE                             R5 R3
      102 CALL                             R4 1 1
      103 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
      105 MOVE                             R5 R2
      106 CALL                             R4 1 1
      107 LOADK                            R8 K7 ["No result found for testId \"%*\""]
      108 MOVE                             R10 R2
      109 NAMECALL                         R8 R8 K8 ["format"]
      111 CALL                             R8 2 1
      112 MOVE                             R7 R8
      113 FASTCALL2                        ASSERT R4 R7 ; [+4]
      115 MOVE                             R6 R4
      116 GETIMPORT                        R5 K4 [assert]
      118 CALL                             R5 2 0
      119 MOVE                             R1 R4
      120 GETUPVAL                         R3 1
      121 GETTABLEKS                       R3 R3 K12 ["ThreadsMenu"]
      123 GETTABLEKS                       R3 R3 K14 ["ExistingThreadButton"]
      125 MOVE                             R4 R1
      126 MOVE                             R5 R4
      127 JUMPIF                           R5 ; [+12]
      128 GETUPVAL                         R8 2
      129 JUMPIFNOTEQKNIL                  R8 ; [+2]
      131 LOADB                            R7 0 +1
      132 LOADB                            R7 1
      133 FASTCALL2K                       ASSERT R7 K2 ; [+4]
      135 LOADK                            R8 K2 ["Container not mounted, ensure render is called"]
      136 GETIMPORT                        R6 K4 [assert]
      138 CALL                             R6 2 0
      139 GETUPVAL                         R5 2
      140 MOVE                             R4 R5
      141 FASTCALL2K                       ASSERT R4 K5 ; [+5]
      143 MOVE                             R6 R4
      144 LOADK                            R7 K5 ["Query container not found"]
      145 GETIMPORT                        R5 K4 [assert]
      147 CALL                             R5 2 0
      148 GETUPVAL                         R5 3
      149 MOVE                             R6 R4
      150 CALL                             R5 1 1
      151 GETTABLEKS                       R5 R5 K15 ["getAllByTestId"]
      153 MOVE                             R6 R3
      154 CALL                             R5 1 1
      155 MOVE                             R7 R5
      156 JUMPIFNOT                        R7 ; [+6]
      157 LENGTH                           R8 R5
      158 LOADN                            R9 0
      159 JUMPIFLT                         R9 R8 ; [+2]
      161 LOADB                            R7 0 +1
      162 LOADB                            R7 1
      163 LOADK                            R9 K16 ["No results found for testId \"%*\""]
      164 MOVE                             R11 R3
      165 NAMECALL                         R9 R9 K8 ["format"]
      167 CALL                             R9 2 1
      168 MOVE                             R8 R9
      169 FASTCALL2                        ASSERT R7 R8 ; [+3]
      171 GETIMPORT                        R6 K4 [assert]
      173 CALL                             R6 2 0
      174 MOVE                             R2 R5
      175 LENGTH                           R5 R2
      176 LOADN                            R6 0
      177 JUMPIFLT                         R6 R5 ; [+2]
      179 LOADB                            R4 0 +1
      180 LOADB                            R4 1
      181 FASTCALL2K                       ASSERT R4 K17 ; [+4]
      183 LOADK                            R5 K17 ["No existing thread found in threads menu"]
      184 GETIMPORT                        R3 K4 [assert]
      186 CALL                             R3 2 0
      187 GETTABLEN                        R3 R2 1
      188 GETUPVAL                         R4 5
      189 GETTABLEKS                       R4 R4 K18 ["mouseEnter"]
      191 MOVE                             R5 R3
      192 CALL                             R4 1 0
      193 GETUPVAL                         R4 6
      194 NAMECALL                         R4 R4 K9 ["UpdateUnitTestOnly"]
      196 CALL                             R4 1 0
      197 GETUPVAL                         R4 7
      198 GETTABLEKS                       R4 R4 K10 ["Stepped"]
      200 NAMECALL                         R4 R4 K11 ["Wait"]
      202 CALL                             R4 1 0
      203 GETUPVAL                         R4 7
      204 GETTABLEKS                       R4 R4 K10 ["Stepped"]
      206 NAMECALL                         R4 R4 K11 ["Wait"]
      208 CALL                             R4 1 0
      209 GETUPVAL                         R4 1
      210 GETTABLEKS                       R4 R4 K19 ["ThreadEntry"]
      212 GETTABLEKS                       R4 R4 K20 ["OptionsButton"]
      214 MOVE                             R5 R1
      215 MOVE                             R6 R5
      216 JUMPIF                           R6 ; [+12]
      217 GETUPVAL                         R9 2
      218 JUMPIFNOTEQKNIL                  R9 ; [+2]
      220 LOADB                            R8 0 +1
      221 LOADB                            R8 1
      222 FASTCALL2K                       ASSERT R8 K2 ; [+4]
      224 LOADK                            R9 K2 ["Container not mounted, ensure render is called"]
      225 GETIMPORT                        R7 K4 [assert]
      227 CALL                             R7 2 0
      228 GETUPVAL                         R6 2
      229 MOVE                             R5 R6
      230 FASTCALL2K                       ASSERT R5 K5 ; [+5]
      232 MOVE                             R7 R5
      233 LOADK                            R8 K5 ["Query container not found"]
      234 GETIMPORT                        R6 K4 [assert]
      236 CALL                             R6 2 0
      237 GETUPVAL                         R6 3
      238 MOVE                             R7 R5
      239 CALL                             R6 1 1
      240 GETTABLEKS                       R6 R6 K6 ["getByTestId"]
      242 MOVE                             R7 R4
      243 CALL                             R6 1 1
      244 LOADK                            R10 K7 ["No result found for testId \"%*\""]
      245 MOVE                             R12 R4
      246 NAMECALL                         R10 R10 K8 ["format"]
      248 CALL                             R10 2 1
      249 MOVE                             R9 R10
      250 FASTCALL2                        ASSERT R6 R9 ; [+4]
      252 MOVE                             R8 R6
      253 GETIMPORT                        R7 K4 [assert]
      255 CALL                             R7 2 0
      256 MOVE                             R3 R6
      257 GETUPVAL                         R4 4
      258 NEWCLOSURE                       R5 P0
      259 CAPTURE                          UPVAL U5
      260 CAPTURE                          VAL R3
      261 CALL                             R4 1 0
      262 GETUPVAL                         R4 6
      263 NAMECALL                         R4 R4 K9 ["UpdateUnitTestOnly"]
      265 CALL                             R4 1 0
      266 GETUPVAL                         R4 7
      267 GETTABLEKS                       R4 R4 K10 ["Stepped"]
      269 NAMECALL                         R4 R4 K11 ["Wait"]
      271 CALL                             R4 1 0
      272 GETUPVAL                         R4 7
      273 GETTABLEKS                       R4 R4 K10 ["Stepped"]
      275 NAMECALL                         R4 R4 K11 ["Wait"]
      277 CALL                             R4 1 0
      278 LOADK                            R6 K21 ["%*--container"]
      279 GETUPVAL                         R8 1
      280 GETTABLEKS                       R8 R8 K22 ["ThreadOptionsMenu"]
      282 GETTABLEKS                       R8 R8 K13 ["Container"]
      284 NAMECALL                         R6 R6 K8 ["format"]
      286 CALL                             R6 2 1
      287 MOVE                             R5 R6
      288 LOADNIL                          R6
      289 MOVE                             R7 R6
      290 JUMPIF                           R7 ; [+12]
      291 GETUPVAL                         R10 2
      292 JUMPIFNOTEQKNIL                  R10 ; [+2]
      294 LOADB                            R9 0 +1
      295 LOADB                            R9 1
      296 FASTCALL2K                       ASSERT R9 K2 ; [+4]
      298 LOADK                            R10 K2 ["Container not mounted, ensure render is called"]
      299 GETIMPORT                        R8 K4 [assert]
      301 CALL                             R8 2 0
      302 GETUPVAL                         R7 2
      303 MOVE                             R6 R7
      304 FASTCALL2K                       ASSERT R6 K5 ; [+5]
      306 MOVE                             R8 R6
      307 LOADK                            R9 K5 ["Query container not found"]
      308 GETIMPORT                        R7 K4 [assert]
      310 CALL                             R7 2 0
      311 GETUPVAL                         R7 3
      312 MOVE                             R8 R6
      313 CALL                             R7 1 1
      314 GETTABLEKS                       R7 R7 K6 ["getByTestId"]
      316 MOVE                             R8 R5
      317 CALL                             R7 1 1
      318 LOADK                            R11 K7 ["No result found for testId \"%*\""]
      319 MOVE                             R13 R5
      320 NAMECALL                         R11 R11 K8 ["format"]
      322 CALL                             R11 2 1
      323 MOVE                             R10 R11
      324 FASTCALL2                        ASSERT R7 R10 ; [+4]
      326 MOVE                             R9 R7
      327 GETIMPORT                        R8 K4 [assert]
      329 CALL                             R8 2 0
      330 MOVE                             R4 R7
      331 GETUPVAL                         R5 8
      332 LOADK                            R7 K12 ["ThreadsMenu"]
      333 LOADK                            R8 K23 ["DeleteThread"]
      334 NAMECALL                         R5 R5 K24 ["getText"]
      336 CALL                             R5 3 1
      337 GETUPVAL                         R6 9
      338 MOVE                             R7 R5
      339 MOVE                             R8 R4
      340 DUPTABLE                         R9 K26 [{"exact"}]
      341 LOADB                            R10 1
      342 SETTABLEKS                       R10 R9 K25 ["exact"]
      344 CALL                             R6 3 1
      345 GETTABLEKS                       R7 R6 K27 ["Parent"]
      347 MOVE                             R9 R7
      348 JUMPIFNOT                        R9 ; [+4]
      349 LOADK                            R11 K28 ["GuiButton"]
      350 NAMECALL                         R9 R7 K29 ["IsA"]
      352 CALL                             R9 2 1
      353 FASTCALL2K                       ASSERT R9 K30 ; [+4]
      355 LOADK                            R10 K30 ["Parent of text object is not a GuiButton"]
      356 GETIMPORT                        R8 K4 [assert]
      358 CALL                             R8 2 0
      359 GETUPVAL                         R8 4
      360 NEWCLOSURE                       R9 P0
      361 CAPTURE                          UPVAL U5
      362 CAPTURE                          VAL R7
      363 CALL                             R8 1 0
      364 GETUPVAL                         R8 6
      365 NAMECALL                         R8 R8 K9 ["UpdateUnitTestOnly"]
      367 CALL                             R8 1 0
      368 GETUPVAL                         R8 7
      369 GETTABLEKS                       R8 R8 K10 ["Stepped"]
      371 NAMECALL                         R8 R8 K11 ["Wait"]
      373 CALL                             R8 1 0
      374 GETUPVAL                         R8 7
      375 GETTABLEKS                       R8 R8 K10 ["Stepped"]
      377 NAMECALL                         R8 R8 K11 ["Wait"]
      379 CALL                             R8 1 0
      380 RETURN                           R0 0
      381 GETUPVAL                         R1 1
      382 GETTABLEKS                       R1 R1 K0 ["Header"]
      384 GETTABLEKS                       R1 R1 K31 ["SettingsButton"]
      386 LOADNIL                          R2
      387 MOVE                             R3 R2
      388 JUMPIF                           R3 ; [+12]
      389 GETUPVAL                         R6 2
      390 JUMPIFNOTEQKNIL                  R6 ; [+2]
      392 LOADB                            R5 0 +1
      393 LOADB                            R5 1
      394 FASTCALL2K                       ASSERT R5 K2 ; [+4]
      396 LOADK                            R6 K2 ["Container not mounted, ensure render is called"]
      397 GETIMPORT                        R4 K4 [assert]
      399 CALL                             R4 2 0
      400 GETUPVAL                         R3 2
      401 MOVE                             R2 R3
      402 FASTCALL2K                       ASSERT R2 K5 ; [+5]
      404 MOVE                             R4 R2
      405 LOADK                            R5 K5 ["Query container not found"]
      406 GETIMPORT                        R3 K4 [assert]
      408 CALL                             R3 2 0
      409 GETUPVAL                         R3 3
      410 MOVE                             R4 R2
      411 CALL                             R3 1 1
      412 GETTABLEKS                       R3 R3 K6 ["getByTestId"]
      414 MOVE                             R4 R1
      415 CALL                             R3 1 1
      416 LOADK                            R7 K7 ["No result found for testId \"%*\""]
      417 MOVE                             R9 R1
      418 NAMECALL                         R7 R7 K8 ["format"]
      420 CALL                             R7 2 1
      421 MOVE                             R6 R7
      422 FASTCALL2                        ASSERT R3 R6 ; [+4]
      424 MOVE                             R5 R3
      425 GETIMPORT                        R4 K4 [assert]
      427 CALL                             R4 2 0
      428 MOVE                             R0 R3
      429 GETUPVAL                         R1 4
      430 NEWCLOSURE                       R2 P0
      431 CAPTURE                          UPVAL U5
      432 CAPTURE                          VAL R0
      433 CALL                             R1 1 0
      434 GETUPVAL                         R1 6
      435 NAMECALL                         R1 R1 K9 ["UpdateUnitTestOnly"]
      437 CALL                             R1 1 0
      438 GETUPVAL                         R1 7
      439 GETTABLEKS                       R1 R1 K10 ["Stepped"]
      441 NAMECALL                         R1 R1 K11 ["Wait"]
      443 CALL                             R1 1 0
      444 GETUPVAL                         R1 7
      445 GETTABLEKS                       R1 R1 K10 ["Stepped"]
      447 NAMECALL                         R1 R1 K11 ["Wait"]
      449 CALL                             R1 1 0
      450 GETUPVAL                         R0 8
      451 LOADK                            R2 K32 ["Settings"]
      452 LOADK                            R3 K33 ["ClearConversation"]
      453 NAMECALL                         R0 R0 K24 ["getText"]
      455 CALL                             R0 3 1
      456 GETUPVAL                         R1 3
      457 GETUPVAL                         R3 1
      458 GETTABLEKS                       R3 R3 K0 ["Header"]
      460 GETTABLEKS                       R3 R3 K34 ["SettingsContent"]
      462 LOADNIL                          R4
      463 MOVE                             R5 R4
      464 JUMPIF                           R5 ; [+12]
      465 GETUPVAL                         R8 2
      466 JUMPIFNOTEQKNIL                  R8 ; [+2]
      468 LOADB                            R7 0 +1
      469 LOADB                            R7 1
      470 FASTCALL2K                       ASSERT R7 K2 ; [+4]
      472 LOADK                            R8 K2 ["Container not mounted, ensure render is called"]
      473 GETIMPORT                        R6 K4 [assert]
      475 CALL                             R6 2 0
      476 GETUPVAL                         R5 2
      477 MOVE                             R4 R5
      478 FASTCALL2K                       ASSERT R4 K5 ; [+5]
      480 MOVE                             R6 R4
      481 LOADK                            R7 K5 ["Query container not found"]
      482 GETIMPORT                        R5 K4 [assert]
      484 CALL                             R5 2 0
      485 GETUPVAL                         R5 3
      486 MOVE                             R6 R4
      487 CALL                             R5 1 1
      488 GETTABLEKS                       R5 R5 K6 ["getByTestId"]
      490 MOVE                             R6 R3
      491 CALL                             R5 1 1
      492 LOADK                            R9 K7 ["No result found for testId \"%*\""]
      493 MOVE                             R11 R3
      494 NAMECALL                         R9 R9 K8 ["format"]
      496 CALL                             R9 2 1
      497 MOVE                             R8 R9
      498 FASTCALL2                        ASSERT R5 R8 ; [+4]
      500 MOVE                             R7 R5
      501 GETIMPORT                        R6 K4 [assert]
      503 CALL                             R6 2 0
      504 MOVE                             R2 R5
      505 CALL                             R1 1 1
      506 GETTABLEKS                       R1 R1 K35 ["findByText"]
      508 MOVE                             R2 R0
      509 CALL                             R1 1 1
      510 NAMECALL                         R1 R1 K36 ["await"]
      512 CALL                             R1 1 2
      513 FASTCALL2K                       ASSERT R2 K37 ; [+5]
      515 MOVE                             R4 R2
      516 LOADK                            R5 K37 ["Clear conversation text not found"]
      517 GETIMPORT                        R3 K4 [assert]
      519 CALL                             R3 2 0
      520 GETTABLEKS                       R3 R2 K27 ["Parent"]
      522 MOVE                             R5 R3
      523 JUMPIFNOT                        R5 ; [+4]
      524 LOADK                            R7 K28 ["GuiButton"]
      525 NAMECALL                         R5 R3 K29 ["IsA"]
      527 CALL                             R5 2 1
      528 FASTCALL2K                       ASSERT R5 K38 ; [+4]
      530 LOADK                            R6 K38 ["Clear conversation button not found"]
      531 GETIMPORT                        R4 K4 [assert]
      533 CALL                             R4 2 0
      534 GETUPVAL                         R4 4
      535 NEWCLOSURE                       R5 P0
      536 CAPTURE                          UPVAL U5
      537 CAPTURE                          VAL R3
      538 CALL                             R4 1 0
      539 GETUPVAL                         R4 6
      540 NAMECALL                         R4 R4 K9 ["UpdateUnitTestOnly"]
      542 CALL                             R4 1 0
      543 GETUPVAL                         R4 7
      544 GETTABLEKS                       R4 R4 K10 ["Stepped"]
      546 NAMECALL                         R4 R4 K11 ["Wait"]
      548 CALL                             R4 1 0
      549 GETUPVAL                         R4 7
      550 GETTABLEKS                       R4 R4 K10 ["Stepped"]
      552 NAMECALL                         R4 R4 K11 ["Wait"]
      554 CALL                             R4 1 0
      555 RETURN                           R0 0

PROTO_111:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["wasToolInvoked"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_112:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_113:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["overrideMethod"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_114:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getClientObject"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_115:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getClientObject"]
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

PROTO_116:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getClientObject"]
        3 CALL                             R0 0 1
        4 NAMECALL                         R1 R0 K1 ["close"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_117:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getToolAlias"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_118:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["wasRequestHandlerCalled"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_119:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getLastRequestHandlerBody"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 GETTABLE                         R2 R1 R0
        6 JUMPIF                           R2 ; [+1]
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_120:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setInputOverride"]
        3 DUPTABLE                         R1 K3 [{"overrideText", "iconType"}]
        4 GETUPVAL                         R2 1
        5 SETTABLEKS                       R2 R1 K1 ["overrideText"]
        7 GETUPVAL                         R3 2
        8 JUMPIFNOT                        R3 ; [+4]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R2 R2 K2 ["iconType"]
       12 JUMPIF                           R2 ; [+5]
       13 GETUPVAL                         R2 3
       14 GETTABLEKS                       R2 R2 K4 ["InputIconTypes"]
       16 GETTABLEKS                       R2 R2 K5 ["Error"]
       18 SETTABLEKS                       R2 R1 K2 ["iconType"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_121:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 LOADK                            R3 K0 ["GuiObject"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_122:
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
       11 GETUPVAL                         R2 4
       12 GETTABLEKS                       R2 R2 K1 ["Stepped"]
       14 NAMECALL                         R2 R2 K2 ["Wait"]
       16 CALL                             R2 1 0
       17 GETUPVAL                         R2 4
       18 GETTABLEKS                       R2 R2 K1 ["Stepped"]
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

PROTO_123:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setInputOverride"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_124:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_125:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ProviderCheckbox"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K5 ["getByTestId"]
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

PROTO_126:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 3
        7 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 4
       11 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       13 NAMECALL                         R1 R1 K2 ["Wait"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       19 NAMECALL                         R1 R1 K2 ["Wait"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_127:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ProviderCheckbox"]
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
       28 GETUPVAL                         R5 2
       29 MOVE                             R6 R4
       30 CALL                             R5 1 1
       31 GETTABLEKS                       R5 R5 K5 ["getByTestId"]
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
       99 GETUPVAL                         R4 4
      100 GETTABLEKS                       R4 R4 K19 ["Stepped"]
      102 NAMECALL                         R4 R4 K20 ["Wait"]
      104 CALL                             R4 1 0
      105 GETUPVAL                         R4 4
      106 GETTABLEKS                       R4 R4 K19 ["Stepped"]
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

PROTO_128:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getSecureSettingsAsync"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["ASSISTANT_PROVIDER_SETTINGS"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["getCheckboxSettingsKeyForProvider"]
       10 MOVE                             R3 R0
       11 CALL                             R2 1 1
       12 LOADB                            R3 0
       13 JUMPIFEQKNIL                     R2 ; [+6]
       15 GETTABLE                         R4 R1 R2
       16 JUMPIFEQKS                       R4 K3 ["true"] ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 RETURN                           R3 1

PROTO_129:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ModelPicker"]
        3 GETTABLEKS                       R1 R1 K1 ["Container"]
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
       28 GETUPVAL                         R3 2
       29 MOVE                             R4 R2
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R3 R3 K6 ["getByTestId"]
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

PROTO_130:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ModelPicker"]
        3 GETTABLEKS                       R1 R1 K1 ["Container"]
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
       28 GETUPVAL                         R3 2
       29 MOVE                             R4 R2
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R3 R3 K6 ["getByTestId"]
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
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R2 R2 K0 ["ModelPicker"]
       51 GETTABLEKS                       R2 R2 K9 ["Dropdown"]
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
       76 GETUPVAL                         R4 2
       77 MOVE                             R5 R3
       78 CALL                             R4 1 1
       79 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
      134 GETUPVAL                         R3 3
      135 GETTABLEKS                       R3 R3 K21 ["DEFAULT_STUDIO_MODEL"]
      137 RETURN                           R3 1

PROTO_131:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 3
        7 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 4
       11 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       13 NAMECALL                         R1 R1 K2 ["Wait"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       19 NAMECALL                         R1 R1 K2 ["Wait"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

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
       10 GETUPVAL                         R1 4
       11 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       13 NAMECALL                         R1 R1 K2 ["Wait"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       19 NAMECALL                         R1 R1 K2 ["Wait"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_133:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ModelPicker"]
        3 GETTABLEKS                       R2 R2 K1 ["Container"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K0 ["ModelPicker"]
       51 GETTABLEKS                       R3 R3 K9 ["Dropdown"]
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
       76 GETUPVAL                         R5 2
       77 MOVE                             R6 R4
       78 CALL                             R5 1 1
       79 GETTABLEKS                       R5 R5 K6 ["getByTestId"]
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
      157 GETUPVAL                         R7 4
      158 GETTABLEKS                       R7 R7 K23 ["Stepped"]
      160 NAMECALL                         R7 R7 K24 ["Wait"]
      162 CALL                             R7 1 0
      163 GETUPVAL                         R7 4
      164 GETTABLEKS                       R7 R7 K23 ["Stepped"]
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
      177 GETUPVAL                         R4 2
      178 GETUPVAL                         R8 1
      179 JUMPIFNOTEQKNIL                  R8 ; [+2]
      181 LOADB                            R7 0 +1
      182 LOADB                            R7 1
      183 FASTCALL2K                       ASSERT R7 K2 ; [+4]
      185 LOADK                            R8 K2 ["Container not mounted, ensure render is called"]
      186 GETIMPORT                        R6 K4 [assert]
      188 CALL                             R6 2 0
      189 GETUPVAL                         R5 1
      190 CALL                             R4 1 1
      191 GETTABLEKS                       R4 R4 K25 ["queryByText"]
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

PROTO_134:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputArea"]
        3 GETTABLEKS                       R1 R1 K1 ["Footer"]
        5 GETTABLEKS                       R1 R1 K2 ["Container"]
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
       30 GETUPVAL                         R3 2
       31 MOVE                             R4 R2
       32 CALL                             R3 1 1
       33 GETTABLEKS                       R3 R3 K7 ["getByTestId"]
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

PROTO_135:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["InputArea"]
        3 GETTABLEKS                       R2 R2 K1 ["Footer"]
        5 GETTABLEKS                       R2 R2 K2 ["Container"]
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
       30 GETUPVAL                         R4 2
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R4 R4 K7 ["getByTestId"]
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
       50 GETUPVAL                         R3 2
       51 MOVE                             R4 R1
       52 CALL                             R3 1 1
       53 GETTABLEKS                       R3 R3 K10 ["queryByText"]
       55 MOVE                             R4 R0
       56 CALL                             R3 1 1
       57 JUMPIFNOTEQKNIL                  R3 ; [+2]
       59 LOADB                            R2 0 +1
       60 LOADB                            R2 1
       61 RETURN                           R2 1

PROTO_136:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputArea"]
        3 GETTABLEKS                       R1 R1 K1 ["Footer"]
        5 GETTABLEKS                       R1 R1 K2 ["Container"]
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
       30 GETUPVAL                         R3 2
       31 MOVE                             R4 R2
       32 CALL                             R3 1 1
       33 GETTABLEKS                       R3 R3 K7 ["getByTestId"]
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
       50 GETUPVAL                         R2 0
       51 GETTABLEKS                       R2 R2 K0 ["InputArea"]
       53 GETTABLEKS                       R2 R2 K1 ["Footer"]
       55 GETTABLEKS                       R2 R2 K10 ["Icon"]
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
       80 GETUPVAL                         R4 2
       81 MOVE                             R5 R3
       82 CALL                             R4 1 1
       83 GETTABLEKS                       R4 R4 K11 ["queryByTestId"]
       85 MOVE                             R5 R2
       86 CALL                             R4 1 1
       87 MOVE                             R1 R4
       88 JUMPIFNOTEQKNIL                  R1 ; [+2]
       90 LOADB                            R2 0 +1
       91 LOADB                            R2 1
       92 RETURN                           R2 1

PROTO_137:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 GETIMPORT                        R1 K2 [game]
        5 LOADK                            R3 K3 ["data-testid=%*"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K4 ["ToolMenuView"]
        9 GETTABLEKS                       R5 R5 K5 ["Container"]
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

PROTO_138:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ServerManagement"]
        3 GETTABLEKS                       R1 R1 K1 ["Button"]
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
       28 GETUPVAL                         R3 2
       29 MOVE                             R4 R2
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R3 R3 K6 ["getByTestId"]
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
       57 GETUPVAL                         R1 6
       58 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       60 NAMECALL                         R1 R1 K11 ["Wait"]
       62 CALL                             R1 1 0
       63 GETUPVAL                         R1 6
       64 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       66 NAMECALL                         R1 R1 K11 ["Wait"]
       68 CALL                             R1 1 0
       69 RETURN                           R0 0

PROTO_139:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
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
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K5 ["IntegrationMenu"]
       19 GETTABLEKS                       R5 R5 K6 ["AddIntegrationDialog"]
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

PROTO_140:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
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
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K5 ["IntegrationItem"]
       19 GETTABLEKS                       R5 R5 K6 ["Dialog"]
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

PROTO_141:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
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
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K5 ["IntegrationMenu"]
       19 GETTABLEKS                       R5 R5 K6 ["EmptyState"]
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

PROTO_142:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Skills"]
        3 GETTABLEKS                       R1 R1 K1 ["TabContent"]
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
       28 GETUPVAL                         R3 2
       29 MOVE                             R4 R2
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R3 R3 K6 ["getByTestId"]
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

PROTO_143:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Skills"]
        3 GETTABLEKS                       R1 R1 K1 ["PersonalGroup"]
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
       28 GETUPVAL                         R3 2
       29 MOVE                             R4 R2
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R3 R3 K6 ["getByTestId"]
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

PROTO_144:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Skills"]
        3 GETTABLEKS                       R1 R1 K1 ["RobloxGroup"]
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
       28 GETUPVAL                         R3 2
       29 MOVE                             R4 R2
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R3 R3 K6 ["getByTestId"]
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

PROTO_145:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Skills"]
        3 GETTABLEKS                       R2 R2 K1 ["Row"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 2
        7 MOVE                             R4 R3
        8 JUMPIF                           R4 ; [+12]
        9 GETUPVAL                         R7 1
       10 JUMPIFNOTEQKNIL                  R7 ; [+2]
       12 LOADB                            R6 0 +1
       13 LOADB                            R6 1
       14 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       16 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       17 GETIMPORT                        R5 K4 [assert]
       19 CALL                             R5 2 0
       20 GETUPVAL                         R4 1
       21 MOVE                             R3 R4
       22 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       24 MOVE                             R5 R3
       25 LOADK                            R6 K5 ["Query container not found"]
       26 GETIMPORT                        R4 K4 [assert]
       28 CALL                             R4 2 0
       29 GETUPVAL                         R4 2
       30 MOVE                             R5 R3
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
       34 MOVE                             R5 R2
       35 CALL                             R4 1 1
       36 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R10 R2
       38 NAMECALL                         R8 R8 K8 ["format"]
       40 CALL                             R8 2 1
       41 MOVE                             R7 R8
       42 FASTCALL2                        ASSERT R4 R7 ; [+4]
       44 MOVE                             R6 R4
       45 GETIMPORT                        R5 K4 [assert]
       47 CALL                             R5 2 0
       48 MOVE                             R1 R4
       49 RETURN                           R1 1

PROTO_146:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Skills"]
        3 GETTABLEKS                       R2 R2 K1 ["Row"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 2
        7 MOVE                             R4 R3
        8 JUMPIF                           R4 ; [+12]
        9 GETUPVAL                         R7 1
       10 JUMPIFNOTEQKNIL                  R7 ; [+2]
       12 LOADB                            R6 0 +1
       13 LOADB                            R6 1
       14 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       16 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       17 GETIMPORT                        R5 K4 [assert]
       19 CALL                             R5 2 0
       20 GETUPVAL                         R4 1
       21 MOVE                             R3 R4
       22 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       24 MOVE                             R5 R3
       25 LOADK                            R6 K5 ["Query container not found"]
       26 GETIMPORT                        R4 K4 [assert]
       28 CALL                             R4 2 0
       29 GETUPVAL                         R4 2
       30 MOVE                             R5 R3
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R4 R4 K6 ["queryByTestId"]
       34 MOVE                             R5 R2
       35 CALL                             R4 1 1
       36 MOVE                             R1 R4
       37 RETURN                           R1 1

PROTO_147:
        0 LOADK                            R3 K0 ["Header"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 MOVE                             R3 R1
        5 JUMPIFNOT                        R3 ; [+4]
        6 LOADK                            R5 K2 ["GuiObject"]
        7 NAMECALL                         R3 R1 K3 ["IsA"]
        9 CALL                             R3 2 1
       10 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       12 LOADK                            R4 K4 ["Skills group header not found"]
       13 GETIMPORT                        R2 K6 [assert]
       15 CALL                             R2 2 0
       16 GETUPVAL                         R2 0
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R1
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 2
       22 NAMECALL                         R2 R2 K7 ["UpdateUnitTestOnly"]
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K8 ["Stepped"]
       28 NAMECALL                         R2 R2 K9 ["Wait"]
       30 CALL                             R2 1 0
       31 GETUPVAL                         R2 3
       32 GETTABLEKS                       R2 R2 K8 ["Stepped"]
       34 NAMECALL                         R2 R2 K9 ["Wait"]
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_148:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Skills"]
        3 GETTABLEKS                       R2 R2 K1 ["Row"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 2
        7 MOVE                             R4 R3
        8 JUMPIF                           R4 ; [+12]
        9 GETUPVAL                         R7 1
       10 JUMPIFNOTEQKNIL                  R7 ; [+2]
       12 LOADB                            R6 0 +1
       13 LOADB                            R6 1
       14 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       16 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       17 GETIMPORT                        R5 K4 [assert]
       19 CALL                             R5 2 0
       20 GETUPVAL                         R4 1
       21 MOVE                             R3 R4
       22 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       24 MOVE                             R5 R3
       25 LOADK                            R6 K5 ["Query container not found"]
       26 GETIMPORT                        R4 K4 [assert]
       28 CALL                             R4 2 0
       29 GETUPVAL                         R4 2
       30 MOVE                             R5 R3
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
       34 MOVE                             R5 R2
       35 CALL                             R4 1 1
       36 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R10 R2
       38 NAMECALL                         R8 R8 K8 ["format"]
       40 CALL                             R8 2 1
       41 MOVE                             R7 R8
       42 FASTCALL2                        ASSERT R4 R7 ; [+4]
       44 MOVE                             R6 R4
       45 GETIMPORT                        R5 K4 [assert]
       47 CALL                             R5 2 0
       48 MOVE                             R1 R4
       49 GETUPVAL                         R2 3
       50 NEWCLOSURE                       R3 P0
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R1
       53 CALL                             R2 1 0
       54 GETUPVAL                         R2 5
       55 NAMECALL                         R2 R2 K9 ["UpdateUnitTestOnly"]
       57 CALL                             R2 1 0
       58 GETUPVAL                         R2 6
       59 GETTABLEKS                       R2 R2 K10 ["Stepped"]
       61 NAMECALL                         R2 R2 K11 ["Wait"]
       63 CALL                             R2 1 0
       64 GETUPVAL                         R2 6
       65 GETTABLEKS                       R2 R2 K10 ["Stepped"]
       67 NAMECALL                         R2 R2 K11 ["Wait"]
       69 CALL                             R2 1 0
       70 RETURN                           R0 0

PROTO_149:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Skills"]
        3 GETTABLEKS                       R1 R1 K1 ["RefreshButton"]
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
       28 GETUPVAL                         R3 2
       29 MOVE                             R4 R2
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R3 R3 K6 ["getByTestId"]
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
       57 GETUPVAL                         R1 6
       58 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       60 NAMECALL                         R1 R1 K11 ["Wait"]
       62 CALL                             R1 1 0
       63 GETUPVAL                         R1 6
       64 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       66 NAMECALL                         R1 R1 K11 ["Wait"]
       68 CALL                             R1 1 0
       69 RETURN                           R0 0

PROTO_150:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Skills"]
        3 GETTABLEKS                       R1 R1 K1 ["DetailPane"]
        5 GETTABLEKS                       R1 R1 K2 ["Container"]
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
       30 GETUPVAL                         R3 2
       31 MOVE                             R4 R2
       32 CALL                             R3 1 1
       33 GETTABLEKS                       R3 R3 K7 ["getByTestId"]
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

PROTO_151:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Skills"]
        3 GETTABLEKS                       R1 R1 K1 ["DetailPane"]
        5 GETTABLEKS                       R1 R1 K2 ["Container"]
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
       30 GETUPVAL                         R3 2
       31 MOVE                             R4 R2
       32 CALL                             R3 1 1
       33 GETTABLEKS                       R3 R3 K7 ["queryByTestId"]
       35 MOVE                             R4 R1
       36 CALL                             R3 1 1
       37 MOVE                             R0 R3
       38 RETURN                           R0 1

PROTO_152:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Skills"]
        3 GETTABLEKS                       R1 R1 K1 ["DetailPane"]
        5 GETTABLEKS                       R1 R1 K2 ["Empty"]
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
       30 GETUPVAL                         R3 2
       31 MOVE                             R4 R2
       32 CALL                             R3 1 1
       33 GETTABLEKS                       R3 R3 K7 ["queryByTestId"]
       35 MOVE                             R4 R1
       36 CALL                             R3 1 1
       37 MOVE                             R0 R3
       38 RETURN                           R0 1

PROTO_153:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Skills"]
        3 GETTABLEKS                       R1 R1 K1 ["DetailPane"]
        5 GETTABLEKS                       R1 R1 K2 ["OpenButton"]
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
       30 GETUPVAL                         R3 2
       31 MOVE                             R4 R2
       32 CALL                             R3 1 1
       33 GETTABLEKS                       R3 R3 K7 ["getByTestId"]
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

PROTO_154:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Skills"]
        3 GETTABLEKS                       R1 R1 K1 ["DetailPane"]
        5 GETTABLEKS                       R1 R1 K2 ["DuplicateButton"]
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
       30 GETUPVAL                         R3 2
       31 MOVE                             R4 R2
       32 CALL                             R3 1 1
       33 GETTABLEKS                       R3 R3 K7 ["getByTestId"]
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

PROTO_155:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Skills"]
        3 GETTABLEKS                       R1 R1 K1 ["DetailPane"]
        5 GETTABLEKS                       R1 R1 K2 ["SourceUri"]
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
       30 GETUPVAL                         R3 2
       31 MOVE                             R4 R2
       32 CALL                             R3 1 1
       33 GETTABLEKS                       R3 R3 K7 ["getByTestId"]
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

PROTO_156:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Skills"]
        3 GETTABLEKS                       R1 R1 K1 ["DetailPane"]
        5 GETTABLEKS                       R1 R1 K2 ["OpenButton"]
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
       30 GETUPVAL                         R3 2
       31 MOVE                             R4 R2
       32 CALL                             R3 1 1
       33 GETTABLEKS                       R3 R3 K7 ["getByTestId"]
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
       50 GETUPVAL                         R1 3
       51 NEWCLOSURE                       R2 P0
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          VAL R0
       54 CALL                             R1 1 0
       55 GETUPVAL                         R1 5
       56 NAMECALL                         R1 R1 K10 ["UpdateUnitTestOnly"]
       58 CALL                             R1 1 0
       59 GETUPVAL                         R1 6
       60 GETTABLEKS                       R1 R1 K11 ["Stepped"]
       62 NAMECALL                         R1 R1 K12 ["Wait"]
       64 CALL                             R1 1 0
       65 GETUPVAL                         R1 6
       66 GETTABLEKS                       R1 R1 K11 ["Stepped"]
       68 NAMECALL                         R1 R1 K12 ["Wait"]
       70 CALL                             R1 1 0
       71 RETURN                           R0 0

PROTO_157:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["APIKey"]
        3 GETTABLEKS                       R1 R1 K1 ["EditButton"]
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
       30 GETUPVAL                         R4 2
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       84 GETUPVAL                         R5 4
       85 GETTABLEKS                       R5 R5 K18 ["Stepped"]
       87 NAMECALL                         R5 R5 K19 ["Wait"]
       89 CALL                             R5 1 0
       90 GETUPVAL                         R5 4
       91 GETTABLEKS                       R5 R5 K18 ["Stepped"]
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
      105 GETUPVAL                         R3 4
      106 GETTABLEKS                       R3 R3 K18 ["Stepped"]
      108 NAMECALL                         R3 R3 K19 ["Wait"]
      110 CALL                             R3 1 0
      111 GETUPVAL                         R3 4
      112 GETTABLEKS                       R3 R3 K18 ["Stepped"]
      114 NAMECALL                         R3 R3 K19 ["Wait"]
      116 CALL                             R3 1 0
      117 RETURN                           R0 0

PROTO_158:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["APIKey"]
        3 GETTABLEKS                       R1 R1 K1 ["SaveButton"]
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
       30 GETUPVAL                         R4 2
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       84 GETUPVAL                         R5 4
       85 GETTABLEKS                       R5 R5 K18 ["Stepped"]
       87 NAMECALL                         R5 R5 K19 ["Wait"]
       89 CALL                             R5 1 0
       90 GETUPVAL                         R5 4
       91 GETTABLEKS                       R5 R5 K18 ["Stepped"]
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
      105 GETUPVAL                         R3 4
      106 GETTABLEKS                       R3 R3 K18 ["Stepped"]
      108 NAMECALL                         R3 R3 K19 ["Wait"]
      110 CALL                             R3 1 0
      111 GETUPVAL                         R3 4
      112 GETTABLEKS                       R3 R3 K18 ["Stepped"]
      114 NAMECALL                         R3 R3 K19 ["Wait"]
      116 CALL                             R3 1 0
      117 RETURN                           R0 0

PROTO_159:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["APIKey"]
        3 GETTABLEKS                       R1 R1 K1 ["CancelButton"]
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
       30 GETUPVAL                         R4 2
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       84 GETUPVAL                         R5 4
       85 GETTABLEKS                       R5 R5 K18 ["Stepped"]
       87 NAMECALL                         R5 R5 K19 ["Wait"]
       89 CALL                             R5 1 0
       90 GETUPVAL                         R5 4
       91 GETTABLEKS                       R5 R5 K18 ["Stepped"]
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
      105 GETUPVAL                         R3 4
      106 GETTABLEKS                       R3 R3 K18 ["Stepped"]
      108 NAMECALL                         R3 R3 K19 ["Wait"]
      110 CALL                             R3 1 0
      111 GETUPVAL                         R3 4
      112 GETTABLEKS                       R3 R3 K18 ["Stepped"]
      114 NAMECALL                         R3 R3 K19 ["Wait"]
      116 CALL                             R3 1 0
      117 RETURN                           R0 0

PROTO_160:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["APIKey"]
        3 GETTABLEKS                       R1 R1 K1 ["Input"]
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
       30 GETUPVAL                         R4 2
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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

PROTO_161:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["change"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K2 [{"target"}]
        5 DUPTABLE                         R3 K4 [{"Text"}]
        6 GETUPVAL                         R4 2
        7 SETTABLEKS                       R4 R3 K3 ["Text"]
        9 SETTABLEKS                       R3 R2 K1 ["target"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_162:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["APIKey"]
        3 GETTABLEKS                       R2 R2 K1 ["Input"]
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
       30 GETUPVAL                         R5 2
       31 MOVE                             R6 R4
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R5 R5 K6 ["getByTestId"]
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
       84 GETUPVAL                         R6 4
       85 GETTABLEKS                       R6 R6 K18 ["Stepped"]
       87 NAMECALL                         R6 R6 K19 ["Wait"]
       89 CALL                             R6 1 0
       90 GETUPVAL                         R6 4
       91 GETTABLEKS                       R6 R6 K18 ["Stepped"]
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
      115 GETUPVAL                         R9 4
      116 GETTABLEKS                       R9 R9 K18 ["Stepped"]
      118 NAMECALL                         R9 R9 K19 ["Wait"]
      120 CALL                             R9 1 0
      121 GETUPVAL                         R9 4
      122 GETTABLEKS                       R9 R9 K18 ["Stepped"]
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

PROTO_163:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["APIKey"]
        3 GETTABLEKS                       R1 R1 K1 ["Display"]
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
       30 GETUPVAL                         R4 2
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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

PROTO_164:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getSecureSettingsAsync"]
        3 LOADK                            R2 K1 ["ProviderKeys"]
        4 CALL                             R1 1 1
        5 GETTABLE                         R2 R1 R0
        6 RETURN                           R2 1

PROTO_165:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["IntegrationItem"]
        3 GETTABLEKS                       R1 R1 K1 ["Actions"]
        5 GETTABLEKS                       R1 R1 K2 ["Toggle"]
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
       30 GETUPVAL                         R4 2
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R4 R4 K7 ["getByTestId"]
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
       59 GETUPVAL                         R3 6
       60 GETTABLEKS                       R3 R3 K11 ["Stepped"]
       62 NAMECALL                         R3 R3 K12 ["Wait"]
       64 CALL                             R3 1 0
       65 GETUPVAL                         R3 6
       66 GETTABLEKS                       R3 R3 K11 ["Stepped"]
       68 NAMECALL                         R3 R3 K12 ["Wait"]
       70 CALL                             R3 1 0
       71 RETURN                           R0 0

PROTO_166:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R2 R2 K0 ["getByText"]
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
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K6 ["firstAncestorWithTag"]
       22 MOVE                             R4 R2
       23 LOADK                            R6 K7 ["data-testid=%*"]
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R8 R8 K8 ["IntegrationItem"]
       27 GETTABLEKS                       R8 R8 K9 ["Header"]
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

PROTO_167:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["IntegrationItem"]
        3 GETTABLEKS                       R1 R1 K1 ["Actions"]
        5 GETTABLEKS                       R1 R1 K2 ["OverflowButton"]
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
       30 GETUPVAL                         R4 2
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R4 R4 K7 ["getByTestId"]
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
       59 GETUPVAL                         R3 6
       60 GETTABLEKS                       R3 R3 K11 ["Stepped"]
       62 NAMECALL                         R3 R3 K12 ["Wait"]
       64 CALL                             R3 1 0
       65 GETUPVAL                         R3 6
       66 GETTABLEKS                       R3 R3 K11 ["Stepped"]
       68 NAMECALL                         R3 R3 K12 ["Wait"]
       70 CALL                             R3 1 0
       71 RETURN                           R0 0

PROTO_168:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["IntegrationItem"]
        3 GETTABLEKS                       R0 R0 K1 ["Actions"]
        5 GETTABLEKS                       R0 R0 K2 ["OverflowContent"]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["queryAll"]
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

PROTO_169:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Alert"]
        3 GETTABLEKS                       R2 R2 K1 ["Close"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       82 GETUPVAL                         R4 4
       83 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R4 4
       89 GETTABLEKS                       R4 R4 K18 ["Stepped"]
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
      103 GETUPVAL                         R2 4
      104 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R2 4
      110 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_170:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Alert"]
        3 GETTABLEKS                       R2 R2 K1 ["Continue"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       82 GETUPVAL                         R4 4
       83 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R4 4
       89 GETTABLEKS                       R4 R4 K18 ["Stepped"]
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
      103 GETUPVAL                         R2 4
      104 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R2 4
      110 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_171:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ToolConfirmation"]
        3 GETTABLEKS                       R2 R2 K1 ["Accept"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       82 GETUPVAL                         R4 4
       83 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R4 4
       89 GETTABLEKS                       R4 R4 K18 ["Stepped"]
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
      103 GETUPVAL                         R2 4
      104 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R2 4
      110 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_172:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ToolConfirmation"]
        3 GETTABLEKS                       R2 R2 K1 ["Reject"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       82 GETUPVAL                         R4 4
       83 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R4 4
       89 GETTABLEKS                       R4 R4 K18 ["Stepped"]
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
      103 GETUPVAL                         R2 4
      104 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R2 4
      110 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_173:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ToolConfirmation"]
        3 GETTABLEKS                       R2 R2 K1 ["AlwaysAccept"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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

PROTO_174:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ToolConfirmation"]
        3 GETTABLEKS                       R2 R2 K1 ["AlwaysAccept"]
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
       28 GETUPVAL                         R4 2
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
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
       82 GETUPVAL                         R4 4
       83 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       85 NAMECALL                         R4 R4 K19 ["Wait"]
       87 CALL                             R4 1 0
       88 GETUPVAL                         R4 4
       89 GETTABLEKS                       R4 R4 K18 ["Stepped"]
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
      103 GETUPVAL                         R2 4
      104 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      106 NAMECALL                         R2 R2 K19 ["Wait"]
      108 CALL                             R2 1 0
      109 GETUPVAL                         R2 4
      110 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      112 NAMECALL                         R2 R2 K19 ["Wait"]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0

PROTO_175:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getProcessEvent"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_176:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 2
        6 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       12 NAMECALL                         R1 R1 K2 ["Wait"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       18 NAMECALL                         R1 R1 K2 ["Wait"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_177:
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
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K12 ["Stepped"]
       36 NAMECALL                         R4 R4 K13 ["Wait"]
       38 CALL                             R4 1 0
       39 GETUPVAL                         R4 3
       40 GETTABLEKS                       R4 R4 K12 ["Stepped"]
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
       68 GETUPVAL                         R5 3
       69 GETTABLEKS                       R5 R5 K12 ["Stepped"]
       71 NAMECALL                         R5 R5 K13 ["Wait"]
       73 CALL                             R5 1 0
       74 GETUPVAL                         R5 3
       75 GETTABLEKS                       R5 R5 K12 ["Stepped"]
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
       95 GETUPVAL                         R6 3
       96 GETTABLEKS                       R6 R6 K12 ["Stepped"]
       98 NAMECALL                         R6 R6 K13 ["Wait"]
      100 CALL                             R6 1 0
      101 GETUPVAL                         R6 3
      102 GETTABLEKS                       R6 R6 K12 ["Stepped"]
      104 NAMECALL                         R6 R6 K13 ["Wait"]
      106 CALL                             R6 1 0
      107 RETURN                           R0 0

PROTO_178:
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
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R3 R3 K8 ["Stepped"]
       26 NAMECALL                         R3 R3 K9 ["Wait"]
       28 CALL                             R3 1 0
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R3 R3 K8 ["Stepped"]
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
       58 GETUPVAL                         R4 3
       59 GETTABLEKS                       R4 R4 K8 ["Stepped"]
       61 NAMECALL                         R4 R4 K9 ["Wait"]
       63 CALL                             R4 1 0
       64 GETUPVAL                         R4 3
       65 GETTABLEKS                       R4 R4 K8 ["Stepped"]
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
       85 GETUPVAL                         R5 3
       86 GETTABLEKS                       R5 R5 K8 ["Stepped"]
       88 NAMECALL                         R5 R5 K9 ["Wait"]
       90 CALL                             R5 1 0
       91 GETUPVAL                         R5 3
       92 GETTABLEKS                       R5 R5 K8 ["Stepped"]
       94 NAMECALL                         R5 R5 K9 ["Wait"]
       96 CALL                             R5 1 0
       97 RETURN                           R0 0

PROTO_179:
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
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K4 ["Stepped"]
       16 NAMECALL                         R1 R1 K5 ["Wait"]
       18 CALL                             R1 1 0
       19 GETUPVAL                         R1 3
       20 GETTABLEKS                       R1 R1 K4 ["Stepped"]
       22 NAMECALL                         R1 R1 K5 ["Wait"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_180:
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
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K7 ["Stepped"]
       21 NAMECALL                         R2 R2 K8 ["Wait"]
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 3
       25 GETTABLEKS                       R2 R2 K7 ["Stepped"]
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
       43 GETUPVAL                         R2 3
       44 GETTABLEKS                       R2 R2 K7 ["Stepped"]
       46 NAMECALL                         R2 R2 K8 ["Wait"]
       48 CALL                             R2 1 0
       49 GETUPVAL                         R2 3
       50 GETTABLEKS                       R2 R2 K7 ["Stepped"]
       52 NAMECALL                         R2 R2 K8 ["Wait"]
       54 CALL                             R2 1 0
       55 RETURN                           R0 0

PROTO_181:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["spyOn"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["EventLogger"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_182:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 GETTABLEKS                       R3 R3 K0 ["getByText"]
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
       31 GETUPVAL                         R4 4
       32 GETTABLEKS                       R4 R4 K7 ["Stepped"]
       34 NAMECALL                         R4 R4 K8 ["Wait"]
       36 CALL                             R4 1 0
       37 GETUPVAL                         R4 4
       38 GETTABLEKS                       R4 R4 K7 ["Stepped"]
       40 NAMECALL                         R4 R4 K8 ["Wait"]
       42 CALL                             R4 1 0
       43 RETURN                           R0 0

PROTO_183:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SlashCommandMenu"]
        3 GETTABLEKS                       R1 R1 K1 ["Container"]
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
       28 GETUPVAL                         R3 2
       29 MOVE                             R4 R2
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R3 R3 K6 ["getByTestId"]
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

PROTO_184:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["SlashCommandMenu"]
        3 GETTABLEKS                       R2 R2 K1 ["Item"]
        5 GETTABLEKS                       R2 R2 K2 ["Container"]
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
       30 GETUPVAL                         R4 2
       31 MOVE                             R5 R3
       32 CALL                             R4 1 1
       33 GETTABLEKS                       R4 R4 K7 ["getAllByTestId"]
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
       63 GETUPVAL                         R9 0
       64 GETTABLEKS                       R9 R9 K0 ["SlashCommandMenu"]
       66 GETTABLEKS                       R9 R9 K1 ["Item"]
       68 GETTABLEKS                       R9 R9 K10 ["Command"]
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
       93 GETUPVAL                         R11 2
       94 MOVE                             R12 R10
       95 CALL                             R11 1 1
       96 GETTABLEKS                       R11 R11 K11 ["getByTestId"]
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

PROTO_185:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setOptions"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_186:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_187:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["get"]
        4 GETIMPORT                        R4 K2 [game]
        6 LOADK                            R6 K3 ["data-testid=%*"]
        7 GETUPVAL                         R8 2
        8 GETTABLEKS                       R8 R8 K4 ["ToolMenuView"]
       10 GETTABLEKS                       R8 R8 K5 ["Container"]
       12 NAMECALL                         R6 R6 K6 ["format"]
       14 CALL                             R6 2 1
       15 MOVE                             R5 R6
       16 CALL                             R3 2 1
       17 MOVE                             R5 R3
       18 JUMPIFNOT                        R5 ; [+4]
       19 LOADK                            R7 K7 ["GuiObject"]
       20 NAMECALL                         R5 R3 K8 ["IsA"]
       22 CALL                             R5 2 1
       23 FASTCALL2K                       ASSERT R5 K9 ; [+4]
       25 LOADK                            R6 K9 ["ToolMenuView not found"]
       26 GETIMPORT                        R4 K11 [assert]
       28 CALL                             R4 2 0
       29 MOVE                             R2 R3
       30 CALL                             R1 1 1
       31 GETTABLEKS                       R1 R1 K12 ["getByText"]
       33 MOVE                             R2 R0
       34 CALL                             R1 1 1
       35 FASTCALL2K                       ASSERT R1 K13 ; [+5]
       37 MOVE                             R3 R1
       38 LOADK                            R4 K13 ["Option not found"]
       39 GETIMPORT                        R2 K11 [assert]
       41 CALL                             R2 2 0
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R2 R2 K14 ["firstAncestorWithTag"]
       45 MOVE                             R3 R1
       46 LOADK                            R5 K3 ["data-testid=%*"]
       47 GETUPVAL                         R7 2
       48 GETTABLEKS                       R7 R7 K4 ["ToolMenuView"]
       50 GETTABLEKS                       R7 R7 K15 ["Option"]
       52 GETTABLEKS                       R7 R7 K5 ["Container"]
       54 NAMECALL                         R5 R5 K6 ["format"]
       56 CALL                             R5 2 1
       57 MOVE                             R4 R5
       58 CALL                             R2 2 1
       59 FASTCALL2K                       ASSERT R2 K16 ; [+5]
       61 MOVE                             R4 R2
       62 LOADK                            R5 K16 ["Option container not found"]
       63 GETIMPORT                        R3 K11 [assert]
       65 CALL                             R3 2 0
       66 GETUPVAL                         R3 1
       67 GETTABLEKS                       R3 R3 K0 ["get"]
       69 MOVE                             R4 R2
       70 LOADK                            R6 K3 ["data-testid=%*"]
       71 GETUPVAL                         R8 2
       72 GETTABLEKS                       R8 R8 K4 ["ToolMenuView"]
       74 GETTABLEKS                       R8 R8 K15 ["Option"]
       76 GETTABLEKS                       R8 R8 K17 ["Checkbox"]
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
      109 GETUPVAL                         R4 6
      110 GETTABLEKS                       R4 R4 K21 ["Stepped"]
      112 NAMECALL                         R4 R4 K22 ["Wait"]
      114 CALL                             R4 1 0
      115 GETUPVAL                         R4 6
      116 GETTABLEKS                       R4 R4 K21 ["Stepped"]
      118 NAMECALL                         R4 R4 K22 ["Wait"]
      120 CALL                             R4 1 0
      121 RETURN                           R0 0

PROTO_188:
        0 LOADK                            R3 K0 ["bg-action-soft-emphasis"]
        1 NAMECALL                         R1 R0 K1 ["HasTag"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_189:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ThreadsMenu"]
        3 GETTABLEKS                       R1 R1 K1 ["ExistingThreadButton"]
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
       28 GETUPVAL                         R3 3
       29 MOVE                             R4 R2
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R3 R3 K6 ["queryAllByTestId"]
       33 MOVE                             R4 R1
       34 CALL                             R3 1 1
       35 MOVE                             R0 R3
       36 RETURN                           R0 1

PROTO_190:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ThreadsMenu"]
        3 GETTABLEKS                       R1 R1 K1 ["Container"]
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
       28 GETUPVAL                         R3 2
       29 MOVE                             R4 R2
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R3 R3 K6 ["getByTestId"]
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
       70 GETUPVAL                         R4 0
       71 GETTABLEKS                       R4 R4 K0 ["ThreadsMenu"]
       73 GETTABLEKS                       R4 R4 K13 ["AddThreadButton"]
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
       98 GETUPVAL                         R6 2
       99 MOVE                             R7 R5
      100 CALL                             R6 1 1
      101 GETTABLEKS                       R6 R6 K6 ["getByTestId"]
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

PROTO_191:
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
       13 GETTABLEKS                       R1 R1 K3 ["ScopedFastFlagSetting"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R5 R0 K4 ["harnessSplit"]
       18 NOT                              R4 R5
       19 NOT                              R3 R4
       20 CALL                             R1 2 0
       21 GETUPVAL                         R1 2
       22 CALL                             R1 0 1
       23 GETUPVAL                         R2 3
       24 CALL                             R2 0 2
       25 GETUPVAL                         R4 4
       26 CALL                             R4 0 2
       27 GETUPVAL                         R6 5
       28 CALL                             R6 0 2
       29 GETUPVAL                         R8 6
       30 CALL                             R8 0 2
       31 GETUPVAL                         R10 7
       32 CALL                             R10 0 2
       33 GETUPVAL                         R12 8
       34 CALL                             R12 0 2
       35 GETUPVAL                         R14 9
       36 CALL                             R14 0 2
       37 GETUPVAL                         R16 10
       38 CALL                             R16 0 2
       39 GETUPVAL                         R18 11
       40 CALL                             R18 0 2
       41 DUPTABLE                         R20 K18 [{"SettingsContext", "ConversationProvider", "ThreadIdContext", "SessionIdContext", "InputStateContext", "McpClientContext", "LLMPackageContext", "ModelQualityContext", "PopoutWidgetContext", "OptionsContext", "WindowInputContext", "LLMProviderSelectionContext", "ExternalServerContext"}]
       42 GETUPVAL                         R21 12
       43 MOVE                             R22 R1
       44 CALL                             R21 1 1
       45 SETTABLEKS                       R21 R20 K5 ["SettingsContext"]
       47 GETUPVAL                         R21 12
       48 MOVE                             R22 R2
       49 CALL                             R21 1 1
       50 SETTABLEKS                       R21 R20 K6 ["ConversationProvider"]
       52 GETUPVAL                         R21 12
       53 MOVE                             R22 R6
       54 CALL                             R21 1 1
       55 SETTABLEKS                       R21 R20 K7 ["ThreadIdContext"]
       57 GETUPVAL                         R21 12
       58 GETUPVAL                         R22 13
       59 GETTABLEKS                       R22 R22 K19 ["Provider"]
       61 DUPTABLE                         R23 K21 [{"sessionId"}]
       62 GETUPVAL                         R24 14
       63 LOADB                            R26 0
       64 NAMECALL                         R24 R24 K22 ["GenerateGUID"]
       66 CALL                             R24 2 1
       67 SETTABLEKS                       R24 R23 K20 ["sessionId"]
       69 CALL                             R21 2 1
       70 SETTABLEKS                       R21 R20 K8 ["SessionIdContext"]
       72 GETUPVAL                         R21 12
       73 MOVE                             R22 R4
       74 CALL                             R21 1 1
       75 SETTABLEKS                       R21 R20 K9 ["InputStateContext"]
       77 GETUPVAL                         R21 12
       78 MOVE                             R22 R8
       79 CALL                             R21 1 1
       80 SETTABLEKS                       R21 R20 K10 ["McpClientContext"]
       82 GETUPVAL                         R21 12
       83 MOVE                             R22 R10
       84 CALL                             R21 1 1
       85 SETTABLEKS                       R21 R20 K11 ["LLMPackageContext"]
       87 GETUPVAL                         R21 12
       88 MOVE                             R22 R12
       89 CALL                             R21 1 1
       90 SETTABLEKS                       R21 R20 K12 ["ModelQualityContext"]
       92 GETUPVAL                         R21 12
       93 MOVE                             R22 R16
       94 CALL                             R21 1 1
       95 SETTABLEKS                       R21 R20 K13 ["PopoutWidgetContext"]
       97 GETUPVAL                         R21 12
       98 MOVE                             R22 R14
       99 CALL                             R21 1 1
      100 SETTABLEKS                       R21 R20 K14 ["OptionsContext"]
      102 GETUPVAL                         R21 12
      103 GETUPVAL                         R22 15
      104 GETTABLEKS                       R22 R22 K23 ["StandardProvider"]
      106 CALL                             R21 1 1
      107 SETTABLEKS                       R21 R20 K15 ["WindowInputContext"]
      109 GETUPVAL                         R21 12
      110 GETUPVAL                         R22 16
      111 GETTABLEKS                       R22 R22 K19 ["Provider"]
      113 CALL                             R21 1 1
      114 SETTABLEKS                       R21 R20 K16 ["LLMProviderSelectionContext"]
      116 GETUPVAL                         R21 12
      117 MOVE                             R22 R18
      118 CALL                             R21 1 1
      119 SETTABLEKS                       R21 R20 K17 ["ExternalServerContext"]
      121 GETUPVAL                         R21 17
      122 GETTABLEKS                       R21 R21 K24 ["join"]
      124 MOVE                             R22 R20
      125 GETTABLEKS                       R23 R0 K25 ["overrideProviders"]
      127 JUMPIF                           R23 ; [+2]
      128 NEWTABLE                         R23 0 0
      130 CALL                             R21 2 1
      131 NEWTABLE                         R22 0 0
      133 GETUPVAL                         R23 18
      134 MOVE                             R24 R22
      135 CALL                             R23 1 1
      136 GETTABLEKS                       R24 R0 K26 ["overrideEnvironment"]
      138 JUMPIFNOT                        R24 ; [+8]
      139 GETTABLEKS                       R24 R0 K26 ["overrideEnvironment"]
      141 LOADNIL                          R25
      142 LOADNIL                          R26
      143 FORGPREP                         R24
      144 SETTABLE                         R28 R23 R27
      145 FORGLOOP                         R24 2 ; [-2]
      147 LOADNIL                          R24
      148 GETTABLEKS                       R25 R0 K27 ["tools"]
      150 JUMPIFNOT                        R25 ; [+12]
      151 GETUPVAL                         R25 19
      152 GETTABLEKS                       R25 R25 K28 ["toolSetup"]
      154 GETTABLEKS                       R26 R0 K27 ["tools"]
      156 GETTABLEKS                       R27 R0 K29 ["editEnvironment"]
      158 MOVE                             R28 R23
      159 CALL                             R25 3 2
      160 MOVE                             R24 R25
      161 MOVE                             R23 R26
      162 JUMP                             ; [+8]
      163 GETTABLEKS                       R25 R0 K29 ["editEnvironment"]
      165 JUMPIFNOT                        R25 ; [+5]
      166 GETTABLEKS                       R25 R0 K29 ["editEnvironment"]
      168 MOVE                             R26 R23
      169 CALL                             R25 1 1
      170 MOVE                             R23 R25
      171 GETUPVAL                         R25 20
      172 GETTABLEKS                       R25 R25 K30 ["set"]
      174 MOVE                             R26 R23
      175 CALL                             R25 1 0
      176 GETUPVAL                         R25 21
      177 GETTABLEKS                       R25 R25 K31 ["create"]
      179 CALL                             R25 0 0
      180 GETUPVAL                         R25 22
      181 CALL                             R25 0 1
      182 JUMPIFNOT                        R25 ; [+32]
      183 GETUPVAL                         R25 23
      184 CALL                             R25 0 0
      185 GETTABLEKS                       R25 R0 K32 ["contentWidgets"]
      187 JUMPIFNOT                        R25 ; [+11]
      188 MOVE                             R26 R25
      189 LOADNIL                          R27
      190 LOADNIL                          R28
      191 FORGPREP                         R26
      192 GETUPVAL                         R31 24
      193 GETTABLEKS                       R31 R31 K33 ["add"]
      195 MOVE                             R32 R30
      196 CALL                             R31 1 0
      197 FORGLOOP                         R26 2 ; [-6]
      199 GETTABLEKS                       R26 R0 K34 ["toolWidgetMappings"]
      201 JUMPIFNOT                        R26 ; [+25]
      202 MOVE                             R27 R26
      203 LOADNIL                          R28
      204 LOADNIL                          R29
      205 FORGPREP                         R27
      206 GETUPVAL                         R32 25
      207 GETTABLEKS                       R32 R32 K33 ["add"]
      209 MOVE                             R33 R30
      210 MOVE                             R34 R31
      211 CALL                             R32 2 0
      212 FORGLOOP                         R27 2 ; [-7]
      214 JUMP                             ; [+12]
      215 GETUPVAL                         R25 26
      216 GETTABLEKS                       R25 R25 K35 ["registerDefaultWidgets"]
      218 CALL                             R25 0 0
      219 GETTABLEKS                       R25 R0 K32 ["contentWidgets"]
      221 JUMPIFNOT                        R25 ; [+5]
      222 GETUPVAL                         R26 26
      223 GETTABLEKS                       R26 R26 K36 ["registerWidgetList"]
      225 MOVE                             R27 R25
      226 CALL                             R26 1 0
      227 NEWCLOSURE                       R25 P0
      228 CAPTURE                          VAL R22
      229 GETUPVAL                         R26 17
      230 GETTABLEKS                       R26 R26 K37 ["values"]
      232 MOVE                             R27 R21
      233 CALL                             R26 1 1
      234 GETTABLEKS                       R27 R0 K38 ["orderedOverrideProviders"]
      236 JUMPIFNOT                        R27 ; [+14]
      237 GETTABLEKS                       R27 R0 K38 ["orderedOverrideProviders"]
      239 LOADNIL                          R28
      240 LOADNIL                          R29
      241 FORGPREP                         R27
      242 FASTCALL2                        TABLE_INSERT R26 R31 ; [+5]
      244 MOVE                             R33 R26
      245 MOVE                             R34 R31
      246 GETIMPORT                        R32 K41 [table.insert]
      248 CALL                             R32 2 0
      249 FORGLOOP                         R27 2 ; [-8]
      251 DUPCLOSURE                       R27 K42 [PROTO_14]
      252 CAPTURE                          UPVAL U27
      253 CAPTURE                          UPVAL U28
      254 LOADNIL                          R28
      255 NEWCLOSURE                       R29 P2
      256 CAPTURE                          UPVAL U29
      257 CAPTURE                          UPVAL U30
      258 CAPTURE                          REF R0
      259 CAPTURE                          UPVAL U31
      260 CAPTURE                          UPVAL U12
      261 CAPTURE                          UPVAL U32
      262 CAPTURE                          VAL R26
      263 CAPTURE                          UPVAL U27
      264 CAPTURE                          UPVAL U28
      265 CAPTURE                          REF R28
      266 DUPCLOSURE                       R30 K43 [PROTO_16]
      267 CAPTURE                          UPVAL U33
      268 DUPCLOSURE                       R31 K44 [PROTO_19]
      269 CAPTURE                          UPVAL U34
      270 CAPTURE                          UPVAL U35
      271 DUPCLOSURE                       R32 K45 [PROTO_20]
      272 CAPTURE                          VAL R31
      273 DUPCLOSURE                       R33 K46 [PROTO_24]
      274 CAPTURE                          UPVAL U36
      275 CAPTURE                          UPVAL U14
      276 CAPTURE                          UPVAL U35
      277 CAPTURE                          UPVAL U17
      278 CAPTURE                          UPVAL U34
      279 CAPTURE                          UPVAL U37
      280 NEWCLOSURE                       R34 P7
      281 CAPTURE                          REF R24
      282 CAPTURE                          VAL R33
      283 NEWCLOSURE                       R35 P8
      284 CAPTURE                          REF R28
      285 NEWCLOSURE                       R36 P9
      286 CAPTURE                          REF R28
      287 NEWCLOSURE                       R37 P10
      288 CAPTURE                          REF R28
      289 CAPTURE                          UPVAL U38
      290 NEWCLOSURE                       R38 P11
      291 CAPTURE                          REF R28
      292 CAPTURE                          UPVAL U38
      293 NEWCLOSURE                       R39 P12
      294 CAPTURE                          REF R28
      295 CAPTURE                          UPVAL U38
      296 NEWCLOSURE                       R40 P13
      297 CAPTURE                          REF R28
      298 CAPTURE                          UPVAL U38
      299 NEWCLOSURE                       R41 P14
      300 CAPTURE                          REF R28
      301 CAPTURE                          UPVAL U17
      302 CAPTURE                          UPVAL U38
      303 DUPCLOSURE                       R42 K47 [PROTO_34]
      304 CAPTURE                          UPVAL U34
      305 CAPTURE                          UPVAL U33
      306 CAPTURE                          UPVAL U27
      307 CAPTURE                          UPVAL U28
      308 DUPCLOSURE                       R43 K48 [PROTO_35]
      309 CAPTURE                          UPVAL U33
      310 CAPTURE                          UPVAL U27
      311 CAPTURE                          UPVAL U28
      312 DUPCLOSURE                       R44 K49 [PROTO_36]
      313 CAPTURE                          UPVAL U33
      314 CAPTURE                          UPVAL U27
      315 CAPTURE                          UPVAL U28
      316 DUPCLOSURE                       R45 K50 [PROTO_37]
      317 CAPTURE                          UPVAL U29
      318 CAPTURE                          UPVAL U27
      319 CAPTURE                          UPVAL U28
      320 NEWCLOSURE                       R46 P19
      321 CAPTURE                          UPVAL U27
      322 CAPTURE                          UPVAL U28
      323 CAPTURE                          UPVAL U39
      324 CAPTURE                          REF R28
      325 CAPTURE                          UPVAL U38
      326 NEWCLOSURE                       R47 P20
      327 CAPTURE                          UPVAL U27
      328 CAPTURE                          UPVAL U28
      329 CAPTURE                          UPVAL U39
      330 CAPTURE                          REF R28
      331 CAPTURE                          UPVAL U38
      332 NEWCLOSURE                       R48 P21
      333 CAPTURE                          UPVAL U38
      334 CAPTURE                          REF R28
      335 CAPTURE                          UPVAL U40
      336 NEWCLOSURE                       R49 P22
      337 CAPTURE                          UPVAL U38
      338 CAPTURE                          REF R28
      339 CAPTURE                          UPVAL U40
      340 NEWCLOSURE                       R50 P23
      341 CAPTURE                          UPVAL U38
      342 CAPTURE                          REF R28
      343 CAPTURE                          UPVAL U17
      344 CAPTURE                          UPVAL U40
      345 NEWCLOSURE                       R51 P24
      346 CAPTURE                          UPVAL U38
      347 CAPTURE                          REF R28
      348 CAPTURE                          UPVAL U40
      349 CAPTURE                          UPVAL U41
      350 CAPTURE                          UPVAL U39
      351 NEWCLOSURE                       R52 P25
      352 CAPTURE                          UPVAL U40
      353 CAPTURE                          REF R28
      354 NEWCLOSURE                       R53 P26
      355 CAPTURE                          REF R28
      356 CAPTURE                          UPVAL U17
      357 CAPTURE                          UPVAL U38
      358 NEWCLOSURE                       R54 P27
      359 CAPTURE                          UPVAL U39
      360 CAPTURE                          REF R28
      361 CAPTURE                          UPVAL U38
      362 NEWCLOSURE                       R55 P28
      363 CAPTURE                          UPVAL U39
      364 CAPTURE                          REF R28
      365 CAPTURE                          UPVAL U38
      366 NEWCLOSURE                       R56 P29
      367 CAPTURE                          UPVAL U34
      368 CAPTURE                          VAL R13
      369 NEWCLOSURE                       R57 P30
      370 CAPTURE                          UPVAL U27
      371 CAPTURE                          UPVAL U28
      372 CAPTURE                          UPVAL U39
      373 CAPTURE                          REF R28
      374 CAPTURE                          UPVAL U38
      375 CAPTURE                          UPVAL U34
      376 NEWCLOSURE                       R58 P31
      377 CAPTURE                          UPVAL U33
      378 CAPTURE                          UPVAL U27
      379 CAPTURE                          UPVAL U28
      380 CAPTURE                          UPVAL U39
      381 CAPTURE                          REF R28
      382 CAPTURE                          UPVAL U38
      383 NEWCLOSURE                       R59 P32
      384 CAPTURE                          UPVAL U27
      385 CAPTURE                          UPVAL U28
      386 CAPTURE                          UPVAL U39
      387 CAPTURE                          REF R28
      388 CAPTURE                          UPVAL U38
      389 CAPTURE                          UPVAL U34
      390 NEWCLOSURE                       R60 P33
      391 CAPTURE                          UPVAL U27
      392 CAPTURE                          UPVAL U28
      393 CAPTURE                          UPVAL U39
      394 CAPTURE                          REF R28
      395 CAPTURE                          UPVAL U38
      396 DUPCLOSURE                       R61 K51 [PROTO_60]
      397 CAPTURE                          UPVAL U29
      398 NEWCLOSURE                       R62 P35
      399 CAPTURE                          UPVAL U39
      400 CAPTURE                          REF R28
      401 CAPTURE                          UPVAL U38
      402 CAPTURE                          UPVAL U34
      403 CAPTURE                          UPVAL U33
      404 CAPTURE                          UPVAL U27
      405 CAPTURE                          UPVAL U28
      406 DUPCLOSURE                       R63 K52 [PROTO_62]
      407 CAPTURE                          UPVAL U33
      408 CAPTURE                          UPVAL U27
      409 CAPTURE                          UPVAL U28
      410 DUPCLOSURE                       R64 K53 [PROTO_64]
      411 CAPTURE                          UPVAL U34
      412 CAPTURE                          UPVAL U33
      413 CAPTURE                          UPVAL U27
      414 CAPTURE                          UPVAL U28
      415 NEWCLOSURE                       R65 P38
      416 CAPTURE                          VAL R63
      417 CAPTURE                          UPVAL U27
      418 CAPTURE                          UPVAL U28
      419 CAPTURE                          UPVAL U39
      420 CAPTURE                          REF R28
      421 CAPTURE                          UPVAL U38
      422 NEWCLOSURE                       R66 P39
      423 CAPTURE                          VAL R64
      424 CAPTURE                          UPVAL U27
      425 CAPTURE                          UPVAL U28
      426 CAPTURE                          UPVAL U39
      427 CAPTURE                          REF R28
      428 CAPTURE                          UPVAL U38
      429 CAPTURE                          VAL R63
      430 NEWCLOSURE                       R67 P40
      431 CAPTURE                          UPVAL U27
      432 CAPTURE                          UPVAL U28
      433 CAPTURE                          UPVAL U39
      434 CAPTURE                          REF R28
      435 CAPTURE                          UPVAL U38
      436 CAPTURE                          UPVAL U33
      437 DUPCLOSURE                       R68 K54 [PROTO_68]
      438 CAPTURE                          UPVAL U33
      439 CAPTURE                          UPVAL U27
      440 CAPTURE                          UPVAL U28
      441 NEWCLOSURE                       R69 P42
      442 CAPTURE                          UPVAL U27
      443 CAPTURE                          UPVAL U28
      444 CAPTURE                          UPVAL U39
      445 CAPTURE                          REF R28
      446 CAPTURE                          UPVAL U38
      447 NEWCLOSURE                       R70 P43
      448 CAPTURE                          UPVAL U42
      449 CAPTURE                          UPVAL U43
      450 CAPTURE                          UPVAL U27
      451 CAPTURE                          UPVAL U28
      452 CAPTURE                          UPVAL U39
      453 CAPTURE                          REF R28
      454 CAPTURE                          UPVAL U38
      455 NEWCLOSURE                       R71 P44
      456 CAPTURE                          VAL R52
      457 CAPTURE                          UPVAL U38
      458 NEWCLOSURE                       R72 P45
      459 CAPTURE                          VAL R52
      460 NEWCLOSURE                       R73 P46
      461 CAPTURE                          UPVAL U27
      462 CAPTURE                          UPVAL U28
      463 CAPTURE                          UPVAL U39
      464 CAPTURE                          REF R28
      465 CAPTURE                          UPVAL U38
      466 DUPCLOSURE                       R74 K55 [PROTO_75]
      467 CAPTURE                          UPVAL U27
      468 CAPTURE                          UPVAL U28
      469 NEWCLOSURE                       R75 P48
      470 CAPTURE                          UPVAL U39
      471 CAPTURE                          REF R28
      472 CAPTURE                          UPVAL U38
      473 CAPTURE                          UPVAL U27
      474 CAPTURE                          UPVAL U28
      475 CAPTURE                          UPVAL U34
      476 CAPTURE                          UPVAL U33
      477 NEWCLOSURE                       R76 P49
      478 CAPTURE                          UPVAL U39
      479 CAPTURE                          REF R28
      480 CAPTURE                          UPVAL U38
      481 CAPTURE                          UPVAL U27
      482 CAPTURE                          UPVAL U28
      483 CAPTURE                          UPVAL U34
      484 CAPTURE                          UPVAL U33
      485 NEWCLOSURE                       R77 P50
      486 CAPTURE                          UPVAL U39
      487 CAPTURE                          REF R28
      488 CAPTURE                          UPVAL U38
      489 CAPTURE                          UPVAL U27
      490 CAPTURE                          UPVAL U28
      491 CAPTURE                          UPVAL U34
      492 CAPTURE                          UPVAL U33
      493 NEWCLOSURE                       R78 P51
      494 CAPTURE                          UPVAL U39
      495 CAPTURE                          REF R28
      496 CAPTURE                          UPVAL U38
      497 CAPTURE                          UPVAL U27
      498 CAPTURE                          UPVAL U28
      499 CAPTURE                          UPVAL U34
      500 CAPTURE                          UPVAL U33
      501 NEWCLOSURE                       R79 P52
      502 CAPTURE                          UPVAL U39
      503 CAPTURE                          REF R28
      504 CAPTURE                          UPVAL U38
      505 CAPTURE                          UPVAL U27
      506 CAPTURE                          UPVAL U28
      507 CAPTURE                          UPVAL U34
      508 CAPTURE                          UPVAL U33
      509 NEWCLOSURE                       R80 P53
      510 CAPTURE                          UPVAL U39
      511 CAPTURE                          REF R28
      512 CAPTURE                          UPVAL U38
      513 CAPTURE                          UPVAL U27
      514 CAPTURE                          UPVAL U28
      515 CAPTURE                          UPVAL U34
      516 CAPTURE                          UPVAL U33
      517 NEWCLOSURE                       R81 P54
      518 CAPTURE                          UPVAL U39
      519 CAPTURE                          REF R28
      520 CAPTURE                          UPVAL U38
      521 NEWCLOSURE                       R82 P55
      522 CAPTURE                          UPVAL U39
      523 CAPTURE                          REF R28
      524 CAPTURE                          UPVAL U38
      525 CAPTURE                          UPVAL U27
      526 CAPTURE                          UPVAL U28
      527 CAPTURE                          UPVAL U34
      528 CAPTURE                          UPVAL U33
      529 DUPCLOSURE                       R83 K56 [PROTO_85]
      530 CAPTURE                          UPVAL U36
      531 CAPTURE                          UPVAL U30
      532 NEWCLOSURE                       R84 P57
      533 CAPTURE                          UPVAL U39
      534 CAPTURE                          REF R28
      535 CAPTURE                          UPVAL U38
      536 DUPCLOSURE                       R85 K57 [PROTO_87]
      537 DUPCLOSURE                       R86 K58 [PROTO_88]
      538 NEWCLOSURE                       R87 P60
      539 CAPTURE                          UPVAL U39
      540 CAPTURE                          REF R28
      541 CAPTURE                          UPVAL U38
      542 CAPTURE                          VAL R86
      543 DUPCLOSURE                       R88 K59 [PROTO_90]
      544 CAPTURE                          VAL R85
      545 CAPTURE                          VAL R86
      546 CAPTURE                          UPVAL U27
      547 CAPTURE                          UPVAL U28
      548 CAPTURE                          UPVAL U34
      549 CAPTURE                          UPVAL U33
      550 NEWCLOSURE                       R89 P62
      551 CAPTURE                          UPVAL U39
      552 CAPTURE                          REF R28
      553 CAPTURE                          UPVAL U38
      554 CAPTURE                          UPVAL U27
      555 CAPTURE                          UPVAL U28
      556 CAPTURE                          UPVAL U34
      557 CAPTURE                          UPVAL U33
      558 NEWCLOSURE                       R90 P63
      559 CAPTURE                          UPVAL U39
      560 CAPTURE                          REF R28
      561 CAPTURE                          UPVAL U38
      562 CAPTURE                          UPVAL U27
      563 CAPTURE                          UPVAL U28
      564 CAPTURE                          UPVAL U34
      565 CAPTURE                          UPVAL U33
      566 NEWCLOSURE                       R91 P64
      567 CAPTURE                          UPVAL U39
      568 CAPTURE                          REF R28
      569 CAPTURE                          UPVAL U38
      570 CAPTURE                          UPVAL U27
      571 CAPTURE                          UPVAL U28
      572 CAPTURE                          UPVAL U34
      573 CAPTURE                          UPVAL U33
      574 NEWCLOSURE                       R92 P65
      575 CAPTURE                          UPVAL U39
      576 CAPTURE                          REF R28
      577 CAPTURE                          UPVAL U38
      578 CAPTURE                          UPVAL U27
      579 CAPTURE                          UPVAL U28
      580 CAPTURE                          UPVAL U34
      581 CAPTURE                          UPVAL U33
      582 NEWCLOSURE                       R93 P66
      583 CAPTURE                          UPVAL U39
      584 CAPTURE                          REF R28
      585 CAPTURE                          UPVAL U38
      586 NEWCLOSURE                       R94 P67
      587 CAPTURE                          UPVAL U41
      588 CAPTURE                          VAL R41
      589 CAPTURE                          UPVAL U44
      590 CAPTURE                          UPVAL U39
      591 CAPTURE                          REF R28
      592 CAPTURE                          UPVAL U38
      593 CAPTURE                          UPVAL U27
      594 CAPTURE                          UPVAL U28
      595 CAPTURE                          UPVAL U34
      596 CAPTURE                          UPVAL U33
      597 NEWCLOSURE                       R95 P68
      598 CAPTURE                          UPVAL U41
      599 CAPTURE                          VAL R41
      600 CAPTURE                          UPVAL U44
      601 CAPTURE                          UPVAL U39
      602 CAPTURE                          REF R28
      603 CAPTURE                          UPVAL U38
      604 CAPTURE                          UPVAL U27
      605 CAPTURE                          UPVAL U28
      606 CAPTURE                          UPVAL U34
      607 CAPTURE                          UPVAL U33
      608 NEWCLOSURE                       R96 P69
      609 CAPTURE                          UPVAL U41
      610 CAPTURE                          VAL R41
      611 CAPTURE                          UPVAL U44
      612 CAPTURE                          UPVAL U39
      613 CAPTURE                          REF R28
      614 CAPTURE                          UPVAL U38
      615 CAPTURE                          UPVAL U27
      616 CAPTURE                          UPVAL U28
      617 CAPTURE                          UPVAL U34
      618 CAPTURE                          UPVAL U33
      619 NEWCLOSURE                       R97 P70
      620 CAPTURE                          VAL R41
      621 CAPTURE                          UPVAL U44
      622 CAPTURE                          UPVAL U27
      623 CAPTURE                          UPVAL U28
      624 CAPTURE                          UPVAL U34
      625 CAPTURE                          UPVAL U33
      626 NEWCLOSURE                       R98 P71
      627 CAPTURE                          UPVAL U41
      628 CAPTURE                          VAL R41
      629 CAPTURE                          UPVAL U44
      630 CAPTURE                          UPVAL U39
      631 CAPTURE                          REF R28
      632 CAPTURE                          UPVAL U38
      633 NEWCLOSURE                       R99 P72
      634 CAPTURE                          UPVAL U41
      635 CAPTURE                          VAL R41
      636 CAPTURE                          UPVAL U44
      637 CAPTURE                          UPVAL U39
      638 CAPTURE                          REF R28
      639 CAPTURE                          UPVAL U38
      640 NEWCLOSURE                       R100 P73
      641 CAPTURE                          VAL R3
      642 NEWCLOSURE                       R101 P74
      643 CAPTURE                          UPVAL U34
      644 CAPTURE                          VAL R3
      645 CAPTURE                          UPVAL U27
      646 CAPTURE                          UPVAL U28
      647 NEWCLOSURE                       R102 P75
      648 CAPTURE                          VAL R7
      649 CAPTURE                          UPVAL U34
      650 CAPTURE                          UPVAL U27
      651 CAPTURE                          UPVAL U28
      652 NEWCLOSURE                       R103 P76
      653 CAPTURE                          UPVAL U41
      654 CAPTURE                          UPVAL U45
      655 CAPTURE                          UPVAL U34
      656 CAPTURE                          VAL R3
      657 CAPTURE                          UPVAL U27
      658 CAPTURE                          UPVAL U28
      659 CAPTURE                          VAL R7
      660 NEWCLOSURE                       R104 P77
      661 CAPTURE                          UPVAL U39
      662 CAPTURE                          REF R28
      663 CAPTURE                          UPVAL U38
      664 CAPTURE                          UPVAL U34
      665 CAPTURE                          UPVAL U33
      666 CAPTURE                          UPVAL U27
      667 CAPTURE                          UPVAL U28
      668 NEWCLOSURE                       R105 P78
      669 CAPTURE                          UPVAL U39
      670 CAPTURE                          REF R28
      671 CAPTURE                          UPVAL U38
      672 NEWCLOSURE                       R106 P79
      673 CAPTURE                          UPVAL U41
      674 CAPTURE                          UPVAL U39
      675 CAPTURE                          REF R28
      676 CAPTURE                          UPVAL U38
      677 CAPTURE                          UPVAL U34
      678 CAPTURE                          UPVAL U33
      679 CAPTURE                          UPVAL U27
      680 CAPTURE                          UPVAL U28
      681 CAPTURE                          UPVAL U46
      682 CAPTURE                          VAL R53
      683 NEWCLOSURE                       R107 P80
      684 CAPTURE                          VAL R9
      685 NEWCLOSURE                       R108 P81
      686 CAPTURE                          VAL R9
      687 NEWCLOSURE                       R109 P82
      688 CAPTURE                          VAL R9
      689 NEWCLOSURE                       R110 P83
      690 CAPTURE                          VAL R9
      691 NEWCLOSURE                       R111 P84
      692 CAPTURE                          VAL R9
      693 NEWCLOSURE                       R112 P85
      694 CAPTURE                          VAL R9
      695 NEWCLOSURE                       R113 P86
      696 CAPTURE                          VAL R11
      697 NEWCLOSURE                       R114 P87
      698 CAPTURE                          VAL R11
      699 NEWCLOSURE                       R115 P88
      700 CAPTURE                          UPVAL U34
      701 CAPTURE                          VAL R5
      702 CAPTURE                          UPVAL U47
      703 CAPTURE                          UPVAL U27
      704 CAPTURE                          UPVAL U28
      705 CAPTURE                          UPVAL U42
      706 CAPTURE                          VAL R50
      707 NEWCLOSURE                       R116 P89
      708 CAPTURE                          UPVAL U34
      709 CAPTURE                          VAL R5
      710 NEWCLOSURE                       R117 P90
      711 CAPTURE                          UPVAL U39
      712 CAPTURE                          REF R28
      713 CAPTURE                          UPVAL U38
      714 NEWCLOSURE                       R118 P91
      715 CAPTURE                          UPVAL U39
      716 CAPTURE                          REF R28
      717 CAPTURE                          UPVAL U38
      718 CAPTURE                          UPVAL U27
      719 CAPTURE                          UPVAL U28
      720 CAPTURE                          UPVAL U34
      721 CAPTURE                          UPVAL U33
      722 NEWCLOSURE                       R119 P92
      723 CAPTURE                          REF R23
      724 CAPTURE                          UPVAL U37
      725 CAPTURE                          UPVAL U48
      726 NEWCLOSURE                       R120 P93
      727 CAPTURE                          UPVAL U39
      728 CAPTURE                          REF R28
      729 CAPTURE                          UPVAL U38
      730 NEWCLOSURE                       R121 P94
      731 CAPTURE                          UPVAL U39
      732 CAPTURE                          REF R28
      733 CAPTURE                          UPVAL U38
      734 CAPTURE                          UPVAL U37
      735 NEWCLOSURE                       R122 P95
      736 CAPTURE                          UPVAL U39
      737 CAPTURE                          REF R28
      738 CAPTURE                          UPVAL U38
      739 CAPTURE                          UPVAL U27
      740 CAPTURE                          UPVAL U28
      741 CAPTURE                          UPVAL U34
      742 CAPTURE                          UPVAL U33
      743 NEWCLOSURE                       R123 P96
      744 CAPTURE                          UPVAL U39
      745 CAPTURE                          REF R28
      746 CAPTURE                          UPVAL U38
      747 NEWCLOSURE                       R124 P97
      748 CAPTURE                          UPVAL U39
      749 CAPTURE                          REF R28
      750 CAPTURE                          UPVAL U38
      751 NEWCLOSURE                       R125 P98
      752 CAPTURE                          UPVAL U39
      753 CAPTURE                          REF R28
      754 CAPTURE                          UPVAL U38
      755 DUPCLOSURE                       R126 K60 [PROTO_137]
      756 CAPTURE                          UPVAL U40
      757 CAPTURE                          UPVAL U39
      758 NEWCLOSURE                       R127 P100
      759 CAPTURE                          UPVAL U39
      760 CAPTURE                          REF R28
      761 CAPTURE                          UPVAL U38
      762 CAPTURE                          UPVAL U34
      763 CAPTURE                          UPVAL U33
      764 CAPTURE                          UPVAL U27
      765 CAPTURE                          UPVAL U28
      766 NEWCLOSURE                       R128 P101
      767 CAPTURE                          UPVAL U40
      768 CAPTURE                          REF R28
      769 CAPTURE                          UPVAL U39
      770 NEWCLOSURE                       R129 P102
      771 CAPTURE                          UPVAL U40
      772 CAPTURE                          REF R28
      773 CAPTURE                          UPVAL U39
      774 NEWCLOSURE                       R130 P103
      775 CAPTURE                          UPVAL U40
      776 CAPTURE                          REF R28
      777 CAPTURE                          UPVAL U39
      778 NEWCLOSURE                       R131 P104
      779 CAPTURE                          UPVAL U39
      780 CAPTURE                          REF R28
      781 CAPTURE                          UPVAL U38
      782 NEWCLOSURE                       R132 P105
      783 CAPTURE                          UPVAL U39
      784 CAPTURE                          REF R28
      785 CAPTURE                          UPVAL U38
      786 NEWCLOSURE                       R133 P106
      787 CAPTURE                          UPVAL U39
      788 CAPTURE                          REF R28
      789 CAPTURE                          UPVAL U38
      790 NEWCLOSURE                       R134 P107
      791 CAPTURE                          UPVAL U39
      792 CAPTURE                          REF R28
      793 CAPTURE                          UPVAL U38
      794 NEWCLOSURE                       R135 P108
      795 CAPTURE                          UPVAL U39
      796 CAPTURE                          REF R28
      797 CAPTURE                          UPVAL U38
      798 DUPCLOSURE                       R136 K61 [PROTO_147]
      799 CAPTURE                          UPVAL U34
      800 CAPTURE                          UPVAL U33
      801 CAPTURE                          UPVAL U27
      802 CAPTURE                          UPVAL U28
      803 NEWCLOSURE                       R137 P110
      804 CAPTURE                          UPVAL U39
      805 CAPTURE                          REF R28
      806 CAPTURE                          UPVAL U38
      807 CAPTURE                          UPVAL U34
      808 CAPTURE                          UPVAL U33
      809 CAPTURE                          UPVAL U27
      810 CAPTURE                          UPVAL U28
      811 NEWCLOSURE                       R138 P111
      812 CAPTURE                          UPVAL U39
      813 CAPTURE                          REF R28
      814 CAPTURE                          UPVAL U38
      815 CAPTURE                          UPVAL U34
      816 CAPTURE                          UPVAL U33
      817 CAPTURE                          UPVAL U27
      818 CAPTURE                          UPVAL U28
      819 NEWCLOSURE                       R139 P112
      820 CAPTURE                          UPVAL U39
      821 CAPTURE                          REF R28
      822 CAPTURE                          UPVAL U38
      823 NEWCLOSURE                       R140 P113
      824 CAPTURE                          UPVAL U39
      825 CAPTURE                          REF R28
      826 CAPTURE                          UPVAL U38
      827 NEWCLOSURE                       R141 P114
      828 CAPTURE                          UPVAL U39
      829 CAPTURE                          REF R28
      830 CAPTURE                          UPVAL U38
      831 NEWCLOSURE                       R142 P115
      832 CAPTURE                          UPVAL U39
      833 CAPTURE                          REF R28
      834 CAPTURE                          UPVAL U38
      835 NEWCLOSURE                       R143 P116
      836 CAPTURE                          UPVAL U39
      837 CAPTURE                          REF R28
      838 CAPTURE                          UPVAL U38
      839 NEWCLOSURE                       R144 P117
      840 CAPTURE                          UPVAL U39
      841 CAPTURE                          REF R28
      842 CAPTURE                          UPVAL U38
      843 NEWCLOSURE                       R145 P118
      844 CAPTURE                          UPVAL U39
      845 CAPTURE                          REF R28
      846 CAPTURE                          UPVAL U38
      847 CAPTURE                          UPVAL U34
      848 CAPTURE                          UPVAL U33
      849 CAPTURE                          UPVAL U27
      850 CAPTURE                          UPVAL U28
      851 NEWCLOSURE                       R146 P119
      852 CAPTURE                          UPVAL U39
      853 CAPTURE                          REF R28
      854 CAPTURE                          UPVAL U38
      855 CAPTURE                          UPVAL U27
      856 CAPTURE                          UPVAL U28
      857 CAPTURE                          UPVAL U34
      858 CAPTURE                          UPVAL U33
      859 NEWCLOSURE                       R147 P120
      860 CAPTURE                          UPVAL U39
      861 CAPTURE                          REF R28
      862 CAPTURE                          UPVAL U38
      863 CAPTURE                          UPVAL U27
      864 CAPTURE                          UPVAL U28
      865 CAPTURE                          UPVAL U34
      866 CAPTURE                          UPVAL U33
      867 NEWCLOSURE                       R148 P121
      868 CAPTURE                          UPVAL U39
      869 CAPTURE                          REF R28
      870 CAPTURE                          UPVAL U38
      871 CAPTURE                          UPVAL U27
      872 CAPTURE                          UPVAL U28
      873 CAPTURE                          UPVAL U34
      874 CAPTURE                          UPVAL U33
      875 NEWCLOSURE                       R149 P122
      876 CAPTURE                          UPVAL U39
      877 CAPTURE                          REF R28
      878 CAPTURE                          UPVAL U38
      879 NEWCLOSURE                       R150 P123
      880 CAPTURE                          UPVAL U39
      881 CAPTURE                          REF R28
      882 CAPTURE                          UPVAL U38
      883 CAPTURE                          UPVAL U27
      884 CAPTURE                          UPVAL U28
      885 CAPTURE                          UPVAL U34
      886 CAPTURE                          UPVAL U33
      887 NEWCLOSURE                       R151 P124
      888 CAPTURE                          UPVAL U39
      889 CAPTURE                          REF R28
      890 CAPTURE                          UPVAL U38
      891 NEWCLOSURE                       R152 P125
      892 CAPTURE                          REF R23
      893 NEWCLOSURE                       R153 P126
      894 CAPTURE                          UPVAL U39
      895 CAPTURE                          REF R28
      896 CAPTURE                          UPVAL U38
      897 CAPTURE                          UPVAL U34
      898 CAPTURE                          UPVAL U33
      899 CAPTURE                          UPVAL U27
      900 CAPTURE                          UPVAL U28
      901 DUPCLOSURE                       R154 K62 [PROTO_166]
      902 CAPTURE                          UPVAL U38
      903 CAPTURE                          UPVAL U40
      904 CAPTURE                          UPVAL U39
      905 NEWCLOSURE                       R155 P128
      906 CAPTURE                          UPVAL U39
      907 CAPTURE                          REF R28
      908 CAPTURE                          UPVAL U38
      909 CAPTURE                          UPVAL U34
      910 CAPTURE                          UPVAL U33
      911 CAPTURE                          UPVAL U27
      912 CAPTURE                          UPVAL U28
      913 NEWCLOSURE                       R156 P129
      914 CAPTURE                          UPVAL U39
      915 CAPTURE                          UPVAL U40
      916 CAPTURE                          REF R28
      917 CAPTURE                          UPVAL U49
      918 NEWCLOSURE                       R157 P130
      919 CAPTURE                          UPVAL U39
      920 CAPTURE                          REF R28
      921 CAPTURE                          UPVAL U38
      922 CAPTURE                          UPVAL U27
      923 CAPTURE                          UPVAL U28
      924 CAPTURE                          UPVAL U34
      925 CAPTURE                          UPVAL U33
      926 NEWCLOSURE                       R158 P131
      927 CAPTURE                          UPVAL U39
      928 CAPTURE                          REF R28
      929 CAPTURE                          UPVAL U38
      930 CAPTURE                          UPVAL U27
      931 CAPTURE                          UPVAL U28
      932 CAPTURE                          UPVAL U34
      933 CAPTURE                          UPVAL U33
      934 NEWCLOSURE                       R159 P132
      935 CAPTURE                          UPVAL U39
      936 CAPTURE                          REF R28
      937 CAPTURE                          UPVAL U38
      938 CAPTURE                          UPVAL U27
      939 CAPTURE                          UPVAL U28
      940 CAPTURE                          UPVAL U34
      941 CAPTURE                          UPVAL U33
      942 NEWCLOSURE                       R160 P133
      943 CAPTURE                          UPVAL U39
      944 CAPTURE                          REF R28
      945 CAPTURE                          UPVAL U38
      946 CAPTURE                          UPVAL U27
      947 CAPTURE                          UPVAL U28
      948 CAPTURE                          UPVAL U34
      949 CAPTURE                          UPVAL U33
      950 NEWCLOSURE                       R161 P134
      951 CAPTURE                          UPVAL U39
      952 CAPTURE                          REF R28
      953 CAPTURE                          UPVAL U38
      954 NEWCLOSURE                       R162 P135
      955 CAPTURE                          UPVAL U39
      956 CAPTURE                          REF R28
      957 CAPTURE                          UPVAL U38
      958 CAPTURE                          UPVAL U27
      959 CAPTURE                          UPVAL U28
      960 CAPTURE                          UPVAL U34
      961 CAPTURE                          UPVAL U33
      962 NEWCLOSURE                       R163 P136
      963 CAPTURE                          UPVAL U34
      964 CAPTURE                          VAL R11
      965 CAPTURE                          UPVAL U27
      966 CAPTURE                          UPVAL U28
      967 NEWCLOSURE                       R164 P137
      968 CAPTURE                          UPVAL U34
      969 CAPTURE                          VAL R11
      970 CAPTURE                          UPVAL U27
      971 CAPTURE                          UPVAL U28
      972 NEWCLOSURE                       R165 P138
      973 CAPTURE                          UPVAL U34
      974 CAPTURE                          VAL R11
      975 CAPTURE                          UPVAL U27
      976 CAPTURE                          UPVAL U28
      977 NEWCLOSURE                       R166 P139
      978 CAPTURE                          UPVAL U34
      979 CAPTURE                          VAL R11
      980 CAPTURE                          UPVAL U27
      981 CAPTURE                          UPVAL U28
      982 NEWCLOSURE                       R167 P140
      983 CAPTURE                          UPVAL U34
      984 CAPTURE                          VAL R11
      985 CAPTURE                          UPVAL U27
      986 CAPTURE                          UPVAL U28
      987 NEWCLOSURE                       R168 P141
      988 CAPTURE                          UPVAL U36
      989 CAPTURE                          REF R23
      990 DUPCLOSURE                       R169 K63 [PROTO_182]
      991 CAPTURE                          UPVAL U38
      992 CAPTURE                          UPVAL U34
      993 CAPTURE                          UPVAL U33
      994 CAPTURE                          UPVAL U27
      995 CAPTURE                          UPVAL U28
      996 NEWCLOSURE                       R170 P143
      997 CAPTURE                          UPVAL U39
      998 CAPTURE                          REF R28
      999 CAPTURE                          UPVAL U38
     1000 NEWCLOSURE                       R171 P144
     1001 CAPTURE                          UPVAL U39
     1002 CAPTURE                          REF R28
     1003 CAPTURE                          UPVAL U38
     1004 NEWCLOSURE                       R172 P145
     1005 CAPTURE                          UPVAL U34
     1006 CAPTURE                          VAL R15
     1007 DUPCLOSURE                       R173 K64 [PROTO_187]
     1008 CAPTURE                          UPVAL U38
     1009 CAPTURE                          UPVAL U40
     1010 CAPTURE                          UPVAL U39
     1011 CAPTURE                          UPVAL U34
     1012 CAPTURE                          UPVAL U33
     1013 CAPTURE                          UPVAL U27
     1014 CAPTURE                          UPVAL U28
     1015 DUPCLOSURE                       R174 K65 [PROTO_188]
     1016 NEWCLOSURE                       R175 P148
     1017 CAPTURE                          UPVAL U39
     1018 CAPTURE                          REF R28
     1019 CAPTURE                          UPVAL U38
     1020 MOVE                             R176 R29
     1021 GETUPVAL                         R177 12
     1022 LOADK                            R178 K66 ["Frame"]
     1023 DUPTABLE                         R179 K68 [{"Size"}]
     1024 GETIMPORT                        R180 K71 [UDim2.fromScale]
     1026 LOADN                            R181 1
     1027 LOADN                            R182 1
     1028 CALL                             R180 2 1
     1029 SETTABLEKS                       R180 R179 K67 ["Size"]
     1031 DUPTABLE                         R180 K74 [{"UIListLayout", "MainView"}]
     1032 GETUPVAL                         R181 12
     1033 LOADK                            R182 K72 ["UIListLayout"]
     1034 DUPTABLE                         R183 K76 [{"FillDirection"}]
     1035 GETIMPORT                        R184 K79 [Enum.FillDirection.Vertical]
     1037 SETTABLEKS                       R184 R183 K75 ["FillDirection"]
     1039 CALL                             R181 2 1
     1040 SETTABLEKS                       R181 R180 K72 ["UIListLayout"]
     1042 GETUPVAL                         R181 12
     1043 GETUPVAL                         R182 50
     1044 CALL                             R181 1 1
     1045 SETTABLEKS                       R181 R180 K73 ["MainView"]
     1047 CALL                             R177 3 -1
     1048 CALL                             R176 -1 0
     1049 NEWTABLE                         R176 256 0
     1051 SETTABLEKS                       R29 R176 K80 ["render"]
     1053 SETTABLEKS                       R24 R176 K27 ["tools"]
     1055 SETTABLEKS                       R33 R176 K81 ["invokeTool"]
     1057 SETTABLEKS                       R34 R176 K82 ["callTool"]
     1059 SETTABLEKS                       R30 R176 K83 ["typeText"]
     1061 SETTABLEKS                       R31 R176 K84 ["getCurrentConversationThread"]
     1063 SETTABLEKS                       R35 R176 K85 ["getContainer"]
     1065 SETTABLEKS                       R36 R176 K86 ["getGuiByTitle"]
     1067 SETTABLEKS                       R27 R176 K87 ["waitForTagApplication"]
     1069 SETTABLEKS                       R37 R176 K88 ["queryByTestId"]
     1071 SETTABLEKS                       R38 R176 K89 ["getByTestId"]
     1073 SETTABLEKS                       R39 R176 K90 ["queryAllByTestId"]
     1075 SETTABLEKS                       R40 R176 K91 ["getAllByTestId"]
     1077 SETTABLEKS                       R41 R176 K92 ["getByMessage"]
     1079 SETTABLEKS                       R42 R176 K93 ["clickButton"]
     1081 SETTABLEKS                       R43 R176 K94 ["mouseEnter"]
     1083 SETTABLEKS                       R44 R176 K95 ["mouseLeave"]
     1085 SETTABLEKS                       R45 R176 K96 ["act"]
     1087 SETTABLEKS                       R47 R176 K97 ["getTextBox"]
     1089 SETTABLEKS                       R48 R176 K98 ["getMessageScrollArea"]
     1091 SETTABLEKS                       R49 R176 K99 ["getContainingMessageWidget"]
     1093 SETTABLEKS                       R50 R176 K100 ["getContainingContentWidget"]
     1095 SETTABLEKS                       R51 R176 K101 ["getMessageActionsWidget"]
     1097 SETTABLEKS                       R53 R176 K102 ["getTextObjectWithMessage"]
     1099 SETTABLEKS                       R25 R176 K103 ["getClipboardTextAtIndex"]
     1101 SETTABLEKS                       R32 R176 K104 ["getToolResults"]
     1103 SETTABLEKS                       R64 R176 K105 ["typeInTextBox"]
     1105 SETTABLEKS                       R63 R176 K106 ["enterInTextBox"]
     1107 SETTABLEKS                       R57 R176 K107 ["focusTextBox"]
     1109 SETTABLEKS                       R58 R176 K108 ["setInputText"]
     1111 SETTABLEKS                       R59 R176 K109 ["setCursorPosition"]
     1113 SETTABLEKS                       R60 R176 K110 ["getInputScrollArea"]
     1115 SETTABLEKS                       R61 R176 K111 ["printScreen"]
     1117 SETTABLEKS                       R62 R176 K112 ["clickStopGenerationButton"]
     1119 SETTABLEKS                       R65 R176 K113 ["enterTextBox"]
     1121 SETTABLEKS                       R66 R176 K114 ["enterUserMessage"]
     1123 SETTABLEKS                       R67 R176 K115 ["pressKeyInInput"]
     1125 SETTABLEKS                       R68 R176 K116 ["setKeyDown"]
     1127 SETTABLEKS                       R69 R176 K117 ["isInputEnabled"]
     1129 SETTABLEKS                       R70 R176 K118 ["waitForInputState"]
     1131 SETTABLEKS                       R71 R176 K119 ["lastUserTextMatches"]
     1133 SETTABLEKS                       R72 R176 K120 ["getMessageCount"]
     1135 SETTABLEKS                       R73 R176 K121 ["isResponding"]
     1137 SETTABLEKS                       R115 R176 K122 ["setExternalInputOverride"]
     1139 SETTABLEKS                       R116 R176 K123 ["clearExternalInputOverride"]
     1141 SETTABLEKS                       R104 R176 K124 ["clickSettingsButton"]
     1143 SETTABLEKS                       R105 R176 K125 ["getSettingsContent"]
     1145 SETTABLEKS                       R117 R176 K126 ["getProviderCheckbox"]
     1147 SETTABLEKS                       R118 R176 K127 ["clickProviderCheckbox"]
     1149 SETTABLEKS                       R119 R176 K128 ["isProviderCheckboxChecked"]
     1151 SETTABLEKS                       R120 R176 K129 ["getModelPickerDropdown"]
     1153 SETTABLEKS                       R121 R176 K130 ["getSelectedModelFromPicker"]
     1155 SETTABLEKS                       R122 R176 K131 ["selectModelFromPicker"]
     1157 SETTABLEKS                       R146 R176 K132 ["clickEditAPIKeyButton"]
     1159 SETTABLEKS                       R147 R176 K133 ["clickSaveAPIKeyButton"]
     1161 SETTABLEKS                       R148 R176 K134 ["clickCancelAPIKeyButton"]
     1163 SETTABLEKS                       R149 R176 K135 ["getAPIKeyInputText"]
     1165 SETTABLEKS                       R150 R176 K136 ["setAPIKeyInputText"]
     1167 SETTABLEKS                       R151 R176 K137 ["getDisplayedAPIKey"]
     1169 SETTABLEKS                       R152 R176 K138 ["getAPIKeySetting"]
     1171 SETTABLEKS                       R124 R176 K139 ["hasFooterText"]
     1173 SETTABLEKS                       R125 R176 K140 ["hasFooterIcon"]
     1175 SETTABLEKS                       R126 R176 K141 ["getToolMenuView"]
     1177 SETTABLEKS                       R127 R176 K142 ["clickServerManagementButton"]
     1179 SETTABLEKS                       R128 R176 K143 ["getManageIntegrationsDialog"]
     1181 SETTABLEKS                       R129 R176 K144 ["getIntegrationItemDialog"]
     1183 SETTABLEKS                       R130 R176 K145 ["getIntegrationMenuEmptyState"]
     1185 SETTABLEKS                       R154 R176 K146 ["getIntegrationItemForLabel"]
     1187 SETTABLEKS                       R131 R176 K147 ["getSkillsTabContent"]
     1189 SETTABLEKS                       R132 R176 K148 ["getSkillsPersonalGroup"]
     1191 SETTABLEKS                       R133 R176 K149 ["getSkillsRobloxGroup"]
     1193 SETTABLEKS                       R134 R176 K150 ["getSkillRow"]
     1195 SETTABLEKS                       R135 R176 K151 ["findSkillRow"]
     1197 SETTABLEKS                       R136 R176 K152 ["clickSkillsGroupHeader"]
     1199 SETTABLEKS                       R137 R176 K153 ["clickSkillRow"]
     1201 SETTABLEKS                       R138 R176 K154 ["clickSkillRefreshButton"]
     1203 SETTABLEKS                       R139 R176 K155 ["getSkillDetailPane"]
     1205 SETTABLEKS                       R140 R176 K156 ["findSkillDetailPane"]
     1207 SETTABLEKS                       R141 R176 K157 ["findSkillDetailPaneEmpty"]
     1209 SETTABLEKS                       R142 R176 K158 ["getSkillDetailOpenButton"]
     1211 SETTABLEKS                       R143 R176 K159 ["getSkillDetailDuplicateButton"]
     1213 SETTABLEKS                       R144 R176 K160 ["getSkillDetailSourceUri"]
     1215 SETTABLEKS                       R145 R176 K161 ["clickSkillDetailOpenButton"]
     1217 SETTABLEKS                       R153 R176 K162 ["clickIntegrationItemActionsToggle"]
     1219 SETTABLEKS                       R155 R176 K163 ["clickIntegrationItemActionsOverflowButton"]
     1221 SETTABLEKS                       R156 R176 K164 ["getIntegrationItemActionsOverflowContent"]
     1223 SETTABLEKS                       R83 R176 K165 ["throwMarkdownParserError"]
     1225 SETTABLEKS                       R84 R176 K166 ["getCarousel"]
     1227 SETTABLEKS                       R85 R176 K167 ["getCarouselItem"]
     1229 SETTABLEKS                       R87 R176 K168 ["getSelectedCarouselItem"]
     1231 SETTABLEKS                       R88 R176 K169 ["clickCarouselItem"]
     1233 SETTABLEKS                       R157 R176 K170 ["clickAlertCloseButton"]
     1235 SETTABLEKS                       R158 R176 K171 ["clickAlertContinueButton"]
     1237 SETTABLEKS                       R159 R176 K172 ["clickToolConfirmationAcceptButton"]
     1239 SETTABLEKS                       R160 R176 K173 ["clickToolConfirmationRejectButton"]
     1241 SETTABLEKS                       R161 R176 K174 ["getToolConfirmationAlwaysAcceptText"]
     1243 SETTABLEKS                       R162 R176 K175 ["clickToolConfirmationAlwaysAcceptButton"]
     1245 SETTABLEKS                       R75 R176 K176 ["clickRunCodeExpandButton"]
     1247 SETTABLEKS                       R89 R176 K177 ["clickCopyButton"]
     1249 SETTABLEKS                       R90 R176 K178 ["clickRunButton"]
     1251 SETTABLEKS                       R91 R176 K179 ["clickStopButton"]
     1253 SETTABLEKS                       R92 R176 K180 ["clickImageExpandButton"]
     1255 SETTABLEKS                       R93 R176 K181 ["getImageContentImage"]
     1257 SETTABLEKS                       R76 R176 K182 ["clickAssetVariationExpandButton"]
     1259 SETTABLEKS                       R77 R176 K183 ["clickMaterialGenExpandButton"]
     1261 SETTABLEKS                       R78 R176 K184 ["clickMaterialGenStudsPerTileValueBar"]
     1263 SETTABLEKS                       R79 R176 K185 ["clickMaterialGenOrganicPatternToggle"]
     1265 SETTABLEKS                       R80 R176 K186 ["clickMeshGenExpandButton"]
     1267 SETTABLEKS                       R81 R176 K187 ["getMeshGenPreviewImage"]
     1269 SETTABLEKS                       R82 R176 K188 ["clickMeshGenSelectionToggle"]
     1271 SETTABLEKS                       R94 R176 K189 ["clickRetryButton"]
     1273 SETTABLEKS                       R95 R176 K190 ["clickThumbsUpButton"]
     1275 SETTABLEKS                       R96 R176 K191 ["clickThumbsDownButton"]
     1277 SETTABLEKS                       R97 R176 K192 ["clickBranchButton"]
     1279 SETTABLEKS                       R98 R176 K193 ["getThumbsUpButtonIcon"]
     1281 SETTABLEKS                       R99 R176 K194 ["getThumbsDownButtonIcon"]
     1283 SETTABLEKS                       R100 R176 K195 ["getConversation"]
     1285 SETTABLEKS                       R101 R176 K196 ["addConversation"]
     1287 SETTABLEKS                       R102 R176 K197 ["setThreadId"]
     1289 SETTABLEKS                       R103 R176 K198 ["applyConversation"]
     1291 SETTABLEKS                       R106 R176 K199 ["clearConversation"]
     1293 SETTABLEKS                       R107 R176 K200 ["wasToolInvoked"]
     1295 SETTABLEKS                       R108 R176 K201 ["overrideMethodWithError"]
     1297 SETTABLEKS                       R113 R176 K202 ["wasRequestHandlerCalled"]
     1299 SETTABLEKS                       R114 R176 K203 ["getLastRequestField"]
     1301 SETTABLEKS                       R109 R176 K204 ["getMultiplexedClient"]
     1303 SETTABLEKS                       R110 R176 K205 ["getClientStatusForIdentifier"]
     1305 SETTABLEKS                       R111 R176 K206 ["closeAllClients"]
     1307 SETTABLEKS                       R112 R176 K207 ["getToolAlias"]
     1309 SETTABLEKS                       R163 R176 K208 ["streamEvent"]
     1311 SETTABLEKS                       R164 R176 K209 ["addToolCall"]
     1313 SETTABLEKS                       R165 R176 K210 ["streamText"]
     1315 SETTABLEKS                       R166 R176 K211 ["startMessage"]
     1317 SETTABLEKS                       R167 R176 K212 ["sendMessageDeltaAndStop"]
     1319 SETTABLEKS                       R168 R176 K213 ["mockEventLoggerCall"]
     1321 SETTABLEKS                       R169 R176 K214 ["clickTextWithin"]
     1323 SETTABLEKS                       R54 R176 K215 ["getModelQualityWarning"]
     1325 SETTABLEKS                       R56 R176 K216 ["setModelQuality"]
     1327 SETTABLEKS                       R55 R176 K217 ["getGenerationIndicator"]
     1329 SETTABLEKS                       R170 R176 K218 ["getSlashCommandMenu"]
     1331 SETTABLEKS                       R171 R176 K219 ["getSlashCommandItems"]
     1333 SETTABLEKS                       R172 R176 K220 ["setOptions"]
     1335 SETTABLEKS                       R173 R176 K221 ["clickOptionWithDisplayName"]
     1337 SETTABLEKS                       R175 R176 K222 ["getSelectedThreadButton"]
     1339 GETTABLEKS                       R177 R19 K223 ["setState"]
     1341 SETTABLEKS                       R177 R176 K224 ["setExternalServerState"]
     1343 GETTABLEKS                       R177 R19 K225 ["getState"]
     1345 SETTABLEKS                       R177 R176 K226 ["getExternalServerState"]
     1347 GETTABLEKS                       R177 R19 K227 ["getStartCallCount"]
     1349 SETTABLEKS                       R177 R176 K228 ["getExternalServerStartCallCount"]
     1351 GETTABLEKS                       R177 R19 K229 ["getStopCallCount"]
     1353 SETTABLEKS                       R177 R176 K230 ["getExternalServerStopCallCount"]
     1355 CLOSEUPVALS                      R0
     1356 RETURN                           R176 1

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
       33 GETTABLEKS                       R6 R0 K13 ["Util"]
       35 GETTABLEKS                       R6 R6 K14 ["ContentWidgets"]
       37 GETTABLEKS                       R6 R6 K15 ["ContentWidgetRegistry"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K12 [require]
       42 GETTABLEKS                       R7 R0 K13 ["Util"]
       44 GETTABLEKS                       R7 R7 K16 ["DEPRECATED_ContentWidgetRegistry"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K12 [require]
       49 GETTABLEKS                       R8 R0 K17 ["Parent"]
       51 GETTABLEKS                       R8 R8 K18 ["DMNetworking"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K12 [require]
       56 GETTABLEKS                       R9 R0 K17 ["Parent"]
       58 GETTABLEKS                       R9 R9 K19 ["Dash"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K12 [require]
       63 GETTABLEKS                       R10 R0 K20 ["Guest"]
       65 GETTABLEKS                       R10 R10 K21 ["Environment"]
       67 GETTABLEKS                       R10 R10 K22 ["EventLogger"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K12 [require]
       72 GETTABLEKS                       R11 R0 K20 ["Guest"]
       74 GETTABLEKS                       R11 R11 K21 ["Environment"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K12 [require]
       79 GETTABLEKS                       R12 R0 K23 ["Hooks"]
       81 GETTABLEKS                       R12 R12 K24 ["RESTRICTED_ExternalHooks"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K12 [require]
       86 GETTABLEKS                       R13 R0 K25 ["Components"]
       88 GETTABLEKS                       R13 R13 K26 ["Contexts"]
       90 GETTABLEKS                       R13 R13 K27 ["ExternalServerContext"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K12 [require]
       95 GETTABLEKS                       R14 R0 K17 ["Parent"]
       97 GETTABLEKS                       R14 R14 K28 ["Foundation"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K12 [require]
      102 GETTABLEKS                       R15 R0 K17 ["Parent"]
      104 GETTABLEKS                       R15 R15 K29 ["Framework"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K12 [require]
      109 GETTABLEKS                       R16 R0 K25 ["Components"]
      111 GETTABLEKS                       R16 R16 K26 ["Contexts"]
      113 GETTABLEKS                       R16 R16 K30 ["InputStateContext"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K12 [require]
      118 GETTABLEKS                       R17 R0 K20 ["Guest"]
      120 GETTABLEKS                       R17 R17 K31 ["JsonEnvironment"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K12 [require]
      125 GETTABLEKS                       R18 R0 K25 ["Components"]
      127 GETTABLEKS                       R18 R18 K26 ["Contexts"]
      129 GETTABLEKS                       R18 R18 K32 ["LLMProviderSelectionContext"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K12 [require]
      134 GETTABLEKS                       R19 R0 K25 ["Components"]
      136 GETTABLEKS                       R19 R19 K33 ["MainView"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K12 [require]
      141 GETTABLEKS                       R20 R0 K13 ["Util"]
      143 GETTABLEKS                       R20 R20 K34 ["MessageLayoutOrder"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K12 [require]
      148 GETTABLEKS                       R21 R0 K17 ["Parent"]
      150 GETTABLEKS                       R21 R21 K35 ["ModelContextProtocol"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K12 [require]
      155 GETTABLEKS                       R22 R0 K25 ["Components"]
      157 GETTABLEKS                       R22 R22 K26 ["Contexts"]
      159 GETTABLEKS                       R22 R22 K36 ["ModelQualityContext"]
      161 CALL                             R21 1 1
      162 GETIMPORT                        R22 K12 [require]
      164 GETTABLEKS                       R23 R0 K25 ["Components"]
      166 GETTABLEKS                       R23 R23 K26 ["Contexts"]
      168 GETTABLEKS                       R23 R23 K37 ["OptionsContext"]
      170 CALL                             R22 1 1
      171 GETIMPORT                        R23 K12 [require]
      173 GETTABLEKS                       R24 R0 K13 ["Util"]
      175 GETTABLEKS                       R24 R24 K38 ["Persistence"]
      177 CALL                             R23 1 1
      178 GETIMPORT                        R24 K12 [require]
      180 GETTABLEKS                       R25 R0 K25 ["Components"]
      182 GETTABLEKS                       R25 R25 K39 ["APIKeyManagement"]
      184 GETTABLEKS                       R25 R25 K40 ["ProviderModels"]
      186 CALL                             R24 1 1
      187 GETIMPORT                        R25 K12 [require]
      189 GETTABLEKS                       R26 R0 K17 ["Parent"]
      191 GETTABLEKS                       R26 R26 K41 ["React"]
      193 CALL                             R25 1 1
      194 GETIMPORT                        R26 K12 [require]
      196 GETTABLEKS                       R27 R0 K17 ["Parent"]
      198 GETTABLEKS                       R27 R27 K42 ["ReactUtils"]
      200 CALL                             R26 1 1
      201 GETIMPORT                        R27 K12 [require]
      203 GETTABLEKS                       R28 R0 K43 ["Flags"]
      205 GETTABLEKS                       R28 R28 K44 ["ScopedFastSetting"]
      207 CALL                             R27 1 1
      208 GETIMPORT                        R28 K12 [require]
      210 GETTABLEKS                       R29 R0 K13 ["Util"]
      212 GETTABLEKS                       R29 R29 K45 ["Serializer"]
      214 CALL                             R28 1 1
      215 GETIMPORT                        R29 K12 [require]
      217 GETTABLEKS                       R30 R0 K25 ["Components"]
      219 GETTABLEKS                       R30 R30 K26 ["Contexts"]
      221 GETTABLEKS                       R30 R30 K46 ["SessionIdContext"]
      223 CALL                             R29 1 1
      224 GETIMPORT                        R30 K12 [require]
      226 GETTABLEKS                       R31 R0 K47 ["tests"]
      228 GETTABLEKS                       R31 R31 K48 ["TestUtils"]
      230 GETTABLEKS                       R31 R31 K49 ["TagSearch"]
      232 CALL                             R30 1 1
      233 GETIMPORT                        R31 K12 [require]
      235 GETTABLEKS                       R32 R0 K13 ["Util"]
      237 GETTABLEKS                       R32 R32 K50 ["Tagging"]
      239 CALL                             R31 1 1
      240 GETIMPORT                        R32 K12 [require]
      242 GETTABLEKS                       R33 R0 K13 ["Util"]
      244 GETTABLEKS                       R33 R33 K51 ["TestIds"]
      246 CALL                             R32 1 1
      247 GETIMPORT                        R33 K12 [require]
      249 GETTABLEKS                       R34 R0 K47 ["tests"]
      251 GETTABLEKS                       R34 R34 K48 ["TestUtils"]
      253 GETTABLEKS                       R34 R34 K52 ["ToolTestUtils"]
      255 CALL                             R33 1 1
      256 GETIMPORT                        R34 K12 [require]
      258 GETTABLEKS                       R35 R0 K53 ["Tools"]
      260 GETTABLEKS                       R35 R35 K54 ["ToolTypes"]
      262 CALL                             R34 1 1
      263 GETIMPORT                        R35 K12 [require]
      265 GETTABLEKS                       R36 R0 K13 ["Util"]
      267 GETTABLEKS                       R36 R36 K14 ["ContentWidgets"]
      269 GETTABLEKS                       R36 R36 K55 ["ToolWidgetMappingRegistry"]
      271 CALL                             R35 1 1
      272 GETIMPORT                        R36 K12 [require]
      274 GETTABLEKS                       R37 R0 K56 ["Resources"]
      276 GETTABLEKS                       R37 R37 K57 ["Localization"]
      278 GETTABLEKS                       R37 R37 K58 ["Translator"]
      280 CALL                             R36 1 1
      281 GETIMPORT                        R37 K12 [require]
      283 GETTABLEKS                       R38 R0 K59 ["Types"]
      285 CALL                             R37 1 1
      286 GETIMPORT                        R38 K12 [require]
      288 GETTABLEKS                       R39 R0 K25 ["Components"]
      290 GETTABLEKS                       R39 R39 K60 ["UIToolRegistry"]
      292 CALL                             R38 1 1
      293 GETIMPORT                        R39 K12 [require]
      295 GETTABLEKS                       R40 R0 K25 ["Components"]
      297 GETTABLEKS                       R40 R40 K26 ["Contexts"]
      299 GETTABLEKS                       R40 R40 K61 ["WindowInputContext"]
      301 CALL                             R39 1 1
      302 GETIMPORT                        R40 K12 [require]
      304 GETTABLEKS                       R41 R0 K47 ["tests"]
      306 GETTABLEKS                       R41 R41 K48 ["TestUtils"]
      308 GETTABLEKS                       R41 R41 K62 ["setup"]
      310 GETTABLEKS                       R41 R41 K63 ["createMockConversationContext"]
      312 CALL                             R40 1 1
      313 GETIMPORT                        R41 K12 [require]
      315 GETTABLEKS                       R42 R0 K47 ["tests"]
      317 GETTABLEKS                       R42 R42 K48 ["TestUtils"]
      319 GETTABLEKS                       R42 R42 K62 ["setup"]
      321 GETTABLEKS                       R42 R42 K64 ["createMockExternalServerContext"]
      323 CALL                             R41 1 1
      324 GETIMPORT                        R42 K12 [require]
      326 GETTABLEKS                       R43 R0 K47 ["tests"]
      328 GETTABLEKS                       R43 R43 K48 ["TestUtils"]
      330 GETTABLEKS                       R43 R43 K62 ["setup"]
      332 GETTABLEKS                       R43 R43 K65 ["createMockInputStateContext"]
      334 CALL                             R42 1 1
      335 GETIMPORT                        R43 K12 [require]
      337 GETTABLEKS                       R44 R0 K47 ["tests"]
      339 GETTABLEKS                       R44 R44 K48 ["TestUtils"]
      341 GETTABLEKS                       R44 R44 K62 ["setup"]
      343 GETTABLEKS                       R44 R44 K66 ["createMockLLMPackageContext"]
      345 CALL                             R43 1 1
      346 GETIMPORT                        R44 K12 [require]
      348 GETTABLEKS                       R45 R0 K47 ["tests"]
      350 GETTABLEKS                       R45 R45 K48 ["TestUtils"]
      352 GETTABLEKS                       R45 R45 K62 ["setup"]
      354 GETTABLEKS                       R45 R45 K67 ["createMockMcpClientContext"]
      356 CALL                             R44 1 1
      357 GETIMPORT                        R45 K12 [require]
      359 GETTABLEKS                       R46 R0 K47 ["tests"]
      361 GETTABLEKS                       R46 R46 K48 ["TestUtils"]
      363 GETTABLEKS                       R46 R46 K62 ["setup"]
      365 GETTABLEKS                       R46 R46 K68 ["createMockModelQualityContext"]
      367 CALL                             R45 1 1
      368 GETIMPORT                        R46 K12 [require]
      370 GETTABLEKS                       R47 R0 K47 ["tests"]
      372 GETTABLEKS                       R47 R47 K48 ["TestUtils"]
      374 GETTABLEKS                       R47 R47 K62 ["setup"]
      376 GETTABLEKS                       R47 R47 K69 ["createMockOptionsContext"]
      378 CALL                             R46 1 1
      379 GETIMPORT                        R47 K12 [require]
      381 GETTABLEKS                       R48 R0 K47 ["tests"]
      383 GETTABLEKS                       R48 R48 K48 ["TestUtils"]
      385 GETTABLEKS                       R48 R48 K62 ["setup"]
      387 GETTABLEKS                       R48 R48 K70 ["createMockPopoutWidgetContext"]
      389 CALL                             R47 1 1
      390 GETIMPORT                        R48 K12 [require]
      392 GETTABLEKS                       R49 R0 K47 ["tests"]
      394 GETTABLEKS                       R49 R49 K48 ["TestUtils"]
      396 GETTABLEKS                       R49 R49 K62 ["setup"]
      398 GETTABLEKS                       R49 R49 K71 ["createMockSettingsContext"]
      400 CALL                             R48 1 1
      401 GETIMPORT                        R49 K12 [require]
      403 GETTABLEKS                       R50 R0 K47 ["tests"]
      405 GETTABLEKS                       R50 R50 K48 ["TestUtils"]
      407 GETTABLEKS                       R50 R50 K62 ["setup"]
      409 GETTABLEKS                       R50 R50 K72 ["createMockThreadIdContext"]
      411 CALL                             R49 1 1
      412 GETIMPORT                        R50 K12 [require]
      414 GETTABLEKS                       R51 R0 K47 ["tests"]
      416 GETTABLEKS                       R51 R51 K48 ["TestUtils"]
      418 GETTABLEKS                       R51 R51 K73 ["isVisibleGuiObject"]
      420 CALL                             R50 1 1
      421 GETIMPORT                        R51 K12 [require]
      423 GETTABLEKS                       R52 R0 K13 ["Util"]
      425 GETTABLEKS                       R52 R52 K14 ["ContentWidgets"]
      427 GETTABLEKS                       R52 R52 K74 ["registerContentWidgets"]
      429 CALL                             R51 1 1
      430 LOADK                            R54 K75 ["Packages"]
      431 NAMECALL                         R52 R0 K3 ["FindFirstAncestor"]
      433 CALL                             R52 2 1
      434 GETTABLEKS                       R52 R52 K76 ["Dev"]
      436 GETIMPORT                        R53 K12 [require]
      438 GETTABLEKS                       R54 R52 K77 ["FoundationTestingLibrary"]
      440 CALL                             R53 1 1
      441 GETIMPORT                        R54 K12 [require]
      443 GETTABLEKS                       R55 R52 K78 ["JestGlobals"]
      445 CALL                             R54 1 1
      446 GETIMPORT                        R55 K12 [require]
      448 GETTABLEKS                       R56 R52 K79 ["ReactTestingLibrary"]
      450 CALL                             R55 1 1
      451 GETIMPORT                        R56 K12 [require]
      453 GETTABLEKS                       R57 R0 K43 ["Flags"]
      455 GETTABLEKS                       R57 R57 K80 ["FFlagAssistantHarnessSplit"]
      457 CALL                             R56 1 1
      458 GETIMPORT                        R57 K12 [require]
      460 GETTABLEKS                       R58 R0 K43 ["Flags"]
      462 GETTABLEKS                       R58 R58 K81 ["FFlagAssistantMultipleChatPersistence"]
      464 CALL                             R57 1 1
      465 GETIMPORT                        R58 K12 [require]
      467 GETTABLEKS                       R59 R0 K43 ["Flags"]
      469 GETTABLEKS                       R59 R59 K82 ["FFlagAssistantSplitToolsAndWidgets"]
      471 CALL                             R58 1 1
      472 GETTABLEKS                       R59 R25 K83 ["createElement"]
      474 GETTABLEKS                       R60 R54 K84 ["afterAll"]
      476 GETTABLEKS                       R61 R54 K85 ["afterEach"]
      478 GETTABLEKS                       R62 R54 K86 ["beforeAll"]
      480 GETTABLEKS                       R63 R54 K87 ["expect"]
      482 GETTABLEKS                       R64 R54 K88 ["jest"]
      484 GETTABLEKS                       R65 R55 K89 ["act"]
      486 GETTABLEKS                       R66 R55 K90 ["fireEvent"]
      488 GETTABLEKS                       R67 R55 K91 ["waitFor"]
      490 GETTABLEKS                       R68 R55 K92 ["within"]
      492 DUPCLOSURE                       R69 K93 [PROTO_8]
      493 CAPTURE                          VAL R10
      494 CAPTURE                          VAL R7
      495 CAPTURE                          VAL R9
      496 CAPTURE                          VAL R3
      497 CAPTURE                          VAL R37
      498 CAPTURE                          VAL R16
      499 LOADNIL                          R70
      500 MOVE                             R71 R62
      501 NEWCLOSURE                       R72 P1
      502 CAPTURE                          REF R70
      503 CAPTURE                          VAL R64
      504 CAPTURE                          VAL R31
      505 CALL                             R71 1 0
      506 MOVE                             R71 R60
      507 NEWCLOSURE                       R72 P2
      508 CAPTURE                          REF R70
      509 CALL                             R71 1 0
      510 MOVE                             R71 R61
      511 DUPCLOSURE                       R72 K94 [PROTO_12]
      512 CAPTURE                          VAL R5
      513 CAPTURE                          VAL R28
      514 CALL                             R71 1 0
      515 DUPCLOSURE                       R71 K95 [PROTO_191]
      516 CAPTURE                          VAL R27
      517 CAPTURE                          VAL R56
      518 CAPTURE                          VAL R48
      519 CAPTURE                          VAL R40
      520 CAPTURE                          VAL R42
      521 CAPTURE                          VAL R49
      522 CAPTURE                          VAL R44
      523 CAPTURE                          VAL R43
      524 CAPTURE                          VAL R45
      525 CAPTURE                          VAL R46
      526 CAPTURE                          VAL R47
      527 CAPTURE                          VAL R41
      528 CAPTURE                          VAL R59
      529 CAPTURE                          VAL R29
      530 CAPTURE                          VAL R1
      531 CAPTURE                          VAL R39
      532 CAPTURE                          VAL R17
      533 CAPTURE                          VAL R8
      534 CAPTURE                          VAL R69
      535 CAPTURE                          VAL R33
      536 CAPTURE                          VAL R10
      537 CAPTURE                          VAL R23
      538 CAPTURE                          VAL R58
      539 CAPTURE                          VAL R51
      540 CAPTURE                          VAL R5
      541 CAPTURE                          VAL R35
      542 CAPTURE                          VAL R6
      543 CAPTURE                          VAL R4
      544 CAPTURE                          VAL R2
      545 CAPTURE                          VAL R55
      546 CAPTURE                          VAL R14
      547 CAPTURE                          VAL R53
      548 CAPTURE                          VAL R26
      549 CAPTURE                          VAL R66
      550 CAPTURE                          VAL R65
      551 CAPTURE                          VAL R11
      552 CAPTURE                          VAL R64
      553 CAPTURE                          VAL R37
      554 CAPTURE                          VAL R68
      555 CAPTURE                          VAL R32
      556 CAPTURE                          VAL R30
      557 CAPTURE                          VAL R57
      558 CAPTURE                          VAL R67
      559 CAPTURE                          VAL R63
      560 CAPTURE                          VAL R13
      561 CAPTURE                          VAL R19
      562 CAPTURE                          VAL R36
      563 CAPTURE                          VAL R15
      564 CAPTURE                          VAL R24
      565 CAPTURE                          VAL R50
      566 CAPTURE                          VAL R18
      567 CLOSEUPVALS                      R70
      568 RETURN                           R71 1
