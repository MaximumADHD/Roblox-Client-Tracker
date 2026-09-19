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
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 DUPCLOSURE                       R0 K0 [PROTO_7]
        1 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_10:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

PROTO_13:
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
       49 DUPCLOSURE                       R3 K22 [PROTO_6]
       50 SETTABLEKS                       R3 R1 K23 ["isEditDataModelAvailable"]
       52 DUPCLOSURE                       R3 K24 [PROTO_8]
       53 SETTABLEKS                       R3 R1 K25 ["subscribeEditDataModelAvailabilityChanged"]
       55 NEWTABLE                         R3 1 0
       57 GETUPVAL                         R4 4
       58 GETTABLEKS                       R4 R4 K26 ["CLAUDE_API_KEY"]
       60 LOADK                            R5 K27 ["initial-test-api-key"]
       61 SETTABLE                         R5 R3 R4
       62 NEWCLOSURE                       R4 P8
       63 CAPTURE                          REF R3
       64 SETTABLEKS                       R4 R1 K28 ["getSecureSettingsAsync"]
       66 NEWCLOSURE                       R4 P9
       67 CAPTURE                          REF R3
       68 SETTABLEKS                       R4 R1 K29 ["setSecureSettingsAsync"]
       70 NEWTABLE                         R4 0 0
       72 NEWCLOSURE                       R5 P10
       73 CAPTURE                          VAL R4
       74 SETTABLEKS                       R5 R1 K30 ["getPluginSetting"]
       76 NEWCLOSURE                       R5 P11
       77 CAPTURE                          VAL R4
       78 SETTABLEKS                       R5 R1 K31 ["setPluginSetting"]
       80 GETUPVAL                         R5 5
       81 GETTABLEKS                       R5 R5 K32 ["setup"]
       83 MOVE                             R6 R1
       84 CALL                             R5 1 0
       85 CLOSEUPVALS                      R3
       86 RETURN                           R1 1

