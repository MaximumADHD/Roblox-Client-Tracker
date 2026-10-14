PROTO_0:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETTABLEKS                       R2 R0 K2 ["GetService"]
        4 MOVE                             R3 R0
        5 LOADK                            R4 K3 ["ScriptEditorService"]
        6 CALL                             R1 3 2
        7 LOADK                            R5 K4 ["StudioService"]
        8 NAMECALL                         R3 R0 K2 ["GetService"]
       10 CALL                             R3 2 1
       11 DUPTABLE                         R4 K5 [{"ScriptEditorService", "StudioService"}]
       12 SETTABLEKS                       R2 R4 K3 ["ScriptEditorService"]
       14 SETTABLEKS                       R3 R4 K4 ["StudioService"]
       16 RETURN                           R4 1

PROTO_1:
        0 GETIMPORT                        R2 K1 [pcall]
        2 GETTABLEKS                       R3 R0 K2 ["GetService"]
        4 MOVE                             R4 R0
        5 LOADK                            R5 K3 ["ScriptEditorService"]
        6 CALL                             R2 3 2
        7 LOADK                            R6 K4 ["StudioService"]
        8 NAMECALL                         R4 R0 K2 ["GetService"]
       10 CALL                             R4 2 1
       11 DUPTABLE                         R1 K5 [{"ScriptEditorService", "StudioService"}]
       12 SETTABLEKS                       R3 R1 K3 ["ScriptEditorService"]
       14 SETTABLEKS                       R4 R1 K4 ["StudioService"]
       16 GETTABLEKS                       R2 R1 K4 ["StudioService"]
       18 GETTABLEKS                       R2 R2 K6 ["ActiveScript"]
       20 JUMPIF                           R2 ; [+2]
       21 DUPTABLE                         R3 K11 [{["success"] = False, ["errorMessage"] = "No script is currently active"}]
       22 RETURN                           R3 1
       23 GETTABLEKS                       R3 R1 K3 ["ScriptEditorService"]
       25 MOVE                             R5 R2
       26 NAMECALL                         R3 R3 K12 ["FindScriptDocument"]
       28 CALL                             R3 2 1
       29 JUMPIF                           R3 ; [+14]
       30 DUPTABLE                         R4 K15 [{["success"] = False, ["errorMessage"] = "No document found for active script", ["script"]}]
       31 DUPTABLE                         R5 K18 [{"Name", "FullName"}]
       32 GETTABLEKS                       R6 R2 K16 ["Name"]
       34 SETTABLEKS                       R6 R5 K16 ["Name"]
       36 NAMECALL                         R6 R2 K19 ["GetFullName"]
       38 CALL                             R6 1 1
       39 SETTABLEKS                       R6 R5 K17 ["FullName"]
       41 SETTABLEKS                       R5 R4 K14 ["script"]
       43 RETURN                           R4 1
       44 NAMECALL                         R4 R3 K20 ["GetSelectedText"]
       46 CALL                             R4 1 1
       47 MOVE                             R5 R4
       48 JUMPIFNOT                        R5 ; [+4]
       49 JUMPIFNOTEQKS                    R4 K21 [""] ; [+2]
       51 LOADB                            R5 0 +1
       52 LOADB                            R5 1
       53 NAMECALL                         R6 R3 K22 ["GetSelectionStart"]
       55 CALL                             R6 1 2
       56 NAMECALL                         R8 R3 K23 ["GetSelectionEnd"]
       58 CALL                             R8 1 2
       59 DUPTABLE                         R10 K29 [{["success"] = True, ["script"], ["selectedText"], ["hasSelection"], ["selectionStart"], ["selectionEnd"]}]
       60 DUPTABLE                         R11 K18 [{"Name", "FullName"}]
       61 GETTABLEKS                       R12 R2 K16 ["Name"]
       63 SETTABLEKS                       R12 R11 K16 ["Name"]
       65 NAMECALL                         R12 R2 K19 ["GetFullName"]
       67 CALL                             R12 1 1
       68 SETTABLEKS                       R12 R11 K17 ["FullName"]
       70 SETTABLEKS                       R11 R10 K14 ["script"]
       72 JUMPIFNOT                        R5 ; [+2]
       73 MOVE                             R11 R4
       74 JUMPIF                           R11 ; [+1]
       75 LOADNIL                          R11
       76 SETTABLEKS                       R11 R10 K25 ["selectedText"]
       78 SETTABLEKS                       R5 R10 K26 ["hasSelection"]
       80 DUPTABLE                         R11 K32 [{"line", "char"}]
       81 SETTABLEKS                       R6 R11 K30 ["line"]
       83 SETTABLEKS                       R7 R11 K31 ["char"]
       85 SETTABLEKS                       R11 R10 K27 ["selectionStart"]
       87 DUPTABLE                         R11 K32 [{"line", "char"}]
       88 SETTABLEKS                       R8 R11 K30 ["line"]
       90 SETTABLEKS                       R9 R11 K31 ["char"]
       92 SETTABLEKS                       R11 R10 K28 ["selectionEnd"]
       94 RETURN                           R10 1

