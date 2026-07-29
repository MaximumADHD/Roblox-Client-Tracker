PROTO_0:
        0 DUPTABLE                         R0 K1 [{"InputRequiredWidget"}]
        1 DUPTABLE                         R1 K3 [{"ResponseRecorded"}]
        2 GETUPVAL                         R2 0
        3 LOADK                            R4 K0 ["InputRequiredWidget"]
        4 LOADK                            R5 K2 ["ResponseRecorded"]
        5 NAMECALL                         R2 R2 K4 ["getText"]
        7 CALL                             R2 3 1
        8 SETTABLEKS                       R2 R1 K2 ["ResponseRecorded"]
       10 SETTABLEKS                       R1 R0 K0 ["InputRequiredWidget"]
       12 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onRevive"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 NEWTABLE                         R0 0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["propertyRows"]
       10 JUMPIFNOT                        R1 ; [+13]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K1 ["propertyRows"]
       14 LOADNIL                          R2
       15 LOADNIL                          R3
       16 FORGPREP                         R1
       17 GETTABLEKS                       R6 R5 K2 ["prop"]
       19 GETTABLEKS                       R7 R5 K3 ["initialValue"]
       21 SETTABLE                         R7 R0 R6
       22 FORGLOOP                         R1 2 ; [-6]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K0 ["onRevive"]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K3 ["useCallback"]
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R4 0 2
       20 GETTABLEKS                       R5 R0 K4 ["onRevive"]
       22 GETTABLEKS                       R6 R0 K5 ["propertyRows"]
       24 SETLIST                          R4 R5 2 [1]
       26 CALL                             R2 2 1
       27 GETUPVAL                         R3 2
       28 CALL                             R3 0 1
       29 GETUPVAL                         R4 3
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R5 R5 K6 ["Root"]
       33 DUPTABLE                         R6 K11 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       34 GETTABLEKS                       R7 R0 K7 ["LayoutOrder"]
       36 SETTABLEKS                       R7 R6 K7 ["LayoutOrder"]
       38 GETTABLEKS                       R7 R0 K8 ["expanded"]
       40 SETTABLEKS                       R7 R6 K8 ["expanded"]
       42 GETTABLEKS                       R7 R0 K9 ["contentId"]
       44 SETTABLEKS                       R7 R6 K9 ["contentId"]
       46 GETTABLEKS                       R7 R0 K10 ["editThisContent"]
       48 SETTABLEKS                       R7 R6 K10 ["editThisContent"]
       50 DUPTABLE                         R7 K14 [{"Header", "Content"}]
       51 GETUPVAL                         R8 3
       52 GETUPVAL                         R9 4
       53 GETTABLEKS                       R9 R9 K12 ["Header"]
       55 DUPTABLE                         R10 K16 [{"LayoutOrder", "testId"}]
       56 MOVE                             R11 R3
       57 CALL                             R11 0 1
       58 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       60 GETUPVAL                         R11 5
       61 GETTABLEKS                       R11 R11 K17 ["InputRequested"]
       63 GETTABLEKS                       R11 R11 K18 ["Expand"]
       65 SETTABLEKS                       R11 R10 K15 ["testId"]
       67 DUPTABLE                         R11 K21 [{"Text", "ReviveButton"}]
       68 GETUPVAL                         R12 3
       69 GETUPVAL                         R13 6
       70 DUPTABLE                         R14 K24 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
       71 GETTABLEKS                       R15 R1 K25 ["InputRequiredWidget"]
       73 GETTABLEKS                       R15 R15 K26 ["ResponseRecorded"]
       75 SETTABLEKS                       R15 R14 K19 ["Text"]
       77 MOVE                             R15 R3
       78 CALL                             R15 0 1
       79 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
       81 CALL                             R12 2 1
       82 SETTABLEKS                       R12 R11 K19 ["Text"]
       84 GETTABLEKS                       R12 R0 K4 ["onRevive"]
       86 JUMPIFNOT                        R12 ; [+44]
       87 GETUPVAL                         R12 3
       88 GETUPVAL                         R13 7
       89 DUPTABLE                         R14 K31 [{"icon", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
       90 GETUPVAL                         R15 8
       91 GETTABLEKS                       R15 R15 K32 ["Enums"]
       93 GETTABLEKS                       R15 R15 K33 ["IconName"]
       95 GETTABLEKS                       R15 R15 K34 ["TwoArrowsSpinClockwise"]
       97 SETTABLEKS                       R15 R14 K27 ["icon"]
       99 GETUPVAL                         R15 8
      100 GETTABLEKS                       R15 R15 K32 ["Enums"]
      102 GETTABLEKS                       R15 R15 K35 ["InputSize"]
      104 GETTABLEKS                       R15 R15 K36 ["XSmall"]
      106 SETTABLEKS                       R15 R14 K28 ["size"]
      108 GETUPVAL                         R15 8
      109 GETTABLEKS                       R15 R15 K32 ["Enums"]
      111 GETTABLEKS                       R15 R15 K37 ["ButtonVariant"]
      113 GETTABLEKS                       R15 R15 K38 ["Utility"]
      115 SETTABLEKS                       R15 R14 K29 ["variant"]
      117 SETTABLEKS                       R2 R14 K30 ["onActivated"]
      119 GETUPVAL                         R15 5
      120 GETTABLEKS                       R15 R15 K17 ["InputRequested"]
      122 GETTABLEKS                       R15 R15 K20 ["ReviveButton"]
      124 SETTABLEKS                       R15 R14 K15 ["testId"]
      126 MOVE                             R15 R3
      127 CALL                             R15 0 1
      128 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      130 CALL                             R12 2 1
      131 SETTABLEKS                       R12 R11 K20 ["ReviveButton"]
      133 CALL                             R8 3 1
      134 SETTABLEKS                       R8 R7 K12 ["Header"]
      136 GETUPVAL                         R8 3
      137 GETUPVAL                         R9 4
      138 GETTABLEKS                       R9 R9 K13 ["Content"]
      140 DUPTABLE                         R10 K40 [{["tag"] = "col fill size-0-0 auto-y padding-x-medium", ["LayoutOrder"]}]
      141 MOVE                             R11 R3
      142 CALL                             R11 0 1
      143 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
      145 DUPTABLE                         R11 K43 [{"PropertyRows", "SelectedImage"}]
      146 GETTABLEKS                       R12 R0 K5 ["propertyRows"]
      148 JUMPIFNOT                        R12 ; [+21]
      149 GETUPVAL                         R12 3
      150 GETUPVAL                         R13 9
      151 GETTABLEKS                       R13 R13 K41 ["PropertyRows"]
      153 DUPTABLE                         R14 K48 [{["rowDefinitions"], ["onChange"], ["isDisabled"] = True, ["LayoutOrder"]}]
      154 GETTABLEKS                       R15 R0 K5 ["propertyRows"]
      156 SETTABLEKS                       R15 R14 K44 ["rowDefinitions"]
      158 GETUPVAL                         R15 10
      159 GETTABLEKS                       R15 R15 K49 ["createUnimplemented"]
      161 LOADK                            R16 K50 ["onChanged"]
      162 CALL                             R15 1 1
      163 SETTABLEKS                       R15 R14 K45 ["onChange"]
      165 MOVE                             R15 R3
      166 CALL                             R15 0 1
      167 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      169 CALL                             R12 2 1
      170 SETTABLEKS                       R12 R11 K41 ["PropertyRows"]
      172 GETUPVAL                         R13 11
      173 GETTABLEKS                       R13 R13 K51 ["FFlagAssistantImageGenImprovements"]
      175 JUMPIFNOT                        R13 ; [+45]
      176 GETTABLEKS                       R13 R0 K52 ["imageSelection"]
      178 JUMPIFEQKNIL                     R13 ; [+42]
      180 GETTABLEKS                       R13 R0 K52 ["imageSelection"]
      182 GETTABLEKS                       R13 R13 K53 ["selectedThumbnailContent"]
      184 JUMPIFEQKNIL                     R13 ; [+36]
      186 GETUPVAL                         R12 3
      187 GETUPVAL                         R13 12
      188 DUPTABLE                         R14 K58 [{["tag"] = "bg-surface-200 radius-small", ["Size"], ["Image"], ["ScaleType"], ["LayoutOrder"], ["testId"]}]
      189 GETIMPORT                        R15 K61 [UDim2.new]
      191 LOADN                            R16 0
      192 LOADN                            R17 128
      193 LOADN                            R18 0
      194 LOADN                            R19 128
      195 CALL                             R15 4 1
      196 SETTABLEKS                       R15 R14 K55 ["Size"]
      198 GETTABLEKS                       R15 R0 K52 ["imageSelection"]
      200 GETTABLEKS                       R15 R15 K53 ["selectedThumbnailContent"]
      202 SETTABLEKS                       R15 R14 K56 ["Image"]
      204 GETIMPORT                        R15 K64 [Enum.ScaleType.Fit]
      206 SETTABLEKS                       R15 R14 K57 ["ScaleType"]
      208 MOVE                             R15 R3
      209 CALL                             R15 0 1
      210 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      212 GETUPVAL                         R15 5
      213 GETTABLEKS                       R15 R15 K17 ["InputRequested"]
      215 GETTABLEKS                       R15 R15 K42 ["SelectedImage"]
      217 SETTABLEKS                       R15 R14 K15 ["testId"]
      219 CALL                             R12 2 1
      220 JUMP                             ; [+1]
      221 LOADNIL                          R12
      222 SETTABLEKS                       R12 R11 K42 ["SelectedImage"]
      224 CALL                             R8 3 1
      225 SETTABLEKS                       R8 R7 K13 ["Content"]
      227 CALL                             R4 3 -1
      228 RETURN                           R4 -1

PROTO_3:
        0 DUPTABLE                         R0 K1 [{"InputRequiredWidget"}]
        1 DUPTABLE                         R1 K3 [{"CommandCancelled"}]
        2 GETUPVAL                         R2 0
        3 LOADK                            R4 K0 ["InputRequiredWidget"]
        4 LOADK                            R5 K2 ["CommandCancelled"]
        5 NAMECALL                         R2 R2 K4 ["getText"]
        7 CALL                             R2 3 1
        8 SETTABLEKS                       R2 R1 K2 ["CommandCancelled"]
       10 SETTABLEKS                       R1 R0 K0 ["InputRequiredWidget"]
       12 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_3]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 2
       14 CALL                             R2 0 1
       15 GETUPVAL                         R3 3
       16 GETUPVAL                         R4 4
       17 DUPTABLE                         R5 K8 [{["tag"] = "row align-y-center gap-medium size-full-0 auto-xy padding-medium stroke-standard stroke-default radius-medium", ["GroupTransparency"] = 0.5, ["LayoutOrder"]}]
       18 GETTABLEKS                       R6 R0 K7 ["LayoutOrder"]
       20 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       22 DUPTABLE                         R6 K11 [{"Title", "Description"}]
       23 GETUPVAL                         R7 3
       24 GETUPVAL                         R8 5
       25 DUPTABLE                         R9 K14 [{["tag"] = "auto-xy text-title-medium text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
       26 GETTABLEKS                       R10 R0 K15 ["title"]
       28 SETTABLEKS                       R10 R9 K13 ["Text"]
       30 MOVE                             R10 R2
       31 CALL                             R10 0 1
       32 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       34 CALL                             R7 2 1
       35 SETTABLEKS                       R7 R6 K9 ["Title"]
       37 GETUPVAL                         R7 3
       38 GETUPVAL                         R8 5
       39 DUPTABLE                         R9 K17 [{["tag"] = "auto-xy text-body-small text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
       40 GETTABLEKS                       R10 R1 K18 ["InputRequiredWidget"]
       42 GETTABLEKS                       R10 R10 K19 ["CommandCancelled"]
       44 SETTABLEKS                       R10 R9 K13 ["Text"]
       46 MOVE                             R10 R2
       47 CALL                             R10 0 1
       48 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       50 CALL                             R7 2 1
       51 SETTABLEKS                       R7 R6 K10 ["Description"]
       53 CALL                             R3 3 -1
       54 RETURN                           R3 -1

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["propertyRows"]
        4 JUMPIFNOT                        R2 ; [+12]
        5 GETTABLEKS                       R2 R0 K0 ["propertyRows"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLEKS                       R7 R6 K1 ["prop"]
       12 GETTABLEKS                       R8 R6 K2 ["initialValue"]
       14 SETTABLE                         R8 R1 R7
       15 FORGLOOP                         R2 2 ; [-6]
       17 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 0
        3 GETTABLEKS                       R3 R1 K0 ["propertyRows"]
        5 JUMPIFNOT                        R3 ; [+12]
        6 GETTABLEKS                       R3 R1 K0 ["propertyRows"]
        8 LOADNIL                          R4
        9 LOADNIL                          R5
       10 FORGPREP                         R3
       11 GETTABLEKS                       R8 R7 K1 ["prop"]
       13 GETTABLEKS                       R9 R7 K2 ["initialValue"]
       15 SETTABLE                         R9 R2 R8
       16 FORGLOOP                         R3 2 ; [-6]
       18 MOVE                             R0 R2
       19 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteContentSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["propertyRows"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADB                            R0 0
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["propertyRows"]
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 GETTABLEKS                       R5 R4 K1 ["isLoading"]
       14 JUMPIFNOT                        R5 ; [+8]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R7 R4 K2 ["prop"]
       18 GETTABLE                         R5 R6 R7
       19 JUMPIFNOTEQKNIL                  R5 ; [+3]
       21 LOADB                            R5 1
       22 RETURN                           R5 1
       23 FORGLOOP                         R0 2 ; [-12]
       25 LOADB                            R0 0
       26 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantDisabledReason"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["getDisabledReason"]
        7 JUMPIFNOT                        R0 ; [+6]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["getDisabledReason"]
       11 GETUPVAL                         R1 2
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1
       14 LOADNIL                          R0
       15 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantGen3dRequirePromptToGenerate"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["canConfirm"]
        7 JUMPIFNOT                        R0 ; [+6]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["canConfirm"]
       11 GETUPVAL                         R1 2
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K2 ["FFlagAssistantDisabledReason"]
       17 JUMPIFNOT                        R0 ; [+10]
       18 GETUPVAL                         R0 1
       19 GETTABLEKS                       R0 R0 K3 ["getDisabledReason"]
       21 JUMPIFNOT                        R0 ; [+6]
       22 GETUPVAL                         R1 3
       23 JUMPIFEQKNIL                     R1 ; [+2]
       25 LOADB                            R0 0 +1
       26 LOADB                            R0 1
       27 RETURN                           R0 1
       28 LOADB                            R0 1
       29 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+5]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["Recorded"]
        5 SETTABLEKS                       R1 R0 K1 ["status"]
        7 GETTABLEKS                       R1 R0 K2 ["propertyRows"]
        9 JUMPIFNOT                        R1 ; [+31]
       10 GETIMPORT                        R1 K5 [table.clone]
       12 GETTABLEKS                       R2 R0 K2 ["propertyRows"]
       14 CALL                             R1 1 1
       15 MOVE                             R2 R1
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETIMPORT                        R7 K5 [table.clone]
       21 MOVE                             R8 R6
       22 CALL                             R7 1 1
       23 GETUPVAL                         R9 2
       24 GETTABLEKS                       R10 R6 K6 ["prop"]
       26 GETTABLE                         R8 R9 R10
       27 SETTABLEKS                       R8 R7 K7 ["initialValue"]
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R8 R8 K8 ["FFlagAssistantSegmentationPromptModeSelector"]
       32 JUMPIFNOT                        R8 ; [+3]
       33 LOADB                            R8 0
       34 SETTABLEKS                       R8 R7 K9 ["isLoading"]
       36 SETTABLE                         R7 R1 R5
       37 FORGLOOP                         R2 2 ; [-19]
       39 SETTABLEKS                       R1 R0 K2 ["propertyRows"]
       41 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["editThisContent"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["contentId"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CALL                             R0 2 0
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K2 ["onContinue"]
       15 JUMPIFNOT                        R0 ; [+6]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K2 ["onContinue"]
       19 LOADB                            R1 1
       20 GETUPVAL                         R2 3
       21 CALL                             R0 2 0
       22 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantDisabledReason"]
        3 JUMPIFNOT                        R1 ; [+8]
        4 GETIMPORT                        R1 K3 [table.clone]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETUPVAL                         R3 2
       10 SETTABLE                         R3 R1 R2
       11 RETURN                           R1 1
       12 GETUPVAL                         R1 3
       13 GETTABLEKS                       R1 R1 K4 ["join"]
       15 MOVE                             R2 R0
       16 NEWTABLE                         R3 1 0
       18 GETUPVAL                         R4 1
       19 GETUPVAL                         R5 2
       20 SETTABLE                         R5 R3 R4
       21 CALL                             R1 2 1
       22 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Cancelled"]
        3 SETTABLEKS                       R1 R0 K1 ["status"]
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["editThisContent"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["contentId"]
        6 DUPCLOSURE                       R2 K2 [PROTO_15]
        7 CAPTURE                          UPVAL U1
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K3 ["onContinue"]
       12 JUMPIFNOT                        R0 ; [+6]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K3 ["onContinue"]
       16 LOADB                            R1 0
       17 LOADNIL                          R2
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R0 K2 [{"ConfirmButton", "CancelButton"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["InputRequiredWidget"]
        3 LOADK                            R4 K0 ["ConfirmButton"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["ConfirmButton"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K3 ["InputRequiredWidget"]
       11 LOADK                            R4 K1 ["CancelButton"]
       12 NAMECALL                         R1 R1 K4 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["CancelButton"]
       17 RETURN                           R0 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["useState"]
        9 LOADN                            R4 0
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K1 ["useCallback"]
       14 NEWCLOSURE                       R6 P1
       15 CAPTURE                          VAL R4
       16 NEWTABLE                         R7 0 0
       18 CALL                             R5 2 1
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       22 NEWCLOSURE                       R7 P2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R1
       25 NEWTABLE                         R8 0 2
       27 GETTABLEKS                       R9 R0 K3 ["propertyRows"]
       29 MOVE                             R10 R1
       30 SETLIST                          R8 R9 2 [1]
       32 CALL                             R6 2 1
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K2 ["useMemo"]
       36 NEWCLOSURE                       R8 P3
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R1
       40 NEWTABLE                         R9 0 2
       42 GETTABLEKS                       R10 R0 K4 ["getDisabledReason"]
       44 MOVE                             R11 R1
       45 SETLIST                          R9 R10 2 [1]
       47 CALL                             R7 2 1
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R8 R8 K2 ["useMemo"]
       51 NEWCLOSURE                       R9 P4
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R7
       56 NEWTABLE                         R10 0 4
       58 GETTABLEKS                       R11 R0 K5 ["canConfirm"]
       60 MOVE                             R12 R1
       61 GETTABLEKS                       R13 R0 K4 ["getDisabledReason"]
       63 MOVE                             R14 R7
       64 SETLIST                          R10 R11 4 [1]
       66 CALL                             R8 2 1
       67 GETUPVAL                         R9 1
       68 GETTABLEKS                       R9 R9 K6 ["EngineFeatureAssistantGen3dImagePreview"]
       70 JUMPIFNOT                        R9 ; [+6]
       71 GETTABLEKS                       R10 R0 K7 ["imageSelection"]
       73 JUMPIFNOTEQKNIL                  R10 ; [+2]
       75 LOADB                            R9 0 +1
       76 LOADB                            R9 1
       77 GETUPVAL                         R10 0
       78 GETTABLEKS                       R10 R10 K1 ["useCallback"]
       80 NEWCLOSURE                       R11 P5
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R9
       83 CAPTURE                          UPVAL U2
       84 CAPTURE                          VAL R1
       85 CAPTURE                          UPVAL U1
       86 NEWTABLE                         R12 0 5
       88 GETTABLEKS                       R13 R0 K8 ["editThisContent"]
       90 GETTABLEKS                       R14 R0 K9 ["contentId"]
       92 GETTABLEKS                       R15 R0 K10 ["onContinue"]
       94 MOVE                             R16 R1
       95 MOVE                             R17 R9
       96 SETLIST                          R12 R13 5 [1]
       98 CALL                             R10 2 1
       99 GETUPVAL                         R11 0
      100 GETTABLEKS                       R11 R11 K1 ["useCallback"]
      102 NEWCLOSURE                       R12 P6
      103 CAPTURE                          VAL R2
      104 CAPTURE                          UPVAL U1
      105 CAPTURE                          UPVAL U3
      106 NEWTABLE                         R13 0 0
      108 CALL                             R11 2 1
      109 GETUPVAL                         R12 0
      110 GETTABLEKS                       R12 R12 K1 ["useCallback"]
      112 NEWCLOSURE                       R13 P7
      113 CAPTURE                          VAL R0
      114 CAPTURE                          UPVAL U2
      115 NEWTABLE                         R14 0 3
      117 GETTABLEKS                       R15 R0 K8 ["editThisContent"]
      119 GETTABLEKS                       R16 R0 K9 ["contentId"]
      121 GETTABLEKS                       R17 R0 K10 ["onContinue"]
      123 SETLIST                          R14 R15 3 [1]
      125 CALL                             R12 2 1
      126 GETUPVAL                         R13 0
      127 GETTABLEKS                       R13 R13 K2 ["useMemo"]
      129 DUPCLOSURE                       R14 K11 [PROTO_17]
      130 CAPTURE                          UPVAL U4
      131 NEWTABLE                         R15 0 1
      133 GETUPVAL                         R16 4
      134 GETTABLEKS                       R16 R16 K12 ["locale"]
      136 SETLIST                          R15 R16 1 [1]
      138 CALL                             R13 2 1
      139 GETUPVAL                         R14 5
      140 CALL                             R14 0 1
      141 GETUPVAL                         R15 6
      142 GETTABLEKS                       R15 R15 K13 ["Hooks"]
      144 GETTABLEKS                       R15 R15 K14 ["useTokens"]
      146 CALL                             R15 0 1
      147 DUPTABLE                         R16 K20 [{"TitleRow", "Description", "PropertyRows", "DisabledReason", "ButtonGroup"}]
      148 GETUPVAL                         R18 1
      149 GETTABLEKS                       R18 R18 K21 ["FFlagAssistantSegmentationPromptModeSelector"]
      151 JUMPIFNOT                        R18 ; [+75]
      152 GETUPVAL                         R17 7
      153 GETUPVAL                         R18 8
      154 DUPTABLE                         R19 K25 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-bottom-medium", ["LayoutOrder"]}]
      155 MOVE                             R20 R14
      156 CALL                             R20 0 1
      157 SETTABLEKS                       R20 R19 K24 ["LayoutOrder"]
      159 DUPTABLE                         R20 K28 [{"Title", "CloseButton"}]
      160 GETUPVAL                         R21 7
      161 GETUPVAL                         R22 9
      162 DUPTABLE                         R23 K31 [{["tag"] = "auto-xy text-title-medium text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      163 GETTABLEKS                       R24 R0 K32 ["title"]
      165 SETTABLEKS                       R24 R23 K30 ["Text"]
      167 MOVE                             R24 R14
      168 CALL                             R24 0 1
      169 SETTABLEKS                       R24 R23 K24 ["LayoutOrder"]
      171 CALL                             R21 2 1
      172 SETTABLEKS                       R21 R20 K26 ["Title"]
      174 GETTABLEKS                       R21 R0 K33 ["onClose"]
      176 JUMPIFNOT                        R21 ; [+46]
      177 GETUPVAL                         R21 7
      178 GETUPVAL                         R22 10
      179 DUPTABLE                         R23 K39 [{"icon", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      180 GETUPVAL                         R24 6
      181 GETTABLEKS                       R24 R24 K40 ["Enums"]
      183 GETTABLEKS                       R24 R24 K41 ["IconName"]
      185 GETTABLEKS                       R24 R24 K42 ["X"]
      187 SETTABLEKS                       R24 R23 K34 ["icon"]
      189 GETUPVAL                         R24 6
      190 GETTABLEKS                       R24 R24 K40 ["Enums"]
      192 GETTABLEKS                       R24 R24 K43 ["InputSize"]
      194 GETTABLEKS                       R24 R24 K44 ["XSmall"]
      196 SETTABLEKS                       R24 R23 K35 ["size"]
      198 GETUPVAL                         R24 6
      199 GETTABLEKS                       R24 R24 K40 ["Enums"]
      201 GETTABLEKS                       R24 R24 K45 ["ButtonVariant"]
      203 GETTABLEKS                       R24 R24 K46 ["Utility"]
      205 SETTABLEKS                       R24 R23 K36 ["variant"]
      207 GETTABLEKS                       R24 R0 K33 ["onClose"]
      209 SETTABLEKS                       R24 R23 K37 ["onActivated"]
      211 GETUPVAL                         R24 11
      212 GETTABLEKS                       R24 R24 K47 ["InputRequested"]
      214 GETTABLEKS                       R24 R24 K27 ["CloseButton"]
      216 SETTABLEKS                       R24 R23 K38 ["testId"]
      218 MOVE                             R24 R14
      219 CALL                             R24 0 1
      220 SETTABLEKS                       R24 R23 K24 ["LayoutOrder"]
      222 CALL                             R21 2 1
      223 SETTABLEKS                       R21 R20 K27 ["CloseButton"]
      225 CALL                             R17 3 1
      226 JUMP                             ; [+12]
      227 GETUPVAL                         R17 7
      228 GETUPVAL                         R18 9
      229 DUPTABLE                         R19 K49 [{["tag"] = "size-full-0 auto-xy padding-bottom-medium text-title-medium text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      230 GETTABLEKS                       R20 R0 K32 ["title"]
      232 SETTABLEKS                       R20 R19 K30 ["Text"]
      234 MOVE                             R20 R14
      235 CALL                             R20 0 1
      236 SETTABLEKS                       R20 R19 K24 ["LayoutOrder"]
      238 CALL                             R17 2 1
      239 SETTABLEKS                       R17 R16 K15 ["TitleRow"]
      241 GETTABLEKS                       R17 R0 K50 ["description"]
      243 JUMPIFNOT                        R17 ; [+12]
      244 GETUPVAL                         R17 7
      245 GETUPVAL                         R18 9
      246 DUPTABLE                         R19 K52 [{["tag"] = "size-full-0 auto-xy padding-bottom-small text-body-small text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      247 GETTABLEKS                       R20 R0 K50 ["description"]
      249 SETTABLEKS                       R20 R19 K30 ["Text"]
      251 MOVE                             R20 R14
      252 CALL                             R20 0 1
      253 SETTABLEKS                       R20 R19 K24 ["LayoutOrder"]
      255 CALL                             R17 2 1
      256 SETTABLEKS                       R17 R16 K16 ["Description"]
      258 GETTABLEKS                       R17 R0 K3 ["propertyRows"]
      260 JUMPIFNOT                        R17 ; [+16]
      261 GETUPVAL                         R17 7
      262 GETUPVAL                         R18 12
      263 GETTABLEKS                       R18 R18 K17 ["PropertyRows"]
      265 DUPTABLE                         R19 K55 [{"rowDefinitions", "onChange", "LayoutOrder"}]
      266 GETTABLEKS                       R20 R0 K3 ["propertyRows"]
      268 SETTABLEKS                       R20 R19 K53 ["rowDefinitions"]
      270 SETTABLEKS                       R11 R19 K54 ["onChange"]
      272 MOVE                             R20 R14
      273 CALL                             R20 0 1
      274 SETTABLEKS                       R20 R19 K24 ["LayoutOrder"]
      276 CALL                             R17 2 1
      277 SETTABLEKS                       R17 R16 K17 ["PropertyRows"]
      279 GETUPVAL                         R17 1
      280 GETTABLEKS                       R17 R17 K56 ["FFlagAssistantDisabledReason"]
      282 JUMPIFNOT                        R17 ; [+59]
      283 MOVE                             R17 R7
      284 JUMPIFNOT                        R17 ; [+57]
      285 GETUPVAL                         R17 7
      286 GETUPVAL                         R18 8
      287 DUPTABLE                         R19 K58 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-xy padding-top-medium", ["LayoutOrder"]}]
      288 MOVE                             R20 R14
      289 CALL                             R20 0 1
      290 SETTABLEKS                       R20 R19 K24 ["LayoutOrder"]
      292 DUPTABLE                         R20 K61 [{"ErrorIcon", "ErrorText"}]
      293 GETUPVAL                         R21 7
      294 GETUPVAL                         R22 13
      295 DUPTABLE                         R23 K64 [{"name", "style", "size", "LayoutOrder"}]
      296 GETUPVAL                         R24 6
      297 GETTABLEKS                       R24 R24 K40 ["Enums"]
      299 GETTABLEKS                       R24 R24 K41 ["IconName"]
      301 GETTABLEKS                       R24 R24 K65 ["TriangleExclamation"]
      303 SETTABLEKS                       R24 R23 K62 ["name"]
      305 GETTABLEKS                       R24 R15 K66 ["Color"]
      307 GETTABLEKS                       R24 R24 K67 ["Content"]
      309 GETTABLEKS                       R24 R24 K68 ["Emphasis"]
      311 SETTABLEKS                       R24 R23 K63 ["style"]
      313 GETUPVAL                         R24 6
      314 GETTABLEKS                       R24 R24 K40 ["Enums"]
      316 GETTABLEKS                       R24 R24 K69 ["IconSize"]
      318 GETTABLEKS                       R24 R24 K44 ["XSmall"]
      320 SETTABLEKS                       R24 R23 K35 ["size"]
      322 MOVE                             R24 R14
      323 CALL                             R24 0 1
      324 SETTABLEKS                       R24 R23 K24 ["LayoutOrder"]
      326 CALL                             R21 2 1
      327 SETTABLEKS                       R21 R20 K59 ["ErrorIcon"]
      329 GETUPVAL                         R21 7
      330 GETUPVAL                         R22 9
      331 DUPTABLE                         R23 K71 [{["tag"] = "auto-xy text-body-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      332 SETTABLEKS                       R7 R23 K30 ["Text"]
      334 MOVE                             R24 R14
      335 CALL                             R24 0 1
      336 SETTABLEKS                       R24 R23 K24 ["LayoutOrder"]
      338 CALL                             R21 2 1
      339 SETTABLEKS                       R21 R20 K60 ["ErrorText"]
      341 CALL                             R17 3 1
      342 SETTABLEKS                       R17 R16 K18 ["DisabledReason"]
      344 GETUPVAL                         R17 7
      345 GETUPVAL                         R18 8
      346 DUPTABLE                         R19 K73 [{["tag"] = "row gap-small size-full-0 auto-xy padding-top-medium", ["LayoutOrder"]}]
      347 MOVE                             R20 R14
      348 CALL                             R20 0 1
      349 SETTABLEKS                       R20 R19 K24 ["LayoutOrder"]
      351 DUPTABLE                         R20 K76 [{"ConfirmButton", "CancelButton"}]
      352 GETUPVAL                         R21 7
      353 GETUPVAL                         R22 14
      354 DUPTABLE                         R23 K79 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      355 GETTABLEKS                       R24 R0 K80 ["confirmButtonText"]
      357 JUMPIF                           R24 ; [+2]
      358 GETTABLEKS                       R24 R13 K74 ["ConfirmButton"]
      360 SETTABLEKS                       R24 R23 K77 ["text"]
      362 GETUPVAL                         R24 6
      363 GETTABLEKS                       R24 R24 K40 ["Enums"]
      365 GETTABLEKS                       R24 R24 K43 ["InputSize"]
      367 GETTABLEKS                       R24 R24 K44 ["XSmall"]
      369 SETTABLEKS                       R24 R23 K35 ["size"]
      371 GETUPVAL                         R24 6
      372 GETTABLEKS                       R24 R24 K40 ["Enums"]
      374 GETTABLEKS                       R24 R24 K45 ["ButtonVariant"]
      376 GETTABLEKS                       R24 R24 K68 ["Emphasis"]
      378 SETTABLEKS                       R24 R23 K36 ["variant"]
      380 GETUPVAL                         R25 1
      381 GETTABLEKS                       R25 R25 K21 ["FFlagAssistantSegmentationPromptModeSelector"]
      383 JUMPIFNOT                        R25 ; [+2]
      384 MOVE                             R24 R6
      385 JUMPIF                           R24 ; [+1]
      386 NOT                              R24 R8
      387 SETTABLEKS                       R24 R23 K78 ["isDisabled"]
      389 SETTABLEKS                       R10 R23 K37 ["onActivated"]
      391 MOVE                             R24 R14
      392 CALL                             R24 0 1
      393 SETTABLEKS                       R24 R23 K24 ["LayoutOrder"]
      395 CALL                             R21 2 1
      396 SETTABLEKS                       R21 R20 K74 ["ConfirmButton"]
      398 GETUPVAL                         R21 7
      399 GETUPVAL                         R22 14
      400 DUPTABLE                         R23 K81 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      401 GETTABLEKS                       R24 R13 K75 ["CancelButton"]
      403 SETTABLEKS                       R24 R23 K77 ["text"]
      405 GETUPVAL                         R24 6
      406 GETTABLEKS                       R24 R24 K40 ["Enums"]
      408 GETTABLEKS                       R24 R24 K43 ["InputSize"]
      410 GETTABLEKS                       R24 R24 K44 ["XSmall"]
      412 SETTABLEKS                       R24 R23 K35 ["size"]
      414 GETUPVAL                         R24 6
      415 GETTABLEKS                       R24 R24 K40 ["Enums"]
      417 GETTABLEKS                       R24 R24 K45 ["ButtonVariant"]
      419 GETTABLEKS                       R24 R24 K82 ["Standard"]
      421 SETTABLEKS                       R24 R23 K36 ["variant"]
      423 SETTABLEKS                       R12 R23 K37 ["onActivated"]
      425 MOVE                             R24 R14
      426 CALL                             R24 0 1
      427 SETTABLEKS                       R24 R23 K24 ["LayoutOrder"]
      429 CALL                             R21 2 1
      430 SETTABLEKS                       R21 R20 K75 ["CancelButton"]
      432 CALL                             R17 3 1
      433 SETTABLEKS                       R17 R16 K19 ["ButtonGroup"]
      435 GETUPVAL                         R17 7
      436 GETUPVAL                         R18 8
      437 DUPTABLE                         R19 K84 [{["tag"] = "col gap-large size-full-0 auto-xy padding-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
      438 GETTABLEKS                       R20 R0 K24 ["LayoutOrder"]
      440 SETTABLEKS                       R20 R19 K24 ["LayoutOrder"]
      442 DUPTABLE                         R20 K85 [{"Content"}]
      443 GETUPVAL                         R22 1
      444 GETTABLEKS                       R22 R22 K86 ["FFlagAssistantSegmentationPanelScroll"]
      446 JUMPIFNOT                        R22 ; [+72]
      447 GETUPVAL                         R21 7
      448 LOADK                            R22 K87 ["ScrollingFrame"]
      449 DUPTABLE                         R23 K99 [{["Size"], ["AutomaticCanvasSize"], ["CanvasSize"], ["ClipsDescendants"] = True, ["ScrollingDirection"], ["VerticalScrollBarInset"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
      450 GETIMPORT                        R24 K102 [UDim2.new]
      452 LOADN                            R25 1
      453 LOADN                            R26 0
      454 LOADN                            R27 0
      455 FASTCALL2K                       MATH_MIN R3 K103 ; [+5]
      457 MOVE                             R29 R3
      458 LOADK                            R30 K103 [375]
      459 GETIMPORT                        R28 K106 [math.min]
      461 CALL                             R28 2 1
      462 CALL                             R24 4 1
      463 SETTABLEKS                       R24 R23 K88 ["Size"]
      465 GETIMPORT                        R24 K110 [Enum.AutomaticSize.Y]
      467 SETTABLEKS                       R24 R23 K89 ["AutomaticCanvasSize"]
      469 GETIMPORT                        R24 K102 [UDim2.new]
      471 LOADN                            R25 0
      472 LOADN                            R26 0
      473 LOADN                            R27 0
      474 LOADN                            R28 0
      475 CALL                             R24 4 1
      476 SETTABLEKS                       R24 R23 K90 ["CanvasSize"]
      478 GETIMPORT                        R24 K111 [Enum.ScrollingDirection.Y]
      480 SETTABLEKS                       R24 R23 K93 ["ScrollingDirection"]
      482 GETIMPORT                        R24 K114 [Enum.ScrollBarInset.ScrollBar]
      484 SETTABLEKS                       R24 R23 K94 ["VerticalScrollBarInset"]
      486 MOVE                             R24 R14
      487 CALL                             R24 0 1
      488 SETTABLEKS                       R24 R23 K24 ["LayoutOrder"]
      490 GETUPVAL                         R24 3
      491 GETTABLEKS                       R24 R24 K115 ["join"]
      493 MOVE                             R25 R16
      494 DUPTABLE                         R26 K117 [{"Layout"}]
      495 GETUPVAL                         R27 7
      496 LOADK                            R28 K118 ["UIListLayout"]
      497 NEWTABLE                         R29 4 0
      499 GETIMPORT                        R30 K121 [Enum.FillDirection.Vertical]
      501 SETTABLEKS                       R30 R29 K119 ["FillDirection"]
      503 GETIMPORT                        R30 K123 [Enum.SortOrder.LayoutOrder]
      505 SETTABLEKS                       R30 R29 K122 ["SortOrder"]
      507 GETUPVAL                         R30 0
      508 GETTABLEKS                       R30 R30 K124 ["Change"]
      510 GETTABLEKS                       R30 R30 K125 ["AbsoluteContentSize"]
      512 SETTABLE                         R5 R29 R30
      513 CALL                             R27 2 1
      514 SETTABLEKS                       R27 R26 K116 ["Layout"]
      516 CALL                             R24 2 -1
      517 CALL                             R21 -1 1
      518 JUMP                             ; [+9]
      519 GETUPVAL                         R21 7
      520 GETUPVAL                         R22 8
      521 DUPTABLE                         R23 K127 [{["tag"] = "col size-full-0 auto-xy", ["LayoutOrder"]}]
      522 MOVE                             R24 R14
      523 CALL                             R24 0 1
      524 SETTABLEKS                       R24 R23 K24 ["LayoutOrder"]
      526 MOVE                             R24 R16
      527 CALL                             R21 3 1
      528 SETTABLEKS                       R21 R20 K67 ["Content"]
      530 CALL                             R17 3 -1
      531 RETURN                           R17 -1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 MOVE                             R1 R0
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_20:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_21:
        0 LOADN                            R2 0
        1 GETTABLEKS                       R4 R0 K0 ["AbsoluteCanvasSize"]
        3 GETTABLEKS                       R4 R4 K1 ["Y"]
        5 GETTABLEKS                       R5 R0 K2 ["AbsoluteSize"]
        7 GETTABLEKS                       R5 R5 K1 ["Y"]
        9 SUB                              R3 R4 R5
       10 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       12 GETIMPORT                        R1 K5 [math.max]
       14 CALL                             R1 2 1
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R6 R0 K6 ["CanvasPosition"]
       18 GETTABLEKS                       R6 R6 K1 ["Y"]
       20 SUB                              R5 R6 R1
       21 FASTCALL1                        MATH_ABS R5 ; [+2]
       22 GETIMPORT                        R4 K8 [math.abs]
       24 CALL                             R4 1 1
       25 LOADN                            R5 48
       26 JUMPIFLE                         R4 R5 ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 SETTABLEKS                       R3 R2 K9 ["current"]
       32 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteContentSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["current"]
        9 JUMPIFNOT                        R1 ; [+26]
       10 GETUPVAL                         R1 2
       11 GETTABLEKS                       R1 R1 K2 ["current"]
       13 JUMPIFNOT                        R1 ; [+22]
       14 LOADN                            R3 0
       15 GETTABLEKS                       R5 R1 K3 ["AbsoluteCanvasSize"]
       17 GETTABLEKS                       R5 R5 K1 ["Y"]
       19 GETTABLEKS                       R6 R1 K4 ["AbsoluteSize"]
       21 GETTABLEKS                       R6 R6 K1 ["Y"]
       23 SUB                              R4 R5 R6
       24 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       26 GETIMPORT                        R2 K7 [math.max]
       28 CALL                             R2 2 1
       29 GETIMPORT                        R3 K10 [Vector2.new]
       31 LOADN                            R4 0
       32 MOVE                             R5 R2
       33 CALL                             R3 2 1
       34 SETTABLEKS                       R3 R1 K11 ["CanvasPosition"]
       36 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 0
        8 GETTABLE                         R0 R1 R2
        9 JUMP                             ; [+1]
       10 LOADNIL                          R0
       11 JUMPIFEQKNIL                     R0 ; [+5]
       13 GETTABLEKS                       R1 R0 K0 ["status"]
       15 JUMPIFEQKS                       R1 K1 ["Ready"] ; [+4]
       17 GETUPVAL                         R1 2
       18 LOADNIL                          R2
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onPreview"]
        6 JUMPIFNOT                        R1 ; [+3]
        7 MOVE                             R2 R1
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["onSelect"]
        7 JUMPIFNOT                        R0 ; [+3]
        8 MOVE                             R1 R0
        9 GETUPVAL                         R2 0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onClearPreview"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 MOVE                             R1 R0
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onBack"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 MOVE                             R1 R0
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onRefresh"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 MOVE                             R1 R0
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_30:
        0 DUPTABLE                         R0 K2 [{"BackButton", "ConfirmButton"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K3 ["Gen3d"]
        3 LOADK                            R4 K4 ["Back"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["BackButton"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K6 ["InputRequiredWidget"]
       11 LOADK                            R4 K1 ["ConfirmButton"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["ConfirmButton"]
       17 RETURN                           R0 1

PROTO_31:
        0 GETTABLEKS                       R1 R0 K0 ["imageSelection"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        8 LOADK                            R4 K1 ["PickerPhaseWidget requires props.imageSelection"]
        9 GETIMPORT                        R2 K3 [assert]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K4 ["useState"]
       15 LOADNIL                          R3
       16 CALL                             R2 1 2
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K4 ["useState"]
       20 LOADN                            R5 0
       21 CALL                             R4 1 2
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K5 ["useRef"]
       25 LOADNIL                          R7
       26 CALL                             R6 1 1
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K5 ["useRef"]
       30 LOADB                            R8 1
       31 CALL                             R7 1 1
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K5 ["useRef"]
       35 GETTABLEKS                       R9 R1 K6 ["onUnmount"]
       37 CALL                             R8 1 1
       38 GETTABLEKS                       R9 R1 K6 ["onUnmount"]
       40 SETTABLEKS                       R9 R8 K7 ["current"]
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R9 R9 K8 ["useEffect"]
       45 NEWCLOSURE                       R10 P0
       46 CAPTURE                          VAL R8
       47 NEWTABLE                         R11 0 0
       49 CALL                             R9 2 0
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K9 ["useCallback"]
       53 NEWCLOSURE                       R10 P1
       54 CAPTURE                          VAL R7
       55 NEWTABLE                         R11 0 0
       57 CALL                             R9 2 1
       58 GETUPVAL                         R10 0
       59 GETTABLEKS                       R10 R10 K9 ["useCallback"]
       61 NEWCLOSURE                       R11 P2
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R6
       65 NEWTABLE                         R12 0 0
       67 CALL                             R10 2 1
       68 GETTABLEKS                       R11 R1 K10 ["slots"]
       70 GETUPVAL                         R12 0
       71 GETTABLEKS                       R12 R12 K8 ["useEffect"]
       73 NEWCLOSURE                       R13 P3
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R3
       77 NEWTABLE                         R14 0 2
       79 MOVE                             R15 R11
       80 MOVE                             R16 R2
       81 SETLIST                          R14 R15 2 [1]
       83 CALL                             R12 2 0
       84 GETUPVAL                         R12 0
       85 GETTABLEKS                       R12 R12 K9 ["useCallback"]
       87 NEWCLOSURE                       R13 P4
       88 CAPTURE                          VAL R3
       89 NEWTABLE                         R14 0 0
       91 CALL                             R12 2 1
       92 GETUPVAL                         R13 0
       93 GETTABLEKS                       R13 R13 K9 ["useCallback"]
       95 NEWCLOSURE                       R14 P5
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R1
       98 NEWTABLE                         R15 0 1
      100 GETTABLEKS                       R16 R1 K11 ["onPreview"]
      102 SETLIST                          R15 R16 1 [1]
      104 CALL                             R13 2 1
      105 GETUPVAL                         R14 0
      106 GETTABLEKS                       R14 R14 K9 ["useCallback"]
      108 NEWCLOSURE                       R15 P6
      109 CAPTURE                          VAL R2
      110 CAPTURE                          VAL R1
      111 NEWTABLE                         R16 0 2
      113 GETTABLEKS                       R17 R1 K12 ["onSelect"]
      115 MOVE                             R18 R2
      116 SETLIST                          R16 R17 2 [1]
      118 CALL                             R14 2 1
      119 GETUPVAL                         R15 0
      120 GETTABLEKS                       R15 R15 K9 ["useCallback"]
      122 NEWCLOSURE                       R16 P7
      123 CAPTURE                          VAL R1
      124 NEWTABLE                         R17 0 1
      126 GETTABLEKS                       R18 R1 K13 ["onClearPreview"]
      128 SETLIST                          R17 R18 1 [1]
      130 CALL                             R15 2 1
      131 GETUPVAL                         R16 0
      132 GETTABLEKS                       R16 R16 K9 ["useCallback"]
      134 NEWCLOSURE                       R17 P8
      135 CAPTURE                          VAL R1
      136 NEWTABLE                         R18 0 1
      138 GETTABLEKS                       R19 R1 K14 ["onBack"]
      140 SETLIST                          R18 R19 1 [1]
      142 CALL                             R16 2 1
      143 GETUPVAL                         R17 0
      144 GETTABLEKS                       R17 R17 K9 ["useCallback"]
      146 NEWCLOSURE                       R18 P9
      147 CAPTURE                          VAL R1
      148 NEWTABLE                         R19 0 1
      150 GETTABLEKS                       R20 R1 K15 ["onRefresh"]
      152 SETLIST                          R19 R20 1 [1]
      154 CALL                             R17 2 1
      155 GETUPVAL                         R18 0
      156 GETTABLEKS                       R18 R18 K16 ["useMemo"]
      158 DUPCLOSURE                       R19 K17 [PROTO_30]
      159 CAPTURE                          UPVAL U1
      160 NEWTABLE                         R20 0 1
      162 GETUPVAL                         R21 1
      163 GETTABLEKS                       R21 R21 K18 ["locale"]
      165 SETLIST                          R20 R21 1 [1]
      167 CALL                             R18 2 1
      168 GETUPVAL                         R19 2
      169 CALL                             R19 0 1
      170 LOADB                            R20 0
      171 GETTABLEKS                       R21 R1 K19 ["previewedIndex"]
      173 JUMPIFEQKNIL                     R21 ; [+11]
      175 GETTABLEKS                       R22 R1 K20 ["previewedThumbnailContent"]
      177 FASTCALL1                        TYPEOF R22 ; [+2]
      178 GETIMPORT                        R21 K22 [typeof]
      180 CALL                             R21 1 1
      181 JUMPIFEQKS                       R21 K23 ["string"] ; [+2]
      183 LOADB                            R20 0 +1
      184 LOADB                            R20 1
      185 LOADB                            R21 0
      186 JUMPIFEQKNIL                     R2 ; [+15]
      188 LOADB                            R21 0
      189 JUMPIFEQKNIL                     R11 ; [+12]
      191 LOADB                            R21 0
      192 GETTABLE                         R22 R11 R2
      193 JUMPIFEQKNIL                     R22 ; [+8]
      195 GETTABLE                         R22 R11 R2
      196 GETTABLEKS                       R22 R22 K24 ["status"]
      198 JUMPIFEQKS                       R22 K25 ["Ready"] ; [+2]
      200 LOADB                            R21 0 +1
      201 LOADB                            R21 1
      202 GETUPVAL                         R22 3
      203 GETUPVAL                         R23 4
      204 DUPTABLE                         R24 K29 [{["tag"] = "col size-full-0 auto-xy radius-medium padding-medium gap-large stroke-standard stroke-default", ["LayoutOrder"]}]
      205 GETTABLEKS                       R25 R0 K28 ["LayoutOrder"]
      207 SETTABLEKS                       R25 R24 K28 ["LayoutOrder"]
      209 DUPTABLE                         R25 K31 [{"Content"}]
      210 GETUPVAL                         R26 3
      211 LOADK                            R27 K32 ["ScrollingFrame"]
      212 NEWTABLE                         R28 16 0
      214 GETIMPORT                        R29 K35 [UDim2.new]
      216 LOADN                            R30 1
      217 LOADN                            R31 0
      218 LOADN                            R32 0
      219 FASTCALL2K                       MATH_MIN R4 K36 ; [+5]
      221 MOVE                             R34 R4
      222 LOADK                            R35 K36 [375]
      223 GETIMPORT                        R33 K39 [math.min]
      225 CALL                             R33 2 1
      226 CALL                             R29 4 1
      227 SETTABLEKS                       R29 R28 K40 ["Size"]
      229 GETIMPORT                        R29 K44 [Enum.AutomaticSize.Y]
      231 SETTABLEKS                       R29 R28 K45 ["AutomaticCanvasSize"]
      233 GETIMPORT                        R29 K35 [UDim2.new]
      235 LOADN                            R30 0
      236 LOADN                            R31 0
      237 LOADN                            R32 0
      238 LOADN                            R33 0
      239 CALL                             R29 4 1
      240 SETTABLEKS                       R29 R28 K46 ["CanvasSize"]
      242 LOADB                            R29 1
      243 SETTABLEKS                       R29 R28 K47 ["ClipsDescendants"]
      245 GETIMPORT                        R29 K49 [Enum.ScrollingDirection.Y]
      247 SETTABLEKS                       R29 R28 K48 ["ScrollingDirection"]
      249 GETIMPORT                        R29 K52 [Enum.ScrollBarInset.ScrollBar]
      251 SETTABLEKS                       R29 R28 K53 ["VerticalScrollBarInset"]
      253 LOADN                            R29 1
      254 SETTABLEKS                       R29 R28 K54 ["BackgroundTransparency"]
      256 LOADN                            R29 0
      257 SETTABLEKS                       R29 R28 K55 ["BorderSizePixel"]
      259 MOVE                             R29 R19
      260 CALL                             R29 0 1
      261 SETTABLEKS                       R29 R28 K28 ["LayoutOrder"]
      263 SETTABLEKS                       R6 R28 K56 ["ref"]
      265 GETUPVAL                         R29 0
      266 GETTABLEKS                       R29 R29 K57 ["Change"]
      268 GETTABLEKS                       R29 R29 K58 ["CanvasPosition"]
      270 SETTABLE                         R9 R28 R29
      271 DUPTABLE                         R29 K65 [{"Layout", "Title", "PropertyRows", "Picker", "ButtonGroup", "PreviewPopover"}]
      272 GETUPVAL                         R30 3
      273 LOADK                            R31 K66 ["UIListLayout"]
      274 NEWTABLE                         R32 4 0
      276 GETIMPORT                        R33 K69 [Enum.FillDirection.Vertical]
      278 SETTABLEKS                       R33 R32 K67 ["FillDirection"]
      280 GETIMPORT                        R33 K71 [Enum.SortOrder.LayoutOrder]
      282 SETTABLEKS                       R33 R32 K70 ["SortOrder"]
      284 GETUPVAL                         R33 0
      285 GETTABLEKS                       R33 R33 K57 ["Change"]
      287 GETTABLEKS                       R33 R33 K72 ["AbsoluteContentSize"]
      289 SETTABLE                         R10 R32 R33
      290 CALL                             R30 2 1
      291 SETTABLEKS                       R30 R29 K59 ["Layout"]
      293 GETUPVAL                         R30 3
      294 GETUPVAL                         R31 5
      295 DUPTABLE                         R32 K75 [{["tag"] = "size-full-0 auto-xy text-title-medium content-emphasis padding-bottom-medium text-align-x-left text-truncate-end", ["Text"], ["LayoutOrder"]}]
      296 GETTABLEKS                       R33 R0 K76 ["title"]
      298 SETTABLEKS                       R33 R32 K74 ["Text"]
      300 MOVE                             R33 R19
      301 CALL                             R33 0 1
      302 SETTABLEKS                       R33 R32 K28 ["LayoutOrder"]
      304 CALL                             R30 2 1
      305 SETTABLEKS                       R30 R29 K60 ["Title"]
      307 GETTABLEKS                       R31 R1 K77 ["wizardMode"]
      309 NOT                              R30 R31
      310 JUMPIFNOT                        R30 ; [+24]
      311 GETTABLEKS                       R30 R0 K78 ["propertyRows"]
      313 JUMPIFNOT                        R30 ; [+21]
      314 GETUPVAL                         R30 3
      315 GETUPVAL                         R31 6
      316 GETTABLEKS                       R31 R31 K61 ["PropertyRows"]
      318 DUPTABLE                         R32 K83 [{["rowDefinitions"], ["onChange"], ["isDisabled"] = True, ["LayoutOrder"]}]
      319 GETTABLEKS                       R33 R0 K78 ["propertyRows"]
      321 SETTABLEKS                       R33 R32 K79 ["rowDefinitions"]
      323 GETUPVAL                         R33 7
      324 GETTABLEKS                       R33 R33 K84 ["createUnimplemented"]
      326 LOADK                            R34 K85 ["onChanged"]
      327 CALL                             R33 1 1
      328 SETTABLEKS                       R33 R32 K80 ["onChange"]
      330 MOVE                             R33 R19
      331 CALL                             R33 0 1
      332 SETTABLEKS                       R33 R32 K28 ["LayoutOrder"]
      334 CALL                             R30 2 1
      335 SETTABLEKS                       R30 R29 K61 ["PropertyRows"]
      337 GETUPVAL                         R30 3
      338 GETUPVAL                         R31 8
      339 DUPTABLE                         R32 K87 [{"slots", "onSelect", "onPreview", "selectedIndex", "LayoutOrder"}]
      340 GETTABLEKS                       R33 R1 K10 ["slots"]
      342 JUMPIF                           R33 ; [+2]
      343 NEWTABLE                         R33 0 0
      345 SETTABLEKS                       R33 R32 K10 ["slots"]
      347 SETTABLEKS                       R12 R32 K12 ["onSelect"]
      349 SETTABLEKS                       R13 R32 K11 ["onPreview"]
      351 SETTABLEKS                       R2 R32 K86 ["selectedIndex"]
      353 MOVE                             R33 R19
      354 CALL                             R33 0 1
      355 SETTABLEKS                       R33 R32 K28 ["LayoutOrder"]
      357 CALL                             R30 2 1
      358 SETTABLEKS                       R30 R29 K62 ["Picker"]
      360 GETUPVAL                         R30 3
      361 GETUPVAL                         R31 4
      362 DUPTABLE                         R32 K89 [{["tag"] = "row size-full-0 auto-xy gap-small padding-top-medium", ["LayoutOrder"]}]
      363 MOVE                             R33 R19
      364 CALL                             R33 0 1
      365 SETTABLEKS                       R33 R32 K28 ["LayoutOrder"]
      367 DUPTABLE                         R33 K93 [{"BackButton", "RefreshButton", "ConfirmButton"}]
      368 GETUPVAL                         R34 3
      369 GETUPVAL                         R35 9
      370 DUPTABLE                         R36 K98 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      371 GETTABLEKS                       R37 R18 K90 ["BackButton"]
      373 SETTABLEKS                       R37 R36 K94 ["text"]
      375 GETUPVAL                         R37 10
      376 GETTABLEKS                       R37 R37 K99 ["Enums"]
      378 GETTABLEKS                       R37 R37 K100 ["InputSize"]
      380 GETTABLEKS                       R37 R37 K101 ["XSmall"]
      382 SETTABLEKS                       R37 R36 K95 ["size"]
      384 GETUPVAL                         R37 10
      385 GETTABLEKS                       R37 R37 K99 ["Enums"]
      387 GETTABLEKS                       R37 R37 K102 ["ButtonVariant"]
      389 GETTABLEKS                       R37 R37 K103 ["Standard"]
      391 SETTABLEKS                       R37 R36 K96 ["variant"]
      393 SETTABLEKS                       R16 R36 K97 ["onActivated"]
      395 MOVE                             R37 R19
      396 CALL                             R37 0 1
      397 SETTABLEKS                       R37 R36 K28 ["LayoutOrder"]
      399 CALL                             R34 2 1
      400 SETTABLEKS                       R34 R33 K90 ["BackButton"]
      402 GETTABLEKS                       R34 R1 K15 ["onRefresh"]
      404 JUMPIFNOT                        R34 ; [+40]
      405 GETUPVAL                         R34 3
      406 GETUPVAL                         R35 11
      407 DUPTABLE                         R36 K105 [{"icon", "size", "variant", "onActivated", "LayoutOrder"}]
      408 DUPTABLE                         R37 K107 [{"name"}]
      409 GETUPVAL                         R38 10
      410 GETTABLEKS                       R38 R38 K99 ["Enums"]
      412 GETTABLEKS                       R38 R38 K108 ["IconName"]
      414 GETTABLEKS                       R38 R38 K109 ["TwoArrowsSpinClockwise"]
      416 SETTABLEKS                       R38 R37 K106 ["name"]
      418 SETTABLEKS                       R37 R36 K104 ["icon"]
      420 GETUPVAL                         R37 10
      421 GETTABLEKS                       R37 R37 K99 ["Enums"]
      423 GETTABLEKS                       R37 R37 K100 ["InputSize"]
      425 GETTABLEKS                       R37 R37 K101 ["XSmall"]
      427 SETTABLEKS                       R37 R36 K95 ["size"]
      429 GETUPVAL                         R37 10
      430 GETTABLEKS                       R37 R37 K99 ["Enums"]
      432 GETTABLEKS                       R37 R37 K102 ["ButtonVariant"]
      434 GETTABLEKS                       R37 R37 K103 ["Standard"]
      436 SETTABLEKS                       R37 R36 K96 ["variant"]
      438 SETTABLEKS                       R17 R36 K97 ["onActivated"]
      440 MOVE                             R37 R19
      441 CALL                             R37 0 1
      442 SETTABLEKS                       R37 R36 K28 ["LayoutOrder"]
      444 CALL                             R34 2 1
      445 SETTABLEKS                       R34 R33 K91 ["RefreshButton"]
      447 GETUPVAL                         R34 3
      448 GETUPVAL                         R35 9
      449 DUPTABLE                         R36 K110 [{"text", "size", "variant", "onActivated", "isDisabled", "LayoutOrder"}]
      450 GETTABLEKS                       R37 R18 K92 ["ConfirmButton"]
      452 SETTABLEKS                       R37 R36 K94 ["text"]
      454 GETUPVAL                         R37 10
      455 GETTABLEKS                       R37 R37 K99 ["Enums"]
      457 GETTABLEKS                       R37 R37 K100 ["InputSize"]
      459 GETTABLEKS                       R37 R37 K101 ["XSmall"]
      461 SETTABLEKS                       R37 R36 K95 ["size"]
      463 GETUPVAL                         R37 10
      464 GETTABLEKS                       R37 R37 K99 ["Enums"]
      466 GETTABLEKS                       R37 R37 K102 ["ButtonVariant"]
      468 GETTABLEKS                       R37 R37 K111 ["Emphasis"]
      470 SETTABLEKS                       R37 R36 K96 ["variant"]
      472 SETTABLEKS                       R14 R36 K97 ["onActivated"]
      474 NOT                              R37 R21
      475 SETTABLEKS                       R37 R36 K81 ["isDisabled"]
      477 MOVE                             R37 R19
      478 CALL                             R37 0 1
      479 SETTABLEKS                       R37 R36 K28 ["LayoutOrder"]
      481 CALL                             R34 2 1
      482 SETTABLEKS                       R34 R33 K92 ["ConfirmButton"]
      484 CALL                             R30 3 1
      485 SETTABLEKS                       R30 R29 K63 ["ButtonGroup"]
      487 GETUPVAL                         R30 3
      488 GETUPVAL                         R31 12
      489 DUPTABLE                         R32 K115 [{"visible", "imageContent", "onClose"}]
      490 SETTABLEKS                       R20 R32 K112 ["visible"]
      492 GETTABLEKS                       R33 R1 K20 ["previewedThumbnailContent"]
      494 SETTABLEKS                       R33 R32 K113 ["imageContent"]
      496 SETTABLEKS                       R15 R32 K114 ["onClose"]
      498 CALL                             R30 2 1
      499 SETTABLEKS                       R30 R29 K64 ["PreviewPopover"]
      501 CALL                             R26 3 1
      502 SETTABLEKS                       R26 R25 K30 ["Content"]
      504 CALL                             R22 3 -1
      505 RETURN                           R22 -1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["EngineFeatureAssistantGen3dImagePreview"]
        3 JUMPIFNOT                        R1 ; [+16]
        4 LOADB                            R1 0
        5 GETTABLEKS                       R2 R0 K1 ["imageSelection"]
        7 JUMPIFEQKNIL                     R2 ; [+12]
        9 GETTABLEKS                       R2 R0 K1 ["imageSelection"]
       11 GETTABLEKS                       R2 R2 K2 ["phase"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K3 ["Picker"]
       16 JUMPIFEQ                         R2 R3 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 RETURN                           R1 1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["status"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Required"]
        6 JUMPIFEQ                         R0 R1 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 2
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Cancelled"]
        3 SETTABLEKS                       R1 R0 K1 ["status"]
        5 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["editThisContent"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["contentId"]
        6 DUPCLOSURE                       R2 K2 [PROTO_34]
        7 CAPTURE                          UPVAL U1
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K3 ["onContinue"]
       12 JUMPIFNOT                        R0 ; [+6]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K3 ["onContinue"]
       16 LOADB                            R1 0
       17 LOADNIL                          R2
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 GETIMPORT                        R2 K3 [table.clone]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R1 R2 K4 ["onClose"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K5 ["EngineFeatureAssistantGen3dImagePreview"]
       15 JUMPIFNOT                        R3 ; [+16]
       16 LOADB                            R3 0
       17 GETTABLEKS                       R4 R0 K6 ["imageSelection"]
       19 JUMPIFEQKNIL                     R4 ; [+12]
       21 GETTABLEKS                       R4 R0 K6 ["imageSelection"]
       23 GETTABLEKS                       R4 R4 K7 ["phase"]
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K8 ["Picker"]
       28 JUMPIFEQ                         R4 R5 ; [+2]
       30 LOADB                            R3 0 +1
       31 LOADB                            R3 1
       32 JUMPIFNOT                        R3 ; [+5]
       33 GETUPVAL                         R3 4
       34 GETUPVAL                         R4 5
       35 MOVE                             R5 R2
       36 CALL                             R3 2 -1
       37 RETURN                           R3 -1
       38 GETUPVAL                         R3 4
       39 GETUPVAL                         R4 6
       40 MOVE                             R5 R2
       41 CALL                             R3 2 -1
       42 RETURN                           R3 -1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K0 ["OverridePriorities"]
        8 GETTABLEKS                       R1 R1 K1 ["InputRequested"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          UPVAL U6
       15 CAPTURE                          UPVAL U7
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          UPVAL U9
       18 CALL                             R0 2 1
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 RETURN                           R1 1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantGen3dInputRequestedOverride"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETTABLEKS                       R2 R0 K1 ["status"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["Required"]
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K3 ["useContext"]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K4 ["Context"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K5 ["registerOverride"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R4 R4 K3 ["useContext"]
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R5 R5 K4 ["Context"]
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R5 R4 K6 ["scrollToBottom"]
       31 GETTABLEKS                       R7 R0 K7 ["imageSelection"]
       33 JUMPIFNOT                        R7 ; [+5]
       34 GETTABLEKS                       R6 R0 K7 ["imageSelection"]
       36 GETTABLEKS                       R6 R6 K8 ["phase"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R6
       40 GETTABLEKS                       R8 R0 K7 ["imageSelection"]
       42 JUMPIFNOT                        R8 ; [+5]
       43 GETTABLEKS                       R7 R0 K7 ["imageSelection"]
       45 GETTABLEKS                       R7 R7 K9 ["slots"]
       47 JUMP                             ; [+1]
       48 LOADNIL                          R7
       49 GETUPVAL                         R8 2
       50 GETTABLEKS                       R8 R8 K10 ["useEffect"]
       52 NEWCLOSURE                       R9 P0
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          VAL R5
       56 NEWTABLE                         R10 0 5
       58 MOVE                             R11 R5
       59 GETTABLEKS                       R12 R0 K1 ["status"]
       61 GETTABLEKS                       R13 R0 K11 ["propertyRows"]
       63 MOVE                             R14 R6
       64 MOVE                             R15 R7
       65 SETLIST                          R10 R11 5 [1]
       67 CALL                             R8 2 0
       68 GETUPVAL                         R8 2
       69 GETTABLEKS                       R8 R8 K12 ["useRef"]
       71 MOVE                             R9 R0
       72 CALL                             R8 1 1
       73 SETTABLEKS                       R0 R8 K13 ["current"]
       75 GETUPVAL                         R9 2
       76 GETTABLEKS                       R9 R9 K10 ["useEffect"]
       78 NEWCLOSURE                       R10 P1
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R3
       81 CAPTURE                          UPVAL U3
       82 CAPTURE                          VAL R8
       83 CAPTURE                          UPVAL U1
       84 CAPTURE                          UPVAL U0
       85 CAPTURE                          UPVAL U5
       86 CAPTURE                          UPVAL U6
       87 CAPTURE                          UPVAL U7
       88 CAPTURE                          UPVAL U8
       89 NEWTABLE                         R11 0 3
       91 MOVE                             R12 R1
       92 MOVE                             R13 R3
       93 GETUPVAL                         R14 0
       94 GETTABLEKS                       R14 R14 K14 ["EngineFeatureAssistantGen3dImagePreview"]
       96 JUMPIFNOT                        R14 ; [+16]
       97 LOADB                            R14 0
       98 GETTABLEKS                       R15 R0 K7 ["imageSelection"]
      100 JUMPIFEQKNIL                     R15 ; [+12]
      102 GETTABLEKS                       R15 R0 K7 ["imageSelection"]
      104 GETTABLEKS                       R15 R15 K8 ["phase"]
      106 GETUPVAL                         R16 5
      107 GETTABLEKS                       R16 R16 K15 ["Picker"]
      109 JUMPIFEQ                         R15 R16 ; [+2]
      111 LOADB                            R14 0 +1
      112 LOADB                            R14 1
      113 SETLIST                          R11 R12 3 [1]
      115 CALL                             R9 2 0
      116 JUMPIFNOT                        R1 ; [+2]
      117 LOADNIL                          R9
      118 RETURN                           R9 1
      119 GETUPVAL                         R9 0
      120 GETTABLEKS                       R9 R9 K0 ["FFlagAssistantGen3dInputRequestedOverride"]
      122 JUMPIFNOT                        R9 ; [+9]
      123 GETUPVAL                         R9 0
      124 GETTABLEKS                       R9 R9 K16 ["FFlagAssistantSegmentationPromptModeSelector"]
      126 JUMPIFNOT                        R9 ; [+5]
      127 GETTABLEKS                       R9 R0 K17 ["suppressHistory"]
      129 JUMPIFNOT                        R9 ; [+2]
      130 LOADNIL                          R9
      131 RETURN                           R9 1
      132 GETTABLEKS                       R9 R0 K1 ["status"]
      134 GETUPVAL                         R10 1
      135 GETTABLEKS                       R10 R10 K18 ["Recorded"]
      137 JUMPIFNOTEQ                      R9 R10 ; [+6]
      139 GETUPVAL                         R9 6
      140 GETUPVAL                         R10 9
      141 MOVE                             R11 R0
      142 CALL                             R9 2 -1
      143 RETURN                           R9 -1
      144 GETTABLEKS                       R9 R0 K1 ["status"]
      146 GETUPVAL                         R10 1
      147 GETTABLEKS                       R10 R10 K19 ["Cancelled"]
      149 JUMPIFNOTEQ                      R9 R10 ; [+6]
      151 GETUPVAL                         R9 6
      152 GETUPVAL                         R10 10
      153 MOVE                             R11 R0
      154 CALL                             R9 2 -1
      155 RETURN                           R9 -1
      156 GETTABLEKS                       R9 R0 K1 ["status"]
      158 GETUPVAL                         R10 1
      159 GETTABLEKS                       R10 R10 K2 ["Required"]
      161 JUMPIFNOTEQ                      R9 R10 ; [+32]
      163 GETUPVAL                         R9 0
      164 GETTABLEKS                       R9 R9 K14 ["EngineFeatureAssistantGen3dImagePreview"]
      166 JUMPIFNOT                        R9 ; [+16]
      167 LOADB                            R9 0
      168 GETTABLEKS                       R10 R0 K7 ["imageSelection"]
      170 JUMPIFEQKNIL                     R10 ; [+12]
      172 GETTABLEKS                       R10 R0 K7 ["imageSelection"]
      174 GETTABLEKS                       R10 R10 K8 ["phase"]
      176 GETUPVAL                         R11 5
      177 GETTABLEKS                       R11 R11 K15 ["Picker"]
      179 JUMPIFEQ                         R10 R11 ; [+2]
      181 LOADB                            R9 0 +1
      182 LOADB                            R9 1
      183 JUMPIFNOT                        R9 ; [+5]
      184 GETUPVAL                         R9 6
      185 GETUPVAL                         R10 7
      186 MOVE                             R11 R0
      187 CALL                             R9 2 -1
      188 RETURN                           R9 -1
      189 GETUPVAL                         R9 6
      190 GETUPVAL                         R10 8
      191 MOVE                             R11 R0
      192 CALL                             R9 2 -1
      193 RETURN                           R9 -1
      194 RETURN                           R0 0

PROTO_40:
        0 GETTABLEKS                       R2 R0 K0 ["status"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Recorded"]
        5 JUMPIFNOTEQ                      R2 R3 ; [+5]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["Recorded"]
       10 JUMP                             ; [+3]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["Cancelled"]
       14 DUPTABLE                         R2 K7 [{"status", "title", "description", "confirmButtonText", "propertyRows"}]
       15 SETTABLEKS                       R1 R2 K0 ["status"]
       17 GETTABLEKS                       R3 R0 K3 ["title"]
       19 SETTABLEKS                       R3 R2 K3 ["title"]
       21 GETTABLEKS                       R3 R0 K4 ["description"]
       23 SETTABLEKS                       R3 R2 K4 ["description"]
       25 GETTABLEKS                       R3 R0 K5 ["confirmButtonText"]
       27 SETTABLEKS                       R3 R2 K5 ["confirmButtonText"]
       29 GETTABLEKS                       R3 R0 K6 ["propertyRows"]
       31 SETTABLEKS                       R3 R2 K6 ["propertyRows"]
       33 RETURN                           R2 1

PROTO_41:
        0 DUPTABLE                         R2 K10 [{[1] = "InputRequested", ["expanded"] = False, ["status"], ["title"], ["description"], ["confirmButtonText"], ["propertyRows"], ["onContinue"]}]
        1 GETTABLEKS                       R3 R0 K4 ["status"]
        3 JUMPIF                           R3 ; [+3]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K11 ["Cancelled"]
        7 SETTABLEKS                       R3 R2 K4 ["status"]
        9 GETTABLEKS                       R4 R0 K5 ["title"]
       11 ORK                              R3 R4 K12 ["UNKNOWN_TITLE"]
       12 SETTABLEKS                       R3 R2 K5 ["title"]
       14 GETTABLEKS                       R4 R0 K6 ["description"]
       16 ORK                              R3 R4 K13 ["UNKNOWN_DESCRIPTION"]
       17 SETTABLEKS                       R3 R2 K6 ["description"]
       19 GETTABLEKS                       R4 R0 K7 ["confirmButtonText"]
       21 ORK                              R3 R4 K14 ["UNKNOWN_CONFIRM_BUTTON_TEXT"]
       22 SETTABLEKS                       R3 R2 K7 ["confirmButtonText"]
       24 GETTABLEKS                       R3 R0 K8 ["propertyRows"]
       26 JUMPIF                           R3 ; [+2]
       27 NEWTABLE                         R3 0 0
       29 SETTABLEKS                       R3 R2 K8 ["propertyRows"]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R3 R3 K15 ["createUnimplemented"]
       34 LOADK                            R4 K9 ["onContinue"]
       35 CALL                             R3 1 1
       36 SETTABLEKS                       R3 R2 K9 ["onContinue"]
       38 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Components"]
       18 GETTABLEKS                       R3 R3 K8 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K9 ["ChatScrollContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["Dash"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Flags"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["Foundation"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Components"]
       46 GETTABLEKS                       R7 R7 K14 ["ImageSelection"]
       48 GETTABLEKS                       R7 R7 K15 ["ImageSelectionPicker"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K6 ["Components"]
       55 GETTABLEKS                       R8 R8 K14 ["ImageSelection"]
       57 GETTABLEKS                       R8 R8 K16 ["ImageSelectionTypes"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K6 ["Components"]
       64 GETTABLEKS                       R9 R9 K8 ["Contexts"]
       66 GETTABLEKS                       R9 R9 K17 ["InputAreaOverrideContext"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K6 ["Components"]
       73 GETTABLEKS                       R10 R10 K14 ["ImageSelection"]
       75 GETTABLEKS                       R10 R10 K18 ["PreviewPopoverHost"]
       77 CALL                             R9 1 1
       78 GETIMPORT                        R10 K5 [require]
       80 GETTABLEKS                       R11 R0 K6 ["Components"]
       82 GETTABLEKS                       R11 R11 K19 ["PropertyRows"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K10 ["Parent"]
       89 GETTABLEKS                       R12 R12 K20 ["React"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K10 ["Parent"]
       96 GETTABLEKS                       R13 R13 K21 ["ReactUtils"]
       98 CALL                             R12 1 1
       99 GETIMPORT                        R13 K5 [require]
      101 GETTABLEKS                       R14 R0 K22 ["Util"]
      103 GETTABLEKS                       R14 R14 K23 ["Serializer"]
      105 GETTABLEKS                       R14 R14 K24 ["SerializerTypes"]
      107 CALL                             R13 1 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R15 R0 K22 ["Util"]
      112 GETTABLEKS                       R15 R15 K25 ["TestIds"]
      114 CALL                             R14 1 1
      115 GETIMPORT                        R15 K5 [require]
      117 GETTABLEKS                       R16 R0 K26 ["Resources"]
      119 GETTABLEKS                       R16 R16 K27 ["Localization"]
      121 GETTABLEKS                       R16 R16 K28 ["Translator"]
      123 CALL                             R15 1 1
      124 GETIMPORT                        R16 K5 [require]
      126 GETTABLEKS                       R17 R0 K29 ["Types"]
      128 CALL                             R16 1 1
      129 GETTABLEKS                       R17 R5 K30 ["Button"]
      131 GETTABLEKS                       R18 R5 K31 ["Icon"]
      133 GETTABLEKS                       R19 R5 K32 ["IconButton"]
      135 GETTABLEKS                       R20 R5 K33 ["Image"]
      137 GETTABLEKS                       R21 R5 K34 ["Text"]
      139 GETTABLEKS                       R22 R5 K35 ["View"]
      141 GETTABLEKS                       R23 R11 K36 ["createElement"]
      143 GETTABLEKS                       R24 R12 K37 ["createNextOrder"]
      145 DUPTABLE                         R25 K41 [{["Required"] = "Required", ["Recorded"] = "Recorded", ["Cancelled"] = "Cancelled"}]
      146 GETTABLEKS                       R26 R7 K42 ["ImageSelectionPhase"]
      148 DUPCLOSURE                       R27 K43 [PROTO_2]
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R15
      151 CAPTURE                          VAL R24
      152 CAPTURE                          VAL R23
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R21
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R5
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R20
      162 DUPCLOSURE                       R28 K44 [PROTO_4]
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R15
      165 CAPTURE                          VAL R24
      166 CAPTURE                          VAL R23
      167 CAPTURE                          VAL R22
      168 CAPTURE                          VAL R21
      169 DUPCLOSURE                       R29 K45 [PROTO_5]
      170 DUPCLOSURE                       R30 K46 [PROTO_18]
      171 CAPTURE                          VAL R11
      172 CAPTURE                          VAL R4
      173 CAPTURE                          VAL R25
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R24
      177 CAPTURE                          VAL R5
      178 CAPTURE                          VAL R23
      179 CAPTURE                          VAL R22
      180 CAPTURE                          VAL R21
      181 CAPTURE                          VAL R19
      182 CAPTURE                          VAL R14
      183 CAPTURE                          VAL R10
      184 CAPTURE                          VAL R18
      185 CAPTURE                          VAL R17
      186 DUPCLOSURE                       R31 K47 [PROTO_31]
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R24
      190 CAPTURE                          VAL R23
      191 CAPTURE                          VAL R22
      192 CAPTURE                          VAL R21
      193 CAPTURE                          VAL R10
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R6
      196 CAPTURE                          VAL R17
      197 CAPTURE                          VAL R5
      198 CAPTURE                          VAL R19
      199 CAPTURE                          VAL R9
      200 DUPCLOSURE                       R32 K48 [PROTO_32]
      201 CAPTURE                          VAL R4
      202 CAPTURE                          VAL R26
      203 DUPCLOSURE                       R33 K49 [PROTO_39]
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R25
      206 CAPTURE                          VAL R11
      207 CAPTURE                          VAL R8
      208 CAPTURE                          VAL R2
      209 CAPTURE                          VAL R26
      210 CAPTURE                          VAL R23
      211 CAPTURE                          VAL R31
      212 CAPTURE                          VAL R30
      213 CAPTURE                          VAL R27
      214 CAPTURE                          VAL R28
      215 DUPTABLE                         R34 K52 [{"toMeta", "fromMeta"}]
      216 DUPCLOSURE                       R35 K53 [PROTO_40]
      217 CAPTURE                          VAL R25
      218 SETTABLEKS                       R35 R34 K50 ["toMeta"]
      220 DUPCLOSURE                       R35 K54 [PROTO_41]
      221 CAPTURE                          VAL R25
      222 CAPTURE                          VAL R12
      223 SETTABLEKS                       R35 R34 K51 ["fromMeta"]
      225 DUPTABLE                         R35 K60 [{["Type"] = "InputRequested", ["ContentWidget"], ["Serialization"], ["InputStatus"]}]
      226 GETTABLEKS                       R36 R11 K61 ["memo"]
      228 MOVE                             R37 R33
      229 CALL                             R36 1 1
      230 SETTABLEKS                       R36 R35 K57 ["ContentWidget"]
      232 SETTABLEKS                       R34 R35 K58 ["Serialization"]
      234 SETTABLEKS                       R25 R35 K59 ["InputStatus"]
      236 RETURN                           R35 1
