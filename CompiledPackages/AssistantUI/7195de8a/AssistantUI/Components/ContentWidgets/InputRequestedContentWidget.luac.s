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
      175 JUMPIFNOT                        R13 ; [+43]
      176 GETTABLEKS                       R13 R0 K52 ["imageSelection"]
      178 JUMPIFEQKNIL                     R13 ; [+40]
      180 GETTABLEKS                       R13 R0 K52 ["imageSelection"]
      182 GETTABLEKS                       R13 R13 K53 ["selectedThumbnailContent"]
      184 JUMPIFEQKNIL                     R13 ; [+34]
      186 GETUPVAL                         R12 3
      187 GETUPVAL                         R13 12
      188 DUPTABLE                         R14 K58 [{["tag"] = "bg-surface-200 radius-small", ["Size"], ["Image"], ["ScaleType"], ["LayoutOrder"], ["testId"]}]
      189 GETIMPORT                        R15 K61 [UDim2.fromOffset]
      191 LOADN                            R16 128
      192 LOADN                            R17 128
      193 CALL                             R15 2 1
      194 SETTABLEKS                       R15 R14 K55 ["Size"]
      196 GETTABLEKS                       R15 R0 K52 ["imageSelection"]
      198 GETTABLEKS                       R15 R15 K53 ["selectedThumbnailContent"]
      200 SETTABLEKS                       R15 R14 K56 ["Image"]
      202 GETIMPORT                        R15 K64 [Enum.ScaleType.Fit]
      204 SETTABLEKS                       R15 R14 K57 ["ScaleType"]
      206 MOVE                             R15 R3
      207 CALL                             R15 0 1
      208 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      210 GETUPVAL                         R15 5
      211 GETTABLEKS                       R15 R15 K17 ["InputRequested"]
      213 GETTABLEKS                       R15 R15 K42 ["SelectedImage"]
      215 SETTABLEKS                       R15 R14 K15 ["testId"]
      217 CALL                             R12 2 1
      218 JUMP                             ; [+1]
      219 LOADNIL                          R12
      220 SETTABLEKS                       R12 R11 K42 ["SelectedImage"]
      222 CALL                             R8 3 1
      223 SETTABLEKS                       R8 R7 K13 ["Content"]
      225 CALL                             R4 3 -1
      226 RETURN                           R4 -1

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
        1 GETTABLEKS                       R0 R0 K0 ["getDisabledReason"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["getDisabledReason"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1
       10 LOADNIL                          R0
       11 RETURN                           R0 1

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
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K2 ["getDisabledReason"]
       17 JUMPIFNOT                        R0 ; [+6]
       18 GETUPVAL                         R1 3
       19 JUMPIFEQKNIL                     R1 ; [+2]
       21 LOADB                            R0 0 +1
       22 LOADB                            R0 1
       23 RETURN                           R0 1
       24 LOADB                            R0 1
       25 RETURN                           R0 1

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
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

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
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R1
       39 NEWTABLE                         R9 0 2
       41 GETTABLEKS                       R10 R0 K4 ["getDisabledReason"]
       43 MOVE                             R11 R1
       44 SETLIST                          R9 R10 2 [1]
       46 CALL                             R7 2 1
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R8 R8 K2 ["useMemo"]
       50 NEWCLOSURE                       R9 P4
       51 CAPTURE                          UPVAL U1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R7
       55 NEWTABLE                         R10 0 4
       57 GETTABLEKS                       R11 R0 K5 ["canConfirm"]
       59 MOVE                             R12 R1
       60 GETTABLEKS                       R13 R0 K4 ["getDisabledReason"]
       62 MOVE                             R14 R7
       63 SETLIST                          R10 R11 4 [1]
       65 CALL                             R8 2 1
       66 GETUPVAL                         R9 1
       67 GETTABLEKS                       R9 R9 K6 ["EngineFeatureAssistantGen3dImagePreview"]
       69 JUMPIFNOT                        R9 ; [+6]
       70 GETTABLEKS                       R10 R0 K7 ["imageSelection"]
       72 JUMPIFNOTEQKNIL                  R10 ; [+2]
       74 LOADB                            R9 0 +1
       75 LOADB                            R9 1
       76 GETUPVAL                         R10 0
       77 GETTABLEKS                       R10 R10 K1 ["useCallback"]
       79 NEWCLOSURE                       R11 P5
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R9
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          VAL R1
       84 CAPTURE                          UPVAL U1
       85 NEWTABLE                         R12 0 5
       87 GETTABLEKS                       R13 R0 K8 ["editThisContent"]
       89 GETTABLEKS                       R14 R0 K9 ["contentId"]
       91 GETTABLEKS                       R15 R0 K10 ["onContinue"]
       93 MOVE                             R16 R1
       94 MOVE                             R17 R9
       95 SETLIST                          R12 R13 5 [1]
       97 CALL                             R10 2 1
       98 GETUPVAL                         R11 0
       99 GETTABLEKS                       R11 R11 K1 ["useCallback"]
      101 NEWCLOSURE                       R12 P6
      102 CAPTURE                          VAL R2
      103 NEWTABLE                         R13 0 0
      105 CALL                             R11 2 1
      106 GETUPVAL                         R12 0
      107 GETTABLEKS                       R12 R12 K1 ["useCallback"]
      109 NEWCLOSURE                       R13 P7
      110 CAPTURE                          VAL R0
      111 CAPTURE                          UPVAL U2
      112 NEWTABLE                         R14 0 3
      114 GETTABLEKS                       R15 R0 K8 ["editThisContent"]
      116 GETTABLEKS                       R16 R0 K9 ["contentId"]
      118 GETTABLEKS                       R17 R0 K10 ["onContinue"]
      120 SETLIST                          R14 R15 3 [1]
      122 CALL                             R12 2 1
      123 GETUPVAL                         R13 0
      124 GETTABLEKS                       R13 R13 K2 ["useMemo"]
      126 DUPCLOSURE                       R14 K11 [PROTO_17]
      127 CAPTURE                          UPVAL U3
      128 NEWTABLE                         R15 0 1
      130 GETUPVAL                         R16 3
      131 GETTABLEKS                       R16 R16 K12 ["locale"]
      133 SETLIST                          R15 R16 1 [1]
      135 CALL                             R13 2 1
      136 GETUPVAL                         R14 4
      137 CALL                             R14 0 1
      138 GETUPVAL                         R15 5
      139 GETTABLEKS                       R15 R15 K13 ["Hooks"]
      141 GETTABLEKS                       R15 R15 K14 ["useTokens"]
      143 CALL                             R15 0 1
      144 DUPTABLE                         R16 K19 [{"TitleRow", "Description", "PropertyRows", "DisabledReason"}]
      145 GETUPVAL                         R18 1
      146 GETTABLEKS                       R18 R18 K20 ["FFlagAssistantSegmentationPromptModeSelector"]
      148 JUMPIFNOT                        R18 ; [+84]
      149 GETUPVAL                         R17 6
      150 GETUPVAL                         R18 7
      151 DUPTABLE                         R19 K23 [{"tag", "LayoutOrder"}]
      152 GETUPVAL                         R21 1
      153 GETTABLEKS                       R21 R21 K24 ["FFlagAssistantMoveToolButtonsToTheRight"]
      155 JUMPIFNOT                        R21 ; [+2]
      156 LOADK                            R20 K25 ["row flex-x-between align-y-center gap-small size-full-0 auto-y padding-bottom-medium"]
      157 JUMP                             ; [+1]
      158 LOADK                            R20 K26 ["row align-y-center gap-small size-full-0 auto-y padding-bottom-medium"]
      159 SETTABLEKS                       R20 R19 K21 ["tag"]
      161 MOVE                             R20 R14
      162 CALL                             R20 0 1
      163 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
      165 DUPTABLE                         R20 K29 [{"Title", "CloseButton"}]
      166 GETUPVAL                         R21 6
      167 GETUPVAL                         R22 8
      168 DUPTABLE                         R23 K32 [{["tag"] = "auto-xy text-title-medium text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      169 GETTABLEKS                       R24 R0 K33 ["title"]
      171 SETTABLEKS                       R24 R23 K31 ["Text"]
      173 MOVE                             R24 R14
      174 CALL                             R24 0 1
      175 SETTABLEKS                       R24 R23 K22 ["LayoutOrder"]
      177 CALL                             R21 2 1
      178 SETTABLEKS                       R21 R20 K27 ["Title"]
      180 GETTABLEKS                       R21 R0 K34 ["onClose"]
      182 JUMPIFNOT                        R21 ; [+46]
      183 GETUPVAL                         R21 6
      184 GETUPVAL                         R22 9
      185 DUPTABLE                         R23 K40 [{"icon", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      186 GETUPVAL                         R24 5
      187 GETTABLEKS                       R24 R24 K41 ["Enums"]
      189 GETTABLEKS                       R24 R24 K42 ["IconName"]
      191 GETTABLEKS                       R24 R24 K43 ["X"]
      193 SETTABLEKS                       R24 R23 K35 ["icon"]
      195 GETUPVAL                         R24 5
      196 GETTABLEKS                       R24 R24 K41 ["Enums"]
      198 GETTABLEKS                       R24 R24 K44 ["InputSize"]
      200 GETTABLEKS                       R24 R24 K45 ["XSmall"]
      202 SETTABLEKS                       R24 R23 K36 ["size"]
      204 GETUPVAL                         R24 5
      205 GETTABLEKS                       R24 R24 K41 ["Enums"]
      207 GETTABLEKS                       R24 R24 K46 ["ButtonVariant"]
      209 GETTABLEKS                       R24 R24 K47 ["Utility"]
      211 SETTABLEKS                       R24 R23 K37 ["variant"]
      213 GETTABLEKS                       R24 R0 K34 ["onClose"]
      215 SETTABLEKS                       R24 R23 K38 ["onActivated"]
      217 GETUPVAL                         R24 10
      218 GETTABLEKS                       R24 R24 K48 ["InputRequested"]
      220 GETTABLEKS                       R24 R24 K28 ["CloseButton"]
      222 SETTABLEKS                       R24 R23 K39 ["testId"]
      224 MOVE                             R24 R14
      225 CALL                             R24 0 1
      226 SETTABLEKS                       R24 R23 K22 ["LayoutOrder"]
      228 CALL                             R21 2 1
      229 SETTABLEKS                       R21 R20 K28 ["CloseButton"]
      231 CALL                             R17 3 1
      232 JUMP                             ; [+12]
      233 GETUPVAL                         R17 6
      234 GETUPVAL                         R18 8
      235 DUPTABLE                         R19 K50 [{["tag"] = "size-full-0 auto-xy padding-bottom-medium text-title-medium text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      236 GETTABLEKS                       R20 R0 K33 ["title"]
      238 SETTABLEKS                       R20 R19 K31 ["Text"]
      240 MOVE                             R20 R14
      241 CALL                             R20 0 1
      242 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
      244 CALL                             R17 2 1
      245 SETTABLEKS                       R17 R16 K15 ["TitleRow"]
      247 GETTABLEKS                       R17 R0 K51 ["description"]
      249 JUMPIFNOT                        R17 ; [+12]
      250 GETUPVAL                         R17 6
      251 GETUPVAL                         R18 8
      252 DUPTABLE                         R19 K53 [{["tag"] = "size-full-0 auto-xy padding-bottom-small text-body-small text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      253 GETTABLEKS                       R20 R0 K51 ["description"]
      255 SETTABLEKS                       R20 R19 K31 ["Text"]
      257 MOVE                             R20 R14
      258 CALL                             R20 0 1
      259 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
      261 CALL                             R17 2 1
      262 SETTABLEKS                       R17 R16 K16 ["Description"]
      264 GETTABLEKS                       R17 R0 K3 ["propertyRows"]
      266 JUMPIFNOT                        R17 ; [+16]
      267 GETUPVAL                         R17 6
      268 GETUPVAL                         R18 11
      269 GETTABLEKS                       R18 R18 K17 ["PropertyRows"]
      271 DUPTABLE                         R19 K56 [{"rowDefinitions", "onChange", "LayoutOrder"}]
      272 GETTABLEKS                       R20 R0 K3 ["propertyRows"]
      274 SETTABLEKS                       R20 R19 K54 ["rowDefinitions"]
      276 SETTABLEKS                       R11 R19 K55 ["onChange"]
      278 MOVE                             R20 R14
      279 CALL                             R20 0 1
      280 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
      282 CALL                             R17 2 1
      283 SETTABLEKS                       R17 R16 K17 ["PropertyRows"]
      285 MOVE                             R17 R7
      286 JUMPIFNOT                        R17 ; [+57]
      287 GETUPVAL                         R17 6
      288 GETUPVAL                         R18 7
      289 DUPTABLE                         R19 K58 [{["tag"] = "row align-y-center gap-xsmall size-full-0 auto-xy padding-top-medium", ["LayoutOrder"]}]
      290 MOVE                             R20 R14
      291 CALL                             R20 0 1
      292 SETTABLEKS                       R20 R19 K22 ["LayoutOrder"]
      294 DUPTABLE                         R20 K61 [{"ErrorIcon", "ErrorText"}]
      295 GETUPVAL                         R21 6
      296 GETUPVAL                         R22 12
      297 DUPTABLE                         R23 K64 [{"name", "style", "size", "LayoutOrder"}]
      298 GETUPVAL                         R24 5
      299 GETTABLEKS                       R24 R24 K41 ["Enums"]
      301 GETTABLEKS                       R24 R24 K42 ["IconName"]
      303 GETTABLEKS                       R24 R24 K65 ["TriangleExclamation"]
      305 SETTABLEKS                       R24 R23 K62 ["name"]
      307 GETTABLEKS                       R24 R15 K66 ["Color"]
      309 GETTABLEKS                       R24 R24 K67 ["Content"]
      311 GETTABLEKS                       R24 R24 K68 ["Emphasis"]
      313 SETTABLEKS                       R24 R23 K63 ["style"]
      315 GETUPVAL                         R24 5
      316 GETTABLEKS                       R24 R24 K41 ["Enums"]
      318 GETTABLEKS                       R24 R24 K69 ["IconSize"]
      320 GETTABLEKS                       R24 R24 K45 ["XSmall"]
      322 SETTABLEKS                       R24 R23 K36 ["size"]
      324 MOVE                             R24 R14
      325 CALL                             R24 0 1
      326 SETTABLEKS                       R24 R23 K22 ["LayoutOrder"]
      328 CALL                             R21 2 1
      329 SETTABLEKS                       R21 R20 K59 ["ErrorIcon"]
      331 GETUPVAL                         R21 6
      332 GETUPVAL                         R22 8
      333 DUPTABLE                         R23 K71 [{["tag"] = "auto-xy text-body-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      334 SETTABLEKS                       R7 R23 K31 ["Text"]
      336 MOVE                             R24 R14
      337 CALL                             R24 0 1
      338 SETTABLEKS                       R24 R23 K22 ["LayoutOrder"]
      340 CALL                             R21 2 1
      341 SETTABLEKS                       R21 R20 K60 ["ErrorText"]
      343 CALL                             R17 3 1
      344 SETTABLEKS                       R17 R16 K18 ["DisabledReason"]
      346 MOVE                             R17 R14
      347 CALL                             R17 0 1
      348 GETUPVAL                         R18 6
      349 GETUPVAL                         R19 7
      350 DUPTABLE                         R20 K23 [{"tag", "LayoutOrder"}]
      351 NEWTABLE                         R21 2 0
      353 GETUPVAL                         R22 1
      354 GETTABLEKS                       R22 R22 K24 ["FFlagAssistantMoveToolButtonsToTheRight"]
      356 SETTABLEKS                       R22 R21 K72 ["row align-x-right gap-small size-full-0 auto-y padding-top-medium"]
      358 GETUPVAL                         R23 1
      359 GETTABLEKS                       R23 R23 K24 ["FFlagAssistantMoveToolButtonsToTheRight"]
      361 NOT                              R22 R23
      362 SETTABLEKS                       R22 R21 K73 ["row gap-small size-full-0 auto-xy padding-top-medium"]
      364 SETTABLEKS                       R21 R20 K21 ["tag"]
      366 MOVE                             R21 R14
      367 CALL                             R21 0 1
      368 SETTABLEKS                       R21 R20 K22 ["LayoutOrder"]
      370 DUPTABLE                         R21 K76 [{"ConfirmButton", "CancelButton"}]
      371 GETUPVAL                         R22 6
      372 GETUPVAL                         R23 13
      373 DUPTABLE                         R24 K79 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      374 GETTABLEKS                       R25 R0 K80 ["confirmButtonText"]
      376 JUMPIF                           R25 ; [+2]
      377 GETTABLEKS                       R25 R13 K74 ["ConfirmButton"]
      379 SETTABLEKS                       R25 R24 K77 ["text"]
      381 GETUPVAL                         R25 5
      382 GETTABLEKS                       R25 R25 K41 ["Enums"]
      384 GETTABLEKS                       R25 R25 K44 ["InputSize"]
      386 GETTABLEKS                       R25 R25 K45 ["XSmall"]
      388 SETTABLEKS                       R25 R24 K36 ["size"]
      390 GETUPVAL                         R25 5
      391 GETTABLEKS                       R25 R25 K41 ["Enums"]
      393 GETTABLEKS                       R25 R25 K46 ["ButtonVariant"]
      395 GETTABLEKS                       R25 R25 K68 ["Emphasis"]
      397 SETTABLEKS                       R25 R24 K37 ["variant"]
      399 GETUPVAL                         R26 1
      400 GETTABLEKS                       R26 R26 K20 ["FFlagAssistantSegmentationPromptModeSelector"]
      402 JUMPIFNOT                        R26 ; [+2]
      403 MOVE                             R25 R6
      404 JUMPIF                           R25 ; [+1]
      405 NOT                              R25 R8
      406 SETTABLEKS                       R25 R24 K78 ["isDisabled"]
      408 SETTABLEKS                       R10 R24 K38 ["onActivated"]
      410 MOVE                             R25 R14
      411 CALL                             R25 0 1
      412 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      414 CALL                             R22 2 1
      415 SETTABLEKS                       R22 R21 K74 ["ConfirmButton"]
      417 GETUPVAL                         R23 1
      418 GETTABLEKS                       R23 R23 K24 ["FFlagAssistantMoveToolButtonsToTheRight"]
      420 JUMPIFNOT                        R23 ; [+6]
      421 GETTABLEKS                       R24 R0 K34 ["onClose"]
      423 JUMPIFNOTEQKNIL                  R24 ; [+2]
      425 LOADB                            R23 0 +1
      426 LOADB                            R23 1
      427 NOT                              R22 R23
      428 JUMPIFNOT                        R22 ; [+32]
      429 GETUPVAL                         R22 6
      430 GETUPVAL                         R23 13
      431 DUPTABLE                         R24 K81 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      432 GETTABLEKS                       R25 R13 K75 ["CancelButton"]
      434 SETTABLEKS                       R25 R24 K77 ["text"]
      436 GETUPVAL                         R25 5
      437 GETTABLEKS                       R25 R25 K41 ["Enums"]
      439 GETTABLEKS                       R25 R25 K44 ["InputSize"]
      441 GETTABLEKS                       R25 R25 K45 ["XSmall"]
      443 SETTABLEKS                       R25 R24 K36 ["size"]
      445 GETUPVAL                         R25 5
      446 GETTABLEKS                       R25 R25 K41 ["Enums"]
      448 GETTABLEKS                       R25 R25 K46 ["ButtonVariant"]
      450 GETTABLEKS                       R25 R25 K82 ["Standard"]
      452 SETTABLEKS                       R25 R24 K37 ["variant"]
      454 SETTABLEKS                       R12 R24 K38 ["onActivated"]
      456 MOVE                             R25 R14
      457 CALL                             R25 0 1
      458 SETTABLEKS                       R25 R24 K22 ["LayoutOrder"]
      460 CALL                             R22 2 1
      461 SETTABLEKS                       R22 R21 K75 ["CancelButton"]
      463 CALL                             R18 3 1
      464 GETUPVAL                         R19 1
      465 GETTABLEKS                       R19 R19 K83 ["FFlagAssistantInputRequestedFixedFooter"]
      467 JUMPIF                           R19 ; [+2]
      468 SETTABLEKS                       R18 R16 K84 ["ButtonGroup"]
      470 GETUPVAL                         R19 6
      471 GETUPVAL                         R20 7
      472 DUPTABLE                         R21 K86 [{["tag"] = "col gap-large size-full-0 auto-xy padding-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
      473 GETTABLEKS                       R22 R0 K22 ["LayoutOrder"]
      475 SETTABLEKS                       R22 R21 K22 ["LayoutOrder"]
      477 DUPTABLE                         R22 K88 [{"Content", "FixedButtonGroup"}]
      478 GETUPVAL                         R24 1
      479 GETTABLEKS                       R24 R24 K89 ["FFlagAssistantSegmentationPanelScroll"]
      481 JUMPIFNOT                        R24 ; [+70]
      482 GETUPVAL                         R23 6
      483 LOADK                            R24 K90 ["ScrollingFrame"]
      484 DUPTABLE                         R25 K102 [{["Size"], ["AutomaticCanvasSize"], ["CanvasSize"], ["ClipsDescendants"] = True, ["ScrollingDirection"], ["VerticalScrollBarInset"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
      485 GETIMPORT                        R26 K105 [UDim2.new]
      487 LOADN                            R27 1
      488 LOADN                            R28 0
      489 LOADN                            R29 0
      490 FASTCALL2K                       MATH_MIN R3 K106 ; [+5]
      492 MOVE                             R31 R3
      493 LOADK                            R32 K106 [375]
      494 GETIMPORT                        R30 K109 [math.min]
      496 CALL                             R30 2 1
      497 CALL                             R26 4 1
      498 SETTABLEKS                       R26 R25 K91 ["Size"]
      500 GETIMPORT                        R26 K113 [Enum.AutomaticSize.Y]
      502 SETTABLEKS                       R26 R25 K92 ["AutomaticCanvasSize"]
      504 GETIMPORT                        R26 K105 [UDim2.new]
      506 LOADN                            R27 0
      507 LOADN                            R28 0
      508 LOADN                            R29 0
      509 LOADN                            R30 0
      510 CALL                             R26 4 1
      511 SETTABLEKS                       R26 R25 K93 ["CanvasSize"]
      513 GETIMPORT                        R26 K114 [Enum.ScrollingDirection.Y]
      515 SETTABLEKS                       R26 R25 K96 ["ScrollingDirection"]
      517 GETIMPORT                        R26 K117 [Enum.ScrollBarInset.ScrollBar]
      519 SETTABLEKS                       R26 R25 K97 ["VerticalScrollBarInset"]
      521 SETTABLEKS                       R17 R25 K22 ["LayoutOrder"]
      523 GETUPVAL                         R26 14
      524 GETTABLEKS                       R26 R26 K118 ["join"]
      526 MOVE                             R27 R16
      527 DUPTABLE                         R28 K120 [{"Layout"}]
      528 GETUPVAL                         R29 6
      529 LOADK                            R30 K121 ["UIListLayout"]
      530 NEWTABLE                         R31 4 0
      532 GETIMPORT                        R32 K124 [Enum.FillDirection.Vertical]
      534 SETTABLEKS                       R32 R31 K122 ["FillDirection"]
      536 GETIMPORT                        R32 K126 [Enum.SortOrder.LayoutOrder]
      538 SETTABLEKS                       R32 R31 K125 ["SortOrder"]
      540 GETUPVAL                         R32 0
      541 GETTABLEKS                       R32 R32 K127 ["Change"]
      543 GETTABLEKS                       R32 R32 K128 ["AbsoluteContentSize"]
      545 SETTABLE                         R5 R31 R32
      546 CALL                             R29 2 1
      547 SETTABLEKS                       R29 R28 K119 ["Layout"]
      549 CALL                             R26 2 -1
      550 CALL                             R23 -1 1
      551 JUMP                             ; [+7]
      552 GETUPVAL                         R23 6
      553 GETUPVAL                         R24 7
      554 DUPTABLE                         R25 K130 [{["tag"] = "col size-full-0 auto-xy", ["LayoutOrder"]}]
      555 SETTABLEKS                       R17 R25 K22 ["LayoutOrder"]
      557 MOVE                             R26 R16
      558 CALL                             R23 3 1
      559 SETTABLEKS                       R23 R22 K67 ["Content"]
      561 GETUPVAL                         R24 1
      562 GETTABLEKS                       R24 R24 K83 ["FFlagAssistantInputRequestedFixedFooter"]
      564 JUMPIFNOT                        R24 ; [+2]
      565 MOVE                             R23 R18
      566 JUMPIF                           R23 ; [+1]
      567 LOADNIL                          R23
      568 SETTABLEKS                       R23 R22 K87 ["FixedButtonGroup"]
      570 CALL                             R19 3 -1
      571 RETURN                           R19 -1

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
      168 LOADB                            R19 0
      169 GETTABLEKS                       R20 R1 K19 ["previewedIndex"]
      171 JUMPIFEQKNIL                     R20 ; [+11]
      173 GETTABLEKS                       R21 R1 K20 ["previewedThumbnailContent"]
      175 FASTCALL1                        TYPEOF R21 ; [+2]
      176 GETIMPORT                        R20 K22 [typeof]
      178 CALL                             R20 1 1
      179 JUMPIFEQKS                       R20 K23 ["string"] ; [+2]
      181 LOADB                            R19 0 +1
      182 LOADB                            R19 1
      183 LOADB                            R20 0
      184 JUMPIFEQKNIL                     R2 ; [+15]
      186 LOADB                            R20 0
      187 JUMPIFEQKNIL                     R11 ; [+12]
      189 LOADB                            R20 0
      190 GETTABLE                         R21 R11 R2
      191 JUMPIFEQKNIL                     R21 ; [+8]
      193 GETTABLE                         R21 R11 R2
      194 GETTABLEKS                       R21 R21 K24 ["status"]
      196 JUMPIFEQKS                       R21 K25 ["Ready"] ; [+2]
      198 LOADB                            R20 0 +1
      199 LOADB                            R20 1
      200 GETUPVAL                         R21 2
      201 CALL                             R21 0 1
      202 MOVE                             R22 R21
      203 CALL                             R22 0 1
      204 GETUPVAL                         R23 3
      205 GETUPVAL                         R24 4
      206 DUPTABLE                         R25 K30 [{["tag"] = "size-full-0 auto-xy text-title-medium content-emphasis padding-bottom-medium text-align-x-left text-truncate-end", ["Text"], ["LayoutOrder"]}]
      207 GETTABLEKS                       R26 R0 K31 ["title"]
      209 SETTABLEKS                       R26 R25 K28 ["Text"]
      211 MOVE                             R26 R21
      212 CALL                             R26 0 1
      213 SETTABLEKS                       R26 R25 K29 ["LayoutOrder"]
      215 CALL                             R23 2 1
      216 GETTABLEKS                       R25 R1 K32 ["wizardMode"]
      218 NOT                              R24 R25
      219 JUMPIFNOT                        R24 ; [+24]
      220 GETTABLEKS                       R24 R0 K33 ["propertyRows"]
      222 JUMPIFNOT                        R24 ; [+21]
      223 GETUPVAL                         R24 3
      224 GETUPVAL                         R25 5
      225 GETTABLEKS                       R25 R25 K34 ["PropertyRows"]
      227 DUPTABLE                         R26 K39 [{["rowDefinitions"], ["onChange"], ["isDisabled"] = True, ["LayoutOrder"]}]
      228 GETTABLEKS                       R27 R0 K33 ["propertyRows"]
      230 SETTABLEKS                       R27 R26 K35 ["rowDefinitions"]
      232 GETUPVAL                         R27 6
      233 GETTABLEKS                       R27 R27 K40 ["createUnimplemented"]
      235 LOADK                            R28 K41 ["onChanged"]
      236 CALL                             R27 1 1
      237 SETTABLEKS                       R27 R26 K36 ["onChange"]
      239 MOVE                             R27 R21
      240 CALL                             R27 0 1
      241 SETTABLEKS                       R27 R26 K29 ["LayoutOrder"]
      243 CALL                             R24 2 1
      244 GETUPVAL                         R25 3
      245 GETUPVAL                         R26 7
      246 DUPTABLE                         R27 K43 [{"slots", "onSelect", "onPreview", "selectedIndex", "LayoutOrder"}]
      247 GETTABLEKS                       R28 R1 K10 ["slots"]
      249 JUMPIF                           R28 ; [+2]
      250 NEWTABLE                         R28 0 0
      252 SETTABLEKS                       R28 R27 K10 ["slots"]
      254 SETTABLEKS                       R12 R27 K12 ["onSelect"]
      256 SETTABLEKS                       R13 R27 K11 ["onPreview"]
      258 SETTABLEKS                       R2 R27 K42 ["selectedIndex"]
      260 MOVE                             R28 R21
      261 CALL                             R28 0 1
      262 SETTABLEKS                       R28 R27 K29 ["LayoutOrder"]
      264 CALL                             R25 2 1
      265 GETUPVAL                         R26 3
      266 GETUPVAL                         R27 8
      267 DUPTABLE                         R28 K45 [{["tag"] = "row size-full-0 auto-xy gap-small padding-top-medium", ["LayoutOrder"]}]
      268 MOVE                             R29 R21
      269 CALL                             R29 0 1
      270 SETTABLEKS                       R29 R28 K29 ["LayoutOrder"]
      272 DUPTABLE                         R29 K49 [{"BackButton", "RefreshButton", "ConfirmButton"}]
      273 GETUPVAL                         R30 3
      274 GETUPVAL                         R31 9
      275 DUPTABLE                         R32 K54 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      276 GETTABLEKS                       R33 R18 K46 ["BackButton"]
      278 SETTABLEKS                       R33 R32 K50 ["text"]
      280 GETUPVAL                         R33 10
      281 GETTABLEKS                       R33 R33 K55 ["Enums"]
      283 GETTABLEKS                       R33 R33 K56 ["InputSize"]
      285 GETTABLEKS                       R33 R33 K57 ["XSmall"]
      287 SETTABLEKS                       R33 R32 K51 ["size"]
      289 GETUPVAL                         R33 10
      290 GETTABLEKS                       R33 R33 K55 ["Enums"]
      292 GETTABLEKS                       R33 R33 K58 ["ButtonVariant"]
      294 GETTABLEKS                       R33 R33 K59 ["Standard"]
      296 SETTABLEKS                       R33 R32 K52 ["variant"]
      298 SETTABLEKS                       R16 R32 K53 ["onActivated"]
      300 MOVE                             R33 R21
      301 CALL                             R33 0 1
      302 SETTABLEKS                       R33 R32 K29 ["LayoutOrder"]
      304 CALL                             R30 2 1
      305 SETTABLEKS                       R30 R29 K46 ["BackButton"]
      307 GETTABLEKS                       R30 R1 K15 ["onRefresh"]
      309 JUMPIFNOT                        R30 ; [+40]
      310 GETUPVAL                         R30 3
      311 GETUPVAL                         R31 11
      312 DUPTABLE                         R32 K61 [{"icon", "size", "variant", "onActivated", "LayoutOrder"}]
      313 DUPTABLE                         R33 K63 [{"name"}]
      314 GETUPVAL                         R34 10
      315 GETTABLEKS                       R34 R34 K55 ["Enums"]
      317 GETTABLEKS                       R34 R34 K64 ["IconName"]
      319 GETTABLEKS                       R34 R34 K65 ["TwoArrowsSpinClockwise"]
      321 SETTABLEKS                       R34 R33 K62 ["name"]
      323 SETTABLEKS                       R33 R32 K60 ["icon"]
      325 GETUPVAL                         R33 10
      326 GETTABLEKS                       R33 R33 K55 ["Enums"]
      328 GETTABLEKS                       R33 R33 K56 ["InputSize"]
      330 GETTABLEKS                       R33 R33 K57 ["XSmall"]
      332 SETTABLEKS                       R33 R32 K51 ["size"]
      334 GETUPVAL                         R33 10
      335 GETTABLEKS                       R33 R33 K55 ["Enums"]
      337 GETTABLEKS                       R33 R33 K58 ["ButtonVariant"]
      339 GETTABLEKS                       R33 R33 K59 ["Standard"]
      341 SETTABLEKS                       R33 R32 K52 ["variant"]
      343 SETTABLEKS                       R17 R32 K53 ["onActivated"]
      345 MOVE                             R33 R21
      346 CALL                             R33 0 1
      347 SETTABLEKS                       R33 R32 K29 ["LayoutOrder"]
      349 CALL                             R30 2 1
      350 SETTABLEKS                       R30 R29 K47 ["RefreshButton"]
      352 GETUPVAL                         R30 3
      353 GETUPVAL                         R31 9
      354 DUPTABLE                         R32 K66 [{"text", "size", "variant", "onActivated", "isDisabled", "LayoutOrder"}]
      355 GETTABLEKS                       R33 R18 K48 ["ConfirmButton"]
      357 SETTABLEKS                       R33 R32 K50 ["text"]
      359 GETUPVAL                         R33 10
      360 GETTABLEKS                       R33 R33 K55 ["Enums"]
      362 GETTABLEKS                       R33 R33 K56 ["InputSize"]
      364 GETTABLEKS                       R33 R33 K57 ["XSmall"]
      366 SETTABLEKS                       R33 R32 K51 ["size"]
      368 GETUPVAL                         R33 10
      369 GETTABLEKS                       R33 R33 K55 ["Enums"]
      371 GETTABLEKS                       R33 R33 K58 ["ButtonVariant"]
      373 GETTABLEKS                       R33 R33 K67 ["Emphasis"]
      375 SETTABLEKS                       R33 R32 K52 ["variant"]
      377 SETTABLEKS                       R14 R32 K53 ["onActivated"]
      379 NOT                              R33 R20
      380 SETTABLEKS                       R33 R32 K37 ["isDisabled"]
      382 MOVE                             R33 R21
      383 CALL                             R33 0 1
      384 SETTABLEKS                       R33 R32 K29 ["LayoutOrder"]
      386 CALL                             R30 2 1
      387 SETTABLEKS                       R30 R29 K48 ["ConfirmButton"]
      389 CALL                             R26 3 1
      390 GETUPVAL                         R27 3
      391 GETUPVAL                         R28 8
      392 DUPTABLE                         R29 K69 [{["tag"] = "col size-full-0 auto-xy radius-medium padding-medium gap-large stroke-standard stroke-default", ["LayoutOrder"]}]
      393 GETTABLEKS                       R30 R0 K29 ["LayoutOrder"]
      395 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      397 DUPTABLE                         R30 K72 [{"Content", "FixedButtonGroup"}]
      398 GETUPVAL                         R31 3
      399 LOADK                            R32 K73 ["ScrollingFrame"]
      400 NEWTABLE                         R33 16 0
      402 GETIMPORT                        R34 K76 [UDim2.new]
      404 LOADN                            R35 1
      405 LOADN                            R36 0
      406 LOADN                            R37 0
      407 FASTCALL2K                       MATH_MIN R4 K77 ; [+5]
      409 MOVE                             R39 R4
      410 LOADK                            R40 K77 [375]
      411 GETIMPORT                        R38 K80 [math.min]
      413 CALL                             R38 2 1
      414 CALL                             R34 4 1
      415 SETTABLEKS                       R34 R33 K81 ["Size"]
      417 GETIMPORT                        R34 K85 [Enum.AutomaticSize.Y]
      419 SETTABLEKS                       R34 R33 K86 ["AutomaticCanvasSize"]
      421 GETIMPORT                        R34 K76 [UDim2.new]
      423 LOADN                            R35 0
      424 LOADN                            R36 0
      425 LOADN                            R37 0
      426 LOADN                            R38 0
      427 CALL                             R34 4 1
      428 SETTABLEKS                       R34 R33 K87 ["CanvasSize"]
      430 LOADB                            R34 1
      431 SETTABLEKS                       R34 R33 K88 ["ClipsDescendants"]
      433 GETIMPORT                        R34 K90 [Enum.ScrollingDirection.Y]
      435 SETTABLEKS                       R34 R33 K89 ["ScrollingDirection"]
      437 GETIMPORT                        R34 K93 [Enum.ScrollBarInset.ScrollBar]
      439 SETTABLEKS                       R34 R33 K94 ["VerticalScrollBarInset"]
      441 LOADN                            R34 1
      442 SETTABLEKS                       R34 R33 K95 ["BackgroundTransparency"]
      444 LOADN                            R34 0
      445 SETTABLEKS                       R34 R33 K96 ["BorderSizePixel"]
      447 SETTABLEKS                       R22 R33 K29 ["LayoutOrder"]
      449 SETTABLEKS                       R6 R33 K97 ["ref"]
      451 GETUPVAL                         R34 0
      452 GETTABLEKS                       R34 R34 K98 ["Change"]
      454 GETTABLEKS                       R34 R34 K99 ["CanvasPosition"]
      456 SETTABLE                         R9 R33 R34
      457 DUPTABLE                         R34 K105 [{"Layout", "Title", "PropertyRows", "Picker", "ButtonGroup", "PreviewPopover"}]
      458 GETUPVAL                         R35 3
      459 LOADK                            R36 K106 ["UIListLayout"]
      460 NEWTABLE                         R37 4 0
      462 GETIMPORT                        R38 K109 [Enum.FillDirection.Vertical]
      464 SETTABLEKS                       R38 R37 K107 ["FillDirection"]
      466 GETIMPORT                        R38 K111 [Enum.SortOrder.LayoutOrder]
      468 SETTABLEKS                       R38 R37 K110 ["SortOrder"]
      470 GETUPVAL                         R38 0
      471 GETTABLEKS                       R38 R38 K98 ["Change"]
      473 GETTABLEKS                       R38 R38 K112 ["AbsoluteContentSize"]
      475 SETTABLE                         R10 R37 R38
      476 CALL                             R35 2 1
      477 SETTABLEKS                       R35 R34 K100 ["Layout"]
      479 SETTABLEKS                       R23 R34 K101 ["Title"]
      481 SETTABLEKS                       R24 R34 K34 ["PropertyRows"]
      483 SETTABLEKS                       R25 R34 K102 ["Picker"]
      485 GETUPVAL                         R36 12
      486 GETTABLEKS                       R36 R36 K113 ["FFlagAssistantInputRequestedFixedFooter"]
      488 JUMPIFNOT                        R36 ; [+2]
      489 LOADNIL                          R35
      490 JUMP                             ; [+1]
      491 MOVE                             R35 R26
      492 SETTABLEKS                       R35 R34 K103 ["ButtonGroup"]
      494 GETUPVAL                         R35 3
      495 GETUPVAL                         R36 13
      496 DUPTABLE                         R37 K117 [{"visible", "imageContent", "onClose"}]
      497 SETTABLEKS                       R19 R37 K114 ["visible"]
      499 GETTABLEKS                       R38 R1 K20 ["previewedThumbnailContent"]
      501 SETTABLEKS                       R38 R37 K115 ["imageContent"]
      503 SETTABLEKS                       R15 R37 K116 ["onClose"]
      505 CALL                             R35 2 1
      506 SETTABLEKS                       R35 R34 K104 ["PreviewPopover"]
      508 CALL                             R31 3 1
      509 SETTABLEKS                       R31 R30 K70 ["Content"]
      511 GETUPVAL                         R32 12
      512 GETTABLEKS                       R32 R32 K113 ["FFlagAssistantInputRequestedFixedFooter"]
      514 JUMPIFNOT                        R32 ; [+2]
      515 MOVE                             R31 R26
      516 JUMP                             ; [+1]
      517 LOADNIL                          R31
      518 SETTABLEKS                       R31 R30 K71 ["FixedButtonGroup"]
      520 CALL                             R27 3 -1
      521 RETURN                           R27 -1

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
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETTABLEKS                       R4 R4 K10 ["DEPRECATED_PropertyRows"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["Dash"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["Flags"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K11 ["Parent"]
       46 GETTABLEKS                       R7 R7 K14 ["Foundation"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K6 ["Components"]
       53 GETTABLEKS                       R8 R8 K15 ["ImageSelection"]
       55 GETTABLEKS                       R8 R8 K16 ["ImageSelectionPicker"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K6 ["Components"]
       62 GETTABLEKS                       R9 R9 K15 ["ImageSelection"]
       64 GETTABLEKS                       R9 R9 K17 ["ImageSelectionTypes"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K6 ["Components"]
       71 GETTABLEKS                       R10 R10 K8 ["Contexts"]
       73 GETTABLEKS                       R10 R10 K18 ["InputAreaOverrideContext"]
       75 CALL                             R9 1 1
       76 GETIMPORT                        R10 K5 [require]
       78 GETTABLEKS                       R11 R0 K6 ["Components"]
       80 GETTABLEKS                       R11 R11 K15 ["ImageSelection"]
       82 GETTABLEKS                       R11 R11 K19 ["PreviewPopoverHost"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K5 [require]
       87 GETTABLEKS                       R12 R0 K11 ["Parent"]
       89 GETTABLEKS                       R12 R12 K20 ["React"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K5 [require]
       94 GETTABLEKS                       R13 R0 K11 ["Parent"]
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
      129 GETTABLEKS                       R17 R6 K30 ["Button"]
      131 GETTABLEKS                       R18 R6 K31 ["Icon"]
      133 GETTABLEKS                       R19 R6 K32 ["IconButton"]
      135 GETTABLEKS                       R20 R6 K33 ["Image"]
      137 GETTABLEKS                       R21 R6 K34 ["Text"]
      139 GETTABLEKS                       R22 R6 K35 ["View"]
      141 GETTABLEKS                       R23 R11 K36 ["createElement"]
      143 GETTABLEKS                       R24 R12 K37 ["createNextOrder"]
      145 DUPTABLE                         R25 K41 [{["Required"] = "Required", ["Recorded"] = "Recorded", ["Cancelled"] = "Cancelled"}]
      146 GETTABLEKS                       R26 R8 K42 ["ImageSelectionPhase"]
      148 DUPCLOSURE                       R27 K43 [PROTO_2]
      149 CAPTURE                          VAL R11
      150 CAPTURE                          VAL R15
      151 CAPTURE                          VAL R24
      152 CAPTURE                          VAL R23
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R21
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R6
      158 CAPTURE                          VAL R3
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R5
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
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R25
      174 CAPTURE                          VAL R15
      175 CAPTURE                          VAL R24
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R23
      178 CAPTURE                          VAL R22
      179 CAPTURE                          VAL R21
      180 CAPTURE                          VAL R19
      181 CAPTURE                          VAL R14
      182 CAPTURE                          VAL R3
      183 CAPTURE                          VAL R18
      184 CAPTURE                          VAL R17
      185 CAPTURE                          VAL R4
      186 DUPCLOSURE                       R31 K47 [PROTO_31]
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R15
      189 CAPTURE                          VAL R24
      190 CAPTURE                          VAL R23
      191 CAPTURE                          VAL R21
      192 CAPTURE                          VAL R3
      193 CAPTURE                          VAL R12
      194 CAPTURE                          VAL R7
      195 CAPTURE                          VAL R22
      196 CAPTURE                          VAL R17
      197 CAPTURE                          VAL R6
      198 CAPTURE                          VAL R19
      199 CAPTURE                          VAL R5
      200 CAPTURE                          VAL R10
      201 DUPCLOSURE                       R32 K48 [PROTO_32]
      202 CAPTURE                          VAL R5
      203 CAPTURE                          VAL R26
      204 DUPCLOSURE                       R33 K49 [PROTO_39]
      205 CAPTURE                          VAL R5
      206 CAPTURE                          VAL R25
      207 CAPTURE                          VAL R11
      208 CAPTURE                          VAL R9
      209 CAPTURE                          VAL R2
      210 CAPTURE                          VAL R26
      211 CAPTURE                          VAL R23
      212 CAPTURE                          VAL R31
      213 CAPTURE                          VAL R30
      214 CAPTURE                          VAL R27
      215 CAPTURE                          VAL R28
      216 DUPTABLE                         R34 K52 [{"toMeta", "fromMeta"}]
      217 DUPCLOSURE                       R35 K53 [PROTO_40]
      218 CAPTURE                          VAL R25
      219 SETTABLEKS                       R35 R34 K50 ["toMeta"]
      221 DUPCLOSURE                       R35 K54 [PROTO_41]
      222 CAPTURE                          VAL R25
      223 CAPTURE                          VAL R12
      224 SETTABLEKS                       R35 R34 K51 ["fromMeta"]
      226 DUPTABLE                         R35 K60 [{["Type"] = "InputRequested", ["ContentWidget"], ["Serialization"], ["InputStatus"]}]
      227 GETTABLEKS                       R36 R11 K61 ["memo"]
      229 MOVE                             R37 R33
      230 CALL                             R36 1 1
      231 SETTABLEKS                       R36 R35 K57 ["ContentWidget"]
      233 SETTABLEKS                       R34 R35 K58 ["Serialization"]
      235 SETTABLEKS                       R25 R35 K59 ["InputStatus"]
      237 RETURN                           R35 1
