PROTO_0:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        8 GETTABLEKS                       R2 R2 K1 ["join"]
       10 DUPTABLE                         R3 K5 [{"studioSid", "clientId", "placeId"}]
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R4 R4 K6 ["GetSessionId"]
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R4 R3 K2 ["studioSid"]
       17 GETUPVAL                         R4 1
       18 NAMECALL                         R4 R4 K7 ["GetClientId"]
       20 CALL                             R4 1 1
       21 SETTABLEKS                       R4 R3 K3 ["clientId"]
       23 GETIMPORT                        R4 K9 [game]
       25 GETTABLEKS                       R4 R4 K10 ["PlaceId"]
       27 SETTABLEKS                       R4 R3 K4 ["placeId"]
       29 MOVE                             R4 R1
       30 CALL                             R2 2 1
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R3 R3 K11 ["LogAnalytics"]
       34 CALL                             R3 0 1
       35 JUMPIFNOT                        R3 ; [+18]
       36 GETIMPORT                        R3 K13 [print]
       38 LOADK                            R4 K14 ["%s SendEvent eventName=%s args=%s"]
       39 LOADK                            R6 K15 ["R15Migrator"]
       40 FASTCALL1                        TOSTRING R0 ; [+3]
       41 MOVE                             R8 R0
       42 GETIMPORT                        R7 K17 [tostring]
       44 CALL                             R7 1 1
       45 GETUPVAL                         R8 3
       46 MOVE                             R10 R2
       47 NAMECALL                         R8 R8 K18 ["JSONEncode"]
       49 CALL                             R8 2 -1
       50 NAMECALL                         R4 R4 K19 ["format"]
       52 CALL                             R4 -1 -1
       53 CALL                             R3 -1 0
       54 GETUPVAL                         R3 1
       55 LOADK                            R5 K20 ["studio"]
       56 LOADK                            R6 K15 ["R15Migrator"]
       57 MOVE                             R7 R0
       58 MOVE                             R8 R2
       59 NAMECALL                         R3 R3 K21 ["SendEventDeferred"]
       61 CALL                             R3 5 0
       62 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R1 0
        1 NEWTABLE                         R2 0 0
        3 MOVE                             R3 R0
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 ADDK                             R1 R1 K0 [1]
        8 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       10 MOVE                             R9 R2
       11 MOVE                             R10 R6
       12 GETIMPORT                        R8 K3 [table.insert]
       14 CALL                             R8 2 0
       15 FORGLOOP                         R3 2 ; [-9]
       17 RETURN                           R1 2

