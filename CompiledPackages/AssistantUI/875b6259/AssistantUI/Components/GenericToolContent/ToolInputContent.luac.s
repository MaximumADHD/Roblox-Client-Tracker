PROTO_0:
        0 DUPTABLE                         R0 K1 [{"Input"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["ToolContent"]
        3 LOADK                            R4 K0 ["Input"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Input"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 LOADNIL                          R0
        1 GETUPVAL                         R2 0
        2 FASTCALL1                        TYPEOF R2 ; [+2]
        3 GETIMPORT                        R1 K1 [typeof]
        5 CALL                             R1 1 1
        6 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+12]
        8 GETIMPORT                        R1 K4 [pcall]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U0
       13 CALL                             R1 1 2
       14 JUMPIF                           R1 ; [+2]
       15 LOADNIL                          R3
       16 RETURN                           R3 1
       17 MOVE                             R0 R2
       18 JUMP                             ; [+1]
       19 GETUPVAL                         R0 0
       20 GETUPVAL                         R1 2
       21 GETTABLEKS                       R1 R1 K5 ["pretty"]
       23 MOVE                             R2 R0
       24 GETUPVAL                         R3 3
       25 CALL                             R1 2 -1
       26 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R1 R1 K1 ["input"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["useMemo"]
        7 DUPCLOSURE                       R3 K3 [PROTO_0]
        8 CAPTURE                          UPVAL U1
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 NEWTABLE                         R5 0 1
       20 MOVE                             R6 R1
       21 SETLIST                          R5 R6 1 [1]
       23 CALL                             R3 2 1
       24 JUMPIF                           R3 ; [+2]
       25 LOADNIL                          R4
       26 RETURN                           R4 1
       27 GETUPVAL                         R4 5
       28 CALL                             R4 0 1
       29 GETUPVAL                         R5 6
       30 GETUPVAL                         R6 7
       31 DUPTABLE                         R7 K6 [{"LayoutOrder", "Title"}]
       32 GETTABLEKS                       R8 R0 K4 ["LayoutOrder"]
       34 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       36 GETTABLEKS                       R8 R2 K7 ["Input"]
       38 SETTABLEKS                       R8 R7 K5 ["Title"]
       40 GETUPVAL                         R8 6
       41 GETUPVAL                         R9 8
       42 DUPTABLE                         R10 K9 [{"LayoutOrder", "Text"}]
       43 MOVE                             R11 R4
       44 CALL                             R11 0 1
       45 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
       47 SETTABLEKS                       R3 R10 K8 ["Text"]
       49 CALL                             R8 2 -1
       50 CALL                             R5 -1 -1
       51 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K10 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETIMPORT                        R6 K1 [script]
       39 GETTABLEKS                       R6 R6 K6 ["Parent"]
       41 GETTABLEKS                       R6 R6 K11 ["SharedToolContent"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K12 ["Resources"]
       48 GETTABLEKS                       R7 R7 K13 ["Localization"]
       50 GETTABLEKS                       R7 R7 K14 ["Translator"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K15 ["Types"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R8 R5 K16 ["ToolContainer"]
       60 GETTABLEKS                       R9 R5 K17 ["ToolText"]
       62 GETTABLEKS                       R10 R4 K18 ["createNextOrder"]
       64 GETTABLEKS                       R11 R3 K19 ["createElement"]
       66 DUPTABLE                         R12 K22 [{"multiline", "indent"}]
       67 LOADB                            R13 1
       68 SETTABLEKS                       R13 R12 K20 ["multiline"]
       70 GETIMPORT                        R13 K25 [string.rep]
       72 LOADK                            R14 K26 [" "]
       73 LOADN                            R15 2
       74 CALL                             R13 2 1
       75 SETTABLEKS                       R13 R12 K21 ["indent"]
       77 DUPCLOSURE                       R13 K27 [PROTO_3]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R9
       87 GETTABLEKS                       R14 R3 K28 ["memo"]
       89 MOVE                             R15 R13
       90 CALL                             R14 1 -1
       91 RETURN                           R14 -1
