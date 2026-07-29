PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NOT                              R0 R1
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 GETUPVAL                         R0 2
        6 JUMPIFNOT                        R0 ; [+3]
        7 GETUPVAL                         R0 2
        8 GETUPVAL                         R1 0
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+31]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K0 ["byId"]
        5 GETTABLE                         R2 R3 R0
        6 JUMPIF                           R2 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["coerceIncomingValue"]
       11 MOVE                             R4 R2
       12 MOVE                             R5 R1
       13 CALL                             R3 2 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K2 ["validateControlChanges"]
       17 GETUPVAL                         R5 0
       18 NEWTABLE                         R6 1 0
       20 SETTABLE                         R3 R6 R0
       21 CALL                             R4 2 1
       22 JUMPIF                           R4 ; [+1]
       23 RETURN                           R0 0
       24 GETUPVAL                         R5 3
       25 SETTABLE                         R3 R5 R0
       26 GETUPVAL                         R5 4
       27 JUMPIFNOT                        R5 ; [+4]
       28 GETUPVAL                         R5 4
       29 MOVE                             R6 R0
       30 MOVE                             R7 R3
       31 CALL                             R5 2 0
       32 RETURN                           R0 0
       33 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 GETUPVAL                         R1 2
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R1 2
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K0 ["setVisible"]
       13 CALL                             R1 2 0
       14 GETUPVAL                         R1 3
       15 JUMPIF                           R1 ; [+1]
       16 RETURN                           R0 0
       17 JUMPIFNOT                        R0 ; [+32]
       18 GETUPVAL                         R1 1
       19 JUMPIFNOT                        R1 ; [+30]
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K1 ["render"]
       23 DUPTABLE                         R2 K10 [{"schema", "values", "plugin", "onCommit", "onClose", "variants", "selectedVariantId", "onVariantChange"}]
       24 GETUPVAL                         R3 1
       25 SETTABLEKS                       R3 R2 K2 ["schema"]
       27 GETUPVAL                         R3 4
       28 SETTABLEKS                       R3 R2 K3 ["values"]
       30 GETUPVAL                         R3 5
       31 SETTABLEKS                       R3 R2 K4 ["plugin"]
       33 GETUPVAL                         R3 6
       34 SETTABLEKS                       R3 R2 K5 ["onCommit"]
       36 GETUPVAL                         R3 7
       37 SETTABLEKS                       R3 R2 K6 ["onClose"]
       39 GETUPVAL                         R3 8
       40 SETTABLEKS                       R3 R2 K7 ["variants"]
       42 GETUPVAL                         R3 9
       43 SETTABLEKS                       R3 R2 K8 ["selectedVariantId"]
       45 GETUPVAL                         R3 10
       46 SETTABLEKS                       R3 R2 K9 ["onVariantChange"]
       48 CALL                             R1 1 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R1 3
       51 GETTABLEKS                       R1 R1 K11 ["clear"]
       53 CALL                             R1 0 0
       54 RETURN                           R0 0

