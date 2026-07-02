PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R10 R6 K0 ["id"]
        8 LOADK                            R11 K1 ["|"]
        9 GETTABLEKS                       R12 R6 K2 ["name"]
       11 CONCAT                           R9 R10 R12
       12 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       14 MOVE                             R8 R1
       15 GETIMPORT                        R7 K5 [table.insert]
       17 CALL                             R7 2 0
       18 FORGLOOP                         R2 2 ; [-13]
       20 GETIMPORT                        R2 K7 [table.concat]
       22 MOVE                             R3 R1
       23 LOADK                            R4 K8 ["\n"]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["id"]
        8 LOADB                            R8 1
        9 SETTABLE                         R8 R1 R7
       10 FORGLOOP                         R2 2 ; [-5]
       12 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["suggestSchemaOrPartsAsync"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 GETUPVAL                         R5 1
        6 GETUPVAL                         R6 2
        7 CALL                             R2 4 3
        8 JUMPIFNOT                        R4 ; [+16]
        9 GETUPVAL                         R5 3
       10 CALL                             R5 0 1
       11 JUMPIFNOT                        R5 ; [+9]
       12 GETIMPORT                        R5 K2 [print]
       14 LOADK                            R7 K3 ["[MeshGenSchemaSelector] LLM detected explicit no-segmentation intent for \"%*\""]
       15 MOVE                             R9 R0
       16 NAMECALL                         R7 R7 K4 ["format"]
       18 CALL                             R7 2 1
       19 MOVE                             R6 R7
       20 CALL                             R5 1 0
       21 LOADNIL                          R5
       22 LOADB                            R6 0
       23 LOADB                            R7 1
       24 RETURN                           R5 3
       25 JUMPIFNOT                        R2 ; [+48]
       26 GETUPVAL                         R5 4
       27 LOADNIL                          R6
       28 LOADNIL                          R7
       29 FORGPREP                         R5
       30 GETTABLEKS                       R10 R9 K5 ["id"]
       32 JUMPIFNOTEQ                      R10 R2 ; [+27]
       34 GETUPVAL                         R10 3
       35 CALL                             R10 0 1
       36 JUMPIFNOT                        R10 ; [+18]
       37 GETIMPORT                        R10 K2 [print]
       39 LOADK                            R12 K6 ["[MeshGenSchemaSelector] matched schema \"%*\" (%*): %*"]
       40 GETTABLEKS                       R14 R9 K5 ["id"]
       42 GETTABLEKS                       R15 R9 K7 ["name"]
       44 GETIMPORT                        R16 K10 [table.concat]
       46 GETTABLEKS                       R17 R9 K11 ["parts"]
       48 LOADK                            R18 K12 [", "]
       49 CALL                             R16 2 1
       50 NAMECALL                         R12 R12 K4 ["format"]
       52 CALL                             R12 4 1
       53 MOVE                             R11 R12
       54 CALL                             R10 1 0
       55 GETTABLEKS                       R10 R9 K11 ["parts"]
       57 LOADB                            R11 1
       58 LOADB                            R12 0
       59 RETURN                           R10 3
       60 FORGLOOP                         R5 2 ; [-31]
       62 GETUPVAL                         R5 3
       63 CALL                             R5 0 1
       64 JUMPIFNOT                        R5 ; [+9]
       65 GETIMPORT                        R5 K2 [print]
       67 LOADK                            R7 K13 ["[MeshGenSchemaSelector] schema ID \"%*\" not found in table, treating as no match"]
       68 MOVE                             R9 R2
       69 NAMECALL                         R7 R7 K4 ["format"]
       71 CALL                             R7 2 1
       72 MOVE                             R6 R7
       73 CALL                             R5 1 0
       74 GETUPVAL                         R5 3
       75 CALL                             R5 0 1
       76 JUMPIFNOT                        R5 ; [+16]
       77 GETIMPORT                        R5 K2 [print]
       79 LOADK                            R7 K14 ["[MeshGenSchemaSelector] free-form parts: %*"]
       80 JUMPIFNOT                        R3 ; [+6]
       81 GETIMPORT                        R9 K10 [table.concat]
       83 MOVE                             R10 R3
       84 LOADK                            R11 K12 [", "]
       85 CALL                             R9 2 1
       86 JUMP                             ; [+1]
       87 LOADK                            R9 K15 ["(nil)"]
       88 NAMECALL                         R7 R7 K4 ["format"]
       90 CALL                             R7 2 1
       91 MOVE                             R6 R7
       92 CALL                             R5 1 0
       93 MOVE                             R5 R3
       94 LOADB                            R6 0
       95 LOADB                            R7 0
       96 RETURN                           R5 3

PROTO_3:
        0 LOADK                            R3 K0 ["^%s*(.-)%s*$"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+11]
        5 LENGTH                           R2 R1
        6 LOADN                            R3 0
        7 JUMPIFNOTLT                      R3 R2 ; [+8]
        9 GETUPVAL                         R3 0
       10 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       12 MOVE                             R4 R1
       13 GETIMPORT                        R2 K4 [table.insert]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R1
        3 RETURN                           R1 1
        4 NEWTABLE                         R1 0 0
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          VAL R1
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K1 [typeof]
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+35]
       15 MOVE                             R3 R0
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 FORGPREP                         R3
       19 FASTCALL1                        TYPEOF R7 ; [+3]
       20 MOVE                             R9 R7
       21 GETIMPORT                        R8 K1 [typeof]
       23 CALL                             R8 1 1
       24 JUMPIFNOTEQKS                    R8 K3 ["string"] ; [+17]
       26 LOADK                            R10 K4 ["^%s*(.-)%s*$"]
       27 NAMECALL                         R8 R7 K5 ["match"]
       29 CALL                             R8 2 1
       30 JUMPIFNOT                        R8 ; [+11]
       31 LENGTH                           R9 R8
       32 LOADN                            R10 0
       33 JUMPIFNOTLT                      R10 R9 ; [+8]
       35 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       37 MOVE                             R10 R1
       38 MOVE                             R11 R8
       39 GETIMPORT                        R9 K7 [table.insert]
       41 CALL                             R9 2 0
       42 LENGTH                           R8 R1
       43 LOADN                            R9 16
       44 JUMPIFLE                         R9 R8 ; [+46]
       46 FORGLOOP                         R3 2 ; [-28]
       48 JUMP                             ; [+42]
       49 FASTCALL1                        TYPEOF R0 ; [+3]
       50 MOVE                             R4 R0
       51 GETIMPORT                        R3 K1 [typeof]
       53 CALL                             R3 1 1
       54 JUMPIFNOTEQKS                    R3 K3 ["string"] ; [+34]
       56 LENGTH                           R3 R0
       57 JUMPIFNOTEQKN                    R3 K8 [0] ; [+3]
       59 LOADNIL                          R3
       60 RETURN                           R3 1
       61 LOADK                            R5 K9 ["[^,]+"]
       62 NAMECALL                         R3 R0 K10 ["gmatch"]
       64 CALL                             R3 2 3
       65 FORGPREP                         R3
       66 LOADK                            R10 K4 ["^%s*(.-)%s*$"]
       67 NAMECALL                         R8 R6 K5 ["match"]
       69 CALL                             R8 2 1
       70 JUMPIFNOT                        R8 ; [+11]
       71 LENGTH                           R9 R8
       72 LOADN                            R10 0
       73 JUMPIFNOTLT                      R10 R9 ; [+8]
       75 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       77 MOVE                             R10 R1
       78 MOVE                             R11 R8
       79 GETIMPORT                        R9 K7 [table.insert]
       81 CALL                             R9 2 0
       82 LENGTH                           R8 R1
       83 LOADN                            R9 16
       84 JUMPIFLE                         R9 R8 ; [+6]
       86 FORGLOOP                         R3 1 ; [-21]
       88 JUMP                             ; [+2]
       89 LOADNIL                          R3
       90 RETURN                           R3 1
       91 LENGTH                           R4 R1
       92 JUMPIFNOTEQKN                    R4 K8 [0] ; [+3]
       94 LOADNIL                          R3
       95 RETURN                           R3 1
       96 MOVE                             R3 R1
       97 RETURN                           R3 1

