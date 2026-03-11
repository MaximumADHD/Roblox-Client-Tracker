PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Id"]
        2 OR                               R1 R2 R0
        3 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_buildStyleRule"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+69]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["getOrderedStyleRulesAndFolders"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 NEWTABLE                         R3 0 0
        9 MOVE                             R4 R2
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 LOADK                            R11 K1 ["StyleRule"]
       14 NAMECALL                         R9 R8 K2 ["IsA"]
       16 CALL                             R9 2 1
       17 JUMPIFNOT                        R9 ; [+26]
       18 GETUPVAL                         R10 2
       19 GETTABLEKS                       R9 R10 K3 ["getQueryTypeFromSelector"]
       21 GETTABLEKS                       R10 R8 K4 ["Selector"]
       23 CALL                             R9 1 1
       24 GETUPVAL                         R12 2
       25 GETTABLEKS                       R11 R12 K5 ["Type"]
       27 GETTABLEKS                       R10 R11 K6 ["Pseudo"]
       29 JUMPIFNOTEQ                      R9 R10 ; [+14]
       31 GETUPVAL                         R11 2
       32 GETTABLEKS                       R10 R11 K7 ["getQueryStyleRulesForPseudo"]
       34 MOVE                             R11 R8
       35 CALL                             R10 1 1
       36 MOVE                             R11 R10
       37 LOADNIL                          R12
       38 LOADNIL                          R13
       39 FORGPREP                         R11
       40 LOADB                            R16 1
       41 SETTABLE                         R16 R3 R15
       42 FORGLOOP                         R11 2 ; [-3]
       44 FORGLOOP                         R4 2 ; [-32]
       46 NEWTABLE                         R4 0 0
       48 MOVE                             R5 R2
       49 LOADNIL                          R6
       50 LOADNIL                          R7
       51 FORGPREP                         R5
       52 GETTABLE                         R10 R3 R9
       53 JUMPIF                           R10 ; [+14]
       54 GETUPVAL                         R11 3
       55 GETTABLEKS                       R10 R11 K8 ["_buildInstance"]
       57 MOVE                             R11 R9
       58 MOVE                             R12 R1
       59 CALL                             R10 2 1
       60 JUMPIFNOT                        R10 ; [+7]
       61 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       63 MOVE                             R12 R4
       64 MOVE                             R13 R10
       65 GETIMPORT                        R11 K11 [table.insert]
       67 CALL                             R11 2 0
       68 FORGLOOP                         R5 2 ; [-17]
       70 RETURN                           R4 1
       71 LOADK                            R5 K1 ["StyleRule"]
       72 NAMECALL                         R3 R0 K2 ["IsA"]
       74 CALL                             R3 2 -1
       75 FASTCALL                         ASSERT ; [+2]
       76 GETIMPORT                        R2 K13 [assert]
       78 CALL                             R2 -1 0
       79 GETUPVAL                         R2 4
       80 GETUPVAL                         R4 1
       81 GETTABLEKS                       R3 R4 K14 ["getOrderedStyleRules"]
       83 MOVE                             R4 R0
       84 CALL                             R3 1 1
       85 NEWCLOSURE                       R4 P0
       86 CAPTURE                          UPVAL U3
       87 CAPTURE                          VAL R1
       88 CALL                             R2 2 -1
       89 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createItemId"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["_getChildRows"]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 CALL                             R3 2 1
       11 DUPTABLE                         R4 K6 [{"Id", "Name", "Instance", "Children"}]
       12 SETTABLEKS                       R2 R4 K2 ["Id"]
       14 DUPTABLE                         R5 K11 [{"Schema", "Value", "FullSpan", "Actions"}]
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R6 R7 K12 ["FolderSchema"]
       18 SETTABLEKS                       R6 R5 K7 ["Schema"]
       20 GETTABLEKS                       R6 R0 K3 ["Name"]
       22 SETTABLEKS                       R6 R5 K8 ["Value"]
       24 LOADB                            R6 1
       25 SETTABLEKS                       R6 R5 K9 ["FullSpan"]
       27 GETUPVAL                         R7 3
       28 GETTABLEKS                       R6 R7 K13 ["MoreAction"]
       30 SETTABLEKS                       R6 R5 K10 ["Actions"]
       32 SETTABLEKS                       R5 R4 K3 ["Name"]
       34 SETTABLEKS                       R0 R4 K4 ["Instance"]
       36 SETTABLEKS                       R3 R4 K5 ["Children"]
       38 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createItemId"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["_getChildRows"]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 CALL                             R3 2 1
       11 GETUPVAL                         R4 2
       12 JUMPIFNOT                        R4 ; [+36]
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K2 ["getQueryTypeFromSelector"]
       16 GETTABLEKS                       R5 R0 K3 ["Selector"]
       18 CALL                             R4 1 1
       19 JUMPIFNOT                        R4 ; [+29]
       20 GETUPVAL                         R7 3
       21 GETTABLEKS                       R6 R7 K4 ["Type"]
       23 GETTABLEKS                       R5 R6 K5 ["Pseudo"]
       25 JUMPIFNOTEQ                      R4 R5 ; [+23]
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R5 R6 K6 ["getQueryStyleRulesForPseudo"]
       30 MOVE                             R6 R0
       31 CALL                             R5 1 1
       32 MOVE                             R6 R5
       33 LOADNIL                          R7
       34 LOADNIL                          R8
       35 FORGPREP                         R6
       36 MOVE                             R12 R3
       37 GETUPVAL                         R14 1
       38 GETTABLEKS                       R13 R14 K7 ["_buildStyleRule"]
       40 MOVE                             R14 R10
       41 MOVE                             R15 R1
       42 CALL                             R13 2 -1
       43 FASTCALL                         TABLE_INSERT ; [+2]
       44 GETIMPORT                        R11 K10 [table.insert]
       46 CALL                             R11 -1 0
       47 FORGLOOP                         R6 2 ; [-12]
       49 GETTABLEKS                       R4 R0 K11 ["SelectorError"]
       51 GETUPVAL                         R5 4
       52 JUMPIF                           R5 ; [+14]
       53 JUMPIFNOTEQKS                    R4 K12 [""] ; [+13]
       55 GETUPVAL                         R6 5
       56 GETTABLEKS                       R5 R6 K13 ["DEPRECATED_isNestedPseudoInstance"]
       58 MOVE                             R6 R0
       59 CALL                             R5 1 1
       60 JUMPIFNOT                        R5 ; [+6]
       61 LOADK                            R7 K14 ["Label"]
       62 LOADK                            R8 K15 ["NestedPseudoInstanceError"]
       63 NAMECALL                         R5 R1 K16 ["getText"]
       65 CALL                             R5 3 1
       66 MOVE                             R4 R5
       67 DUPTABLE                         R5 K21 [{"Id", "Name", "Instance", "Children"}]
       68 SETTABLEKS                       R2 R5 K17 ["Id"]
       70 DUPTABLE                         R6 K27 [{"ErrorMessage", "FullSpan", "Actions", "Schema", "Value"}]
       71 SETTABLEKS                       R4 R6 K22 ["ErrorMessage"]
       73 LOADB                            R7 1
       74 SETTABLEKS                       R7 R6 K23 ["FullSpan"]
       76 GETUPVAL                         R8 6
       77 GETTABLEKS                       R7 R8 K28 ["FullSpanMoreAction"]
       79 SETTABLEKS                       R7 R6 K24 ["Actions"]
       81 GETUPVAL                         R8 7
       82 GETTABLEKS                       R7 R8 K29 ["SelectorSchema"]
       84 SETTABLEKS                       R7 R6 K25 ["Schema"]
       86 GETTABLEKS                       R7 R0 K3 ["Selector"]
       88 SETTABLEKS                       R7 R6 K26 ["Value"]
       90 SETTABLEKS                       R6 R5 K18 ["Name"]
       92 SETTABLEKS                       R0 R5 K19 ["Instance"]
       94 GETUPVAL                         R6 8
       95 GETUPVAL                         R8 1
       96 GETTABLEKS                       R7 R8 K30 ["_buildProperties"]
       98 MOVE                             R8 R2
       99 MOVE                             R9 R0
      100 CALL                             R7 2 1
      101 MOVE                             R8 R3
      102 CALL                             R6 2 1
      103 SETTABLEKS                       R6 R5 K20 ["Children"]
      105 RETURN                           R5 1

