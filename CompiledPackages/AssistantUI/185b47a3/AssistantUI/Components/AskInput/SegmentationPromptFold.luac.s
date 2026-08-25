PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+3]
        7 MOVE                             R1 R0
        8 RETURN                           R1 1
        9 LOADNIL                          R1
       10 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["partNamesKey"]
        2 JUMPIFNOT                        R4 ; [+4]
        3 GETTABLEKS                       R4 R0 K0 ["partNamesKey"]
        5 GETTABLE                         R3 R1 R4
        6 JUMP                             ; [+1]
        7 LOADNIL                          R3
        8 GETTABLEKS                       R5 R0 K1 ["suggestKey"]
       10 JUMPIFNOT                        R5 ; [+4]
       11 GETTABLEKS                       R5 R0 K1 ["suggestKey"]
       13 GETTABLE                         R4 R1 R5
       14 JUMP                             ; [+1]
       15 LOADNIL                          R4
       16 GETTABLEKS                       R6 R0 K2 ["segmentationArgKey"]
       18 JUMPIFNOT                        R6 ; [+14]
       19 GETTABLEKS                       R7 R0 K2 ["segmentationArgKey"]
       21 GETTABLE                         R6 R1 R7
       22 FASTCALL1                        TYPEOF R6 ; [+3]
       23 MOVE                             R8 R6
       24 GETIMPORT                        R7 K4 [typeof]
       26 CALL                             R7 1 1
       27 JUMPIFNOTEQKS                    R7 K5 ["string"] ; [+3]
       29 MOVE                             R5 R6
       30 JUMP                             ; [+3]
       31 LOADNIL                          R5
       32 JUMP                             ; [+1]
       33 LOADNIL                          R5
       34 GETTABLEKS                       R7 R0 K6 ["segmentationModeKey"]
       36 JUMPIFNOT                        R7 ; [+14]
       37 GETTABLEKS                       R8 R0 K6 ["segmentationModeKey"]
       39 GETTABLE                         R7 R1 R8
       40 FASTCALL1                        TYPEOF R7 ; [+3]
       41 MOVE                             R9 R7
       42 GETIMPORT                        R8 K4 [typeof]
       44 CALL                             R8 1 1
       45 JUMPIFNOTEQKS                    R8 K5 ["string"] ; [+3]
       47 MOVE                             R6 R7
       48 JUMP                             ; [+3]
       49 LOADNIL                          R6
       50 JUMP                             ; [+1]
       51 LOADNIL                          R6
       52 MOVE                             R7 R5
       53 JUMPIF                           R7 ; [+6]
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K7 ["inferUISegmentation"]
       57 MOVE                             R8 R4
       58 MOVE                             R9 R3
       59 CALL                             R7 2 1
       60 MOVE                             R5 R7
       61 LOADB                            R8 1
       62 JUMPIFEQKNIL                     R5 ; [+20]
       64 LOADB                            R8 1
       65 GETUPVAL                         R9 1
       66 GETTABLEKS                       R9 R9 K8 ["Auto"]
       68 JUMPIFEQ                         R5 R9 ; [+14]
       70 LOADB                            R8 1
       71 GETUPVAL                         R9 1
       72 GETTABLEKS                       R9 R9 K9 ["None"]
       74 JUMPIFEQ                         R5 R9 ; [+8]
       76 GETUPVAL                         R9 1
       77 GETTABLEKS                       R9 R9 K10 ["Explicit"]
       79 JUMPIFEQ                         R5 R9 ; [+2]
       81 LOADB                            R8 0 +1
       82 LOADB                            R8 1
       83 LOADK                            R10 K11 ["Unexpected segArg: %*"]
       84 MOVE                             R12 R5
       85 NAMECALL                         R10 R10 K12 ["format"]
       87 CALL                             R10 2 1
       88 MOVE                             R9 R10
       89 FASTCALL2                        ASSERT R8 R9 ; [+3]
       91 GETIMPORT                        R7 K14 [assert]
       93 CALL                             R7 2 0
       94 MOVE                             R7 R5
       95 LOADB                            R9 1
       96 JUMPIFEQKNIL                     R6 ; [+18]
       98 LOADB                            R9 1
       99 GETUPVAL                         R10 2
      100 GETTABLEKS                       R10 R10 K15 ["SegmentationMode"]
      102 GETTABLEKS                       R10 R10 K16 ["Functional"]
      104 JUMPIFEQ                         R6 R10 ; [+10]
      106 GETUPVAL                         R10 2
      107 GETTABLEKS                       R10 R10 K15 ["SegmentationMode"]
      109 GETTABLEKS                       R10 R10 K17 ["Material"]
      111 JUMPIFEQ                         R6 R10 ; [+2]
      113 LOADB                            R9 0 +1
      114 LOADB                            R9 1
      115 LOADK                            R11 K18 ["Unexpected segMode: %*"]
      116 MOVE                             R13 R6
      117 NAMECALL                         R11 R11 K12 ["format"]
      119 CALL                             R11 2 1
      120 MOVE                             R10 R11
      121 FASTCALL2                        ASSERT R9 R10 ; [+3]
      123 GETIMPORT                        R8 K14 [assert]
      125 CALL                             R8 2 0
      126 GETUPVAL                         R8 0
      127 GETTABLEKS                       R8 R8 K19 ["resolveSegmentationAsync"]
      129 MOVE                             R9 R7
      130 MOVE                             R10 R3
      131 MOVE                             R11 R2
      132 MOVE                             R12 R6
      133 CALL                             R8 4 1
      134 FASTCALL1                        TYPEOF R8 ; [+3]
      135 MOVE                             R10 R8
      136 GETIMPORT                        R9 K4 [typeof]
      138 CALL                             R9 1 1
      139 JUMPIFNOTEQKS                    R9 K20 ["table"] ; [+8]
      141 GETUPVAL                         R9 3
      142 GETTABLEKS                       R9 R9 K21 ["combinePromptWithParts"]
      144 MOVE                             R10 R2
      145 MOVE                             R11 R8
      146 CALL                             R9 2 -1
      147 RETURN                           R9 -1
      148 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["kind"]
        4 GETTABLE                         R0 R1 R2
        5 JUMPIFNOT                        R0 ; [+6]
        6 MOVE                             R1 R0
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 CALL                             R1 3 -1
       11 RETURN                           R1 -1
       12 GETUPVAL                         R1 3
       13 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R2
        7 CALL                             R3 1 2
        8 JUMPIF                           R3 ; [+14]
        9 GETIMPORT                        R5 K3 [warn]
       11 LOADK                            R7 K4 ["[SegmentationPromptFold] fold errored: %*"]
       12 FASTCALL1                        TOSTRING R4 ; [+3]
       13 MOVE                             R10 R4
       14 GETIMPORT                        R9 K6 [tostring]
       16 CALL                             R9 1 1
       17 NAMECALL                         R7 R7 K7 ["format"]
       19 CALL                             R7 2 1
       20 MOVE                             R6 R7
       21 CALL                             R5 1 0
       22 RETURN                           R2 1
       23 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AskInput"]
       13 GETTABLEKS                       R2 R2 K8 ["AskInputTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["ImageSelection"]
       22 GETTABLEKS                       R3 R3 K11 ["ImageSelectionSlots"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["MeshGen"]
       31 GETTABLEKS                       R4 R4 K13 ["MeshGenSchemaSelector"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K14 ["Features"]
       38 GETTABLEKS                       R5 R5 K15 ["Gen3dUtils"]
       40 GETTABLEKS                       R5 R5 K16 ["SegmentationEnums"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R1 K17 ["SEGMENTATION_FOLD_KIND"]
       45 GETTABLEKS                       R6 R4 K18 ["SegmentationArg"]
       47 DUPCLOSURE                       R7 K19 [PROTO_0]
       48 DUPCLOSURE                       R8 K20 [PROTO_1]
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R2
       53 NEWTABLE                         R9 1 0
       55 GETTABLEKS                       R10 R5 K21 ["Gen3D"]
       57 SETTABLE                         R8 R9 R10
       58 DUPCLOSURE                       R10 K22 [PROTO_3]
       59 CAPTURE                          VAL R9
       60 DUPTABLE                         R11 K24 [{"resolveAsync"}]
       61 SETTABLEKS                       R10 R11 K23 ["resolveAsync"]
       63 RETURN                           R11 1
