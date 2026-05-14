PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["fileName"]
        2 JUMPIFNOTEQKS                    R2 K1 [""] ; [+9]
        4 GETTABLEKS                       R3 R0 K2 ["ScriptInfo"]
        6 GETTABLEKS                       R4 R1 K3 ["scriptRefGuid"]
        8 GETTABLE                         R2 R3 R4
        9 JUMPIFEQKNIL                     R2 ; [+2]
       11 RETURN                           R0 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K4 ["Dictionary"]
       15 GETTABLEKS                       R2 R2 K5 ["join"]
       17 GETTABLEKS                       R3 R0 K2 ["ScriptInfo"]
       19 NEWTABLE                         R4 1 0
       21 GETTABLEKS                       R5 R1 K3 ["scriptRefGuid"]
       23 GETTABLEKS                       R6 R1 K0 ["fileName"]
       25 SETTABLE                         R6 R4 R5
       26 CALL                             R2 2 1
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K4 ["Dictionary"]
       30 GETTABLEKS                       R3 R3 K5 ["join"]
       32 MOVE                             R4 R0
       33 DUPTABLE                         R5 K6 [{"ScriptInfo"}]
       34 SETTABLEKS                       R2 R5 K2 ["ScriptInfo"]
       36 CALL                             R3 2 -1
       37 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 GETTABLEKS                       R3 R0 K2 ["ScriptLineContents"]
        7 NEWTABLE                         R4 1 0
        9 GETTABLEKS                       R5 R1 K3 ["scriptRefGuid"]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K0 ["Dictionary"]
       14 GETTABLEKS                       R6 R6 K1 ["join"]
       16 GETTABLEKS                       R8 R0 K2 ["ScriptLineContents"]
       18 GETTABLEKS                       R9 R1 K3 ["scriptRefGuid"]
       20 GETTABLE                         R7 R8 R9
       21 JUMPIF                           R7 ; [+2]
       22 NEWTABLE                         R7 0 0
       24 NEWTABLE                         R8 1 0
       26 GETTABLEKS                       R9 R1 K4 ["lineNumber"]
       28 GETTABLEKS                       R10 R1 K5 ["source"]
       30 SETTABLE                         R10 R8 R9
       31 CALL                             R6 2 1
       32 SETTABLE                         R6 R4 R5
       33 CALL                             R2 2 1
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K0 ["Dictionary"]
       37 GETTABLEKS                       R3 R3 K1 ["join"]
       39 MOVE                             R4 R0
       40 DUPTABLE                         R5 K6 [{"ScriptLineContents"}]
       41 SETTABLEKS                       R2 R5 K2 ["ScriptLineContents"]
       43 CALL                             R3 2 -1
       44 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K8 ["Src"]
       25 GETTABLEKS                       R3 R3 K9 ["Actions"]
       27 GETIMPORT                        R4 K4 [require]
       29 GETTABLEKS                       R5 R3 K10 ["Common"]
       31 GETTABLEKS                       R5 R5 K11 ["SetFilenameForGuid"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R6 R3 K10 ["Common"]
       38 GETTABLEKS                       R6 R6 K12 ["SetScriptSourceLine"]
       40 CALL                             R5 1 1
       41 DUPTABLE                         R6 K15 [{"ScriptInfo", "ScriptLineContents"}]
       42 NEWTABLE                         R7 0 0
       44 SETTABLEKS                       R7 R6 K13 ["ScriptInfo"]
       46 NEWTABLE                         R7 0 0
       48 SETTABLEKS                       R7 R6 K14 ["ScriptLineContents"]
       50 GETTABLEKS                       R7 R1 K16 ["createReducer"]
       52 MOVE                             R8 R6
       53 NEWTABLE                         R9 2 0
       55 GETTABLEKS                       R10 R4 K17 ["name"]
       57 DUPCLOSURE                       R11 K18 [PROTO_0]
       58 CAPTURE                          VAL R2
       59 SETTABLE                         R11 R9 R10
       60 GETTABLEKS                       R10 R5 K17 ["name"]
       62 DUPCLOSURE                       R11 K19 [PROTO_1]
       63 CAPTURE                          VAL R2
       64 SETTABLE                         R11 R9 R10
       65 CALL                             R7 2 -1
       66 RETURN                           R7 -1
