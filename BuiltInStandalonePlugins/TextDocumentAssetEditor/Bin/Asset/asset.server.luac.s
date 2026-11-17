PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ReadTextContentAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 2
        7 JUMPIF                           R1 ; [+10]
        8 GETIMPORT                        R3 K3 [warn]
       10 LOADK                            R4 K4 ["[TextDocumentAssetEditor] Failed to read text content: %*"]
       11 MOVE                             R6 R2
       12 NAMECALL                         R4 R4 K5 ["format"]
       14 CALL                             R4 2 1
       15 CALL                             R3 1 0
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["CreateTextContentAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 2
        7 JUMPIF                           R1 ; [+10]
        8 GETIMPORT                        R3 K3 [warn]
       10 LOADK                            R4 K4 ["[TextDocumentAssetEditor] Failed to create text content: %*"]
       11 MOVE                             R6 R2
       12 NAMECALL                         R4 R4 K5 ["format"]
       14 CALL                             R4 2 1
       15 CALL                             R3 1 0
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["SetContent"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R2 K1 [pcall]
        7 CALL                             R2 1 2
        8 JUMPIF                           R2 ; [+9]
        9 GETIMPORT                        R4 K3 [warn]
       11 LOADK                            R5 K4 ["[TextDocumentAssetEditor] Write failed for %*: %*"]
       12 MOVE                             R7 R0
       13 MOVE                             R8 R3
       14 NAMECALL                         R5 R5 K5 ["format"]
       16 CALL                             R5 3 1
       17 CALL                             R4 1 0
       18 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ResolveContent"]
        4 CALL                             R0 2 1
        5 JUMPIFEQKNIL                     R0 ; [+7]
        7 GETTABLEKS                       R1 R0 K1 ["SourceType"]
        9 GETIMPORT                        R2 K5 [Enum.ContentSourceType.None]
       11 JUMPIFNOTEQ                      R1 R2 ; [+4]
       13 LOADNIL                          R1
       14 MOVE                             R2 R0
       15 RETURN                           R1 2
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R0
       19 FASTPCALL                        pcall 1 ; [+2]
       20 GETIMPORT                        R2 K7 [pcall]
       22 CALL                             R2 1 2
       23 JUMPIF                           R2 ; [+10]
       24 GETIMPORT                        R4 K9 [warn]
       26 LOADK                            R5 K10 ["[TextDocumentAssetEditor] Failed to read text content: %*"]
       27 MOVE                             R7 R3
       28 NAMECALL                         R5 R5 K11 ["format"]
       30 CALL                             R5 2 1
       31 CALL                             R4 1 0
       32 LOADNIL                          R1
       33 JUMP                             ; [+1]
       34 MOVE                             R1 R3
       35 MOVE                             R2 R0
       36 RETURN                           R1 2

PROTO_7:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R1 K1 [pcall]
        7 CALL                             R1 1 3
        8 JUMPIF                           R1 ; [+12]
        9 GETIMPORT                        R4 K3 [warn]
       11 LOADK                            R5 K4 ["[TextDocumentAssetEditor] Could not read %*: %*"]
       12 MOVE                             R7 R0
       13 MOVE                             R8 R2
       14 NAMECALL                         R5 R5 K5 ["format"]
       16 CALL                             R5 3 1
       17 CALL                             R4 1 0
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 RETURN                           R4 2
       21 RETURN                           R2 2

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ResolveContent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_9:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R1 K1 [pcall]
        6 CALL                             R1 1 2
        7 JUMPIFNOT                        R1 ; [+8]
        8 JUMPIFEQKNIL                     R2 ; [+7]
       10 GETTABLEKS                       R3 R2 K2 ["SourceType"]
       12 GETIMPORT                        R4 K6 [Enum.ContentSourceType.None]
       14 JUMPIFNOTEQ                      R3 R4 ; [+3]
       16 LOADNIL                          R3
       17 RETURN                           R3 1
       18 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["path"]
        3 NAMECALL                         R2 R2 K1 ["lower"]
        5 CALL                             R2 1 1
        6 SETTABLE                         R0 R1 R2
        7 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R4 K6 [{[1], ["text"], ["content"], ["previousContents"], ["superseded"] = False}]
        1 SETTABLEKS                       R0 R4 K0 ["path"]
        3 SETTABLEKS                       R3 R4 K1 ["text"]
        5 SETTABLEKS                       R1 R4 K2 ["content"]
        7 NEWTABLE                         R5 0 1
        9 MOVE                             R6 R2
       10 JUMPIF                           R6 ; [+2]
       11 GETIMPORT                        R6 K9 [Content.none]
       13 SETLIST                          R5 R6 1 [1]
       15 SETTABLEKS                       R5 R4 K3 ["previousContents"]
       17 GETUPVAL                         R6 0
       18 NAMECALL                         R7 R0 K10 ["lower"]
       20 CALL                             R7 1 1
       21 GETTABLE                         R5 R6 R7
       22 JUMPIFNOT                        R5 ; [+39]
       23 GETTABLEKS                       R6 R5 K4 ["superseded"]
       25 JUMPIF                           R6 ; [+36]
       26 GETTABLEKS                       R6 R5 K2 ["content"]
       28 JUMPIFNOTEQ                      R2 R6 ; [+33]
       30 GETIMPORT                        R6 K13 [table.clone]
       32 GETTABLEKS                       R7 R5 K3 ["previousContents"]
       34 CALL                             R6 1 1
       35 SETTABLEKS                       R6 R4 K3 ["previousContents"]
       37 GETIMPORT                        R6 K15 [table.find]
       39 GETTABLEKS                       R7 R4 K3 ["previousContents"]
       41 GETTABLEKS                       R8 R5 K2 ["content"]
       43 CALL                             R6 2 1
       44 JUMPIF                           R6 ; [+9]
       45 GETTABLEKS                       R7 R4 K3 ["previousContents"]
       47 GETTABLEKS                       R8 R5 K2 ["content"]
       49 FASTCALL2                        TABLE_INSERT R7 R8 ; [+3]
       51 GETIMPORT                        R6 K17 [table.insert]
       53 CALL                             R6 2 0
       54 GETTABLEKS                       R6 R5 K18 ["document"]
       56 SETTABLEKS                       R6 R4 K18 ["document"]
       58 GETTABLEKS                       R6 R5 K19 ["previousContent"]
       60 SETTABLEKS                       R6 R4 K19 ["previousContent"]
       62 RETURN                           R4 1

PROTO_12:
        0 SETUPVAL                         R0 0
        1 GETTABLEKS                       R2 R0 K0 ["path"]
        3 GETTABLEKS                       R3 R0 K1 ["content"]
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R3
        9 FASTPCALL                        pcall 1 ; [+2]
       10 GETIMPORT                        R4 K3 [pcall]
       12 CALL                             R4 1 2
       13 JUMPIF                           R4 ; [+9]
       14 GETIMPORT                        R6 K5 [warn]
       16 LOADK                            R7 K6 ["[TextDocumentAssetEditor] Write failed for %*: %*"]
       17 MOVE                             R9 R2
       18 MOVE                             R10 R5
       19 NAMECALL                         R7 R7 K7 ["format"]
       21 CALL                             R7 3 1
       22 CALL                             R6 1 0
       23 MOVE                             R1 R4
       24 LOADNIL                          R2
       25 SETUPVAL                         R2 0
       26 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+5]
        4 GETUPVAL                         R2 1
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K0 ["Exists"]
        8 CALL                             R2 2 1
        9 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 GETTABLEKS                       R2 R0 K0 ["TextContent"]
        7 MOVE                             R3 R2
        8 GETTABLEKS                       R4 R2 K1 ["SourceType"]
       10 GETIMPORT                        R5 K5 [Enum.ContentSourceType.None]
       12 JUMPIFNOTEQ                      R4 R5 ; [+36]
       14 GETUPVAL                         R4 0
       15 LOADB                            R5 1
       16 SETTABLE                         R5 R4 R0
       17 LOADK                            R6 K6 [""]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R6
       21 FASTPCALL                        pcall 1 ; [+2]
       22 GETIMPORT                        R4 K8 [pcall]
       24 CALL                             R4 1 2
       25 JUMPIF                           R4 ; [+10]
       26 GETIMPORT                        R6 K10 [warn]
       28 LOADK                            R7 K11 ["[TextDocumentAssetEditor] Failed to create text content: %*"]
       29 MOVE                             R9 R5
       30 NAMECALL                         R7 R7 K12 ["format"]
       32 CALL                             R7 2 1
       33 CALL                             R6 1 0
       34 LOADNIL                          R3
       35 JUMP                             ; [+1]
       36 MOVE                             R3 R5
       37 GETUPVAL                         R4 0
       38 LOADNIL                          R5
       39 SETTABLE                         R5 R4 R0
       40 GETTABLEKS                       R4 R0 K0 ["TextContent"]
       42 JUMPIFEQ                         R4 R2 ; [+6]
       44 GETUPVAL                         R4 2
       45 GETTABLEKS                       R5 R0 K0 ["TextContent"]
       47 CALL                             R4 1 -1
       48 RETURN                           R4 -1
       49 JUMPIFNOTEQKNIL                  R3 ; [+3]
       51 LOADNIL                          R4
       52 RETURN                           R4 1
       53 GETUPVAL                         R4 3
       54 DUPTABLE                         R5 K14 [{"Exists"}]
       55 NEWCLOSURE                       R6 P1
       56 CAPTURE                          VAL R1
       57 CAPTURE                          UPVAL U4
       58 SETTABLEKS                       R6 R5 K13 ["Exists"]
       60 GETTABLEKS                       R6 R0 K15 ["Name"]
       62 CALL                             R4 2 1
       63 JUMPIFNOTEQKNIL                  R4 ; [+12]
       65 GETIMPORT                        R5 K10 [warn]
       67 LOADK                            R6 K16 ["[TextDocumentAssetEditor] Could not derive a valid ContentMap name for \"%*\"."]
       68 GETTABLEKS                       R8 R0 K15 ["Name"]
       70 NAMECALL                         R6 R6 K12 ["format"]
       72 CALL                             R6 2 1
       73 CALL                             R5 1 0
       74 LOADNIL                          R5
       75 RETURN                           R5 1
       76 GETUPVAL                         R5 5
       77 MOVE                             R6 R4
       78 MOVE                             R7 R3
       79 LOADNIL                          R8
       80 LOADNIL                          R9
       81 CALL                             R5 4 1
       82 SETTABLEKS                       R0 R5 K17 ["document"]
       84 SETTABLEKS                       R2 R5 K18 ["previousContent"]
       86 SETUPVAL                         R5 6
       87 GETTABLEKS                       R7 R5 K19 ["path"]
       89 GETTABLEKS                       R8 R5 K20 ["content"]
       91 NEWCLOSURE                       R10 P2
       92 CAPTURE                          UPVAL U4
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R8
       95 FASTPCALL                        pcall 1 ; [+2]
       96 GETIMPORT                        R9 K8 [pcall]
       98 CALL                             R9 1 2
       99 JUMPIF                           R9 ; [+9]
      100 GETIMPORT                        R11 K10 [warn]
      102 LOADK                            R12 K21 ["[TextDocumentAssetEditor] Write failed for %*: %*"]
      103 MOVE                             R14 R7
      104 MOVE                             R15 R10
      105 NAMECALL                         R12 R12 K12 ["format"]
      107 CALL                             R12 3 1
      108 CALL                             R11 1 0
      109 MOVE                             R6 R9
      110 LOADNIL                          R7
      111 SETUPVAL                         R7 6
      112 JUMPIF                           R6 ; [+2]
      113 LOADNIL                          R6
      114 RETURN                           R6 1
      115 GETUPVAL                         R6 7
      116 GETTABLEKS                       R7 R5 K19 ["path"]
      118 NAMECALL                         R7 R7 K22 ["lower"]
      120 CALL                             R7 1 1
      121 SETTABLE                         R5 R6 R7
      122 GETIMPORT                        R6 K25 [Content.fromUri]
      124 MOVE                             R7 R4
      125 CALL                             R6 1 1
      126 SETTABLEKS                       R6 R0 K0 ["TextContent"]
      128 RETURN                           R4 1

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["OpenTemporaryDocumentAsync"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_16:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R2 K1 [pcall]
        7 CALL                             R2 1 3
        8 JUMPIF                           R2 ; [+14]
        9 GETIMPORT                        R5 K3 [warn]
       11 LOADK                            R6 K4 ["[TextDocumentAssetEditor] The Script Editor would not open %*: %*"]
       12 MOVE                             R8 R0
       13 FASTCALL1                        TOSTRING R3 ; [+3]
       14 MOVE                             R10 R3
       15 GETIMPORT                        R9 K6 [tostring]
       17 CALL                             R9 1 1
       18 NAMECALL                         R6 R6 K7 ["format"]
       20 CALL                             R6 3 1
       21 CALL                             R5 1 0
       22 JUMP                             ; [+14]
       23 JUMPIF                           R3 ; [+13]
       24 GETIMPORT                        R5 K3 [warn]
       26 LOADK                            R6 K8 ["[TextDocumentAssetEditor] The Script Editor declined to open %*: %*"]
       27 MOVE                             R8 R0
       28 FASTCALL1                        TOSTRING R4 ; [+3]
       29 MOVE                             R10 R4
       30 GETIMPORT                        R9 K6 [tostring]
       32 CALL                             R9 1 1
       33 NAMECALL                         R6 R6 K7 ["format"]
       35 CALL                             R6 3 1
       36 CALL                             R5 1 0
       37 MOVE                             R5 R2
       38 JUMPIFNOT                        R5 ; [+4]
       39 JUMPIFEQKB                       R3 TRUE ; [+2]
       41 LOADB                            R5 0 +1
       42 LOADB                            R5 1
       43 RETURN                           R5 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["document"]
        2 JUMPIF                           R1 ; [+15]
        3 GETTABLEKS                       R1 R0 K1 ["opening"]
        5 JUMPIF                           R1 ; [+12]
        6 GETTABLEKS                       R1 R0 K2 ["saving"]
        8 JUMPIF                           R1 ; [+9]
        9 GETTABLEKS                       R1 R0 K3 ["recoveryPending"]
       11 JUMPIF                           R1 ; [+6]
       12 GETTABLEKS                       R1 R0 K4 ["latestText"]
       14 GETTABLEKS                       R2 R0 K5 ["initialText"]
       16 JUMPIFEQ                         R1 R2 ; [+2]
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R2 R0 K6 ["scriptId"]
       22 LOADNIL                          R3
       23 SETTABLE                         R3 R1 R2
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R3 R0 K7 ["path"]
       27 NAMECALL                         R3 R3 K8 ["lower"]
       29 CALL                             R3 1 1
       30 GETTABLE                         R1 R2 R3
       31 JUMPIFNOTEQ                      R1 R0 ; [+9]
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R2 R0 K7 ["path"]
       36 NAMECALL                         R2 R2 K8 ["lower"]
       38 CALL                             R2 1 1
       39 LOADNIL                          R3
       40 SETTABLE                         R3 R1 R2
       41 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetText"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["document"]
        2 JUMPIFNOT                        R1 ; [+9]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 FASTPCALL                        pcall 1 ; [+2]
        6 GETIMPORT                        R2 K2 [pcall]
        8 CALL                             R2 1 2
        9 JUMPIFNOT                        R2 ; [+2]
       10 SETTABLEKS                       R3 R0 K3 ["latestText"]
       12 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["opening"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADB                            R1 1
        4 RETURN                           R1 1
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K0 ["opening"]
        8 GETTABLEKS                       R1 R0 K1 ["document"]
       10 JUMPIFNOT                        R1 ; [+9]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          VAL R1
       13 FASTPCALL                        pcall 1 ; [+2]
       14 GETIMPORT                        R2 K3 [pcall]
       16 CALL                             R2 1 2
       17 JUMPIFNOT                        R2 ; [+2]
       18 SETTABLEKS                       R3 R0 K4 ["latestText"]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R2 R0 K5 ["scriptId"]
       23 GETTABLEKS                       R3 R0 K4 ["latestText"]
       25 CALL                             R1 2 1
       26 LOADB                            R2 0
       27 SETTABLEKS                       R2 R0 K0 ["opening"]
       29 GETUPVAL                         R2 1
       30 MOVE                             R3 R0
       31 CALL                             R2 1 0
       32 RETURN                           R1 1

PROTO_21:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 FASTPCALL                        pcall 1 ; [+2]
        4 GETIMPORT                        R3 K1 [pcall]
        6 CALL                             R3 1 2
        7 JUMPIF                           R3 ; [+10]
        8 GETIMPORT                        R5 K3 [warn]
       10 LOADK                            R6 K4 ["[TextDocumentAssetEditor] Failed to create text content: %*"]
       11 MOVE                             R8 R4
       12 NAMECALL                         R6 R6 K5 ["format"]
       14 CALL                             R6 2 1
       15 CALL                             R5 1 0
       16 LOADNIL                          R2
       17 JUMP                             ; [+1]
       18 MOVE                             R2 R4
       19 JUMPIFNOT                        R2 ; [+28]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R4 R0 K6 ["path"]
       23 MOVE                             R5 R2
       24 GETTABLEKS                       R7 R0 K6 ["path"]
       26 NEWCLOSURE                       R9 P1
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R7
       29 FASTPCALL                        pcall 1 ; [+2]
       30 GETIMPORT                        R8 K1 [pcall]
       32 CALL                             R8 1 2
       33 JUMPIFNOT                        R8 ; [+8]
       34 JUMPIFEQKNIL                     R9 ; [+7]
       36 GETTABLEKS                       R10 R9 K7 ["SourceType"]
       38 GETIMPORT                        R11 K11 [Enum.ContentSourceType.None]
       40 JUMPIFNOTEQ                      R10 R11 ; [+3]
       42 LOADNIL                          R6
       43 JUMP                             ; [+1]
       44 MOVE                             R6 R9
       45 MOVE                             R7 R1
       46 CALL                             R3 4 1
       47 JUMP                             ; [+1]
       48 LOADNIL                          R3
       49 JUMPIFEQKNIL                     R3 ; [+28]
       51 SETUPVAL                         R3 3
       52 GETTABLEKS                       R5 R3 K6 ["path"]
       54 GETTABLEKS                       R6 R3 K12 ["content"]
       56 NEWCLOSURE                       R8 P2
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 FASTPCALL                        pcall 1 ; [+2]
       61 GETIMPORT                        R7 K1 [pcall]
       63 CALL                             R7 1 2
       64 JUMPIF                           R7 ; [+9]
       65 GETIMPORT                        R9 K3 [warn]
       67 LOADK                            R10 K13 ["[TextDocumentAssetEditor] Write failed for %*: %*"]
       68 MOVE                             R12 R5
       69 MOVE                             R13 R8
       70 NAMECALL                         R10 R10 K5 ["format"]
       72 CALL                             R10 3 1
       73 CALL                             R9 1 0
       74 MOVE                             R4 R7
       75 LOADNIL                          R5
       76 SETUPVAL                         R5 3
       77 JUMPIF                           R4 ; [+48]
       78 GETIMPORT                        R4 K3 [warn]
       80 LOADK                            R5 K14 ["[TextDocumentAssetEditor] Could not save %*; the edited text is retained. Close its tab to retry."]
       81 GETTABLEKS                       R7 R0 K6 ["path"]
       83 NAMECALL                         R5 R5 K5 ["format"]
       85 CALL                             R5 2 1
       86 CALL                             R4 1 0
       87 GETTABLEKS                       R4 R0 K15 ["document"]
       89 JUMPIFNOTEQKNIL                  R4 ; [+35]
       91 LOADB                            R4 1
       92 SETTABLEKS                       R4 R0 K16 ["recoveryPending"]
       94 GETTABLEKS                       R4 R0 K17 ["opening"]
       96 JUMPIFNOT                        R4 ; [+1]
       97 RETURN                           R0 0
       98 LOADB                            R4 1
       99 SETTABLEKS                       R4 R0 K17 ["opening"]
      101 GETTABLEKS                       R4 R0 K15 ["document"]
      103 JUMPIFNOT                        R4 ; [+9]
      104 NEWCLOSURE                       R6 P3
      105 CAPTURE                          VAL R4
      106 FASTPCALL                        pcall 1 ; [+2]
      107 GETIMPORT                        R5 K1 [pcall]
      109 CALL                             R5 1 2
      110 JUMPIFNOT                        R5 ; [+2]
      111 SETTABLEKS                       R6 R0 K18 ["latestText"]
      113 GETUPVAL                         R4 4
      114 GETTABLEKS                       R5 R0 K19 ["scriptId"]
      116 GETTABLEKS                       R6 R0 K18 ["latestText"]
      118 CALL                             R4 2 1
      119 LOADB                            R5 0
      120 SETTABLEKS                       R5 R0 K17 ["opening"]
      122 GETUPVAL                         R5 5
      123 MOVE                             R6 R0
      124 CALL                             R5 1 0
      125 RETURN                           R0 0
      126 SETTABLEKS                       R1 R0 K20 ["initialText"]
      128 GETTABLEKS                       R4 R3 K12 ["content"]
      130 SETTABLEKS                       R4 R0 K21 ["initialContent"]
      132 LOADB                            R4 0
      133 SETTABLEKS                       R4 R0 K16 ["recoveryPending"]
      135 GETTABLEKS                       R4 R0 K22 ["rebind"]
      137 LOADNIL                          R5
      138 SETTABLEKS                       R5 R0 K22 ["rebind"]
      140 JUMPIFNOT                        R4 ; [+25]
      141 GETTABLEKS                       R5 R4 K15 ["document"]
      143 GETTABLEKS                       R5 R5 K23 ["TextContent"]
      145 GETTABLEKS                       R6 R4 K24 ["previousContent"]
      147 JUMPIFNOTEQ                      R5 R6 ; [+18]
      149 GETTABLEKS                       R5 R4 K15 ["document"]
      151 GETIMPORT                        R6 K27 [Content.fromUri]
      153 GETTABLEKS                       R7 R0 K6 ["path"]
      155 CALL                             R6 1 1
      156 SETTABLEKS                       R6 R5 K23 ["TextContent"]
      158 GETTABLEKS                       R5 R4 K15 ["document"]
      160 SETTABLEKS                       R5 R3 K15 ["document"]
      162 GETTABLEKS                       R5 R4 K24 ["previousContent"]
      164 SETTABLEKS                       R5 R3 K24 ["previousContent"]
      166 GETUPVAL                         R5 6
      167 GETTABLEKS                       R6 R3 K6 ["path"]
      169 NAMECALL                         R6 R6 K28 ["lower"]
      171 CALL                             R6 1 1
      172 SETTABLE                         R3 R5 R6
      173 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 LENGTH                           R0 R1
        2 LOADN                            R1 0
        3 JUMPIFNOTLT                      R1 R0 ; [+45]
        5 GETUPVAL                         R1 0
        6 GETTABLEN                        R0 R1 1
        7 SETUPVAL                         R0 1
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R2 R0 K0 ["session"]
       11 GETTABLEKS                       R3 R0 K1 ["text"]
       13 CALL                             R1 2 0
       14 LOADNIL                          R1
       15 SETUPVAL                         R1 1
       16 GETIMPORT                        R1 K4 [table.remove]
       18 GETUPVAL                         R2 0
       19 LOADN                            R3 1
       20 CALL                             R1 2 0
       21 GETTABLEKS                       R1 R0 K0 ["session"]
       23 LOADB                            R2 0
       24 SETTABLEKS                       R2 R1 K5 ["saving"]
       26 GETUPVAL                         R1 0
       27 LOADNIL                          R2
       28 LOADNIL                          R3
       29 FORGPREP                         R1
       30 GETTABLEKS                       R6 R5 K0 ["session"]
       32 GETTABLEKS                       R7 R0 K0 ["session"]
       34 JUMPIFNOTEQ                      R6 R7 ; [+7]
       36 GETTABLEKS                       R6 R0 K0 ["session"]
       38 LOADB                            R7 1
       39 SETTABLEKS                       R7 R6 K5 ["saving"]
       41 JUMP                             ; [+2]
       42 FORGLOOP                         R1 2 ; [-13]
       44 GETUPVAL                         R1 3
       45 GETTABLEKS                       R2 R0 K0 ["session"]
       47 CALL                             R1 1 0
       48 JUMPBACK                         ; [-49]
       49 LOADB                            R0 0
       50 SETUPVAL                         R0 4
       51 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["document"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+67]
        4 GETTABLEKS                       R2 R0 K1 ["latestText"]
        6 GETTABLEKS                       R3 R0 K2 ["initialText"]
        8 JUMPIFNOTEQ                      R2 R3 ; [+4]
       10 GETTABLEKS                       R2 R0 K3 ["saving"]
       12 JUMPIFNOT                        R2 ; [+57]
       13 LOADNIL                          R2
       14 GETUPVAL                         R3 0
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 GETTABLEKS                       R8 R7 K4 ["session"]
       20 JUMPIFNOTEQ                      R8 R0 ; [+2]
       22 MOVE                             R2 R7
       23 FORGLOOP                         R3 2 ; [-6]
       25 JUMPIF                           R1 ; [+8]
       26 JUMPIFEQKNIL                     R2 ; [+7]
       28 GETTABLEKS                       R3 R2 K5 ["text"]
       30 GETTABLEKS                       R4 R0 K1 ["latestText"]
       32 JUMPIFEQ                         R3 R4 ; [+37]
       34 GETUPVAL                         R6 0
       35 LENGTH                           R5 R6
       36 LOADN                            R3 1
       37 LOADN                            R4 -1
       38 FORNPREP                         R3
       39 GETUPVAL                         R7 0
       40 GETTABLE                         R6 R7 R5
       41 GETTABLEKS                       R7 R6 K4 ["session"]
       43 JUMPIFNOTEQ                      R7 R0 ; [+9]
       45 GETUPVAL                         R7 1
       46 JUMPIFEQ                         R6 R7 ; [+6]
       48 GETIMPORT                        R7 K8 [table.remove]
       50 GETUPVAL                         R8 0
       51 MOVE                             R9 R5
       52 CALL                             R7 2 0
       53 FORNLOOP                         R3
       54 LOADB                            R3 1
       55 SETTABLEKS                       R3 R0 K3 ["saving"]
       57 GETUPVAL                         R4 0
       58 DUPTABLE                         R5 K9 [{"session", "text"}]
       59 SETTABLEKS                       R0 R5 K4 ["session"]
       61 GETTABLEKS                       R6 R0 K1 ["latestText"]
       63 SETTABLEKS                       R6 R5 K5 ["text"]
       65 FASTCALL2                        TABLE_INSERT R4 R5 ; [+3]
       67 GETIMPORT                        R3 K11 [table.insert]
       69 CALL                             R3 2 0
       70 GETUPVAL                         R2 2
       71 JUMPIF                           R2 ; [+11]
       72 GETUPVAL                         R3 0
       73 LENGTH                           R2 R3
       74 LOADN                            R3 0
       75 JUMPIFNOTLT                      R3 R2 ; [+7]
       77 LOADB                            R2 1
       78 SETUPVAL                         R2 2
       79 GETIMPORT                        R2 K14 [task.defer]
       81 GETUPVAL                         R3 3
       82 CALL                             R2 1 0
       83 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 DUPTABLE                         R1 K14 [{["scriptId"], ["path"], ["initialText"] = "", ["latestText"] = "", ["document"] = , ["loaded"] = False, ["recoveryPending"] = False, ["rebind"] = , ["opening"] = False, ["saving"] = False}]
        4 LOADK                            R2 K15 ["%*_%*"]
        5 MOVE                             R4 R0
        6 GETUPVAL                         R5 0
        7 NAMECALL                         R2 R2 K16 ["format"]
        9 CALL                             R2 3 1
       10 SETTABLEKS                       R2 R1 K1 ["scriptId"]
       12 SETTABLEKS                       R0 R1 K2 ["path"]
       14 GETUPVAL                         R3 1
       15 NAMECALL                         R4 R0 K17 ["lower"]
       17 CALL                             R4 1 1
       18 GETTABLE                         R2 R3 R4
       19 JUMPIFNOTEQKNIL                  R2 ; [+6]
       21 GETUPVAL                         R2 1
       22 NAMECALL                         R3 R0 K17 ["lower"]
       24 CALL                             R3 1 1
       25 SETTABLE                         R1 R2 R3
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R3 R1 K1 ["scriptId"]
       29 SETTABLE                         R1 R2 R3
       30 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R3 R0 K0 ["lower"]
        3 CALL                             R3 1 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFNOTEQKNIL                  R1 ; [+27]
        7 GETUPVAL                         R2 1
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETTABLEKS                       R7 R6 K1 ["recoveryPending"]
       13 JUMPIFNOT                        R7 ; [+17]
       14 GETTABLEKS                       R7 R6 K2 ["path"]
       16 NAMECALL                         R7 R7 K0 ["lower"]
       18 CALL                             R7 1 1
       19 NAMECALL                         R8 R0 K0 ["lower"]
       21 CALL                             R8 1 1
       22 JUMPIFNOTEQ                      R7 R8 ; [+8]
       24 MOVE                             R1 R6
       25 GETUPVAL                         R7 0
       26 NAMECALL                         R8 R0 K0 ["lower"]
       28 CALL                             R8 1 1
       29 SETTABLE                         R6 R7 R8
       30 JUMP                             ; [+2]
       31 FORGLOOP                         R2 2 ; [-21]
       33 JUMPIFNOTEQKNIL                  R1 ; [+54]
       35 GETUPVAL                         R2 2
       36 MOVE                             R3 R0
       37 CALL                             R2 1 1
       38 MOVE                             R1 R2
       39 LOADB                            R2 1
       40 SETTABLEKS                       R2 R1 K3 ["opening"]
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U4
       46 FASTPCALL                        pcall 1 ; [+2]
       47 GETIMPORT                        R4 K5 [pcall]
       49 CALL                             R4 1 3
       50 JUMPIF                           R4 ; [+12]
       51 GETIMPORT                        R7 K7 [warn]
       53 LOADK                            R8 K8 ["[TextDocumentAssetEditor] Could not read %*: %*"]
       54 MOVE                             R10 R0
       55 MOVE                             R11 R5
       56 NAMECALL                         R8 R8 K9 ["format"]
       58 CALL                             R8 3 1
       59 CALL                             R7 1 0
       60 LOADNIL                          R2
       61 LOADNIL                          R3
       62 JUMP                             ; [+2]
       63 MOVE                             R2 R5
       64 MOVE                             R3 R6
       65 LOADB                            R4 0
       66 SETTABLEKS                       R4 R1 K3 ["opening"]
       68 LOADB                            R4 1
       69 SETTABLEKS                       R4 R1 K10 ["loaded"]
       71 GETTABLEKS                       R4 R1 K11 ["initialText"]
       73 JUMPIFEQKNIL                     R4 ; [+14]
       75 JUMPIFNOTEQKNIL                  R2 ; [+6]
       77 GETUPVAL                         R4 5
       78 MOVE                             R5 R1
       79 CALL                             R4 1 0
       80 LOADB                            R4 0
       81 RETURN                           R4 1
       82 SETTABLEKS                       R2 R1 K11 ["initialText"]
       84 SETTABLEKS                       R3 R1 K12 ["initialContent"]
       86 SETTABLEKS                       R2 R1 K13 ["latestText"]
       88 GETTABLEKS                       R4 R1 K3 ["opening"]
       90 JUMPIFNOT                        R4 ; [+2]
       91 LOADB                            R2 1
       92 JUMP                             ; [+28]
       93 LOADB                            R4 1
       94 SETTABLEKS                       R4 R1 K3 ["opening"]
       96 GETTABLEKS                       R4 R1 K14 ["document"]
       98 JUMPIFNOT                        R4 ; [+9]
       99 NEWCLOSURE                       R6 P1
      100 CAPTURE                          VAL R4
      101 FASTPCALL                        pcall 1 ; [+2]
      102 GETIMPORT                        R5 K5 [pcall]
      104 CALL                             R5 1 2
      105 JUMPIFNOT                        R5 ; [+2]
      106 SETTABLEKS                       R6 R1 K13 ["latestText"]
      108 GETUPVAL                         R4 6
      109 GETTABLEKS                       R5 R1 K15 ["scriptId"]
      111 GETTABLEKS                       R6 R1 K13 ["latestText"]
      113 CALL                             R4 2 1
      114 LOADB                            R5 0
      115 SETTABLEKS                       R5 R1 K3 ["opening"]
      117 GETUPVAL                         R5 5
      118 MOVE                             R6 R1
      119 CALL                             R5 1 0
      120 MOVE                             R2 R4
      121 NEWTABLE                         R3 0 0
      123 GETUPVAL                         R4 1
      124 LOADNIL                          R5
      125 LOADNIL                          R6
      126 FORGPREP                         R4
      127 JUMPIFEQ                         R8 R1 ; [+21]
      129 GETTABLEKS                       R9 R8 K1 ["recoveryPending"]
      131 JUMPIFNOT                        R9 ; [+17]
      132 GETTABLEKS                       R9 R8 K2 ["path"]
      134 NAMECALL                         R9 R9 K0 ["lower"]
      136 CALL                             R9 1 1
      137 NAMECALL                         R10 R0 K0 ["lower"]
      139 CALL                             R10 1 1
      140 JUMPIFNOTEQ                      R9 R10 ; [+8]
      142 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
      144 MOVE                             R10 R3
      145 MOVE                             R11 R8
      146 GETIMPORT                        R9 K18 [table.insert]
      148 CALL                             R9 2 0
      149 FORGLOOP                         R4 2 ; [-23]
      151 MOVE                             R4 R3
      152 LOADNIL                          R5
      153 LOADNIL                          R6
      154 FORGPREP                         R4
      155 GETTABLEKS                       R10 R8 K3 ["opening"]
      157 JUMPIFNOT                        R10 ; [+2]
      158 LOADB                            R9 1
      159 JUMP                             ; [+28]
      160 LOADB                            R10 1
      161 SETTABLEKS                       R10 R8 K3 ["opening"]
      163 GETTABLEKS                       R10 R8 K14 ["document"]
      165 JUMPIFNOT                        R10 ; [+9]
      166 NEWCLOSURE                       R12 P1
      167 CAPTURE                          VAL R10
      168 FASTPCALL                        pcall 1 ; [+2]
      169 GETIMPORT                        R11 K5 [pcall]
      171 CALL                             R11 1 2
      172 JUMPIFNOT                        R11 ; [+2]
      173 SETTABLEKS                       R12 R8 K13 ["latestText"]
      175 GETUPVAL                         R10 6
      176 GETTABLEKS                       R11 R8 K15 ["scriptId"]
      178 GETTABLEKS                       R12 R8 K13 ["latestText"]
      180 CALL                             R10 2 1
      181 LOADB                            R11 0
      182 SETTABLEKS                       R11 R8 K3 ["opening"]
      184 GETUPVAL                         R11 5
      185 MOVE                             R12 R8
      186 CALL                             R11 1 0
      187 MOVE                             R9 R10
      188 OR                               R2 R9 R2
      189 FORGLOOP                         R4 2 ; [-35]
      191 RETURN                           R2 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetInternalUri"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_27:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R1 K1 [pcall]
        5 CALL                             R1 1 2
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 JUMPIFNOT                        R3 ; [+3]
       12 GETUPVAL                         R5 1
       13 GETTABLE                         R4 R5 R3
       14 JUMP                             ; [+1]
       15 LOADNIL                          R4
       16 JUMPIFNOT                        R4 ; [+7]
       17 SETTABLEKS                       R0 R4 K2 ["document"]
       19 LOADB                            R5 0
       20 SETTABLEKS                       R5 R4 K3 ["recoveryPending"]
       22 GETUPVAL                         R5 2
       23 SETTABLE                         R4 R5 R0
       24 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETTABLEKS                       R2 R1 K0 ["document"]
        5 JUMPIFNOT                        R2 ; [+9]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R3 K2 [pcall]
       11 CALL                             R3 1 2
       12 JUMPIFNOT                        R3 ; [+2]
       13 SETTABLEKS                       R4 R1 K3 ["latestText"]
       15 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 LOADNIL                          R3
        7 SETTABLE                         R3 R2 R0
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R1 K0 ["document"]
       11 GETUPVAL                         R2 1
       12 MOVE                             R3 R1
       13 LOADB                            R4 1
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 2
       16 MOVE                             R3 R1
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R3 R0 K0 ["lower"]
        3 CALL                             R3 1 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFNOT                        R1 ; [+3]
        6 LOADB                            R2 1
        7 SETTABLEKS                       R2 R1 K1 ["superseded"]
        9 RETURN                           R0 0

PROTO_31:
        0 JUMPIFNOT                        R1 ; [+14]
        1 GETTABLEKS                       R2 R0 K0 ["content"]
        3 JUMPIFEQ                         R1 R2 ; [+11]
        5 GETIMPORT                        R2 K3 [table.find]
        7 GETTABLEKS                       R3 R0 K4 ["previousContents"]
        9 MOVE                             R4 R1
       10 CALL                             R2 2 1
       11 JUMPIF                           R2 ; [+3]
       12 LOADB                            R2 1
       13 SETTABLEKS                       R2 R0 K5 ["superseded"]
       15 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETTABLEKS                       R5 R4 K0 ["superseded"]
        6 JUMPIF                           R5 ; [+36]
        7 GETTABLEKS                       R6 R4 K1 ["path"]
        9 NEWCLOSURE                       R8 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R6
       12 FASTPCALL                        pcall 1 ; [+2]
       13 GETIMPORT                        R7 K3 [pcall]
       15 CALL                             R7 1 2
       16 JUMPIFNOT                        R7 ; [+8]
       17 JUMPIFEQKNIL                     R8 ; [+7]
       19 GETTABLEKS                       R9 R8 K4 ["SourceType"]
       21 GETIMPORT                        R10 K8 [Enum.ContentSourceType.None]
       23 JUMPIFNOTEQ                      R9 R10 ; [+3]
       25 LOADNIL                          R5
       26 JUMP                             ; [+1]
       27 MOVE                             R5 R8
       28 JUMPIFNOT                        R5 ; [+14]
       29 GETTABLEKS                       R6 R4 K9 ["content"]
       31 JUMPIFEQ                         R5 R6 ; [+11]
       33 GETIMPORT                        R6 K12 [table.find]
       35 GETTABLEKS                       R7 R4 K13 ["previousContents"]
       37 MOVE                             R8 R5
       38 CALL                             R6 2 1
       39 JUMPIF                           R6 ; [+3]
       40 LOADB                            R6 1
       41 SETTABLEKS                       R6 R4 K0 ["superseded"]
       43 FORGLOOP                         R0 2 ; [-40]
       45 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R2 R0 K0 ["document"]
        2 LOADNIL                          R3
        3 JUMPIFNOT                        R2 ; [+30]
        4 GETTABLEKS                       R4 R0 K1 ["previousContent"]
        6 JUMPIFNOT                        R4 ; [+27]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R5 R2 K2 ["TextContent"]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R5 R0 K3 ["path"]
       13 JUMPIFNOTEQ                      R4 R5 ; [+20]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R6 R0 K3 ["path"]
       18 NAMECALL                         R4 R4 K4 ["Exists"]
       20 CALL                             R4 2 1
       21 JUMPIF                           R4 ; [+12]
       22 GETTABLEKS                       R4 R0 K1 ["previousContent"]
       24 SETTABLEKS                       R4 R2 K2 ["TextContent"]
       26 DUPTABLE                         R4 K5 [{"document", "previousContent"}]
       27 SETTABLEKS                       R2 R4 K0 ["document"]
       29 GETTABLEKS                       R5 R0 K1 ["previousContent"]
       31 SETTABLEKS                       R5 R4 K1 ["previousContent"]
       33 MOVE                             R3 R4
       34 GETTABLEKS                       R4 R0 K6 ["text"]
       36 JUMPIFNOTEQKNIL                  R4 ; [+26]
       38 GETIMPORT                        R5 K8 [warn]
       40 LOADK                            R6 K9 ["[TextDocumentAssetEditor] Team Create rejected creating %*: %*"]
       41 GETTABLEKS                       R8 R0 K3 ["path"]
       43 MOVE                             R9 R1
       44 NAMECALL                         R6 R6 K10 ["format"]
       46 CALL                             R6 3 1
       47 CALL                             R5 1 0
       48 GETUPVAL                         R6 2
       49 GETTABLEKS                       R7 R0 K3 ["path"]
       51 NAMECALL                         R7 R7 K11 ["lower"]
       53 CALL                             R7 1 1
       54 GETTABLE                         R5 R6 R7
       55 JUMPIFNOT                        R5 ; [+6]
       56 JUMPIFNOT                        R3 ; [+5]
       57 SETTABLEKS                       R3 R5 K12 ["rebind"]
       59 GETUPVAL                         R6 3
       60 MOVE                             R7 R5
       61 CALL                             R6 1 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R6 2
       64 GETTABLEKS                       R7 R0 K3 ["path"]
       66 NAMECALL                         R7 R7 K11 ["lower"]
       68 CALL                             R7 1 1
       69 GETTABLE                         R5 R6 R7
       70 JUMPIFEQKNIL                     R5 ; [+16]
       72 GETTABLEKS                       R6 R5 K13 ["loaded"]
       74 JUMPIFNOT                        R6 ; [+6]
       75 GETTABLEKS                       R6 R5 K14 ["initialContent"]
       77 GETTABLEKS                       R7 R0 K15 ["content"]
       79 JUMPIFNOTEQ                      R6 R7 ; [+7]
       81 GETTABLEKS                       R6 R5 K13 ["loaded"]
       83 JUMPIF                           R6 ; [+19]
       84 GETTABLEKS                       R6 R0 K16 ["superseded"]
       86 JUMPIFNOT                        R6 ; [+16]
       87 GETUPVAL                         R6 4
       88 GETTABLEKS                       R7 R0 K3 ["path"]
       90 CALL                             R6 1 1
       91 MOVE                             R5 R6
       92 LOADB                            R6 1
       93 SETTABLEKS                       R6 R5 K13 ["loaded"]
       95 GETTABLEKS                       R6 R0 K15 ["content"]
       97 SETTABLEKS                       R6 R5 K14 ["initialContent"]
       99 SETTABLEKS                       R4 R5 K17 ["initialText"]
      101 SETTABLEKS                       R4 R5 K18 ["latestText"]
      103 GETTABLEKS                       R6 R0 K16 ["superseded"]
      105 JUMPIFNOT                        R6 ; [+11]
      106 GETIMPORT                        R6 K8 [warn]
      108 LOADK                            R7 K19 ["[TextDocumentAssetEditor] Team Create rejected a save of %*: %*. It may not be this editor's; the text it saved is reopened, edit it and close its tab to write it back."]
      109 GETTABLEKS                       R9 R0 K3 ["path"]
      111 MOVE                             R10 R1
      112 NAMECALL                         R7 R7 K10 ["format"]
      114 CALL                             R7 3 1
      115 CALL                             R6 1 0
      116 JUMP                             ; [+22]
      117 GETIMPORT                        R6 K8 [warn]
      119 LOADK                            R7 K20 ["[TextDocumentAssetEditor] Team Create rejected the save of %*: %*. The edited text is retained; close its tab to retry."]
      120 GETTABLEKS                       R9 R0 K3 ["path"]
      122 MOVE                             R10 R1
      123 NAMECALL                         R7 R7 K10 ["format"]
      125 CALL                             R7 3 1
      126 CALL                             R6 1 0
      127 GETTABLEKS                       R6 R5 K13 ["loaded"]
      129 JUMPIF                           R6 ; [+2]
      130 SETTABLEKS                       R4 R5 K18 ["latestText"]
      132 LOADNIL                          R6
      133 SETTABLEKS                       R6 R5 K17 ["initialText"]
      135 GETTABLEKS                       R6 R0 K15 ["content"]
      137 SETTABLEKS                       R6 R5 K14 ["initialContent"]
      139 JUMPIFNOT                        R3 ; [+2]
      140 SETTABLEKS                       R3 R5 K12 ["rebind"]
      142 GETTABLEKS                       R6 R5 K21 ["saving"]
      144 JUMPIF                           R6 ; [+41]
      145 GETTABLEKS                       R6 R5 K0 ["document"]
      147 JUMPIFNOTEQKNIL                  R6 ; [+38]
      149 LOADB                            R6 1
      150 SETTABLEKS                       R6 R5 K22 ["recoveryPending"]
      152 GETTABLEKS                       R6 R5 K23 ["opening"]
      154 JUMPIF                           R6 ; [+31]
      155 GETTABLEKS                       R7 R5 K23 ["opening"]
      157 JUMPIFNOT                        R7 ; [+1]
      158 RETURN                           R0 0
      159 LOADB                            R7 1
      160 SETTABLEKS                       R7 R5 K23 ["opening"]
      162 GETTABLEKS                       R7 R5 K0 ["document"]
      164 JUMPIFNOT                        R7 ; [+9]
      165 NEWCLOSURE                       R9 P0
      166 CAPTURE                          VAL R7
      167 FASTPCALL                        pcall 1 ; [+2]
      168 GETIMPORT                        R8 K25 [pcall]
      170 CALL                             R8 1 2
      171 JUMPIFNOT                        R8 ; [+2]
      172 SETTABLEKS                       R9 R5 K18 ["latestText"]
      174 GETUPVAL                         R7 5
      175 GETTABLEKS                       R8 R5 K26 ["scriptId"]
      177 GETTABLEKS                       R9 R5 K18 ["latestText"]
      179 CALL                             R7 2 1
      180 LOADB                            R8 0
      181 SETTABLEKS                       R8 R5 K23 ["opening"]
      183 GETUPVAL                         R8 6
      184 MOVE                             R9 R5
      185 CALL                             R8 1 0
      186 RETURN                           R0 0

PROTO_34:
        0 JUMPIFEQKS                       R0 K0 ["SetContent"] ; [+2]
        2 RETURN                           R0 0
        3 NAMECALL                         R4 R1 K1 ["lower"]
        5 CALL                             R4 1 1
        6 GETUPVAL                         R6 0
        7 GETTABLE                         R5 R6 R4
        8 JUMPIFNOT                        R5 ; [+47]
        9 GETTABLEKS                       R7 R5 K2 ["path"]
       11 NEWCLOSURE                       R9 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R7
       14 FASTPCALL                        pcall 1 ; [+2]
       15 GETIMPORT                        R8 K4 [pcall]
       17 CALL                             R8 1 2
       18 JUMPIFNOT                        R8 ; [+8]
       19 JUMPIFEQKNIL                     R9 ; [+7]
       21 GETTABLEKS                       R10 R9 K5 ["SourceType"]
       23 GETIMPORT                        R11 K9 [Enum.ContentSourceType.None]
       25 JUMPIFNOTEQ                      R10 R11 ; [+3]
       27 LOADNIL                          R6
       28 JUMP                             ; [+1]
       29 MOVE                             R6 R9
       30 GETTABLEKS                       R7 R5 K10 ["content"]
       32 JUMPIFEQ                         R6 R7 ; [+23]
       34 JUMPIFNOT                        R6 ; [+14]
       35 GETTABLEKS                       R7 R5 K10 ["content"]
       37 JUMPIFEQ                         R6 R7 ; [+11]
       39 GETIMPORT                        R7 K13 [table.find]
       41 GETTABLEKS                       R8 R5 K14 ["previousContents"]
       43 MOVE                             R9 R6
       44 CALL                             R7 2 1
       45 JUMPIF                           R7 ; [+3]
       46 LOADB                            R7 1
       47 SETTABLEKS                       R7 R5 K15 ["superseded"]
       49 GETUPVAL                         R7 0
       50 LOADNIL                          R8
       51 SETTABLE                         R8 R7 R4
       52 GETUPVAL                         R7 2
       53 MOVE                             R8 R5
       54 MOVE                             R9 R3
       55 CALL                             R7 2 0
       56 RETURN                           R0 0

PROTO_35:
        0 NAMECALL                         R1 R0 K0 ["lower"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 0
        4 JUMPIFNOT                        R3 ; [+10]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["path"]
        8 NAMECALL                         R3 R3 K0 ["lower"]
       10 CALL                             R3 1 1
       11 JUMPIFNOTEQ                      R3 R1 ; [+3]
       13 GETUPVAL                         R2 0
       14 JUMP                             ; [+2]
       15 GETUPVAL                         R3 1
       16 GETTABLE                         R2 R3 R1
       17 JUMPIFNOT                        R2 ; [+6]
       18 GETIMPORT                        R3 K4 [table.remove]
       20 GETTABLEKS                       R4 R2 K5 ["previousContents"]
       22 LOADN                            R5 1
       23 CALL                             R3 2 0
       24 GETUPVAL                         R3 2
       25 CALL                             R3 0 0
       26 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["rebind"]
        6 JUMPIFNOT                        R6 ; [+15]
        7 GETTABLEKS                       R6 R5 K0 ["rebind"]
        9 GETTABLEKS                       R6 R6 K1 ["document"]
       11 JUMPIFNOTEQ                      R6 R0 ; [+10]
       13 GETTABLEKS                       R6 R0 K2 ["TextContent"]
       15 GETTABLEKS                       R7 R5 K0 ["rebind"]
       17 GETTABLEKS                       R7 R7 K3 ["previousContent"]
       19 JUMPIFNOTEQ                      R6 R7 ; [+2]
       21 RETURN                           R5 1
       22 FORGLOOP                         R1 2 ; [-19]
       24 LOADNIL                          R1
       25 RETURN                           R1 1

PROTO_37:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R4 R0 K0 ["lower"]
        3 CALL                             R4 1 1
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_38:
        0 LOADK                            R3 K0 ["TextDocument"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R2 R0 K2 ["TextContent"]
        9 CALL                             R1 1 1
       10 LOADNIL                          R2
       11 JUMPIFNOTEQKNIL                  R1 ; [+15]
       13 GETUPVAL                         R3 1
       14 MOVE                             R4 R0
       15 CALL                             R3 1 1
       16 MOVE                             R2 R3
       17 JUMPIFNOT                        R2 ; [+3]
       18 GETTABLEKS                       R1 R2 K3 ["path"]
       20 JUMP                             ; [+6]
       21 GETUPVAL                         R3 2
       22 MOVE                             R4 R0
       23 DUPCLOSURE                       R5 K4 [PROTO_37]
       24 CAPTURE                          UPVAL U3
       25 CALL                             R3 2 1
       26 MOVE                             R1 R3
       27 JUMPIFNOTEQKNIL                  R1 ; [+2]
       29 RETURN                           R0 0
       30 JUMPIFNOT                        R2 ; [+34]
       31 GETTABLEKS                       R5 R2 K5 ["opening"]
       33 JUMPIFNOT                        R5 ; [+2]
       34 LOADB                            R3 1
       35 JUMP                             ; [+32]
       36 LOADB                            R5 1
       37 SETTABLEKS                       R5 R2 K5 ["opening"]
       39 GETTABLEKS                       R5 R2 K6 ["document"]
       41 JUMPIFNOT                        R5 ; [+9]
       42 NEWCLOSURE                       R7 P1
       43 CAPTURE                          VAL R5
       44 FASTPCALL                        pcall 1 ; [+2]
       45 GETIMPORT                        R6 K8 [pcall]
       47 CALL                             R6 1 2
       48 JUMPIFNOT                        R6 ; [+2]
       49 SETTABLEKS                       R7 R2 K9 ["latestText"]
       51 GETUPVAL                         R5 4
       52 GETTABLEKS                       R6 R2 K10 ["scriptId"]
       54 GETTABLEKS                       R7 R2 K9 ["latestText"]
       56 CALL                             R5 2 1
       57 LOADB                            R6 0
       58 SETTABLEKS                       R6 R2 K5 ["opening"]
       60 GETUPVAL                         R6 5
       61 MOVE                             R7 R2
       62 CALL                             R6 1 0
       63 MOVE                             R3 R5
       64 JUMP                             ; [+3]
       65 GETUPVAL                         R3 6
       66 MOVE                             R4 R1
       67 CALL                             R3 1 1
       68 JUMPIF                           R3 ; [+8]
       69 GETIMPORT                        R4 K12 [warn]
       71 LOADK                            R5 K13 ["[TextDocumentAssetEditor] Could not open %* for editing."]
       72 MOVE                             R7 R1
       73 NAMECALL                         R5 R5 K14 ["format"]
       75 CALL                             R5 2 1
       76 CALL                             R4 1 0
       77 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADNIL                          R1
        6 LOADNIL                          R2
        7 FORGPREP                         R0
        8 NAMECALL                         R5 R4 K0 ["Disconnect"]
       10 CALL                             R5 1 0
       11 FORGLOOP                         R0 2 ; [-4]
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextDocumentAssetEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["launch"]
       16 LOADK                            R3 K2 ["TextDocumentAssetEditor"]
       17 GETTABLEKS                       R4 R0 K9 ["Src"]
       19 CALL                             R2 2 0
       20 GETTABLEKS                       R2 R1 K10 ["isCli"]
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+1]
       24 RETURN                           R0 0
       25 GETIMPORT                        R2 K12 [game]
       27 LOADK                            R4 K13 ["StudioTextDocumentUploadAsset"]
       28 NAMECALL                         R2 R2 K14 ["GetEngineFeature"]
       30 CALL                             R2 2 1
       31 JUMPIFNOT                        R2 ; [+10]
       32 GETIMPORT                        R2 K5 [require]
       34 GETTABLEKS                       R3 R0 K9 ["Src"]
       36 GETTABLEKS                       R3 R3 K15 ["uploadAsset"]
       38 CALL                             R2 1 1
       39 GETIMPORT                        R3 K17 [plugin]
       41 CALL                             R2 1 0
       42 GETIMPORT                        R2 K5 [require]
       44 GETTABLEKS                       R3 R0 K18 ["Bin"]
       46 GETTABLEKS                       R3 R3 K19 ["Common"]
       48 GETTABLEKS                       R3 R3 K20 ["defineLuaFlags"]
       50 CALL                             R2 1 1
       51 GETTABLEKS                       R3 R2 K21 ["getFFlagStudioTextDocumentAssetEditor"]
       53 CALL                             R3 0 1
       54 JUMPIF                           R3 ; [+1]
       55 RETURN                           R0 0
       56 GETTABLEKS                       R3 R2 K22 ["getFFlagStudioTextDocumentAssetEditorContentMap"]
       58 CALL                             R3 0 1
       59 JUMPIF                           R3 ; [+11]
       60 GETIMPORT                        R3 K5 [require]
       62 GETTABLEKS                       R4 R0 K9 ["Src"]
       64 GETTABLEKS                       R4 R4 K23 ["runtimeContentEditor"]
       66 CALL                             R3 1 1
       67 GETIMPORT                        R4 K17 [plugin]
       69 CALL                             R3 1 0
       70 RETURN                           R0 0
       71 GETIMPORT                        R3 K12 [game]
       73 LOADK                            R5 K24 ["AssetService"]
       74 NAMECALL                         R3 R3 K25 ["GetService"]
       76 CALL                             R3 2 1
       77 GETIMPORT                        R4 K12 [game]
       79 LOADK                            R6 K26 ["ProjectService"]
       80 NAMECALL                         R4 R4 K25 ["GetService"]
       82 CALL                             R4 2 1
       83 GETIMPORT                        R5 K12 [game]
       85 LOADK                            R7 K27 ["ScriptEditorService"]
       86 NAMECALL                         R5 R5 K25 ["GetService"]
       88 CALL                             R5 2 1
       89 GETIMPORT                        R6 K5 [require]
       91 GETTABLEKS                       R7 R0 K9 ["Src"]
       93 GETTABLEKS                       R7 R7 K28 ["contentMapPath"]
       95 CALL                             R6 1 1
       96 GETIMPORT                        R7 K5 [require]
       98 GETTABLEKS                       R8 R0 K9 ["Src"]
      100 GETTABLEKS                       R8 R8 K29 ["pathFromTemporaryUri"]
      102 CALL                             R7 1 1
      103 GETIMPORT                        R8 K5 [require]
      105 GETTABLEKS                       R9 R0 K9 ["Src"]
      107 GETTABLEKS                       R9 R9 K30 ["generateUniquePathLocally"]
      109 CALL                             R8 1 1
      110 GETIMPORT                        R9 K5 [require]
      112 GETTABLEKS                       R10 R0 K6 ["Packages"]
      114 GETTABLEKS                       R10 R10 K31 ["SharedPluginConstants"]
      116 CALL                             R9 1 1
      117 GETIMPORT                        R10 K5 [require]
      119 GETTABLEKS                       R11 R0 K6 ["Packages"]
      121 GETTABLEKS                       R11 R11 K32 ["_Index"]
      123 GETTABLEKS                       R11 R11 K33 ["DeveloperFramework"]
      125 GETTABLEKS                       R11 R11 K33 ["DeveloperFramework"]
      127 GETTABLEKS                       R11 R11 K34 ["Util"]
      129 GETTABLEKS                       R11 R11 K35 ["CrossPluginCommunication"]
      131 CALL                             R10 1 1
      132 DUPCLOSURE                       R11 K36 [PROTO_1]
      133 CAPTURE                          VAL R3
      134 DUPCLOSURE                       R12 K37 [PROTO_3]
      135 CAPTURE                          VAL R3
      136 DUPCLOSURE                       R13 K38 [PROTO_5]
      137 CAPTURE                          VAL R4
      138 DUPCLOSURE                       R14 K39 [PROTO_7]
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R3
      141 DUPCLOSURE                       R15 K40 [PROTO_9]
      142 CAPTURE                          VAL R4
      143 NEWTABLE                         R16 0 0
      145 NEWTABLE                         R17 0 0
      147 DUPCLOSURE                       R18 K41 [PROTO_10]
      148 CAPTURE                          VAL R17
      149 DUPCLOSURE                       R19 K42 [PROTO_11]
      150 CAPTURE                          VAL R17
      151 LOADNIL                          R20
      152 NEWCLOSURE                       R21 P7
      153 CAPTURE                          REF R20
      154 CAPTURE                          VAL R4
      155 NEWCLOSURE                       R22 P8
      156 CAPTURE                          VAL R16
      157 CAPTURE                          VAL R3
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R8
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R19
      162 CAPTURE                          REF R20
      163 CAPTURE                          VAL R17
      164 DUPCLOSURE                       R23 K43 [PROTO_16]
      165 CAPTURE                          VAL R5
      166 NEWTABLE                         R24 0 0
      168 NEWTABLE                         R25 0 0
      170 NEWTABLE                         R26 0 0
      172 LOADN                            R27 0
      173 DUPCLOSURE                       R28 K44 [PROTO_17]
      174 CAPTURE                          VAL R25
      175 CAPTURE                          VAL R24
      176 DUPCLOSURE                       R29 K45 [PROTO_19]
      177 DUPCLOSURE                       R30 K46 [PROTO_20]
      178 CAPTURE                          VAL R23
      179 CAPTURE                          VAL R28
      180 NEWTABLE                         R31 0 0
      182 LOADB                            R32 0
      183 LOADNIL                          R33
      184 NEWCLOSURE                       R34 P13
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R19
      187 CAPTURE                          VAL R4
      188 CAPTURE                          REF R20
      189 CAPTURE                          VAL R23
      190 CAPTURE                          VAL R28
      191 CAPTURE                          VAL R17
      192 NEWCLOSURE                       R35 P14
      193 CAPTURE                          VAL R31
      194 CAPTURE                          REF R33
      195 CAPTURE                          VAL R34
      196 CAPTURE                          VAL R28
      197 CAPTURE                          REF R32
      198 NEWCLOSURE                       R36 P15
      199 CAPTURE                          VAL R31
      200 CAPTURE                          REF R33
      201 CAPTURE                          REF R32
      202 CAPTURE                          VAL R35
      203 NEWCLOSURE                       R37 P16
      204 CAPTURE                          REF R27
      205 CAPTURE                          VAL R24
      206 CAPTURE                          VAL R25
      207 DUPCLOSURE                       R38 K47 [PROTO_25]
      208 CAPTURE                          VAL R24
      209 CAPTURE                          VAL R25
      210 CAPTURE                          VAL R37
      211 CAPTURE                          VAL R4
      212 CAPTURE                          VAL R3
      213 CAPTURE                          VAL R28
      214 CAPTURE                          VAL R23
      215 DUPCLOSURE                       R39 K48 [PROTO_27]
      216 CAPTURE                          VAL R7
      217 CAPTURE                          VAL R25
      218 CAPTURE                          VAL R26
      219 DUPCLOSURE                       R40 K49 [PROTO_28]
      220 CAPTURE                          VAL R26
      221 DUPCLOSURE                       R41 K50 [PROTO_29]
      222 CAPTURE                          VAL R26
      223 CAPTURE                          VAL R36
      224 CAPTURE                          VAL R28
      225 DUPCLOSURE                       R42 K51 [PROTO_30]
      226 CAPTURE                          VAL R17
      227 DUPCLOSURE                       R43 K52 [PROTO_31]
      228 DUPCLOSURE                       R44 K53 [PROTO_32]
      229 CAPTURE                          VAL R17
      230 CAPTURE                          VAL R4
      231 DUPCLOSURE                       R45 K54 [PROTO_33]
      232 CAPTURE                          VAL R6
      233 CAPTURE                          VAL R4
      234 CAPTURE                          VAL R24
      235 CAPTURE                          VAL R36
      236 CAPTURE                          VAL R37
      237 CAPTURE                          VAL R23
      238 CAPTURE                          VAL R28
      239 DUPCLOSURE                       R46 K55 [PROTO_34]
      240 CAPTURE                          VAL R17
      241 CAPTURE                          VAL R4
      242 CAPTURE                          VAL R45
      243 NEWCLOSURE                       R47 P26
      244 CAPTURE                          REF R20
      245 CAPTURE                          VAL R17
      246 CAPTURE                          VAL R44
      247 DUPCLOSURE                       R48 K56 [PROTO_36]
      248 CAPTURE                          VAL R25
      249 DUPCLOSURE                       R49 K57 [PROTO_38]
      250 CAPTURE                          VAL R6
      251 CAPTURE                          VAL R48
      252 CAPTURE                          VAL R22
      253 CAPTURE                          VAL R24
      254 CAPTURE                          VAL R23
      255 CAPTURE                          VAL R28
      256 CAPTURE                          VAL R38
      257 GETTABLEKS                       R50 R10 K58 ["new"]
      259 GETTABLEKS                       R51 R9 K59 ["CONTENT_EDIT"]
      261 GETTABLEKS                       R51 R51 K60 ["CPC_ID"]
      263 CALL                             R50 1 1
      264 GETTABLEKS                       R51 R9 K59 ["CONTENT_EDIT"]
      266 GETTABLEKS                       R51 R51 K61 ["editInstanceEvent"]
      268 LOADK                            R52 K62 ["TextDocument"]
      269 CALL                             R51 1 1
      270 MOVE                             R54 R51
      271 MOVE                             R55 R49
      272 NAMECALL                         R52 R50 K63 ["Connect"]
      274 CALL                             R52 3 1
      275 NEWTABLE                         R53 0 8
      277 GETTABLEKS                       R54 R5 K64 ["TextDocumentDidOpen"]
      279 MOVE                             R56 R39
      280 NAMECALL                         R54 R54 K63 ["Connect"]
      282 CALL                             R54 2 1
      283 GETTABLEKS                       R55 R5 K65 ["TextDocumentDidChange"]
      285 MOVE                             R57 R40
      286 NAMECALL                         R55 R55 K63 ["Connect"]
      288 CALL                             R55 2 1
      289 GETTABLEKS                       R56 R5 K66 ["TextDocumentDidClose"]
      291 MOVE                             R58 R41
      292 NAMECALL                         R56 R56 K63 ["Connect"]
      294 CALL                             R56 2 1
      295 GETTABLEKS                       R57 R4 K67 ["PathRemoved"]
      297 MOVE                             R59 R42
      298 NAMECALL                         R57 R57 K63 ["Connect"]
      300 CALL                             R57 2 1
      301 GETTABLEKS                       R58 R4 K68 ["PathAdded"]
      303 MOVE                             R60 R47
      304 NAMECALL                         R58 R58 K63 ["Connect"]
      306 CALL                             R58 2 1
      307 GETTABLEKS                       R59 R4 K69 ["PathChanged"]
      309 MOVE                             R61 R47
      310 NAMECALL                         R59 R59 K63 ["Connect"]
      312 CALL                             R59 2 1
      313 GETTABLEKS                       R60 R4 K70 ["EffectivePathsChanged"]
      315 MOVE                             R62 R44
      316 NAMECALL                         R60 R60 K63 ["Connect"]
      318 CALL                             R60 2 1
      319 GETTABLEKS                       R61 R4 K71 ["MutationFailed"]
      321 MOVE                             R63 R46
      322 NAMECALL                         R61 R61 K63 ["Connect"]
      324 CALL                             R61 2 -1
      325 SETLIST                          R53 R54 -1 [1]
      327 GETIMPORT                        R54 K17 [plugin]
      329 GETTABLEKS                       R54 R54 K72 ["Unloading"]
      331 DUPCLOSURE                       R56 K73 [PROTO_39]
      332 CAPTURE                          VAL R52
      333 CAPTURE                          VAL R53
      334 NAMECALL                         R54 R54 K63 ["Connect"]
      336 CALL                             R54 2 0
      337 CLOSEUPVALS                      R20
      338 RETURN                           R0 0