PROTO_6:
        0 DUPTABLE                         R2 K4 [{"Id", "Name", "Value", "Children"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K5 ["createItemId"]
        4 MOVE                             R4 R0
        5 LOADK                            R5 K6 ["@Empty"]
        6 CALL                             R3 2 1
        7 SETTABLEKS                       R3 R2 K0 ["Id"]
        9 DUPTABLE                         R3 K8 [{"Schema", "Value"}]
       10 GETUPVAL                         R4 1
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R5 R6 K9 ["PropertyNameSchema"]
       14 DUPTABLE                         R6 K11 [{"StyleRuleInfo"}]
       15 SETTABLEKS                       R1 R6 K10 ["StyleRuleInfo"]
       17 CALL                             R4 2 1
       18 SETTABLEKS                       R4 R3 K7 ["Schema"]
       20 LOADK                            R4 K12 [""]
       21 SETTABLEKS                       R4 R3 K2 ["Value"]
       23 SETTABLEKS                       R3 R2 K1 ["Name"]
       25 DUPTABLE                         R3 K14 [{"Actions", "Schema", "Value"}]
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R4 R5 K15 ["MoreAction"]
       29 SETTABLEKS                       R4 R3 K13 ["Actions"]
       31 DUPTABLE                         R4 K17 [{"Type"}]
       32 LOADK                            R5 K18 ["Empty"]
       33 SETTABLEKS                       R5 R4 K16 ["Type"]
       35 SETTABLEKS                       R4 R3 K7 ["Schema"]
       37 LOADK                            R4 K12 [""]
       38 SETTABLEKS                       R4 R3 K2 ["Value"]
       40 SETTABLEKS                       R3 R2 K2 ["Value"]
       42 NEWTABLE                         R3 0 0
       44 SETTABLEKS                       R3 R2 K3 ["Children"]
       46 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 LOADNIL                          R3
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K0 ["parseAttributeName"]
        6 MOVE                             R6 R2
        7 CALL                             R5 1 1
        8 JUMPIFNOTEQKNIL                  R5 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 GETUPVAL                         R5 2
       13 JUMPIFNOT                        R5 ; [+11]
       14 GETUPVAL                         R5 2
       15 JUMPIFEQKS                       R5 K1 [""] ; [+9]
       17 GETUPVAL                         R6 3
       18 GETTABLEKS                       R5 R6 K2 ["getPropertySchema"]
       20 MOVE                             R6 R1
       21 GETUPVAL                         R7 2
       22 CALL                             R5 2 1
       23 MOVE                             R3 R5
       24 JUMP                             ; [+20]
       25 JUMPIFEQKNIL                     R2 ; [+11]
       27 JUMPIF                           R4 ; [+9]
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R5 R6 K3 ["PropertySchemas"]
       31 FASTCALL1                        TYPEOF R2 ; [+3]
       32 MOVE                             R7 R2
       33 GETIMPORT                        R6 K5 [typeof]
       35 CALL                             R6 1 1
       36 GETTABLE                         R3 R5 R6
       37 JUMPIF                           R3 ; [+7]
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R5 R6 K2 ["getPropertySchema"]
       41 MOVE                             R6 R1
       42 LOADK                            R7 K1 [""]
       43 CALL                             R5 2 1
       44 MOVE                             R3 R5
       45 JUMPIF                           R3 ; [+7]
       46 JUMPIFNOTEQKS                    R1 K1 [""] ; [+3]
       48 LOADNIL                          R5
       49 RETURN                           R5 1
       50 GETUPVAL                         R5 3
       51 GETTABLEKS                       R3 R5 K6 ["TextSchema"]
       53 JUMPIFNOT                        R4 ; [+17]
       54 GETUPVAL                         R6 3
       55 GETTABLEKS                       R5 R6 K7 ["getPossiblePropertyTypes"]
       57 MOVE                             R6 R1
       58 CALL                             R5 1 1
       59 GETUPVAL                         R6 4
       60 GETUPVAL                         R8 3
       61 GETTABLEKS                       R7 R8 K8 ["TokenReferenceSchema"]
       63 DUPTABLE                         R8 K11 [{"Instance", "ExpectedTypes"}]
       64 GETUPVAL                         R9 5
       65 SETTABLEKS                       R9 R8 K9 ["Instance"]
       67 SETTABLEKS                       R5 R8 K10 ["ExpectedTypes"]
       69 CALL                             R6 2 1
       70 MOVE                             R3 R6
       71 GETUPVAL                         R6 6
       72 GETTABLEKS                       R5 R6 K12 ["createItemId"]
       74 GETUPVAL                         R6 5
       75 MOVE                             R7 R1
       76 CALL                             R5 2 1
       77 DUPTABLE                         R6 K17 [{"Id", "Name", "Value", "Children"}]
       78 SETTABLEKS                       R5 R6 K13 ["Id"]
       80 DUPTABLE                         R7 K19 [{"Schema", "Value"}]
       81 GETUPVAL                         R8 4
       82 GETUPVAL                         R10 3
       83 GETTABLEKS                       R9 R10 K20 ["PropertyNameSchema"]
       85 DUPTABLE                         R10 K22 [{"StyleRuleInfo"}]
       86 GETUPVAL                         R11 7
       87 SETTABLEKS                       R11 R10 K21 ["StyleRuleInfo"]
       89 CALL                             R8 2 1
       90 SETTABLEKS                       R8 R7 K18 ["Schema"]
       92 SETTABLEKS                       R1 R7 K15 ["Value"]
       94 SETTABLEKS                       R7 R6 K14 ["Name"]
       96 DUPTABLE                         R7 K24 [{"Actions", "Schema", "Value"}]
       97 GETUPVAL                         R9 8
       98 GETTABLEKS                       R8 R9 K25 ["MoreAction"]
      100 SETTABLEKS                       R8 R7 K23 ["Actions"]
      102 SETTABLEKS                       R3 R7 K18 ["Schema"]
      104 GETTABLEKS                       R9 R3 K26 ["Validate"]
      106 MOVE                             R10 R2
      107 CALL                             R9 1 1
      108 JUMPIFNOT                        R9 ; [+2]
      109 MOVE                             R8 R2
      110 JUMP                             ; [+3]
      111 GETTABLEKS                       R8 R3 K27 ["GetDefaultValue"]
      113 CALL                             R8 0 1
      114 SETTABLEKS                       R8 R7 K15 ["Value"]
      116 SETTABLEKS                       R7 R6 K15 ["Value"]
      118 GETTABLEKS                       R8 R3 K26 ["Validate"]
      120 MOVE                             R9 R2
      121 CALL                             R8 1 1
      122 JUMPIFNOT                        R8 ; [+9]
      123 GETTABLEKS                       R8 R3 K28 ["GetChildren"]
      125 JUMPIFNOT                        R8 ; [+6]
      126 GETTABLEKS                       R7 R3 K28 ["GetChildren"]
      128 MOVE                             R8 R2
      129 MOVE                             R9 R5
      130 CALL                             R7 2 1
      131 JUMP                             ; [+2]
      132 NEWTABLE                         R7 0 0
      134 SETTABLEKS                       R7 R6 K16 ["Children"]
      136 RETURN                           R6 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["findFirstClassSelector"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 NAMECALL                         R3 R1 K1 ["GetProperties"]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R4 1
        9 MOVE                             R5 R3
       10 CALL                             R4 1 1
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R5 R6 K2 ["getStyleInfo"]
       14 MOVE                             R6 R1
       15 CALL                             R5 1 1
       16 GETIMPORT                        R6 K5 [table.sort]
       18 MOVE                             R7 R4
       19 CALL                             R6 1 0
       20 GETUPVAL                         R6 3
       21 MOVE                             R7 R4
       22 NEWCLOSURE                       R8 P0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          VAL R2
       26 CAPTURE                          UPVAL U5
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          VAL R5
       31 CAPTURE                          UPVAL U8
       32 CALL                             R6 2 1
       33 MOVE                             R8 R6
       34 GETUPVAL                         R10 9
       35 GETTABLEKS                       R9 R10 K6 ["_buildEmptyRow"]
       37 MOVE                             R10 R0
       38 MOVE                             R11 R5
       39 CALL                             R9 2 -1
       40 FASTCALL                         TABLE_INSERT ; [+2]
       41 GETIMPORT                        R7 K8 [table.insert]
       43 CALL                             R7 -1 0
       44 RETURN                           R6 1

PROTO_9:
        0 LOADK                            R4 K0 ["StyleRule"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["_buildStyleRule"]
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1
       12 LOADK                            R4 K3 ["Folder"]
       13 NAMECALL                         R2 R0 K1 ["IsA"]
       15 CALL                             R2 2 1
       16 JUMPIFNOT                        R2 ; [+7]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K4 ["_buildFolderRow"]
       20 MOVE                             R3 R0
       21 MOVE                             R4 R1
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1
       24 LOADNIL                          R2
       25 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_buildStyleRule"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 NEWTABLE                         R3 0 1
        8 MOVE                             R4 R2
        9 SETLIST                          R3 R4 1 [1]
       11 GETUPVAL                         R4 1
       12 MOVE                             R6 R3
       13 NAMECALL                         R4 R4 K1 ["updatePaths"]
       15 CALL                             R4 2 -1
       16 RETURN                           R4 -1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        ASSERT R3 ; [+2]
        2 GETIMPORT                        R2 K1 [assert]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K2 ["_buildInstance"]
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 1
       11 NEWTABLE                         R3 0 1
       13 MOVE                             R4 R2
       14 SETLIST                          R3 R4 1 [1]
       16 GETUPVAL                         R4 2
       17 MOVE                             R6 R3
       18 NAMECALL                         R4 R4 K3 ["updatePaths"]
       20 CALL                             R4 2 -1
       21 RETURN                           R4 -1

PROTO_12:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LENGTH                           R2 R0
        2 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R2 K2 [ipairs]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 3
        9 FORGPREP_INEXT                   R2
       10 GETTABLEKS                       R8 R6 K3 ["Id"]
       12 GETTABLE                         R7 R1 R8
       13 JUMPIFEQKB                       R7 FALSE ; [+10]
       15 GETTABLEKS                       R8 R6 K4 ["Name"]
       17 GETTABLEKS                       R7 R8 K5 ["FullSpan"]
       19 JUMPIFNOT                        R7 ; [+4]
       20 GETTABLEKS                       R7 R6 K3 ["Id"]
       22 LOADB                            R8 1
       23 SETTABLE                         R8 R1 R7
       24 GETUPVAL                         R8 0
       25 GETTABLEKS                       R7 R8 K6 ["expandNewRows"]
       27 GETTABLEKS                       R8 R6 K7 ["Children"]
       29 MOVE                             R9 R1
       30 CALL                             R7 2 0
       31 FORGLOOP                         R2 2 [inext] ; [-22]
       33 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R3 R1 K7 ["Util"]
       20 GETTABLEKS                       R2 R3 K8 ["EditTree"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETTABLEKS                       R6 R0 K9 ["Src"]
       26 GETTABLEKS                       R5 R6 K10 ["Flags"]
       28 GETTABLEKS                       R4 R5 K11 ["getEngineFeatureNestedPseudoInstance"]
       30 CALL                             R3 1 1
       31 CALL                             R3 0 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R7 R0 K9 ["Src"]
       36 GETTABLEKS                       R6 R7 K10 ["Flags"]
       38 GETTABLEKS                       R5 R6 K12 ["getFFlagStyleQuery"]
       40 CALL                             R4 1 1
       41 CALL                             R4 0 1
       42 GETIMPORT                        R5 K4 [require]
       44 GETTABLEKS                       R7 R0 K5 ["Packages"]
       46 GETTABLEKS                       R6 R7 K13 ["Dash"]
       48 CALL                             R5 1 1
       49 GETTABLEKS                       R6 R5 K14 ["append"]
       51 GETTABLEKS                       R7 R5 K15 ["collectArray"]
       53 GETTABLEKS                       R8 R5 K16 ["join"]
       55 GETTABLEKS                       R9 R5 K17 ["keys"]
       57 GETTABLEKS                       R10 R5 K18 ["map"]
       59 GETIMPORT                        R11 K4 [require]
       61 GETTABLEKS                       R14 R0 K9 ["Src"]
       63 GETTABLEKS                       R13 R14 K7 ["Util"]
       65 GETTABLEKS                       R12 R13 K19 ["MenuHelpers"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K4 [require]
       70 GETTABLEKS                       R15 R0 K9 ["Src"]
       72 GETTABLEKS                       R14 R15 K7 ["Util"]
       74 GETTABLEKS                       R13 R14 K20 ["SelectorHelpers"]
       76 CALL                             R12 1 1
       77 GETIMPORT                        R13 K4 [require]
       79 GETTABLEKS                       R16 R0 K9 ["Src"]
       81 GETTABLEKS                       R15 R16 K7 ["Util"]
       83 GETTABLEKS                       R14 R15 K21 ["StyleQueryHelpers"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K4 [require]
       88 GETTABLEKS                       R17 R0 K9 ["Src"]
       90 GETTABLEKS                       R16 R17 K7 ["Util"]
       92 GETTABLEKS                       R15 R16 K22 ["StyleRuleHelpers"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K4 [require]
       97 GETTABLEKS                       R18 R0 K9 ["Src"]
       99 GETTABLEKS                       R17 R18 K7 ["Util"]
      101 GETTABLEKS                       R16 R17 K23 ["StyleSchema"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K4 [require]
      106 GETTABLEKS                       R19 R0 K9 ["Src"]
      108 GETTABLEKS                       R18 R19 K7 ["Util"]
      110 GETTABLEKS                       R17 R18 K24 ["Styling"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K4 [require]
      115 GETTABLEKS                       R20 R0 K9 ["Src"]
      117 GETTABLEKS                       R19 R20 K7 ["Util"]
      119 GETTABLEKS                       R18 R19 K25 ["TokenHelpers"]
      121 CALL                             R17 1 1
      122 GETIMPORT                        R18 K4 [require]
      124 GETTABLEKS                       R21 R0 K9 ["Src"]
      126 GETTABLEKS                       R20 R21 K7 ["Util"]
      128 GETTABLEKS                       R19 R20 K26 ["TreeTableHelpers"]
      130 CALL                             R18 1 1
      131 GETIMPORT                        R19 K4 [require]
      133 GETTABLEKS                       R21 R0 K9 ["Src"]
      135 GETTABLEKS                       R20 R21 K27 ["Types"]
      137 CALL                             R19 1 1
      138 NEWTABLE                         R20 16 0
      140 NEWTABLE                         R21 0 2
      142 DUPTABLE                         R22 K31 [{"Name", "Key", "Width"}]
      143 LOADK                            R23 K28 ["Name"]
      144 SETTABLEKS                       R23 R22 K28 ["Name"]
      146 LOADK                            R23 K28 ["Name"]
      147 SETTABLEKS                       R23 R22 K29 ["Key"]
      149 GETIMPORT                        R23 K34 [UDim.new]
      151 LOADK                            R24 K35 [0.5]
      152 LOADN                            R25 0
      153 CALL                             R23 2 1
      154 SETTABLEKS                       R23 R22 K30 ["Width"]
      156 DUPTABLE                         R23 K31 [{"Name", "Key", "Width"}]
      157 LOADK                            R24 K36 ["Value"]
      158 SETTABLEKS                       R24 R23 K28 ["Name"]
      160 LOADK                            R24 K36 ["Value"]
      161 SETTABLEKS                       R24 R23 K29 ["Key"]
      163 GETIMPORT                        R24 K34 [UDim.new]
      165 LOADK                            R25 K35 [0.5]
      166 LOADN                            R26 0
      167 CALL                             R24 2 1
      168 SETTABLEKS                       R24 R23 K30 ["Width"]
      170 SETLIST                          R21 R22 2 [1]
      172 SETTABLEKS                       R21 R20 K37 ["Columns"]
      174 LOADN                            R21 1
      175 SETTABLEKS                       R21 R20 K38 ["NAME_COLUMN_INDEX"]
      177 LOADN                            R21 2
      178 SETTABLEKS                       R21 R20 K39 ["VALUE_COLUMN_INDEX"]
      180 DUPCLOSURE                       R21 K40 [PROTO_0]
      181 SETTABLEKS                       R21 R20 K41 ["getItemChildren"]
      183 DUPCLOSURE                       R21 K42 [PROTO_1]
      184 SETTABLEKS                       R21 R20 K43 ["getItemId"]
      186 GETTABLEKS                       R21 R2 K33 ["new"]
      188 DUPTABLE                         R22 K46 [{"getChildren", "getId"}]
      189 GETTABLEKS                       R23 R20 K41 ["getItemChildren"]
      191 SETTABLEKS                       R23 R22 K44 ["getChildren"]
      193 GETTABLEKS                       R23 R20 K43 ["getItemId"]
      195 SETTABLEKS                       R23 R22 K45 ["getId"]
      197 CALL                             R21 1 1
      198 SETTABLEKS                       R21 R20 K8 ["EditTree"]
      200 DUPCLOSURE                       R22 K47 [PROTO_3]
      201 CAPTURE                          VAL R4
      202 CAPTURE                          VAL R14
      203 CAPTURE                          VAL R13
      204 CAPTURE                          VAL R20
      205 CAPTURE                          VAL R10
      206 SETTABLEKS                       R22 R20 K48 ["_getChildRows"]
      208 DUPCLOSURE                       R22 K49 [PROTO_4]
      209 CAPTURE                          VAL R18
      210 CAPTURE                          VAL R20
      211 CAPTURE                          VAL R15
      212 CAPTURE                          VAL R11
      213 SETTABLEKS                       R22 R20 K50 ["_buildFolderRow"]
      215 DUPCLOSURE                       R22 K51 [PROTO_5]
      216 CAPTURE                          VAL R18
      217 CAPTURE                          VAL R20
      218 CAPTURE                          VAL R4
      219 CAPTURE                          VAL R13
      220 CAPTURE                          VAL R3
      221 CAPTURE                          VAL R12
      222 CAPTURE                          VAL R11
      223 CAPTURE                          VAL R15
      224 CAPTURE                          VAL R6
      225 SETTABLEKS                       R22 R20 K52 ["_buildStyleRule"]
      227 DUPCLOSURE                       R22 K53 [PROTO_6]
      228 CAPTURE                          VAL R18
      229 CAPTURE                          VAL R8
      230 CAPTURE                          VAL R15
      231 CAPTURE                          VAL R11
      232 SETTABLEKS                       R22 R20 K54 ["_buildEmptyRow"]
      234 DUPCLOSURE                       R22 K55 [PROTO_8]
      235 CAPTURE                          VAL R12
      236 CAPTURE                          VAL R9
      237 CAPTURE                          VAL R16
      238 CAPTURE                          VAL R7
      239 CAPTURE                          VAL R17
      240 CAPTURE                          VAL R15
      241 CAPTURE                          VAL R8
      242 CAPTURE                          VAL R18
      243 CAPTURE                          VAL R11
      244 CAPTURE                          VAL R20
      245 SETTABLEKS                       R22 R20 K56 ["_buildProperties"]
      247 DUPCLOSURE                       R22 K57 [PROTO_9]
      248 CAPTURE                          VAL R20
      249 SETTABLEKS                       R22 R20 K58 ["_buildInstance"]
      251 DUPCLOSURE                       R22 K59 [PROTO_10]
      252 CAPTURE                          VAL R20
      253 CAPTURE                          VAL R21
      254 SETTABLEKS                       R22 R20 K60 ["DEPRECATED_buildItems"]
      256 DUPCLOSURE                       R22 K61 [PROTO_11]
      257 CAPTURE                          VAL R4
      258 CAPTURE                          VAL R20
      259 CAPTURE                          VAL R21
      260 SETTABLEKS                       R22 R20 K62 ["buildItems"]
      262 DUPCLOSURE                       R22 K63 [PROTO_12]
      263 CAPTURE                          VAL R20
      264 SETTABLEKS                       R22 R20 K64 ["expandNewRows"]
      266 RETURN                           R20 1
