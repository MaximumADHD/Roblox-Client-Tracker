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
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+10]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["canConfirm"]
        6 JUMPIFNOT                        R0 ; [+6]
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K0 ["canConfirm"]
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 -1
       12 RETURN                           R0 -1
       13 LOADB                            R0 1
       14 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Recorded"]
        3 SETTABLEKS                       R1 R0 K1 ["status"]
        5 GETTABLEKS                       R1 R0 K2 ["propertyRows"]
        7 JUMPIFNOT                        R1 ; [+30]
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
       28 CALL                             R8 0 1
       29 JUMPIFNOT                        R8 ; [+3]
       30 LOADB                            R8 0
       31 SETTABLEKS                       R8 R7 K8 ["isLoading"]
       33 SETTABLE                         R7 R1 R5
       34 FORGLOOP                         R2 2 ; [-18]
       36 SETTABLEKS                       R1 R0 K2 ["propertyRows"]
       38 RETURN                           R0 0

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
       55 CAPTURE                          UPVAL U3
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
       73 CAPTURE                          UPVAL U4
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
       98 CAPTURE                          UPVAL U5
       99 NEWTABLE                         R13 0 1
      101 GETUPVAL                         R14 5
      102 GETTABLEKS                       R14 R14 K9 ["locale"]
      104 SETLIST                          R13 R14 1 [1]
      106 CALL                             R11 2 1
      107 GETUPVAL                         R12 6
      108 CALL                             R12 0 1
      109 GETUPVAL                         R13 6
      110 CALL                             R13 0 1
      111 GETUPVAL                         R14 6
      112 CALL                             R14 0 1
      113 DUPTABLE                         R15 K14 [{"TitleRow", "Description", "PropertyRows", "ButtonGroup"}]
      114 GETUPVAL                         R17 3
      115 CALL                             R17 0 1
      116 JUMPIFNOT                        R17 ; [+75]
      117 GETUPVAL                         R16 7
      118 GETUPVAL                         R17 8
      119 DUPTABLE                         R18 K18 [{["tag"] = "row align-y-center gap-small size-full-0 auto-y padding-bottom-medium", ["LayoutOrder"]}]
      120 MOVE                             R19 R13
      121 CALL                             R19 0 1
      122 SETTABLEKS                       R19 R18 K17 ["LayoutOrder"]
      124 DUPTABLE                         R19 K21 [{"Title", "CloseButton"}]
      125 GETUPVAL                         R20 7
      126 GETUPVAL                         R21 9
      127 DUPTABLE                         R22 K24 [{["tag"] = "auto-xy text-title-medium text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"]}]
      128 GETTABLEKS                       R23 R0 K25 ["title"]
      130 SETTABLEKS                       R23 R22 K23 ["Text"]
      132 MOVE                             R23 R13
      133 CALL                             R23 0 1
      134 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      136 CALL                             R20 2 1
      137 SETTABLEKS                       R20 R19 K19 ["Title"]
      139 GETTABLEKS                       R20 R0 K26 ["onClose"]
      141 JUMPIFNOT                        R20 ; [+46]
      142 GETUPVAL                         R20 7
      143 GETUPVAL                         R21 10
      144 DUPTABLE                         R22 K32 [{"icon", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      145 GETUPVAL                         R23 11
      146 GETTABLEKS                       R23 R23 K33 ["Enums"]
      148 GETTABLEKS                       R23 R23 K34 ["IconName"]
      150 GETTABLEKS                       R23 R23 K35 ["X"]
      152 SETTABLEKS                       R23 R22 K27 ["icon"]
      154 GETUPVAL                         R23 11
      155 GETTABLEKS                       R23 R23 K33 ["Enums"]
      157 GETTABLEKS                       R23 R23 K36 ["InputSize"]
      159 GETTABLEKS                       R23 R23 K37 ["XSmall"]
      161 SETTABLEKS                       R23 R22 K28 ["size"]
      163 GETUPVAL                         R23 11
      164 GETTABLEKS                       R23 R23 K33 ["Enums"]
      166 GETTABLEKS                       R23 R23 K38 ["ButtonVariant"]
      168 GETTABLEKS                       R23 R23 K39 ["Utility"]
      170 SETTABLEKS                       R23 R22 K29 ["variant"]
      172 GETTABLEKS                       R23 R0 K26 ["onClose"]
      174 SETTABLEKS                       R23 R22 K30 ["onActivated"]
      176 GETUPVAL                         R23 12
      177 GETTABLEKS                       R23 R23 K40 ["InputRequested"]
      179 GETTABLEKS                       R23 R23 K20 ["CloseButton"]
      181 SETTABLEKS                       R23 R22 K31 ["testId"]
      183 MOVE                             R23 R13
      184 CALL                             R23 0 1
      185 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      187 CALL                             R20 2 1
      188 SETTABLEKS                       R20 R19 K20 ["CloseButton"]
      190 CALL                             R16 3 1
      191 JUMP                             ; [+12]
      192 GETUPVAL                         R16 7
      193 GETUPVAL                         R17 9
      194 DUPTABLE                         R18 K42 [{["tag"] = "size-full-0 auto-xy padding-bottom-medium text-title-medium text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      195 GETTABLEKS                       R19 R0 K25 ["title"]
      197 SETTABLEKS                       R19 R18 K23 ["Text"]
      199 MOVE                             R19 R13
      200 CALL                             R19 0 1
      201 SETTABLEKS                       R19 R18 K17 ["LayoutOrder"]
      203 CALL                             R16 2 1
      204 SETTABLEKS                       R16 R15 K10 ["TitleRow"]
      206 GETTABLEKS                       R16 R0 K43 ["description"]
      208 JUMPIFNOT                        R16 ; [+12]
      209 GETUPVAL                         R16 7
      210 GETUPVAL                         R17 9
      211 DUPTABLE                         R18 K45 [{["tag"] = "size-full-0 auto-xy padding-bottom-small text-body-small text-align-x-left text-truncate-end content-emphasis", ["Text"], ["LayoutOrder"]}]
      212 GETTABLEKS                       R19 R0 K43 ["description"]
      214 SETTABLEKS                       R19 R18 K23 ["Text"]
      216 MOVE                             R19 R13
      217 CALL                             R19 0 1
      218 SETTABLEKS                       R19 R18 K17 ["LayoutOrder"]
      220 CALL                             R16 2 1
      221 SETTABLEKS                       R16 R15 K11 ["Description"]
      223 GETTABLEKS                       R16 R0 K3 ["propertyRows"]
      225 JUMPIFNOT                        R16 ; [+16]
      226 GETUPVAL                         R16 7
      227 GETUPVAL                         R17 13
      228 GETTABLEKS                       R17 R17 K12 ["PropertyRows"]
      230 DUPTABLE                         R18 K48 [{"rowDefinitions", "onChange", "LayoutOrder"}]
      231 GETTABLEKS                       R19 R0 K3 ["propertyRows"]
      233 SETTABLEKS                       R19 R18 K46 ["rowDefinitions"]
      235 SETTABLEKS                       R9 R18 K47 ["onChange"]
      237 MOVE                             R19 R13
      238 CALL                             R19 0 1
      239 SETTABLEKS                       R19 R18 K17 ["LayoutOrder"]
      241 CALL                             R16 2 1
      242 SETTABLEKS                       R16 R15 K12 ["PropertyRows"]
      244 GETUPVAL                         R16 7
      245 GETUPVAL                         R17 8
      246 DUPTABLE                         R18 K50 [{["tag"] = "row gap-small size-full-0 auto-xy padding-top-medium", ["LayoutOrder"]}]
      247 MOVE                             R19 R13
      248 CALL                             R19 0 1
      249 SETTABLEKS                       R19 R18 K17 ["LayoutOrder"]
      251 DUPTABLE                         R19 K53 [{"ConfirmButton", "CancelButton"}]
      252 GETUPVAL                         R20 7
      253 GETUPVAL                         R21 14
      254 DUPTABLE                         R22 K56 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      255 GETTABLEKS                       R23 R0 K57 ["confirmButtonText"]
      257 JUMPIF                           R23 ; [+2]
      258 GETTABLEKS                       R23 R11 K51 ["ConfirmButton"]
      260 SETTABLEKS                       R23 R22 K54 ["text"]
      262 GETUPVAL                         R23 11
      263 GETTABLEKS                       R23 R23 K33 ["Enums"]
      265 GETTABLEKS                       R23 R23 K36 ["InputSize"]
      267 GETTABLEKS                       R23 R23 K37 ["XSmall"]
      269 SETTABLEKS                       R23 R22 K28 ["size"]
      271 GETUPVAL                         R23 11
      272 GETTABLEKS                       R23 R23 K33 ["Enums"]
      274 GETTABLEKS                       R23 R23 K38 ["ButtonVariant"]
      276 GETTABLEKS                       R23 R23 K58 ["Emphasis"]
      278 SETTABLEKS                       R23 R22 K29 ["variant"]
      280 GETUPVAL                         R24 3
      281 CALL                             R24 0 1
      282 JUMPIFNOT                        R24 ; [+2]
      283 MOVE                             R23 R6
      284 JUMPIF                           R23 ; [+1]
      285 NOT                              R23 R7
      286 SETTABLEKS                       R23 R22 K55 ["isDisabled"]
      288 SETTABLEKS                       R8 R22 K30 ["onActivated"]
      290 MOVE                             R23 R14
      291 CALL                             R23 0 1
      292 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      294 CALL                             R20 2 1
      295 SETTABLEKS                       R20 R19 K51 ["ConfirmButton"]
      297 GETUPVAL                         R20 7
      298 GETUPVAL                         R21 14
      299 DUPTABLE                         R22 K59 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      300 GETTABLEKS                       R23 R11 K52 ["CancelButton"]
      302 SETTABLEKS                       R23 R22 K54 ["text"]
      304 GETUPVAL                         R23 11
      305 GETTABLEKS                       R23 R23 K33 ["Enums"]
      307 GETTABLEKS                       R23 R23 K36 ["InputSize"]
      309 GETTABLEKS                       R23 R23 K37 ["XSmall"]
      311 SETTABLEKS                       R23 R22 K28 ["size"]
      313 GETUPVAL                         R23 11
      314 GETTABLEKS                       R23 R23 K33 ["Enums"]
      316 GETTABLEKS                       R23 R23 K38 ["ButtonVariant"]
      318 GETTABLEKS                       R23 R23 K60 ["Standard"]
      320 SETTABLEKS                       R23 R22 K29 ["variant"]
      322 SETTABLEKS                       R10 R22 K30 ["onActivated"]
      324 MOVE                             R23 R14
      325 CALL                             R23 0 1
      326 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      328 CALL                             R20 2 1
      329 SETTABLEKS                       R20 R19 K52 ["CancelButton"]
      331 CALL                             R16 3 1
      332 SETTABLEKS                       R16 R15 K13 ["ButtonGroup"]
      334 GETUPVAL                         R16 7
      335 GETUPVAL                         R17 8
      336 DUPTABLE                         R18 K62 [{["tag"] = "col gap-large size-full-0 auto-xy padding-medium stroke-standard stroke-default radius-medium", ["LayoutOrder"]}]
      337 GETTABLEKS                       R19 R0 K17 ["LayoutOrder"]
      339 SETTABLEKS                       R19 R18 K17 ["LayoutOrder"]
      341 DUPTABLE                         R19 K64 [{"Content"}]
      342 GETUPVAL                         R21 15
      343 CALL                             R21 0 1
      344 JUMPIFNOT                        R21 ; [+72]
      345 GETUPVAL                         R20 7
      346 LOADK                            R21 K65 ["ScrollingFrame"]
      347 DUPTABLE                         R22 K77 [{["Size"], ["AutomaticCanvasSize"], ["CanvasSize"], ["ClipsDescendants"] = True, ["ScrollingDirection"], ["VerticalScrollBarInset"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"]}]
      348 GETIMPORT                        R23 K80 [UDim2.new]
      350 LOADN                            R24 1
      351 LOADN                            R25 0
      352 LOADN                            R26 0
      353 FASTCALL2K                       MATH_MIN R3 K81 ; [+5]
      355 MOVE                             R28 R3
      356 LOADK                            R29 K81 [375]
      357 GETIMPORT                        R27 K84 [math.min]
      359 CALL                             R27 2 1
      360 CALL                             R23 4 1
      361 SETTABLEKS                       R23 R22 K66 ["Size"]
      363 GETIMPORT                        R23 K88 [Enum.AutomaticSize.Y]
      365 SETTABLEKS                       R23 R22 K67 ["AutomaticCanvasSize"]
      367 GETIMPORT                        R23 K80 [UDim2.new]
      369 LOADN                            R24 0
      370 LOADN                            R25 0
      371 LOADN                            R26 0
      372 LOADN                            R27 0
      373 CALL                             R23 4 1
      374 SETTABLEKS                       R23 R22 K68 ["CanvasSize"]
      376 GETIMPORT                        R23 K89 [Enum.ScrollingDirection.Y]
      378 SETTABLEKS                       R23 R22 K71 ["ScrollingDirection"]
      380 GETIMPORT                        R23 K92 [Enum.ScrollBarInset.ScrollBar]
      382 SETTABLEKS                       R23 R22 K72 ["VerticalScrollBarInset"]
      384 MOVE                             R23 R12
      385 CALL                             R23 0 1
      386 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      388 GETUPVAL                         R23 4
      389 GETTABLEKS                       R23 R23 K93 ["join"]
      391 MOVE                             R24 R15
      392 DUPTABLE                         R25 K95 [{"Layout"}]
      393 GETUPVAL                         R26 7
      394 LOADK                            R27 K96 ["UIListLayout"]
      395 NEWTABLE                         R28 4 0
      397 GETIMPORT                        R29 K99 [Enum.FillDirection.Vertical]
      399 SETTABLEKS                       R29 R28 K97 ["FillDirection"]
      401 GETIMPORT                        R29 K101 [Enum.SortOrder.LayoutOrder]
      403 SETTABLEKS                       R29 R28 K100 ["SortOrder"]
      405 GETUPVAL                         R29 0
      406 GETTABLEKS                       R29 R29 K102 ["Change"]
      408 GETTABLEKS                       R29 R29 K103 ["AbsoluteContentSize"]
      410 SETTABLE                         R5 R28 R29
      411 CALL                             R26 2 1
      412 SETTABLEKS                       R26 R25 K94 ["Layout"]
      414 CALL                             R23 2 -1
      415 CALL                             R20 -1 1
      416 JUMP                             ; [+9]
      417 GETUPVAL                         R20 7
      418 GETUPVAL                         R21 8
      419 DUPTABLE                         R22 K105 [{["tag"] = "col size-full-0 auto-xy", ["LayoutOrder"]}]
      420 MOVE                             R23 R12
      421 CALL                             R23 0 1
      422 SETTABLEKS                       R23 R22 K17 ["LayoutOrder"]
      424 MOVE                             R23 R15
      425 CALL                             R20 3 1
      426 SETTABLEKS                       R20 R19 K63 ["Content"]
      428 CALL                             R16 3 -1
      429 RETURN                           R16 -1

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
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+9]
        3 GETTABLEKS                       R2 R0 K0 ["status"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["Required"]
        8 JUMPIFEQ                         R2 R3 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K2 ["useContext"]
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K3 ["Context"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K4 ["registerOverride"]
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K5 ["useRef"]
       24 MOVE                             R5 R0
       25 CALL                             R4 1 1
       26 SETTABLEKS                       R0 R4 K6 ["current"]
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K7 ["useEffect"]
       31 NEWCLOSURE                       R6 P0
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R3
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R4
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          UPVAL U5
       39 NEWTABLE                         R7 0 2
       41 MOVE                             R8 R1
       42 MOVE                             R9 R3
       43 SETLIST                          R7 R8 2 [1]
       45 CALL                             R5 2 0
       46 JUMPIFNOT                        R1 ; [+2]
       47 LOADNIL                          R5
       48 RETURN                           R5 1
       49 GETUPVAL                         R5 0
       50 CALL                             R5 0 1
       51 JUMPIFNOT                        R5 ; [+8]
       52 GETUPVAL                         R5 6
       53 CALL                             R5 0 1
       54 JUMPIFNOT                        R5 ; [+5]
       55 GETTABLEKS                       R5 R0 K8 ["suppressHistory"]
       57 JUMPIFNOT                        R5 ; [+2]
       58 LOADNIL                          R5
       59 RETURN                           R5 1
       60 GETTABLEKS                       R5 R0 K0 ["status"]
       62 GETUPVAL                         R6 1
       63 GETTABLEKS                       R6 R6 K9 ["Recorded"]
       65 JUMPIFNOTEQ                      R5 R6 ; [+6]
       67 GETUPVAL                         R5 4
       68 GETUPVAL                         R6 7
       69 MOVE                             R7 R0
       70 CALL                             R5 2 -1
       71 RETURN                           R5 -1
       72 GETTABLEKS                       R5 R0 K0 ["status"]
       74 GETUPVAL                         R6 1
       75 GETTABLEKS                       R6 R6 K10 ["Cancelled"]
       77 JUMPIFNOTEQ                      R5 R6 ; [+6]
       79 GETUPVAL                         R5 4
       80 GETUPVAL                         R6 8
       81 MOVE                             R7 R0
       82 CALL                             R5 2 -1
       83 RETURN                           R5 -1
       84 GETTABLEKS                       R5 R0 K0 ["status"]
       86 GETUPVAL                         R6 1
       87 GETTABLEKS                       R6 R6 K1 ["Required"]
       89 JUMPIFNOTEQ                      R5 R6 ; [+6]
       91 GETUPVAL                         R5 4
       92 GETUPVAL                         R6 5
       93 MOVE                             R7 R0
       94 CALL                             R5 2 -1
       95 RETURN                           R5 -1
       96 RETURN                           R0 0

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
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       34 GETTABLEKS                       R5 R5 K12 ["InputAreaOverrideContext"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Components"]
       41 GETTABLEKS                       R6 R6 K13 ["PropertyRows"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K8 ["Parent"]
       48 GETTABLEKS                       R7 R7 K14 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K8 ["Parent"]
       55 GETTABLEKS                       R8 R8 K15 ["ReactUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K16 ["Util"]
       62 GETTABLEKS                       R9 R9 K17 ["Serializer"]
       64 GETTABLEKS                       R9 R9 K18 ["SerializerTypes"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K5 [require]
       69 GETTABLEKS                       R10 R0 K16 ["Util"]
       71 GETTABLEKS                       R10 R10 K19 ["TestIds"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K20 ["Resources"]
       78 GETTABLEKS                       R11 R11 K21 ["Localization"]
       80 GETTABLEKS                       R11 R11 K22 ["Translator"]
       82 CALL                             R10 1 1
       83 GETIMPORT                        R11 K5 [require]
       85 GETTABLEKS                       R12 R0 K23 ["Types"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K24 ["Flags"]
       92 GETTABLEKS                       R13 R13 K25 ["FFlagAssistantGen3dInputRequestedOverride"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K24 ["Flags"]
       99 GETTABLEKS                       R14 R14 K26 ["FFlagAssistantGen3dRequirePromptToGenerate"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K24 ["Flags"]
      106 GETTABLEKS                       R15 R15 K27 ["FFlagAssistantSegmentationPanelScroll"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K24 ["Flags"]
      113 GETTABLEKS                       R16 R16 K28 ["FFlagAssistantSegmentationPromptModeSelector"]
      115 CALL                             R15 1 1
      116 GETTABLEKS                       R16 R3 K29 ["Button"]
      118 GETTABLEKS                       R17 R3 K30 ["IconButton"]
      120 GETTABLEKS                       R18 R3 K31 ["Text"]
      122 GETTABLEKS                       R19 R3 K32 ["View"]
      124 GETTABLEKS                       R20 R6 K33 ["createElement"]
      126 GETTABLEKS                       R21 R7 K34 ["createNextOrder"]
      128 DUPTABLE                         R22 K38 [{["Required"] = "Required", ["Recorded"] = "Recorded", ["Cancelled"] = "Cancelled"}]
      129 DUPCLOSURE                       R23 K39 [PROTO_2]
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R21
      133 CAPTURE                          VAL R20
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R18
      137 CAPTURE                          VAL R17
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R7
      141 DUPCLOSURE                       R24 K40 [PROTO_4]
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R21
      145 CAPTURE                          VAL R20
      146 CAPTURE                          VAL R19
      147 CAPTURE                          VAL R18
      148 DUPCLOSURE                       R25 K41 [PROTO_5]
      149 DUPCLOSURE                       R26 K42 [PROTO_17]
      150 CAPTURE                          VAL R6
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R22
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R21
      157 CAPTURE                          VAL R20
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R18
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R5
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R14
      166 DUPCLOSURE                       R27 K43 [PROTO_22]
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R22
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R20
      172 CAPTURE                          VAL R26
      173 CAPTURE                          VAL R15
      174 CAPTURE                          VAL R23
      175 CAPTURE                          VAL R24
      176 DUPTABLE                         R28 K46 [{"toMeta", "fromMeta"}]
      177 DUPCLOSURE                       R29 K47 [PROTO_23]
      178 CAPTURE                          VAL R22
      179 SETTABLEKS                       R29 R28 K44 ["toMeta"]
      181 DUPCLOSURE                       R29 K48 [PROTO_24]
      182 CAPTURE                          VAL R22
      183 CAPTURE                          VAL R7
      184 SETTABLEKS                       R29 R28 K45 ["fromMeta"]
      186 DUPTABLE                         R29 K54 [{["Type"] = "InputRequested", ["ContentWidget"], ["Serialization"], ["InputStatus"]}]
      187 GETTABLEKS                       R30 R6 K55 ["memo"]
      189 MOVE                             R31 R27
      190 CALL                             R30 1 1
      191 SETTABLEKS                       R30 R29 K51 ["ContentWidget"]
      193 SETTABLEKS                       R28 R29 K52 ["Serialization"]
      195 SETTABLEKS                       R22 R29 K53 ["InputStatus"]
      197 RETURN                           R29 1
