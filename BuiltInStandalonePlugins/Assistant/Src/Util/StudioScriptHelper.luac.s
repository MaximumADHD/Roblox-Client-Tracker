PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["GetService"]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K1 ["ScriptEditorService"]
        4 FASTPCALL                        pcall 3 ; [+2]
        5 GETIMPORT                        R1 K3 [pcall]
        7 CALL                             R1 3 2
        8 LOADK                            R5 K4 ["StudioService"]
        9 NAMECALL                         R3 R0 K0 ["GetService"]
       11 CALL                             R3 2 1
       12 DUPTABLE                         R4 K5 [{"ScriptEditorService", "StudioService"}]
       13 SETTABLEKS                       R2 R4 K1 ["ScriptEditorService"]
       15 SETTABLEKS                       R3 R4 K4 ["StudioService"]
       17 RETURN                           R4 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["GetService"]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K1 ["ScriptEditorService"]
        4 FASTPCALL                        pcall 3 ; [+2]
        5 GETIMPORT                        R2 K3 [pcall]
        7 CALL                             R2 3 2
        8 LOADK                            R6 K4 ["StudioService"]
        9 NAMECALL                         R4 R0 K0 ["GetService"]
       11 CALL                             R4 2 1
       12 DUPTABLE                         R1 K5 [{"ScriptEditorService", "StudioService"}]
       13 SETTABLEKS                       R3 R1 K1 ["ScriptEditorService"]
       15 SETTABLEKS                       R4 R1 K4 ["StudioService"]
       17 GETTABLEKS                       R2 R1 K4 ["StudioService"]
       19 GETTABLEKS                       R2 R2 K6 ["ActiveScript"]
       21 JUMPIF                           R2 ; [+2]
       22 DUPTABLE                         R3 K11 [{["success"] = False, ["errorMessage"] = "No script is currently active"}]
       23 RETURN                           R3 1
       24 GETTABLEKS                       R3 R1 K1 ["ScriptEditorService"]
       26 MOVE                             R5 R2
       27 NAMECALL                         R3 R3 K12 ["FindScriptDocument"]
       29 CALL                             R3 2 1
       30 JUMPIF                           R3 ; [+14]
       31 DUPTABLE                         R4 K15 [{["success"] = False, ["errorMessage"] = "No document found for active script", ["script"]}]
       32 DUPTABLE                         R5 K18 [{"Name", "FullName"}]
       33 GETTABLEKS                       R6 R2 K16 ["Name"]
       35 SETTABLEKS                       R6 R5 K16 ["Name"]
       37 NAMECALL                         R6 R2 K19 ["GetFullName"]
       39 CALL                             R6 1 1
       40 SETTABLEKS                       R6 R5 K17 ["FullName"]
       42 SETTABLEKS                       R5 R4 K14 ["script"]
       44 RETURN                           R4 1
       45 NAMECALL                         R4 R3 K20 ["GetSelectedText"]
       47 CALL                             R4 1 1
       48 MOVE                             R5 R4
       49 JUMPIFNOT                        R5 ; [+4]
       50 JUMPIFNOTEQKS                    R4 K21 [""] ; [+2]
       52 LOADB                            R5 0 +1
       53 LOADB                            R5 1
       54 NAMECALL                         R6 R3 K22 ["GetSelectionStart"]
       56 CALL                             R6 1 2
       57 NAMECALL                         R8 R3 K23 ["GetSelectionEnd"]
       59 CALL                             R8 1 2
       60 DUPTABLE                         R10 K29 [{["success"] = True, ["script"], ["selectedText"], ["hasSelection"], ["selectionStart"], ["selectionEnd"]}]
       61 DUPTABLE                         R11 K18 [{"Name", "FullName"}]
       62 GETTABLEKS                       R12 R2 K16 ["Name"]
       64 SETTABLEKS                       R12 R11 K16 ["Name"]
       66 NAMECALL                         R12 R2 K19 ["GetFullName"]
       68 CALL                             R12 1 1
       69 SETTABLEKS                       R12 R11 K17 ["FullName"]
       71 SETTABLEKS                       R11 R10 K14 ["script"]
       73 JUMPIFNOT                        R5 ; [+2]
       74 MOVE                             R11 R4
       75 JUMPIF                           R11 ; [+1]
       76 LOADNIL                          R11
       77 SETTABLEKS                       R11 R10 K25 ["selectedText"]
       79 SETTABLEKS                       R5 R10 K26 ["hasSelection"]
       81 DUPTABLE                         R11 K32 [{"line", "char"}]
       82 SETTABLEKS                       R6 R11 K30 ["line"]
       84 SETTABLEKS                       R7 R11 K31 ["char"]
       86 SETTABLEKS                       R11 R10 K27 ["selectionStart"]
       88 DUPTABLE                         R11 K32 [{"line", "char"}]
       89 SETTABLEKS                       R8 R11 K30 ["line"]
       91 SETTABLEKS                       R9 R11 K31 ["char"]
       93 SETTABLEKS                       R11 R10 K28 ["selectionEnd"]
       95 RETURN                           R10 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["GetService"]
        2 MOVE                             R4 R0
        3 LOADK                            R5 K1 ["ScriptEditorService"]
        4 FASTPCALL                        pcall 3 ; [+2]
        5 GETIMPORT                        R2 K3 [pcall]
        7 CALL                             R2 3 2
        8 LOADK                            R6 K4 ["StudioService"]
        9 NAMECALL                         R4 R0 K0 ["GetService"]
       11 CALL                             R4 2 1
       12 DUPTABLE                         R1 K5 [{"ScriptEditorService", "StudioService"}]
       13 SETTABLEKS                       R3 R1 K1 ["ScriptEditorService"]
       15 SETTABLEKS                       R4 R1 K4 ["StudioService"]
       17 GETTABLEKS                       R2 R1 K1 ["ScriptEditorService"]
       19 NAMECALL                         R2 R2 K6 ["GetScriptDocuments"]
       21 CALL                             R2 1 1
       22 NEWTABLE                         R3 0 0
       24 LOADN                            R4 1
       25 MOVE                             R5 R2
       26 LOADNIL                          R6
       27 LOADNIL                          R7
       28 FORGPREP                         R5
       29 NAMECALL                         R10 R9 K7 ["GetScript"]
       31 CALL                             R10 1 1
       32 JUMPIFNOT                        R10 ; [+19]
       33 DUPTABLE                         R13 K11 [{"index", "scriptName", "scriptFullName"}]
       34 SETTABLEKS                       R4 R13 K8 ["index"]
       36 GETTABLEKS                       R14 R10 K12 ["Name"]
       38 SETTABLEKS                       R14 R13 K9 ["scriptName"]
       40 NAMECALL                         R14 R10 K13 ["GetFullName"]
       42 CALL                             R14 1 1
       43 SETTABLEKS                       R14 R13 K10 ["scriptFullName"]
       45 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       47 MOVE                             R12 R3
       48 GETIMPORT                        R11 K16 [table.insert]
       50 CALL                             R11 2 0
       51 ADDK                             R4 R4 K17 [1]
       52 FORGLOOP                         R5 2 ; [-24]
       54 RETURN                           R3 1

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
        1 NAMECALL                         R0 R0 K0 ["Empty"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+1]
        2 RETURN                           R0 0
        3 MOVE                             R3 R2
        4 JUMPIF                           R3 ; [+2]
        5 GETIMPORT                        R3 K1 [game]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["invoke"]
       10 MOVE                             R5 R0
       11 LOADK                            R6 K3 ["StudioScriptHelper.getActiveScriptInfo"]
       12 CALL                             R4 2 1
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K2 ["invoke"]
       16 MOVE                             R6 R0
       17 LOADK                            R7 K4 ["StudioScriptHelper.getOpenDocuments"]
       18 CALL                             R5 2 1
       19 NAMECALL                         R6 R0 K5 ["GetIdentity"]
       21 CALL                             R6 1 1
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K6 ["Identity"]
       25 GETTABLEKS                       R7 R7 K7 ["Standalone"]
       27 JUMPIFEQ                         R6 R7 ; [+21]
       29 GETUPVAL                         R6 3
       30 NEWCLOSURE                       R10 P0
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R3
       33 NAMECALL                         R8 R4 K8 ["Connect"]
       35 CALL                             R8 2 -1
       36 NAMECALL                         R6 R6 K9 ["Add"]
       38 CALL                             R6 -1 0
       39 GETUPVAL                         R6 3
       40 NEWCLOSURE                       R10 P1
       41 CAPTURE                          UPVAL U5
       42 CAPTURE                          VAL R3
       43 NAMECALL                         R8 R5 K8 ["Connect"]
       45 CALL                             R8 2 -1
       46 NAMECALL                         R6 R6 K9 ["Add"]
       48 CALL                             R6 -1 0
       49 SETUPVAL                         R4 0
       50 SETUPVAL                         R5 6
       51 GETTABLEKS                       R6 R1 K10 ["Destroying"]
       53 DUPCLOSURE                       R8 K11 [PROTO_5]
       54 CAPTURE                          UPVAL U3
       55 NAMECALL                         R6 R6 K12 ["Once"]
       57 CALL                             R6 2 0
       58 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Empty"]
        3 CALL                             R0 1 0
        4 LOADNIL                          R0
        5 SETUPVAL                         R0 1
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 2
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["StudioScriptHelper not initialized. Call StudioScriptHelper.initialize(networking) first."]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["FOCUSED"]
       11 NAMECALL                         R0 R0 K4 ["InvokeAsync"]
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["StudioScriptHelper not initialized. Call StudioScriptHelper.initialize(networking) first."]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["FOCUSED"]
       11 NAMECALL                         R0 R0 K4 ["InvokeAsync"]
       13 CALL                             R0 2 -1
       14 RETURN                           R0 -1

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["AssistantUI"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Bin"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["DMNetworking"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R4 K10 ["Remote"]
       26 NEWTABLE                         R6 8 0
       28 LOADNIL                          R7
       29 LOADNIL                          R8
       30 GETTABLEKS                       R9 R3 K11 ["new"]
       32 CALL                             R9 0 1
       33 DUPCLOSURE                       R10 K12 [PROTO_0]
       34 DUPCLOSURE                       R11 K13 [PROTO_1]
       35 DUPCLOSURE                       R12 K14 [PROTO_2]
       36 NEWCLOSURE                       R13 P3
       37 CAPTURE                          REF R7
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R9
       41 CAPTURE                          VAL R11
       42 CAPTURE                          VAL R12
       43 CAPTURE                          REF R8
       44 SETTABLEKS                       R13 R6 K15 ["initialize"]
       46 NEWCLOSURE                       R13 P4
       47 CAPTURE                          VAL R9
       48 CAPTURE                          REF R7
       49 CAPTURE                          REF R8
       50 SETTABLEKS                       R13 R6 K16 ["resetForTesting"]
       52 NEWCLOSURE                       R13 P5
       53 CAPTURE                          REF R7
       54 CAPTURE                          VAL R4
       55 SETTABLEKS                       R13 R6 K17 ["getActiveScriptInfo"]
       57 NEWCLOSURE                       R13 P6
       58 CAPTURE                          REF R8
       59 CAPTURE                          VAL R4
       60 SETTABLEKS                       R13 R6 K18 ["getOpenDocuments"]
       62 DUPCLOSURE                       R13 K19 [PROTO_10]
       63 CAPTURE                          VAL R6
       64 SETTABLEKS                       R13 R6 K20 ["getSelectedTextFromActiveScript"]
       66 DUPCLOSURE                       R13 K21 [PROTO_11]
       67 CAPTURE                          VAL R6
       68 SETTABLEKS                       R13 R6 K22 ["getActiveScriptName"]
       70 DUPCLOSURE                       R13 K23 [PROTO_12]
       71 CAPTURE                          VAL R6
       72 SETTABLEKS                       R13 R6 K24 ["getActiveScriptPath"]
       74 DUPCLOSURE                       R13 K25 [PROTO_13]
       75 CAPTURE                          VAL R6
       76 SETTABLEKS                       R13 R6 K26 ["generateExplainCodePrompt"]
       78 CLOSEUPVALS                      R7
       79 RETURN                           R6 1
