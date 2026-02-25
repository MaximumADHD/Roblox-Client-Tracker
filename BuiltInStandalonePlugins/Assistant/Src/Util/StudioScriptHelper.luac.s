PROTO_0:
        0 LOADK                            R3 K0 ["ScriptEditorService"]
        1 NAMECALL                         R1 R0 K1 ["GetService"]
        3 CALL                             R1 2 1
        4 LOADK                            R4 K2 ["StudioService"]
        5 NAMECALL                         R2 R0 K1 ["GetService"]
        7 CALL                             R2 2 1
        8 DUPTABLE                         R3 K3 [{"ScriptEditorService", "StudioService"}]
        9 SETTABLEKS                       R1 R3 K0 ["ScriptEditorService"]
       11 SETTABLEKS                       R2 R3 K2 ["StudioService"]
       13 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R4 K0 ["ScriptEditorService"]
        1 NAMECALL                         R2 R0 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 LOADK                            R5 K2 ["StudioService"]
        5 NAMECALL                         R3 R0 K1 ["GetService"]
        7 CALL                             R3 2 1
        8 DUPTABLE                         R1 K3 [{"ScriptEditorService", "StudioService"}]
        9 SETTABLEKS                       R2 R1 K0 ["ScriptEditorService"]
       11 SETTABLEKS                       R3 R1 K2 ["StudioService"]
       13 GETTABLEKS                       R3 R1 K2 ["StudioService"]
       15 GETTABLEKS                       R2 R3 K4 ["ActiveScript"]
       17 JUMPIF                           R2 ; [+8]
       18 DUPTABLE                         R3 K7 [{"success", "errorMessage"}]
       19 LOADB                            R4 0
       20 SETTABLEKS                       R4 R3 K5 ["success"]
       22 LOADK                            R4 K8 ["No script is currently active"]
       23 SETTABLEKS                       R4 R3 K6 ["errorMessage"]
       25 RETURN                           R3 1
       26 GETTABLEKS                       R3 R1 K0 ["ScriptEditorService"]
       28 MOVE                             R5 R2
       29 NAMECALL                         R3 R3 K9 ["FindScriptDocument"]
       31 CALL                             R3 2 1
       32 JUMPIF                           R3 ; [+20]
       33 DUPTABLE                         R4 K11 [{"success", "errorMessage", "script"}]
       34 LOADB                            R5 0
       35 SETTABLEKS                       R5 R4 K5 ["success"]
       37 LOADK                            R5 K12 ["No document found for active script"]
       38 SETTABLEKS                       R5 R4 K6 ["errorMessage"]
       40 DUPTABLE                         R5 K15 [{"Name", "FullName"}]
       41 GETTABLEKS                       R6 R2 K13 ["Name"]
       43 SETTABLEKS                       R6 R5 K13 ["Name"]
       45 NAMECALL                         R6 R2 K16 ["GetFullName"]
       47 CALL                             R6 1 1
       48 SETTABLEKS                       R6 R5 K14 ["FullName"]
       50 SETTABLEKS                       R5 R4 K10 ["script"]
       52 RETURN                           R4 1
       53 NAMECALL                         R4 R3 K17 ["GetSelectedText"]
       55 CALL                             R4 1 1
       56 MOVE                             R5 R4
       57 JUMPIFNOT                        R5 ; [+4]
       58 JUMPIFNOTEQKS                    R4 K18 [""] ; [+2]
       60 LOADB                            R5 0 +1
       61 LOADB                            R5 1
       62 NAMECALL                         R6 R3 K19 ["GetSelectionStart"]
       64 CALL                             R6 1 2
       65 NAMECALL                         R8 R3 K20 ["GetSelectionEnd"]
       67 CALL                             R8 1 2
       68 DUPTABLE                         R10 K25 [{"success", "script", "selectedText", "hasSelection", "selectionStart", "selectionEnd"}]
       69 LOADB                            R11 1
       70 SETTABLEKS                       R11 R10 K5 ["success"]
       72 DUPTABLE                         R11 K15 [{"Name", "FullName"}]
       73 GETTABLEKS                       R12 R2 K13 ["Name"]
       75 SETTABLEKS                       R12 R11 K13 ["Name"]
       77 NAMECALL                         R12 R2 K16 ["GetFullName"]
       79 CALL                             R12 1 1
       80 SETTABLEKS                       R12 R11 K14 ["FullName"]
       82 SETTABLEKS                       R11 R10 K10 ["script"]
       84 JUMPIFNOT                        R5 ; [+2]
       85 MOVE                             R11 R4
       86 JUMPIF                           R11 ; [+1]
       87 LOADNIL                          R11
       88 SETTABLEKS                       R11 R10 K21 ["selectedText"]
       90 SETTABLEKS                       R5 R10 K22 ["hasSelection"]
       92 DUPTABLE                         R11 K28 [{"line", "char"}]
       93 SETTABLEKS                       R6 R11 K26 ["line"]
       95 SETTABLEKS                       R7 R11 K27 ["char"]
       97 SETTABLEKS                       R11 R10 K23 ["selectionStart"]
       99 DUPTABLE                         R11 K28 [{"line", "char"}]
      100 SETTABLEKS                       R8 R11 K26 ["line"]
      102 SETTABLEKS                       R9 R11 K27 ["char"]
      104 SETTABLEKS                       R11 R10 K24 ["selectionEnd"]
      106 RETURN                           R10 1

