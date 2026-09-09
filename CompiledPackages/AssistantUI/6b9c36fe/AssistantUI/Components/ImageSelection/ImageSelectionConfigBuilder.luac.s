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
        4 JUMPIFNOT                        R1 ; [+43]
        5 GETUPVAL                         R1 2
        6 JUMPIFEQKNIL                     R1 ; [+41]
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
       33 JUMP                             ; [+14]
       34 JUMPIF                           R1 ; [+13]
       35 GETIMPORT                        R3 K8 [warn]
       37 LOADK                            R5 K9 ["[ImageSelectionConfigBuilder] resolveSchemaPartsAsync errored: %*"]
       38 FASTCALL1                        TOSTRING R2 ; [+3]
       39 MOVE                             R8 R2
       40 GETIMPORT                        R7 K11 [tostring]
       42 CALL                             R7 1 1
       43 NAMECALL                         R5 R5 K12 ["format"]
       45 CALL                             R5 2 1
       46 MOVE                             R4 R5
       47 CALL                             R3 1 0
       48 GETUPVAL                         R2 5
       49 FASTCALL1                        TYPEOF R2 ; [+2]
       50 GETIMPORT                        R1 K4 [typeof]
       52 CALL                             R1 1 1
       53 JUMPIFNOTEQKS                    R1 K13 ["string"] ; [+9]
       55 GETUPVAL                         R2 5
       56 LENGTH                           R1 R2
       57 LOADN                            R2 0
       58 JUMPIFNOTLT                      R2 R1 ; [+4]
       60 GETUPVAL                         R1 5
       61 MOVE                             R2 R0
       62 CONCAT                           R0 R1 R2
       63 LOADNIL                          R1
       64 GETUPVAL                         R2 6
       65 JUMPIFEQKNIL                     R2 ; [+42]
       67 GETUPVAL                         R2 7
       68 JUMPIF                           R2 ; [+39]
       69 GETIMPORT                        R2 K2 [pcall]
       71 GETUPVAL                         R3 6
       72 GETUPVAL                         R4 3
       73 MOVE                             R5 R0
       74 CALL                             R2 3 2
       75 JUMPIFNOT                        R2 ; [+18]
       76 FASTCALL1                        TYPEOF R3 ; [+3]
       77 MOVE                             R5 R3
       78 GETIMPORT                        R4 K4 [typeof]
       80 CALL                             R4 1 1
       81 JUMPIFNOTEQKS                    R4 K5 ["table"] ; [+12]
       83 GETTABLEKS                       R5 R3 K14 ["imageBytes"]
       85 FASTCALL1                        TYPEOF R5 ; [+2]
       86 GETIMPORT                        R4 K4 [typeof]
       88 CALL                             R4 1 1
       89 JUMPIFNOTEQKS                    R4 K15 ["buffer"] ; [+4]
       91 GETTABLEKS                       R1 R3 K14 ["imageBytes"]
       93 JUMP                             ; [+14]
       94 JUMPIF                           R2 ; [+13]
       95 GETIMPORT                        R4 K8 [warn]
       97 LOADK                            R6 K16 ["[ImageSelectionConfigBuilder] resolveSeedImageAsync errored: %*"]
       98 FASTCALL1                        TOSTRING R3 ; [+3]
       99 MOVE                             R9 R3
      100 GETIMPORT                        R8 K11 [tostring]
      102 CALL                             R8 1 1
      103 NAMECALL                         R6 R6 K12 ["format"]
      105 CALL                             R6 2 1
      106 MOVE                             R5 R6
      107 CALL                             R4 1 0
      108 GETUPVAL                         R2 7
      109 JUMPIFNOT                        R2 ; [+6]
      110 GETUPVAL                         R2 8
      111 GETTABLEKS                       R2 R2 K17 ["editWidget"]
      113 DUPCLOSURE                       R3 K18 [PROTO_3]
      114 CALL                             R2 1 0
      115 RETURN                           R0 0
      116 LOADNIL                          R2
      117 GETUPVAL                         R3 9
      118 DUPTABLE                         R4 K26 [{"textPrompt", "slotCount", "model", "seedImage", "modelFlow", "onSlotsUpdated", "onImageSelected"}]
      119 SETTABLEKS                       R0 R4 K19 ["textPrompt"]
      121 GETUPVAL                         R5 10
      122 SETTABLEKS                       R5 R4 K20 ["slotCount"]
      124 GETUPVAL                         R5 11
      125 SETTABLEKS                       R5 R4 K21 ["model"]
      127 SETTABLEKS                       R1 R4 K22 ["seedImage"]
      129 GETUPVAL                         R5 12
      130 SETTABLEKS                       R5 R4 K23 ["modelFlow"]
      132 NEWCLOSURE                       R5 P1
      133 CAPTURE                          UPVAL U8
      134 CAPTURE                          UPVAL U4
      135 SETTABLEKS                       R5 R4 K24 ["onSlotsUpdated"]
      137 GETUPVAL                         R6 1
      138 GETTABLEKS                       R6 R6 K0 ["FFlagAssistantImageGenImprovements"]
      140 JUMPIFNOT                        R6 ; [+3]
      141 NEWCLOSURE                       R5 P2
      142 CAPTURE                          UPVAL U8
      143 JUMP                             ; [+1]
      144 LOADNIL                          R5
      145 SETTABLEKS                       R5 R4 K25 ["onImageSelected"]
      147 CALL                             R3 1 1
      148 MOVE                             R2 R3
      149 GETUPVAL                         R3 8
      150 GETTABLEKS                       R3 R3 K17 ["editWidget"]
      152 NEWCLOSURE                       R4 P3
      153 CAPTURE                          REF R2
      154 CALL                             R3 1 0
      155 NAMECALL                         R3 R2 K27 ["runAsync"]
      157 CALL                             R3 1 1
      158 GETTABLEKS                       R4 R3 K28 ["cancelled"]
      160 JUMPIFNOT                        R4 ; [+7]
      161 GETUPVAL                         R4 8
      162 GETTABLEKS                       R4 R4 K17 ["editWidget"]
      164 DUPCLOSURE                       R5 K29 [PROTO_16]
      165 CALL                             R4 1 0
      166 CLOSEUPVALS                      R2
      167 RETURN                           R0 0
      168 GETTABLEKS                       R4 R3 K30 ["errorMessage"]
      170 JUMPIFNOT                        R4 ; [+6]
      171 GETUPVAL                         R4 8
      172 GETTABLEKS                       R4 R4 K31 ["cancelInputRequest"]
      174 CALL                             R4 0 0
      175 CLOSEUPVALS                      R2
      176 RETURN                           R0 0
      177 GETUPVAL                         R5 1
      178 GETTABLEKS                       R5 R5 K32 ["FFlagAssistantHintImageAsUri"]
      180 JUMPIFNOT                        R5 ; [+12]
      181 GETTABLEKS                       R5 R3 K33 ["imageContent"]
      183 JUMPIFNOT                        R5 ; [+7]
      184 GETUPVAL                         R4 13
      185 GETTABLEKS                       R4 R4 K34 ["storeImage"]
      187 GETTABLEKS                       R5 R3 K33 ["imageContent"]
      189 CALL                             R4 1 1
      190 JUMP                             ; [+4]
      191 LOADNIL                          R4
      192 JUMP                             ; [+2]
      193 GETTABLEKS                       R4 R3 K33 ["imageContent"]
      195 GETUPVAL                         R5 8
      196 GETTABLEKS                       R5 R5 K35 ["dispatchWithOverrides"]
      198 DUPTABLE                         R6 K37 [{"hintImage"}]
      199 SETTABLEKS                       R4 R6 K36 ["hintImage"]
      201 CALL                             R5 1 0
      202 CLOSEUPVALS                      R2
      203 RETURN                           R0 0

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
