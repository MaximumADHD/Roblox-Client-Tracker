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
       67 DUPTABLE                         R1 K20 [{"Pending", "Exploring", "Found", "Subtitle"}]
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
       84 DUPTABLE                         R6 K22 [{"path"}]
       85 GETUPVAL                         R7 1
       86 SETTABLEKS                       R7 R6 K21 ["path"]
       88 NAMECALL                         R2 R2 K15 ["getText"]
       90 CALL                             R2 4 1
       91 JUMP                             ; [+6]
       92 GETUPVAL                         R2 4
       93 LOADK                            R4 K8 ["GameTree"]
       94 LOADK                            R5 K23 ["ExploringAll"]
       95 NAMECALL                         R2 R2 K15 ["getText"]
       97 CALL                             R2 3 1
       98 SETTABLEKS                       R2 R1 K17 ["Exploring"]
      100 GETUPVAL                         R2 4
      101 LOADK                            R4 K8 ["GameTree"]
      102 LOADK                            R5 K18 ["Found"]
      103 DUPTABLE                         R6 K25 [{"count"}]
      104 GETUPVAL                         R7 5
      105 SETTABLEKS                       R7 R6 K24 ["count"]
      107 NAMECALL                         R2 R2 K15 ["getText"]
      109 CALL                             R2 4 1
      110 SETTABLEKS                       R2 R1 K18 ["Found"]
      112 SETTABLEKS                       R0 R1 K19 ["Subtitle"]
      114 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["toolUse"]
        2 JUMPIFNOT                        R2 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["toolUse"]
        5 GETTABLEKS                       R1 R1 K1 ["input"]
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 GETTABLEKS                       R3 R0 K2 ["toolResult"]
       11 JUMPIFNOT                        R3 ; [+5]
       12 GETTABLEKS                       R2 R0 K2 ["toolResult"]
       14 GETTABLEKS                       R2 R2 K3 ["structuredContent"]
       16 JUMP                             ; [+1]
       17 LOADNIL                          R2
       18 JUMPIFNOT                        R1 ; [+3]
       19 GETTABLEKS                       R3 R1 K4 ["path"]
       21 JUMPIF                           R3 ; [+1]
       22 LOADNIL                          R3
       23 JUMPIFNOT                        R1 ; [+3]
       24 GETTABLEKS                       R4 R1 K5 ["keywords"]
       26 JUMPIF                           R4 ; [+1]
       27 LOADNIL                          R4
       28 JUMPIFNOT                        R1 ; [+3]
       29 GETTABLEKS                       R5 R1 K6 ["instance_type"]
       31 JUMPIF                           R5 ; [+1]
       32 LOADNIL                          R5
       33 JUMPIFNOT                        R2 ; [+3]
       34 GETTABLEKS                       R6 R2 K7 ["count"]
       36 JUMPIF                           R6 ; [+1]
       37 LOADN                            R6 0
       38 GETTABLEKS                       R8 R0 K2 ["toolResult"]
       40 JUMPIFNOTEQKNIL                  R8 ; [+2]
       42 LOADB                            R7 0 +1
       43 LOADB                            R7 1
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R8 R8 K8 ["useMemo"]
       47 NEWCLOSURE                       R9 P0
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R5
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          VAL R6
       54 NEWTABLE                         R10 0 6
       56 GETUPVAL                         R11 1
       57 GETTABLEKS                       R11 R11 K9 ["locale"]
       59 MOVE                             R12 R7
       60 MOVE                             R13 R3
       61 MOVE                             R14 R4
       62 MOVE                             R15 R5
       63 MOVE                             R16 R6
       64 SETLIST                          R10 R11 6 [1]
       66 CALL                             R8 2 1
       67 LOADK                            R9 K10 [""]
       68 LOADNIL                          R10
       69 GETTABLEKS                       R11 R0 K2 ["toolResult"]
       71 JUMPIFNOT                        R11 ; [+5]
       72 GETTABLEKS                       R9 R8 K11 ["Found"]
       74 GETTABLEKS                       R10 R8 K12 ["Subtitle"]
       76 JUMP                             ; [+8]
       77 GETTABLEKS                       R11 R0 K0 ["toolUse"]
       79 JUMPIFNOT                        R11 ; [+3]
       80 GETTABLEKS                       R9 R8 K13 ["Exploring"]
       82 JUMP                             ; [+2]
       83 GETTABLEKS                       R9 R8 K14 ["Pending"]
       85 GETUPVAL                         R11 2
       86 GETUPVAL                         R12 3
       87 GETTABLEKS                       R12 R12 K15 ["ContentWidget"]
       89 GETUPVAL                         R13 4
       90 GETTABLEKS                       R13 R13 K16 ["join"]
       92 MOVE                             R14 R0
       93 DUPTABLE                         R15 K20 [{"type", "summary", "subtitle"}]
       94 GETUPVAL                         R16 3
       95 GETTABLEKS                       R16 R16 K21 ["Type"]
       97 SETTABLEKS                       R16 R15 K17 ["type"]
       99 SETTABLEKS                       R9 R15 K18 ["summary"]
      101 SETTABLEKS                       R10 R15 K19 ["subtitle"]
      103 CALL                             R13 2 -1
      104 CALL                             R11 -1 -1
      105 RETURN                           R11 -1

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
       46 DUPCLOSURE                       R7 K17 [PROTO_1]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R1
       52 DUPTABLE                         R8 K21 [{"Type", "ContentWidget", "Serialization"}]
       53 LOADK                            R9 K22 ["GameTree"]
       54 SETTABLEKS                       R9 R8 K18 ["Type"]
       56 GETTABLEKS                       R9 R2 K23 ["memo"]
       58 MOVE                             R10 R7
       59 CALL                             R9 1 1
       60 SETTABLEKS                       R9 R8 K19 ["ContentWidget"]
       62 LOADNIL                          R9
       63 SETTABLEKS                       R9 R8 K20 ["Serialization"]
       65 RETURN                           R8 1
