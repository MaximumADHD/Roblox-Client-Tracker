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
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

PROTO_10:
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
       64 NEWTABLE                         R4 0 0
       66 NEWCLOSURE                       R5 P8
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R5 R1 K26 ["getPluginSetting"]
       70 NEWCLOSURE                       R5 P9
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R5 R1 K27 ["setPluginSetting"]
       74 GETUPVAL                         R5 5
       75 GETTABLEKS                       R5 R5 K28 ["setup"]
       77 MOVE                             R6 R1
       78 CALL                             R5 1 0
       79 CLOSEUPVALS                      R3
       80 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["spyOn"]
        3 GETUPVAL                         R1 2
        4 LOADK                            R2 K1 ["_batchTagUpdates"]
        5 CALL                             R0 2 1
        6 GETTABLEKS                       R0 R0 K2 ["mockImplementation"]
        8 DUPCLOSURE                       R1 K3 [PROTO_11]
        9 CALL                             R0 1 1
       10 SETUPVAL                         R0 0
       11 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["mockRestore"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clear"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["clear"]
        7 CALL                             R0 0 0
        8 GETIMPORT                        R0 K2 [workspace]
       10 GETTABLEKS                       R0 R0 K3 ["CurrentCamera"]
       12 JUMPIFNOT                        R0 ; [+16]
       13 NAMECALL                         R1 R0 K4 ["GetChildren"]
       15 CALL                             R1 1 3
       16 FORGPREP                         R1
       17 GETTABLEKS                       R6 R5 K5 ["Name"]
       19 LOADK                            R8 K6 ["^RBX_Assistant_Channel_"]
       20 NAMECALL                         R6 R6 K7 ["match"]
       22 CALL                             R6 2 1
       23 JUMPIFNOT                        R6 ; [+3]
       24 NAMECALL                         R6 R5 K8 ["Destroy"]
       26 CALL                             R6 1 0
       27 FORGLOOP                         R1 2 ; [-11]
       29 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 JUMPIFNOTLT                      R1 R0 ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLE                         R1 R2 R0
        8 RETURN                           R1 1

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 SETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [coroutine.status]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K3 ["suspended"] ; [+5]
        7 GETIMPORT                        R1 K6 [task.spawn]
        9 GETUPVAL                         R2 1
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R0 R0 K0 ["getThread"]
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_21:
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

PROTO_22:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 FASTCALL2K                       ASSERT R0 K1 ; [+5]
        7 MOVE                             R2 R0
        8 LOADK                            R3 K1 ["getExternalInterface: externalInterface not initialized"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 RETURN                           R0 1

PROTO_23:
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

PROTO_24:
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
       23 CALL                             R2 0 1
       24 GETTABLEKS                       R2 R2 K9 ["getContentObserver"]
       26 CALL                             R2 0 1
       27 GETTABLEKS                       R3 R2 K10 ["onNewMessage"]
       29 GETUPVAL                         R4 4
       30 CALL                             R3 1 0
       31 GETTABLEKS                       R3 R2 K11 ["onContentStart"]
       33 MOVE                             R4 R1
       34 CALL                             R3 1 1
       35 JUMPIFNOT                        R3 ; [+4]
       36 GETTABLEKS                       R4 R2 K12 ["onContentFinished"]
       38 MOVE                             R5 R3
       39 CALL                             R4 1 0
       40 GETUPVAL                         R4 6
       41 GETTABLEKS                       R4 R4 K13 ["assign"]
       43 GETUPVAL                         R5 5
       44 JUMPIF                           R5 ; [+2]
       45 NEWTABLE                         R5 0 0
       47 DUPTABLE                         R6 K16 [{"messageId", "contentId"}]
       48 GETUPVAL                         R7 4
       49 SETTABLEKS                       R7 R6 K14 ["messageId"]
       51 SETTABLEKS                       R3 R6 K15 ["contentId"]
       53 CALL                             R4 2 1
       54 SETUPVAL                         R4 5
       55 JUMPIFNOT                        R3 ; [+5]
       56 GETTABLEKS                       R4 R2 K17 ["onPreExecuteToolUse"]
       58 MOVE                             R5 R3
       59 MOVE                             R6 R1
       60 CALL                             R4 2 0
       61 GETUPVAL                         R4 1
       62 GETTABLEKS                       R4 R4 K8 ["definition"]
       64 GETTABLEKS                       R4 R4 K18 ["handler"]
       66 GETUPVAL                         R5 2
       67 GETUPVAL                         R6 5
       68 GETUPVAL                         R7 7
       69 CALL                             R4 3 1
       70 DUPTABLE                         R5 K25 [{["type"] = "tool_result", ["id"], ["name"], ["content"], ["isError"], ["startTime"] = 0, ["startTimeAfterConfirmation"] = 0}]
       71 SETTABLEKS                       R0 R5 K4 ["id"]
       73 GETUPVAL                         R6 1
       74 GETTABLEKS                       R6 R6 K8 ["definition"]
       76 GETTABLEKS                       R6 R6 K8 ["definition"]
       78 GETTABLEKS                       R6 R6 K5 ["name"]
       80 SETTABLEKS                       R6 R5 K5 ["name"]
       82 GETTABLEKS                       R6 R4 K20 ["content"]
       84 SETTABLEKS                       R6 R5 K20 ["content"]
       86 GETTABLEKS                       R6 R4 K21 ["isError"]
       88 SETTABLEKS                       R6 R5 K21 ["isError"]
       90 JUMPIFNOT                        R3 ; [+5]
       91 GETTABLEKS                       R6 R2 K26 ["onToolResult"]
       93 MOVE                             R7 R3
       94 MOVE                             R8 R5
       95 CALL                             R6 2 0
       96 RETURN                           R5 1

PROTO_25:
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

PROTO_26:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R0 R0 K0 ["getOrAddMessage"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["ROLE"]
        7 GETTABLEKS                       R1 R1 K2 ["Assistant"]
        9 GETUPVAL                         R2 2
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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

PROTO_30:
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
       25 GETTABLEKS                       R2 R2 K4 ["queryByTestId"]
       27 MOVE                             R3 R0
       28 CALL                             R2 1 1
       29 RETURN                           R2 1

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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

PROTO_35:
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

PROTO_36:
        0 LOADK                            R3 K0 ["GuiButton"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_38:
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
        0 GETTABLEKS                       R3 R0 K0 ["messageContainer"]
        2 GETTABLEKS                       R3 R3 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R4 R1 K0 ["messageContainer"]
        6 GETTABLEKS                       R4 R4 K1 ["LayoutOrder"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_50:
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
       53 DUPCLOSURE                       R4 K18 [PROTO_49]
       54 CALL                             R2 2 0
       55 RETURN                           R1 1

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETTABLEKS                       R0 R0 K0 ["getByText"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_52:
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

PROTO_53:
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

PROTO_54:
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

PROTO_55:
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

PROTO_56:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setModelQuality"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_57:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_58:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setSessionId"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_59:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["act"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 2
        9 NAMECALL                         R2 R2 K1 ["UpdateUnitTestOnly"]
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K2 ["Stepped"]
       15 NAMECALL                         R2 R2 K3 ["Wait"]
       17 CALL                             R2 1 0
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K2 ["Stepped"]
       21 NAMECALL                         R2 R2 K3 ["Wait"]
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_60:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setIsVisible"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_61:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["act"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 GETUPVAL                         R2 2
        9 NAMECALL                         R2 R2 K1 ["UpdateUnitTestOnly"]
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K2 ["Stepped"]
       15 NAMECALL                         R2 R2 K3 ["Wait"]
       17 CALL                             R2 1 0
       18 GETUPVAL                         R2 3
       19 GETTABLEKS                       R2 R2 K2 ["Stepped"]
       21 NAMECALL                         R2 R2 K3 ["Wait"]
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_62:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_63:
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

PROTO_64:
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

PROTO_65:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["CursorPosition"]
        4 RETURN                           R0 0

PROTO_66:
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

PROTO_67:
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

PROTO_68:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["screen"]
        3 GETTABLEKS                       R2 R2 K1 ["debug"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_69:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["InputArea"]
        3 GETTABLEKS                       R1 R1 K1 ["SendButton"]
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

PROTO_70:
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

PROTO_71:
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

PROTO_72:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_73:
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

PROTO_74:
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

PROTO_75:
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

PROTO_76:
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

PROTO_77:
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

PROTO_78:
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

PROTO_79:
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

PROTO_80:
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

PROTO_81:
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

PROTO_82:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LENGTH                           R0 R1
        3 RETURN                           R0 1

PROTO_83:
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

PROTO_84:
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

PROTO_85:
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

PROTO_86:
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

PROTO_87:
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

PROTO_88:
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

PROTO_89:
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

PROTO_90:
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

PROTO_91:
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

PROTO_92:
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

PROTO_93:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_94:
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

PROTO_95:
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

PROTO_96:
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

PROTO_97:
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

PROTO_98:
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
       50 LOADK                            R5 K9 ["data-testid="]
       51 GETUPVAL                         R6 0
       52 GETTABLEKS                       R6 R6 K0 ["CarouselItem"]
       54 GETTABLEKS                       R6 R6 K10 ["Root"]
       56 CONCAT                           R4 R5 R6
       57 CALL                             R2 2 1
       58 RETURN                           R2 1

PROTO_99:
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
       19 LOADK                            R6 K5 ["data-testid="]
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K6 ["Carousel"]
       23 GETTABLEKS                       R7 R7 K7 ["Root"]
       25 CONCAT                           R5 R6 R7
       26 CALL                             R3 2 1
       27 LOADK                            R6 K8 ["ScrollingFrame"]
       28 NAMECALL                         R4 R3 K9 ["FindFirstAncestorWhichIsA"]
       30 CALL                             R4 2 1
       31 MOVE                             R6 R4
       32 JUMPIFNOT                        R6 ; [+4]
       33 LOADK                            R8 K8 ["ScrollingFrame"]
       34 NAMECALL                         R6 R4 K10 ["IsA"]
       36 CALL                             R6 2 1
       37 FASTCALL2K                       ASSERT R6 K11 ; [+4]
       39 LOADK                            R7 K11 ["Scroll area not found for widget"]
       40 GETIMPORT                        R5 K4 [assert]
       42 CALL                             R5 2 0
       43 GETTABLEKS                       R6 R4 K12 ["AbsolutePosition"]
       45 GETTABLEKS                       R8 R3 K12 ["AbsolutePosition"]
       47 GETTABLEKS                       R10 R3 K14 ["AbsoluteSize"]
       49 DIVK                             R9 R10 K13 [2]
       50 ADD                              R7 R8 R9
       51 SUB                              R5 R6 R7
       52 GETTABLEKS                       R6 R4 K15 ["CanvasPosition"]
       54 SUB                              R6 R6 R5
       55 SETTABLEKS                       R6 R4 K15 ["CanvasPosition"]
       57 GETUPVAL                         R6 3
       58 NAMECALL                         R6 R6 K16 ["UpdateUnitTestOnly"]
       60 CALL                             R6 1 0
       61 GETUPVAL                         R6 4
       62 GETTABLEKS                       R6 R6 K17 ["Stepped"]
       64 NAMECALL                         R6 R6 K18 ["Wait"]
       66 CALL                             R6 1 0
       67 GETUPVAL                         R6 4
       68 GETTABLEKS                       R6 R6 K17 ["Stepped"]
       70 NAMECALL                         R6 R6 K18 ["Wait"]
       72 CALL                             R6 1 0
       73 LOADK                            R6 K8 ["ScrollingFrame"]
       74 NAMECALL                         R4 R2 K9 ["FindFirstAncestorWhichIsA"]
       76 CALL                             R4 2 1
       77 MOVE                             R6 R4
       78 JUMPIFNOT                        R6 ; [+4]
       79 LOADK                            R8 K8 ["ScrollingFrame"]
       80 NAMECALL                         R6 R4 K10 ["IsA"]
       82 CALL                             R6 2 1
       83 FASTCALL2K                       ASSERT R6 K11 ; [+4]
       85 LOADK                            R7 K11 ["Scroll area not found for widget"]
       86 GETIMPORT                        R5 K4 [assert]
       88 CALL                             R5 2 0
       89 GETTABLEKS                       R6 R4 K12 ["AbsolutePosition"]
       91 GETTABLEKS                       R8 R2 K12 ["AbsolutePosition"]
       93 GETTABLEKS                       R10 R2 K14 ["AbsoluteSize"]
       95 DIVK                             R9 R10 K13 [2]
       96 ADD                              R7 R8 R9
       97 SUB                              R5 R6 R7
       98 GETTABLEKS                       R6 R4 K15 ["CanvasPosition"]
      100 SUB                              R6 R6 R5
      101 SETTABLEKS                       R6 R4 K15 ["CanvasPosition"]
      103 GETUPVAL                         R6 3
      104 NAMECALL                         R6 R6 K16 ["UpdateUnitTestOnly"]
      106 CALL                             R6 1 0
      107 GETUPVAL                         R6 4
      108 GETTABLEKS                       R6 R6 K17 ["Stepped"]
      110 NAMECALL                         R6 R6 K18 ["Wait"]
      112 CALL                             R6 1 0
      113 GETUPVAL                         R6 4
      114 GETTABLEKS                       R6 R6 K17 ["Stepped"]
      116 NAMECALL                         R6 R6 K18 ["Wait"]
      118 CALL                             R6 1 0
      119 GETUPVAL                         R4 5
      120 NEWCLOSURE                       R5 P0
      121 CAPTURE                          UPVAL U6
      122 CAPTURE                          VAL R2
      123 CALL                             R4 1 0
      124 GETUPVAL                         R4 3
      125 NAMECALL                         R4 R4 K16 ["UpdateUnitTestOnly"]
      127 CALL                             R4 1 0
      128 GETUPVAL                         R4 4
      129 GETTABLEKS                       R4 R4 K17 ["Stepped"]
      131 NAMECALL                         R4 R4 K18 ["Wait"]
      133 CALL                             R4 1 0
      134 GETUPVAL                         R4 4
      135 GETTABLEKS                       R4 R4 K17 ["Stepped"]
      137 NAMECALL                         R4 R4 K18 ["Wait"]
      139 CALL                             R4 1 0
      140 RETURN                           R0 0

PROTO_100:
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

PROTO_101:
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

PROTO_102:
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

PROTO_103:
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

PROTO_104:
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

PROTO_105:
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

PROTO_106:
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

PROTO_107:
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

PROTO_108:
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

PROTO_109:
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

PROTO_110:
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

PROTO_111:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getConversation"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_112:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setConversation"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_113:
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

PROTO_114:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setThreadId"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_115:
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

PROTO_116:
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

PROTO_117:
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

PROTO_118:
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

PROTO_119:
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

PROTO_120:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["wasToolInvoked"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_121:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_122:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["overrideMethod"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_123:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getClientObject"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_124:
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

PROTO_125:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getClientObject"]
        3 CALL                             R0 0 1
        4 NAMECALL                         R1 R0 K1 ["close"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_126:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getToolAlias"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_127:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["wasRequestHandlerCalled"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_128:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getLastRequestHandlerBody"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 GETTABLE                         R2 R1 R0
        6 JUMPIF                           R2 ; [+1]
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_129:
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

PROTO_130:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 LOADK                            R3 K0 ["GuiObject"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_131:
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

PROTO_132:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setInputOverride"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_133:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_134:
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

PROTO_135:
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

PROTO_136:
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

PROTO_137:
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

PROTO_138:
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

PROTO_139:
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

PROTO_140:
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

PROTO_141:
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

PROTO_142:
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

PROTO_143:
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

PROTO_144:
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

PROTO_145:
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

PROTO_146:
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

PROTO_147:
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

PROTO_148:
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

PROTO_149:
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

PROTO_150:
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

PROTO_151:
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

PROTO_152:
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

PROTO_153:
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

PROTO_154:
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

PROTO_155:
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

PROTO_156:
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

PROTO_157:
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

PROTO_158:
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

PROTO_159:
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

PROTO_160:
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

PROTO_161:
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

PROTO_162:
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

PROTO_163:
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

PROTO_164:
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

PROTO_165:
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

PROTO_166:
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

PROTO_167:
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

PROTO_168:
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

PROTO_169:
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

PROTO_170:
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

PROTO_171:
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

PROTO_172:
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

PROTO_173:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getSecureSettingsAsync"]
        3 LOADK                            R2 K1 ["ProviderKeys"]
        4 CALL                             R1 1 1
        5 GETTABLE                         R2 R1 R0
        6 RETURN                           R2 1

PROTO_174:
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

PROTO_175:
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

PROTO_176:
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

PROTO_177:
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

PROTO_178:
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

PROTO_179:
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

PROTO_180:
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

PROTO_181:
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

PROTO_182:
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

PROTO_183:
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

PROTO_184:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getProcessEvent"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_185:
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

PROTO_186:
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

PROTO_187:
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

PROTO_188:
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

PROTO_189:
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

PROTO_190:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["spyOn"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["EventLogger"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_191:
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

PROTO_192:
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

PROTO_193:
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

PROTO_194:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setOptions"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_195:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_196:
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

PROTO_197:
        0 LOADK                            R3 K0 ["bg-action-soft-emphasis"]
        1 NAMECALL                         R1 R0 K1 ["HasTag"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_198:
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

PROTO_199:
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

PROTO_200:
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
       13 LOADK                            R2 K3 ["FFlagAssistantHarnessSplit"]
       14 GETTABLEKS                       R5 R0 K4 ["harnessSplit"]
       16 NOT                              R4 R5
       17 NOT                              R3 R4
       18 CALL                             R1 2 0
       19 GETUPVAL                         R1 1
       20 CALL                             R1 0 1
       21 GETUPVAL                         R2 2
       22 CALL                             R2 0 2
       23 GETUPVAL                         R4 3
       24 CALL                             R4 0 2
       25 GETUPVAL                         R6 4
       26 CALL                             R6 0 2
       27 GETUPVAL                         R8 5
       28 CALL                             R8 0 2
       29 GETUPVAL                         R10 6
       30 CALL                             R10 0 2
       31 GETUPVAL                         R12 7
       32 CALL                             R12 0 2
       33 GETUPVAL                         R14 8
       34 CALL                             R14 0 2
       35 GETUPVAL                         R16 9
       36 CALL                             R16 0 2
       37 GETUPVAL                         R18 10
       38 CALL                             R18 0 2
       39 GETUPVAL                         R20 11
       40 CALL                             R20 0 2
       41 GETUPVAL                         R22 12
       42 CALL                             R22 0 2
       43 GETUPVAL                         R24 13
       44 CALL                             R24 0 2
       45 GETUPVAL                         R26 14
       46 GETTABLEKS                       R26 R26 K5 ["createRef"]
       48 CALL                             R26 0 1
       49 DUPTABLE                         R27 K20 [{"SettingsContext", "ConversationProvider", "ThreadIdContext", "SessionIdContext", "WidgetVisibilityContext", "InputStateContext", "McpClientContext", "LLMPackageContext", "ModelQualityContext", "PopoutWidgetContext", "OptionsContext", "WindowInputContext", "LLMProviderSelectionContext", "ExternalServerContext"}]
       50 GETUPVAL                         R28 15
       51 MOVE                             R29 R1
       52 CALL                             R28 1 1
       53 SETTABLEKS                       R28 R27 K6 ["SettingsContext"]
       55 GETUPVAL                         R28 15
       56 MOVE                             R29 R2
       57 CALL                             R28 1 1
       58 SETTABLEKS                       R28 R27 K7 ["ConversationProvider"]
       60 GETUPVAL                         R28 15
       61 MOVE                             R29 R6
       62 CALL                             R28 1 1
       63 SETTABLEKS                       R28 R27 K8 ["ThreadIdContext"]
       65 GETUPVAL                         R28 15
       66 MOVE                             R29 R8
       67 CALL                             R28 1 1
       68 SETTABLEKS                       R28 R27 K9 ["SessionIdContext"]
       70 GETUPVAL                         R28 15
       71 MOVE                             R29 R10
       72 CALL                             R28 1 1
       73 SETTABLEKS                       R28 R27 K10 ["WidgetVisibilityContext"]
       75 GETUPVAL                         R28 15
       76 MOVE                             R29 R4
       77 CALL                             R28 1 1
       78 SETTABLEKS                       R28 R27 K11 ["InputStateContext"]
       80 GETUPVAL                         R28 15
       81 MOVE                             R29 R12
       82 CALL                             R28 1 1
       83 SETTABLEKS                       R28 R27 K12 ["McpClientContext"]
       85 GETUPVAL                         R28 15
       86 MOVE                             R29 R14
       87 CALL                             R28 1 1
       88 SETTABLEKS                       R28 R27 K13 ["LLMPackageContext"]
       90 GETUPVAL                         R28 15
       91 MOVE                             R29 R16
       92 CALL                             R28 1 1
       93 SETTABLEKS                       R28 R27 K14 ["ModelQualityContext"]
       95 GETUPVAL                         R28 15
       96 MOVE                             R29 R20
       97 CALL                             R28 1 1
       98 SETTABLEKS                       R28 R27 K15 ["PopoutWidgetContext"]
      100 GETUPVAL                         R28 15
      101 MOVE                             R29 R18
      102 CALL                             R28 1 1
      103 SETTABLEKS                       R28 R27 K16 ["OptionsContext"]
      105 GETUPVAL                         R28 15
      106 GETUPVAL                         R29 16
      107 GETTABLEKS                       R29 R29 K21 ["StandardProvider"]
      109 CALL                             R28 1 1
      110 SETTABLEKS                       R28 R27 K17 ["WindowInputContext"]
      112 GETUPVAL                         R28 15
      113 GETUPVAL                         R29 17
      114 GETTABLEKS                       R29 R29 K22 ["Provider"]
      116 CALL                             R28 1 1
      117 SETTABLEKS                       R28 R27 K18 ["LLMProviderSelectionContext"]
      119 GETUPVAL                         R28 15
      120 MOVE                             R29 R22
      121 CALL                             R28 1 1
      122 SETTABLEKS                       R28 R27 K19 ["ExternalServerContext"]
      124 GETUPVAL                         R28 18
      125 GETTABLEKS                       R28 R28 K23 ["join"]
      127 MOVE                             R29 R27
      128 GETTABLEKS                       R30 R0 K24 ["overrideProviders"]
      130 JUMPIF                           R30 ; [+2]
      131 NEWTABLE                         R30 0 0
      133 CALL                             R28 2 1
      134 NEWTABLE                         R29 0 0
      136 GETUPVAL                         R30 19
      137 MOVE                             R31 R29
      138 CALL                             R30 1 1
      139 GETTABLEKS                       R31 R0 K25 ["overrideEnvironment"]
      141 JUMPIFNOT                        R31 ; [+8]
      142 GETTABLEKS                       R31 R0 K25 ["overrideEnvironment"]
      144 LOADNIL                          R32
      145 LOADNIL                          R33
      146 FORGPREP                         R31
      147 SETTABLE                         R35 R30 R34
      148 FORGLOOP                         R31 2 ; [-2]
      150 LOADNIL                          R31
      151 GETTABLEKS                       R32 R0 K26 ["tools"]
      153 JUMPIFNOT                        R32 ; [+12]
      154 GETUPVAL                         R32 20
      155 GETTABLEKS                       R32 R32 K27 ["toolSetup"]
      157 GETTABLEKS                       R33 R0 K26 ["tools"]
      159 GETTABLEKS                       R34 R0 K28 ["editEnvironment"]
      161 MOVE                             R35 R30
      162 CALL                             R32 3 2
      163 MOVE                             R31 R32
      164 MOVE                             R30 R33
      165 JUMP                             ; [+8]
      166 GETTABLEKS                       R32 R0 K28 ["editEnvironment"]
      168 JUMPIFNOT                        R32 ; [+5]
      169 GETTABLEKS                       R32 R0 K28 ["editEnvironment"]
      171 MOVE                             R33 R30
      172 CALL                             R32 1 1
      173 MOVE                             R30 R32
      174 GETUPVAL                         R32 21
      175 GETTABLEKS                       R32 R32 K29 ["set"]
      177 MOVE                             R33 R30
      178 CALL                             R32 1 0
      179 GETUPVAL                         R32 22
      180 GETTABLEKS                       R32 R32 K30 ["create"]
      182 CALL                             R32 0 0
      183 GETUPVAL                         R32 23
      184 CALL                             R32 0 0
      185 GETTABLEKS                       R32 R0 K31 ["contentWidgets"]
      187 JUMPIFNOT                        R32 ; [+11]
      188 MOVE                             R33 R32
      189 LOADNIL                          R34
      190 LOADNIL                          R35
      191 FORGPREP                         R33
      192 GETUPVAL                         R38 24
      193 GETTABLEKS                       R38 R38 K32 ["add"]
      195 MOVE                             R39 R37
      196 CALL                             R38 1 0
      197 FORGLOOP                         R33 2 ; [-6]
      199 GETTABLEKS                       R33 R0 K33 ["toolWidgetMappings"]
      201 JUMPIFNOT                        R33 ; [+12]
      202 MOVE                             R34 R33
      203 LOADNIL                          R35
      204 LOADNIL                          R36
      205 FORGPREP                         R34
      206 GETUPVAL                         R39 25
      207 GETTABLEKS                       R39 R39 K32 ["add"]
      209 MOVE                             R40 R37
      210 MOVE                             R41 R38
      211 CALL                             R39 2 0
      212 FORGLOOP                         R34 2 ; [-7]
      214 NEWCLOSURE                       R34 P0
      215 CAPTURE                          VAL R29
      216 GETUPVAL                         R35 18
      217 GETTABLEKS                       R35 R35 K34 ["values"]
      219 MOVE                             R36 R28
      220 CALL                             R35 1 1
      221 GETTABLEKS                       R36 R0 K35 ["orderedOverrideProviders"]
      223 JUMPIFNOT                        R36 ; [+14]
      224 GETTABLEKS                       R36 R0 K35 ["orderedOverrideProviders"]
      226 LOADNIL                          R37
      227 LOADNIL                          R38
      228 FORGPREP                         R36
      229 FASTCALL2                        TABLE_INSERT R35 R40 ; [+5]
      231 MOVE                             R42 R35
      232 MOVE                             R43 R40
      233 GETIMPORT                        R41 K38 [table.insert]
      235 CALL                             R41 2 0
      236 FORGLOOP                         R36 2 ; [-8]
      238 GETUPVAL                         R36 26
      239 GETTABLEKS                       R36 R36 K39 ["FFlagPropertiesExposeContentView"]
      241 JUMPIFNOT                        R36 ; [+18]
      242 GETIMPORT                        R36 K41 [require]
      244 GETUPVAL                         R37 27
      245 GETTABLEKS                       R37 R37 K42 ["Components"]
      247 GETTABLEKS                       R37 R37 K43 ["Contexts"]
      249 GETTABLEKS                       R37 R37 K44 ["PropertiesContextProvider"]
      251 CALL                             R36 1 1
      252 MOVE                             R38 R35
      253 GETUPVAL                         R39 15
      254 MOVE                             R40 R36
      255 CALL                             R39 1 -1
      256 FASTCALL                         TABLE_INSERT ; [+2]
      257 GETIMPORT                        R37 K38 [table.insert]
      259 CALL                             R37 -1 0
      260 DUPCLOSURE                       R36 K45 [PROTO_16]
      261 CAPTURE                          UPVAL U28
      262 CAPTURE                          UPVAL U29
      263 LOADNIL                          R37
      264 NEWCLOSURE                       R38 P2
      265 CAPTURE                          UPVAL U30
      266 CAPTURE                          UPVAL U31
      267 CAPTURE                          REF R0
      268 CAPTURE                          UPVAL U32
      269 CAPTURE                          UPVAL U15
      270 CAPTURE                          UPVAL U33
      271 CAPTURE                          VAL R35
      272 CAPTURE                          UPVAL U28
      273 CAPTURE                          UPVAL U29
      274 CAPTURE                          REF R37
      275 DUPCLOSURE                       R39 K46 [PROTO_18]
      276 CAPTURE                          UPVAL U34
      277 NEWCLOSURE                       R40 P4
      278 CAPTURE                          UPVAL U35
      279 CAPTURE                          VAL R25
      280 NEWCLOSURE                       R41 P5
      281 CAPTURE                          VAL R26
      282 NEWCLOSURE                       R42 P6
      283 CAPTURE                          VAL R40
      284 NEWCLOSURE                       R43 P7
      285 CAPTURE                          UPVAL U36
      286 CAPTURE                          UPVAL U37
      287 CAPTURE                          VAL R25
      288 CAPTURE                          UPVAL U18
      289 CAPTURE                          UPVAL U35
      290 CAPTURE                          UPVAL U38
      291 NEWCLOSURE                       R44 P8
      292 CAPTURE                          REF R31
      293 CAPTURE                          VAL R43
      294 NEWCLOSURE                       R45 P9
      295 CAPTURE                          REF R37
      296 NEWCLOSURE                       R46 P10
      297 CAPTURE                          REF R37
      298 NEWCLOSURE                       R47 P11
      299 CAPTURE                          REF R37
      300 CAPTURE                          UPVAL U39
      301 NEWCLOSURE                       R48 P12
      302 CAPTURE                          REF R37
      303 CAPTURE                          UPVAL U39
      304 NEWCLOSURE                       R49 P13
      305 CAPTURE                          REF R37
      306 CAPTURE                          UPVAL U39
      307 NEWCLOSURE                       R50 P14
      308 CAPTURE                          REF R37
      309 CAPTURE                          UPVAL U39
      310 NEWCLOSURE                       R51 P15
      311 CAPTURE                          REF R37
      312 CAPTURE                          UPVAL U18
      313 CAPTURE                          UPVAL U39
      314 DUPCLOSURE                       R52 K47 [PROTO_36]
      315 DUPCLOSURE                       R53 K48 [PROTO_38]
      316 CAPTURE                          UPVAL U35
      317 CAPTURE                          UPVAL U34
      318 CAPTURE                          UPVAL U28
      319 CAPTURE                          UPVAL U29
      320 DUPCLOSURE                       R54 K49 [PROTO_39]
      321 CAPTURE                          UPVAL U34
      322 CAPTURE                          UPVAL U28
      323 CAPTURE                          UPVAL U29
      324 DUPCLOSURE                       R55 K50 [PROTO_40]
      325 CAPTURE                          UPVAL U34
      326 CAPTURE                          UPVAL U28
      327 CAPTURE                          UPVAL U29
      328 DUPCLOSURE                       R56 K51 [PROTO_41]
      329 CAPTURE                          UPVAL U30
      330 CAPTURE                          UPVAL U28
      331 CAPTURE                          UPVAL U29
      332 NEWCLOSURE                       R57 P21
      333 CAPTURE                          UPVAL U28
      334 CAPTURE                          UPVAL U29
      335 CAPTURE                          UPVAL U40
      336 CAPTURE                          REF R37
      337 CAPTURE                          UPVAL U39
      338 NEWCLOSURE                       R58 P22
      339 CAPTURE                          UPVAL U28
      340 CAPTURE                          UPVAL U29
      341 CAPTURE                          UPVAL U40
      342 CAPTURE                          REF R37
      343 CAPTURE                          UPVAL U39
      344 NEWCLOSURE                       R59 P23
      345 CAPTURE                          UPVAL U39
      346 CAPTURE                          REF R37
      347 CAPTURE                          UPVAL U41
      348 NEWCLOSURE                       R60 P24
      349 CAPTURE                          UPVAL U39
      350 CAPTURE                          REF R37
      351 CAPTURE                          UPVAL U41
      352 NEWCLOSURE                       R61 P25
      353 CAPTURE                          UPVAL U39
      354 CAPTURE                          REF R37
      355 CAPTURE                          UPVAL U18
      356 CAPTURE                          UPVAL U41
      357 NEWCLOSURE                       R62 P26
      358 CAPTURE                          UPVAL U39
      359 CAPTURE                          REF R37
      360 CAPTURE                          UPVAL U41
      361 CAPTURE                          UPVAL U40
      362 NEWCLOSURE                       R63 P27
      363 CAPTURE                          UPVAL U41
      364 CAPTURE                          REF R37
      365 NEWCLOSURE                       R64 P28
      366 CAPTURE                          REF R37
      367 CAPTURE                          UPVAL U18
      368 CAPTURE                          UPVAL U39
      369 NEWCLOSURE                       R65 P29
      370 CAPTURE                          UPVAL U40
      371 CAPTURE                          REF R37
      372 CAPTURE                          UPVAL U39
      373 NEWCLOSURE                       R66 P30
      374 CAPTURE                          UPVAL U40
      375 CAPTURE                          REF R37
      376 CAPTURE                          UPVAL U39
      377 NEWCLOSURE                       R67 P31
      378 CAPTURE                          UPVAL U35
      379 CAPTURE                          VAL R17
      380 NEWCLOSURE                       R68 P32
      381 CAPTURE                          VAL R9
      382 CAPTURE                          UPVAL U30
      383 CAPTURE                          UPVAL U28
      384 CAPTURE                          UPVAL U29
      385 NEWCLOSURE                       R69 P33
      386 CAPTURE                          VAL R11
      387 CAPTURE                          UPVAL U30
      388 CAPTURE                          UPVAL U28
      389 CAPTURE                          UPVAL U29
      390 NEWCLOSURE                       R70 P34
      391 CAPTURE                          UPVAL U28
      392 CAPTURE                          UPVAL U29
      393 CAPTURE                          UPVAL U40
      394 CAPTURE                          REF R37
      395 CAPTURE                          UPVAL U39
      396 CAPTURE                          UPVAL U35
      397 NEWCLOSURE                       R71 P35
      398 CAPTURE                          UPVAL U34
      399 CAPTURE                          UPVAL U28
      400 CAPTURE                          UPVAL U29
      401 CAPTURE                          UPVAL U40
      402 CAPTURE                          REF R37
      403 CAPTURE                          UPVAL U39
      404 NEWCLOSURE                       R72 P36
      405 CAPTURE                          UPVAL U28
      406 CAPTURE                          UPVAL U29
      407 CAPTURE                          UPVAL U40
      408 CAPTURE                          REF R37
      409 CAPTURE                          UPVAL U39
      410 CAPTURE                          UPVAL U35
      411 NEWCLOSURE                       R73 P37
      412 CAPTURE                          UPVAL U28
      413 CAPTURE                          UPVAL U29
      414 CAPTURE                          UPVAL U40
      415 CAPTURE                          REF R37
      416 CAPTURE                          UPVAL U39
      417 DUPCLOSURE                       R74 K52 [PROTO_68]
      418 CAPTURE                          UPVAL U30
      419 NEWCLOSURE                       R75 P39
      420 CAPTURE                          UPVAL U40
      421 CAPTURE                          REF R37
      422 CAPTURE                          UPVAL U39
      423 CAPTURE                          UPVAL U35
      424 CAPTURE                          UPVAL U34
      425 CAPTURE                          UPVAL U28
      426 CAPTURE                          UPVAL U29
      427 NEWCLOSURE                       R76 P40
      428 CAPTURE                          UPVAL U40
      429 CAPTURE                          REF R37
      430 CAPTURE                          UPVAL U39
      431 CAPTURE                          UPVAL U35
      432 CAPTURE                          UPVAL U34
      433 CAPTURE                          UPVAL U28
      434 CAPTURE                          UPVAL U29
      435 DUPCLOSURE                       R77 K53 [PROTO_71]
      436 CAPTURE                          UPVAL U34
      437 CAPTURE                          UPVAL U28
      438 CAPTURE                          UPVAL U29
      439 DUPCLOSURE                       R78 K54 [PROTO_73]
      440 CAPTURE                          UPVAL U35
      441 CAPTURE                          UPVAL U34
      442 CAPTURE                          UPVAL U28
      443 CAPTURE                          UPVAL U29
      444 NEWCLOSURE                       R79 P43
      445 CAPTURE                          VAL R77
      446 CAPTURE                          UPVAL U28
      447 CAPTURE                          UPVAL U29
      448 CAPTURE                          UPVAL U40
      449 CAPTURE                          REF R37
      450 CAPTURE                          UPVAL U39
      451 NEWCLOSURE                       R80 P44
      452 CAPTURE                          VAL R78
      453 CAPTURE                          UPVAL U28
      454 CAPTURE                          UPVAL U29
      455 CAPTURE                          UPVAL U40
      456 CAPTURE                          REF R37
      457 CAPTURE                          UPVAL U39
      458 CAPTURE                          VAL R77
      459 NEWCLOSURE                       R81 P45
      460 CAPTURE                          UPVAL U28
      461 CAPTURE                          UPVAL U29
      462 CAPTURE                          UPVAL U40
      463 CAPTURE                          REF R37
      464 CAPTURE                          UPVAL U39
      465 CAPTURE                          UPVAL U34
      466 DUPCLOSURE                       R82 K55 [PROTO_77]
      467 CAPTURE                          UPVAL U34
      468 CAPTURE                          UPVAL U28
      469 CAPTURE                          UPVAL U29
      470 NEWCLOSURE                       R83 P47
      471 CAPTURE                          UPVAL U28
      472 CAPTURE                          UPVAL U29
      473 CAPTURE                          UPVAL U40
      474 CAPTURE                          REF R37
      475 CAPTURE                          UPVAL U39
      476 NEWCLOSURE                       R84 P48
      477 CAPTURE                          UPVAL U42
      478 CAPTURE                          UPVAL U43
      479 CAPTURE                          UPVAL U28
      480 CAPTURE                          UPVAL U29
      481 CAPTURE                          UPVAL U40
      482 CAPTURE                          REF R37
      483 CAPTURE                          UPVAL U39
      484 NEWCLOSURE                       R85 P49
      485 CAPTURE                          VAL R63
      486 CAPTURE                          UPVAL U39
      487 NEWCLOSURE                       R86 P50
      488 CAPTURE                          VAL R63
      489 NEWCLOSURE                       R87 P51
      490 CAPTURE                          UPVAL U28
      491 CAPTURE                          UPVAL U29
      492 CAPTURE                          UPVAL U40
      493 CAPTURE                          REF R37
      494 CAPTURE                          UPVAL U39
      495 DUPCLOSURE                       R88 K56 [PROTO_84]
      496 CAPTURE                          UPVAL U28
      497 CAPTURE                          UPVAL U29
      498 NEWCLOSURE                       R89 P53
      499 CAPTURE                          UPVAL U40
      500 CAPTURE                          REF R37
      501 CAPTURE                          UPVAL U39
      502 CAPTURE                          UPVAL U28
      503 CAPTURE                          UPVAL U29
      504 CAPTURE                          UPVAL U35
      505 CAPTURE                          UPVAL U34
      506 NEWCLOSURE                       R90 P54
      507 CAPTURE                          UPVAL U40
      508 CAPTURE                          REF R37
      509 CAPTURE                          UPVAL U39
      510 CAPTURE                          UPVAL U28
      511 CAPTURE                          UPVAL U29
      512 CAPTURE                          UPVAL U35
      513 CAPTURE                          UPVAL U34
      514 NEWCLOSURE                       R91 P55
      515 CAPTURE                          UPVAL U40
      516 CAPTURE                          REF R37
      517 CAPTURE                          UPVAL U39
      518 CAPTURE                          UPVAL U28
      519 CAPTURE                          UPVAL U29
      520 CAPTURE                          UPVAL U35
      521 CAPTURE                          UPVAL U34
      522 NEWCLOSURE                       R92 P56
      523 CAPTURE                          UPVAL U40
      524 CAPTURE                          REF R37
      525 CAPTURE                          UPVAL U39
      526 CAPTURE                          UPVAL U28
      527 CAPTURE                          UPVAL U29
      528 CAPTURE                          UPVAL U35
      529 CAPTURE                          UPVAL U34
      530 NEWCLOSURE                       R93 P57
      531 CAPTURE                          UPVAL U40
      532 CAPTURE                          REF R37
      533 CAPTURE                          UPVAL U39
      534 CAPTURE                          UPVAL U28
      535 CAPTURE                          UPVAL U29
      536 CAPTURE                          UPVAL U35
      537 CAPTURE                          UPVAL U34
      538 NEWCLOSURE                       R94 P58
      539 CAPTURE                          UPVAL U40
      540 CAPTURE                          REF R37
      541 CAPTURE                          UPVAL U39
      542 CAPTURE                          UPVAL U28
      543 CAPTURE                          UPVAL U29
      544 CAPTURE                          UPVAL U35
      545 CAPTURE                          UPVAL U34
      546 NEWCLOSURE                       R95 P59
      547 CAPTURE                          UPVAL U40
      548 CAPTURE                          REF R37
      549 CAPTURE                          UPVAL U39
      550 NEWCLOSURE                       R96 P60
      551 CAPTURE                          UPVAL U40
      552 CAPTURE                          REF R37
      553 CAPTURE                          UPVAL U39
      554 CAPTURE                          UPVAL U28
      555 CAPTURE                          UPVAL U29
      556 CAPTURE                          UPVAL U35
      557 CAPTURE                          UPVAL U34
      558 DUPCLOSURE                       R97 K57 [PROTO_94]
      559 CAPTURE                          UPVAL U36
      560 CAPTURE                          UPVAL U31
      561 NEWCLOSURE                       R98 P62
      562 CAPTURE                          UPVAL U40
      563 CAPTURE                          REF R37
      564 CAPTURE                          UPVAL U39
      565 DUPCLOSURE                       R99 K58 [PROTO_96]
      566 DUPCLOSURE                       R100 K59 [PROTO_97]
      567 NEWCLOSURE                       R101 P65
      568 CAPTURE                          UPVAL U40
      569 CAPTURE                          REF R37
      570 CAPTURE                          UPVAL U39
      571 CAPTURE                          VAL R100
      572 DUPCLOSURE                       R102 K60 [PROTO_99]
      573 CAPTURE                          VAL R99
      574 CAPTURE                          VAL R100
      575 CAPTURE                          UPVAL U40
      576 CAPTURE                          UPVAL U28
      577 CAPTURE                          UPVAL U29
      578 CAPTURE                          UPVAL U35
      579 CAPTURE                          UPVAL U34
      580 NEWCLOSURE                       R103 P67
      581 CAPTURE                          UPVAL U40
      582 CAPTURE                          REF R37
      583 CAPTURE                          UPVAL U39
      584 CAPTURE                          UPVAL U28
      585 CAPTURE                          UPVAL U29
      586 CAPTURE                          UPVAL U35
      587 CAPTURE                          UPVAL U34
      588 NEWCLOSURE                       R104 P68
      589 CAPTURE                          UPVAL U40
      590 CAPTURE                          REF R37
      591 CAPTURE                          UPVAL U39
      592 CAPTURE                          UPVAL U28
      593 CAPTURE                          UPVAL U29
      594 CAPTURE                          UPVAL U35
      595 CAPTURE                          UPVAL U34
      596 NEWCLOSURE                       R105 P69
      597 CAPTURE                          UPVAL U40
      598 CAPTURE                          REF R37
      599 CAPTURE                          UPVAL U39
      600 CAPTURE                          UPVAL U28
      601 CAPTURE                          UPVAL U29
      602 CAPTURE                          UPVAL U35
      603 CAPTURE                          UPVAL U34
      604 NEWCLOSURE                       R106 P70
      605 CAPTURE                          UPVAL U40
      606 CAPTURE                          REF R37
      607 CAPTURE                          UPVAL U39
      608 CAPTURE                          UPVAL U28
      609 CAPTURE                          UPVAL U29
      610 CAPTURE                          UPVAL U35
      611 CAPTURE                          UPVAL U34
      612 NEWCLOSURE                       R107 P71
      613 CAPTURE                          UPVAL U40
      614 CAPTURE                          REF R37
      615 CAPTURE                          UPVAL U39
      616 NEWCLOSURE                       R108 P72
      617 CAPTURE                          VAL R51
      618 CAPTURE                          UPVAL U44
      619 CAPTURE                          UPVAL U28
      620 CAPTURE                          UPVAL U29
      621 CAPTURE                          UPVAL U35
      622 CAPTURE                          UPVAL U34
      623 NEWCLOSURE                       R109 P73
      624 CAPTURE                          VAL R51
      625 CAPTURE                          UPVAL U44
      626 CAPTURE                          UPVAL U28
      627 CAPTURE                          UPVAL U29
      628 CAPTURE                          UPVAL U35
      629 CAPTURE                          UPVAL U34
      630 NEWCLOSURE                       R110 P74
      631 CAPTURE                          VAL R51
      632 CAPTURE                          UPVAL U44
      633 CAPTURE                          UPVAL U28
      634 CAPTURE                          UPVAL U29
      635 CAPTURE                          UPVAL U35
      636 CAPTURE                          UPVAL U34
      637 NEWCLOSURE                       R111 P75
      638 CAPTURE                          VAL R51
      639 CAPTURE                          UPVAL U44
      640 CAPTURE                          UPVAL U28
      641 CAPTURE                          UPVAL U29
      642 CAPTURE                          UPVAL U35
      643 CAPTURE                          UPVAL U34
      644 NEWCLOSURE                       R112 P76
      645 CAPTURE                          VAL R51
      646 CAPTURE                          UPVAL U44
      647 NEWCLOSURE                       R113 P77
      648 CAPTURE                          VAL R51
      649 CAPTURE                          UPVAL U44
      650 NEWCLOSURE                       R114 P78
      651 CAPTURE                          VAL R3
      652 NEWCLOSURE                       R115 P79
      653 CAPTURE                          UPVAL U35
      654 CAPTURE                          VAL R3
      655 CAPTURE                          UPVAL U28
      656 CAPTURE                          UPVAL U29
      657 NEWCLOSURE                       R116 P80
      658 CAPTURE                          VAL R7
      659 CAPTURE                          UPVAL U35
      660 CAPTURE                          UPVAL U28
      661 CAPTURE                          UPVAL U29
      662 NEWCLOSURE                       R117 P81
      663 CAPTURE                          UPVAL U35
      664 CAPTURE                          VAL R3
      665 CAPTURE                          UPVAL U28
      666 CAPTURE                          UPVAL U29
      667 CAPTURE                          VAL R7
      668 NEWCLOSURE                       R118 P82
      669 CAPTURE                          UPVAL U40
      670 CAPTURE                          REF R37
      671 CAPTURE                          UPVAL U39
      672 CAPTURE                          UPVAL U35
      673 CAPTURE                          UPVAL U34
      674 CAPTURE                          UPVAL U28
      675 CAPTURE                          UPVAL U29
      676 NEWCLOSURE                       R119 P83
      677 CAPTURE                          UPVAL U40
      678 CAPTURE                          REF R37
      679 CAPTURE                          UPVAL U39
      680 NEWCLOSURE                       R120 P84
      681 CAPTURE                          UPVAL U40
      682 CAPTURE                          REF R37
      683 CAPTURE                          UPVAL U39
      684 CAPTURE                          UPVAL U35
      685 CAPTURE                          UPVAL U34
      686 CAPTURE                          UPVAL U28
      687 CAPTURE                          UPVAL U29
      688 CAPTURE                          UPVAL U45
      689 CAPTURE                          VAL R64
      690 NEWCLOSURE                       R121 P85
      691 CAPTURE                          VAL R13
      692 NEWCLOSURE                       R122 P86
      693 CAPTURE                          VAL R13
      694 NEWCLOSURE                       R123 P87
      695 CAPTURE                          VAL R13
      696 NEWCLOSURE                       R124 P88
      697 CAPTURE                          VAL R13
      698 NEWCLOSURE                       R125 P89
      699 CAPTURE                          VAL R13
      700 NEWCLOSURE                       R126 P90
      701 CAPTURE                          VAL R13
      702 NEWCLOSURE                       R127 P91
      703 CAPTURE                          VAL R15
      704 NEWCLOSURE                       R128 P92
      705 CAPTURE                          VAL R15
      706 NEWCLOSURE                       R129 P93
      707 CAPTURE                          UPVAL U35
      708 CAPTURE                          VAL R5
      709 CAPTURE                          UPVAL U46
      710 CAPTURE                          UPVAL U28
      711 CAPTURE                          UPVAL U29
      712 CAPTURE                          UPVAL U42
      713 CAPTURE                          VAL R61
      714 NEWCLOSURE                       R130 P94
      715 CAPTURE                          UPVAL U35
      716 CAPTURE                          VAL R5
      717 NEWCLOSURE                       R131 P95
      718 CAPTURE                          UPVAL U40
      719 CAPTURE                          REF R37
      720 CAPTURE                          UPVAL U39
      721 NEWCLOSURE                       R132 P96
      722 CAPTURE                          UPVAL U40
      723 CAPTURE                          REF R37
      724 CAPTURE                          UPVAL U39
      725 CAPTURE                          UPVAL U28
      726 CAPTURE                          UPVAL U29
      727 CAPTURE                          UPVAL U35
      728 CAPTURE                          UPVAL U34
      729 NEWCLOSURE                       R133 P97
      730 CAPTURE                          REF R30
      731 CAPTURE                          UPVAL U38
      732 CAPTURE                          UPVAL U47
      733 NEWCLOSURE                       R134 P98
      734 CAPTURE                          UPVAL U40
      735 CAPTURE                          REF R37
      736 CAPTURE                          UPVAL U39
      737 NEWCLOSURE                       R135 P99
      738 CAPTURE                          UPVAL U40
      739 CAPTURE                          REF R37
      740 CAPTURE                          UPVAL U39
      741 CAPTURE                          UPVAL U38
      742 NEWCLOSURE                       R136 P100
      743 CAPTURE                          UPVAL U40
      744 CAPTURE                          REF R37
      745 CAPTURE                          UPVAL U39
      746 CAPTURE                          UPVAL U28
      747 CAPTURE                          UPVAL U29
      748 CAPTURE                          UPVAL U35
      749 CAPTURE                          UPVAL U34
      750 NEWCLOSURE                       R137 P101
      751 CAPTURE                          UPVAL U40
      752 CAPTURE                          REF R37
      753 CAPTURE                          UPVAL U39
      754 NEWCLOSURE                       R138 P102
      755 CAPTURE                          UPVAL U40
      756 CAPTURE                          REF R37
      757 CAPTURE                          UPVAL U39
      758 NEWCLOSURE                       R139 P103
      759 CAPTURE                          UPVAL U40
      760 CAPTURE                          REF R37
      761 CAPTURE                          UPVAL U39
      762 DUPCLOSURE                       R140 K61 [PROTO_146]
      763 CAPTURE                          UPVAL U41
      764 CAPTURE                          UPVAL U40
      765 NEWCLOSURE                       R141 P105
      766 CAPTURE                          UPVAL U40
      767 CAPTURE                          REF R37
      768 CAPTURE                          UPVAL U39
      769 CAPTURE                          UPVAL U35
      770 CAPTURE                          UPVAL U34
      771 CAPTURE                          UPVAL U28
      772 CAPTURE                          UPVAL U29
      773 NEWCLOSURE                       R142 P106
      774 CAPTURE                          UPVAL U41
      775 CAPTURE                          REF R37
      776 CAPTURE                          UPVAL U40
      777 NEWCLOSURE                       R143 P107
      778 CAPTURE                          UPVAL U41
      779 CAPTURE                          REF R37
      780 CAPTURE                          UPVAL U40
      781 NEWCLOSURE                       R144 P108
      782 CAPTURE                          UPVAL U41
      783 CAPTURE                          REF R37
      784 CAPTURE                          UPVAL U40
      785 NEWCLOSURE                       R145 P109
      786 CAPTURE                          UPVAL U40
      787 CAPTURE                          REF R37
      788 CAPTURE                          UPVAL U39
      789 NEWCLOSURE                       R146 P110
      790 CAPTURE                          UPVAL U40
      791 CAPTURE                          REF R37
      792 CAPTURE                          UPVAL U39
      793 NEWCLOSURE                       R147 P111
      794 CAPTURE                          UPVAL U40
      795 CAPTURE                          REF R37
      796 CAPTURE                          UPVAL U39
      797 NEWCLOSURE                       R148 P112
      798 CAPTURE                          UPVAL U40
      799 CAPTURE                          REF R37
      800 CAPTURE                          UPVAL U39
      801 NEWCLOSURE                       R149 P113
      802 CAPTURE                          UPVAL U40
      803 CAPTURE                          REF R37
      804 CAPTURE                          UPVAL U39
      805 DUPCLOSURE                       R150 K62 [PROTO_156]
      806 CAPTURE                          UPVAL U35
      807 CAPTURE                          UPVAL U34
      808 CAPTURE                          UPVAL U28
      809 CAPTURE                          UPVAL U29
      810 NEWCLOSURE                       R151 P115
      811 CAPTURE                          UPVAL U40
      812 CAPTURE                          REF R37
      813 CAPTURE                          UPVAL U39
      814 CAPTURE                          UPVAL U35
      815 CAPTURE                          UPVAL U34
      816 CAPTURE                          UPVAL U28
      817 CAPTURE                          UPVAL U29
      818 NEWCLOSURE                       R152 P116
      819 CAPTURE                          UPVAL U40
      820 CAPTURE                          REF R37
      821 CAPTURE                          UPVAL U39
      822 CAPTURE                          UPVAL U35
      823 CAPTURE                          UPVAL U34
      824 CAPTURE                          UPVAL U28
      825 CAPTURE                          UPVAL U29
      826 NEWCLOSURE                       R153 P117
      827 CAPTURE                          UPVAL U40
      828 CAPTURE                          REF R37
      829 CAPTURE                          UPVAL U39
      830 NEWCLOSURE                       R154 P118
      831 CAPTURE                          UPVAL U40
      832 CAPTURE                          REF R37
      833 CAPTURE                          UPVAL U39
      834 NEWCLOSURE                       R155 P119
      835 CAPTURE                          UPVAL U40
      836 CAPTURE                          REF R37
      837 CAPTURE                          UPVAL U39
      838 NEWCLOSURE                       R156 P120
      839 CAPTURE                          UPVAL U40
      840 CAPTURE                          REF R37
      841 CAPTURE                          UPVAL U39
      842 NEWCLOSURE                       R157 P121
      843 CAPTURE                          UPVAL U40
      844 CAPTURE                          REF R37
      845 CAPTURE                          UPVAL U39
      846 NEWCLOSURE                       R158 P122
      847 CAPTURE                          UPVAL U40
      848 CAPTURE                          REF R37
      849 CAPTURE                          UPVAL U39
      850 NEWCLOSURE                       R159 P123
      851 CAPTURE                          UPVAL U40
      852 CAPTURE                          REF R37
      853 CAPTURE                          UPVAL U39
      854 CAPTURE                          UPVAL U35
      855 CAPTURE                          UPVAL U34
      856 CAPTURE                          UPVAL U28
      857 CAPTURE                          UPVAL U29
      858 NEWCLOSURE                       R160 P124
      859 CAPTURE                          UPVAL U40
      860 CAPTURE                          REF R37
      861 CAPTURE                          UPVAL U39
      862 CAPTURE                          UPVAL U28
      863 CAPTURE                          UPVAL U29
      864 CAPTURE                          UPVAL U35
      865 CAPTURE                          UPVAL U34
      866 NEWCLOSURE                       R161 P125
      867 CAPTURE                          UPVAL U40
      868 CAPTURE                          REF R37
      869 CAPTURE                          UPVAL U39
      870 CAPTURE                          UPVAL U28
      871 CAPTURE                          UPVAL U29
      872 CAPTURE                          UPVAL U35
      873 CAPTURE                          UPVAL U34
      874 NEWCLOSURE                       R162 P126
      875 CAPTURE                          UPVAL U40
      876 CAPTURE                          REF R37
      877 CAPTURE                          UPVAL U39
      878 CAPTURE                          UPVAL U28
      879 CAPTURE                          UPVAL U29
      880 CAPTURE                          UPVAL U35
      881 CAPTURE                          UPVAL U34
      882 NEWCLOSURE                       R163 P127
      883 CAPTURE                          UPVAL U40
      884 CAPTURE                          REF R37
      885 CAPTURE                          UPVAL U39
      886 NEWCLOSURE                       R164 P128
      887 CAPTURE                          UPVAL U40
      888 CAPTURE                          REF R37
      889 CAPTURE                          UPVAL U39
      890 CAPTURE                          UPVAL U28
      891 CAPTURE                          UPVAL U29
      892 CAPTURE                          UPVAL U35
      893 CAPTURE                          UPVAL U34
      894 NEWCLOSURE                       R165 P129
      895 CAPTURE                          UPVAL U40
      896 CAPTURE                          REF R37
      897 CAPTURE                          UPVAL U39
      898 NEWCLOSURE                       R166 P130
      899 CAPTURE                          REF R30
      900 NEWCLOSURE                       R167 P131
      901 CAPTURE                          UPVAL U40
      902 CAPTURE                          REF R37
      903 CAPTURE                          UPVAL U39
      904 CAPTURE                          UPVAL U35
      905 CAPTURE                          UPVAL U34
      906 CAPTURE                          UPVAL U28
      907 CAPTURE                          UPVAL U29
      908 DUPCLOSURE                       R168 K63 [PROTO_175]
      909 CAPTURE                          UPVAL U39
      910 CAPTURE                          UPVAL U41
      911 CAPTURE                          UPVAL U40
      912 NEWCLOSURE                       R169 P133
      913 CAPTURE                          UPVAL U40
      914 CAPTURE                          REF R37
      915 CAPTURE                          UPVAL U39
      916 CAPTURE                          UPVAL U35
      917 CAPTURE                          UPVAL U34
      918 CAPTURE                          UPVAL U28
      919 CAPTURE                          UPVAL U29
      920 NEWCLOSURE                       R170 P134
      921 CAPTURE                          UPVAL U40
      922 CAPTURE                          UPVAL U41
      923 CAPTURE                          REF R37
      924 CAPTURE                          UPVAL U48
      925 NEWCLOSURE                       R171 P135
      926 CAPTURE                          UPVAL U40
      927 CAPTURE                          REF R37
      928 CAPTURE                          UPVAL U39
      929 CAPTURE                          UPVAL U28
      930 CAPTURE                          UPVAL U29
      931 CAPTURE                          UPVAL U35
      932 CAPTURE                          UPVAL U34
      933 NEWCLOSURE                       R172 P136
      934 CAPTURE                          UPVAL U40
      935 CAPTURE                          REF R37
      936 CAPTURE                          UPVAL U39
      937 CAPTURE                          UPVAL U28
      938 CAPTURE                          UPVAL U29
      939 CAPTURE                          UPVAL U35
      940 CAPTURE                          UPVAL U34
      941 NEWCLOSURE                       R173 P137
      942 CAPTURE                          UPVAL U40
      943 CAPTURE                          REF R37
      944 CAPTURE                          UPVAL U39
      945 CAPTURE                          UPVAL U28
      946 CAPTURE                          UPVAL U29
      947 CAPTURE                          UPVAL U35
      948 CAPTURE                          UPVAL U34
      949 NEWCLOSURE                       R174 P138
      950 CAPTURE                          UPVAL U40
      951 CAPTURE                          REF R37
      952 CAPTURE                          UPVAL U39
      953 CAPTURE                          UPVAL U28
      954 CAPTURE                          UPVAL U29
      955 CAPTURE                          UPVAL U35
      956 CAPTURE                          UPVAL U34
      957 NEWCLOSURE                       R175 P139
      958 CAPTURE                          UPVAL U40
      959 CAPTURE                          REF R37
      960 CAPTURE                          UPVAL U39
      961 NEWCLOSURE                       R176 P140
      962 CAPTURE                          UPVAL U40
      963 CAPTURE                          REF R37
      964 CAPTURE                          UPVAL U39
      965 CAPTURE                          UPVAL U28
      966 CAPTURE                          UPVAL U29
      967 CAPTURE                          UPVAL U35
      968 CAPTURE                          UPVAL U34
      969 NEWCLOSURE                       R177 P141
      970 CAPTURE                          UPVAL U35
      971 CAPTURE                          VAL R15
      972 CAPTURE                          UPVAL U28
      973 CAPTURE                          UPVAL U29
      974 NEWCLOSURE                       R178 P142
      975 CAPTURE                          UPVAL U35
      976 CAPTURE                          VAL R15
      977 CAPTURE                          UPVAL U28
      978 CAPTURE                          UPVAL U29
      979 NEWCLOSURE                       R179 P143
      980 CAPTURE                          UPVAL U35
      981 CAPTURE                          VAL R15
      982 CAPTURE                          UPVAL U28
      983 CAPTURE                          UPVAL U29
      984 NEWCLOSURE                       R180 P144
      985 CAPTURE                          UPVAL U35
      986 CAPTURE                          VAL R15
      987 CAPTURE                          UPVAL U28
      988 CAPTURE                          UPVAL U29
      989 NEWCLOSURE                       R181 P145
      990 CAPTURE                          UPVAL U35
      991 CAPTURE                          VAL R15
      992 CAPTURE                          UPVAL U28
      993 CAPTURE                          UPVAL U29
      994 NEWCLOSURE                       R182 P146
      995 CAPTURE                          UPVAL U36
      996 CAPTURE                          REF R30
      997 DUPCLOSURE                       R183 K64 [PROTO_191]
      998 CAPTURE                          UPVAL U39
      999 CAPTURE                          UPVAL U35
     1000 CAPTURE                          UPVAL U34
     1001 CAPTURE                          UPVAL U28
     1002 CAPTURE                          UPVAL U29
     1003 NEWCLOSURE                       R184 P148
     1004 CAPTURE                          UPVAL U40
     1005 CAPTURE                          REF R37
     1006 CAPTURE                          UPVAL U39
     1007 NEWCLOSURE                       R185 P149
     1008 CAPTURE                          UPVAL U40
     1009 CAPTURE                          REF R37
     1010 CAPTURE                          UPVAL U39
     1011 NEWCLOSURE                       R186 P150
     1012 CAPTURE                          UPVAL U35
     1013 CAPTURE                          VAL R19
     1014 DUPCLOSURE                       R187 K65 [PROTO_196]
     1015 CAPTURE                          UPVAL U39
     1016 CAPTURE                          UPVAL U41
     1017 CAPTURE                          UPVAL U40
     1018 CAPTURE                          UPVAL U35
     1019 CAPTURE                          UPVAL U34
     1020 CAPTURE                          UPVAL U28
     1021 CAPTURE                          UPVAL U29
     1022 DUPCLOSURE                       R188 K66 [PROTO_197]
     1023 NEWCLOSURE                       R189 P153
     1024 CAPTURE                          UPVAL U40
     1025 CAPTURE                          REF R37
     1026 CAPTURE                          UPVAL U39
     1027 MOVE                             R190 R38
     1028 GETUPVAL                         R191 15
     1029 LOADK                            R192 K67 ["Frame"]
     1030 DUPTABLE                         R193 K69 [{"Size"}]
     1031 GETIMPORT                        R194 K72 [UDim2.fromScale]
     1033 LOADN                            R195 1
     1034 LOADN                            R196 1
     1035 CALL                             R194 2 1
     1036 SETTABLEKS                       R194 R193 K68 ["Size"]
     1038 DUPTABLE                         R194 K76 [{"UIListLayout", "MainView", "TestHooks"}]
     1039 GETUPVAL                         R195 15
     1040 LOADK                            R196 K73 ["UIListLayout"]
     1041 DUPTABLE                         R197 K78 [{"FillDirection"}]
     1042 GETIMPORT                        R198 K81 [Enum.FillDirection.Vertical]
     1044 SETTABLEKS                       R198 R197 K77 ["FillDirection"]
     1046 CALL                             R195 2 1
     1047 SETTABLEKS                       R195 R194 K73 ["UIListLayout"]
     1049 GETUPVAL                         R195 15
     1050 GETUPVAL                         R196 49
     1051 DUPTABLE                         R197 K83 [{"externalInterfaceRef"}]
     1052 SETTABLEKS                       R26 R197 K82 ["externalInterfaceRef"]
     1054 CALL                             R195 2 1
     1055 SETTABLEKS                       R195 R194 K74 ["MainView"]
     1057 MOVE                             R195 R24
     1058 CALL                             R195 0 1
     1059 SETTABLEKS                       R195 R194 K75 ["TestHooks"]
     1061 CALL                             R191 3 -1
     1062 CALL                             R190 -1 0
     1063 NEWTABLE                         R190 256 0
     1065 SETTABLEKS                       R38 R190 K84 ["render"]
     1067 SETTABLEKS                       R31 R190 K26 ["tools"]
     1069 SETTABLEKS                       R43 R190 K85 ["invokeTool"]
     1071 SETTABLEKS                       R44 R190 K86 ["callTool"]
     1073 SETTABLEKS                       R39 R190 K87 ["typeText"]
     1075 SETTABLEKS                       R40 R190 K88 ["getCurrentConversationThread"]
     1077 SETTABLEKS                       R41 R190 K89 ["getExternalInterface"]
     1079 SETTABLEKS                       R45 R190 K90 ["getContainer"]
     1081 SETTABLEKS                       R46 R190 K91 ["getGuiByTitle"]
     1083 SETTABLEKS                       R36 R190 K92 ["waitForTagApplication"]
     1085 SETTABLEKS                       R47 R190 K93 ["queryByTestId"]
     1087 SETTABLEKS                       R48 R190 K94 ["getByTestId"]
     1089 SETTABLEKS                       R49 R190 K95 ["queryAllByTestId"]
     1091 SETTABLEKS                       R50 R190 K96 ["getAllByTestId"]
     1093 SETTABLEKS                       R51 R190 K97 ["getByMessage"]
     1095 SETTABLEKS                       R53 R190 K98 ["clickButton"]
     1097 SETTABLEKS                       R54 R190 K99 ["mouseEnter"]
     1099 SETTABLEKS                       R55 R190 K100 ["mouseLeave"]
     1101 SETTABLEKS                       R56 R190 K101 ["act"]
     1103 SETTABLEKS                       R58 R190 K102 ["getTextBox"]
     1105 SETTABLEKS                       R59 R190 K103 ["getMessageScrollArea"]
     1107 SETTABLEKS                       R60 R190 K104 ["getContainingMessageWidget"]
     1109 SETTABLEKS                       R61 R190 K105 ["getContainingContentWidget"]
     1111 SETTABLEKS                       R62 R190 K106 ["getMessageActionsWidget"]
     1113 SETTABLEKS                       R64 R190 K107 ["getTextObjectWithMessage"]
     1115 SETTABLEKS                       R34 R190 K108 ["getClipboardTextAtIndex"]
     1117 SETTABLEKS                       R42 R190 K109 ["getToolResults"]
     1119 SETTABLEKS                       R78 R190 K110 ["typeInTextBox"]
     1121 SETTABLEKS                       R77 R190 K111 ["enterInTextBox"]
     1123 SETTABLEKS                       R70 R190 K112 ["focusTextBox"]
     1125 SETTABLEKS                       R71 R190 K113 ["setInputText"]
     1127 SETTABLEKS                       R72 R190 K114 ["setCursorPosition"]
     1129 SETTABLEKS                       R73 R190 K115 ["getInputScrollArea"]
     1131 SETTABLEKS                       R74 R190 K116 ["printScreen"]
     1133 SETTABLEKS                       R75 R190 K117 ["clickSendButton"]
     1135 SETTABLEKS                       R76 R190 K118 ["clickStopGenerationButton"]
     1137 SETTABLEKS                       R79 R190 K119 ["enterTextBox"]
     1139 SETTABLEKS                       R80 R190 K120 ["enterUserMessage"]
     1141 SETTABLEKS                       R81 R190 K121 ["pressKeyInInput"]
     1143 SETTABLEKS                       R82 R190 K122 ["setKeyDown"]
     1145 SETTABLEKS                       R83 R190 K123 ["isInputEnabled"]
     1147 SETTABLEKS                       R84 R190 K124 ["waitForInputState"]
     1149 SETTABLEKS                       R85 R190 K125 ["lastUserTextMatches"]
     1151 SETTABLEKS                       R86 R190 K126 ["getMessageCount"]
     1153 SETTABLEKS                       R87 R190 K127 ["isResponding"]
     1155 SETTABLEKS                       R129 R190 K128 ["setExternalInputOverride"]
     1157 SETTABLEKS                       R130 R190 K129 ["clearExternalInputOverride"]
     1159 SETTABLEKS                       R118 R190 K130 ["clickSettingsButton"]
     1161 SETTABLEKS                       R119 R190 K131 ["getSettingsContent"]
     1163 SETTABLEKS                       R131 R190 K132 ["getProviderCheckbox"]
     1165 SETTABLEKS                       R132 R190 K133 ["clickProviderCheckbox"]
     1167 SETTABLEKS                       R133 R190 K134 ["isProviderCheckboxChecked"]
     1169 SETTABLEKS                       R134 R190 K135 ["getModelPickerDropdown"]
     1171 SETTABLEKS                       R135 R190 K136 ["getSelectedModelFromPicker"]
     1173 SETTABLEKS                       R136 R190 K137 ["selectModelFromPicker"]
     1175 SETTABLEKS                       R160 R190 K138 ["clickEditAPIKeyButton"]
     1177 SETTABLEKS                       R161 R190 K139 ["clickSaveAPIKeyButton"]
     1179 SETTABLEKS                       R162 R190 K140 ["clickCancelAPIKeyButton"]
     1181 SETTABLEKS                       R163 R190 K141 ["getAPIKeyInputText"]
     1183 SETTABLEKS                       R164 R190 K142 ["setAPIKeyInputText"]
     1185 SETTABLEKS                       R165 R190 K143 ["getDisplayedAPIKey"]
     1187 SETTABLEKS                       R166 R190 K144 ["getAPIKeySetting"]
     1189 SETTABLEKS                       R138 R190 K145 ["hasFooterText"]
     1191 SETTABLEKS                       R139 R190 K146 ["hasFooterIcon"]
     1193 SETTABLEKS                       R140 R190 K147 ["getToolMenuView"]
     1195 SETTABLEKS                       R141 R190 K148 ["clickServerManagementButton"]
     1197 SETTABLEKS                       R142 R190 K149 ["getManageIntegrationsDialog"]
     1199 SETTABLEKS                       R143 R190 K150 ["getIntegrationItemDialog"]
     1201 SETTABLEKS                       R144 R190 K151 ["getIntegrationMenuEmptyState"]
     1203 SETTABLEKS                       R168 R190 K152 ["getIntegrationItemForLabel"]
     1205 SETTABLEKS                       R145 R190 K153 ["getSkillsTabContent"]
     1207 SETTABLEKS                       R146 R190 K154 ["getSkillsPersonalGroup"]
     1209 SETTABLEKS                       R147 R190 K155 ["getSkillsRobloxGroup"]
     1211 SETTABLEKS                       R148 R190 K156 ["getSkillRow"]
     1213 SETTABLEKS                       R149 R190 K157 ["findSkillRow"]
     1215 SETTABLEKS                       R150 R190 K158 ["clickSkillsGroupHeader"]
     1217 SETTABLEKS                       R151 R190 K159 ["clickSkillRow"]
     1219 SETTABLEKS                       R152 R190 K160 ["clickSkillRefreshButton"]
     1221 SETTABLEKS                       R153 R190 K161 ["getSkillDetailPane"]
     1223 SETTABLEKS                       R154 R190 K162 ["findSkillDetailPane"]
     1225 SETTABLEKS                       R155 R190 K163 ["findSkillDetailPaneEmpty"]
     1227 SETTABLEKS                       R156 R190 K164 ["getSkillDetailOpenButton"]
     1229 SETTABLEKS                       R157 R190 K165 ["getSkillDetailDuplicateButton"]
     1231 SETTABLEKS                       R158 R190 K166 ["getSkillDetailSourceUri"]
     1233 SETTABLEKS                       R159 R190 K167 ["clickSkillDetailOpenButton"]
     1235 SETTABLEKS                       R167 R190 K168 ["clickIntegrationItemActionsToggle"]
     1237 SETTABLEKS                       R169 R190 K169 ["clickIntegrationItemActionsOverflowButton"]
     1239 SETTABLEKS                       R170 R190 K170 ["getIntegrationItemActionsOverflowContent"]
     1241 SETTABLEKS                       R97 R190 K171 ["throwMarkdownParserError"]
     1243 SETTABLEKS                       R98 R190 K172 ["getCarousel"]
     1245 SETTABLEKS                       R99 R190 K173 ["getCarouselItem"]
     1247 SETTABLEKS                       R101 R190 K174 ["getSelectedCarouselItem"]
     1249 SETTABLEKS                       R102 R190 K175 ["clickCarouselItem"]
     1251 SETTABLEKS                       R171 R190 K176 ["clickAlertCloseButton"]
     1253 SETTABLEKS                       R172 R190 K177 ["clickAlertContinueButton"]
     1255 SETTABLEKS                       R173 R190 K178 ["clickToolConfirmationAcceptButton"]
     1257 SETTABLEKS                       R174 R190 K179 ["clickToolConfirmationRejectButton"]
     1259 SETTABLEKS                       R175 R190 K180 ["getToolConfirmationAlwaysAcceptText"]
     1261 SETTABLEKS                       R176 R190 K181 ["clickToolConfirmationAlwaysAcceptButton"]
     1263 SETTABLEKS                       R89 R190 K182 ["clickRunCodeExpandButton"]
     1265 SETTABLEKS                       R103 R190 K183 ["clickCopyButton"]
     1267 SETTABLEKS                       R104 R190 K184 ["clickRunButton"]
     1269 SETTABLEKS                       R105 R190 K185 ["clickStopButton"]
     1271 SETTABLEKS                       R106 R190 K186 ["clickImageExpandButton"]
     1273 SETTABLEKS                       R107 R190 K187 ["getImageContentImage"]
     1275 SETTABLEKS                       R90 R190 K188 ["clickAssetVariationExpandButton"]
     1277 SETTABLEKS                       R91 R190 K189 ["clickMaterialGenExpandButton"]
     1279 SETTABLEKS                       R92 R190 K190 ["clickMaterialGenStudsPerTileValueBar"]
     1281 SETTABLEKS                       R93 R190 K191 ["clickMaterialGenOrganicPatternToggle"]
     1283 SETTABLEKS                       R94 R190 K192 ["clickMeshGenExpandButton"]
     1285 SETTABLEKS                       R95 R190 K193 ["getMeshGenPreviewImage"]
     1287 SETTABLEKS                       R96 R190 K194 ["clickMeshGenSelectionToggle"]
     1289 SETTABLEKS                       R108 R190 K195 ["clickRetryButton"]
     1291 SETTABLEKS                       R109 R190 K196 ["clickThumbsUpButton"]
     1293 SETTABLEKS                       R110 R190 K197 ["clickThumbsDownButton"]
     1295 SETTABLEKS                       R111 R190 K198 ["clickBranchButton"]
     1297 SETTABLEKS                       R112 R190 K199 ["getThumbsUpButtonIcon"]
     1299 SETTABLEKS                       R113 R190 K200 ["getThumbsDownButtonIcon"]
     1301 SETTABLEKS                       R114 R190 K201 ["getConversation"]
     1303 SETTABLEKS                       R115 R190 K202 ["addConversation"]
     1305 SETTABLEKS                       R116 R190 K203 ["setThreadId"]
     1307 SETTABLEKS                       R117 R190 K204 ["applyConversation"]
     1309 SETTABLEKS                       R120 R190 K205 ["clearConversation"]
     1311 SETTABLEKS                       R121 R190 K206 ["wasToolInvoked"]
     1313 SETTABLEKS                       R122 R190 K207 ["overrideMethodWithError"]
     1315 SETTABLEKS                       R127 R190 K208 ["wasRequestHandlerCalled"]
     1317 SETTABLEKS                       R128 R190 K209 ["getLastRequestField"]
     1319 SETTABLEKS                       R123 R190 K210 ["getMultiplexedClient"]
     1321 SETTABLEKS                       R124 R190 K211 ["getClientStatusForIdentifier"]
     1323 SETTABLEKS                       R125 R190 K212 ["closeAllClients"]
     1325 SETTABLEKS                       R126 R190 K213 ["getToolAlias"]
     1327 SETTABLEKS                       R177 R190 K214 ["streamEvent"]
     1329 SETTABLEKS                       R178 R190 K215 ["addToolCall"]
     1331 SETTABLEKS                       R179 R190 K216 ["streamText"]
     1333 SETTABLEKS                       R180 R190 K217 ["startMessage"]
     1335 SETTABLEKS                       R181 R190 K218 ["sendMessageDeltaAndStop"]
     1337 SETTABLEKS                       R182 R190 K219 ["mockEventLoggerCall"]
     1339 SETTABLEKS                       R183 R190 K220 ["clickTextWithin"]
     1341 SETTABLEKS                       R65 R190 K221 ["getModelQualityWarning"]
     1343 SETTABLEKS                       R67 R190 K222 ["setModelQuality"]
     1345 SETTABLEKS                       R66 R190 K223 ["getGenerationIndicator"]
     1347 SETTABLEKS                       R184 R190 K224 ["getSlashCommandMenu"]
     1349 SETTABLEKS                       R185 R190 K225 ["getSlashCommandItems"]
     1351 SETTABLEKS                       R186 R190 K226 ["setOptions"]
     1353 SETTABLEKS                       R187 R190 K227 ["clickOptionWithDisplayName"]
     1355 SETTABLEKS                       R189 R190 K228 ["getSelectedThreadButton"]
     1357 SETTABLEKS                       R68 R190 K229 ["setSessionId"]
     1359 SETTABLEKS                       R69 R190 K230 ["setWidgetVisible"]
     1361 GETTABLEKS                       R191 R23 K231 ["setState"]
     1363 SETTABLEKS                       R191 R190 K232 ["setExternalServerState"]
     1365 GETTABLEKS                       R191 R23 K233 ["getState"]
     1367 SETTABLEKS                       R191 R190 K234 ["getExternalServerState"]
     1369 GETTABLEKS                       R191 R23 K235 ["getStartCallCount"]
     1371 SETTABLEKS                       R191 R190 K236 ["getExternalServerStartCallCount"]
     1373 GETTABLEKS                       R191 R23 K237 ["getStopCallCount"]
     1375 SETTABLEKS                       R191 R190 K238 ["getExternalServerStopCallCount"]
     1377 GETTABLEKS                       R191 R23 K239 ["getActiveConnectionsObservable"]
     1379 SETTABLEKS                       R191 R190 K240 ["getExternalServerActiveConnectionsObservable"]
     1381 CLOSEUPVALS                      R0
     1382 RETURN                           R190 1

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
       42 GETTABLEKS                       R7 R0 K16 ["Parent"]
       44 GETTABLEKS                       R7 R7 K17 ["DMNetworking"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K12 [require]
       49 GETTABLEKS                       R8 R0 K16 ["Parent"]
       51 GETTABLEKS                       R8 R8 K18 ["Dash"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K12 [require]
       56 GETTABLEKS                       R9 R0 K19 ["Guest"]
       58 GETTABLEKS                       R9 R9 K20 ["Environment"]
       60 GETTABLEKS                       R9 R9 K21 ["EventLogger"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K12 [require]
       65 GETTABLEKS                       R10 R0 K19 ["Guest"]
       67 GETTABLEKS                       R10 R10 K20 ["Environment"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K12 [require]
       72 GETTABLEKS                       R11 R0 K22 ["Components"]
       74 GETTABLEKS                       R11 R11 K23 ["Contexts"]
       76 GETTABLEKS                       R11 R11 K24 ["ExternalServerContext"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K12 [require]
       81 GETTABLEKS                       R12 R0 K25 ["Flags"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K12 [require]
       86 GETTABLEKS                       R13 R0 K16 ["Parent"]
       88 GETTABLEKS                       R13 R13 K26 ["Foundation"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K12 [require]
       93 GETTABLEKS                       R14 R0 K16 ["Parent"]
       95 GETTABLEKS                       R14 R14 K27 ["Framework"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K12 [require]
      100 GETTABLEKS                       R15 R0 K22 ["Components"]
      102 GETTABLEKS                       R15 R15 K23 ["Contexts"]
      104 GETTABLEKS                       R15 R15 K28 ["InputStateContext"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K12 [require]
      109 GETTABLEKS                       R16 R0 K19 ["Guest"]
      111 GETTABLEKS                       R16 R16 K29 ["JsonEnvironment"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K12 [require]
      116 GETTABLEKS                       R17 R0 K22 ["Components"]
      118 GETTABLEKS                       R17 R17 K23 ["Contexts"]
      120 GETTABLEKS                       R17 R17 K30 ["LLMProviderSelectionContext"]
      122 CALL                             R16 1 1
      123 GETIMPORT                        R17 K12 [require]
      125 GETTABLEKS                       R18 R0 K22 ["Components"]
      127 GETTABLEKS                       R18 R18 K31 ["MainView"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K12 [require]
      132 GETTABLEKS                       R19 R0 K16 ["Parent"]
      134 GETTABLEKS                       R19 R19 K32 ["ModelContextProtocol"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K12 [require]
      139 GETTABLEKS                       R20 R0 K22 ["Components"]
      141 GETTABLEKS                       R20 R20 K23 ["Contexts"]
      143 GETTABLEKS                       R20 R20 K33 ["ModelQualityContext"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K12 [require]
      148 GETTABLEKS                       R21 R0 K22 ["Components"]
      150 GETTABLEKS                       R21 R21 K23 ["Contexts"]
      152 GETTABLEKS                       R21 R21 K34 ["OptionsContext"]
      154 CALL                             R20 1 1
      155 GETIMPORT                        R21 K12 [require]
      157 GETTABLEKS                       R22 R0 K13 ["Util"]
      159 GETTABLEKS                       R22 R22 K35 ["Persistence"]
      161 CALL                             R21 1 1
      162 GETIMPORT                        R22 K12 [require]
      164 GETTABLEKS                       R23 R0 K22 ["Components"]
      166 GETTABLEKS                       R23 R23 K36 ["APIKeyManagement"]
      168 GETTABLEKS                       R23 R23 K37 ["ProviderModels"]
      170 CALL                             R22 1 1
      171 GETIMPORT                        R23 K12 [require]
      173 GETTABLEKS                       R24 R0 K16 ["Parent"]
      175 GETTABLEKS                       R24 R24 K38 ["React"]
      177 CALL                             R23 1 1
      178 GETIMPORT                        R24 K12 [require]
      180 GETTABLEKS                       R25 R0 K16 ["Parent"]
      182 GETTABLEKS                       R25 R25 K39 ["ReactUtils"]
      184 CALL                             R24 1 1
      185 GETIMPORT                        R25 K12 [require]
      187 GETIMPORT                        R26 K1 [script]
      189 GETTABLEKS                       R26 R26 K16 ["Parent"]
      191 GETTABLEKS                       R26 R26 K40 ["ScopedFastSetting"]
      193 CALL                             R25 1 1
      194 GETIMPORT                        R26 K12 [require]
      196 GETTABLEKS                       R27 R0 K13 ["Util"]
      198 GETTABLEKS                       R27 R27 K41 ["Serializer"]
      200 CALL                             R26 1 1
      201 GETIMPORT                        R27 K12 [require]
      203 GETIMPORT                        R28 K1 [script]
      205 GETTABLEKS                       R28 R28 K16 ["Parent"]
      207 GETTABLEKS                       R28 R28 K42 ["TagSearch"]
      209 CALL                             R27 1 1
      210 GETIMPORT                        R28 K12 [require]
      212 GETTABLEKS                       R29 R0 K13 ["Util"]
      214 GETTABLEKS                       R29 R29 K43 ["Tagging"]
      216 CALL                             R28 1 1
      217 GETIMPORT                        R29 K12 [require]
      219 GETTABLEKS                       R30 R0 K13 ["Util"]
      221 GETTABLEKS                       R30 R30 K44 ["TestIds"]
      223 CALL                             R29 1 1
      224 GETIMPORT                        R30 K12 [require]
      226 GETIMPORT                        R31 K1 [script]
      228 GETTABLEKS                       R31 R31 K16 ["Parent"]
      230 GETTABLEKS                       R31 R31 K45 ["ToolTestUtils"]
      232 CALL                             R30 1 1
      233 GETIMPORT                        R31 K12 [require]
      235 GETTABLEKS                       R32 R0 K46 ["Tools"]
      237 GETTABLEKS                       R32 R32 K47 ["ToolTypes"]
      239 CALL                             R31 1 1
      240 GETIMPORT                        R32 K12 [require]
      242 GETTABLEKS                       R33 R0 K13 ["Util"]
      244 GETTABLEKS                       R33 R33 K14 ["ContentWidgets"]
      246 GETTABLEKS                       R33 R33 K48 ["ToolWidgetMappingRegistry"]
      248 CALL                             R32 1 1
      249 GETIMPORT                        R33 K12 [require]
      251 GETTABLEKS                       R34 R0 K49 ["Resources"]
      253 GETTABLEKS                       R34 R34 K50 ["Localization"]
      255 GETTABLEKS                       R34 R34 K51 ["Translator"]
      257 CALL                             R33 1 1
      258 GETIMPORT                        R34 K12 [require]
      260 GETTABLEKS                       R35 R0 K52 ["Types"]
      262 CALL                             R34 1 1
      263 GETIMPORT                        R35 K12 [require]
      265 GETTABLEKS                       R36 R0 K22 ["Components"]
      267 GETTABLEKS                       R36 R36 K53 ["UIToolRegistry"]
      269 CALL                             R35 1 1
      270 GETIMPORT                        R36 K12 [require]
      272 GETTABLEKS                       R37 R0 K22 ["Components"]
      274 GETTABLEKS                       R37 R37 K23 ["Contexts"]
      276 GETTABLEKS                       R37 R37 K54 ["WindowInputContext"]
      278 CALL                             R36 1 1
      279 GETIMPORT                        R37 K12 [require]
      281 GETIMPORT                        R38 K1 [script]
      283 GETTABLEKS                       R38 R38 K55 ["createMockConversationContext"]
      285 CALL                             R37 1 1
      286 GETIMPORT                        R38 K12 [require]
      288 GETIMPORT                        R39 K1 [script]
      290 GETTABLEKS                       R39 R39 K56 ["createMockExternalServerContext"]
      292 CALL                             R38 1 1
      293 GETIMPORT                        R39 K12 [require]
      295 GETIMPORT                        R40 K1 [script]
      297 GETTABLEKS                       R40 R40 K57 ["createMockInputStateContext"]
      299 CALL                             R39 1 1
      300 GETIMPORT                        R40 K12 [require]
      302 GETIMPORT                        R41 K1 [script]
      304 GETTABLEKS                       R41 R41 K58 ["createMockLLMPackageContext"]
      306 CALL                             R40 1 1
      307 GETIMPORT                        R41 K12 [require]
      309 GETIMPORT                        R42 K1 [script]
      311 GETTABLEKS                       R42 R42 K59 ["createMockMcpClientContext"]
      313 CALL                             R41 1 1
      314 GETIMPORT                        R42 K12 [require]
      316 GETIMPORT                        R43 K1 [script]
      318 GETTABLEKS                       R43 R43 K60 ["createMockModelQualityContext"]
      320 CALL                             R42 1 1
      321 GETIMPORT                        R43 K12 [require]
      323 GETIMPORT                        R44 K1 [script]
      325 GETTABLEKS                       R44 R44 K61 ["createMockOptionsContext"]
      327 CALL                             R43 1 1
      328 GETIMPORT                        R44 K12 [require]
      330 GETIMPORT                        R45 K1 [script]
      332 GETTABLEKS                       R45 R45 K62 ["createMockPopoutWidgetContext"]
      334 CALL                             R44 1 1
      335 GETIMPORT                        R45 K12 [require]
      337 GETIMPORT                        R46 K1 [script]
      339 GETTABLEKS                       R46 R46 K63 ["createMockSessionIdContext"]
      341 CALL                             R45 1 1
      342 GETIMPORT                        R46 K12 [require]
      344 GETIMPORT                        R47 K1 [script]
      346 GETTABLEKS                       R47 R47 K64 ["createMockSettingsContext"]
      348 CALL                             R46 1 1
      349 GETIMPORT                        R47 K12 [require]
      351 GETIMPORT                        R48 K1 [script]
      353 GETTABLEKS                       R48 R48 K65 ["createMockThreadIdContext"]
      355 CALL                             R47 1 1
      356 GETIMPORT                        R48 K12 [require]
      358 GETIMPORT                        R49 K1 [script]
      360 GETTABLEKS                       R49 R49 K66 ["createMockWidgetVisibilityContext"]
      362 CALL                             R48 1 1
      363 GETIMPORT                        R49 K12 [require]
      365 GETIMPORT                        R50 K1 [script]
      367 GETTABLEKS                       R50 R50 K67 ["createTestHooks"]
      369 CALL                             R49 1 1
      370 GETIMPORT                        R50 K12 [require]
      372 GETIMPORT                        R51 K1 [script]
      374 GETTABLEKS                       R51 R51 K16 ["Parent"]
      376 GETTABLEKS                       R51 R51 K68 ["isVisibleGuiObject"]
      378 CALL                             R50 1 1
      379 GETIMPORT                        R51 K12 [require]
      381 GETTABLEKS                       R52 R0 K13 ["Util"]
      383 GETTABLEKS                       R52 R52 K14 ["ContentWidgets"]
      385 GETTABLEKS                       R52 R52 K69 ["registerContentWidgets"]
      387 CALL                             R51 1 1
      388 LOADK                            R54 K70 ["Packages"]
      389 NAMECALL                         R52 R0 K3 ["FindFirstAncestor"]
      391 CALL                             R52 2 1
      392 GETTABLEKS                       R52 R52 K71 ["Dev"]
      394 GETIMPORT                        R53 K12 [require]
      396 GETTABLEKS                       R54 R52 K72 ["FoundationTestingLibrary"]
      398 CALL                             R53 1 1
      399 GETIMPORT                        R54 K12 [require]
      401 GETTABLEKS                       R55 R52 K73 ["JestGlobals"]
      403 CALL                             R54 1 1
      404 GETIMPORT                        R55 K12 [require]
      406 GETTABLEKS                       R56 R52 K74 ["ReactTestingLibrary"]
      408 CALL                             R55 1 1
      409 GETTABLEKS                       R56 R23 K75 ["createElement"]
      411 GETTABLEKS                       R57 R54 K76 ["afterAll"]
      413 GETTABLEKS                       R58 R54 K77 ["afterEach"]
      415 GETTABLEKS                       R59 R54 K78 ["beforeAll"]
      417 GETTABLEKS                       R60 R54 K79 ["expect"]
      419 GETTABLEKS                       R61 R54 K80 ["jest"]
      421 GETTABLEKS                       R62 R55 K81 ["act"]
      423 GETTABLEKS                       R63 R55 K82 ["fireEvent"]
      425 GETTABLEKS                       R64 R55 K83 ["waitFor"]
      427 GETTABLEKS                       R65 R55 K84 ["within"]
      429 GETTABLEKS                       R66 R25 K85 ["create"]
      431 MOVE                             R67 R11
      432 CALL                             R66 1 1
      433 GETTABLEKS                       R66 R66 K86 ["ScopedFastFlagSetting"]
      435 DUPCLOSURE                       R67 K87 [PROTO_10]
      436 CAPTURE                          VAL R9
      437 CAPTURE                          VAL R6
      438 CAPTURE                          VAL R8
      439 CAPTURE                          VAL R3
      440 CAPTURE                          VAL R34
      441 CAPTURE                          VAL R15
      442 LOADNIL                          R68
      443 MOVE                             R69 R59
      444 NEWCLOSURE                       R70 P1
      445 CAPTURE                          REF R68
      446 CAPTURE                          VAL R61
      447 CAPTURE                          VAL R28
      448 CALL                             R69 1 0
      449 MOVE                             R69 R57
      450 NEWCLOSURE                       R70 P2
      451 CAPTURE                          REF R68
      452 CALL                             R69 1 0
      453 MOVE                             R69 R58
      454 DUPCLOSURE                       R70 K88 [PROTO_14]
      455 CAPTURE                          VAL R5
      456 CAPTURE                          VAL R26
      457 CALL                             R69 1 0
      458 DUPCLOSURE                       R69 K89 [PROTO_200]
      459 CAPTURE                          VAL R66
      460 CAPTURE                          VAL R46
      461 CAPTURE                          VAL R37
      462 CAPTURE                          VAL R39
      463 CAPTURE                          VAL R47
      464 CAPTURE                          VAL R45
      465 CAPTURE                          VAL R48
      466 CAPTURE                          VAL R41
      467 CAPTURE                          VAL R40
      468 CAPTURE                          VAL R42
      469 CAPTURE                          VAL R43
      470 CAPTURE                          VAL R44
      471 CAPTURE                          VAL R38
      472 CAPTURE                          VAL R49
      473 CAPTURE                          VAL R23
      474 CAPTURE                          VAL R56
      475 CAPTURE                          VAL R36
      476 CAPTURE                          VAL R16
      477 CAPTURE                          VAL R7
      478 CAPTURE                          VAL R67
      479 CAPTURE                          VAL R30
      480 CAPTURE                          VAL R9
      481 CAPTURE                          VAL R21
      482 CAPTURE                          VAL R51
      483 CAPTURE                          VAL R5
      484 CAPTURE                          VAL R32
      485 CAPTURE                          VAL R11
      486 CAPTURE                          VAL R0
      487 CAPTURE                          VAL R4
      488 CAPTURE                          VAL R2
      489 CAPTURE                          VAL R55
      490 CAPTURE                          VAL R13
      491 CAPTURE                          VAL R53
      492 CAPTURE                          VAL R24
      493 CAPTURE                          VAL R63
      494 CAPTURE                          VAL R62
      495 CAPTURE                          VAL R61
      496 CAPTURE                          VAL R1
      497 CAPTURE                          VAL R34
      498 CAPTURE                          VAL R65
      499 CAPTURE                          VAL R29
      500 CAPTURE                          VAL R27
      501 CAPTURE                          VAL R64
      502 CAPTURE                          VAL R60
      503 CAPTURE                          VAL R12
      504 CAPTURE                          VAL R33
      505 CAPTURE                          VAL R14
      506 CAPTURE                          VAL R22
      507 CAPTURE                          VAL R50
      508 CAPTURE                          VAL R17
      509 CLOSEUPVALS                      R68
      510 RETURN                           R69 1