PROTO_2:
        0 LOADK                            R4 K0 ["ScriptEditorService"]
        1 NAMECALL                         R2 R0 K1 ["GetService"]
        3 CALL                             R2 2 1
        4 LOADK                            R5 K2 ["StudioService"]
        5 NAMECALL                         R3 R0 K1 ["GetService"]
        7 CALL                             R3 2 1
        8 DUPTABLE                         R1 K3 [{"ScriptEditorService", "StudioService"}]
        9 SETTABLEKS                       R2 R1 K0 ["ScriptEditorService"]
       11 SETTABLEKS                       R3 R1 K2 ["StudioService"]
       13 GETTABLEKS                       R2 R1 K0 ["ScriptEditorService"]
       15 NAMECALL                         R2 R2 K4 ["GetScriptDocuments"]
       17 CALL                             R2 1 1
       18 NEWTABLE                         R3 0 0
       20 LOADN                            R4 1
       21 MOVE                             R5 R2
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 NAMECALL                         R10 R9 K5 ["GetScript"]
       27 CALL                             R10 1 1
       28 JUMPIFNOT                        R10 ; [+19]
       29 DUPTABLE                         R13 K9 [{"index", "scriptName", "scriptFullName"}]
       30 SETTABLEKS                       R4 R13 K6 ["index"]
       32 GETTABLEKS                       R14 R10 K10 ["Name"]
       34 SETTABLEKS                       R14 R13 K7 ["scriptName"]
       36 NAMECALL                         R14 R10 K11 ["GetFullName"]
       38 CALL                             R14 1 1
       39 SETTABLEKS                       R14 R13 K8 ["scriptFullName"]
       41 FASTCALL2                        TABLE_INSERT R3 R13 ; [+4]
       43 MOVE                             R12 R3
       44 GETIMPORT                        R11 K14 [table.insert]
       46 CALL                             R11 2 0
       47 ADDK                             R4 R4 K15 [1]
       48 FORGLOOP                         R5 2 ; [-24]
       50 RETURN                           R3 1

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getActiveScriptInfo"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getActiveScriptInfo"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["success"]
        6 JUMPIFNOT                        R1 ; [+8]
        7 GETTABLEKS                       R1 R0 K2 ["script"]
        9 JUMPIFNOT                        R1 ; [+5]
       10 GETTABLEKS                       R2 R0 K2 ["script"]
       12 GETTABLEKS                       R1 R2 K3 ["Name"]
       14 RETURN                           R1 1
       15 LOADNIL                          R1
       16 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getActiveScriptInfo"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["success"]
        6 JUMPIFNOT                        R1 ; [+8]
        7 GETTABLEKS                       R1 R0 K2 ["script"]
        9 JUMPIFNOT                        R1 ; [+5]
       10 GETTABLEKS                       R2 R0 K2 ["script"]
       12 GETTABLEKS                       R1 R2 K3 ["FullName"]
       14 RETURN                           R1 1
       15 LOADNIL                          R1
       16 RETURN                           R1 1

PROTO_11:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["HttpService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K4 ["getActiveScriptInfo"]
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
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["StudioNetworking"]
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
