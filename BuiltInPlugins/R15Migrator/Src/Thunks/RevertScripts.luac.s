PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["updateProgress"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R3 R1 K1 ["ScriptConversion"]
        5 GETTABLEKS                       R2 R3 K2 ["selection"]
        7 GETTABLEKS                       R4 R1 K1 ["ScriptConversion"]
        9 GETTABLEKS                       R3 R4 K3 ["diagnostics"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R5 R6 K4 ["Dictionary"]
       14 GETTABLEKS                       R4 R5 K5 ["keys"]
       16 GETUPVAL                         R5 1
       17 MOVE                             R7 R2
       18 MOVE                             R8 R3
       19 NAMECALL                         R5 R5 K6 ["sortSelectionForConversion"]
       21 CALL                             R5 3 -1
       22 CALL                             R4 -1 1
       23 GETUPVAL                         R6 2
       24 GETTABLEKS                       R5 R6 K7 ["new"]
       26 LOADK                            R6 K8 ["Revert"]
       27 LENGTH                           R7 R4
       28 MOVE                             R8 R0
       29 CALL                             R5 3 1
       30 GETUPVAL                         R6 3
       31 MOVE                             R7 R4
       32 GETUPVAL                         R8 4
       33 NEWCLOSURE                       R9 P0
       34 CAPTURE                          VAL R5
       35 CALL                             R6 3 1
       36 NAMECALL                         R7 R5 K9 ["clearProgressBar"]
       38 CALL                             R7 1 0
       39 GETUPVAL                         R9 5
       40 MOVE                             R10 R6
       41 CALL                             R9 1 -1
       42 NAMECALL                         R7 R0 K10 ["dispatch"]
       44 CALL                             R7 -1 0
       45 DUPTABLE                         R7 K12 [{"revertResult"}]
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R10 R11 K4 ["Dictionary"]
       49 GETTABLEKS                       R9 R10 K5 ["keys"]
       51 MOVE                             R10 R6
       52 CALL                             R9 1 1
       53 LENGTH                           R8 R9
       54 SETTABLEKS                       R8 R7 K11 ["revertResult"]
       56 GETUPVAL                         R10 6
       57 MOVE                             R11 R7
       58 CALL                             R10 1 -1
       59 NAMECALL                         R8 R0 K10 ["dispatch"]
       61 CALL                             R8 -1 0
       62 GETUPVAL                         R8 7
       63 LOADK                            R10 K13 ["onScriptSelectionReverted"]
       64 NAMECALL                         R8 R8 K14 ["getHandler"]
       66 CALL                             R8 2 1
       67 MOVE                             R9 R7
       68 CALL                             R8 1 0
       69 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          VAL R2
        9 RETURN                           R3 1

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
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Thunks"]
       20 GETTABLEKS                       R3 R4 K10 ["OnScriptsReverted"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Actions"]
       29 GETTABLEKS                       R4 R5 K12 ["SetProcessResult"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R8 R0 K8 ["Src"]
       36 GETTABLEKS                       R7 R8 K13 ["Util"]
       38 GETTABLEKS                       R6 R7 K14 ["ScriptHistory"]
       40 GETTABLEKS                       R5 R6 K15 ["revertScripts"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R8 R0 K8 ["Src"]
       47 GETTABLEKS                       R7 R8 K13 ["Util"]
       49 GETTABLEKS                       R6 R7 K16 ["ScriptIssueSorting"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R9 R0 K8 ["Src"]
       56 GETTABLEKS                       R8 R9 K13 ["Util"]
       58 GETTABLEKS                       R7 R8 K17 ["ScriptConversionProgressTracker"]
       60 CALL                             R6 1 1
       61 DUPCLOSURE                       R7 K18 [PROTO_2]
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R3
       68 RETURN                           R7 1
