PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_1:
        0 DUPCLOSURE                       R2 K0 [PROTO_0]
        1 RETURN                           R2 1

PROTO_2:
        0 JUMPIFEQKNIL                     R1 ; [+5]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R3 0
        4 GETTABLE                         R2 R3 R0
        5 RETURN                           R2 1
        6 GETIMPORT                        R2 K1 [game]
        8 MOVE                             R4 R0
        9 NAMECALL                         R2 R2 K2 ["GetService"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R6 R0 K5 ["Src"]
       15 GETTABLEKS                       R5 R6 K6 ["Util"]
       17 GETTABLEKS                       R4 R5 K7 ["LinkerFunction"]
       19 GETTABLEKS                       R3 R4 K8 ["Mocks"]
       21 GETTABLEKS                       R2 R3 K9 ["MockUniqueIdLookupService"]
       23 CALL                             R1 1 1
       24 NEWTABLE                         R2 1 0
       26 DUPTABLE                         R3 K11 [{"__index"}]
       27 DUPCLOSURE                       R4 K12 [PROTO_1]
       28 SETTABLEKS                       R4 R3 K10 ["__index"]
       30 DUPTABLE                         R4 K17 [{"GuiService", "UniqueIdLookupService", "Selection", "TutorialService"}]
       31 NEWTABLE                         R6 0 0
       33 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
       35 MOVE                             R7 R3
       36 GETIMPORT                        R5 K19 [setmetatable]
       38 CALL                             R5 2 1
       39 SETTABLEKS                       R5 R4 K13 ["GuiService"]
       41 SETTABLEKS                       R1 R4 K14 ["UniqueIdLookupService"]
       43 NEWTABLE                         R6 0 0
       45 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
       47 MOVE                             R7 R3
       48 GETIMPORT                        R5 K19 [setmetatable]
       50 CALL                             R5 2 1
       51 SETTABLEKS                       R5 R4 K15 ["Selection"]
       53 NEWTABLE                         R6 0 0
       55 FASTCALL2                        SETMETATABLE R6 R3 ; [+4]
       57 MOVE                             R7 R3
       58 GETIMPORT                        R5 K19 [setmetatable]
       60 CALL                             R5 2 1
       61 SETTABLEKS                       R5 R4 K16 ["TutorialService"]
       63 DUPCLOSURE                       R5 K20 [PROTO_2]
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R5 R2 K21 ["GetService"]
       67 RETURN                           R2 1
