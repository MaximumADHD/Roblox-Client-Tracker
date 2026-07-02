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
        0 DUPTABLE                         R1 K4 [{[1], ["width"] = 100, ["height"] = 100}]
        1 SETTABLEKS                       R0 R1 K0 ["tempId"]
        3 RETURN                           R1 1

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
       14 DUPTABLE                         R4 K6 [{["isHost"] = True, ["isGuest"] = True}]
       15 CALL                             R3 1 -1
       16 CALL                             R2 -1 1
       17 GETIMPORT                        R3 K9 [table.clone]
       19 GETUPVAL                         R4 2
       20 CALL                             R3 1 1
       21 SETTABLEKS                       R3 R1 K10 ["EventLogger"]
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          VAL R2
       25 SETTABLEKS                       R3 R1 K11 ["getNetworking"]
       27 GETTABLEKS                       R3 R1 K12 ["selection"]
       29 DUPCLOSURE                       R4 K13 [PROTO_1]
       30 CAPTURE                          UPVAL U3
       31 SETTABLEKS                       R4 R3 K14 ["get"]
       33 GETTABLEKS                       R3 R1 K12 ["selection"]
       35 DUPCLOSURE                       R4 K15 [PROTO_2]
       36 CAPTURE                          UPVAL U3
       37 SETTABLEKS                       R4 R3 K16 ["set"]
       39 NEWCLOSURE                       R3 P3
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R3 R1 K17 ["copyToClipboard"]
       43 DUPCLOSURE                       R3 K18 [PROTO_4]
       44 SETTABLEKS                       R3 R1 K19 ["convertImageDataToTempIdAsync"]
       46 DUPCLOSURE                       R3 K20 [PROTO_5]
       47 SETTABLEKS                       R3 R1 K21 ["releaseTempIdAsync"]
       49 NEWTABLE                         R3 1 0
       51 GETUPVAL                         R4 4
       52 GETTABLEKS                       R4 R4 K22 ["CLAUDE_API_KEY"]
       54 LOADK                            R5 K23 ["initial-test-api-key"]
       55 SETTABLE                         R5 R3 R4
       56 NEWCLOSURE                       R4 P6
       57 CAPTURE                          REF R3
       58 SETTABLEKS                       R4 R1 K24 ["getSecureSettingsAsync"]
       60 NEWCLOSURE                       R4 P7
       61 CAPTURE                          REF R3
       62 SETTABLEKS                       R4 R1 K25 ["setSecureSettingsAsync"]
       64 GETUPVAL                         R4 5
       65 GETTABLEKS                       R4 R4 K26 ["setup"]
       67 MOVE                             R5 R1
       68 CALL                             R4 1 0
       69 CLOSEUPVALS                      R3
       70 RETURN                           R1 1

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
        7 DUPTABLE                         R1 K7 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
        8 SETTABLEKS                       R0 R1 K4 ["id"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K8 ["definition"]
       13 GETTABLEKS                       R2 R2 K8 ["definition"]
       15 GETTABLEKS                       R2 R2 K5 ["name"]
       17 SETTABLEKS                       R2 R1 K5 ["name"]
       19 GETUPVAL                         R2 2
       20 SETTABLEKS                       R2 R1 K6 ["input"]
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R2 R2 K9 ["get"]
       25 CALL                             R2 0 1
       26 GETTABLEKS                       R2 R2 K10 ["getContentObserver"]
       28 CALL                             R2 0 1
       29 GETTABLEKS                       R3 R2 K11 ["onNewMessage"]
       31 GETUPVAL                         R4 4
       32 CALL                             R3 1 0
       33 GETTABLEKS                       R3 R2 K12 ["onContentStart"]
       35 MOVE                             R4 R1
       36 CALL                             R3 1 1
       37 JUMPIFNOT                        R3 ; [+4]
       38 GETTABLEKS                       R4 R2 K13 ["onContentFinished"]
       40 MOVE                             R5 R3
       41 CALL                             R4 1 0
       42 GETUPVAL                         R4 6
       43 GETTABLEKS                       R4 R4 K14 ["assign"]
       45 GETUPVAL                         R5 5
       46 JUMPIF                           R5 ; [+2]
       47 NEWTABLE                         R5 0 0
       49 DUPTABLE                         R6 K17 [{"messageId", "contentId"}]
       50 GETUPVAL                         R7 4
       51 SETTABLEKS                       R7 R6 K15 ["messageId"]
       53 SETTABLEKS                       R3 R6 K16 ["contentId"]
       55 CALL                             R4 2 1
       56 SETUPVAL                         R4 5
       57 JUMPIFNOT                        R3 ; [+5]
       58 GETTABLEKS                       R4 R2 K18 ["onPreExecuteToolUse"]
       60 MOVE                             R5 R3
       61 MOVE                             R6 R1
       62 CALL                             R4 2 0
       63 GETUPVAL                         R4 1
       64 GETTABLEKS                       R4 R4 K8 ["definition"]
       66 GETTABLEKS                       R4 R4 K19 ["handler"]
       68 GETUPVAL                         R5 2
       69 GETUPVAL                         R6 5
       70 GETUPVAL                         R7 7
       71 CALL                             R4 3 1
       72 DUPTABLE                         R5 K26 [{["type"] = "tool_result", ["id"], ["name"], ["content"], ["isError"], ["startTime"] = 0, ["startTimeAfterConfirmation"] = 0}]
       73 SETTABLEKS                       R0 R5 K4 ["id"]
       75 GETUPVAL                         R6 1
       76 GETTABLEKS                       R6 R6 K8 ["definition"]
       78 GETTABLEKS                       R6 R6 K8 ["definition"]
       80 GETTABLEKS                       R6 R6 K5 ["name"]
       82 SETTABLEKS                       R6 R5 K5 ["name"]
       84 GETTABLEKS                       R6 R4 K21 ["content"]
       86 SETTABLEKS                       R6 R5 K21 ["content"]
       88 GETTABLEKS                       R6 R4 K22 ["isError"]
       90 SETTABLEKS                       R6 R5 K22 ["isError"]
       92 JUMPIFNOT                        R3 ; [+5]
       93 GETTABLEKS                       R6 R2 K27 ["onToolResult"]
       95 MOVE                             R7 R3
       96 MOVE                             R8 R5
       97 CALL                             R6 2 0
       98 RETURN                           R5 1

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
        0 JUMPIF                           R3 ; [+20]
        1 DUPTABLE                         R4 K7 [{[1] = , ["sessionId"] = "", ["sendNotification"], ["sendRequest"], ["sendProgress"]}]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K8 ["fn"]
        5 CALL                             R5 0 1
        6 SETTABLEKS                       R5 R4 K4 ["sendNotification"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K8 ["fn"]
       11 CALL                             R5 0 1
       12 SETTABLEKS                       R5 R4 K5 ["sendRequest"]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K8 ["fn"]
       17 CALL                             R5 0 1
       18 SETTABLEKS                       R5 R4 K6 ["sendProgress"]
       20 MOVE                             R3 R4
       21 FASTCALL2K                       ASSERT R3 K9 ; [+5]
       23 MOVE                             R5 R3
       24 LOADK                            R6 K9 ["RequestHandlerExtra is required for invoking tool"]
       25 GETIMPORT                        R4 K11 [assert]
       27 CALL                             R4 2 0
       28 GETIMPORT                        R4 K14 [coroutine.running]
       30 CALL                             R4 0 1
       31 LOADNIL                          R5
       32 LOADNIL                          R6
       33 NEWCLOSURE                       R7 P0
       34 CAPTURE                          REF R5
       35 CAPTURE                          REF R6
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          REF R2
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          REF R3
       43 CAPTURE                          VAL R4
       44 GETUPVAL                         R8 4
       45 NEWCLOSURE                       R9 P1
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          VAL R7
       49 CALL                             R8 1 0
       50 JUMPIFNOTEQKNIL                  R5 ; [+4]
       52 GETIMPORT                        R8 K16 [coroutine.yield]
       54 CALL                             R8 0 0
       55 LOADK                            R11 K17 ["Tool invocation failed: %*"]
       56 MOVE                             R13 R6
       57 NAMECALL                         R11 R11 K18 ["format"]
       59 CALL                             R11 2 1
       60 MOVE                             R10 R11
       61 FASTCALL2                        ASSERT R5 R10 ; [+4]
       63 MOVE                             R9 R5
       64 GETIMPORT                        R8 K11 [assert]
       66 CALL                             R8 2 0
       67 CLOSEUPVALS                      R2
       68 RETURN                           R6 1

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
       25 DUPTABLE                         R4 K7 [{["exact"] = True}]
       26 MOVE                             R5 R2
       27 JUMPIF                           R5 ; [+2]
       28 NEWTABLE                         R5 0 0
       30 CALL                             R3 2 1
       31 MOVE                             R2 R3
       32 GETUPVAL                         R3 2
       33 MOVE                             R4 R1
       34 CALL                             R3 1 1
       35 GETTABLEKS                       R3 R3 K8 ["queryByText"]
       37 MOVE                             R4 R0
       38 MOVE                             R5 R2
       39 CALL                             R3 2 1
       40 JUMPIF                           R3 ; [+8]
       41 GETUPVAL                         R3 2
       42 MOVE                             R4 R1
       43 CALL                             R3 1 1
       44 GETTABLEKS                       R3 R3 K9 ["queryByDisplayValue"]
       46 MOVE                             R4 R0
       47 MOVE                             R5 R2
       48 CALL                             R3 2 1
       49 LOADK                            R7 K10 ["No GuiObject found for message \"%*\""]
       50 MOVE                             R9 R0
       51 NAMECALL                         R7 R7 K11 ["format"]
       53 CALL                             R7 2 1
       54 MOVE                             R6 R7
       55 FASTCALL2                        ASSERT R3 R6 ; [+4]
       57 MOVE                             R5 R3
       58 GETIMPORT                        R4 K2 [assert]
       60 CALL                             R4 2 0
       61 RETURN                           R3 1

PROTO_33:
        0 LOADK                            R3 K0 ["GuiButton"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_35:
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

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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

PROTO_40:
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

PROTO_42:
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

PROTO_43:
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
       20 DUPTABLE                         R5 K7 [{["exact"] = False}]
       21 MOVE                             R6 R1
       22 JUMPIF                           R6 ; [+2]
       23 NEWTABLE                         R6 0 0
       25 CALL                             R4 2 -1
       26 CALL                             R2 -1 1
       27 GETUPVAL                         R3 3
       28 GETTABLEKS                       R3 R3 K8 ["firstAncestorWithTag"]
       30 MOVE                             R4 R2
       31 LOADK                            R5 K9 ["Assistant-MessageWidget"]
       32 CALL                             R3 2 1
       33 MOVE                             R5 R3
       34 JUMPIFNOT                        R5 ; [+4]
       35 LOADK                            R7 K10 ["GuiObject"]
       36 NAMECALL                         R5 R3 K11 ["IsA"]
       38 CALL                             R5 2 1
       39 LOADK                            R7 K12 ["Message widget not found for message: "]
       40 MOVE                             R8 R0
       41 CONCAT                           R6 R7 R8
       42 FASTCALL2                        ASSERT R5 R6 ; [+3]
       44 GETIMPORT                        R4 K2 [assert]
       46 CALL                             R4 2 0
       47 MOVE                             R4 R2
       48 GETTABLEKS                       R5 R4 K13 ["Parent"]
       50 JUMPIFEQ                         R5 R3 ; [+4]
       52 GETTABLEKS                       R4 R4 K13 ["Parent"]
       54 JUMPBACK                         ; [-7]
       55 MOVE                             R6 R4
       56 JUMPIFNOT                        R6 ; [+4]
       57 LOADK                            R8 K10 ["GuiObject"]
       58 NAMECALL                         R6 R4 K11 ["IsA"]
       60 CALL                             R6 2 1
       61 LOADK                            R8 K14 ["Content widget not found for message: "]
       62 MOVE                             R9 R0
       63 CONCAT                           R7 R8 R9
       64 FASTCALL2                        ASSERT R6 R7 ; [+3]
       66 GETIMPORT                        R5 K2 [assert]
       68 CALL                             R5 2 0
       69 RETURN                           R4 1

PROTO_44:
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
       17 DUPTABLE                         R2 K6 [{["exact"] = False}]
       18 CALL                             R0 2 -1
       19 RETURN                           R0 -1

PROTO_45:
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
       54 GETUPVAL                         R6 3
       55 GETTABLEKS                       R6 R6 K10 ["MessageActions"]
       57 GETTABLEKS                       R6 R6 K11 ["Container"]
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
       82 GETUPVAL                         R8 0
       83 MOVE                             R9 R7
       84 CALL                             R8 1 1
       85 GETTABLEKS                       R8 R8 K13 ["queryByTestId"]
       87 MOVE                             R9 R6
       88 CALL                             R8 1 1
       89 MOVE                             R5 R8
       90 RETURN                           R5 1

PROTO_46:
        0 GETTABLEKS                       R3 R0 K0 ["messageContainer"]
        2 GETTABLEKS                       R3 R3 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R4 R1 K0 ["messageContainer"]
        6 GETTABLEKS                       R4 R4 K1 ["LayoutOrder"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_47:
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
       53 DUPCLOSURE                       R4 K18 [PROTO_46]
       54 CALL                             R2 2 0
       55 RETURN                           R1 1

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETTABLEKS                       R0 R0 K0 ["getByText"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_49:
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

PROTO_50:
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
       18 DUPTABLE                         R4 K6 [{["exact"] = False}]
       19 MOVE                             R5 R2
       20 JUMPIF                           R5 ; [+2]
       21 NEWTABLE                         R5 0 0
       23 CALL                             R3 2 1
       24 GETIMPORT                        R4 K8 [pcall]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          REF R1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R3
       31 CALL                             R4 1 2
       32 JUMPIFNOT                        R4 ; [+2]
       33 CLOSEUPVALS                      R1
       34 RETURN                           R5 1
       35 GETIMPORT                        R6 K8 [pcall]
       37 NEWCLOSURE                       R7 P1
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R3
       42 CALL                             R6 1 2
       43 JUMPIFNOT                        R6 ; [+2]
       44 CLOSEUPVALS                      R1
       45 RETURN                           R7 1
       46 GETIMPORT                        R8 K10 [error]
       48 LOADK                            R10 K11 ["No text object found for message \"%*\".\n%*\n%*"]
       49 MOVE                             R12 R0
       50 MOVE                             R13 R5
       51 MOVE                             R14 R7
       52 NAMECALL                         R10 R10 K12 ["format"]
       54 CALL                             R10 4 1
       55 MOVE                             R9 R10
       56 CALL                             R8 1 0
       57 CLOSEUPVALS                      R1
       58 RETURN                           R0 0

PROTO_51:
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

PROTO_52:
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

PROTO_53:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setModelQuality"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_56:
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

PROTO_57:
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

PROTO_58:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["CursorPosition"]
        4 RETURN                           R0 0

PROTO_59:
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

PROTO_60:
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

PROTO_61:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["screen"]
        3 GETTABLEKS                       R2 R2 K1 ["debug"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_62:
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

PROTO_63:
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

PROTO_64:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_65:
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

PROTO_66:
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

PROTO_67:
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

PROTO_68:
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

PROTO_69:
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

PROTO_70:
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

PROTO_71:
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

PROTO_72:
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

PROTO_73:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LENGTH                           R4 R1
        3 LOADN                            R2 1
        4 LOADN                            R3 -1
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

PROTO_74:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LENGTH                           R0 R1
        3 RETURN                           R0 1

PROTO_75:
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

PROTO_76:
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

PROTO_77:
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

PROTO_78:
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

PROTO_79:
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

PROTO_80:
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

PROTO_81:
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

PROTO_82:
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

PROTO_83:
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

PROTO_84:
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

PROTO_85:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_86:
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

PROTO_87:
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

PROTO_92:
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

PROTO_93:
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

PROTO_94:
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

PROTO_95:
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

PROTO_96:
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

PROTO_97:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Enums"]
        4 GETTABLEKS                       R2 R2 K1 ["IconName"]
        6 GETTABLEKS                       R2 R2 K2 ["TwoArrowsSpinClockwise"]
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

PROTO_98:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Enums"]
        4 GETTABLEKS                       R2 R2 K1 ["IconName"]
        6 GETTABLEKS                       R2 R2 K2 ["ThumbUp"]
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

PROTO_99:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Enums"]
        4 GETTABLEKS                       R2 R2 K1 ["IconName"]
        6 GETTABLEKS                       R2 R2 K2 ["ThumbDown"]
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

PROTO_101:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Enums"]
        4 GETTABLEKS                       R2 R2 K1 ["IconName"]
        6 GETTABLEKS                       R2 R2 K2 ["ThumbUp"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 1
       10 LOADK                            R5 K3 ["TextLabel"]
       11 NAMECALL                         R3 R1 K4 ["IsA"]
       13 CALL                             R3 2 1
       14 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       16 LOADK                            R4 K5 ["Thumbs up button is not a TextLabel"]
       17 GETIMPORT                        R2 K7 [assert]
       19 CALL                             R2 2 0
       20 GETTABLEKS                       R2 R1 K8 ["FontFace"]
       22 GETTABLEKS                       R2 R2 K9 ["Bold"]
       24 JUMPIFNOT                        R2 ; [+8]
       25 LOADK                            R3 K10 ["%*-Filled"]
       26 GETTABLEKS                       R5 R1 K11 ["Text"]
       28 NAMECALL                         R3 R3 K12 ["format"]
       30 CALL                             R3 2 1
       31 MOVE                             R2 R3
       32 RETURN                           R2 1
       33 GETTABLEKS                       R2 R1 K11 ["Text"]
       35 RETURN                           R2 1

PROTO_102:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Enums"]
        4 GETTABLEKS                       R2 R2 K1 ["IconName"]
        6 GETTABLEKS                       R2 R2 K2 ["ThumbDown"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 1
       10 LOADK                            R5 K3 ["TextLabel"]
       11 NAMECALL                         R3 R1 K4 ["IsA"]
       13 CALL                             R3 2 1
       14 FASTCALL2K                       ASSERT R3 K5 ; [+4]
       16 LOADK                            R4 K5 ["Thumbs down button is not a TextLabel"]
       17 GETIMPORT                        R2 K7 [assert]
       19 CALL                             R2 2 0
       20 GETTABLEKS                       R2 R1 K8 ["FontFace"]
       22 GETTABLEKS                       R2 R2 K9 ["Bold"]
       24 JUMPIFNOT                        R2 ; [+8]
       25 LOADK                            R3 K10 ["%*-Filled"]
       26 GETTABLEKS                       R5 R1 K11 ["Text"]
       28 NAMECALL                         R3 R3 K12 ["format"]
       30 CALL                             R3 2 1
       31 MOVE                             R2 R3
       32 RETURN                           R2 1
       33 GETTABLEKS                       R2 R1 K11 ["Text"]
       35 RETURN                           R2 1

PROTO_103:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getConversation"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_104:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setConversation"]
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
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       12 NAMECALL                         R1 R1 K2 ["Wait"]
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       18 NAMECALL                         R1 R1 K2 ["Wait"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_106:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setThreadId"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_107:
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

PROTO_108:
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
       21 GETIMPORT                        R1 K4 [next]
       23 GETTABLEKS                       R2 R0 K5 ["threads"]
       25 CALL                             R1 1 1
       26 FASTCALL2K                       ASSERT R1 K6 ; [+5]
       28 MOVE                             R3 R1
       29 LOADK                            R4 K6 ["Conversation must have at least one thread"]
       30 GETIMPORT                        R2 K8 [assert]
       32 CALL                             R2 2 0
       33 GETUPVAL                         R2 4
       34 GETTABLEKS                       R2 R2 K9 ["getThreadId"]
       36 CALL                             R2 0 1
       37 GETUPVAL                         R3 0
       38 NEWCLOSURE                       R4 P1
       39 CAPTURE                          UPVAL U4
       40 CAPTURE                          VAL R1
       41 CALL                             R3 1 0
       42 GETUPVAL                         R3 2
       43 NAMECALL                         R3 R3 K0 ["UpdateUnitTestOnly"]
       45 CALL                             R3 1 0
       46 GETUPVAL                         R3 3
       47 GETTABLEKS                       R3 R3 K1 ["Stepped"]
       49 NAMECALL                         R3 R3 K2 ["Wait"]
       51 CALL                             R3 1 0
       52 GETUPVAL                         R3 3
       53 GETTABLEKS                       R3 R3 K1 ["Stepped"]
       55 NAMECALL                         R3 R3 K2 ["Wait"]
       57 CALL                             R3 1 0
       58 GETUPVAL                         R2 2
       59 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
       61 CALL                             R2 1 0
       62 GETUPVAL                         R2 3
       63 GETTABLEKS                       R2 R2 K1 ["Stepped"]
       65 NAMECALL                         R2 R2 K2 ["Wait"]
       67 CALL                             R2 1 0
       68 GETUPVAL                         R2 3
       69 GETTABLEKS                       R2 R2 K1 ["Stepped"]
       71 NAMECALL                         R2 R2 K2 ["Wait"]
       73 CALL                             R2 1 0
       74 RETURN                           R0 0

PROTO_109:
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

PROTO_110:
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

PROTO_111:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Header"]
        3 GETTABLEKS                       R1 R1 K1 ["ToggleThreadsMenu"]
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
       69 GETUPVAL                         R2 0
       70 GETTABLEKS                       R2 R2 K12 ["ThreadsMenu"]
       72 GETTABLEKS                       R2 R2 K13 ["Container"]
       74 LOADNIL                          R3
       75 MOVE                             R4 R3
       76 JUMPIF                           R4 ; [+12]
       77 GETUPVAL                         R7 1
       78 JUMPIFNOTEQKNIL                  R7 ; [+2]
       80 LOADB                            R6 0 +1
       81 LOADB                            R6 1
       82 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       84 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       85 GETIMPORT                        R5 K4 [assert]
       87 CALL                             R5 2 0
       88 GETUPVAL                         R4 1
       89 MOVE                             R3 R4
       90 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       92 MOVE                             R5 R3
       93 LOADK                            R6 K5 ["Query container not found"]
       94 GETIMPORT                        R4 K4 [assert]
       96 CALL                             R4 2 0
       97 GETUPVAL                         R4 2
       98 MOVE                             R5 R3
       99 CALL                             R4 1 1
      100 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
      102 MOVE                             R5 R2
      103 CALL                             R4 1 1
      104 LOADK                            R8 K7 ["No result found for testId \"%*\""]
      105 MOVE                             R10 R2
      106 NAMECALL                         R8 R8 K8 ["format"]
      108 CALL                             R8 2 1
      109 MOVE                             R7 R8
      110 FASTCALL2                        ASSERT R4 R7 ; [+4]
      112 MOVE                             R6 R4
      113 GETIMPORT                        R5 K4 [assert]
      115 CALL                             R5 2 0
      116 MOVE                             R1 R4
      117 GETUPVAL                         R3 0
      118 GETTABLEKS                       R3 R3 K12 ["ThreadsMenu"]
      120 GETTABLEKS                       R3 R3 K14 ["ExistingThreadButton"]
      122 MOVE                             R4 R1
      123 MOVE                             R5 R4
      124 JUMPIF                           R5 ; [+12]
      125 GETUPVAL                         R8 1
      126 JUMPIFNOTEQKNIL                  R8 ; [+2]
      128 LOADB                            R7 0 +1
      129 LOADB                            R7 1
      130 FASTCALL2K                       ASSERT R7 K2 ; [+4]
      132 LOADK                            R8 K2 ["Container not mounted, ensure render is called"]
      133 GETIMPORT                        R6 K4 [assert]
      135 CALL                             R6 2 0
      136 GETUPVAL                         R5 1
      137 MOVE                             R4 R5
      138 FASTCALL2K                       ASSERT R4 K5 ; [+5]
      140 MOVE                             R6 R4
      141 LOADK                            R7 K5 ["Query container not found"]
      142 GETIMPORT                        R5 K4 [assert]
      144 CALL                             R5 2 0
      145 GETUPVAL                         R5 2
      146 MOVE                             R6 R4
      147 CALL                             R5 1 1
      148 GETTABLEKS                       R5 R5 K15 ["getAllByTestId"]
      150 MOVE                             R6 R3
      151 CALL                             R5 1 1
      152 MOVE                             R7 R5
      153 JUMPIFNOT                        R7 ; [+6]
      154 LENGTH                           R8 R5
      155 LOADN                            R9 0
      156 JUMPIFLT                         R9 R8 ; [+2]
      158 LOADB                            R7 0 +1
      159 LOADB                            R7 1
      160 LOADK                            R9 K16 ["No results found for testId \"%*\""]
      161 MOVE                             R11 R3
      162 NAMECALL                         R9 R9 K8 ["format"]
      164 CALL                             R9 2 1
      165 MOVE                             R8 R9
      166 FASTCALL2                        ASSERT R7 R8 ; [+3]
      168 GETIMPORT                        R6 K4 [assert]
      170 CALL                             R6 2 0
      171 MOVE                             R2 R5
      172 LENGTH                           R5 R2
      173 LOADN                            R6 0
      174 JUMPIFLT                         R6 R5 ; [+2]
      176 LOADB                            R4 0 +1
      177 LOADB                            R4 1
      178 FASTCALL2K                       ASSERT R4 K17 ; [+4]
      180 LOADK                            R5 K17 ["No existing thread found in threads menu"]
      181 GETIMPORT                        R3 K4 [assert]
      183 CALL                             R3 2 0
      184 GETTABLEN                        R3 R2 1
      185 GETUPVAL                         R4 4
      186 GETTABLEKS                       R4 R4 K18 ["mouseEnter"]
      188 MOVE                             R5 R3
      189 CALL                             R4 1 0
      190 GETUPVAL                         R4 5
      191 NAMECALL                         R4 R4 K9 ["UpdateUnitTestOnly"]
      193 CALL                             R4 1 0
      194 GETUPVAL                         R4 6
      195 GETTABLEKS                       R4 R4 K10 ["Stepped"]
      197 NAMECALL                         R4 R4 K11 ["Wait"]
      199 CALL                             R4 1 0
      200 GETUPVAL                         R4 6
      201 GETTABLEKS                       R4 R4 K10 ["Stepped"]
      203 NAMECALL                         R4 R4 K11 ["Wait"]
      205 CALL                             R4 1 0
      206 GETUPVAL                         R4 0
      207 GETTABLEKS                       R4 R4 K19 ["ThreadEntry"]
      209 GETTABLEKS                       R4 R4 K20 ["OptionsButton"]
      211 MOVE                             R5 R1
      212 MOVE                             R6 R5
      213 JUMPIF                           R6 ; [+12]
      214 GETUPVAL                         R9 1
      215 JUMPIFNOTEQKNIL                  R9 ; [+2]
      217 LOADB                            R8 0 +1
      218 LOADB                            R8 1
      219 FASTCALL2K                       ASSERT R8 K2 ; [+4]
      221 LOADK                            R9 K2 ["Container not mounted, ensure render is called"]
      222 GETIMPORT                        R7 K4 [assert]
      224 CALL                             R7 2 0
      225 GETUPVAL                         R6 1
      226 MOVE                             R5 R6
      227 FASTCALL2K                       ASSERT R5 K5 ; [+5]
      229 MOVE                             R7 R5
      230 LOADK                            R8 K5 ["Query container not found"]
      231 GETIMPORT                        R6 K4 [assert]
      233 CALL                             R6 2 0
      234 GETUPVAL                         R6 2
      235 MOVE                             R7 R5
      236 CALL                             R6 1 1
      237 GETTABLEKS                       R6 R6 K6 ["getByTestId"]
      239 MOVE                             R7 R4
      240 CALL                             R6 1 1
      241 LOADK                            R10 K7 ["No result found for testId \"%*\""]
      242 MOVE                             R12 R4
      243 NAMECALL                         R10 R10 K8 ["format"]
      245 CALL                             R10 2 1
      246 MOVE                             R9 R10
      247 FASTCALL2                        ASSERT R6 R9 ; [+4]
      249 MOVE                             R8 R6
      250 GETIMPORT                        R7 K4 [assert]
      252 CALL                             R7 2 0
      253 MOVE                             R3 R6
      254 GETUPVAL                         R4 3
      255 NEWCLOSURE                       R5 P0
      256 CAPTURE                          UPVAL U4
      257 CAPTURE                          VAL R3
      258 CALL                             R4 1 0
      259 GETUPVAL                         R4 5
      260 NAMECALL                         R4 R4 K9 ["UpdateUnitTestOnly"]
      262 CALL                             R4 1 0
      263 GETUPVAL                         R4 6
      264 GETTABLEKS                       R4 R4 K10 ["Stepped"]
      266 NAMECALL                         R4 R4 K11 ["Wait"]
      268 CALL                             R4 1 0
      269 GETUPVAL                         R4 6
      270 GETTABLEKS                       R4 R4 K10 ["Stepped"]
      272 NAMECALL                         R4 R4 K11 ["Wait"]
      274 CALL                             R4 1 0
      275 LOADK                            R6 K21 ["%*--container"]
      276 GETUPVAL                         R8 0
      277 GETTABLEKS                       R8 R8 K22 ["ThreadOptionsMenu"]
      279 GETTABLEKS                       R8 R8 K13 ["Container"]
      281 NAMECALL                         R6 R6 K8 ["format"]
      283 CALL                             R6 2 1
      284 MOVE                             R5 R6
      285 LOADNIL                          R6
      286 MOVE                             R7 R6
      287 JUMPIF                           R7 ; [+12]
      288 GETUPVAL                         R10 1
      289 JUMPIFNOTEQKNIL                  R10 ; [+2]
      291 LOADB                            R9 0 +1
      292 LOADB                            R9 1
      293 FASTCALL2K                       ASSERT R9 K2 ; [+4]
      295 LOADK                            R10 K2 ["Container not mounted, ensure render is called"]
      296 GETIMPORT                        R8 K4 [assert]
      298 CALL                             R8 2 0
      299 GETUPVAL                         R7 1
      300 MOVE                             R6 R7
      301 FASTCALL2K                       ASSERT R6 K5 ; [+5]
      303 MOVE                             R8 R6
      304 LOADK                            R9 K5 ["Query container not found"]
      305 GETIMPORT                        R7 K4 [assert]
      307 CALL                             R7 2 0
      308 GETUPVAL                         R7 2
      309 MOVE                             R8 R6
      310 CALL                             R7 1 1
      311 GETTABLEKS                       R7 R7 K6 ["getByTestId"]
      313 MOVE                             R8 R5
      314 CALL                             R7 1 1
      315 LOADK                            R11 K7 ["No result found for testId \"%*\""]
      316 MOVE                             R13 R5
      317 NAMECALL                         R11 R11 K8 ["format"]
      319 CALL                             R11 2 1
      320 MOVE                             R10 R11
      321 FASTCALL2                        ASSERT R7 R10 ; [+4]
      323 MOVE                             R9 R7
      324 GETIMPORT                        R8 K4 [assert]
      326 CALL                             R8 2 0
      327 MOVE                             R4 R7
      328 GETUPVAL                         R5 7
      329 LOADK                            R7 K12 ["ThreadsMenu"]
      330 LOADK                            R8 K23 ["DeleteThread"]
      331 NAMECALL                         R5 R5 K24 ["getText"]
      333 CALL                             R5 3 1
      334 GETUPVAL                         R6 8
      335 MOVE                             R7 R5
      336 MOVE                             R8 R4
      337 DUPTABLE                         R9 K27 [{["exact"] = True}]
      338 CALL                             R6 3 1
      339 LOADK                            R9 K28 ["GuiButton"]
      340 NAMECALL                         R7 R6 K29 ["FindFirstAncestorWhichIsA"]
      342 CALL                             R7 2 1
      343 FASTCALL2K                       ASSERT R7 K30 ; [+5]
      345 MOVE                             R9 R7
      346 LOADK                            R10 K30 ["No GuiButton ancestor found for delete thread label"]
      347 GETIMPORT                        R8 K4 [assert]
      349 CALL                             R8 2 0
      350 GETUPVAL                         R8 3
      351 NEWCLOSURE                       R9 P0
      352 CAPTURE                          UPVAL U4
      353 CAPTURE                          VAL R7
      354 CALL                             R8 1 0
      355 GETUPVAL                         R8 5
      356 NAMECALL                         R8 R8 K9 ["UpdateUnitTestOnly"]
      358 CALL                             R8 1 0
      359 GETUPVAL                         R8 6
      360 GETTABLEKS                       R8 R8 K10 ["Stepped"]
      362 NAMECALL                         R8 R8 K11 ["Wait"]
      364 CALL                             R8 1 0
      365 GETUPVAL                         R8 6
      366 GETTABLEKS                       R8 R8 K10 ["Stepped"]
      368 NAMECALL                         R8 R8 K11 ["Wait"]
      370 CALL                             R8 1 0
      371 RETURN                           R0 0

PROTO_112:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["wasToolInvoked"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["overrideMethod"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_115:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getClientObject"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_116:
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

PROTO_117:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getClientObject"]
        3 CALL                             R0 0 1
        4 NAMECALL                         R1 R0 K1 ["close"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_118:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getToolAlias"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_119:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["wasRequestHandlerCalled"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_120:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getLastRequestHandlerBody"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 GETTABLE                         R2 R1 R0
        6 JUMPIF                           R2 ; [+1]
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_121:
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

PROTO_124:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setInputOverride"]
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
       10 GETUPVAL                         R1 4
       11 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       13 NAMECALL                         R1 R1 K2 ["Wait"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 4
       17 GETTABLEKS                       R1 R1 K1 ["Stepped"]
       19 NAMECALL                         R1 R1 K2 ["Wait"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_128:
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

PROTO_129:
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
       48 RETURN                           R0 1

PROTO_131:
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

PROTO_134:
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
      194 DUPTABLE                         R6 K28 [{["exact"] = True}]
      195 CALL                             R4 2 1
      196 LOADK                            R8 K29 ["Model option not found: %*"]
      197 MOVE                             R10 R0
      198 NAMECALL                         R8 R8 K8 ["format"]
      200 CALL                             R8 2 1
      201 MOVE                             R7 R8
      202 FASTCALL2                        ASSERT R4 R7 ; [+4]
      204 MOVE                             R6 R4
      205 GETIMPORT                        R5 K4 [assert]
      207 CALL                             R5 2 0
      208 GETUPVAL                         R5 5
      209 NEWCLOSURE                       R6 P1
      210 CAPTURE                          VAL R4
      211 CAPTURE                          UPVAL U5
      212 CAPTURE                          UPVAL U6
      213 CAPTURE                          UPVAL U3
      214 CAPTURE                          UPVAL U4
      215 CALL                             R5 1 0
      216 CLOSEUPVALS                      R3
      217 RETURN                           R0 0

PROTO_135:
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

PROTO_136:
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

PROTO_137:
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

PROTO_138:
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

PROTO_139:
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

PROTO_142:
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

PROTO_143:
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

PROTO_144:
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

PROTO_145:
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

PROTO_147:
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

PROTO_148:
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

PROTO_149:
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

PROTO_150:
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

PROTO_152:
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

PROTO_153:
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

PROTO_154:
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

PROTO_155:
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

PROTO_156:
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

PROTO_157:
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

PROTO_158:
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

PROTO_159:
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

PROTO_160:
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

PROTO_161:
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

PROTO_162:
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

PROTO_163:
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

PROTO_164:
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

PROTO_165:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getSecureSettingsAsync"]
        3 LOADK                            R2 K1 ["ProviderKeys"]
        4 CALL                             R1 1 1
        5 GETTABLE                         R2 R1 R0
        6 RETURN                           R2 1

PROTO_166:
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

PROTO_167:
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

PROTO_168:
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

PROTO_169:
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

PROTO_170:
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

PROTO_171:
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

PROTO_172:
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

PROTO_173:
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

PROTO_175:
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

PROTO_176:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getProcessEvent"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_177:
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

PROTO_178:
        0 DUPTABLE                         R3 K4 [{[1] = "content_start", ["contentId"], ["contentBlock"]}]
        1 SETTABLEKS                       R2 R3 K2 ["contentId"]
        3 DUPTABLE                         R4 K9 [{[1] = "tool_use", ["id"], ["name"], ["input"]}]
        4 MOVE                             R6 R0
        5 LOADK                            R7 K10 ["_"]
        6 MOVE                             R8 R2
        7 CONCAT                           R5 R6 R8
        8 SETTABLEKS                       R5 R4 K6 ["id"]
       10 SETTABLEKS                       R0 R4 K7 ["name"]
       12 NEWTABLE                         R5 0 0
       14 SETTABLEKS                       R5 R4 K8 ["input"]
       16 SETTABLEKS                       R4 R3 K3 ["contentBlock"]
       18 GETUPVAL                         R4 0
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          UPVAL U1
       21 CAPTURE                          VAL R3
       22 CALL                             R4 1 0
       23 GETUPVAL                         R4 2
       24 NAMECALL                         R4 R4 K11 ["UpdateUnitTestOnly"]
       26 CALL                             R4 1 0
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R4 R4 K12 ["Stepped"]
       30 NAMECALL                         R4 R4 K13 ["Wait"]
       32 CALL                             R4 1 0
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K12 ["Stepped"]
       36 NAMECALL                         R4 R4 K13 ["Wait"]
       38 CALL                             R4 1 0
       39 DUPTABLE                         R4 K16 [{[1] = "content_delta", ["contentId"], ["delta"]}]
       40 SETTABLEKS                       R2 R4 K2 ["contentId"]
       42 DUPTABLE                         R5 K19 [{[1] = "json_delta", ["jsonDelta"]}]
       43 SETTABLEKS                       R1 R5 K18 ["jsonDelta"]
       45 SETTABLEKS                       R5 R4 K15 ["delta"]
       47 GETUPVAL                         R5 0
       48 NEWCLOSURE                       R6 P0
       49 CAPTURE                          UPVAL U1
       50 CAPTURE                          VAL R4
       51 CALL                             R5 1 0
       52 GETUPVAL                         R5 2
       53 NAMECALL                         R5 R5 K11 ["UpdateUnitTestOnly"]
       55 CALL                             R5 1 0
       56 GETUPVAL                         R5 3
       57 GETTABLEKS                       R5 R5 K12 ["Stepped"]
       59 NAMECALL                         R5 R5 K13 ["Wait"]
       61 CALL                             R5 1 0
       62 GETUPVAL                         R5 3
       63 GETTABLEKS                       R5 R5 K12 ["Stepped"]
       65 NAMECALL                         R5 R5 K13 ["Wait"]
       67 CALL                             R5 1 0
       68 DUPTABLE                         R5 K21 [{[1] = "content_end", ["contentId"]}]
       69 SETTABLEKS                       R2 R5 K2 ["contentId"]
       71 GETUPVAL                         R6 0
       72 NEWCLOSURE                       R7 P0
       73 CAPTURE                          UPVAL U1
       74 CAPTURE                          VAL R5
       75 CALL                             R6 1 0
       76 GETUPVAL                         R6 2
       77 NAMECALL                         R6 R6 K11 ["UpdateUnitTestOnly"]
       79 CALL                             R6 1 0
       80 GETUPVAL                         R6 3
       81 GETTABLEKS                       R6 R6 K12 ["Stepped"]
       83 NAMECALL                         R6 R6 K13 ["Wait"]
       85 CALL                             R6 1 0
       86 GETUPVAL                         R6 3
       87 GETTABLEKS                       R6 R6 K12 ["Stepped"]
       89 NAMECALL                         R6 R6 K13 ["Wait"]
       91 CALL                             R6 1 0
       92 RETURN                           R0 0

PROTO_179:
        0 DUPTABLE                         R2 K4 [{[1] = "content_start", ["contentId"], ["contentBlock"]}]
        1 SETTABLEKS                       R1 R2 K2 ["contentId"]
        3 DUPTABLE                         R3 K6 [{[1] = "text", ["text"]}]
        4 SETTABLEKS                       R0 R3 K5 ["text"]
        6 SETTABLEKS                       R3 R2 K3 ["contentBlock"]
        8 GETUPVAL                         R3 0
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R2
       12 CALL                             R3 1 0
       13 GETUPVAL                         R3 2
       14 NAMECALL                         R3 R3 K7 ["UpdateUnitTestOnly"]
       16 CALL                             R3 1 0
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K8 ["Stepped"]
       20 NAMECALL                         R3 R3 K9 ["Wait"]
       22 CALL                             R3 1 0
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R3 R3 K8 ["Stepped"]
       26 NAMECALL                         R3 R3 K9 ["Wait"]
       28 CALL                             R3 1 0
       29 DUPTABLE                         R3 K12 [{[1] = "content_delta", ["contentId"], ["delta"]}]
       30 SETTABLEKS                       R1 R3 K2 ["contentId"]
       32 DUPTABLE                         R4 K14 [{[1] = "text_delta", ["text"]}]
       33 SETTABLEKS                       R0 R4 K5 ["text"]
       35 SETTABLEKS                       R4 R3 K11 ["delta"]
       37 GETUPVAL                         R4 0
       38 NEWCLOSURE                       R5 P0
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R3
       41 CALL                             R4 1 0
       42 GETUPVAL                         R4 2
       43 NAMECALL                         R4 R4 K7 ["UpdateUnitTestOnly"]
       45 CALL                             R4 1 0
       46 GETUPVAL                         R4 3
       47 GETTABLEKS                       R4 R4 K8 ["Stepped"]
       49 NAMECALL                         R4 R4 K9 ["Wait"]
       51 CALL                             R4 1 0
       52 GETUPVAL                         R4 3
       53 GETTABLEKS                       R4 R4 K8 ["Stepped"]
       55 NAMECALL                         R4 R4 K9 ["Wait"]
       57 CALL                             R4 1 0
       58 DUPTABLE                         R4 K16 [{[1] = "content_end", ["contentId"]}]
       59 SETTABLEKS                       R1 R4 K2 ["contentId"]
       61 GETUPVAL                         R5 0
       62 NEWCLOSURE                       R6 P0
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          VAL R4
       65 CALL                             R5 1 0
       66 GETUPVAL                         R5 2
       67 NAMECALL                         R5 R5 K7 ["UpdateUnitTestOnly"]
       69 CALL                             R5 1 0
       70 GETUPVAL                         R5 3
       71 GETTABLEKS                       R5 R5 K8 ["Stepped"]
       73 NAMECALL                         R5 R5 K9 ["Wait"]
       75 CALL                             R5 1 0
       76 GETUPVAL                         R5 3
       77 GETTABLEKS                       R5 R5 K8 ["Stepped"]
       79 NAMECALL                         R5 R5 K9 ["Wait"]
       81 CALL                             R5 1 0
       82 RETURN                           R0 0

PROTO_180:
        0 DUPTABLE                         R0 K2 [{[1] = "message_start"}]
        1 GETUPVAL                         R1 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 2
        7 NAMECALL                         R1 R1 K3 ["UpdateUnitTestOnly"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K4 ["Stepped"]
       13 NAMECALL                         R1 R1 K5 ["Wait"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K4 ["Stepped"]
       19 NAMECALL                         R1 R1 K5 ["Wait"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_181:
        0 DUPTABLE                         R1 K3 [{[1] = "message_delta", ["delta"]}]
        1 DUPTABLE                         R2 K5 [{"stopReason"}]
        2 SETTABLEKS                       R0 R2 K4 ["stopReason"]
        4 SETTABLEKS                       R2 R1 K2 ["delta"]
        6 GETUPVAL                         R2 0
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R1
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 2
       12 NAMECALL                         R2 R2 K6 ["UpdateUnitTestOnly"]
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K7 ["Stepped"]
       18 NAMECALL                         R2 R2 K8 ["Wait"]
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 3
       22 GETTABLEKS                       R2 R2 K7 ["Stepped"]
       24 NAMECALL                         R2 R2 K8 ["Wait"]
       26 CALL                             R2 1 0
       27 DUPTABLE                         R1 K10 [{[1] = "message_stop"}]
       28 GETUPVAL                         R2 0
       29 NEWCLOSURE                       R3 P0
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R1
       32 CALL                             R2 1 0
       33 GETUPVAL                         R2 2
       34 NAMECALL                         R2 R2 K6 ["UpdateUnitTestOnly"]
       36 CALL                             R2 1 0
       37 GETUPVAL                         R2 3
       38 GETTABLEKS                       R2 R2 K7 ["Stepped"]
       40 NAMECALL                         R2 R2 K8 ["Wait"]
       42 CALL                             R2 1 0
       43 GETUPVAL                         R2 3
       44 GETTABLEKS                       R2 R2 K7 ["Stepped"]
       46 NAMECALL                         R2 R2 K8 ["Wait"]
       48 CALL                             R2 1 0
       49 RETURN                           R0 0

PROTO_182:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["spyOn"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["EventLogger"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_183:
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

PROTO_184:
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

PROTO_185:
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

PROTO_186:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setOptions"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_187:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_188:
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

PROTO_189:
        0 LOADK                            R3 K0 ["bg-action-soft-emphasis"]
        1 NAMECALL                         R1 R0 K1 ["HasTag"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_190:
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

PROTO_191:
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

PROTO_192:
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
      303 DUPCLOSURE                       R42 K47 [PROTO_33]
      304 DUPCLOSURE                       R43 K48 [PROTO_35]
      305 CAPTURE                          UPVAL U34
      306 CAPTURE                          UPVAL U33
      307 CAPTURE                          UPVAL U27
      308 CAPTURE                          UPVAL U28
      309 DUPCLOSURE                       R44 K49 [PROTO_36]
      310 CAPTURE                          UPVAL U33
      311 CAPTURE                          UPVAL U27
      312 CAPTURE                          UPVAL U28
      313 DUPCLOSURE                       R45 K50 [PROTO_37]
      314 CAPTURE                          UPVAL U33
      315 CAPTURE                          UPVAL U27
      316 CAPTURE                          UPVAL U28
      317 DUPCLOSURE                       R46 K51 [PROTO_38]
      318 CAPTURE                          UPVAL U29
      319 CAPTURE                          UPVAL U27
      320 CAPTURE                          UPVAL U28
      321 NEWCLOSURE                       R47 P20
      322 CAPTURE                          UPVAL U27
      323 CAPTURE                          UPVAL U28
      324 CAPTURE                          UPVAL U39
      325 CAPTURE                          REF R28
      326 CAPTURE                          UPVAL U38
      327 NEWCLOSURE                       R48 P21
      328 CAPTURE                          UPVAL U27
      329 CAPTURE                          UPVAL U28
      330 CAPTURE                          UPVAL U39
      331 CAPTURE                          REF R28
      332 CAPTURE                          UPVAL U38
      333 NEWCLOSURE                       R49 P22
      334 CAPTURE                          UPVAL U38
      335 CAPTURE                          REF R28
      336 CAPTURE                          UPVAL U40
      337 NEWCLOSURE                       R50 P23
      338 CAPTURE                          UPVAL U38
      339 CAPTURE                          REF R28
      340 CAPTURE                          UPVAL U40
      341 NEWCLOSURE                       R51 P24
      342 CAPTURE                          UPVAL U38
      343 CAPTURE                          REF R28
      344 CAPTURE                          UPVAL U17
      345 CAPTURE                          UPVAL U40
      346 NEWCLOSURE                       R52 P25
      347 CAPTURE                          UPVAL U38
      348 CAPTURE                          REF R28
      349 CAPTURE                          UPVAL U40
      350 CAPTURE                          UPVAL U39
      351 NEWCLOSURE                       R53 P26
      352 CAPTURE                          UPVAL U40
      353 CAPTURE                          REF R28
      354 NEWCLOSURE                       R54 P27
      355 CAPTURE                          REF R28
      356 CAPTURE                          UPVAL U17
      357 CAPTURE                          UPVAL U38
      358 NEWCLOSURE                       R55 P28
      359 CAPTURE                          UPVAL U39
      360 CAPTURE                          REF R28
      361 CAPTURE                          UPVAL U38
      362 NEWCLOSURE                       R56 P29
      363 CAPTURE                          UPVAL U39
      364 CAPTURE                          REF R28
      365 CAPTURE                          UPVAL U38
      366 NEWCLOSURE                       R57 P30
      367 CAPTURE                          UPVAL U34
      368 CAPTURE                          VAL R13
      369 NEWCLOSURE                       R58 P31
      370 CAPTURE                          UPVAL U27
      371 CAPTURE                          UPVAL U28
      372 CAPTURE                          UPVAL U39
      373 CAPTURE                          REF R28
      374 CAPTURE                          UPVAL U38
      375 CAPTURE                          UPVAL U34
      376 NEWCLOSURE                       R59 P32
      377 CAPTURE                          UPVAL U33
      378 CAPTURE                          UPVAL U27
      379 CAPTURE                          UPVAL U28
      380 CAPTURE                          UPVAL U39
      381 CAPTURE                          REF R28
      382 CAPTURE                          UPVAL U38
      383 NEWCLOSURE                       R60 P33
      384 CAPTURE                          UPVAL U27
      385 CAPTURE                          UPVAL U28
      386 CAPTURE                          UPVAL U39
      387 CAPTURE                          REF R28
      388 CAPTURE                          UPVAL U38
      389 CAPTURE                          UPVAL U34
      390 NEWCLOSURE                       R61 P34
      391 CAPTURE                          UPVAL U27
      392 CAPTURE                          UPVAL U28
      393 CAPTURE                          UPVAL U39
      394 CAPTURE                          REF R28
      395 CAPTURE                          UPVAL U38
      396 DUPCLOSURE                       R62 K52 [PROTO_61]
      397 CAPTURE                          UPVAL U29
      398 NEWCLOSURE                       R63 P36
      399 CAPTURE                          UPVAL U39
      400 CAPTURE                          REF R28
      401 CAPTURE                          UPVAL U38
      402 CAPTURE                          UPVAL U34
      403 CAPTURE                          UPVAL U33
      404 CAPTURE                          UPVAL U27
      405 CAPTURE                          UPVAL U28
      406 DUPCLOSURE                       R64 K53 [PROTO_63]
      407 CAPTURE                          UPVAL U33
      408 CAPTURE                          UPVAL U27
      409 CAPTURE                          UPVAL U28
      410 DUPCLOSURE                       R65 K54 [PROTO_65]
      411 CAPTURE                          UPVAL U34
      412 CAPTURE                          UPVAL U33
      413 CAPTURE                          UPVAL U27
      414 CAPTURE                          UPVAL U28
      415 NEWCLOSURE                       R66 P39
      416 CAPTURE                          VAL R64
      417 CAPTURE                          UPVAL U27
      418 CAPTURE                          UPVAL U28
      419 CAPTURE                          UPVAL U39
      420 CAPTURE                          REF R28
      421 CAPTURE                          UPVAL U38
      422 NEWCLOSURE                       R67 P40
      423 CAPTURE                          VAL R65
      424 CAPTURE                          UPVAL U27
      425 CAPTURE                          UPVAL U28
      426 CAPTURE                          UPVAL U39
      427 CAPTURE                          REF R28
      428 CAPTURE                          UPVAL U38
      429 CAPTURE                          VAL R64
      430 NEWCLOSURE                       R68 P41
      431 CAPTURE                          UPVAL U27
      432 CAPTURE                          UPVAL U28
      433 CAPTURE                          UPVAL U39
      434 CAPTURE                          REF R28
      435 CAPTURE                          UPVAL U38
      436 CAPTURE                          UPVAL U33
      437 DUPCLOSURE                       R69 K55 [PROTO_69]
      438 CAPTURE                          UPVAL U33
      439 CAPTURE                          UPVAL U27
      440 CAPTURE                          UPVAL U28
      441 NEWCLOSURE                       R70 P43
      442 CAPTURE                          UPVAL U27
      443 CAPTURE                          UPVAL U28
      444 CAPTURE                          UPVAL U39
      445 CAPTURE                          REF R28
      446 CAPTURE                          UPVAL U38
      447 NEWCLOSURE                       R71 P44
      448 CAPTURE                          UPVAL U41
      449 CAPTURE                          UPVAL U42
      450 CAPTURE                          UPVAL U27
      451 CAPTURE                          UPVAL U28
      452 CAPTURE                          UPVAL U39
      453 CAPTURE                          REF R28
      454 CAPTURE                          UPVAL U38
      455 NEWCLOSURE                       R72 P45
      456 CAPTURE                          VAL R53
      457 CAPTURE                          UPVAL U38
      458 NEWCLOSURE                       R73 P46
      459 CAPTURE                          VAL R53
      460 NEWCLOSURE                       R74 P47
      461 CAPTURE                          UPVAL U27
      462 CAPTURE                          UPVAL U28
      463 CAPTURE                          UPVAL U39
      464 CAPTURE                          REF R28
      465 CAPTURE                          UPVAL U38
      466 DUPCLOSURE                       R75 K56 [PROTO_76]
      467 CAPTURE                          UPVAL U27
      468 CAPTURE                          UPVAL U28
      469 NEWCLOSURE                       R76 P49
      470 CAPTURE                          UPVAL U39
      471 CAPTURE                          REF R28
      472 CAPTURE                          UPVAL U38
      473 CAPTURE                          UPVAL U27
      474 CAPTURE                          UPVAL U28
      475 CAPTURE                          UPVAL U34
      476 CAPTURE                          UPVAL U33
      477 NEWCLOSURE                       R77 P50
      478 CAPTURE                          UPVAL U39
      479 CAPTURE                          REF R28
      480 CAPTURE                          UPVAL U38
      481 CAPTURE                          UPVAL U27
      482 CAPTURE                          UPVAL U28
      483 CAPTURE                          UPVAL U34
      484 CAPTURE                          UPVAL U33
      485 NEWCLOSURE                       R78 P51
      486 CAPTURE                          UPVAL U39
      487 CAPTURE                          REF R28
      488 CAPTURE                          UPVAL U38
      489 CAPTURE                          UPVAL U27
      490 CAPTURE                          UPVAL U28
      491 CAPTURE                          UPVAL U34
      492 CAPTURE                          UPVAL U33
      493 NEWCLOSURE                       R79 P52
      494 CAPTURE                          UPVAL U39
      495 CAPTURE                          REF R28
      496 CAPTURE                          UPVAL U38
      497 CAPTURE                          UPVAL U27
      498 CAPTURE                          UPVAL U28
      499 CAPTURE                          UPVAL U34
      500 CAPTURE                          UPVAL U33
      501 NEWCLOSURE                       R80 P53
      502 CAPTURE                          UPVAL U39
      503 CAPTURE                          REF R28
      504 CAPTURE                          UPVAL U38
      505 CAPTURE                          UPVAL U27
      506 CAPTURE                          UPVAL U28
      507 CAPTURE                          UPVAL U34
      508 CAPTURE                          UPVAL U33
      509 NEWCLOSURE                       R81 P54
      510 CAPTURE                          UPVAL U39
      511 CAPTURE                          REF R28
      512 CAPTURE                          UPVAL U38
      513 CAPTURE                          UPVAL U27
      514 CAPTURE                          UPVAL U28
      515 CAPTURE                          UPVAL U34
      516 CAPTURE                          UPVAL U33
      517 NEWCLOSURE                       R82 P55
      518 CAPTURE                          UPVAL U39
      519 CAPTURE                          REF R28
      520 CAPTURE                          UPVAL U38
      521 NEWCLOSURE                       R83 P56
      522 CAPTURE                          UPVAL U39
      523 CAPTURE                          REF R28
      524 CAPTURE                          UPVAL U38
      525 CAPTURE                          UPVAL U27
      526 CAPTURE                          UPVAL U28
      527 CAPTURE                          UPVAL U34
      528 CAPTURE                          UPVAL U33
      529 DUPCLOSURE                       R84 K57 [PROTO_86]
      530 CAPTURE                          UPVAL U36
      531 CAPTURE                          UPVAL U30
      532 NEWCLOSURE                       R85 P58
      533 CAPTURE                          UPVAL U39
      534 CAPTURE                          REF R28
      535 CAPTURE                          UPVAL U38
      536 DUPCLOSURE                       R86 K58 [PROTO_88]
      537 DUPCLOSURE                       R87 K59 [PROTO_89]
      538 NEWCLOSURE                       R88 P61
      539 CAPTURE                          UPVAL U39
      540 CAPTURE                          REF R28
      541 CAPTURE                          UPVAL U38
      542 CAPTURE                          VAL R87
      543 DUPCLOSURE                       R89 K60 [PROTO_91]
      544 CAPTURE                          VAL R86
      545 CAPTURE                          VAL R87
      546 CAPTURE                          UPVAL U27
      547 CAPTURE                          UPVAL U28
      548 CAPTURE                          UPVAL U34
      549 CAPTURE                          UPVAL U33
      550 NEWCLOSURE                       R90 P63
      551 CAPTURE                          UPVAL U39
      552 CAPTURE                          REF R28
      553 CAPTURE                          UPVAL U38
      554 CAPTURE                          UPVAL U27
      555 CAPTURE                          UPVAL U28
      556 CAPTURE                          UPVAL U34
      557 CAPTURE                          UPVAL U33
      558 NEWCLOSURE                       R91 P64
      559 CAPTURE                          UPVAL U39
      560 CAPTURE                          REF R28
      561 CAPTURE                          UPVAL U38
      562 CAPTURE                          UPVAL U27
      563 CAPTURE                          UPVAL U28
      564 CAPTURE                          UPVAL U34
      565 CAPTURE                          UPVAL U33
      566 NEWCLOSURE                       R92 P65
      567 CAPTURE                          UPVAL U39
      568 CAPTURE                          REF R28
      569 CAPTURE                          UPVAL U38
      570 CAPTURE                          UPVAL U27
      571 CAPTURE                          UPVAL U28
      572 CAPTURE                          UPVAL U34
      573 CAPTURE                          UPVAL U33
      574 NEWCLOSURE                       R93 P66
      575 CAPTURE                          UPVAL U39
      576 CAPTURE                          REF R28
      577 CAPTURE                          UPVAL U38
      578 CAPTURE                          UPVAL U27
      579 CAPTURE                          UPVAL U28
      580 CAPTURE                          UPVAL U34
      581 CAPTURE                          UPVAL U33
      582 NEWCLOSURE                       R94 P67
      583 CAPTURE                          UPVAL U39
      584 CAPTURE                          REF R28
      585 CAPTURE                          UPVAL U38
      586 NEWCLOSURE                       R95 P68
      587 CAPTURE                          VAL R41
      588 CAPTURE                          UPVAL U43
      589 CAPTURE                          UPVAL U27
      590 CAPTURE                          UPVAL U28
      591 CAPTURE                          UPVAL U34
      592 CAPTURE                          UPVAL U33
      593 NEWCLOSURE                       R96 P69
      594 CAPTURE                          VAL R41
      595 CAPTURE                          UPVAL U43
      596 CAPTURE                          UPVAL U27
      597 CAPTURE                          UPVAL U28
      598 CAPTURE                          UPVAL U34
      599 CAPTURE                          UPVAL U33
      600 NEWCLOSURE                       R97 P70
      601 CAPTURE                          VAL R41
      602 CAPTURE                          UPVAL U43
      603 CAPTURE                          UPVAL U27
      604 CAPTURE                          UPVAL U28
      605 CAPTURE                          UPVAL U34
      606 CAPTURE                          UPVAL U33
      607 NEWCLOSURE                       R98 P71
      608 CAPTURE                          VAL R41
      609 CAPTURE                          UPVAL U43
      610 CAPTURE                          UPVAL U27
      611 CAPTURE                          UPVAL U28
      612 CAPTURE                          UPVAL U34
      613 CAPTURE                          UPVAL U33
      614 NEWCLOSURE                       R99 P72
      615 CAPTURE                          VAL R41
      616 CAPTURE                          UPVAL U43
      617 NEWCLOSURE                       R100 P73
      618 CAPTURE                          VAL R41
      619 CAPTURE                          UPVAL U43
      620 NEWCLOSURE                       R101 P74
      621 CAPTURE                          VAL R3
      622 NEWCLOSURE                       R102 P75
      623 CAPTURE                          UPVAL U34
      624 CAPTURE                          VAL R3
      625 CAPTURE                          UPVAL U27
      626 CAPTURE                          UPVAL U28
      627 NEWCLOSURE                       R103 P76
      628 CAPTURE                          VAL R7
      629 CAPTURE                          UPVAL U34
      630 CAPTURE                          UPVAL U27
      631 CAPTURE                          UPVAL U28
      632 NEWCLOSURE                       R104 P77
      633 CAPTURE                          UPVAL U34
      634 CAPTURE                          VAL R3
      635 CAPTURE                          UPVAL U27
      636 CAPTURE                          UPVAL U28
      637 CAPTURE                          VAL R7
      638 NEWCLOSURE                       R105 P78
      639 CAPTURE                          UPVAL U39
      640 CAPTURE                          REF R28
      641 CAPTURE                          UPVAL U38
      642 CAPTURE                          UPVAL U34
      643 CAPTURE                          UPVAL U33
      644 CAPTURE                          UPVAL U27
      645 CAPTURE                          UPVAL U28
      646 NEWCLOSURE                       R106 P79
      647 CAPTURE                          UPVAL U39
      648 CAPTURE                          REF R28
      649 CAPTURE                          UPVAL U38
      650 NEWCLOSURE                       R107 P80
      651 CAPTURE                          UPVAL U39
      652 CAPTURE                          REF R28
      653 CAPTURE                          UPVAL U38
      654 CAPTURE                          UPVAL U34
      655 CAPTURE                          UPVAL U33
      656 CAPTURE                          UPVAL U27
      657 CAPTURE                          UPVAL U28
      658 CAPTURE                          UPVAL U44
      659 CAPTURE                          VAL R54
      660 NEWCLOSURE                       R108 P81
      661 CAPTURE                          VAL R9
      662 NEWCLOSURE                       R109 P82
      663 CAPTURE                          VAL R9
      664 NEWCLOSURE                       R110 P83
      665 CAPTURE                          VAL R9
      666 NEWCLOSURE                       R111 P84
      667 CAPTURE                          VAL R9
      668 NEWCLOSURE                       R112 P85
      669 CAPTURE                          VAL R9
      670 NEWCLOSURE                       R113 P86
      671 CAPTURE                          VAL R9
      672 NEWCLOSURE                       R114 P87
      673 CAPTURE                          VAL R11
      674 NEWCLOSURE                       R115 P88
      675 CAPTURE                          VAL R11
      676 NEWCLOSURE                       R116 P89
      677 CAPTURE                          UPVAL U34
      678 CAPTURE                          VAL R5
      679 CAPTURE                          UPVAL U45
      680 CAPTURE                          UPVAL U27
      681 CAPTURE                          UPVAL U28
      682 CAPTURE                          UPVAL U41
      683 CAPTURE                          VAL R51
      684 NEWCLOSURE                       R117 P90
      685 CAPTURE                          UPVAL U34
      686 CAPTURE                          VAL R5
      687 NEWCLOSURE                       R118 P91
      688 CAPTURE                          UPVAL U39
      689 CAPTURE                          REF R28
      690 CAPTURE                          UPVAL U38
      691 NEWCLOSURE                       R119 P92
      692 CAPTURE                          UPVAL U39
      693 CAPTURE                          REF R28
      694 CAPTURE                          UPVAL U38
      695 CAPTURE                          UPVAL U27
      696 CAPTURE                          UPVAL U28
      697 CAPTURE                          UPVAL U34
      698 CAPTURE                          UPVAL U33
      699 NEWCLOSURE                       R120 P93
      700 CAPTURE                          REF R23
      701 CAPTURE                          UPVAL U37
      702 CAPTURE                          UPVAL U46
      703 NEWCLOSURE                       R121 P94
      704 CAPTURE                          UPVAL U39
      705 CAPTURE                          REF R28
      706 CAPTURE                          UPVAL U38
      707 NEWCLOSURE                       R122 P95
      708 CAPTURE                          UPVAL U39
      709 CAPTURE                          REF R28
      710 CAPTURE                          UPVAL U38
      711 CAPTURE                          UPVAL U37
      712 NEWCLOSURE                       R123 P96
      713 CAPTURE                          UPVAL U39
      714 CAPTURE                          REF R28
      715 CAPTURE                          UPVAL U38
      716 CAPTURE                          UPVAL U27
      717 CAPTURE                          UPVAL U28
      718 CAPTURE                          UPVAL U34
      719 CAPTURE                          UPVAL U33
      720 NEWCLOSURE                       R124 P97
      721 CAPTURE                          UPVAL U39
      722 CAPTURE                          REF R28
      723 CAPTURE                          UPVAL U38
      724 NEWCLOSURE                       R125 P98
      725 CAPTURE                          UPVAL U39
      726 CAPTURE                          REF R28
      727 CAPTURE                          UPVAL U38
      728 NEWCLOSURE                       R126 P99
      729 CAPTURE                          UPVAL U39
      730 CAPTURE                          REF R28
      731 CAPTURE                          UPVAL U38
      732 DUPCLOSURE                       R127 K61 [PROTO_138]
      733 CAPTURE                          UPVAL U40
      734 CAPTURE                          UPVAL U39
      735 NEWCLOSURE                       R128 P101
      736 CAPTURE                          UPVAL U39
      737 CAPTURE                          REF R28
      738 CAPTURE                          UPVAL U38
      739 CAPTURE                          UPVAL U34
      740 CAPTURE                          UPVAL U33
      741 CAPTURE                          UPVAL U27
      742 CAPTURE                          UPVAL U28
      743 NEWCLOSURE                       R129 P102
      744 CAPTURE                          UPVAL U40
      745 CAPTURE                          REF R28
      746 CAPTURE                          UPVAL U39
      747 NEWCLOSURE                       R130 P103
      748 CAPTURE                          UPVAL U40
      749 CAPTURE                          REF R28
      750 CAPTURE                          UPVAL U39
      751 NEWCLOSURE                       R131 P104
      752 CAPTURE                          UPVAL U40
      753 CAPTURE                          REF R28
      754 CAPTURE                          UPVAL U39
      755 NEWCLOSURE                       R132 P105
      756 CAPTURE                          UPVAL U39
      757 CAPTURE                          REF R28
      758 CAPTURE                          UPVAL U38
      759 NEWCLOSURE                       R133 P106
      760 CAPTURE                          UPVAL U39
      761 CAPTURE                          REF R28
      762 CAPTURE                          UPVAL U38
      763 NEWCLOSURE                       R134 P107
      764 CAPTURE                          UPVAL U39
      765 CAPTURE                          REF R28
      766 CAPTURE                          UPVAL U38
      767 NEWCLOSURE                       R135 P108
      768 CAPTURE                          UPVAL U39
      769 CAPTURE                          REF R28
      770 CAPTURE                          UPVAL U38
      771 NEWCLOSURE                       R136 P109
      772 CAPTURE                          UPVAL U39
      773 CAPTURE                          REF R28
      774 CAPTURE                          UPVAL U38
      775 DUPCLOSURE                       R137 K62 [PROTO_148]
      776 CAPTURE                          UPVAL U34
      777 CAPTURE                          UPVAL U33
      778 CAPTURE                          UPVAL U27
      779 CAPTURE                          UPVAL U28
      780 NEWCLOSURE                       R138 P111
      781 CAPTURE                          UPVAL U39
      782 CAPTURE                          REF R28
      783 CAPTURE                          UPVAL U38
      784 CAPTURE                          UPVAL U34
      785 CAPTURE                          UPVAL U33
      786 CAPTURE                          UPVAL U27
      787 CAPTURE                          UPVAL U28
      788 NEWCLOSURE                       R139 P112
      789 CAPTURE                          UPVAL U39
      790 CAPTURE                          REF R28
      791 CAPTURE                          UPVAL U38
      792 CAPTURE                          UPVAL U34
      793 CAPTURE                          UPVAL U33
      794 CAPTURE                          UPVAL U27
      795 CAPTURE                          UPVAL U28
      796 NEWCLOSURE                       R140 P113
      797 CAPTURE                          UPVAL U39
      798 CAPTURE                          REF R28
      799 CAPTURE                          UPVAL U38
      800 NEWCLOSURE                       R141 P114
      801 CAPTURE                          UPVAL U39
      802 CAPTURE                          REF R28
      803 CAPTURE                          UPVAL U38
      804 NEWCLOSURE                       R142 P115
      805 CAPTURE                          UPVAL U39
      806 CAPTURE                          REF R28
      807 CAPTURE                          UPVAL U38
      808 NEWCLOSURE                       R143 P116
      809 CAPTURE                          UPVAL U39
      810 CAPTURE                          REF R28
      811 CAPTURE                          UPVAL U38
      812 NEWCLOSURE                       R144 P117
      813 CAPTURE                          UPVAL U39
      814 CAPTURE                          REF R28
      815 CAPTURE                          UPVAL U38
      816 NEWCLOSURE                       R145 P118
      817 CAPTURE                          UPVAL U39
      818 CAPTURE                          REF R28
      819 CAPTURE                          UPVAL U38
      820 NEWCLOSURE                       R146 P119
      821 CAPTURE                          UPVAL U39
      822 CAPTURE                          REF R28
      823 CAPTURE                          UPVAL U38
      824 CAPTURE                          UPVAL U34
      825 CAPTURE                          UPVAL U33
      826 CAPTURE                          UPVAL U27
      827 CAPTURE                          UPVAL U28
      828 NEWCLOSURE                       R147 P120
      829 CAPTURE                          UPVAL U39
      830 CAPTURE                          REF R28
      831 CAPTURE                          UPVAL U38
      832 CAPTURE                          UPVAL U27
      833 CAPTURE                          UPVAL U28
      834 CAPTURE                          UPVAL U34
      835 CAPTURE                          UPVAL U33
      836 NEWCLOSURE                       R148 P121
      837 CAPTURE                          UPVAL U39
      838 CAPTURE                          REF R28
      839 CAPTURE                          UPVAL U38
      840 CAPTURE                          UPVAL U27
      841 CAPTURE                          UPVAL U28
      842 CAPTURE                          UPVAL U34
      843 CAPTURE                          UPVAL U33
      844 NEWCLOSURE                       R149 P122
      845 CAPTURE                          UPVAL U39
      846 CAPTURE                          REF R28
      847 CAPTURE                          UPVAL U38
      848 CAPTURE                          UPVAL U27
      849 CAPTURE                          UPVAL U28
      850 CAPTURE                          UPVAL U34
      851 CAPTURE                          UPVAL U33
      852 NEWCLOSURE                       R150 P123
      853 CAPTURE                          UPVAL U39
      854 CAPTURE                          REF R28
      855 CAPTURE                          UPVAL U38
      856 NEWCLOSURE                       R151 P124
      857 CAPTURE                          UPVAL U39
      858 CAPTURE                          REF R28
      859 CAPTURE                          UPVAL U38
      860 CAPTURE                          UPVAL U27
      861 CAPTURE                          UPVAL U28
      862 CAPTURE                          UPVAL U34
      863 CAPTURE                          UPVAL U33
      864 NEWCLOSURE                       R152 P125
      865 CAPTURE                          UPVAL U39
      866 CAPTURE                          REF R28
      867 CAPTURE                          UPVAL U38
      868 NEWCLOSURE                       R153 P126
      869 CAPTURE                          REF R23
      870 NEWCLOSURE                       R154 P127
      871 CAPTURE                          UPVAL U39
      872 CAPTURE                          REF R28
      873 CAPTURE                          UPVAL U38
      874 CAPTURE                          UPVAL U34
      875 CAPTURE                          UPVAL U33
      876 CAPTURE                          UPVAL U27
      877 CAPTURE                          UPVAL U28
      878 DUPCLOSURE                       R155 K63 [PROTO_167]
      879 CAPTURE                          UPVAL U38
      880 CAPTURE                          UPVAL U40
      881 CAPTURE                          UPVAL U39
      882 NEWCLOSURE                       R156 P129
      883 CAPTURE                          UPVAL U39
      884 CAPTURE                          REF R28
      885 CAPTURE                          UPVAL U38
      886 CAPTURE                          UPVAL U34
      887 CAPTURE                          UPVAL U33
      888 CAPTURE                          UPVAL U27
      889 CAPTURE                          UPVAL U28
      890 NEWCLOSURE                       R157 P130
      891 CAPTURE                          UPVAL U39
      892 CAPTURE                          UPVAL U40
      893 CAPTURE                          REF R28
      894 CAPTURE                          UPVAL U47
      895 NEWCLOSURE                       R158 P131
      896 CAPTURE                          UPVAL U39
      897 CAPTURE                          REF R28
      898 CAPTURE                          UPVAL U38
      899 CAPTURE                          UPVAL U27
      900 CAPTURE                          UPVAL U28
      901 CAPTURE                          UPVAL U34
      902 CAPTURE                          UPVAL U33
      903 NEWCLOSURE                       R159 P132
      904 CAPTURE                          UPVAL U39
      905 CAPTURE                          REF R28
      906 CAPTURE                          UPVAL U38
      907 CAPTURE                          UPVAL U27
      908 CAPTURE                          UPVAL U28
      909 CAPTURE                          UPVAL U34
      910 CAPTURE                          UPVAL U33
      911 NEWCLOSURE                       R160 P133
      912 CAPTURE                          UPVAL U39
      913 CAPTURE                          REF R28
      914 CAPTURE                          UPVAL U38
      915 CAPTURE                          UPVAL U27
      916 CAPTURE                          UPVAL U28
      917 CAPTURE                          UPVAL U34
      918 CAPTURE                          UPVAL U33
      919 NEWCLOSURE                       R161 P134
      920 CAPTURE                          UPVAL U39
      921 CAPTURE                          REF R28
      922 CAPTURE                          UPVAL U38
      923 CAPTURE                          UPVAL U27
      924 CAPTURE                          UPVAL U28
      925 CAPTURE                          UPVAL U34
      926 CAPTURE                          UPVAL U33
      927 NEWCLOSURE                       R162 P135
      928 CAPTURE                          UPVAL U39
      929 CAPTURE                          REF R28
      930 CAPTURE                          UPVAL U38
      931 NEWCLOSURE                       R163 P136
      932 CAPTURE                          UPVAL U39
      933 CAPTURE                          REF R28
      934 CAPTURE                          UPVAL U38
      935 CAPTURE                          UPVAL U27
      936 CAPTURE                          UPVAL U28
      937 CAPTURE                          UPVAL U34
      938 CAPTURE                          UPVAL U33
      939 NEWCLOSURE                       R164 P137
      940 CAPTURE                          UPVAL U34
      941 CAPTURE                          VAL R11
      942 CAPTURE                          UPVAL U27
      943 CAPTURE                          UPVAL U28
      944 NEWCLOSURE                       R165 P138
      945 CAPTURE                          UPVAL U34
      946 CAPTURE                          VAL R11
      947 CAPTURE                          UPVAL U27
      948 CAPTURE                          UPVAL U28
      949 NEWCLOSURE                       R166 P139
      950 CAPTURE                          UPVAL U34
      951 CAPTURE                          VAL R11
      952 CAPTURE                          UPVAL U27
      953 CAPTURE                          UPVAL U28
      954 NEWCLOSURE                       R167 P140
      955 CAPTURE                          UPVAL U34
      956 CAPTURE                          VAL R11
      957 CAPTURE                          UPVAL U27
      958 CAPTURE                          UPVAL U28
      959 NEWCLOSURE                       R168 P141
      960 CAPTURE                          UPVAL U34
      961 CAPTURE                          VAL R11
      962 CAPTURE                          UPVAL U27
      963 CAPTURE                          UPVAL U28
      964 NEWCLOSURE                       R169 P142
      965 CAPTURE                          UPVAL U36
      966 CAPTURE                          REF R23
      967 DUPCLOSURE                       R170 K64 [PROTO_183]
      968 CAPTURE                          UPVAL U38
      969 CAPTURE                          UPVAL U34
      970 CAPTURE                          UPVAL U33
      971 CAPTURE                          UPVAL U27
      972 CAPTURE                          UPVAL U28
      973 NEWCLOSURE                       R171 P144
      974 CAPTURE                          UPVAL U39
      975 CAPTURE                          REF R28
      976 CAPTURE                          UPVAL U38
      977 NEWCLOSURE                       R172 P145
      978 CAPTURE                          UPVAL U39
      979 CAPTURE                          REF R28
      980 CAPTURE                          UPVAL U38
      981 NEWCLOSURE                       R173 P146
      982 CAPTURE                          UPVAL U34
      983 CAPTURE                          VAL R15
      984 DUPCLOSURE                       R174 K65 [PROTO_188]
      985 CAPTURE                          UPVAL U38
      986 CAPTURE                          UPVAL U40
      987 CAPTURE                          UPVAL U39
      988 CAPTURE                          UPVAL U34
      989 CAPTURE                          UPVAL U33
      990 CAPTURE                          UPVAL U27
      991 CAPTURE                          UPVAL U28
      992 DUPCLOSURE                       R175 K66 [PROTO_189]
      993 NEWCLOSURE                       R176 P149
      994 CAPTURE                          UPVAL U39
      995 CAPTURE                          REF R28
      996 CAPTURE                          UPVAL U38
      997 MOVE                             R177 R29
      998 GETUPVAL                         R178 12
      999 LOADK                            R179 K67 ["Frame"]
     1000 DUPTABLE                         R180 K69 [{"Size"}]
     1001 GETIMPORT                        R181 K72 [UDim2.fromScale]
     1003 LOADN                            R182 1
     1004 LOADN                            R183 1
     1005 CALL                             R181 2 1
     1006 SETTABLEKS                       R181 R180 K68 ["Size"]
     1008 DUPTABLE                         R181 K75 [{"UIListLayout", "MainView"}]
     1009 GETUPVAL                         R182 12
     1010 LOADK                            R183 K73 ["UIListLayout"]
     1011 DUPTABLE                         R184 K77 [{"FillDirection"}]
     1012 GETIMPORT                        R185 K80 [Enum.FillDirection.Vertical]
     1014 SETTABLEKS                       R185 R184 K76 ["FillDirection"]
     1016 CALL                             R182 2 1
     1017 SETTABLEKS                       R182 R181 K73 ["UIListLayout"]
     1019 GETUPVAL                         R182 12
     1020 GETUPVAL                         R183 48
     1021 CALL                             R182 1 1
     1022 SETTABLEKS                       R182 R181 K74 ["MainView"]
     1024 CALL                             R178 3 -1
     1025 CALL                             R177 -1 0
     1026 NEWTABLE                         R177 256 0
     1028 SETTABLEKS                       R29 R177 K81 ["render"]
     1030 SETTABLEKS                       R24 R177 K27 ["tools"]
     1032 SETTABLEKS                       R33 R177 K82 ["invokeTool"]
     1034 SETTABLEKS                       R34 R177 K83 ["callTool"]
     1036 SETTABLEKS                       R30 R177 K84 ["typeText"]
     1038 SETTABLEKS                       R31 R177 K85 ["getCurrentConversationThread"]
     1040 SETTABLEKS                       R35 R177 K86 ["getContainer"]
     1042 SETTABLEKS                       R36 R177 K87 ["getGuiByTitle"]
     1044 SETTABLEKS                       R27 R177 K88 ["waitForTagApplication"]
     1046 SETTABLEKS                       R37 R177 K89 ["queryByTestId"]
     1048 SETTABLEKS                       R38 R177 K90 ["getByTestId"]
     1050 SETTABLEKS                       R39 R177 K91 ["queryAllByTestId"]
     1052 SETTABLEKS                       R40 R177 K92 ["getAllByTestId"]
     1054 SETTABLEKS                       R41 R177 K93 ["getByMessage"]
     1056 SETTABLEKS                       R43 R177 K94 ["clickButton"]
     1058 SETTABLEKS                       R44 R177 K95 ["mouseEnter"]
     1060 SETTABLEKS                       R45 R177 K96 ["mouseLeave"]
     1062 SETTABLEKS                       R46 R177 K97 ["act"]
     1064 SETTABLEKS                       R48 R177 K98 ["getTextBox"]
     1066 SETTABLEKS                       R49 R177 K99 ["getMessageScrollArea"]
     1068 SETTABLEKS                       R50 R177 K100 ["getContainingMessageWidget"]
     1070 SETTABLEKS                       R51 R177 K101 ["getContainingContentWidget"]
     1072 SETTABLEKS                       R52 R177 K102 ["getMessageActionsWidget"]
     1074 SETTABLEKS                       R54 R177 K103 ["getTextObjectWithMessage"]
     1076 SETTABLEKS                       R25 R177 K104 ["getClipboardTextAtIndex"]
     1078 SETTABLEKS                       R32 R177 K105 ["getToolResults"]
     1080 SETTABLEKS                       R65 R177 K106 ["typeInTextBox"]
     1082 SETTABLEKS                       R64 R177 K107 ["enterInTextBox"]
     1084 SETTABLEKS                       R58 R177 K108 ["focusTextBox"]
     1086 SETTABLEKS                       R59 R177 K109 ["setInputText"]
     1088 SETTABLEKS                       R60 R177 K110 ["setCursorPosition"]
     1090 SETTABLEKS                       R61 R177 K111 ["getInputScrollArea"]
     1092 SETTABLEKS                       R62 R177 K112 ["printScreen"]
     1094 SETTABLEKS                       R63 R177 K113 ["clickStopGenerationButton"]
     1096 SETTABLEKS                       R66 R177 K114 ["enterTextBox"]
     1098 SETTABLEKS                       R67 R177 K115 ["enterUserMessage"]
     1100 SETTABLEKS                       R68 R177 K116 ["pressKeyInInput"]
     1102 SETTABLEKS                       R69 R177 K117 ["setKeyDown"]
     1104 SETTABLEKS                       R70 R177 K118 ["isInputEnabled"]
     1106 SETTABLEKS                       R71 R177 K119 ["waitForInputState"]
     1108 SETTABLEKS                       R72 R177 K120 ["lastUserTextMatches"]
     1110 SETTABLEKS                       R73 R177 K121 ["getMessageCount"]
     1112 SETTABLEKS                       R74 R177 K122 ["isResponding"]
     1114 SETTABLEKS                       R116 R177 K123 ["setExternalInputOverride"]
     1116 SETTABLEKS                       R117 R177 K124 ["clearExternalInputOverride"]
     1118 SETTABLEKS                       R105 R177 K125 ["clickSettingsButton"]
     1120 SETTABLEKS                       R106 R177 K126 ["getSettingsContent"]
     1122 SETTABLEKS                       R118 R177 K127 ["getProviderCheckbox"]
     1124 SETTABLEKS                       R119 R177 K128 ["clickProviderCheckbox"]
     1126 SETTABLEKS                       R120 R177 K129 ["isProviderCheckboxChecked"]
     1128 SETTABLEKS                       R121 R177 K130 ["getModelPickerDropdown"]
     1130 SETTABLEKS                       R122 R177 K131 ["getSelectedModelFromPicker"]
     1132 SETTABLEKS                       R123 R177 K132 ["selectModelFromPicker"]
     1134 SETTABLEKS                       R147 R177 K133 ["clickEditAPIKeyButton"]
     1136 SETTABLEKS                       R148 R177 K134 ["clickSaveAPIKeyButton"]
     1138 SETTABLEKS                       R149 R177 K135 ["clickCancelAPIKeyButton"]
     1140 SETTABLEKS                       R150 R177 K136 ["getAPIKeyInputText"]
     1142 SETTABLEKS                       R151 R177 K137 ["setAPIKeyInputText"]
     1144 SETTABLEKS                       R152 R177 K138 ["getDisplayedAPIKey"]
     1146 SETTABLEKS                       R153 R177 K139 ["getAPIKeySetting"]
     1148 SETTABLEKS                       R125 R177 K140 ["hasFooterText"]
     1150 SETTABLEKS                       R126 R177 K141 ["hasFooterIcon"]
     1152 SETTABLEKS                       R127 R177 K142 ["getToolMenuView"]
     1154 SETTABLEKS                       R128 R177 K143 ["clickServerManagementButton"]
     1156 SETTABLEKS                       R129 R177 K144 ["getManageIntegrationsDialog"]
     1158 SETTABLEKS                       R130 R177 K145 ["getIntegrationItemDialog"]
     1160 SETTABLEKS                       R131 R177 K146 ["getIntegrationMenuEmptyState"]
     1162 SETTABLEKS                       R155 R177 K147 ["getIntegrationItemForLabel"]
     1164 SETTABLEKS                       R132 R177 K148 ["getSkillsTabContent"]
     1166 SETTABLEKS                       R133 R177 K149 ["getSkillsPersonalGroup"]
     1168 SETTABLEKS                       R134 R177 K150 ["getSkillsRobloxGroup"]
     1170 SETTABLEKS                       R135 R177 K151 ["getSkillRow"]
     1172 SETTABLEKS                       R136 R177 K152 ["findSkillRow"]
     1174 SETTABLEKS                       R137 R177 K153 ["clickSkillsGroupHeader"]
     1176 SETTABLEKS                       R138 R177 K154 ["clickSkillRow"]
     1178 SETTABLEKS                       R139 R177 K155 ["clickSkillRefreshButton"]
     1180 SETTABLEKS                       R140 R177 K156 ["getSkillDetailPane"]
     1182 SETTABLEKS                       R141 R177 K157 ["findSkillDetailPane"]
     1184 SETTABLEKS                       R142 R177 K158 ["findSkillDetailPaneEmpty"]
     1186 SETTABLEKS                       R143 R177 K159 ["getSkillDetailOpenButton"]
     1188 SETTABLEKS                       R144 R177 K160 ["getSkillDetailDuplicateButton"]
     1190 SETTABLEKS                       R145 R177 K161 ["getSkillDetailSourceUri"]
     1192 SETTABLEKS                       R146 R177 K162 ["clickSkillDetailOpenButton"]
     1194 SETTABLEKS                       R154 R177 K163 ["clickIntegrationItemActionsToggle"]
     1196 SETTABLEKS                       R156 R177 K164 ["clickIntegrationItemActionsOverflowButton"]
     1198 SETTABLEKS                       R157 R177 K165 ["getIntegrationItemActionsOverflowContent"]
     1200 SETTABLEKS                       R84 R177 K166 ["throwMarkdownParserError"]
     1202 SETTABLEKS                       R85 R177 K167 ["getCarousel"]
     1204 SETTABLEKS                       R86 R177 K168 ["getCarouselItem"]
     1206 SETTABLEKS                       R88 R177 K169 ["getSelectedCarouselItem"]
     1208 SETTABLEKS                       R89 R177 K170 ["clickCarouselItem"]
     1210 SETTABLEKS                       R158 R177 K171 ["clickAlertCloseButton"]
     1212 SETTABLEKS                       R159 R177 K172 ["clickAlertContinueButton"]
     1214 SETTABLEKS                       R160 R177 K173 ["clickToolConfirmationAcceptButton"]
     1216 SETTABLEKS                       R161 R177 K174 ["clickToolConfirmationRejectButton"]
     1218 SETTABLEKS                       R162 R177 K175 ["getToolConfirmationAlwaysAcceptText"]
     1220 SETTABLEKS                       R163 R177 K176 ["clickToolConfirmationAlwaysAcceptButton"]
     1222 SETTABLEKS                       R76 R177 K177 ["clickRunCodeExpandButton"]
     1224 SETTABLEKS                       R90 R177 K178 ["clickCopyButton"]
     1226 SETTABLEKS                       R91 R177 K179 ["clickRunButton"]
     1228 SETTABLEKS                       R92 R177 K180 ["clickStopButton"]
     1230 SETTABLEKS                       R93 R177 K181 ["clickImageExpandButton"]
     1232 SETTABLEKS                       R94 R177 K182 ["getImageContentImage"]
     1234 SETTABLEKS                       R77 R177 K183 ["clickAssetVariationExpandButton"]
     1236 SETTABLEKS                       R78 R177 K184 ["clickMaterialGenExpandButton"]
     1238 SETTABLEKS                       R79 R177 K185 ["clickMaterialGenStudsPerTileValueBar"]
     1240 SETTABLEKS                       R80 R177 K186 ["clickMaterialGenOrganicPatternToggle"]
     1242 SETTABLEKS                       R81 R177 K187 ["clickMeshGenExpandButton"]
     1244 SETTABLEKS                       R82 R177 K188 ["getMeshGenPreviewImage"]
     1246 SETTABLEKS                       R83 R177 K189 ["clickMeshGenSelectionToggle"]
     1248 SETTABLEKS                       R95 R177 K190 ["clickRetryButton"]
     1250 SETTABLEKS                       R96 R177 K191 ["clickThumbsUpButton"]
     1252 SETTABLEKS                       R97 R177 K192 ["clickThumbsDownButton"]
     1254 SETTABLEKS                       R98 R177 K193 ["clickBranchButton"]
     1256 SETTABLEKS                       R99 R177 K194 ["getThumbsUpButtonIcon"]
     1258 SETTABLEKS                       R100 R177 K195 ["getThumbsDownButtonIcon"]
     1260 SETTABLEKS                       R101 R177 K196 ["getConversation"]
     1262 SETTABLEKS                       R102 R177 K197 ["addConversation"]
     1264 SETTABLEKS                       R103 R177 K198 ["setThreadId"]
     1266 SETTABLEKS                       R104 R177 K199 ["applyConversation"]
     1268 SETTABLEKS                       R107 R177 K200 ["clearConversation"]
     1270 SETTABLEKS                       R108 R177 K201 ["wasToolInvoked"]
     1272 SETTABLEKS                       R109 R177 K202 ["overrideMethodWithError"]
     1274 SETTABLEKS                       R114 R177 K203 ["wasRequestHandlerCalled"]
     1276 SETTABLEKS                       R115 R177 K204 ["getLastRequestField"]
     1278 SETTABLEKS                       R110 R177 K205 ["getMultiplexedClient"]
     1280 SETTABLEKS                       R111 R177 K206 ["getClientStatusForIdentifier"]
     1282 SETTABLEKS                       R112 R177 K207 ["closeAllClients"]
     1284 SETTABLEKS                       R113 R177 K208 ["getToolAlias"]
     1286 SETTABLEKS                       R164 R177 K209 ["streamEvent"]
     1288 SETTABLEKS                       R165 R177 K210 ["addToolCall"]
     1290 SETTABLEKS                       R166 R177 K211 ["streamText"]
     1292 SETTABLEKS                       R167 R177 K212 ["startMessage"]
     1294 SETTABLEKS                       R168 R177 K213 ["sendMessageDeltaAndStop"]
     1296 SETTABLEKS                       R169 R177 K214 ["mockEventLoggerCall"]
     1298 SETTABLEKS                       R170 R177 K215 ["clickTextWithin"]
     1300 SETTABLEKS                       R55 R177 K216 ["getModelQualityWarning"]
     1302 SETTABLEKS                       R57 R177 K217 ["setModelQuality"]
     1304 SETTABLEKS                       R56 R177 K218 ["getGenerationIndicator"]
     1306 SETTABLEKS                       R171 R177 K219 ["getSlashCommandMenu"]
     1308 SETTABLEKS                       R172 R177 K220 ["getSlashCommandItems"]
     1310 SETTABLEKS                       R173 R177 K221 ["setOptions"]
     1312 SETTABLEKS                       R174 R177 K222 ["clickOptionWithDisplayName"]
     1314 SETTABLEKS                       R176 R177 K223 ["getSelectedThreadButton"]
     1316 GETTABLEKS                       R178 R19 K224 ["setState"]
     1318 SETTABLEKS                       R178 R177 K225 ["setExternalServerState"]
     1320 GETTABLEKS                       R178 R19 K226 ["getState"]
     1322 SETTABLEKS                       R178 R177 K227 ["getExternalServerState"]
     1324 GETTABLEKS                       R178 R19 K228 ["getStartCallCount"]
     1326 SETTABLEKS                       R178 R177 K229 ["getExternalServerStartCallCount"]
     1328 GETTABLEKS                       R178 R19 K230 ["getStopCallCount"]
     1330 SETTABLEKS                       R178 R177 K231 ["getExternalServerStopCallCount"]
     1332 CLOSEUPVALS                      R0
     1333 RETURN                           R177 1

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
      141 GETTABLEKS                       R20 R0 K17 ["Parent"]
      143 GETTABLEKS                       R20 R20 K34 ["ModelContextProtocol"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K12 [require]
      148 GETTABLEKS                       R21 R0 K25 ["Components"]
      150 GETTABLEKS                       R21 R21 K26 ["Contexts"]
      152 GETTABLEKS                       R21 R21 K35 ["ModelQualityContext"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K12 [require]
      157 GETTABLEKS                       R22 R0 K25 ["Components"]
      159 GETTABLEKS                       R22 R22 K26 ["Contexts"]
      161 GETTABLEKS                       R22 R22 K36 ["OptionsContext"]
      163 CALL                             R21 1 1
      164 GETIMPORT                        R22 K12 [require]
      166 GETTABLEKS                       R23 R0 K13 ["Util"]
      168 GETTABLEKS                       R23 R23 K37 ["Persistence"]
      170 CALL                             R22 1 1
      171 GETIMPORT                        R23 K12 [require]
      173 GETTABLEKS                       R24 R0 K25 ["Components"]
      175 GETTABLEKS                       R24 R24 K38 ["APIKeyManagement"]
      177 GETTABLEKS                       R24 R24 K39 ["ProviderModels"]
      179 CALL                             R23 1 1
      180 GETIMPORT                        R24 K12 [require]
      182 GETTABLEKS                       R25 R0 K17 ["Parent"]
      184 GETTABLEKS                       R25 R25 K40 ["React"]
      186 CALL                             R24 1 1
      187 GETIMPORT                        R25 K12 [require]
      189 GETTABLEKS                       R26 R0 K17 ["Parent"]
      191 GETTABLEKS                       R26 R26 K41 ["ReactUtils"]
      193 CALL                             R25 1 1
      194 GETIMPORT                        R26 K12 [require]
      196 GETTABLEKS                       R27 R0 K42 ["Flags"]
      198 GETTABLEKS                       R27 R27 K43 ["ScopedFastSetting"]
      200 CALL                             R26 1 1
      201 GETIMPORT                        R27 K12 [require]
      203 GETTABLEKS                       R28 R0 K13 ["Util"]
      205 GETTABLEKS                       R28 R28 K44 ["Serializer"]
      207 CALL                             R27 1 1
      208 GETIMPORT                        R28 K12 [require]
      210 GETTABLEKS                       R29 R0 K25 ["Components"]
      212 GETTABLEKS                       R29 R29 K26 ["Contexts"]
      214 GETTABLEKS                       R29 R29 K45 ["SessionIdContext"]
      216 CALL                             R28 1 1
      217 GETIMPORT                        R29 K12 [require]
      219 GETTABLEKS                       R30 R0 K46 ["tests"]
      221 GETTABLEKS                       R30 R30 K47 ["TestUtils"]
      223 GETTABLEKS                       R30 R30 K48 ["TagSearch"]
      225 CALL                             R29 1 1
      226 GETIMPORT                        R30 K12 [require]
      228 GETTABLEKS                       R31 R0 K13 ["Util"]
      230 GETTABLEKS                       R31 R31 K49 ["Tagging"]
      232 CALL                             R30 1 1
      233 GETIMPORT                        R31 K12 [require]
      235 GETTABLEKS                       R32 R0 K13 ["Util"]
      237 GETTABLEKS                       R32 R32 K50 ["TestIds"]
      239 CALL                             R31 1 1
      240 GETIMPORT                        R32 K12 [require]
      242 GETTABLEKS                       R33 R0 K46 ["tests"]
      244 GETTABLEKS                       R33 R33 K47 ["TestUtils"]
      246 GETTABLEKS                       R33 R33 K51 ["ToolTestUtils"]
      248 CALL                             R32 1 1
      249 GETIMPORT                        R33 K12 [require]
      251 GETTABLEKS                       R34 R0 K52 ["Tools"]
      253 GETTABLEKS                       R34 R34 K53 ["ToolTypes"]
      255 CALL                             R33 1 1
      256 GETIMPORT                        R34 K12 [require]
      258 GETTABLEKS                       R35 R0 K13 ["Util"]
      260 GETTABLEKS                       R35 R35 K14 ["ContentWidgets"]
      262 GETTABLEKS                       R35 R35 K54 ["ToolWidgetMappingRegistry"]
      264 CALL                             R34 1 1
      265 GETIMPORT                        R35 K12 [require]
      267 GETTABLEKS                       R36 R0 K55 ["Resources"]
      269 GETTABLEKS                       R36 R36 K56 ["Localization"]
      271 GETTABLEKS                       R36 R36 K57 ["Translator"]
      273 CALL                             R35 1 1
      274 GETIMPORT                        R36 K12 [require]
      276 GETTABLEKS                       R37 R0 K58 ["Types"]
      278 CALL                             R36 1 1
      279 GETIMPORT                        R37 K12 [require]
      281 GETTABLEKS                       R38 R0 K25 ["Components"]
      283 GETTABLEKS                       R38 R38 K59 ["UIToolRegistry"]
      285 CALL                             R37 1 1
      286 GETIMPORT                        R38 K12 [require]
      288 GETTABLEKS                       R39 R0 K25 ["Components"]
      290 GETTABLEKS                       R39 R39 K26 ["Contexts"]
      292 GETTABLEKS                       R39 R39 K60 ["WindowInputContext"]
      294 CALL                             R38 1 1
      295 GETIMPORT                        R39 K12 [require]
      297 GETTABLEKS                       R40 R0 K46 ["tests"]
      299 GETTABLEKS                       R40 R40 K47 ["TestUtils"]
      301 GETTABLEKS                       R40 R40 K61 ["setup"]
      303 GETTABLEKS                       R40 R40 K62 ["createMockConversationContext"]
      305 CALL                             R39 1 1
      306 GETIMPORT                        R40 K12 [require]
      308 GETTABLEKS                       R41 R0 K46 ["tests"]
      310 GETTABLEKS                       R41 R41 K47 ["TestUtils"]
      312 GETTABLEKS                       R41 R41 K61 ["setup"]
      314 GETTABLEKS                       R41 R41 K63 ["createMockExternalServerContext"]
      316 CALL                             R40 1 1
      317 GETIMPORT                        R41 K12 [require]
      319 GETTABLEKS                       R42 R0 K46 ["tests"]
      321 GETTABLEKS                       R42 R42 K47 ["TestUtils"]
      323 GETTABLEKS                       R42 R42 K61 ["setup"]
      325 GETTABLEKS                       R42 R42 K64 ["createMockInputStateContext"]
      327 CALL                             R41 1 1
      328 GETIMPORT                        R42 K12 [require]
      330 GETTABLEKS                       R43 R0 K46 ["tests"]
      332 GETTABLEKS                       R43 R43 K47 ["TestUtils"]
      334 GETTABLEKS                       R43 R43 K61 ["setup"]
      336 GETTABLEKS                       R43 R43 K65 ["createMockLLMPackageContext"]
      338 CALL                             R42 1 1
      339 GETIMPORT                        R43 K12 [require]
      341 GETTABLEKS                       R44 R0 K46 ["tests"]
      343 GETTABLEKS                       R44 R44 K47 ["TestUtils"]
      345 GETTABLEKS                       R44 R44 K61 ["setup"]
      347 GETTABLEKS                       R44 R44 K66 ["createMockMcpClientContext"]
      349 CALL                             R43 1 1
      350 GETIMPORT                        R44 K12 [require]
      352 GETTABLEKS                       R45 R0 K46 ["tests"]
      354 GETTABLEKS                       R45 R45 K47 ["TestUtils"]
      356 GETTABLEKS                       R45 R45 K61 ["setup"]
      358 GETTABLEKS                       R45 R45 K67 ["createMockModelQualityContext"]
      360 CALL                             R44 1 1
      361 GETIMPORT                        R45 K12 [require]
      363 GETTABLEKS                       R46 R0 K46 ["tests"]
      365 GETTABLEKS                       R46 R46 K47 ["TestUtils"]
      367 GETTABLEKS                       R46 R46 K61 ["setup"]
      369 GETTABLEKS                       R46 R46 K68 ["createMockOptionsContext"]
      371 CALL                             R45 1 1
      372 GETIMPORT                        R46 K12 [require]
      374 GETTABLEKS                       R47 R0 K46 ["tests"]
      376 GETTABLEKS                       R47 R47 K47 ["TestUtils"]
      378 GETTABLEKS                       R47 R47 K61 ["setup"]
      380 GETTABLEKS                       R47 R47 K69 ["createMockPopoutWidgetContext"]
      382 CALL                             R46 1 1
      383 GETIMPORT                        R47 K12 [require]
      385 GETTABLEKS                       R48 R0 K46 ["tests"]
      387 GETTABLEKS                       R48 R48 K47 ["TestUtils"]
      389 GETTABLEKS                       R48 R48 K61 ["setup"]
      391 GETTABLEKS                       R48 R48 K70 ["createMockSettingsContext"]
      393 CALL                             R47 1 1
      394 GETIMPORT                        R48 K12 [require]
      396 GETTABLEKS                       R49 R0 K46 ["tests"]
      398 GETTABLEKS                       R49 R49 K47 ["TestUtils"]
      400 GETTABLEKS                       R49 R49 K61 ["setup"]
      402 GETTABLEKS                       R49 R49 K71 ["createMockThreadIdContext"]
      404 CALL                             R48 1 1
      405 GETIMPORT                        R49 K12 [require]
      407 GETTABLEKS                       R50 R0 K46 ["tests"]
      409 GETTABLEKS                       R50 R50 K47 ["TestUtils"]
      411 GETTABLEKS                       R50 R50 K72 ["isVisibleGuiObject"]
      413 CALL                             R49 1 1
      414 GETIMPORT                        R50 K12 [require]
      416 GETTABLEKS                       R51 R0 K13 ["Util"]
      418 GETTABLEKS                       R51 R51 K14 ["ContentWidgets"]
      420 GETTABLEKS                       R51 R51 K73 ["registerContentWidgets"]
      422 CALL                             R50 1 1
      423 LOADK                            R53 K74 ["Packages"]
      424 NAMECALL                         R51 R0 K3 ["FindFirstAncestor"]
      426 CALL                             R51 2 1
      427 GETTABLEKS                       R51 R51 K75 ["Dev"]
      429 GETIMPORT                        R52 K12 [require]
      431 GETTABLEKS                       R53 R51 K76 ["FoundationTestingLibrary"]
      433 CALL                             R52 1 1
      434 GETIMPORT                        R53 K12 [require]
      436 GETTABLEKS                       R54 R51 K77 ["JestGlobals"]
      438 CALL                             R53 1 1
      439 GETIMPORT                        R54 K12 [require]
      441 GETTABLEKS                       R55 R51 K78 ["ReactTestingLibrary"]
      443 CALL                             R54 1 1
      444 GETIMPORT                        R55 K12 [require]
      446 GETTABLEKS                       R56 R0 K42 ["Flags"]
      448 GETTABLEKS                       R56 R56 K79 ["FFlagAssistantHarnessSplit"]
      450 CALL                             R55 1 1
      451 GETIMPORT                        R56 K12 [require]
      453 GETTABLEKS                       R57 R0 K42 ["Flags"]
      455 GETTABLEKS                       R57 R57 K80 ["FFlagAssistantSplitToolsAndWidgets"]
      457 CALL                             R56 1 1
      458 GETTABLEKS                       R57 R24 K81 ["createElement"]
      460 GETTABLEKS                       R58 R53 K82 ["afterAll"]
      462 GETTABLEKS                       R59 R53 K83 ["afterEach"]
      464 GETTABLEKS                       R60 R53 K84 ["beforeAll"]
      466 GETTABLEKS                       R61 R53 K85 ["expect"]
      468 GETTABLEKS                       R62 R53 K86 ["jest"]
      470 GETTABLEKS                       R63 R54 K87 ["act"]
      472 GETTABLEKS                       R64 R54 K88 ["fireEvent"]
      474 GETTABLEKS                       R65 R54 K89 ["waitFor"]
      476 GETTABLEKS                       R66 R54 K90 ["within"]
      478 DUPCLOSURE                       R67 K91 [PROTO_8]
      479 CAPTURE                          VAL R10
      480 CAPTURE                          VAL R7
      481 CAPTURE                          VAL R9
      482 CAPTURE                          VAL R3
      483 CAPTURE                          VAL R36
      484 CAPTURE                          VAL R16
      485 LOADNIL                          R68
      486 MOVE                             R69 R60
      487 NEWCLOSURE                       R70 P1
      488 CAPTURE                          REF R68
      489 CAPTURE                          VAL R62
      490 CAPTURE                          VAL R30
      491 CALL                             R69 1 0
      492 MOVE                             R69 R58
      493 NEWCLOSURE                       R70 P2
      494 CAPTURE                          REF R68
      495 CALL                             R69 1 0
      496 MOVE                             R69 R59
      497 DUPCLOSURE                       R70 K92 [PROTO_12]
      498 CAPTURE                          VAL R5
      499 CAPTURE                          VAL R27
      500 CALL                             R69 1 0
      501 DUPCLOSURE                       R69 K93 [PROTO_192]
      502 CAPTURE                          VAL R26
      503 CAPTURE                          VAL R55
      504 CAPTURE                          VAL R47
      505 CAPTURE                          VAL R39
      506 CAPTURE                          VAL R41
      507 CAPTURE                          VAL R48
      508 CAPTURE                          VAL R43
      509 CAPTURE                          VAL R42
      510 CAPTURE                          VAL R44
      511 CAPTURE                          VAL R45
      512 CAPTURE                          VAL R46
      513 CAPTURE                          VAL R40
      514 CAPTURE                          VAL R57
      515 CAPTURE                          VAL R28
      516 CAPTURE                          VAL R1
      517 CAPTURE                          VAL R38
      518 CAPTURE                          VAL R17
      519 CAPTURE                          VAL R8
      520 CAPTURE                          VAL R67
      521 CAPTURE                          VAL R32
      522 CAPTURE                          VAL R10
      523 CAPTURE                          VAL R22
      524 CAPTURE                          VAL R56
      525 CAPTURE                          VAL R50
      526 CAPTURE                          VAL R5
      527 CAPTURE                          VAL R34
      528 CAPTURE                          VAL R6
      529 CAPTURE                          VAL R4
      530 CAPTURE                          VAL R2
      531 CAPTURE                          VAL R54
      532 CAPTURE                          VAL R14
      533 CAPTURE                          VAL R52
      534 CAPTURE                          VAL R25
      535 CAPTURE                          VAL R64
      536 CAPTURE                          VAL R63
      537 CAPTURE                          VAL R11
      538 CAPTURE                          VAL R62
      539 CAPTURE                          VAL R36
      540 CAPTURE                          VAL R66
      541 CAPTURE                          VAL R31
      542 CAPTURE                          VAL R29
      543 CAPTURE                          VAL R65
      544 CAPTURE                          VAL R61
      545 CAPTURE                          VAL R13
      546 CAPTURE                          VAL R35
      547 CAPTURE                          VAL R15
      548 CAPTURE                          VAL R23
      549 CAPTURE                          VAL R49
      550 CAPTURE                          VAL R18
      551 CLOSEUPVALS                      R68
      552 RETURN                           R69 1