PROTO_5:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [typeof]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+8]
       11 LENGTH                           R2 R0
       12 LOADN                            R3 0
       13 JUMPIFLT                         R3 R2 ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1
       18 FASTCALL1                        TYPEOF R0 ; [+3]
       19 MOVE                             R2 R0
       20 GETIMPORT                        R1 K1 [typeof]
       22 CALL                             R1 1 1
       23 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+22]
       25 MOVE                             R1 R0
       26 LOADNIL                          R2
       27 LOADNIL                          R3
       28 FORGPREP                         R1
       29 FASTCALL1                        TYPEOF R5 ; [+3]
       30 MOVE                             R7 R5
       31 GETIMPORT                        R6 K1 [typeof]
       33 CALL                             R6 1 1
       34 JUMPIFNOTEQKS                    R6 K2 ["string"] ; [+7]
       36 LENGTH                           R6 R5
       37 LOADN                            R7 0
       38 JUMPIFNOTLT                      R7 R6 ; [+3]
       40 LOADB                            R6 1
       41 RETURN                           R6 1
       42 FORGLOOP                         R1 2 ; [-14]
       44 LOADB                            R1 0
       45 RETURN                           R1 1
       46 LOADB                            R1 0
       47 RETURN                           R1 1

PROTO_6:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 JUMPIFNOT                        R2 ; [+6]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K0 ["SegmentationArg"]
       11 GETTABLEKS                       R2 R2 K1 ["Explicit"]
       13 RETURN                           R2 1
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K0 ["SegmentationArg"]
       17 GETTABLEKS                       R2 R2 K2 ["None"]
       19 RETURN                           R2 1