PROTO_2:
        0 DUPCLOSURE                       R2 K0 [PROTO_1]
        1 LOADN                            R5 0
        2 NEWTABLE                         R6 0 0
        4 MOVE                             R7 R0
        5 LOADNIL                          R8
        6 LOADNIL                          R9
        7 FORGPREP                         R7
        8 ADDK                             R5 R5 K1 [1]
        9 FASTCALL2                        TABLE_INSERT R6 R10 ; [+5]
       11 MOVE                             R13 R6
       12 MOVE                             R14 R10
       13 GETIMPORT                        R12 K4 [table.insert]
       15 CALL                             R12 2 0
       16 FORGLOOP                         R7 2 ; [-9]
       18 MOVE                             R3 R5
       19 MOVE                             R4 R6
       20 LOADN                            R7 0
       21 NEWTABLE                         R8 0 0
       23 MOVE                             R9 R1
       24 LOADNIL                          R10
       25 LOADNIL                          R11
       26 FORGPREP                         R9
       27 ADDK                             R7 R7 K1 [1]
       28 FASTCALL2                        TABLE_INSERT R8 R12 ; [+5]
       30 MOVE                             R15 R8
       31 MOVE                             R16 R12
       32 GETIMPORT                        R14 K4 [table.insert]
       34 CALL                             R14 2 0
       35 FORGLOOP                         R9 2 ; [-9]
       37 MOVE                             R5 R7
       38 MOVE                             R6 R8
       39 GETUPVAL                         R7 0
       40 LOADK                            R8 K5 ["CharactersLoaded"]
       41 DUPTABLE                         R9 K13 [{"numUnconverted", "unconvertedIds", "numConverted", "convertedIds", "percentConverted", "numWarnings", "numCustom"}]
       42 SETTABLEKS                       R3 R9 K6 ["numUnconverted"]
       44 SETTABLEKS                       R4 R9 K7 ["unconvertedIds"]
       46 SETTABLEKS                       R5 R9 K8 ["numConverted"]
       48 SETTABLEKS                       R6 R9 K9 ["convertedIds"]
       50 JUMPIFNOTEQKN                    R3 K14 [0] ; [+3]
       52 LOADN                            R10 0
       53 JUMP                             ; [+9]
       54 ADD                              R13 R5 R3
       55 DIV                              R12 R5 R13
       56 MULK                             R11 R12 K15 [100]
       57 LOADN                            R12 0
       58 LOADN                            R13 100
       59 FASTCALL                         MATH_CLAMP ; [+2]
       60 GETIMPORT                        R10 K18 [math.clamp]
       62 CALL                             R10 3 1
       63 SETTABLEKS                       R10 R9 K10 ["percentConverted"]
       65 GETUPVAL                         R10 1
       66 GETTABLEKS                       R10 R10 K19 ["GetNumCharactersHaveWarnings"]
       68 MOVE                             R11 R0
       69 CALL                             R10 1 1
       70 SETTABLEKS                       R10 R9 K11 ["numWarnings"]
       72 GETUPVAL                         R10 1
       73 GETTABLEKS                       R10 R10 K20 ["GetNumCharactersHaveCustomMesh"]
       75 MOVE                             R11 R0
       76 CALL                             R10 1 1
       77 SETTABLEKS                       R10 R9 K12 ["numCustom"]
       79 CALL                             R7 2 0
       80 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Dictionary"]
        3 GETTABLEKS                       R3 R3 K1 ["keys"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 LENGTH                           R2 R3
        8 LOADN                            R3 0
        9 NEWTABLE                         R4 0 0
       11 NEWTABLE                         R5 0 0
       13 MOVE                             R6 R1
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 GETTABLE                         R11 R0 R10
       18 JUMPIFNOT                        R11 ; [+15]
       19 ADDK                             R3 R3 K2 [1]
       20 GETTABLE                         R13 R0 R10
       21 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       23 MOVE                             R12 R4
       24 GETIMPORT                        R11 K5 [table.insert]
       26 CALL                             R11 2 0
       27 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       29 MOVE                             R12 R5
       30 MOVE                             R13 R10
       31 GETIMPORT                        R11 K5 [table.insert]
       33 CALL                             R11 2 0
       34 FORGLOOP                         R6 2 ; [-18]
       36 GETUPVAL                         R6 1
       37 LOADK                            R7 K6 ["CharactersConverted"]
       38 DUPTABLE                         R8 K12 [{"numConverted", "convertedIds", "percentConverted", "numWarnings", "numCustom"}]
       39 SETTABLEKS                       R3 R8 K7 ["numConverted"]
       41 SETTABLEKS                       R5 R8 K8 ["convertedIds"]
       43 JUMPIFNOTEQKN                    R2 K13 [0] ; [+3]
       45 LOADN                            R9 0
       46 JUMP                             ; [+8]
       47 DIV                              R11 R3 R2
       48 MULK                             R10 R11 K14 [100]
       49 LOADN                            R11 0
       50 LOADN                            R12 100
       51 FASTCALL                         MATH_CLAMP ; [+2]
       52 GETIMPORT                        R9 K17 [math.clamp]
       54 CALL                             R9 3 1
       55 SETTABLEKS                       R9 R8 K9 ["percentConverted"]
       57 GETUPVAL                         R9 2
       58 GETTABLEKS                       R9 R9 K18 ["GetNumCharactersHaveWarnings"]
       60 MOVE                             R10 R4
       61 CALL                             R9 1 1
       62 SETTABLEKS                       R9 R8 K10 ["numWarnings"]
       64 GETUPVAL                         R9 2
       65 GETTABLEKS                       R9 R9 K19 ["GetNumCharactersHaveCustomMesh"]
       67 MOVE                             R10 R4
       68 CALL                             R9 1 1
       69 SETTABLEKS                       R9 R8 K11 ["numCustom"]
       71 CALL                             R6 2 0
       72 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Dictionary"]
        3 GETTABLEKS                       R3 R3 K1 ["keys"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 LENGTH                           R2 R3
        8 LOADN                            R3 0
        9 NEWTABLE                         R4 0 0
       11 NEWTABLE                         R5 0 0
       13 MOVE                             R6 R1
       14 LOADNIL                          R7
       15 LOADNIL                          R8
       16 FORGPREP                         R6
       17 GETTABLE                         R11 R0 R10
       18 JUMPIFNOT                        R11 ; [+15]
       19 ADDK                             R3 R3 K2 [1]
       20 GETTABLE                         R13 R0 R10
       21 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       23 MOVE                             R12 R4
       24 GETIMPORT                        R11 K5 [table.insert]
       26 CALL                             R11 2 0
       27 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       29 MOVE                             R12 R5
       30 MOVE                             R13 R10
       31 GETIMPORT                        R11 K5 [table.insert]
       33 CALL                             R11 2 0
       34 FORGLOOP                         R6 2 ; [-18]
       36 GETUPVAL                         R6 1
       37 LOADK                            R7 K6 ["CharactersReverted"]
       38 DUPTABLE                         R8 K12 [{"numReverted", "revertedIds", "percentReverted", "numWarnings", "numCustom"}]
       39 SETTABLEKS                       R3 R8 K7 ["numReverted"]
       41 SETTABLEKS                       R5 R8 K8 ["revertedIds"]
       43 JUMPIFNOTEQKN                    R2 K13 [0] ; [+3]
       45 LOADN                            R9 0
       46 JUMP                             ; [+8]
       47 DIV                              R11 R3 R2
       48 MULK                             R10 R11 K14 [100]
       49 LOADN                            R11 0
       50 LOADN                            R12 100
       51 FASTCALL                         MATH_CLAMP ; [+2]
       52 GETIMPORT                        R9 K17 [math.clamp]
       54 CALL                             R9 3 1
       55 SETTABLEKS                       R9 R8 K9 ["percentReverted"]
       57 GETUPVAL                         R9 2
       58 GETTABLEKS                       R9 R9 K18 ["GetNumCharactersHaveWarnings"]
       60 MOVE                             R10 R4
       61 CALL                             R9 1 1
       62 SETTABLEKS                       R9 R8 K10 ["numWarnings"]
       64 GETUPVAL                         R9 2
       65 GETTABLEKS                       R9 R9 K19 ["GetNumCharactersHaveCustomMesh"]
       67 MOVE                             R10 R4
       68 CALL                             R9 1 1
       69 SETTABLEKS                       R9 R8 K11 ["numCustom"]
       71 CALL                             R6 2 0
       72 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Dictionary"]
        3 GETTABLEKS                       R3 R3 K1 ["keys"]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 1
        7 LENGTH                           R2 R3
        8 LOADN                            R3 0
        9 MOVE                             R4 R1
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 GETTABLE                         R9 R0 R7
       14 JUMPIFNOT                        R9 ; [+1]
       15 ADDK                             R3 R3 K2 [1]
       16 FORGLOOP                         R4 2 ; [-4]
       18 DUPTABLE                         R4 K5 [{"numConverted", "percentConverted"}]
       19 SETTABLEKS                       R3 R4 K3 ["numConverted"]
       21 JUMPIFNOTEQKN                    R2 K6 [0] ; [+3]
       23 LOADN                            R5 0
       24 JUMP                             ; [+8]
       25 DIV                              R7 R3 R2
       26 MULK                             R6 R7 K7 [100]
       27 LOADN                            R7 0
       28 LOADN                            R8 100
       29 FASTCALL                         MATH_CLAMP ; [+2]
       30 GETIMPORT                        R5 K10 [math.clamp]
       32 CALL                             R5 3 1
       33 SETTABLEKS                       R5 R4 K4 ["percentConverted"]
       35 GETUPVAL                         R5 1
       36 LOADK                            R6 K11 ["AnimationsConverted"]
       37 MOVE                             R7 R4
       38 CALL                             R5 2 0
       39 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R2 K3 [{"numAnimations", "numConverted", "percentConverted"}]
        1 LOADN                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["numAnimations"]
        4 LOADN                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["numConverted"]
        7 LOADN                            R3 0
        8 SETTABLEKS                       R3 R2 K2 ["percentConverted"]
       10 MOVE                             R3 R0
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETTABLEKS                       R8 R2 K0 ["numAnimations"]
       16 ADDK                             R8 R8 K4 [1]
       17 SETTABLEKS                       R8 R2 K0 ["numAnimations"]
       19 GETTABLE                         R8 R1 R6
       20 JUMPIF                           R8 ; [+2]
       21 NEWTABLE                         R8 0 0
       23 GETTABLEKS                       R8 R8 K5 ["status"]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K6 ["Done"]
       28 JUMPIFNOTEQ                      R8 R9 ; [+6]
       30 GETTABLEKS                       R9 R2 K1 ["numConverted"]
       32 ADDK                             R9 R9 K4 [1]
       33 SETTABLEKS                       R9 R2 K1 ["numConverted"]
       35 FORGLOOP                         R3 2 ; [-22]
       37 GETTABLEKS                       R4 R2 K0 ["numAnimations"]
       39 JUMPIFNOTEQKN                    R4 K7 [0] ; [+3]
       41 LOADN                            R3 0
       42 JUMP                             ; [+12]
       43 GETTABLEKS                       R6 R2 K1 ["numConverted"]
       45 GETTABLEKS                       R7 R2 K0 ["numAnimations"]
       47 DIV                              R5 R6 R7
       48 MULK                             R4 R5 K8 [100]
       49 LOADN                            R5 0
       50 LOADN                            R6 100
       51 FASTCALL                         MATH_CLAMP ; [+2]
       52 GETIMPORT                        R3 K11 [math.clamp]
       54 CALL                             R3 3 1
       55 SETTABLEKS                       R3 R2 K2 ["percentConverted"]
       57 GETUPVAL                         R3 1
       58 LOADK                            R4 K12 ["InitialAnimationAnalysisScan"]
       59 MOVE                             R5 R2
       60 CALL                             R3 2 0
       61 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R3 K3 [{"fromPart", "toPart", "isEnabled"}]
        1 ORK                              R4 R0 K4 [""]
        2 SETTABLEKS                       R4 R3 K0 ["fromPart"]
        4 ORK                              R4 R1 K4 [""]
        5 SETTABLEKS                       R4 R3 K1 ["toPart"]
        7 SETTABLEKS                       R2 R3 K2 ["isEnabled"]
        9 GETUPVAL                         R4 0
       10 LOADK                            R5 K5 ["onScriptRulesUpdate"]
       11 MOVE                             R6 R3
       12 CALL                             R4 2 0
       13 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R3 K4 [{"numScripts", "averageLines", "numCompleted", "totalScripts"}]
        1 LOADN                            R4 0
        2 SETTABLEKS                       R4 R3 K0 ["numScripts"]
        4 LOADN                            R4 0
        5 SETTABLEKS                       R4 R3 K1 ["averageLines"]
        7 LOADN                            R4 0
        8 SETTABLEKS                       R4 R3 K2 ["numCompleted"]
       10 SETTABLEKS                       R1 R3 K3 ["totalScripts"]
       12 LOADN                            R4 0
       13 MOVE                             R5 R0
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 GETTABLEKS                       R10 R3 K0 ["numScripts"]
       19 ADDK                             R10 R10 K5 [1]
       20 SETTABLEKS                       R10 R3 K0 ["numScripts"]
       22 NAMECALL                         R10 R9 K6 ["GetSize"]
       24 CALL                             R10 1 1
       25 ADD                              R4 R4 R10
       26 FORGLOOP                         R5 2 ; [-10]
       28 GETTABLEKS                       R5 R3 K0 ["numScripts"]
       30 JUMPIFEQKN                       R5 K7 [0] ; [+27]
       32 GETTABLEKS                       R6 R3 K0 ["numScripts"]
       34 JUMPIFNOTEQKN                    R6 K7 [0] ; [+3]
       36 LOADN                            R5 0
       37 JUMP                             ; [+3]
       38 GETTABLEKS                       R6 R3 K0 ["numScripts"]
       40 DIV                              R5 R4 R6
       41 SETTABLEKS                       R5 R3 K1 ["averageLines"]
       43 MOVE                             R5 R2
       44 LOADNIL                          R6
       45 LOADNIL                          R7
       46 FORGPREP                         R5
       47 GETTABLEKS                       R10 R3 K2 ["numCompleted"]
       49 ADDK                             R10 R10 K5 [1]
       50 SETTABLEKS                       R10 R3 K2 ["numCompleted"]
       52 FORGLOOP                         R5 2 ; [-6]
       54 GETUPVAL                         R5 0
       55 LOADK                            R6 K8 ["InitialScriptAnalysisScan"]
       56 MOVE                             R7 R3
       57 CALL                             R5 2 0
       58 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["ScriptSuggestionApplied"]
        2 NEWTABLE                         R2 0 0
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetStatusCounts"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 LOADK                            R3 K1 ["ScriptSelectionReverted"]
        7 DUPTABLE                         R4 K3 [{"numScripts"}]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K4 ["ScriptStatus"]
       11 GETTABLEKS                       R6 R6 K5 ["Reverted"]
       13 GETTABLE                         R5 R1 R6
       14 SETTABLEKS                       R5 R4 K2 ["numScripts"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["onScriptAutoReplacement"]
        2 DUPTABLE                         R3 K2 [{"issueType"}]
        3 SETTABLEKS                       R0 R3 K1 ["issueType"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetStatusCounts"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 LOADK                            R3 K1 ["ScriptSelectionUndoRevert"]
        7 DUPTABLE                         R4 K3 [{"numScripts"}]
        8 GETUPVAL                         R6 2
        9 GETTABLEKS                       R6 R6 K4 ["ScriptStatus"]
       11 GETTABLEKS                       R6 R6 K5 ["Reverted"]
       13 GETTABLE                         R5 R1 R6
       14 SETTABLEKS                       R5 R4 K2 ["numScripts"]
       16 CALL                             R2 2 0
       17 RETURN                           R0 0

PROTO_13:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADN                            R1 0
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADN                            R2 0
        6 JUMPIFNOTEQKNIL                  R3 ; [+2]
        8 LOADN                            R3 0
        9 DUPTABLE                         R4 K4 [{"adapterAdded", "numScriptIssuesLeft", "numAnimationsNotConverted", "numCharactersNotConverted"}]
       10 SETTABLEKS                       R0 R4 K0 ["adapterAdded"]
       12 SETTABLEKS                       R1 R4 K1 ["numScriptIssuesLeft"]
       14 SETTABLEKS                       R2 R4 K2 ["numAnimationsNotConverted"]
       16 SETTABLEKS                       R3 R4 K3 ["numCharactersNotConverted"]
       18 GETUPVAL                         R5 0
       19 LOADK                            R6 K5 ["AdapterToggled"]
       20 MOVE                             R7 R4
       21 CALL                             R5 2 0
       22 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["GetStatusCounts"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K1 ["ScriptStatus"]
        8 GETTABLEKS                       R5 R5 K2 ["AutoConverted"]
       10 GETTABLE                         R4 R2 R5
       11 JUMPIFNOT                        R4 ; [+7]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K1 ["ScriptStatus"]
       15 GETTABLEKS                       R4 R4 K2 ["AutoConverted"]
       17 GETTABLE                         R3 R2 R4
       18 JUMP                             ; [+1]
       19 LOADN                            R3 0
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K1 ["ScriptStatus"]
       23 GETTABLEKS                       R6 R6 K3 ["Complete"]
       25 GETTABLE                         R5 R2 R6
       26 JUMPIFNOT                        R5 ; [+7]
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R5 R5 K1 ["ScriptStatus"]
       30 GETTABLEKS                       R5 R5 K3 ["Complete"]
       32 GETTABLE                         R4 R2 R5
       33 JUMP                             ; [+1]
       34 LOADN                            R4 0
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R7 R7 K1 ["ScriptStatus"]
       38 GETTABLEKS                       R7 R7 K4 ["Error"]
       40 GETTABLE                         R6 R2 R7
       41 JUMPIFNOT                        R6 ; [+7]
       42 GETUPVAL                         R6 1
       43 GETTABLEKS                       R6 R6 K1 ["ScriptStatus"]
       45 GETTABLEKS                       R6 R6 K4 ["Error"]
       47 GETTABLE                         R5 R2 R6
       48 JUMP                             ; [+1]
       49 LOADN                            R5 0
       50 DUPTABLE                         R6 K9 [{"autoConvertCount", "replacedCount", "failedCount", "numRules"}]
       51 SETTABLEKS                       R3 R6 K5 ["autoConvertCount"]
       53 LOADN                            R8 0
       54 SUB                              R9 R4 R3
       55 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       57 GETIMPORT                        R7 K12 [math.min]
       59 CALL                             R7 2 1
       60 SETTABLEKS                       R7 R6 K6 ["replacedCount"]
       62 SETTABLEKS                       R5 R6 K7 ["failedCount"]
       64 LOADN                            R7 0
       65 SETTABLEKS                       R7 R6 K8 ["numRules"]
       67 MOVE                             R7 R1
       68 LOADNIL                          R8
       69 LOADNIL                          R9
       70 FORGPREP                         R7
       71 GETTABLEKS                       R12 R11 K13 ["Enabled"]
       73 JUMPIFNOT                        R12 ; [+9]
       74 GETTABLEKS                       R12 R11 K14 ["ToText"]
       76 JUMPIFEQKS                       R12 K15 [""] ; [+6]
       78 GETTABLEKS                       R12 R6 K8 ["numRules"]
       80 ADDK                             R12 R12 K16 [1]
       81 SETTABLEKS                       R12 R6 K8 ["numRules"]
       83 FORGLOOP                         R7 2 ; [-13]
       85 GETUPVAL                         R7 2
       86 LOADK                            R8 K17 ["ScriptSelectionConvert"]
       87 MOVE                             R9 R6
       88 CALL                             R7 2 0
       89 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["PluginClosed"]
        2 DUPTABLE                         R2 K2 [{"timeSpent"}]
        3 GETIMPORT                        R4 K5 [os.time]
        5 CALL                             R4 0 1
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K6 ["StartTime"]
        9 SUB                              R3 R4 R5
       10 SETTABLEKS                       R3 R2 K1 ["timeSpent"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Publish"]
        2 DUPTABLE                         R3 K2 [{"checks"}]
        3 SETTABLEKS                       R0 R3 K1 ["checks"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_17:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 DUPTABLE                         R2 K15 [{"onCharactersLoaded", "onCharactersConverted", "onCharactersReverted", "onAnimationsConverted", "onInitialAnimationsAnalysisScan", "onScriptRulesUpdate", "onInitialScriptAnalysisScan", "onScriptSuggestionApplied", "onScriptSelectionReverted", "onScriptAutoReplacement", "onScriptSelectionRevertUndo", "onAdapterToggle", "onScriptConvertSelection", "onPluginClosed", "onPublish"}]
        6 NEWCLOSURE                       R3 P1
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U3
        9 SETTABLEKS                       R3 R2 K0 ["onCharactersLoaded"]
       11 NEWCLOSURE                       R3 P2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U3
       15 SETTABLEKS                       R3 R2 K1 ["onCharactersConverted"]
       17 NEWCLOSURE                       R3 P3
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U3
       21 SETTABLEKS                       R3 R2 K2 ["onCharactersReverted"]
       23 NEWCLOSURE                       R3 P4
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R1
       26 SETTABLEKS                       R3 R2 K3 ["onAnimationsConverted"]
       28 NEWCLOSURE                       R3 P5
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          VAL R1
       31 SETTABLEKS                       R3 R2 K4 ["onInitialAnimationsAnalysisScan"]
       33 NEWCLOSURE                       R3 P6
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R3 R2 K5 ["onScriptRulesUpdate"]
       37 NEWCLOSURE                       R3 P7
       38 CAPTURE                          VAL R1
       39 SETTABLEKS                       R3 R2 K6 ["onInitialScriptAnalysisScan"]
       41 NEWCLOSURE                       R3 P8
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R3 R2 K7 ["onScriptSuggestionApplied"]
       45 NEWCLOSURE                       R3 P9
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U6
       49 SETTABLEKS                       R3 R2 K8 ["onScriptSelectionReverted"]
       51 NEWCLOSURE                       R3 P10
       52 CAPTURE                          VAL R1
       53 SETTABLEKS                       R3 R2 K9 ["onScriptAutoReplacement"]
       55 NEWCLOSURE                       R3 P11
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R1
       58 CAPTURE                          UPVAL U6
       59 SETTABLEKS                       R3 R2 K10 ["onScriptSelectionRevertUndo"]
       61 NEWCLOSURE                       R3 P12
       62 CAPTURE                          VAL R1
       63 SETTABLEKS                       R3 R2 K11 ["onAdapterToggle"]
       65 NEWCLOSURE                       R3 P13
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          UPVAL U6
       68 CAPTURE                          VAL R1
       69 SETTABLEKS                       R3 R2 K12 ["onScriptConvertSelection"]
       71 NEWCLOSURE                       R3 P14
       72 CAPTURE                          VAL R1
       73 CAPTURE                          UPVAL U7
       74 SETTABLEKS                       R3 R2 K13 ["onPluginClosed"]
       76 NEWCLOSURE                       R3 P15
       77 CAPTURE                          VAL R1
       78 SETTABLEKS                       R3 R2 K14 ["onPublish"]
       80 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["AnalyticsGlobals"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["DebugFlags"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["ScriptStatusUtil"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K9 ["Util"]
       47 GETTABLEKS                       R6 R6 K13 ["ScriptAnalysis"]
       49 GETTABLEKS                       R6 R6 K14 ["Constants"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K8 ["Src"]
       56 GETTABLEKS                       R7 R7 K9 ["Util"]
       58 GETTABLEKS                       R7 R7 K15 ["AnimationConversion"]
       60 GETTABLEKS                       R7 R7 K16 ["constants"]
       62 CALL                             R6 1 1
       63 GETTABLEKS                       R6 R6 K17 ["AnimationStatus"]
       65 GETIMPORT                        R7 K5 [require]
       67 GETTABLEKS                       R8 R0 K8 ["Src"]
       69 GETTABLEKS                       R8 R8 K18 ["Modules"]
       71 GETTABLEKS                       R8 R8 K19 ["NpcManager"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K21 [game]
       76 LOADK                            R10 K22 ["HttpService"]
       77 NAMECALL                         R8 R8 K23 ["GetService"]
       79 CALL                             R8 2 1
       80 DUPCLOSURE                       R9 K24 [PROTO_17]
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R2
       89 RETURN                           R9 1
