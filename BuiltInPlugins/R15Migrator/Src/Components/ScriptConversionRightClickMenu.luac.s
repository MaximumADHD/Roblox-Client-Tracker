PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["selectedScriptItems"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R3 R0 K0 ["selectedScriptItems"]
        5 LENGTH                           R2 R3
        6 JUMPIFEQKN                       R2 K1 [1] ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["selectedRangeItems"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R3 R0 K0 ["selectedRangeItems"]
        5 LENGTH                           R2 R3
        6 JUMPIFEQKN                       R2 K1 [1] ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["selectedRangeItems"]
        2 NOT                              R1 R2
        3 JUMPIF                           R1 ; [+7]
        4 GETTABLEKS                       R3 R0 K0 ["selectedRangeItems"]
        6 LENGTH                           R2 R3
        7 JUMPIFEQKN                       R2 K1 [0] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["selectedScriptItems"]
        2 NOT                              R1 R2
        3 JUMPIF                           R1 ; [+7]
        4 GETTABLEKS                       R3 R0 K0 ["selectedScriptItems"]
        6 LENGTH                           R2 R3
        7 JUMPIFEQKN                       R2 K1 [0] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["RevertScripts"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["ScriptConversionContext"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Localization"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["Analytics"]
       12 CALL                             R0 3 0
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K4 ["onScriptsReverted"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["Plugin"]
        3 GETTABLEKS                       R4 R1 K1 ["Localization"]
        5 GETUPVAL                         R5 1
        6 DUPTABLE                         R6 K3 [{"OnConfirm"}]
        7 NEWCLOSURE                       R7 P0
        8 CAPTURE                          VAL R1
        9 SETTABLEKS                       R7 R6 K2 ["OnConfirm"]
       11 CALL                             R2 4 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedRangeItems"]
        3 JUMPIFNOT                        R0 ; [+7]
        4 GETTABLEKS                       R3 R1 K0 ["selectedRangeItems"]
        6 LENGTH                           R2 R3
        7 JUMPIFEQKN                       R2 K1 [1] ; [+2]
        9 LOADB                            R0 0 +1
       10 LOADB                            R0 1
       11 JUMPIFNOT                        R0 ; [+29]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R2 R1 K2 ["selectedScriptItems"]
       15 NOT                              R0 R2
       16 JUMPIF                           R0 ; [+7]
       17 GETTABLEKS                       R3 R1 K2 ["selectedScriptItems"]
       19 LENGTH                           R2 R3
       20 JUMPIFEQKN                       R2 K3 [0] ; [+2]
       22 LOADB                            R0 0 +1
       23 LOADB                            R0 1
       24 JUMPIFNOT                        R0 ; [+16]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K0 ["selectedRangeItems"]
       28 GETTABLEN                        R0 R1 1
       29 GETUPVAL                         R1 1
       30 GETTABLEKS                       R1 R1 K4 ["goToScript"]
       32 GETTABLEKS                       R2 R0 K5 ["scriptId"]
       34 GETTABLEKS                       R3 R0 K6 ["range"]
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K7 ["ScriptConversionContext"]
       39 CALL                             R1 3 0
       40 RETURN                           R0 0
       41 GETUPVAL                         R1 0
       42 GETTABLEKS                       R1 R1 K2 ["selectedScriptItems"]
       44 GETTABLEN                        R0 R1 1
       45 GETUPVAL                         R1 1
       46 GETTABLEKS                       R1 R1 K4 ["goToScript"]
       48 GETTABLEKS                       R2 R0 K5 ["scriptId"]
       50 LOADNIL                          R3
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R4 R4 K7 ["ScriptConversionContext"]
       54 CALL                             R1 3 0
       55 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R5 K2 [{"Text", "OnItemClicked"}]
        1 GETTABLEKS                       R6 R1 K3 ["Localization"]
        3 LOADK                            R8 K4 ["ScriptConversion"]
        4 LOADK                            R9 K5 ["GoToScript"]
        5 NAMECALL                         R6 R6 K6 ["getText"]
        7 CALL                             R6 3 1
        8 SETTABLEKS                       R6 R5 K0 ["Text"]
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U0
       13 SETTABLEKS                       R6 R5 K1 ["OnItemClicked"]
       15 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       17 MOVE                             R4 R2
       18 GETIMPORT                        R3 K9 [table.insert]
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R4 K1 [{"ShowSeparator"}]
        1 LOADB                            R5 1
        2 SETTABLEKS                       R5 R4 K0 ["ShowSeparator"]
        4 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
        6 MOVE                             R3 R1
        7 GETIMPORT                        R2 K4 [table.insert]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ReplaceWithSuggestion"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["scriptId"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["range"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["ScriptConversionContext"]
       12 GETUPVAL                         R4 2
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K4 ["Localization"]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K5 ["instanceName"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K6 ["Analytics"]
       22 CALL                             R0 7 0
       23 GETUPVAL                         R0 0
       24 GETTABLEKS                       R0 R0 K7 ["onSuggestionApplied"]
       26 CALL                             R0 0 0
       27 GETUPVAL                         R0 0
       28 GETTABLEKS                       R0 R0 K6 ["Analytics"]
       30 LOADK                            R2 K8 ["onScriptSuggestionApplied"]
       31 NAMECALL                         R0 R0 K9 ["getHandler"]
       33 CALL                             R0 2 1
       34 CALL                             R0 0 0
       35 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R4 R1 K0 ["selectedRangeItems"]
        2 GETTABLEN                        R3 R4 1
        3 GETTABLEKS                       R4 R3 K1 ["suggestions"]
        5 MOVE                             R5 R4
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 FORGPREP                         R5
        9 DUPTABLE                         R12 K4 [{"Text", "OnItemClicked"}]
       10 GETTABLEKS                       R13 R1 K5 ["Localization"]
       12 LOADK                            R15 K6 ["ScriptConversion"]
       13 LOADK                            R16 K7 ["ReplaceWith"]
       14 DUPTABLE                         R17 K9 [{"part"}]
       15 SETTABLEKS                       R9 R17 K8 ["part"]
       17 NAMECALL                         R13 R13 K10 ["getText"]
       19 CALL                             R13 4 1
       20 SETTABLEKS                       R13 R12 K2 ["Text"]
       22 NEWCLOSURE                       R13 P0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R9
       26 SETTABLEKS                       R13 R12 K3 ["OnItemClicked"]
       28 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       30 MOVE                             R11 R2
       31 GETIMPORT                        R10 K13 [table.insert]
       33 CALL                             R10 2 0
       34 FORGLOOP                         R5 2 ; [-26]
       36 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["UndoRevert"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["ScriptConversionContext"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Localization"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["Analytics"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R5 K2 [{"Text", "OnItemClicked"}]
        1 GETTABLEKS                       R6 R1 K3 ["Localization"]
        3 LOADK                            R8 K4 ["ScriptConversion"]
        4 LOADK                            R9 K5 ["UndoRevert"]
        5 NAMECALL                         R6 R6 K6 ["getText"]
        7 CALL                             R6 3 1
        8 SETTABLEKS                       R6 R5 K0 ["Text"]
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R6 R5 K1 ["OnItemClicked"]
       14 FASTCALL2                        TABLE_INSERT R2 R5 ; [+4]
       16 MOVE                             R4 R2
       17 GETIMPORT                        R3 K9 [table.insert]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["promptRevertScripts"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R3 R1 K0 ["Localization"]
        2 DUPTABLE                         R6 K3 [{"Text", "OnItemClicked"}]
        3 GETTABLEKS                       R8 R1 K4 ["selectedScriptItems"]
        5 JUMPIFNOT                        R8 ; [+7]
        6 GETTABLEKS                       R10 R1 K4 ["selectedScriptItems"]
        8 LENGTH                           R9 R10
        9 JUMPIFEQKN                       R9 K5 [1] ; [+2]
       11 LOADB                            R8 0 +1
       12 LOADB                            R8 1
       13 JUMPIFNOT                        R8 ; [+6]
       14 LOADK                            R9 K6 ["ScriptConversion"]
       15 LOADK                            R10 K7 ["RevertScript"]
       16 NAMECALL                         R7 R3 K8 ["getText"]
       18 CALL                             R7 3 1
       19 JUMP                             ; [+5]
       20 LOADK                            R9 K6 ["ScriptConversion"]
       21 LOADK                            R10 K9 ["RevertScripts"]
       22 NAMECALL                         R7 R3 K8 ["getText"]
       24 CALL                             R7 3 1
       25 SETTABLEKS                       R7 R6 K1 ["Text"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R1
       30 SETTABLEKS                       R7 R6 K2 ["OnItemClicked"]
       32 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
       34 MOVE                             R5 R2
       35 GETIMPORT                        R4 K12 [table.insert]
       37 CALL                             R4 2 0
       38 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ReplaceWithRules"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["ScriptConversionContext"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Localization"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["Analytics"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R3 R1 K0 ["Localization"]
        2 DUPTABLE                         R6 K3 [{"Text", "OnItemClicked"}]
        3 LOADK                            R9 K4 ["ScriptConversion"]
        4 LOADK                            R10 K5 ["ReplaceWithRules"]
        5 NAMECALL                         R7 R3 K6 ["getText"]
        7 CALL                             R7 3 1
        8 SETTABLEKS                       R7 R6 K1 ["Text"]
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R7 R6 K2 ["OnItemClicked"]
       14 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
       16 MOVE                             R5 R2
       17 GETIMPORT                        R4 K9 [table.insert]
       19 CALL                             R4 2 0
       20 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["diffScripts"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["selectedScriptItems"]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["ScriptConversionContext"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R3 R1 K0 ["Localization"]
        2 DUPTABLE                         R6 K3 [{"Text", "OnItemClicked"}]
        3 LOADK                            R9 K4 ["ScriptConversion"]
        4 LOADK                            R10 K5 ["DiffScripts"]
        5 NAMECALL                         R7 R3 K6 ["getText"]
        7 CALL                             R7 3 1
        8 SETTABLEKS                       R7 R6 K1 ["Text"]
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R1
       13 SETTABLEKS                       R7 R6 K2 ["OnItemClicked"]
       15 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
       17 MOVE                             R5 R2
       18 GETIMPORT                        R4 K9 [table.insert]
       20 CALL                             R4 2 0
       21 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["selectedScriptItems"]
        2 NOT                              R1 R2
        3 JUMPIF                           R1 ; [+7]
        4 GETTABLEKS                       R3 R0 K0 ["selectedScriptItems"]
        6 LENGTH                           R2 R3
        7 JUMPIFEQKN                       R2 K1 [0] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 JUMPIF                           R1 ; [+2]
       12 LOADB                            R1 0
       13 RETURN                           R1 1
       14 GETTABLEKS                       R1 R0 K2 ["selectedRangeItems"]
       16 JUMPIFNOT                        R1 ; [+7]
       17 GETTABLEKS                       R3 R0 K2 ["selectedRangeItems"]
       19 LENGTH                           R2 R3
       20 JUMPIFEQKN                       R2 K3 [1] ; [+2]
       22 LOADB                            R1 0 +1
       23 LOADB                            R1 1
       24 JUMPIF                           R1 ; [+2]
       25 LOADB                            R1 0
       26 RETURN                           R1 1
       27 GETTABLEKS                       R2 R0 K2 ["selectedRangeItems"]
       29 GETTABLEN                        R1 R2 1
       30 GETTABLEKS                       R2 R1 K4 ["suggestions"]
       32 JUMPIFNOT                        R2 ; [+5]
       33 GETTABLEKS                       R3 R1 K4 ["suggestions"]
       35 LENGTH                           R2 R3
       36 JUMPIFNOTEQKN                    R2 K1 [0] ; [+3]
       38 LOADB                            R2 0
       39 RETURN                           R2 1
       40 LOADB                            R2 1
       41 RETURN                           R2 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["selectedScriptItems"]
        3 GETTABLEKS                       R3 R0 K1 ["ScriptConversionContext"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_21:
        0 GETTABLEKS                       R1 R0 K0 ["selectedScriptItems"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R7 R0 K1 ["revertedScripts"]
        7 GETTABLEKS                       R8 R5 K2 ["scriptId"]
        9 GETTABLE                         R6 R7 R8
       10 JUMPIF                           R6 ; [+2]
       11 LOADB                            R6 0
       12 RETURN                           R6 1
       13 FORGLOOP                         R1 2 ; [-9]
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_22:
        0 GETTABLEKS                       R1 R0 K0 ["selectedScriptItems"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R7 R0 K1 ["completedScripts"]
        7 GETTABLEKS                       R8 R5 K2 ["scriptId"]
        9 GETTABLE                         R6 R7 R8
       10 JUMPIFNOT                        R6 ; [+2]
       11 LOADB                            R6 0
       12 RETURN                           R6 1
       13 FORGLOOP                         R1 2 ; [-9]
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_23:
        0 GETTABLEKS                       R3 R0 K0 ["selectedScriptItems"]
        2 NOT                              R2 R3
        3 JUMPIF                           R2 ; [+7]
        4 GETTABLEKS                       R4 R0 K0 ["selectedScriptItems"]
        6 LENGTH                           R3 R4
        7 JUMPIFEQKN                       R3 K1 [0] ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 JUMPIFNOT                        R2 ; [+11]
       12 GETTABLEKS                       R2 R0 K2 ["selectedRangeItems"]
       14 JUMPIFNOT                        R2 ; [+7]
       15 GETTABLEKS                       R4 R0 K2 ["selectedRangeItems"]
       17 LENGTH                           R3 R4
       18 JUMPIFEQKN                       R3 K3 [1] ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 JUMPIF                           R2 ; [+23]
       23 GETTABLEKS                       R2 R0 K0 ["selectedScriptItems"]
       25 JUMPIFNOT                        R2 ; [+7]
       26 GETTABLEKS                       R4 R0 K0 ["selectedScriptItems"]
       28 LENGTH                           R3 R4
       29 JUMPIFEQKN                       R3 K3 [1] ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 JUMPIFNOT                        R2 ; [+14]
       34 GETTABLEKS                       R3 R0 K2 ["selectedRangeItems"]
       36 NOT                              R2 R3
       37 JUMPIF                           R2 ; [+7]
       38 GETTABLEKS                       R4 R0 K2 ["selectedRangeItems"]
       40 LENGTH                           R3 R4
       41 JUMPIFEQKN                       R3 K1 [0] ; [+2]
       43 LOADB                            R2 0 +1
       44 LOADB                            R2 1
       45 JUMPIFNOT                        R2 ; [+2]
       46 LOADB                            R2 1
       47 RETURN                           R2 1
       48 LOADB                            R2 0
       49 RETURN                           R2 1

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["selectedScriptItems"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R0 K1 ["ScriptConversionContext"]
        7 GETTABLEKS                       R8 R5 K2 ["scriptId"]
        9 NAMECALL                         R6 R6 K3 ["getScriptInstanceFromGUID"]
       11 CALL                             R6 2 1
       12 GETUPVAL                         R7 0
       13 MOVE                             R9 R6
       14 NAMECALL                         R7 R7 K4 ["GetScriptBackupChunks"]
       16 CALL                             R7 2 1
       17 JUMPIF                           R7 ; [+2]
       18 LOADB                            R8 0
       19 RETURN                           R8 1
       20 GETUPVAL                         R8 0
       21 MOVE                             R10 R6
       22 MOVE                             R11 R7
       23 NAMECALL                         R8 R8 K5 ["DidSourceChange"]
       25 CALL                             R8 3 1
       26 JUMPIF                           R8 ; [+2]
       27 LOADB                            R8 0
       28 RETURN                           R8 1
       29 FORGLOOP                         R1 2 ; [-25]
       31 LOADB                            R1 1
       32 RETURN                           R1 1

PROTO_25:
        0 GETTABLEKS                       R2 R1 K0 ["Plugin"]
        2 NAMECALL                         R2 R2 K1 ["get"]
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R3 R1 K2 ["Suggestions"]
        7 GETTABLEKS                       R4 R1 K3 ["ScriptIds"]
        9 NEWTABLE                         R5 0 0
       11 GETTABLEKS                       R8 R1 K4 ["selectedScriptItems"]
       13 NOT                              R7 R8
       14 JUMPIF                           R7 ; [+7]
       15 GETTABLEKS                       R9 R1 K4 ["selectedScriptItems"]
       17 LENGTH                           R8 R9
       18 JUMPIFEQKN                       R8 K5 [0] ; [+2]
       20 LOADB                            R7 0 +1
       21 LOADB                            R7 1
       22 JUMPIFNOT                        R7 ; [+11]
       23 GETTABLEKS                       R7 R1 K6 ["selectedRangeItems"]
       25 JUMPIFNOT                        R7 ; [+7]
       26 GETTABLEKS                       R9 R1 K6 ["selectedRangeItems"]
       28 LENGTH                           R8 R9
       29 JUMPIFEQKN                       R8 K7 [1] ; [+2]
       31 LOADB                            R7 0 +1
       32 LOADB                            R7 1
       33 JUMPIF                           R7 ; [+23]
       34 GETTABLEKS                       R7 R1 K4 ["selectedScriptItems"]
       36 JUMPIFNOT                        R7 ; [+7]
       37 GETTABLEKS                       R9 R1 K4 ["selectedScriptItems"]
       39 LENGTH                           R8 R9
       40 JUMPIFEQKN                       R8 K7 [1] ; [+2]
       42 LOADB                            R7 0 +1
       43 LOADB                            R7 1
       44 JUMPIFNOT                        R7 ; [+14]
       45 GETTABLEKS                       R8 R1 K6 ["selectedRangeItems"]
       47 NOT                              R7 R8
       48 JUMPIF                           R7 ; [+7]
       49 GETTABLEKS                       R9 R1 K6 ["selectedRangeItems"]
       51 LENGTH                           R8 R9
       52 JUMPIFEQKN                       R8 K5 [0] ; [+2]
       54 LOADB                            R7 0 +1
       55 LOADB                            R7 1
       56 JUMPIFNOT                        R7 ; [+2]
       57 LOADB                            R6 1
       58 JUMP                             ; [+1]
       59 LOADB                            R6 0
       60 JUMPIFNOT                        R6 ; [+5]
       61 MOVE                             R8 R1
       62 MOVE                             R9 R5
       63 NAMECALL                         R6 R0 K8 ["addGoToScriptItem"]
       65 CALL                             R6 3 0
       66 GETTABLEKS                       R8 R1 K4 ["selectedScriptItems"]
       68 NOT                              R7 R8
       69 JUMPIF                           R7 ; [+7]
       70 GETTABLEKS                       R9 R1 K4 ["selectedScriptItems"]
       72 LENGTH                           R8 R9
       73 JUMPIFEQKN                       R8 K5 [0] ; [+2]
       75 LOADB                            R7 0 +1
       76 LOADB                            R7 1
       77 JUMPIF                           R7 ; [+2]
       78 LOADB                            R6 0
       79 JUMP                             ; [+27]
       80 GETTABLEKS                       R7 R1 K6 ["selectedRangeItems"]
       82 JUMPIFNOT                        R7 ; [+7]
       83 GETTABLEKS                       R9 R1 K6 ["selectedRangeItems"]
       85 LENGTH                           R8 R9
       86 JUMPIFEQKN                       R8 K7 [1] ; [+2]
       88 LOADB                            R7 0 +1
       89 LOADB                            R7 1
       90 JUMPIF                           R7 ; [+2]
       91 LOADB                            R6 0
       92 JUMP                             ; [+14]
       93 GETTABLEKS                       R8 R1 K6 ["selectedRangeItems"]
       95 GETTABLEN                        R7 R8 1
       96 GETTABLEKS                       R8 R7 K9 ["suggestions"]
       98 JUMPIFNOT                        R8 ; [+5]
       99 GETTABLEKS                       R9 R7 K9 ["suggestions"]
      101 LENGTH                           R8 R9
      102 JUMPIFNOTEQKN                    R8 K5 [0] ; [+3]
      104 LOADB                            R6 0
      105 JUMP                             ; [+1]
      106 LOADB                            R6 1
      107 JUMPIFNOT                        R6 ; [+10]
      108 MOVE                             R8 R5
      109 NAMECALL                         R6 R0 K10 ["addSeparator"]
      111 CALL                             R6 2 0
      112 MOVE                             R8 R1
      113 MOVE                             R9 R5
      114 NAMECALL                         R6 R0 K11 ["addSuggestionItems"]
      116 CALL                             R6 3 0
      117 JUMP                             ; [+55]
      118 GETTABLEKS                       R7 R1 K4 ["selectedScriptItems"]
      120 NOT                              R6 R7
      121 JUMPIF                           R6 ; [+7]
      122 GETTABLEKS                       R8 R1 K4 ["selectedScriptItems"]
      124 LENGTH                           R7 R8
      125 JUMPIFEQKN                       R7 K5 [0] ; [+2]
      127 LOADB                            R6 0 +1
      128 LOADB                            R6 1
      129 JUMPIF                           R6 ; [+43]
      130 GETTABLEKS                       R7 R1 K4 ["selectedScriptItems"]
      132 LOADNIL                          R8
      133 LOADNIL                          R9
      134 FORGPREP                         R7
      135 GETTABLEKS                       R13 R1 K12 ["revertedScripts"]
      137 GETTABLEKS                       R14 R11 K13 ["scriptId"]
      139 GETTABLE                         R12 R13 R14
      140 JUMPIF                           R12 ; [+2]
      141 LOADB                            R6 0
      142 JUMP                             ; [+3]
      143 FORGLOOP                         R7 2 ; [-9]
      145 LOADB                            R6 1
      146 JUMPIFNOT                        R6 ; [+10]
      147 MOVE                             R8 R5
      148 NAMECALL                         R6 R0 K10 ["addSeparator"]
      150 CALL                             R6 2 0
      151 MOVE                             R8 R1
      152 MOVE                             R9 R5
      153 NAMECALL                         R6 R0 K14 ["addUndoRevertItem"]
      155 CALL                             R6 3 0
      156 JUMP                             ; [+16]
      157 GETUPVAL                         R6 0
      158 GETTABLEKS                       R7 R1 K4 ["selectedScriptItems"]
      160 GETTABLEKS                       R8 R1 K15 ["ScriptConversionContext"]
      162 CALL                             R6 2 1
      163 JUMPIFNOT                        R6 ; [+9]
      164 MOVE                             R8 R5
      165 NAMECALL                         R6 R0 K10 ["addSeparator"]
      167 CALL                             R6 2 0
      168 MOVE                             R8 R1
      169 MOVE                             R9 R5
      170 NAMECALL                         R6 R0 K16 ["addRevertScriptItem"]
      172 CALL                             R6 3 0
      173 GETTABLEKS                       R7 R1 K4 ["selectedScriptItems"]
      175 LOADNIL                          R8
      176 LOADNIL                          R9
      177 FORGPREP                         R7
      178 GETTABLEKS                       R13 R1 K17 ["completedScripts"]
      180 GETTABLEKS                       R14 R11 K13 ["scriptId"]
      182 GETTABLE                         R12 R13 R14
      183 JUMPIFNOT                        R12 ; [+2]
      184 LOADB                            R6 0
      185 JUMP                             ; [+3]
      186 FORGLOOP                         R7 2 ; [-9]
      188 LOADB                            R6 1
      189 JUMPIFNOT                        R6 ; [+9]
      190 MOVE                             R8 R5
      191 NAMECALL                         R6 R0 K10 ["addSeparator"]
      193 CALL                             R6 2 0
      194 MOVE                             R8 R1
      195 MOVE                             R9 R5
      196 NAMECALL                         R6 R0 K18 ["addReplaceSelectedItem"]
      198 CALL                             R6 3 0
      199 GETUPVAL                         R6 1
      200 MOVE                             R7 R1
      201 CALL                             R6 1 1
      202 JUMPIFNOT                        R6 ; [+9]
      203 MOVE                             R8 R5
      204 NAMECALL                         R6 R0 K10 ["addSeparator"]
      206 CALL                             R6 2 0
      207 MOVE                             R8 R1
      208 MOVE                             R9 R5
      209 NAMECALL                         R6 R0 K19 ["addDiffScriptItem"]
      211 CALL                             R6 3 0
      212 GETUPVAL                         R6 2
      213 MOVE                             R7 R2
      214 MOVE                             R8 R5
      215 CALL                             R6 2 0
      216 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["ConfirmRevertDialog"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["showDialog"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["ScriptReplacement"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K11 ["Util"]
       47 GETTABLEKS                       R6 R6 K14 ["ScriptHistory"]
       49 GETTABLEKS                       R6 R6 K15 ["selectionHasScriptBackups"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K8 ["Src"]
       56 GETTABLEKS                       R7 R7 K11 ["Util"]
       58 GETTABLEKS                       R7 R7 K14 ["ScriptHistory"]
       60 GETTABLEKS                       R7 R7 K16 ["ChunkUtil"]
       62 CALL                             R6 1 1
       63 GETTABLEKS                       R7 R1 K17 ["UI"]
       65 GETTABLEKS                       R8 R7 K18 ["showContextMenu"]
       67 NEWTABLE                         R9 16 0
       69 DUPCLOSURE                       R10 K19 [PROTO_0]
       70 DUPCLOSURE                       R11 K20 [PROTO_1]
       71 DUPCLOSURE                       R12 K21 [PROTO_2]
       72 DUPCLOSURE                       R13 K22 [PROTO_3]
       73 DUPCLOSURE                       R14 K23 [PROTO_5]
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R2
       76 SETTABLEKS                       R14 R9 K24 ["promptRevertScripts"]
       78 DUPCLOSURE                       R14 K25 [PROTO_7]
       79 CAPTURE                          VAL R4
       80 SETTABLEKS                       R14 R9 K26 ["addGoToScriptItem"]
       82 DUPCLOSURE                       R14 K27 [PROTO_8]
       83 SETTABLEKS                       R14 R9 K28 ["addSeparator"]
       85 DUPCLOSURE                       R14 K29 [PROTO_10]
       86 SETTABLEKS                       R14 R9 K30 ["addSuggestionItems"]
       88 DUPCLOSURE                       R14 K31 [PROTO_12]
       89 SETTABLEKS                       R14 R9 K32 ["addUndoRevertItem"]
       91 DUPCLOSURE                       R14 K33 [PROTO_14]
       92 SETTABLEKS                       R14 R9 K34 ["addRevertScriptItem"]
       94 DUPCLOSURE                       R14 K35 [PROTO_16]
       95 SETTABLEKS                       R14 R9 K36 ["addReplaceSelectedItem"]
       97 DUPCLOSURE                       R14 K37 [PROTO_18]
       98 CAPTURE                          VAL R4
       99 SETTABLEKS                       R14 R9 K38 ["addDiffScriptItem"]
      101 DUPCLOSURE                       R14 K39 [PROTO_19]
      102 DUPCLOSURE                       R15 K40 [PROTO_20]
      103 CAPTURE                          VAL R5
      104 DUPCLOSURE                       R16 K41 [PROTO_21]
      105 DUPCLOSURE                       R17 K42 [PROTO_22]
      106 DUPCLOSURE                       R18 K43 [PROTO_23]
      107 DUPCLOSURE                       R19 K44 [PROTO_24]
      108 CAPTURE                          VAL R6
      109 DUPCLOSURE                       R20 K45 [PROTO_25]
      110 CAPTURE                          VAL R5
      111 CAPTURE                          VAL R19
      112 CAPTURE                          VAL R8
      113 SETTABLEKS                       R20 R9 K46 ["show"]
      115 RETURN                           R9 1
