PROTO_0:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOT                        R1 ; [+64]
        3 GETIMPORT                        R1 K2 [table.create]
        5 LOADN                            R2 3
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 JUMPIFNOT                        R2 ; [+10]
        9 GETUPVAL                         R2 1
       10 JUMPIFEQKS                       R2 K3 [""] ; [+8]
       12 GETUPVAL                         R4 1
       13 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       15 MOVE                             R3 R1
       16 GETIMPORT                        R2 K5 [table.insert]
       18 CALL                             R2 2 0
       19 GETUPVAL                         R2 2
       20 JUMPIFNOT                        R2 ; [+15]
       21 GETUPVAL                         R2 2
       22 JUMPIFEQKS                       R2 K3 [""] ; [+13]
       24 LOADK                            R5 K6 ["'%*'"]
       25 GETUPVAL                         R7 2
       26 NAMECALL                         R5 R5 K7 ["format"]
       28 CALL                             R5 2 1
       29 MOVE                             R4 R5
       30 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       32 MOVE                             R3 R1
       33 GETIMPORT                        R2 K5 [table.insert]
       35 CALL                             R2 2 0
       36 GETUPVAL                         R2 3
       37 JUMPIFNOT                        R2 ; [+10]
       38 GETUPVAL                         R2 3
       39 JUMPIFEQKS                       R2 K3 [""] ; [+8]
       41 GETUPVAL                         R4 3
       42 FASTCALL2                        TABLE_INSERT R1 R4 ; [+4]
       44 MOVE                             R3 R1
       45 GETIMPORT                        R2 K5 [table.insert]
       47 CALL                             R2 2 0
       48 LENGTH                           R2 R1
       49 LOADN                            R3 0
       50 JUMPIFNOTLT                      R3 R2 ; [+16]
       52 GETUPVAL                         R2 4
       53 LOADK                            R4 K8 ["GameTree"]
       54 LOADK                            R5 K9 ["Listed"]
       55 DUPTABLE                         R6 K11 [{"params"}]
       56 GETIMPORT                        R7 K13 [table.concat]
       58 MOVE                             R8 R1
       59 LOADK                            R9 K14 [", "]
       60 CALL                             R7 2 1
       61 SETTABLEKS                       R7 R6 K10 ["params"]
       63 NAMECALL                         R2 R2 K15 ["getText"]
       65 CALL                             R2 4 1
       66 MOVE                             R0 R2
       67 DUPTABLE                         R1 K21 [{"Pending", "Exploring", "Found", "Failed", "Subtitle"}]
       68 GETUPVAL                         R2 4
       69 LOADK                            R4 K8 ["GameTree"]
       70 LOADK                            R5 K16 ["Pending"]
       71 NAMECALL                         R2 R2 K15 ["getText"]
       73 CALL                             R2 3 1
       74 SETTABLEKS                       R2 R1 K16 ["Pending"]
       76 GETUPVAL                         R3 1
       77 JUMPIFNOT                        R3 ; [+14]
       78 GETUPVAL                         R3 1
       79 JUMPIFEQKS                       R3 K3 [""] ; [+12]
       81 GETUPVAL                         R2 4
       82 LOADK                            R4 K8 ["GameTree"]
       83 LOADK                            R5 K17 ["Exploring"]
       84 DUPTABLE                         R6 K23 [{"path"}]
       85 GETUPVAL                         R7 1
       86 SETTABLEKS                       R7 R6 K22 ["path"]
       88 NAMECALL                         R2 R2 K15 ["getText"]
       90 CALL                             R2 4 1
       91 JUMP                             ; [+6]
       92 GETUPVAL                         R2 4
       93 LOADK                            R4 K8 ["GameTree"]
       94 LOADK                            R5 K24 ["ExploringAll"]
       95 NAMECALL                         R2 R2 K15 ["getText"]
       97 CALL                             R2 3 1
       98 SETTABLEKS                       R2 R1 K17 ["Exploring"]
      100 GETUPVAL                         R2 4
      101 LOADK                            R4 K8 ["GameTree"]
      102 LOADK                            R5 K18 ["Found"]
      103 DUPTABLE                         R6 K26 [{"count"}]
      104 GETUPVAL                         R7 5
      105 SETTABLEKS                       R7 R6 K25 ["count"]
      107 NAMECALL                         R2 R2 K15 ["getText"]
      109 CALL                             R2 4 1
      110 SETTABLEKS                       R2 R1 K18 ["Found"]
      112 GETUPVAL                         R2 4
      113 LOADK                            R4 K8 ["GameTree"]
      114 LOADK                            R5 K19 ["Failed"]
      115 NAMECALL                         R2 R2 K15 ["getText"]
      117 CALL                             R2 3 1
      118 SETTABLEKS                       R2 R1 K19 ["Failed"]
      120 SETTABLEKS                       R0 R1 K20 ["Subtitle"]
      122 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R2 R1 K1 ["input"]
        5 JUMPIF                           R2 ; [+1]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R2 K2 ["path"]
        9 GETTABLEKS                       R4 R2 K3 ["keywords"]
       11 GETTABLEKS                       R5 R2 K4 ["instance_type"]
       13 GETTABLEKS                       R6 R0 K5 ["toolResult"]
       15 JUMPIFNOT                        R6 ; [+3]
       16 GETTABLEKS                       R7 R6 K6 ["structuredContent"]
       18 JUMPIF                           R7 ; [+1]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R9 R7 K8 ["count"]
       22 ORK                              R8 R9 K7 [0]
       23 JUMPIFNOTEQKNIL                  R6 ; [+2]
       25 LOADB                            R9 0 +1
       26 LOADB                            R9 1
       27 GETUPVAL                         R10 2
       28 GETTABLEKS                       R10 R10 K9 ["useMemo"]
       30 NEWCLOSURE                       R11 P0
       31 CAPTURE                          VAL R9
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R5
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R8
       37 NEWTABLE                         R12 0 6
       39 GETUPVAL                         R13 3
       40 GETTABLEKS                       R13 R13 K10 ["locale"]
       42 MOVE                             R14 R9
       43 MOVE                             R15 R3
       44 MOVE                             R16 R4
       45 MOVE                             R17 R5
       46 MOVE                             R18 R8
       47 SETLIST                          R12 R13 6 [1]
       49 CALL                             R10 2 1
       50 LOADK                            R11 K11 [""]
       51 LOADNIL                          R12
       52 JUMPIFNOT                        R6 ; [+14]
       53 GETTABLEKS                       R13 R6 K6 ["structuredContent"]
       55 JUMPIFNOT                        R13 ; [+8]
       56 GETTABLEKS                       R13 R6 K12 ["isError"]
       58 JUMPIF                           R13 ; [+5]
       59 GETTABLEKS                       R11 R10 K13 ["Found"]
       61 GETTABLEKS                       R12 R10 K14 ["Subtitle"]
       63 JUMP                             ; [+9]
       64 GETTABLEKS                       R11 R10 K15 ["Failed"]
       66 JUMP                             ; [+6]
       67 JUMPIFNOT                        R1 ; [+3]
       68 GETTABLEKS                       R11 R10 K16 ["Exploring"]
       70 JUMP                             ; [+2]
       71 GETTABLEKS                       R11 R10 K17 ["Pending"]
       73 GETUPVAL                         R13 4
       74 GETUPVAL                         R14 5
       75 GETTABLEKS                       R14 R14 K18 ["ContentWidget"]
       77 GETUPVAL                         R15 6
       78 GETTABLEKS                       R15 R15 K19 ["join"]
       80 MOVE                             R16 R0
       81 DUPTABLE                         R17 K23 [{"type", "summary", "subtitle"}]
       82 GETUPVAL                         R18 5
       83 GETTABLEKS                       R18 R18 K24 ["Type"]
       85 SETTABLEKS                       R18 R17 K20 ["type"]
       87 SETTABLEKS                       R11 R17 K21 ["summary"]
       89 SETTABLEKS                       R12 R17 K22 ["subtitle"]
       91 CALL                             R15 2 -1
       92 CALL                             R13 -1 -1
       93 RETURN                           R13 -1

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
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["ContentWidgets"]
       27 GETTABLEKS                       R4 R4 K11 ["SummarizedContentWidget"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Resources"]
       34 GETTABLEKS                       R5 R5 K13 ["Localization"]
       36 GETTABLEKS                       R5 R5 K14 ["Translator"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K15 ["Types"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R2 K16 ["createElement"]
       46 NEWTABLE                         R7 0 0
       48 NEWTABLE                         R8 0 0
       50 DUPCLOSURE                       R9 K17 [PROTO_1]
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R1
       58 DUPTABLE                         R10 K21 [{["Type"] = "GameTree", ["ContentWidget"]}]
       59 GETTABLEKS                       R11 R2 K22 ["memo"]
       61 MOVE                             R12 R9
       62 CALL                             R11 1 1
       63 SETTABLEKS                       R11 R10 K20 ["ContentWidget"]
       65 RETURN                           R10 1
