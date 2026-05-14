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
       20 JUMPIF                           R2 ; [+8]
       21 DUPTABLE                         R3 K9 [{"success", "errorMessage"}]
       22 LOADB                            R4 0
       23 SETTABLEKS                       R4 R3 K7 ["success"]
       25 LOADK                            R4 K10 ["No script is currently active"]
       26 SETTABLEKS                       R4 R3 K8 ["errorMessage"]
       28 RETURN                           R3 1
       29 GETTABLEKS                       R3 R1 K3 ["ScriptEditorService"]
       31 MOVE                             R5 R2
       32 NAMECALL                         R3 R3 K11 ["FindScriptDocument"]
       34 CALL                             R3 2 1
       35 JUMPIF                           R3 ; [+20]
       36 DUPTABLE                         R4 K13 [{"success", "errorMessage", "script"}]
       37 LOADB                            R5 0
       38 SETTABLEKS                       R5 R4 K7 ["success"]
       40 LOADK                            R5 K14 ["No document found for active script"]
       41 SETTABLEKS                       R5 R4 K8 ["errorMessage"]
       43 DUPTABLE                         R5 K17 [{"Name", "FullName"}]
       44 GETTABLEKS                       R6 R2 K15 ["Name"]
       46 SETTABLEKS                       R6 R5 K15 ["Name"]
       48 NAMECALL                         R6 R2 K18 ["GetFullName"]
       50 CALL                             R6 1 1
       51 SETTABLEKS                       R6 R5 K16 ["FullName"]
       53 SETTABLEKS                       R5 R4 K12 ["script"]
       55 RETURN                           R4 1
       56 NAMECALL                         R4 R3 K19 ["GetSelectedText"]
       58 CALL                             R4 1 1
       59 MOVE                             R5 R4
       60 JUMPIFNOT                        R5 ; [+4]
       61 JUMPIFNOTEQKS                    R4 K20 [""] ; [+2]
       63 LOADB                            R5 0 +1
       64 LOADB                            R5 1
       65 NAMECALL                         R6 R3 K21 ["GetSelectionStart"]
       67 CALL                             R6 1 2
       68 NAMECALL                         R8 R3 K22 ["GetSelectionEnd"]
       70 CALL                             R8 1 2
       71 DUPTABLE                         R10 K27 [{"success", "script", "selectedText", "hasSelection", "selectionStart", "selectionEnd"}]
       72 LOADB                            R11 1
       73 SETTABLEKS                       R11 R10 K7 ["success"]
       75 DUPTABLE                         R11 K17 [{"Name", "FullName"}]
       76 GETTABLEKS                       R12 R2 K15 ["Name"]
       78 SETTABLEKS                       R12 R11 K15 ["Name"]
       80 NAMECALL                         R12 R2 K18 ["GetFullName"]
       82 CALL                             R12 1 1
       83 SETTABLEKS                       R12 R11 K16 ["FullName"]
       85 SETTABLEKS                       R11 R10 K12 ["script"]
       87 JUMPIFNOT                        R5 ; [+2]
       88 MOVE                             R11 R4
       89 JUMPIF                           R11 ; [+1]
       90 LOADNIL                          R11
       91 SETTABLEKS                       R11 R10 K23 ["selectedText"]
       93 SETTABLEKS                       R5 R10 K24 ["hasSelection"]
       95 DUPTABLE                         R11 K30 [{"line", "char"}]
       96 SETTABLEKS                       R6 R11 K28 ["line"]
       98 SETTABLEKS                       R7 R11 K29 ["char"]
      100 SETTABLEKS                       R11 R10 K25 ["selectionStart"]
      102 DUPTABLE                         R11 K30 [{"line", "char"}]
      103 SETTABLEKS                       R8 R11 K28 ["line"]
      105 SETTABLEKS                       R9 R11 K29 ["char"]
      107 SETTABLEKS                       R11 R10 K26 ["selectionEnd"]
      109 RETURN                           R10 1

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
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+1]
        2 RETURN                           R0 0
        3 MOVE                             R2 R1
        4 JUMPIF                           R2 ; [+2]
        5 GETIMPORT                        R2 K1 [game]
        7 LOADK                            R5 K2 ["StudioScriptHelper_getActiveScriptInfo"]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R2
       11 NAMECALL                         R3 R0 K3 ["OnHostInvokeAsync"]
       13 CALL                             R3 3 1
       14 SETUPVAL                         R3 0
       15 LOADK                            R5 K4 ["StudioScriptHelper_getOpenDocuments"]
       16 NEWCLOSURE                       R6 P1
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R2
       19 NAMECALL                         R3 R0 K3 ["OnHostInvokeAsync"]
       21 CALL                             R3 3 1
       22 SETUPVAL                         R3 2
       23 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["StudioScriptHelper not initialized. Call StudioScriptHelper.initialize(networking) first."]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 LOADNIL                          R1
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["StudioScriptHelper not initialized. Call StudioScriptHelper.initialize(networking) first."]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 LOADNIL                          R1
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["StudioNetworking"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 8 0
       18 LOADNIL                          R3
       19 LOADNIL                          R4
       20 DUPCLOSURE                       R5 K9 [PROTO_0]
       21 DUPCLOSURE                       R6 K10 [PROTO_1]
       22 DUPCLOSURE                       R7 K11 [PROTO_2]
       23 NEWCLOSURE                       R8 P3
       24 CAPTURE                          REF R3
       25 CAPTURE                          VAL R6
       26 CAPTURE                          REF R4
       27 CAPTURE                          VAL R7
       28 SETTABLEKS                       R8 R2 K12 ["initialize"]
       30 NEWCLOSURE                       R8 P4
       31 CAPTURE                          REF R3
       32 SETTABLEKS                       R8 R2 K13 ["getActiveScriptInfo"]
       34 NEWCLOSURE                       R8 P5
       35 CAPTURE                          REF R4
       36 SETTABLEKS                       R8 R2 K14 ["getOpenDocuments"]
       38 DUPCLOSURE                       R8 K15 [PROTO_8]
       39 CAPTURE                          VAL R2
       40 SETTABLEKS                       R8 R2 K16 ["getSelectedTextFromActiveScript"]
       42 DUPCLOSURE                       R8 K17 [PROTO_9]
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R8 R2 K18 ["getActiveScriptName"]
       46 DUPCLOSURE                       R8 K19 [PROTO_10]
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R8 R2 K20 ["getActiveScriptPath"]
       50 DUPCLOSURE                       R8 K21 [PROTO_11]
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R8 R2 K22 ["generateExplainCodePrompt"]
       54 CLOSEUPVALS                      R3
       55 RETURN                           R2 1
