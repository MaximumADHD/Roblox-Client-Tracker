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
       70 DUPTABLE                         R14 K23 [{"tag", "Text", "LayoutOrder"}]
       71 LOADK                            R15 K24 ["size-0-full auto-x text-label-small content-default text-truncate-end"]
       72 SETTABLEKS                       R15 R14 K22 ["tag"]
       74 GETTABLEKS                       R15 R1 K25 ["InputRequiredWidget"]
       76 GETTABLEKS                       R15 R15 K26 ["ResponseRecorded"]
       78 SETTABLEKS                       R15 R14 K19 ["Text"]
       80 MOVE                             R15 R3
       81 CALL                             R15 0 1
       82 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
       84 CALL                             R12 2 1
       85 SETTABLEKS                       R12 R11 K19 ["Text"]
       87 GETTABLEKS                       R12 R0 K4 ["onRevive"]
       89 JUMPIFNOT                        R12 ; [+44]
       90 GETUPVAL                         R12 3
       91 GETUPVAL                         R13 7
       92 DUPTABLE                         R14 K31 [{"icon", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
       93 GETUPVAL                         R15 8
       94 GETTABLEKS                       R15 R15 K32 ["Enums"]
       96 GETTABLEKS                       R15 R15 K33 ["IconName"]
       98 GETTABLEKS                       R15 R15 K34 ["TwoArrowsSpinClockwise"]
      100 SETTABLEKS                       R15 R14 K27 ["icon"]
      102 GETUPVAL                         R15 8
      103 GETTABLEKS                       R15 R15 K32 ["Enums"]
      105 GETTABLEKS                       R15 R15 K35 ["InputSize"]
      107 GETTABLEKS                       R15 R15 K36 ["XSmall"]
      109 SETTABLEKS                       R15 R14 K28 ["size"]
      111 GETUPVAL                         R15 8
      112 GETTABLEKS                       R15 R15 K32 ["Enums"]
      114 GETTABLEKS                       R15 R15 K37 ["ButtonVariant"]
      116 GETTABLEKS                       R15 R15 K38 ["Utility"]
      118 SETTABLEKS                       R15 R14 K29 ["variant"]
      120 SETTABLEKS                       R2 R14 K30 ["onActivated"]
      122 GETUPVAL                         R15 5
      123 GETTABLEKS                       R15 R15 K17 ["InputRequested"]
      125 GETTABLEKS                       R15 R15 K20 ["ReviveButton"]
      127 SETTABLEKS                       R15 R14 K15 ["testId"]
      129 MOVE                             R15 R3
      130 CALL                             R15 0 1
      131 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      133 CALL                             R12 2 1
      134 SETTABLEKS                       R12 R11 K20 ["ReviveButton"]
      136 CALL                             R8 3 1
      137 SETTABLEKS                       R8 R7 K12 ["Header"]
      139 GETUPVAL                         R8 3
      140 GETUPVAL                         R9 4
      141 GETTABLEKS                       R9 R9 K13 ["Content"]
      143 DUPTABLE                         R10 K39 [{"tag", "LayoutOrder"}]
      144 LOADK                            R11 K40 ["col size-0-0 fill auto-y padding-x-medium"]
      145 SETTABLEKS                       R11 R10 K22 ["tag"]
      147 MOVE                             R11 R3
      148 CALL                             R11 0 1
      149 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
      151 DUPTABLE                         R11 K42 [{"PropertyRows"}]
      152 GETTABLEKS                       R12 R0 K5 ["propertyRows"]
      154 JUMPIFNOT                        R12 ; [+24]
      155 GETUPVAL                         R12 3
      156 GETUPVAL                         R13 9
      157 GETTABLEKS                       R13 R13 K41 ["PropertyRows"]
      159 DUPTABLE                         R14 K46 [{"rowDefinitions", "onChange", "isDisabled", "LayoutOrder"}]
      160 GETTABLEKS                       R15 R0 K5 ["propertyRows"]
      162 SETTABLEKS                       R15 R14 K43 ["rowDefinitions"]
      164 GETUPVAL                         R15 10
      165 GETTABLEKS                       R15 R15 K47 ["createUnimplemented"]
      167 LOADK                            R16 K48 ["onChanged"]
      168 CALL                             R15 1 1
      169 SETTABLEKS                       R15 R14 K44 ["onChange"]
      171 LOADB                            R15 1
      172 SETTABLEKS                       R15 R14 K45 ["isDisabled"]
      174 MOVE                             R15 R3
      175 CALL                             R15 0 1
      176 SETTABLEKS                       R15 R14 K7 ["LayoutOrder"]
      178 CALL                             R12 2 1
      179 SETTABLEKS                       R12 R11 K41 ["PropertyRows"]
      181 CALL                             R8 3 1
      182 SETTABLEKS                       R8 R7 K13 ["Content"]
      184 CALL                             R4 3 -1
      185 RETURN                           R4 -1

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
       17 DUPTABLE                         R5 K6 [{"tag", "GroupTransparency", "LayoutOrder"}]
       18 LOADK                            R6 K7 ["row size-full-0 auto-xy radius-medium stroke-standard stroke-default padding-medium gap-medium align-y-center"]
       19 SETTABLEKS                       R6 R5 K3 ["tag"]
       21 LOADK                            R6 K8 [0.5]
       22 SETTABLEKS                       R6 R5 K4 ["GroupTransparency"]
       24 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       26 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       28 DUPTABLE                         R6 K11 [{"Title", "Description"}]
       29 GETUPVAL                         R7 3
       30 GETUPVAL                         R8 5
       31 DUPTABLE                         R9 K13 [{"tag", "Text", "LayoutOrder"}]
       32 LOADK                            R10 K14 ["auto-xy text-title-medium content-emphasis text-align-x-left"]
       33 SETTABLEKS                       R10 R9 K3 ["tag"]
       35 GETTABLEKS                       R10 R0 K15 ["title"]
       37 SETTABLEKS                       R10 R9 K12 ["Text"]
       39 MOVE                             R10 R2
       40 CALL                             R10 0 1
       41 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       43 CALL                             R7 2 1
       44 SETTABLEKS                       R7 R6 K9 ["Title"]
       46 GETUPVAL                         R7 3
       47 GETUPVAL                         R8 5
       48 DUPTABLE                         R9 K13 [{"tag", "Text", "LayoutOrder"}]
       49 LOADK                            R10 K16 ["auto-xy text-body-small content-emphasis text-align-x-left text-truncate-end"]
       50 SETTABLEKS                       R10 R9 K3 ["tag"]
       52 GETTABLEKS                       R10 R1 K17 ["InputRequiredWidget"]
       54 GETTABLEKS                       R10 R10 K18 ["CommandCancelled"]
       56 SETTABLEKS                       R10 R9 K12 ["Text"]
       58 MOVE                             R10 R2
       59 CALL                             R10 0 1
       60 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       62 CALL                             R7 2 1
       63 SETTABLEKS                       R7 R6 K10 ["Description"]
       65 CALL                             R3 3 -1
       66 RETURN                           R3 -1

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
      116 JUMPIFNOT                        R17 ; [+81]
      117 GETUPVAL                         R16 7
      118 GETUPVAL                         R17 8
      119 DUPTABLE                         R18 K17 [{"tag", "LayoutOrder"}]
      120 LOADK                            R19 K18 ["row size-full-0 auto-y gap-small align-y-center padding-bottom-medium"]
      121 SETTABLEKS                       R19 R18 K15 ["tag"]
      123 MOVE                             R19 R13
      124 CALL                             R19 0 1
      125 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      127 DUPTABLE                         R19 K21 [{"Title", "CloseButton"}]
      128 GETUPVAL                         R20 7
      129 GETUPVAL                         R21 9
      130 DUPTABLE                         R22 K23 [{"tag", "Text", "LayoutOrder"}]
      131 LOADK                            R23 K24 ["auto-xy text-title-medium content-emphasis text-align-x-left"]
      132 SETTABLEKS                       R23 R22 K15 ["tag"]
      134 GETTABLEKS                       R23 R0 K25 ["title"]
      136 SETTABLEKS                       R23 R22 K22 ["Text"]
      138 MOVE                             R23 R13
      139 CALL                             R23 0 1
      140 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      142 CALL                             R20 2 1
      143 SETTABLEKS                       R20 R19 K19 ["Title"]
      145 GETTABLEKS                       R20 R0 K26 ["onClose"]
      147 JUMPIFNOT                        R20 ; [+46]
      148 GETUPVAL                         R20 7
      149 GETUPVAL                         R21 10
      150 DUPTABLE                         R22 K32 [{"icon", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      151 GETUPVAL                         R23 11
      152 GETTABLEKS                       R23 R23 K33 ["Enums"]
      154 GETTABLEKS                       R23 R23 K34 ["IconName"]
      156 GETTABLEKS                       R23 R23 K35 ["X"]
      158 SETTABLEKS                       R23 R22 K27 ["icon"]
      160 GETUPVAL                         R23 11
      161 GETTABLEKS                       R23 R23 K33 ["Enums"]
      163 GETTABLEKS                       R23 R23 K36 ["InputSize"]
      165 GETTABLEKS                       R23 R23 K37 ["XSmall"]
      167 SETTABLEKS                       R23 R22 K28 ["size"]
      169 GETUPVAL                         R23 11
      170 GETTABLEKS                       R23 R23 K33 ["Enums"]
      172 GETTABLEKS                       R23 R23 K38 ["ButtonVariant"]
      174 GETTABLEKS                       R23 R23 K39 ["Utility"]
      176 SETTABLEKS                       R23 R22 K29 ["variant"]
      178 GETTABLEKS                       R23 R0 K26 ["onClose"]
      180 SETTABLEKS                       R23 R22 K30 ["onActivated"]
      182 GETUPVAL                         R23 12
      183 GETTABLEKS                       R23 R23 K40 ["InputRequested"]
      185 GETTABLEKS                       R23 R23 K20 ["CloseButton"]
      187 SETTABLEKS                       R23 R22 K31 ["testId"]
      189 MOVE                             R23 R13
      190 CALL                             R23 0 1
      191 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      193 CALL                             R20 2 1
      194 SETTABLEKS                       R20 R19 K20 ["CloseButton"]
      196 CALL                             R16 3 1
      197 JUMP                             ; [+15]
      198 GETUPVAL                         R16 7
      199 GETUPVAL                         R17 9
      200 DUPTABLE                         R18 K23 [{"tag", "Text", "LayoutOrder"}]
      201 LOADK                            R19 K41 ["size-full-0 auto-xy text-title-medium content-emphasis padding-bottom-medium text-align-x-left text-truncate-end"]
      202 SETTABLEKS                       R19 R18 K15 ["tag"]
      204 GETTABLEKS                       R19 R0 K25 ["title"]
      206 SETTABLEKS                       R19 R18 K22 ["Text"]
      208 MOVE                             R19 R13
      209 CALL                             R19 0 1
      210 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      212 CALL                             R16 2 1
      213 SETTABLEKS                       R16 R15 K10 ["TitleRow"]
      215 GETTABLEKS                       R16 R0 K42 ["description"]
      217 JUMPIFNOT                        R16 ; [+15]
      218 GETUPVAL                         R16 7
      219 GETUPVAL                         R17 9
      220 DUPTABLE                         R18 K23 [{"tag", "Text", "LayoutOrder"}]
      221 LOADK                            R19 K43 ["size-full-0 auto-xy text-body-small content-emphasis padding-bottom-small text-align-x-left text-truncate-end"]
      222 SETTABLEKS                       R19 R18 K15 ["tag"]
      224 GETTABLEKS                       R19 R0 K42 ["description"]
      226 SETTABLEKS                       R19 R18 K22 ["Text"]
      228 MOVE                             R19 R13
      229 CALL                             R19 0 1
      230 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      232 CALL                             R16 2 1
      233 SETTABLEKS                       R16 R15 K11 ["Description"]
      235 GETTABLEKS                       R16 R0 K3 ["propertyRows"]
      237 JUMPIFNOT                        R16 ; [+16]
      238 GETUPVAL                         R16 7
      239 GETUPVAL                         R17 13
      240 GETTABLEKS                       R17 R17 K12 ["PropertyRows"]
      242 DUPTABLE                         R18 K46 [{"rowDefinitions", "onChange", "LayoutOrder"}]
      243 GETTABLEKS                       R19 R0 K3 ["propertyRows"]
      245 SETTABLEKS                       R19 R18 K44 ["rowDefinitions"]
      247 SETTABLEKS                       R9 R18 K45 ["onChange"]
      249 MOVE                             R19 R13
      250 CALL                             R19 0 1
      251 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      253 CALL                             R16 2 1
      254 SETTABLEKS                       R16 R15 K12 ["PropertyRows"]
      256 GETUPVAL                         R16 7
      257 GETUPVAL                         R17 8
      258 DUPTABLE                         R18 K17 [{"tag", "LayoutOrder"}]
      259 LOADK                            R19 K47 ["row size-full-0 auto-xy gap-small padding-top-medium"]
      260 SETTABLEKS                       R19 R18 K15 ["tag"]
      262 MOVE                             R19 R13
      263 CALL                             R19 0 1
      264 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      266 DUPTABLE                         R19 K50 [{"ConfirmButton", "CancelButton"}]
      267 GETUPVAL                         R20 7
      268 GETUPVAL                         R21 14
      269 DUPTABLE                         R22 K53 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      270 GETTABLEKS                       R23 R0 K54 ["confirmButtonText"]
      272 JUMPIF                           R23 ; [+2]
      273 GETTABLEKS                       R23 R11 K48 ["ConfirmButton"]
      275 SETTABLEKS                       R23 R22 K51 ["text"]
      277 GETUPVAL                         R23 11
      278 GETTABLEKS                       R23 R23 K33 ["Enums"]
      280 GETTABLEKS                       R23 R23 K36 ["InputSize"]
      282 GETTABLEKS                       R23 R23 K37 ["XSmall"]
      284 SETTABLEKS                       R23 R22 K28 ["size"]
      286 GETUPVAL                         R23 11
      287 GETTABLEKS                       R23 R23 K33 ["Enums"]
      289 GETTABLEKS                       R23 R23 K38 ["ButtonVariant"]
      291 GETTABLEKS                       R23 R23 K55 ["Emphasis"]
      293 SETTABLEKS                       R23 R22 K29 ["variant"]
      295 GETUPVAL                         R24 3
      296 CALL                             R24 0 1
      297 JUMPIFNOT                        R24 ; [+2]
      298 MOVE                             R23 R6
      299 JUMPIF                           R23 ; [+1]
      300 NOT                              R23 R7
      301 SETTABLEKS                       R23 R22 K52 ["isDisabled"]
      303 SETTABLEKS                       R8 R22 K30 ["onActivated"]
      305 MOVE                             R23 R14
      306 CALL                             R23 0 1
      307 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      309 CALL                             R20 2 1
      310 SETTABLEKS                       R20 R19 K48 ["ConfirmButton"]
      312 GETUPVAL                         R20 7
      313 GETUPVAL                         R21 14
      314 DUPTABLE                         R22 K56 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      315 GETTABLEKS                       R23 R11 K49 ["CancelButton"]
      317 SETTABLEKS                       R23 R22 K51 ["text"]
      319 GETUPVAL                         R23 11
      320 GETTABLEKS                       R23 R23 K33 ["Enums"]
      322 GETTABLEKS                       R23 R23 K36 ["InputSize"]
      324 GETTABLEKS                       R23 R23 K37 ["XSmall"]
      326 SETTABLEKS                       R23 R22 K28 ["size"]
      328 GETUPVAL                         R23 11
      329 GETTABLEKS                       R23 R23 K33 ["Enums"]
      331 GETTABLEKS                       R23 R23 K38 ["ButtonVariant"]
      333 GETTABLEKS                       R23 R23 K57 ["Standard"]
      335 SETTABLEKS                       R23 R22 K29 ["variant"]
      337 SETTABLEKS                       R10 R22 K30 ["onActivated"]
      339 MOVE                             R23 R14
      340 CALL                             R23 0 1
      341 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      343 CALL                             R20 2 1
      344 SETTABLEKS                       R20 R19 K49 ["CancelButton"]
      346 CALL                             R16 3 1
      347 SETTABLEKS                       R16 R15 K13 ["ButtonGroup"]
      349 GETUPVAL                         R16 7
      350 GETUPVAL                         R17 8
      351 DUPTABLE                         R18 K17 [{"tag", "LayoutOrder"}]
      352 LOADK                            R19 K58 ["col size-full-0 auto-xy radius-medium padding-medium gap-large stroke-standard stroke-default"]
      353 SETTABLEKS                       R19 R18 K15 ["tag"]
      355 GETTABLEKS                       R19 R0 K16 ["LayoutOrder"]
      357 SETTABLEKS                       R19 R18 K16 ["LayoutOrder"]
      359 DUPTABLE                         R19 K60 [{"Content"}]
      360 GETUPVAL                         R21 15
      361 CALL                             R21 0 1
      362 JUMPIFNOT                        R21 ; [+81]
      363 GETUPVAL                         R20 7
      364 LOADK                            R21 K61 ["ScrollingFrame"]
      365 DUPTABLE                         R22 K70 [{"Size", "AutomaticCanvasSize", "CanvasSize", "ClipsDescendants", "ScrollingDirection", "VerticalScrollBarInset", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
      366 GETIMPORT                        R23 K73 [UDim2.new]
      368 LOADN                            R24 1
      369 LOADN                            R25 0
      370 LOADN                            R26 0
      371 FASTCALL2K                       MATH_MIN R3 K74 ; [+5]
      373 MOVE                             R28 R3
      374 LOADK                            R29 K74 [375]
      375 GETIMPORT                        R27 K77 [math.min]
      377 CALL                             R27 2 1
      378 CALL                             R23 4 1
      379 SETTABLEKS                       R23 R22 K62 ["Size"]
      381 GETIMPORT                        R23 K81 [Enum.AutomaticSize.Y]
      383 SETTABLEKS                       R23 R22 K63 ["AutomaticCanvasSize"]
      385 GETIMPORT                        R23 K73 [UDim2.new]
      387 LOADN                            R24 0
      388 LOADN                            R25 0
      389 LOADN                            R26 0
      390 LOADN                            R27 0
      391 CALL                             R23 4 1
      392 SETTABLEKS                       R23 R22 K64 ["CanvasSize"]
      394 LOADB                            R23 1
      395 SETTABLEKS                       R23 R22 K65 ["ClipsDescendants"]
      397 GETIMPORT                        R23 K82 [Enum.ScrollingDirection.Y]
      399 SETTABLEKS                       R23 R22 K66 ["ScrollingDirection"]
      401 GETIMPORT                        R23 K85 [Enum.ScrollBarInset.ScrollBar]
      403 SETTABLEKS                       R23 R22 K67 ["VerticalScrollBarInset"]
      405 LOADN                            R23 1
      406 SETTABLEKS                       R23 R22 K68 ["BackgroundTransparency"]
      408 LOADN                            R23 0
      409 SETTABLEKS                       R23 R22 K69 ["BorderSizePixel"]
      411 MOVE                             R23 R12
      412 CALL                             R23 0 1
      413 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      415 GETUPVAL                         R23 4
      416 GETTABLEKS                       R23 R23 K86 ["join"]
      418 MOVE                             R24 R15
      419 DUPTABLE                         R25 K88 [{"Layout"}]
      420 GETUPVAL                         R26 7
      421 LOADK                            R27 K89 ["UIListLayout"]
      422 NEWTABLE                         R28 4 0
      424 GETIMPORT                        R29 K92 [Enum.FillDirection.Vertical]
      426 SETTABLEKS                       R29 R28 K90 ["FillDirection"]
      428 GETIMPORT                        R29 K94 [Enum.SortOrder.LayoutOrder]
      430 SETTABLEKS                       R29 R28 K93 ["SortOrder"]
      432 GETUPVAL                         R29 0
      433 GETTABLEKS                       R29 R29 K95 ["Change"]
      435 GETTABLEKS                       R29 R29 K96 ["AbsoluteContentSize"]
      437 SETTABLE                         R5 R28 R29
      438 CALL                             R26 2 1
      439 SETTABLEKS                       R26 R25 K87 ["Layout"]
      441 CALL                             R23 2 -1
      442 CALL                             R20 -1 1
      443 JUMP                             ; [+12]
      444 GETUPVAL                         R20 7
      445 GETUPVAL                         R21 8
      446 DUPTABLE                         R22 K17 [{"tag", "LayoutOrder"}]
      447 LOADK                            R23 K97 ["col size-full-0 auto-xy"]
      448 SETTABLEKS                       R23 R22 K15 ["tag"]
      450 MOVE                             R23 R12
      451 CALL                             R23 0 1
      452 SETTABLEKS                       R23 R22 K16 ["LayoutOrder"]
      454 MOVE                             R23 R15
      455 CALL                             R20 3 1
      456 SETTABLEKS                       R20 R19 K59 ["Content"]
      458 CALL                             R16 3 -1
      459 RETURN                           R16 -1

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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R2 R0 K3 ["status"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K4 ["Recorded"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+5]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K4 ["Recorded"]
       18 JUMP                             ; [+3]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K5 ["Cancelled"]
       22 DUPTABLE                         R2 K10 [{"status", "title", "description", "confirmButtonText", "propertyRows"}]
       23 SETTABLEKS                       R1 R2 K3 ["status"]
       25 GETTABLEKS                       R3 R0 K6 ["title"]
       27 SETTABLEKS                       R3 R2 K6 ["title"]
       29 GETTABLEKS                       R3 R0 K7 ["description"]
       31 SETTABLEKS                       R3 R2 K7 ["description"]
       33 GETTABLEKS                       R3 R0 K8 ["confirmButtonText"]
       35 SETTABLEKS                       R3 R2 K8 ["confirmButtonText"]
       37 GETTABLEKS                       R3 R0 K9 ["propertyRows"]
       39 SETTABLEKS                       R3 R2 K9 ["propertyRows"]
       41 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        4 LOADK                            R4 K0 ["FFlagAssistantMultipleChatPersistence is not enabled!"]
        5 GETIMPORT                        R2 K2 [assert]
        7 CALL                             R2 2 0
        8 DUPTABLE                         R2 K11 [{"type", "expanded", "status", "title", "description", "confirmButtonText", "propertyRows", "onContinue"}]
        9 LOADK                            R3 K12 ["InputRequested"]
       10 SETTABLEKS                       R3 R2 K3 ["type"]
       12 LOADB                            R3 0
       13 SETTABLEKS                       R3 R2 K4 ["expanded"]
       15 GETTABLEKS                       R3 R0 K5 ["status"]
       17 JUMPIF                           R3 ; [+3]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K13 ["Cancelled"]
       21 SETTABLEKS                       R3 R2 K5 ["status"]
       23 GETTABLEKS                       R4 R0 K6 ["title"]
       25 ORK                              R3 R4 K14 ["UNKNOWN_TITLE"]
       26 SETTABLEKS                       R3 R2 K6 ["title"]
       28 GETTABLEKS                       R4 R0 K7 ["description"]
       30 ORK                              R3 R4 K15 ["UNKNOWN_DESCRIPTION"]
       31 SETTABLEKS                       R3 R2 K7 ["description"]
       33 GETTABLEKS                       R4 R0 K8 ["confirmButtonText"]
       35 ORK                              R3 R4 K16 ["UNKNOWN_CONFIRM_BUTTON_TEXT"]
       36 SETTABLEKS                       R3 R2 K8 ["confirmButtonText"]
       38 GETTABLEKS                       R3 R0 K9 ["propertyRows"]
       40 JUMPIF                           R3 ; [+2]
       41 NEWTABLE                         R3 0 0
       43 SETTABLEKS                       R3 R2 K9 ["propertyRows"]
       45 GETUPVAL                         R3 2
       46 GETTABLEKS                       R3 R3 K17 ["createUnimplemented"]
       48 LOADK                            R4 K10 ["onContinue"]
       49 CALL                             R3 1 1
       50 SETTABLEKS                       R3 R2 K10 ["onContinue"]
       52 RETURN                           R2 1

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
      106 GETTABLEKS                       R15 R15 K27 ["FFlagAssistantMultipleChatPersistence"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K24 ["Flags"]
      113 GETTABLEKS                       R16 R16 K28 ["FFlagAssistantSegmentationPanelScroll"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R17 R0 K24 ["Flags"]
      120 GETTABLEKS                       R17 R17 K29 ["FFlagAssistantSegmentationPromptModeSelector"]
      122 CALL                             R16 1 1
      123 GETTABLEKS                       R17 R3 K30 ["Button"]
      125 GETTABLEKS                       R18 R3 K31 ["IconButton"]
      127 GETTABLEKS                       R19 R3 K32 ["Text"]
      129 GETTABLEKS                       R20 R3 K33 ["View"]
      131 GETTABLEKS                       R21 R6 K34 ["createElement"]
      133 GETTABLEKS                       R22 R7 K35 ["createNextOrder"]
      135 DUPTABLE                         R23 K39 [{"Required", "Recorded", "Cancelled"}]
      136 LOADK                            R24 K36 ["Required"]
      137 SETTABLEKS                       R24 R23 K36 ["Required"]
      139 LOADK                            R24 K37 ["Recorded"]
      140 SETTABLEKS                       R24 R23 K37 ["Recorded"]
      142 LOADK                            R24 K38 ["Cancelled"]
      143 SETTABLEKS                       R24 R23 K38 ["Cancelled"]
      145 DUPCLOSURE                       R24 K40 [PROTO_2]
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R10
      148 CAPTURE                          VAL R22
      149 CAPTURE                          VAL R21
      150 CAPTURE                          VAL R1
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R18
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R5
      156 CAPTURE                          VAL R7
      157 DUPCLOSURE                       R25 K41 [PROTO_4]
      158 CAPTURE                          VAL R6
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R22
      161 CAPTURE                          VAL R21
      162 CAPTURE                          VAL R20
      163 CAPTURE                          VAL R19
      164 DUPCLOSURE                       R26 K42 [PROTO_5]
      165 DUPCLOSURE                       R27 K43 [PROTO_17]
      166 CAPTURE                          VAL R6
      167 CAPTURE                          VAL R13
      168 CAPTURE                          VAL R23
      169 CAPTURE                          VAL R16
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R22
      173 CAPTURE                          VAL R21
      174 CAPTURE                          VAL R20
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R18
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R9
      179 CAPTURE                          VAL R5
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R15
      182 DUPCLOSURE                       R28 K44 [PROTO_22]
      183 CAPTURE                          VAL R12
      184 CAPTURE                          VAL R23
      185 CAPTURE                          VAL R6
      186 CAPTURE                          VAL R4
      187 CAPTURE                          VAL R21
      188 CAPTURE                          VAL R27
      189 CAPTURE                          VAL R16
      190 CAPTURE                          VAL R24
      191 CAPTURE                          VAL R25
      192 DUPTABLE                         R29 K47 [{"toMeta", "fromMeta"}]
      193 DUPCLOSURE                       R30 K48 [PROTO_23]
      194 CAPTURE                          VAL R14
      195 CAPTURE                          VAL R23
      196 SETTABLEKS                       R30 R29 K45 ["toMeta"]
      198 DUPCLOSURE                       R30 K49 [PROTO_24]
      199 CAPTURE                          VAL R14
      200 CAPTURE                          VAL R23
      201 CAPTURE                          VAL R7
      202 SETTABLEKS                       R30 R29 K46 ["fromMeta"]
      204 DUPTABLE                         R30 K54 [{"Type", "ContentWidget", "Serialization", "InputStatus"}]
      205 LOADK                            R31 K55 ["InputRequested"]
      206 SETTABLEKS                       R31 R30 K50 ["Type"]
      208 GETTABLEKS                       R31 R6 K56 ["memo"]
      210 MOVE                             R32 R28
      211 CALL                             R31 1 1
      212 SETTABLEKS                       R31 R30 K51 ["ContentWidget"]
      214 SETTABLEKS                       R29 R30 K52 ["Serialization"]
      216 SETTABLEKS                       R23 R30 K53 ["InputStatus"]
      218 RETURN                           R30 1
