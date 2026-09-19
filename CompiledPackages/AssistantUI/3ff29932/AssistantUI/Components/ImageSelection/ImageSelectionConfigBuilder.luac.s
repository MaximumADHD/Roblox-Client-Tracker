PROTO_0:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R2 R1 K1 ["onBack"]
        9 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          UPVAL U0
       13 SETTABLEKS                       R2 R1 K2 ["onUnmount"]
       15 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        5 LOADK                            R2 K1 ["Form"]
        6 SETTABLEKS                       R2 R1 K2 ["phase"]
        8 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       10 LOADNIL                          R2
       11 SETTABLEKS                       R2 R1 K3 ["onBack"]
       13 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       15 LOADNIL                          R2
       16 SETTABLEKS                       R2 R1 K4 ["onUnmount"]
       18 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        2 JUMPIFNOT                        R1 ; [+31]
        3 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["mapControllerSlotsToWidget"]
        8 GETUPVAL                         R3 1
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R1 K2 ["slots"]
       12 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       14 GETUPVAL                         R2 2
       15 SETTABLEKS                       R2 R1 K3 ["previewedIndex"]
       17 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       19 GETUPVAL                         R3 2
       20 JUMPIFNOT                        R3 ; [+10]
       21 GETUPVAL                         R4 1
       22 GETUPVAL                         R5 2
       23 GETTABLE                         R3 R4 R5
       24 JUMPIFNOT                        R3 ; [+6]
       25 GETUPVAL                         R3 1
       26 GETUPVAL                         R4 2
       27 GETTABLE                         R2 R3 R4
       28 GETTABLEKS                       R2 R2 K4 ["thumbnailTempId"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R2
       32 SETTABLEKS                       R2 R1 K5 ["previewedThumbnailContent"]
       34 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["editWidget"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R2
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["thumbnailContent"]
        8 SETTABLEKS                       R2 R1 K2 ["selectedThumbnailContent"]
       10 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["editWidget"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["select"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["previewSlot"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearPreview"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["confirm"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancel"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refresh"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancel"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        2 JUMPIFNOT                        R1 ; [+42]
        3 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R2 R1 K1 ["onSelect"]
        9 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       11 NEWCLOSURE                       R2 P1
       12 CAPTURE                          UPVAL U0
       13 SETTABLEKS                       R2 R1 K2 ["onPreview"]
       15 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       17 NEWCLOSURE                       R2 P2
       18 CAPTURE                          UPVAL U0
       19 SETTABLEKS                       R2 R1 K3 ["onClearPreview"]
       21 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       23 NEWCLOSURE                       R2 P3
       24 CAPTURE                          UPVAL U0
       25 SETTABLEKS                       R2 R1 K4 ["onConfirmPreview"]
       27 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       29 NEWCLOSURE                       R2 P4
       30 CAPTURE                          UPVAL U0
       31 SETTABLEKS                       R2 R1 K5 ["onBack"]
       33 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       35 NEWCLOSURE                       R2 P5
       36 CAPTURE                          UPVAL U0
       37 SETTABLEKS                       R2 R1 K6 ["onRefresh"]
       39 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       41 NEWCLOSURE                       R2 P6
       42 CAPTURE                          UPVAL U0
       43 SETTABLEKS                       R2 R1 K7 ["onUnmount"]
       45 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        2 JUMPIFNOT                        R1 ; [+56]
        3 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        5 LOADK                            R2 K1 ["Form"]
        6 SETTABLEKS                       R2 R1 K2 ["phase"]
        8 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K3 ["slots"]
       14 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R1 K4 ["previewedIndex"]
       19 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       21 LOADNIL                          R2
       22 SETTABLEKS                       R2 R1 K5 ["previewedThumbnailContent"]
       24 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       26 LOADNIL                          R2
       27 SETTABLEKS                       R2 R1 K6 ["onSelect"]
       29 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       31 LOADNIL                          R2
       32 SETTABLEKS                       R2 R1 K7 ["onPreview"]
       34 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       36 LOADNIL                          R2
       37 SETTABLEKS                       R2 R1 K8 ["onClearPreview"]
       39 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       41 LOADNIL                          R2
       42 SETTABLEKS                       R2 R1 K9 ["onConfirmPreview"]
       44 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       46 LOADNIL                          R2
       47 SETTABLEKS                       R2 R1 K10 ["onBack"]
       49 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       51 LOADNIL                          R2
       52 SETTABLEKS                       R2 R1 K11 ["onRefresh"]
       54 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       56 LOADNIL                          R2
       57 SETTABLEKS                       R2 R1 K12 ["onUnmount"]
       59 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantImageGenImprovements"]
        4 JUMPIFNOT                        R1 ; [+42]
        5 GETUPVAL                         R1 2
        6 JUMPIFEQKNIL                     R1 ; [+40]
        8 GETIMPORT                        R1 K2 [pcall]
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R3 3
       12 GETUPVAL                         R4 0
       13 CALL                             R1 3 2
       14 JUMPIFNOT                        R1 ; [+19]
       15 FASTCALL1                        TYPEOF R2 ; [+3]
       16 MOVE                             R4 R2
       17 GETIMPORT                        R3 K4 [typeof]
       19 CALL                             R3 1 1
       20 JUMPIFNOTEQKS                    R3 K5 ["table"] ; [+13]
       22 LENGTH                           R3 R2
       23 LOADN                            R4 0
       24 JUMPIFNOTLT                      R4 R3 ; [+9]
       26 GETUPVAL                         R3 4
       27 GETTABLEKS                       R3 R3 K6 ["combinePromptWithParts"]
       29 GETUPVAL                         R4 0
       30 MOVE                             R5 R2
       31 CALL                             R3 2 1
       32 MOVE                             R0 R3
       33 JUMP                             ; [+13]
       34 JUMPIF                           R1 ; [+12]
       35 GETIMPORT                        R3 K8 [warn]
       37 LOADK                            R4 K9 ["[ImageSelectionConfigBuilder] resolveSchemaPartsAsync errored: %*"]
       38 FASTCALL1                        TOSTRING R2 ; [+3]
       39 MOVE                             R7 R2
       40 GETIMPORT                        R6 K11 [tostring]
       42 CALL                             R6 1 1
       43 NAMECALL                         R4 R4 K12 ["format"]
       45 CALL                             R4 2 1
       46 CALL                             R3 1 0
       47 GETUPVAL                         R2 5
       48 FASTCALL1                        TYPEOF R2 ; [+2]
       49 GETIMPORT                        R1 K4 [typeof]
       51 CALL                             R1 1 1
       52 JUMPIFNOTEQKS                    R1 K13 ["string"] ; [+9]
       54 GETUPVAL                         R2 5
       55 LENGTH                           R1 R2
       56 LOADN                            R2 0
       57 JUMPIFNOTLT                      R2 R1 ; [+4]
       59 GETUPVAL                         R1 5
       60 MOVE                             R2 R0
       61 CONCAT                           R0 R1 R2
       62 LOADNIL                          R1
       63 GETUPVAL                         R2 6
       64 JUMPIFEQKNIL                     R2 ; [+41]
       66 GETUPVAL                         R2 7
       67 JUMPIF                           R2 ; [+38]
       68 GETIMPORT                        R2 K2 [pcall]
       70 GETUPVAL                         R3 6
       71 GETUPVAL                         R4 3
       72 MOVE                             R5 R0
       73 CALL                             R2 3 2
       74 JUMPIFNOT                        R2 ; [+18]
       75 FASTCALL1                        TYPEOF R3 ; [+3]
       76 MOVE                             R5 R3
       77 GETIMPORT                        R4 K4 [typeof]
       79 CALL                             R4 1 1
       80 JUMPIFNOTEQKS                    R4 K5 ["table"] ; [+12]
       82 GETTABLEKS                       R5 R3 K14 ["imageBytes"]
       84 FASTCALL1                        TYPEOF R5 ; [+2]
       85 GETIMPORT                        R4 K4 [typeof]
       87 CALL                             R4 1 1
       88 JUMPIFNOTEQKS                    R4 K15 ["buffer"] ; [+4]
       90 GETTABLEKS                       R1 R3 K14 ["imageBytes"]
       92 JUMP                             ; [+13]
       93 JUMPIF                           R2 ; [+12]
       94 GETIMPORT                        R4 K8 [warn]
       96 LOADK                            R5 K16 ["[ImageSelectionConfigBuilder] resolveSeedImageAsync errored: %*"]
       97 FASTCALL1                        TOSTRING R3 ; [+3]
       98 MOVE                             R8 R3
       99 GETIMPORT                        R7 K11 [tostring]
      101 CALL                             R7 1 1
      102 NAMECALL                         R5 R5 K12 ["format"]
      104 CALL                             R5 2 1
      105 CALL                             R4 1 0
      106 GETUPVAL                         R2 7
      107 JUMPIFNOT                        R2 ; [+6]
      108 GETUPVAL                         R2 8
      109 GETTABLEKS                       R2 R2 K17 ["editWidget"]
      111 DUPCLOSURE                       R3 K18 [PROTO_3]
      112 CALL                             R2 1 0
      113 RETURN                           R0 0
      114 LOADNIL                          R2
      115 GETUPVAL                         R3 9
      116 DUPTABLE                         R4 K26 [{"textPrompt", "slotCount", "model", "seedImage", "modelFlow", "onSlotsUpdated", "onImageSelected"}]
      117 SETTABLEKS                       R0 R4 K19 ["textPrompt"]
      119 GETUPVAL                         R5 10
      120 SETTABLEKS                       R5 R4 K20 ["slotCount"]
      122 GETUPVAL                         R5 11
      123 SETTABLEKS                       R5 R4 K21 ["model"]
      125 SETTABLEKS                       R1 R4 K22 ["seedImage"]
      127 GETUPVAL                         R5 12
      128 SETTABLEKS                       R5 R4 K23 ["modelFlow"]
      130 NEWCLOSURE                       R5 P1
      131 CAPTURE                          UPVAL U8
      132 CAPTURE                          UPVAL U4
      133 SETTABLEKS                       R5 R4 K24 ["onSlotsUpdated"]
      135 GETUPVAL                         R6 1
      136 GETTABLEKS                       R6 R6 K0 ["FFlagAssistantImageGenImprovements"]
      138 JUMPIFNOT                        R6 ; [+3]
      139 NEWCLOSURE                       R5 P2
      140 CAPTURE                          UPVAL U8
      141 JUMP                             ; [+1]
      142 LOADNIL                          R5
      143 SETTABLEKS                       R5 R4 K25 ["onImageSelected"]
      145 CALL                             R3 1 1
      146 MOVE                             R2 R3
      147 GETUPVAL                         R3 8
      148 GETTABLEKS                       R3 R3 K17 ["editWidget"]
      150 NEWCLOSURE                       R4 P3
      151 CAPTURE                          REF R2
      152 CALL                             R3 1 0
      153 NAMECALL                         R3 R2 K27 ["runAsync"]
      155 CALL                             R3 1 1
      156 GETTABLEKS                       R4 R3 K28 ["cancelled"]
      158 JUMPIFNOT                        R4 ; [+7]
      159 GETUPVAL                         R4 8
      160 GETTABLEKS                       R4 R4 K17 ["editWidget"]
      162 DUPCLOSURE                       R5 K29 [PROTO_16]
      163 CALL                             R4 1 0
      164 CLOSEUPVALS                      R2
      165 RETURN                           R0 0
      166 GETTABLEKS                       R4 R3 K30 ["errorMessage"]
      168 JUMPIFNOT                        R4 ; [+6]
      169 GETUPVAL                         R4 8
      170 GETTABLEKS                       R4 R4 K31 ["cancelInputRequest"]
      172 CALL                             R4 0 0
      173 CLOSEUPVALS                      R2
      174 RETURN                           R0 0
      175 GETUPVAL                         R5 1
      176 GETTABLEKS                       R5 R5 K32 ["FFlagAssistantHintImageAsUri"]
      178 JUMPIFNOT                        R5 ; [+12]
      179 GETTABLEKS                       R5 R3 K33 ["imageContent"]
      181 JUMPIFNOT                        R5 ; [+7]
      182 GETUPVAL                         R4 13
      183 GETTABLEKS                       R4 R4 K34 ["storeImage"]
      185 GETTABLEKS                       R5 R3 K33 ["imageContent"]
      187 CALL                             R4 1 1
      188 JUMP                             ; [+4]
      189 LOADNIL                          R4
      190 JUMP                             ; [+2]
      191 GETTABLEKS                       R4 R3 K33 ["imageContent"]
      193 GETUPVAL                         R5 8
      194 GETTABLEKS                       R5 R5 K35 ["dispatchWithOverrides"]
      196 DUPTABLE                         R6 K37 [{"hintImage"}]
      197 SETTABLEKS                       R4 R6 K36 ["hintImage"]
      199 CALL                             R5 1 0
      200 CLOSEUPVALS                      R2
      201 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R0 R3
        2 GETTABLEKS                       R3 R0 K0 ["hintImage"]
        4 GETUPVAL                         R4 1
        5 JUMPIFNOT                        R4 ; [+10]
        6 GETUPVAL                         R4 1
        7 MOVE                             R5 R0
        8 CALL                             R4 1 1
        9 JUMPIFNOT                        R4 ; [+6]
       10 GETTABLEKS                       R4 R1 K1 ["dispatchWithOverrides"]
       12 NEWTABLE                         R5 0 0
       14 CALL                             R4 1 0
       15 RETURN                           R0 0
       16 JUMPIFEQKNIL                     R3 ; [+7]
       18 GETTABLEKS                       R4 R1 K1 ["dispatchWithOverrides"]
       20 NEWTABLE                         R5 0 0
       22 CALL                             R4 1 0
       23 RETURN                           R0 0
       24 FASTCALL1                        TYPEOF R2 ; [+3]
       25 MOVE                             R5 R2
       26 GETIMPORT                        R4 K3 [typeof]
       28 CALL                             R4 1 1
       29 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+4]
       31 LENGTH                           R4 R2
       32 JUMPIFNOTEQKN                    R4 K5 [0] ; [+7]
       34 GETTABLEKS                       R4 R1 K1 ["dispatchWithOverrides"]
       36 NEWTABLE                         R5 0 0
       38 CALL                             R4 1 0
       39 RETURN                           R0 0
       40 LOADB                            R4 0
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R6 R6 K6 ["FFlagAssistantImageGenImprovements"]
       44 JUMPIFNOT                        R6 ; [+4]
       45 LOADB                            R5 1
       46 GETUPVAL                         R6 3
       47 JUMPIFNOTEQKNIL                  R6 ; [+6]
       49 GETUPVAL                         R6 4
       50 JUMPIFNOTEQKNIL                  R6 ; [+2]
       52 LOADB                            R5 0 +1
       53 LOADB                            R5 1
       54 JUMPIFNOT                        R5 ; [+5]
       55 GETTABLEKS                       R6 R1 K7 ["editWidget"]
       57 NEWCLOSURE                       R7 P0
       58 CAPTURE                          REF R4
       59 CALL                             R6 1 0
       60 GETIMPORT                        R6 K10 [task.spawn]
       62 NEWCLOSURE                       R7 P1
       63 CAPTURE                          VAL R2
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U5
       68 CAPTURE                          UPVAL U6
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          REF R4
       71 CAPTURE                          VAL R1
       72 CAPTURE                          UPVAL U7
       73 CAPTURE                          UPVAL U8
       74 CAPTURE                          UPVAL U9
       75 CAPTURE                          UPVAL U10
       76 CAPTURE                          UPVAL U11
       77 CALL                             R6 1 0
       78 CLOSEUPVALS                      R4
       79 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["promptKey"]
        2 GETTABLEKS                       R2 R0 K1 ["wizardMode"]
        4 GETTABLEKS                       R4 R0 K3 ["slotCount"]
        6 ORK                              R3 R4 K2 [4]
        7 GETTABLEKS                       R4 R0 K4 ["controllerFactory"]
        9 JUMPIF                           R4 ; [+3]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K5 ["new"]
       13 GETTABLEKS                       R5 R0 K6 ["model"]
       15 GETTABLEKS                       R6 R0 K7 ["promptPrefix"]
       17 GETTABLEKS                       R7 R0 K8 ["resolveSchemaPartsAsync"]
       19 GETTABLEKS                       R8 R0 K9 ["resolveSeedImageAsync"]
       21 GETTABLEKS                       R9 R0 K10 ["skipImageSelectionIf"]
       23 GETTABLEKS                       R10 R0 K11 ["modelFlow"]
       25 DUPTABLE                         R11 K13 [{"wizardMode", "onFormSubmitted"}]
       26 SETTABLEKS                       R2 R11 K1 ["wizardMode"]
       28 NEWCLOSURE                       R12 P0
       29 CAPTURE                          VAL R1
       30 CAPTURE                          VAL R9
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R7
       33 CAPTURE                          VAL R8
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          VAL R6
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R10
       40 CAPTURE                          UPVAL U3
       41 SETTABLEKS                       R12 R11 K12 ["onFormSubmitted"]
       43 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["ImageSelection"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R0 K7 ["Flags"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K8 ["Util"]
       22 GETTABLEKS                       R4 R4 K9 ["ImageContentStore"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R1 K10 ["ImageSelectionController"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K11 ["ImageSelectionSlots"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Types"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Components"]
       44 GETTABLEKS                       R8 R8 K14 ["UIToolRegistry"]
       46 CALL                             R7 1 1
       47 DUPCLOSURE                       R8 K15 [PROTO_19]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R3
       52 DUPTABLE                         R9 K17 [{"build"}]
       53 SETTABLEKS                       R8 R9 K16 ["build"]
       55 RETURN                           R9 1
