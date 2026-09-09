PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+23]
        7 LENGTH                           R2 R0
        8 JUMPIFNOTLE                      R2 R1 ; [+2]
       10 RETURN                           R0 1
       11 LOADN                            R7 1
       12 FASTCALL3                        STRING_SUB R0 R7 R1
       14 MOVE                             R6 R0
       15 MOVE                             R8 R1
       16 GETIMPORT                        R5 K4 [string.sub]
       18 CALL                             R5 3 1
       19 MOVE                             R3 R5
       20 LOADK                            R5 K5 ["... (truncated: %* chars)"]
       21 LENGTH                           R8 R0
       22 SUB                              R7 R8 R1
       23 NAMECALL                         R5 R5 K6 ["format"]
       25 CALL                             R5 2 1
       26 MOVE                             R4 R5
       27 CONCAT                           R2 R3 R4
       28 RETURN                           R2 1
       29 FASTCALL1                        TYPEOF R0 ; [+3]
       30 MOVE                             R3 R0
       31 GETIMPORT                        R2 K1 [typeof]
       33 CALL                             R2 1 1
       34 JUMPIFNOTEQKS                    R2 K7 ["table"] ; [+15]
       36 NEWTABLE                         R2 0 0
       38 MOVE                             R3 R0
       39 LOADNIL                          R4
       40 LOADNIL                          R5
       41 FORGPREP                         R3
       42 GETUPVAL                         R8 0
       43 MOVE                             R9 R7
       44 MOVE                             R10 R1
       45 CALL                             R8 2 1
       46 SETTABLE                         R8 R2 R6
       47 FORGLOOP                         R3 2 ; [-6]
       49 RETURN                           R2 1
       50 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K1 [{"Input"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["ToolContent"]
        3 LOADK                            R4 K0 ["Input"]
        4 NAMECALL                         R1 R1 K3 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Input"]
        9 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Json"]
        3 GETTABLEKS                       R0 R0 K1 ["decode"]
        5 GETUPVAL                         R1 1
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_3:
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
       21 GETTABLEKS                       R1 R1 K5 ["FFlagAssistantAskInputTool"]
       23 JUMPIFNOT                        R1 ; [+7]
       24 GETUPVAL                         R1 3
       25 MOVE                             R2 R0
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K6 ["FIntAssistantMaxToolInputStringLen"]
       29 CALL                             R1 2 1
       30 MOVE                             R0 R1
       31 GETUPVAL                         R1 4
       32 GETTABLEKS                       R1 R1 K7 ["pretty"]
       34 MOVE                             R2 R0
       35 GETUPVAL                         R3 5
       36 CALL                             R1 2 -1
       37 RETURN                           R1 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R1 R1 K1 ["input"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["useMemo"]
        7 DUPCLOSURE                       R3 K3 [PROTO_1]
        8 CAPTURE                          UPVAL U1
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          UPVAL U6
       20 NEWTABLE                         R5 0 1
       22 MOVE                             R6 R1
       23 SETLIST                          R5 R6 1 [1]
       25 CALL                             R3 2 1
       26 JUMPIF                           R3 ; [+2]
       27 LOADNIL                          R4
       28 RETURN                           R4 1
       29 GETUPVAL                         R4 7
       30 CALL                             R4 0 1
       31 GETUPVAL                         R5 8
       32 GETUPVAL                         R6 9
       33 DUPTABLE                         R7 K6 [{"LayoutOrder", "Title"}]
       34 GETTABLEKS                       R8 R0 K4 ["LayoutOrder"]
       36 SETTABLEKS                       R8 R7 K4 ["LayoutOrder"]
       38 GETTABLEKS                       R8 R2 K7 ["Input"]
       40 SETTABLEKS                       R8 R7 K5 ["Title"]
       42 GETUPVAL                         R8 8
       43 GETUPVAL                         R9 10
       44 DUPTABLE                         R10 K9 [{"LayoutOrder", "Text"}]
       45 MOVE                             R11 R4
       46 CALL                             R11 0 1
       47 SETTABLEKS                       R11 R10 K4 ["LayoutOrder"]
       49 SETTABLEKS                       R3 R10 K8 ["Text"]
       51 CALL                             R8 2 -1
       52 CALL                             R5 -1 -1
       53 RETURN                           R5 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Flags"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K6 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["ModelContextProtocol"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Parent"]
       30 GETTABLEKS                       R5 R5 K10 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Parent"]
       37 GETTABLEKS                       R6 R6 K11 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETIMPORT                        R7 K1 [script]
       44 GETTABLEKS                       R7 R7 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K12 ["SharedToolContent"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K13 ["Resources"]
       53 GETTABLEKS                       R8 R8 K14 ["Localization"]
       55 GETTABLEKS                       R8 R8 K15 ["Translator"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K16 ["Types"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R6 K17 ["ToolContainer"]
       65 GETTABLEKS                       R10 R6 K18 ["ToolText"]
       67 GETTABLEKS                       R11 R5 K19 ["createNextOrder"]
       69 GETTABLEKS                       R12 R4 K20 ["createElement"]
       71 DUPTABLE                         R13 K25 [{["multiline"] = True, ["indent"], ["depth"]}]
       72 GETIMPORT                        R14 K28 [string.rep]
       74 LOADK                            R15 K29 [" "]
       75 LOADN                            R16 2
       76 CALL                             R14 2 1
       77 SETTABLEKS                       R14 R13 K23 ["indent"]
       79 GETTABLEKS                       R15 R2 K30 ["FFlagAssistantAskInputTool"]
       81 JUMPIFNOT                        R15 ; [+2]
       82 LOADN                            R14 8
       83 JUMP                             ; [+1]
       84 LOADNIL                          R14
       85 SETTABLEKS                       R14 R13 K24 ["depth"]
       87 DUPCLOSURE                       R14 K31 [PROTO_0]
       88 CAPTURE                          VAL R14
       89 DUPCLOSURE                       R15 K32 [PROTO_4]
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R14
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R11
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R10
      101 GETTABLEKS                       R16 R4 K33 ["memo"]
      103 MOVE                             R17 R15
      104 CALL                             R16 1 -1
      105 RETURN                           R16 -1