PROTO_14:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["spyOn"]
        3 GETUPVAL                         R1 2
        4 LOADK                            R2 K1 ["_batchTagUpdates"]
        5 CALL                             R0 2 1
        6 GETTABLEKS                       R0 R0 K2 ["mockImplementation"]
        8 DUPCLOSURE                       R1 K3 [PROTO_14]
        9 CALL                             R0 1 1
       10 SETUPVAL                         R0 0
       11 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["mockRestore"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["cleanup"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["clear"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K1 ["clear"]
       11 CALL                             R0 0 0
       12 GETIMPORT                        R0 K3 [workspace]
       14 GETTABLEKS                       R0 R0 K4 ["CurrentCamera"]
       16 JUMPIFNOT                        R0 ; [+16]
       17 NAMECALL                         R1 R0 K5 ["GetChildren"]
       19 CALL                             R1 1 3
       20 FORGPREP                         R1
       21 GETTABLEKS                       R6 R5 K6 ["Name"]
       23 LOADK                            R8 K7 ["^RBX_Assistant_Channel_"]
       24 NAMECALL                         R6 R6 K8 ["match"]
       26 CALL                             R6 2 1
       27 JUMPIFNOT                        R6 ; [+3]
       28 NAMECALL                         R6 R5 K9 ["Destroy"]
       30 CALL                             R6 1 0
       31 FORGLOOP                         R1 2 ; [-11]
       33 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 JUMPIFNOTLT                      R1 R0 ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLE                         R1 R2 R0
        8 RETURN                           R1 1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
        0 SETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [coroutine.status]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K3 ["suspended"] ; [+5]
        7 GETIMPORT                        R1 K6 [task.spawn]
        9 GETUPVAL                         R2 1
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R0 R0 K0 ["getThread"]
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_24:
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

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R0 R0 K0 ["getOrAddMessage"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["ROLE"]
        7 GETTABLEKS                       R1 R1 K2 ["Assistant"]
        9 GETUPVAL                         R2 2
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_30:
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
       55 LOADK                            R10 K17 ["Tool invocation failed: %*"]
       56 MOVE                             R12 R6
       57 NAMECALL                         R10 R10 K18 ["format"]
       59 CALL                             R10 2 1
       60 FASTCALL2                        ASSERT R5 R10 ; [+4]
       62 MOVE                             R9 R5
       63 GETIMPORT                        R8 K11 [assert]
       65 CALL                             R8 2 0
       66 CLOSEUPVALS                      R2
       67 RETURN                           R6 1

PROTO_31:
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

PROTO_32:
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

PROTO_33:
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
       25 GETTABLEKS                       R2 R2 K4 ["queryByTestId"]
       27 MOVE                             R3 R0
       28 CALL                             R2 1 1
       29 RETURN                           R2 1

PROTO_35:
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
       29 LOADK                            R5 K5 ["No result found for testId \"%*\""]
       30 MOVE                             R7 R0
       31 NAMECALL                         R5 R5 K6 ["format"]
       33 CALL                             R5 2 1
       34 FASTCALL2                        ASSERT R2 R5 ; [+4]
       36 MOVE                             R4 R2
       37 GETIMPORT                        R3 K2 [assert]
       39 CALL                             R3 2 0
       40 RETURN                           R2 1

PROTO_36:
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

PROTO_37:
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
       37 LOADK                            R5 K5 ["No results found for testId \"%*\""]
       38 MOVE                             R7 R0
       39 NAMECALL                         R5 R5 K6 ["format"]
       41 CALL                             R5 2 1
       42 FASTCALL2                        ASSERT R4 R5 ; [+3]
       44 GETIMPORT                        R3 K2 [assert]
       46 CALL                             R3 2 0
       47 RETURN                           R2 1

PROTO_38:
        0 LOADK                            R3 K0 ["<[^<>]->"]
        1 LOADK                            R4 K1 [""]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 LOADK                            R4 K3 ["&%a+;"]
        6 GETUPVAL                         R5 0
        7 NAMECALL                         R2 R1 K2 ["gsub"]
        9 CALL                             R2 3 1
       10 RETURN                           R2 1

PROTO_39:
        0 LOADK                            R4 K0 ["<[^<>]->"]
        1 LOADK                            R5 K1 [""]
        2 NAMECALL                         R2 R0 K2 ["gsub"]
        4 CALL                             R2 3 1
        5 LOADK                            R5 K3 ["&%a+;"]
        6 GETUPVAL                         R6 0
        7 NAMECALL                         R3 R2 K2 ["gsub"]
        9 CALL                             R3 3 1
       10 MOVE                             R1 R3
       11 GETUPVAL                         R2 1
       12 JUMPIFNOT                        R2 ; [+6]
       13 GETUPVAL                         R3 2
       14 JUMPIFEQ                         R1 R3 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 RETURN                           R2 1
       19 GETIMPORT                        R3 K6 [string.find]
       21 MOVE                             R4 R1
       22 GETUPVAL                         R5 2
       23 LOADN                            R6 1
       24 LOADB                            R7 1
       25 CALL                             R3 4 1
       26 JUMPIFNOTEQKNIL                  R3 ; [+2]
       28 LOADB                            R2 0 +1
       29 LOADB                            R2 1
       30 RETURN                           R2 1

PROTO_40:
        0 JUMPIFNOT                        R1 ; [+7]
        1 GETTABLEKS                       R3 R1 K0 ["exact"]
        3 JUMPIFEQKNIL                     R3 ; [+4]
        5 GETTABLEKS                       R2 R1 K0 ["exact"]
        7 JUMP                             ; [+1]
        8 LOADB                            R2 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R0
       13 RETURN                           R3 1

PROTO_41:
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
       37 MOVE                             R5 R2
       38 JUMPIFNOT                        R5 ; [+7]
       39 GETTABLEKS                       R7 R5 K5 ["exact"]
       41 JUMPIFEQKNIL                     R7 ; [+4]
       43 GETTABLEKS                       R6 R5 K5 ["exact"]
       45 JUMP                             ; [+1]
       46 LOADB                            R6 1
       47 NEWCLOSURE                       R4 P0
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R0
       51 CALL                             R3 1 1
       52 JUMPIF                           R3 ; [+8]
       53 GETUPVAL                         R3 2
       54 MOVE                             R4 R1
       55 CALL                             R3 1 1
       56 GETTABLEKS                       R3 R3 K9 ["queryByDisplayValue"]
       58 MOVE                             R4 R0
       59 MOVE                             R5 R2
       60 CALL                             R3 2 1
       61 LOADK                            R6 K10 ["No GuiObject found for message \"%*\""]
       62 MOVE                             R8 R0
       63 NAMECALL                         R6 R6 K11 ["format"]
       65 CALL                             R6 2 1
       66 FASTCALL2                        ASSERT R3 R6 ; [+4]
       68 MOVE                             R5 R3
       69 GETIMPORT                        R4 K2 [assert]
       71 CALL                             R4 2 0
       72 RETURN                           R3 1

PROTO_42:
        0 LOADK                            R3 K0 ["GuiButton"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_43:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_44:
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

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["contextMenu"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_46:
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

PROTO_47:
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

PROTO_48:
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

PROTO_49:
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

PROTO_50:
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
       51 LOADK                            R6 K10 ["No result found for testId \"%*\""]
       52 MOVE                             R8 R1
       53 NAMECALL                         R6 R6 K11 ["format"]
       55 CALL                             R6 2 1
       56 FASTCALL2                        ASSERT R3 R6 ; [+4]
       58 MOVE                             R5 R3
       59 GETIMPORT                        R4 K7 [assert]
       61 CALL                             R4 2 0
       62 MOVE                             R0 R3
       63 RETURN                           R0 1

PROTO_51:
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
       67 LOADK                            R6 K10 ["No result found for testId \"%*\""]
       68 MOVE                             R8 R1
       69 NAMECALL                         R6 R6 K11 ["format"]
       71 CALL                             R6 2 1
       72 FASTCALL2                        ASSERT R3 R6 ; [+4]
       74 MOVE                             R5 R3
       75 GETIMPORT                        R4 K7 [assert]
       77 CALL                             R4 2 0
       78 MOVE                             R0 R3
       79 LOADK                            R2 K12 ["TextBox"]
       80 LOADB                            R3 1
       81 NAMECALL                         R0 R0 K13 ["FindFirstChild"]
       83 CALL                             R0 3 1
       84 MOVE                             R2 R0
       85 JUMPIFNOT                        R2 ; [+4]
       86 LOADK                            R4 K12 ["TextBox"]
       87 NAMECALL                         R2 R0 K14 ["IsA"]
       89 CALL                             R2 2 1
       90 FASTCALL2K                       ASSERT R2 K15 ; [+4]
       92 LOADK                            R3 K15 ["TextBox not found"]
       93 GETIMPORT                        R1 K7 [assert]
       95 CALL                             R1 2 0
       96 RETURN                           R0 1

PROTO_52:
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

PROTO_53:
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
       22 JUMP                             ; [+23]
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
       39 LOADB                            R5 1
       40 NEWCLOSURE                       R4 P0
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R0
       44 CALL                             R3 1 1
       45 MOVE                             R2 R3
       46 GETUPVAL                         R3 3
       47 GETTABLEKS                       R3 R3 K6 ["firstAncestorWithTag"]
       49 MOVE                             R4 R2
       50 LOADK                            R5 K7 ["Assistant-MessageWidget"]
       51 CALL                             R3 2 1
       52 MOVE                             R5 R3
       53 JUMPIFNOT                        R5 ; [+4]
       54 LOADK                            R7 K8 ["GuiObject"]
       55 NAMECALL                         R5 R3 K9 ["IsA"]
       57 CALL                             R5 2 1
       58 LOADK                            R7 K10 ["Message widget not found for message: "]
       59 MOVE                             R8 R0
       60 CONCAT                           R6 R7 R8
       61 FASTCALL2                        ASSERT R5 R6 ; [+3]
       63 GETIMPORT                        R4 K3 [assert]
       65 CALL                             R4 2 0
       66 RETURN                           R3 1

PROTO_54:
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

PROTO_55:
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
       16 GETUPVAL                         R2 2
       17 DUPTABLE                         R3 K6 [{["exact"] = False}]
       18 JUMPIFNOT                        R3 ; [+7]
       19 GETTABLEKS                       R5 R3 K4 ["exact"]
       21 JUMPIFEQKNIL                     R5 ; [+4]
       23 GETTABLEKS                       R4 R3 K4 ["exact"]
       25 JUMP                             ; [+1]
       26 LOADB                            R4 1
       27 NEWCLOSURE                       R1 P0
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R2
       31 CALL                             R0 1 -1
       32 RETURN                           R0 -1

PROTO_56:
        0 LOADNIL                          R1
        1 GETIMPORT                        R2 K1 [pcall]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 CALL                             R2 1 2
        9 JUMPIFNOT                        R2 ; [+2]
       10 MOVE                             R1 R3
       11 JUMP                             ; [+19]
       12 GETUPVAL                         R4 0
       13 GETUPVAL                         R8 1
       14 JUMPIFNOTEQKNIL                  R8 ; [+2]
       16 LOADB                            R7 0 +1
       17 LOADB                            R7 1
       18 FASTCALL2K                       ASSERT R7 K2 ; [+4]
       20 LOADK                            R8 K2 ["Container not mounted, ensure render is called"]
       21 GETIMPORT                        R6 K4 [assert]
       23 CALL                             R6 2 0
       24 GETUPVAL                         R5 1
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R4 R4 K5 ["getByDisplayValue"]
       28 MOVE                             R5 R0
       29 CALL                             R4 1 1
       30 MOVE                             R1 R4
       31 LOADK                            R7 K6 ["Message content not found for message: "]
       32 MOVE                             R8 R0
       33 CONCAT                           R6 R7 R8
       34 FASTCALL2                        ASSERT R1 R6 ; [+4]
       36 MOVE                             R5 R1
       37 GETIMPORT                        R4 K4 [assert]
       39 CALL                             R4 2 0
       40 GETUPVAL                         R4 3
       41 GETTABLEKS                       R4 R4 K7 ["firstAncestorWithTag"]
       43 MOVE                             R5 R1
       44 LOADK                            R6 K8 ["Assistant-MessageWidget"]
       45 CALL                             R4 2 1
       46 LOADK                            R8 K9 ["Message widget not found for message: "]
       47 MOVE                             R9 R0
       48 CONCAT                           R7 R8 R9
       49 FASTCALL2                        ASSERT R4 R7 ; [+4]
       51 MOVE                             R6 R4
       52 GETIMPORT                        R5 K4 [assert]
       54 CALL                             R5 2 0
       55 GETUPVAL                         R6 4
       56 GETTABLEKS                       R6 R6 K10 ["MessageActions"]
       58 GETTABLEKS                       R6 R6 K11 ["Container"]
       60 MOVE                             R7 R4
       61 MOVE                             R8 R7
       62 JUMPIF                           R8 ; [+12]
       63 GETUPVAL                         R11 1
       64 JUMPIFNOTEQKNIL                  R11 ; [+2]
       66 LOADB                            R10 0 +1
       67 LOADB                            R10 1
       68 FASTCALL2K                       ASSERT R10 K2 ; [+4]
       70 LOADK                            R11 K2 ["Container not mounted, ensure render is called"]
       71 GETIMPORT                        R9 K4 [assert]
       73 CALL                             R9 2 0
       74 GETUPVAL                         R8 1
       75 MOVE                             R7 R8
       76 FASTCALL2K                       ASSERT R7 K12 ; [+5]
       78 MOVE                             R9 R7
       79 LOADK                            R10 K12 ["Query container not found"]
       80 GETIMPORT                        R8 K4 [assert]
       82 CALL                             R8 2 0
       83 GETUPVAL                         R8 0
       84 MOVE                             R9 R7
       85 CALL                             R8 1 1
       86 GETTABLEKS                       R8 R8 K13 ["queryByTestId"]
       88 MOVE                             R9 R6
       89 CALL                             R8 1 1
       90 MOVE                             R5 R8
       91 RETURN                           R5 1

PROTO_57:
        0 GETTABLEKS                       R3 R0 K0 ["messageContainer"]
        2 GETTABLEKS                       R3 R3 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R4 R1 K0 ["messageContainer"]
        6 GETTABLEKS                       R4 R4 K1 ["LayoutOrder"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_58:
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
       53 DUPCLOSURE                       R4 K18 [PROTO_57]
       54 CALL                             R2 2 0
       55 RETURN                           R1 1

PROTO_59:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETTABLEKS                       R0 R0 K0 ["getByText"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_60:
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

PROTO_61:
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
       48 LOADK                            R9 K11 ["No text object found for message \"%*\".\n%*\n%*"]
       49 MOVE                             R11 R0
       50 MOVE                             R12 R5
       51 MOVE                             R13 R7
       52 NAMECALL                         R9 R9 K12 ["format"]
       54 CALL                             R9 4 1
       55 CALL                             R8 1 0
       56 CLOSEUPVALS                      R1
       57 RETURN                           R0 0

PROTO_62:
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
       33 LOADK                            R6 K6 ["No result found for testId \"%*\""]
       34 MOVE                             R8 R1
       35 NAMECALL                         R6 R6 K7 ["format"]
       37 CALL                             R6 2 1
       38 FASTCALL2                        ASSERT R3 R6 ; [+4]
       40 MOVE                             R5 R3
       41 GETIMPORT                        R4 K3 [assert]
       43 CALL                             R4 2 0
       44 MOVE                             R0 R3
       45 RETURN                           R0 1

PROTO_63:
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
       33 LOADK                            R6 K6 ["No result found for testId \"%*\""]
       34 MOVE                             R8 R1
       35 NAMECALL                         R6 R6 K7 ["format"]
       37 CALL                             R6 2 1
       38 FASTCALL2                        ASSERT R3 R6 ; [+4]
       40 MOVE                             R5 R3
       41 GETIMPORT                        R4 K3 [assert]
       43 CALL                             R4 2 0
       44 MOVE                             R0 R3
       45 RETURN                           R0 1

PROTO_64:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setModelQuality"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_65:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_66:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setSessionId"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_67:
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

PROTO_68:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setIsVisible"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_69:
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

PROTO_70:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_71:
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
       67 LOADK                            R7 K10 ["No result found for testId \"%*\""]
       68 MOVE                             R9 R2
       69 NAMECALL                         R7 R7 K11 ["format"]
       71 CALL                             R7 2 1
       72 FASTCALL2                        ASSERT R4 R7 ; [+4]
       74 MOVE                             R6 R4
       75 GETIMPORT                        R5 K7 [assert]
       77 CALL                             R5 2 0
       78 MOVE                             R1 R4
       79 LOADK                            R3 K12 ["TextBox"]
       80 LOADB                            R4 1
       81 NAMECALL                         R1 R1 K13 ["FindFirstChild"]
       83 CALL                             R1 3 1
       84 MOVE                             R3 R1
       85 JUMPIFNOT                        R3 ; [+4]
       86 LOADK                            R5 K12 ["TextBox"]
       87 NAMECALL                         R3 R1 K14 ["IsA"]
       89 CALL                             R3 2 1
       90 FASTCALL2K                       ASSERT R3 K15 ; [+4]
       92 LOADK                            R4 K15 ["TextBox not found"]
       93 GETIMPORT                        R2 K7 [assert]
       95 CALL                             R2 2 0
       96 MOVE                             R0 R1
       97 GETUPVAL                         R1 5
       98 NEWCLOSURE                       R2 P0
       99 CAPTURE                          VAL R0
      100 CALL                             R1 1 0
      101 GETUPVAL                         R1 0
      102 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
      104 CALL                             R1 1 0
      105 GETUPVAL                         R1 1
      106 GETTABLEKS                       R1 R1 K1 ["Stepped"]
      108 NAMECALL                         R1 R1 K2 ["Wait"]
      110 CALL                             R1 1 0
      111 GETUPVAL                         R1 1
      112 GETTABLEKS                       R1 R1 K1 ["Stepped"]
      114 NAMECALL                         R1 R1 K2 ["Wait"]
      116 CALL                             R1 1 0
      117 RETURN                           R0 0

PROTO_72:
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
       70 LOADK                            R9 K11 ["No result found for testId \"%*\""]
       71 MOVE                             R11 R4
       72 NAMECALL                         R9 R9 K12 ["format"]
       74 CALL                             R9 2 1
       75 FASTCALL2                        ASSERT R6 R9 ; [+4]
       77 MOVE                             R8 R6
       78 GETIMPORT                        R7 K8 [assert]
       80 CALL                             R7 2 0
       81 MOVE                             R3 R6
       82 LOADK                            R5 K13 ["TextBox"]
       83 LOADB                            R6 1
       84 NAMECALL                         R3 R3 K14 ["FindFirstChild"]
       86 CALL                             R3 3 1
       87 MOVE                             R5 R3
       88 JUMPIFNOT                        R5 ; [+4]
       89 LOADK                            R7 K13 ["TextBox"]
       90 NAMECALL                         R5 R3 K15 ["IsA"]
       92 CALL                             R5 2 1
       93 FASTCALL2K                       ASSERT R5 K16 ; [+4]
       95 LOADK                            R6 K16 ["TextBox not found"]
       96 GETIMPORT                        R4 K8 [assert]
       98 CALL                             R4 2 0
       99 MOVE                             R2 R3
      100 DUPTABLE                         R3 K18 [{"target"}]
      101 DUPTABLE                         R4 K20 [{"Text"}]
      102 SETTABLEKS                       R0 R4 K19 ["Text"]
      104 SETTABLEKS                       R4 R3 K17 ["target"]
      106 CALL                             R1 2 0
      107 GETUPVAL                         R1 1
      108 NAMECALL                         R1 R1 K1 ["UpdateUnitTestOnly"]
      110 CALL                             R1 1 0
      111 GETUPVAL                         R1 2
      112 GETTABLEKS                       R1 R1 K2 ["Stepped"]
      114 NAMECALL                         R1 R1 K3 ["Wait"]
      116 CALL                             R1 1 0
      117 GETUPVAL                         R1 2
      118 GETTABLEKS                       R1 R1 K2 ["Stepped"]
      120 NAMECALL                         R1 R1 K3 ["Wait"]
      122 CALL                             R1 1 0
      123 RETURN                           R0 0

PROTO_73:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["CursorPosition"]
        4 RETURN                           R0 0

PROTO_74:
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
       67 LOADK                            R8 K10 ["No result found for testId \"%*\""]
       68 MOVE                             R10 R3
       69 NAMECALL                         R8 R8 K11 ["format"]
       71 CALL                             R8 2 1
       72 FASTCALL2                        ASSERT R5 R8 ; [+4]
       74 MOVE                             R7 R5
       75 GETIMPORT                        R6 K7 [assert]
       77 CALL                             R6 2 0
       78 MOVE                             R2 R5
       79 LOADK                            R4 K12 ["TextBox"]
       80 LOADB                            R5 1
       81 NAMECALL                         R2 R2 K13 ["FindFirstChild"]
       83 CALL                             R2 3 1
       84 MOVE                             R4 R2
       85 JUMPIFNOT                        R4 ; [+4]
       86 LOADK                            R6 K12 ["TextBox"]
       87 NAMECALL                         R4 R2 K14 ["IsA"]
       89 CALL                             R4 2 1
       90 FASTCALL2K                       ASSERT R4 K15 ; [+4]
       92 LOADK                            R5 K15 ["TextBox not found"]
       93 GETIMPORT                        R3 K7 [assert]
       95 CALL                             R3 2 0
       96 MOVE                             R1 R2
       97 GETUPVAL                         R2 5
       98 NEWCLOSURE                       R3 P0
       99 CAPTURE                          VAL R1
      100 CAPTURE                          VAL R0
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 0
      103 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
      105 CALL                             R2 1 0
      106 GETUPVAL                         R2 1
      107 GETTABLEKS                       R2 R2 K1 ["Stepped"]
      109 NAMECALL                         R2 R2 K2 ["Wait"]
      111 CALL                             R2 1 0
      112 GETUPVAL                         R2 1
      113 GETTABLEKS                       R2 R2 K1 ["Stepped"]
      115 NAMECALL                         R2 R2 K2 ["Wait"]
      117 CALL                             R2 1 0
      118 RETURN                           R0 0

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
       67 LOADK                            R7 K10 ["No result found for testId \"%*\""]
       68 MOVE                             R9 R2
       69 NAMECALL                         R7 R7 K11 ["format"]
       71 CALL                             R7 2 1
       72 FASTCALL2                        ASSERT R4 R7 ; [+4]
       74 MOVE                             R6 R4
       75 GETIMPORT                        R5 K7 [assert]
       77 CALL                             R5 2 0
       78 MOVE                             R1 R4
       79 LOADK                            R3 K12 ["TextBox"]
       80 LOADB                            R4 1
       81 NAMECALL                         R1 R1 K13 ["FindFirstChild"]
       83 CALL                             R1 3 1
       84 MOVE                             R3 R1
       85 JUMPIFNOT                        R3 ; [+4]
       86 LOADK                            R5 K12 ["TextBox"]
       87 NAMECALL                         R3 R1 K14 ["IsA"]
       89 CALL                             R3 2 1
       90 FASTCALL2K                       ASSERT R3 K15 ; [+4]
       92 LOADK                            R4 K15 ["TextBox not found"]
       93 GETIMPORT                        R2 K7 [assert]
       95 CALL                             R2 2 0
       96 MOVE                             R0 R1
       97 LOADK                            R3 K16 ["ScrollingFrame"]
       98 NAMECALL                         R1 R0 K17 ["FindFirstAncestorWhichIsA"]
      100 CALL                             R1 2 1
      101 MOVE                             R3 R1
      102 JUMPIFNOT                        R3 ; [+4]
      103 LOADK                            R5 K16 ["ScrollingFrame"]
      104 NAMECALL                         R3 R1 K14 ["IsA"]
      106 CALL                             R3 2 1
      107 FASTCALL2K                       ASSERT R3 K18 ; [+4]
      109 LOADK                            R4 K18 ["Scroll area not found for text box"]
      110 GETIMPORT                        R2 K7 [assert]
      112 CALL                             R2 2 0
      113 RETURN                           R1 1

PROTO_76:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["screen"]
        3 GETTABLEKS                       R2 R2 K1 ["debug"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_77:
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
       35 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R8 R1
       37 NAMECALL                         R6 R6 K8 ["format"]
       39 CALL                             R6 2 1
       40 FASTCALL2                        ASSERT R3 R6 ; [+4]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K4 [assert]
       45 CALL                             R4 2 0
       46 MOVE                             R0 R3
       47 GETUPVAL                         R1 3
       48 NEWCLOSURE                       R2 P0
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R0
       51 CALL                             R1 1 0
       52 GETUPVAL                         R1 5
       53 NAMECALL                         R1 R1 K9 ["UpdateUnitTestOnly"]
       55 CALL                             R1 1 0
       56 GETUPVAL                         R1 6
       57 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       59 NAMECALL                         R1 R1 K11 ["Wait"]
       61 CALL                             R1 1 0
       62 GETUPVAL                         R1 6
       63 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       65 NAMECALL                         R1 R1 K11 ["Wait"]
       67 CALL                             R1 1 0
       68 RETURN                           R0 0

PROTO_78:
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
       35 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R8 R1
       37 NAMECALL                         R6 R6 K8 ["format"]
       39 CALL                             R6 2 1
       40 FASTCALL2                        ASSERT R3 R6 ; [+4]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K4 [assert]
       45 CALL                             R4 2 0
       46 MOVE                             R0 R3
       47 GETUPVAL                         R1 3
       48 NEWCLOSURE                       R2 P0
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R0
       51 CALL                             R1 1 0
       52 GETUPVAL                         R1 5
       53 NAMECALL                         R1 R1 K9 ["UpdateUnitTestOnly"]
       55 CALL                             R1 1 0
       56 GETUPVAL                         R1 6
       57 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       59 NAMECALL                         R1 R1 K11 ["Wait"]
       61 CALL                             R1 1 0
       62 GETUPVAL                         R1 6
       63 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       65 NAMECALL                         R1 R1 K11 ["Wait"]
       67 CALL                             R1 1 0
       68 RETURN                           R0 0

PROTO_79:
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

PROTO_80:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_81:
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

PROTO_82:
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
       68 LOADK                            R8 K10 ["No result found for testId \"%*\""]
       69 MOVE                             R10 R3
       70 NAMECALL                         R8 R8 K11 ["format"]
       72 CALL                             R8 2 1
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
       98 CALL                             R0 1 0
       99 RETURN                           R0 0

PROTO_83:
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
       68 LOADK                            R9 K10 ["No result found for testId \"%*\""]
       69 MOVE                             R11 R4
       70 NAMECALL                         R9 R9 K11 ["format"]
       72 CALL                             R9 2 1
       73 FASTCALL2                        ASSERT R6 R9 ; [+4]
       75 MOVE                             R8 R6
       76 GETIMPORT                        R7 K7 [assert]
       78 CALL                             R7 2 0
       79 MOVE                             R3 R6
       80 LOADK                            R5 K12 ["TextBox"]
       81 LOADB                            R6 1
       82 NAMECALL                         R3 R3 K13 ["FindFirstChild"]
       84 CALL                             R3 3 1
       85 MOVE                             R5 R3
       86 JUMPIFNOT                        R5 ; [+4]
       87 LOADK                            R7 K12 ["TextBox"]
       88 NAMECALL                         R5 R3 K14 ["IsA"]
       90 CALL                             R5 2 1
       91 FASTCALL2K                       ASSERT R5 K15 ; [+4]
       93 LOADK                            R6 K15 ["TextBox not found"]
       94 GETIMPORT                        R4 K7 [assert]
       96 CALL                             R4 2 0
       97 MOVE                             R2 R3
       98 MOVE                             R3 R0
       99 CALL                             R1 2 0
      100 GETUPVAL                         R1 6
      101 GETUPVAL                         R3 1
      102 NAMECALL                         R3 R3 K0 ["UpdateUnitTestOnly"]
      104 CALL                             R3 1 0
      105 GETUPVAL                         R3 2
      106 GETTABLEKS                       R3 R3 K1 ["Stepped"]
      108 NAMECALL                         R3 R3 K2 ["Wait"]
      110 CALL                             R3 1 0
      111 GETUPVAL                         R3 2
      112 GETTABLEKS                       R3 R3 K1 ["Stepped"]
      114 NAMECALL                         R3 R3 K2 ["Wait"]
      116 CALL                             R3 1 0
      117 GETUPVAL                         R4 1
      118 NAMECALL                         R4 R4 K0 ["UpdateUnitTestOnly"]
      120 CALL                             R4 1 0
      121 GETUPVAL                         R4 2
      122 GETTABLEKS                       R4 R4 K1 ["Stepped"]
      124 NAMECALL                         R4 R4 K2 ["Wait"]
      126 CALL                             R4 1 0
      127 GETUPVAL                         R4 2
      128 GETTABLEKS                       R4 R4 K1 ["Stepped"]
      130 NAMECALL                         R4 R4 K2 ["Wait"]
      132 CALL                             R4 1 0
      133 GETUPVAL                         R4 3
      134 GETTABLEKS                       R4 R4 K3 ["InputArea"]
      136 GETTABLEKS                       R4 R4 K4 ["Container"]
      138 LOADNIL                          R5
      139 MOVE                             R6 R5
      140 JUMPIF                           R6 ; [+12]
      141 GETUPVAL                         R9 4
      142 JUMPIFNOTEQKNIL                  R9 ; [+2]
      144 LOADB                            R8 0 +1
      145 LOADB                            R8 1
      146 FASTCALL2K                       ASSERT R8 K5 ; [+4]
      148 LOADK                            R9 K5 ["Container not mounted, ensure render is called"]
      149 GETIMPORT                        R7 K7 [assert]
      151 CALL                             R7 2 0
      152 GETUPVAL                         R6 4
      153 MOVE                             R5 R6
      154 FASTCALL2K                       ASSERT R5 K8 ; [+5]
      156 MOVE                             R7 R5
      157 LOADK                            R8 K8 ["Query container not found"]
      158 GETIMPORT                        R6 K7 [assert]
      160 CALL                             R6 2 0
      161 GETUPVAL                         R6 5
      162 MOVE                             R7 R5
      163 CALL                             R6 1 1
      164 GETTABLEKS                       R6 R6 K9 ["getByTestId"]
      166 MOVE                             R7 R4
      167 CALL                             R6 1 1
      168 LOADK                            R9 K10 ["No result found for testId \"%*\""]
      169 MOVE                             R11 R4
      170 NAMECALL                         R9 R9 K11 ["format"]
      172 CALL                             R9 2 1
      173 FASTCALL2                        ASSERT R6 R9 ; [+4]
      175 MOVE                             R8 R6
      176 GETIMPORT                        R7 K7 [assert]
      178 CALL                             R7 2 0
      179 MOVE                             R3 R6
      180 LOADK                            R5 K12 ["TextBox"]
      181 LOADB                            R6 1
      182 NAMECALL                         R3 R3 K13 ["FindFirstChild"]
      184 CALL                             R3 3 1
      185 MOVE                             R5 R3
      186 JUMPIFNOT                        R5 ; [+4]
      187 LOADK                            R7 K12 ["TextBox"]
      188 NAMECALL                         R5 R3 K14 ["IsA"]
      190 CALL                             R5 2 1
      191 FASTCALL2K                       ASSERT R5 K15 ; [+4]
      193 LOADK                            R6 K15 ["TextBox not found"]
      194 GETIMPORT                        R4 K7 [assert]
      196 CALL                             R4 2 0
      197 MOVE                             R2 R3
      198 CALL                             R1 1 0
      199 RETURN                           R0 0

PROTO_84:
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
       67 LOADK                            R8 K10 ["No result found for testId \"%*\""]
       68 MOVE                             R10 R3
       69 NAMECALL                         R8 R8 K11 ["format"]
       71 CALL                             R8 2 1
       72 FASTCALL2                        ASSERT R5 R8 ; [+4]
       74 MOVE                             R7 R5
       75 GETIMPORT                        R6 K7 [assert]
       77 CALL                             R6 2 0
       78 MOVE                             R2 R5
       79 LOADK                            R4 K12 ["TextBox"]
       80 LOADB                            R5 1
       81 NAMECALL                         R2 R2 K13 ["FindFirstChild"]
       83 CALL                             R2 3 1
       84 MOVE                             R4 R2
       85 JUMPIFNOT                        R4 ; [+4]
       86 LOADK                            R6 K12 ["TextBox"]
       87 NAMECALL                         R4 R2 K14 ["IsA"]
       89 CALL                             R4 2 1
       90 FASTCALL2K                       ASSERT R4 K15 ; [+4]
       92 LOADK                            R5 K15 ["TextBox not found"]
       93 GETIMPORT                        R3 K7 [assert]
       95 CALL                             R3 2 0
       96 MOVE                             R1 R2
       97 GETUPVAL                         R2 5
       98 GETTABLEKS                       R2 R2 K16 ["keyDown"]
      100 MOVE                             R3 R1
      101 DUPTABLE                         R4 K18 [{"key"}]
      102 SETTABLEKS                       R0 R4 K17 ["key"]
      104 CALL                             R2 2 0
      105 GETUPVAL                         R2 5
      106 GETTABLEKS                       R2 R2 K19 ["keyUp"]
      108 MOVE                             R3 R1
      109 DUPTABLE                         R4 K18 [{"key"}]
      110 SETTABLEKS                       R0 R4 K17 ["key"]
      112 CALL                             R2 2 0
      113 GETUPVAL                         R2 0
      114 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
      116 CALL                             R2 1 0
      117 GETUPVAL                         R2 1
      118 GETTABLEKS                       R2 R2 K1 ["Stepped"]
      120 NAMECALL                         R2 R2 K2 ["Wait"]
      122 CALL                             R2 1 0
      123 GETUPVAL                         R2 1
      124 GETTABLEKS                       R2 R2 K1 ["Stepped"]
      126 NAMECALL                         R2 R2 K2 ["Wait"]
      128 CALL                             R2 1 0
      129 RETURN                           R0 0

PROTO_85:
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

PROTO_86:
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
       67 LOADK                            R7 K10 ["No result found for testId \"%*\""]
       68 MOVE                             R9 R2
       69 NAMECALL                         R7 R7 K11 ["format"]
       71 CALL                             R7 2 1
       72 FASTCALL2                        ASSERT R4 R7 ; [+4]
       74 MOVE                             R6 R4
       75 GETIMPORT                        R5 K7 [assert]
       77 CALL                             R5 2 0
       78 MOVE                             R1 R4
       79 LOADK                            R3 K12 ["TextBox"]
       80 LOADB                            R4 1
       81 NAMECALL                         R1 R1 K13 ["FindFirstChild"]
       83 CALL                             R1 3 1
       84 MOVE                             R3 R1
       85 JUMPIFNOT                        R3 ; [+4]
       86 LOADK                            R5 K12 ["TextBox"]
       87 NAMECALL                         R3 R1 K14 ["IsA"]
       89 CALL                             R3 2 1
       90 FASTCALL2K                       ASSERT R3 K15 ; [+4]
       92 LOADK                            R4 K15 ["TextBox not found"]
       93 GETIMPORT                        R2 K7 [assert]
       95 CALL                             R2 2 0
       96 MOVE                             R0 R1
       97 GETTABLEKS                       R1 R0 K16 ["Visible"]
       99 JUMPIFNOT                        R1 ; [+2]
      100 GETTABLEKS                       R1 R0 K17 ["TextEditable"]
      102 RETURN                           R1 1

PROTO_87:
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
       68 LOADK                            R9 K10 ["No result found for testId \"%*\""]
       69 MOVE                             R11 R4
       70 NAMECALL                         R9 R9 K11 ["format"]
       72 CALL                             R9 2 1
       73 FASTCALL2                        ASSERT R6 R9 ; [+4]
       75 MOVE                             R8 R6
       76 GETIMPORT                        R7 K7 [assert]
       78 CALL                             R7 2 0
       79 MOVE                             R3 R6
       80 LOADK                            R5 K12 ["TextBox"]
       81 LOADB                            R6 1
       82 NAMECALL                         R3 R3 K13 ["FindFirstChild"]
       84 CALL                             R3 3 1
       85 MOVE                             R5 R3
       86 JUMPIFNOT                        R5 ; [+4]
       87 LOADK                            R7 K12 ["TextBox"]
       88 NAMECALL                         R5 R3 K14 ["IsA"]
       90 CALL                             R5 2 1
       91 FASTCALL2K                       ASSERT R5 K15 ; [+4]
       93 LOADK                            R6 K15 ["TextBox not found"]
       94 GETIMPORT                        R4 K7 [assert]
       96 CALL                             R4 2 0
       97 MOVE                             R2 R3
       98 GETTABLEKS                       R1 R2 K16 ["Visible"]
      100 JUMPIFNOT                        R1 ; [+2]
      101 GETTABLEKS                       R1 R2 K17 ["TextEditable"]
      103 CALL                             R0 1 1
      104 GETTABLEKS                       R0 R0 K18 ["toBe"]
      106 GETUPVAL                         R1 6
      107 CALL                             R0 1 0
      108 RETURN                           R0 0

PROTO_88:
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

PROTO_89:
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

PROTO_90:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LENGTH                           R0 R1
        3 RETURN                           R0 1

PROTO_91:
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
       67 LOADK                            R7 K10 ["No result found for testId \"%*\""]
       68 MOVE                             R9 R2
       69 NAMECALL                         R7 R7 K11 ["format"]
       71 CALL                             R7 2 1
       72 FASTCALL2                        ASSERT R4 R7 ; [+4]
       74 MOVE                             R6 R4
       75 GETIMPORT                        R5 K7 [assert]
       77 CALL                             R5 2 0
       78 MOVE                             R1 R4
       79 LOADK                            R3 K12 ["TextBox"]
       80 LOADB                            R4 1
       81 NAMECALL                         R1 R1 K13 ["FindFirstChild"]
       83 CALL                             R1 3 1
       84 MOVE                             R3 R1
       85 JUMPIFNOT                        R3 ; [+4]
       86 LOADK                            R5 K12 ["TextBox"]
       87 NAMECALL                         R3 R1 K14 ["IsA"]
       89 CALL                             R3 2 1
       90 FASTCALL2K                       ASSERT R3 K15 ; [+4]
       92 LOADK                            R4 K15 ["TextBox not found"]
       93 GETIMPORT                        R2 K7 [assert]
       95 CALL                             R2 2 0
       96 MOVE                             R0 R1
       97 GETTABLEKS                       R2 R0 K16 ["PlaceholderText"]
       99 JUMPIFEQKS                       R2 K17 ["Responding..."] ; [+2]
      101 LOADB                            R1 0 +1
      102 LOADB                            R1 1
      103 RETURN                           R1 1

PROTO_92:
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

PROTO_93:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 LOADK                            R4 K9 ["ScrollingFrame"]
       48 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       50 CALL                             R2 2 1
       51 MOVE                             R4 R2
       52 JUMPIFNOT                        R4 ; [+4]
       53 LOADK                            R6 K9 ["ScrollingFrame"]
       54 NAMECALL                         R4 R2 K11 ["IsA"]
       56 CALL                             R4 2 1
       57 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       59 LOADK                            R5 K12 ["Scroll area not found for widget"]
       60 GETIMPORT                        R3 K4 [assert]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       65 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       69 DIVK                             R7 R8 K14 [2]
       70 ADD                              R5 R6 R7
       71 SUB                              R3 R4 R5
       72 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       74 SUB                              R4 R4 R3
       75 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       77 GETUPVAL                         R4 3
       78 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       80 CALL                             R4 1 0
       81 GETUPVAL                         R4 4
       82 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       84 NAMECALL                         R4 R4 K19 ["Wait"]
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 4
       88 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       90 NAMECALL                         R4 R4 K19 ["Wait"]
       92 CALL                             R4 1 0
       93 GETUPVAL                         R2 5
       94 NEWCLOSURE                       R3 P0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R1
       97 CALL                             R2 1 0
       98 GETUPVAL                         R2 3
       99 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 4
      103 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      105 NAMECALL                         R2 R2 K19 ["Wait"]
      107 CALL                             R2 1 0
      108 GETUPVAL                         R2 4
      109 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      111 NAMECALL                         R2 R2 K19 ["Wait"]
      113 CALL                             R2 1 0
      114 RETURN                           R0 0

PROTO_94:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 LOADK                            R4 K9 ["ScrollingFrame"]
       48 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       50 CALL                             R2 2 1
       51 MOVE                             R4 R2
       52 JUMPIFNOT                        R4 ; [+4]
       53 LOADK                            R6 K9 ["ScrollingFrame"]
       54 NAMECALL                         R4 R2 K11 ["IsA"]
       56 CALL                             R4 2 1
       57 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       59 LOADK                            R5 K12 ["Scroll area not found for widget"]
       60 GETIMPORT                        R3 K4 [assert]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       65 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       69 DIVK                             R7 R8 K14 [2]
       70 ADD                              R5 R6 R7
       71 SUB                              R3 R4 R5
       72 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       74 SUB                              R4 R4 R3
       75 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       77 GETUPVAL                         R4 3
       78 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       80 CALL                             R4 1 0
       81 GETUPVAL                         R4 4
       82 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       84 NAMECALL                         R4 R4 K19 ["Wait"]
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 4
       88 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       90 NAMECALL                         R4 R4 K19 ["Wait"]
       92 CALL                             R4 1 0
       93 GETUPVAL                         R2 5
       94 NEWCLOSURE                       R3 P0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R1
       97 CALL                             R2 1 0
       98 GETUPVAL                         R2 3
       99 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 4
      103 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      105 NAMECALL                         R2 R2 K19 ["Wait"]
      107 CALL                             R2 1 0
      108 GETUPVAL                         R2 4
      109 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      111 NAMECALL                         R2 R2 K19 ["Wait"]
      113 CALL                             R2 1 0
      114 RETURN                           R0 0

PROTO_95:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 LOADK                            R4 K9 ["ScrollingFrame"]
       48 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       50 CALL                             R2 2 1
       51 MOVE                             R4 R2
       52 JUMPIFNOT                        R4 ; [+4]
       53 LOADK                            R6 K9 ["ScrollingFrame"]
       54 NAMECALL                         R4 R2 K11 ["IsA"]
       56 CALL                             R4 2 1
       57 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       59 LOADK                            R5 K12 ["Scroll area not found for widget"]
       60 GETIMPORT                        R3 K4 [assert]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       65 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       69 DIVK                             R7 R8 K14 [2]
       70 ADD                              R5 R6 R7
       71 SUB                              R3 R4 R5
       72 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       74 SUB                              R4 R4 R3
       75 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       77 GETUPVAL                         R4 3
       78 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       80 CALL                             R4 1 0
       81 GETUPVAL                         R4 4
       82 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       84 NAMECALL                         R4 R4 K19 ["Wait"]
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 4
       88 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       90 NAMECALL                         R4 R4 K19 ["Wait"]
       92 CALL                             R4 1 0
       93 GETUPVAL                         R2 5
       94 NEWCLOSURE                       R3 P0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R1
       97 CALL                             R2 1 0
       98 GETUPVAL                         R2 3
       99 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 4
      103 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      105 NAMECALL                         R2 R2 K19 ["Wait"]
      107 CALL                             R2 1 0
      108 GETUPVAL                         R2 4
      109 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      111 NAMECALL                         R2 R2 K19 ["Wait"]
      113 CALL                             R2 1 0
      114 RETURN                           R0 0

PROTO_96:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 LOADK                            R4 K9 ["ScrollingFrame"]
       48 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       50 CALL                             R2 2 1
       51 MOVE                             R4 R2
       52 JUMPIFNOT                        R4 ; [+4]
       53 LOADK                            R6 K9 ["ScrollingFrame"]
       54 NAMECALL                         R4 R2 K11 ["IsA"]
       56 CALL                             R4 2 1
       57 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       59 LOADK                            R5 K12 ["Scroll area not found for widget"]
       60 GETIMPORT                        R3 K4 [assert]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       65 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       69 DIVK                             R7 R8 K14 [2]
       70 ADD                              R5 R6 R7
       71 SUB                              R3 R4 R5
       72 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       74 SUB                              R4 R4 R3
       75 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       77 GETUPVAL                         R4 3
       78 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       80 CALL                             R4 1 0
       81 GETUPVAL                         R4 4
       82 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       84 NAMECALL                         R4 R4 K19 ["Wait"]
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 4
       88 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       90 NAMECALL                         R4 R4 K19 ["Wait"]
       92 CALL                             R4 1 0
       93 GETUPVAL                         R2 5
       94 NEWCLOSURE                       R3 P0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R1
       97 CALL                             R2 1 0
       98 GETUPVAL                         R2 3
       99 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 4
      103 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      105 NAMECALL                         R2 R2 K19 ["Wait"]
      107 CALL                             R2 1 0
      108 GETUPVAL                         R2 4
      109 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      111 NAMECALL                         R2 R2 K19 ["Wait"]
      113 CALL                             R2 1 0
      114 RETURN                           R0 0

PROTO_97:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 LOADK                            R4 K9 ["ScrollingFrame"]
       48 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       50 CALL                             R2 2 1
       51 MOVE                             R4 R2
       52 JUMPIFNOT                        R4 ; [+4]
       53 LOADK                            R6 K9 ["ScrollingFrame"]
       54 NAMECALL                         R4 R2 K11 ["IsA"]
       56 CALL                             R4 2 1
       57 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       59 LOADK                            R5 K12 ["Scroll area not found for widget"]
       60 GETIMPORT                        R3 K4 [assert]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       65 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       69 DIVK                             R7 R8 K14 [2]
       70 ADD                              R5 R6 R7
       71 SUB                              R3 R4 R5
       72 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       74 SUB                              R4 R4 R3
       75 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       77 GETUPVAL                         R4 3
       78 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       80 CALL                             R4 1 0
       81 GETUPVAL                         R4 4
       82 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       84 NAMECALL                         R4 R4 K19 ["Wait"]
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 4
       88 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       90 NAMECALL                         R4 R4 K19 ["Wait"]
       92 CALL                             R4 1 0
       93 GETUPVAL                         R2 5
       94 NEWCLOSURE                       R3 P0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R1
       97 CALL                             R2 1 0
       98 GETUPVAL                         R2 3
       99 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 4
      103 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      105 NAMECALL                         R2 R2 K19 ["Wait"]
      107 CALL                             R2 1 0
      108 GETUPVAL                         R2 4
      109 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      111 NAMECALL                         R2 R2 K19 ["Wait"]
      113 CALL                             R2 1 0
      114 RETURN                           R0 0

PROTO_98:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 LOADK                            R4 K9 ["ScrollingFrame"]
       48 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       50 CALL                             R2 2 1
       51 MOVE                             R4 R2
       52 JUMPIFNOT                        R4 ; [+4]
       53 LOADK                            R6 K9 ["ScrollingFrame"]
       54 NAMECALL                         R4 R2 K11 ["IsA"]
       56 CALL                             R4 2 1
       57 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       59 LOADK                            R5 K12 ["Scroll area not found for widget"]
       60 GETIMPORT                        R3 K4 [assert]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       65 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       69 DIVK                             R7 R8 K14 [2]
       70 ADD                              R5 R6 R7
       71 SUB                              R3 R4 R5
       72 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       74 SUB                              R4 R4 R3
       75 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       77 GETUPVAL                         R4 3
       78 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       80 CALL                             R4 1 0
       81 GETUPVAL                         R4 4
       82 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       84 NAMECALL                         R4 R4 K19 ["Wait"]
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 4
       88 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       90 NAMECALL                         R4 R4 K19 ["Wait"]
       92 CALL                             R4 1 0
       93 GETUPVAL                         R2 5
       94 NEWCLOSURE                       R3 P0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R1
       97 CALL                             R2 1 0
       98 GETUPVAL                         R2 3
       99 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 4
      103 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      105 NAMECALL                         R2 R2 K19 ["Wait"]
      107 CALL                             R2 1 0
      108 GETUPVAL                         R2 4
      109 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      111 NAMECALL                         R2 R2 K19 ["Wait"]
      113 CALL                             R2 1 0
      114 RETURN                           R0 0

PROTO_99:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 RETURN                           R1 1

PROTO_100:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 LOADK                            R4 K9 ["GuiButton"]
       48 NAMECALL                         R2 R1 K10 ["FindFirstChildWhichIsA"]
       50 CALL                             R2 2 1
       51 FASTCALL2K                       ASSERT R2 K11 ; [+5]
       53 MOVE                             R4 R2
       54 LOADK                            R5 K11 ["Toggle button not found inside use selection toggle"]
       55 GETIMPORT                        R3 K4 [assert]
       57 CALL                             R3 2 0
       58 LOADK                            R5 K12 ["ScrollingFrame"]
       59 NAMECALL                         R3 R2 K13 ["FindFirstAncestorWhichIsA"]
       61 CALL                             R3 2 1
       62 MOVE                             R5 R3
       63 JUMPIFNOT                        R5 ; [+4]
       64 LOADK                            R7 K12 ["ScrollingFrame"]
       65 NAMECALL                         R5 R3 K14 ["IsA"]
       67 CALL                             R5 2 1
       68 FASTCALL2K                       ASSERT R5 K15 ; [+4]
       70 LOADK                            R6 K15 ["Scroll area not found for widget"]
       71 GETIMPORT                        R4 K4 [assert]
       73 CALL                             R4 2 0
       74 GETTABLEKS                       R5 R3 K16 ["AbsolutePosition"]
       76 GETTABLEKS                       R7 R2 K16 ["AbsolutePosition"]
       78 GETTABLEKS                       R9 R2 K18 ["AbsoluteSize"]
       80 DIVK                             R8 R9 K17 [2]
       81 ADD                              R6 R7 R8
       82 SUB                              R4 R5 R6
       83 GETTABLEKS                       R5 R3 K19 ["CanvasPosition"]
       85 SUB                              R5 R5 R4
       86 SETTABLEKS                       R5 R3 K19 ["CanvasPosition"]
       88 GETUPVAL                         R5 3
       89 NAMECALL                         R5 R5 K20 ["UpdateUnitTestOnly"]
       91 CALL                             R5 1 0
       92 GETUPVAL                         R5 4
       93 GETTABLEKS                       R5 R5 K21 ["Stepped"]
       95 NAMECALL                         R5 R5 K22 ["Wait"]
       97 CALL                             R5 1 0
       98 GETUPVAL                         R5 4
       99 GETTABLEKS                       R5 R5 K21 ["Stepped"]
      101 NAMECALL                         R5 R5 K22 ["Wait"]
      103 CALL                             R5 1 0
      104 GETUPVAL                         R3 5
      105 NEWCLOSURE                       R4 P0
      106 CAPTURE                          UPVAL U6
      107 CAPTURE                          VAL R2
      108 CALL                             R3 1 0
      109 GETUPVAL                         R3 3
      110 NAMECALL                         R3 R3 K20 ["UpdateUnitTestOnly"]
      112 CALL                             R3 1 0
      113 GETUPVAL                         R3 4
      114 GETTABLEKS                       R3 R3 K21 ["Stepped"]
      116 NAMECALL                         R3 R3 K22 ["Wait"]
      118 CALL                             R3 1 0
      119 GETUPVAL                         R3 4
      120 GETTABLEKS                       R3 R3 K21 ["Stepped"]
      122 NAMECALL                         R3 R3 K22 ["Wait"]
      124 CALL                             R3 1 0
      125 RETURN                           R0 0

PROTO_101:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_102:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_103:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantUseMarkdownPackage"]
        3 JUMPIFNOT                        R1 ; [+16]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["spyOn"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["Parsers"]
       10 GETTABLEKS                       R2 R2 K3 ["CommonMarkComplianceParser"]
       12 LOADK                            R3 K4 ["parse"]
       13 CALL                             R1 2 1
       14 GETTABLEKS                       R1 R1 K5 ["mockImplementation"]
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          VAL R0
       18 CALL                             R1 1 -1
       19 RETURN                           R1 -1
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K1 ["spyOn"]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K6 ["Util"]
       26 GETTABLEKS                       R2 R2 K7 ["MarkdownParser"]
       28 LOADK                            R3 K4 ["parse"]
       29 CALL                             R1 2 1
       30 GETTABLEKS                       R1 R1 K5 ["mockImplementation"]
       32 NEWCLOSURE                       R2 P1
       33 CAPTURE                          VAL R0
       34 CALL                             R1 1 -1
       35 RETURN                           R1 -1

PROTO_104:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 RETURN                           R1 1

PROTO_105:
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
       18 LOADK                            R3 K6 ["Carousel item with index %* not found"]
       19 MOVE                             R5 R1
       20 NAMECALL                         R3 R3 K7 ["format"]
       22 CALL                             R3 2 1
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_106:
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
       37 LOADK                            R5 K9 ["Ancestor with tag %* not found for element %*"]
       38 MOVE                             R7 R1
       39 NAMECALL                         R8 R0 K2 ["GetFullName"]
       41 CALL                             R8 1 1
       42 NAMECALL                         R5 R5 K10 ["format"]
       44 CALL                             R5 3 1
       45 FASTCALL2                        ASSERT R2 R5 ; [+4]
       47 MOVE                             R4 R2
       48 GETIMPORT                        R3 K4 [assert]
       50 CALL                             R3 2 0
       51 RETURN                           R2 1

PROTO_107:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 GETUPVAL                         R2 3
       48 MOVE                             R3 R1
       49 LOADK                            R5 K9 ["data-testid="]
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K0 ["CarouselItem"]
       53 GETTABLEKS                       R6 R6 K10 ["Root"]
       55 CONCAT                           R4 R5 R6
       56 CALL                             R2 2 1
       57 RETURN                           R2 1

PROTO_108:
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

PROTO_109:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 LOADK                            R4 K9 ["ScrollingFrame"]
       48 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       50 CALL                             R2 2 1
       51 MOVE                             R4 R2
       52 JUMPIFNOT                        R4 ; [+4]
       53 LOADK                            R6 K9 ["ScrollingFrame"]
       54 NAMECALL                         R4 R2 K11 ["IsA"]
       56 CALL                             R4 2 1
       57 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       59 LOADK                            R5 K12 ["Scroll area not found for widget"]
       60 GETIMPORT                        R3 K4 [assert]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       65 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       69 DIVK                             R7 R8 K14 [2]
       70 ADD                              R5 R6 R7
       71 SUB                              R3 R4 R5
       72 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       74 SUB                              R4 R4 R3
       75 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       77 GETUPVAL                         R4 3
       78 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       80 CALL                             R4 1 0
       81 GETUPVAL                         R4 4
       82 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       84 NAMECALL                         R4 R4 K19 ["Wait"]
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 4
       88 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       90 NAMECALL                         R4 R4 K19 ["Wait"]
       92 CALL                             R4 1 0
       93 GETUPVAL                         R2 5
       94 NEWCLOSURE                       R3 P0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R1
       97 CALL                             R2 1 0
       98 GETUPVAL                         R2 3
       99 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 4
      103 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      105 NAMECALL                         R2 R2 K19 ["Wait"]
      107 CALL                             R2 1 0
      108 GETUPVAL                         R2 4
      109 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      111 NAMECALL                         R2 R2 K19 ["Wait"]
      113 CALL                             R2 1 0
      114 RETURN                           R0 0

PROTO_110:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 LOADK                            R4 K9 ["ScrollingFrame"]
       48 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       50 CALL                             R2 2 1
       51 MOVE                             R4 R2
       52 JUMPIFNOT                        R4 ; [+4]
       53 LOADK                            R6 K9 ["ScrollingFrame"]
       54 NAMECALL                         R4 R2 K11 ["IsA"]
       56 CALL                             R4 2 1
       57 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       59 LOADK                            R5 K12 ["Scroll area not found for widget"]
       60 GETIMPORT                        R3 K4 [assert]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       65 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       69 DIVK                             R7 R8 K14 [2]
       70 ADD                              R5 R6 R7
       71 SUB                              R3 R4 R5
       72 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       74 SUB                              R4 R4 R3
       75 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       77 GETUPVAL                         R4 3
       78 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       80 CALL                             R4 1 0
       81 GETUPVAL                         R4 4
       82 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       84 NAMECALL                         R4 R4 K19 ["Wait"]
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 4
       88 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       90 NAMECALL                         R4 R4 K19 ["Wait"]
       92 CALL                             R4 1 0
       93 GETUPVAL                         R2 5
       94 NEWCLOSURE                       R3 P0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R1
       97 CALL                             R2 1 0
       98 GETUPVAL                         R2 3
       99 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 4
      103 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      105 NAMECALL                         R2 R2 K19 ["Wait"]
      107 CALL                             R2 1 0
      108 GETUPVAL                         R2 4
      109 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      111 NAMECALL                         R2 R2 K19 ["Wait"]
      113 CALL                             R2 1 0
      114 RETURN                           R0 0

PROTO_111:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 LOADK                            R4 K9 ["ScrollingFrame"]
       48 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       50 CALL                             R2 2 1
       51 MOVE                             R4 R2
       52 JUMPIFNOT                        R4 ; [+4]
       53 LOADK                            R6 K9 ["ScrollingFrame"]
       54 NAMECALL                         R4 R2 K11 ["IsA"]
       56 CALL                             R4 2 1
       57 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       59 LOADK                            R5 K12 ["Scroll area not found for widget"]
       60 GETIMPORT                        R3 K4 [assert]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       65 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       69 DIVK                             R7 R8 K14 [2]
       70 ADD                              R5 R6 R7
       71 SUB                              R3 R4 R5
       72 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       74 SUB                              R4 R4 R3
       75 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       77 GETUPVAL                         R4 3
       78 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       80 CALL                             R4 1 0
       81 GETUPVAL                         R4 4
       82 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       84 NAMECALL                         R4 R4 K19 ["Wait"]
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 4
       88 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       90 NAMECALL                         R4 R4 K19 ["Wait"]
       92 CALL                             R4 1 0
       93 GETUPVAL                         R2 5
       94 NEWCLOSURE                       R3 P0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R1
       97 CALL                             R2 1 0
       98 GETUPVAL                         R2 3
       99 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 4
      103 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      105 NAMECALL                         R2 R2 K19 ["Wait"]
      107 CALL                             R2 1 0
      108 GETUPVAL                         R2 4
      109 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      111 NAMECALL                         R2 R2 K19 ["Wait"]
      113 CALL                             R2 1 0
      114 RETURN                           R0 0

PROTO_112:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 LOADK                            R4 K9 ["ScrollingFrame"]
       48 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       50 CALL                             R2 2 1
       51 MOVE                             R4 R2
       52 JUMPIFNOT                        R4 ; [+4]
       53 LOADK                            R6 K9 ["ScrollingFrame"]
       54 NAMECALL                         R4 R2 K11 ["IsA"]
       56 CALL                             R4 2 1
       57 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       59 LOADK                            R5 K12 ["Scroll area not found for widget"]
       60 GETIMPORT                        R3 K4 [assert]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       65 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       69 DIVK                             R7 R8 K14 [2]
       70 ADD                              R5 R6 R7
       71 SUB                              R3 R4 R5
       72 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       74 SUB                              R4 R4 R3
       75 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       77 GETUPVAL                         R4 3
       78 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       80 CALL                             R4 1 0
       81 GETUPVAL                         R4 4
       82 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       84 NAMECALL                         R4 R4 K19 ["Wait"]
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 4
       88 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       90 NAMECALL                         R4 R4 K19 ["Wait"]
       92 CALL                             R4 1 0
       93 GETUPVAL                         R2 5
       94 NEWCLOSURE                       R3 P0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R1
       97 CALL                             R2 1 0
       98 GETUPVAL                         R2 3
       99 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 4
      103 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      105 NAMECALL                         R2 R2 K19 ["Wait"]
      107 CALL                             R2 1 0
      108 GETUPVAL                         R2 4
      109 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      111 NAMECALL                         R2 R2 K19 ["Wait"]
      113 CALL                             R2 1 0
      114 RETURN                           R0 0

PROTO_113:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 RETURN                           R1 1

PROTO_114:
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

PROTO_115:
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

PROTO_116:
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

PROTO_117:
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

PROTO_118:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["MessageActions"]
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 LOADK                            R4 K9 ["ScrollingFrame"]
       48 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       50 CALL                             R2 2 1
       51 MOVE                             R4 R2
       52 JUMPIFNOT                        R4 ; [+4]
       53 LOADK                            R6 K9 ["ScrollingFrame"]
       54 NAMECALL                         R4 R2 K11 ["IsA"]
       56 CALL                             R4 2 1
       57 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       59 LOADK                            R5 K12 ["Scroll area not found for widget"]
       60 GETIMPORT                        R3 K4 [assert]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       65 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       69 DIVK                             R7 R8 K14 [2]
       70 ADD                              R5 R6 R7
       71 SUB                              R3 R4 R5
       72 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       74 SUB                              R4 R4 R3
       75 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       77 GETUPVAL                         R4 3
       78 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       80 CALL                             R4 1 0
       81 GETUPVAL                         R4 4
       82 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       84 NAMECALL                         R4 R4 K19 ["Wait"]
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 4
       88 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       90 NAMECALL                         R4 R4 K19 ["Wait"]
       92 CALL                             R4 1 0
       93 GETUPVAL                         R2 5
       94 NEWCLOSURE                       R3 P0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R1
       97 CALL                             R2 1 0
       98 GETUPVAL                         R2 3
       99 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 4
      103 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      105 NAMECALL                         R2 R2 K19 ["Wait"]
      107 CALL                             R2 1 0
      108 GETUPVAL                         R2 4
      109 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      111 NAMECALL                         R2 R2 K19 ["Wait"]
      113 CALL                             R2 1 0
      114 RETURN                           R0 0

PROTO_119:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["MessageActions"]
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 LOADK                            R4 K9 ["TextLabel"]
       48 LOADB                            R5 1
       49 NAMECALL                         R2 R1 K10 ["FindFirstChildWhichIsA"]
       51 CALL                             R2 3 1
       52 FASTCALL2K                       ASSERT R2 K11 ; [+5]
       54 MOVE                             R4 R2
       55 LOADK                            R5 K11 ["Copy button has no icon TextLabel"]
       56 GETIMPORT                        R3 K4 [assert]
       58 CALL                             R3 2 0
       59 GETTABLEKS                       R3 R2 K12 ["Text"]
       61 RETURN                           R3 1

PROTO_120:
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
       24 JUMPIFNOT                        R2 ; [+7]
       25 LOADK                            R2 K10 ["%*-Filled"]
       26 GETTABLEKS                       R4 R1 K11 ["Text"]
       28 NAMECALL                         R2 R2 K12 ["format"]
       30 CALL                             R2 2 1
       31 RETURN                           R2 1
       32 GETTABLEKS                       R2 R1 K11 ["Text"]
       34 RETURN                           R2 1

PROTO_121:
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
       24 JUMPIFNOT                        R2 ; [+7]
       25 LOADK                            R2 K10 ["%*-Filled"]
       26 GETTABLEKS                       R4 R1 K11 ["Text"]
       28 NAMECALL                         R2 R2 K12 ["format"]
       30 CALL                             R2 2 1
       31 RETURN                           R2 1
       32 GETTABLEKS                       R2 R1 K11 ["Text"]
       34 RETURN                           R2 1

PROTO_122:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getConversation"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_123:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setConversation"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_124:
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

PROTO_125:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setThreadId"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_126:
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

PROTO_127:
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

PROTO_128:
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
       35 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R8 R1
       37 NAMECALL                         R6 R6 K8 ["format"]
       39 CALL                             R6 2 1
       40 FASTCALL2                        ASSERT R3 R6 ; [+4]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K4 [assert]
       45 CALL                             R4 2 0
       46 MOVE                             R0 R3
       47 GETUPVAL                         R1 3
       48 NEWCLOSURE                       R2 P0
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R0
       51 CALL                             R1 1 0
       52 GETUPVAL                         R1 5
       53 NAMECALL                         R1 R1 K9 ["UpdateUnitTestOnly"]
       55 CALL                             R1 1 0
       56 GETUPVAL                         R1 6
       57 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       59 NAMECALL                         R1 R1 K11 ["Wait"]
       61 CALL                             R1 1 0
       62 GETUPVAL                         R1 6
       63 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       65 NAMECALL                         R1 R1 K11 ["Wait"]
       67 CALL                             R1 1 0
       68 RETURN                           R0 0

PROTO_129:
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
       35 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R8 R1
       37 NAMECALL                         R6 R6 K8 ["format"]
       39 CALL                             R6 2 1
       40 FASTCALL2                        ASSERT R3 R6 ; [+4]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K4 [assert]
       45 CALL                             R4 2 0
       46 MOVE                             R0 R3
       47 RETURN                           R0 1

PROTO_130:
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
       35 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R8 R1
       37 NAMECALL                         R6 R6 K8 ["format"]
       39 CALL                             R6 2 1
       40 FASTCALL2                        ASSERT R3 R6 ; [+4]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K4 [assert]
       45 CALL                             R4 2 0
       46 MOVE                             R0 R3
       47 GETUPVAL                         R1 3
       48 NEWCLOSURE                       R2 P0
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R0
       51 CALL                             R1 1 0
       52 GETUPVAL                         R1 5
       53 NAMECALL                         R1 R1 K9 ["UpdateUnitTestOnly"]
       55 CALL                             R1 1 0
       56 GETUPVAL                         R1 6
       57 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       59 NAMECALL                         R1 R1 K11 ["Wait"]
       61 CALL                             R1 1 0
       62 GETUPVAL                         R1 6
       63 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       65 NAMECALL                         R1 R1 K11 ["Wait"]
       67 CALL                             R1 1 0
       68 GETUPVAL                         R2 0
       69 GETTABLEKS                       R2 R2 K12 ["ThreadsMenu"]
       71 GETTABLEKS                       R2 R2 K13 ["Container"]
       73 LOADNIL                          R3
       74 MOVE                             R4 R3
       75 JUMPIF                           R4 ; [+12]
       76 GETUPVAL                         R7 1
       77 JUMPIFNOTEQKNIL                  R7 ; [+2]
       79 LOADB                            R6 0 +1
       80 LOADB                            R6 1
       81 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       83 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       84 GETIMPORT                        R5 K4 [assert]
       86 CALL                             R5 2 0
       87 GETUPVAL                         R4 1
       88 MOVE                             R3 R4
       89 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       91 MOVE                             R5 R3
       92 LOADK                            R6 K5 ["Query container not found"]
       93 GETIMPORT                        R4 K4 [assert]
       95 CALL                             R4 2 0
       96 GETUPVAL                         R4 2
       97 MOVE                             R5 R3
       98 CALL                             R4 1 1
       99 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
      101 MOVE                             R5 R2
      102 CALL                             R4 1 1
      103 LOADK                            R7 K7 ["No result found for testId \"%*\""]
      104 MOVE                             R9 R2
      105 NAMECALL                         R7 R7 K8 ["format"]
      107 CALL                             R7 2 1
      108 FASTCALL2                        ASSERT R4 R7 ; [+4]
      110 MOVE                             R6 R4
      111 GETIMPORT                        R5 K4 [assert]
      113 CALL                             R5 2 0
      114 MOVE                             R1 R4
      115 GETUPVAL                         R3 0
      116 GETTABLEKS                       R3 R3 K12 ["ThreadsMenu"]
      118 GETTABLEKS                       R3 R3 K14 ["ExistingThreadButton"]
      120 MOVE                             R4 R1
      121 MOVE                             R5 R4
      122 JUMPIF                           R5 ; [+12]
      123 GETUPVAL                         R8 1
      124 JUMPIFNOTEQKNIL                  R8 ; [+2]
      126 LOADB                            R7 0 +1
      127 LOADB                            R7 1
      128 FASTCALL2K                       ASSERT R7 K2 ; [+4]
      130 LOADK                            R8 K2 ["Container not mounted, ensure render is called"]
      131 GETIMPORT                        R6 K4 [assert]
      133 CALL                             R6 2 0
      134 GETUPVAL                         R5 1
      135 MOVE                             R4 R5
      136 FASTCALL2K                       ASSERT R4 K5 ; [+5]
      138 MOVE                             R6 R4
      139 LOADK                            R7 K5 ["Query container not found"]
      140 GETIMPORT                        R5 K4 [assert]
      142 CALL                             R5 2 0
      143 GETUPVAL                         R5 2
      144 MOVE                             R6 R4
      145 CALL                             R5 1 1
      146 GETTABLEKS                       R5 R5 K15 ["getAllByTestId"]
      148 MOVE                             R6 R3
      149 CALL                             R5 1 1
      150 MOVE                             R7 R5
      151 JUMPIFNOT                        R7 ; [+6]
      152 LENGTH                           R8 R5
      153 LOADN                            R9 0
      154 JUMPIFLT                         R9 R8 ; [+2]
      156 LOADB                            R7 0 +1
      157 LOADB                            R7 1
      158 LOADK                            R8 K16 ["No results found for testId \"%*\""]
      159 MOVE                             R10 R3
      160 NAMECALL                         R8 R8 K8 ["format"]
      162 CALL                             R8 2 1
      163 FASTCALL2                        ASSERT R7 R8 ; [+3]
      165 GETIMPORT                        R6 K4 [assert]
      167 CALL                             R6 2 0
      168 MOVE                             R2 R5
      169 LENGTH                           R5 R2
      170 LOADN                            R6 0
      171 JUMPIFLT                         R6 R5 ; [+2]
      173 LOADB                            R4 0 +1
      174 LOADB                            R4 1
      175 FASTCALL2K                       ASSERT R4 K17 ; [+4]
      177 LOADK                            R5 K17 ["No existing thread found in threads menu"]
      178 GETIMPORT                        R3 K4 [assert]
      180 CALL                             R3 2 0
      181 GETTABLEN                        R3 R2 1
      182 GETUPVAL                         R4 4
      183 GETTABLEKS                       R4 R4 K18 ["mouseEnter"]
      185 MOVE                             R5 R3
      186 CALL                             R4 1 0
      187 GETUPVAL                         R4 5
      188 NAMECALL                         R4 R4 K9 ["UpdateUnitTestOnly"]
      190 CALL                             R4 1 0
      191 GETUPVAL                         R4 6
      192 GETTABLEKS                       R4 R4 K10 ["Stepped"]
      194 NAMECALL                         R4 R4 K11 ["Wait"]
      196 CALL                             R4 1 0
      197 GETUPVAL                         R4 6
      198 GETTABLEKS                       R4 R4 K10 ["Stepped"]
      200 NAMECALL                         R4 R4 K11 ["Wait"]
      202 CALL                             R4 1 0
      203 GETUPVAL                         R4 0
      204 GETTABLEKS                       R4 R4 K19 ["ThreadEntry"]
      206 GETTABLEKS                       R4 R4 K20 ["OptionsButton"]
      208 MOVE                             R5 R1
      209 MOVE                             R6 R5
      210 JUMPIF                           R6 ; [+12]
      211 GETUPVAL                         R9 1
      212 JUMPIFNOTEQKNIL                  R9 ; [+2]
      214 LOADB                            R8 0 +1
      215 LOADB                            R8 1
      216 FASTCALL2K                       ASSERT R8 K2 ; [+4]
      218 LOADK                            R9 K2 ["Container not mounted, ensure render is called"]
      219 GETIMPORT                        R7 K4 [assert]
      221 CALL                             R7 2 0
      222 GETUPVAL                         R6 1
      223 MOVE                             R5 R6
      224 FASTCALL2K                       ASSERT R5 K5 ; [+5]
      226 MOVE                             R7 R5
      227 LOADK                            R8 K5 ["Query container not found"]
      228 GETIMPORT                        R6 K4 [assert]
      230 CALL                             R6 2 0
      231 GETUPVAL                         R6 2
      232 MOVE                             R7 R5
      233 CALL                             R6 1 1
      234 GETTABLEKS                       R6 R6 K6 ["getByTestId"]
      236 MOVE                             R7 R4
      237 CALL                             R6 1 1
      238 LOADK                            R9 K7 ["No result found for testId \"%*\""]
      239 MOVE                             R11 R4
      240 NAMECALL                         R9 R9 K8 ["format"]
      242 CALL                             R9 2 1
      243 FASTCALL2                        ASSERT R6 R9 ; [+4]
      245 MOVE                             R8 R6
      246 GETIMPORT                        R7 K4 [assert]
      248 CALL                             R7 2 0
      249 MOVE                             R3 R6
      250 GETUPVAL                         R4 3
      251 NEWCLOSURE                       R5 P0
      252 CAPTURE                          UPVAL U4
      253 CAPTURE                          VAL R3
      254 CALL                             R4 1 0
      255 GETUPVAL                         R4 5
      256 NAMECALL                         R4 R4 K9 ["UpdateUnitTestOnly"]
      258 CALL                             R4 1 0
      259 GETUPVAL                         R4 6
      260 GETTABLEKS                       R4 R4 K10 ["Stepped"]
      262 NAMECALL                         R4 R4 K11 ["Wait"]
      264 CALL                             R4 1 0
      265 GETUPVAL                         R4 6
      266 GETTABLEKS                       R4 R4 K10 ["Stepped"]
      268 NAMECALL                         R4 R4 K11 ["Wait"]
      270 CALL                             R4 1 0
      271 LOADK                            R5 K21 ["%*--container"]
      272 GETUPVAL                         R7 0
      273 GETTABLEKS                       R7 R7 K22 ["ThreadOptionsMenu"]
      275 GETTABLEKS                       R7 R7 K13 ["Container"]
      277 NAMECALL                         R5 R5 K8 ["format"]
      279 CALL                             R5 2 1
      280 LOADNIL                          R6
      281 MOVE                             R7 R6
      282 JUMPIF                           R7 ; [+12]
      283 GETUPVAL                         R10 1
      284 JUMPIFNOTEQKNIL                  R10 ; [+2]
      286 LOADB                            R9 0 +1
      287 LOADB                            R9 1
      288 FASTCALL2K                       ASSERT R9 K2 ; [+4]
      290 LOADK                            R10 K2 ["Container not mounted, ensure render is called"]
      291 GETIMPORT                        R8 K4 [assert]
      293 CALL                             R8 2 0
      294 GETUPVAL                         R7 1
      295 MOVE                             R6 R7
      296 FASTCALL2K                       ASSERT R6 K5 ; [+5]
      298 MOVE                             R8 R6
      299 LOADK                            R9 K5 ["Query container not found"]
      300 GETIMPORT                        R7 K4 [assert]
      302 CALL                             R7 2 0
      303 GETUPVAL                         R7 2
      304 MOVE                             R8 R6
      305 CALL                             R7 1 1
      306 GETTABLEKS                       R7 R7 K6 ["getByTestId"]
      308 MOVE                             R8 R5
      309 CALL                             R7 1 1
      310 LOADK                            R10 K7 ["No result found for testId \"%*\""]
      311 MOVE                             R12 R5
      312 NAMECALL                         R10 R10 K8 ["format"]
      314 CALL                             R10 2 1
      315 FASTCALL2                        ASSERT R7 R10 ; [+4]
      317 MOVE                             R9 R7
      318 GETIMPORT                        R8 K4 [assert]
      320 CALL                             R8 2 0
      321 MOVE                             R4 R7
      322 GETUPVAL                         R5 7
      323 LOADK                            R7 K12 ["ThreadsMenu"]
      324 LOADK                            R8 K23 ["DeleteThread"]
      325 NAMECALL                         R5 R5 K24 ["getText"]
      327 CALL                             R5 3 1
      328 GETUPVAL                         R6 8
      329 MOVE                             R7 R5
      330 MOVE                             R8 R4
      331 DUPTABLE                         R9 K27 [{["exact"] = True}]
      332 CALL                             R6 3 1
      333 LOADK                            R9 K28 ["GuiButton"]
      334 NAMECALL                         R7 R6 K29 ["FindFirstAncestorWhichIsA"]
      336 CALL                             R7 2 1
      337 FASTCALL2K                       ASSERT R7 K30 ; [+5]
      339 MOVE                             R9 R7
      340 LOADK                            R10 K30 ["No GuiButton ancestor found for delete thread label"]
      341 GETIMPORT                        R8 K4 [assert]
      343 CALL                             R8 2 0
      344 GETUPVAL                         R8 3
      345 NEWCLOSURE                       R9 P0
      346 CAPTURE                          UPVAL U4
      347 CAPTURE                          VAL R7
      348 CALL                             R8 1 0
      349 GETUPVAL                         R8 5
      350 NAMECALL                         R8 R8 K9 ["UpdateUnitTestOnly"]
      352 CALL                             R8 1 0
      353 GETUPVAL                         R8 6
      354 GETTABLEKS                       R8 R8 K10 ["Stepped"]
      356 NAMECALL                         R8 R8 K11 ["Wait"]
      358 CALL                             R8 1 0
      359 GETUPVAL                         R8 6
      360 GETTABLEKS                       R8 R8 K10 ["Stepped"]
      362 NAMECALL                         R8 R8 K11 ["Wait"]
      364 CALL                             R8 1 0
      365 RETURN                           R0 0

PROTO_131:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["wasToolInvoked"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_132:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_133:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["overrideMethod"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_134:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getClientObject"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_135:
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

PROTO_136:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getClientObject"]
        3 CALL                             R0 0 1
        4 NAMECALL                         R1 R0 K1 ["close"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_137:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getToolAlias"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_138:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["wasRequestHandlerCalled"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_139:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getLastRequestHandlerBody"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 GETTABLE                         R2 R1 R0
        6 JUMPIF                           R2 ; [+1]
        7 LOADNIL                          R2
        8 RETURN                           R2 1

PROTO_140:
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

PROTO_141:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 LOADK                            R3 K0 ["GuiObject"]
        4 NAMECALL                         R1 R0 K1 ["IsA"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_142:
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

PROTO_143:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setInputOverride"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_144:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_145:
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
       35 LOADK                            R7 K6 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R1
       37 NAMECALL                         R7 R7 K7 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K3 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R2 R4
       47 LOADK                            R6 K8 ["GuiButton"]
       48 NAMECALL                         R4 R2 K9 ["IsA"]
       50 CALL                             R4 2 1
       51 LOADK                            R5 K10 ["Provider checkbox is not a GuiButton for %* (testId: %*)"]
       52 MOVE                             R7 R0
       53 MOVE                             R8 R1
       54 NAMECALL                         R5 R5 K7 ["format"]
       56 CALL                             R5 3 1
       57 FASTCALL2                        ASSERT R4 R5 ; [+3]
       59 GETIMPORT                        R3 K3 [assert]
       61 CALL                             R3 2 0
       62 RETURN                           R2 1

PROTO_146:
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

PROTO_147:
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
       35 LOADK                            R8 K6 ["No result found for testId \"%*\""]
       36 MOVE                             R10 R2
       37 NAMECALL                         R8 R8 K7 ["format"]
       39 CALL                             R8 2 1
       40 FASTCALL2                        ASSERT R5 R8 ; [+4]
       42 MOVE                             R7 R5
       43 GETIMPORT                        R6 K3 [assert]
       45 CALL                             R6 2 0
       46 MOVE                             R3 R5
       47 LOADK                            R7 K8 ["GuiButton"]
       48 NAMECALL                         R5 R3 K9 ["IsA"]
       50 CALL                             R5 2 1
       51 LOADK                            R6 K10 ["Provider checkbox is not a GuiButton for %* (testId: %*)"]
       52 MOVE                             R8 R0
       53 MOVE                             R9 R2
       54 NAMECALL                         R6 R6 K7 ["format"]
       56 CALL                             R6 3 1
       57 FASTCALL2                        ASSERT R5 R6 ; [+3]
       59 GETIMPORT                        R4 K3 [assert]
       61 CALL                             R4 2 0
       62 MOVE                             R1 R3
       63 LOADK                            R4 K11 ["ScrollingFrame"]
       64 NAMECALL                         R2 R1 K12 ["FindFirstAncestorWhichIsA"]
       66 CALL                             R2 2 1
       67 MOVE                             R4 R2
       68 JUMPIFNOT                        R4 ; [+4]
       69 LOADK                            R6 K11 ["ScrollingFrame"]
       70 NAMECALL                         R4 R2 K9 ["IsA"]
       72 CALL                             R4 2 1
       73 FASTCALL2K                       ASSERT R4 K13 ; [+4]
       75 LOADK                            R5 K13 ["Scroll area not found for widget"]
       76 GETIMPORT                        R3 K3 [assert]
       78 CALL                             R3 2 0
       79 GETTABLEKS                       R4 R2 K14 ["AbsolutePosition"]
       81 GETTABLEKS                       R6 R1 K14 ["AbsolutePosition"]
       83 GETTABLEKS                       R8 R1 K16 ["AbsoluteSize"]
       85 DIVK                             R7 R8 K15 [2]
       86 ADD                              R5 R6 R7
       87 SUB                              R3 R4 R5
       88 GETTABLEKS                       R4 R2 K17 ["CanvasPosition"]
       90 SUB                              R4 R4 R3
       91 SETTABLEKS                       R4 R2 K17 ["CanvasPosition"]
       93 GETUPVAL                         R4 3
       94 NAMECALL                         R4 R4 K18 ["UpdateUnitTestOnly"]
       96 CALL                             R4 1 0
       97 GETUPVAL                         R4 4
       98 GETTABLEKS                       R4 R4 K19 ["Stepped"]
      100 NAMECALL                         R4 R4 K20 ["Wait"]
      102 CALL                             R4 1 0
      103 GETUPVAL                         R4 4
      104 GETTABLEKS                       R4 R4 K19 ["Stepped"]
      106 NAMECALL                         R4 R4 K20 ["Wait"]
      108 CALL                             R4 1 0
      109 GETUPVAL                         R2 5
      110 NEWCLOSURE                       R3 P0
      111 CAPTURE                          VAL R1
      112 CAPTURE                          UPVAL U5
      113 CAPTURE                          UPVAL U6
      114 CAPTURE                          UPVAL U3
      115 CAPTURE                          UPVAL U4
      116 CALL                             R2 1 0
      117 RETURN                           R0 0

PROTO_148:
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

PROTO_149:
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
       35 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R8 R1
       37 NAMECALL                         R6 R6 K8 ["format"]
       39 CALL                             R6 2 1
       40 FASTCALL2                        ASSERT R3 R6 ; [+4]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K4 [assert]
       45 CALL                             R4 2 0
       46 MOVE                             R0 R3
       47 RETURN                           R0 1

PROTO_150:
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
       35 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R8 R1
       37 NAMECALL                         R6 R6 K8 ["format"]
       39 CALL                             R6 2 1
       40 FASTCALL2                        ASSERT R3 R6 ; [+4]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K4 [assert]
       45 CALL                             R4 2 0
       46 MOVE                             R0 R3
       47 GETUPVAL                         R2 0
       48 GETTABLEKS                       R2 R2 K0 ["ModelPicker"]
       50 GETTABLEKS                       R2 R2 K9 ["Dropdown"]
       52 MOVE                             R3 R0
       53 MOVE                             R4 R3
       54 JUMPIF                           R4 ; [+12]
       55 GETUPVAL                         R7 1
       56 JUMPIFNOTEQKNIL                  R7 ; [+2]
       58 LOADB                            R6 0 +1
       59 LOADB                            R6 1
       60 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       62 LOADK                            R7 K2 ["Container not mounted, ensure render is called"]
       63 GETIMPORT                        R5 K4 [assert]
       65 CALL                             R5 2 0
       66 GETUPVAL                         R4 1
       67 MOVE                             R3 R4
       68 FASTCALL2K                       ASSERT R3 K5 ; [+5]
       70 MOVE                             R5 R3
       71 LOADK                            R6 K5 ["Query container not found"]
       72 GETIMPORT                        R4 K4 [assert]
       74 CALL                             R4 2 0
       75 GETUPVAL                         R4 2
       76 MOVE                             R5 R3
       77 CALL                             R4 1 1
       78 GETTABLEKS                       R4 R4 K6 ["getByTestId"]
       80 MOVE                             R5 R2
       81 CALL                             R4 1 1
       82 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       83 MOVE                             R9 R2
       84 NAMECALL                         R7 R7 K8 ["format"]
       86 CALL                             R7 2 1
       87 FASTCALL2                        ASSERT R4 R7 ; [+4]
       89 MOVE                             R6 R4
       90 GETIMPORT                        R5 K4 [assert]
       92 CALL                             R5 2 0
       93 MOVE                             R1 R4
       94 NAMECALL                         R2 R1 K10 ["GetDescendants"]
       96 CALL                             R2 1 1
       97 MOVE                             R3 R2
       98 LOADNIL                          R4
       99 LOADNIL                          R5
      100 FORGPREP                         R3
      101 LOADK                            R10 K11 ["TextLabel"]
      102 NAMECALL                         R8 R7 K12 ["IsA"]
      104 CALL                             R8 2 1
      105 JUMPIFNOT                        R8 ; [+24]
      106 GETTABLEKS                       R8 R7 K13 ["Text"]
      108 JUMPIFNOT                        R8 ; [+21]
      109 FASTCALL1                        STRING_LEN R8 ; [+3]
      110 MOVE                             R10 R8
      111 GETIMPORT                        R9 K16 [string.len]
      113 CALL                             R9 1 1
      114 LOADN                            R10 0
      115 JUMPIFNOTLT                      R10 R9 ; [+14]
      117 GETIMPORT                        R9 K18 [string.find]
      119 MOVE                             R10 R8
      120 LOADK                            R11 K19 ["chevron"]
      121 CALL                             R9 2 1
      122 JUMPIF                           R9 ; [+7]
      123 GETIMPORT                        R9 K18 [string.find]
      125 MOVE                             R10 R8
      126 LOADK                            R11 K20 ["icon"]
      127 CALL                             R9 2 1
      128 JUMPIF                           R9 ; [+1]
      129 RETURN                           R8 1
      130 FORGLOOP                         R3 2 ; [-30]
      132 GETUPVAL                         R3 3
      133 GETTABLEKS                       R3 R3 K21 ["DEFAULT_STUDIO_MODEL"]
      135 RETURN                           R3 1

PROTO_151:
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

PROTO_152:
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

PROTO_153:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K0 ["ModelPicker"]
       50 GETTABLEKS                       R3 R3 K9 ["Dropdown"]
       52 MOVE                             R4 R1
       53 MOVE                             R5 R4
       54 JUMPIF                           R5 ; [+12]
       55 GETUPVAL                         R8 1
       56 JUMPIFNOTEQKNIL                  R8 ; [+2]
       58 LOADB                            R7 0 +1
       59 LOADB                            R7 1
       60 FASTCALL2K                       ASSERT R7 K2 ; [+4]
       62 LOADK                            R8 K2 ["Container not mounted, ensure render is called"]
       63 GETIMPORT                        R6 K4 [assert]
       65 CALL                             R6 2 0
       66 GETUPVAL                         R5 1
       67 MOVE                             R4 R5
       68 FASTCALL2K                       ASSERT R4 K5 ; [+5]
       70 MOVE                             R6 R4
       71 LOADK                            R7 K5 ["Query container not found"]
       72 GETIMPORT                        R5 K4 [assert]
       74 CALL                             R5 2 0
       75 GETUPVAL                         R5 2
       76 MOVE                             R6 R4
       77 CALL                             R5 1 1
       78 GETTABLEKS                       R5 R5 K6 ["getByTestId"]
       80 MOVE                             R6 R3
       81 CALL                             R5 1 1
       82 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       83 MOVE                             R10 R3
       84 NAMECALL                         R8 R8 K8 ["format"]
       86 CALL                             R8 2 1
       87 FASTCALL2                        ASSERT R5 R8 ; [+4]
       89 MOVE                             R7 R5
       90 GETIMPORT                        R6 K4 [assert]
       92 CALL                             R6 2 0
       93 MOVE                             R2 R5
       94 LOADNIL                          R3
       95 NAMECALL                         R4 R2 K10 ["GetDescendants"]
       97 CALL                             R4 1 3
       98 FORGPREP                         R4
       99 LOADK                            R11 K11 ["ImageButton"]
      100 NAMECALL                         R9 R8 K12 ["IsA"]
      102 CALL                             R9 2 1
      103 JUMPIF                           R9 ; [+5]
      104 LOADK                            R11 K13 ["TextButton"]
      105 NAMECALL                         R9 R8 K12 ["IsA"]
      107 CALL                             R9 2 1
      108 JUMPIFNOT                        R9 ; [+2]
      109 MOVE                             R3 R8
      110 JUMP                             ; [+2]
      111 FORGLOOP                         R4 2 ; [-13]
      113 FASTCALL2K                       ASSERT R3 K14 ; [+5]
      115 MOVE                             R5 R3
      116 LOADK                            R6 K14 ["No clickable button found in dropdown"]
      117 GETIMPORT                        R4 K4 [assert]
      119 CALL                             R4 2 0
      120 MOVE                             R4 R3
      121 LOADK                            R7 K15 ["ScrollingFrame"]
      122 NAMECALL                         R5 R4 K16 ["FindFirstAncestorWhichIsA"]
      124 CALL                             R5 2 1
      125 MOVE                             R7 R5
      126 JUMPIFNOT                        R7 ; [+4]
      127 LOADK                            R9 K15 ["ScrollingFrame"]
      128 NAMECALL                         R7 R5 K12 ["IsA"]
      130 CALL                             R7 2 1
      131 FASTCALL2K                       ASSERT R7 K17 ; [+4]
      133 LOADK                            R8 K17 ["Scroll area not found for widget"]
      134 GETIMPORT                        R6 K4 [assert]
      136 CALL                             R6 2 0
      137 GETTABLEKS                       R7 R5 K18 ["AbsolutePosition"]
      139 GETTABLEKS                       R9 R4 K18 ["AbsolutePosition"]
      141 GETTABLEKS                       R11 R4 K20 ["AbsoluteSize"]
      143 DIVK                             R10 R11 K19 [2]
      144 ADD                              R8 R9 R10
      145 SUB                              R6 R7 R8
      146 GETTABLEKS                       R7 R5 K21 ["CanvasPosition"]
      148 SUB                              R7 R7 R6
      149 SETTABLEKS                       R7 R5 K21 ["CanvasPosition"]
      151 GETUPVAL                         R7 3
      152 NAMECALL                         R7 R7 K22 ["UpdateUnitTestOnly"]
      154 CALL                             R7 1 0
      155 GETUPVAL                         R7 4
      156 GETTABLEKS                       R7 R7 K23 ["Stepped"]
      158 NAMECALL                         R7 R7 K24 ["Wait"]
      160 CALL                             R7 1 0
      161 GETUPVAL                         R7 4
      162 GETTABLEKS                       R7 R7 K23 ["Stepped"]
      164 NAMECALL                         R7 R7 K24 ["Wait"]
      166 CALL                             R7 1 0
      167 GETUPVAL                         R4 5
      168 NEWCLOSURE                       R5 P0
      169 CAPTURE                          REF R3
      170 CAPTURE                          UPVAL U5
      171 CAPTURE                          UPVAL U6
      172 CAPTURE                          UPVAL U3
      173 CAPTURE                          UPVAL U4
      174 CALL                             R4 1 0
      175 GETUPVAL                         R4 2
      176 GETUPVAL                         R8 1
      177 JUMPIFNOTEQKNIL                  R8 ; [+2]
      179 LOADB                            R7 0 +1
      180 LOADB                            R7 1
      181 FASTCALL2K                       ASSERT R7 K2 ; [+4]
      183 LOADK                            R8 K2 ["Container not mounted, ensure render is called"]
      184 GETIMPORT                        R6 K4 [assert]
      186 CALL                             R6 2 0
      187 GETUPVAL                         R5 1
      188 CALL                             R4 1 1
      189 GETTABLEKS                       R4 R4 K25 ["queryByText"]
      191 MOVE                             R5 R0
      192 DUPTABLE                         R6 K28 [{["exact"] = True}]
      193 CALL                             R4 2 1
      194 LOADK                            R7 K29 ["Model option not found: %*"]
      195 MOVE                             R9 R0
      196 NAMECALL                         R7 R7 K8 ["format"]
      198 CALL                             R7 2 1
      199 FASTCALL2                        ASSERT R4 R7 ; [+4]
      201 MOVE                             R6 R4
      202 GETIMPORT                        R5 K4 [assert]
      204 CALL                             R5 2 0
      205 GETUPVAL                         R5 5
      206 NEWCLOSURE                       R6 P1
      207 CAPTURE                          VAL R4
      208 CAPTURE                          UPVAL U5
      209 CAPTURE                          UPVAL U6
      210 CAPTURE                          UPVAL U3
      211 CAPTURE                          UPVAL U4
      212 CALL                             R5 1 0
      213 CLOSEUPVALS                      R3
      214 RETURN                           R0 0

PROTO_154:
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
       37 LOADK                            R6 K8 ["No result found for testId \"%*\""]
       38 MOVE                             R8 R1
       39 NAMECALL                         R6 R6 K9 ["format"]
       41 CALL                             R6 2 1
       42 FASTCALL2                        ASSERT R3 R6 ; [+4]
       44 MOVE                             R5 R3
       45 GETIMPORT                        R4 K5 [assert]
       47 CALL                             R4 2 0
       48 MOVE                             R0 R3
       49 RETURN                           R0 1

PROTO_155:
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
       37 LOADK                            R7 K8 ["No result found for testId \"%*\""]
       38 MOVE                             R9 R2
       39 NAMECALL                         R7 R7 K9 ["format"]
       41 CALL                             R7 2 1
       42 FASTCALL2                        ASSERT R4 R7 ; [+4]
       44 MOVE                             R6 R4
       45 GETIMPORT                        R5 K5 [assert]
       47 CALL                             R5 2 0
       48 MOVE                             R1 R4
       49 GETUPVAL                         R3 2
       50 MOVE                             R4 R1
       51 CALL                             R3 1 1
       52 GETTABLEKS                       R3 R3 K10 ["queryByText"]
       54 MOVE                             R4 R0
       55 CALL                             R3 1 1
       56 JUMPIFNOTEQKNIL                  R3 ; [+2]
       58 LOADB                            R2 0 +1
       59 LOADB                            R2 1
       60 RETURN                           R2 1

PROTO_156:
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
       37 LOADK                            R6 K8 ["No result found for testId \"%*\""]
       38 MOVE                             R8 R1
       39 NAMECALL                         R6 R6 K9 ["format"]
       41 CALL                             R6 2 1
       42 FASTCALL2                        ASSERT R3 R6 ; [+4]
       44 MOVE                             R5 R3
       45 GETIMPORT                        R4 K5 [assert]
       47 CALL                             R4 2 0
       48 MOVE                             R0 R3
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R2 R2 K0 ["InputArea"]
       52 GETTABLEKS                       R2 R2 K1 ["Footer"]
       54 GETTABLEKS                       R2 R2 K10 ["Icon"]
       56 MOVE                             R3 R0
       57 MOVE                             R4 R3
       58 JUMPIF                           R4 ; [+12]
       59 GETUPVAL                         R7 1
       60 JUMPIFNOTEQKNIL                  R7 ; [+2]
       62 LOADB                            R6 0 +1
       63 LOADB                            R6 1
       64 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       66 LOADK                            R7 K3 ["Container not mounted, ensure render is called"]
       67 GETIMPORT                        R5 K5 [assert]
       69 CALL                             R5 2 0
       70 GETUPVAL                         R4 1
       71 MOVE                             R3 R4
       72 FASTCALL2K                       ASSERT R3 K6 ; [+5]
       74 MOVE                             R5 R3
       75 LOADK                            R6 K6 ["Query container not found"]
       76 GETIMPORT                        R4 K5 [assert]
       78 CALL                             R4 2 0
       79 GETUPVAL                         R4 2
       80 MOVE                             R5 R3
       81 CALL                             R4 1 1
       82 GETTABLEKS                       R4 R4 K11 ["queryByTestId"]
       84 MOVE                             R5 R2
       85 CALL                             R4 1 1
       86 MOVE                             R1 R4
       87 JUMPIFNOTEQKNIL                  R1 ; [+2]
       89 LOADB                            R2 0 +1
       90 LOADB                            R2 1
       91 RETURN                           R2 1

PROTO_157:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["get"]
        3 GETIMPORT                        R1 K2 [game]
        5 LOADK                            R2 K3 ["data-testid=%*"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K4 ["ToolMenuView"]
        9 GETTABLEKS                       R4 R4 K5 ["Container"]
       11 NAMECALL                         R2 R2 K6 ["format"]
       13 CALL                             R2 2 1
       14 CALL                             R0 2 1
       15 MOVE                             R2 R0
       16 JUMPIFNOT                        R2 ; [+4]
       17 LOADK                            R4 K7 ["GuiObject"]
       18 NAMECALL                         R2 R0 K8 ["IsA"]
       20 CALL                             R2 2 1
       21 FASTCALL2K                       ASSERT R2 K9 ; [+4]
       23 LOADK                            R3 K9 ["ToolMenuView not found"]
       24 GETIMPORT                        R1 K11 [assert]
       26 CALL                             R1 2 0
       27 RETURN                           R0 1

PROTO_158:
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
       35 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R8 R1
       37 NAMECALL                         R6 R6 K8 ["format"]
       39 CALL                             R6 2 1
       40 FASTCALL2                        ASSERT R3 R6 ; [+4]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K4 [assert]
       45 CALL                             R4 2 0
       46 MOVE                             R0 R3
       47 GETUPVAL                         R1 3
       48 NEWCLOSURE                       R2 P0
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R0
       51 CALL                             R1 1 0
       52 GETUPVAL                         R1 5
       53 NAMECALL                         R1 R1 K9 ["UpdateUnitTestOnly"]
       55 CALL                             R1 1 0
       56 GETUPVAL                         R1 6
       57 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       59 NAMECALL                         R1 R1 K11 ["Wait"]
       61 CALL                             R1 1 0
       62 GETUPVAL                         R1 6
       63 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       65 NAMECALL                         R1 R1 K11 ["Wait"]
       67 CALL                             R1 1 0
       68 RETURN                           R0 0

PROTO_159:
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
       15 LOADK                            R2 K4 ["data-testid=%*"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K5 ["IntegrationMenu"]
       19 GETTABLEKS                       R4 R4 K6 ["AddIntegrationDialog"]
       21 NAMECALL                         R2 R2 K7 ["format"]
       23 CALL                             R2 2 1
       24 CALL                             R0 2 1
       25 MOVE                             R2 R0
       26 JUMPIFNOT                        R2 ; [+4]
       27 LOADK                            R4 K8 ["GuiObject"]
       28 NAMECALL                         R2 R0 K9 ["IsA"]
       30 CALL                             R2 2 1
       31 FASTCALL2K                       ASSERT R2 K10 ; [+4]
       33 LOADK                            R3 K10 ["Add integration dialog not found"]
       34 GETIMPORT                        R1 K3 [assert]
       36 CALL                             R1 2 0
       37 RETURN                           R0 1

PROTO_160:
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
       15 LOADK                            R2 K4 ["data-testid=%*"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K5 ["IntegrationItem"]
       19 GETTABLEKS                       R4 R4 K6 ["Dialog"]
       21 NAMECALL                         R2 R2 K7 ["format"]
       23 CALL                             R2 2 1
       24 CALL                             R0 2 1
       25 MOVE                             R2 R0
       26 JUMPIFNOT                        R2 ; [+4]
       27 LOADK                            R4 K8 ["GuiObject"]
       28 NAMECALL                         R2 R0 K9 ["IsA"]
       30 CALL                             R2 2 1
       31 FASTCALL2K                       ASSERT R2 K10 ; [+4]
       33 LOADK                            R3 K10 ["Integration item dialog not found"]
       34 GETIMPORT                        R1 K3 [assert]
       36 CALL                             R1 2 0
       37 RETURN                           R0 1

PROTO_161:
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
       15 LOADK                            R2 K4 ["data-testid=%*"]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K5 ["IntegrationMenu"]
       19 GETTABLEKS                       R4 R4 K6 ["EmptyState"]
       21 NAMECALL                         R2 R2 K7 ["format"]
       23 CALL                             R2 2 1
       24 CALL                             R0 2 1
       25 MOVE                             R2 R0
       26 JUMPIFNOT                        R2 ; [+4]
       27 LOADK                            R4 K8 ["GuiObject"]
       28 NAMECALL                         R2 R0 K9 ["IsA"]
       30 CALL                             R2 2 1
       31 FASTCALL2K                       ASSERT R2 K10 ; [+4]
       33 LOADK                            R3 K10 ["Integration menu empty state not found"]
       34 GETIMPORT                        R1 K3 [assert]
       36 CALL                             R1 2 0
       37 RETURN                           R0 1

PROTO_162:
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
       35 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R8 R1
       37 NAMECALL                         R6 R6 K8 ["format"]
       39 CALL                             R6 2 1
       40 FASTCALL2                        ASSERT R3 R6 ; [+4]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K4 [assert]
       45 CALL                             R4 2 0
       46 MOVE                             R0 R3
       47 RETURN                           R0 1

PROTO_163:
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
       35 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R8 R1
       37 NAMECALL                         R6 R6 K8 ["format"]
       39 CALL                             R6 2 1
       40 FASTCALL2                        ASSERT R3 R6 ; [+4]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K4 [assert]
       45 CALL                             R4 2 0
       46 MOVE                             R0 R3
       47 RETURN                           R0 1

PROTO_164:
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
       35 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R8 R1
       37 NAMECALL                         R6 R6 K8 ["format"]
       39 CALL                             R6 2 1
       40 FASTCALL2                        ASSERT R3 R6 ; [+4]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K4 [assert]
       45 CALL                             R4 2 0
       46 MOVE                             R0 R3
       47 RETURN                           R0 1

PROTO_165:
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
       36 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R9 R2
       38 NAMECALL                         R7 R7 K8 ["format"]
       40 CALL                             R7 2 1
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 RETURN                           R1 1

PROTO_166:
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

PROTO_167:
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

PROTO_168:
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
       36 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R9 R2
       38 NAMECALL                         R7 R7 K8 ["format"]
       40 CALL                             R7 2 1
       41 FASTCALL2                        ASSERT R4 R7 ; [+4]
       43 MOVE                             R6 R4
       44 GETIMPORT                        R5 K4 [assert]
       46 CALL                             R5 2 0
       47 MOVE                             R1 R4
       48 GETUPVAL                         R2 3
       49 NEWCLOSURE                       R3 P0
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          VAL R1
       52 CALL                             R2 1 0
       53 GETUPVAL                         R2 5
       54 NAMECALL                         R2 R2 K9 ["UpdateUnitTestOnly"]
       56 CALL                             R2 1 0
       57 GETUPVAL                         R2 6
       58 GETTABLEKS                       R2 R2 K10 ["Stepped"]
       60 NAMECALL                         R2 R2 K11 ["Wait"]
       62 CALL                             R2 1 0
       63 GETUPVAL                         R2 6
       64 GETTABLEKS                       R2 R2 K10 ["Stepped"]
       66 NAMECALL                         R2 R2 K11 ["Wait"]
       68 CALL                             R2 1 0
       69 RETURN                           R0 0

PROTO_169:
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
       35 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R8 R1
       37 NAMECALL                         R6 R6 K8 ["format"]
       39 CALL                             R6 2 1
       40 FASTCALL2                        ASSERT R3 R6 ; [+4]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K4 [assert]
       45 CALL                             R4 2 0
       46 MOVE                             R0 R3
       47 GETUPVAL                         R1 3
       48 NEWCLOSURE                       R2 P0
       49 CAPTURE                          UPVAL U4
       50 CAPTURE                          VAL R0
       51 CALL                             R1 1 0
       52 GETUPVAL                         R1 5
       53 NAMECALL                         R1 R1 K9 ["UpdateUnitTestOnly"]
       55 CALL                             R1 1 0
       56 GETUPVAL                         R1 6
       57 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       59 NAMECALL                         R1 R1 K11 ["Wait"]
       61 CALL                             R1 1 0
       62 GETUPVAL                         R1 6
       63 GETTABLEKS                       R1 R1 K10 ["Stepped"]
       65 NAMECALL                         R1 R1 K11 ["Wait"]
       67 CALL                             R1 1 0
       68 RETURN                           R0 0

PROTO_170:
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
       37 LOADK                            R6 K8 ["No result found for testId \"%*\""]
       38 MOVE                             R8 R1
       39 NAMECALL                         R6 R6 K9 ["format"]
       41 CALL                             R6 2 1
       42 FASTCALL2                        ASSERT R3 R6 ; [+4]
       44 MOVE                             R5 R3
       45 GETIMPORT                        R4 K5 [assert]
       47 CALL                             R4 2 0
       48 MOVE                             R0 R3
       49 RETURN                           R0 1

PROTO_171:
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

PROTO_172:
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

PROTO_173:
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
       37 LOADK                            R6 K8 ["No result found for testId \"%*\""]
       38 MOVE                             R8 R1
       39 NAMECALL                         R6 R6 K9 ["format"]
       41 CALL                             R6 2 1
       42 FASTCALL2                        ASSERT R3 R6 ; [+4]
       44 MOVE                             R5 R3
       45 GETIMPORT                        R4 K5 [assert]
       47 CALL                             R4 2 0
       48 MOVE                             R0 R3
       49 RETURN                           R0 1

PROTO_174:
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
       37 LOADK                            R6 K8 ["No result found for testId \"%*\""]
       38 MOVE                             R8 R1
       39 NAMECALL                         R6 R6 K9 ["format"]
       41 CALL                             R6 2 1
       42 FASTCALL2                        ASSERT R3 R6 ; [+4]
       44 MOVE                             R5 R3
       45 GETIMPORT                        R4 K5 [assert]
       47 CALL                             R4 2 0
       48 MOVE                             R0 R3
       49 RETURN                           R0 1

PROTO_175:
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
       37 LOADK                            R6 K8 ["No result found for testId \"%*\""]
       38 MOVE                             R8 R1
       39 NAMECALL                         R6 R6 K9 ["format"]
       41 CALL                             R6 2 1
       42 FASTCALL2                        ASSERT R3 R6 ; [+4]
       44 MOVE                             R5 R3
       45 GETIMPORT                        R4 K5 [assert]
       47 CALL                             R4 2 0
       48 MOVE                             R0 R3
       49 RETURN                           R0 1

PROTO_176:
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
       37 LOADK                            R6 K8 ["No result found for testId \"%*\""]
       38 MOVE                             R8 R1
       39 NAMECALL                         R6 R6 K9 ["format"]
       41 CALL                             R6 2 1
       42 FASTCALL2                        ASSERT R3 R6 ; [+4]
       44 MOVE                             R5 R3
       45 GETIMPORT                        R4 K5 [assert]
       47 CALL                             R4 2 0
       48 MOVE                             R0 R3
       49 GETUPVAL                         R1 3
       50 NEWCLOSURE                       R2 P0
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R0
       53 CALL                             R1 1 0
       54 GETUPVAL                         R1 5
       55 NAMECALL                         R1 R1 K10 ["UpdateUnitTestOnly"]
       57 CALL                             R1 1 0
       58 GETUPVAL                         R1 6
       59 GETTABLEKS                       R1 R1 K11 ["Stepped"]
       61 NAMECALL                         R1 R1 K12 ["Wait"]
       63 CALL                             R1 1 0
       64 GETUPVAL                         R1 6
       65 GETTABLEKS                       R1 R1 K11 ["Stepped"]
       67 NAMECALL                         R1 R1 K12 ["Wait"]
       69 CALL                             R1 1 0
       70 RETURN                           R0 0

PROTO_177:
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
       37 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       38 MOVE                             R9 R1
       39 NAMECALL                         R7 R7 K8 ["format"]
       41 CALL                             R7 2 1
       42 FASTCALL2                        ASSERT R4 R7 ; [+4]
       44 MOVE                             R6 R4
       45 GETIMPORT                        R5 K4 [assert]
       47 CALL                             R5 2 0
       48 MOVE                             R2 R4
       49 LOADK                            R5 K9 ["ScrollingFrame"]
       50 NAMECALL                         R3 R2 K10 ["FindFirstAncestorWhichIsA"]
       52 CALL                             R3 2 1
       53 MOVE                             R5 R3
       54 JUMPIFNOT                        R5 ; [+4]
       55 LOADK                            R7 K9 ["ScrollingFrame"]
       56 NAMECALL                         R5 R3 K11 ["IsA"]
       58 CALL                             R5 2 1
       59 FASTCALL2K                       ASSERT R5 K12 ; [+4]
       61 LOADK                            R6 K12 ["Scroll area not found for widget"]
       62 GETIMPORT                        R4 K4 [assert]
       64 CALL                             R4 2 0
       65 GETTABLEKS                       R5 R3 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R7 R2 K13 ["AbsolutePosition"]
       69 GETTABLEKS                       R9 R2 K15 ["AbsoluteSize"]
       71 DIVK                             R8 R9 K14 [2]
       72 ADD                              R6 R7 R8
       73 SUB                              R4 R5 R6
       74 GETTABLEKS                       R5 R3 K16 ["CanvasPosition"]
       76 SUB                              R5 R5 R4
       77 SETTABLEKS                       R5 R3 K16 ["CanvasPosition"]
       79 GETUPVAL                         R5 3
       80 NAMECALL                         R5 R5 K17 ["UpdateUnitTestOnly"]
       82 CALL                             R5 1 0
       83 GETUPVAL                         R5 4
       84 GETTABLEKS                       R5 R5 K18 ["Stepped"]
       86 NAMECALL                         R5 R5 K19 ["Wait"]
       88 CALL                             R5 1 0
       89 GETUPVAL                         R5 4
       90 GETTABLEKS                       R5 R5 K18 ["Stepped"]
       92 NAMECALL                         R5 R5 K19 ["Wait"]
       94 CALL                             R5 1 0
       95 GETUPVAL                         R3 5
       96 NEWCLOSURE                       R4 P0
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          VAL R2
       99 CALL                             R3 1 0
      100 GETUPVAL                         R3 3
      101 NAMECALL                         R3 R3 K17 ["UpdateUnitTestOnly"]
      103 CALL                             R3 1 0
      104 GETUPVAL                         R3 4
      105 GETTABLEKS                       R3 R3 K18 ["Stepped"]
      107 NAMECALL                         R3 R3 K19 ["Wait"]
      109 CALL                             R3 1 0
      110 GETUPVAL                         R3 4
      111 GETTABLEKS                       R3 R3 K18 ["Stepped"]
      113 NAMECALL                         R3 R3 K19 ["Wait"]
      115 CALL                             R3 1 0
      116 RETURN                           R0 0

PROTO_178:
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
       37 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       38 MOVE                             R9 R1
       39 NAMECALL                         R7 R7 K8 ["format"]
       41 CALL                             R7 2 1
       42 FASTCALL2                        ASSERT R4 R7 ; [+4]
       44 MOVE                             R6 R4
       45 GETIMPORT                        R5 K4 [assert]
       47 CALL                             R5 2 0
       48 MOVE                             R2 R4
       49 LOADK                            R5 K9 ["ScrollingFrame"]
       50 NAMECALL                         R3 R2 K10 ["FindFirstAncestorWhichIsA"]
       52 CALL                             R3 2 1
       53 MOVE                             R5 R3
       54 JUMPIFNOT                        R5 ; [+4]
       55 LOADK                            R7 K9 ["ScrollingFrame"]
       56 NAMECALL                         R5 R3 K11 ["IsA"]
       58 CALL                             R5 2 1
       59 FASTCALL2K                       ASSERT R5 K12 ; [+4]
       61 LOADK                            R6 K12 ["Scroll area not found for widget"]
       62 GETIMPORT                        R4 K4 [assert]
       64 CALL                             R4 2 0
       65 GETTABLEKS                       R5 R3 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R7 R2 K13 ["AbsolutePosition"]
       69 GETTABLEKS                       R9 R2 K15 ["AbsoluteSize"]
       71 DIVK                             R8 R9 K14 [2]
       72 ADD                              R6 R7 R8
       73 SUB                              R4 R5 R6
       74 GETTABLEKS                       R5 R3 K16 ["CanvasPosition"]
       76 SUB                              R5 R5 R4
       77 SETTABLEKS                       R5 R3 K16 ["CanvasPosition"]
       79 GETUPVAL                         R5 3
       80 NAMECALL                         R5 R5 K17 ["UpdateUnitTestOnly"]
       82 CALL                             R5 1 0
       83 GETUPVAL                         R5 4
       84 GETTABLEKS                       R5 R5 K18 ["Stepped"]
       86 NAMECALL                         R5 R5 K19 ["Wait"]
       88 CALL                             R5 1 0
       89 GETUPVAL                         R5 4
       90 GETTABLEKS                       R5 R5 K18 ["Stepped"]
       92 NAMECALL                         R5 R5 K19 ["Wait"]
       94 CALL                             R5 1 0
       95 GETUPVAL                         R3 5
       96 NEWCLOSURE                       R4 P0
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          VAL R2
       99 CALL                             R3 1 0
      100 GETUPVAL                         R3 3
      101 NAMECALL                         R3 R3 K17 ["UpdateUnitTestOnly"]
      103 CALL                             R3 1 0
      104 GETUPVAL                         R3 4
      105 GETTABLEKS                       R3 R3 K18 ["Stepped"]
      107 NAMECALL                         R3 R3 K19 ["Wait"]
      109 CALL                             R3 1 0
      110 GETUPVAL                         R3 4
      111 GETTABLEKS                       R3 R3 K18 ["Stepped"]
      113 NAMECALL                         R3 R3 K19 ["Wait"]
      115 CALL                             R3 1 0
      116 RETURN                           R0 0

PROTO_179:
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
       37 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       38 MOVE                             R9 R1
       39 NAMECALL                         R7 R7 K8 ["format"]
       41 CALL                             R7 2 1
       42 FASTCALL2                        ASSERT R4 R7 ; [+4]
       44 MOVE                             R6 R4
       45 GETIMPORT                        R5 K4 [assert]
       47 CALL                             R5 2 0
       48 MOVE                             R2 R4
       49 LOADK                            R5 K9 ["ScrollingFrame"]
       50 NAMECALL                         R3 R2 K10 ["FindFirstAncestorWhichIsA"]
       52 CALL                             R3 2 1
       53 MOVE                             R5 R3
       54 JUMPIFNOT                        R5 ; [+4]
       55 LOADK                            R7 K9 ["ScrollingFrame"]
       56 NAMECALL                         R5 R3 K11 ["IsA"]
       58 CALL                             R5 2 1
       59 FASTCALL2K                       ASSERT R5 K12 ; [+4]
       61 LOADK                            R6 K12 ["Scroll area not found for widget"]
       62 GETIMPORT                        R4 K4 [assert]
       64 CALL                             R4 2 0
       65 GETTABLEKS                       R5 R3 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R7 R2 K13 ["AbsolutePosition"]
       69 GETTABLEKS                       R9 R2 K15 ["AbsoluteSize"]
       71 DIVK                             R8 R9 K14 [2]
       72 ADD                              R6 R7 R8
       73 SUB                              R4 R5 R6
       74 GETTABLEKS                       R5 R3 K16 ["CanvasPosition"]
       76 SUB                              R5 R5 R4
       77 SETTABLEKS                       R5 R3 K16 ["CanvasPosition"]
       79 GETUPVAL                         R5 3
       80 NAMECALL                         R5 R5 K17 ["UpdateUnitTestOnly"]
       82 CALL                             R5 1 0
       83 GETUPVAL                         R5 4
       84 GETTABLEKS                       R5 R5 K18 ["Stepped"]
       86 NAMECALL                         R5 R5 K19 ["Wait"]
       88 CALL                             R5 1 0
       89 GETUPVAL                         R5 4
       90 GETTABLEKS                       R5 R5 K18 ["Stepped"]
       92 NAMECALL                         R5 R5 K19 ["Wait"]
       94 CALL                             R5 1 0
       95 GETUPVAL                         R3 5
       96 NEWCLOSURE                       R4 P0
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          VAL R2
       99 CALL                             R3 1 0
      100 GETUPVAL                         R3 3
      101 NAMECALL                         R3 R3 K17 ["UpdateUnitTestOnly"]
      103 CALL                             R3 1 0
      104 GETUPVAL                         R3 4
      105 GETTABLEKS                       R3 R3 K18 ["Stepped"]
      107 NAMECALL                         R3 R3 K19 ["Wait"]
      109 CALL                             R3 1 0
      110 GETUPVAL                         R3 4
      111 GETTABLEKS                       R3 R3 K18 ["Stepped"]
      113 NAMECALL                         R3 R3 K19 ["Wait"]
      115 CALL                             R3 1 0
      116 RETURN                           R0 0

PROTO_180:
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
       37 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       38 MOVE                             R9 R1
       39 NAMECALL                         R7 R7 K8 ["format"]
       41 CALL                             R7 2 1
       42 FASTCALL2                        ASSERT R4 R7 ; [+4]
       44 MOVE                             R6 R4
       45 GETIMPORT                        R5 K4 [assert]
       47 CALL                             R5 2 0
       48 MOVE                             R2 R4
       49 NAMECALL                         R3 R2 K9 ["GetDescendants"]
       51 CALL                             R3 1 3
       52 FORGPREP                         R3
       53 LOADK                            R10 K10 ["TextBox"]
       54 NAMECALL                         R8 R7 K11 ["IsA"]
       56 CALL                             R8 2 1
       57 JUMPIFNOT                        R8 ; [+3]
       58 GETTABLEKS                       R8 R7 K12 ["Text"]
       60 RETURN                           R8 1
       61 FORGLOOP                         R3 2 ; [-9]
       63 GETIMPORT                        R3 K14 [error]
       65 LOADK                            R4 K15 ["No TextBox found in API key input for %*"]
       66 MOVE                             R6 R0
       67 NAMECALL                         R4 R4 K8 ["format"]
       69 CALL                             R4 2 1
       70 CALL                             R3 1 0
       71 RETURN                           R0 0

PROTO_181:
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

PROTO_182:
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
       37 LOADK                            R8 K7 ["No result found for testId \"%*\""]
       38 MOVE                             R10 R2
       39 NAMECALL                         R8 R8 K8 ["format"]
       41 CALL                             R8 2 1
       42 FASTCALL2                        ASSERT R5 R8 ; [+4]
       44 MOVE                             R7 R5
       45 GETIMPORT                        R6 K4 [assert]
       47 CALL                             R6 2 0
       48 MOVE                             R3 R5
       49 LOADK                            R6 K9 ["ScrollingFrame"]
       50 NAMECALL                         R4 R3 K10 ["FindFirstAncestorWhichIsA"]
       52 CALL                             R4 2 1
       53 MOVE                             R6 R4
       54 JUMPIFNOT                        R6 ; [+4]
       55 LOADK                            R8 K9 ["ScrollingFrame"]
       56 NAMECALL                         R6 R4 K11 ["IsA"]
       58 CALL                             R6 2 1
       59 FASTCALL2K                       ASSERT R6 K12 ; [+4]
       61 LOADK                            R7 K12 ["Scroll area not found for widget"]
       62 GETIMPORT                        R5 K4 [assert]
       64 CALL                             R5 2 0
       65 GETTABLEKS                       R6 R4 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R8 R3 K13 ["AbsolutePosition"]
       69 GETTABLEKS                       R10 R3 K15 ["AbsoluteSize"]
       71 DIVK                             R9 R10 K14 [2]
       72 ADD                              R7 R8 R9
       73 SUB                              R5 R6 R7
       74 GETTABLEKS                       R6 R4 K16 ["CanvasPosition"]
       76 SUB                              R6 R6 R5
       77 SETTABLEKS                       R6 R4 K16 ["CanvasPosition"]
       79 GETUPVAL                         R6 3
       80 NAMECALL                         R6 R6 K17 ["UpdateUnitTestOnly"]
       82 CALL                             R6 1 0
       83 GETUPVAL                         R6 4
       84 GETTABLEKS                       R6 R6 K18 ["Stepped"]
       86 NAMECALL                         R6 R6 K19 ["Wait"]
       88 CALL                             R6 1 0
       89 GETUPVAL                         R6 4
       90 GETTABLEKS                       R6 R6 K18 ["Stepped"]
       92 NAMECALL                         R6 R6 K19 ["Wait"]
       94 CALL                             R6 1 0
       95 NAMECALL                         R4 R3 K20 ["GetDescendants"]
       97 CALL                             R4 1 3
       98 FORGPREP                         R4
       99 LOADK                            R11 K21 ["TextBox"]
      100 NAMECALL                         R9 R8 K11 ["IsA"]
      102 CALL                             R9 2 1
      103 JUMPIFNOT                        R9 ; [+23]
      104 GETUPVAL                         R9 5
      105 NEWCLOSURE                       R10 P0
      106 CAPTURE                          UPVAL U6
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R1
      109 CALL                             R9 1 0
      110 GETUPVAL                         R9 3
      111 NAMECALL                         R9 R9 K17 ["UpdateUnitTestOnly"]
      113 CALL                             R9 1 0
      114 GETUPVAL                         R9 4
      115 GETTABLEKS                       R9 R9 K18 ["Stepped"]
      117 NAMECALL                         R9 R9 K19 ["Wait"]
      119 CALL                             R9 1 0
      120 GETUPVAL                         R9 4
      121 GETTABLEKS                       R9 R9 K18 ["Stepped"]
      123 NAMECALL                         R9 R9 K19 ["Wait"]
      125 CALL                             R9 1 0
      126 RETURN                           R0 0
      127 FORGLOOP                         R4 2 ; [-29]
      129 GETIMPORT                        R4 K23 [error]
      131 LOADK                            R5 K24 ["No TextBox found in API key input for %*"]
      132 MOVE                             R7 R0
      133 NAMECALL                         R5 R5 K8 ["format"]
      135 CALL                             R5 2 1
      136 CALL                             R4 1 0
      137 RETURN                           R0 0

PROTO_183:
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
       37 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       38 MOVE                             R9 R1
       39 NAMECALL                         R7 R7 K8 ["format"]
       41 CALL                             R7 2 1
       42 FASTCALL2                        ASSERT R4 R7 ; [+4]
       44 MOVE                             R6 R4
       45 GETIMPORT                        R5 K4 [assert]
       47 CALL                             R5 2 0
       48 MOVE                             R2 R4
       49 LOADK                            R5 K9 ["TextLabel"]
       50 NAMECALL                         R3 R2 K10 ["IsA"]
       52 CALL                             R3 2 1
       53 JUMPIFNOT                        R3 ; [+3]
       54 GETTABLEKS                       R3 R2 K11 ["Text"]
       56 RETURN                           R3 1
       57 GETIMPORT                        R3 K13 [error]
       59 LOADK                            R4 K14 ["Displayed API key element is not a TextLabel for %*"]
       60 MOVE                             R6 R0
       61 NAMECALL                         R4 R4 K8 ["format"]
       63 CALL                             R4 2 1
       64 CALL                             R3 1 0
       65 RETURN                           R0 0

PROTO_184:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getSecureSettingsAsync"]
        3 LOADK                            R2 K1 ["ProviderKeys"]
        4 CALL                             R1 1 1
        5 GETTABLE                         R2 R1 R0
        6 RETURN                           R2 1

PROTO_185:
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
       37 LOADK                            R7 K8 ["No result found for testId \"%*\""]
       38 MOVE                             R9 R1
       39 NAMECALL                         R7 R7 K9 ["format"]
       41 CALL                             R7 2 1
       42 FASTCALL2                        ASSERT R4 R7 ; [+4]
       44 MOVE                             R6 R4
       45 GETIMPORT                        R5 K5 [assert]
       47 CALL                             R5 2 0
       48 MOVE                             R2 R4
       49 GETUPVAL                         R3 3
       50 NEWCLOSURE                       R4 P0
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R2
       53 CALL                             R3 1 0
       54 GETUPVAL                         R3 5
       55 NAMECALL                         R3 R3 K10 ["UpdateUnitTestOnly"]
       57 CALL                             R3 1 0
       58 GETUPVAL                         R3 6
       59 GETTABLEKS                       R3 R3 K11 ["Stepped"]
       61 NAMECALL                         R3 R3 K12 ["Wait"]
       63 CALL                             R3 1 0
       64 GETUPVAL                         R3 6
       65 GETTABLEKS                       R3 R3 K11 ["Stepped"]
       67 NAMECALL                         R3 R3 K12 ["Wait"]
       69 CALL                             R3 1 0
       70 RETURN                           R0 0

PROTO_186:
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
       23 LOADK                            R5 K7 ["data-testid=%*"]
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K8 ["IntegrationItem"]
       27 GETTABLEKS                       R7 R7 K9 ["Header"]
       29 NAMECALL                         R5 R5 K10 ["format"]
       31 CALL                             R5 2 1
       32 CALL                             R3 2 1
       33 MOVE                             R5 R3
       34 JUMPIFNOT                        R5 ; [+4]
       35 LOADK                            R7 K1 ["GuiObject"]
       36 NAMECALL                         R5 R3 K2 ["IsA"]
       38 CALL                             R5 2 1
       39 FASTCALL2K                       ASSERT R5 K11 ; [+4]
       41 LOADK                            R6 K11 ["Integration item not found"]
       42 GETIMPORT                        R4 K5 [assert]
       44 CALL                             R4 2 0
       45 RETURN                           R3 1

PROTO_187:
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
       37 LOADK                            R7 K8 ["No result found for testId \"%*\""]
       38 MOVE                             R9 R1
       39 NAMECALL                         R7 R7 K9 ["format"]
       41 CALL                             R7 2 1
       42 FASTCALL2                        ASSERT R4 R7 ; [+4]
       44 MOVE                             R6 R4
       45 GETIMPORT                        R5 K5 [assert]
       47 CALL                             R5 2 0
       48 MOVE                             R2 R4
       49 GETUPVAL                         R3 3
       50 NEWCLOSURE                       R4 P0
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          VAL R2
       53 CALL                             R3 1 0
       54 GETUPVAL                         R3 5
       55 NAMECALL                         R3 R3 K10 ["UpdateUnitTestOnly"]
       57 CALL                             R3 1 0
       58 GETUPVAL                         R3 6
       59 GETTABLEKS                       R3 R3 K11 ["Stepped"]
       61 NAMECALL                         R3 R3 K12 ["Wait"]
       63 CALL                             R3 1 0
       64 GETUPVAL                         R3 6
       65 GETTABLEKS                       R3 R3 K11 ["Stepped"]
       67 NAMECALL                         R3 R3 K12 ["Wait"]
       69 CALL                             R3 1 0
       70 RETURN                           R0 0

PROTO_188:
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
       22 LOADK                            R3 K7 ["data-testid=%*"]
       23 MOVE                             R5 R0
       24 NAMECALL                         R3 R3 K8 ["format"]
       26 CALL                             R3 2 1
       27 CALL                             R1 2 1
       28 MOVE                             R2 R1
       29 LOADNIL                          R3
       30 LOADNIL                          R4
       31 FORGPREP                         R2
       32 LOADK                            R9 K9 ["GuiObject"]
       33 NAMECALL                         R7 R6 K10 ["IsA"]
       35 CALL                             R7 2 1
       36 JUMPIFNOT                        R7 ; [+5]
       37 GETUPVAL                         R7 3
       38 MOVE                             R8 R6
       39 CALL                             R7 1 1
       40 JUMPIFNOT                        R7 ; [+1]
       41 RETURN                           R6 1
       42 FORGLOOP                         R2 2 ; [-11]
       44 GETIMPORT                        R2 K12 [error]
       46 LOADK                            R3 K13 ["Overflow content not found"]
       47 CALL                             R2 1 0
       48 RETURN                           R0 0

PROTO_189:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 LOADK                            R4 K9 ["ScrollingFrame"]
       48 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       50 CALL                             R2 2 1
       51 MOVE                             R4 R2
       52 JUMPIFNOT                        R4 ; [+4]
       53 LOADK                            R6 K9 ["ScrollingFrame"]
       54 NAMECALL                         R4 R2 K11 ["IsA"]
       56 CALL                             R4 2 1
       57 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       59 LOADK                            R5 K12 ["Scroll area not found for widget"]
       60 GETIMPORT                        R3 K4 [assert]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       65 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       69 DIVK                             R7 R8 K14 [2]
       70 ADD                              R5 R6 R7
       71 SUB                              R3 R4 R5
       72 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       74 SUB                              R4 R4 R3
       75 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       77 GETUPVAL                         R4 3
       78 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       80 CALL                             R4 1 0
       81 GETUPVAL                         R4 4
       82 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       84 NAMECALL                         R4 R4 K19 ["Wait"]
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 4
       88 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       90 NAMECALL                         R4 R4 K19 ["Wait"]
       92 CALL                             R4 1 0
       93 GETUPVAL                         R2 5
       94 NEWCLOSURE                       R3 P0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R1
       97 CALL                             R2 1 0
       98 GETUPVAL                         R2 3
       99 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 4
      103 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      105 NAMECALL                         R2 R2 K19 ["Wait"]
      107 CALL                             R2 1 0
      108 GETUPVAL                         R2 4
      109 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      111 NAMECALL                         R2 R2 K19 ["Wait"]
      113 CALL                             R2 1 0
      114 RETURN                           R0 0

PROTO_190:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 LOADK                            R4 K9 ["ScrollingFrame"]
       48 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       50 CALL                             R2 2 1
       51 MOVE                             R4 R2
       52 JUMPIFNOT                        R4 ; [+4]
       53 LOADK                            R6 K9 ["ScrollingFrame"]
       54 NAMECALL                         R4 R2 K11 ["IsA"]
       56 CALL                             R4 2 1
       57 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       59 LOADK                            R5 K12 ["Scroll area not found for widget"]
       60 GETIMPORT                        R3 K4 [assert]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       65 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       69 DIVK                             R7 R8 K14 [2]
       70 ADD                              R5 R6 R7
       71 SUB                              R3 R4 R5
       72 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       74 SUB                              R4 R4 R3
       75 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       77 GETUPVAL                         R4 3
       78 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       80 CALL                             R4 1 0
       81 GETUPVAL                         R4 4
       82 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       84 NAMECALL                         R4 R4 K19 ["Wait"]
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 4
       88 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       90 NAMECALL                         R4 R4 K19 ["Wait"]
       92 CALL                             R4 1 0
       93 GETUPVAL                         R2 5
       94 NEWCLOSURE                       R3 P0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R1
       97 CALL                             R2 1 0
       98 GETUPVAL                         R2 3
       99 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 4
      103 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      105 NAMECALL                         R2 R2 K19 ["Wait"]
      107 CALL                             R2 1 0
      108 GETUPVAL                         R2 4
      109 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      111 NAMECALL                         R2 R2 K19 ["Wait"]
      113 CALL                             R2 1 0
      114 RETURN                           R0 0

PROTO_191:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 LOADK                            R4 K9 ["ScrollingFrame"]
       48 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       50 CALL                             R2 2 1
       51 MOVE                             R4 R2
       52 JUMPIFNOT                        R4 ; [+4]
       53 LOADK                            R6 K9 ["ScrollingFrame"]
       54 NAMECALL                         R4 R2 K11 ["IsA"]
       56 CALL                             R4 2 1
       57 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       59 LOADK                            R5 K12 ["Scroll area not found for widget"]
       60 GETIMPORT                        R3 K4 [assert]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       65 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       69 DIVK                             R7 R8 K14 [2]
       70 ADD                              R5 R6 R7
       71 SUB                              R3 R4 R5
       72 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       74 SUB                              R4 R4 R3
       75 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       77 GETUPVAL                         R4 3
       78 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       80 CALL                             R4 1 0
       81 GETUPVAL                         R4 4
       82 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       84 NAMECALL                         R4 R4 K19 ["Wait"]
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 4
       88 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       90 NAMECALL                         R4 R4 K19 ["Wait"]
       92 CALL                             R4 1 0
       93 GETUPVAL                         R2 5
       94 NEWCLOSURE                       R3 P0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R1
       97 CALL                             R2 1 0
       98 GETUPVAL                         R2 3
       99 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 4
      103 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      105 NAMECALL                         R2 R2 K19 ["Wait"]
      107 CALL                             R2 1 0
      108 GETUPVAL                         R2 4
      109 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      111 NAMECALL                         R2 R2 K19 ["Wait"]
      113 CALL                             R2 1 0
      114 RETURN                           R0 0

PROTO_192:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 LOADK                            R4 K9 ["ScrollingFrame"]
       48 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       50 CALL                             R2 2 1
       51 MOVE                             R4 R2
       52 JUMPIFNOT                        R4 ; [+4]
       53 LOADK                            R6 K9 ["ScrollingFrame"]
       54 NAMECALL                         R4 R2 K11 ["IsA"]
       56 CALL                             R4 2 1
       57 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       59 LOADK                            R5 K12 ["Scroll area not found for widget"]
       60 GETIMPORT                        R3 K4 [assert]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       65 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       69 DIVK                             R7 R8 K14 [2]
       70 ADD                              R5 R6 R7
       71 SUB                              R3 R4 R5
       72 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       74 SUB                              R4 R4 R3
       75 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       77 GETUPVAL                         R4 3
       78 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       80 CALL                             R4 1 0
       81 GETUPVAL                         R4 4
       82 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       84 NAMECALL                         R4 R4 K19 ["Wait"]
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 4
       88 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       90 NAMECALL                         R4 R4 K19 ["Wait"]
       92 CALL                             R4 1 0
       93 GETUPVAL                         R2 5
       94 NEWCLOSURE                       R3 P0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R1
       97 CALL                             R2 1 0
       98 GETUPVAL                         R2 3
       99 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 4
      103 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      105 NAMECALL                         R2 R2 K19 ["Wait"]
      107 CALL                             R2 1 0
      108 GETUPVAL                         R2 4
      109 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      111 NAMECALL                         R2 R2 K19 ["Wait"]
      113 CALL                             R2 1 0
      114 RETURN                           R0 0

PROTO_193:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 LOADK                            R4 K9 ["TextLabel"]
       48 LOADB                            R5 1
       49 NAMECALL                         R2 R1 K10 ["FindFirstChildWhichIsA"]
       51 CALL                             R2 3 1
       52 FASTCALL2K                       ASSERT R2 K11 ; [+5]
       54 MOVE                             R4 R2
       55 LOADK                            R5 K11 ["TextLabel not found in Always Accept button"]
       56 GETIMPORT                        R3 K4 [assert]
       58 CALL                             R3 2 0
       59 GETTABLEKS                       R3 R2 K12 ["Text"]
       61 RETURN                           R3 1

PROTO_194:
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
       35 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R9 R2
       37 NAMECALL                         R7 R7 K8 ["format"]
       39 CALL                             R7 2 1
       40 FASTCALL2                        ASSERT R4 R7 ; [+4]
       42 MOVE                             R6 R4
       43 GETIMPORT                        R5 K4 [assert]
       45 CALL                             R5 2 0
       46 MOVE                             R1 R4
       47 LOADK                            R4 K9 ["ScrollingFrame"]
       48 NAMECALL                         R2 R1 K10 ["FindFirstAncestorWhichIsA"]
       50 CALL                             R2 2 1
       51 MOVE                             R4 R2
       52 JUMPIFNOT                        R4 ; [+4]
       53 LOADK                            R6 K9 ["ScrollingFrame"]
       54 NAMECALL                         R4 R2 K11 ["IsA"]
       56 CALL                             R4 2 1
       57 FASTCALL2K                       ASSERT R4 K12 ; [+4]
       59 LOADK                            R5 K12 ["Scroll area not found for widget"]
       60 GETIMPORT                        R3 K4 [assert]
       62 CALL                             R3 2 0
       63 GETTABLEKS                       R4 R2 K13 ["AbsolutePosition"]
       65 GETTABLEKS                       R6 R1 K13 ["AbsolutePosition"]
       67 GETTABLEKS                       R8 R1 K15 ["AbsoluteSize"]
       69 DIVK                             R7 R8 K14 [2]
       70 ADD                              R5 R6 R7
       71 SUB                              R3 R4 R5
       72 GETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       74 SUB                              R4 R4 R3
       75 SETTABLEKS                       R4 R2 K16 ["CanvasPosition"]
       77 GETUPVAL                         R4 3
       78 NAMECALL                         R4 R4 K17 ["UpdateUnitTestOnly"]
       80 CALL                             R4 1 0
       81 GETUPVAL                         R4 4
       82 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       84 NAMECALL                         R4 R4 K19 ["Wait"]
       86 CALL                             R4 1 0
       87 GETUPVAL                         R4 4
       88 GETTABLEKS                       R4 R4 K18 ["Stepped"]
       90 NAMECALL                         R4 R4 K19 ["Wait"]
       92 CALL                             R4 1 0
       93 GETUPVAL                         R2 5
       94 NEWCLOSURE                       R3 P0
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R1
       97 CALL                             R2 1 0
       98 GETUPVAL                         R2 3
       99 NAMECALL                         R2 R2 K17 ["UpdateUnitTestOnly"]
      101 CALL                             R2 1 0
      102 GETUPVAL                         R2 4
      103 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      105 NAMECALL                         R2 R2 K19 ["Wait"]
      107 CALL                             R2 1 0
      108 GETUPVAL                         R2 4
      109 GETTABLEKS                       R2 R2 K18 ["Stepped"]
      111 NAMECALL                         R2 R2 K19 ["Wait"]
      113 CALL                             R2 1 0
      114 RETURN                           R0 0

PROTO_195:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["getActiveTurnCallback"]
        4 CALL                             R1 0 -1
        5 CALL                             R0 -1 1
        6 GETTABLEKS                       R0 R0 K1 ["toBeDefined"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_196:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_197:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getActiveTurnCallback"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+13]
        5 GETUPVAL                         R2 1
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U0
        9 CALL                             R2 1 1
       10 NAMECALL                         R2 R2 K1 ["await"]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["getActiveTurnCallback"]
       16 CALL                             R2 0 1
       17 MOVE                             R1 R2
       18 FASTCALL2K                       ASSERT R1 K2 ; [+5]
       20 MOVE                             R3 R1
       21 LOADK                            R4 K2 ["streamEvent: no active LLM turn callback captured (turn never reached requestLLM)"]
       22 GETIMPORT                        R2 K4 [assert]
       24 CALL                             R2 2 0
       25 GETUPVAL                         R2 3
       26 NEWCLOSURE                       R3 P1
       27 CAPTURE                          REF R1
       28 CAPTURE                          VAL R0
       29 CALL                             R2 1 0
       30 GETUPVAL                         R2 4
       31 NAMECALL                         R2 R2 K5 ["UpdateUnitTestOnly"]
       33 CALL                             R2 1 0
       34 GETUPVAL                         R2 5
       35 GETTABLEKS                       R2 R2 K6 ["Stepped"]
       37 NAMECALL                         R2 R2 K7 ["Wait"]
       39 CALL                             R2 1 0
       40 GETUPVAL                         R2 5
       41 GETTABLEKS                       R2 R2 K6 ["Stepped"]
       43 NAMECALL                         R2 R2 K7 ["Wait"]
       45 CALL                             R2 1 0
       46 GETTABLEKS                       R2 R0 K8 ["type"]
       48 JUMPIFEQKS                       R2 K9 ["message_stop"] ; [+5]
       50 GETTABLEKS                       R2 R0 K8 ["type"]
       52 JUMPIFNOTEQKS                    R2 K10 ["error"] ; [+6]
       54 GETUPVAL                         R2 0
       55 GETTABLEKS                       R2 R2 K11 ["clearActiveTurnCallback"]
       57 MOVE                             R3 R1
       58 CALL                             R2 1 0
       59 CLOSEUPVALS                      R1
       60 RETURN                           R0 0

PROTO_198:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getClientObject"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R4 1
        5 NAMECALL                         R2 R0 K1 ["getClientForStaticTool"]
        7 CALL                             R2 2 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["getMcpClientIdentifier"]
       11 CALL                             R3 0 1
       12 JUMPIFEQ                         R2 R3 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_199:
        0 MOVE                             R3 R0
        1 GETIMPORT                        R4 K1 [pcall]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R4 1 2
        8 JUMPIFNOT                        R4 ; [+9]
        9 JUMPIFNOT                        R5 ; [+8]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R6 R6 K2 ["ToolNaming"]
       13 GETTABLEKS                       R6 R6 K3 ["addPrefix"]
       15 MOVE                             R7 R0
       16 CALL                             R6 1 1
       17 MOVE                             R3 R6
       18 DUPTABLE                         R6 K8 [{["type"] = "content_start", ["contentId"], ["contentBlock"]}]
       19 SETTABLEKS                       R2 R6 K6 ["contentId"]
       21 DUPTABLE                         R7 K13 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
       22 MOVE                             R9 R3
       23 LOADK                            R10 K14 ["_"]
       24 MOVE                             R11 R2
       25 CONCAT                           R8 R9 R11
       26 SETTABLEKS                       R8 R7 K10 ["id"]
       28 SETTABLEKS                       R3 R7 K11 ["name"]
       30 NEWTABLE                         R8 0 0
       32 SETTABLEKS                       R8 R7 K12 ["input"]
       34 SETTABLEKS                       R7 R6 K7 ["contentBlock"]
       36 GETUPVAL                         R7 3
       37 MOVE                             R8 R6
       38 CALL                             R7 1 0
       39 DUPTABLE                         R7 K17 [{["type"] = "content_delta", ["contentId"], ["delta"]}]
       40 SETTABLEKS                       R2 R7 K6 ["contentId"]
       42 DUPTABLE                         R8 K20 [{["type"] = "json_delta", ["jsonDelta"]}]
       43 SETTABLEKS                       R1 R8 K19 ["jsonDelta"]
       45 SETTABLEKS                       R8 R7 K16 ["delta"]
       47 GETUPVAL                         R8 3
       48 MOVE                             R9 R7
       49 CALL                             R8 1 0
       50 DUPTABLE                         R8 K22 [{["type"] = "content_end", ["contentId"]}]
       51 SETTABLEKS                       R2 R8 K6 ["contentId"]
       53 GETUPVAL                         R9 3
       54 MOVE                             R10 R8
       55 CALL                             R9 1 0
       56 RETURN                           R0 0

PROTO_200:
        0 DUPTABLE                         R2 K4 [{[1] = "content_start", ["contentId"], ["contentBlock"]}]
        1 SETTABLEKS                       R1 R2 K2 ["contentId"]
        3 DUPTABLE                         R3 K6 [{[1] = "text", ["text"]}]
        4 SETTABLEKS                       R0 R3 K5 ["text"]
        6 SETTABLEKS                       R3 R2 K3 ["contentBlock"]
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R2
       10 CALL                             R3 1 0
       11 DUPTABLE                         R3 K9 [{[1] = "content_delta", ["contentId"], ["delta"]}]
       12 SETTABLEKS                       R1 R3 K2 ["contentId"]
       14 DUPTABLE                         R4 K11 [{[1] = "text_delta", ["text"]}]
       15 SETTABLEKS                       R0 R4 K5 ["text"]
       17 SETTABLEKS                       R4 R3 K8 ["delta"]
       19 GETUPVAL                         R4 0
       20 MOVE                             R5 R3
       21 CALL                             R4 1 0
       22 DUPTABLE                         R4 K13 [{[1] = "content_end", ["contentId"]}]
       23 SETTABLEKS                       R1 R4 K2 ["contentId"]
       25 GETUPVAL                         R5 0
       26 MOVE                             R6 R4
       27 CALL                             R5 1 0
       28 RETURN                           R0 0

PROTO_201:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{[1] = "message_start"}]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_202:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{[1] = "message_delta", ["delta"]}]
        2 DUPTABLE                         R3 K5 [{"stopReason"}]
        3 SETTABLEKS                       R0 R3 K4 ["stopReason"]
        5 SETTABLEKS                       R3 R2 K2 ["delta"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 DUPTABLE                         R2 K7 [{[1] = "message_stop"}]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_203:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["spyOn"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["EventLogger"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_204:
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

PROTO_205:
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
       35 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R8 R1
       37 NAMECALL                         R6 R6 K8 ["format"]
       39 CALL                             R6 2 1
       40 FASTCALL2                        ASSERT R3 R6 ; [+4]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K4 [assert]
       45 CALL                             R4 2 0
       46 MOVE                             R0 R3
       47 RETURN                           R0 1

PROTO_206:
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
       45 LOADK                            R7 K8 ["No results found for testId \"%*\""]
       46 MOVE                             R9 R2
       47 NAMECALL                         R7 R7 K9 ["format"]
       49 CALL                             R7 2 1
       50 FASTCALL2                        ASSERT R6 R7 ; [+3]
       52 GETIMPORT                        R5 K5 [assert]
       54 CALL                             R5 2 0
       55 MOVE                             R1 R4
       56 NEWTABLE                         R2 0 0
       58 MOVE                             R3 R1
       59 LOADNIL                          R4
       60 LOADNIL                          R5
       61 FORGPREP                         R3
       62 GETUPVAL                         R9 0
       63 GETTABLEKS                       R9 R9 K0 ["SlashCommandMenu"]
       65 GETTABLEKS                       R9 R9 K1 ["Item"]
       67 GETTABLEKS                       R9 R9 K10 ["Command"]
       69 MOVE                             R10 R7
       70 MOVE                             R11 R10
       71 JUMPIF                           R11 ; [+12]
       72 GETUPVAL                         R14 1
       73 JUMPIFNOTEQKNIL                  R14 ; [+2]
       75 LOADB                            R13 0 +1
       76 LOADB                            R13 1
       77 FASTCALL2K                       ASSERT R13 K3 ; [+4]
       79 LOADK                            R14 K3 ["Container not mounted, ensure render is called"]
       80 GETIMPORT                        R12 K5 [assert]
       82 CALL                             R12 2 0
       83 GETUPVAL                         R11 1
       84 MOVE                             R10 R11
       85 FASTCALL2K                       ASSERT R10 K6 ; [+5]
       87 MOVE                             R12 R10
       88 LOADK                            R13 K6 ["Query container not found"]
       89 GETIMPORT                        R11 K5 [assert]
       91 CALL                             R11 2 0
       92 GETUPVAL                         R11 2
       93 MOVE                             R12 R10
       94 CALL                             R11 1 1
       95 GETTABLEKS                       R11 R11 K11 ["getByTestId"]
       97 MOVE                             R12 R9
       98 CALL                             R11 1 1
       99 LOADK                            R14 K12 ["No result found for testId \"%*\""]
      100 MOVE                             R16 R9
      101 NAMECALL                         R14 R14 K9 ["format"]
      103 CALL                             R14 2 1
      104 FASTCALL2                        ASSERT R11 R14 ; [+4]
      106 MOVE                             R13 R11
      107 GETIMPORT                        R12 K5 [assert]
      109 CALL                             R12 2 0
      110 MOVE                             R8 R11
      111 LOADK                            R12 K13 ["TextLabel"]
      112 NAMECALL                         R10 R8 K14 ["IsA"]
      114 CALL                             R10 2 1
      115 FASTCALL2K                       ASSERT R10 K15 ; [+4]
      117 LOADK                            R11 K15 ["Text is not a TextLabel"]
      118 GETIMPORT                        R9 K5 [assert]
      120 CALL                             R9 2 0
      121 GETTABLEKS                       R11 R8 K16 ["Text"]
      123 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      125 MOVE                             R10 R2
      126 GETIMPORT                        R9 K19 [table.insert]
      128 CALL                             R9 2 0
      129 FORGLOOP                         R3 2 ; [-68]
      131 RETURN                           R2 1

PROTO_207:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setOptions"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_208:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_209:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["get"]
        4 GETIMPORT                        R4 K2 [game]
        6 LOADK                            R5 K3 ["data-testid=%*"]
        7 GETUPVAL                         R7 2
        8 GETTABLEKS                       R7 R7 K4 ["ToolMenuView"]
       10 GETTABLEKS                       R7 R7 K5 ["Container"]
       12 NAMECALL                         R5 R5 K6 ["format"]
       14 CALL                             R5 2 1
       15 CALL                             R3 2 1
       16 MOVE                             R5 R3
       17 JUMPIFNOT                        R5 ; [+4]
       18 LOADK                            R7 K7 ["GuiObject"]
       19 NAMECALL                         R5 R3 K8 ["IsA"]
       21 CALL                             R5 2 1
       22 FASTCALL2K                       ASSERT R5 K9 ; [+4]
       24 LOADK                            R6 K9 ["ToolMenuView not found"]
       25 GETIMPORT                        R4 K11 [assert]
       27 CALL                             R4 2 0
       28 MOVE                             R2 R3
       29 CALL                             R1 1 1
       30 GETTABLEKS                       R1 R1 K12 ["getByText"]
       32 MOVE                             R2 R0
       33 CALL                             R1 1 1
       34 FASTCALL2K                       ASSERT R1 K13 ; [+5]
       36 MOVE                             R3 R1
       37 LOADK                            R4 K13 ["Option not found"]
       38 GETIMPORT                        R2 K11 [assert]
       40 CALL                             R2 2 0
       41 GETUPVAL                         R2 1
       42 GETTABLEKS                       R2 R2 K14 ["firstAncestorWithTag"]
       44 MOVE                             R3 R1
       45 LOADK                            R4 K3 ["data-testid=%*"]
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R6 R6 K4 ["ToolMenuView"]
       49 GETTABLEKS                       R6 R6 K15 ["Option"]
       51 GETTABLEKS                       R6 R6 K5 ["Container"]
       53 NAMECALL                         R4 R4 K6 ["format"]
       55 CALL                             R4 2 1
       56 CALL                             R2 2 1
       57 FASTCALL2K                       ASSERT R2 K16 ; [+5]
       59 MOVE                             R4 R2
       60 LOADK                            R5 K16 ["Option container not found"]
       61 GETIMPORT                        R3 K11 [assert]
       63 CALL                             R3 2 0
       64 GETUPVAL                         R3 1
       65 GETTABLEKS                       R3 R3 K0 ["get"]
       67 MOVE                             R4 R2
       68 LOADK                            R5 K3 ["data-testid=%*"]
       69 GETUPVAL                         R7 2
       70 GETTABLEKS                       R7 R7 K4 ["ToolMenuView"]
       72 GETTABLEKS                       R7 R7 K15 ["Option"]
       74 GETTABLEKS                       R7 R7 K17 ["Checkbox"]
       76 NAMECALL                         R5 R5 K6 ["format"]
       78 CALL                             R5 2 1
       79 CALL                             R3 2 1
       80 FASTCALL2K                       ASSERT R3 K18 ; [+5]
       82 MOVE                             R5 R3
       83 LOADK                            R6 K18 ["Checkbox not found"]
       84 GETIMPORT                        R4 K11 [assert]
       86 CALL                             R4 2 0
       87 LOADK                            R7 K7 ["GuiObject"]
       88 NAMECALL                         R5 R3 K8 ["IsA"]
       90 CALL                             R5 2 1
       91 FASTCALL2K                       ASSERT R5 K19 ; [+4]
       93 LOADK                            R6 K19 ["Checkbox is not a GuiObject"]
       94 GETIMPORT                        R4 K11 [assert]
       96 CALL                             R4 2 0
       97 GETUPVAL                         R4 3
       98 NEWCLOSURE                       R5 P0
       99 CAPTURE                          UPVAL U4
      100 CAPTURE                          VAL R3
      101 CALL                             R4 1 0
      102 GETUPVAL                         R4 5
      103 NAMECALL                         R4 R4 K20 ["UpdateUnitTestOnly"]
      105 CALL                             R4 1 0
      106 GETUPVAL                         R4 6
      107 GETTABLEKS                       R4 R4 K21 ["Stepped"]
      109 NAMECALL                         R4 R4 K22 ["Wait"]
      111 CALL                             R4 1 0
      112 GETUPVAL                         R4 6
      113 GETTABLEKS                       R4 R4 K21 ["Stepped"]
      115 NAMECALL                         R4 R4 K22 ["Wait"]
      117 CALL                             R4 1 0
      118 RETURN                           R0 0

PROTO_210:
        0 LOADK                            R3 K0 ["bg-action-soft-emphasis"]
        1 NAMECALL                         R1 R0 K1 ["HasTag"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_211:
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

PROTO_212:
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
       35 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       36 MOVE                             R8 R1
       37 NAMECALL                         R6 R6 K8 ["format"]
       39 CALL                             R6 2 1
       40 FASTCALL2                        ASSERT R3 R6 ; [+4]
       42 MOVE                             R5 R3
       43 GETIMPORT                        R4 K4 [assert]
       45 CALL                             R4 2 0
       46 MOVE                             R0 R3
       47 GETIMPORT                        R1 K10 [pcall]
       49 NEWCLOSURE                       R2 P0
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          UPVAL U2
       54 CALL                             R1 1 2
       55 JUMPIFNOT                        R1 ; [+13]
       56 JUMPIFNOT                        R2 ; [+12]
       57 MOVE                             R3 R2
       58 LOADNIL                          R4
       59 LOADNIL                          R5
       60 FORGPREP                         R3
       61 LOADK                            R10 K11 ["bg-action-soft-emphasis"]
       62 NAMECALL                         R8 R7 K12 ["HasTag"]
       64 CALL                             R8 2 1
       65 JUMPIFNOT                        R8 ; [+1]
       66 RETURN                           R7 1
       67 FORGLOOP                         R3 2 ; [-7]
       69 GETUPVAL                         R4 0
       70 GETTABLEKS                       R4 R4 K0 ["ThreadsMenu"]
       72 GETTABLEKS                       R4 R4 K13 ["AddThreadButton"]
       74 MOVE                             R5 R0
       75 MOVE                             R6 R5
       76 JUMPIF                           R6 ; [+12]
       77 GETUPVAL                         R9 1
       78 JUMPIFNOTEQKNIL                  R9 ; [+2]
       80 LOADB                            R8 0 +1
       81 LOADB                            R8 1
       82 FASTCALL2K                       ASSERT R8 K2 ; [+4]
       84 LOADK                            R9 K2 ["Container not mounted, ensure render is called"]
       85 GETIMPORT                        R7 K4 [assert]
       87 CALL                             R7 2 0
       88 GETUPVAL                         R6 1
       89 MOVE                             R5 R6
       90 FASTCALL2K                       ASSERT R5 K5 ; [+5]
       92 MOVE                             R7 R5
       93 LOADK                            R8 K5 ["Query container not found"]
       94 GETIMPORT                        R6 K4 [assert]
       96 CALL                             R6 2 0
       97 GETUPVAL                         R6 2
       98 MOVE                             R7 R5
       99 CALL                             R6 1 1
      100 GETTABLEKS                       R6 R6 K6 ["getByTestId"]
      102 MOVE                             R7 R4
      103 CALL                             R6 1 1
      104 LOADK                            R9 K7 ["No result found for testId \"%*\""]
      105 MOVE                             R11 R4
      106 NAMECALL                         R9 R9 K8 ["format"]
      108 CALL                             R9 2 1
      109 FASTCALL2                        ASSERT R6 R9 ; [+4]
      111 MOVE                             R8 R6
      112 GETIMPORT                        R7 K4 [assert]
      114 CALL                             R7 2 0
      115 MOVE                             R3 R6
      116 RETURN                           R3 1

PROTO_213:
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
       32 GETUPVAL                         R20 10
       33 CALL                             R20 0 2
       34 GETUPVAL                         R22 11
       35 CALL                             R22 0 2
       36 GETUPVAL                         R24 12
       37 CALL                             R24 0 2
       38 GETUPVAL                         R26 13
       39 GETTABLEKS                       R26 R26 K3 ["createRef"]
       41 CALL                             R26 0 1
       42 DUPTABLE                         R27 K18 [{"SettingsContext", "ConversationProvider", "ThreadIdContext", "SessionIdContext", "WidgetVisibilityContext", "InputStateContext", "McpClientContext", "LLMPackageContext", "ModelQualityContext", "PopoutWidgetContext", "OptionsContext", "WindowInputContext", "LLMProviderSelectionContext", "ExternalServerContext"}]
       43 GETUPVAL                         R28 14
       44 MOVE                             R29 R1
       45 CALL                             R28 1 1
       46 SETTABLEKS                       R28 R27 K4 ["SettingsContext"]
       48 GETUPVAL                         R28 14
       49 MOVE                             R29 R2
       50 CALL                             R28 1 1
       51 SETTABLEKS                       R28 R27 K5 ["ConversationProvider"]
       53 GETUPVAL                         R28 14
       54 MOVE                             R29 R6
       55 CALL                             R28 1 1
       56 SETTABLEKS                       R28 R27 K6 ["ThreadIdContext"]
       58 GETUPVAL                         R28 14
       59 MOVE                             R29 R8
       60 CALL                             R28 1 1
       61 SETTABLEKS                       R28 R27 K7 ["SessionIdContext"]
       63 GETUPVAL                         R28 14
       64 MOVE                             R29 R10
       65 CALL                             R28 1 1
       66 SETTABLEKS                       R28 R27 K8 ["WidgetVisibilityContext"]
       68 GETUPVAL                         R28 14
       69 MOVE                             R29 R4
       70 CALL                             R28 1 1
       71 SETTABLEKS                       R28 R27 K9 ["InputStateContext"]
       73 GETUPVAL                         R28 14
       74 MOVE                             R29 R12
       75 CALL                             R28 1 1
       76 SETTABLEKS                       R28 R27 K10 ["McpClientContext"]
       78 GETUPVAL                         R28 14
       79 MOVE                             R29 R14
       80 CALL                             R28 1 1
       81 SETTABLEKS                       R28 R27 K11 ["LLMPackageContext"]
       83 GETUPVAL                         R28 14
       84 MOVE                             R29 R16
       85 CALL                             R28 1 1
       86 SETTABLEKS                       R28 R27 K12 ["ModelQualityContext"]
       88 GETUPVAL                         R28 14
       89 MOVE                             R29 R20
       90 CALL                             R28 1 1
       91 SETTABLEKS                       R28 R27 K13 ["PopoutWidgetContext"]
       93 GETUPVAL                         R28 14
       94 MOVE                             R29 R18
       95 CALL                             R28 1 1
       96 SETTABLEKS                       R28 R27 K14 ["OptionsContext"]
       98 GETUPVAL                         R28 14
       99 GETUPVAL                         R29 15
      100 GETTABLEKS                       R29 R29 K19 ["StandardProvider"]
      102 CALL                             R28 1 1
      103 SETTABLEKS                       R28 R27 K15 ["WindowInputContext"]
      105 GETUPVAL                         R28 14
      106 GETUPVAL                         R29 16
      107 GETTABLEKS                       R29 R29 K20 ["Provider"]
      109 CALL                             R28 1 1
      110 SETTABLEKS                       R28 R27 K16 ["LLMProviderSelectionContext"]
      112 GETUPVAL                         R28 14
      113 MOVE                             R29 R22
      114 CALL                             R28 1 1
      115 SETTABLEKS                       R28 R27 K17 ["ExternalServerContext"]
      117 GETUPVAL                         R28 17
      118 GETTABLEKS                       R28 R28 K21 ["join"]
      120 MOVE                             R29 R27
      121 GETTABLEKS                       R30 R0 K22 ["overrideProviders"]
      123 JUMPIF                           R30 ; [+2]
      124 NEWTABLE                         R30 0 0
      126 CALL                             R28 2 1
      127 NEWTABLE                         R29 0 0
      129 GETUPVAL                         R30 18
      130 MOVE                             R31 R29
      131 CALL                             R30 1 1
      132 GETTABLEKS                       R31 R0 K23 ["overrideEnvironment"]
      134 JUMPIFNOT                        R31 ; [+8]
      135 GETTABLEKS                       R31 R0 K23 ["overrideEnvironment"]
      137 LOADNIL                          R32
      138 LOADNIL                          R33
      139 FORGPREP                         R31
      140 SETTABLE                         R35 R30 R34
      141 FORGLOOP                         R31 2 ; [-2]
      143 LOADNIL                          R31
      144 GETTABLEKS                       R32 R0 K24 ["tools"]
      146 JUMPIFNOT                        R32 ; [+12]
      147 GETUPVAL                         R32 19
      148 GETTABLEKS                       R32 R32 K25 ["toolSetup"]
      150 GETTABLEKS                       R33 R0 K24 ["tools"]
      152 GETTABLEKS                       R34 R0 K26 ["editEnvironment"]
      154 MOVE                             R35 R30
      155 CALL                             R32 3 2
      156 MOVE                             R31 R32
      157 MOVE                             R30 R33
      158 JUMP                             ; [+8]
      159 GETTABLEKS                       R32 R0 K26 ["editEnvironment"]
      161 JUMPIFNOT                        R32 ; [+5]
      162 GETTABLEKS                       R32 R0 K26 ["editEnvironment"]
      164 MOVE                             R33 R30
      165 CALL                             R32 1 1
      166 MOVE                             R30 R32
      167 GETUPVAL                         R32 20
      168 GETTABLEKS                       R32 R32 K27 ["set"]
      170 MOVE                             R33 R30
      171 CALL                             R32 1 0
      172 GETUPVAL                         R32 21
      173 GETTABLEKS                       R32 R32 K28 ["create"]
      175 CALL                             R32 0 0
      176 GETUPVAL                         R32 22
      177 CALL                             R32 0 0
      178 GETTABLEKS                       R32 R0 K29 ["contentWidgets"]
      180 JUMPIFNOT                        R32 ; [+11]
      181 MOVE                             R33 R32
      182 LOADNIL                          R34
      183 LOADNIL                          R35
      184 FORGPREP                         R33
      185 GETUPVAL                         R38 23
      186 GETTABLEKS                       R38 R38 K30 ["add"]
      188 MOVE                             R39 R37
      189 CALL                             R38 1 0
      190 FORGLOOP                         R33 2 ; [-6]
      192 GETTABLEKS                       R33 R0 K31 ["toolWidgetMappings"]
      194 JUMPIFNOT                        R33 ; [+12]
      195 MOVE                             R34 R33
      196 LOADNIL                          R35
      197 LOADNIL                          R36
      198 FORGPREP                         R34
      199 GETUPVAL                         R39 24
      200 GETTABLEKS                       R39 R39 K30 ["add"]
      202 MOVE                             R40 R37
      203 MOVE                             R41 R38
      204 CALL                             R39 2 0
      205 FORGLOOP                         R34 2 ; [-7]
      207 NEWCLOSURE                       R34 P0
      208 CAPTURE                          VAL R29
      209 GETUPVAL                         R35 17
      210 GETTABLEKS                       R35 R35 K32 ["values"]
      212 MOVE                             R36 R28
      213 CALL                             R35 1 1
      214 GETTABLEKS                       R36 R0 K33 ["orderedOverrideProviders"]
      216 JUMPIFNOT                        R36 ; [+14]
      217 GETTABLEKS                       R36 R0 K33 ["orderedOverrideProviders"]
      219 LOADNIL                          R37
      220 LOADNIL                          R38
      221 FORGPREP                         R36
      222 FASTCALL2                        TABLE_INSERT R35 R40 ; [+5]
      224 MOVE                             R42 R35
      225 MOVE                             R43 R40
      226 GETIMPORT                        R41 K36 [table.insert]
      228 CALL                             R41 2 0
      229 FORGLOOP                         R36 2 ; [-8]
      231 GETUPVAL                         R36 25
      232 GETTABLEKS                       R36 R36 K37 ["FFlagPropertiesExposeContentView"]
      234 JUMPIFNOT                        R36 ; [+18]
      235 GETIMPORT                        R36 K39 [require]
      237 GETUPVAL                         R37 26
      238 GETTABLEKS                       R37 R37 K40 ["Components"]
      240 GETTABLEKS                       R37 R37 K41 ["Contexts"]
      242 GETTABLEKS                       R37 R37 K42 ["PropertiesContextProvider"]
      244 CALL                             R36 1 1
      245 MOVE                             R38 R35
      246 GETUPVAL                         R39 14
      247 MOVE                             R40 R36
      248 CALL                             R39 1 -1
      249 FASTCALL                         TABLE_INSERT ; [+2]
      250 GETIMPORT                        R37 K36 [table.insert]
      252 CALL                             R37 -1 0
      253 DUPCLOSURE                       R36 K43 [PROTO_19]
      254 CAPTURE                          UPVAL U27
      255 CAPTURE                          UPVAL U28
      256 LOADNIL                          R37
      257 NEWCLOSURE                       R38 P2
      258 CAPTURE                          UPVAL U29
      259 CAPTURE                          UPVAL U30
      260 CAPTURE                          REF R0
      261 CAPTURE                          UPVAL U31
      262 CAPTURE                          UPVAL U14
      263 CAPTURE                          UPVAL U32
      264 CAPTURE                          VAL R35
      265 CAPTURE                          UPVAL U27
      266 CAPTURE                          UPVAL U28
      267 CAPTURE                          REF R37
      268 DUPCLOSURE                       R39 K44 [PROTO_21]
      269 CAPTURE                          UPVAL U33
      270 NEWCLOSURE                       R40 P4
      271 CAPTURE                          UPVAL U34
      272 CAPTURE                          VAL R25
      273 NEWCLOSURE                       R41 P5
      274 CAPTURE                          VAL R26
      275 NEWCLOSURE                       R42 P6
      276 CAPTURE                          VAL R40
      277 NEWCLOSURE                       R43 P7
      278 CAPTURE                          UPVAL U35
      279 CAPTURE                          UPVAL U36
      280 CAPTURE                          VAL R25
      281 CAPTURE                          UPVAL U17
      282 CAPTURE                          UPVAL U34
      283 CAPTURE                          UPVAL U37
      284 NEWCLOSURE                       R44 P8
      285 CAPTURE                          REF R31
      286 CAPTURE                          VAL R43
      287 NEWCLOSURE                       R45 P9
      288 CAPTURE                          REF R37
      289 NEWCLOSURE                       R46 P10
      290 CAPTURE                          REF R37
      291 NEWCLOSURE                       R47 P11
      292 CAPTURE                          REF R37
      293 CAPTURE                          UPVAL U38
      294 NEWCLOSURE                       R48 P12
      295 CAPTURE                          REF R37
      296 CAPTURE                          UPVAL U38
      297 NEWCLOSURE                       R49 P13
      298 CAPTURE                          REF R37
      299 CAPTURE                          UPVAL U38
      300 NEWCLOSURE                       R50 P14
      301 CAPTURE                          REF R37
      302 CAPTURE                          UPVAL U38
      303 NEWTABLE                         R51 8 0
      305 LOADK                            R52 K45 ["<"]
      306 SETTABLEKS                       R52 R51 K46 ["&lt;"]
      308 LOADK                            R52 K47 [">"]
      309 SETTABLEKS                       R52 R51 K48 ["&gt;"]
      311 LOADK                            R52 K49 ["\""]
      312 SETTABLEKS                       R52 R51 K50 ["&quot;"]
      314 LOADK                            R52 K51 ["'"]
      315 SETTABLEKS                       R52 R51 K52 ["&apos;"]
      317 LOADK                            R52 K53 ["&"]
      318 SETTABLEKS                       R52 R51 K54 ["&amp;"]
      320 NEWCLOSURE                       R52 P15
      321 CAPTURE                          VAL R51
      322 NEWCLOSURE                       R53 P16
      323 CAPTURE                          VAL R51
      324 NEWCLOSURE                       R54 P17
      325 CAPTURE                          REF R37
      326 CAPTURE                          UPVAL U17
      327 CAPTURE                          UPVAL U38
      328 CAPTURE                          VAL R51
      329 DUPCLOSURE                       R55 K55 [PROTO_42]
      330 DUPCLOSURE                       R56 K56 [PROTO_44]
      331 CAPTURE                          UPVAL U34
      332 CAPTURE                          UPVAL U33
      333 CAPTURE                          UPVAL U27
      334 CAPTURE                          UPVAL U28
      335 DUPCLOSURE                       R57 K57 [PROTO_46]
      336 CAPTURE                          UPVAL U34
      337 CAPTURE                          UPVAL U33
      338 CAPTURE                          UPVAL U27
      339 CAPTURE                          UPVAL U28
      340 DUPCLOSURE                       R58 K58 [PROTO_47]
      341 CAPTURE                          UPVAL U33
      342 CAPTURE                          UPVAL U27
      343 CAPTURE                          UPVAL U28
      344 DUPCLOSURE                       R59 K59 [PROTO_48]
      345 CAPTURE                          UPVAL U33
      346 CAPTURE                          UPVAL U27
      347 CAPTURE                          UPVAL U28
      348 DUPCLOSURE                       R60 K60 [PROTO_49]
      349 CAPTURE                          UPVAL U29
      350 CAPTURE                          UPVAL U27
      351 CAPTURE                          UPVAL U28
      352 NEWCLOSURE                       R61 P24
      353 CAPTURE                          UPVAL U27
      354 CAPTURE                          UPVAL U28
      355 CAPTURE                          UPVAL U39
      356 CAPTURE                          REF R37
      357 CAPTURE                          UPVAL U38
      358 NEWCLOSURE                       R62 P25
      359 CAPTURE                          UPVAL U27
      360 CAPTURE                          UPVAL U28
      361 CAPTURE                          UPVAL U39
      362 CAPTURE                          REF R37
      363 CAPTURE                          UPVAL U38
      364 NEWCLOSURE                       R63 P26
      365 CAPTURE                          UPVAL U38
      366 CAPTURE                          REF R37
      367 CAPTURE                          UPVAL U40
      368 NEWCLOSURE                       R64 P27
      369 CAPTURE                          UPVAL U38
      370 CAPTURE                          REF R37
      371 CAPTURE                          VAL R51
      372 CAPTURE                          UPVAL U40
      373 NEWCLOSURE                       R65 P28
      374 CAPTURE                          UPVAL U38
      375 CAPTURE                          REF R37
      376 CAPTURE                          UPVAL U17
      377 CAPTURE                          UPVAL U40
      378 NEWCLOSURE                       R66 P29
      379 CAPTURE                          UPVAL U38
      380 CAPTURE                          REF R37
      381 CAPTURE                          VAL R51
      382 CAPTURE                          UPVAL U40
      383 CAPTURE                          UPVAL U39
      384 NEWCLOSURE                       R67 P30
      385 CAPTURE                          UPVAL U40
      386 CAPTURE                          REF R37
      387 NEWCLOSURE                       R68 P31
      388 CAPTURE                          REF R37
      389 CAPTURE                          UPVAL U17
      390 CAPTURE                          UPVAL U38
      391 NEWCLOSURE                       R69 P32
      392 CAPTURE                          UPVAL U39
      393 CAPTURE                          REF R37
      394 CAPTURE                          UPVAL U38
      395 NEWCLOSURE                       R70 P33
      396 CAPTURE                          UPVAL U39
      397 CAPTURE                          REF R37
      398 CAPTURE                          UPVAL U38
      399 NEWCLOSURE                       R71 P34
      400 CAPTURE                          UPVAL U34
      401 CAPTURE                          VAL R17
      402 NEWCLOSURE                       R72 P35
      403 CAPTURE                          VAL R9
      404 CAPTURE                          UPVAL U29
      405 CAPTURE                          UPVAL U27
      406 CAPTURE                          UPVAL U28
      407 NEWCLOSURE                       R73 P36
      408 CAPTURE                          VAL R11
      409 CAPTURE                          UPVAL U29
      410 CAPTURE                          UPVAL U27
      411 CAPTURE                          UPVAL U28
      412 NEWCLOSURE                       R74 P37
      413 CAPTURE                          UPVAL U27
      414 CAPTURE                          UPVAL U28
      415 CAPTURE                          UPVAL U39
      416 CAPTURE                          REF R37
      417 CAPTURE                          UPVAL U38
      418 CAPTURE                          UPVAL U34
      419 NEWCLOSURE                       R75 P38
      420 CAPTURE                          UPVAL U33
      421 CAPTURE                          UPVAL U27
      422 CAPTURE                          UPVAL U28
      423 CAPTURE                          UPVAL U39
      424 CAPTURE                          REF R37
      425 CAPTURE                          UPVAL U38
      426 NEWCLOSURE                       R76 P39
      427 CAPTURE                          UPVAL U27
      428 CAPTURE                          UPVAL U28
      429 CAPTURE                          UPVAL U39
      430 CAPTURE                          REF R37
      431 CAPTURE                          UPVAL U38
      432 CAPTURE                          UPVAL U34
      433 NEWCLOSURE                       R77 P40
      434 CAPTURE                          UPVAL U27
      435 CAPTURE                          UPVAL U28
      436 CAPTURE                          UPVAL U39
      437 CAPTURE                          REF R37
      438 CAPTURE                          UPVAL U38
      439 DUPCLOSURE                       R78 K61 [PROTO_76]
      440 CAPTURE                          UPVAL U29
      441 NEWCLOSURE                       R79 P42
      442 CAPTURE                          UPVAL U39
      443 CAPTURE                          REF R37
      444 CAPTURE                          UPVAL U38
      445 CAPTURE                          UPVAL U34
      446 CAPTURE                          UPVAL U33
      447 CAPTURE                          UPVAL U27
      448 CAPTURE                          UPVAL U28
      449 NEWCLOSURE                       R80 P43
      450 CAPTURE                          UPVAL U39
      451 CAPTURE                          REF R37
      452 CAPTURE                          UPVAL U38
      453 CAPTURE                          UPVAL U34
      454 CAPTURE                          UPVAL U33
      455 CAPTURE                          UPVAL U27
      456 CAPTURE                          UPVAL U28
      457 DUPCLOSURE                       R81 K62 [PROTO_79]
      458 CAPTURE                          UPVAL U33
      459 CAPTURE                          UPVAL U27
      460 CAPTURE                          UPVAL U28
      461 DUPCLOSURE                       R82 K63 [PROTO_81]
      462 CAPTURE                          UPVAL U34
      463 CAPTURE                          UPVAL U33
      464 CAPTURE                          UPVAL U27
      465 CAPTURE                          UPVAL U28
      466 NEWCLOSURE                       R83 P46
      467 CAPTURE                          VAL R81
      468 CAPTURE                          UPVAL U27
      469 CAPTURE                          UPVAL U28
      470 CAPTURE                          UPVAL U39
      471 CAPTURE                          REF R37
      472 CAPTURE                          UPVAL U38
      473 NEWCLOSURE                       R84 P47
      474 CAPTURE                          VAL R82
      475 CAPTURE                          UPVAL U27
      476 CAPTURE                          UPVAL U28
      477 CAPTURE                          UPVAL U39
      478 CAPTURE                          REF R37
      479 CAPTURE                          UPVAL U38
      480 CAPTURE                          VAL R81
      481 NEWCLOSURE                       R85 P48
      482 CAPTURE                          UPVAL U27
      483 CAPTURE                          UPVAL U28
      484 CAPTURE                          UPVAL U39
      485 CAPTURE                          REF R37
      486 CAPTURE                          UPVAL U38
      487 CAPTURE                          UPVAL U33
      488 DUPCLOSURE                       R86 K64 [PROTO_85]
      489 CAPTURE                          UPVAL U33
      490 CAPTURE                          UPVAL U27
      491 CAPTURE                          UPVAL U28
      492 NEWCLOSURE                       R87 P50
      493 CAPTURE                          UPVAL U27
      494 CAPTURE                          UPVAL U28
      495 CAPTURE                          UPVAL U39
      496 CAPTURE                          REF R37
      497 CAPTURE                          UPVAL U38
      498 NEWCLOSURE                       R88 P51
      499 CAPTURE                          UPVAL U41
      500 CAPTURE                          UPVAL U42
      501 CAPTURE                          UPVAL U27
      502 CAPTURE                          UPVAL U28
      503 CAPTURE                          UPVAL U39
      504 CAPTURE                          REF R37
      505 CAPTURE                          UPVAL U38
      506 NEWCLOSURE                       R89 P52
      507 CAPTURE                          VAL R67
      508 CAPTURE                          UPVAL U38
      509 NEWCLOSURE                       R90 P53
      510 CAPTURE                          VAL R67
      511 NEWCLOSURE                       R91 P54
      512 CAPTURE                          UPVAL U27
      513 CAPTURE                          UPVAL U28
      514 CAPTURE                          UPVAL U39
      515 CAPTURE                          REF R37
      516 CAPTURE                          UPVAL U38
      517 DUPCLOSURE                       R92 K65 [PROTO_92]
      518 CAPTURE                          UPVAL U27
      519 CAPTURE                          UPVAL U28
      520 NEWCLOSURE                       R93 P56
      521 CAPTURE                          UPVAL U39
      522 CAPTURE                          REF R37
      523 CAPTURE                          UPVAL U38
      524 CAPTURE                          UPVAL U27
      525 CAPTURE                          UPVAL U28
      526 CAPTURE                          UPVAL U34
      527 CAPTURE                          UPVAL U33
      528 NEWCLOSURE                       R94 P57
      529 CAPTURE                          UPVAL U39
      530 CAPTURE                          REF R37
      531 CAPTURE                          UPVAL U38
      532 CAPTURE                          UPVAL U27
      533 CAPTURE                          UPVAL U28
      534 CAPTURE                          UPVAL U34
      535 CAPTURE                          UPVAL U33
      536 NEWCLOSURE                       R95 P58
      537 CAPTURE                          UPVAL U39
      538 CAPTURE                          REF R37
      539 CAPTURE                          UPVAL U38
      540 CAPTURE                          UPVAL U27
      541 CAPTURE                          UPVAL U28
      542 CAPTURE                          UPVAL U34
      543 CAPTURE                          UPVAL U33
      544 NEWCLOSURE                       R96 P59
      545 CAPTURE                          UPVAL U39
      546 CAPTURE                          REF R37
      547 CAPTURE                          UPVAL U38
      548 CAPTURE                          UPVAL U27
      549 CAPTURE                          UPVAL U28
      550 CAPTURE                          UPVAL U34
      551 CAPTURE                          UPVAL U33
      552 NEWCLOSURE                       R97 P60
      553 CAPTURE                          UPVAL U39
      554 CAPTURE                          REF R37
      555 CAPTURE                          UPVAL U38
      556 CAPTURE                          UPVAL U27
      557 CAPTURE                          UPVAL U28
      558 CAPTURE                          UPVAL U34
      559 CAPTURE                          UPVAL U33
      560 NEWCLOSURE                       R98 P61
      561 CAPTURE                          UPVAL U39
      562 CAPTURE                          REF R37
      563 CAPTURE                          UPVAL U38
      564 CAPTURE                          UPVAL U27
      565 CAPTURE                          UPVAL U28
      566 CAPTURE                          UPVAL U34
      567 CAPTURE                          UPVAL U33
      568 NEWCLOSURE                       R99 P62
      569 CAPTURE                          UPVAL U39
      570 CAPTURE                          REF R37
      571 CAPTURE                          UPVAL U38
      572 NEWCLOSURE                       R100 P63
      573 CAPTURE                          UPVAL U39
      574 CAPTURE                          REF R37
      575 CAPTURE                          UPVAL U38
      576 CAPTURE                          UPVAL U27
      577 CAPTURE                          UPVAL U28
      578 CAPTURE                          UPVAL U34
      579 CAPTURE                          UPVAL U33
      580 DUPCLOSURE                       R101 K66 [PROTO_103]
      581 CAPTURE                          UPVAL U25
      582 CAPTURE                          UPVAL U35
      583 CAPTURE                          UPVAL U43
      584 CAPTURE                          UPVAL U30
      585 NEWCLOSURE                       R102 P65
      586 CAPTURE                          UPVAL U39
      587 CAPTURE                          REF R37
      588 CAPTURE                          UPVAL U38
      589 DUPCLOSURE                       R103 K67 [PROTO_105]
      590 DUPCLOSURE                       R104 K68 [PROTO_106]
      591 NEWCLOSURE                       R105 P68
      592 CAPTURE                          UPVAL U39
      593 CAPTURE                          REF R37
      594 CAPTURE                          UPVAL U38
      595 CAPTURE                          VAL R104
      596 DUPCLOSURE                       R106 K69 [PROTO_108]
      597 CAPTURE                          VAL R103
      598 CAPTURE                          VAL R104
      599 CAPTURE                          UPVAL U39
      600 CAPTURE                          UPVAL U27
      601 CAPTURE                          UPVAL U28
      602 CAPTURE                          UPVAL U34
      603 CAPTURE                          UPVAL U33
      604 NEWCLOSURE                       R107 P70
      605 CAPTURE                          UPVAL U39
      606 CAPTURE                          REF R37
      607 CAPTURE                          UPVAL U38
      608 CAPTURE                          UPVAL U27
      609 CAPTURE                          UPVAL U28
      610 CAPTURE                          UPVAL U34
      611 CAPTURE                          UPVAL U33
      612 NEWCLOSURE                       R108 P71
      613 CAPTURE                          UPVAL U39
      614 CAPTURE                          REF R37
      615 CAPTURE                          UPVAL U38
      616 CAPTURE                          UPVAL U27
      617 CAPTURE                          UPVAL U28
      618 CAPTURE                          UPVAL U34
      619 CAPTURE                          UPVAL U33
      620 NEWCLOSURE                       R109 P72
      621 CAPTURE                          UPVAL U39
      622 CAPTURE                          REF R37
      623 CAPTURE                          UPVAL U38
      624 CAPTURE                          UPVAL U27
      625 CAPTURE                          UPVAL U28
      626 CAPTURE                          UPVAL U34
      627 CAPTURE                          UPVAL U33
      628 NEWCLOSURE                       R110 P73
      629 CAPTURE                          UPVAL U39
      630 CAPTURE                          REF R37
      631 CAPTURE                          UPVAL U38
      632 CAPTURE                          UPVAL U27
      633 CAPTURE                          UPVAL U28
      634 CAPTURE                          UPVAL U34
      635 CAPTURE                          UPVAL U33
      636 NEWCLOSURE                       R111 P74
      637 CAPTURE                          UPVAL U39
      638 CAPTURE                          REF R37
      639 CAPTURE                          UPVAL U38
      640 NEWCLOSURE                       R112 P75
      641 CAPTURE                          VAL R54
      642 CAPTURE                          UPVAL U44
      643 CAPTURE                          UPVAL U27
      644 CAPTURE                          UPVAL U28
      645 CAPTURE                          UPVAL U34
      646 CAPTURE                          UPVAL U33
      647 NEWCLOSURE                       R113 P76
      648 CAPTURE                          VAL R54
      649 CAPTURE                          UPVAL U44
      650 CAPTURE                          UPVAL U27
      651 CAPTURE                          UPVAL U28
      652 CAPTURE                          UPVAL U34
      653 CAPTURE                          UPVAL U33
      654 NEWCLOSURE                       R114 P77
      655 CAPTURE                          VAL R54
      656 CAPTURE                          UPVAL U44
      657 CAPTURE                          UPVAL U27
      658 CAPTURE                          UPVAL U28
      659 CAPTURE                          UPVAL U34
      660 CAPTURE                          UPVAL U33
      661 NEWCLOSURE                       R115 P78
      662 CAPTURE                          VAL R54
      663 CAPTURE                          UPVAL U44
      664 CAPTURE                          UPVAL U27
      665 CAPTURE                          UPVAL U28
      666 CAPTURE                          UPVAL U34
      667 CAPTURE                          UPVAL U33
      668 NEWCLOSURE                       R116 P79
      669 CAPTURE                          UPVAL U39
      670 CAPTURE                          REF R37
      671 CAPTURE                          UPVAL U38
      672 CAPTURE                          UPVAL U27
      673 CAPTURE                          UPVAL U28
      674 CAPTURE                          UPVAL U34
      675 CAPTURE                          UPVAL U33
      676 NEWCLOSURE                       R117 P80
      677 CAPTURE                          UPVAL U39
      678 CAPTURE                          REF R37
      679 CAPTURE                          UPVAL U38
      680 NEWCLOSURE                       R118 P81
      681 CAPTURE                          VAL R54
      682 CAPTURE                          UPVAL U44
      683 NEWCLOSURE                       R119 P82
      684 CAPTURE                          VAL R54
      685 CAPTURE                          UPVAL U44
      686 NEWCLOSURE                       R120 P83
      687 CAPTURE                          VAL R3
      688 NEWCLOSURE                       R121 P84
      689 CAPTURE                          UPVAL U34
      690 CAPTURE                          VAL R3
      691 CAPTURE                          UPVAL U27
      692 CAPTURE                          UPVAL U28
      693 NEWCLOSURE                       R122 P85
      694 CAPTURE                          VAL R7
      695 CAPTURE                          UPVAL U34
      696 CAPTURE                          UPVAL U27
      697 CAPTURE                          UPVAL U28
      698 NEWCLOSURE                       R123 P86
      699 CAPTURE                          UPVAL U34
      700 CAPTURE                          VAL R3
      701 CAPTURE                          UPVAL U27
      702 CAPTURE                          UPVAL U28
      703 CAPTURE                          VAL R7
      704 NEWCLOSURE                       R124 P87
      705 CAPTURE                          UPVAL U39
      706 CAPTURE                          REF R37
      707 CAPTURE                          UPVAL U38
      708 CAPTURE                          UPVAL U34
      709 CAPTURE                          UPVAL U33
      710 CAPTURE                          UPVAL U27
      711 CAPTURE                          UPVAL U28
      712 NEWCLOSURE                       R125 P88
      713 CAPTURE                          UPVAL U39
      714 CAPTURE                          REF R37
      715 CAPTURE                          UPVAL U38
      716 NEWCLOSURE                       R126 P89
      717 CAPTURE                          UPVAL U39
      718 CAPTURE                          REF R37
      719 CAPTURE                          UPVAL U38
      720 CAPTURE                          UPVAL U34
      721 CAPTURE                          UPVAL U33
      722 CAPTURE                          UPVAL U27
      723 CAPTURE                          UPVAL U28
      724 CAPTURE                          UPVAL U45
      725 CAPTURE                          VAL R68
      726 NEWCLOSURE                       R127 P90
      727 CAPTURE                          VAL R13
      728 NEWCLOSURE                       R128 P91
      729 CAPTURE                          VAL R13
      730 NEWCLOSURE                       R129 P92
      731 CAPTURE                          VAL R13
      732 NEWCLOSURE                       R130 P93
      733 CAPTURE                          VAL R13
      734 NEWCLOSURE                       R131 P94
      735 CAPTURE                          VAL R13
      736 NEWCLOSURE                       R132 P95
      737 CAPTURE                          VAL R13
      738 NEWCLOSURE                       R133 P96
      739 CAPTURE                          VAL R15
      740 NEWCLOSURE                       R134 P97
      741 CAPTURE                          VAL R15
      742 NEWCLOSURE                       R135 P98
      743 CAPTURE                          UPVAL U34
      744 CAPTURE                          VAL R5
      745 CAPTURE                          UPVAL U46
      746 CAPTURE                          UPVAL U27
      747 CAPTURE                          UPVAL U28
      748 CAPTURE                          UPVAL U41
      749 CAPTURE                          VAL R65
      750 NEWCLOSURE                       R136 P99
      751 CAPTURE                          UPVAL U34
      752 CAPTURE                          VAL R5
      753 NEWCLOSURE                       R137 P100
      754 CAPTURE                          UPVAL U39
      755 CAPTURE                          REF R37
      756 CAPTURE                          UPVAL U38
      757 NEWCLOSURE                       R138 P101
      758 CAPTURE                          UPVAL U39
      759 CAPTURE                          REF R37
      760 CAPTURE                          UPVAL U38
      761 CAPTURE                          UPVAL U27
      762 CAPTURE                          UPVAL U28
      763 CAPTURE                          UPVAL U34
      764 CAPTURE                          UPVAL U33
      765 NEWCLOSURE                       R139 P102
      766 CAPTURE                          REF R30
      767 CAPTURE                          UPVAL U37
      768 CAPTURE                          UPVAL U47
      769 NEWCLOSURE                       R140 P103
      770 CAPTURE                          UPVAL U39
      771 CAPTURE                          REF R37
      772 CAPTURE                          UPVAL U38
      773 NEWCLOSURE                       R141 P104
      774 CAPTURE                          UPVAL U39
      775 CAPTURE                          REF R37
      776 CAPTURE                          UPVAL U38
      777 CAPTURE                          UPVAL U37
      778 NEWCLOSURE                       R142 P105
      779 CAPTURE                          UPVAL U39
      780 CAPTURE                          REF R37
      781 CAPTURE                          UPVAL U38
      782 CAPTURE                          UPVAL U27
      783 CAPTURE                          UPVAL U28
      784 CAPTURE                          UPVAL U34
      785 CAPTURE                          UPVAL U33
      786 NEWCLOSURE                       R143 P106
      787 CAPTURE                          UPVAL U39
      788 CAPTURE                          REF R37
      789 CAPTURE                          UPVAL U38
      790 NEWCLOSURE                       R144 P107
      791 CAPTURE                          UPVAL U39
      792 CAPTURE                          REF R37
      793 CAPTURE                          UPVAL U38
      794 NEWCLOSURE                       R145 P108
      795 CAPTURE                          UPVAL U39
      796 CAPTURE                          REF R37
      797 CAPTURE                          UPVAL U38
      798 DUPCLOSURE                       R146 K70 [PROTO_157]
      799 CAPTURE                          UPVAL U40
      800 CAPTURE                          UPVAL U39
      801 NEWCLOSURE                       R147 P110
      802 CAPTURE                          UPVAL U39
      803 CAPTURE                          REF R37
      804 CAPTURE                          UPVAL U38
      805 CAPTURE                          UPVAL U34
      806 CAPTURE                          UPVAL U33
      807 CAPTURE                          UPVAL U27
      808 CAPTURE                          UPVAL U28
      809 NEWCLOSURE                       R148 P111
      810 CAPTURE                          UPVAL U40
      811 CAPTURE                          REF R37
      812 CAPTURE                          UPVAL U39
      813 NEWCLOSURE                       R149 P112
      814 CAPTURE                          UPVAL U40
      815 CAPTURE                          REF R37
      816 CAPTURE                          UPVAL U39
      817 NEWCLOSURE                       R150 P113
      818 CAPTURE                          UPVAL U40
      819 CAPTURE                          REF R37
      820 CAPTURE                          UPVAL U39
      821 NEWCLOSURE                       R151 P114
      822 CAPTURE                          UPVAL U39
      823 CAPTURE                          REF R37
      824 CAPTURE                          UPVAL U38
      825 NEWCLOSURE                       R152 P115
      826 CAPTURE                          UPVAL U39
      827 CAPTURE                          REF R37
      828 CAPTURE                          UPVAL U38
      829 NEWCLOSURE                       R153 P116
      830 CAPTURE                          UPVAL U39
      831 CAPTURE                          REF R37
      832 CAPTURE                          UPVAL U38
      833 NEWCLOSURE                       R154 P117
      834 CAPTURE                          UPVAL U39
      835 CAPTURE                          REF R37
      836 CAPTURE                          UPVAL U38
      837 NEWCLOSURE                       R155 P118
      838 CAPTURE                          UPVAL U39
      839 CAPTURE                          REF R37
      840 CAPTURE                          UPVAL U38
      841 DUPCLOSURE                       R156 K71 [PROTO_167]
      842 CAPTURE                          UPVAL U34
      843 CAPTURE                          UPVAL U33
      844 CAPTURE                          UPVAL U27
      845 CAPTURE                          UPVAL U28
      846 NEWCLOSURE                       R157 P120
      847 CAPTURE                          UPVAL U39
      848 CAPTURE                          REF R37
      849 CAPTURE                          UPVAL U38
      850 CAPTURE                          UPVAL U34
      851 CAPTURE                          UPVAL U33
      852 CAPTURE                          UPVAL U27
      853 CAPTURE                          UPVAL U28
      854 NEWCLOSURE                       R158 P121
      855 CAPTURE                          UPVAL U39
      856 CAPTURE                          REF R37
      857 CAPTURE                          UPVAL U38
      858 CAPTURE                          UPVAL U34
      859 CAPTURE                          UPVAL U33
      860 CAPTURE                          UPVAL U27
      861 CAPTURE                          UPVAL U28
      862 NEWCLOSURE                       R159 P122
      863 CAPTURE                          UPVAL U39
      864 CAPTURE                          REF R37
      865 CAPTURE                          UPVAL U38
      866 NEWCLOSURE                       R160 P123
      867 CAPTURE                          UPVAL U39
      868 CAPTURE                          REF R37
      869 CAPTURE                          UPVAL U38
      870 NEWCLOSURE                       R161 P124
      871 CAPTURE                          UPVAL U39
      872 CAPTURE                          REF R37
      873 CAPTURE                          UPVAL U38
      874 NEWCLOSURE                       R162 P125
      875 CAPTURE                          UPVAL U39
      876 CAPTURE                          REF R37
      877 CAPTURE                          UPVAL U38
      878 NEWCLOSURE                       R163 P126
      879 CAPTURE                          UPVAL U39
      880 CAPTURE                          REF R37
      881 CAPTURE                          UPVAL U38
      882 NEWCLOSURE                       R164 P127
      883 CAPTURE                          UPVAL U39
      884 CAPTURE                          REF R37
      885 CAPTURE                          UPVAL U38
      886 NEWCLOSURE                       R165 P128
      887 CAPTURE                          UPVAL U39
      888 CAPTURE                          REF R37
      889 CAPTURE                          UPVAL U38
      890 CAPTURE                          UPVAL U34
      891 CAPTURE                          UPVAL U33
      892 CAPTURE                          UPVAL U27
      893 CAPTURE                          UPVAL U28
      894 NEWCLOSURE                       R166 P129
      895 CAPTURE                          UPVAL U39
      896 CAPTURE                          REF R37
      897 CAPTURE                          UPVAL U38
      898 CAPTURE                          UPVAL U27
      899 CAPTURE                          UPVAL U28
      900 CAPTURE                          UPVAL U34
      901 CAPTURE                          UPVAL U33
      902 NEWCLOSURE                       R167 P130
      903 CAPTURE                          UPVAL U39
      904 CAPTURE                          REF R37
      905 CAPTURE                          UPVAL U38
      906 CAPTURE                          UPVAL U27
      907 CAPTURE                          UPVAL U28
      908 CAPTURE                          UPVAL U34
      909 CAPTURE                          UPVAL U33
      910 NEWCLOSURE                       R168 P131
      911 CAPTURE                          UPVAL U39
      912 CAPTURE                          REF R37
      913 CAPTURE                          UPVAL U38
      914 CAPTURE                          UPVAL U27
      915 CAPTURE                          UPVAL U28
      916 CAPTURE                          UPVAL U34
      917 CAPTURE                          UPVAL U33
      918 NEWCLOSURE                       R169 P132
      919 CAPTURE                          UPVAL U39
      920 CAPTURE                          REF R37
      921 CAPTURE                          UPVAL U38
      922 NEWCLOSURE                       R170 P133
      923 CAPTURE                          UPVAL U39
      924 CAPTURE                          REF R37
      925 CAPTURE                          UPVAL U38
      926 CAPTURE                          UPVAL U27
      927 CAPTURE                          UPVAL U28
      928 CAPTURE                          UPVAL U34
      929 CAPTURE                          UPVAL U33
      930 NEWCLOSURE                       R171 P134
      931 CAPTURE                          UPVAL U39
      932 CAPTURE                          REF R37
      933 CAPTURE                          UPVAL U38
      934 NEWCLOSURE                       R172 P135
      935 CAPTURE                          REF R30
      936 NEWCLOSURE                       R173 P136
      937 CAPTURE                          UPVAL U39
      938 CAPTURE                          REF R37
      939 CAPTURE                          UPVAL U38
      940 CAPTURE                          UPVAL U34
      941 CAPTURE                          UPVAL U33
      942 CAPTURE                          UPVAL U27
      943 CAPTURE                          UPVAL U28
      944 DUPCLOSURE                       R174 K72 [PROTO_186]
      945 CAPTURE                          UPVAL U38
      946 CAPTURE                          UPVAL U40
      947 CAPTURE                          UPVAL U39
      948 NEWCLOSURE                       R175 P138
      949 CAPTURE                          UPVAL U39
      950 CAPTURE                          REF R37
      951 CAPTURE                          UPVAL U38
      952 CAPTURE                          UPVAL U34
      953 CAPTURE                          UPVAL U33
      954 CAPTURE                          UPVAL U27
      955 CAPTURE                          UPVAL U28
      956 NEWCLOSURE                       R176 P139
      957 CAPTURE                          UPVAL U39
      958 CAPTURE                          UPVAL U40
      959 CAPTURE                          REF R37
      960 CAPTURE                          UPVAL U48
      961 NEWCLOSURE                       R177 P140
      962 CAPTURE                          UPVAL U39
      963 CAPTURE                          REF R37
      964 CAPTURE                          UPVAL U38
      965 CAPTURE                          UPVAL U27
      966 CAPTURE                          UPVAL U28
      967 CAPTURE                          UPVAL U34
      968 CAPTURE                          UPVAL U33
      969 NEWCLOSURE                       R178 P141
      970 CAPTURE                          UPVAL U39
      971 CAPTURE                          REF R37
      972 CAPTURE                          UPVAL U38
      973 CAPTURE                          UPVAL U27
      974 CAPTURE                          UPVAL U28
      975 CAPTURE                          UPVAL U34
      976 CAPTURE                          UPVAL U33
      977 NEWCLOSURE                       R179 P142
      978 CAPTURE                          UPVAL U39
      979 CAPTURE                          REF R37
      980 CAPTURE                          UPVAL U38
      981 CAPTURE                          UPVAL U27
      982 CAPTURE                          UPVAL U28
      983 CAPTURE                          UPVAL U34
      984 CAPTURE                          UPVAL U33
      985 NEWCLOSURE                       R180 P143
      986 CAPTURE                          UPVAL U39
      987 CAPTURE                          REF R37
      988 CAPTURE                          UPVAL U38
      989 CAPTURE                          UPVAL U27
      990 CAPTURE                          UPVAL U28
      991 CAPTURE                          UPVAL U34
      992 CAPTURE                          UPVAL U33
      993 NEWCLOSURE                       R181 P144
      994 CAPTURE                          UPVAL U39
      995 CAPTURE                          REF R37
      996 CAPTURE                          UPVAL U38
      997 NEWCLOSURE                       R182 P145
      998 CAPTURE                          UPVAL U39
      999 CAPTURE                          REF R37
     1000 CAPTURE                          UPVAL U38
     1001 CAPTURE                          UPVAL U27
     1002 CAPTURE                          UPVAL U28
     1003 CAPTURE                          UPVAL U34
     1004 CAPTURE                          UPVAL U33
     1005 NEWCLOSURE                       R183 P146
     1006 CAPTURE                          VAL R15
     1007 CAPTURE                          UPVAL U41
     1008 CAPTURE                          UPVAL U42
     1009 CAPTURE                          UPVAL U34
     1010 CAPTURE                          UPVAL U27
     1011 CAPTURE                          UPVAL U28
     1012 NEWCLOSURE                       R184 P147
     1013 CAPTURE                          VAL R13
     1014 CAPTURE                          UPVAL U37
     1015 CAPTURE                          UPVAL U49
     1016 CAPTURE                          VAL R183
     1017 NEWCLOSURE                       R185 P148
     1018 CAPTURE                          VAL R183
     1019 NEWCLOSURE                       R186 P149
     1020 CAPTURE                          VAL R183
     1021 NEWCLOSURE                       R187 P150
     1022 CAPTURE                          VAL R183
     1023 NEWCLOSURE                       R188 P151
     1024 CAPTURE                          UPVAL U35
     1025 CAPTURE                          REF R30
     1026 DUPCLOSURE                       R189 K73 [PROTO_204]
     1027 CAPTURE                          UPVAL U38
     1028 CAPTURE                          UPVAL U34
     1029 CAPTURE                          UPVAL U33
     1030 CAPTURE                          UPVAL U27
     1031 CAPTURE                          UPVAL U28
     1032 NEWCLOSURE                       R190 P153
     1033 CAPTURE                          UPVAL U39
     1034 CAPTURE                          REF R37
     1035 CAPTURE                          UPVAL U38
     1036 NEWCLOSURE                       R191 P154
     1037 CAPTURE                          UPVAL U39
     1038 CAPTURE                          REF R37
     1039 CAPTURE                          UPVAL U38
     1040 NEWCLOSURE                       R192 P155
     1041 CAPTURE                          UPVAL U34
     1042 CAPTURE                          VAL R19
     1043 DUPCLOSURE                       R193 K74 [PROTO_209]
     1044 CAPTURE                          UPVAL U38
     1045 CAPTURE                          UPVAL U40
     1046 CAPTURE                          UPVAL U39
     1047 CAPTURE                          UPVAL U34
     1048 CAPTURE                          UPVAL U33
     1049 CAPTURE                          UPVAL U27
     1050 CAPTURE                          UPVAL U28
     1051 DUPCLOSURE                       R194 K75 [PROTO_210]
     1052 NEWCLOSURE                       R195 P158
     1053 CAPTURE                          UPVAL U39
     1054 CAPTURE                          REF R37
     1055 CAPTURE                          UPVAL U38
     1056 MOVE                             R196 R38
     1057 GETUPVAL                         R197 14
     1058 LOADK                            R198 K76 ["Frame"]
     1059 DUPTABLE                         R199 K78 [{"Size"}]
     1060 GETIMPORT                        R200 K81 [UDim2.fromScale]
     1062 LOADN                            R201 1
     1063 LOADN                            R202 1
     1064 CALL                             R200 2 1
     1065 SETTABLEKS                       R200 R199 K77 ["Size"]
     1067 DUPTABLE                         R200 K85 [{"UIListLayout", "MainView", "TestHooks"}]
     1068 GETUPVAL                         R201 14
     1069 LOADK                            R202 K82 ["UIListLayout"]
     1070 DUPTABLE                         R203 K87 [{"FillDirection"}]
     1071 GETIMPORT                        R204 K90 [Enum.FillDirection.Vertical]
     1073 SETTABLEKS                       R204 R203 K86 ["FillDirection"]
     1075 CALL                             R201 2 1
     1076 SETTABLEKS                       R201 R200 K82 ["UIListLayout"]
     1078 GETUPVAL                         R201 14
     1079 GETUPVAL                         R202 50
     1080 DUPTABLE                         R203 K92 [{"externalInterfaceRef"}]
     1081 SETTABLEKS                       R26 R203 K91 ["externalInterfaceRef"]
     1083 CALL                             R201 2 1
     1084 SETTABLEKS                       R201 R200 K83 ["MainView"]
     1086 MOVE                             R201 R24
     1087 CALL                             R201 0 1
     1088 SETTABLEKS                       R201 R200 K84 ["TestHooks"]
     1090 CALL                             R197 3 -1
     1091 CALL                             R196 -1 0
     1092 NEWTABLE                         R196 256 0
     1094 SETTABLEKS                       R38 R196 K93 ["render"]
     1096 SETTABLEKS                       R31 R196 K24 ["tools"]
     1098 SETTABLEKS                       R43 R196 K94 ["invokeTool"]
     1100 SETTABLEKS                       R44 R196 K95 ["callTool"]
     1102 SETTABLEKS                       R39 R196 K96 ["typeText"]
     1104 SETTABLEKS                       R40 R196 K97 ["getCurrentConversationThread"]
     1106 SETTABLEKS                       R41 R196 K98 ["getExternalInterface"]
     1108 SETTABLEKS                       R45 R196 K99 ["getContainer"]
     1110 SETTABLEKS                       R46 R196 K100 ["getGuiByTitle"]
     1112 SETTABLEKS                       R36 R196 K101 ["waitForTagApplication"]
     1114 SETTABLEKS                       R47 R196 K102 ["queryByTestId"]
     1116 SETTABLEKS                       R48 R196 K103 ["getByTestId"]
     1118 SETTABLEKS                       R49 R196 K104 ["queryAllByTestId"]
     1120 SETTABLEKS                       R50 R196 K105 ["getAllByTestId"]
     1122 SETTABLEKS                       R54 R196 K106 ["getByMessage"]
     1124 SETTABLEKS                       R56 R196 K107 ["clickButton"]
     1126 SETTABLEKS                       R57 R196 K108 ["rightClick"]
     1128 SETTABLEKS                       R58 R196 K109 ["mouseEnter"]
     1130 SETTABLEKS                       R59 R196 K110 ["mouseLeave"]
     1132 SETTABLEKS                       R60 R196 K111 ["act"]
     1134 SETTABLEKS                       R62 R196 K112 ["getTextBox"]
     1136 SETTABLEKS                       R63 R196 K113 ["getMessageScrollArea"]
     1138 SETTABLEKS                       R64 R196 K114 ["getContainingMessageWidget"]
     1140 SETTABLEKS                       R65 R196 K115 ["getContainingContentWidget"]
     1142 SETTABLEKS                       R66 R196 K116 ["getMessageActionsWidget"]
     1144 SETTABLEKS                       R68 R196 K117 ["getTextObjectWithMessage"]
     1146 SETTABLEKS                       R34 R196 K118 ["getClipboardTextAtIndex"]
     1148 SETTABLEKS                       R42 R196 K119 ["getToolResults"]
     1150 SETTABLEKS                       R82 R196 K120 ["typeInTextBox"]
     1152 SETTABLEKS                       R81 R196 K121 ["enterInTextBox"]
     1154 SETTABLEKS                       R74 R196 K122 ["focusTextBox"]
     1156 SETTABLEKS                       R75 R196 K123 ["setInputText"]
     1158 SETTABLEKS                       R76 R196 K124 ["setCursorPosition"]
     1160 SETTABLEKS                       R77 R196 K125 ["getInputScrollArea"]
     1162 SETTABLEKS                       R78 R196 K126 ["printScreen"]
     1164 SETTABLEKS                       R79 R196 K127 ["clickSendButton"]
     1166 SETTABLEKS                       R80 R196 K128 ["clickStopGenerationButton"]
     1168 SETTABLEKS                       R83 R196 K129 ["enterTextBox"]
     1170 SETTABLEKS                       R84 R196 K130 ["enterUserMessage"]
     1172 SETTABLEKS                       R85 R196 K131 ["pressKeyInInput"]
     1174 SETTABLEKS                       R86 R196 K132 ["setKeyDown"]
     1176 SETTABLEKS                       R87 R196 K133 ["isInputEnabled"]
     1178 SETTABLEKS                       R88 R196 K134 ["waitForInputState"]
     1180 SETTABLEKS                       R89 R196 K135 ["lastUserTextMatches"]
     1182 SETTABLEKS                       R90 R196 K136 ["getMessageCount"]
     1184 SETTABLEKS                       R91 R196 K137 ["isResponding"]
     1186 SETTABLEKS                       R135 R196 K138 ["setExternalInputOverride"]
     1188 SETTABLEKS                       R136 R196 K139 ["clearExternalInputOverride"]
     1190 SETTABLEKS                       R124 R196 K140 ["clickSettingsButton"]
     1192 SETTABLEKS                       R125 R196 K141 ["getSettingsContent"]
     1194 SETTABLEKS                       R137 R196 K142 ["getProviderCheckbox"]
     1196 SETTABLEKS                       R138 R196 K143 ["clickProviderCheckbox"]
     1198 SETTABLEKS                       R139 R196 K144 ["isProviderCheckboxChecked"]
     1200 SETTABLEKS                       R140 R196 K145 ["getModelPickerDropdown"]
     1202 SETTABLEKS                       R141 R196 K146 ["getSelectedModelFromPicker"]
     1204 SETTABLEKS                       R142 R196 K147 ["selectModelFromPicker"]
     1206 SETTABLEKS                       R166 R196 K148 ["clickEditAPIKeyButton"]
     1208 SETTABLEKS                       R167 R196 K149 ["clickSaveAPIKeyButton"]
     1210 SETTABLEKS                       R168 R196 K150 ["clickCancelAPIKeyButton"]
     1212 SETTABLEKS                       R169 R196 K151 ["getAPIKeyInputText"]
     1214 SETTABLEKS                       R170 R196 K152 ["setAPIKeyInputText"]
     1216 SETTABLEKS                       R171 R196 K153 ["getDisplayedAPIKey"]
     1218 SETTABLEKS                       R172 R196 K154 ["getAPIKeySetting"]
     1220 SETTABLEKS                       R144 R196 K155 ["hasFooterText"]
     1222 SETTABLEKS                       R145 R196 K156 ["hasFooterIcon"]
     1224 SETTABLEKS                       R146 R196 K157 ["getToolMenuView"]
     1226 SETTABLEKS                       R147 R196 K158 ["clickServerManagementButton"]
     1228 SETTABLEKS                       R148 R196 K159 ["getManageIntegrationsDialog"]
     1230 SETTABLEKS                       R149 R196 K160 ["getIntegrationItemDialog"]
     1232 SETTABLEKS                       R150 R196 K161 ["getIntegrationMenuEmptyState"]
     1234 SETTABLEKS                       R174 R196 K162 ["getIntegrationItemForLabel"]
     1236 SETTABLEKS                       R151 R196 K163 ["getSkillsTabContent"]
     1238 SETTABLEKS                       R152 R196 K164 ["getSkillsPersonalGroup"]
     1240 SETTABLEKS                       R153 R196 K165 ["getSkillsRobloxGroup"]
     1242 SETTABLEKS                       R154 R196 K166 ["getSkillRow"]
     1244 SETTABLEKS                       R155 R196 K167 ["findSkillRow"]
     1246 SETTABLEKS                       R156 R196 K168 ["clickSkillsGroupHeader"]
     1248 SETTABLEKS                       R157 R196 K169 ["clickSkillRow"]
     1250 SETTABLEKS                       R158 R196 K170 ["clickSkillRefreshButton"]
     1252 SETTABLEKS                       R159 R196 K171 ["getSkillDetailPane"]
     1254 SETTABLEKS                       R160 R196 K172 ["findSkillDetailPane"]
     1256 SETTABLEKS                       R161 R196 K173 ["findSkillDetailPaneEmpty"]
     1258 SETTABLEKS                       R162 R196 K174 ["getSkillDetailOpenButton"]
     1260 SETTABLEKS                       R163 R196 K175 ["getSkillDetailDuplicateButton"]
     1262 SETTABLEKS                       R164 R196 K176 ["getSkillDetailSourceUri"]
     1264 SETTABLEKS                       R165 R196 K177 ["clickSkillDetailOpenButton"]
     1266 SETTABLEKS                       R173 R196 K178 ["clickIntegrationItemActionsToggle"]
     1268 SETTABLEKS                       R175 R196 K179 ["clickIntegrationItemActionsOverflowButton"]
     1270 SETTABLEKS                       R176 R196 K180 ["getIntegrationItemActionsOverflowContent"]
     1272 SETTABLEKS                       R101 R196 K181 ["throwMarkdownParserError"]
     1274 SETTABLEKS                       R102 R196 K182 ["getCarousel"]
     1276 SETTABLEKS                       R103 R196 K183 ["getCarouselItem"]
     1278 SETTABLEKS                       R105 R196 K184 ["getSelectedCarouselItem"]
     1280 SETTABLEKS                       R106 R196 K185 ["clickCarouselItem"]
     1282 SETTABLEKS                       R177 R196 K186 ["clickAlertCloseButton"]
     1284 SETTABLEKS                       R178 R196 K187 ["clickAlertContinueButton"]
     1286 SETTABLEKS                       R179 R196 K188 ["clickToolConfirmationAcceptButton"]
     1288 SETTABLEKS                       R180 R196 K189 ["clickToolConfirmationRejectButton"]
     1290 SETTABLEKS                       R181 R196 K190 ["getToolConfirmationAlwaysAcceptText"]
     1292 SETTABLEKS                       R182 R196 K191 ["clickToolConfirmationAlwaysAcceptButton"]
     1294 SETTABLEKS                       R93 R196 K192 ["clickRunCodeExpandButton"]
     1296 SETTABLEKS                       R107 R196 K193 ["clickCopyButton"]
     1298 SETTABLEKS                       R108 R196 K194 ["clickRunButton"]
     1300 SETTABLEKS                       R109 R196 K195 ["clickStopButton"]
     1302 SETTABLEKS                       R110 R196 K196 ["clickImageExpandButton"]
     1304 SETTABLEKS                       R111 R196 K197 ["getImageContentImage"]
     1306 SETTABLEKS                       R94 R196 K198 ["clickAssetVariationExpandButton"]
     1308 SETTABLEKS                       R95 R196 K199 ["clickMaterialGenExpandButton"]
     1310 SETTABLEKS                       R96 R196 K200 ["clickMaterialGenStudsPerTileValueBar"]
     1312 SETTABLEKS                       R97 R196 K201 ["clickMaterialGenOrganicPatternToggle"]
     1314 SETTABLEKS                       R98 R196 K202 ["clickMeshGenExpandButton"]
     1316 SETTABLEKS                       R99 R196 K203 ["getMeshGenPreviewImage"]
     1318 SETTABLEKS                       R100 R196 K204 ["clickMeshGenSelectionToggle"]
     1320 SETTABLEKS                       R112 R196 K205 ["clickRetryButton"]
     1322 SETTABLEKS                       R113 R196 K206 ["clickThumbsUpButton"]
     1324 SETTABLEKS                       R114 R196 K207 ["clickThumbsDownButton"]
     1326 SETTABLEKS                       R115 R196 K208 ["clickBranchButton"]
     1328 SETTABLEKS                       R116 R196 K209 ["clickMessageCopyButton"]
     1330 SETTABLEKS                       R117 R196 K210 ["getCopyButtonIcon"]
     1332 SETTABLEKS                       R118 R196 K211 ["getThumbsUpButtonIcon"]
     1334 SETTABLEKS                       R119 R196 K212 ["getThumbsDownButtonIcon"]
     1336 SETTABLEKS                       R120 R196 K213 ["getConversation"]
     1338 SETTABLEKS                       R121 R196 K214 ["addConversation"]
     1340 SETTABLEKS                       R122 R196 K215 ["setThreadId"]
     1342 SETTABLEKS                       R123 R196 K216 ["applyConversation"]
     1344 SETTABLEKS                       R126 R196 K217 ["clearConversation"]
     1346 SETTABLEKS                       R127 R196 K218 ["wasToolInvoked"]
     1348 SETTABLEKS                       R128 R196 K219 ["overrideMethodWithError"]
     1350 SETTABLEKS                       R133 R196 K220 ["wasRequestHandlerCalled"]
     1352 SETTABLEKS                       R134 R196 K221 ["getLastRequestField"]
     1354 SETTABLEKS                       R129 R196 K222 ["getMultiplexedClient"]
     1356 SETTABLEKS                       R130 R196 K223 ["getClientStatusForIdentifier"]
     1358 SETTABLEKS                       R131 R196 K224 ["closeAllClients"]
     1360 SETTABLEKS                       R132 R196 K225 ["getToolAlias"]
     1362 SETTABLEKS                       R183 R196 K226 ["streamEvent"]
     1364 SETTABLEKS                       R184 R196 K227 ["addToolCall"]
     1366 SETTABLEKS                       R185 R196 K228 ["streamText"]
     1368 SETTABLEKS                       R186 R196 K229 ["startMessage"]
     1370 SETTABLEKS                       R187 R196 K230 ["sendMessageDeltaAndStop"]
     1372 SETTABLEKS                       R188 R196 K231 ["mockEventLoggerCall"]
     1374 SETTABLEKS                       R189 R196 K232 ["clickTextWithin"]
     1376 SETTABLEKS                       R69 R196 K233 ["getModelQualityWarning"]
     1378 SETTABLEKS                       R71 R196 K234 ["setModelQuality"]
     1380 SETTABLEKS                       R70 R196 K235 ["getGenerationIndicator"]
     1382 SETTABLEKS                       R190 R196 K236 ["getSlashCommandMenu"]
     1384 SETTABLEKS                       R191 R196 K237 ["getSlashCommandItems"]
     1386 SETTABLEKS                       R192 R196 K238 ["setOptions"]
     1388 SETTABLEKS                       R193 R196 K239 ["clickOptionWithDisplayName"]
     1390 SETTABLEKS                       R195 R196 K240 ["getSelectedThreadButton"]
     1392 SETTABLEKS                       R72 R196 K241 ["setSessionId"]
     1394 SETTABLEKS                       R73 R196 K242 ["setWidgetVisible"]
     1396 GETTABLEKS                       R197 R23 K243 ["setState"]
     1398 SETTABLEKS                       R197 R196 K244 ["setExternalServerState"]
     1400 GETTABLEKS                       R197 R23 K245 ["getState"]
     1402 SETTABLEKS                       R197 R196 K246 ["getExternalServerState"]
     1404 GETTABLEKS                       R197 R23 K247 ["getStartCallCount"]
     1406 SETTABLEKS                       R197 R196 K248 ["getExternalServerStartCallCount"]
     1408 GETTABLEKS                       R197 R23 K249 ["getStopCallCount"]
     1410 SETTABLEKS                       R197 R196 K250 ["getExternalServerStopCallCount"]
     1412 GETTABLEKS                       R197 R23 K251 ["getActiveConnectionsObservable"]
     1414 SETTABLEKS                       R197 R196 K252 ["getExternalServerActiveConnectionsObservable"]
     1416 CLOSEUPVALS                      R0
     1417 RETURN                           R196 1

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
       33 GETTABLEKS                       R6 R0 K13 ["Parent"]
       35 GETTABLEKS                       R6 R6 K14 ["AssistantHarness"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K12 [require]
       40 GETTABLEKS                       R7 R0 K15 ["Util"]
       42 GETTABLEKS                       R7 R7 K16 ["ContentWidgets"]
       44 GETTABLEKS                       R7 R7 K17 ["ContentWidgetRegistry"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K12 [require]
       49 GETTABLEKS                       R8 R0 K13 ["Parent"]
       51 GETTABLEKS                       R8 R8 K18 ["DMNetworking"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K12 [require]
       56 GETTABLEKS                       R9 R0 K13 ["Parent"]
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
       79 GETTABLEKS                       R12 R0 K23 ["Components"]
       81 GETTABLEKS                       R12 R12 K24 ["Contexts"]
       83 GETTABLEKS                       R12 R12 K25 ["ExternalServerContext"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K12 [require]
       88 GETTABLEKS                       R13 R0 K26 ["Flags"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K12 [require]
       93 GETTABLEKS                       R14 R0 K13 ["Parent"]
       95 GETTABLEKS                       R14 R14 K27 ["Foundation"]
       97 CALL                             R13 1 1
       98 GETIMPORT                        R14 K12 [require]
      100 GETTABLEKS                       R15 R0 K13 ["Parent"]
      102 GETTABLEKS                       R15 R15 K28 ["Framework"]
      104 CALL                             R14 1 1
      105 GETIMPORT                        R15 K12 [require]
      107 GETTABLEKS                       R16 R0 K23 ["Components"]
      109 GETTABLEKS                       R16 R16 K24 ["Contexts"]
      111 GETTABLEKS                       R16 R16 K29 ["InputStateContext"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K12 [require]
      116 GETTABLEKS                       R17 R0 K20 ["Guest"]
      118 GETTABLEKS                       R17 R17 K30 ["JsonEnvironment"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K12 [require]
      123 GETTABLEKS                       R18 R0 K23 ["Components"]
      125 GETTABLEKS                       R18 R18 K24 ["Contexts"]
      127 GETTABLEKS                       R18 R18 K31 ["LLMProviderSelectionContext"]
      129 CALL                             R17 1 1
      130 GETIMPORT                        R18 K12 [require]
      132 GETTABLEKS                       R19 R0 K23 ["Components"]
      134 GETTABLEKS                       R19 R19 K32 ["MainView"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K12 [require]
      139 GETTABLEKS                       R20 R0 K13 ["Parent"]
      141 GETTABLEKS                       R20 R20 K33 ["Markdown"]
      143 CALL                             R19 1 1
      144 GETIMPORT                        R20 K12 [require]
      146 GETTABLEKS                       R21 R0 K13 ["Parent"]
      148 GETTABLEKS                       R21 R21 K34 ["ModelContextProtocol"]
      150 CALL                             R20 1 1
      151 GETIMPORT                        R21 K12 [require]
      153 GETTABLEKS                       R22 R0 K23 ["Components"]
      155 GETTABLEKS                       R22 R22 K24 ["Contexts"]
      157 GETTABLEKS                       R22 R22 K35 ["ModelQualityContext"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K12 [require]
      162 GETTABLEKS                       R23 R0 K23 ["Components"]
      164 GETTABLEKS                       R23 R23 K24 ["Contexts"]
      166 GETTABLEKS                       R23 R23 K36 ["OptionsContext"]
      168 CALL                             R22 1 1
      169 GETIMPORT                        R23 K12 [require]
      171 GETTABLEKS                       R24 R0 K15 ["Util"]
      173 GETTABLEKS                       R24 R24 K37 ["Persistence"]
      175 CALL                             R23 1 1
      176 GETIMPORT                        R24 K12 [require]
      178 GETTABLEKS                       R25 R0 K23 ["Components"]
      180 GETTABLEKS                       R25 R25 K38 ["APIKeyManagement"]
      182 GETTABLEKS                       R25 R25 K39 ["ProviderModels"]
      184 CALL                             R24 1 1
      185 GETIMPORT                        R25 K12 [require]
      187 GETTABLEKS                       R26 R0 K13 ["Parent"]
      189 GETTABLEKS                       R26 R26 K40 ["React"]
      191 CALL                             R25 1 1
      192 GETIMPORT                        R26 K12 [require]
      194 GETTABLEKS                       R27 R0 K13 ["Parent"]
      196 GETTABLEKS                       R27 R27 K41 ["ReactUtils"]
      198 CALL                             R26 1 1
      199 GETIMPORT                        R27 K12 [require]
      201 GETTABLEKS                       R28 R0 K15 ["Util"]
      203 GETTABLEKS                       R28 R28 K42 ["Serializer"]
      205 CALL                             R27 1 1
      206 GETIMPORT                        R28 K12 [require]
      208 GETIMPORT                        R29 K1 [script]
      210 GETTABLEKS                       R29 R29 K13 ["Parent"]
      212 GETTABLEKS                       R29 R29 K43 ["TagSearch"]
      214 CALL                             R28 1 1
      215 GETIMPORT                        R29 K12 [require]
      217 GETTABLEKS                       R30 R0 K15 ["Util"]
      219 GETTABLEKS                       R30 R30 K44 ["Tagging"]
      221 CALL                             R29 1 1
      222 GETIMPORT                        R30 K12 [require]
      224 GETTABLEKS                       R31 R0 K15 ["Util"]
      226 GETTABLEKS                       R31 R31 K45 ["TestIds"]
      228 CALL                             R30 1 1
      229 GETIMPORT                        R31 K12 [require]
      231 GETIMPORT                        R32 K1 [script]
      233 GETTABLEKS                       R32 R32 K13 ["Parent"]
      235 GETTABLEKS                       R32 R32 K46 ["ToolTestUtils"]
      237 CALL                             R31 1 1
      238 GETIMPORT                        R32 K12 [require]
      240 GETTABLEKS                       R33 R0 K47 ["Tools"]
      242 GETTABLEKS                       R33 R33 K48 ["ToolTypes"]
      244 CALL                             R32 1 1
      245 GETIMPORT                        R33 K12 [require]
      247 GETTABLEKS                       R34 R0 K15 ["Util"]
      249 GETTABLEKS                       R34 R34 K16 ["ContentWidgets"]
      251 GETTABLEKS                       R34 R34 K49 ["ToolWidgetMappingRegistry"]
      253 CALL                             R33 1 1
      254 GETIMPORT                        R34 K12 [require]
      256 GETTABLEKS                       R35 R0 K50 ["Resources"]
      258 GETTABLEKS                       R35 R35 K51 ["Localization"]
      260 GETTABLEKS                       R35 R35 K52 ["Translator"]
      262 CALL                             R34 1 1
      263 GETIMPORT                        R35 K12 [require]
      265 GETTABLEKS                       R36 R0 K53 ["Types"]
      267 CALL                             R35 1 1
      268 GETIMPORT                        R36 K12 [require]
      270 GETTABLEKS                       R37 R0 K23 ["Components"]
      272 GETTABLEKS                       R37 R37 K54 ["UIToolRegistry"]
      274 CALL                             R36 1 1
      275 GETIMPORT                        R37 K12 [require]
      277 GETTABLEKS                       R38 R0 K23 ["Components"]
      279 GETTABLEKS                       R38 R38 K24 ["Contexts"]
      281 GETTABLEKS                       R38 R38 K55 ["WindowInputContext"]
      283 CALL                             R37 1 1
      284 GETIMPORT                        R38 K12 [require]
      286 GETIMPORT                        R39 K1 [script]
      288 GETTABLEKS                       R39 R39 K56 ["createMockConversationContext"]
      290 CALL                             R38 1 1
      291 GETIMPORT                        R39 K12 [require]
      293 GETIMPORT                        R40 K1 [script]
      295 GETTABLEKS                       R40 R40 K57 ["createMockExternalServerContext"]
      297 CALL                             R39 1 1
      298 GETIMPORT                        R40 K12 [require]
      300 GETIMPORT                        R41 K1 [script]
      302 GETTABLEKS                       R41 R41 K58 ["createMockInputStateContext"]
      304 CALL                             R40 1 1
      305 GETIMPORT                        R41 K12 [require]
      307 GETIMPORT                        R42 K1 [script]
      309 GETTABLEKS                       R42 R42 K59 ["createMockLLMPackageContext"]
      311 CALL                             R41 1 1
      312 GETIMPORT                        R42 K12 [require]
      314 GETIMPORT                        R43 K1 [script]
      316 GETTABLEKS                       R43 R43 K60 ["createMockMcpClientContext"]
      318 CALL                             R42 1 1
      319 GETIMPORT                        R43 K12 [require]
      321 GETIMPORT                        R44 K1 [script]
      323 GETTABLEKS                       R44 R44 K61 ["createMockModelQualityContext"]
      325 CALL                             R43 1 1
      326 GETIMPORT                        R44 K12 [require]
      328 GETIMPORT                        R45 K1 [script]
      330 GETTABLEKS                       R45 R45 K62 ["createMockOptionsContext"]
      332 CALL                             R44 1 1
      333 GETIMPORT                        R45 K12 [require]
      335 GETIMPORT                        R46 K1 [script]
      337 GETTABLEKS                       R46 R46 K63 ["createMockPopoutWidgetContext"]
      339 CALL                             R45 1 1
      340 GETIMPORT                        R46 K12 [require]
      342 GETIMPORT                        R47 K1 [script]
      344 GETTABLEKS                       R47 R47 K64 ["createMockSessionIdContext"]
      346 CALL                             R46 1 1
      347 GETIMPORT                        R47 K12 [require]
      349 GETIMPORT                        R48 K1 [script]
      351 GETTABLEKS                       R48 R48 K65 ["createMockSettingsContext"]
      353 CALL                             R47 1 1
      354 GETIMPORT                        R48 K12 [require]
      356 GETIMPORT                        R49 K1 [script]
      358 GETTABLEKS                       R49 R49 K66 ["createMockThreadIdContext"]
      360 CALL                             R48 1 1
      361 GETIMPORT                        R49 K12 [require]
      363 GETIMPORT                        R50 K1 [script]
      365 GETTABLEKS                       R50 R50 K67 ["createMockWidgetVisibilityContext"]
      367 CALL                             R49 1 1
      368 GETIMPORT                        R50 K12 [require]
      370 GETIMPORT                        R51 K1 [script]
      372 GETTABLEKS                       R51 R51 K68 ["createTestHooks"]
      374 CALL                             R50 1 1
      375 GETIMPORT                        R51 K12 [require]
      377 GETIMPORT                        R52 K1 [script]
      379 GETTABLEKS                       R52 R52 K13 ["Parent"]
      381 GETTABLEKS                       R52 R52 K69 ["isVisibleGuiObject"]
      383 CALL                             R51 1 1
      384 GETIMPORT                        R52 K12 [require]
      386 GETTABLEKS                       R53 R0 K15 ["Util"]
      388 GETTABLEKS                       R53 R53 K16 ["ContentWidgets"]
      390 GETTABLEKS                       R53 R53 K70 ["registerContentWidgets"]
      392 CALL                             R52 1 1
      393 LOADK                            R55 K71 ["Packages"]
      394 NAMECALL                         R53 R0 K3 ["FindFirstAncestor"]
      396 CALL                             R53 2 1
      397 GETTABLEKS                       R53 R53 K72 ["Dev"]
      399 GETIMPORT                        R54 K12 [require]
      401 GETTABLEKS                       R55 R53 K73 ["FoundationTestingLibrary"]
      403 CALL                             R54 1 1
      404 GETIMPORT                        R55 K12 [require]
      406 GETTABLEKS                       R56 R53 K74 ["JestGlobals"]
      408 CALL                             R55 1 1
      409 GETIMPORT                        R56 K12 [require]
      411 GETTABLEKS                       R57 R53 K75 ["ReactTestingLibrary"]
      413 CALL                             R56 1 1
      414 GETTABLEKS                       R57 R25 K76 ["createElement"]
      416 GETTABLEKS                       R58 R55 K77 ["afterAll"]
      418 GETTABLEKS                       R59 R55 K78 ["afterEach"]
      420 GETTABLEKS                       R60 R55 K79 ["beforeAll"]
      422 GETTABLEKS                       R61 R55 K80 ["expect"]
      424 GETTABLEKS                       R62 R55 K81 ["jest"]
      426 GETTABLEKS                       R63 R56 K82 ["act"]
      428 GETTABLEKS                       R64 R56 K83 ["fireEvent"]
      430 GETTABLEKS                       R65 R56 K84 ["waitFor"]
      432 GETTABLEKS                       R66 R56 K85 ["within"]
      434 DUPCLOSURE                       R67 K86 [PROTO_13]
      435 CAPTURE                          VAL R10
      436 CAPTURE                          VAL R7
      437 CAPTURE                          VAL R9
      438 CAPTURE                          VAL R3
      439 CAPTURE                          VAL R35
      440 CAPTURE                          VAL R16
      441 LOADNIL                          R68
      442 MOVE                             R69 R60
      443 NEWCLOSURE                       R70 P1
      444 CAPTURE                          REF R68
      445 CAPTURE                          VAL R62
      446 CAPTURE                          VAL R29
      447 CALL                             R69 1 0
      448 MOVE                             R69 R58
      449 NEWCLOSURE                       R70 P2
      450 CAPTURE                          REF R68
      451 CALL                             R69 1 0
      452 MOVE                             R69 R59
      453 DUPCLOSURE                       R70 K87 [PROTO_17]
      454 CAPTURE                          VAL R56
      455 CAPTURE                          VAL R6
      456 CAPTURE                          VAL R27
      457 CALL                             R69 1 0
      458 DUPCLOSURE                       R69 K88 [PROTO_213]
      459 CAPTURE                          VAL R47
      460 CAPTURE                          VAL R38
      461 CAPTURE                          VAL R40
      462 CAPTURE                          VAL R48
      463 CAPTURE                          VAL R46
      464 CAPTURE                          VAL R49
      465 CAPTURE                          VAL R42
      466 CAPTURE                          VAL R41
      467 CAPTURE                          VAL R43
      468 CAPTURE                          VAL R44
      469 CAPTURE                          VAL R45
      470 CAPTURE                          VAL R39
      471 CAPTURE                          VAL R50
      472 CAPTURE                          VAL R25
      473 CAPTURE                          VAL R57
      474 CAPTURE                          VAL R37
      475 CAPTURE                          VAL R17
      476 CAPTURE                          VAL R8
      477 CAPTURE                          VAL R67
      478 CAPTURE                          VAL R31
      479 CAPTURE                          VAL R10
      480 CAPTURE                          VAL R23
      481 CAPTURE                          VAL R52
      482 CAPTURE                          VAL R6
      483 CAPTURE                          VAL R33
      484 CAPTURE                          VAL R12
      485 CAPTURE                          VAL R0
      486 CAPTURE                          VAL R4
      487 CAPTURE                          VAL R2
      488 CAPTURE                          VAL R56
      489 CAPTURE                          VAL R14
      490 CAPTURE                          VAL R54
      491 CAPTURE                          VAL R26
      492 CAPTURE                          VAL R64
      493 CAPTURE                          VAL R63
      494 CAPTURE                          VAL R62
      495 CAPTURE                          VAL R1
      496 CAPTURE                          VAL R35
      497 CAPTURE                          VAL R66
      498 CAPTURE                          VAL R30
      499 CAPTURE                          VAL R28
      500 CAPTURE                          VAL R65
      501 CAPTURE                          VAL R61
      502 CAPTURE                          VAL R19
      503 CAPTURE                          VAL R13
      504 CAPTURE                          VAL R34
      505 CAPTURE                          VAL R15
      506 CAPTURE                          VAL R24
      507 CAPTURE                          VAL R51
      508 CAPTURE                          VAL R5
      509 CAPTURE                          VAL R18
      510 CLOSEUPVALS                      R68
      511 RETURN                           R69 1