PROTO_4:
        0 SETUPVAL                         R1 0
        1 SETUPVAL                         R3 1
        2 JUMPIFNOT                        R4 ; [+3]
        3 GETTABLEKS                       R5 R4 K0 ["selectedVariantId"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R5
        7 SETUPVAL                         R5 2
        8 JUMPIFNOT                        R4 ; [+3]
        9 GETTABLEKS                       R5 R4 K1 ["onVariantChange"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R5
       13 SETUPVAL                         R5 3
       14 GETIMPORT                        R5 K4 [table.clone]
       16 MOVE                             R6 R2
       17 CALL                             R5 1 1
       18 SETUPVAL                         R5 4
       19 GETTABLEKS                       R5 R1 K5 ["warnings"]
       21 LOADNIL                          R6
       22 LOADNIL                          R7
       23 FORGPREP                         R5
       24 GETIMPORT                        R10 K7 [warn]
       26 LOADK                            R12 K8 ["[DesignAssist] "]
       27 MOVE                             R13 R9
       28 CONCAT                           R11 R12 R13
       29 CALL                             R10 1 0
       30 FORGLOOP                         R5 2 ; [-7]
       32 GETUPVAL                         R5 5
       33 CALL                             R5 0 0
       34 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R2 K2 [table.clone]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 1
        7 SETUPVAL                         R2 1
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+1]
        2 RETURN                           R0 0
        3 SETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R2 0 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["serializeValues"]
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 2
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1
        9 NEWTABLE                         R1 0 0
       11 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["serializeSchema"]
        5 GETUPVAL                         R2 0
        6 CALL                             R1 1 -1
        7 RETURN                           R1 -1
        8 LOADNIL                          R1
        9 RETURN                           R1 1

PROTO_11:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R2 R1 ; [+2]
        3 RETURN                           R0 0
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 0
        7 RETURN                           R0 0

PROTO_14:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_15:
        0 RETURN                           R0 0

PROTO_16:
        0 RETURN                           R0 0

PROTO_17:
        0 LOADNIL                          R1
        1 SETUPVAL                         R1 0
        2 LOADNIL                          R1
        3 SETUPVAL                         R1 1
        4 LOADNIL                          R1
        5 SETUPVAL                         R1 2
        6 LOADNIL                          R1
        7 SETUPVAL                         R1 3
        8 GETIMPORT                        R1 K2 [table.clear]
       10 GETUPVAL                         R2 4
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 5
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

PROTO_18:
        0 NAMECALL                         R1 R0 K0 ["clear"]
        2 CALL                             R1 1 0
        3 LOADNIL                          R1
        4 SETUPVAL                         R1 0
        5 LOADNIL                          R1
        6 SETUPVAL                         R1 1
        7 GETUPVAL                         R1 2
        8 JUMPIFNOT                        R1 ; [+6]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K1 ["destroy"]
       12 CALL                             R1 0 0
       13 LOADNIL                          R1
       14 SETUPVAL                         R1 2
       15 GETUPVAL                         R1 3
       16 JUMPIFNOT                        R1 ; [+6]
       17 GETUPVAL                         R1 3
       18 NAMECALL                         R1 R1 K1 ["destroy"]
       20 CALL                             R1 1 0
       21 LOADNIL                          R1
       22 SETUPVAL                         R1 3
       23 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R5 0 0
        2 LOADNIL                          R6
        3 LOADNIL                          R7
        4 LOADNIL                          R8
        5 LOADNIL                          R9
        6 LOADB                            R10 0
        7 LOADNIL                          R11
        8 LOADNIL                          R12
        9 LOADNIL                          R13
       10 LOADNIL                          R14
       11 NEWTABLE                         R15 0 0
       13 NEWCLOSURE                       R16 P0
       14 CAPTURE                          REF R10
       15 CAPTURE                          REF R6
       16 LOADNIL                          R17
       17 NEWCLOSURE                       R18 P1
       18 CAPTURE                          REF R10
       19 CAPTURE                          REF R17
       20 CAPTURE                          REF R12
       21 JUMPIFNOT                        R4 ; [+5]
       22 GETTABLEKS                       R13 R4 K0 ["floatingPanel"]
       24 GETTABLEKS                       R14 R4 K1 ["viewHost"]
       26 JUMP                             ; [+16]
       27 JUMPIFNOT                        R3 ; [+15]
       28 GETUPVAL                         R19 0
       29 GETTABLEKS                       R19 R19 K2 ["create"]
       31 MOVE                             R20 R3
       32 CALL                             R19 1 1
       33 MOVE                             R13 R19
       34 GETUPVAL                         R20 1
       35 GETTABLEKS                       R20 R20 K3 ["mount"]
       37 GETTABLEKS                       R21 R19 K4 ["body"]
       39 MOVE                             R22 R1
       40 MOVE                             R23 R2
       41 CALL                             R20 3 1
       42 MOVE                             R14 R20
       43 NEWCLOSURE                       R19 P2
       44 CAPTURE                          REF R6
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          REF R5
       48 CAPTURE                          REF R11
       49 NEWCLOSURE                       R17 P3
       50 CAPTURE                          REF R10
       51 CAPTURE                          REF R6
       52 CAPTURE                          REF R13
       53 CAPTURE                          REF R14
       54 CAPTURE                          REF R5
       55 CAPTURE                          VAL R1
       56 CAPTURE                          VAL R19
       57 CAPTURE                          VAL R18
       58 CAPTURE                          REF R7
       59 CAPTURE                          REF R8
       60 CAPTURE                          REF R9
       61 NEWCLOSURE                       R20 P4
       62 CAPTURE                          REF R6
       63 CAPTURE                          REF R7
       64 CAPTURE                          REF R8
       65 CAPTURE                          REF R9
       66 CAPTURE                          REF R5
       67 CAPTURE                          REF R17
       68 SETTABLEKS                       R20 R15 K5 ["setStoryContract"]
       70 NEWCLOSURE                       R20 P5
       71 CAPTURE                          REF R6
       72 CAPTURE                          REF R5
       73 CAPTURE                          REF R17
       74 SETTABLEKS                       R20 R15 K6 ["setContractValues"]
       76 NEWCLOSURE                       R20 P6
       77 CAPTURE                          REF R6
       78 CAPTURE                          REF R8
       79 CAPTURE                          REF R17
       80 SETTABLEKS                       R20 R15 K7 ["setSelectedVariant"]
       82 NEWCLOSURE                       R20 P7
       83 CAPTURE                          REF R6
       84 SETTABLEKS                       R20 R15 K8 ["usesStoryContract"]
       86 NEWCLOSURE                       R20 P8
       87 CAPTURE                          REF R5
       88 SETTABLEKS                       R20 R15 K9 ["getValues"]
       90 NEWCLOSURE                       R20 P9
       91 CAPTURE                          REF R6
       92 CAPTURE                          UPVAL U2
       93 CAPTURE                          REF R5
       94 SETTABLEKS                       R20 R15 K10 ["getSerializedValues"]
       96 NEWCLOSURE                       R20 P10
       97 CAPTURE                          REF R6
       98 CAPTURE                          UPVAL U2
       99 SETTABLEKS                       R20 R15 K11 ["getSchema"]
      101 NEWCLOSURE                       R20 P11
      102 CAPTURE                          REF R11
      103 SETTABLEKS                       R20 R15 K12 ["onChanged"]
      105 DUPCLOSURE                       R20 K13 [PROTO_12]
      106 SETTABLEKS                       R20 R15 K14 ["setEditMode"]
      108 NEWCLOSURE                       R20 P13
      109 CAPTURE                          REF R10
      110 CAPTURE                          REF R17
      111 SETTABLEKS                       R20 R15 K15 ["setPinned"]
      113 NEWCLOSURE                       R20 P14
      114 CAPTURE                          REF R12
      115 SETTABLEKS                       R20 R15 K16 ["onPinnedChanged"]
      117 DUPCLOSURE                       R20 K17 [PROTO_15]
      118 SETTABLEKS                       R20 R15 K18 ["show"]
      120 DUPCLOSURE                       R20 K19 [PROTO_16]
      121 SETTABLEKS                       R20 R15 K20 ["hide"]
      123 NEWCLOSURE                       R20 P17
      124 CAPTURE                          REF R6
      125 CAPTURE                          REF R7
      126 CAPTURE                          REF R8
      127 CAPTURE                          REF R9
      128 CAPTURE                          REF R5
      129 CAPTURE                          REF R17
      130 SETTABLEKS                       R20 R15 K21 ["clear"]
      132 NEWCLOSURE                       R20 P18
      133 CAPTURE                          REF R11
      134 CAPTURE                          REF R12
      135 CAPTURE                          REF R14
      136 CAPTURE                          REF R13
      137 SETTABLEKS                       R20 R15 K22 ["destroy"]
      139 CLOSEUPVALS                      R5
      140 RETURN                           R15 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["StoryControlsFloatingPanel"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["StoryControlsView"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K4 ["Parent"]
       27 GETTABLEKS                       R3 R3 K7 ["Util"]
       29 GETTABLEKS                       R3 R3 K8 ["StoryContract"]
       31 CALL                             R2 1 1
       32 GETIMPORT                        R3 K1 [require]
       34 GETIMPORT                        R4 K3 [script]
       36 GETTABLEKS                       R4 R4 K4 ["Parent"]
       38 GETTABLEKS                       R4 R4 K4 ["Parent"]
       40 GETTABLEKS                       R4 R4 K7 ["Util"]
       42 GETTABLEKS                       R4 R4 K9 ["StoryContractControls"]
       44 CALL                             R3 1 1
       45 DUPCLOSURE                       R4 K10 [PROTO_19]
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R2
       50 DUPTABLE                         R5 K12 [{"createControls"}]
       51 SETTABLEKS                       R4 R5 K11 ["createControls"]
       53 RETURN                           R5 1
