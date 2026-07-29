PROTO_0:
        0 GETIMPORT                        R1 K2 [table.create]
        2 LENGTH                           R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R2 R0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 DUPTABLE                         R7 K6 [{"status", "thumbnailContent", "errorMessage"}]
        9 GETTABLEKS                       R8 R6 K3 ["status"]
       11 SETTABLEKS                       R8 R7 K3 ["status"]
       13 GETTABLEKS                       R8 R6 K7 ["thumbnailTempId"]
       15 SETTABLEKS                       R8 R7 K4 ["thumbnailContent"]
       17 GETTABLEKS                       R8 R6 K5 ["errorMessage"]
       19 SETTABLEKS                       R8 R7 K5 ["errorMessage"]
       21 SETTABLE                         R7 R1 R5
       22 FORGLOOP                         R2 2 ; [-15]
       24 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        2 JUMPIFNOT                        R1 ; [+29]
        3 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R1 K1 ["slots"]
       10 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       12 GETUPVAL                         R2 2
       13 SETTABLEKS                       R2 R1 K2 ["previewedIndex"]
       15 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
       17 GETUPVAL                         R3 2
       18 JUMPIFNOT                        R3 ; [+10]
       19 GETUPVAL                         R4 1
       20 GETUPVAL                         R5 2
       21 GETTABLE                         R3 R4 R5
       22 JUMPIFNOT                        R3 ; [+6]
       23 GETUPVAL                         R3 1
       24 GETUPVAL                         R4 2
       25 GETTABLE                         R2 R3 R4
       26 GETTABLEKS                       R2 R2 K3 ["thumbnailTempId"]
       28 JUMP                             ; [+1]
       29 LOADNIL                          R2
       30 SETTABLEKS                       R2 R1 K4 ["previewedThumbnailContent"]
       32 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["editWidget"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R2
        7 CALL                             R3 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["thumbnailContent"]
        8 SETTABLEKS                       R2 R1 K2 ["selectedThumbnailContent"]
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["editWidget"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["select"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["previewSlot"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clearPreview"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["confirm"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancel"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["refresh"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["cancel"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantImageGenImprovements"]
        4 JUMPIFNOT                        R1 ; [+47]
        5 GETUPVAL                         R1 2
        6 JUMPIFEQKNIL                     R1 ; [+45]
        8 GETIMPORT                        R1 K2 [pcall]
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R3 3
       12 GETUPVAL                         R4 0
       13 CALL                             R1 3 2
       14 JUMPIFNOT                        R1 ; [+23]
       15 FASTCALL1                        TYPEOF R2 ; [+3]
       16 MOVE                             R4 R2
       17 GETIMPORT                        R3 K4 [typeof]
       19 CALL                             R3 1 1
       20 JUMPIFNOTEQKS                    R3 K5 ["table"] ; [+17]
       22 LENGTH                           R3 R2
       23 LOADN                            R4 0
       24 JUMPIFNOTLT                      R4 R3 ; [+13]
       26 LOADK                            R3 K6 ["Subject: %*. Including: %*"]
       27 GETUPVAL                         R5 0
       28 GETIMPORT                        R6 K8 [table.concat]
       30 MOVE                             R7 R2
       31 LOADK                            R8 K9 [", "]
       32 CALL                             R6 2 1
       33 NAMECALL                         R3 R3 K10 ["format"]
       35 CALL                             R3 3 1
       36 MOVE                             R0 R3
       37 JUMP                             ; [+14]
       38 JUMPIF                           R1 ; [+13]
       39 GETIMPORT                        R3 K12 [warn]
       41 LOADK                            R5 K13 ["[ImageSelectionConfigBuilder] resolveSchemaPartsAsync errored: %*"]
       42 FASTCALL1                        TOSTRING R2 ; [+3]
       43 MOVE                             R8 R2
       44 GETIMPORT                        R7 K15 [tostring]
       46 CALL                             R7 1 1
       47 NAMECALL                         R5 R5 K10 ["format"]
       49 CALL                             R5 2 1
       50 MOVE                             R4 R5
       51 CALL                             R3 1 0
       52 GETUPVAL                         R1 4
       53 JUMPIFNOT                        R1 ; [+6]
       54 GETUPVAL                         R1 5
       55 GETTABLEKS                       R1 R1 K16 ["editWidget"]
       57 DUPCLOSURE                       R2 K17 [PROTO_4]
       58 CALL                             R1 1 0
       59 RETURN                           R0 0
       60 LOADNIL                          R1
       61 GETUPVAL                         R2 6
       62 DUPTABLE                         R3 K23 [{"textPrompt", "slotCount", "model", "onSlotsUpdated", "onImageSelected"}]
       63 SETTABLEKS                       R0 R3 K18 ["textPrompt"]
       65 GETUPVAL                         R4 7
       66 SETTABLEKS                       R4 R3 K19 ["slotCount"]
       68 GETUPVAL                         R4 8
       69 SETTABLEKS                       R4 R3 K20 ["model"]
       71 NEWCLOSURE                       R4 P1
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          UPVAL U9
       74 SETTABLEKS                       R4 R3 K21 ["onSlotsUpdated"]
       76 GETUPVAL                         R5 1
       77 GETTABLEKS                       R5 R5 K0 ["FFlagAssistantImageGenImprovements"]
       79 JUMPIFNOT                        R5 ; [+3]
       80 NEWCLOSURE                       R4 P2
       81 CAPTURE                          UPVAL U5
       82 JUMP                             ; [+1]
       83 LOADNIL                          R4
       84 SETTABLEKS                       R4 R3 K22 ["onImageSelected"]
       86 CALL                             R2 1 1
       87 MOVE                             R1 R2
       88 GETUPVAL                         R2 5
       89 GETTABLEKS                       R2 R2 K16 ["editWidget"]
       91 NEWCLOSURE                       R3 P3
       92 CAPTURE                          REF R1
       93 CALL                             R2 1 0
       94 NAMECALL                         R2 R1 K24 ["runAsync"]
       96 CALL                             R2 1 1
       97 GETTABLEKS                       R3 R2 K25 ["cancelled"]
       99 JUMPIFNOT                        R3 ; [+7]
      100 GETUPVAL                         R3 5
      101 GETTABLEKS                       R3 R3 K16 ["editWidget"]
      103 DUPCLOSURE                       R4 K26 [PROTO_17]
      104 CALL                             R3 1 0
      105 CLOSEUPVALS                      R1
      106 RETURN                           R0 0
      107 GETTABLEKS                       R3 R2 K27 ["errorMessage"]
      109 JUMPIFNOT                        R3 ; [+6]
      110 GETUPVAL                         R3 5
      111 GETTABLEKS                       R3 R3 K28 ["cancelInputRequest"]
      113 CALL                             R3 0 0
      114 CLOSEUPVALS                      R1
      115 RETURN                           R0 0
      116 GETUPVAL                         R3 5
      117 GETTABLEKS                       R3 R3 K29 ["dispatchWithOverrides"]
      119 DUPTABLE                         R4 K31 [{"hintImage"}]
      120 GETTABLEKS                       R5 R2 K32 ["imageContent"]
      122 SETTABLEKS                       R5 R4 K30 ["hintImage"]
      124 CALL                             R3 1 0
      125 CLOSEUPVALS                      R1
      126 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R0 R3
        2 GETTABLEKS                       R3 R0 K0 ["hintImage"]
        4 JUMPIFEQKNIL                     R3 ; [+7]
        6 GETTABLEKS                       R4 R1 K1 ["dispatchWithOverrides"]
        8 NEWTABLE                         R5 0 0
       10 CALL                             R4 1 0
       11 RETURN                           R0 0
       12 FASTCALL1                        TYPEOF R2 ; [+3]
       13 MOVE                             R5 R2
       14 GETIMPORT                        R4 K3 [typeof]
       16 CALL                             R4 1 1
       17 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+4]
       19 LENGTH                           R4 R2
       20 JUMPIFNOTEQKN                    R4 K5 [0] ; [+7]
       22 GETTABLEKS                       R4 R1 K1 ["dispatchWithOverrides"]
       24 NEWTABLE                         R5 0 0
       26 CALL                             R4 1 0
       27 RETURN                           R0 0
       28 LOADB                            R4 0
       29 GETUPVAL                         R5 1
       30 GETTABLEKS                       R5 R5 K6 ["FFlagAssistantImageGenImprovements"]
       32 JUMPIFNOT                        R5 ; [+8]
       33 GETUPVAL                         R5 2
       34 JUMPIFEQKNIL                     R5 ; [+6]
       36 GETTABLEKS                       R5 R1 K7 ["editWidget"]
       38 NEWCLOSURE                       R6 P0
       39 CAPTURE                          REF R4
       40 CALL                             R5 1 0
       41 GETIMPORT                        R5 K10 [task.spawn]
       43 NEWCLOSURE                       R6 P1
       44 CAPTURE                          VAL R2
       45 CAPTURE                          UPVAL U1
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          VAL R0
       48 CAPTURE                          REF R4
       49 CAPTURE                          VAL R1
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          UPVAL U6
       54 CALL                             R5 1 0
       55 CLOSEUPVALS                      R4
       56 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["promptKey"]
        2 GETTABLEKS                       R2 R0 K1 ["wizardMode"]
        4 GETTABLEKS                       R4 R0 K3 ["slotCount"]
        6 ORK                              R3 R4 K2 [4]
        7 GETTABLEKS                       R4 R0 K4 ["controllerFactory"]
        9 JUMPIF                           R4 ; [+3]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K5 ["new"]
       13 GETTABLEKS                       R5 R0 K6 ["model"]
       15 GETTABLEKS                       R6 R0 K7 ["resolveSchemaPartsAsync"]
       17 DUPTABLE                         R7 K9 [{"wizardMode", "onFormSubmitted"}]
       18 SETTABLEKS                       R2 R7 K1 ["wizardMode"]
       20 NEWCLOSURE                       R8 P0
       21 CAPTURE                          VAL R1
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R6
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R5
       27 CAPTURE                          UPVAL U2
       28 SETTABLEKS                       R8 R7 K8 ["onFormSubmitted"]
       30 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Flags"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K1 [script]
       14 LOADK                            R4 K7 ["ImageSelection"]
       15 NAMECALL                         R2 R2 K3 ["FindFirstAncestor"]
       17 CALL                             R2 2 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K8 ["ImageSelectionController"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R2 K9 ["ImageSelectionPicker"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["UIToolRegistry"]
       34 CALL                             R5 1 1
       35 DUPCLOSURE                       R6 K12 [PROTO_0]
       36 DUPCLOSURE                       R7 K13 [PROTO_20]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R6
       40 DUPTABLE                         R8 K15 [{"build"}]
       41 SETTABLEKS                       R7 R8 K14 ["build"]
       43 RETURN                           R8 1
