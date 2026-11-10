PROTO_0:
        0 LOADK                            R1 K0 ["%*/%*"]
        1 GETTABLEKS                       R3 R0 K1 ["sessionId"]
        3 GETTABLEKS                       R4 R0 K2 ["threadId"]
        5 NAMECALL                         R1 R1 K3 ["format"]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R2 R3 R1
        6 RETURN                           R2 1
        7 GETUPVAL                         R3 2
        8 GETTABLE                         R2 R3 R0
        9 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R0
        4 GETTABLEKS                       R2 R2 K3 ["versions"]
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R7 R1 K0 ["toolUseId"]
        3 GETTABLE                         R5 R6 R7
        4 JUMPIFEQKNIL                     R5 ; [+2]
        6 LOADB                            R4 0 +1
        7 LOADB                            R4 1
        8 FASTCALL2K                       ASSERT R4 K1 ; [+4]
       10 LOADK                            R5 K1 ["Generation already recorded"]
       11 GETIMPORT                        R3 K3 [assert]
       13 CALL                             R3 2 0
       14 LOADB                            R4 1
       15 JUMPIFEQKNIL                     R2 ; [+9]
       17 GETTABLEKS                       R5 R2 K4 ["editSource"]
       19 GETTABLEKS                       R6 R1 K4 ["editSource"]
       21 JUMPIFEQ                         R5 R6 ; [+2]
       23 LOADB                            R4 0 +1
       24 LOADB                            R4 1
       25 FASTCALL2K                       ASSERT R4 K5 ; [+4]
       27 LOADK                            R5 K5 ["Generation mode must match its chain"]
       28 GETIMPORT                        R3 K3 [assert]
       30 CALL                             R3 2 0
       31 JUMPIFEQKNIL                     R2 ; [+4]
       33 GETTABLEKS                       R3 R2 K6 ["chainId"]
       35 JUMP                             ; [+5]
       36 GETUPVAL                         R3 1
       37 LOADB                            R5 0
       38 NAMECALL                         R3 R3 K7 ["GenerateGUID"]
       40 CALL                             R3 2 1
       41 GETUPVAL                         R5 2
       42 GETTABLE                         R4 R5 R3
       43 JUMPIFNOTEQKNIL                  R4 ; [+23]
       45 DUPTABLE                         R5 K10 [{"scopeKey", "versions"}]
       46 JUMPIFEQKNIL                     R0 ; [+10]
       48 LOADK                            R6 K11 ["%*/%*"]
       49 GETTABLEKS                       R8 R0 K12 ["sessionId"]
       51 GETTABLEKS                       R9 R0 K13 ["threadId"]
       53 NAMECALL                         R6 R6 K14 ["format"]
       55 CALL                             R6 3 1
       56 JUMP                             ; [+1]
       57 LOADNIL                          R6
       58 SETTABLEKS                       R6 R5 K8 ["scopeKey"]
       60 NEWTABLE                         R6 0 0
       62 SETTABLEKS                       R6 R5 K9 ["versions"]
       64 MOVE                             R4 R5
       65 GETUPVAL                         R5 2
       66 SETTABLE                         R4 R5 R3
       67 DUPTABLE                         R5 K20 [{"versionId", "chainId", "toolUseId", "contextId", "generationId", "editSource", "name", "duration"}]
       68 GETUPVAL                         R6 1
       69 LOADB                            R8 0
       70 NAMECALL                         R6 R6 K7 ["GenerateGUID"]
       72 CALL                             R6 2 1
       73 SETTABLEKS                       R6 R5 K15 ["versionId"]
       75 SETTABLEKS                       R3 R5 K6 ["chainId"]
       77 GETTABLEKS                       R6 R1 K0 ["toolUseId"]
       79 SETTABLEKS                       R6 R5 K0 ["toolUseId"]
       81 GETTABLEKS                       R6 R1 K16 ["contextId"]
       83 SETTABLEKS                       R6 R5 K16 ["contextId"]
       85 GETTABLEKS                       R6 R1 K17 ["generationId"]
       87 SETTABLEKS                       R6 R5 K17 ["generationId"]
       89 GETTABLEKS                       R6 R1 K4 ["editSource"]
       91 SETTABLEKS                       R6 R5 K4 ["editSource"]
       93 GETTABLEKS                       R6 R1 K18 ["name"]
       95 SETTABLEKS                       R6 R5 K18 ["name"]
       97 GETTABLEKS                       R6 R1 K19 ["duration"]
       99 SETTABLEKS                       R6 R5 K19 ["duration"]
      101 GETIMPORT                        R6 K23 [table.freeze]
      103 MOVE                             R7 R5
      104 CALL                             R6 1 0
      105 GETUPVAL                         R6 3
      106 GETTABLEKS                       R7 R5 K15 ["versionId"]
      108 SETTABLE                         R5 R6 R7
      109 GETUPVAL                         R6 0
      110 GETTABLEKS                       R7 R5 K0 ["toolUseId"]
      112 SETTABLE                         R5 R6 R7
      113 GETTABLEKS                       R7 R4 K9 ["versions"]
      115 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
      117 MOVE                             R8 R5
      118 GETIMPORT                        R6 K25 [table.insert]
      120 CALL                             R6 2 0
      121 GETTABLEKS                       R6 R4 K8 ["scopeKey"]
      123 JUMPIFEQKNIL                     R6 ; [+11]
      125 GETUPVAL                         R8 4
      126 GETTABLE                         R7 R8 R6
      127 JUMPIF                           R7 ; [+2]
      128 NEWTABLE                         R7 0 0
      130 GETUPVAL                         R8 4
      131 SETTABLE                         R7 R8 R6
      132 GETTABLEKS                       R8 R5 K4 ["editSource"]
      134 SETTABLE                         R5 R7 R8
      135 GETUPVAL                         R7 5
      136 ADDK                             R7 R7 K26 [1]
      137 SETUPVAL                         R7 5
      138 RETURN                           R5 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKNIL                     R2 ; [+19]
        4 JUMPIFEQKNIL                     R1 ; [+19]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R5 R2 K0 ["chainId"]
        9 GETTABLE                         R3 R4 R5
       10 GETTABLEKS                       R3 R3 K1 ["scopeKey"]
       12 LOADK                            R4 K2 ["%*/%*"]
       13 GETTABLEKS                       R6 R1 K3 ["sessionId"]
       15 GETTABLEKS                       R7 R1 K4 ["threadId"]
       17 NAMECALL                         R4 R4 K5 ["format"]
       19 CALL                             R4 3 1
       20 JUMPIFEQ                         R3 R4 ; [+3]
       22 LOADNIL                          R3
       23 RETURN                           R3 1
       24 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 LOADK                            R4 K0 ["%*/%*"]
        2 GETTABLEKS                       R6 R0 K1 ["sessionId"]
        4 GETTABLEKS                       R7 R0 K2 ["threadId"]
        6 NAMECALL                         R4 R4 K3 ["format"]
        8 CALL                             R4 3 1
        9 GETTABLE                         R2 R3 R4
       10 MOVE                             R3 R2
       11 JUMPIFNOT                        R3 ; [+1]
       12 GETTABLE                         R3 R2 R1
       13 MOVE                             R4 R3
       14 JUMPIFNOT                        R4 ; [+11]
       15 GETTABLEKS                       R5 R3 K4 ["toolUseId"]
       17 GETUPVAL                         R7 1
       18 GETTABLE                         R6 R7 R5
       19 JUMPIFEQKNIL                     R6 ; [+4]
       21 GETUPVAL                         R7 2
       22 GETTABLE                         R4 R7 R6
       23 JUMP                             ; [+2]
       24 GETUPVAL                         R7 3
       25 GETTABLE                         R4 R7 R5
       26 JUMPIFEQKNIL                     R4 ; [+5]
       28 GETTABLEKS                       R5 R4 K5 ["contextId"]
       30 JUMPIFNOTEQKNIL                  R5 ; [+3]
       32 LOADNIL                          R5
       33 RETURN                           R5 1
       34 RETURN                           R4 1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFEQKNIL                     R3 ; [+4]
        4 GETUPVAL                         R4 1
        5 GETTABLE                         R2 R4 R3
        6 JUMP                             ; [+2]
        7 GETUPVAL                         R4 2
        8 GETTABLE                         R2 R4 R0
        9 GETUPVAL                         R4 1
       10 GETTABLE                         R3 R4 R1
       11 JUMPIFEQKNIL                     R2 ; [+9]
       13 JUMPIFEQKNIL                     R3 ; [+7]
       15 GETTABLEKS                       R4 R3 K0 ["chainId"]
       17 GETTABLEKS                       R5 R2 K0 ["chainId"]
       19 JUMPIFEQ                         R4 R5 ; [+3]
       21 LOADNIL                          R4
       22 RETURN                           R4 1
       23 JUMPIFEQ                         R3 R2 ; [+6]
       25 GETUPVAL                         R4 0
       26 SETTABLE                         R1 R4 R0
       27 GETUPVAL                         R4 3
       28 ADDK                             R4 R4 K1 [1]
       29 SETUPVAL                         R4 3
       30 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKNIL                     R2 ; [+4]
        4 GETUPVAL                         R3 1
        5 GETTABLE                         R1 R3 R2
        6 JUMP                             ; [+2]
        7 GETUPVAL                         R3 2
        8 GETTABLE                         R1 R3 R0
        9 JUMPIFNOTEQKNIL                  R1 ; [+3]
       11 LOADNIL                          R2
       12 RETURN                           R2 1
       13 DUPTABLE                         R2 K3 [{"revision", "selected", "versions"}]
       14 GETUPVAL                         R3 3
       15 SETTABLEKS                       R3 R2 K0 ["revision"]
       17 SETTABLEKS                       R1 R2 K1 ["selected"]
       19 GETTABLEKS                       R4 R1 K4 ["chainId"]
       21 GETIMPORT                        R5 K7 [table.clone]
       23 GETUPVAL                         R7 4
       24 GETTABLE                         R6 R7 R4
       25 GETTABLEKS                       R6 R6 K2 ["versions"]
       27 CALL                             R5 1 1
       28 MOVE                             R3 R5
       29 SETTABLEKS                       R3 R2 K2 ["versions"]
       31 RETURN                           R2 1

