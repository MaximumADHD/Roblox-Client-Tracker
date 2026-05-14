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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_buildStyleRule"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+69]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["getOrderedStyleRulesAndFolders"]
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
       18 GETUPVAL                         R9 2
       19 GETTABLEKS                       R9 R9 K3 ["getQueryTypeFromSelector"]
       21 GETTABLEKS                       R10 R8 K4 ["Selector"]
       23 CALL                             R9 1 1
       24 GETUPVAL                         R10 2
       25 GETTABLEKS                       R10 R10 K5 ["Type"]
       27 GETTABLEKS                       R10 R10 K6 ["Pseudo"]
       29 JUMPIFNOTEQ                      R9 R10 ; [+14]
       31 GETUPVAL                         R10 2
       32 GETTABLEKS                       R10 R10 K7 ["getQueryStyleRulesForPseudo"]
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
       54 GETUPVAL                         R10 3
       55 GETTABLEKS                       R10 R10 K8 ["_buildInstance"]
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
       80 GETUPVAL                         R3 1
       81 GETTABLEKS                       R3 R3 K14 ["getOrderedStyleRules"]
       83 MOVE                             R4 R0
       84 CALL                             R3 1 1
       85 NEWCLOSURE                       R4 P0
       86 CAPTURE                          UPVAL U3
       87 CAPTURE                          VAL R1
       88 CALL                             R2 2 -1
       89 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createItemId"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["_getChildRows"]
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
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K15 ["FolderSchema"]
       28 SETTABLEKS                       R6 R5 K10 ["Schema"]
       30 GETTABLEKS                       R6 R0 K4 ["Name"]
       32 SETTABLEKS                       R6 R5 K11 ["Value"]
       34 LOADB                            R6 1
       35 SETTABLEKS                       R6 R5 K12 ["FullSpan"]
       37 GETUPVAL                         R6 4
       38 GETTABLEKS                       R6 R6 K16 ["MoreAction"]
       40 SETTABLEKS                       R6 R5 K13 ["Actions"]
       42 SETTABLEKS                       R5 R4 K4 ["Name"]
       44 SETTABLEKS                       R0 R4 K5 ["Instance"]
       46 SETTABLEKS                       R3 R4 K6 ["Children"]
       48 RETURN                           R4 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createItemId"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["_getChildRows"]
        8 MOVE                             R4 R0
        9 MOVE                             R5 R1
       10 CALL                             R3 2 1
       11 GETUPVAL                         R4 2
       12 JUMPIFNOT                        R4 ; [+36]
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K2 ["getQueryTypeFromSelector"]
       16 GETTABLEKS                       R5 R0 K3 ["Selector"]
       18 CALL                             R4 1 1
       19 JUMPIFNOT                        R4 ; [+29]
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R5 R5 K4 ["Type"]
       23 GETTABLEKS                       R5 R5 K5 ["Pseudo"]
       25 JUMPIFNOTEQ                      R4 R5 ; [+23]
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R5 R5 K6 ["getQueryStyleRulesForPseudo"]
       30 MOVE                             R6 R0
       31 CALL                             R5 1 1
       32 MOVE                             R6 R5
       33 LOADNIL                          R7
       34 LOADNIL                          R8
       35 FORGPREP                         R6
       36 MOVE                             R12 R3
       37 GETUPVAL                         R13 1
       38 GETTABLEKS                       R13 R13 K7 ["_buildStyleRule"]
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
       55 GETUPVAL                         R5 5
       56 GETTABLEKS                       R5 R5 K13 ["DEPRECATED_isNestedPseudoInstance"]
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
       86 GETUPVAL                         R7 7
       87 GETTABLEKS                       R7 R7 K31 ["FullSpanMoreAction"]
       89 SETTABLEKS                       R7 R6 K27 ["Actions"]
       91 GETUPVAL                         R7 8
       92 GETTABLEKS                       R7 R7 K32 ["SelectorSchema"]
       94 SETTABLEKS                       R7 R6 K28 ["Schema"]
       96 GETTABLEKS                       R7 R0 K3 ["Selector"]
       98 SETTABLEKS                       R7 R6 K29 ["Value"]
      100 SETTABLEKS                       R6 R5 K19 ["Name"]
      102 SETTABLEKS                       R0 R5 K20 ["Instance"]
      104 GETUPVAL                         R6 9
      105 GETUPVAL                         R8 6
      106 JUMPIFNOT                        R8 ; [+12]
      107 GETUPVAL                         R7 1
      108 GETTABLEKS                       R7 R7 K33 ["_buildProperties"]
      110 MOVE                             R8 R2
      111 MOVE                             R9 R0
      112 GETUPVAL                         R11 10
      113 JUMPIFNOT                        R11 ; [+2]
      114 MOVE                             R10 R1
      115 JUMP                             ; [+1]
      116 LOADNIL                          R10
      117 CALL                             R7 3 1
      118 JUMP                             ; [+11]
      119 GETUPVAL                         R7 1
      120 GETTABLEKS                       R7 R7 K34 ["_DEPRECATED_buildProperties"]
      122 MOVE                             R8 R2
      123 MOVE                             R9 R0
      124 GETUPVAL                         R11 10
      125 JUMPIFNOT                        R11 ; [+2]
      126 MOVE                             R10 R1
      127 JUMP                             ; [+1]
      128 LOADNIL                          R10
      129 CALL                             R7 3 1
      130 MOVE                             R8 R3
      131 CALL                             R6 2 1
      132 SETTABLEKS                       R6 R5 K21 ["Children"]
      134 RETURN                           R5 1