PROTO_2:
        0 GETIMPORT                        R2 K1 [pcall]
        2 GETTABLEKS                       R3 R0 K2 ["GetService"]
        4 MOVE                             R4 R0
        5 LOADK                            R5 K3 ["ScriptEditorService"]
        6 CALL                             R2 3 2
        7 LOADK                            R6 K4 ["StudioService"]
        8 NAMECALL                         R4 R0 K2 ["GetService"]
       10 CALL                             R4 2 1
       11 DUPTABLE                         R1 K5 [{"ScriptEditorService", "StudioService"}]
       12 SETTABLEKS                       R3 R1 K3 ["ScriptEditorService"]
       14 SETTABLEKS                       R4 R1 K4 ["StudioService"]
       16 GETTABLEKS                       R2 R1 K3 ["ScriptEditorService"]
       18 NAMECALL                         R2 R2 K6 ["GetScriptDocuments"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 0 0
       23 LOADN                            R4 1
       24 MOVE                             R5 R2
       25 LOADNIL                          R6
       26 LOADNIL                          R7
       27 FORGPREP                         R5
       28 NAMECALL                         R10 R9 K7 ["GetScript"]
       30 CALL                             R10 1 1
       31 JUMPIFNOT                        R10 ; [+19]
       32 DUPTABLE                         R13 K11 [{"index", "scriptName", "scriptFullName"}]
       33 SETTABLEKS                       R4 R13 K8 ["index"]
       35 GETTABLEKS                       R14 R10 K12 ["Name"]
       37 SETTABLEKS                       R14 R13 K9 ["scriptName"]
       39 NAMECALL                         R14 R10 K13 ["GetFullName"]
       41 CALL                             R14 1 1
       42 SETTABLEKS                       R14 R13 K10 ["scriptFullName"]
       44 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       46 MOVE                             R12 R3
       47 GETIMPORT                        R11 K16 [table.insert]
       49 CALL                             R11 2 0
       50 ADDK                             R4 R4 K17 [1]
       51 FORGLOOP                         R5 2 ; [-24]
       53 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R4 0
        1 JUMPIF                           R4 ; [+2]
        2 GETUPVAL                         R4 1
        3 JUMPIFNOT                        R4 ; [+1]
        4 RETURN                           R0 0
        5 MOVE                             R4 R3
        6 JUMPIF                           R4 ; [+2]
        7 GETIMPORT                        R4 K1 [game]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K2 ["FFlagAssistantUseNewDMNetworking"]
       12 JUMPIFNOT                        R5 ; [+66]
       13 FASTCALL2K                       ASSERT R1 K3 ; [+5]
       15 MOVE                             R6 R1
       16 LOADK                            R7 K3 ["StudioScriptHelper requires the new networking when FFlagAssistantUseNewDMNetworking is on"]
       17 GETIMPORT                        R5 K5 [assert]
       19 CALL                             R5 2 0
       20 FASTCALL2K                       ASSERT R2 K6 ; [+5]
       22 MOVE                             R6 R2
       23 LOADK                            R7 K6 ["StudioScriptHelper requires the environment when FFlagAssistantUseNewDMNetworking is on"]
       24 GETIMPORT                        R5 K5 [assert]
       26 CALL                             R5 2 0
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R5 R5 K7 ["invoke"]
       30 MOVE                             R6 R1
       31 LOADK                            R7 K8 ["StudioScriptHelper.getActiveScriptInfo"]
       32 CALL                             R5 2 1
       33 GETUPVAL                         R6 3
       34 GETTABLEKS                       R6 R6 K7 ["invoke"]
       36 MOVE                             R7 R1
       37 LOADK                            R8 K9 ["StudioScriptHelper.getOpenDocuments"]
       38 CALL                             R6 2 1
       39 NAMECALL                         R7 R1 K10 ["GetIdentity"]
       41 CALL                             R7 1 1
       42 GETUPVAL                         R8 4
       43 GETTABLEKS                       R8 R8 K11 ["Identity"]
       45 GETTABLEKS                       R8 R8 K12 ["Standalone"]
       47 JUMPIFEQ                         R7 R8 ; [+21]
       49 GETUPVAL                         R7 5
       50 NEWCLOSURE                       R11 P0
       51 CAPTURE                          UPVAL U6
       52 CAPTURE                          VAL R4
       53 NAMECALL                         R9 R5 K13 ["Connect"]
       55 CALL                             R9 2 -1
       56 NAMECALL                         R7 R7 K14 ["Add"]
       58 CALL                             R7 -1 0
       59 GETUPVAL                         R7 5
       60 NEWCLOSURE                       R11 P1
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          VAL R4
       63 NAMECALL                         R9 R6 K13 ["Connect"]
       65 CALL                             R9 2 -1
       66 NAMECALL                         R7 R7 K14 ["Add"]
       68 CALL                             R7 -1 0
       69 SETUPVAL                         R5 1
       70 SETUPVAL                         R6 8
       71 GETTABLEKS                       R7 R2 K15 ["Destroying"]
       73 DUPCLOSURE                       R9 K16 [PROTO_5]
       74 CAPTURE                          UPVAL U5
       75 NAMECALL                         R7 R7 K17 ["Once"]
       77 CALL                             R7 2 0
       78 RETURN                           R0 0
       79 FASTCALL2K                       ASSERT R0 K18 ; [+5]
       81 MOVE                             R6 R0
       82 LOADK                            R7 K18 ["StudioScriptHelper requires networking"]
       83 GETIMPORT                        R5 K5 [assert]
       85 CALL                             R5 2 0
       86 LOADK                            R7 K19 ["StudioScriptHelper_getActiveScriptInfo"]
       87 NEWCLOSURE                       R8 P3
       88 CAPTURE                          UPVAL U6
       89 CAPTURE                          VAL R4
       90 NAMECALL                         R5 R0 K20 ["OnHostInvokeAsync"]
       92 CALL                             R5 3 1
       93 SETUPVAL                         R5 0
       94 LOADK                            R7 K21 ["StudioScriptHelper_getOpenDocuments"]
       95 NEWCLOSURE                       R8 P4
       96 CAPTURE                          UPVAL U7
       97 CAPTURE                          VAL R4
       98 NAMECALL                         R5 R0 K20 ["OnHostInvokeAsync"]
      100 CALL                             R5 3 1
      101 SETUPVAL                         R5 9
      102 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 1
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 2
        8 LOADNIL                          R0
        9 SETUPVAL                         R0 3
       10 LOADNIL                          R0
       11 SETUPVAL                         R0 4
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R1 1
        5 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        7 LOADK                            R2 K1 ["StudioScriptHelper not initialized. Call StudioScriptHelper.initialize(networking) first."]
        8 GETIMPORT                        R0 K3 [assert]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K4 ["FOCUSED"]
       15 NAMECALL                         R0 R0 K5 ["InvokeAsync"]
       17 CALL                             R0 2 -1
       18 RETURN                           R0 -1
       19 GETUPVAL                         R1 3
       20 FASTCALL2K                       ASSERT R1 K1 ; [+4]
       22 LOADK                            R2 K1 ["StudioScriptHelper not initialized. Call StudioScriptHelper.initialize(networking) first."]
       23 GETIMPORT                        R0 K3 [assert]
       25 CALL                             R0 2 0
       26 GETUPVAL                         R0 3
       27 LOADNIL                          R1
       28 CALL                             R0 1 -1
       29 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+15]
        4 GETUPVAL                         R1 1
        5 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        7 LOADK                            R2 K1 ["StudioScriptHelper not initialized. Call StudioScriptHelper.initialize(networking) first."]
        8 GETIMPORT                        R0 K3 [assert]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K4 ["FOCUSED"]
       15 NAMECALL                         R0 R0 K5 ["InvokeAsync"]
       17 CALL                             R0 2 -1
       18 RETURN                           R0 -1
       19 GETUPVAL                         R1 3
       20 FASTCALL2K                       ASSERT R1 K1 ; [+4]
       22 LOADK                            R2 K1 ["StudioScriptHelper not initialized. Call StudioScriptHelper.initialize(networking) first."]
       23 GETIMPORT                        R0 K3 [assert]
       25 CALL                             R0 2 0
       26 GETUPVAL                         R0 3
       27 LOADNIL                          R1
       28 CALL                             R0 1 -1
       29 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getActiveScriptInfo"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["success"]
        6 JUMPIFNOT                        R1 ; [+6]
        7 GETTABLEKS                       R1 R0 K2 ["hasSelection"]
        9 JUMPIFNOT                        R1 ; [+3]
       10 GETTABLEKS                       R1 R0 K3 ["selectedText"]
       12 RETURN                           R1 1
       13 LOADNIL                          R1
       14 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getActiveScriptInfo"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["success"]
        6 JUMPIFNOT                        R1 ; [+8]
        7 GETTABLEKS                       R1 R0 K2 ["script"]
        9 JUMPIFNOT                        R1 ; [+5]
       10 GETTABLEKS                       R1 R0 K2 ["script"]
       12 GETTABLEKS                       R1 R1 K3 ["Name"]
       14 RETURN                           R1 1
       15 LOADNIL                          R1
       16 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getActiveScriptInfo"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["success"]
        6 JUMPIFNOT                        R1 ; [+8]
        7 GETTABLEKS                       R1 R0 K2 ["script"]
        9 JUMPIFNOT                        R1 ; [+5]
       10 GETTABLEKS                       R1 R0 K2 ["script"]
       12 GETTABLEKS                       R1 R1 K3 ["FullName"]
       14 RETURN                           R1 1
       15 LOADNIL                          R1
       16 RETURN                           R1 1

