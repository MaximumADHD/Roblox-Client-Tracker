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
        0 GETTABLEKS                       R2 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        5 GETTABLEKS                       R1 R1 K1 ["input"]
        7 JUMPIF                           R1 ; [+2]
        8 NEWTABLE                         R1 0 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["withDefault"]
       13 GETTABLEKS                       R3 R1 K3 ["path"]
       15 LOADNIL                          R4
       16 CALL                             R2 2 1
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K2 ["withDefault"]
       20 GETTABLEKS                       R4 R1 K4 ["keywords"]
       22 LOADNIL                          R5
       23 CALL                             R3 2 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K2 ["withDefault"]
       27 GETTABLEKS                       R5 R1 K5 ["instance_type"]
       29 LOADNIL                          R6
       30 CALL                             R4 2 1
       31 GETTABLEKS                       R6 R0 K6 ["toolResult"]
       33 JUMPIFNOT                        R6 ; [+5]
       34 GETTABLEKS                       R5 R0 K6 ["toolResult"]
       36 GETTABLEKS                       R5 R5 K7 ["structuredContent"]
       38 JUMPIF                           R5 ; [+2]
       39 NEWTABLE                         R5 0 0
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K2 ["withDefault"]
       44 GETTABLEKS                       R7 R5 K8 ["count"]
       46 LOADN                            R8 0
       47 CALL                             R6 2 1
       48 GETTABLEKS                       R8 R0 K6 ["toolResult"]
       50 JUMPIFNOTEQKNIL                  R8 ; [+2]
       52 LOADB                            R7 0 +1
       53 LOADB                            R7 1
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K9 ["useMemo"]
       57 NEWCLOSURE                       R9 P0
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R4
       62 CAPTURE                          UPVAL U2
       63 CAPTURE                          VAL R6
       64 NEWTABLE                         R10 0 6
       66 GETUPVAL                         R11 2
       67 GETTABLEKS                       R11 R11 K10 ["locale"]
       69 MOVE                             R12 R7
       70 MOVE                             R13 R2
       71 MOVE                             R14 R3
       72 MOVE                             R15 R4
       73 MOVE                             R16 R6
       74 SETLIST                          R10 R11 6 [1]
       76 CALL                             R8 2 1
       77 LOADK                            R9 K11 [""]
       78 LOADNIL                          R10
       79 GETTABLEKS                       R11 R0 K6 ["toolResult"]
       81 JUMPIFNOT                        R11 ; [+18]
       82 GETTABLEKS                       R11 R0 K6 ["toolResult"]
       84 GETTABLEKS                       R11 R11 K7 ["structuredContent"]
       86 JUMPIFNOT                        R11 ; [+10]
       87 GETTABLEKS                       R11 R0 K6 ["toolResult"]
       89 GETTABLEKS                       R11 R11 K12 ["isError"]
       91 JUMPIF                           R11 ; [+5]
       92 GETTABLEKS                       R9 R8 K13 ["Found"]
       94 GETTABLEKS                       R10 R8 K14 ["Subtitle"]
       96 JUMP                             ; [+11]
       97 GETTABLEKS                       R9 R8 K15 ["Failed"]
       99 JUMP                             ; [+8]
      100 GETTABLEKS                       R11 R0 K0 ["toolUse"]
      102 JUMPIFNOT                        R11 ; [+3]
      103 GETTABLEKS                       R9 R8 K16 ["Exploring"]
      105 JUMP                             ; [+2]
      106 GETTABLEKS                       R9 R8 K17 ["Pending"]
      108 GETUPVAL                         R11 3
      109 GETUPVAL                         R12 4
      110 GETTABLEKS                       R12 R12 K18 ["ContentWidget"]
      112 GETUPVAL                         R13 5
      113 GETTABLEKS                       R13 R13 K19 ["join"]
      115 MOVE                             R14 R0
      116 DUPTABLE                         R15 K23 [{"type", "summary", "subtitle"}]
      117 GETUPVAL                         R16 4
      118 GETTABLEKS                       R16 R16 K24 ["Type"]
      120 SETTABLEKS                       R16 R15 K20 ["type"]
      122 SETTABLEKS                       R9 R15 K21 ["summary"]
      124 SETTABLEKS                       R10 R15 K22 ["subtitle"]
      126 CALL                             R13 2 -1
      127 CALL                             R11 -1 -1
      128 RETURN                           R11 -1

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
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K16 ["Util"]
       48 GETTABLEKS                       R7 R7 K17 ["WidgetUtils"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R2 K18 ["createElement"]
       53 DUPCLOSURE                       R8 K19 [PROTO_1]
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R1
       60 DUPTABLE                         R9 K25 [{["Type"] = "GameTree", ["ContentWidget"], ["Serialization"] = }]
       61 GETTABLEKS                       R10 R2 K26 ["memo"]
       63 MOVE                             R11 R8
       64 CALL                             R10 1 1
       65 SETTABLEKS                       R10 R9 K22 ["ContentWidget"]
       67 RETURN                           R9 1
