PROTO_0:
        0 DUPTABLE                         R1 K6 [{"_ctrlDown", "_shiftDown", "_selected", "_expanded", "_onSelectedChanged", "_onExpandedChanged"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["_ctrlDown"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["_shiftDown"]
        7 NEWTABLE                         R2 0 0
        9 SETTABLEKS                       R2 R1 K2 ["_selected"]
       11 NEWTABLE                         R2 0 0
       13 SETTABLEKS                       R2 R1 K3 ["_expanded"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K7 ["new"]
       18 CALL                             R2 0 1
       19 SETTABLEKS                       R2 R1 K4 ["_onSelectedChanged"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K7 ["new"]
       24 CALL                             R2 0 1
       25 SETTABLEKS                       R2 R1 K5 ["_onExpandedChanged"]
       27 GETUPVAL                         R2 1
       28 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       30 GETIMPORT                        R0 K9 [setmetatable]
       32 CALL                             R0 2 1
       33 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_onExpandedChanged"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["Connect"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_onSelectedChanged"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["Connect"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R1 K0 ["KeyCode"]
        3 NAMECALL                         R2 R2 K1 ["isShift"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+4]
        7 LOADB                            R2 1
        8 SETTABLEKS                       R2 R0 K2 ["_shiftDown"]
       10 JUMP                             ; [+10]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R4 R1 K0 ["KeyCode"]
       14 NAMECALL                         R2 R2 K3 ["isControl"]
       16 CALL                             R2 2 1
       17 JUMPIFNOT                        R2 ; [+3]
       18 LOADB                            R2 1
       19 SETTABLEKS                       R2 R0 K4 ["_ctrlDown"]
       21 GETTABLEKS                       R2 R0 K4 ["_ctrlDown"]
       23 JUMPIFNOT                        R2 ; [+14]
       24 GETTABLEKS                       R2 R0 K2 ["_shiftDown"]
       26 JUMPIFNOT                        R2 ; [+11]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R4 R1 K0 ["KeyCode"]
       30 NAMECALL                         R2 R2 K5 ["isLetterA"]
       32 CALL                             R2 2 1
       33 JUMPIFNOT                        R2 ; [+4]
       34 LOADB                            R4 0
       35 NAMECALL                         R2 R0 K6 ["selectAll"]
       37 CALL                             R2 2 0
       38 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R1 K0 ["KeyCode"]
        3 NAMECALL                         R2 R2 K1 ["isShift"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+4]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R0 K2 ["_shiftDown"]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R4 R1 K0 ["KeyCode"]
       14 NAMECALL                         R2 R2 K3 ["isControl"]
       16 CALL                             R2 2 1
       17 JUMPIFNOT                        R2 ; [+3]
       18 LOADB                            R2 0
       19 SETTABLEKS                       R2 R0 K4 ["_ctrlDown"]
       21 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_items"]
        2 RETURN                           R1 1

PROTO_6:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_items"]
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K1 ["_expanded"]
        7 NEWTABLE                         R1 0 0
        9 SETTABLEKS                       R1 R0 K2 ["_selected"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K3 ["_previousSelected"]
       14 LOADB                            R1 0
       15 SETTABLEKS                       R1 R0 K4 ["_shiftDown"]
       17 LOADB                            R1 0
       18 SETTABLEKS                       R1 R0 K5 ["_ctrlDown"]
       20 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R5 0 0
        2 MOVE                             R6 R2
        3 LOADNIL                          R7
        4 LOADNIL                          R8
        5 FORGPREP                         R6
        6 JUMPIFNOT                        R4 ; [+4]
        7 GETTABLEKS                       R11 R10 K0 ["instanceName"]
        9 JUMPIFNOTEQ                      R4 R11 ; [+82]
       11 DUPTABLE                         R13 K10 [{"key", "codeText", "text", "instanceName", "range", "url", "scriptId", "suggestions", "statuses", "issueType"}]
       12 MOVE                             R15 R1
       13 LOADK                            R16 K11 ["."]
       14 MOVE                             R17 R9
       15 CONCAT                           R14 R15 R17
       16 SETTABLEKS                       R14 R13 K1 ["key"]
       18 GETTABLEKS                       R14 R10 K12 ["code"]
       20 SETTABLEKS                       R14 R13 K2 ["codeText"]
       22 GETTABLEKS                       R14 R10 K13 ["message"]
       24 SETTABLEKS                       R14 R13 K3 ["text"]
       26 GETTABLEKS                       R14 R10 K0 ["instanceName"]
       28 SETTABLEKS                       R14 R13 K0 ["instanceName"]
       30 GETTABLEKS                       R14 R10 K4 ["range"]
       32 SETTABLEKS                       R14 R13 K4 ["range"]
       34 GETTABLEKS                       R15 R10 K14 ["codeDescription"]
       36 JUMPIFNOT                        R15 ; [+5]
       37 GETTABLEKS                       R15 R10 K14 ["codeDescription"]
       39 GETTABLEKS                       R14 R15 K15 ["href"]
       41 JUMP                             ; [+1]
       42 LOADK                            R14 K16 [""]
       43 SETTABLEKS                       R14 R13 K5 ["url"]
       45 SETTABLEKS                       R1 R13 K6 ["scriptId"]
       47 GETTABLEKS                       R14 R10 K7 ["suggestions"]
       49 SETTABLEKS                       R14 R13 K7 ["suggestions"]
       51 GETTABLEKS                       R15 R10 K17 ["severity"]
       53 GETIMPORT                        R18 K19 [Enum]
       55 GETTABLEKS                       R17 R18 K20 ["Severity"]
       57 GETTABLEKS                       R16 R17 K21 ["Warning"]
       59 JUMPIFNOTEQ                      R15 R16 ; [+11]
       61 NEWTABLE                         R14 1 0
       63 GETUPVAL                         R17 0
       64 GETTABLEKS                       R16 R17 K22 ["ScriptStatus"]
       66 GETTABLEKS                       R15 R16 K21 ["Warning"]
       68 LOADN                            R16 1
       69 SETTABLE                         R16 R14 R15
       70 JUMP                             ; [+9]
       71 NEWTABLE                         R14 1 0
       73 GETUPVAL                         R17 0
       74 GETTABLEKS                       R16 R17 K22 ["ScriptStatus"]
       76 GETTABLEKS                       R15 R16 K23 ["Error"]
       78 LOADN                            R16 1
       79 SETTABLE                         R16 R14 R15
       80 SETTABLEKS                       R14 R13 K8 ["statuses"]
       82 GETTABLEKS                       R14 R10 K9 ["issueType"]
       84 SETTABLEKS                       R14 R13 K9 ["issueType"]
       86 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       88 MOVE                             R12 R5
       89 GETIMPORT                        R11 K26 [table.insert]
       91 CALL                             R11 2 0
       92 FORGLOOP                         R6 2 ; [-87]
       94 RETURN                           R5 1

PROTO_8:
        0 MOVE                             R11 R3
        1 NAMECALL                         R9 R4 K0 ["getScriptInstanceFromGUID"]
        3 CALL                             R9 2 1
        4 GETUPVAL                         R10 0
        5 NAMECALL                         R11 R9 K1 ["GetFullName"]
        7 CALL                             R11 1 -1
        8 CALL                             R10 -1 1
        9 JUMPIFNOT                        R2 ; [+10]
       10 MOVE                             R13 R3
       11 NAMECALL                         R14 R2 K2 ["Get"]
       13 CALL                             R14 1 1
       14 MOVE                             R15 R4
       15 MOVE                             R16 R8
       16 NAMECALL                         R11 R0 K3 ["buildDiagnosticListForScript"]
       18 CALL                             R11 5 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R11
       21 NEWTABLE                         R12 0 0
       23 JUMPIFNOT                        R5 ; [+23]
       24 JUMPIFNOT                        R2 ; [+14]
       25 NAMECALL                         R13 R2 K4 ["HasWarnings"]
       27 CALL                             R13 1 1
       28 JUMPIFNOT                        R13 ; [+10]
       29 GETUPVAL                         R15 1
       30 GETTABLEKS                       R14 R15 K5 ["ScriptStatus"]
       32 GETTABLEKS                       R13 R14 K6 ["Warning"]
       34 NAMECALL                         R14 R2 K7 ["WarningCount"]
       36 CALL                             R14 1 1
       37 SETTABLE                         R14 R12 R13
       38 JUMP                             ; [+36]
       39 GETUPVAL                         R15 1
       40 GETTABLEKS                       R14 R15 K5 ["ScriptStatus"]
       42 GETTABLEKS                       R13 R14 K8 ["Complete"]
       44 LOADN                            R14 1
       45 SETTABLE                         R14 R12 R13
       46 JUMP                             ; [+28]
       47 JUMPIFNOT                        R6 ; [+7]
       48 GETUPVAL                         R15 1
       49 GETTABLEKS                       R14 R15 K5 ["ScriptStatus"]
       51 GETTABLEKS                       R13 R14 K9 ["Reverted"]
       53 LOADN                            R14 1
       54 SETTABLE                         R14 R12 R13
       55 GETUPVAL                         R15 1
       56 GETTABLEKS                       R14 R15 K5 ["ScriptStatus"]
       58 GETTABLEKS                       R13 R14 K10 ["Error"]
       60 MOVE                             R16 R8
       61 NAMECALL                         R14 R2 K11 ["ErrorCount"]
       63 CALL                             R14 2 1
       64 SETTABLE                         R14 R12 R13
       65 GETUPVAL                         R15 1
       66 GETTABLEKS                       R14 R15 K5 ["ScriptStatus"]
       68 GETTABLEKS                       R13 R14 K6 ["Warning"]
       70 MOVE                             R16 R8
       71 NAMECALL                         R14 R2 K7 ["WarningCount"]
       73 CALL                             R14 2 1
       74 SETTABLE                         R14 R12 R13
       75 JUMPIFNOT                        R8 ; [+5]
       76 JUMPIFNOT                        R8 ; [+23]
       77 LENGTH                           R13 R11
       78 LOADN                            R14 0
       79 JUMPIFNOTLT                      R14 R13 ; [+20]
       81 DUPTABLE                         R15 K18 [{"key", "text", "scriptId", "children", "initialIssueCount", "statuses"}]
       82 SETTABLEKS                       R3 R15 K12 ["key"]
       84 SETTABLEKS                       R10 R15 K13 ["text"]
       86 SETTABLEKS                       R3 R15 K14 ["scriptId"]
       88 SETTABLEKS                       R11 R15 K15 ["children"]
       90 SETTABLEKS                       R7 R15 K16 ["initialIssueCount"]
       92 SETTABLEKS                       R12 R15 K17 ["statuses"]
       94 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       96 MOVE                             R14 R1
       97 GETIMPORT                        R13 K21 [table.insert]
       99 CALL                             R13 2 0
      100 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["scriptId"]
        2 JUMPIFNOT                        R2 ; [+43]
        3 GETTABLEKS                       R2 R1 K0 ["scriptId"]
        5 JUMPIFNOT                        R2 ; [+40]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R4 R0 K0 ["scriptId"]
        9 NAMECALL                         R2 R2 K1 ["getScriptInstanceFromGUID"]
       11 CALL                             R2 2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R5 R1 K0 ["scriptId"]
       15 NAMECALL                         R3 R3 K1 ["getScriptInstanceFromGUID"]
       17 CALL                             R3 2 1
       18 NAMECALL                         R4 R2 K2 ["GetFullName"]
       20 CALL                             R4 1 1
       21 NAMECALL                         R5 R3 K2 ["GetFullName"]
       23 CALL                             R5 1 1
       24 JUMPIFNOTEQ                      R4 R5 ; [+10]
       26 GETTABLEKS                       R5 R0 K0 ["scriptId"]
       28 GETTABLEKS                       R6 R1 K0 ["scriptId"]
       30 JUMPIFLT                         R5 R6 ; [+2]
       32 LOADB                            R4 0 +1
       33 LOADB                            R4 1
       34 RETURN                           R4 1
       35 NAMECALL                         R5 R2 K2 ["GetFullName"]
       37 CALL                             R5 1 1
       38 NAMECALL                         R6 R3 K2 ["GetFullName"]
       40 CALL                             R6 1 1
       41 JUMPIFLT                         R5 R6 ; [+2]
       43 LOADB                            R4 0 +1
       44 LOADB                            R4 1
       45 RETURN                           R4 1
       46 LOADB                            R2 0
       47 RETURN                           R2 1

PROTO_10:
        0 NEWTABLE                         R2 0 0
        2 SETTABLEKS                       R2 R0 K0 ["_items"]
        4 GETTABLEKS                       R2 R1 K1 ["diagnostics"]
        6 GETTABLEKS                       R3 R1 K2 ["revertedScripts"]
        8 GETTABLEKS                       R4 R1 K3 ["completedScripts"]
       10 GETTABLEKS                       R5 R1 K4 ["initialIssueCounts"]
       12 GETTABLEKS                       R6 R1 K5 ["filter"]
       14 GETTABLEKS                       R7 R1 K6 ["ScriptConversionContext"]
       16 MOVE                             R8 R2
       17 LOADNIL                          R9
       18 LOADNIL                          R10
       19 FORGPREP                         R8
       20 GETTABLEKS                       R15 R0 K0 ["_items"]
       22 MOVE                             R16 R12
       23 MOVE                             R17 R11
       24 MOVE                             R18 R7
       25 GETTABLE                         R19 R4 R11
       26 GETTABLE                         R20 R3 R11
       27 GETTABLE                         R21 R5 R11
       28 MOVE                             R22 R6
       29 NAMECALL                         R13 R0 K7 ["addScriptListItem"]
       31 CALL                             R13 9 0
       32 FORGLOOP                         R8 2 ; [-13]
       34 GETIMPORT                        R8 K10 [table.sort]
       36 GETTABLEKS                       R9 R0 K0 ["_items"]
       38 NEWCLOSURE                       R10 P0
       39 CAPTURE                          VAL R7
       40 CALL                             R8 2 0
       41 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["_items"]
        2 JUMPIF                           R2 ; [+3]
        3 NEWTABLE                         R2 0 0
        5 RETURN                           R2 1
        6 NEWTABLE                         R2 0 0
        8 GETTABLEKS                       R3 R0 K0 ["_items"]
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       15 MOVE                             R9 R2
       16 MOVE                             R10 R7
       17 GETIMPORT                        R8 K3 [table.insert]
       19 CALL                             R8 2 0
       20 JUMPIF                           R1 ; [+6]
       21 GETTABLEKS                       R9 R0 K4 ["_expanded"]
       23 GETTABLEKS                       R10 R7 K5 ["key"]
       25 GETTABLE                         R8 R9 R10
       26 JUMPIFNOT                        R8 ; [+38]
       27 GETTABLEKS                       R8 R7 K6 ["children"]
       29 LOADNIL                          R9
       30 LOADNIL                          R10
       31 FORGPREP                         R8
       32 FASTCALL2                        TABLE_INSERT R2 R12 ; [+5]
       34 MOVE                             R14 R2
       35 MOVE                             R15 R12
       36 GETIMPORT                        R13 K3 [table.insert]
       38 CALL                             R13 2 0
       39 JUMPIF                           R1 ; [+6]
       40 GETTABLEKS                       R14 R0 K4 ["_expanded"]
       42 GETTABLEKS                       R15 R12 K5 ["key"]
       44 GETTABLE                         R13 R14 R15
       45 JUMPIFNOT                        R13 ; [+17]
       46 GETTABLEKS                       R13 R12 K6 ["children"]
       48 JUMPIFNOT                        R13 ; [+14]
       49 GETTABLEKS                       R13 R12 K6 ["children"]
       51 LOADNIL                          R14
       52 LOADNIL                          R15
       53 FORGPREP                         R13
       54 FASTCALL2                        TABLE_INSERT R2 R17 ; [+5]
       56 MOVE                             R19 R2
       57 MOVE                             R20 R17
       58 GETIMPORT                        R18 K3 [table.insert]
       60 CALL                             R18 2 0
       61 FORGLOOP                         R13 2 ; [-8]
       63 FORGLOOP                         R8 2 ; [-32]
       65 FORGLOOP                         R3 2 ; [-53]
       67 RETURN                           R2 1

PROTO_12:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_items"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R8 R0 K1 ["_expanded"]
        9 GETTABLEKS                       R9 R6 K2 ["key"]
       11 GETTABLE                         R7 R8 R9
       12 JUMPIFNOT                        R7 ; [+2]
       13 LOADB                            R7 1
       14 SETTABLE                         R7 R1 R6
       15 FORGLOOP                         R2 2 ; [-9]
       17 RETURN                           R1 1

PROTO_13:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_items"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETTABLEKS                       R8 R0 K1 ["_selected"]
        9 GETTABLEKS                       R9 R6 K2 ["key"]
       11 GETTABLE                         R7 R8 R9
       12 JUMPIFNOT                        R7 ; [+7]
       13 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       15 MOVE                             R8 R1
       16 MOVE                             R9 R6
       17 GETIMPORT                        R7 K5 [table.insert]
       19 CALL                             R7 2 0
       20 GETTABLEKS                       R7 R6 K6 ["children"]
       22 LOADNIL                          R8
       23 LOADNIL                          R9
       24 FORGPREP                         R7
       25 GETTABLEKS                       R13 R0 K1 ["_selected"]
       27 GETTABLEKS                       R14 R11 K2 ["key"]
       29 GETTABLE                         R12 R13 R14
       30 JUMPIFNOT                        R12 ; [+7]
       31 FASTCALL2                        TABLE_INSERT R1 R11 ; [+5]
       33 MOVE                             R13 R1
       34 MOVE                             R14 R11
       35 GETIMPORT                        R12 K5 [table.insert]
       37 CALL                             R12 2 0
       38 FORGLOOP                         R7 2 ; [-14]
       40 FORGLOOP                         R2 2 ; [-34]
       42 RETURN                           R1 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_expanded"]
        2 GETTABLEKS                       R3 R1 K1 ["key"]
        4 GETTABLEKS                       R6 R0 K0 ["_expanded"]
        6 GETTABLEKS                       R7 R1 K1 ["key"]
        8 GETTABLE                         R5 R6 R7
        9 NOT                              R4 R5
       10 SETTABLE                         R4 R2 R3
       11 GETTABLEKS                       R2 R0 K2 ["_onExpandedChanged"]
       13 NAMECALL                         R2 R2 K3 ["Fire"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_15:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["_selected"]
        4 GETTABLEKS                       R1 R0 K1 ["_onSelectedChanged"]
        6 NAMECALL                         R1 R1 K2 ["Fire"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_16:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 MOVE                             R5 R1
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 GETTABLEKS                       R10 R9 K0 ["key"]
        8 GETTABLEKS                       R11 R2 K0 ["key"]
       10 JUMPIFNOTEQ                      R10 R11 ; [+3]
       12 MOVE                             R3 R8
       13 JUMPIF                           R4 ; [+10]
       14 GETTABLEKS                       R10 R9 K0 ["key"]
       16 GETTABLEKS                       R11 R0 K1 ["_previousSelected"]
       18 JUMPIFNOTEQ                      R10 R11 ; [+3]
       20 MOVE                             R4 R8
       21 JUMPIF                           R3 ; [+2]
       22 FORGLOOP                         R5 2 ; [-17]
       24 RETURN                           R3 2

PROTO_17:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["flattenItems"]
        3 CALL                             R2 2 1
        4 MOVE                             R3 R2
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLEKS                       R9 R0 K1 ["_selected"]
       10 GETTABLEKS                       R10 R7 K2 ["key"]
       12 GETTABLE                         R8 R9 R10
       13 JUMPIF                           R8 ; [+2]
       14 LOADB                            R8 0
       15 RETURN                           R8 1
       16 FORGLOOP                         R3 2 ; [-9]
       18 LOADB                            R3 1
       19 RETURN                           R3 1

PROTO_18:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["flattenItems"]
        3 CALL                             R2 2 1
        4 MOVE                             R3 R2
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 GETTABLEKS                       R8 R0 K1 ["_selected"]
       10 GETTABLEKS                       R9 R7 K2 ["key"]
       12 LOADB                            R10 1
       13 SETTABLE                         R10 R8 R9
       14 FORGLOOP                         R3 2 ; [-7]
       16 LOADNIL                          R3
       17 SETTABLEKS                       R3 R0 K3 ["_previousSelected"]
       19 GETTABLEKS                       R3 R0 K4 ["_onSelectedChanged"]
       21 NAMECALL                         R3 R3 K5 ["Fire"]
       23 CALL                             R3 1 0
       24 RETURN                           R0 0

PROTO_19:
        0 LOADB                            R4 0
        1 NAMECALL                         R2 R0 K0 ["flattenItems"]
        3 CALL                             R2 2 1
        4 MOVE                             R5 R2
        5 MOVE                             R6 R1
        6 NAMECALL                         R3 R0 K1 ["findCurrentAndPreviousSelectionIndex"]
        8 CALL                             R3 3 2
        9 JUMPIF                           R3 ; [+1]
       10 RETURN                           R0 0
       11 JUMPIF                           R4 ; [+9]
       12 NEWTABLE                         R5 1 0
       14 GETTABLEKS                       R6 R1 K2 ["key"]
       16 LOADB                            R7 1
       17 SETTABLE                         R7 R5 R6
       18 SETTABLEKS                       R5 R0 K3 ["_selected"]
       20 RETURN                           R0 0
       21 FASTCALL2                        MATH_MIN R3 R4 ; [+5]
       23 MOVE                             R6 R3
       24 MOVE                             R7 R4
       25 GETIMPORT                        R5 K6 [math.min]
       27 CALL                             R5 2 1
       28 FASTCALL2                        MATH_MAX R3 R4 ; [+5]
       30 MOVE                             R7 R3
       31 MOVE                             R8 R4
       32 GETIMPORT                        R6 K8 [math.max]
       34 CALL                             R6 2 1
       35 MOVE                             R9 R5
       36 MOVE                             R7 R6
       37 LOADN                            R8 1
       38 FORNPREP                         R7
       39 GETTABLEKS                       R10 R0 K3 ["_selected"]
       41 GETTABLE                         R12 R2 R9
       42 GETTABLEKS                       R11 R12 K2 ["key"]
       44 LOADB                            R12 1
       45 SETTABLE                         R12 R10 R11
       46 FORNLOOP                         R7
       47 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["_selected"]
        2 GETTABLEKS                       R3 R1 K1 ["key"]
        4 GETTABLEKS                       R6 R0 K0 ["_selected"]
        6 GETTABLEKS                       R7 R1 K1 ["key"]
        8 GETTABLE                         R5 R6 R7
        9 NOT                              R4 R5
       10 SETTABLE                         R4 R2 R3
       11 GETTABLEKS                       R2 R1 K2 ["children"]
       13 JUMPIFNOT                        R2 ; [+17]
       14 GETTABLEKS                       R2 R1 K2 ["children"]
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETTABLEKS                       R7 R0 K0 ["_selected"]
       21 GETTABLEKS                       R8 R6 K1 ["key"]
       23 GETTABLEKS                       R10 R0 K0 ["_selected"]
       25 GETTABLEKS                       R11 R1 K1 ["key"]
       27 GETTABLE                         R9 R10 R11
       28 SETTABLE                         R9 R7 R8
       29 FORGLOOP                         R2 2 ; [-11]
       31 RETURN                           R0 0

PROTO_21:
        0 LOADN                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["_selected"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADN                            R7 1
        7 JUMPIFNOTLT                      R7 R1 ; [+3]
        9 LOADB                            R7 1
       10 RETURN                           R7 1
       11 ADDK                             R1 R1 K1 [1]
       12 FORGLOOP                         R2 1 ; [-7]
       14 LOADB                            R2 0
       15 RETURN                           R2 1

PROTO_22:
        0 GETTABLEKS                       R4 R0 K0 ["_selected"]
        2 GETTABLEKS                       R5 R1 K1 ["key"]
        4 GETTABLE                         R3 R4 R5
        5 JUMPIFNOT                        R3 ; [+2]
        6 JUMPIFNOT                        R2 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R4 R0 K0 ["_selected"]
       10 GETTABLEKS                       R5 R1 K1 ["key"]
       12 GETTABLE                         R3 R4 R5
       13 JUMPIFNOT                        R3 ; [+4]
       14 NAMECALL                         R3 R0 K2 ["hasMultiSelection"]
       16 CALL                             R3 1 1
       17 JUMPIFNOT                        R3 ; [+8]
       18 NEWTABLE                         R3 1 0
       20 GETTABLEKS                       R4 R1 K1 ["key"]
       22 LOADB                            R5 1
       23 SETTABLE                         R5 R3 R4
       24 SETTABLEKS                       R3 R0 K0 ["_selected"]
       26 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R4 R0 K0 ["_selected"]
        2 GETTABLEKS                       R5 R1 K1 ["key"]
        4 GETTABLE                         R3 R4 R5
        5 JUMPIFEQKB                       R3 TRUE ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["goToScript"]
        3 GETTABLEKS                       R4 R1 K1 ["scriptId"]
        5 GETTABLEKS                       R5 R1 K2 ["range"]
        7 MOVE                             R6 R2
        8 CALL                             R3 3 0
        9 RETURN                           R0 0

PROTO_25:
        0 GETTABLEKS                       R3 R0 K0 ["_shiftDown"]
        2 JUMPIFNOT                        R3 ; [+5]
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R0 K1 ["shiftSelectItem"]
        6 CALL                             R3 2 0
        7 JUMP                             ; [+11]
        8 JUMPIFNOT                        R2 ; [+6]
        9 MOVE                             R5 R1
       10 MOVE                             R6 R2
       11 NAMECALL                         R3 R0 K2 ["plainSelectItem"]
       13 CALL                             R3 3 0
       14 JUMP                             ; [+4]
       15 MOVE                             R5 R1
       16 NAMECALL                         R3 R0 K3 ["toggleSelectItem"]
       18 CALL                             R3 2 0
       19 GETTABLEKS                       R3 R1 K4 ["key"]
       21 SETTABLEKS                       R3 R0 K5 ["_previousSelected"]
       23 GETTABLEKS                       R3 R0 K6 ["_onSelectedChanged"]
       25 NAMECALL                         R3 R3 K7 ["Fire"]
       27 CALL                             R3 1 0
       28 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["resetSelected"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["resetSelected"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_28:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 NAMECALL                         R5 R0 K0 ["getSelectionList"]
        6 CALL                             R5 1 1
        7 MOVE                             R6 R5
        8 LOADNIL                          R7
        9 LOADNIL                          R8
       10 FORGPREP                         R6
       11 GETTABLEKS                       R11 R10 K1 ["range"]
       13 JUMPIFNOT                        R11 ; [+8]
       14 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       16 MOVE                             R12 R4
       17 MOVE                             R13 R10
       18 GETIMPORT                        R11 K4 [table.insert]
       20 CALL                             R11 2 0
       21 JUMP                             ; [+10]
       22 GETTABLEKS                       R11 R10 K5 ["scriptId"]
       24 JUMPIFNOT                        R11 ; [+7]
       25 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       27 MOVE                             R12 R3
       28 MOVE                             R13 R10
       29 GETIMPORT                        R11 K4 [table.insert]
       31 CALL                             R11 2 0
       32 FORGLOOP                         R6 2 ; [-22]
       34 DUPTABLE                         R6 K10 [{"selectedScriptItems", "selectedRangeItems", "onScriptsReverted", "onSuggestionApplied"}]
       35 SETTABLEKS                       R3 R6 K6 ["selectedScriptItems"]
       37 SETTABLEKS                       R4 R6 K7 ["selectedRangeItems"]
       39 NEWCLOSURE                       R7 P0
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R7 R6 K8 ["onScriptsReverted"]
       43 NEWCLOSURE                       R7 P1
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R7 R6 K9 ["onSuggestionApplied"]
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R8 R9 K11 ["Dictionary"]
       50 GETTABLEKS                       R7 R8 K12 ["join"]
       52 MOVE                             R8 R1
       53 MOVE                             R9 R6
       54 CALL                             R7 2 -1
       55 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Util"]
       23 GETTABLEKS                       R4 R3 K10 ["Signal"]
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R7 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R7 K12 ["Types"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R9 R0 K11 ["Src"]
       36 GETTABLEKS                       R8 R9 K9 ["Util"]
       38 GETTABLEKS                       R7 R8 K13 ["Input"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R11 R0 K11 ["Src"]
       45 GETTABLEKS                       R10 R11 K9 ["Util"]
       47 GETTABLEKS                       R9 R10 K14 ["ScriptAnalysis"]
       49 GETTABLEKS                       R8 R9 K15 ["Constants"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R11 R0 K11 ["Src"]
       56 GETTABLEKS                       R10 R11 K9 ["Util"]
       58 GETTABLEKS                       R9 R10 K16 ["ScriptReplacement"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R12 R0 K11 ["Src"]
       65 GETTABLEKS                       R11 R12 K9 ["Util"]
       67 GETTABLEKS                       R10 R11 K17 ["sanitizeString"]
       69 CALL                             R9 1 1
       70 NEWTABLE                         R10 32 0
       72 SETTABLEKS                       R10 R10 K18 ["__index"]
       74 DUPCLOSURE                       R11 K19 [PROTO_0]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R10
       77 SETTABLEKS                       R11 R10 K20 ["new"]
       79 DUPCLOSURE                       R11 K21 [PROTO_1]
       80 SETTABLEKS                       R11 R10 K22 ["connectToExpandedChanged"]
       82 DUPCLOSURE                       R11 K23 [PROTO_2]
       83 SETTABLEKS                       R11 R10 K24 ["connectToSelectedChanged"]
       85 DUPCLOSURE                       R11 K25 [PROTO_3]
       86 CAPTURE                          VAL R6
       87 SETTABLEKS                       R11 R10 K26 ["onKeyPressed"]
       89 DUPCLOSURE                       R11 K27 [PROTO_4]
       90 CAPTURE                          VAL R6
       91 SETTABLEKS                       R11 R10 K28 ["onKeyReleased"]
       93 DUPCLOSURE                       R11 K29 [PROTO_5]
       94 SETTABLEKS                       R11 R10 K30 ["getItems"]
       96 DUPCLOSURE                       R11 K31 [PROTO_6]
       97 SETTABLEKS                       R11 R10 K32 ["terminate"]
       99 DUPCLOSURE                       R11 K33 [PROTO_7]
      100 CAPTURE                          VAL R7
      101 SETTABLEKS                       R11 R10 K34 ["buildDiagnosticListForScript"]
      103 DUPCLOSURE                       R11 K35 [PROTO_8]
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R7
      106 SETTABLEKS                       R11 R10 K36 ["addScriptListItem"]
      108 DUPCLOSURE                       R11 K37 [PROTO_10]
      109 SETTABLEKS                       R11 R10 K38 ["buildTreeItems"]
      111 DUPCLOSURE                       R11 K39 [PROTO_11]
      112 SETTABLEKS                       R11 R10 K40 ["flattenItems"]
      114 DUPCLOSURE                       R11 K41 [PROTO_12]
      115 SETTABLEKS                       R11 R10 K42 ["getExpansionTable"]
      117 DUPCLOSURE                       R11 K43 [PROTO_13]
      118 SETTABLEKS                       R11 R10 K44 ["getSelectionList"]
      120 DUPCLOSURE                       R11 K45 [PROTO_14]
      121 SETTABLEKS                       R11 R10 K46 ["toggleExpanded"]
      123 DUPCLOSURE                       R11 K47 [PROTO_15]
      124 SETTABLEKS                       R11 R10 K48 ["resetSelected"]
      126 DUPCLOSURE                       R11 K49 [PROTO_16]
      127 SETTABLEKS                       R11 R10 K50 ["findCurrentAndPreviousSelectionIndex"]
      129 DUPCLOSURE                       R11 K51 [PROTO_17]
      130 SETTABLEKS                       R11 R10 K52 ["areAllSelected"]
      132 DUPCLOSURE                       R11 K53 [PROTO_18]
      133 SETTABLEKS                       R11 R10 K54 ["selectAll"]
      135 DUPCLOSURE                       R11 K55 [PROTO_19]
      136 SETTABLEKS                       R11 R10 K56 ["shiftSelectItem"]
      138 DUPCLOSURE                       R11 K57 [PROTO_20]
      139 SETTABLEKS                       R11 R10 K58 ["toggleSelectItem"]
      141 DUPCLOSURE                       R11 K59 [PROTO_21]
      142 SETTABLEKS                       R11 R10 K60 ["hasMultiSelection"]
      144 DUPCLOSURE                       R11 K61 [PROTO_22]
      145 SETTABLEKS                       R11 R10 K62 ["plainSelectItem"]
      147 DUPCLOSURE                       R11 K63 [PROTO_23]
      148 SETTABLEKS                       R11 R10 K64 ["itemIsSelected"]
      150 DUPCLOSURE                       R11 K65 [PROTO_24]
      151 CAPTURE                          VAL R8
      152 SETTABLEKS                       R11 R10 K66 ["onItemDoubleClicked"]
      154 DUPCLOSURE                       R11 K67 [PROTO_25]
      155 SETTABLEKS                       R11 R10 K68 ["onItemClicked"]
      157 DUPCLOSURE                       R11 K69 [PROTO_28]
      158 CAPTURE                          VAL R1
      159 SETTABLEKS                       R11 R10 K70 ["getRightClickContextInfo"]
      161 RETURN                           R10 1