PROTO_7:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 8
        2 JUMPIFNOTLE                      R1 R2 ; [+2]
        4 RETURN                           R0 1
        5 NEWTABLE                         R1 0 0
        7 GETTABLEN                        R2 R0 1
        8 SETTABLEN                        R2 R1 1
        9 GETTABLEN                        R2 R0 2
       10 SETTABLEN                        R2 R1 2
       11 GETTABLEN                        R2 R0 3
       12 SETTABLEN                        R2 R1 3
       13 GETTABLEN                        R2 R0 4
       14 SETTABLEN                        R2 R1 4
       15 GETTABLEN                        R2 R0 5
       16 SETTABLEN                        R2 R1 5
       17 GETTABLEN                        R2 R0 6
       18 SETTABLEN                        R2 R1 6
       19 GETTABLEN                        R2 R0 7
       20 SETTABLEN                        R2 R1 7
       21 GETTABLEN                        R2 R0 8
       22 SETTABLEN                        R2 R1 8
       23 RETURN                           R1 1

PROTO_8:
        0 LOADNIL                          R4
        1 GETUPVAL                         R5 0
        2 MOVE                             R6 R1
        3 CALL                             R5 1 1
        4 JUMPIFEQKNIL                     R0 ; [+34]
        6 LOADB                            R7 1
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R8 R8 K0 ["SegmentationArg"]
       10 GETTABLEKS                       R8 R8 K1 ["Auto"]
       12 JUMPIFEQ                         R0 R8 ; [+18]
       14 LOADB                            R7 1
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K0 ["SegmentationArg"]
       18 GETTABLEKS                       R8 R8 K2 ["None"]
       20 JUMPIFEQ                         R0 R8 ; [+10]
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K0 ["SegmentationArg"]
       25 GETTABLEKS                       R8 R8 K3 ["Explicit"]
       27 JUMPIFEQ                         R0 R8 ; [+2]
       29 LOADB                            R7 0 +1
       30 LOADB                            R7 1
       31 FASTCALL2K                       ASSERT R7 K4 ; [+4]
       33 LOADK                            R8 K4 ["segmentation must be \"auto\", \"none\", or \"explicit\""]
       34 GETIMPORT                        R6 K6 [assert]
       36 CALL                             R6 2 0
       37 MOVE                             R4 R0
       38 JUMP                             ; [+12]
       39 JUMPIFNOT                        R5 ; [+6]
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K0 ["SegmentationArg"]
       43 GETTABLEKS                       R4 R6 K3 ["Explicit"]
       45 JUMP                             ; [+5]
       46 GETUPVAL                         R6 1
       47 GETTABLEKS                       R6 R6 K0 ["SegmentationArg"]
       49 GETTABLEKS                       R4 R6 K1 ["Auto"]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K0 ["SegmentationArg"]
       54 GETTABLEKS                       R6 R6 K2 ["None"]
       56 JUMPIFNOTEQ                      R4 R6 ; [+3]
       58 LOADNIL                          R6
       59 RETURN                           R6 1
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R6 R6 K0 ["SegmentationArg"]
       63 GETTABLEKS                       R6 R6 K3 ["Explicit"]
       65 JUMPIFNOTEQ                      R4 R6 ; [+24]
       67 GETUPVAL                         R6 2
       68 MOVE                             R7 R1
       69 CALL                             R6 1 1
       70 JUMPIFNOTEQKNIL                  R6 ; [+15]
       72 GETIMPORT                        R7 K8 [error]
       74 LOADK                            R9 K9 ["segmentation=\"explicit\" requires a non-empty partNames argument (got: %*)"]
       75 FASTCALL1                        TOSTRING R1 ; [+3]
       76 MOVE                             R12 R1
       77 GETIMPORT                        R11 K11 [tostring]
       79 CALL                             R11 1 1
       80 NAMECALL                         R9 R9 K12 ["format"]
       82 CALL                             R9 2 1
       83 MOVE                             R8 R9
       84 LOADN                            R9 0
       85 CALL                             R7 2 0
       86 GETUPVAL                         R7 3
       87 MOVE                             R8 R6
       88 CALL                             R7 1 1
       89 RETURN                           R7 1
       90 GETUPVAL                         R6 4
       91 MOVE                             R7 R2
       92 MOVE                             R8 R3
       93 CALL                             R6 2 3
       94 GETUPVAL                         R9 5
       95 CALL                             R9 0 1
       96 JUMPIFNOT                        R9 ; [+3]
       97 JUMPIFNOT                        R8 ; [+2]
       98 LOADNIL                          R9
       99 RETURN                           R9 1
      100 JUMPIFEQKNIL                     R6 ; [+4]
      102 LENGTH                           R9 R6
      103 JUMPIFNOTEQKN                    R9 K13 [0] ; [+11]
      105 GETIMPORT                        R9 K8 [error]
      107 LOADK                            R11 K14 ["Auto-segmentation failed: could not derive part names for prompt \"%*\". Retry, or pass segmentation=\"none\", or pass segmentation=\"explicit\" with partNames."]
      108 MOVE                             R13 R2
      109 NAMECALL                         R11 R11 K12 ["format"]
      111 CALL                             R11 2 1
      112 MOVE                             R10 R11
      113 LOADN                            R11 0
      114 CALL                             R9 2 0
      115 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R2 K7 ["FFlagAssistantGen3dAutoSegmentation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Flags"]
       18 GETTABLEKS                       R3 R3 K8 ["FFlagDebugLogAssistantUI"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETIMPORT                        R4 K1 [script]
       25 GETTABLEKS                       R4 R4 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K10 ["MeshGenSchemas"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Features"]
       34 GETTABLEKS                       R5 R5 K12 ["Gen3dUtils"]
       36 GETTABLEKS                       R5 R5 K13 ["SchemaSelector"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K11 ["Features"]
       43 GETTABLEKS                       R6 R6 K12 ["Gen3dUtils"]
       45 GETTABLEKS                       R6 R6 K14 ["SegmentationEnums"]
       47 CALL                             R5 1 1
       48 GETTABLEKS                       R6 R3 K15 ["SCHEMAS"]
       50 DUPCLOSURE                       R7 K16 [PROTO_0]
       51 DUPCLOSURE                       R8 K17 [PROTO_1]
       52 MOVE                             R9 R7
       53 MOVE                             R10 R6
       54 CALL                             R9 1 1
       55 NEWTABLE                         R11 0 0
       57 MOVE                             R12 R6
       58 LOADNIL                          R13
       59 LOADNIL                          R14
       60 FORGPREP                         R12
       61 GETTABLEKS                       R17 R16 K18 ["id"]
       63 LOADB                            R18 1
       64 SETTABLE                         R18 R11 R17
       65 FORGLOOP                         R12 2 ; [-5]
       67 MOVE                             R10 R11
       68 DUPCLOSURE                       R11 K19 [PROTO_2]
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R6
       74 DUPCLOSURE                       R12 K20 [PROTO_4]
       75 DUPCLOSURE                       R13 K21 [PROTO_5]
       76 DUPCLOSURE                       R14 K22 [PROTO_6]
       77 CAPTURE                          VAL R13
       78 CAPTURE                          VAL R5
       79 DUPCLOSURE                       R15 K23 [PROTO_7]
       80 DUPCLOSURE                       R16 K24 [PROTO_8]
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R15
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R1
       87 DUPTABLE                         R17 K31 [{["suggestPartsAsync"], ["parsePartNames"], ["resolveSegmentationAsync"], ["inferUISegmentation"], ["MAX_HANDLER_PARTS"] = 8}]
       88 SETTABLEKS                       R11 R17 K25 ["suggestPartsAsync"]
       90 SETTABLEKS                       R12 R17 K26 ["parsePartNames"]
       92 SETTABLEKS                       R16 R17 K27 ["resolveSegmentationAsync"]
       94 SETTABLEKS                       R14 R17 K28 ["inferUISegmentation"]
       96 RETURN                           R17 1
