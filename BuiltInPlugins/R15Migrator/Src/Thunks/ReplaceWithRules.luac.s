PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["FromText"]
        8 JUMPIFEQKS                       R7 K1 [""] ; [+14]
       10 GETTABLEKS                       R7 R6 K2 ["ToText"]
       12 JUMPIFEQKS                       R7 K1 [""] ; [+10]
       14 GETTABLEKS                       R7 R6 K3 ["Enabled"]
       16 JUMPIFEQKB                       R7 FALSE ; [+6]
       18 GETTABLEKS                       R7 R6 K0 ["FromText"]
       20 GETTABLEKS                       R8 R6 K2 ["ToText"]
       22 SETTABLE                         R8 R1 R7
       23 FORGLOOP                         R2 2 ; [-18]
       25 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 LENGTH                           R7 R6
        6 ADD                              R1 R1 R7
        7 FORGLOOP                         R2 2 ; [-3]
        9 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R11
        1 JUMPIFNOT                        R3 ; [+4]
        2 LENGTH                           R12 R4
        3 LOADN                            R13 0
        4 JUMPIFNOTLT                      R13 R12 ; [+2]
        6 GETTABLE                         R11 R5 R2
        7 JUMPIFNOT                        R4 ; [+9]
        8 LENGTH                           R12 R4
        9 JUMPIFNOTEQKN                    R12 K0 [1] ; [+7]
       11 GETTABLEN                        R11 R4 1
       12 GETTABLEKS                       R12 R7 K1 ["autoConverted"]
       14 ADDK                             R12 R12 K0 [1]
       15 SETTABLEKS                       R12 R7 K1 ["autoConverted"]
       17 JUMPIF                           R11 ; [+19]
       18 GETUPVAL                         R15 0
       19 GETTABLEKS                       R14 R15 K2 ["ReferenceKey"]
       21 JUMPIFNOTEQ                      R10 R14 ; [+3]
       23 LOADK                            R13 K3 ["failedVar"]
       24 JUMP                             ; [+1]
       25 LOADK                            R13 K4 ["failed"]
       26 GETTABLE                         R12 R7 R13
       27 GETTABLE                         R13 R12 R0
       28 JUMPIF                           R13 ; [+3]
       29 NEWTABLE                         R13 0 0
       31 SETTABLE                         R13 R12 R0
       32 GETTABLE                         R13 R12 R0
       33 LOADB                            R14 1
       34 SETTABLE                         R14 R13 R2
       35 LOADB                            R13 0
       36 RETURN                           R13 1
       37 GETUPVAL                         R13 1
       38 GETTABLEKS                       R12 R13 K5 ["replaceWithSuggestion"]
       40 MOVE                             R13 R0
       41 MOVE                             R14 R1
       42 MOVE                             R15 R6
       43 MOVE                             R16 R11
       44 MOVE                             R17 R8
       45 MOVE                             R18 R9
       46 CALL                             R12 6 0
       47 LOADB                            R12 1
       48 RETURN                           R12 1

