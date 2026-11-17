PROTO_0:
        0 LOADB                            R0 1
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
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_12:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 SETUPVAL                         R1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETIMPORT                        R2 K3 [table.clone]
        6 GETUPVAL                         R3 1
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R1 K4 ["EventLogger"]
       10 DUPCLOSURE                       R2 K5 [PROTO_0]
       11 SETTABLEKS                       R2 R1 K6 ["hasUI"]
       13 GETTABLEKS                       R2 R1 K7 ["selection"]
       15 DUPCLOSURE                       R3 K8 [PROTO_1]
       16 CAPTURE                          UPVAL U2
       17 SETTABLEKS                       R3 R2 K9 ["get"]
       19 GETTABLEKS                       R2 R1 K7 ["selection"]
       21 DUPCLOSURE                       R3 K10 [PROTO_2]
       22 CAPTURE                          UPVAL U2
       23 SETTABLEKS                       R3 R2 K11 ["set"]
       25 NEWCLOSURE                       R2 P3
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R2 R1 K12 ["copyToClipboard"]
       29 DUPCLOSURE                       R2 K13 [PROTO_4]
       30 SETTABLEKS                       R2 R1 K14 ["convertImageDataToTempIdAsync"]
       32 DUPCLOSURE                       R2 K15 [PROTO_5]
       33 SETTABLEKS                       R2 R1 K16 ["releaseTempIdAsync"]
       35 DUPCLOSURE                       R2 K17 [PROTO_6]
       36 SETTABLEKS                       R2 R1 K18 ["isEditDataModelAvailable"]
       38 DUPCLOSURE                       R2 K19 [PROTO_8]
       39 SETTABLEKS                       R2 R1 K20 ["subscribeEditDataModelAvailabilityChanged"]
       41 NEWTABLE                         R2 1 0
       43 GETUPVAL                         R3 3
       44 GETTABLEKS                       R3 R3 K21 ["CLAUDE_API_KEY"]
       46 LOADK                            R4 K22 ["initial-test-api-key"]
       47 SETTABLE                         R4 R2 R3
       48 NEWCLOSURE                       R3 P8
       49 CAPTURE                          REF R2
       50 SETTABLEKS                       R3 R1 K23 ["getSecureSettingsAsync"]
       52 NEWCLOSURE                       R3 P9
       53 CAPTURE                          REF R2
       54 SETTABLEKS                       R3 R1 K24 ["setSecureSettingsAsync"]
       56 NEWTABLE                         R3 0 0
       58 NEWCLOSURE                       R4 P10
       59 CAPTURE                          REF R3
       60 SETTABLEKS                       R4 R1 K25 ["getSettingsAsync"]
       62 NEWCLOSURE                       R4 P11
       63 CAPTURE                          REF R3
       64 SETTABLEKS                       R4 R1 K26 ["setSettingsAsync"]
       66 NEWTABLE                         R4 0 0
       68 NEWCLOSURE                       R5 P12
       69 CAPTURE                          VAL R4
       70 SETTABLEKS                       R5 R1 K27 ["getPluginSetting"]
       72 NEWCLOSURE                       R5 P13
       73 CAPTURE                          VAL R4
       74 SETTABLEKS                       R5 R1 K28 ["setPluginSetting"]
       76 GETUPVAL                         R5 4
       77 GETTABLEKS                       R5 R5 K29 ["setup"]
       79 MOVE                             R6 R1
       80 CALL                             R5 1 0
       81 CLOSEUPVALS                      R2
       82 RETURN                           R1 1