PROTO_6:
        0 DUPTABLE                         R2 K5 [{"Id", "Metadata", "Name", "Value", "Children"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K6 ["createItemId"]
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
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R5 R5 K14 ["PropertyNameSchema"]
       27 DUPTABLE                         R6 K16 [{"StyleRuleInfo"}]
       28 SETTABLEKS                       R1 R6 K15 ["StyleRuleInfo"]
       30 CALL                             R4 2 1
       31 SETTABLEKS                       R4 R3 K12 ["Schema"]
       33 LOADK                            R4 K17 [""]
       34 SETTABLEKS                       R4 R3 K3 ["Value"]
       36 SETTABLEKS                       R3 R2 K2 ["Name"]
       38 DUPTABLE                         R3 K19 [{"Actions", "Schema", "Value"}]
       39 GETUPVAL                         R4 4
       40 GETTABLEKS                       R4 R4 K20 ["MoreAction"]
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
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K0 ["createItemId"]
        8 GETUPVAL                         R6 3
        9 MOVE                             R7 R1
       10 CALL                             R5 2 1
       11 LOADNIL                          R6
       12 NEWTABLE                         R7 0 0
       14 JUMPIFEQKNIL                     R2 ; [+220]
       16 GETUPVAL                         R9 4
       17 GETTABLEKS                       R9 R9 K1 ["parseAttributeName"]
       19 MOVE                             R10 R2
       20 CALL                             R9 1 1
       21 JUMPIFNOTEQKNIL                  R9 ; [+2]
       23 LOADB                            R8 0 +1
       24 LOADB                            R8 1
       25 GETUPVAL                         R10 5
       26 JUMPIFNOT                        R10 ; [+6]
       27 GETUPVAL                         R9 6
       28 GETTABLEKS                       R9 R9 K2 ["getValueTypeSchema"]
       30 MOVE                             R10 R2
       31 CALL                             R9 1 1
       32 JUMP                             ; [+1]
       33 LOADNIL                          R9
       34 GETUPVAL                         R10 7
       35 JUMPIFNOT                        R10 ; [+11]
       36 GETUPVAL                         R10 7
       37 JUMPIFEQKS                       R10 K3 [""] ; [+9]
       39 GETUPVAL                         R10 6
       40 GETTABLEKS                       R10 R10 K4 ["getPropertySchema"]
       42 MOVE                             R11 R1
       43 GETUPVAL                         R12 7
       44 CALL                             R10 2 1
       45 MOVE                             R4 R10
       46 JUMP                             ; [+39]
       47 GETUPVAL                         R10 8
       48 JUMPIFNOT                        R10 ; [+19]
       49 JUMPIF                           R8 ; [+7]
       50 GETUPVAL                         R10 6
       51 GETTABLEKS                       R10 R10 K4 ["getPropertySchema"]
       53 MOVE                             R11 R1
       54 LOADK                            R12 K3 [""]
       55 CALL                             R10 2 1
       56 MOVE                             R4 R10
       57 JUMPIF                           R4 ; [+28]
       58 GETUPVAL                         R10 6
       59 GETTABLEKS                       R10 R10 K5 ["PropertySchemas"]
       61 FASTCALL1                        TYPEOF R2 ; [+3]
       62 MOVE                             R12 R2
       63 GETIMPORT                        R11 K7 [typeof]
       65 CALL                             R11 1 1
       66 GETTABLE                         R4 R10 R11
       67 JUMP                             ; [+18]
       68 JUMPIF                           R8 ; [+9]
       69 GETUPVAL                         R10 6
       70 GETTABLEKS                       R10 R10 K5 ["PropertySchemas"]
       72 FASTCALL1                        TYPEOF R2 ; [+3]
       73 MOVE                             R12 R2
       74 GETIMPORT                        R11 K7 [typeof]
       76 CALL                             R11 1 1
       77 GETTABLE                         R4 R10 R11
       78 JUMPIF                           R4 ; [+7]
       79 GETUPVAL                         R10 6
       80 GETTABLEKS                       R10 R10 K4 ["getPropertySchema"]
       82 MOVE                             R11 R1
       83 LOADK                            R12 K3 [""]
       84 CALL                             R10 2 1
       85 MOVE                             R4 R10
       86 JUMPIF                           R4 ; [+7]
       87 JUMPIFNOTEQKS                    R1 K3 [""] ; [+3]
       89 LOADNIL                          R10
       90 RETURN                           R10 1
       91 GETUPVAL                         R10 6
       92 GETTABLEKS                       R4 R10 K8 ["TextSchema"]
       94 JUMPIFNOT                        R8 ; [+17]
       95 GETUPVAL                         R10 6
       96 GETTABLEKS                       R10 R10 K9 ["getPossiblePropertyTypes"]
       98 MOVE                             R11 R1
       99 CALL                             R10 1 1
      100 GETUPVAL                         R11 9
      101 GETUPVAL                         R12 6
      102 GETTABLEKS                       R12 R12 K10 ["TokenReferenceSchema"]
      104 DUPTABLE                         R13 K13 [{"Instance", "ExpectedTypes"}]
      105 GETUPVAL                         R14 3
      106 SETTABLEKS                       R14 R13 K11 ["Instance"]
      108 SETTABLEKS                       R10 R13 K12 ["ExpectedTypes"]
      110 CALL                             R11 2 1
      111 MOVE                             R4 R11
      112 GETUPVAL                         R10 5
      113 JUMPIFNOT                        R10 ; [+73]
      114 GETTABLEKS                       R10 R4 K14 ["Validate"]
      116 MOVE                             R11 R2
      117 CALL                             R10 1 1
      118 JUMPIF                           R10 ; [+44]
      119 MOVE                             R10 R9
      120 JUMPIF                           R10 ; [+3]
      121 GETUPVAL                         R10 6
      122 GETTABLEKS                       R10 R10 K8 ["TextSchema"]
      124 DUPTABLE                         R11 K19 [{"Actions", "Schema", "Value", "ErrorMessage"}]
      125 GETUPVAL                         R12 10
      126 GETTABLEKS                       R12 R12 K20 ["MoreAction"]
      128 SETTABLEKS                       R12 R11 K15 ["Actions"]
      130 GETUPVAL                         R12 9
      131 MOVE                             R13 R10
      132 DUPTABLE                         R14 K22 [{"ErrorStyle"}]
      133 LOADK                            R15 K23 ["PropertyCellError"]
      134 SETTABLEKS                       R15 R14 K21 ["ErrorStyle"]
      136 CALL                             R12 2 1
      137 SETTABLEKS                       R12 R11 K16 ["Schema"]
      139 GETTABLEKS                       R13 R10 K14 ["Validate"]
      141 MOVE                             R14 R2
      142 CALL                             R13 1 1
      143 JUMPIFNOT                        R13 ; [+2]
      144 MOVE                             R12 R2
      145 JUMP                             ; [+5]
      146 FASTCALL1                        TOSTRING R2 ; [+3]
      147 MOVE                             R13 R2
      148 GETIMPORT                        R12 K25 [tostring]
      150 CALL                             R12 1 1
      151 SETTABLEKS                       R12 R11 K17 ["Value"]
      153 GETUPVAL                         R12 11
      154 LOADK                            R14 K26 ["Label"]
      155 LOADK                            R15 K27 ["ValueErrorIncorrectType"]
      156 NAMECALL                         R12 R12 K28 ["getText"]
      158 CALL                             R12 3 1
      159 SETTABLEKS                       R12 R11 K18 ["ErrorMessage"]
      161 MOVE                             R6 R11
      162 JUMP                             ; [+62]
      163 DUPTABLE                         R10 K29 [{"Actions", "Schema", "Value"}]
      164 GETUPVAL                         R11 10
      165 GETTABLEKS                       R11 R11 K20 ["MoreAction"]
      167 SETTABLEKS                       R11 R10 K15 ["Actions"]
      169 SETTABLEKS                       R4 R10 K16 ["Schema"]
      171 SETTABLEKS                       R2 R10 K17 ["Value"]
      173 MOVE                             R6 R10
      174 GETTABLEKS                       R10 R4 K30 ["GetChildren"]
      176 JUMPIFNOT                        R10 ; [+7]
      177 GETTABLEKS                       R10 R4 K30 ["GetChildren"]
      179 MOVE                             R11 R2
      180 MOVE                             R12 R5
      181 CALL                             R10 2 1
      182 MOVE                             R7 R10
      183 JUMP                             ; [+41]
      184 NEWTABLE                         R7 0 0
      186 JUMP                             ; [+38]
      187 DUPTABLE                         R10 K29 [{"Actions", "Schema", "Value"}]
      188 GETUPVAL                         R11 10
      189 GETTABLEKS                       R11 R11 K20 ["MoreAction"]
      191 SETTABLEKS                       R11 R10 K15 ["Actions"]
      193 SETTABLEKS                       R4 R10 K16 ["Schema"]
      195 GETTABLEKS                       R12 R4 K14 ["Validate"]
      197 MOVE                             R13 R2
      198 CALL                             R12 1 1
      199 JUMPIFNOT                        R12 ; [+2]
      200 MOVE                             R11 R2
      201 JUMP                             ; [+3]
      202 GETTABLEKS                       R11 R4 K31 ["GetDefaultValue"]
      204 CALL                             R11 0 1
      205 SETTABLEKS                       R11 R10 K17 ["Value"]
      207 MOVE                             R6 R10
      208 GETTABLEKS                       R10 R4 K14 ["Validate"]
      210 MOVE                             R11 R2
      211 CALL                             R10 1 1
      212 JUMPIFNOT                        R10 ; [+10]
      213 GETTABLEKS                       R10 R4 K30 ["GetChildren"]
      215 JUMPIFNOT                        R10 ; [+7]
      216 GETTABLEKS                       R10 R4 K30 ["GetChildren"]
      218 MOVE                             R11 R2
      219 MOVE                             R12 R5
      220 CALL                             R10 2 1
      221 MOVE                             R7 R10
      222 JUMP                             ; [+2]
      223 NEWTABLE                         R7 0 0
      225 GETUPVAL                         R10 12
      226 GETTABLEKS                       R10 R10 K32 ["_attachRowMetadata"]
      228 MOVE                             R11 R7
      229 DUPTABLE                         R12 K34 [{"RowType"}]
      230 LOADK                            R13 K35 ["ValueChild"]
      231 SETTABLEKS                       R13 R12 K33 ["RowType"]
      233 CALL                             R10 2 0
      234 JUMP                             ; [+15]
      235 DUPTABLE                         R8 K29 [{"Actions", "Schema", "Value"}]
      236 GETUPVAL                         R9 10
      237 GETTABLEKS                       R9 R9 K20 ["MoreAction"]
      239 SETTABLEKS                       R9 R8 K15 ["Actions"]
      241 GETUPVAL                         R9 6
      242 GETTABLEKS                       R9 R9 K36 ["ChildComponentSchema"]
      244 SETTABLEKS                       R9 R8 K16 ["Schema"]
      246 LOADK                            R9 K3 [""]
      247 SETTABLEKS                       R9 R8 K17 ["Value"]
      249 MOVE                             R6 R8
      250 JUMPIFEQKNIL                     R3 ; [+112]
      252 GETUPVAL                         R8 13
      253 GETTABLEKS                       R8 R8 K37 ["DEFAULT_TRANSITION_NAME"]
      255 JUMPIFEQ                         R1 R8 ; [+107]
      257 GETUPVAL                         R8 2
      258 GETTABLEKS                       R8 R8 K0 ["createItemId"]
      260 MOVE                             R9 R5
      261 LOADK                            R10 K38 ["@Transition"]
      262 CALL                             R8 2 1
      263 FASTCALL1                        TYPEOF R3 ; [+3]
      264 MOVE                             R11 R3
      265 GETIMPORT                        R10 K7 [typeof]
      267 CALL                             R10 1 1
      268 JUMPIFEQKS                       R10 K39 ["string"] ; [+2]
      270 LOADB                            R9 0 +1
      271 LOADB                            R9 1
      272 JUMPIFNOT                        R9 ; [+17]
      273 GETUPVAL                         R10 9
      274 GETUPVAL                         R11 6
      275 GETTABLEKS                       R11 R11 K10 ["TokenReferenceSchema"]
      277 DUPTABLE                         R12 K13 [{"Instance", "ExpectedTypes"}]
      278 GETUPVAL                         R13 3
      279 SETTABLEKS                       R13 R12 K11 ["Instance"]
      281 NEWTABLE                         R13 0 1
      283 LOADK                            R14 K40 ["TweenInfo"]
      284 SETLIST                          R13 R14 1 [1]
      286 SETTABLEKS                       R13 R12 K12 ["ExpectedTypes"]
      288 CALL                             R10 2 1
      289 JUMP                             ; [+3]
      290 GETUPVAL                         R10 6
      291 GETTABLEKS                       R10 R10 K41 ["TweenInfoSchema"]
      293 DUPTABLE                         R11 K46 [{"Id", "Metadata", "Name", "Value", "Children"}]
      294 SETTABLEKS                       R8 R11 K42 ["Id"]
      296 DUPTABLE                         R12 K48 [{"RowType", "TransitionPropertyName"}]
      297 LOADK                            R13 K49 ["Transition"]
      298 SETTABLEKS                       R13 R12 K33 ["RowType"]
      300 SETTABLEKS                       R1 R12 K47 ["TransitionPropertyName"]
      302 SETTABLEKS                       R12 R11 K43 ["Metadata"]
      304 DUPTABLE                         R12 K50 [{"Schema", "Value"}]
      305 GETUPVAL                         R13 6
      306 GETTABLEKS                       R13 R13 K36 ["ChildComponentSchema"]
      308 SETTABLEKS                       R13 R12 K16 ["Schema"]
      310 LOADK                            R13 K49 ["Transition"]
      311 SETTABLEKS                       R13 R12 K17 ["Value"]
      313 SETTABLEKS                       R12 R11 K44 ["Name"]
      315 DUPTABLE                         R12 K29 [{"Actions", "Schema", "Value"}]
      316 GETUPVAL                         R13 10
      317 GETTABLEKS                       R13 R13 K20 ["MoreAction"]
      319 SETTABLEKS                       R13 R12 K15 ["Actions"]
      321 SETTABLEKS                       R10 R12 K16 ["Schema"]
      323 SETTABLEKS                       R3 R12 K17 ["Value"]
      325 SETTABLEKS                       R12 R11 K17 ["Value"]
      327 JUMPIF                           R9 ; [+14]
      328 GETTABLEKS                       R13 R10 K14 ["Validate"]
      330 MOVE                             R14 R3
      331 CALL                             R13 1 1
      332 JUMPIFNOT                        R13 ; [+9]
      333 GETTABLEKS                       R13 R10 K30 ["GetChildren"]
      335 JUMPIFNOT                        R13 ; [+6]
      336 GETTABLEKS                       R12 R10 K30 ["GetChildren"]
      338 MOVE                             R13 R3
      339 MOVE                             R14 R8
      340 CALL                             R12 2 1
      341 JUMP                             ; [+2]
      342 NEWTABLE                         R12 0 0
      344 SETTABLEKS                       R12 R11 K45 ["Children"]
      346 GETUPVAL                         R12 12
      347 GETTABLEKS                       R12 R12 K32 ["_attachRowMetadata"]
      349 GETTABLEKS                       R13 R11 K45 ["Children"]
      351 DUPTABLE                         R14 K34 [{"RowType"}]
      352 LOADK                            R15 K35 ["ValueChild"]
      353 SETTABLEKS                       R15 R14 K33 ["RowType"]
      355 CALL                             R12 2 0
      356 FASTCALL2                        TABLE_INSERT R7 R11 ; [+5]
      358 MOVE                             R13 R7
      359 MOVE                             R14 R11
      360 GETIMPORT                        R12 K53 [table.insert]
      362 CALL                             R12 2 0
      363 DUPTABLE                         R8 K46 [{"Id", "Metadata", "Name", "Value", "Children"}]
      364 SETTABLEKS                       R5 R8 K42 ["Id"]
      366 DUPTABLE                         R9 K55 [{"RowType", "IsUnset"}]
      367 LOADK                            R10 K56 ["Property"]
      368 SETTABLEKS                       R10 R9 K33 ["RowType"]
      370 JUMPIFEQKNIL                     R2 ; [+2]
      372 LOADB                            R10 0 +1
      373 LOADB                            R10 1
      374 SETTABLEKS                       R10 R9 K54 ["IsUnset"]
      376 SETTABLEKS                       R9 R8 K43 ["Metadata"]
      378 DUPTABLE                         R9 K50 [{"Schema", "Value"}]
      379 GETUPVAL                         R10 9
      380 GETUPVAL                         R11 6
      381 GETTABLEKS                       R11 R11 K57 ["PropertyNameSchema"]
      383 DUPTABLE                         R12 K59 [{"StyleRuleInfo"}]
      384 GETUPVAL                         R13 14
      385 SETTABLEKS                       R13 R12 K58 ["StyleRuleInfo"]
      387 CALL                             R10 2 1
      388 SETTABLEKS                       R10 R9 K16 ["Schema"]
      390 SETTABLEKS                       R1 R9 K17 ["Value"]
      392 SETTABLEKS                       R9 R8 K44 ["Name"]
      394 SETTABLEKS                       R6 R8 K17 ["Value"]
      396 SETTABLEKS                       R7 R8 K45 ["Children"]
      398 RETURN                           R8 1

PROTO_9:
        0 NAMECALL                         R3 R1 K0 ["GetProperties"]
        2 CALL                             R3 1 1
        3 NAMECALL                         R4 R1 K1 ["GetPropertyTransitions"]
        5 CALL                             R4 1 1
        6 NEWTABLE                         R5 0 0
        8 MOVE                             R6 R3
        9 LOADNIL                          R7
       10 LOADNIL                          R8
       11 FORGPREP                         R6
       12 LOADB                            R11 1
       13 SETTABLE                         R11 R5 R9
       14 FORGLOOP                         R6 2 ; [-3]
       16 MOVE                             R6 R4
       17 LOADNIL                          R7
       18 LOADNIL                          R8
       19 FORGPREP                         R6
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R11 R11 K2 ["DEFAULT_TRANSITION_NAME"]
       23 JUMPIFEQ                         R9 R11 ; [+3]
       25 LOADB                            R11 1
       26 SETTABLE                         R11 R5 R9
       27 FORGLOOP                         R6 2 ; [-8]
       29 GETUPVAL                         R6 1
       30 MOVE                             R7 R5
       31 CALL                             R6 1 1
       32 GETIMPORT                        R7 K5 [table.sort]
       34 MOVE                             R8 R6
       35 CALL                             R7 1 0
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K6 ["getStyleInfo"]
       39 MOVE                             R8 R1
       40 CALL                             R7 1 1
       41 GETUPVAL                         R8 3
       42 GETTABLEKS                       R8 R8 K7 ["findFirstClassSelector"]
       44 MOVE                             R9 R1
       45 CALL                             R8 1 1
       46 GETUPVAL                         R9 4
       47 MOVE                             R10 R6
       48 NEWCLOSURE                       R11 P0
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R4
       51 CAPTURE                          UPVAL U5
       52 CAPTURE                          VAL R1
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          UPVAL U8
       56 CAPTURE                          VAL R8
       57 CAPTURE                          UPVAL U9
       58 CAPTURE                          UPVAL U10
       59 CAPTURE                          UPVAL U11
       60 CAPTURE                          VAL R2
       61 CAPTURE                          UPVAL U12
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          VAL R7
       64 CALL                             R9 2 1
       65 GETUPVAL                         R11 0
       66 GETTABLEKS                       R11 R11 K2 ["DEFAULT_TRANSITION_NAME"]
       68 GETTABLE                         R10 R4 R11
       69 JUMPIFNOT                        R10 ; [+117]
       70 GETUPVAL                         R11 5
       71 GETTABLEKS                       R11 R11 K8 ["createItemId"]
       73 MOVE                             R12 R0
       74 LOADK                            R13 K9 ["@DefaultTransition"]
       75 CALL                             R11 2 1
       76 LOADB                            R12 0
       77 FASTCALL1                        TYPEOF R10 ; [+3]
       78 MOVE                             R14 R10
       79 GETIMPORT                        R13 K11 [typeof]
       81 CALL                             R13 1 1
       82 JUMPIFNOTEQKS                    R13 K12 ["string"] ; [+10]
       84 GETUPVAL                         R13 6
       85 GETTABLEKS                       R13 R13 K13 ["parseAttributeName"]
       87 MOVE                             R14 R10
       88 CALL                             R13 1 1
       89 JUMPIFNOTEQKNIL                  R13 ; [+2]
       91 LOADB                            R12 0 +1
       92 LOADB                            R12 1
       93 JUMPIFNOT                        R12 ; [+16]
       94 GETUPVAL                         R13 10
       95 GETUPVAL                         R14 8
       96 GETTABLEKS                       R14 R14 K14 ["TokenReferenceSchema"]
       98 DUPTABLE                         R15 K17 [{"Instance", "ExpectedTypes"}]
       99 SETTABLEKS                       R1 R15 K15 ["Instance"]
      101 NEWTABLE                         R16 0 1
      103 LOADK                            R17 K18 ["TweenInfo"]
      104 SETLIST                          R16 R17 1 [1]
      106 SETTABLEKS                       R16 R15 K16 ["ExpectedTypes"]
      108 CALL                             R13 2 1
      109 JUMP                             ; [+3]
      110 GETUPVAL                         R13 8
      111 GETTABLEKS                       R13 R13 K19 ["TweenInfoSchema"]
      113 DUPTABLE                         R14 K25 [{"Id", "Metadata", "Name", "Value", "Children"}]
      114 SETTABLEKS                       R11 R14 K20 ["Id"]
      116 DUPTABLE                         R15 K28 [{"RowType", "TransitionPropertyName"}]
      117 LOADK                            R16 K29 ["Transition"]
      118 SETTABLEKS                       R16 R15 K26 ["RowType"]
      120 GETUPVAL                         R16 0
      121 GETTABLEKS                       R16 R16 K2 ["DEFAULT_TRANSITION_NAME"]
      123 SETTABLEKS                       R16 R15 K27 ["TransitionPropertyName"]
      125 SETTABLEKS                       R15 R14 K21 ["Metadata"]
      127 DUPTABLE                         R15 K31 [{"Schema", "Value"}]
      128 GETUPVAL                         R16 8
      129 GETTABLEKS                       R16 R16 K32 ["ChildComponentSchema"]
      131 SETTABLEKS                       R16 R15 K30 ["Schema"]
      133 LOADK                            R16 K29 ["Transition"]
      134 SETTABLEKS                       R16 R15 K23 ["Value"]
      136 SETTABLEKS                       R15 R14 K22 ["Name"]
      138 DUPTABLE                         R15 K34 [{"Actions", "Schema", "Value"}]
      139 GETUPVAL                         R16 11
      140 GETTABLEKS                       R16 R16 K35 ["MoreAction"]
      142 SETTABLEKS                       R16 R15 K33 ["Actions"]
      144 SETTABLEKS                       R13 R15 K30 ["Schema"]
      146 SETTABLEKS                       R10 R15 K23 ["Value"]
      148 SETTABLEKS                       R15 R14 K23 ["Value"]
      150 JUMPIF                           R12 ; [+14]
      151 GETTABLEKS                       R16 R13 K36 ["Validate"]
      153 MOVE                             R17 R10
      154 CALL                             R16 1 1
      155 JUMPIFNOT                        R16 ; [+9]
      156 GETTABLEKS                       R16 R13 K37 ["GetChildren"]
      158 JUMPIFNOT                        R16 ; [+6]
      159 GETTABLEKS                       R15 R13 K37 ["GetChildren"]
      161 MOVE                             R16 R10
      162 MOVE                             R17 R11
      163 CALL                             R15 2 1
      164 JUMP                             ; [+2]
      165 NEWTABLE                         R15 0 0
      167 SETTABLEKS                       R15 R14 K24 ["Children"]
      169 GETUPVAL                         R15 12
      170 GETTABLEKS                       R15 R15 K38 ["_attachRowMetadata"]
      172 GETTABLEKS                       R16 R14 K24 ["Children"]
      174 DUPTABLE                         R17 K39 [{"RowType"}]
      175 LOADK                            R18 K40 ["ValueChild"]
      176 SETTABLEKS                       R18 R17 K26 ["RowType"]
      178 CALL                             R15 2 0
      179 LOADN                            R17 1
      180 FASTCALL3                        TABLE_INSERT R9 R17 R14
      182 MOVE                             R16 R9
      183 MOVE                             R18 R14
      184 GETIMPORT                        R15 K42 [table.insert]
      186 CALL                             R15 3 0
      187 MOVE                             R12 R9
      188 GETUPVAL                         R13 12
      189 GETTABLEKS                       R13 R13 K43 ["_buildEmptyRow"]
      191 MOVE                             R14 R0
      192 MOVE                             R15 R7
      193 CALL                             R13 2 -1
      194 FASTCALL                         TABLE_INSERT ; [+2]
      195 GETIMPORT                        R11 K42 [table.insert]
      197 CALL                             R11 -1 0
      198 RETURN                           R9 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 LOADNIL                          R3
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K0 ["parseAttributeName"]
        6 MOVE                             R6 R2
        7 CALL                             R5 1 1
        8 JUMPIFNOTEQKNIL                  R5 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 GETUPVAL                         R6 2
       13 JUMPIFNOT                        R6 ; [+6]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R5 R5 K1 ["getValueTypeSchema"]
       17 MOVE                             R6 R2
       18 CALL                             R5 1 1
       19 JUMP                             ; [+1]
       20 LOADNIL                          R5
       21 GETUPVAL                         R6 4
       22 JUMPIFNOT                        R6 ; [+11]
       23 GETUPVAL                         R6 4
       24 JUMPIFEQKS                       R6 K2 [""] ; [+9]
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R6 R6 K3 ["getPropertySchema"]
       29 MOVE                             R7 R1
       30 GETUPVAL                         R8 4
       31 CALL                             R6 2 1
       32 MOVE                             R3 R6
       33 JUMP                             ; [+41]
       34 GETUPVAL                         R6 5
       35 JUMPIFNOT                        R6 ; [+19]
       36 JUMPIF                           R4 ; [+7]
       37 GETUPVAL                         R6 3
       38 GETTABLEKS                       R6 R6 K3 ["getPropertySchema"]
       40 MOVE                             R7 R1
       41 LOADK                            R8 K2 [""]
       42 CALL                             R6 2 1
       43 MOVE                             R3 R6
       44 JUMPIF                           R3 ; [+30]
       45 GETUPVAL                         R6 3
       46 GETTABLEKS                       R6 R6 K4 ["PropertySchemas"]
       48 FASTCALL1                        TYPEOF R2 ; [+3]
       49 MOVE                             R8 R2
       50 GETIMPORT                        R7 K6 [typeof]
       52 CALL                             R7 1 1
       53 GETTABLE                         R3 R6 R7
       54 JUMP                             ; [+20]
       55 JUMPIFEQKNIL                     R2 ; [+11]
       57 JUMPIF                           R4 ; [+9]
       58 GETUPVAL                         R6 3
       59 GETTABLEKS                       R6 R6 K4 ["PropertySchemas"]
       61 FASTCALL1                        TYPEOF R2 ; [+3]
       62 MOVE                             R8 R2
       63 GETIMPORT                        R7 K6 [typeof]
       65 CALL                             R7 1 1
       66 GETTABLE                         R3 R6 R7
       67 JUMPIF                           R3 ; [+7]
       68 GETUPVAL                         R6 3
       69 GETTABLEKS                       R6 R6 K3 ["getPropertySchema"]
       71 MOVE                             R7 R1
       72 LOADK                            R8 K2 [""]
       73 CALL                             R6 2 1
       74 MOVE                             R3 R6
       75 JUMPIF                           R3 ; [+7]
       76 JUMPIFNOTEQKS                    R1 K2 [""] ; [+3]
       78 LOADNIL                          R6
       79 RETURN                           R6 1
       80 GETUPVAL                         R6 3
       81 GETTABLEKS                       R3 R6 K7 ["TextSchema"]
       83 JUMPIFNOT                        R4 ; [+17]
       84 GETUPVAL                         R6 3
       85 GETTABLEKS                       R6 R6 K8 ["getPossiblePropertyTypes"]
       87 MOVE                             R7 R1
       88 CALL                             R6 1 1
       89 GETUPVAL                         R7 6
       90 GETUPVAL                         R8 3
       91 GETTABLEKS                       R8 R8 K9 ["TokenReferenceSchema"]
       93 DUPTABLE                         R9 K12 [{"Instance", "ExpectedTypes"}]
       94 GETUPVAL                         R10 7
       95 SETTABLEKS                       R10 R9 K10 ["Instance"]
       97 SETTABLEKS                       R6 R9 K11 ["ExpectedTypes"]
       99 CALL                             R7 2 1
      100 MOVE                             R3 R7
      101 GETUPVAL                         R6 8
      102 GETTABLEKS                       R6 R6 K13 ["createItemId"]
      104 GETUPVAL                         R7 7
      105 MOVE                             R8 R1
      106 CALL                             R6 2 1
      107 LOADNIL                          R7
      108 GETUPVAL                         R8 2
      109 JUMPIFNOT                        R8 ; [+61]
      110 GETTABLEKS                       R8 R3 K14 ["Validate"]
      112 MOVE                             R9 R2
      113 CALL                             R8 1 1
      114 JUMPIF                           R8 ; [+44]
      115 MOVE                             R8 R5
      116 JUMPIF                           R8 ; [+3]
      117 GETUPVAL                         R8 3
      118 GETTABLEKS                       R8 R8 K7 ["TextSchema"]
      120 DUPTABLE                         R9 K19 [{"Actions", "Schema", "Value", "ErrorMessage"}]
      121 GETUPVAL                         R10 9
      122 GETTABLEKS                       R10 R10 K20 ["MoreAction"]
      124 SETTABLEKS                       R10 R9 K15 ["Actions"]
      126 GETUPVAL                         R10 6
      127 MOVE                             R11 R8
      128 DUPTABLE                         R12 K22 [{"ErrorStyle"}]
      129 LOADK                            R13 K23 ["PropertyCellError"]
      130 SETTABLEKS                       R13 R12 K21 ["ErrorStyle"]
      132 CALL                             R10 2 1
      133 SETTABLEKS                       R10 R9 K16 ["Schema"]
      135 GETTABLEKS                       R11 R8 K14 ["Validate"]
      137 MOVE                             R12 R2
      138 CALL                             R11 1 1
      139 JUMPIFNOT                        R11 ; [+2]
      140 MOVE                             R10 R2
      141 JUMP                             ; [+5]
      142 FASTCALL1                        TOSTRING R2 ; [+3]
      143 MOVE                             R11 R2
      144 GETIMPORT                        R10 K25 [tostring]
      146 CALL                             R10 1 1
      147 SETTABLEKS                       R10 R9 K17 ["Value"]
      149 GETUPVAL                         R10 10
      150 LOADK                            R12 K26 ["Label"]
      151 LOADK                            R13 K27 ["ValueErrorIncorrectType"]
      152 NAMECALL                         R10 R10 K28 ["getText"]
      154 CALL                             R10 3 1
      155 SETTABLEKS                       R10 R9 K18 ["ErrorMessage"]
      157 MOVE                             R7 R9
      158 JUMP                             ; [+33]
      159 DUPTABLE                         R8 K29 [{"Actions", "Schema", "Value"}]
      160 GETUPVAL                         R9 9
      161 GETTABLEKS                       R9 R9 K20 ["MoreAction"]
      163 SETTABLEKS                       R9 R8 K15 ["Actions"]
      165 SETTABLEKS                       R3 R8 K16 ["Schema"]
      167 SETTABLEKS                       R2 R8 K17 ["Value"]
      169 MOVE                             R7 R8
      170 JUMP                             ; [+21]
      171 DUPTABLE                         R8 K29 [{"Actions", "Schema", "Value"}]
      172 GETUPVAL                         R9 9
      173 GETTABLEKS                       R9 R9 K20 ["MoreAction"]
      175 SETTABLEKS                       R9 R8 K15 ["Actions"]
      177 SETTABLEKS                       R3 R8 K16 ["Schema"]
      179 GETTABLEKS                       R10 R3 K14 ["Validate"]
      181 MOVE                             R11 R2
      182 CALL                             R10 1 1
      183 JUMPIFNOT                        R10 ; [+2]
      184 MOVE                             R9 R2
      185 JUMP                             ; [+3]
      186 GETTABLEKS                       R9 R3 K30 ["GetDefaultValue"]
      188 CALL                             R9 0 1
      189 SETTABLEKS                       R9 R8 K17 ["Value"]
      191 MOVE                             R7 R8
      192 DUPTABLE                         R8 K34 [{"Id", "Name", "Value", "Children"}]
      193 SETTABLEKS                       R6 R8 K31 ["Id"]
      195 DUPTABLE                         R9 K35 [{"Schema", "Value"}]
      196 GETUPVAL                         R10 6
      197 GETUPVAL                         R11 3
      198 GETTABLEKS                       R11 R11 K36 ["PropertyNameSchema"]
      200 DUPTABLE                         R12 K38 [{"StyleRuleInfo"}]
      201 GETUPVAL                         R13 11
      202 SETTABLEKS                       R13 R12 K37 ["StyleRuleInfo"]
      204 CALL                             R10 2 1
      205 SETTABLEKS                       R10 R9 K16 ["Schema"]
      207 SETTABLEKS                       R1 R9 K17 ["Value"]
      209 SETTABLEKS                       R9 R8 K32 ["Name"]
      211 SETTABLEKS                       R7 R8 K17 ["Value"]
      213 GETTABLEKS                       R10 R3 K14 ["Validate"]
      215 MOVE                             R11 R2
      216 CALL                             R10 1 1
      217 JUMPIFNOT                        R10 ; [+9]
      218 GETTABLEKS                       R10 R3 K39 ["GetChildren"]
      220 JUMPIFNOT                        R10 ; [+6]
      221 GETTABLEKS                       R9 R3 K39 ["GetChildren"]
      223 MOVE                             R10 R2
      224 MOVE                             R11 R6
      225 CALL                             R9 2 1
      226 JUMP                             ; [+2]
      227 NEWTABLE                         R9 0 0
      229 SETTABLEKS                       R9 R8 K33 ["Children"]
      231 RETURN                           R8 1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["findFirstClassSelector"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 NAMECALL                         R4 R1 K1 ["GetProperties"]
        7 CALL                             R4 1 1
        8 GETUPVAL                         R5 1
        9 MOVE                             R6 R4
       10 CALL                             R5 1 1
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R6 R6 K2 ["getStyleInfo"]
       14 MOVE                             R7 R1
       15 CALL                             R6 1 1
       16 GETIMPORT                        R7 K5 [table.sort]
       18 MOVE                             R8 R5
       19 CALL                             R7 1 0
       20 GETUPVAL                         R7 3
       21 MOVE                             R8 R5
       22 NEWCLOSURE                       R9 P0
       23 CAPTURE                          VAL R4
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          VAL R3
       28 CAPTURE                          UPVAL U7
       29 CAPTURE                          UPVAL U8
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U9
       32 CAPTURE                          UPVAL U10
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R6
       35 CALL                             R7 2 1
       36 MOVE                             R9 R7
       37 GETUPVAL                         R10 11
       38 GETTABLEKS                       R10 R10 K6 ["_buildEmptyRow"]
       40 MOVE                             R11 R0
       41 MOVE                             R12 R6
       42 CALL                             R10 2 -1
       43 FASTCALL                         TABLE_INSERT ; [+2]
       44 GETIMPORT                        R8 K8 [table.insert]
       46 CALL                             R8 -1 0
       47 RETURN                           R7 1

PROTO_12:
        0 LOADK                            R4 K0 ["StyleRule"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["_buildStyleRule"]
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 -1
       11 RETURN                           R2 -1
       12 LOADK                            R4 K3 ["Folder"]
       13 NAMECALL                         R2 R0 K1 ["IsA"]
       15 CALL                             R2 2 1
       16 JUMPIFNOT                        R2 ; [+7]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K4 ["_buildFolderRow"]
       20 MOVE                             R3 R0
       21 MOVE                             R4 R1
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1
       24 LOADNIL                          R2
       25 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_buildStyleRule"]
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
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["_buildInstance"]
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
       15 GETTABLEKS                       R7 R6 K4 ["Name"]
       17 GETTABLEKS                       R7 R7 K5 ["FullSpan"]
       19 JUMPIFNOT                        R7 ; [+4]
       20 GETTABLEKS                       R7 R6 K3 ["Id"]
       22 LOADB                            R8 1
       23 SETTABLE                         R8 R1 R7
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R7 R7 K6 ["expandNewRows"]
       27 GETTABLEKS                       R8 R6 K7 ["Children"]
       29 MOVE                             R9 R1
       30 CALL                             R7 2 0
       31 FORGLOOP                         R2 2 [inext] ; [-22]
       33 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETIMPORT                        R2 K1 [script]
       15 GETTABLEKS                       R2 R2 K2 ["Parent"]
       17 GETTABLEKS                       R2 R2 K2 ["Parent"]
       19 GETTABLEKS                       R2 R2 K2 ["Parent"]
       21 GETTABLEKS                       R2 R2 K5 ["Util"]
       23 GETTABLEKS                       R2 R2 K6 ["TransitionParamUtil"]
       25 CALL                             R1 1 1
       26 GETIMPORT                        R2 K4 [require]
       28 GETTABLEKS                       R3 R0 K7 ["Packages"]
       30 GETTABLEKS                       R3 R3 K8 ["Framework"]
       32 CALL                             R2 1 1
       33 GETTABLEKS                       R3 R2 K5 ["Util"]
       35 GETTABLEKS                       R3 R3 K9 ["EditTree"]
       37 GETIMPORT                        R4 K4 [require]
       39 GETTABLEKS                       R5 R0 K10 ["Src"]
       41 GETTABLEKS                       R5 R5 K11 ["Flags"]
       43 GETTABLEKS                       R5 R5 K12 ["getEngineFeatureNestedPseudoInstance"]
       45 CALL                             R4 1 1
       46 CALL                             R4 0 1
       47 GETIMPORT                        R5 K4 [require]
       49 GETTABLEKS                       R6 R0 K10 ["Src"]
       51 GETTABLEKS                       R6 R6 K11 ["Flags"]
       53 GETTABLEKS                       R6 R6 K13 ["getFFlagStyleQuery"]
       55 CALL                             R5 1 1
       56 CALL                             R5 0 1
       57 GETIMPORT                        R6 K4 [require]
       59 GETTABLEKS                       R7 R0 K7 ["Packages"]
       61 GETTABLEKS                       R7 R7 K14 ["Dash"]
       63 CALL                             R6 1 1
       64 GETTABLEKS                       R7 R6 K15 ["append"]
       66 GETTABLEKS                       R8 R6 K16 ["collectArray"]
       68 GETTABLEKS                       R9 R6 K17 ["join"]
       70 GETTABLEKS                       R10 R6 K18 ["keys"]
       72 GETTABLEKS                       R11 R6 K19 ["map"]
       74 GETIMPORT                        R12 K4 [require]
       76 GETTABLEKS                       R13 R0 K10 ["Src"]
       78 GETTABLEKS                       R13 R13 K5 ["Util"]
       80 GETTABLEKS                       R13 R13 K20 ["MenuHelpers"]
       82 CALL                             R12 1 1
       83 GETIMPORT                        R13 K4 [require]
       85 GETTABLEKS                       R14 R0 K10 ["Src"]
       87 GETTABLEKS                       R14 R14 K5 ["Util"]
       89 GETTABLEKS                       R14 R14 K21 ["SelectorHelpers"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K4 [require]
       94 GETTABLEKS                       R15 R0 K10 ["Src"]
       96 GETTABLEKS                       R15 R15 K5 ["Util"]
       98 GETTABLEKS                       R15 R15 K22 ["StyleQueryHelpers"]
      100 CALL                             R14 1 1
      101 GETIMPORT                        R15 K4 [require]
      103 GETTABLEKS                       R16 R0 K10 ["Src"]
      105 GETTABLEKS                       R16 R16 K5 ["Util"]
      107 GETTABLEKS                       R16 R16 K23 ["StyleRuleHelpers"]
      109 CALL                             R15 1 1
      110 GETIMPORT                        R16 K4 [require]
      112 GETTABLEKS                       R17 R0 K10 ["Src"]
      114 GETTABLEKS                       R17 R17 K5 ["Util"]
      116 GETTABLEKS                       R17 R17 K24 ["StyleSchema"]
      118 CALL                             R16 1 1
      119 GETIMPORT                        R17 K4 [require]
      121 GETTABLEKS                       R18 R0 K10 ["Src"]
      123 GETTABLEKS                       R18 R18 K5 ["Util"]
      125 GETTABLEKS                       R18 R18 K25 ["Styling"]
      127 CALL                             R17 1 1
      128 GETIMPORT                        R18 K4 [require]
      130 GETTABLEKS                       R19 R0 K10 ["Src"]
      132 GETTABLEKS                       R19 R19 K5 ["Util"]
      134 GETTABLEKS                       R19 R19 K26 ["TokenHelpers"]
      136 CALL                             R18 1 1
      137 GETIMPORT                        R19 K4 [require]
      139 GETTABLEKS                       R20 R0 K10 ["Src"]
      141 GETTABLEKS                       R20 R20 K5 ["Util"]
      143 GETTABLEKS                       R20 R20 K27 ["TreeTableHelpers"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K4 [require]
      148 GETTABLEKS                       R21 R0 K10 ["Src"]
      150 GETTABLEKS                       R21 R21 K11 ["Flags"]
      152 GETTABLEKS                       R21 R21 K28 ["getFFlagStyleEditorSupportTransitions"]
      154 CALL                             R20 1 1
      155 CALL                             R20 0 1
      156 GETIMPORT                        R21 K4 [require]
      158 GETTABLEKS                       R22 R0 K10 ["Src"]
      160 GETTABLEKS                       R22 R22 K11 ["Flags"]
      162 GETTABLEKS                       R22 R22 K29 ["getFFlagStyleEditorFixErrorValue"]
      164 CALL                             R21 1 1
      165 CALL                             R21 0 1
      166 GETIMPORT                        R22 K4 [require]
      168 GETTABLEKS                       R23 R0 K10 ["Src"]
      170 GETTABLEKS                       R23 R23 K11 ["Flags"]
      172 GETTABLEKS                       R23 R23 K30 ["getFFlagStyleEditorFixTransparencySchema"]
      174 CALL                             R22 1 1
      175 CALL                             R22 0 1
      176 GETIMPORT                        R23 K4 [require]
      178 GETTABLEKS                       R24 R0 K10 ["Src"]
      180 GETTABLEKS                       R24 R24 K31 ["Types"]
      182 CALL                             R23 1 1
      183 NEWTABLE                         R24 32 0
      185 NEWTABLE                         R25 0 2
      187 DUPTABLE                         R26 K35 [{"Name", "Key", "Width"}]
      188 LOADK                            R27 K32 ["Name"]
      189 SETTABLEKS                       R27 R26 K32 ["Name"]
      191 LOADK                            R27 K32 ["Name"]
      192 SETTABLEKS                       R27 R26 K33 ["Key"]
      194 GETIMPORT                        R27 K38 [UDim.new]
      196 LOADK                            R28 K39 [0.5]
      197 LOADN                            R29 0
      198 CALL                             R27 2 1
      199 SETTABLEKS                       R27 R26 K34 ["Width"]
      201 DUPTABLE                         R27 K35 [{"Name", "Key", "Width"}]
      202 LOADK                            R28 K40 ["Value"]
      203 SETTABLEKS                       R28 R27 K32 ["Name"]
      205 LOADK                            R28 K40 ["Value"]
      206 SETTABLEKS                       R28 R27 K33 ["Key"]
      208 GETIMPORT                        R28 K38 [UDim.new]
      210 LOADK                            R29 K39 [0.5]
      211 LOADN                            R30 0
      212 CALL                             R28 2 1
      213 SETTABLEKS                       R28 R27 K34 ["Width"]
      215 SETLIST                          R25 R26 2 [1]
      217 SETTABLEKS                       R25 R24 K41 ["Columns"]
      219 LOADN                            R25 1
      220 SETTABLEKS                       R25 R24 K42 ["NAME_COLUMN_INDEX"]
      222 LOADN                            R25 2
      223 SETTABLEKS                       R25 R24 K43 ["VALUE_COLUMN_INDEX"]
      225 DUPCLOSURE                       R25 K44 [PROTO_0]
      226 SETTABLEKS                       R25 R24 K45 ["getItemChildren"]
      228 DUPCLOSURE                       R25 K46 [PROTO_1]
      229 SETTABLEKS                       R25 R24 K47 ["getItemId"]
      231 GETTABLEKS                       R25 R3 K37 ["new"]
      233 DUPTABLE                         R26 K50 [{"getChildren", "getId"}]
      234 GETTABLEKS                       R27 R24 K45 ["getItemChildren"]
      236 SETTABLEKS                       R27 R26 K48 ["getChildren"]
      238 GETTABLEKS                       R27 R24 K47 ["getItemId"]
      240 SETTABLEKS                       R27 R26 K49 ["getId"]
      242 CALL                             R25 1 1
      243 SETTABLEKS                       R25 R24 K9 ["EditTree"]
      245 DUPCLOSURE                       R26 K51 [PROTO_3]
      246 CAPTURE                          VAL R5
      247 CAPTURE                          VAL R15
      248 CAPTURE                          VAL R14
      249 CAPTURE                          VAL R24
      250 CAPTURE                          VAL R11
      251 SETTABLEKS                       R26 R24 K52 ["_getChildRows"]
      253 DUPCLOSURE                       R26 K53 [PROTO_4]
      254 CAPTURE                          VAL R19
      255 CAPTURE                          VAL R24
      256 CAPTURE                          VAL R20
      257 CAPTURE                          VAL R16
      258 CAPTURE                          VAL R12
      259 SETTABLEKS                       R26 R24 K54 ["_buildFolderRow"]
      261 DUPCLOSURE                       R26 K55 [PROTO_5]
      262 CAPTURE                          VAL R19
      263 CAPTURE                          VAL R24
      264 CAPTURE                          VAL R5
      265 CAPTURE                          VAL R14
      266 CAPTURE                          VAL R4
      267 CAPTURE                          VAL R13
      268 CAPTURE                          VAL R20
      269 CAPTURE                          VAL R12
      270 CAPTURE                          VAL R16
      271 CAPTURE                          VAL R7
      272 CAPTURE                          VAL R21
      273 SETTABLEKS                       R26 R24 K56 ["_buildStyleRule"]
      275 DUPCLOSURE                       R26 K57 [PROTO_6]
      276 CAPTURE                          VAL R19
      277 CAPTURE                          VAL R20
      278 CAPTURE                          VAL R9
      279 CAPTURE                          VAL R16
      280 CAPTURE                          VAL R12
      281 SETTABLEKS                       R26 R24 K58 ["_buildEmptyRow"]
      283 DUPCLOSURE                       R26 K59 [PROTO_7]
      284 SETTABLEKS                       R26 R24 K60 ["_attachRowMetadata"]
      286 DUPCLOSURE                       R26 K61 [PROTO_9]
      287 CAPTURE                          VAL R1
      288 CAPTURE                          VAL R10
      289 CAPTURE                          VAL R17
      290 CAPTURE                          VAL R13
      291 CAPTURE                          VAL R8
      292 CAPTURE                          VAL R19
      293 CAPTURE                          VAL R18
      294 CAPTURE                          VAL R21
      295 CAPTURE                          VAL R16
      296 CAPTURE                          VAL R22
      297 CAPTURE                          VAL R9
      298 CAPTURE                          VAL R12
      299 CAPTURE                          VAL R24
      300 SETTABLEKS                       R26 R24 K62 ["_buildProperties"]
      302 DUPCLOSURE                       R26 K63 [PROTO_11]
      303 CAPTURE                          VAL R13
      304 CAPTURE                          VAL R10
      305 CAPTURE                          VAL R17
      306 CAPTURE                          VAL R8
      307 CAPTURE                          VAL R18
      308 CAPTURE                          VAL R21
      309 CAPTURE                          VAL R16
      310 CAPTURE                          VAL R22
      311 CAPTURE                          VAL R9
      312 CAPTURE                          VAL R19
      313 CAPTURE                          VAL R12
      314 CAPTURE                          VAL R24
      315 SETTABLEKS                       R26 R24 K64 ["_DEPRECATED_buildProperties"]
      317 DUPCLOSURE                       R26 K65 [PROTO_12]
      318 CAPTURE                          VAL R24
      319 SETTABLEKS                       R26 R24 K66 ["_buildInstance"]
      321 DUPCLOSURE                       R26 K67 [PROTO_13]
      322 CAPTURE                          VAL R24
      323 CAPTURE                          VAL R25
      324 SETTABLEKS                       R26 R24 K68 ["DEPRECATED_buildItems"]
      326 DUPCLOSURE                       R26 K69 [PROTO_14]
      327 CAPTURE                          VAL R5
      328 CAPTURE                          VAL R24
      329 CAPTURE                          VAL R25
      330 SETTABLEKS                       R26 R24 K70 ["buildItems"]
      332 DUPCLOSURE                       R26 K71 [PROTO_15]
      333 CAPTURE                          VAL R24
      334 SETTABLEKS                       R26 R24 K72 ["expandNewRows"]
      336 RETURN                           R24 1