PROTO_3:
        0 GETIMPORT                        R9 K1 [next]
        2 MOVE                             R10 R3
        3 CALL                             R9 1 1
        4 MOVE                             R10 R3
        5 LOADNIL                          R11
        6 LOADNIL                          R12
        7 FORGPREP                         R10
        8 GETTABLE                         R15 R7 R13
        9 MOVE                             R16 R14
       10 LOADNIL                          R17
       11 LOADNIL                          R18
       12 FORGPREP                         R16
       13 NAMECALL                         R21 R1 K2 ["updateProgress"]
       15 CALL                             R21 1 0
       16 GETUPVAL                         R21 0
       17 MOVE                             R22 R13
       18 GETTABLEKS                       R23 R20 K3 ["range"]
       20 GETTABLEKS                       R24 R20 K4 ["instanceName"]
       22 MOVE                             R25 R5
       23 GETTABLEKS                       R26 R20 K5 ["suggestions"]
       25 MOVE                             R27 R6
       26 MOVE                             R28 R2
       27 MOVE                             R29 R4
       28 MOVE                             R30 R15
       29 MOVE                             R31 R8
       30 GETTABLEKS                       R32 R20 K6 ["issueType"]
       32 CALL                             R21 11 1
       33 JUMPIFNOT                        R21 ; [+5]
       34 GETTABLEKS                       R21 R4 K7 ["succeeded"]
       36 ADDK                             R21 R21 K8 [1]
       37 SETTABLEKS                       R21 R4 K7 ["succeeded"]
       39 FORGLOOP                         R16 2 ; [-27]
       41 JUMPIFEQ                         R13 R9 ; [+5]
       43 MOVE                             R18 R13
       44 NAMECALL                         R16 R2 K9 ["closeScriptIfOpen"]
       46 CALL                             R16 2 0
       47 FORGLOOP                         R10 2 ; [-40]
       49 JUMPIFNOT                        R9 ; [+4]
       50 MOVE                             R12 R9
       51 NAMECALL                         R10 R2 K9 ["closeScriptIfOpen"]
       53 CALL                             R10 2 0
       54 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["ScriptConversion"]
        5 GETTABLEKS                       R2 R3 K2 ["selection"]
        7 GETTABLEKS                       R4 R1 K1 ["ScriptConversion"]
        9 GETTABLEKS                       R3 R4 K3 ["diagnostics"]
       11 GETUPVAL                         R4 0
       12 MOVE                             R6 R2
       13 MOVE                             R7 R3
       14 NAMECALL                         R4 R4 K4 ["sortSelectionForConversion"]
       16 CALL                             R4 3 1
       17 DUPTABLE                         R5 K9 [{"autoConverted", "succeeded", "failed", "failedVar"}]
       18 LOADN                            R6 0
       19 SETTABLEKS                       R6 R5 K5 ["autoConverted"]
       21 LOADN                            R6 0
       22 SETTABLEKS                       R6 R5 K6 ["succeeded"]
       24 NEWTABLE                         R6 0 0
       26 SETTABLEKS                       R6 R5 K7 ["failed"]
       28 NEWTABLE                         R6 0 0
       30 SETTABLEKS                       R6 R5 K8 ["failedVar"]
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R8 R1 K1 ["ScriptConversion"]
       35 GETTABLEKS                       R7 R8 K10 ["replaceRules"]
       37 CALL                             R6 1 1
       38 LOADN                            R8 0
       39 MOVE                             R9 R4
       40 LOADNIL                          R10
       41 LOADNIL                          R11
       42 FORGPREP                         R9
       43 LENGTH                           R14 R13
       44 ADD                              R8 R8 R14
       45 FORGLOOP                         R9 2 ; [-3]
       47 MOVE                             R7 R8
       48 LOADN                            R8 0
       49 JUMPIFNOTLT                      R8 R7 ; [+26]
       51 LOADK                            R8 K11 ["ReplaceWithRules"]
       52 GETUPVAL                         R9 2
       53 JUMPIFNOT                        R9 ; [+1]
       54 LOADK                            R8 K12 ["Convert"]
       55 GETUPVAL                         R10 3
       56 GETTABLEKS                       R9 R10 K13 ["new"]
       58 MOVE                             R10 R8
       59 MOVE                             R11 R7
       60 MOVE                             R12 R0
       61 CALL                             R9 3 1
       62 GETUPVAL                         R10 4
       63 MOVE                             R11 R1
       64 MOVE                             R12 R9
       65 GETUPVAL                         R13 5
       66 MOVE                             R14 R4
       67 MOVE                             R15 R5
       68 GETUPVAL                         R16 2
       69 MOVE                             R17 R6
       70 MOVE                             R18 R3
       71 GETUPVAL                         R19 6
       72 CALL                             R10 9 0
       73 NAMECALL                         R10 R9 K14 ["clearProgressBar"]
       75 CALL                             R10 1 0
       76 DUPTABLE                         R8 K16 [{"replaceResult"}]
       77 SETTABLEKS                       R5 R8 K15 ["replaceResult"]
       79 GETUPVAL                         R11 7
       80 MOVE                             R12 R8
       81 CALL                             R11 1 -1
       82 NAMECALL                         R9 R0 K17 ["dispatch"]
       84 CALL                             R9 -1 0
       85 GETUPVAL                         R9 6
       86 LOADK                            R11 K18 ["onScriptConvertSelection"]
       87 NAMECALL                         R9 R9 K19 ["getHandler"]
       89 CALL                             R9 2 1
       90 MOVE                             R10 R8
       91 MOVE                             R11 R6
       92 CALL                             R9 2 0
       93 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R3
        8 CAPTURE                          UPVAL U4
        9 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Actions"]
       13 GETTABLEKS                       R2 R3 K8 ["SetProcessResult"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K9 ["Util"]
       22 GETTABLEKS                       R3 R4 K10 ["ScriptReplacement"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K9 ["Util"]
       31 GETTABLEKS                       R4 R5 K11 ["ScriptIssueSorting"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R7 R0 K6 ["Src"]
       38 GETTABLEKS                       R6 R7 K9 ["Util"]
       40 GETTABLEKS                       R5 R6 K12 ["ScriptConversionProgressTracker"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R9 R0 K6 ["Src"]
       47 GETTABLEKS                       R8 R9 K9 ["Util"]
       49 GETTABLEKS                       R7 R8 K13 ["ScriptAnalysis"]
       51 GETTABLEKS                       R6 R7 K14 ["Constants"]
       53 CALL                             R5 1 1
       54 DUPCLOSURE                       R6 K15 [PROTO_0]
       55 DUPCLOSURE                       R7 K16 [PROTO_1]
       56 DUPCLOSURE                       R8 K17 [PROTO_2]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R2
       59 DUPCLOSURE                       R9 K18 [PROTO_3]
       60 CAPTURE                          VAL R8
       61 DUPCLOSURE                       R10 K19 [PROTO_5]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R1
       67 RETURN                           R10 1
