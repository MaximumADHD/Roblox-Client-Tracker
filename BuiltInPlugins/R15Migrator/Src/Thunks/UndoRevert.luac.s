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
        9 GETTABLEKS                       R3 R4 K3 ["revertedScripts"]
       11 NEWTABLE                         R4 0 0
       13 MOVE                             R5 R2
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 GETTABLEKS                       R10 R9 K4 ["scriptId"]
       19 JUMPIFNOT                        R10 ; [+15]
       20 GETTABLEKS                       R10 R9 K5 ["range"]
       22 JUMPIF                           R10 ; [+12]
       23 GETTABLEKS                       R11 R9 K4 ["scriptId"]
       25 GETTABLE                         R10 R3 R11
       26 JUMPIFNOT                        R10 ; [+8]
       27 GETTABLEKS                       R12 R9 K4 ["scriptId"]
       29 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       31 MOVE                             R11 R4
       32 GETIMPORT                        R10 K8 [table.insert]
       34 CALL                             R10 2 0
       35 FORGLOOP                         R5 2 ; [-19]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R5 R6 K9 ["new"]
       40 LOADK                            R6 K10 ["UndoRevert"]
       41 LENGTH                           R7 R4
       42 MOVE                             R8 R0
       43 CALL                             R5 3 1
       44 GETUPVAL                         R6 1
       45 MOVE                             R7 R4
       46 GETUPVAL                         R8 2
       47 NEWCLOSURE                       R9 P0
       48 CAPTURE                          VAL R5
       49 CALL                             R6 3 0
       50 NAMECALL                         R6 R5 K11 ["clearProgressBar"]
       52 CALL                             R6 1 0
       53 DUPTABLE                         R6 K13 [{"undoRevertResult"}]
       54 LENGTH                           R7 R4
       55 SETTABLEKS                       R7 R6 K12 ["undoRevertResult"]
       57 GETUPVAL                         R9 3
       58 MOVE                             R10 R6
       59 CALL                             R9 1 -1
       60 NAMECALL                         R7 R0 K14 ["dispatch"]
       62 CALL                             R7 -1 0
       63 GETUPVAL                         R7 4
       64 LOADK                            R9 K15 ["onScriptSelectionRevertUndo"]
       65 NAMECALL                         R7 R7 K16 ["getHandler"]
       67 CALL                             R7 2 1
       68 MOVE                             R8 R6
       69 CALL                             R7 1 0
       70 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R2
        6 RETURN                           R3 1

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
       18 GETTABLEKS                       R6 R0 K6 ["Src"]
       20 GETTABLEKS                       R5 R6 K9 ["Util"]
       22 GETTABLEKS                       R4 R5 K10 ["ScriptHistory"]
       24 GETTABLEKS                       R3 R4 K11 ["undoRevert"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R6 K9 ["Util"]
       33 GETTABLEKS                       R4 R5 K12 ["ScriptConversionProgressTracker"]
       35 CALL                             R3 1 1
       36 DUPCLOSURE                       R4 K13 [PROTO_2]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R1
       40 RETURN                           R4 1
