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
      145 DUPTABLE                         R11 K42 [{"PropertyRows"}]
      146 GETTABLEKS                       R12 R0 K5 ["propertyRows"]
      148 JUMPIFNOT                        R12 ; [+21]
      149 GETUPVAL                         R12 3
      150 GETUPVAL                         R13 9
      151 GETTABLEKS                       R13 R13 K41 ["PropertyRows"]
      153 DUPTABLE                         R14 K47 [{["rowDefinitions"], ["onChange"], ["isDisabled"] = True, ["LayoutOrder"]}]
      154 GETTABLEKS                       R15 R0 K5 ["propertyRows"]
      156 SETTABLEKS                       R15 R14 K43 ["rowDefinitions"]
      158 GETUPVAL                         R15 10
      159 GETTABLEKS                       R15 R15 K48 ["createUnimplemented"]
      161 LOADK                            R16 K49 ["onChanged"]
      162 CALL                             R15 1 1
      163 SETTABLEKS                       R15 R14 K44 ["onChange"]
      165 MOVE                             R15 R3
      166 CALL                             R15 0 1
      167 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      169 CALL                             R12 2 1
      170 SETTABLEKS                       R12 R11 K41 ["PropertyRows"]
      172 CALL                             R8 3 1
      173 SETTABLEKS                       R8 R7 K13 ["Content"]
      175 CALL                             R4 3 -1
      176 RETURN                           R4 -1

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
       14 LOADB                            R0 1
       15 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Recorded"]
        3 SETTABLEKS                       R1 R0 K1 ["status"]
        5 GETTABLEKS                       R1 R0 K2 ["propertyRows"]
        7 JUMPIFNOT                        R1 ; [+31]
        8 GETIMPORT                        R1 K5 [table.clone]
       10 GETTABLEKS                       R2 R0 K2 ["propertyRows"]
       12 CALL                             R1 1 1
       13 MOVE                             R2 R1
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 GETIMPORT                        R7 K5 [table.clone]
       19 MOVE                             R8 R6
       20 CALL                             R7 1 1
       21 GETUPVAL                         R9 1
       22 GETTABLEKS                       R10 R6 K6 ["prop"]
       24 GETTABLE                         R8 R9 R10
       25 SETTABLEKS                       R8 R7 K7 ["initialValue"]
       27 GETUPVAL                         R8 2
       28 GETTABLEKS                       R8 R8 K8 ["FFlagAssistantSegmentationPromptModeSelector"]
       30 JUMPIFNOT                        R8 ; [+3]
       31 LOADB                            R8 0
       32 SETTABLEKS                       R8 R7 K9 ["isLoading"]
       34 SETTABLE                         R7 R1 R5
       35 FORGLOOP                         R2 2 ; [-19]
       37 SETTABLEKS                       R1 R0 K2 ["propertyRows"]
       39 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["editThisContent"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["contentId"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K2 ["onContinue"]
       14 JUMPIFNOT                        R0 ; [+6]
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K2 ["onContinue"]
       18 LOADB                            R1 1
       19 GETUPVAL                         R2 2
       20 CALL                             R0 2 0
       21 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 MOVE                             R2 R0
        4 NEWTABLE                         R3 1 0
        6 GETUPVAL                         R4 1
        7 GETUPVAL                         R5 2
        8 SETTABLE                         R5 R3 R4
        9 CALL                             R1 2 1
       10 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Cancelled"]
        3 SETTABLEKS                       R1 R0 K1 ["status"]
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["editThisContent"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["contentId"]
        6 DUPCLOSURE                       R2 K2 [PROTO_14]
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

PROTO_16:
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

PROTO_17:
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
       42 GETTABLEKS                       R10 R0 K4 ["canConfirm"]
       44 MOVE                             R11 R1
       45 SETLIST                          R9 R10 2 [1]
       47 CALL                             R7 2 1
       48 GETUPVAL                         R8 0
       49 GETTABLEKS                       R8 R8 K1 ["useCallback"]
       51 NEWCLOSURE                       R9 P4
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U2
       54 CAPTURE                          VAL R1
       55 CAPTURE                          UPVAL U1
       56 NEWTABLE                         R10 0 4
       58 GETTABLEKS                       R11 R0 K5 ["editThisContent"]
       60 GETTABLEKS                       R12 R0 K6 ["contentId"]
       62 GETTABLEKS                       R13 R0 K7 ["onContinue"]
       64 MOVE                             R14 R1
       65 SETLIST                          R10 R11 4 [1]
       67 CALL                             R8 2 1
       68 GETUPVAL                         R9 0
       69 GETTABLEKS                       R9 R9 K1 ["useCallback"]
       71 NEWCLOSURE                       R10 P5
       72 CAPTURE                          VAL R2
       73 CAPTURE                          UPVAL U3
       74 NEWTABLE                         R11 0 0
       76 CALL                             R9 2 1
       77 GETUPVAL                         R10 0
       78 GETTABLEKS                       R10 R10 K1 ["useCallback"]
       80 NEWCLOSURE                       R11 P6
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U2
       83 NEWTABLE                         R12 0 3
       85 GETTABLEKS                       R13 R0 K5 ["editThisContent"]
       87 GETTABLEKS                       R14 R0 K6 ["contentId"]
       89 GETTABLEKS                       R15 R0 K7 ["onContinue"]
       91 SETLIST                          R12 R13 3 [1]
       93 CALL                             R10 2 1
       94 GETUPVAL                         R11 0
       95 GETTABLEKS                       R11 R11 K2 ["useMemo"]
       97 DUPCLOSURE                       R12 K8 [PROTO_16]
       98 CAPTURE                          UPVAL U4
       99 NEWTABLE                         R13 0 1
      101 GETUPVAL                         R14 4
      102 GETTABLEKS                       R14 R14 K9 ["locale"]
      104 SETLIST                          R13 R14 1 [1]
      106 CALL                             R11 2 1
      107 GETUPVAL                         R12 5
      108 CALL                             R12 0 1
      109 GETUPVAL                         R13 5
      110 CALL                             R13 0 1
      111 GETUPVAL                         R14 5
      112 CALL                             R14 0 1
      113 DUPTABLE                         R15 K14 [{"TitleRow", "Description", "PropertyRows", "ButtonGroup"}]
      114 GETUPVAL                         R17 1
      115 GETTABLEKS                       R17 R17 K15 ["FFlagAssistantSegmentationPromptModeSelector"]
      117 JUMPIFNOT                        R17 ; [+75]
      118 GETUPVAL                         R16 6
      119 GETUPVAL                         R17 7
      120 DUPTABLE                         R18 K19 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-bottom-medium", ["LayoutOrder"]}]
      121 MOVE                             R19 R13
      122 CALL                             R19 0 1
      123 SETTABLEKS                       R19 R18 K18 ["LayoutOrder"]
      125 DUPTABLE                         R19 K22 [{"Title", "CloseButton"}]
      126 GETUPVAL                         R20 6
      127 GETUPVAL                         R21 8
      128 DUPTABLE                         R22 K25 [{["tag"] = "auto-xy text-title-medium text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      129 GETTABLEKS                       R23 R0 K26 ["title"]
      131 SETTABLEKS                       R23 R22 K24 ["Text"]
      133 MOVE                             R23 R13
      134 CALL                             R23 0 1
      135 SETTABLEKS                       R23 R22 K18 ["LayoutOrder"]
      137 CALL                             R20 2 1
      138 SETTABLEKS                       R20 R19 K20 ["Title"]
      140 GETTABLEKS                       R20 R0 K27 ["onClose"]
      142 JUMPIFNOT                        R20 ; [+46]
      143 GETUPVAL                         R20 6
      144 GETUPVAL                         R21 9
      145 DUPTABLE                         R22 K33 [{"icon", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      146 GETUPVAL                         R23 10
      147 GETTABLEKS                       R23 R23 K34 ["Enums"]
      149 GETTABLEKS                       R23 R23 K35 ["IconName"]
      151 GETTABLEKS                       R23 R23 K36 ["X"]
      153 SETTABLEKS                       R23 R22 K28 ["icon"]
      155 GETUPVAL                         R23 10
      156 GETTABLEKS                       R23 R23 K34 ["Enums"]
      158 GETTABLEKS                       R23 R23 K37 ["InputSize"]
      160 GETTABLEKS                       R23 R23 K38 ["XSmall"]
      162 SETTABLEKS                       R23 R22 K29 ["size"]
      164 GETUPVAL                         R23 10
      165 GETTABLEKS                       R23 R23 K34 ["Enums"]
      167 GETTABLEKS                       R23 R23 K39 ["ButtonVariant"]
      169 GETTABLEKS                       R23 R23 K40 ["Utility"]
      171 SETTABLEKS                       R23 R22 K30 ["variant"]
      173 GETTABLEKS                       R23 R0 K27 ["onClose"]
      175 SETTABLEKS                       R23 R22 K31 ["onActivated"]
      177 GETUPVAL                         R23 11
      178 GETTABLEKS                       R23 R23 K41 ["InputRequested"]
      180 GETTABLEKS                       R23 R23 K21 ["CloseButton"]
      182 SETTABLEKS                       R23 R22 K32 ["testId"]
      184 MOVE                             R23 R13
      185 CALL                             R23 0 1
      186 SETTABLEKS                       R23 R22 K18 ["LayoutOrder"]
      188 CALL                             R20 2 1
      189 SETTABLEKS                       R20 R19 K21 ["CloseButton"]
      191 CALL                             R16 3 1
      192 JUMP                             ; [+12]
      193 GETUPVAL                         R16 6
      194 GETUPVAL                         R17 8
      195 DUPTABLE                         R18 K43 [{["tag"] = "size-full-0 auto-xy padding-bottom-medium text-title-medium text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      196 GETTABLEKS                       R19 R0 K26 ["title"]
      198 SETTABLEKS                       R19 R18 K24 ["Text"]
      200 MOVE                             R19 R13
      201 CALL                             R19 0 1
      202 SETTABLEKS                       R19 R18 K18 ["LayoutOrder"]
      204 CALL                             R16 2 1
      205 SETTABLEKS                       R16 R15 K10 ["TitleRow"]
      207 GETTABLEKS                       R16 R0 K44 ["description"]
      209 JUMPIFNOT                        R16 ; [+12]
      210 GETUPVAL                         R16 6
      211 GETUPVAL                         R17 8
      212 DUPTABLE                         R18 K46 [{["tag"] = "size-full-0 auto-xy padding-bottom-small text-body-small text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      213 GETTABLEKS                       R19 R0 K44 ["description"]
      215 SETTABLEKS                       R19 R18 K24 ["Text"]
      217 MOVE                             R19 R13
      218 CALL                             R19 0 1
      219 SETTABLEKS                       R19 R18 K18 ["LayoutOrder"]
      221 CALL                             R16 2 1
      222 SETTABLEKS                       R16 R15 K11 ["Description"]
      224 GETTABLEKS                       R16 R0 K3 ["propertyRows"]
      226 JUMPIFNOT                        R16 ; [+16]
      227 GETUPVAL                         R16 6
      228 GETUPVAL                         R17 12
      229 GETTABLEKS                       R17 R17 K12 ["PropertyRows"]
      231 DUPTABLE                         R18 K49 [{"rowDefinitions", "onChange", "LayoutOrder"}]
      232 GETTABLEKS                       R19 R0 K3 ["propertyRows"]
      234 SETTABLEKS                       R19 R18 K47 ["rowDefinitions"]
      236 SETTABLEKS                       R9 R18 K48 ["onChange"]
      238 MOVE                             R19 R13
      239 CALL                             R19 0 1
      240 SETTABLEKS                       R19 R18 K18 ["LayoutOrder"]
      242 CALL                             R16 2 1
      243 SETTABLEKS                       R16 R15 K12 ["PropertyRows"]
      245 GETUPVAL                         R16 6
      246 GETUPVAL                         R17 7
      247 DUPTABLE                         R18 K51 [{["tag"] = "row gap-small size-full-0 auto-xy padding-top-medium", ["LayoutOrder"]}]
      248 MOVE                             R19 R13
      249 CALL                             R19 0 1
      250 SETTABLEKS                       R19 R18 K18 ["LayoutOrder"]
      252 DUPTABLE                         R19 K54 [{"ConfirmButton", "CancelButton"}]
      253 GETUPVAL                         R20 6
      254 GETUPVAL                         R21 13
      255 DUPTABLE                         R22 K57 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      256 GETTABLEKS                       R23 R0 K58 ["confirmButtonText"]
      258 JUMPIF                           R23 ; [+2]
      259 GETTABLEKS                       R23 R11 K52 ["ConfirmButton"]
      261 SETTABLEKS                       R23 R22 K55 ["text"]
      263 GETUPVAL                         R23 10
      264 GETTABLEKS                       R23 R23 K34 ["Enums"]
      266 GETTABLEKS                       R23 R23 K37 ["InputSize"]
      268 GETTABLEKS                       R23 R23 K38 ["XSmall"]
      270 SETTABLEKS                       R23 R22 K29 ["size"]
      272 GETUPVAL                         R23 10
      273 GETTABLEKS                       R23 R23 K34 ["Enums"]
      275 GETTABLEKS                       R23 R23 K39 ["ButtonVariant"]
      277 GETTABLEKS                       R23 R23 K59 ["Emphasis"]
      279 SETTABLEKS                       R23 R22 K30 ["variant"]
      281 GETUPVAL                         R24 1
      282 GETTABLEKS                       R24 R24 K15 ["FFlagAssistantSegmentationPromptModeSelector"]
      284 JUMPIFNOT                        R24 ; [+2]
      285 MOVE                             R23 R6
      286 JUMPIF                           R23 ; [+1]
      287 NOT                              R23 R7
      288 SETTABLEKS                       R23 R22 K56 ["isDisabled"]
      290 SETTABLEKS                       R8 R22 K31 ["onActivated"]
      292 MOVE                             R23 R14
      293 CALL                             R23 0 1
      294 SETTABLEKS                       R23 R22 K18 ["LayoutOrder"]
      296 CALL                             R20 2 1
      297 SETTABLEKS                       R20 R19 K52 ["ConfirmButton"]
      299 GETUPVAL                         R20 6
      300 GETUPVAL                         R21 13
      301 DUPTABLE                         R22 K60 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      302 GETTABLEKS                       R23 R11 K53 ["CancelButton"]
      304 SETTABLEKS                       R23 R22 K55 ["text"]
      306 GETUPVAL                         R23 10
      307 GETTABLEKS                       R23 R23 K34 ["Enums"]
      309 GETTABLEKS                       R23 R23 K37 ["InputSize"]
      311 GETTABLEKS                       R23 R23 K38 ["XSmall"]
      313 SETTABLEKS                       R23 R22 K29 ["size"]
      315 GETUPVAL                         R23 10
      316 GETTABLEKS                       R23 R23 K34 ["Enums"]
      318 GETTABLEKS                       R23 R23 K39 ["ButtonVariant"]
      320 GETTABLEKS                       R23 R23 K61 ["Standard"]
      322 SETTABLEKS                       R23 R22 K30 ["variant"]
      324 SETTABLEKS                       R10 R22 K31 ["onActivated"]
      326 MOVE                             R23 R14
      327 CALL                             R23 0 1
      328 SETTABLEKS                       R23 R22 K18 ["LayoutOrder"]
      330 CALL                             R20 2 1
      331 SETTABLEKS                       R20 R19 K53 ["CancelButton"]
      333 CALL                             R16 3 1
      334 SETTABLEKS                       R16 R15 K13 ["ButtonGroup"]
      336 GETUPVAL                         R16 6
      337 GETUPVAL                         R17 7
      338 DUPTABLE                         R18 K63 [{["tag"] = "col gap-large size-full-0 auto-xy padding-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
      339 GETTABLEKS                       R19 R0 K18 ["LayoutOrder"]
      341 SETTABLEKS                       R19 R18 K18 ["LayoutOrder"]
      343 DUPTABLE                         R19 K65 [{"Content"}]
      344 GETUPVAL                         R21 1
      345 GETTABLEKS                       R21 R21 K66 ["FFlagAssistantSegmentationPanelScroll"]
      347 JUMPIFNOT                        R21 ; [+72]
      348 GETUPVAL                         R20 6
      349 LOADK                            R21 K67 ["ScrollingFrame"]
      350 DUPTABLE                         R22 K79 [{["Size"], ["AutomaticCanvasSize"], ["CanvasSize"], ["ClipsDescendants"] = True, ["ScrollingDirection"], ["VerticalScrollBarInset"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
      351 GETIMPORT                        R23 K82 [UDim2.new]
      353 LOADN                            R24 1
      354 LOADN                            R25 0
      355 LOADN                            R26 0
      356 FASTCALL2K                       MATH_MIN R3 K83 ; [+5]
      358 MOVE                             R28 R3
      359 LOADK                            R29 K83 [375]
      360 GETIMPORT                        R27 K86 [math.min]
      362 CALL                             R27 2 1
      363 CALL                             R23 4 1
      364 SETTABLEKS                       R23 R22 K68 ["Size"]
      366 GETIMPORT                        R23 K90 [Enum.AutomaticSize.Y]
      368 SETTABLEKS                       R23 R22 K69 ["AutomaticCanvasSize"]
      370 GETIMPORT                        R23 K82 [UDim2.new]
      372 LOADN                            R24 0
      373 LOADN                            R25 0
      374 LOADN                            R26 0
      375 LOADN                            R27 0
      376 CALL                             R23 4 1
      377 SETTABLEKS                       R23 R22 K70 ["CanvasSize"]
      379 GETIMPORT                        R23 K91 [Enum.ScrollingDirection.Y]
      381 SETTABLEKS                       R23 R22 K73 ["ScrollingDirection"]
      383 GETIMPORT                        R23 K94 [Enum.ScrollBarInset.ScrollBar]
      385 SETTABLEKS                       R23 R22 K74 ["VerticalScrollBarInset"]
      387 MOVE                             R23 R12
      388 CALL                             R23 0 1
      389 SETTABLEKS                       R23 R22 K18 ["LayoutOrder"]
      391 GETUPVAL                         R23 3
      392 GETTABLEKS                       R23 R23 K95 ["join"]
      394 MOVE                             R24 R15
      395 DUPTABLE                         R25 K97 [{"Layout"}]
      396 GETUPVAL                         R26 6
      397 LOADK                            R27 K98 ["UIListLayout"]
      398 NEWTABLE                         R28 4 0
      400 GETIMPORT                        R29 K101 [Enum.FillDirection.Vertical]
      402 SETTABLEKS                       R29 R28 K99 ["FillDirection"]
      404 GETIMPORT                        R29 K103 [Enum.SortOrder.LayoutOrder]
      406 SETTABLEKS                       R29 R28 K102 ["SortOrder"]
      408 GETUPVAL                         R29 0
      409 GETTABLEKS                       R29 R29 K104 ["Change"]
      411 GETTABLEKS                       R29 R29 K105 ["AbsoluteContentSize"]
      413 SETTABLE                         R5 R28 R29
      414 CALL                             R26 2 1
      415 SETTABLEKS                       R26 R25 K96 ["Layout"]
      417 CALL                             R23 2 -1
      418 CALL                             R20 -1 1
      419 JUMP                             ; [+9]
      420 GETUPVAL                         R20 6
      421 GETUPVAL                         R21 7
      422 DUPTABLE                         R22 K107 [{["tag"] = "col size-full-0 auto-xy", ["LayoutOrder"]}]
      423 MOVE                             R23 R12
      424 CALL                             R23 0 1
      425 SETTABLEKS                       R23 R22 K18 ["LayoutOrder"]
      427 MOVE                             R23 R15
      428 CALL                             R20 3 1
      429 SETTABLEKS                       R20 R19 K64 ["Content"]
      431 CALL                             R16 3 -1
      432 RETURN                           R16 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Cancelled"]
        3 SETTABLEKS                       R1 R0 K1 ["status"]
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["editThisContent"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["contentId"]
        6 DUPCLOSURE                       R2 K2 [PROTO_18]
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

PROTO_20:
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
       13 GETUPVAL                         R4 3
       14 MOVE                             R5 R2
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_21:
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
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

PROTO_22:
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
       23 GETTABLEKS                       R4 R4 K6 ["useRef"]
       25 MOVE                             R5 R0
       26 CALL                             R4 1 1
       27 SETTABLEKS                       R0 R4 K7 ["current"]
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K8 ["useEffect"]
       32 NEWCLOSURE                       R6 P0
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R3
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R4
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U5
       40 NEWTABLE                         R7 0 2
       42 MOVE                             R8 R1
       43 MOVE                             R9 R3
       44 SETLIST                          R7 R8 2 [1]
       46 CALL                             R5 2 0
       47 JUMPIFNOT                        R1 ; [+2]
       48 LOADNIL                          R5
       49 RETURN                           R5 1
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K0 ["FFlagAssistantGen3dInputRequestedOverride"]
       53 JUMPIFNOT                        R5 ; [+9]
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R5 R5 K9 ["FFlagAssistantSegmentationPromptModeSelector"]
       57 JUMPIFNOT                        R5 ; [+5]
       58 GETTABLEKS                       R5 R0 K10 ["suppressHistory"]
       60 JUMPIFNOT                        R5 ; [+2]
       61 LOADNIL                          R5
       62 RETURN                           R5 1
       63 GETTABLEKS                       R5 R0 K1 ["status"]
       65 GETUPVAL                         R6 1
       66 GETTABLEKS                       R6 R6 K11 ["Recorded"]
       68 JUMPIFNOTEQ                      R5 R6 ; [+6]
       70 GETUPVAL                         R5 4
       71 GETUPVAL                         R6 6
       72 MOVE                             R7 R0
       73 CALL                             R5 2 -1
       74 RETURN                           R5 -1
       75 GETTABLEKS                       R5 R0 K1 ["status"]
       77 GETUPVAL                         R6 1
       78 GETTABLEKS                       R6 R6 K12 ["Cancelled"]
       80 JUMPIFNOTEQ                      R5 R6 ; [+6]
       82 GETUPVAL                         R5 4
       83 GETUPVAL                         R6 7
       84 MOVE                             R7 R0
       85 CALL                             R5 2 -1
       86 RETURN                           R5 -1
       87 GETTABLEKS                       R5 R0 K1 ["status"]
       89 GETUPVAL                         R6 1
       90 GETTABLEKS                       R6 R6 K2 ["Required"]
       92 JUMPIFNOTEQ                      R5 R6 ; [+6]
       94 GETUPVAL                         R5 4
       95 GETUPVAL                         R6 5
       96 MOVE                             R7 R0
       97 CALL                             R5 2 -1
       98 RETURN                           R5 -1
       99 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
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
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K8 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K6 ["Components"]
       37 GETTABLEKS                       R6 R6 K12 ["Contexts"]
       39 GETTABLEKS                       R6 R6 K13 ["InputAreaOverrideContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Components"]
       46 GETTABLEKS                       R7 R7 K14 ["PropertyRows"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K8 ["Parent"]
       53 GETTABLEKS                       R8 R8 K15 ["React"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K8 ["Parent"]
       60 GETTABLEKS                       R9 R9 K16 ["ReactUtils"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K17 ["Util"]
       67 GETTABLEKS                       R10 R10 K18 ["Serializer"]
       69 GETTABLEKS                       R10 R10 K19 ["SerializerTypes"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K17 ["Util"]
       76 GETTABLEKS                       R11 R11 K20 ["TestIds"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K21 ["Resources"]
       83 GETTABLEKS                       R12 R12 K22 ["Localization"]
       85 GETTABLEKS                       R12 R12 K23 ["Translator"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K24 ["Types"]
       92 CALL                             R12 1 1
       93 GETTABLEKS                       R13 R4 K25 ["Button"]
       95 GETTABLEKS                       R14 R4 K26 ["IconButton"]
       97 GETTABLEKS                       R15 R4 K27 ["Text"]
       99 GETTABLEKS                       R16 R4 K28 ["View"]
      101 GETTABLEKS                       R17 R7 K29 ["createElement"]
      103 GETTABLEKS                       R18 R8 K30 ["createNextOrder"]
      105 DUPTABLE                         R19 K34 [{["Required"] = "Required", ["Recorded"] = "Recorded", ["Cancelled"] = "Cancelled"}]
      106 DUPCLOSURE                       R20 K35 [PROTO_2]
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R18
      110 CAPTURE                          VAL R17
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R15
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R4
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R8
      118 DUPCLOSURE                       R21 K36 [PROTO_4]
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R11
      121 CAPTURE                          VAL R18
      122 CAPTURE                          VAL R17
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R15
      125 DUPCLOSURE                       R22 K37 [PROTO_5]
      126 DUPCLOSURE                       R23 K38 [PROTO_17]
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R19
      130 CAPTURE                          VAL R2
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R18
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R13
      141 DUPCLOSURE                       R24 K39 [PROTO_22]
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R23
      148 CAPTURE                          VAL R20
      149 CAPTURE                          VAL R21
      150 DUPTABLE                         R25 K42 [{"toMeta", "fromMeta"}]
      151 DUPCLOSURE                       R26 K43 [PROTO_23]
      152 CAPTURE                          VAL R19
      153 SETTABLEKS                       R26 R25 K40 ["toMeta"]
      155 DUPCLOSURE                       R26 K44 [PROTO_24]
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R8
      158 SETTABLEKS                       R26 R25 K41 ["fromMeta"]
      160 DUPTABLE                         R26 K50 [{["Type"] = "InputRequested", ["ContentWidget"], ["Serialization"], ["InputStatus"]}]
      161 GETTABLEKS                       R27 R7 K51 ["memo"]
      163 MOVE                             R28 R24
      164 CALL                             R27 1 1
      165 SETTABLEKS                       R27 R26 K47 ["ContentWidget"]
      167 SETTABLEKS                       R25 R26 K48 ["Serialization"]
      169 SETTABLEKS                       R19 R26 K49 ["InputStatus"]
      171 RETURN                           R26 1
