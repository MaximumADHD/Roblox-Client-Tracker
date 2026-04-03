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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_0]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["locale"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 2
       14 CALL                             R2 0 1
       15 GETUPVAL                         R3 3
       16 GETUPVAL                         R5 4
       17 GETTABLEKS                       R4 R5 K3 ["Root"]
       19 DUPTABLE                         R5 K8 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       20 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       22 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       24 GETTABLEKS                       R6 R0 K5 ["expanded"]
       26 SETTABLEKS                       R6 R5 K5 ["expanded"]
       28 GETTABLEKS                       R6 R0 K6 ["contentId"]
       30 SETTABLEKS                       R6 R5 K6 ["contentId"]
       32 GETTABLEKS                       R6 R0 K7 ["editThisContent"]
       34 SETTABLEKS                       R6 R5 K7 ["editThisContent"]
       36 DUPTABLE                         R6 K11 [{"Header", "Content"}]
       37 GETUPVAL                         R7 3
       38 GETUPVAL                         R9 4
       39 GETTABLEKS                       R8 R9 K9 ["Header"]
       41 DUPTABLE                         R9 K13 [{"LayoutOrder", "testId"}]
       42 MOVE                             R10 R2
       43 CALL                             R10 0 1
       44 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       46 GETUPVAL                         R12 5
       47 GETTABLEKS                       R11 R12 K14 ["InputRequested"]
       49 GETTABLEKS                       R10 R11 K15 ["Expand"]
       51 SETTABLEKS                       R10 R9 K12 ["testId"]
       53 DUPTABLE                         R10 K17 [{"Text"}]
       54 GETUPVAL                         R11 3
       55 GETUPVAL                         R12 6
       56 DUPTABLE                         R13 K19 [{"tag", "Text", "LayoutOrder"}]
       57 LOADK                            R14 K20 ["size-0-full auto-x text-label-small content-default text-truncate-end"]
       58 SETTABLEKS                       R14 R13 K18 ["tag"]
       60 GETTABLEKS                       R15 R1 K21 ["InputRequiredWidget"]
       62 GETTABLEKS                       R14 R15 K22 ["ResponseRecorded"]
       64 SETTABLEKS                       R14 R13 K16 ["Text"]
       66 MOVE                             R14 R2
       67 CALL                             R14 0 1
       68 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       70 CALL                             R11 2 1
       71 SETTABLEKS                       R11 R10 K16 ["Text"]
       73 CALL                             R7 3 1
       74 SETTABLEKS                       R7 R6 K9 ["Header"]
       76 GETUPVAL                         R7 3
       77 GETUPVAL                         R9 4
       78 GETTABLEKS                       R8 R9 K10 ["Content"]
       80 DUPTABLE                         R9 K23 [{"tag", "LayoutOrder"}]
       81 LOADK                            R10 K24 ["col size-0-0 fill auto-y padding-x-medium"]
       82 SETTABLEKS                       R10 R9 K18 ["tag"]
       84 MOVE                             R10 R2
       85 CALL                             R10 0 1
       86 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       88 DUPTABLE                         R10 K26 [{"PropertyRows"}]
       89 GETTABLEKS                       R11 R0 K27 ["propertyRows"]
       91 JUMPIFNOT                        R11 ; [+24]
       92 GETUPVAL                         R11 3
       93 GETUPVAL                         R13 7
       94 GETTABLEKS                       R12 R13 K25 ["PropertyRows"]
       96 DUPTABLE                         R13 K31 [{"rowDefinitions", "onChange", "isDisabled", "LayoutOrder"}]
       97 GETTABLEKS                       R14 R0 K27 ["propertyRows"]
       99 SETTABLEKS                       R14 R13 K28 ["rowDefinitions"]
      101 GETUPVAL                         R15 8
      102 GETTABLEKS                       R14 R15 K32 ["createUnimplemented"]
      104 LOADK                            R15 K33 ["onChanged"]
      105 CALL                             R14 1 1
      106 SETTABLEKS                       R14 R13 K29 ["onChange"]
      108 LOADB                            R14 1
      109 SETTABLEKS                       R14 R13 K30 ["isDisabled"]
      111 MOVE                             R14 R2
      112 CALL                             R14 0 1
      113 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
      115 CALL                             R11 2 1
      116 SETTABLEKS                       R11 R10 K25 ["PropertyRows"]
      118 CALL                             R7 3 1
      119 SETTABLEKS                       R7 R6 K10 ["Content"]
      121 CALL                             R3 3 -1
      122 RETURN                           R3 -1

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_2]
        4 CAPTURE                          UPVAL U1
        5 NEWTABLE                         R3 0 1
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R4 R5 K2 ["locale"]
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
       52 GETTABLEKS                       R11 R1 K17 ["InputRequiredWidget"]
       54 GETTABLEKS                       R10 R11 K18 ["CommandCancelled"]
       56 SETTABLEKS                       R10 R9 K12 ["Text"]
       58 MOVE                             R10 R2
       59 CALL                             R10 0 1
       60 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       62 CALL                             R7 2 1
       63 SETTABLEKS                       R7 R6 K10 ["Description"]
       65 CALL                             R3 3 -1
       66 RETURN                           R3 -1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Recorded"]
        3 SETTABLEKS                       R1 R0 K1 ["status"]
        5 GETTABLEKS                       R1 R0 K2 ["propertyRows"]
        7 JUMPIFNOT                        R1 ; [+24]
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
       27 SETTABLE                         R7 R1 R5
       28 FORGLOOP                         R2 2 ; [-12]
       30 SETTABLEKS                       R1 R0 K2 ["propertyRows"]
       32 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["editThisContent"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["contentId"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CALL                             R0 2 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R0 R1 K2 ["onContinue"]
       13 JUMPIFNOT                        R0 ; [+6]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R0 R1 K2 ["onContinue"]
       17 LOADB                            R1 1
       18 GETUPVAL                         R2 2
       19 CALL                             R0 2 0
       20 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["join"]
        3 MOVE                             R2 R0
        4 NEWTABLE                         R3 1 0
        6 GETUPVAL                         R4 1
        7 GETUPVAL                         R5 2
        8 SETTABLE                         R5 R3 R4
        9 CALL                             R1 2 1
       10 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Cancelled"]
        3 SETTABLEKS                       R1 R0 K1 ["status"]
        5 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["editThisContent"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["contentId"]
        6 DUPCLOSURE                       R2 K2 [PROTO_10]
        7 CAPTURE                          UPVAL U1
        8 CALL                             R0 2 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R0 R1 K3 ["onContinue"]
       12 JUMPIFNOT                        R0 ; [+6]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R0 R1 K3 ["onContinue"]
       16 LOADB                            R1 0
       17 LOADNIL                          R2
       18 CALL                             R0 2 0
       19 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["useCallback"]
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R1
       13 NEWTABLE                         R5 0 4
       15 GETTABLEKS                       R6 R0 K2 ["editThisContent"]
       17 GETTABLEKS                       R7 R0 K3 ["contentId"]
       19 GETTABLEKS                       R8 R0 K4 ["onContinue"]
       21 MOVE                             R9 R1
       22 SETLIST                          R5 R6 4 [1]
       24 CALL                             R3 2 1
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R4 R5 K1 ["useCallback"]
       28 NEWCLOSURE                       R5 P2
       29 CAPTURE                          VAL R2
       30 CAPTURE                          UPVAL U2
       31 NEWTABLE                         R6 0 0
       33 CALL                             R4 2 1
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R5 R6 K1 ["useCallback"]
       37 NEWCLOSURE                       R6 P3
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U1
       40 NEWTABLE                         R7 0 3
       42 GETTABLEKS                       R8 R0 K2 ["editThisContent"]
       44 GETTABLEKS                       R9 R0 K3 ["contentId"]
       46 GETTABLEKS                       R10 R0 K4 ["onContinue"]
       48 SETLIST                          R7 R8 3 [1]
       50 CALL                             R5 2 1
       51 GETUPVAL                         R7 0
       52 GETTABLEKS                       R6 R7 K5 ["useMemo"]
       54 DUPCLOSURE                       R7 K6 [PROTO_12]
       55 CAPTURE                          UPVAL U3
       56 NEWTABLE                         R8 0 1
       58 GETUPVAL                         R10 3
       59 GETTABLEKS                       R9 R10 K7 ["locale"]
       61 SETLIST                          R8 R9 1 [1]
       63 CALL                             R6 2 1
       64 GETUPVAL                         R7 4
       65 CALL                             R7 0 1
       66 GETUPVAL                         R8 5
       67 GETUPVAL                         R9 6
       68 DUPTABLE                         R10 K10 [{"tag", "LayoutOrder"}]
       69 LOADK                            R11 K11 ["col size-full-0 auto-xy radius-medium padding-medium gap-large stroke-standard stroke-default"]
       70 SETTABLEKS                       R11 R10 K8 ["tag"]
       72 GETTABLEKS                       R11 R0 K9 ["LayoutOrder"]
       74 SETTABLEKS                       R11 R10 K9 ["LayoutOrder"]
       76 DUPTABLE                         R11 K14 [{"Content", "ButtonGroup"}]
       77 GETUPVAL                         R12 5
       78 GETUPVAL                         R13 6
       79 DUPTABLE                         R14 K10 [{"tag", "LayoutOrder"}]
       80 LOADK                            R15 K15 ["col size-full-0 auto-xy"]
       81 SETTABLEKS                       R15 R14 K8 ["tag"]
       83 MOVE                             R15 R7
       84 CALL                             R15 0 1
       85 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
       87 DUPTABLE                         R15 K19 [{"Title", "Description", "PropertyRows"}]
       88 GETUPVAL                         R16 5
       89 GETUPVAL                         R17 7
       90 DUPTABLE                         R18 K21 [{"tag", "Text", "LayoutOrder"}]
       91 LOADK                            R19 K22 ["size-full-0 auto-xy text-title-medium content-emphasis padding-bottom-medium text-align-x-left text-truncate-end"]
       92 SETTABLEKS                       R19 R18 K8 ["tag"]
       94 GETTABLEKS                       R19 R0 K23 ["title"]
       96 SETTABLEKS                       R19 R18 K20 ["Text"]
       98 MOVE                             R19 R7
       99 CALL                             R19 0 1
      100 SETTABLEKS                       R19 R18 K9 ["LayoutOrder"]
      102 CALL                             R16 2 1
      103 SETTABLEKS                       R16 R15 K16 ["Title"]
      105 GETTABLEKS                       R16 R0 K24 ["description"]
      107 JUMPIFNOT                        R16 ; [+15]
      108 GETUPVAL                         R16 5
      109 GETUPVAL                         R17 7
      110 DUPTABLE                         R18 K21 [{"tag", "Text", "LayoutOrder"}]
      111 LOADK                            R19 K25 ["size-full-0 auto-xy text-body-small content-emphasis padding-bottom-small text-align-x-left text-truncate-end"]
      112 SETTABLEKS                       R19 R18 K8 ["tag"]
      114 GETTABLEKS                       R19 R0 K24 ["description"]
      116 SETTABLEKS                       R19 R18 K20 ["Text"]
      118 MOVE                             R19 R7
      119 CALL                             R19 0 1
      120 SETTABLEKS                       R19 R18 K9 ["LayoutOrder"]
      122 CALL                             R16 2 1
      123 SETTABLEKS                       R16 R15 K17 ["Description"]
      125 GETTABLEKS                       R16 R0 K26 ["propertyRows"]
      127 JUMPIFNOT                        R16 ; [+16]
      128 GETUPVAL                         R16 5
      129 GETUPVAL                         R18 8
      130 GETTABLEKS                       R17 R18 K18 ["PropertyRows"]
      132 DUPTABLE                         R18 K29 [{"rowDefinitions", "onChange", "LayoutOrder"}]
      133 GETTABLEKS                       R19 R0 K26 ["propertyRows"]
      135 SETTABLEKS                       R19 R18 K27 ["rowDefinitions"]
      137 SETTABLEKS                       R4 R18 K28 ["onChange"]
      139 MOVE                             R19 R7
      140 CALL                             R19 0 1
      141 SETTABLEKS                       R19 R18 K9 ["LayoutOrder"]
      143 CALL                             R16 2 1
      144 SETTABLEKS                       R16 R15 K18 ["PropertyRows"]
      146 CALL                             R12 3 1
      147 SETTABLEKS                       R12 R11 K12 ["Content"]
      149 GETUPVAL                         R12 5
      150 GETUPVAL                         R13 6
      151 DUPTABLE                         R14 K10 [{"tag", "LayoutOrder"}]
      152 LOADK                            R15 K30 ["row size-full-0 auto-xy gap-small"]
      153 SETTABLEKS                       R15 R14 K8 ["tag"]
      155 MOVE                             R15 R7
      156 CALL                             R15 0 1
      157 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
      159 DUPTABLE                         R15 K33 [{"ConfirmButton", "CancelButton"}]
      160 GETUPVAL                         R16 5
      161 GETUPVAL                         R17 9
      162 DUPTABLE                         R18 K38 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      163 GETTABLEKS                       R19 R0 K39 ["confirmButtonText"]
      165 JUMPIF                           R19 ; [+2]
      166 GETTABLEKS                       R19 R6 K31 ["ConfirmButton"]
      168 SETTABLEKS                       R19 R18 K34 ["text"]
      170 GETUPVAL                         R22 10
      171 GETTABLEKS                       R21 R22 K40 ["Enums"]
      173 GETTABLEKS                       R20 R21 K41 ["InputSize"]
      175 GETTABLEKS                       R19 R20 K42 ["XSmall"]
      177 SETTABLEKS                       R19 R18 K35 ["size"]
      179 GETUPVAL                         R22 10
      180 GETTABLEKS                       R21 R22 K40 ["Enums"]
      182 GETTABLEKS                       R20 R21 K43 ["ButtonVariant"]
      184 GETTABLEKS                       R19 R20 K44 ["Emphasis"]
      186 SETTABLEKS                       R19 R18 K36 ["variant"]
      188 SETTABLEKS                       R3 R18 K37 ["onActivated"]
      190 MOVE                             R19 R7
      191 CALL                             R19 0 1
      192 SETTABLEKS                       R19 R18 K9 ["LayoutOrder"]
      194 CALL                             R16 2 1
      195 SETTABLEKS                       R16 R15 K31 ["ConfirmButton"]
      197 GETUPVAL                         R16 5
      198 GETUPVAL                         R17 9
      199 DUPTABLE                         R18 K38 [{"text", "size", "variant", "onActivated", "LayoutOrder"}]
      200 GETTABLEKS                       R19 R6 K32 ["CancelButton"]
      202 SETTABLEKS                       R19 R18 K34 ["text"]
      204 GETUPVAL                         R22 10
      205 GETTABLEKS                       R21 R22 K40 ["Enums"]
      207 GETTABLEKS                       R20 R21 K41 ["InputSize"]
      209 GETTABLEKS                       R19 R20 K42 ["XSmall"]
      211 SETTABLEKS                       R19 R18 K35 ["size"]
      213 GETUPVAL                         R22 10
      214 GETTABLEKS                       R21 R22 K40 ["Enums"]
      216 GETTABLEKS                       R20 R21 K43 ["ButtonVariant"]
      218 GETTABLEKS                       R19 R20 K45 ["Standard"]
      220 SETTABLEKS                       R19 R18 K36 ["variant"]
      222 SETTABLEKS                       R5 R18 K37 ["onActivated"]
      224 MOVE                             R19 R7
      225 CALL                             R19 0 1
      226 SETTABLEKS                       R19 R18 K9 ["LayoutOrder"]
      228 CALL                             R16 2 1
      229 SETTABLEKS                       R16 R15 K32 ["CancelButton"]
      231 CALL                             R12 3 1
      232 SETTABLEKS                       R12 R11 K13 ["ButtonGroup"]
      234 CALL                             R8 3 -1
      235 RETURN                           R8 -1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["status"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["Recorded"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+6]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1
       12 GETTABLEKS                       R1 R0 K0 ["status"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K2 ["Cancelled"]
       17 JUMPIFNOTEQ                      R1 R2 ; [+6]
       19 GETUPVAL                         R1 1
       20 GETUPVAL                         R2 3
       21 MOVE                             R3 R0
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1
       24 GETTABLEKS                       R1 R0 K0 ["status"]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K3 ["Required"]
       29 JUMPIFNOTEQ                      R1 R2 ; [+6]
       31 GETUPVAL                         R1 1
       32 GETUPVAL                         R2 4
       33 MOVE                             R3 R0
       34 CALL                             R1 2 -1
       35 RETURN                           R1 -1
       36 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R2 R0 K3 ["status"]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K4 ["Recorded"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+5]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K4 ["Recorded"]
       18 JUMP                             ; [+3]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R1 R2 K5 ["Cancelled"]
       22 DUPTABLE                         R2 K11 [{"type", "status", "title", "description", "confirmButtonText", "propertyRows"}]
       23 GETTABLEKS                       R3 R0 K6 ["type"]
       25 SETTABLEKS                       R3 R2 K6 ["type"]
       27 SETTABLEKS                       R1 R2 K3 ["status"]
       29 GETTABLEKS                       R3 R0 K7 ["title"]
       31 SETTABLEKS                       R3 R2 K7 ["title"]
       33 GETTABLEKS                       R3 R0 K8 ["description"]
       35 SETTABLEKS                       R3 R2 K8 ["description"]
       37 GETTABLEKS                       R3 R0 K9 ["confirmButtonText"]
       39 SETTABLEKS                       R3 R2 K9 ["confirmButtonText"]
       41 GETTABLEKS                       R3 R0 K10 ["propertyRows"]
       43 SETTABLEKS                       R3 R2 K10 ["propertyRows"]
       45 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K11 [{"type", "expanded", "status", "title", "description", "confirmButtonText", "propertyRows", "onContinue"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R1 K4 ["expanded"]
       16 GETTABLEKS                       R2 R0 K5 ["status"]
       18 SETTABLEKS                       R2 R1 K5 ["status"]
       20 GETTABLEKS                       R2 R0 K6 ["title"]
       22 SETTABLEKS                       R2 R1 K6 ["title"]
       24 GETTABLEKS                       R2 R0 K7 ["description"]
       26 SETTABLEKS                       R2 R1 K7 ["description"]
       28 GETTABLEKS                       R2 R0 K8 ["confirmButtonText"]
       30 SETTABLEKS                       R2 R1 K8 ["confirmButtonText"]
       32 GETTABLEKS                       R2 R0 K9 ["propertyRows"]
       34 SETTABLEKS                       R2 R1 K9 ["propertyRows"]
       36 GETUPVAL                         R3 1
       37 GETTABLEKS                       R2 R3 K12 ["createUnimplemented"]
       39 LOADK                            R3 K10 ["onContinue"]
       40 CALL                             R2 1 1
       41 SETTABLEKS                       R2 R1 K10 ["onContinue"]
       43 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Components"]
       32 GETTABLEKS                       R5 R6 K11 ["PropertyRows"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R7 K12 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Parent"]
       46 GETTABLEKS                       R7 R8 K13 ["ReactUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K14 ["Util"]
       53 GETTABLEKS                       R8 R9 K15 ["TestIds"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R11 R0 K16 ["Resources"]
       60 GETTABLEKS                       R10 R11 K17 ["Localization"]
       62 GETTABLEKS                       R9 R10 K18 ["Translator"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K19 ["Types"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R12 R0 K20 ["Flags"]
       74 GETTABLEKS                       R11 R12 K21 ["FFlagAssistantPersistConversations"]
       76 CALL                             R10 1 1
       77 GETTABLEKS                       R11 R3 K22 ["Button"]
       79 GETTABLEKS                       R12 R3 K23 ["Text"]
       81 GETTABLEKS                       R13 R3 K24 ["View"]
       83 GETTABLEKS                       R14 R5 K25 ["createElement"]
       85 GETTABLEKS                       R15 R6 K26 ["createNextOrder"]
       87 DUPTABLE                         R16 K30 [{"Required", "Recorded", "Cancelled"}]
       88 LOADK                            R17 K27 ["Required"]
       89 SETTABLEKS                       R17 R16 K27 ["Required"]
       91 LOADK                            R17 K28 ["Recorded"]
       92 SETTABLEKS                       R17 R16 K28 ["Recorded"]
       94 LOADK                            R17 K29 ["Cancelled"]
       95 SETTABLEKS                       R17 R16 K29 ["Cancelled"]
       97 DUPCLOSURE                       R17 K31 [PROTO_1]
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R6
      107 DUPCLOSURE                       R18 K32 [PROTO_3]
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R12
      114 DUPCLOSURE                       R19 K33 [PROTO_4]
      115 DUPCLOSURE                       R20 K34 [PROTO_13]
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R16
      118 CAPTURE                          VAL R2
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R15
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R3
      127 DUPCLOSURE                       R21 K35 [PROTO_14]
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R14
      130 CAPTURE                          VAL R17
      131 CAPTURE                          VAL R18
      132 CAPTURE                          VAL R20
      133 DUPCLOSURE                       R22 K36 [PROTO_15]
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R16
      136 DUPCLOSURE                       R23 K37 [PROTO_16]
      137 CAPTURE                          VAL R10
      138 CAPTURE                          VAL R6
      139 DUPTABLE                         R24 K42 [{"Type", "ContentWidget", "Serialization", "InputStatus"}]
      140 LOADK                            R25 K43 ["InputRequested"]
      141 SETTABLEKS                       R25 R24 K38 ["Type"]
      143 GETTABLEKS                       R25 R5 K44 ["memo"]
      145 MOVE                             R26 R21
      146 CALL                             R25 1 1
      147 SETTABLEKS                       R25 R24 K39 ["ContentWidget"]
      149 DUPTABLE                         R25 K47 [{"serialize", "deserialize"}]
      150 SETTABLEKS                       R22 R25 K45 ["serialize"]
      152 SETTABLEKS                       R23 R25 K46 ["deserialize"]
      154 SETTABLEKS                       R25 R24 K40 ["Serialization"]
      156 SETTABLEKS                       R16 R24 K41 ["InputStatus"]
      158 RETURN                           R24 1