PROTO_8:
        0 GETIMPORT                        R0 K2 [table.clear]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETIMPORT                        R0 K2 [table.clear]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 GETIMPORT                        R0 K2 [table.clear]
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 0
       12 GETIMPORT                        R0 K2 [table.clear]
       14 GETUPVAL                         R1 3
       15 CALL                             R0 1 0
       16 GETIMPORT                        R0 K2 [table.clear]
       18 GETUPVAL                         R1 4
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 0
        8 NEWTABLE                         R4 0 0
       10 LOADN                            R5 0
       11 NEWCLOSURE                       R6 P0
       12 CAPTURE                          VAL R4
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 NEWCLOSURE                       R7 P1
       16 CAPTURE                          VAL R2
       17 DUPTABLE                         R8 K8 [{"record", "getByToolUseId", "resolveEditSource", "listVersions", "getSelectedVersion", "selectCardVersion", "getCardSnapshot", "destroy"}]
       18 NEWCLOSURE                       R9 P2
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          REF R5
       25 SETTABLEKS                       R9 R8 K0 ["record"]
       27 NEWCLOSURE                       R9 P3
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 SETTABLEKS                       R9 R8 K1 ["getByToolUseId"]
       32 NEWCLOSURE                       R9 P4
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R9 R8 K2 ["resolveEditSource"]
       39 SETTABLEKS                       R7 R8 K3 ["listVersions"]
       41 SETTABLEKS                       R6 R8 K4 ["getSelectedVersion"]
       43 NEWCLOSURE                       R9 P5
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 CAPTURE                          REF R5
       48 SETTABLEKS                       R9 R8 K5 ["selectCardVersion"]
       50 NEWCLOSURE                       R9 P6
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 CAPTURE                          REF R5
       55 CAPTURE                          VAL R2
       56 SETTABLEKS                       R9 R8 K6 ["getCardSnapshot"]
       58 NEWCLOSURE                       R9 P7
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R4
       64 SETTABLEKS                       R9 R8 K7 ["destroy"]
       66 CLOSEUPVALS                      R5
       67 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["AnimationGen"]
       19 GETTABLEKS                       R3 R3 K12 ["State"]
       21 GETTABLEKS                       R3 R3 K13 ["AnimationHistoryTypes"]
       23 CALL                             R2 1 1
       24 DUPCLOSURE                       R3 K14 [PROTO_0]
       25 DUPCLOSURE                       R4 K15 [PROTO_9]
       26 CAPTURE                          VAL R0
       27 RETURN                           R4 1
