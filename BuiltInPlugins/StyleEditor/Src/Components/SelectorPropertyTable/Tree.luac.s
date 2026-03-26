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
       11 DUPTABLE                         R4 K7 [{"Id", "Metadata", "Name", "Instance", "Children"}]
       12 SETTABLEKS                       R2 R4 K2 ["Id"]
       14 GETUPVAL                         R6 2
       15 JUMPIFNOT                        R6 ; [+5]
       16 DUPTABLE                         R5 K9 [{"RowType"}]
       17 LOADK                            R6 K5 ["Instance"]
       18 SETTABLEKS                       R6 R5 K8 ["RowType"]
       20 JUMP                             ; [+1]
       21 LOADNIL                          R5
       22 SETTABLEKS                       R5 R4 K3 ["Metadata"]
       24 DUPTABLE                         R5 K14 [{"Schema", "Value", "FullSpan", "Actions"}]
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R6 R7 K15 ["FolderSchema"]
       28 SETTABLEKS                       R6 R5 K10 ["Schema"]
       30 GETTABLEKS                       R6 R0 K4 ["Name"]
       32 SETTABLEKS                       R6 R5 K11 ["Value"]
       34 LOADB                            R6 1
       35 SETTABLEKS                       R6 R5 K12 ["FullSpan"]
       37 GETUPVAL                         R7 4
       38 GETTABLEKS                       R6 R7 K16 ["MoreAction"]
       40 SETTABLEKS                       R6 R5 K13 ["Actions"]
       42 SETTABLEKS                       R5 R4 K4 ["Name"]
       44 SETTABLEKS                       R0 R4 K5 ["Instance"]
       46 SETTABLEKS                       R3 R4 K6 ["Children"]
       48 RETURN                           R4 1

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
       67 DUPTABLE                         R5 K22 [{"Id", "Metadata", "Name", "Instance", "Children"}]
       68 SETTABLEKS                       R2 R5 K17 ["Id"]
       70 GETUPVAL                         R7 6
       71 JUMPIFNOT                        R7 ; [+5]
       72 DUPTABLE                         R6 K24 [{"RowType"}]
       73 LOADK                            R7 K20 ["Instance"]
       74 SETTABLEKS                       R7 R6 K23 ["RowType"]
       76 JUMP                             ; [+1]
       77 LOADNIL                          R6
       78 SETTABLEKS                       R6 R5 K18 ["Metadata"]
       80 DUPTABLE                         R6 K30 [{"ErrorMessage", "FullSpan", "Actions", "Schema", "Value"}]
       81 SETTABLEKS                       R4 R6 K25 ["ErrorMessage"]
       83 LOADB                            R7 1
       84 SETTABLEKS                       R7 R6 K26 ["FullSpan"]
       86 GETUPVAL                         R8 7
       87 GETTABLEKS                       R7 R8 K31 ["FullSpanMoreAction"]
       89 SETTABLEKS                       R7 R6 K27 ["Actions"]
       91 GETUPVAL                         R8 8
       92 GETTABLEKS                       R7 R8 K32 ["SelectorSchema"]
       94 SETTABLEKS                       R7 R6 K28 ["Schema"]
       96 GETTABLEKS                       R7 R0 K3 ["Selector"]
       98 SETTABLEKS                       R7 R6 K29 ["Value"]
      100 SETTABLEKS                       R6 R5 K19 ["Name"]
      102 SETTABLEKS                       R0 R5 K20 ["Instance"]
      104 GETUPVAL                         R6 9
      105 GETUPVAL                         R8 6
      106 JUMPIFNOT                        R8 ; [+7]
      107 GETUPVAL                         R8 1
      108 GETTABLEKS                       R7 R8 K33 ["_buildProperties"]
      110 MOVE                             R8 R2
      111 MOVE                             R9 R0
      112 CALL                             R7 2 1
      113 JUMP                             ; [+6]
      114 GETUPVAL                         R8 1
      115 GETTABLEKS                       R7 R8 K34 ["_DEPRECATED_buildProperties"]
      117 MOVE                             R8 R2
      118 MOVE                             R9 R0
      119 CALL                             R7 2 1
      120 MOVE                             R8 R3
      121 CALL                             R6 2 1
      122 SETTABLEKS                       R6 R5 K21 ["Children"]
      124 RETURN                           R5 1

