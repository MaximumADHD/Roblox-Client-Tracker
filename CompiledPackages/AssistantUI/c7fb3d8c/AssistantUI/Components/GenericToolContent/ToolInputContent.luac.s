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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+8]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["Json"]
        6 GETTABLEKS                       R0 R1 K1 ["decode"]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 -1
       10 RETURN                           R0 -1
       11 GETUPVAL                         R0 3
       12 GETUPVAL                         R2 2
       13 NAMECALL                         R0 R0 K2 ["JSONDecode"]
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_2:
        0 LOADNIL                          R0
        1 GETUPVAL                         R2 0
        2 FASTCALL1                        TYPEOF R2 ; [+2]
        3 GETIMPORT                        R1 K1 [typeof]
        5 CALL                             R1 1 1
        6 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+14]
        8 GETIMPORT                        R1 K4 [pcall]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U3
       15 CALL                             R1 1 2
       16 JUMPIF                           R1 ; [+2]
       17 LOADNIL                          R3
       18 RETURN                           R3 1
       19 MOVE                             R0 R2
       20 JUMP                             ; [+1]
       21 GETUPVAL                         R0 0
       22 GETUPVAL                         R2 4
       23 GETTABLEKS                       R1 R2 K5 ["pretty"]
       25 MOVE                             R2 R0
       26 GETUPVAL                         R3 5
       27 CALL                             R1 2 -1
       28 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["toolUse"]
        2 GETTABLEKS                       R1 R2 K1 ["input"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K2 ["useMemo"]
        7 DUPCLOSURE                       R3 K3 [PROTO_0]
        8 CAPTURE                          UPVAL U1
        9 CALL                             R2 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K2 ["useMemo"]
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
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Parent"]
       17 GETTABLEKS                       R3 R4 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K10 ["Parent"]
       24 GETTABLEKS                       R4 R5 K12 ["ModelContextProtocol"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Parent"]
       31 GETTABLEKS                       R5 R6 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R0 K10 ["Parent"]
       38 GETTABLEKS                       R6 R7 K14 ["ReactUtils"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETIMPORT                        R9 K1 [script]
       45 GETTABLEKS                       R8 R9 K10 ["Parent"]
       47 GETTABLEKS                       R7 R8 K15 ["SharedToolContent"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R10 R0 K16 ["Resources"]
       54 GETTABLEKS                       R9 R10 K17 ["Localization"]
       56 GETTABLEKS                       R8 R9 K18 ["Translator"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R0 K19 ["Types"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K9 [require]
       66 GETTABLEKS                       R11 R0 K20 ["Flags"]
       68 GETTABLEKS                       R10 R11 K21 ["FFlagAssistantJsonEncoder"]
       70 CALL                             R9 1 1
       71 GETTABLEKS                       R10 R6 K22 ["ToolContainer"]
       73 GETTABLEKS                       R11 R6 K23 ["ToolText"]
       75 GETTABLEKS                       R12 R5 K24 ["createNextOrder"]
       77 GETTABLEKS                       R13 R4 K25 ["createElement"]
       79 DUPTABLE                         R14 K28 [{"multiline", "indent"}]
       80 LOADB                            R15 1
       81 SETTABLEKS                       R15 R14 K26 ["multiline"]
       83 GETIMPORT                        R15 K31 [string.rep]
       85 LOADK                            R16 K32 [" "]
       86 LOADN                            R17 2
       87 CALL                             R15 2 1
       88 SETTABLEKS                       R15 R14 K27 ["indent"]
       90 DUPCLOSURE                       R15 K33 [PROTO_3]
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R1
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R11
      102 GETTABLEKS                       R16 R4 K34 ["memo"]
      104 MOVE                             R17 R15
      105 CALL                             R16 1 -1
      106 RETURN                           R16 -1
