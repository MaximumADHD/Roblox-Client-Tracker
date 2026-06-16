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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 MOVE                             R2 R0
        4 NEWTABLE                         R3 1 0
        6 GETUPVAL                         R4 1
        7 GETUPVAL                         R5 2
        8 SETTABLE                         R5 R3 R4
        9 CALL                             R1 2 1
       10 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Cancelled"]
        3 SETTABLEKS                       R1 R0 K1 ["status"]
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["editThisContent"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["contentId"]
        6 DUPCLOSURE                       R2 K2 [PROTO_13]
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

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["useMemo"]
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R5 0 2
       14 GETTABLEKS                       R6 R0 K2 ["propertyRows"]
       16 MOVE                             R7 R1
       17 SETLIST                          R5 R6 2 [1]
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K1 ["useMemo"]
       23 NEWCLOSURE                       R5 P2
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R1
       27 NEWTABLE                         R6 0 2
       29 GETTABLEKS                       R7 R0 K3 ["canConfirm"]
       31 MOVE                             R8 R1
       32 SETLIST                          R6 R7 2 [1]
       34 CALL                             R4 2 1
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       38 NEWCLOSURE                       R6 P3
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          VAL R1
       42 CAPTURE                          UPVAL U3
       43 NEWTABLE                         R7 0 4
       45 GETTABLEKS                       R8 R0 K5 ["editThisContent"]
       47 GETTABLEKS                       R9 R0 K6 ["contentId"]
       49 GETTABLEKS                       R10 R0 K7 ["onContinue"]
       51 MOVE                             R11 R1
       52 SETLIST                          R7 R8 4 [1]
       54 CALL                             R5 2 1
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       58 NEWCLOSURE                       R7 P4
       59 CAPTURE                          VAL R2
       60 CAPTURE                          UPVAL U4
       61 NEWTABLE                         R8 0 0
       63 CALL                             R6 2 1
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R7 R7 K4 ["useCallback"]
       67 NEWCLOSURE                       R8 P5
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U2
       70 NEWTABLE                         R9 0 3
       72 GETTABLEKS                       R10 R0 K5 ["editThisContent"]
       74 GETTABLEKS                       R11 R0 K6 ["contentId"]
       76 GETTABLEKS                       R12 R0 K7 ["onContinue"]
       78 SETLIST                          R9 R10 3 [1]
       80 CALL                             R7 2 1
       81 GETUPVAL                         R8 0
       82 GETTABLEKS                       R8 R8 K1 ["useMemo"]
       84 DUPCLOSURE                       R9 K8 [PROTO_15]
       85 CAPTURE                          UPVAL U5
       86 NEWTABLE                         R10 0 1
       88 GETUPVAL                         R11 5
       89 GETTABLEKS                       R11 R11 K9 ["locale"]
       91 SETLIST                          R10 R11 1 [1]
       93 CALL                             R8 2 1
       94 GETUPVAL                         R9 6
       95 CALL                             R9 0 1
       96 GETUPVAL                         R10 7
       97 GETUPVAL                         R11 8
       98 DUPTABLE                         R12 K12 [{"tag", "LayoutOrder"}]
       99 LOADK                            R13 K13 ["col size-full-0 auto-xy radius-medium padding-medium gap-large stroke-standard stroke-default"]
      100 SETTABLEKS                       R13 R12 K10 ["tag"]
      102 GETTABLEKS                       R13 R0 K11 ["LayoutOrder"]
      104 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
      106 DUPTABLE                         R13 K16 [{"Content", "ButtonGroup"}]
      107 GETUPVAL                         R14 7
      108 GETUPVAL                         R15 8
      109 DUPTABLE                         R16 K12 [{"tag", "LayoutOrder"}]
      110 LOADK                            R17 K17 ["col size-full-0 auto-xy"]
      111 SETTABLEKS                       R17 R16 K10 ["tag"]
      113 MOVE                             R17 R9
      114 CALL                             R17 0 1
      115 SETTABLEKS                       R17 R16 K11 ["LayoutOrder"]
      117 DUPTABLE                         R17 K21 [{"TitleRow", "Description", "PropertyRows"}]
      118 GETUPVAL                         R19 3
      119 CALL                             R19 0 1
      120 JUMPIFNOT                        R19 ; [+81]
      121 GETUPVAL                         R18 7
      122 GETUPVAL                         R19 8
      123 DUPTABLE                         R20 K12 [{"tag", "LayoutOrder"}]
      124 LOADK                            R21 K22 ["row size-full-0 auto-y gap-small align-y-center padding-bottom-medium"]
      125 SETTABLEKS                       R21 R20 K10 ["tag"]
      127 MOVE                             R21 R9
      128 CALL                             R21 0 1
      129 SETTABLEKS                       R21 R20 K11 ["LayoutOrder"]
      131 DUPTABLE                         R21 K25 [{"Title", "CloseButton"}]
      132 GETUPVAL                         R22 7
      133 GETUPVAL                         R23 9
      134 DUPTABLE                         R24 K27 [{"tag", "Text", "LayoutOrder"}]
      135 LOADK                            R25 K28 ["fill auto-y text-title-medium content-emphasis text-align-x-left text-truncate-end"]
      136 SETTABLEKS                       R25 R24 K10 ["tag"]
      138 GETTABLEKS                       R25 R0 K29 ["title"]
      140 SETTABLEKS                       R25 R24 K26 ["Text"]
      142 MOVE                             R25 R9
      143 CALL                             R25 0 1
      144 SETTABLEKS                       R25 R24 K11 ["LayoutOrder"]
      146 CALL                             R22 2 1
      147 SETTABLEKS                       R22 R21 K23 ["Title"]
      149 GETTABLEKS                       R22 R0 K30 ["onClose"]
      151 JUMPIFNOT                        R22 ; [+46]
      152 GETUPVAL                         R22 7
      153 GETUPVAL                         R23 10
      154 DUPTABLE                         R24 K36 [{"icon", "size", "variant", "onActivated", "testId", "LayoutOrder"}]
      155 GETUPVAL                         R25 11
      156 GETTABLEKS                       R25 R25 K37 ["Enums"]
      158 GETTABLEKS                       R25 R25 K38 ["IconName"]
      160 GETTABLEKS                       R25 R25 K39 ["X"]
      162 SETTABLEKS                       R25 R24 K31 ["icon"]
      164 GETUPVAL                         R25 11
      165 GETTABLEKS                       R25 R25 K37 ["Enums"]
      167 GETTABLEKS                       R25 R25 K40 ["InputSize"]
      169 GETTABLEKS                       R25 R25 K41 ["XSmall"]
      171 SETTABLEKS                       R25 R24 K32 ["size"]
      173 GETUPVAL                         R25 11
      174 GETTABLEKS                       R25 R25 K37 ["Enums"]
      176 GETTABLEKS                       R25 R25 K42 ["ButtonVariant"]
      178 GETTABLEKS                       R25 R25 K43 ["Utility"]
      180 SETTABLEKS                       R25 R24 K33 ["variant"]
      182 GETTABLEKS                       R25 R0 K30 ["onClose"]
      184 SETTABLEKS                       R25 R24 K34 ["onActivated"]
      186 GETUPVAL                         R25 12
      187 GETTABLEKS                       R25 R25 K44 ["InputRequested"]
      189 GETTABLEKS                       R25 R25 K24 ["CloseButton"]
      191 SETTABLEKS                       R25 R24 K35 ["testId"]
      193 MOVE                             R25 R9
      194 CALL                             R25 0 1
      195 SETTABLEKS                       R25 R24 K11 ["LayoutOrder"]
      197 CALL                             R22 2 1
      198 SETTABLEKS                       R22 R21 K24 ["CloseButton"]
      200 CALL                             R18 3 1
      201 JUMP                             ; [+15]
      202 GETUPVAL                         R18 7
      203 GETUPVAL                         R19 9
      204 DUPTABLE                         R20 K27 [{"tag", "Text", "LayoutOrder"}]
      205 LOADK                            R21 K45 ["size-full-0 auto-xy text-title-medium content-emphasis padding-bottom-medium text-align-x-left text-truncate-end"]
      206 SETTABLEKS                       R21 R20 K10 ["tag"]
      208 GETTABLEKS                       R21 R0 K29 ["title"]
      210 SETTABLEKS                       R21 R20 K26 ["Text"]
      212 MOVE                             R21 R9
      213 CALL                             R21 0 1
      214 SETTABLEKS                       R21 R20 K11 ["LayoutOrder"]
      216 CALL                             R18 2 1
      217 SETTABLEKS                       R18 R17 K18 ["TitleRow"]
      219 GETTABLEKS                       R18 R0 K46 ["description"]
      221 JUMPIFNOT                        R18 ; [+15]
      222 GETUPVAL                         R18 7
      223 GETUPVAL                         R19 9
      224 DUPTABLE                         R20 K27 [{"tag", "Text", "LayoutOrder"}]
      225 LOADK                            R21 K47 ["size-full-0 auto-xy text-body-small content-emphasis padding-bottom-small text-align-x-left text-truncate-end"]
      226 SETTABLEKS                       R21 R20 K10 ["tag"]
      228 GETTABLEKS                       R21 R0 K46 ["description"]
      230 SETTABLEKS                       R21 R20 K26 ["Text"]
      232 MOVE                             R21 R9
      233 CALL                             R21 0 1
      234 SETTABLEKS                       R21 R20 K11 ["LayoutOrder"]
      236 CALL                             R18 2 1
      237 SETTABLEKS                       R18 R17 K19 ["Description"]
      239 GETTABLEKS                       R18 R0 K2 ["propertyRows"]
      241 JUMPIFNOT                        R18 ; [+16]
      242 GETUPVAL                         R18 7
      243 GETUPVAL                         R19 13
      244 GETTABLEKS                       R19 R19 K20 ["PropertyRows"]
      246 DUPTABLE                         R20 K50 [{"rowDefinitions", "onChange", "LayoutOrder"}]
      247 GETTABLEKS                       R21 R0 K2 ["propertyRows"]
      249 SETTABLEKS                       R21 R20 K48 ["rowDefinitions"]
      251 SETTABLEKS                       R6 R20 K49 ["onChange"]
      253 MOVE                             R21 R9
      254 CALL                             R21 0 1
      255 SETTABLEKS                       R21 R20 K11 ["LayoutOrder"]
      257 CALL                             R18 2 1
      258 SETTABLEKS                       R18 R17 K20 ["PropertyRows"]
      260 CALL                             R14 3 1
      261 SETTABLEKS                       R14 R13 K14 ["Content"]
      263 GETUPVAL                         R14 7
      264 GETUPVAL                         R15 8
      265 DUPTABLE                         R16 K12 [{"tag", "LayoutOrder"}]
      266 LOADK                            R17 K51 ["row size-full-0 auto-xy gap-small"]
      267 SETTABLEKS                       R17 R16 K10 ["tag"]
      269 MOVE                             R17 R9
      270 CALL                             R17 0 1
      271 SETTABLEKS                       R17 R16 K11 ["LayoutOrder"]
      273 DUPTABLE                         R17 K54 [{"ConfirmButton", "CancelButton"}]
      274 GETUPVAL                         R18 7
      275 GETUPVAL                         R19 14
      276 DUPTABLE                         R20 K57 [{"text", "size", "variant", "isDisabled", "onActivated", "LayoutOrder"}]
      277 GETTABLEKS                       R21 R0 K58 ["confirmButtonText"]
      279 JUMPIF                           R21 ; [+2]
      280 GETTABLEKS                       R21 R8 K52 ["ConfirmButton"]
      282 SETTABLEKS                       R21 R20 K55 ["text"]
      284 GETUPVAL                         R21 11
      285 GETTABLEKS                       R21 R21 K37 ["Enums"]
      287 GETTABLEKS                       R21 R21 K40 ["InputSize"]
      289 GETTABLEKS                       R21 R21 K41 ["XSmall"]
      291 SETTABLEKS                       R21 R20 K32 ["size"]
      293 GETUPVAL                         R21 11
      294 GETTABLEKS                       R21 R21 K37 ["Enums"]
      296 GETTABLEKS                       R21 R21 K42 ["ButtonVariant"]
      298 GETTABLEKS                       R21 R21 K59 ["Emphasis"]
      300 SETTABLEKS                       R21 R20 K33 ["variant"]
      302 GETUPVAL                         R22 3
      303 CALL                             R22 0 1
      304 JUMPIFNOT                        R22 ; [+2]
      305 MOVE                             R21 R3
      306 JUMPIF                           R21 ; [+1]
      307 NOT                              R21 R4
      308 SETTABLEKS                       R21 R20 K56 ["isDisabled"]
      310 SETTABLEKS                       R5 R20 K34 ["onActivated"]
      312 MOVE                             R21 R9
      313 CALL                             R21 0 1
      314 SETTABLEKS                       R21 R20 K11 ["LayoutOrder"]
      316 CALL                             R18 2 1
      317 SETTABLEKS                       R18 R17 K52 ["ConfirmButton"]
      319 GETUPVAL                         R18 7
      320 GETUPVAL                         R19 14
      321 DUPTABLE                         R20 K60 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      322 GETTABLEKS                       R21 R8 K53 ["CancelButton"]
      324 SETTABLEKS                       R21 R20 K55 ["text"]
      326 GETUPVAL                         R21 11
      327 GETTABLEKS                       R21 R21 K37 ["Enums"]
      329 GETTABLEKS                       R21 R21 K40 ["InputSize"]
      331 GETTABLEKS                       R21 R21 K41 ["XSmall"]
      333 SETTABLEKS                       R21 R20 K32 ["size"]
      335 GETUPVAL                         R21 11
      336 GETTABLEKS                       R21 R21 K37 ["Enums"]
      338 GETTABLEKS                       R21 R21 K42 ["ButtonVariant"]
      340 GETTABLEKS                       R21 R21 K61 ["Standard"]
      342 SETTABLEKS                       R21 R20 K33 ["variant"]
      344 SETTABLEKS                       R7 R20 K34 ["onActivated"]
      346 MOVE                             R21 R9
      347 CALL                             R21 0 1
      348 SETTABLEKS                       R21 R20 K11 ["LayoutOrder"]
      350 CALL                             R18 2 1
      351 SETTABLEKS                       R18 R17 K53 ["CancelButton"]
      353 CALL                             R14 3 1
      354 SETTABLEKS                       R14 R13 K15 ["ButtonGroup"]
      356 CALL                             R10 3 -1
      357 RETURN                           R10 -1

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Cancelled"]
        3 SETTABLEKS                       R1 R0 K1 ["status"]
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["editThisContent"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["contentId"]
        6 DUPCLOSURE                       R2 K2 [PROTO_17]
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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
      113 GETTABLEKS                       R16 R16 K28 ["FFlagAssistantSegmentationPromptModeSelector"]
      115 CALL                             R15 1 1
      116 GETTABLEKS                       R16 R3 K29 ["Button"]
      118 GETTABLEKS                       R17 R3 K30 ["IconButton"]
      120 GETTABLEKS                       R18 R3 K31 ["Text"]
      122 GETTABLEKS                       R19 R3 K32 ["View"]
      124 GETTABLEKS                       R20 R6 K33 ["createElement"]
      126 GETTABLEKS                       R21 R7 K34 ["createNextOrder"]
      128 DUPTABLE                         R22 K38 [{"Required", "Recorded", "Cancelled"}]
      129 LOADK                            R23 K35 ["Required"]
      130 SETTABLEKS                       R23 R22 K35 ["Required"]
      132 LOADK                            R23 K36 ["Recorded"]
      133 SETTABLEKS                       R23 R22 K36 ["Recorded"]
      135 LOADK                            R23 K37 ["Cancelled"]
      136 SETTABLEKS                       R23 R22 K37 ["Cancelled"]
      138 DUPCLOSURE                       R23 K39 [PROTO_2]
      139 CAPTURE                          VAL R6
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R21
      142 CAPTURE                          VAL R20
      143 CAPTURE                          VAL R1
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R18
      146 CAPTURE                          VAL R17
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R7
      150 DUPCLOSURE                       R24 K40 [PROTO_4]
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R21
      154 CAPTURE                          VAL R20
      155 CAPTURE                          VAL R19
      156 CAPTURE                          VAL R18
      157 DUPCLOSURE                       R25 K41 [PROTO_5]
      158 DUPCLOSURE                       R26 K42 [PROTO_16]
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R13
      161 CAPTURE                          VAL R22
      162 CAPTURE                          VAL R15
      163 CAPTURE                          VAL R2
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R21
      166 CAPTURE                          VAL R20
      167 CAPTURE                          VAL R19
      168 CAPTURE                          VAL R18
      169 CAPTURE                          VAL R17
      170 CAPTURE                          VAL R3
      171 CAPTURE                          VAL R9
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R16
      174 DUPCLOSURE                       R27 K43 [PROTO_21]
      175 CAPTURE                          VAL R12
      176 CAPTURE                          VAL R22
      177 CAPTURE                          VAL R6
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R20
      180 CAPTURE                          VAL R26
      181 CAPTURE                          VAL R15
      182 CAPTURE                          VAL R23
      183 CAPTURE                          VAL R24
      184 DUPTABLE                         R28 K46 [{"toMeta", "fromMeta"}]
      185 DUPCLOSURE                       R29 K47 [PROTO_22]
      186 CAPTURE                          VAL R14
      187 CAPTURE                          VAL R22
      188 SETTABLEKS                       R29 R28 K44 ["toMeta"]
      190 DUPCLOSURE                       R29 K48 [PROTO_23]
      191 CAPTURE                          VAL R14
      192 CAPTURE                          VAL R22
      193 CAPTURE                          VAL R7
      194 SETTABLEKS                       R29 R28 K45 ["fromMeta"]
      196 DUPTABLE                         R29 K53 [{"Type", "ContentWidget", "Serialization", "InputStatus"}]
      197 LOADK                            R30 K54 ["InputRequested"]
      198 SETTABLEKS                       R30 R29 K49 ["Type"]
      200 GETTABLEKS                       R30 R6 K55 ["memo"]
      202 MOVE                             R31 R27
      203 CALL                             R30 1 1
      204 SETTABLEKS                       R30 R29 K50 ["ContentWidget"]
      206 SETTABLEKS                       R28 R29 K51 ["Serialization"]
      208 SETTABLEKS                       R22 R29 K52 ["InputStatus"]
      210 RETURN                           R29 1
