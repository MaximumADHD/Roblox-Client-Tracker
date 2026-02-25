PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R3 R4 K1 ["Network"]
        5 GETTABLEKS                       R2 R3 K2 ["networkInterface"]
        7 GETUPVAL                         R4 1
        8 JUMPIFNOT                        R4 ; [+10]
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K0 ["props"]
       13 GETTABLEKS                       R4 R5 K3 ["IXP"]
       15 LOADK                            R5 K4 ["MarketplaceModelsAsPackages"]
       16 LOADK                            R6 K5 ["MarketplaceModelsAsPackagesEnabled"]
       17 CALL                             R3 3 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 JUMPIFNOT                        R3 ; [+7]
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R6 R7 K6 ["unlocalizedCategories"]
       25 GETTABLE                         R5 R6 R0
       26 GETTABLEKS                       R4 R5 K7 ["name"]
       28 JUMP                             ; [+8]
       29 GETUPVAL                         R8 0
       30 GETTABLEKS                       R7 R8 K0 ["props"]
       32 GETTABLEKS                       R6 R7 K8 ["categories"]
       34 GETTABLE                         R5 R6 R0
       35 GETTABLEKS                       R4 R5 K7 ["name"]
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R6 R7 K0 ["props"]
       40 GETTABLEKS                       R5 R6 K9 ["categoryName"]
       42 JUMPIFEQ                         R5 R4 ; [+53]
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R5 R6 K10 ["onCategorySelected"]
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R7 R8 K0 ["props"]
       50 GETTABLEKS                       R6 R7 K9 ["categoryName"]
       52 MOVE                             R7 R4
       53 CALL                             R5 2 0
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R6 R7 K0 ["props"]
       57 GETTABLEKS                       R5 R6 K11 ["Settings"]
       59 LOADK                            R7 K12 ["Plugin"]
       60 NAMECALL                         R5 R5 K13 ["get"]
       62 CALL                             R5 2 1
       63 SETUPVAL                         R5 4
       64 GETUPVAL                         R7 0
       65 GETTABLEKS                       R6 R7 K0 ["props"]
       67 GETTABLEKS                       R5 R6 K14 ["selectCategory"]
       69 MOVE                             R6 R2
       70 GETUPVAL                         R7 4
       71 MOVE                             R8 R4
       72 CALL                             R5 3 0
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R6 R7 K0 ["props"]
       76 GETTABLEKS                       R5 R6 K15 ["searchTerm"]
       78 JUMPIFNOT                        R5 ; [+17]
       79 GETUPVAL                         R7 0
       80 GETTABLEKS                       R6 R7 K0 ["props"]
       82 GETTABLEKS                       R5 R6 K15 ["searchTerm"]
       84 JUMPIFEQKS                       R5 K16 [""] ; [+11]
       86 GETUPVAL                         R6 0
       87 GETTABLEKS                       R5 R6 K17 ["onSearchRequested"]
       89 GETUPVAL                         R8 0
       90 GETTABLEKS                       R7 R8 K0 ["props"]
       92 GETTABLEKS                       R6 R7 K15 ["searchTerm"]
       94 MOVE                             R7 R4
       95 CALL                             R5 2 0
       96 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["groupIndex"]
        5 JUMPIFEQ                         R1 R0 ; [+16]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["props"]
       10 GETTABLEKS                       R2 R3 K2 ["Network"]
       12 GETTABLEKS                       R1 R2 K3 ["networkInterface"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["props"]
       17 GETTABLEKS                       R2 R3 K4 ["selectGroup"]
       19 MOVE                             R3 R1
       20 MOVE                             R4 R0
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["mostRecentSearchRequestTime"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+5]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K1 ["checkRecentAssetInsertion"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R3 R4 K1 ["Network"]
        5 GETTABLEKS                       R2 R3 K2 ["networkInterface"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["props"]
       10 GETTABLEKS                       R3 R4 K3 ["Settings"]
       12 LOADK                            R5 K4 ["Plugin"]
       13 NAMECALL                         R3 R3 K5 ["get"]
       15 CALL                             R3 2 1
       16 FASTCALL1                        TYPE R0 ; [+3]
       17 MOVE                             R5 R0
       18 GETIMPORT                        R4 K7 [type]
       20 CALL                             R4 1 1
       21 JUMPIFEQKS                       R4 K8 ["string"] ; [+18]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R4 R5 K9 ["shouldDebugWarnings"]
       26 CALL                             R4 0 1
       27 JUMPIFNOT                        R4 ; [+12]
       28 GETIMPORT                        R4 K11 [warn]
       30 LOADK                            R5 K12 ["Toolbox onSearchRequested searchTerm = %s is not a string"]
       31 FASTCALL1                        TOSTRING R0 ; [+3]
       32 MOVE                             R8 R0
       33 GETIMPORT                        R7 K14 [tostring]
       35 CALL                             R7 1 1
       36 NAMECALL                         R5 R5 K15 ["format"]
       38 CALL                             R5 2 -1
       39 CALL                             R4 -1 0
       40 GETUPVAL                         R4 0
       41 LOADN                            R5 0
       42 SETTABLEKS                       R5 R4 K16 ["keyCount"]
       44 GETUPVAL                         R4 0
       45 LOADN                            R5 0
       46 SETTABLEKS                       R5 R4 K17 ["deleteCount"]
       48 GETUPVAL                         R4 0
       49 GETIMPORT                        R5 K19 [tick]
       51 CALL                             R5 0 1
       52 SETTABLEKS                       R5 R4 K20 ["mostRecentSearchRequestTime"]
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R4 R5 K20 ["mostRecentSearchRequestTime"]
       57 GETUPVAL                         R5 2
       58 CALL                             R5 0 1
       59 LOADK                            R7 K21 ["StudioSearchWithoutInsertionTimeSeconds"]
       60 NAMECALL                         R5 R5 K22 ["GetFVariable"]
       62 CALL                             R5 2 1
       63 GETIMPORT                        R6 K24 [delay]
       65 MOVE                             R7 R5
       66 NEWCLOSURE                       R8 P0
       67 CAPTURE                          VAL R4
       68 CAPTURE                          UPVAL U0
       69 CALL                             R6 2 0
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R7 R8 K0 ["props"]
       73 GETTABLEKS                       R6 R7 K25 ["categoryName"]
       75 JUMPIFNOT                        R1 ; [+2]
       76 MOVE                             R7 R1
       77 JUMP                             ; [+5]
       78 GETUPVAL                         R9 0
       79 GETTABLEKS                       R8 R9 K0 ["props"]
       81 GETTABLEKS                       R7 R8 K25 ["categoryName"]
       83 GETUPVAL                         R9 3
       84 GETTABLEKS                       R8 R9 K26 ["categoryIsFont"]
       86 MOVE                             R9 R6
       87 CALL                             R8 1 1
       88 JUMPIFNOT                        R8 ; [+5]
       89 GETUPVAL                         R9 3
       90 GETTABLEKS                       R8 R9 K26 ["categoryIsFont"]
       92 MOVE                             R9 R7
       93 CALL                             R8 1 1
       94 JUMPIFNOT                        R8 ; [+8]
       95 GETUPVAL                         R11 0
       96 GETTABLEKS                       R10 R11 K0 ["props"]
       98 GETTABLEKS                       R9 R10 K27 ["updateSearchTerm"]
      100 MOVE                             R10 R0
      101 CALL                             R9 1 0
      102 RETURN                           R0 0
      103 GETUPVAL                         R11 0
      104 GETTABLEKS                       R10 R11 K0 ["props"]
      106 GETTABLEKS                       R9 R10 K28 ["requestSearch"]
      108 MOVE                             R10 R2
      109 MOVE                             R11 R3
      110 MOVE                             R12 R0
      111 MOVE                             R13 R1
      112 CALL                             R9 4 0
      113 GETUPVAL                         R9 4
      114 LOADK                            R11 K29 ["SearchRequested"]
      115 DUPTABLE                         R12 K31 [{"searchTerm"}]
      116 SETTABLEKS                       R0 R12 K30 ["searchTerm"]
      118 NAMECALL                         R9 R9 K32 ["fire"]
      120 CALL                             R9 3 0
      121 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["onSearchOptionsToggled"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["onSearchOptionsToggled"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_5:
        0 FASTCALL1                        STRING_LEN R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K2 [string.len]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K3 ["state"]
        8 GETTABLEKS                       R3 R4 K4 ["searchTerm"]
       10 FASTCALL1                        STRING_LEN R3 ; [+2]
       11 GETIMPORT                        R2 K2 [string.len]
       13 CALL                             R2 1 1
       14 JUMPIFNOTLT                      R2 R1 ; [+8]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R2 R1 K5 ["keyCount"]
       19 ADDK                             R2 R2 K6 [1]
       20 SETTABLEKS                       R2 R1 K5 ["keyCount"]
       22 JUMP                             ; [+22]
       23 FASTCALL1                        STRING_LEN R0 ; [+3]
       24 MOVE                             R2 R0
       25 GETIMPORT                        R1 K2 [string.len]
       27 CALL                             R1 1 1
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K3 ["state"]
       31 GETTABLEKS                       R3 R4 K4 ["searchTerm"]
       33 FASTCALL1                        STRING_LEN R3 ; [+2]
       34 GETIMPORT                        R2 K2 [string.len]
       36 CALL                             R2 1 1
       37 JUMPIFNOTLT                      R1 R2 ; [+7]
       39 GETUPVAL                         R1 0
       40 GETTABLEKS                       R2 R1 K7 ["deleteCount"]
       42 ADDK                             R2 R2 K6 [1]
       43 SETTABLEKS                       R2 R1 K7 ["deleteCount"]
       45 GETUPVAL                         R1 0
       46 DUPTABLE                         R3 K8 [{"searchTerm"}]
       47 SETTABLEKS                       R0 R3 K4 ["searchTerm"]
       49 NAMECALL                         R1 R1 K9 ["setState"]
       51 CALL                             R1 2 0
       52 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Settings"]
        5 LOADK                            R3 K2 ["Plugin"]
        6 NAMECALL                         R1 R1 K3 ["get"]
        8 CALL                             R1 2 1
        9 GETTABLEKS                       R3 R0 K4 ["layoutMode"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K5 ["Grid"]
       14 JUMPIFNOTEQ                      R3 R4 ; [+5]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R2 R3 K6 ["ListView"]
       19 JUMP                             ; [+3]
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R2 R3 K5 ["Grid"]
       23 GETTABLEKS                       R3 R0 K7 ["setLayoutMode"]
       25 MOVE                             R4 R2
       26 CALL                             R3 1 0
       27 MOVE                             R5 R2
       28 NAMECALL                         R3 R1 K7 ["setLayoutMode"]
       30 CALL                             R3 2 0
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R3 R4 K8 ["getCategoryByName"]
       34 GETTABLEKS                       R4 R0 K9 ["categoryName"]
       36 CALL                             R3 1 1
       37 DUPTABLE                         R4 K12 [{"assetType", "searchId"}]
       38 JUMPIFNOT                        R3 ; [+3]
       39 GETTABLEKS                       R5 R3 K10 ["assetType"]
       41 JUMP                             ; [+1]
       42 LOADNIL                          R5
       43 SETTABLEKS                       R5 R4 K10 ["assetType"]
       45 GETTABLEKS                       R5 R0 K11 ["searchId"]
       47 SETTABLEKS                       R5 R4 K11 ["searchId"]
       49 GETUPVAL                         R6 3
       50 GETTABLEKS                       R5 R6 K13 ["MarketplaceListViewToggleClicked"]
       52 MOVE                             R6 R2
       53 MOVE                             R7 R4
       54 CALL                             R5 2 0
       55 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K1 [{"searchTerm"}]
        1 LOADK                            R2 K2 [""]
        2 SETTABLEKS                       R2 R1 K0 ["searchTerm"]
        4 SETTABLEKS                       R1 R0 K3 ["state"]
        6 LOADN                            R1 0
        7 SETTABLEKS                       R1 R0 K4 ["keyCount"]
        9 LOADN                            R1 0
       10 SETTABLEKS                       R1 R0 K5 ["deleteCount"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K6 ["unlocalizedCategories"]
       15 LOADNIL                          R1
       16 NEWCLOSURE                       R2 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          REF R1
       22 SETTABLEKS                       R2 R0 K7 ["onCategorySelected"]
       24 NEWCLOSURE                       R2 P1
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R2 R0 K8 ["onGroupSelected"]
       28 NEWCLOSURE                       R2 P2
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 SETTABLEKS                       R2 R0 K9 ["onSearchRequested"]
       36 NEWCLOSURE                       R2 P3
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R2 R0 K10 ["onSearchOptionsToggled"]
       40 NEWCLOSURE                       R2 P4
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R2 R0 K11 ["onSearchTextChanged"]
       44 GETUPVAL                         R3 7
       45 CALL                             R3 0 1
       46 JUMPIFNOT                        R3 ; [+6]
       47 NEWCLOSURE                       R2 P5
       48 CAPTURE                          VAL R0
       49 CAPTURE                          UPVAL U8
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          UPVAL U2
       52 JUMP                             ; [+1]
       53 LOADNIL                          R2
       54 SETTABLEKS                       R2 R0 K12 ["toggleLayoutMode"]
       56 CLOSEUPVALS                      R1
       57 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+4]
        2 GETTABLEKS                       R3 R1 K0 ["categories"]
        4 SETTABLEKS                       R3 R0 K1 ["unlocalizedCategories"]
        6 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R5 0
        7 JUMPIFNOT                        R5 ; [+7]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R5 R1 K3 ["IXP"]
       11 LOADK                            R6 K4 ["MarketplaceModelsAsPackages"]
       12 LOADK                            R7 K5 ["MarketplaceModelsAsPackagesEnabled"]
       13 CALL                             R4 3 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R4
       16 GETTABLEKS                       R5 R1 K6 ["categoryName"]
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 JUMPIFNOT                        R4 ; [+42]
       21 GETUPVAL                         R8 2
       22 GETTABLEKS                       R9 R1 K7 ["categories"]
       24 CALL                             R8 1 1
       25 GETIMPORT                        R9 K9 [pairs]
       27 MOVE                             R10 R8
       28 CALL                             R9 1 3
       29 FORGPREP_NEXT                    R9
       30 GETUPVAL                         R15 3
       31 GETTABLEKS                       R16 R13 K10 ["category"]
       33 GETTABLE                         R14 R15 R16
       34 JUMPIFNOT                        R14 ; [+5]
       35 GETIMPORT                        R14 K13 [table.remove]
       37 MOVE                             R15 R8
       38 MOVE                             R16 R12
       39 CALL                             R14 2 0
       40 FORGLOOP                         R9 2 ; [-11]
       42 GETUPVAL                         R9 4
       43 MOVE                             R10 R3
       44 MOVE                             R11 R8
       45 CALL                             R9 2 1
       46 MOVE                             R6 R9
       47 LOADN                            R7 1
       48 GETIMPORT                        R9 K15 [ipairs]
       50 MOVE                             R10 R8
       51 CALL                             R9 1 3
       52 FORGPREP_INEXT                   R9
       53 GETTABLEKS                       R14 R13 K16 ["name"]
       55 JUMPIFNOTEQ                      R14 R5 ; [+2]
       57 MOVE                             R7 R12
       58 FORGLOOP                         R9 2 [inext] ; [-6]
       60 SETTABLEKS                       R8 R0 K17 ["unlocalizedCategories"]
       62 JUMP                             ; [+21]
       63 GETUPVAL                         R8 4
       64 MOVE                             R9 R3
       65 GETTABLEKS                       R10 R1 K7 ["categories"]
       67 CALL                             R8 2 1
       68 MOVE                             R6 R8
       69 GETUPVAL                         R9 5
       70 GETTABLEKS                       R8 R9 K18 ["getCategoryIndex"]
       72 MOVE                             R9 R5
       73 GETTABLEKS                       R10 R1 K19 ["roles"]
       75 GETUPVAL                         R12 6
       76 CALL                             R12 0 1
       77 JUMPIFNOT                        R12 ; [+3]
       78 GETTABLEKS                       R11 R1 K3 ["IXP"]
       80 JUMP                             ; [+1]
       81 LOADNIL                          R11
       82 CALL                             R8 3 1
       83 MOVE                             R7 R8
       84 GETTABLEKS                       R8 R0 K20 ["onCategorySelected"]
       86 GETTABLEKS                       R9 R1 K21 ["searchTerm"]
       88 GETTABLEKS                       R10 R0 K22 ["onSearchRequested"]
       90 GETTABLEKS                       R11 R1 K23 ["groups"]
       92 GETTABLEKS                       R12 R1 K24 ["groupIndex"]
       94 GETTABLEKS                       R13 R0 K25 ["onGroupSelected"]
       96 GETUPVAL                         R15 7
       97 GETTABLEKS                       R16 R1 K3 ["IXP"]
       99 CALL                             R15 1 1
      100 JUMPIFNOT                        R15 ; [+34]
      101 LOADB                            R14 0
      102 GETUPVAL                         R16 5
      103 GETTABLEKS                       R15 R16 K26 ["getTabForCategoryName"]
      105 GETTABLEKS                       R16 R1 K6 ["categoryName"]
      107 CALL                             R15 1 1
      108 GETUPVAL                         R17 5
      109 GETTABLEKS                       R16 R17 K27 ["INVENTORY"]
      111 JUMPIFNOTEQ                      R15 R16 ; [+24]
      113 LOADB                            R14 0
      114 GETTABLEKS                       R15 R1 K6 ["categoryName"]
      116 GETUPVAL                         R18 5
      117 GETTABLEKS                       R17 R18 K28 ["MY_AUDIO"]
      119 GETTABLEKS                       R16 R17 K16 ["name"]
      121 JUMPIFEQ                         R15 R16 ; [+14]
      123 GETTABLEKS                       R15 R1 K6 ["categoryName"]
      125 GETUPVAL                         R18 5
      126 GETTABLEKS                       R17 R18 K29 ["MY_FONTS"]
      128 GETTABLEKS                       R16 R17 K16 ["name"]
      130 JUMPIFNOTEQ                      R15 R16 ; [+2]
      132 LOADB                            R14 0 +1
      133 LOADB                            R14 1
      134 JUMP                             ; [+1]
      135 LOADNIL                          R14
      136 GETTABLEKS                       R15 R1 K30 ["searchIsFiltered"]
      138 LOADNIL                          R16
      139 LOADNIL                          R17
      140 GETUPVAL                         R18 7
      141 GETTABLEKS                       R19 R1 K3 ["IXP"]
      143 CALL                             R18 1 1
      144 JUMPIFNOT                        R18 ; [+24]
      145 JUMPIFNOT                        R14 ; [+2]
      146 LOADN                            R18 5
      147 JUMP                             ; [+1]
      148 LOADN                            R18 0
      149 JUMPIFNOT                        R14 ; [+5]
      150 GETUPVAL                         R20 8
      151 GETTABLEKS                       R19 R20 K31 ["HEADER_DROPDOWN_MIN_WIDTH"]
      153 ADD                              R16 R19 R18
      154 JUMP                             ; [+3]
      155 GETUPVAL                         R19 8
      156 GETTABLEKS                       R16 R19 K32 ["HEADER_DROPDOWN_MAX_WIDTH"]
      158 JUMPIFNOT                        R14 ; [+8]
      159 GETUPVAL                         R20 8
      160 GETTABLEKS                       R19 R20 K33 ["HEADER_OPTIONSBUTTON_WIDTH"]
      162 GETUPVAL                         R21 8
      163 GETTABLEKS                       R20 R21 K34 ["HEADER_INNER_PADDING"]
      165 ADD                              R17 R19 R20
      166 JUMP                             ; [+6]
      167 LOADN                            R17 0
      168 JUMP                             ; [+4]
      169 GETUPVAL                         R18 8
      170 GETTABLEKS                       R16 R18 K32 ["HEADER_DROPDOWN_MAX_WIDTH"]
      172 LOADN                            R17 0
      173 GETTABLEKS                       R19 R1 K36 ["maxWidth"]
      175 ORK                              R18 R19 K35 [0]
      176 LOADN                            R20 100
      177 LOADN                            R26 2
      178 GETUPVAL                         R28 8
      179 GETTABLEKS                       R27 R28 K37 ["HEADER_OUTER_PADDING"]
      181 MUL                              R25 R26 R27
      182 SUB                              R24 R18 R25
      183 SUB                              R23 R24 R16
      184 SUB                              R22 R23 R17
      185 GETUPVAL                         R24 8
      186 GETTABLEKS                       R23 R24 K34 ["HEADER_INNER_PADDING"]
      188 SUB                              R21 R22 R23
      189 FASTCALL2                        MATH_MAX R20 R21 ; [+3]
      191 GETIMPORT                        R19 K40 [math.max]
      193 CALL                             R19 2 1
      194 GETUPVAL                         R21 5
      195 GETTABLEKS                       R20 R21 K41 ["categoryIsGroupAsset"]
      197 MOVE                             R21 R5
      198 CALL                             R20 1 1
      199 GETTABLEKS                       R21 R2 K42 ["header"]
      201 GETUPVAL                         R24 5
      202 GETTABLEKS                       R23 R24 K26 ["getTabForCategoryName"]
      204 MOVE                             R24 R5
      205 CALL                             R23 1 1
      206 GETUPVAL                         R25 5
      207 GETTABLEKS                       R24 R25 K43 ["CREATIONS"]
      209 JUMPIFEQ                         R23 R24 ; [+2]
      211 LOADB                            R22 0 +1
      212 LOADB                            R22 1
      213 MOVE                             R23 R22
      214 JUMPIFNOT                        R23 ; [+1]
      215 NOT                              R23 R20
      216 NOT                              R24 R20
      217 JUMPIFNOT                        R24 ; [+1]
      218 NOT                              R24 R22
      219 GETUPVAL                         R27 5
      220 GETTABLEKS                       R26 R27 K26 ["getTabForCategoryName"]
      222 MOVE                             R27 R5
      223 CALL                             R26 1 1
      224 GETUPVAL                         R28 5
      225 GETTABLEKS                       R27 R28 K44 ["RECENT"]
      227 JUMPIFEQ                         R26 R27 ; [+2]
      229 LOADB                            R25 0 +1
      230 LOADB                            R25 1
      231 JUMPIFNOT                        R25 ; [+2]
      232 LOADB                            R24 0
      233 LOADB                            R23 1
      234 DUPTABLE                         R26 K53 [{"LayoutOrder", "OnSearchRequested", "OnTextChanged", "SearchTerm", "Width", "OnSearchOptionsToggled", "SearchIsFiltered", "ShowRecentSearchesInAutoComplete"}]
      235 LOADN                            R27 1
      236 SETTABLEKS                       R27 R26 K45 ["LayoutOrder"]
      238 SETTABLEKS                       R10 R26 K46 ["OnSearchRequested"]
      240 GETTABLEKS                       R27 R0 K54 ["onSearchTextChanged"]
      242 SETTABLEKS                       R27 R26 K47 ["OnTextChanged"]
      244 SETTABLEKS                       R9 R26 K48 ["SearchTerm"]
      246 SETTABLEKS                       R19 R26 K49 ["Width"]
      248 GETTABLEKS                       R27 R0 K55 ["onSearchOptionsToggled"]
      250 SETTABLEKS                       R27 R26 K50 ["OnSearchOptionsToggled"]
      252 SETTABLEKS                       R15 R26 K51 ["SearchIsFiltered"]
      254 LOADB                            R27 1
      255 GETTABLEKS                       R29 R0 K56 ["state"]
      257 GETTABLEKS                       R28 R29 K21 ["searchTerm"]
      259 JUMPIFEQKS                       R28 K57 [""] ; [+9]
      261 GETTABLEKS                       R29 R0 K56 ["state"]
      263 GETTABLEKS                       R28 R29 K21 ["searchTerm"]
      265 JUMPIFEQKNIL                     R28 ; [+2]
      267 LOADB                            R27 0 +1
      268 LOADB                            R27 1
      269 SETTABLEKS                       R27 R26 K52 ["ShowRecentSearchesInAutoComplete"]
      271 GETUPVAL                         R28 9
      272 GETTABLEKS                       R27 R28 K58 ["createElement"]
      274 GETUPVAL                         R28 10
      275 MOVE                             R29 R26
      276 CALL                             R27 2 1
      277 GETUPVAL                         R29 9
      278 GETTABLEKS                       R28 R29 K58 ["createElement"]
      280 LOADK                            R29 K59 ["ImageButton"]
      281 DUPTABLE                         R30 K66 [{"Position", "Size", "BackgroundColor3", "BorderSizePixel", "ZIndex", "AutoButtonColor"}]
      282 GETTABLEKS                       R31 R1 K60 ["Position"]
      284 SETTABLEKS                       R31 R30 K60 ["Position"]
      286 GETIMPORT                        R31 K69 [UDim2.new]
      288 LOADN                            R32 1
      289 LOADN                            R33 0
      290 LOADN                            R34 0
      291 GETUPVAL                         R36 8
      292 GETTABLEKS                       R35 R36 K70 ["HEADER_HEIGHT"]
      294 CALL                             R31 4 1
      295 SETTABLEKS                       R31 R30 K61 ["Size"]
      297 GETTABLEKS                       R31 R21 K71 ["backgroundColor"]
      299 SETTABLEKS                       R31 R30 K62 ["BackgroundColor3"]
      301 LOADN                            R31 0
      302 SETTABLEKS                       R31 R30 K63 ["BorderSizePixel"]
      304 LOADN                            R31 2
      305 SETTABLEKS                       R31 R30 K64 ["ZIndex"]
      307 LOADB                            R31 0
      308 SETTABLEKS                       R31 R30 K65 ["AutoButtonColor"]
      310 DUPTABLE                         R31 K78 [{"UIPadding", "UIListLayout", "CategoryMenu", "SearchBar", "ToggleListViewButton", "GroupMenu"}]
      311 GETUPVAL                         R33 9
      312 GETTABLEKS                       R32 R33 K58 ["createElement"]
      314 LOADK                            R33 K72 ["UIPadding"]
      315 DUPTABLE                         R34 K83 [{"PaddingBottom", "PaddingLeft", "PaddingRight", "PaddingTop"}]
      316 GETIMPORT                        R35 K85 [UDim.new]
      318 LOADN                            R36 0
      319 GETUPVAL                         R38 8
      320 GETTABLEKS                       R37 R38 K37 ["HEADER_OUTER_PADDING"]
      322 CALL                             R35 2 1
      323 SETTABLEKS                       R35 R34 K79 ["PaddingBottom"]
      325 GETIMPORT                        R35 K85 [UDim.new]
      327 LOADN                            R36 0
      328 GETUPVAL                         R38 8
      329 GETTABLEKS                       R37 R38 K37 ["HEADER_OUTER_PADDING"]
      331 CALL                             R35 2 1
      332 SETTABLEKS                       R35 R34 K80 ["PaddingLeft"]
      334 GETIMPORT                        R35 K85 [UDim.new]
      336 LOADN                            R36 0
      337 GETUPVAL                         R38 8
      338 GETTABLEKS                       R37 R38 K37 ["HEADER_OUTER_PADDING"]
      340 CALL                             R35 2 1
      341 SETTABLEKS                       R35 R34 K81 ["PaddingRight"]
      343 GETIMPORT                        R35 K85 [UDim.new]
      345 LOADN                            R36 0
      346 GETUPVAL                         R38 8
      347 GETTABLEKS                       R37 R38 K37 ["HEADER_OUTER_PADDING"]
      349 CALL                             R35 2 1
      350 SETTABLEKS                       R35 R34 K82 ["PaddingTop"]
      352 CALL                             R32 2 1
      353 SETTABLEKS                       R32 R31 K72 ["UIPadding"]
      355 GETUPVAL                         R33 9
      356 GETTABLEKS                       R32 R33 K58 ["createElement"]
      358 LOADK                            R33 K73 ["UIListLayout"]
      359 DUPTABLE                         R34 K89 [{"FillDirection", "SortOrder", "Padding"}]
      360 GETIMPORT                        R35 K92 [Enum.FillDirection.Horizontal]
      362 SETTABLEKS                       R35 R34 K86 ["FillDirection"]
      364 GETIMPORT                        R35 K93 [Enum.SortOrder.LayoutOrder]
      366 SETTABLEKS                       R35 R34 K87 ["SortOrder"]
      368 GETIMPORT                        R35 K85 [UDim.new]
      370 LOADN                            R36 0
      371 GETUPVAL                         R38 8
      372 GETTABLEKS                       R37 R38 K34 ["HEADER_INNER_PADDING"]
      374 CALL                             R35 2 1
      375 SETTABLEKS                       R35 R34 K88 ["Padding"]
      377 CALL                             R32 2 1
      378 SETTABLEKS                       R32 R31 K73 ["UIListLayout"]
      380 GETUPVAL                         R33 9
      381 GETTABLEKS                       R32 R33 K58 ["createElement"]
      383 GETUPVAL                         R33 11
      384 DUPTABLE                         R34 K100 [{"Disabled", "Position", "Size", "LayoutOrder", "visibleDropDownCount", "selectedDropDownIndex", "items", "menuKey", "onItemClicked"}]
      385 GETTABLEKS                       R35 R1 K101 ["hasTutorialLimits"]
      387 SETTABLEKS                       R35 R34 K94 ["Disabled"]
      389 GETIMPORT                        R35 K69 [UDim2.new]
      391 LOADN                            R36 0
      392 LOADN                            R37 0
      393 LOADN                            R38 0
      394 LOADN                            R39 0
      395 CALL                             R35 4 1
      396 SETTABLEKS                       R35 R34 K60 ["Position"]
      398 JUMPIFNOT                        R23 ; [+8]
      399 GETIMPORT                        R35 K69 [UDim2.new]
      401 LOADN                            R36 1
      402 LOADN                            R37 0
      403 LOADN                            R38 1
      404 LOADN                            R39 0
      405 CALL                             R35 4 1
      406 JUMPIF                           R35 ; [+7]
      407 GETIMPORT                        R35 K69 [UDim2.new]
      409 LOADN                            R36 0
      410 MOVE                             R37 R16
      411 LOADN                            R38 1
      412 LOADN                            R39 0
      413 CALL                             R35 4 1
      414 SETTABLEKS                       R35 R34 K61 ["Size"]
      416 LOADN                            R35 0
      417 SETTABLEKS                       R35 R34 K45 ["LayoutOrder"]
      419 LOADN                            R35 8
      420 SETTABLEKS                       R35 R34 K95 ["visibleDropDownCount"]
      422 SETTABLEKS                       R7 R34 K96 ["selectedDropDownIndex"]
      424 SETTABLEKS                       R6 R34 K97 ["items"]
      426 JUMPIF                           R22 ; [+2]
      427 LOADK                            R35 K10 ["category"]
      428 JUMP                             ; [+1]
      429 LOADNIL                          R35
      430 SETTABLEKS                       R35 R34 K98 ["menuKey"]
      432 SETTABLEKS                       R8 R34 K99 ["onItemClicked"]
      434 CALL                             R32 2 1
      435 SETTABLEKS                       R32 R31 K74 ["CategoryMenu"]
      437 AND                              R32 R24 R27
      438 SETTABLEKS                       R32 R31 K75 ["SearchBar"]
      440 GETUPVAL                         R33 12
      441 CALL                             R33 0 1
      442 JUMPIFNOT                        R33 ; [+78]
      443 JUMPIFNOT                        R14 ; [+77]
      444 GETUPVAL                         R33 9
      445 GETTABLEKS                       R32 R33 K58 ["createElement"]
      447 GETUPVAL                         R33 13
      448 DUPTABLE                         R34 K109 [{"BackgroundStyle", "Cursor", "IconColor", "IconSize", "LayoutOrder", "LeftIcon", "OnClick", "Padding", "Size", "TooltipText"}]
      449 LOADK                            R35 K110 ["None"]
      450 SETTABLEKS                       R35 R34 K102 ["BackgroundStyle"]
      452 LOADK                            R35 K111 ["PointingHand"]
      453 SETTABLEKS                       R35 R34 K103 ["Cursor"]
      455 GETTABLEKS                       R35 R21 K112 ["iconColor"]
      457 SETTABLEKS                       R35 R34 K104 ["IconColor"]
      459 GETUPVAL                         R36 8
      460 GETTABLEKS                       R35 R36 K33 ["HEADER_OPTIONSBUTTON_WIDTH"]
      462 SETTABLEKS                       R35 R34 K105 ["IconSize"]
      464 LOADN                            R35 2
      465 SETTABLEKS                       R35 R34 K45 ["LayoutOrder"]
      467 GETTABLEKS                       R36 R1 K113 ["layoutMode"]
      469 GETUPVAL                         R38 14
      470 GETTABLEKS                       R37 R38 K114 ["ListView"]
      472 JUMPIFNOTEQ                      R36 R37 ; [+5]
      474 GETUPVAL                         R36 15
      475 GETTABLEKS                       R35 R36 K115 ["GALLERY_ICON"]
      477 JUMP                             ; [+3]
      478 GETUPVAL                         R36 15
      479 GETTABLEKS                       R35 R36 K116 ["LIST_ICON"]
      481 SETTABLEKS                       R35 R34 K106 ["LeftIcon"]
      483 GETTABLEKS                       R35 R0 K117 ["toggleLayoutMode"]
      485 SETTABLEKS                       R35 R34 K107 ["OnClick"]
      487 LOADN                            R35 2
      488 SETTABLEKS                       R35 R34 K88 ["Padding"]
      490 GETIMPORT                        R35 K119 [UDim2.fromOffset]
      492 MOVE                             R36 R17
      493 GETUPVAL                         R38 8
      494 GETTABLEKS                       R37 R38 K120 ["HEADER_OPTIONSBUTTON_HEIGHT"]
      496 CALL                             R35 2 1
      497 SETTABLEKS                       R35 R34 K61 ["Size"]
      499 GETTABLEKS                       R36 R1 K113 ["layoutMode"]
      501 GETUPVAL                         R38 14
      502 GETTABLEKS                       R37 R38 K114 ["ListView"]
      504 JUMPIFNOTEQ                      R36 R37 ; [+7]
      506 LOADK                            R37 K121 ["General"]
      507 LOADK                            R38 K122 ["GridView"]
      508 NAMECALL                         R35 R3 K123 ["getText"]
      510 CALL                             R35 3 1
      511 JUMP                             ; [+5]
      512 LOADK                            R37 K121 ["General"]
      513 LOADK                            R38 K114 ["ListView"]
      514 NAMECALL                         R35 R3 K123 ["getText"]
      516 CALL                             R35 3 1
      517 SETTABLEKS                       R35 R34 K108 ["TooltipText"]
      519 CALL                             R32 2 1
      520 JUMP                             ; [+1]
      521 LOADNIL                          R32
      522 SETTABLEKS                       R32 R31 K76 ["ToggleListViewButton"]
      524 MOVE                             R32 R20
      525 JUMPIFNOT                        R32 ; [+39]
      526 GETUPVAL                         R33 9
      527 GETTABLEKS                       R32 R33 K58 ["createElement"]
      529 GETUPVAL                         R33 11
      530 DUPTABLE                         R34 K124 [{"Position", "Size", "LayoutOrder", "visibleDropDownCount", "selectedDropDownIndex", "items", "menuKey", "onItemClicked"}]
      531 GETIMPORT                        R35 K69 [UDim2.new]
      533 LOADN                            R36 0
      534 LOADN                            R37 0
      535 LOADN                            R38 0
      536 LOADN                            R39 0
      537 CALL                             R35 4 1
      538 SETTABLEKS                       R35 R34 K60 ["Position"]
      540 GETIMPORT                        R35 K69 [UDim2.new]
      542 LOADN                            R36 0
      543 MOVE                             R37 R19
      544 LOADN                            R38 1
      545 LOADN                            R39 0
      546 CALL                             R35 4 1
      547 SETTABLEKS                       R35 R34 K61 ["Size"]
      549 LOADN                            R35 1
      550 SETTABLEKS                       R35 R34 K45 ["LayoutOrder"]
      552 LOADN                            R35 8
      553 SETTABLEKS                       R35 R34 K95 ["visibleDropDownCount"]
      555 SETTABLEKS                       R12 R34 K96 ["selectedDropDownIndex"]
      557 SETTABLEKS                       R11 R34 K97 ["items"]
      559 LOADK                            R35 K125 ["id"]
      560 SETTABLEKS                       R35 R34 K98 ["menuKey"]
      562 SETTABLEKS                       R13 R34 K99 ["onItemClicked"]
      564 CALL                             R32 2 1
      565 SETTABLEKS                       R32 R31 K77 ["GroupMenu"]
      567 CALL                             R28 3 -1
      568 RETURN                           R28 -1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["mostRecentSearchRequestTime"]
        2 GETTABLEKS                       R3 R0 K1 ["props"]
        4 GETTABLEKS                       R2 R3 K2 ["mostRecentAssetInsertTime"]
        6 JUMPIFNOTLT                      R2 R1 ; [+17]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["onTermSearchedWithoutInsertion"]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K4 ["getCategory"]
       14 GETTABLEKS                       R4 R0 K1 ["props"]
       16 GETTABLEKS                       R3 R4 K5 ["categoryName"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R4 R0 K1 ["props"]
       21 GETTABLEKS                       R3 R4 K6 ["searchTerm"]
       23 CALL                             R1 2 0
       24 RETURN                           R0 0

PROTO_11:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["tabRefresh"]
        4 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_12:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 JUMP                             ; [+4]
        3 LOADK                            R3 K0 ["tabRefresh"]
        4 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+10]
        8 GETIMPORT                        R2 K4 [Instance.new]
       10 LOADK                            R3 K5 ["BindableEvent"]
       11 CALL                             R2 1 1
       12 MOVE                             R1 R2
       13 LOADK                            R2 K0 ["tabRefresh"]
       14 SETTABLEKS                       R2 R1 K6 ["Name"]
       16 SETTABLEKS                       R0 R1 K7 ["Parent"]
       18 RETURN                           R1 1

PROTO_13:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 JUMP                             ; [+4]
        3 LOADK                            R3 K0 ["tabRefresh"]
        4 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        6 CALL                             R1 2 1
        7 JUMPIFNOT                        R1 ; [+3]
        8 NAMECALL                         R2 R1 K2 ["Destroy"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["categoryName"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["Settings"]
       10 LOADK                            R3 K3 ["Plugin"]
       11 NAMECALL                         R1 R1 K4 ["get"]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["props"]
       17 GETTABLEKS                       R2 R3 K5 ["selectCategory"]
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K0 ["props"]
       22 GETTABLEKS                       R4 R5 K6 ["Network"]
       24 GETTABLEKS                       R3 R4 K7 ["networkInterface"]
       26 MOVE                             R4 R1
       27 MOVE                             R5 R0
       28 CALL                             R2 3 0
       29 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["tabRefreshConnection"]
        2 JUMPIF                           R1 ; [+32]
        3 GETTABLEKS                       R3 R0 K1 ["props"]
        5 GETTABLEKS                       R2 R3 K2 ["pluginGui"]
        7 JUMPIF                           R2 ; [+2]
        8 LOADNIL                          R3
        9 JUMP                             ; [+4]
       10 LOADK                            R5 K3 ["tabRefresh"]
       11 NAMECALL                         R3 R2 K4 ["FindFirstChild"]
       13 CALL                             R3 2 1
       14 JUMPIF                           R3 ; [+10]
       15 GETIMPORT                        R4 K7 [Instance.new]
       17 LOADK                            R5 K8 ["BindableEvent"]
       18 CALL                             R4 1 1
       19 MOVE                             R3 R4
       20 LOADK                            R4 K3 ["tabRefresh"]
       21 SETTABLEKS                       R4 R3 K9 ["Name"]
       23 SETTABLEKS                       R2 R3 K10 ["Parent"]
       25 MOVE                             R1 R3
       26 GETTABLEKS                       R2 R1 K11 ["Event"]
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          VAL R0
       30 NAMECALL                         R2 R2 K12 ["connect"]
       32 CALL                             R2 2 1
       33 SETTABLEKS                       R2 R0 K0 ["tabRefreshConnection"]
       35 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["tabRefreshConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["tabRefreshConnection"]
        5 NAMECALL                         R1 R1 K1 ["disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["tabRefreshConnection"]
       11 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R1 R2 K1 ["categories"]
        6 SETTABLEKS                       R1 R0 K2 ["unlocalizedCategories"]
        8 GETTABLEKS                       R2 R0 K0 ["props"]
       10 GETTABLEKS                       R1 R2 K3 ["pluginGui"]
       12 JUMPIF                           R1 ; [+2]
       13 LOADNIL                          R2
       14 JUMP                             ; [+4]
       15 LOADK                            R4 K4 ["tabRefresh"]
       16 NAMECALL                         R2 R1 K5 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 JUMPIF                           R2 ; [+10]
       20 GETIMPORT                        R3 K8 [Instance.new]
       22 LOADK                            R4 K9 ["BindableEvent"]
       23 CALL                             R3 1 1
       24 MOVE                             R2 R3
       25 LOADK                            R3 K4 ["tabRefresh"]
       26 SETTABLEKS                       R3 R2 K10 ["Name"]
       28 SETTABLEKS                       R1 R2 K11 ["Parent"]
       30 NAMECALL                         R1 R0 K12 ["addTabRefreshCallback"]
       32 CALL                             R1 1 0
       33 RETURN                           R0 0

PROTO_18:
        0 NAMECALL                         R1 R0 K0 ["removeTabRefreshCallback"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R2 R0 K1 ["props"]
        5 GETTABLEKS                       R1 R2 K2 ["pluginGui"]
        7 JUMPIF                           R1 ; [+2]
        8 LOADNIL                          R2
        9 JUMP                             ; [+4]
       10 LOADK                            R4 K3 ["tabRefresh"]
       11 NAMECALL                         R2 R1 K4 ["FindFirstChild"]
       13 CALL                             R2 2 1
       14 JUMPIFNOT                        R2 ; [+3]
       15 NAMECALL                         R3 R2 K5 ["Destroy"]
       17 CALL                             R3 1 0
       18 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["includeUnverifiedCreators"]
        2 RETURN                           R1 1

PROTO_20:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["assets"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 GETTABLEKS                       R3 R0 K1 ["pageInfo"]
       12 JUMPIF                           R3 ; [+2]
       13 NEWTABLE                         R3 0 0
       15 DUPTABLE                         R4 K14 [{"categories", "categoryName", "creatorFilter", "groups", "groupIndex", "layoutMode", "mostRecentAssetInsertTime", "roles", "searchId", "searchIsFiltered", "searchTerm", "hasTutorialLimits"}]
       16 GETTABLEKS                       R5 R3 K2 ["categories"]
       18 JUMPIF                           R5 ; [+2]
       19 NEWTABLE                         R5 0 0
       21 SETTABLEKS                       R5 R4 K2 ["categories"]
       23 GETTABLEKS                       R5 R3 K3 ["categoryName"]
       25 JUMPIF                           R5 ; [+5]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R6 R7 K15 ["DEFAULT"]
       29 GETTABLEKS                       R5 R6 K16 ["name"]
       31 SETTABLEKS                       R5 R4 K3 ["categoryName"]
       33 GETTABLEKS                       R5 R3 K17 ["creator"]
       35 JUMPIF                           R5 ; [+2]
       36 NEWTABLE                         R5 0 0
       38 SETTABLEKS                       R5 R4 K4 ["creatorFilter"]
       40 GETTABLEKS                       R5 R3 K5 ["groups"]
       42 JUMPIF                           R5 ; [+2]
       43 NEWTABLE                         R5 0 0
       45 SETTABLEKS                       R5 R4 K5 ["groups"]
       47 GETTABLEKS                       R6 R3 K6 ["groupIndex"]
       49 ORK                              R5 R6 K18 [0]
       50 SETTABLEKS                       R5 R4 K6 ["groupIndex"]
       52 GETUPVAL                         R6 1
       53 CALL                             R6 0 1
       54 JUMPIFNOT                        R6 ; [+3]
       55 GETTABLEKS                       R5 R3 K7 ["layoutMode"]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R5
       59 SETTABLEKS                       R5 R4 K7 ["layoutMode"]
       61 GETTABLEKS                       R5 R2 K8 ["mostRecentAssetInsertTime"]
       63 SETTABLEKS                       R5 R4 K8 ["mostRecentAssetInsertTime"]
       65 GETTABLEKS                       R5 R0 K9 ["roles"]
       67 SETTABLEKS                       R5 R4 K9 ["roles"]
       69 GETTABLEKS                       R5 R3 K10 ["searchId"]
       71 SETTABLEKS                       R5 R4 K10 ["searchId"]
       73 GETGLOBAL                        R5 K19 ["isSearchFiltered"]
       75 MOVE                             R6 R3
       76 CALL                             R5 1 1
       77 SETTABLEKS                       R5 R4 K11 ["searchIsFiltered"]
       79 GETTABLEKS                       R6 R3 K12 ["searchTerm"]
       81 ORK                              R5 R6 K20 [""]
       82 SETTABLEKS                       R5 R4 K12 ["searchTerm"]
       84 GETTABLEKS                       R7 R0 K21 ["tutorialLimits"]
       86 GETTABLEKS                       R6 R7 K22 ["assetIds"]
       88 JUMPIFNOTEQKNIL                  R6 ; [+2]
       90 LOADB                            R5 0 +1
       91 LOADB                            R5 1
       92 SETTABLEKS                       R5 R4 K13 ["hasTutorialLimits"]
       94 RETURN                           R4 1

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 LOADB                            R10 0
        7 CALL                             R5 5 -1
        8 CALL                             R4 -1 0
        9 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_26:
        0 DUPTABLE                         R1 K5 [{"selectCategory", "selectGroup", "requestSearch", "setLayoutMode", "updateSearchTerm"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["selectCategory"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["selectGroup"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["requestSearch"]
       16 GETUPVAL                         R3 3
       17 CALL                             R3 0 1
       18 JUMPIFNOT                        R3 ; [+4]
       19 NEWCLOSURE                       R2 P3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U4
       22 JUMP                             ; [+1]
       23 LOADNIL                          R2
       24 SETTABLEKS                       R2 R1 K3 ["setLayoutMode"]
       26 NEWCLOSURE                       R2 P4
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K4 ["updateSearchTerm"]
       31 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ToolboxSetMarketplaceModelsAsPackagesForIXP3"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETTABLEKS                       R2 R1 K7 ["Packages"]
       17 GETIMPORT                        R3 K9 [require]
       19 GETTABLEKS                       R4 R2 K10 ["Roact"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K9 [require]
       24 GETTABLEKS                       R5 R2 K11 ["RoactRodux"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K9 [require]
       29 GETTABLEKS                       R9 R1 K12 ["Src"]
       31 GETTABLEKS                       R8 R9 K13 ["Util"]
       33 GETTABLEKS                       R7 R8 K14 ["Analytics"]
       35 GETTABLEKS                       R6 R7 K14 ["Analytics"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K9 [require]
       40 GETTABLEKS                       R9 R1 K12 ["Src"]
       42 GETTABLEKS                       R8 R9 K13 ["Util"]
       44 GETTABLEKS                       R7 R8 K15 ["Constants"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K9 [require]
       49 GETTABLEKS                       R10 R1 K12 ["Src"]
       51 GETTABLEKS                       R9 R10 K13 ["Util"]
       53 GETTABLEKS                       R8 R9 K16 ["DebugFlags"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K9 [require]
       58 GETTABLEKS                       R11 R1 K12 ["Src"]
       60 GETTABLEKS                       R10 R11 K13 ["Util"]
       62 GETTABLEKS                       R9 R10 K17 ["Images"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K9 [require]
       67 GETTABLEKS                       R12 R1 K12 ["Src"]
       69 GETTABLEKS                       R11 R12 K13 ["Util"]
       71 GETTABLEKS                       R10 R11 K18 ["PageInfoHelper"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K9 [require]
       76 GETTABLEKS                       R13 R1 K12 ["Src"]
       78 GETTABLEKS                       R12 R13 K19 ["Localization"]
       80 GETTABLEKS                       R11 R12 K20 ["getLocalizedCategories"]
       82 CALL                             R10 1 1
       83 LOADNIL                          R11
       84 JUMPIFNOT                        R0 ; [+10]
       85 GETIMPORT                        R12 K9 [require]
       87 GETTABLEKS                       R15 R1 K12 ["Src"]
       89 GETTABLEKS                       R14 R15 K13 ["Util"]
       91 GETTABLEKS                       R13 R14 K21 ["getIsIXPVariableEnabled"]
       93 CALL                             R12 1 1
       94 MOVE                             R11 R12
       95 GETIMPORT                        R12 K9 [require]
       97 GETTABLEKS                       R16 R1 K12 ["Src"]
       99 GETTABLEKS                       R15 R16 K13 ["Util"]
      101 GETTABLEKS                       R14 R15 K22 ["SharedFlags"]
      103 GETTABLEKS                       R13 R14 K23 ["getFFlagToolboxContentManagementCombineTabs"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K9 [require]
      108 GETTABLEKS                       R16 R1 K12 ["Src"]
      110 GETTABLEKS                       R15 R16 K24 ["Types"]
      112 GETTABLEKS                       R14 R15 K25 ["Category"]
      114 CALL                             R13 1 1
      115 GETIMPORT                        R14 K9 [require]
      117 GETTABLEKS                       R17 R1 K12 ["Src"]
      119 GETTABLEKS                       R16 R17 K24 ["Types"]
      121 GETTABLEKS                       R15 R16 K26 ["LayoutMode"]
      123 CALL                             R14 1 1
      124 GETIMPORT                        R15 K9 [require]
      126 GETTABLEKS                       R18 R1 K12 ["Src"]
      128 GETTABLEKS                       R17 R18 K24 ["Types"]
      130 GETTABLEKS                       R16 R17 K27 ["AnalyticsTypes"]
      132 CALL                             R15 1 1
      133 GETIMPORT                        R16 K9 [require]
      135 GETTABLEKS                       R17 R2 K28 ["Framework"]
      137 CALL                             R16 1 1
      138 GETTABLEKS                       R18 R16 K13 ["Util"]
      140 GETTABLEKS                       R17 R18 K29 ["deepCopy"]
      142 GETTABLEKS                       R19 R16 K30 ["UI"]
      144 GETTABLEKS                       R18 R19 K31 ["IconButton"]
      146 GETIMPORT                        R19 K9 [require]
      148 GETTABLEKS                       R22 R1 K12 ["Src"]
      150 GETTABLEKS                       R21 R22 K32 ["ContextServices"]
      152 GETTABLEKS                       R20 R21 K33 ["IXPContext"]
      154 CALL                             R19 1 1
      155 GETIMPORT                        R21 K9 [require]
      157 GETTABLEKS                       R22 R2 K28 ["Framework"]
      159 CALL                             R21 1 1
      160 GETTABLEKS                       R20 R21 K32 ["ContextServices"]
      162 GETTABLEKS                       R21 R20 K34 ["withContext"]
      164 GETIMPORT                        R22 K9 [require]
      166 GETTABLEKS                       R25 R1 K12 ["Src"]
      168 GETTABLEKS                       R24 R25 K32 ["ContextServices"]
      170 GETTABLEKS                       R23 R24 K35 ["Settings"]
      172 CALL                             R22 1 1
      173 GETIMPORT                        R23 K9 [require]
      175 GETTABLEKS                       R26 R1 K12 ["Src"]
      177 GETTABLEKS                       R25 R26 K32 ["ContextServices"]
      179 GETTABLEKS                       R24 R25 K36 ["NetworkContext"]
      181 CALL                             R23 1 1
      182 GETIMPORT                        R24 K9 [require]
      184 GETTABLEKS                       R27 R1 K12 ["Src"]
      186 GETTABLEKS                       R26 R27 K37 ["Components"]
      188 GETTABLEKS                       R25 R26 K38 ["DropdownMenu"]
      190 CALL                             R24 1 1
      191 GETIMPORT                        R25 K9 [require]
      193 GETTABLEKS                       R28 R1 K12 ["Src"]
      195 GETTABLEKS                       R27 R28 K37 ["Components"]
      197 GETTABLEKS                       R26 R27 K39 ["SearchBarWithAutocomplete"]
      199 CALL                             R25 1 1
      200 GETIMPORT                        R26 K9 [require]
      202 GETTABLEKS                       R29 R1 K12 ["Src"]
      204 GETTABLEKS                       R28 R29 K40 ["Actions"]
      206 GETTABLEKS                       R27 R28 K41 ["SetLayoutMode"]
      208 CALL                             R26 1 1
      209 GETIMPORT                        R27 K9 [require]
      211 GETTABLEKS                       R30 R1 K12 ["Src"]
      213 GETTABLEKS                       R29 R30 K40 ["Actions"]
      215 GETTABLEKS                       R28 R29 K42 ["UpdateSearchTerm"]
      217 CALL                             R27 1 1
      218 GETIMPORT                        R28 K9 [require]
      220 GETTABLEKS                       R32 R1 K12 ["Src"]
      222 GETTABLEKS                       R31 R32 K43 ["Networking"]
      224 GETTABLEKS                       R30 R31 K44 ["Requests"]
      226 GETTABLEKS                       R29 R30 K45 ["RequestSearchRequest"]
      228 CALL                             R28 1 1
      229 GETIMPORT                        R29 K9 [require]
      231 GETTABLEKS                       R33 R1 K12 ["Src"]
      233 GETTABLEKS                       R32 R33 K43 ["Networking"]
      235 GETTABLEKS                       R31 R32 K44 ["Requests"]
      237 GETTABLEKS                       R30 R31 K46 ["SelectCategoryRequest"]
      239 CALL                             R29 1 1
      240 GETIMPORT                        R30 K9 [require]
      242 GETTABLEKS                       R34 R1 K12 ["Src"]
      244 GETTABLEKS                       R33 R34 K43 ["Networking"]
      246 GETTABLEKS                       R32 R33 K44 ["Requests"]
      248 GETTABLEKS                       R31 R32 K47 ["SelectGroupRequest"]
      250 CALL                             R30 1 1
      251 GETIMPORT                        R31 K9 [require]
      253 GETTABLEKS                       R35 R1 K12 ["Src"]
      255 GETTABLEKS                       R34 R35 K13 ["Util"]
      257 GETTABLEKS                       R33 R34 K22 ["SharedFlags"]
      259 GETTABLEKS                       R32 R33 K48 ["getFFlagToolboxEnableAssetRows"]
      261 CALL                             R31 1 1
      262 GETIMPORT                        R32 K9 [require]
      264 GETTABLEKS                       R36 R1 K12 ["Src"]
      266 GETTABLEKS                       R35 R36 K13 ["Util"]
      268 GETTABLEKS                       R34 R35 K22 ["SharedFlags"]
      270 GETTABLEKS                       R33 R34 K49 ["getIsIXPEnabledForListView"]
      272 CALL                             R32 1 1
      273 GETIMPORT                        R33 K9 [require]
      275 GETTABLEKS                       R36 R1 K12 ["Src"]
      277 GETTABLEKS                       R35 R36 K13 ["Util"]
      279 GETTABLEKS                       R34 R35 K50 ["ToolboxCommunication"]
      281 CALL                             R33 1 1
      282 GETTABLEKS                       R34 R3 K51 ["PureComponent"]
      284 LOADK                            R36 K52 ["Header"]
      285 NAMECALL                         R34 R34 K53 ["extend"]
      287 CALL                             R34 2 1
      288 GETIMPORT                        R35 K55 [settings]
      290 LOADNIL                          R36
      291 JUMPIFNOT                        R0 ; [+21]
      292 NEWTABLE                         R37 4 0
      294 GETTABLEKS                       R39 R13 K56 ["MY_PACKAGES"]
      296 GETTABLEKS                       R38 R39 K57 ["name"]
      298 LOADB                            R39 1
      299 SETTABLE                         R39 R37 R38
      300 GETTABLEKS                       R39 R13 K58 ["GROUP_PACKAGES"]
      302 GETTABLEKS                       R38 R39 K57 ["name"]
      304 LOADB                            R39 1
      305 SETTABLE                         R39 R37 R38
      306 GETTABLEKS                       R39 R13 K59 ["CREATIONS_GROUP_PACKAGES"]
      308 GETTABLEKS                       R38 R39 K57 ["name"]
      310 LOADB                            R39 1
      311 SETTABLE                         R39 R37 R38
      312 MOVE                             R36 R37
      313 NEWCLOSURE                       R37 P0
      314 CAPTURE                          VAL R0
      315 CAPTURE                          REF R11
      316 CAPTURE                          VAL R5
      317 CAPTURE                          VAL R7
      318 CAPTURE                          VAL R35
      319 CAPTURE                          VAL R13
      320 CAPTURE                          VAL R33
      321 CAPTURE                          VAL R31
      322 CAPTURE                          VAL R14
      323 SETTABLEKS                       R37 R34 K60 ["init"]
      325 DUPCLOSURE                       R37 K61 [PROTO_8]
      326 CAPTURE                          VAL R0
      327 SETTABLEKS                       R37 R34 K62 ["willUpdate"]
      329 NEWCLOSURE                       R37 P2
      330 CAPTURE                          VAL R0
      331 CAPTURE                          REF R11
      332 CAPTURE                          VAL R17
      333 CAPTURE                          REF R36
      334 CAPTURE                          VAL R10
      335 CAPTURE                          VAL R13
      336 CAPTURE                          VAL R12
      337 CAPTURE                          VAL R32
      338 CAPTURE                          VAL R6
      339 CAPTURE                          VAL R3
      340 CAPTURE                          VAL R25
      341 CAPTURE                          VAL R24
      342 CAPTURE                          VAL R31
      343 CAPTURE                          VAL R18
      344 CAPTURE                          VAL R14
      345 CAPTURE                          VAL R8
      346 SETTABLEKS                       R37 R34 K63 ["render"]
      348 DUPCLOSURE                       R37 K64 [PROTO_10]
      349 CAPTURE                          VAL R5
      350 CAPTURE                          VAL R9
      351 SETTABLEKS                       R37 R34 K65 ["checkRecentAssetInsertion"]
      353 DUPCLOSURE                       R37 K66 [PROTO_11]
      354 DUPCLOSURE                       R38 K67 [PROTO_12]
      355 DUPCLOSURE                       R39 K68 [PROTO_13]
      356 DUPCLOSURE                       R40 K69 [PROTO_15]
      357 SETTABLEKS                       R40 R34 K70 ["addTabRefreshCallback"]
      359 DUPCLOSURE                       R40 K71 [PROTO_16]
      360 SETTABLEKS                       R40 R34 K72 ["removeTabRefreshCallback"]
      362 DUPCLOSURE                       R40 K73 [PROTO_17]
      363 CAPTURE                          VAL R0
      364 SETTABLEKS                       R40 R34 K74 ["didMount"]
      366 DUPCLOSURE                       R40 K75 [PROTO_18]
      367 SETTABLEKS                       R40 R34 K76 ["willUnmount"]
      369 MOVE                             R40 R21
      370 DUPTABLE                         R41 K80 [{"IXP", "Settings", "Stylizer", "Localization", "Network"}]
      371 JUMPIF                           R0 ; [+6]
      372 MOVE                             R43 R31
      373 CALL                             R43 0 1
      374 JUMPIF                           R43 ; [+3]
      375 MOVE                             R43 R12
      376 CALL                             R43 0 1
      377 JUMPIFNOT                        R43 ; [+2]
      378 MOVE                             R42 R19
      379 JUMP                             ; [+1]
      380 LOADNIL                          R42
      381 SETTABLEKS                       R42 R41 K77 ["IXP"]
      383 SETTABLEKS                       R22 R41 K35 ["Settings"]
      385 GETTABLEKS                       R42 R20 K78 ["Stylizer"]
      387 SETTABLEKS                       R42 R41 K78 ["Stylizer"]
      389 GETTABLEKS                       R42 R20 K19 ["Localization"]
      391 SETTABLEKS                       R42 R41 K19 ["Localization"]
      393 SETTABLEKS                       R23 R41 K79 ["Network"]
      395 CALL                             R40 1 1
      396 MOVE                             R41 R34
      397 CALL                             R40 1 1
      398 MOVE                             R34 R40
      399 DUPCLOSURE                       R40 K81 [PROTO_19]
      400 SETGLOBAL                        R40 K82 ["isSearchFiltered"]
      402 DUPCLOSURE                       R40 K83 [PROTO_20]
      403 CAPTURE                          VAL R13
      404 CAPTURE                          VAL R31
      405 DUPCLOSURE                       R41 K84 [PROTO_26]
      406 CAPTURE                          VAL R29
      407 CAPTURE                          VAL R30
      408 CAPTURE                          VAL R28
      409 CAPTURE                          VAL R31
      410 CAPTURE                          VAL R26
      411 CAPTURE                          VAL R27
      412 GETTABLEKS                       R42 R4 K85 ["connect"]
      414 MOVE                             R43 R40
      415 MOVE                             R44 R41
      416 CALL                             R42 2 1
      417 MOVE                             R43 R34
      418 CALL                             R42 1 -1
      419 CLOSEUPVALS                      R11
      420 RETURN                           R42 -1