PROTO_15:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["HttpService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["getActiveScriptInfo"]
        9 CALL                             R1 0 1
       10 MOVE                             R4 R1
       11 NAMECALL                         R2 R0 K5 ["JSONEncode"]
       13 CALL                             R2 2 1
       14 LOADK                            R4 K6 ["Explain the following code to the user and be concise. Fetch surrounding context from the provided script information to help you understand the code if needed. Focus on what the code does, how it works, and any important details the user should know.\n\nScript Information:\n"]
       15 MOVE                             R5 R2
       16 CONCAT                           R3 R4 R5
       17 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssistantUI"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K9 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["StudioNetworkingOLD"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["Utils"]
       39 GETTABLEKS                       R5 R5 K14 ["Bin"]
       41 GETTABLEKS                       R6 R2 K15 ["Remote"]
       43 NEWTABLE                         R7 8 0
       45 LOADNIL                          R8
       46 LOADNIL                          R9
       47 LOADNIL                          R10
       48 LOADNIL                          R11
       49 GETTABLEKS                       R12 R5 K16 ["new"]
       51 CALL                             R12 0 1
       52 DUPCLOSURE                       R13 K17 [PROTO_0]
       53 DUPCLOSURE                       R14 K18 [PROTO_1]
       54 DUPCLOSURE                       R15 K19 [PROTO_2]
       55 NEWCLOSURE                       R16 P3
       56 CAPTURE                          REF R8
       57 CAPTURE                          REF R10
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R12
       62 CAPTURE                          VAL R14
       63 CAPTURE                          VAL R15
       64 CAPTURE                          REF R11
       65 CAPTURE                          REF R9
       66 SETTABLEKS                       R16 R7 K20 ["initialize"]
       68 NEWCLOSURE                       R16 P4
       69 CAPTURE                          VAL R12
       70 CAPTURE                          REF R8
       71 CAPTURE                          REF R9
       72 CAPTURE                          REF R10
       73 CAPTURE                          REF R11
       74 SETTABLEKS                       R16 R7 K21 ["resetForTesting"]
       76 NEWCLOSURE                       R16 P5
       77 CAPTURE                          VAL R3
       78 CAPTURE                          REF R10
       79 CAPTURE                          VAL R2
       80 CAPTURE                          REF R8
       81 SETTABLEKS                       R16 R7 K22 ["getActiveScriptInfo"]
       83 NEWCLOSURE                       R16 P6
       84 CAPTURE                          VAL R3
       85 CAPTURE                          REF R11
       86 CAPTURE                          VAL R2
       87 CAPTURE                          REF R9
       88 SETTABLEKS                       R16 R7 K23 ["getOpenDocuments"]
       90 DUPCLOSURE                       R16 K24 [PROTO_12]
       91 CAPTURE                          VAL R7
       92 SETTABLEKS                       R16 R7 K25 ["getSelectedTextFromActiveScript"]
       94 DUPCLOSURE                       R16 K26 [PROTO_13]
       95 CAPTURE                          VAL R7
       96 SETTABLEKS                       R16 R7 K27 ["getActiveScriptName"]
       98 DUPCLOSURE                       R16 K28 [PROTO_14]
       99 CAPTURE                          VAL R7
      100 SETTABLEKS                       R16 R7 K29 ["getActiveScriptPath"]
      102 DUPCLOSURE                       R16 K30 [PROTO_15]
      103 CAPTURE                          VAL R7
      104 SETTABLEKS                       R16 R7 K31 ["generateExplainCodePrompt"]
      106 CLOSEUPVALS                      R8
      107 RETURN                           R7 1