PROTO_16:
        0 GETIMPORT                        R1 K2 [task.spawn]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_17:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["spyOn"]
        3 GETUPVAL                         R1 2
        4 LOADK                            R2 K1 ["_batchTagUpdates"]
        5 CALL                             R0 2 1
        6 GETTABLEKS                       R0 R0 K2 ["mockImplementation"]
        8 DUPCLOSURE                       R1 K3 [PROTO_16]
        9 CALL                             R0 1 1
       10 SETUPVAL                         R0 0
       11 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["mockRestore"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 JUMPIFNOTLT                      R1 R0 ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R2 0
        7 GETTABLE                         R1 R2 R0
        8 RETURN                           R1 1

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
        0 SETUPVAL                         R0 0
        1 GETIMPORT                        R1 K2 [coroutine.status]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K3 ["suspended"] ; [+5]
        7 GETIMPORT                        R1 K6 [task.spawn]
        9 GETUPVAL                         R2 1
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R0 R0 K0 ["getThread"]
        4 GETUPVAL                         R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
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

PROTO_30:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U2
        2 CAPTURE                          UPVAL U3
        3 CAPTURE                          UPVAL U4
        4 CAPTURE                          UPVAL U5
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U6
        7 CAPTURE                          UPVAL U7
        8 CAPTURE                          UPVAL U8
        9 FASTPCALL                        pcall 1 ; [+2]
       10 GETIMPORT                        R1 K1 [pcall]
       12 CALL                             R1 1 2
       13 SETUPVAL                         R1 0
       14 SETUPVAL                         R2 1
       15 GETIMPORT                        R1 K4 [coroutine.status]
       17 GETUPVAL                         R2 9
       18 CALL                             R1 1 1
       19 JUMPIFNOTEQKS                    R1 K5 ["suspended"] ; [+5]
       21 GETIMPORT                        R1 K8 [task.spawn]
       23 GETUPVAL                         R2 9
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R0 R0 K0 ["getOrAddMessage"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["ROLE"]
        7 GETTABLEKS                       R1 R1 K2 ["Assistant"]
        9 GETUPVAL                         R2 2
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_32:
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

PROTO_33:
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

PROTO_34:
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

PROTO_35:
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
       25 GETTABLEKS                       R2 R2 K4 ["queryByTestId"]
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

PROTO_38:
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

PROTO_39:
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

PROTO_40:
        0 LOADK                            R3 K0 ["<[^<>]->"]
        1 LOADK                            R4 K1 [""]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 1
        5 LOADK                            R4 K3 ["&%a+;"]
        6 GETUPVAL                         R5 0
        7 NAMECALL                         R2 R1 K2 ["gsub"]
        9 CALL                             R2 3 1
       10 RETURN                           R2 1

PROTO_41:
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

PROTO_42:
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

PROTO_43:
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
       37 JUMPIFNOT                        R2 ; [+7]
       38 GETTABLEKS                       R7 R2 K5 ["exact"]
       40 JUMPIFEQKNIL                     R7 ; [+4]
       42 GETTABLEKS                       R6 R2 K5 ["exact"]
       44 JUMP                             ; [+1]
       45 LOADB                            R6 1
       46 NEWCLOSURE                       R4 P0
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R0
       50 CALL                             R3 1 1
       51 JUMPIF                           R3 ; [+8]
       52 GETUPVAL                         R3 2
       53 MOVE                             R4 R1
       54 CALL                             R3 1 1
       55 GETTABLEKS                       R3 R3 K9 ["queryByDisplayValue"]
       57 MOVE                             R4 R0
       58 MOVE                             R5 R2
       59 CALL                             R3 2 1
       60 LOADK                            R6 K10 ["No GuiObject found for message \"%*\""]
       61 MOVE                             R8 R0
       62 NAMECALL                         R6 R6 K11 ["format"]
       64 CALL                             R6 2 1
       65 FASTCALL2                        ASSERT R3 R6 ; [+4]
       67 MOVE                             R5 R3
       68 GETIMPORT                        R4 K2 [assert]
       70 CALL                             R4 2 0
       71 RETURN                           R3 1

PROTO_44:
        0 LOADK                            R3 K0 ["GuiButton"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R1 2 1
        4 RETURN                           R1 1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["click"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["contextMenu"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_48:
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

PROTO_49:
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

PROTO_50:
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

PROTO_51:
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

PROTO_52:
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
       51 MOVE                             R0 R3
       52 LOADK                            R5 K10 ["No result found for testId \"%*\""]
       53 MOVE                             R7 R1
       54 NAMECALL                         R5 R5 K11 ["format"]
       56 CALL                             R5 2 1
       57 FASTCALL2                        ASSERT R0 R5 ; [+4]
       59 MOVE                             R4 R0
       60 GETIMPORT                        R3 K7 [assert]
       62 CALL                             R3 2 0
       63 RETURN                           R0 1

PROTO_53:
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
       67 MOVE                             R0 R3
       68 LOADK                            R5 K10 ["No result found for testId \"%*\""]
       69 MOVE                             R7 R1
       70 NAMECALL                         R5 R5 K11 ["format"]
       72 CALL                             R5 2 1
       73 FASTCALL2                        ASSERT R0 R5 ; [+4]
       75 MOVE                             R4 R0
       76 GETIMPORT                        R3 K7 [assert]
       78 CALL                             R3 2 0
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

PROTO_54:
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

PROTO_55:
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

PROTO_56:
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

PROTO_57:
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

PROTO_58:
        0 LOADNIL                          R1
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U2
        6 FASTPCALL                        pcall 1 ; [+2]
        7 GETIMPORT                        R2 K1 [pcall]
        9 CALL                             R2 1 2
       10 JUMPIFNOT                        R2 ; [+2]
       11 MOVE                             R1 R3
       12 JUMP                             ; [+19]
       13 GETUPVAL                         R4 0
       14 GETUPVAL                         R8 1
       15 JUMPIFNOTEQKNIL                  R8 ; [+2]
       17 LOADB                            R7 0 +1
       18 LOADB                            R7 1
       19 FASTCALL2K                       ASSERT R7 K2 ; [+4]
       21 LOADK                            R8 K2 ["Container not mounted, ensure render is called"]
       22 GETIMPORT                        R6 K4 [assert]
       24 CALL                             R6 2 0
       25 GETUPVAL                         R5 1
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R4 R4 K5 ["getByDisplayValue"]
       29 MOVE                             R5 R0
       30 CALL                             R4 1 1
       31 MOVE                             R1 R4
       32 LOADK                            R7 K6 ["Message content not found for message: "]
       33 MOVE                             R8 R0
       34 CONCAT                           R6 R7 R8
       35 FASTCALL2                        ASSERT R1 R6 ; [+4]
       37 MOVE                             R5 R1
       38 GETIMPORT                        R4 K4 [assert]
       40 CALL                             R4 2 0
       41 GETUPVAL                         R4 3
       42 GETTABLEKS                       R4 R4 K7 ["firstAncestorWithTag"]
       44 MOVE                             R5 R1
       45 LOADK                            R6 K8 ["Assistant-MessageWidget"]
       46 CALL                             R4 2 1
       47 LOADK                            R8 K9 ["Message widget not found for message: "]
       48 MOVE                             R9 R0
       49 CONCAT                           R7 R8 R9
       50 FASTCALL2                        ASSERT R4 R7 ; [+4]
       52 MOVE                             R6 R4
       53 GETIMPORT                        R5 K4 [assert]
       55 CALL                             R5 2 0
       56 GETUPVAL                         R6 4
       57 GETTABLEKS                       R6 R6 K10 ["MessageActions"]
       59 GETTABLEKS                       R6 R6 K11 ["Container"]
       61 MOVE                             R7 R4
       62 MOVE                             R8 R7
       63 JUMPIF                           R8 ; [+12]
       64 GETUPVAL                         R11 1
       65 JUMPIFNOTEQKNIL                  R11 ; [+2]
       67 LOADB                            R10 0 +1
       68 LOADB                            R10 1
       69 FASTCALL2K                       ASSERT R10 K2 ; [+4]
       71 LOADK                            R11 K2 ["Container not mounted, ensure render is called"]
       72 GETIMPORT                        R9 K4 [assert]
       74 CALL                             R9 2 0
       75 GETUPVAL                         R8 1
       76 MOVE                             R7 R8
       77 FASTCALL2K                       ASSERT R7 K12 ; [+5]
       79 MOVE                             R9 R7
       80 LOADK                            R10 K12 ["Query container not found"]
       81 GETIMPORT                        R8 K4 [assert]
       83 CALL                             R8 2 0
       84 GETUPVAL                         R8 0
       85 MOVE                             R9 R7
       86 CALL                             R8 1 1
       87 GETTABLEKS                       R8 R8 K13 ["queryByTestId"]
       89 MOVE                             R9 R6
       90 CALL                             R8 1 1
       91 MOVE                             R5 R8
       92 RETURN                           R5 1

PROTO_59:
        0 GETTABLEKS                       R3 R0 K0 ["messageContainer"]
        2 GETTABLEKS                       R3 R3 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R4 R1 K0 ["messageContainer"]
        6 GETTABLEKS                       R4 R4 K1 ["LayoutOrder"]
        8 JUMPIFLT                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 RETURN                           R2 1

PROTO_60:
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
       53 DUPCLOSURE                       R4 K18 [PROTO_59]
       54 CALL                             R2 2 0
       55 RETURN                           R1 1

PROTO_61:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETTABLEKS                       R0 R0 K0 ["getByText"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_62:
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

PROTO_63:
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
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          REF R1
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R3
       29 FASTPCALL                        pcall 1 ; [+2]
       30 GETIMPORT                        R4 K8 [pcall]
       32 CALL                             R4 1 2
       33 JUMPIFNOT                        R4 ; [+2]
       34 CLOSEUPVALS                      R1
       35 RETURN                           R5 1
       36 NEWCLOSURE                       R7 P1
       37 CAPTURE                          UPVAL U2
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R3
       41 FASTPCALL                        pcall 1 ; [+2]
       42 GETIMPORT                        R6 K8 [pcall]
       44 CALL                             R6 1 2
       45 JUMPIFNOT                        R6 ; [+2]
       46 CLOSEUPVALS                      R1
       47 RETURN                           R7 1
       48 GETIMPORT                        R8 K10 [error]
       50 LOADK                            R9 K11 ["No text object found for message \"%*\".\n%*\n%*"]
       51 MOVE                             R11 R0
       52 MOVE                             R12 R5
       53 MOVE                             R13 R7
       54 NAMECALL                         R9 R9 K12 ["format"]
       56 CALL                             R9 4 1
       57 CALL                             R8 1 0
       58 CLOSEUPVALS                      R1
       59 RETURN                           R0 0

PROTO_64:
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
       33 MOVE                             R0 R3
       34 LOADK                            R5 K6 ["No result found for testId \"%*\""]
       35 MOVE                             R7 R1
       36 NAMECALL                         R5 R5 K7 ["format"]
       38 CALL                             R5 2 1
       39 FASTCALL2                        ASSERT R0 R5 ; [+4]
       41 MOVE                             R4 R0
       42 GETIMPORT                        R3 K3 [assert]
       44 CALL                             R3 2 0
       45 RETURN                           R0 1

PROTO_65:
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
       33 MOVE                             R0 R3
       34 LOADK                            R5 K6 ["No result found for testId \"%*\""]
       35 MOVE                             R7 R1
       36 NAMECALL                         R5 R5 K7 ["format"]
       38 CALL                             R5 2 1
       39 FASTCALL2                        ASSERT R0 R5 ; [+4]
       41 MOVE                             R4 R0
       42 GETIMPORT                        R3 K3 [assert]
       44 CALL                             R3 2 0
       45 RETURN                           R0 1

PROTO_66:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setModelQuality"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_67:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_68:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setSessionId"]
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
        1 GETTABLEKS                       R0 R0 K0 ["setIsVisible"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_71:
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

PROTO_72:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_73:
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
       67 MOVE                             R0 R3
       68 LOADK                            R5 K10 ["No result found for testId \"%*\""]
       69 MOVE                             R7 R1
       70 NAMECALL                         R5 R5 K11 ["format"]
       72 CALL                             R5 2 1
       73 FASTCALL2                        ASSERT R0 R5 ; [+4]
       75 MOVE                             R4 R0
       76 GETIMPORT                        R3 K7 [assert]
       78 CALL                             R3 2 0
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
       96 GETUPVAL                         R1 5
       97 NEWCLOSURE                       R2 P0
       98 CAPTURE                          VAL R0
       99 CALL                             R1 1 0
      100 GETUPVAL                         R1 0
      101 NAMECALL                         R1 R1 K0 ["UpdateUnitTestOnly"]
      103 CALL                             R1 1 0
      104 GETUPVAL                         R1 1
      105 GETTABLEKS                       R1 R1 K1 ["Stepped"]
      107 NAMECALL                         R1 R1 K2 ["Wait"]
      109 CALL                             R1 1 0
      110 GETUPVAL                         R1 1
      111 GETTABLEKS                       R1 R1 K1 ["Stepped"]
      113 NAMECALL                         R1 R1 K2 ["Wait"]
      115 CALL                             R1 1 0
      116 RETURN                           R0 0

PROTO_74:
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
       19 GETUPVAL                         R3 1
       20 NAMECALL                         R3 R3 K1 ["UpdateUnitTestOnly"]
       22 CALL                             R3 1 0
       23 GETUPVAL                         R3 2
       24 GETTABLEKS                       R3 R3 K2 ["Stepped"]
       26 NAMECALL                         R3 R3 K3 ["Wait"]
       28 CALL                             R3 1 0
       29 GETUPVAL                         R3 2
       30 GETTABLEKS                       R3 R3 K2 ["Stepped"]
       32 NAMECALL                         R3 R3 K3 ["Wait"]
       34 CALL                             R3 1 0
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R3 R3 K4 ["InputArea"]
       38 GETTABLEKS                       R3 R3 K5 ["Container"]
       40 LOADNIL                          R4
       41 MOVE                             R5 R4
       42 JUMPIF                           R5 ; [+12]
       43 GETUPVAL                         R8 4
       44 JUMPIFNOTEQKNIL                  R8 ; [+2]
       46 LOADB                            R7 0 +1
       47 LOADB                            R7 1
       48 FASTCALL2K                       ASSERT R7 K6 ; [+4]
       50 LOADK                            R8 K6 ["Container not mounted, ensure render is called"]
       51 GETIMPORT                        R6 K8 [assert]
       53 CALL                             R6 2 0
       54 GETUPVAL                         R5 4
       55 MOVE                             R4 R5
       56 FASTCALL2K                       ASSERT R4 K9 ; [+5]
       58 MOVE                             R6 R4
       59 LOADK                            R7 K9 ["Query container not found"]
       60 GETIMPORT                        R5 K8 [assert]
       62 CALL                             R5 2 0
       63 GETUPVAL                         R5 5
       64 MOVE                             R6 R4
       65 CALL                             R5 1 1
       66 GETTABLEKS                       R5 R5 K10 ["getByTestId"]
       68 MOVE                             R6 R3
       69 CALL                             R5 1 1
       70 MOVE                             R2 R5
       71 LOADK                            R7 K11 ["No result found for testId \"%*\""]
       72 MOVE                             R9 R3
       73 NAMECALL                         R7 R7 K12 ["format"]
       75 CALL                             R7 2 1
       76 FASTCALL2                        ASSERT R2 R7 ; [+4]
       78 MOVE                             R6 R2
       79 GETIMPORT                        R5 K8 [assert]
       81 CALL                             R5 2 0
       82 LOADK                            R4 K13 ["TextBox"]
       83 LOADB                            R5 1
       84 NAMECALL                         R2 R2 K14 ["FindFirstChild"]
       86 CALL                             R2 3 1
       87 MOVE                             R4 R2
       88 JUMPIFNOT                        R4 ; [+4]
       89 LOADK                            R6 K13 ["TextBox"]
       90 NAMECALL                         R4 R2 K15 ["IsA"]
       92 CALL                             R4 2 1
       93 FASTCALL2K                       ASSERT R4 K16 ; [+4]
       95 LOADK                            R5 K16 ["TextBox not found"]
       96 GETIMPORT                        R3 K8 [assert]
       98 CALL                             R3 2 0
       99 DUPTABLE                         R3 K18 [{"target"}]
      100 DUPTABLE                         R4 K20 [{"Text"}]
      101 SETTABLEKS                       R0 R4 K19 ["Text"]
      103 SETTABLEKS                       R4 R3 K17 ["target"]
      105 CALL                             R1 2 0
      106 GETUPVAL                         R1 1
      107 NAMECALL                         R1 R1 K1 ["UpdateUnitTestOnly"]
      109 CALL                             R1 1 0
      110 GETUPVAL                         R1 2
      111 GETTABLEKS                       R1 R1 K2 ["Stepped"]
      113 NAMECALL                         R1 R1 K3 ["Wait"]
      115 CALL                             R1 1 0
      116 GETUPVAL                         R1 2
      117 GETTABLEKS                       R1 R1 K2 ["Stepped"]
      119 NAMECALL                         R1 R1 K3 ["Wait"]
      121 CALL                             R1 1 0
      122 RETURN                           R0 0

PROTO_75:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["CursorPosition"]
        4 RETURN                           R0 0

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
       67 MOVE                             R1 R4
       68 LOADK                            R6 K10 ["No result found for testId \"%*\""]
       69 MOVE                             R8 R2
       70 NAMECALL                         R6 R6 K11 ["format"]
       72 CALL                             R6 2 1
       73 FASTCALL2                        ASSERT R1 R6 ; [+4]
       75 MOVE                             R5 R1
       76 GETIMPORT                        R4 K7 [assert]
       78 CALL                             R4 2 0
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
       96 GETUPVAL                         R2 5
       97 NEWCLOSURE                       R3 P0
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R0
      100 CALL                             R2 1 0
      101 GETUPVAL                         R2 0
      102 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
      104 CALL                             R2 1 0
      105 GETUPVAL                         R2 1
      106 GETTABLEKS                       R2 R2 K1 ["Stepped"]
      108 NAMECALL                         R2 R2 K2 ["Wait"]
      110 CALL                             R2 1 0
      111 GETUPVAL                         R2 1
      112 GETTABLEKS                       R2 R2 K1 ["Stepped"]
      114 NAMECALL                         R2 R2 K2 ["Wait"]
      116 CALL                             R2 1 0
      117 RETURN                           R0 0

PROTO_77:
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
       67 MOVE                             R0 R3
       68 LOADK                            R5 K10 ["No result found for testId \"%*\""]
       69 MOVE                             R7 R1
       70 NAMECALL                         R5 R5 K11 ["format"]
       72 CALL                             R5 2 1
       73 FASTCALL2                        ASSERT R0 R5 ; [+4]
       75 MOVE                             R4 R0
       76 GETIMPORT                        R3 K7 [assert]
       78 CALL                             R3 2 0
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
       96 LOADK                            R3 K16 ["ScrollingFrame"]
       97 NAMECALL                         R1 R0 K17 ["FindFirstAncestorWhichIsA"]
       99 CALL                             R1 2 1
      100 MOVE                             R3 R1
      101 JUMPIFNOT                        R3 ; [+4]
      102 LOADK                            R5 K16 ["ScrollingFrame"]
      103 NAMECALL                         R3 R1 K14 ["IsA"]
      105 CALL                             R3 2 1
      106 FASTCALL2K                       ASSERT R3 K18 ; [+4]
      108 LOADK                            R4 K18 ["Scroll area not found for text box"]
      109 GETIMPORT                        R2 K7 [assert]
      111 CALL                             R2 2 0
      112 RETURN                           R1 1

PROTO_78:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["screen"]
        3 GETTABLEKS                       R2 R2 K1 ["debug"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_79:
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
       35 MOVE                             R0 R3
       36 LOADK                            R5 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R7 R1
       38 NAMECALL                         R5 R5 K8 ["format"]
       40 CALL                             R5 2 1
       41 FASTCALL2                        ASSERT R0 R5 ; [+4]
       43 MOVE                             R4 R0
       44 GETIMPORT                        R3 K4 [assert]
       46 CALL                             R3 2 0
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

PROTO_80:
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
       35 MOVE                             R0 R3
       36 LOADK                            R5 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R7 R1
       38 NAMECALL                         R5 R5 K8 ["format"]
       40 CALL                             R5 2 1
       41 FASTCALL2                        ASSERT R0 R5 ; [+4]
       43 MOVE                             R4 R0
       44 GETIMPORT                        R3 K4 [assert]
       46 CALL                             R3 2 0
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

PROTO_81:
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

PROTO_82:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["CaptureFocus"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_83:
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

PROTO_84:
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
       17 GETUPVAL                         R2 1
       18 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K1 ["Stepped"]
       24 NAMECALL                         R2 R2 K2 ["Wait"]
       26 CALL                             R2 1 0
       27 GETUPVAL                         R2 2
       28 GETTABLEKS                       R2 R2 K1 ["Stepped"]
       30 NAMECALL                         R2 R2 K2 ["Wait"]
       32 CALL                             R2 1 0
       33 GETUPVAL                         R2 3
       34 GETTABLEKS                       R2 R2 K3 ["InputArea"]
       36 GETTABLEKS                       R2 R2 K4 ["Container"]
       38 LOADNIL                          R3
       39 MOVE                             R4 R3
       40 JUMPIF                           R4 ; [+12]
       41 GETUPVAL                         R7 4
       42 JUMPIFNOTEQKNIL                  R7 ; [+2]
       44 LOADB                            R6 0 +1
       45 LOADB                            R6 1
       46 FASTCALL2K                       ASSERT R6 K5 ; [+4]
       48 LOADK                            R7 K5 ["Container not mounted, ensure render is called"]
       49 GETIMPORT                        R5 K7 [assert]
       51 CALL                             R5 2 0
       52 GETUPVAL                         R4 4
       53 MOVE                             R3 R4
       54 FASTCALL2K                       ASSERT R3 K8 ; [+5]
       56 MOVE                             R5 R3
       57 LOADK                            R6 K8 ["Query container not found"]
       58 GETIMPORT                        R4 K7 [assert]
       60 CALL                             R4 2 0
       61 GETUPVAL                         R4 5
       62 MOVE                             R5 R3
       63 CALL                             R4 1 1
       64 GETTABLEKS                       R4 R4 K9 ["getByTestId"]
       66 MOVE                             R5 R2
       67 CALL                             R4 1 1
       68 MOVE                             R1 R4
       69 LOADK                            R6 K10 ["No result found for testId \"%*\""]
       70 MOVE                             R8 R2
       71 NAMECALL                         R6 R6 K11 ["format"]
       73 CALL                             R6 2 1
       74 FASTCALL2                        ASSERT R1 R6 ; [+4]
       76 MOVE                             R5 R1
       77 GETIMPORT                        R4 K7 [assert]
       79 CALL                             R4 2 0
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
       97 CALL                             R0 1 0
       98 RETURN                           R0 0

PROTO_85:
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
       68 MOVE                             R2 R5
       69 LOADK                            R7 K10 ["No result found for testId \"%*\""]
       70 MOVE                             R9 R3
       71 NAMECALL                         R7 R7 K11 ["format"]
       73 CALL                             R7 2 1
       74 FASTCALL2                        ASSERT R2 R7 ; [+4]
       76 MOVE                             R6 R2
       77 GETIMPORT                        R5 K7 [assert]
       79 CALL                             R5 2 0
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
       97 MOVE                             R3 R0
       98 CALL                             R1 2 0
       99 GETUPVAL                         R1 6
      100 GETUPVAL                         R3 1
      101 NAMECALL                         R3 R3 K0 ["UpdateUnitTestOnly"]
      103 CALL                             R3 1 0
      104 GETUPVAL                         R3 2
      105 GETTABLEKS                       R3 R3 K1 ["Stepped"]
      107 NAMECALL                         R3 R3 K2 ["Wait"]
      109 CALL                             R3 1 0
      110 GETUPVAL                         R3 2
      111 GETTABLEKS                       R3 R3 K1 ["Stepped"]
      113 NAMECALL                         R3 R3 K2 ["Wait"]
      115 CALL                             R3 1 0
      116 GETUPVAL                         R3 1
      117 NAMECALL                         R3 R3 K0 ["UpdateUnitTestOnly"]
      119 CALL                             R3 1 0
      120 GETUPVAL                         R3 2
      121 GETTABLEKS                       R3 R3 K1 ["Stepped"]
      123 NAMECALL                         R3 R3 K2 ["Wait"]
      125 CALL                             R3 1 0
      126 GETUPVAL                         R3 2
      127 GETTABLEKS                       R3 R3 K1 ["Stepped"]
      129 NAMECALL                         R3 R3 K2 ["Wait"]
      131 CALL                             R3 1 0
      132 GETUPVAL                         R3 3
      133 GETTABLEKS                       R3 R3 K3 ["InputArea"]
      135 GETTABLEKS                       R3 R3 K4 ["Container"]
      137 LOADNIL                          R4
      138 MOVE                             R5 R4
      139 JUMPIF                           R5 ; [+12]
      140 GETUPVAL                         R8 4
      141 JUMPIFNOTEQKNIL                  R8 ; [+2]
      143 LOADB                            R7 0 +1
      144 LOADB                            R7 1
      145 FASTCALL2K                       ASSERT R7 K5 ; [+4]
      147 LOADK                            R8 K5 ["Container not mounted, ensure render is called"]
      148 GETIMPORT                        R6 K7 [assert]
      150 CALL                             R6 2 0
      151 GETUPVAL                         R5 4
      152 MOVE                             R4 R5
      153 FASTCALL2K                       ASSERT R4 K8 ; [+5]
      155 MOVE                             R6 R4
      156 LOADK                            R7 K8 ["Query container not found"]
      157 GETIMPORT                        R5 K7 [assert]
      159 CALL                             R5 2 0
      160 GETUPVAL                         R5 5
      161 MOVE                             R6 R4
      162 CALL                             R5 1 1
      163 GETTABLEKS                       R5 R5 K9 ["getByTestId"]
      165 MOVE                             R6 R3
      166 CALL                             R5 1 1
      167 MOVE                             R2 R5
      168 LOADK                            R7 K10 ["No result found for testId \"%*\""]
      169 MOVE                             R9 R3
      170 NAMECALL                         R7 R7 K11 ["format"]
      172 CALL                             R7 2 1
      173 FASTCALL2                        ASSERT R2 R7 ; [+4]
      175 MOVE                             R6 R2
      176 GETIMPORT                        R5 K7 [assert]
      178 CALL                             R5 2 0
      179 LOADK                            R4 K12 ["TextBox"]
      180 LOADB                            R5 1
      181 NAMECALL                         R2 R2 K13 ["FindFirstChild"]
      183 CALL                             R2 3 1
      184 MOVE                             R4 R2
      185 JUMPIFNOT                        R4 ; [+4]
      186 LOADK                            R6 K12 ["TextBox"]
      187 NAMECALL                         R4 R2 K14 ["IsA"]
      189 CALL                             R4 2 1
      190 FASTCALL2K                       ASSERT R4 K15 ; [+4]
      192 LOADK                            R5 K15 ["TextBox not found"]
      193 GETIMPORT                        R3 K7 [assert]
      195 CALL                             R3 2 0
      196 CALL                             R1 1 0
      197 RETURN                           R0 0

PROTO_86:
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
       67 MOVE                             R1 R4
       68 LOADK                            R6 K10 ["No result found for testId \"%*\""]
       69 MOVE                             R8 R2
       70 NAMECALL                         R6 R6 K11 ["format"]
       72 CALL                             R6 2 1
       73 FASTCALL2                        ASSERT R1 R6 ; [+4]
       75 MOVE                             R5 R1
       76 GETIMPORT                        R4 K7 [assert]
       78 CALL                             R4 2 0
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
       96 GETUPVAL                         R2 5
       97 GETTABLEKS                       R2 R2 K16 ["keyDown"]
       99 MOVE                             R3 R1
      100 DUPTABLE                         R4 K18 [{"key"}]
      101 SETTABLEKS                       R0 R4 K17 ["key"]
      103 CALL                             R2 2 0
      104 GETUPVAL                         R2 5
      105 GETTABLEKS                       R2 R2 K19 ["keyUp"]
      107 MOVE                             R3 R1
      108 DUPTABLE                         R4 K18 [{"key"}]
      109 SETTABLEKS                       R0 R4 K17 ["key"]
      111 CALL                             R2 2 0
      112 GETUPVAL                         R2 0
      113 NAMECALL                         R2 R2 K0 ["UpdateUnitTestOnly"]
      115 CALL                             R2 1 0
      116 GETUPVAL                         R2 1
      117 GETTABLEKS                       R2 R2 K1 ["Stepped"]
      119 NAMECALL                         R2 R2 K2 ["Wait"]
      121 CALL                             R2 1 0
      122 GETUPVAL                         R2 1
      123 GETTABLEKS                       R2 R2 K1 ["Stepped"]
      125 NAMECALL                         R2 R2 K2 ["Wait"]
      127 CALL                             R2 1 0
      128 RETURN                           R0 0

PROTO_87:
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

PROTO_88:
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
       67 MOVE                             R0 R3
       68 LOADK                            R5 K10 ["No result found for testId \"%*\""]
       69 MOVE                             R7 R1
       70 NAMECALL                         R5 R5 K11 ["format"]
       72 CALL                             R5 2 1
       73 FASTCALL2                        ASSERT R0 R5 ; [+4]
       75 MOVE                             R4 R0
       76 GETIMPORT                        R3 K7 [assert]
       78 CALL                             R3 2 0
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
       96 GETTABLEKS                       R1 R0 K16 ["Visible"]
       98 JUMPIFNOT                        R1 ; [+2]
       99 GETTABLEKS                       R1 R0 K17 ["TextEditable"]
      101 RETURN                           R1 1

PROTO_89:
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
       68 MOVE                             R2 R5
       69 LOADK                            R7 K10 ["No result found for testId \"%*\""]
       70 MOVE                             R9 R3
       71 NAMECALL                         R7 R7 K11 ["format"]
       73 CALL                             R7 2 1
       74 FASTCALL2                        ASSERT R2 R7 ; [+4]
       76 MOVE                             R6 R2
       77 GETIMPORT                        R5 K7 [assert]
       79 CALL                             R5 2 0
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
       97 GETTABLEKS                       R1 R2 K16 ["Visible"]
       99 JUMPIFNOT                        R1 ; [+2]
      100 GETTABLEKS                       R1 R2 K17 ["TextEditable"]
      102 CALL                             R0 1 1
      103 GETTABLEKS                       R0 R0 K18 ["toBe"]
      105 GETUPVAL                         R1 6
      106 CALL                             R0 1 0
      107 RETURN                           R0 0

PROTO_90:
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

PROTO_91:
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

PROTO_92:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LENGTH                           R0 R1
        3 RETURN                           R0 1

PROTO_93:
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
       67 MOVE                             R0 R3
       68 LOADK                            R5 K10 ["No result found for testId \"%*\""]
       69 MOVE                             R7 R1
       70 NAMECALL                         R5 R5 K11 ["format"]
       72 CALL                             R5 2 1
       73 FASTCALL2                        ASSERT R0 R5 ; [+4]
       75 MOVE                             R4 R0
       76 GETIMPORT                        R3 K7 [assert]
       78 CALL                             R3 2 0
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
       96 GETTABLEKS                       R2 R0 K16 ["PlaceholderText"]
       98 JUMPIFEQKS                       R2 K17 ["Responding..."] ; [+2]
      100 LOADB                            R1 0 +1
      101 LOADB                            R1 1
      102 RETURN                           R1 1

PROTO_94:
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

PROTO_95:
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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

PROTO_100:
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
       47 RETURN                           R1 1

PROTO_101:
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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

PROTO_102:
        0 GETIMPORT                        R0 K1 [error]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_103:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["spyOn"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Parsers"]
        6 GETTABLEKS                       R2 R2 K2 ["CommonMarkComplianceParser"]
        8 LOADK                            R3 K3 ["parse"]
        9 CALL                             R1 2 1
       10 GETTABLEKS                       R1 R1 K4 ["mockImplementation"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 CALL                             R1 1 -1
       15 RETURN                           R1 -1

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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
       35 MOVE                             R0 R3
       36 LOADK                            R5 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R7 R1
       38 NAMECALL                         R5 R5 K8 ["format"]
       40 CALL                             R5 2 1
       41 FASTCALL2                        ASSERT R0 R5 ; [+4]
       43 MOVE                             R4 R0
       44 GETIMPORT                        R3 K4 [assert]
       46 CALL                             R3 2 0
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
       35 MOVE                             R0 R3
       36 LOADK                            R5 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R7 R1
       38 NAMECALL                         R5 R5 K8 ["format"]
       40 CALL                             R5 2 1
       41 FASTCALL2                        ASSERT R0 R5 ; [+4]
       43 MOVE                             R4 R0
       44 GETIMPORT                        R3 K4 [assert]
       46 CALL                             R3 2 0
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
       35 MOVE                             R0 R3
       36 LOADK                            R5 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R7 R1
       38 NAMECALL                         R5 R5 K8 ["format"]
       40 CALL                             R5 2 1
       41 FASTCALL2                        ASSERT R0 R5 ; [+4]
       43 MOVE                             R4 R0
       44 GETIMPORT                        R3 K4 [assert]
       46 CALL                             R3 2 0
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
      103 MOVE                             R1 R4
      104 LOADK                            R6 K7 ["No result found for testId \"%*\""]
      105 MOVE                             R8 R2
      106 NAMECALL                         R6 R6 K8 ["format"]
      108 CALL                             R6 2 1
      109 FASTCALL2                        ASSERT R1 R6 ; [+4]
      111 MOVE                             R5 R1
      112 GETIMPORT                        R4 K4 [assert]
      114 CALL                             R4 2 0
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
      150 MOVE                             R2 R5
      151 MOVE                             R6 R2
      152 JUMPIFNOT                        R6 ; [+6]
      153 LENGTH                           R7 R2
      154 LOADN                            R8 0
      155 JUMPIFLT                         R8 R7 ; [+2]
      157 LOADB                            R6 0 +1
      158 LOADB                            R6 1
      159 LOADK                            R7 K16 ["No results found for testId \"%*\""]
      160 MOVE                             R9 R3
      161 NAMECALL                         R7 R7 K8 ["format"]
      163 CALL                             R7 2 1
      164 FASTCALL2                        ASSERT R6 R7 ; [+3]
      166 GETIMPORT                        R5 K4 [assert]
      168 CALL                             R5 2 0
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
      238 MOVE                             R3 R6
      239 LOADK                            R8 K7 ["No result found for testId \"%*\""]
      240 MOVE                             R10 R4
      241 NAMECALL                         R8 R8 K8 ["format"]
      243 CALL                             R8 2 1
      244 FASTCALL2                        ASSERT R3 R8 ; [+4]
      246 MOVE                             R7 R3
      247 GETIMPORT                        R6 K4 [assert]
      249 CALL                             R6 2 0
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
      310 MOVE                             R4 R7
      311 LOADK                            R9 K7 ["No result found for testId \"%*\""]
      312 MOVE                             R11 R5
      313 NAMECALL                         R9 R9 K8 ["format"]
      315 CALL                             R9 2 1
      316 FASTCALL2                        ASSERT R4 R9 ; [+4]
      318 MOVE                             R8 R4
      319 GETIMPORT                        R7 K4 [assert]
      321 CALL                             R7 2 0
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
       35 MOVE                             R2 R4
       36 LOADK                            R6 K6 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R1
       38 NAMECALL                         R6 R6 K7 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R2 R6 ; [+4]
       43 MOVE                             R5 R2
       44 GETIMPORT                        R4 K3 [assert]
       46 CALL                             R4 2 0
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
       33 MOVE                             R5 R2
       34 CALL                             R4 1 1
       35 MOVE                             R1 R4
       36 LOADK                            R6 K6 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K7 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K3 [assert]
       46 CALL                             R4 2 0
       47 LOADK                            R6 K8 ["GuiButton"]
       48 NAMECALL                         R4 R1 K9 ["IsA"]
       50 CALL                             R4 2 1
       51 LOADK                            R5 K10 ["Provider checkbox is not a GuiButton for %* (testId: %*)"]
       52 MOVE                             R7 R0
       53 MOVE                             R8 R2
       54 NAMECALL                         R5 R5 K7 ["format"]
       56 CALL                             R5 3 1
       57 FASTCALL2                        ASSERT R4 R5 ; [+3]
       59 GETIMPORT                        R3 K3 [assert]
       61 CALL                             R3 2 0
       62 LOADK                            R4 K11 ["ScrollingFrame"]
       63 NAMECALL                         R2 R1 K12 ["FindFirstAncestorWhichIsA"]
       65 CALL                             R2 2 1
       66 MOVE                             R4 R2
       67 JUMPIFNOT                        R4 ; [+4]
       68 LOADK                            R6 K11 ["ScrollingFrame"]
       69 NAMECALL                         R4 R2 K9 ["IsA"]
       71 CALL                             R4 2 1
       72 FASTCALL2K                       ASSERT R4 K13 ; [+4]
       74 LOADK                            R5 K13 ["Scroll area not found for widget"]
       75 GETIMPORT                        R3 K3 [assert]
       77 CALL                             R3 2 0
       78 GETTABLEKS                       R4 R2 K14 ["AbsolutePosition"]
       80 GETTABLEKS                       R6 R1 K14 ["AbsolutePosition"]
       82 GETTABLEKS                       R8 R1 K16 ["AbsoluteSize"]
       84 DIVK                             R7 R8 K15 [2]
       85 ADD                              R5 R6 R7
       86 SUB                              R3 R4 R5
       87 GETTABLEKS                       R4 R2 K17 ["CanvasPosition"]
       89 SUB                              R4 R4 R3
       90 SETTABLEKS                       R4 R2 K17 ["CanvasPosition"]
       92 GETUPVAL                         R4 3
       93 NAMECALL                         R4 R4 K18 ["UpdateUnitTestOnly"]
       95 CALL                             R4 1 0
       96 GETUPVAL                         R4 4
       97 GETTABLEKS                       R4 R4 K19 ["Stepped"]
       99 NAMECALL                         R4 R4 K20 ["Wait"]
      101 CALL                             R4 1 0
      102 GETUPVAL                         R4 4
      103 GETTABLEKS                       R4 R4 K19 ["Stepped"]
      105 NAMECALL                         R4 R4 K20 ["Wait"]
      107 CALL                             R4 1 0
      108 GETUPVAL                         R2 5
      109 NEWCLOSURE                       R3 P0
      110 CAPTURE                          VAL R1
      111 CAPTURE                          UPVAL U5
      112 CAPTURE                          UPVAL U6
      113 CAPTURE                          UPVAL U3
      114 CAPTURE                          UPVAL U4
      115 CALL                             R2 1 0
      116 RETURN                           R0 0

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
       35 MOVE                             R0 R3
       36 LOADK                            R5 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R7 R1
       38 NAMECALL                         R5 R5 K8 ["format"]
       40 CALL                             R5 2 1
       41 FASTCALL2                        ASSERT R0 R5 ; [+4]
       43 MOVE                             R4 R0
       44 GETIMPORT                        R3 K4 [assert]
       46 CALL                             R3 2 0
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
       35 MOVE                             R0 R3
       36 LOADK                            R5 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R7 R1
       38 NAMECALL                         R5 R5 K8 ["format"]
       40 CALL                             R5 2 1
       41 FASTCALL2                        ASSERT R0 R5 ; [+4]
       43 MOVE                             R4 R0
       44 GETIMPORT                        R3 K4 [assert]
       46 CALL                             R3 2 0
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
       82 MOVE                             R1 R4
       83 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       84 MOVE                             R8 R2
       85 NAMECALL                         R6 R6 K8 ["format"]
       87 CALL                             R6 2 1
       88 FASTCALL2                        ASSERT R1 R6 ; [+4]
       90 MOVE                             R5 R1
       91 GETIMPORT                        R4 K4 [assert]
       93 CALL                             R4 2 0
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
       82 MOVE                             R2 R5
       83 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       84 MOVE                             R9 R3
       85 NAMECALL                         R7 R7 K8 ["format"]
       87 CALL                             R7 2 1
       88 FASTCALL2                        ASSERT R2 R7 ; [+4]
       90 MOVE                             R6 R2
       91 GETIMPORT                        R5 K4 [assert]
       93 CALL                             R5 2 0
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
       37 MOVE                             R0 R3
       38 LOADK                            R5 K8 ["No result found for testId \"%*\""]
       39 MOVE                             R7 R1
       40 NAMECALL                         R5 R5 K9 ["format"]
       42 CALL                             R5 2 1
       43 FASTCALL2                        ASSERT R0 R5 ; [+4]
       45 MOVE                             R4 R0
       46 GETIMPORT                        R3 K5 [assert]
       48 CALL                             R3 2 0
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
       37 MOVE                             R1 R4
       38 LOADK                            R6 K8 ["No result found for testId \"%*\""]
       39 MOVE                             R8 R2
       40 NAMECALL                         R6 R6 K9 ["format"]
       42 CALL                             R6 2 1
       43 FASTCALL2                        ASSERT R1 R6 ; [+4]
       45 MOVE                             R5 R1
       46 GETIMPORT                        R4 K5 [assert]
       48 CALL                             R4 2 0
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
       37 MOVE                             R0 R3
       38 LOADK                            R5 K8 ["No result found for testId \"%*\""]
       39 MOVE                             R7 R1
       40 NAMECALL                         R5 R5 K9 ["format"]
       42 CALL                             R5 2 1
       43 FASTCALL2                        ASSERT R0 R5 ; [+4]
       45 MOVE                             R4 R0
       46 GETIMPORT                        R3 K5 [assert]
       48 CALL                             R3 2 0
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
       35 MOVE                             R0 R3
       36 LOADK                            R5 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R7 R1
       38 NAMECALL                         R5 R5 K8 ["format"]
       40 CALL                             R5 2 1
       41 FASTCALL2                        ASSERT R0 R5 ; [+4]
       43 MOVE                             R4 R0
       44 GETIMPORT                        R3 K4 [assert]
       46 CALL                             R3 2 0
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
       35 MOVE                             R0 R3
       36 LOADK                            R5 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R7 R1
       38 NAMECALL                         R5 R5 K8 ["format"]
       40 CALL                             R5 2 1
       41 FASTCALL2                        ASSERT R0 R5 ; [+4]
       43 MOVE                             R4 R0
       44 GETIMPORT                        R3 K4 [assert]
       46 CALL                             R3 2 0
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
       35 MOVE                             R0 R3
       36 LOADK                            R5 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R7 R1
       38 NAMECALL                         R5 R5 K8 ["format"]
       40 CALL                             R5 2 1
       41 FASTCALL2                        ASSERT R0 R5 ; [+4]
       43 MOVE                             R4 R0
       44 GETIMPORT                        R3 K4 [assert]
       46 CALL                             R3 2 0
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
       35 MOVE                             R0 R3
       36 LOADK                            R5 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R7 R1
       38 NAMECALL                         R5 R5 K8 ["format"]
       40 CALL                             R5 2 1
       41 FASTCALL2                        ASSERT R0 R5 ; [+4]
       43 MOVE                             R4 R0
       44 GETIMPORT                        R3 K4 [assert]
       46 CALL                             R3 2 0
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
       36 MOVE                             R1 R4
       37 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       38 MOVE                             R8 R2
       39 NAMECALL                         R6 R6 K8 ["format"]
       41 CALL                             R6 2 1
       42 FASTCALL2                        ASSERT R1 R6 ; [+4]
       44 MOVE                             R5 R1
       45 GETIMPORT                        R4 K4 [assert]
       47 CALL                             R4 2 0
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
       36 MOVE                             R1 R4
       37 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       38 MOVE                             R8 R2
       39 NAMECALL                         R6 R6 K8 ["format"]
       41 CALL                             R6 2 1
       42 FASTCALL2                        ASSERT R1 R6 ; [+4]
       44 MOVE                             R5 R1
       45 GETIMPORT                        R4 K4 [assert]
       47 CALL                             R4 2 0
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
       35 MOVE                             R0 R3
       36 LOADK                            R5 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R7 R1
       38 NAMECALL                         R5 R5 K8 ["format"]
       40 CALL                             R5 2 1
       41 FASTCALL2                        ASSERT R0 R5 ; [+4]
       43 MOVE                             R4 R0
       44 GETIMPORT                        R3 K4 [assert]
       46 CALL                             R3 2 0
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
       37 MOVE                             R0 R3
       38 LOADK                            R5 K8 ["No result found for testId \"%*\""]
       39 MOVE                             R7 R1
       40 NAMECALL                         R5 R5 K9 ["format"]
       42 CALL                             R5 2 1
       43 FASTCALL2                        ASSERT R0 R5 ; [+4]
       45 MOVE                             R4 R0
       46 GETIMPORT                        R3 K5 [assert]
       48 CALL                             R3 2 0
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
       37 MOVE                             R0 R3
       38 LOADK                            R5 K8 ["No result found for testId \"%*\""]
       39 MOVE                             R7 R1
       40 NAMECALL                         R5 R5 K9 ["format"]
       42 CALL                             R5 2 1
       43 FASTCALL2                        ASSERT R0 R5 ; [+4]
       45 MOVE                             R4 R0
       46 GETIMPORT                        R3 K5 [assert]
       48 CALL                             R3 2 0
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
       37 MOVE                             R0 R3
       38 LOADK                            R5 K8 ["No result found for testId \"%*\""]
       39 MOVE                             R7 R1
       40 NAMECALL                         R5 R5 K9 ["format"]
       42 CALL                             R5 2 1
       43 FASTCALL2                        ASSERT R0 R5 ; [+4]
       45 MOVE                             R4 R0
       46 GETIMPORT                        R3 K5 [assert]
       48 CALL                             R3 2 0
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
       37 MOVE                             R0 R3
       38 LOADK                            R5 K8 ["No result found for testId \"%*\""]
       39 MOVE                             R7 R1
       40 NAMECALL                         R5 R5 K9 ["format"]
       42 CALL                             R5 2 1
       43 FASTCALL2                        ASSERT R0 R5 ; [+4]
       45 MOVE                             R4 R0
       46 GETIMPORT                        R3 K5 [assert]
       48 CALL                             R3 2 0
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
       37 MOVE                             R0 R3
       38 LOADK                            R5 K8 ["No result found for testId \"%*\""]
       39 MOVE                             R7 R1
       40 NAMECALL                         R5 R5 K9 ["format"]
       42 CALL                             R5 2 1
       43 FASTCALL2                        ASSERT R0 R5 ; [+4]
       45 MOVE                             R4 R0
       46 GETIMPORT                        R3 K5 [assert]
       48 CALL                             R3 2 0
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
       37 MOVE                             R2 R4
       38 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       39 MOVE                             R8 R1
       40 NAMECALL                         R6 R6 K8 ["format"]
       42 CALL                             R6 2 1
       43 FASTCALL2                        ASSERT R2 R6 ; [+4]
       45 MOVE                             R5 R2
       46 GETIMPORT                        R4 K4 [assert]
       48 CALL                             R4 2 0
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
       37 MOVE                             R2 R4
       38 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       39 MOVE                             R8 R1
       40 NAMECALL                         R6 R6 K8 ["format"]
       42 CALL                             R6 2 1
       43 FASTCALL2                        ASSERT R2 R6 ; [+4]
       45 MOVE                             R5 R2
       46 GETIMPORT                        R4 K4 [assert]
       48 CALL                             R4 2 0
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
       37 MOVE                             R2 R4
       38 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       39 MOVE                             R8 R1
       40 NAMECALL                         R6 R6 K8 ["format"]
       42 CALL                             R6 2 1
       43 FASTCALL2                        ASSERT R2 R6 ; [+4]
       45 MOVE                             R5 R2
       46 GETIMPORT                        R4 K4 [assert]
       48 CALL                             R4 2 0
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
       37 MOVE                             R2 R4
       38 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       39 MOVE                             R8 R1
       40 NAMECALL                         R6 R6 K8 ["format"]
       42 CALL                             R6 2 1
       43 FASTCALL2                        ASSERT R2 R6 ; [+4]
       45 MOVE                             R5 R2
       46 GETIMPORT                        R4 K4 [assert]
       48 CALL                             R4 2 0
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
       37 MOVE                             R3 R5
       38 LOADK                            R7 K7 ["No result found for testId \"%*\""]
       39 MOVE                             R9 R2
       40 NAMECALL                         R7 R7 K8 ["format"]
       42 CALL                             R7 2 1
       43 FASTCALL2                        ASSERT R3 R7 ; [+4]
       45 MOVE                             R6 R3
       46 GETIMPORT                        R5 K4 [assert]
       48 CALL                             R5 2 0
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
       37 MOVE                             R2 R4
       38 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       39 MOVE                             R8 R1
       40 NAMECALL                         R6 R6 K8 ["format"]
       42 CALL                             R6 2 1
       43 FASTCALL2                        ASSERT R2 R6 ; [+4]
       45 MOVE                             R5 R2
       46 GETIMPORT                        R4 K4 [assert]
       48 CALL                             R4 2 0
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
       37 MOVE                             R2 R4
       38 LOADK                            R6 K8 ["No result found for testId \"%*\""]
       39 MOVE                             R8 R1
       40 NAMECALL                         R6 R6 K9 ["format"]
       42 CALL                             R6 2 1
       43 FASTCALL2                        ASSERT R2 R6 ; [+4]
       45 MOVE                             R5 R2
       46 GETIMPORT                        R4 K5 [assert]
       48 CALL                             R4 2 0
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
       37 MOVE                             R2 R4
       38 LOADK                            R6 K8 ["No result found for testId \"%*\""]
       39 MOVE                             R8 R1
       40 NAMECALL                         R6 R6 K9 ["format"]
       42 CALL                             R6 2 1
       43 FASTCALL2                        ASSERT R2 R6 ; [+4]
       45 MOVE                             R5 R2
       46 GETIMPORT                        R4 K5 [assert]
       48 CALL                             R4 2 0
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
       35 MOVE                             R1 R4
       36 LOADK                            R6 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R8 R2
       38 NAMECALL                         R6 R6 K8 ["format"]
       40 CALL                             R6 2 1
       41 FASTCALL2                        ASSERT R1 R6 ; [+4]
       43 MOVE                             R5 R1
       44 GETIMPORT                        R4 K4 [assert]
       46 CALL                             R4 2 0
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
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 FASTPCALL                        pcall 1 ; [+2]
        6 GETIMPORT                        R4 K1 [pcall]
        8 CALL                             R4 1 2
        9 JUMPIFNOT                        R4 ; [+9]
       10 JUMPIFNOT                        R5 ; [+8]
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K2 ["ToolNaming"]
       14 GETTABLEKS                       R6 R6 K3 ["addPrefix"]
       16 MOVE                             R7 R0
       17 CALL                             R6 1 1
       18 MOVE                             R3 R6
       19 DUPTABLE                         R6 K8 [{["type"] = "content_start", ["contentId"], ["contentBlock"]}]
       20 SETTABLEKS                       R2 R6 K6 ["contentId"]
       22 DUPTABLE                         R7 K13 [{["type"] = "tool_use", ["id"], ["name"], ["input"]}]
       23 MOVE                             R9 R3
       24 LOADK                            R10 K14 ["_"]
       25 MOVE                             R11 R2
       26 CONCAT                           R8 R9 R11
       27 SETTABLEKS                       R8 R7 K10 ["id"]
       29 SETTABLEKS                       R3 R7 K11 ["name"]
       31 NEWTABLE                         R8 0 0
       33 SETTABLEKS                       R8 R7 K12 ["input"]
       35 SETTABLEKS                       R7 R6 K7 ["contentBlock"]
       37 GETUPVAL                         R7 3
       38 MOVE                             R8 R6
       39 CALL                             R7 1 0
       40 DUPTABLE                         R7 K17 [{["type"] = "content_delta", ["contentId"], ["delta"]}]
       41 SETTABLEKS                       R2 R7 K6 ["contentId"]
       43 DUPTABLE                         R8 K20 [{["type"] = "json_delta", ["jsonDelta"]}]
       44 SETTABLEKS                       R1 R8 K19 ["jsonDelta"]
       46 SETTABLEKS                       R8 R7 K16 ["delta"]
       48 GETUPVAL                         R8 3
       49 MOVE                             R9 R7
       50 CALL                             R8 1 0
       51 DUPTABLE                         R8 K22 [{["type"] = "content_end", ["contentId"]}]
       52 SETTABLEKS                       R2 R8 K6 ["contentId"]
       54 GETUPVAL                         R9 3
       55 MOVE                             R10 R8
       56 CALL                             R9 1 0
       57 RETURN                           R0 0

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
       35 MOVE                             R0 R3
       36 LOADK                            R5 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R7 R1
       38 NAMECALL                         R5 R5 K8 ["format"]
       40 CALL                             R5 2 1
       41 FASTCALL2                        ASSERT R0 R5 ; [+4]
       43 MOVE                             R4 R0
       44 GETIMPORT                        R3 K4 [assert]
       46 CALL                             R3 2 0
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
       37 MOVE                             R1 R4
       38 MOVE                             R5 R1
       39 JUMPIFNOT                        R5 ; [+6]
       40 LENGTH                           R6 R1
       41 LOADN                            R7 0
       42 JUMPIFLT                         R7 R6 ; [+2]
       44 LOADB                            R5 0 +1
       45 LOADB                            R5 1
       46 LOADK                            R6 K8 ["No results found for testId \"%*\""]
       47 MOVE                             R8 R2
       48 NAMECALL                         R6 R6 K9 ["format"]
       50 CALL                             R6 2 1
       51 FASTCALL2                        ASSERT R5 R6 ; [+3]
       53 GETIMPORT                        R4 K5 [assert]
       55 CALL                             R4 2 0
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
       99 MOVE                             R8 R11
      100 LOADK                            R13 K12 ["No result found for testId \"%*\""]
      101 MOVE                             R15 R9
      102 NAMECALL                         R13 R13 K9 ["format"]
      104 CALL                             R13 2 1
      105 FASTCALL2                        ASSERT R8 R13 ; [+4]
      107 MOVE                             R12 R8
      108 GETIMPORT                        R11 K5 [assert]
      110 CALL                             R11 2 0
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
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["get"]
        4 GETIMPORT                        R3 K2 [game]
        6 LOADK                            R4 K3 ["data-testid=%*"]
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R6 R6 K4 ["ToolMenuView"]
       10 GETTABLEKS                       R6 R6 K5 ["Container"]
       12 NAMECALL                         R4 R4 K6 ["format"]
       14 CALL                             R4 2 1
       15 CALL                             R2 2 1
       16 MOVE                             R4 R2
       17 JUMPIFNOT                        R4 ; [+4]
       18 LOADK                            R6 K7 ["GuiObject"]
       19 NAMECALL                         R4 R2 K8 ["IsA"]
       21 CALL                             R4 2 1
       22 FASTCALL2K                       ASSERT R4 K9 ; [+4]
       24 LOADK                            R5 K9 ["ToolMenuView not found"]
       25 GETIMPORT                        R3 K11 [assert]
       27 CALL                             R3 2 0
       28 CALL                             R1 1 1
       29 GETTABLEKS                       R1 R1 K12 ["getByText"]
       31 MOVE                             R2 R0
       32 CALL                             R1 1 1
       33 FASTCALL2K                       ASSERT R1 K13 ; [+5]
       35 MOVE                             R3 R1
       36 LOADK                            R4 K13 ["Option not found"]
       37 GETIMPORT                        R2 K11 [assert]
       39 CALL                             R2 2 0
       40 GETUPVAL                         R2 1
       41 GETTABLEKS                       R2 R2 K14 ["firstAncestorWithTag"]
       43 MOVE                             R3 R1
       44 LOADK                            R4 K3 ["data-testid=%*"]
       45 GETUPVAL                         R6 2
       46 GETTABLEKS                       R6 R6 K4 ["ToolMenuView"]
       48 GETTABLEKS                       R6 R6 K15 ["Option"]
       50 GETTABLEKS                       R6 R6 K5 ["Container"]
       52 NAMECALL                         R4 R4 K6 ["format"]
       54 CALL                             R4 2 1
       55 CALL                             R2 2 1
       56 FASTCALL2K                       ASSERT R2 K16 ; [+5]
       58 MOVE                             R4 R2
       59 LOADK                            R5 K16 ["Option container not found"]
       60 GETIMPORT                        R3 K11 [assert]
       62 CALL                             R3 2 0
       63 GETUPVAL                         R3 1
       64 GETTABLEKS                       R3 R3 K0 ["get"]
       66 MOVE                             R4 R2
       67 LOADK                            R5 K3 ["data-testid=%*"]
       68 GETUPVAL                         R7 2
       69 GETTABLEKS                       R7 R7 K4 ["ToolMenuView"]
       71 GETTABLEKS                       R7 R7 K15 ["Option"]
       73 GETTABLEKS                       R7 R7 K17 ["Checkbox"]
       75 NAMECALL                         R5 R5 K6 ["format"]
       77 CALL                             R5 2 1
       78 CALL                             R3 2 1
       79 FASTCALL2K                       ASSERT R3 K18 ; [+5]
       81 MOVE                             R5 R3
       82 LOADK                            R6 K18 ["Checkbox not found"]
       83 GETIMPORT                        R4 K11 [assert]
       85 CALL                             R4 2 0
       86 LOADK                            R7 K7 ["GuiObject"]
       87 NAMECALL                         R5 R3 K8 ["IsA"]
       89 CALL                             R5 2 1
       90 FASTCALL2K                       ASSERT R5 K19 ; [+4]
       92 LOADK                            R6 K19 ["Checkbox is not a GuiObject"]
       93 GETIMPORT                        R4 K11 [assert]
       95 CALL                             R4 2 0
       96 GETUPVAL                         R4 3
       97 NEWCLOSURE                       R5 P0
       98 CAPTURE                          UPVAL U4
       99 CAPTURE                          VAL R3
      100 CALL                             R4 1 0
      101 GETUPVAL                         R4 5
      102 NAMECALL                         R4 R4 K20 ["UpdateUnitTestOnly"]
      104 CALL                             R4 1 0
      105 GETUPVAL                         R4 6
      106 GETTABLEKS                       R4 R4 K21 ["Stepped"]
      108 NAMECALL                         R4 R4 K22 ["Wait"]
      110 CALL                             R4 1 0
      111 GETUPVAL                         R4 6
      112 GETTABLEKS                       R4 R4 K21 ["Stepped"]
      114 NAMECALL                         R4 R4 K22 ["Wait"]
      116 CALL                             R4 1 0
      117 RETURN                           R0 0

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
       35 MOVE                             R0 R3
       36 LOADK                            R5 K7 ["No result found for testId \"%*\""]
       37 MOVE                             R7 R1
       38 NAMECALL                         R5 R5 K8 ["format"]
       40 CALL                             R5 2 1
       41 FASTCALL2                        ASSERT R0 R5 ; [+4]
       43 MOVE                             R4 R0
       44 GETIMPORT                        R3 K4 [assert]
       46 CALL                             R3 2 0
       47 NEWCLOSURE                       R2 P0
       48 CAPTURE                          UPVAL U0
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          UPVAL U2
       52 FASTPCALL                        pcall 1 ; [+2]
       53 GETIMPORT                        R1 K10 [pcall]
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
      105 MOVE                             R3 R6
      106 LOADK                            R8 K7 ["No result found for testId \"%*\""]
      107 MOVE                             R10 R4
      108 NAMECALL                         R8 R8 K8 ["format"]
      110 CALL                             R8 2 1
      111 FASTCALL2                        ASSERT R3 R8 ; [+4]
      113 MOVE                             R7 R3
      114 GETIMPORT                        R6 K4 [assert]
      116 CALL                             R6 2 0
      117 RETURN                           R3 1

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
      214 MOVE                             R37 R35
      215 LOADN                            R38 1
      216 GETUPVAL                         R39 14
      217 GETUPVAL                         R40 25
      218 GETTABLEKS                       R40 R40 K20 ["Provider"]
      220 DUPTABLE                         R41 K34 [{"net"}]
      221 GETTABLEKS                       R42 R0 K33 ["net"]
      223 JUMPIF                           R42 ; [+4]
      224 GETUPVAL                         R42 26
      225 GETTABLEKS                       R42 R42 K28 ["create"]
      227 CALL                             R42 0 1
      228 SETTABLEKS                       R42 R41 K33 ["net"]
      230 CALL                             R39 2 -1
      231 FASTCALL                         TABLE_INSERT ; [+2]
      232 GETIMPORT                        R36 K37 [table.insert]
      234 CALL                             R36 -1 0
      235 GETTABLEKS                       R36 R0 K38 ["orderedOverrideProviders"]
      237 JUMPIFNOT                        R36 ; [+14]
      238 GETTABLEKS                       R36 R0 K38 ["orderedOverrideProviders"]
      240 LOADNIL                          R37
      241 LOADNIL                          R38
      242 FORGPREP                         R36
      243 FASTCALL2                        TABLE_INSERT R35 R40 ; [+5]
      245 MOVE                             R42 R35
      246 MOVE                             R43 R40
      247 GETIMPORT                        R41 K37 [table.insert]
      249 CALL                             R41 2 0
      250 FORGLOOP                         R36 2 ; [-8]
      252 GETUPVAL                         R36 27
      253 GETTABLEKS                       R36 R36 K39 ["FFlagPropertiesExposeContentView"]
      255 JUMPIFNOT                        R36 ; [+18]
      256 GETIMPORT                        R36 K41 [require]
      258 GETUPVAL                         R37 28
      259 GETTABLEKS                       R37 R37 K42 ["Components"]
      261 GETTABLEKS                       R37 R37 K43 ["Contexts"]
      263 GETTABLEKS                       R37 R37 K44 ["PropertiesContextProvider"]
      265 CALL                             R36 1 1
      266 MOVE                             R38 R35
      267 GETUPVAL                         R39 14
      268 MOVE                             R40 R36
      269 CALL                             R39 1 -1
      270 FASTCALL                         TABLE_INSERT ; [+2]
      271 GETIMPORT                        R37 K37 [table.insert]
      273 CALL                             R37 -1 0
      274 DUPCLOSURE                       R36 K45 [PROTO_21]
      275 CAPTURE                          UPVAL U29
      276 CAPTURE                          UPVAL U30
      277 LOADNIL                          R37
      278 NEWCLOSURE                       R38 P2
      279 CAPTURE                          UPVAL U31
      280 CAPTURE                          UPVAL U32
      281 CAPTURE                          REF R0
      282 CAPTURE                          UPVAL U33
      283 CAPTURE                          UPVAL U14
      284 CAPTURE                          UPVAL U34
      285 CAPTURE                          VAL R35
      286 CAPTURE                          UPVAL U29
      287 CAPTURE                          UPVAL U30
      288 CAPTURE                          REF R37
      289 DUPCLOSURE                       R39 K46 [PROTO_23]
      290 CAPTURE                          UPVAL U35
      291 NEWCLOSURE                       R40 P4
      292 CAPTURE                          UPVAL U36
      293 CAPTURE                          VAL R25
      294 NEWCLOSURE                       R41 P5
      295 CAPTURE                          VAL R26
      296 NEWCLOSURE                       R42 P6
      297 CAPTURE                          VAL R40
      298 NEWCLOSURE                       R43 P7
      299 CAPTURE                          UPVAL U37
      300 CAPTURE                          UPVAL U38
      301 CAPTURE                          VAL R25
      302 CAPTURE                          UPVAL U17
      303 CAPTURE                          UPVAL U36
      304 CAPTURE                          UPVAL U39
      305 NEWCLOSURE                       R44 P8
      306 CAPTURE                          REF R31
      307 CAPTURE                          VAL R43
      308 NEWCLOSURE                       R45 P9
      309 CAPTURE                          REF R37
      310 NEWCLOSURE                       R46 P10
      311 CAPTURE                          REF R37
      312 NEWCLOSURE                       R47 P11
      313 CAPTURE                          REF R37
      314 CAPTURE                          UPVAL U40
      315 NEWCLOSURE                       R48 P12
      316 CAPTURE                          REF R37
      317 CAPTURE                          UPVAL U40
      318 NEWCLOSURE                       R49 P13
      319 CAPTURE                          REF R37
      320 CAPTURE                          UPVAL U40
      321 NEWCLOSURE                       R50 P14
      322 CAPTURE                          REF R37
      323 CAPTURE                          UPVAL U40
      324 NEWTABLE                         R51 8 0
      326 LOADK                            R52 K47 ["<"]
      327 SETTABLEKS                       R52 R51 K48 ["&lt;"]
      329 LOADK                            R52 K49 [">"]
      330 SETTABLEKS                       R52 R51 K50 ["&gt;"]
      332 LOADK                            R52 K51 ["\""]
      333 SETTABLEKS                       R52 R51 K52 ["&quot;"]
      335 LOADK                            R52 K53 ["'"]
      336 SETTABLEKS                       R52 R51 K54 ["&apos;"]
      338 LOADK                            R52 K55 ["&"]
      339 SETTABLEKS                       R52 R51 K56 ["&amp;"]
      341 NEWCLOSURE                       R52 P15
      342 CAPTURE                          VAL R51
      343 NEWCLOSURE                       R53 P16
      344 CAPTURE                          VAL R51
      345 NEWCLOSURE                       R54 P17
      346 CAPTURE                          REF R37
      347 CAPTURE                          UPVAL U17
      348 CAPTURE                          UPVAL U40
      349 CAPTURE                          VAL R51
      350 DUPCLOSURE                       R55 K57 [PROTO_44]
      351 DUPCLOSURE                       R56 K58 [PROTO_46]
      352 CAPTURE                          UPVAL U36
      353 CAPTURE                          UPVAL U35
      354 CAPTURE                          UPVAL U29
      355 CAPTURE                          UPVAL U30
      356 DUPCLOSURE                       R57 K59 [PROTO_48]
      357 CAPTURE                          UPVAL U36
      358 CAPTURE                          UPVAL U35
      359 CAPTURE                          UPVAL U29
      360 CAPTURE                          UPVAL U30
      361 DUPCLOSURE                       R58 K60 [PROTO_49]
      362 CAPTURE                          UPVAL U35
      363 CAPTURE                          UPVAL U29
      364 CAPTURE                          UPVAL U30
      365 DUPCLOSURE                       R59 K61 [PROTO_50]
      366 CAPTURE                          UPVAL U35
      367 CAPTURE                          UPVAL U29
      368 CAPTURE                          UPVAL U30
      369 DUPCLOSURE                       R60 K62 [PROTO_51]
      370 CAPTURE                          UPVAL U31
      371 CAPTURE                          UPVAL U29
      372 CAPTURE                          UPVAL U30
      373 NEWCLOSURE                       R61 P24
      374 CAPTURE                          UPVAL U29
      375 CAPTURE                          UPVAL U30
      376 CAPTURE                          UPVAL U41
      377 CAPTURE                          REF R37
      378 CAPTURE                          UPVAL U40
      379 NEWCLOSURE                       R62 P25
      380 CAPTURE                          UPVAL U29
      381 CAPTURE                          UPVAL U30
      382 CAPTURE                          UPVAL U41
      383 CAPTURE                          REF R37
      384 CAPTURE                          UPVAL U40
      385 NEWCLOSURE                       R63 P26
      386 CAPTURE                          UPVAL U40
      387 CAPTURE                          REF R37
      388 CAPTURE                          UPVAL U42
      389 NEWCLOSURE                       R64 P27
      390 CAPTURE                          UPVAL U40
      391 CAPTURE                          REF R37
      392 CAPTURE                          VAL R51
      393 CAPTURE                          UPVAL U42
      394 NEWCLOSURE                       R65 P28
      395 CAPTURE                          UPVAL U40
      396 CAPTURE                          REF R37
      397 CAPTURE                          UPVAL U17
      398 CAPTURE                          UPVAL U42
      399 NEWCLOSURE                       R66 P29
      400 CAPTURE                          UPVAL U40
      401 CAPTURE                          REF R37
      402 CAPTURE                          VAL R51
      403 CAPTURE                          UPVAL U42
      404 CAPTURE                          UPVAL U41
      405 NEWCLOSURE                       R67 P30
      406 CAPTURE                          UPVAL U42
      407 CAPTURE                          REF R37
      408 NEWCLOSURE                       R68 P31
      409 CAPTURE                          REF R37
      410 CAPTURE                          UPVAL U17
      411 CAPTURE                          UPVAL U40
      412 NEWCLOSURE                       R69 P32
      413 CAPTURE                          UPVAL U41
      414 CAPTURE                          REF R37
      415 CAPTURE                          UPVAL U40
      416 NEWCLOSURE                       R70 P33
      417 CAPTURE                          UPVAL U41
      418 CAPTURE                          REF R37
      419 CAPTURE                          UPVAL U40
      420 NEWCLOSURE                       R71 P34
      421 CAPTURE                          UPVAL U36
      422 CAPTURE                          VAL R17
      423 NEWCLOSURE                       R72 P35
      424 CAPTURE                          VAL R9
      425 CAPTURE                          UPVAL U31
      426 CAPTURE                          UPVAL U29
      427 CAPTURE                          UPVAL U30
      428 NEWCLOSURE                       R73 P36
      429 CAPTURE                          VAL R11
      430 CAPTURE                          UPVAL U31
      431 CAPTURE                          UPVAL U29
      432 CAPTURE                          UPVAL U30
      433 NEWCLOSURE                       R74 P37
      434 CAPTURE                          UPVAL U29
      435 CAPTURE                          UPVAL U30
      436 CAPTURE                          UPVAL U41
      437 CAPTURE                          REF R37
      438 CAPTURE                          UPVAL U40
      439 CAPTURE                          UPVAL U36
      440 NEWCLOSURE                       R75 P38
      441 CAPTURE                          UPVAL U35
      442 CAPTURE                          UPVAL U29
      443 CAPTURE                          UPVAL U30
      444 CAPTURE                          UPVAL U41
      445 CAPTURE                          REF R37
      446 CAPTURE                          UPVAL U40
      447 NEWCLOSURE                       R76 P39
      448 CAPTURE                          UPVAL U29
      449 CAPTURE                          UPVAL U30
      450 CAPTURE                          UPVAL U41
      451 CAPTURE                          REF R37
      452 CAPTURE                          UPVAL U40
      453 CAPTURE                          UPVAL U36
      454 NEWCLOSURE                       R77 P40
      455 CAPTURE                          UPVAL U29
      456 CAPTURE                          UPVAL U30
      457 CAPTURE                          UPVAL U41
      458 CAPTURE                          REF R37
      459 CAPTURE                          UPVAL U40
      460 DUPCLOSURE                       R78 K63 [PROTO_78]
      461 CAPTURE                          UPVAL U31
      462 NEWCLOSURE                       R79 P42
      463 CAPTURE                          UPVAL U41
      464 CAPTURE                          REF R37
      465 CAPTURE                          UPVAL U40
      466 CAPTURE                          UPVAL U36
      467 CAPTURE                          UPVAL U35
      468 CAPTURE                          UPVAL U29
      469 CAPTURE                          UPVAL U30
      470 NEWCLOSURE                       R80 P43
      471 CAPTURE                          UPVAL U41
      472 CAPTURE                          REF R37
      473 CAPTURE                          UPVAL U40
      474 CAPTURE                          UPVAL U36
      475 CAPTURE                          UPVAL U35
      476 CAPTURE                          UPVAL U29
      477 CAPTURE                          UPVAL U30
      478 DUPCLOSURE                       R81 K64 [PROTO_81]
      479 CAPTURE                          UPVAL U35
      480 CAPTURE                          UPVAL U29
      481 CAPTURE                          UPVAL U30
      482 DUPCLOSURE                       R82 K65 [PROTO_83]
      483 CAPTURE                          UPVAL U36
      484 CAPTURE                          UPVAL U35
      485 CAPTURE                          UPVAL U29
      486 CAPTURE                          UPVAL U30
      487 NEWCLOSURE                       R83 P46
      488 CAPTURE                          VAL R81
      489 CAPTURE                          UPVAL U29
      490 CAPTURE                          UPVAL U30
      491 CAPTURE                          UPVAL U41
      492 CAPTURE                          REF R37
      493 CAPTURE                          UPVAL U40
      494 NEWCLOSURE                       R84 P47
      495 CAPTURE                          VAL R82
      496 CAPTURE                          UPVAL U29
      497 CAPTURE                          UPVAL U30
      498 CAPTURE                          UPVAL U41
      499 CAPTURE                          REF R37
      500 CAPTURE                          UPVAL U40
      501 CAPTURE                          VAL R81
      502 NEWCLOSURE                       R85 P48
      503 CAPTURE                          UPVAL U29
      504 CAPTURE                          UPVAL U30
      505 CAPTURE                          UPVAL U41
      506 CAPTURE                          REF R37
      507 CAPTURE                          UPVAL U40
      508 CAPTURE                          UPVAL U35
      509 DUPCLOSURE                       R86 K66 [PROTO_87]
      510 CAPTURE                          UPVAL U35
      511 CAPTURE                          UPVAL U29
      512 CAPTURE                          UPVAL U30
      513 NEWCLOSURE                       R87 P50
      514 CAPTURE                          UPVAL U29
      515 CAPTURE                          UPVAL U30
      516 CAPTURE                          UPVAL U41
      517 CAPTURE                          REF R37
      518 CAPTURE                          UPVAL U40
      519 NEWCLOSURE                       R88 P51
      520 CAPTURE                          UPVAL U43
      521 CAPTURE                          UPVAL U44
      522 CAPTURE                          UPVAL U29
      523 CAPTURE                          UPVAL U30
      524 CAPTURE                          UPVAL U41
      525 CAPTURE                          REF R37
      526 CAPTURE                          UPVAL U40
      527 NEWCLOSURE                       R89 P52
      528 CAPTURE                          VAL R67
      529 CAPTURE                          UPVAL U40
      530 NEWCLOSURE                       R90 P53
      531 CAPTURE                          VAL R67
      532 NEWCLOSURE                       R91 P54
      533 CAPTURE                          UPVAL U29
      534 CAPTURE                          UPVAL U30
      535 CAPTURE                          UPVAL U41
      536 CAPTURE                          REF R37
      537 CAPTURE                          UPVAL U40
      538 DUPCLOSURE                       R92 K67 [PROTO_94]
      539 CAPTURE                          UPVAL U29
      540 CAPTURE                          UPVAL U30
      541 NEWCLOSURE                       R93 P56
      542 CAPTURE                          UPVAL U41
      543 CAPTURE                          REF R37
      544 CAPTURE                          UPVAL U40
      545 CAPTURE                          UPVAL U29
      546 CAPTURE                          UPVAL U30
      547 CAPTURE                          UPVAL U36
      548 CAPTURE                          UPVAL U35
      549 NEWCLOSURE                       R94 P57
      550 CAPTURE                          UPVAL U41
      551 CAPTURE                          REF R37
      552 CAPTURE                          UPVAL U40
      553 CAPTURE                          UPVAL U29
      554 CAPTURE                          UPVAL U30
      555 CAPTURE                          UPVAL U36
      556 CAPTURE                          UPVAL U35
      557 NEWCLOSURE                       R95 P58
      558 CAPTURE                          UPVAL U41
      559 CAPTURE                          REF R37
      560 CAPTURE                          UPVAL U40
      561 CAPTURE                          UPVAL U29
      562 CAPTURE                          UPVAL U30
      563 CAPTURE                          UPVAL U36
      564 CAPTURE                          UPVAL U35
      565 NEWCLOSURE                       R96 P59
      566 CAPTURE                          UPVAL U41
      567 CAPTURE                          REF R37
      568 CAPTURE                          UPVAL U40
      569 CAPTURE                          UPVAL U29
      570 CAPTURE                          UPVAL U30
      571 CAPTURE                          UPVAL U36
      572 CAPTURE                          UPVAL U35
      573 NEWCLOSURE                       R97 P60
      574 CAPTURE                          UPVAL U41
      575 CAPTURE                          REF R37
      576 CAPTURE                          UPVAL U40
      577 CAPTURE                          UPVAL U29
      578 CAPTURE                          UPVAL U30
      579 CAPTURE                          UPVAL U36
      580 CAPTURE                          UPVAL U35
      581 NEWCLOSURE                       R98 P61
      582 CAPTURE                          UPVAL U41
      583 CAPTURE                          REF R37
      584 CAPTURE                          UPVAL U40
      585 NEWCLOSURE                       R99 P62
      586 CAPTURE                          UPVAL U41
      587 CAPTURE                          REF R37
      588 CAPTURE                          UPVAL U40
      589 CAPTURE                          UPVAL U29
      590 CAPTURE                          UPVAL U30
      591 CAPTURE                          UPVAL U36
      592 CAPTURE                          UPVAL U35
      593 DUPCLOSURE                       R100 K68 [PROTO_103]
      594 CAPTURE                          UPVAL U37
      595 CAPTURE                          UPVAL U45
      596 NEWCLOSURE                       R101 P64
      597 CAPTURE                          UPVAL U41
      598 CAPTURE                          REF R37
      599 CAPTURE                          UPVAL U40
      600 DUPCLOSURE                       R102 K69 [PROTO_105]
      601 DUPCLOSURE                       R103 K70 [PROTO_106]
      602 NEWCLOSURE                       R104 P67
      603 CAPTURE                          UPVAL U41
      604 CAPTURE                          REF R37
      605 CAPTURE                          UPVAL U40
      606 CAPTURE                          VAL R103
      607 DUPCLOSURE                       R105 K71 [PROTO_108]
      608 CAPTURE                          VAL R102
      609 CAPTURE                          VAL R103
      610 CAPTURE                          UPVAL U41
      611 CAPTURE                          UPVAL U29
      612 CAPTURE                          UPVAL U30
      613 CAPTURE                          UPVAL U36
      614 CAPTURE                          UPVAL U35
      615 NEWCLOSURE                       R106 P69
      616 CAPTURE                          UPVAL U41
      617 CAPTURE                          REF R37
      618 CAPTURE                          UPVAL U40
      619 CAPTURE                          UPVAL U29
      620 CAPTURE                          UPVAL U30
      621 CAPTURE                          UPVAL U36
      622 CAPTURE                          UPVAL U35
      623 NEWCLOSURE                       R107 P70
      624 CAPTURE                          UPVAL U41
      625 CAPTURE                          REF R37
      626 CAPTURE                          UPVAL U40
      627 CAPTURE                          UPVAL U29
      628 CAPTURE                          UPVAL U30
      629 CAPTURE                          UPVAL U36
      630 CAPTURE                          UPVAL U35
      631 NEWCLOSURE                       R108 P71
      632 CAPTURE                          UPVAL U41
      633 CAPTURE                          REF R37
      634 CAPTURE                          UPVAL U40
      635 CAPTURE                          UPVAL U29
      636 CAPTURE                          UPVAL U30
      637 CAPTURE                          UPVAL U36
      638 CAPTURE                          UPVAL U35
      639 NEWCLOSURE                       R109 P72
      640 CAPTURE                          UPVAL U41
      641 CAPTURE                          REF R37
      642 CAPTURE                          UPVAL U40
      643 CAPTURE                          UPVAL U29
      644 CAPTURE                          UPVAL U30
      645 CAPTURE                          UPVAL U36
      646 CAPTURE                          UPVAL U35
      647 NEWCLOSURE                       R110 P73
      648 CAPTURE                          UPVAL U41
      649 CAPTURE                          REF R37
      650 CAPTURE                          UPVAL U40
      651 NEWCLOSURE                       R111 P74
      652 CAPTURE                          VAL R54
      653 CAPTURE                          UPVAL U46
      654 CAPTURE                          UPVAL U29
      655 CAPTURE                          UPVAL U30
      656 CAPTURE                          UPVAL U36
      657 CAPTURE                          UPVAL U35
      658 NEWCLOSURE                       R112 P75
      659 CAPTURE                          VAL R54
      660 CAPTURE                          UPVAL U46
      661 CAPTURE                          UPVAL U29
      662 CAPTURE                          UPVAL U30
      663 CAPTURE                          UPVAL U36
      664 CAPTURE                          UPVAL U35
      665 NEWCLOSURE                       R113 P76
      666 CAPTURE                          VAL R54
      667 CAPTURE                          UPVAL U46
      668 CAPTURE                          UPVAL U29
      669 CAPTURE                          UPVAL U30
      670 CAPTURE                          UPVAL U36
      671 CAPTURE                          UPVAL U35
      672 NEWCLOSURE                       R114 P77
      673 CAPTURE                          VAL R54
      674 CAPTURE                          UPVAL U46
      675 CAPTURE                          UPVAL U29
      676 CAPTURE                          UPVAL U30
      677 CAPTURE                          UPVAL U36
      678 CAPTURE                          UPVAL U35
      679 NEWCLOSURE                       R115 P78
      680 CAPTURE                          UPVAL U41
      681 CAPTURE                          REF R37
      682 CAPTURE                          UPVAL U40
      683 CAPTURE                          UPVAL U29
      684 CAPTURE                          UPVAL U30
      685 CAPTURE                          UPVAL U36
      686 CAPTURE                          UPVAL U35
      687 NEWCLOSURE                       R116 P79
      688 CAPTURE                          UPVAL U41
      689 CAPTURE                          REF R37
      690 CAPTURE                          UPVAL U40
      691 NEWCLOSURE                       R117 P80
      692 CAPTURE                          VAL R54
      693 CAPTURE                          UPVAL U46
      694 NEWCLOSURE                       R118 P81
      695 CAPTURE                          VAL R54
      696 CAPTURE                          UPVAL U46
      697 NEWCLOSURE                       R119 P82
      698 CAPTURE                          VAL R3
      699 NEWCLOSURE                       R120 P83
      700 CAPTURE                          UPVAL U36
      701 CAPTURE                          VAL R3
      702 CAPTURE                          UPVAL U29
      703 CAPTURE                          UPVAL U30
      704 NEWCLOSURE                       R121 P84
      705 CAPTURE                          VAL R7
      706 CAPTURE                          UPVAL U36
      707 CAPTURE                          UPVAL U29
      708 CAPTURE                          UPVAL U30
      709 NEWCLOSURE                       R122 P85
      710 CAPTURE                          UPVAL U36
      711 CAPTURE                          VAL R3
      712 CAPTURE                          UPVAL U29
      713 CAPTURE                          UPVAL U30
      714 CAPTURE                          VAL R7
      715 NEWCLOSURE                       R123 P86
      716 CAPTURE                          UPVAL U41
      717 CAPTURE                          REF R37
      718 CAPTURE                          UPVAL U40
      719 CAPTURE                          UPVAL U36
      720 CAPTURE                          UPVAL U35
      721 CAPTURE                          UPVAL U29
      722 CAPTURE                          UPVAL U30
      723 NEWCLOSURE                       R124 P87
      724 CAPTURE                          UPVAL U41
      725 CAPTURE                          REF R37
      726 CAPTURE                          UPVAL U40
      727 NEWCLOSURE                       R125 P88
      728 CAPTURE                          UPVAL U41
      729 CAPTURE                          REF R37
      730 CAPTURE                          UPVAL U40
      731 CAPTURE                          UPVAL U36
      732 CAPTURE                          UPVAL U35
      733 CAPTURE                          UPVAL U29
      734 CAPTURE                          UPVAL U30
      735 CAPTURE                          UPVAL U47
      736 CAPTURE                          VAL R68
      737 NEWCLOSURE                       R126 P89
      738 CAPTURE                          VAL R13
      739 NEWCLOSURE                       R127 P90
      740 CAPTURE                          VAL R13
      741 NEWCLOSURE                       R128 P91
      742 CAPTURE                          VAL R13
      743 NEWCLOSURE                       R129 P92
      744 CAPTURE                          VAL R13
      745 NEWCLOSURE                       R130 P93
      746 CAPTURE                          VAL R13
      747 NEWCLOSURE                       R131 P94
      748 CAPTURE                          VAL R13
      749 NEWCLOSURE                       R132 P95
      750 CAPTURE                          VAL R15
      751 NEWCLOSURE                       R133 P96
      752 CAPTURE                          VAL R15
      753 NEWCLOSURE                       R134 P97
      754 CAPTURE                          UPVAL U36
      755 CAPTURE                          VAL R5
      756 CAPTURE                          UPVAL U48
      757 CAPTURE                          UPVAL U29
      758 CAPTURE                          UPVAL U30
      759 CAPTURE                          UPVAL U43
      760 CAPTURE                          VAL R65
      761 NEWCLOSURE                       R135 P98
      762 CAPTURE                          UPVAL U36
      763 CAPTURE                          VAL R5
      764 NEWCLOSURE                       R136 P99
      765 CAPTURE                          UPVAL U41
      766 CAPTURE                          REF R37
      767 CAPTURE                          UPVAL U40
      768 NEWCLOSURE                       R137 P100
      769 CAPTURE                          UPVAL U41
      770 CAPTURE                          REF R37
      771 CAPTURE                          UPVAL U40
      772 CAPTURE                          UPVAL U29
      773 CAPTURE                          UPVAL U30
      774 CAPTURE                          UPVAL U36
      775 CAPTURE                          UPVAL U35
      776 NEWCLOSURE                       R138 P101
      777 CAPTURE                          REF R30
      778 CAPTURE                          UPVAL U39
      779 CAPTURE                          UPVAL U49
      780 NEWCLOSURE                       R139 P102
      781 CAPTURE                          UPVAL U41
      782 CAPTURE                          REF R37
      783 CAPTURE                          UPVAL U40
      784 NEWCLOSURE                       R140 P103
      785 CAPTURE                          UPVAL U41
      786 CAPTURE                          REF R37
      787 CAPTURE                          UPVAL U40
      788 CAPTURE                          UPVAL U39
      789 NEWCLOSURE                       R141 P104
      790 CAPTURE                          UPVAL U41
      791 CAPTURE                          REF R37
      792 CAPTURE                          UPVAL U40
      793 CAPTURE                          UPVAL U29
      794 CAPTURE                          UPVAL U30
      795 CAPTURE                          UPVAL U36
      796 CAPTURE                          UPVAL U35
      797 NEWCLOSURE                       R142 P105
      798 CAPTURE                          UPVAL U41
      799 CAPTURE                          REF R37
      800 CAPTURE                          UPVAL U40
      801 NEWCLOSURE                       R143 P106
      802 CAPTURE                          UPVAL U41
      803 CAPTURE                          REF R37
      804 CAPTURE                          UPVAL U40
      805 NEWCLOSURE                       R144 P107
      806 CAPTURE                          UPVAL U41
      807 CAPTURE                          REF R37
      808 CAPTURE                          UPVAL U40
      809 DUPCLOSURE                       R145 K72 [PROTO_157]
      810 CAPTURE                          UPVAL U42
      811 CAPTURE                          UPVAL U41
      812 NEWCLOSURE                       R146 P109
      813 CAPTURE                          UPVAL U41
      814 CAPTURE                          REF R37
      815 CAPTURE                          UPVAL U40
      816 CAPTURE                          UPVAL U36
      817 CAPTURE                          UPVAL U35
      818 CAPTURE                          UPVAL U29
      819 CAPTURE                          UPVAL U30
      820 NEWCLOSURE                       R147 P110
      821 CAPTURE                          UPVAL U42
      822 CAPTURE                          REF R37
      823 CAPTURE                          UPVAL U41
      824 NEWCLOSURE                       R148 P111
      825 CAPTURE                          UPVAL U42
      826 CAPTURE                          REF R37
      827 CAPTURE                          UPVAL U41
      828 NEWCLOSURE                       R149 P112
      829 CAPTURE                          UPVAL U42
      830 CAPTURE                          REF R37
      831 CAPTURE                          UPVAL U41
      832 NEWCLOSURE                       R150 P113
      833 CAPTURE                          UPVAL U41
      834 CAPTURE                          REF R37
      835 CAPTURE                          UPVAL U40
      836 NEWCLOSURE                       R151 P114
      837 CAPTURE                          UPVAL U41
      838 CAPTURE                          REF R37
      839 CAPTURE                          UPVAL U40
      840 NEWCLOSURE                       R152 P115
      841 CAPTURE                          UPVAL U41
      842 CAPTURE                          REF R37
      843 CAPTURE                          UPVAL U40
      844 NEWCLOSURE                       R153 P116
      845 CAPTURE                          UPVAL U41
      846 CAPTURE                          REF R37
      847 CAPTURE                          UPVAL U40
      848 NEWCLOSURE                       R154 P117
      849 CAPTURE                          UPVAL U41
      850 CAPTURE                          REF R37
      851 CAPTURE                          UPVAL U40
      852 DUPCLOSURE                       R155 K73 [PROTO_167]
      853 CAPTURE                          UPVAL U36
      854 CAPTURE                          UPVAL U35
      855 CAPTURE                          UPVAL U29
      856 CAPTURE                          UPVAL U30
      857 NEWCLOSURE                       R156 P119
      858 CAPTURE                          UPVAL U41
      859 CAPTURE                          REF R37
      860 CAPTURE                          UPVAL U40
      861 CAPTURE                          UPVAL U36
      862 CAPTURE                          UPVAL U35
      863 CAPTURE                          UPVAL U29
      864 CAPTURE                          UPVAL U30
      865 NEWCLOSURE                       R157 P120
      866 CAPTURE                          UPVAL U41
      867 CAPTURE                          REF R37
      868 CAPTURE                          UPVAL U40
      869 CAPTURE                          UPVAL U36
      870 CAPTURE                          UPVAL U35
      871 CAPTURE                          UPVAL U29
      872 CAPTURE                          UPVAL U30
      873 NEWCLOSURE                       R158 P121
      874 CAPTURE                          UPVAL U41
      875 CAPTURE                          REF R37
      876 CAPTURE                          UPVAL U40
      877 NEWCLOSURE                       R159 P122
      878 CAPTURE                          UPVAL U41
      879 CAPTURE                          REF R37
      880 CAPTURE                          UPVAL U40
      881 NEWCLOSURE                       R160 P123
      882 CAPTURE                          UPVAL U41
      883 CAPTURE                          REF R37
      884 CAPTURE                          UPVAL U40
      885 NEWCLOSURE                       R161 P124
      886 CAPTURE                          UPVAL U41
      887 CAPTURE                          REF R37
      888 CAPTURE                          UPVAL U40
      889 NEWCLOSURE                       R162 P125
      890 CAPTURE                          UPVAL U41
      891 CAPTURE                          REF R37
      892 CAPTURE                          UPVAL U40
      893 NEWCLOSURE                       R163 P126
      894 CAPTURE                          UPVAL U41
      895 CAPTURE                          REF R37
      896 CAPTURE                          UPVAL U40
      897 NEWCLOSURE                       R164 P127
      898 CAPTURE                          UPVAL U41
      899 CAPTURE                          REF R37
      900 CAPTURE                          UPVAL U40
      901 CAPTURE                          UPVAL U36
      902 CAPTURE                          UPVAL U35
      903 CAPTURE                          UPVAL U29
      904 CAPTURE                          UPVAL U30
      905 NEWCLOSURE                       R165 P128
      906 CAPTURE                          UPVAL U41
      907 CAPTURE                          REF R37
      908 CAPTURE                          UPVAL U40
      909 CAPTURE                          UPVAL U29
      910 CAPTURE                          UPVAL U30
      911 CAPTURE                          UPVAL U36
      912 CAPTURE                          UPVAL U35
      913 NEWCLOSURE                       R166 P129
      914 CAPTURE                          UPVAL U41
      915 CAPTURE                          REF R37
      916 CAPTURE                          UPVAL U40
      917 CAPTURE                          UPVAL U29
      918 CAPTURE                          UPVAL U30
      919 CAPTURE                          UPVAL U36
      920 CAPTURE                          UPVAL U35
      921 NEWCLOSURE                       R167 P130
      922 CAPTURE                          UPVAL U41
      923 CAPTURE                          REF R37
      924 CAPTURE                          UPVAL U40
      925 CAPTURE                          UPVAL U29
      926 CAPTURE                          UPVAL U30
      927 CAPTURE                          UPVAL U36
      928 CAPTURE                          UPVAL U35
      929 NEWCLOSURE                       R168 P131
      930 CAPTURE                          UPVAL U41
      931 CAPTURE                          REF R37
      932 CAPTURE                          UPVAL U40
      933 NEWCLOSURE                       R169 P132
      934 CAPTURE                          UPVAL U41
      935 CAPTURE                          REF R37
      936 CAPTURE                          UPVAL U40
      937 CAPTURE                          UPVAL U29
      938 CAPTURE                          UPVAL U30
      939 CAPTURE                          UPVAL U36
      940 CAPTURE                          UPVAL U35
      941 NEWCLOSURE                       R170 P133
      942 CAPTURE                          UPVAL U41
      943 CAPTURE                          REF R37
      944 CAPTURE                          UPVAL U40
      945 NEWCLOSURE                       R171 P134
      946 CAPTURE                          REF R30
      947 NEWCLOSURE                       R172 P135
      948 CAPTURE                          UPVAL U41
      949 CAPTURE                          REF R37
      950 CAPTURE                          UPVAL U40
      951 CAPTURE                          UPVAL U36
      952 CAPTURE                          UPVAL U35
      953 CAPTURE                          UPVAL U29
      954 CAPTURE                          UPVAL U30
      955 DUPCLOSURE                       R173 K74 [PROTO_186]
      956 CAPTURE                          UPVAL U40
      957 CAPTURE                          UPVAL U42
      958 CAPTURE                          UPVAL U41
      959 NEWCLOSURE                       R174 P137
      960 CAPTURE                          UPVAL U41
      961 CAPTURE                          REF R37
      962 CAPTURE                          UPVAL U40
      963 CAPTURE                          UPVAL U36
      964 CAPTURE                          UPVAL U35
      965 CAPTURE                          UPVAL U29
      966 CAPTURE                          UPVAL U30
      967 NEWCLOSURE                       R175 P138
      968 CAPTURE                          UPVAL U41
      969 CAPTURE                          UPVAL U42
      970 CAPTURE                          REF R37
      971 CAPTURE                          UPVAL U50
      972 NEWCLOSURE                       R176 P139
      973 CAPTURE                          UPVAL U41
      974 CAPTURE                          REF R37
      975 CAPTURE                          UPVAL U40
      976 CAPTURE                          UPVAL U29
      977 CAPTURE                          UPVAL U30
      978 CAPTURE                          UPVAL U36
      979 CAPTURE                          UPVAL U35
      980 NEWCLOSURE                       R177 P140
      981 CAPTURE                          UPVAL U41
      982 CAPTURE                          REF R37
      983 CAPTURE                          UPVAL U40
      984 CAPTURE                          UPVAL U29
      985 CAPTURE                          UPVAL U30
      986 CAPTURE                          UPVAL U36
      987 CAPTURE                          UPVAL U35
      988 NEWCLOSURE                       R178 P141
      989 CAPTURE                          UPVAL U41
      990 CAPTURE                          REF R37
      991 CAPTURE                          UPVAL U40
      992 CAPTURE                          UPVAL U29
      993 CAPTURE                          UPVAL U30
      994 CAPTURE                          UPVAL U36
      995 CAPTURE                          UPVAL U35
      996 NEWCLOSURE                       R179 P142
      997 CAPTURE                          UPVAL U41
      998 CAPTURE                          REF R37
      999 CAPTURE                          UPVAL U40
     1000 CAPTURE                          UPVAL U29
     1001 CAPTURE                          UPVAL U30
     1002 CAPTURE                          UPVAL U36
     1003 CAPTURE                          UPVAL U35
     1004 NEWCLOSURE                       R180 P143
     1005 CAPTURE                          UPVAL U41
     1006 CAPTURE                          REF R37
     1007 CAPTURE                          UPVAL U40
     1008 NEWCLOSURE                       R181 P144
     1009 CAPTURE                          UPVAL U41
     1010 CAPTURE                          REF R37
     1011 CAPTURE                          UPVAL U40
     1012 CAPTURE                          UPVAL U29
     1013 CAPTURE                          UPVAL U30
     1014 CAPTURE                          UPVAL U36
     1015 CAPTURE                          UPVAL U35
     1016 NEWCLOSURE                       R182 P145
     1017 CAPTURE                          VAL R15
     1018 CAPTURE                          UPVAL U43
     1019 CAPTURE                          UPVAL U44
     1020 CAPTURE                          UPVAL U36
     1021 CAPTURE                          UPVAL U29
     1022 CAPTURE                          UPVAL U30
     1023 NEWCLOSURE                       R183 P146
     1024 CAPTURE                          VAL R13
     1025 CAPTURE                          UPVAL U39
     1026 CAPTURE                          UPVAL U51
     1027 CAPTURE                          VAL R182
     1028 NEWCLOSURE                       R184 P147
     1029 CAPTURE                          VAL R182
     1030 NEWCLOSURE                       R185 P148
     1031 CAPTURE                          VAL R182
     1032 NEWCLOSURE                       R186 P149
     1033 CAPTURE                          VAL R182
     1034 NEWCLOSURE                       R187 P150
     1035 CAPTURE                          UPVAL U37
     1036 CAPTURE                          REF R30
     1037 DUPCLOSURE                       R188 K75 [PROTO_204]
     1038 CAPTURE                          UPVAL U40
     1039 CAPTURE                          UPVAL U36
     1040 CAPTURE                          UPVAL U35
     1041 CAPTURE                          UPVAL U29
     1042 CAPTURE                          UPVAL U30
     1043 NEWCLOSURE                       R189 P152
     1044 CAPTURE                          UPVAL U41
     1045 CAPTURE                          REF R37
     1046 CAPTURE                          UPVAL U40
     1047 NEWCLOSURE                       R190 P153
     1048 CAPTURE                          UPVAL U41
     1049 CAPTURE                          REF R37
     1050 CAPTURE                          UPVAL U40
     1051 NEWCLOSURE                       R191 P154
     1052 CAPTURE                          UPVAL U36
     1053 CAPTURE                          VAL R19
     1054 DUPCLOSURE                       R192 K76 [PROTO_209]
     1055 CAPTURE                          UPVAL U40
     1056 CAPTURE                          UPVAL U42
     1057 CAPTURE                          UPVAL U41
     1058 CAPTURE                          UPVAL U36
     1059 CAPTURE                          UPVAL U35
     1060 CAPTURE                          UPVAL U29
     1061 CAPTURE                          UPVAL U30
     1062 DUPCLOSURE                       R193 K77 [PROTO_210]
     1063 NEWCLOSURE                       R194 P157
     1064 CAPTURE                          UPVAL U41
     1065 CAPTURE                          REF R37
     1066 CAPTURE                          UPVAL U40
     1067 MOVE                             R195 R38
     1068 GETUPVAL                         R196 14
     1069 LOADK                            R197 K78 ["Frame"]
     1070 DUPTABLE                         R198 K80 [{"Size"}]
     1071 GETIMPORT                        R199 K83 [UDim2.fromScale]
     1073 LOADN                            R200 1
     1074 LOADN                            R201 1
     1075 CALL                             R199 2 1
     1076 SETTABLEKS                       R199 R198 K79 ["Size"]
     1078 DUPTABLE                         R199 K87 [{"UIListLayout", "MainView", "TestHooks"}]
     1079 GETUPVAL                         R200 14
     1080 LOADK                            R201 K84 ["UIListLayout"]
     1081 DUPTABLE                         R202 K89 [{"FillDirection"}]
     1082 GETIMPORT                        R203 K92 [Enum.FillDirection.Vertical]
     1084 SETTABLEKS                       R203 R202 K88 ["FillDirection"]
     1086 CALL                             R200 2 1
     1087 SETTABLEKS                       R200 R199 K84 ["UIListLayout"]
     1089 GETUPVAL                         R200 14
     1090 GETUPVAL                         R201 52
     1091 DUPTABLE                         R202 K94 [{"externalInterfaceRef"}]
     1092 SETTABLEKS                       R26 R202 K93 ["externalInterfaceRef"]
     1094 CALL                             R200 2 1
     1095 SETTABLEKS                       R200 R199 K85 ["MainView"]
     1097 MOVE                             R200 R24
     1098 CALL                             R200 0 1
     1099 SETTABLEKS                       R200 R199 K86 ["TestHooks"]
     1101 CALL                             R196 3 -1
     1102 CALL                             R195 -1 0
     1103 NEWTABLE                         R195 256 0
     1105 SETTABLEKS                       R38 R195 K95 ["render"]
     1107 SETTABLEKS                       R31 R195 K24 ["tools"]
     1109 SETTABLEKS                       R43 R195 K96 ["invokeTool"]
     1111 SETTABLEKS                       R44 R195 K97 ["callTool"]
     1113 SETTABLEKS                       R39 R195 K98 ["typeText"]
     1115 SETTABLEKS                       R40 R195 K99 ["getCurrentConversationThread"]
     1117 SETTABLEKS                       R41 R195 K100 ["getExternalInterface"]
     1119 SETTABLEKS                       R45 R195 K101 ["getContainer"]
     1121 SETTABLEKS                       R46 R195 K102 ["getGuiByTitle"]
     1123 SETTABLEKS                       R36 R195 K103 ["waitForTagApplication"]
     1125 SETTABLEKS                       R47 R195 K104 ["queryByTestId"]
     1127 SETTABLEKS                       R48 R195 K105 ["getByTestId"]
     1129 SETTABLEKS                       R49 R195 K106 ["queryAllByTestId"]
     1131 SETTABLEKS                       R50 R195 K107 ["getAllByTestId"]
     1133 SETTABLEKS                       R54 R195 K108 ["getByMessage"]
     1135 SETTABLEKS                       R56 R195 K109 ["clickButton"]
     1137 SETTABLEKS                       R57 R195 K110 ["rightClick"]
     1139 SETTABLEKS                       R58 R195 K111 ["mouseEnter"]
     1141 SETTABLEKS                       R59 R195 K112 ["mouseLeave"]
     1143 SETTABLEKS                       R60 R195 K113 ["act"]
     1145 SETTABLEKS                       R62 R195 K114 ["getTextBox"]
     1147 SETTABLEKS                       R63 R195 K115 ["getMessageScrollArea"]
     1149 SETTABLEKS                       R64 R195 K116 ["getContainingMessageWidget"]
     1151 SETTABLEKS                       R65 R195 K117 ["getContainingContentWidget"]
     1153 SETTABLEKS                       R66 R195 K118 ["getMessageActionsWidget"]
     1155 SETTABLEKS                       R68 R195 K119 ["getTextObjectWithMessage"]
     1157 SETTABLEKS                       R34 R195 K120 ["getClipboardTextAtIndex"]
     1159 SETTABLEKS                       R42 R195 K121 ["getToolResults"]
     1161 SETTABLEKS                       R82 R195 K122 ["typeInTextBox"]
     1163 SETTABLEKS                       R81 R195 K123 ["enterInTextBox"]
     1165 SETTABLEKS                       R74 R195 K124 ["focusTextBox"]
     1167 SETTABLEKS                       R75 R195 K125 ["setInputText"]
     1169 SETTABLEKS                       R76 R195 K126 ["setCursorPosition"]
     1171 SETTABLEKS                       R77 R195 K127 ["getInputScrollArea"]
     1173 SETTABLEKS                       R78 R195 K128 ["printScreen"]
     1175 SETTABLEKS                       R79 R195 K129 ["clickSendButton"]
     1177 SETTABLEKS                       R80 R195 K130 ["clickStopGenerationButton"]
     1179 SETTABLEKS                       R83 R195 K131 ["enterTextBox"]
     1181 SETTABLEKS                       R84 R195 K132 ["enterUserMessage"]
     1183 SETTABLEKS                       R85 R195 K133 ["pressKeyInInput"]
     1185 SETTABLEKS                       R86 R195 K134 ["setKeyDown"]
     1187 SETTABLEKS                       R87 R195 K135 ["isInputEnabled"]
     1189 SETTABLEKS                       R88 R195 K136 ["waitForInputState"]
     1191 SETTABLEKS                       R89 R195 K137 ["lastUserTextMatches"]
     1193 SETTABLEKS                       R90 R195 K138 ["getMessageCount"]
     1195 SETTABLEKS                       R91 R195 K139 ["isResponding"]
     1197 SETTABLEKS                       R134 R195 K140 ["setExternalInputOverride"]
     1199 SETTABLEKS                       R135 R195 K141 ["clearExternalInputOverride"]
     1201 SETTABLEKS                       R123 R195 K142 ["clickSettingsButton"]
     1203 SETTABLEKS                       R124 R195 K143 ["getSettingsContent"]
     1205 SETTABLEKS                       R136 R195 K144 ["getProviderCheckbox"]
     1207 SETTABLEKS                       R137 R195 K145 ["clickProviderCheckbox"]
     1209 SETTABLEKS                       R138 R195 K146 ["isProviderCheckboxChecked"]
     1211 SETTABLEKS                       R139 R195 K147 ["getModelPickerDropdown"]
     1213 SETTABLEKS                       R140 R195 K148 ["getSelectedModelFromPicker"]
     1215 SETTABLEKS                       R141 R195 K149 ["selectModelFromPicker"]
     1217 SETTABLEKS                       R165 R195 K150 ["clickEditAPIKeyButton"]
     1219 SETTABLEKS                       R166 R195 K151 ["clickSaveAPIKeyButton"]
     1221 SETTABLEKS                       R167 R195 K152 ["clickCancelAPIKeyButton"]
     1223 SETTABLEKS                       R168 R195 K153 ["getAPIKeyInputText"]
     1225 SETTABLEKS                       R169 R195 K154 ["setAPIKeyInputText"]
     1227 SETTABLEKS                       R170 R195 K155 ["getDisplayedAPIKey"]
     1229 SETTABLEKS                       R171 R195 K156 ["getAPIKeySetting"]
     1231 SETTABLEKS                       R143 R195 K157 ["hasFooterText"]
     1233 SETTABLEKS                       R144 R195 K158 ["hasFooterIcon"]
     1235 SETTABLEKS                       R145 R195 K159 ["getToolMenuView"]
     1237 SETTABLEKS                       R146 R195 K160 ["clickServerManagementButton"]
     1239 SETTABLEKS                       R147 R195 K161 ["getManageIntegrationsDialog"]
     1241 SETTABLEKS                       R148 R195 K162 ["getIntegrationItemDialog"]
     1243 SETTABLEKS                       R149 R195 K163 ["getIntegrationMenuEmptyState"]
     1245 SETTABLEKS                       R173 R195 K164 ["getIntegrationItemForLabel"]
     1247 SETTABLEKS                       R150 R195 K165 ["getSkillsTabContent"]
     1249 SETTABLEKS                       R151 R195 K166 ["getSkillsPersonalGroup"]
     1251 SETTABLEKS                       R152 R195 K167 ["getSkillsRobloxGroup"]
     1253 SETTABLEKS                       R153 R195 K168 ["getSkillRow"]
     1255 SETTABLEKS                       R154 R195 K169 ["findSkillRow"]
     1257 SETTABLEKS                       R155 R195 K170 ["clickSkillsGroupHeader"]
     1259 SETTABLEKS                       R156 R195 K171 ["clickSkillRow"]
     1261 SETTABLEKS                       R157 R195 K172 ["clickSkillRefreshButton"]
     1263 SETTABLEKS                       R158 R195 K173 ["getSkillDetailPane"]
     1265 SETTABLEKS                       R159 R195 K174 ["findSkillDetailPane"]
     1267 SETTABLEKS                       R160 R195 K175 ["findSkillDetailPaneEmpty"]
     1269 SETTABLEKS                       R161 R195 K176 ["getSkillDetailOpenButton"]
     1271 SETTABLEKS                       R162 R195 K177 ["getSkillDetailDuplicateButton"]
     1273 SETTABLEKS                       R163 R195 K178 ["getSkillDetailSourceUri"]
     1275 SETTABLEKS                       R164 R195 K179 ["clickSkillDetailOpenButton"]
     1277 SETTABLEKS                       R172 R195 K180 ["clickIntegrationItemActionsToggle"]
     1279 SETTABLEKS                       R174 R195 K181 ["clickIntegrationItemActionsOverflowButton"]
     1281 SETTABLEKS                       R175 R195 K182 ["getIntegrationItemActionsOverflowContent"]
     1283 SETTABLEKS                       R100 R195 K183 ["throwMarkdownParserError"]
     1285 SETTABLEKS                       R101 R195 K184 ["getCarousel"]
     1287 SETTABLEKS                       R102 R195 K185 ["getCarouselItem"]
     1289 SETTABLEKS                       R104 R195 K186 ["getSelectedCarouselItem"]
     1291 SETTABLEKS                       R105 R195 K187 ["clickCarouselItem"]
     1293 SETTABLEKS                       R176 R195 K188 ["clickAlertCloseButton"]
     1295 SETTABLEKS                       R177 R195 K189 ["clickAlertContinueButton"]
     1297 SETTABLEKS                       R178 R195 K190 ["clickToolConfirmationAcceptButton"]
     1299 SETTABLEKS                       R179 R195 K191 ["clickToolConfirmationRejectButton"]
     1301 SETTABLEKS                       R180 R195 K192 ["getToolConfirmationAlwaysAcceptText"]
     1303 SETTABLEKS                       R181 R195 K193 ["clickToolConfirmationAlwaysAcceptButton"]
     1305 SETTABLEKS                       R93 R195 K194 ["clickRunCodeExpandButton"]
     1307 SETTABLEKS                       R106 R195 K195 ["clickCopyButton"]
     1309 SETTABLEKS                       R107 R195 K196 ["clickRunButton"]
     1311 SETTABLEKS                       R108 R195 K197 ["clickStopButton"]
     1313 SETTABLEKS                       R109 R195 K198 ["clickImageExpandButton"]
     1315 SETTABLEKS                       R110 R195 K199 ["getImageContentImage"]
     1317 SETTABLEKS                       R94 R195 K200 ["clickMaterialGenExpandButton"]
     1319 SETTABLEKS                       R95 R195 K201 ["clickMaterialGenStudsPerTileValueBar"]
     1321 SETTABLEKS                       R96 R195 K202 ["clickMaterialGenOrganicPatternToggle"]
     1323 SETTABLEKS                       R97 R195 K203 ["clickMeshGenExpandButton"]
     1325 SETTABLEKS                       R98 R195 K204 ["getMeshGenPreviewImage"]
     1327 SETTABLEKS                       R99 R195 K205 ["clickMeshGenSelectionToggle"]
     1329 SETTABLEKS                       R111 R195 K206 ["clickRetryButton"]
     1331 SETTABLEKS                       R112 R195 K207 ["clickThumbsUpButton"]
     1333 SETTABLEKS                       R113 R195 K208 ["clickThumbsDownButton"]
     1335 SETTABLEKS                       R114 R195 K209 ["clickBranchButton"]
     1337 SETTABLEKS                       R115 R195 K210 ["clickMessageCopyButton"]
     1339 SETTABLEKS                       R116 R195 K211 ["getCopyButtonIcon"]
     1341 SETTABLEKS                       R117 R195 K212 ["getThumbsUpButtonIcon"]
     1343 SETTABLEKS                       R118 R195 K213 ["getThumbsDownButtonIcon"]
     1345 SETTABLEKS                       R119 R195 K214 ["getConversation"]
     1347 SETTABLEKS                       R120 R195 K215 ["addConversation"]
     1349 GETTABLEKS                       R196 R7 K216 ["getThreadId"]
     1351 SETTABLEKS                       R196 R195 K216 ["getThreadId"]
     1353 SETTABLEKS                       R121 R195 K217 ["setThreadId"]
     1355 SETTABLEKS                       R122 R195 K218 ["applyConversation"]
     1357 SETTABLEKS                       R125 R195 K219 ["clearConversation"]
     1359 SETTABLEKS                       R126 R195 K220 ["wasToolInvoked"]
     1361 SETTABLEKS                       R127 R195 K221 ["overrideMethodWithError"]
     1363 SETTABLEKS                       R132 R195 K222 ["wasRequestHandlerCalled"]
     1365 SETTABLEKS                       R133 R195 K223 ["getLastRequestField"]
     1367 SETTABLEKS                       R128 R195 K224 ["getMultiplexedClient"]
     1369 SETTABLEKS                       R129 R195 K225 ["getClientStatusForIdentifier"]
     1371 SETTABLEKS                       R130 R195 K226 ["closeAllClients"]
     1373 SETTABLEKS                       R131 R195 K227 ["getToolAlias"]
     1375 SETTABLEKS                       R182 R195 K228 ["streamEvent"]
     1377 SETTABLEKS                       R183 R195 K229 ["addToolCall"]
     1379 SETTABLEKS                       R184 R195 K230 ["streamText"]
     1381 SETTABLEKS                       R185 R195 K231 ["startMessage"]
     1383 SETTABLEKS                       R186 R195 K232 ["sendMessageDeltaAndStop"]
     1385 SETTABLEKS                       R187 R195 K233 ["mockEventLoggerCall"]
     1387 SETTABLEKS                       R188 R195 K234 ["clickTextWithin"]
     1389 SETTABLEKS                       R69 R195 K235 ["getModelQualityWarning"]
     1391 SETTABLEKS                       R71 R195 K236 ["setModelQuality"]
     1393 SETTABLEKS                       R70 R195 K237 ["getGenerationIndicator"]
     1395 SETTABLEKS                       R189 R195 K238 ["getSlashCommandMenu"]
     1397 SETTABLEKS                       R190 R195 K239 ["getSlashCommandItems"]
     1399 SETTABLEKS                       R191 R195 K240 ["setOptions"]
     1401 SETTABLEKS                       R192 R195 K241 ["clickOptionWithDisplayName"]
     1403 SETTABLEKS                       R194 R195 K242 ["getSelectedThreadButton"]
     1405 SETTABLEKS                       R72 R195 K243 ["setSessionId"]
     1407 SETTABLEKS                       R73 R195 K244 ["setWidgetVisible"]
     1409 GETTABLEKS                       R196 R23 K245 ["setState"]
     1411 SETTABLEKS                       R196 R195 K246 ["setExternalServerState"]
     1413 GETTABLEKS                       R196 R23 K247 ["getState"]
     1415 SETTABLEKS                       R196 R195 K248 ["getExternalServerState"]
     1417 GETTABLEKS                       R196 R23 K249 ["getStartCallCount"]
     1419 SETTABLEKS                       R196 R195 K250 ["getExternalServerStartCallCount"]
     1421 GETTABLEKS                       R196 R23 K251 ["getStopCallCount"]
     1423 SETTABLEKS                       R196 R195 K252 ["getExternalServerStopCallCount"]
     1425 GETTABLEKS                       R196 R23 K253 ["getActiveConnectionsObservable"]
     1427 SETTABLEKS                       R196 R195 K254 ["getExternalServerActiveConnectionsObservable"]
     1429 GETTABLEKS                       R196 R23 K255 ["getAuthRejectedObservable"]
     1431 SETTABLEKS                       R196 R195 K256 ["getExternalServerAuthRejectedObservable"]
     1433 CLOSEUPVALS                      R0
     1434 RETURN                           R195 1

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
      166 GETTABLEKS                       R23 R23 K36 ["NetworkingContext"]
      168 CALL                             R22 1 1
      169 GETIMPORT                        R23 K12 [require]
      171 GETTABLEKS                       R24 R0 K23 ["Components"]
      173 GETTABLEKS                       R24 R24 K24 ["Contexts"]
      175 GETTABLEKS                       R24 R24 K37 ["OptionsContext"]
      177 CALL                             R23 1 1
      178 GETIMPORT                        R24 K12 [require]
      180 GETTABLEKS                       R25 R0 K15 ["Util"]
      182 GETTABLEKS                       R25 R25 K38 ["Persistence"]
      184 CALL                             R24 1 1
      185 GETIMPORT                        R25 K12 [require]
      187 GETTABLEKS                       R26 R0 K23 ["Components"]
      189 GETTABLEKS                       R26 R26 K39 ["APIKeyManagement"]
      191 GETTABLEKS                       R26 R26 K40 ["ProviderModels"]
      193 CALL                             R25 1 1
      194 GETIMPORT                        R26 K12 [require]
      196 GETTABLEKS                       R27 R0 K13 ["Parent"]
      198 GETTABLEKS                       R27 R27 K41 ["React"]
      200 CALL                             R26 1 1
      201 GETIMPORT                        R27 K12 [require]
      203 GETTABLEKS                       R28 R0 K13 ["Parent"]
      205 GETTABLEKS                       R28 R28 K42 ["ReactUtils"]
      207 CALL                             R27 1 1
      208 GETIMPORT                        R28 K12 [require]
      210 GETIMPORT                        R29 K1 [script]
      212 GETTABLEKS                       R29 R29 K13 ["Parent"]
      214 GETTABLEKS                       R29 R29 K43 ["RecordingNetworking"]
      216 CALL                             R28 1 1
      217 GETIMPORT                        R29 K12 [require]
      219 GETTABLEKS                       R30 R0 K15 ["Util"]
      221 GETTABLEKS                       R30 R30 K44 ["Serializer"]
      223 CALL                             R29 1 1
      224 GETIMPORT                        R30 K12 [require]
      226 GETIMPORT                        R31 K1 [script]
      228 GETTABLEKS                       R31 R31 K13 ["Parent"]
      230 GETTABLEKS                       R31 R31 K45 ["TagSearch"]
      232 CALL                             R30 1 1
      233 GETIMPORT                        R31 K12 [require]
      235 GETTABLEKS                       R32 R0 K15 ["Util"]
      237 GETTABLEKS                       R32 R32 K46 ["Tagging"]
      239 CALL                             R31 1 1
      240 GETIMPORT                        R32 K12 [require]
      242 GETTABLEKS                       R33 R0 K15 ["Util"]
      244 GETTABLEKS                       R33 R33 K47 ["TestIds"]
      246 CALL                             R32 1 1
      247 GETIMPORT                        R33 K12 [require]
      249 GETIMPORT                        R34 K1 [script]
      251 GETTABLEKS                       R34 R34 K13 ["Parent"]
      253 GETTABLEKS                       R34 R34 K48 ["ToolTestUtils"]
      255 CALL                             R33 1 1
      256 GETIMPORT                        R34 K12 [require]
      258 GETTABLEKS                       R35 R0 K49 ["Tools"]
      260 GETTABLEKS                       R35 R35 K50 ["ToolTypes"]
      262 CALL                             R34 1 1
      263 GETIMPORT                        R35 K12 [require]
      265 GETTABLEKS                       R36 R0 K15 ["Util"]
      267 GETTABLEKS                       R36 R36 K16 ["ContentWidgets"]
      269 GETTABLEKS                       R36 R36 K51 ["ToolWidgetMappingRegistry"]
      271 CALL                             R35 1 1
      272 GETIMPORT                        R36 K12 [require]
      274 GETTABLEKS                       R37 R0 K52 ["Resources"]
      276 GETTABLEKS                       R37 R37 K53 ["Localization"]
      278 GETTABLEKS                       R37 R37 K54 ["Translator"]
      280 CALL                             R36 1 1
      281 GETIMPORT                        R37 K12 [require]
      283 GETTABLEKS                       R38 R0 K55 ["Types"]
      285 CALL                             R37 1 1
      286 GETIMPORT                        R38 K12 [require]
      288 GETTABLEKS                       R39 R0 K23 ["Components"]
      290 GETTABLEKS                       R39 R39 K56 ["UIToolRegistry"]
      292 CALL                             R38 1 1
      293 GETIMPORT                        R39 K12 [require]
      295 GETTABLEKS                       R40 R0 K23 ["Components"]
      297 GETTABLEKS                       R40 R40 K24 ["Contexts"]
      299 GETTABLEKS                       R40 R40 K57 ["WindowInputContext"]
      301 CALL                             R39 1 1
      302 GETIMPORT                        R40 K12 [require]
      304 GETIMPORT                        R41 K1 [script]
      306 GETTABLEKS                       R41 R41 K58 ["createMockConversationContext"]
      308 CALL                             R40 1 1
      309 GETIMPORT                        R41 K12 [require]
      311 GETIMPORT                        R42 K1 [script]
      313 GETTABLEKS                       R42 R42 K59 ["createMockExternalServerContext"]
      315 CALL                             R41 1 1
      316 GETIMPORT                        R42 K12 [require]
      318 GETIMPORT                        R43 K1 [script]
      320 GETTABLEKS                       R43 R43 K60 ["createMockInputStateContext"]
      322 CALL                             R42 1 1
      323 GETIMPORT                        R43 K12 [require]
      325 GETIMPORT                        R44 K1 [script]
      327 GETTABLEKS                       R44 R44 K61 ["createMockLLMPackageContext"]
      329 CALL                             R43 1 1
      330 GETIMPORT                        R44 K12 [require]
      332 GETIMPORT                        R45 K1 [script]
      334 GETTABLEKS                       R45 R45 K62 ["createMockMcpClientContext"]
      336 CALL                             R44 1 1
      337 GETIMPORT                        R45 K12 [require]
      339 GETIMPORT                        R46 K1 [script]
      341 GETTABLEKS                       R46 R46 K63 ["createMockModelQualityContext"]
      343 CALL                             R45 1 1
      344 GETIMPORT                        R46 K12 [require]
      346 GETIMPORT                        R47 K1 [script]
      348 GETTABLEKS                       R47 R47 K64 ["createMockOptionsContext"]
      350 CALL                             R46 1 1
      351 GETIMPORT                        R47 K12 [require]
      353 GETIMPORT                        R48 K1 [script]
      355 GETTABLEKS                       R48 R48 K65 ["createMockPopoutWidgetContext"]
      357 CALL                             R47 1 1
      358 GETIMPORT                        R48 K12 [require]
      360 GETIMPORT                        R49 K1 [script]
      362 GETTABLEKS                       R49 R49 K66 ["createMockSessionIdContext"]
      364 CALL                             R48 1 1
      365 GETIMPORT                        R49 K12 [require]
      367 GETIMPORT                        R50 K1 [script]
      369 GETTABLEKS                       R50 R50 K67 ["createMockSettingsContext"]
      371 CALL                             R49 1 1
      372 GETIMPORT                        R50 K12 [require]
      374 GETIMPORT                        R51 K1 [script]
      376 GETTABLEKS                       R51 R51 K68 ["createMockThreadIdContext"]
      378 CALL                             R50 1 1
      379 GETIMPORT                        R51 K12 [require]
      381 GETIMPORT                        R52 K1 [script]
      383 GETTABLEKS                       R52 R52 K69 ["createMockWidgetVisibilityContext"]
      385 CALL                             R51 1 1
      386 GETIMPORT                        R52 K12 [require]
      388 GETIMPORT                        R53 K1 [script]
      390 GETTABLEKS                       R53 R53 K70 ["createTestHooks"]
      392 CALL                             R52 1 1
      393 GETIMPORT                        R53 K12 [require]
      395 GETIMPORT                        R54 K1 [script]
      397 GETTABLEKS                       R54 R54 K13 ["Parent"]
      399 GETTABLEKS                       R54 R54 K71 ["isVisibleGuiObject"]
      401 CALL                             R53 1 1
      402 GETIMPORT                        R54 K12 [require]
      404 GETTABLEKS                       R55 R0 K15 ["Util"]
      406 GETTABLEKS                       R55 R55 K16 ["ContentWidgets"]
      408 GETTABLEKS                       R55 R55 K72 ["registerContentWidgets"]
      410 CALL                             R54 1 1
      411 LOADK                            R57 K73 ["Packages"]
      412 NAMECALL                         R55 R0 K3 ["FindFirstAncestor"]
      414 CALL                             R55 2 1
      415 GETTABLEKS                       R55 R55 K74 ["Dev"]
      417 GETIMPORT                        R56 K12 [require]
      419 GETTABLEKS                       R57 R55 K75 ["FoundationTestingLibrary"]
      421 CALL                             R56 1 1
      422 GETIMPORT                        R57 K12 [require]
      424 GETTABLEKS                       R58 R55 K76 ["JestGlobals"]
      426 CALL                             R57 1 1
      427 GETIMPORT                        R58 K12 [require]
      429 GETTABLEKS                       R59 R55 K77 ["ReactTestingLibrary"]
      431 CALL                             R58 1 1
      432 GETTABLEKS                       R59 R26 K78 ["createElement"]
      434 GETTABLEKS                       R60 R57 K79 ["afterAll"]
      436 GETTABLEKS                       R61 R57 K80 ["afterEach"]
      438 GETTABLEKS                       R62 R57 K81 ["beforeAll"]
      440 GETTABLEKS                       R63 R57 K82 ["expect"]
      442 GETTABLEKS                       R64 R57 K83 ["jest"]
      444 GETTABLEKS                       R65 R58 K84 ["act"]
      446 GETTABLEKS                       R66 R58 K85 ["fireEvent"]
      448 GETTABLEKS                       R67 R58 K86 ["waitFor"]
      450 GETTABLEKS                       R68 R58 K87 ["within"]
      452 DUPCLOSURE                       R69 K88 [PROTO_15]
      453 CAPTURE                          VAL R10
      454 CAPTURE                          VAL R9
      455 CAPTURE                          VAL R3
      456 CAPTURE                          VAL R37
      457 CAPTURE                          VAL R16
      458 LOADNIL                          R70
      459 MOVE                             R71 R62
      460 NEWCLOSURE                       R72 P1
      461 CAPTURE                          REF R70
      462 CAPTURE                          VAL R64
      463 CAPTURE                          VAL R31
      464 CALL                             R71 1 0
      465 MOVE                             R71 R60
      466 NEWCLOSURE                       R72 P2
      467 CAPTURE                          REF R70
      468 CALL                             R71 1 0
      469 MOVE                             R71 R61
      470 DUPCLOSURE                       R72 K89 [PROTO_19]
      471 CAPTURE                          VAL R58
      472 CAPTURE                          VAL R6
      473 CAPTURE                          VAL R29
      474 CALL                             R71 1 0
      475 DUPCLOSURE                       R71 K90 [PROTO_213]
      476 CAPTURE                          VAL R49
      477 CAPTURE                          VAL R40
      478 CAPTURE                          VAL R42
      479 CAPTURE                          VAL R50
      480 CAPTURE                          VAL R48
      481 CAPTURE                          VAL R51
      482 CAPTURE                          VAL R44
      483 CAPTURE                          VAL R43
      484 CAPTURE                          VAL R45
      485 CAPTURE                          VAL R46
      486 CAPTURE                          VAL R47
      487 CAPTURE                          VAL R41
      488 CAPTURE                          VAL R52
      489 CAPTURE                          VAL R26
      490 CAPTURE                          VAL R59
      491 CAPTURE                          VAL R39
      492 CAPTURE                          VAL R17
      493 CAPTURE                          VAL R8
      494 CAPTURE                          VAL R69
      495 CAPTURE                          VAL R33
      496 CAPTURE                          VAL R10
      497 CAPTURE                          VAL R24
      498 CAPTURE                          VAL R54
      499 CAPTURE                          VAL R6
      500 CAPTURE                          VAL R35
      501 CAPTURE                          VAL R22
      502 CAPTURE                          VAL R28
      503 CAPTURE                          VAL R12
      504 CAPTURE                          VAL R0
      505 CAPTURE                          VAL R4
      506 CAPTURE                          VAL R2
      507 CAPTURE                          VAL R58
      508 CAPTURE                          VAL R14
      509 CAPTURE                          VAL R56
      510 CAPTURE                          VAL R27
      511 CAPTURE                          VAL R66
      512 CAPTURE                          VAL R65
      513 CAPTURE                          VAL R64
      514 CAPTURE                          VAL R1
      515 CAPTURE                          VAL R37
      516 CAPTURE                          VAL R68
      517 CAPTURE                          VAL R32
      518 CAPTURE                          VAL R30
      519 CAPTURE                          VAL R67
      520 CAPTURE                          VAL R63
      521 CAPTURE                          VAL R19
      522 CAPTURE                          VAL R13
      523 CAPTURE                          VAL R36
      524 CAPTURE                          VAL R15
      525 CAPTURE                          VAL R25
      526 CAPTURE                          VAL R53
      527 CAPTURE                          VAL R5
      528 CAPTURE                          VAL R18
      529 CLOSEUPVALS                      R70
      530 RETURN                           R71 1