PROTO_6:
        0 DUPTABLE                         R2 K5 [{"Id", "Metadata", "Name", "Value", "Children"}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K6 ["createItemId"]
        4 MOVE                             R4 R0
        5 LOADK                            R5 K7 ["@Empty"]
        6 CALL                             R3 2 1
        7 SETTABLEKS                       R3 R2 K0 ["Id"]
        9 GETUPVAL                         R4 1
       10 JUMPIFNOT                        R4 ; [+8]
       11 DUPTABLE                         R3 K10 [{"RowType", "IsUnset"}]
       12 LOADK                            R4 K11 ["Property"]
       13 SETTABLEKS                       R4 R3 K8 ["RowType"]
       15 LOADB                            R4 0
       16 SETTABLEKS                       R4 R3 K9 ["IsUnset"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 SETTABLEKS                       R3 R2 K1 ["Metadata"]
       22 DUPTABLE                         R3 K13 [{"Schema", "Value"}]
       23 GETUPVAL                         R4 2
       24 GETUPVAL                         R6 3
       25 GETTABLEKS                       R5 R6 K14 ["PropertyNameSchema"]
       27 DUPTABLE                         R6 K16 [{"StyleRuleInfo"}]
       28 SETTABLEKS                       R1 R6 K15 ["StyleRuleInfo"]
       30 CALL                             R4 2 1
       31 SETTABLEKS                       R4 R3 K12 ["Schema"]
       33 LOADK                            R4 K17 [""]
       34 SETTABLEKS                       R4 R3 K3 ["Value"]
       36 SETTABLEKS                       R3 R2 K2 ["Name"]
       38 DUPTABLE                         R3 K19 [{"Actions", "Schema", "Value"}]
       39 GETUPVAL                         R5 4
       40 GETTABLEKS                       R4 R5 K20 ["MoreAction"]
       42 SETTABLEKS                       R4 R3 K18 ["Actions"]
       44 DUPTABLE                         R4 K22 [{"Type"}]
       45 LOADK                            R5 K23 ["Empty"]
       46 SETTABLEKS                       R5 R4 K21 ["Type"]
       48 SETTABLEKS                       R4 R3 K12 ["Schema"]
       50 LOADK                            R4 K17 [""]
       51 SETTABLEKS                       R4 R3 K3 ["Value"]
       53 SETTABLEKS                       R3 R2 K3 ["Value"]
       55 NEWTABLE                         R3 0 0
       57 SETTABLEKS                       R3 R2 K4 ["Children"]
       59 RETURN                           R2 1

PROTO_7:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 SETTABLEKS                       R1 R6 K0 ["Metadata"]
        6 FORGLOOP                         R2 2 ; [-3]
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 GETUPVAL                         R4 1
        3 GETTABLE                         R3 R4 R1
        4 LOADNIL                          R4
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K0 ["createItemId"]
        8 GETUPVAL                         R6 3
        9 MOVE                             R7 R1
       10 CALL                             R5 2 1
       11 LOADNIL                          R6
       12 NEWTABLE                         R7 0 0
       14 JUMPIFEQKNIL                     R2 ; [+115]
       16 GETUPVAL                         R10 4
       17 GETTABLEKS                       R9 R10 K1 ["parseAttributeName"]
       19 MOVE                             R10 R2
       20 CALL                             R9 1 1
       21 JUMPIFNOTEQKNIL                  R9 ; [+2]
       23 LOADB                            R8 0 +1
       24 LOADB                            R8 1
       25 GETUPVAL                         R9 5
       26 JUMPIFNOT                        R9 ; [+11]
       27 GETUPVAL                         R9 5
       28 JUMPIFEQKS                       R9 K2 [""] ; [+9]
       30 GETUPVAL                         R10 6
       31 GETTABLEKS                       R9 R10 K3 ["getPropertySchema"]
       33 MOVE                             R10 R1
       34 GETUPVAL                         R11 5
       35 CALL                             R9 2 1
       36 MOVE                             R4 R9
       37 JUMP                             ; [+18]
       38 JUMPIF                           R8 ; [+9]
       39 GETUPVAL                         R10 6
       40 GETTABLEKS                       R9 R10 K4 ["PropertySchemas"]
       42 FASTCALL1                        TYPEOF R2 ; [+3]
       43 MOVE                             R11 R2
       44 GETIMPORT                        R10 K6 [typeof]
       46 CALL                             R10 1 1
       47 GETTABLE                         R4 R9 R10
       48 JUMPIF                           R4 ; [+7]
       49 GETUPVAL                         R10 6
       50 GETTABLEKS                       R9 R10 K3 ["getPropertySchema"]
       52 MOVE                             R10 R1
       53 LOADK                            R11 K2 [""]
       54 CALL                             R9 2 1
       55 MOVE                             R4 R9
       56 JUMPIF                           R4 ; [+7]
       57 JUMPIFNOTEQKS                    R1 K2 [""] ; [+3]
       59 LOADNIL                          R9
       60 RETURN                           R9 1
       61 GETUPVAL                         R9 6
       62 GETTABLEKS                       R4 R9 K7 ["TextSchema"]
       64 JUMPIFNOT                        R8 ; [+17]
       65 GETUPVAL                         R10 6
       66 GETTABLEKS                       R9 R10 K8 ["getPossiblePropertyTypes"]
       68 MOVE                             R10 R1
       69 CALL                             R9 1 1
       70 GETUPVAL                         R10 7
       71 GETUPVAL                         R12 6
       72 GETTABLEKS                       R11 R12 K9 ["TokenReferenceSchema"]
       74 DUPTABLE                         R12 K12 [{"Instance", "ExpectedTypes"}]
       75 GETUPVAL                         R13 3
       76 SETTABLEKS                       R13 R12 K10 ["Instance"]
       78 SETTABLEKS                       R9 R12 K11 ["ExpectedTypes"]
       80 CALL                             R10 2 1
       81 MOVE                             R4 R10
       82 DUPTABLE                         R9 K16 [{"Actions", "Schema", "Value"}]
       83 GETUPVAL                         R11 8
       84 GETTABLEKS                       R10 R11 K17 ["MoreAction"]
       86 SETTABLEKS                       R10 R9 K13 ["Actions"]
       88 SETTABLEKS                       R4 R9 K14 ["Schema"]
       90 GETTABLEKS                       R11 R4 K18 ["Validate"]
       92 MOVE                             R12 R2
       93 CALL                             R11 1 1
       94 JUMPIFNOT                        R11 ; [+2]
       95 MOVE                             R10 R2
       96 JUMP                             ; [+3]
       97 GETTABLEKS                       R10 R4 K19 ["GetDefaultValue"]
       99 CALL                             R10 0 1
      100 SETTABLEKS                       R10 R9 K15 ["Value"]
      102 MOVE                             R6 R9
      103 GETTABLEKS                       R9 R4 K18 ["Validate"]
      105 MOVE                             R10 R2
      106 CALL                             R9 1 1
      107 JUMPIFNOT                        R9 ; [+10]
      108 GETTABLEKS                       R9 R4 K20 ["GetChildren"]
      110 JUMPIFNOT                        R9 ; [+7]
      111 GETTABLEKS                       R9 R4 K20 ["GetChildren"]
      113 MOVE                             R10 R2
      114 MOVE                             R11 R5
      115 CALL                             R9 2 1
      116 MOVE                             R7 R9
      117 JUMP                             ; [+2]
      118 NEWTABLE                         R7 0 0
      120 GETUPVAL                         R10 9
      121 GETTABLEKS                       R9 R10 K21 ["_attachRowMetadata"]
      123 MOVE                             R10 R7
      124 DUPTABLE                         R11 K23 [{"RowType"}]
      125 LOADK                            R12 K24 ["ValueChild"]
      126 SETTABLEKS                       R12 R11 K22 ["RowType"]
      128 CALL                             R9 2 0
      129 JUMP                             ; [+15]
      130 DUPTABLE                         R8 K16 [{"Actions", "Schema", "Value"}]
      131 GETUPVAL                         R10 8
      132 GETTABLEKS                       R9 R10 K17 ["MoreAction"]
      134 SETTABLEKS                       R9 R8 K13 ["Actions"]
      136 GETUPVAL                         R10 6
      137 GETTABLEKS                       R9 R10 K25 ["ChildComponentSchema"]
      139 SETTABLEKS                       R9 R8 K14 ["Schema"]
      141 LOADK                            R9 K2 [""]
      142 SETTABLEKS                       R9 R8 K15 ["Value"]
      144 MOVE                             R6 R8
      145 JUMPIFEQKNIL                     R3 ; [+112]
      147 GETUPVAL                         R9 10
      148 GETTABLEKS                       R8 R9 K26 ["DEFAULT_TRANSITION_NAME"]
      150 JUMPIFEQ                         R1 R8 ; [+107]
      152 GETUPVAL                         R9 2
      153 GETTABLEKS                       R8 R9 K0 ["createItemId"]
      155 MOVE                             R9 R5
      156 LOADK                            R10 K27 ["@Transition"]
      157 CALL                             R8 2 1
      158 FASTCALL1                        TYPEOF R3 ; [+3]
      159 MOVE                             R11 R3
      160 GETIMPORT                        R10 K6 [typeof]
      162 CALL                             R10 1 1
      163 JUMPIFEQKS                       R10 K28 ["string"] ; [+2]
      165 LOADB                            R9 0 +1
      166 LOADB                            R9 1
      167 JUMPIFNOT                        R9 ; [+17]
      168 GETUPVAL                         R10 7
      169 GETUPVAL                         R12 6
      170 GETTABLEKS                       R11 R12 K9 ["TokenReferenceSchema"]
      172 DUPTABLE                         R12 K12 [{"Instance", "ExpectedTypes"}]
      173 GETUPVAL                         R13 3
      174 SETTABLEKS                       R13 R12 K10 ["Instance"]
      176 NEWTABLE                         R13 0 1
      178 LOADK                            R14 K29 ["TweenInfo"]
      179 SETLIST                          R13 R14 1 [1]
      181 SETTABLEKS                       R13 R12 K11 ["ExpectedTypes"]
      183 CALL                             R10 2 1
      184 JUMP                             ; [+3]
      185 GETUPVAL                         R11 6
      186 GETTABLEKS                       R10 R11 K30 ["TweenInfoSchema"]
      188 DUPTABLE                         R11 K35 [{"Id", "Metadata", "Name", "Value", "Children"}]
      189 SETTABLEKS                       R8 R11 K31 ["Id"]
      191 DUPTABLE                         R12 K37 [{"RowType", "TransitionPropertyName"}]
      192 LOADK                            R13 K38 ["Transition"]
      193 SETTABLEKS                       R13 R12 K22 ["RowType"]
      195 SETTABLEKS                       R1 R12 K36 ["TransitionPropertyName"]
      197 SETTABLEKS                       R12 R11 K32 ["Metadata"]
      199 DUPTABLE                         R12 K39 [{"Schema", "Value"}]
      200 GETUPVAL                         R14 6
      201 GETTABLEKS                       R13 R14 K25 ["ChildComponentSchema"]
      203 SETTABLEKS                       R13 R12 K14 ["Schema"]
      205 LOADK                            R13 K38 ["Transition"]
      206 SETTABLEKS                       R13 R12 K15 ["Value"]
      208 SETTABLEKS                       R12 R11 K33 ["Name"]
      210 DUPTABLE                         R12 K16 [{"Actions", "Schema", "Value"}]
      211 GETUPVAL                         R14 8
      212 GETTABLEKS                       R13 R14 K17 ["MoreAction"]
      214 SETTABLEKS                       R13 R12 K13 ["Actions"]
      216 SETTABLEKS                       R10 R12 K14 ["Schema"]
      218 SETTABLEKS                       R3 R12 K15 ["Value"]
      220 SETTABLEKS                       R12 R11 K15 ["Value"]
      222 JUMPIF                           R9 ; [+14]
      223 GETTABLEKS                       R13 R10 K18 ["Validate"]
      225 MOVE                             R14 R3
      226 CALL                             R13 1 1
      227 JUMPIFNOT                        R13 ; [+9]
      228 GETTABLEKS                       R13 R10 K20 ["GetChildren"]
      230 JUMPIFNOT                        R13 ; [+6]
      231 GETTABLEKS                       R12 R10 K20 ["GetChildren"]
      233 MOVE                             R13 R3
      234 MOVE                             R14 R8
      235 CALL                             R12 2 1
      236 JUMP                             ; [+2]
      237 NEWTABLE                         R12 0 0
      239 SETTABLEKS                       R12 R11 K34 ["Children"]
      241 GETUPVAL                         R13 9
      242 GETTABLEKS                       R12 R13 K21 ["_attachRowMetadata"]
      244 GETTABLEKS                       R13 R11 K34 ["Children"]
      246 DUPTABLE                         R14 K23 [{"RowType"}]
      247 LOADK                            R15 K24 ["ValueChild"]
      248 SETTABLEKS                       R15 R14 K22 ["RowType"]
      250 CALL                             R12 2 0
      251 FASTCALL2                        TABLE_INSERT R7 R11 ; [+5]
      253 MOVE                             R13 R7
      254 MOVE                             R14 R11
      255 GETIMPORT                        R12 K42 [table.insert]
      257 CALL                             R12 2 0
      258 DUPTABLE                         R8 K35 [{"Id", "Metadata", "Name", "Value", "Children"}]
      259 SETTABLEKS                       R5 R8 K31 ["Id"]
      261 DUPTABLE                         R9 K44 [{"RowType", "IsUnset"}]
      262 LOADK                            R10 K45 ["Property"]
      263 SETTABLEKS                       R10 R9 K22 ["RowType"]
      265 JUMPIFEQKNIL                     R2 ; [+2]
      267 LOADB                            R10 0 +1
      268 LOADB                            R10 1
      269 SETTABLEKS                       R10 R9 K43 ["IsUnset"]
      271 SETTABLEKS                       R9 R8 K32 ["Metadata"]
      273 DUPTABLE                         R9 K39 [{"Schema", "Value"}]
      274 GETUPVAL                         R10 7
      275 GETUPVAL                         R12 6
      276 GETTABLEKS                       R11 R12 K46 ["PropertyNameSchema"]
      278 DUPTABLE                         R12 K48 [{"StyleRuleInfo"}]
      279 GETUPVAL                         R13 11
      280 SETTABLEKS                       R13 R12 K47 ["StyleRuleInfo"]
      282 CALL                             R10 2 1
      283 SETTABLEKS                       R10 R9 K14 ["Schema"]
      285 SETTABLEKS                       R1 R9 K15 ["Value"]
      287 SETTABLEKS                       R9 R8 K33 ["Name"]
      289 SETTABLEKS                       R6 R8 K15 ["Value"]
      291 SETTABLEKS                       R7 R8 K34 ["Children"]
      293 RETURN                           R8 1

PROTO_9:
        0 NAMECALL                         R2 R1 K0 ["GetProperties"]
        2 CALL                             R2 1 1
        3 NAMECALL                         R3 R1 K1 ["GetPropertyTransitions"]
        5 CALL                             R3 1 1
        6 NEWTABLE                         R4 0 0
        8 MOVE                             R5 R2
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 FORGPREP                         R5
       12 LOADB                            R10 1
       13 SETTABLE                         R10 R4 R8
       14 FORGLOOP                         R5 2 ; [-3]
       16 MOVE                             R5 R3
       17 LOADNIL                          R6
       18 LOADNIL                          R7
       19 FORGPREP                         R5
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R10 R11 K2 ["DEFAULT_TRANSITION_NAME"]
       23 JUMPIFEQ                         R8 R10 ; [+3]
       25 LOADB                            R10 1
       26 SETTABLE                         R10 R4 R8
       27 FORGLOOP                         R5 2 ; [-8]
       29 GETUPVAL                         R5 1
       30 MOVE                             R6 R4
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [table.sort]
       34 MOVE                             R7 R5
       35 CALL                             R6 1 0
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R6 R7 K6 ["getStyleInfo"]
       39 MOVE                             R7 R1
       40 CALL                             R6 1 1
       41 GETUPVAL                         R8 3
       42 GETTABLEKS                       R7 R8 K7 ["findFirstClassSelector"]
       44 MOVE                             R8 R1
       45 CALL                             R7 1 1
       46 GETUPVAL                         R8 4
       47 MOVE                             R9 R5
       48 NEWCLOSURE                       R10 P0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R3
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          VAL R1
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          VAL R7
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          UPVAL U9
       58 CAPTURE                          UPVAL U10
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          VAL R6
       61 CALL                             R8 2 1
       62 GETUPVAL                         R11 0
       63 GETTABLEKS                       R10 R11 K2 ["DEFAULT_TRANSITION_NAME"]
       65 GETTABLE                         R9 R3 R10
       66 JUMPIFNOT                        R9 ; [+117]
       67 GETUPVAL                         R11 5
       68 GETTABLEKS                       R10 R11 K8 ["createItemId"]
       70 MOVE                             R11 R0
       71 LOADK                            R12 K9 ["@DefaultTransition"]
       72 CALL                             R10 2 1
       73 LOADB                            R11 0
       74 FASTCALL1                        TYPEOF R9 ; [+3]
       75 MOVE                             R13 R9
       76 GETIMPORT                        R12 K11 [typeof]
       78 CALL                             R12 1 1
       79 JUMPIFNOTEQKS                    R12 K12 ["string"] ; [+10]
       81 GETUPVAL                         R13 6
       82 GETTABLEKS                       R12 R13 K13 ["parseAttributeName"]
       84 MOVE                             R13 R9
       85 CALL                             R12 1 1
       86 JUMPIFNOTEQKNIL                  R12 ; [+2]
       88 LOADB                            R11 0 +1
       89 LOADB                            R11 1
       90 JUMPIFNOT                        R11 ; [+16]
       91 GETUPVAL                         R12 8
       92 GETUPVAL                         R14 7
       93 GETTABLEKS                       R13 R14 K14 ["TokenReferenceSchema"]
       95 DUPTABLE                         R14 K17 [{"Instance", "ExpectedTypes"}]
       96 SETTABLEKS                       R1 R14 K15 ["Instance"]
       98 NEWTABLE                         R15 0 1
      100 LOADK                            R16 K18 ["TweenInfo"]
      101 SETLIST                          R15 R16 1 [1]
      103 SETTABLEKS                       R15 R14 K16 ["ExpectedTypes"]
      105 CALL                             R12 2 1
      106 JUMP                             ; [+3]
      107 GETUPVAL                         R13 7
      108 GETTABLEKS                       R12 R13 K19 ["TweenInfoSchema"]
      110 DUPTABLE                         R13 K25 [{"Id", "Metadata", "Name", "Value", "Children"}]
      111 SETTABLEKS                       R10 R13 K20 ["Id"]
      113 DUPTABLE                         R14 K28 [{"RowType", "TransitionPropertyName"}]
      114 LOADK                            R15 K29 ["Transition"]
      115 SETTABLEKS                       R15 R14 K26 ["RowType"]
      117 GETUPVAL                         R16 0
      118 GETTABLEKS                       R15 R16 K2 ["DEFAULT_TRANSITION_NAME"]
      120 SETTABLEKS                       R15 R14 K27 ["TransitionPropertyName"]
      122 SETTABLEKS                       R14 R13 K21 ["Metadata"]
      124 DUPTABLE                         R14 K31 [{"Schema", "Value"}]
      125 GETUPVAL                         R16 7
      126 GETTABLEKS                       R15 R16 K32 ["ChildComponentSchema"]
      128 SETTABLEKS                       R15 R14 K30 ["Schema"]
      130 LOADK                            R15 K29 ["Transition"]
      131 SETTABLEKS                       R15 R14 K23 ["Value"]
      133 SETTABLEKS                       R14 R13 K22 ["Name"]
      135 DUPTABLE                         R14 K34 [{"Actions", "Schema", "Value"}]
      136 GETUPVAL                         R16 9
      137 GETTABLEKS                       R15 R16 K35 ["MoreAction"]
      139 SETTABLEKS                       R15 R14 K33 ["Actions"]
      141 SETTABLEKS                       R12 R14 K30 ["Schema"]
      143 SETTABLEKS                       R9 R14 K23 ["Value"]
      145 SETTABLEKS                       R14 R13 K23 ["Value"]
      147 JUMPIF                           R11 ; [+14]
      148 GETTABLEKS                       R15 R12 K36 ["Validate"]
      150 MOVE                             R16 R9
      151 CALL                             R15 1 1
      152 JUMPIFNOT                        R15 ; [+9]
      153 GETTABLEKS                       R15 R12 K37 ["GetChildren"]
      155 JUMPIFNOT                        R15 ; [+6]
      156 GETTABLEKS                       R14 R12 K37 ["GetChildren"]
      158 MOVE                             R15 R9
      159 MOVE                             R16 R10
      160 CALL                             R14 2 1
      161 JUMP                             ; [+2]
      162 NEWTABLE                         R14 0 0
      164 SETTABLEKS                       R14 R13 K24 ["Children"]
      166 GETUPVAL                         R15 10
      167 GETTABLEKS                       R14 R15 K38 ["_attachRowMetadata"]
      169 GETTABLEKS                       R15 R13 K24 ["Children"]
      171 DUPTABLE                         R16 K39 [{"RowType"}]
      172 LOADK                            R17 K40 ["ValueChild"]
      173 SETTABLEKS                       R17 R16 K26 ["RowType"]
      175 CALL                             R14 2 0
      176 LOADN                            R16 1
      177 FASTCALL3                        TABLE_INSERT R8 R16 R13
      179 MOVE                             R15 R8
      180 MOVE                             R17 R13
      181 GETIMPORT                        R14 K42 [table.insert]
      183 CALL                             R14 3 0
      184 MOVE                             R11 R8
      185 GETUPVAL                         R13 10
      186 GETTABLEKS                       R12 R13 K43 ["_buildEmptyRow"]
      188 MOVE                             R13 R0
      189 MOVE                             R14 R6
      190 CALL                             R12 2 -1
      191 FASTCALL                         TABLE_INSERT ; [+2]
      192 GETIMPORT                        R10 K42 [table.insert]
      194 CALL                             R10 -1 0
      195 RETURN                           R8 1

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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
       13 GETIMPORT                        R7 K1 [script]
       15 GETTABLEKS                       R6 R7 K2 ["Parent"]
       17 GETTABLEKS                       R5 R6 K2 ["Parent"]
       19 GETTABLEKS                       R4 R5 K2 ["Parent"]
       21 GETTABLEKS                       R3 R4 K5 ["Util"]
       23 GETTABLEKS                       R2 R3 K6 ["TransitionParamUtil"]
       25 CALL                             R1 1 1
       26 GETIMPORT                        R2 K4 [require]
       28 GETTABLEKS                       R4 R0 K7 ["Packages"]
       30 GETTABLEKS                       R3 R4 K8 ["Framework"]
       32 CALL                             R2 1 1
       33 GETTABLEKS                       R4 R2 K5 ["Util"]
       35 GETTABLEKS                       R3 R4 K9 ["EditTree"]
       37 GETIMPORT                        R4 K4 [require]
       39 GETTABLEKS                       R7 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R7 K11 ["Flags"]
       43 GETTABLEKS                       R5 R6 K12 ["getEngineFeatureNestedPseudoInstance"]
       45 CALL                             R4 1 1
       46 CALL                             R4 0 1
       47 GETIMPORT                        R5 K4 [require]
       49 GETTABLEKS                       R8 R0 K10 ["Src"]
       51 GETTABLEKS                       R7 R8 K11 ["Flags"]
       53 GETTABLEKS                       R6 R7 K13 ["getFFlagStyleQuery"]
       55 CALL                             R5 1 1
       56 CALL                             R5 0 1
       57 GETIMPORT                        R6 K4 [require]
       59 GETTABLEKS                       R8 R0 K7 ["Packages"]
       61 GETTABLEKS                       R7 R8 K14 ["Dash"]
       63 CALL                             R6 1 1
       64 GETTABLEKS                       R7 R6 K15 ["append"]
       66 GETTABLEKS                       R8 R6 K16 ["collectArray"]
       68 GETTABLEKS                       R9 R6 K17 ["join"]
       70 GETTABLEKS                       R10 R6 K18 ["keys"]
       72 GETTABLEKS                       R11 R6 K19 ["map"]
       74 GETIMPORT                        R12 K4 [require]
       76 GETTABLEKS                       R15 R0 K10 ["Src"]
       78 GETTABLEKS                       R14 R15 K5 ["Util"]
       80 GETTABLEKS                       R13 R14 K20 ["MenuHelpers"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K4 [require]
       85 GETTABLEKS                       R16 R0 K10 ["Src"]
       87 GETTABLEKS                       R15 R16 K5 ["Util"]
       89 GETTABLEKS                       R14 R15 K21 ["SelectorHelpers"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K4 [require]
       94 GETTABLEKS                       R17 R0 K10 ["Src"]
       96 GETTABLEKS                       R16 R17 K5 ["Util"]
       98 GETTABLEKS                       R15 R16 K22 ["StyleQueryHelpers"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K4 [require]
      103 GETTABLEKS                       R18 R0 K10 ["Src"]
      105 GETTABLEKS                       R17 R18 K5 ["Util"]
      107 GETTABLEKS                       R16 R17 K23 ["StyleRuleHelpers"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K4 [require]
      112 GETTABLEKS                       R19 R0 K10 ["Src"]
      114 GETTABLEKS                       R18 R19 K5 ["Util"]
      116 GETTABLEKS                       R17 R18 K24 ["StyleSchema"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K4 [require]
      121 GETTABLEKS                       R20 R0 K10 ["Src"]
      123 GETTABLEKS                       R19 R20 K5 ["Util"]
      125 GETTABLEKS                       R18 R19 K25 ["Styling"]
      127 CALL                             R17 1 1
      128 GETIMPORT                        R18 K4 [require]
      130 GETTABLEKS                       R21 R0 K10 ["Src"]
      132 GETTABLEKS                       R20 R21 K5 ["Util"]
      134 GETTABLEKS                       R19 R20 K26 ["TokenHelpers"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K4 [require]
      139 GETTABLEKS                       R22 R0 K10 ["Src"]
      141 GETTABLEKS                       R21 R22 K5 ["Util"]
      143 GETTABLEKS                       R20 R21 K27 ["TreeTableHelpers"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K4 [require]
      148 GETTABLEKS                       R23 R0 K10 ["Src"]
      150 GETTABLEKS                       R22 R23 K11 ["Flags"]
      152 GETTABLEKS                       R21 R22 K28 ["getFFlagStyleEditorSupportTransitions"]
      154 CALL                             R20 1 1
      155 CALL                             R20 0 1
      156 GETIMPORT                        R21 K4 [require]
      158 GETTABLEKS                       R23 R0 K10 ["Src"]
      160 GETTABLEKS                       R22 R23 K29 ["Types"]
      162 CALL                             R21 1 1
      163 NEWTABLE                         R22 32 0
      165 NEWTABLE                         R23 0 2
      167 DUPTABLE                         R24 K33 [{"Name", "Key", "Width"}]
      168 LOADK                            R25 K30 ["Name"]
      169 SETTABLEKS                       R25 R24 K30 ["Name"]
      171 LOADK                            R25 K30 ["Name"]
      172 SETTABLEKS                       R25 R24 K31 ["Key"]
      174 GETIMPORT                        R25 K36 [UDim.new]
      176 LOADK                            R26 K37 [0.5]
      177 LOADN                            R27 0
      178 CALL                             R25 2 1
      179 SETTABLEKS                       R25 R24 K32 ["Width"]
      181 DUPTABLE                         R25 K33 [{"Name", "Key", "Width"}]
      182 LOADK                            R26 K38 ["Value"]
      183 SETTABLEKS                       R26 R25 K30 ["Name"]
      185 LOADK                            R26 K38 ["Value"]
      186 SETTABLEKS                       R26 R25 K31 ["Key"]
      188 GETIMPORT                        R26 K36 [UDim.new]
      190 LOADK                            R27 K37 [0.5]
      191 LOADN                            R28 0
      192 CALL                             R26 2 1
      193 SETTABLEKS                       R26 R25 K32 ["Width"]
      195 SETLIST                          R23 R24 2 [1]
      197 SETTABLEKS                       R23 R22 K39 ["Columns"]
      199 LOADN                            R23 1
      200 SETTABLEKS                       R23 R22 K40 ["NAME_COLUMN_INDEX"]
      202 LOADN                            R23 2
      203 SETTABLEKS                       R23 R22 K41 ["VALUE_COLUMN_INDEX"]
      205 DUPCLOSURE                       R23 K42 [PROTO_0]
      206 SETTABLEKS                       R23 R22 K43 ["getItemChildren"]
      208 DUPCLOSURE                       R23 K44 [PROTO_1]
      209 SETTABLEKS                       R23 R22 K45 ["getItemId"]
      211 GETTABLEKS                       R23 R3 K35 ["new"]
      213 DUPTABLE                         R24 K48 [{"getChildren", "getId"}]
      214 GETTABLEKS                       R25 R22 K43 ["getItemChildren"]
      216 SETTABLEKS                       R25 R24 K46 ["getChildren"]
      218 GETTABLEKS                       R25 R22 K45 ["getItemId"]
      220 SETTABLEKS                       R25 R24 K47 ["getId"]
      222 CALL                             R23 1 1
      223 SETTABLEKS                       R23 R22 K9 ["EditTree"]
      225 DUPCLOSURE                       R24 K49 [PROTO_3]
      226 CAPTURE                          VAL R5
      227 CAPTURE                          VAL R15
      228 CAPTURE                          VAL R14
      229 CAPTURE                          VAL R22
      230 CAPTURE                          VAL R11
      231 SETTABLEKS                       R24 R22 K50 ["_getChildRows"]
      233 DUPCLOSURE                       R24 K51 [PROTO_4]
      234 CAPTURE                          VAL R19
      235 CAPTURE                          VAL R22
      236 CAPTURE                          VAL R20
      237 CAPTURE                          VAL R16
      238 CAPTURE                          VAL R12
      239 SETTABLEKS                       R24 R22 K52 ["_buildFolderRow"]
      241 DUPCLOSURE                       R24 K53 [PROTO_5]
      242 CAPTURE                          VAL R19
      243 CAPTURE                          VAL R22
      244 CAPTURE                          VAL R5
      245 CAPTURE                          VAL R14
      246 CAPTURE                          VAL R4
      247 CAPTURE                          VAL R13
      248 CAPTURE                          VAL R20
      249 CAPTURE                          VAL R12
      250 CAPTURE                          VAL R16
      251 CAPTURE                          VAL R7
      252 SETTABLEKS                       R24 R22 K54 ["_buildStyleRule"]
      254 DUPCLOSURE                       R24 K55 [PROTO_6]
      255 CAPTURE                          VAL R19
      256 CAPTURE                          VAL R20
      257 CAPTURE                          VAL R9
      258 CAPTURE                          VAL R16
      259 CAPTURE                          VAL R12
      260 SETTABLEKS                       R24 R22 K56 ["_buildEmptyRow"]
      262 DUPCLOSURE                       R24 K57 [PROTO_7]
      263 SETTABLEKS                       R24 R22 K58 ["_attachRowMetadata"]
      265 DUPCLOSURE                       R24 K59 [PROTO_9]
      266 CAPTURE                          VAL R1
      267 CAPTURE                          VAL R10
      268 CAPTURE                          VAL R17
      269 CAPTURE                          VAL R13
      270 CAPTURE                          VAL R8
      271 CAPTURE                          VAL R19
      272 CAPTURE                          VAL R18
      273 CAPTURE                          VAL R16
      274 CAPTURE                          VAL R9
      275 CAPTURE                          VAL R12
      276 CAPTURE                          VAL R22
      277 SETTABLEKS                       R24 R22 K60 ["_buildProperties"]
      279 DUPCLOSURE                       R24 K61 [PROTO_11]
      280 CAPTURE                          VAL R13
      281 CAPTURE                          VAL R10
      282 CAPTURE                          VAL R17
      283 CAPTURE                          VAL R8
      284 CAPTURE                          VAL R18
      285 CAPTURE                          VAL R16
      286 CAPTURE                          VAL R9
      287 CAPTURE                          VAL R19
      288 CAPTURE                          VAL R12
      289 CAPTURE                          VAL R22
      290 SETTABLEKS                       R24 R22 K62 ["_DEPRECATED_buildProperties"]
      292 DUPCLOSURE                       R24 K63 [PROTO_12]
      293 CAPTURE                          VAL R22
      294 SETTABLEKS                       R24 R22 K64 ["_buildInstance"]
      296 DUPCLOSURE                       R24 K65 [PROTO_13]
      297 CAPTURE                          VAL R22
      298 CAPTURE                          VAL R23
      299 SETTABLEKS                       R24 R22 K66 ["DEPRECATED_buildItems"]
      301 DUPCLOSURE                       R24 K67 [PROTO_14]
      302 CAPTURE                          VAL R5
      303 CAPTURE                          VAL R22
      304 CAPTURE                          VAL R23
      305 SETTABLEKS                       R24 R22 K68 ["buildItems"]
      307 DUPCLOSURE                       R24 K69 [PROTO_15]
      308 CAPTURE                          VAL R22
      309 SETTABLEKS                       R24 R22 K70 ["expandNewRows"]
      311 RETURN                           R22 1
