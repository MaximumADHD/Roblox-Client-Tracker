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
       15 JUMPIFNOT                        R6 ; [+2]
       16 DUPTABLE                         R5 K9 [{["RowType"] = "Instance"}]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R5
       19 SETTABLEKS                       R5 R4 K3 ["Metadata"]
       21 DUPTABLE                         R5 K15 [{["Schema"], ["Value"], ["FullSpan"] = True, ["Actions"]}]
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R6 R6 K16 ["FolderSchema"]
       25 SETTABLEKS                       R6 R5 K10 ["Schema"]
       27 GETTABLEKS                       R6 R0 K4 ["Name"]
       29 SETTABLEKS                       R6 R5 K11 ["Value"]
       31 GETUPVAL                         R6 4
       32 GETTABLEKS                       R6 R6 K17 ["MoreAction"]
       34 SETTABLEKS                       R6 R5 K14 ["Actions"]
       36 SETTABLEKS                       R5 R4 K4 ["Name"]
       38 SETTABLEKS                       R0 R4 K5 ["Instance"]
       40 SETTABLEKS                       R3 R4 K6 ["Children"]
       42 RETURN                           R4 1

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
       51 DUPTABLE                         R5 K17 [{"Id", "Metadata", "Name", "Instance", "Children"}]
       52 SETTABLEKS                       R2 R5 K12 ["Id"]
       54 GETUPVAL                         R7 4
       55 JUMPIFNOT                        R7 ; [+2]
       56 DUPTABLE                         R6 K19 [{["RowType"] = "Instance"}]
       57 JUMP                             ; [+1]
       58 LOADNIL                          R6
       59 SETTABLEKS                       R6 R5 K13 ["Metadata"]
       61 DUPTABLE                         R6 K26 [{["ErrorMessage"], ["FullSpan"] = True, ["Actions"], ["Schema"], ["Value"]}]
       62 SETTABLEKS                       R4 R6 K20 ["ErrorMessage"]
       64 GETUPVAL                         R7 5
       65 GETTABLEKS                       R7 R7 K27 ["FullSpanMoreAction"]
       67 SETTABLEKS                       R7 R6 K23 ["Actions"]
       69 GETUPVAL                         R7 6
       70 GETTABLEKS                       R7 R7 K28 ["SelectorSchema"]
       72 SETTABLEKS                       R7 R6 K24 ["Schema"]
       74 GETTABLEKS                       R7 R0 K3 ["Selector"]
       76 SETTABLEKS                       R7 R6 K25 ["Value"]
       78 SETTABLEKS                       R6 R5 K14 ["Name"]
       80 SETTABLEKS                       R0 R5 K15 ["Instance"]
       82 GETUPVAL                         R6 7
       83 GETUPVAL                         R8 4
       84 JUMPIFNOT                        R8 ; [+8]
       85 GETUPVAL                         R7 1
       86 GETTABLEKS                       R7 R7 K29 ["_buildProperties"]
       88 MOVE                             R8 R2
       89 MOVE                             R9 R0
       90 MOVE                             R10 R1
       91 CALL                             R7 3 1
       92 JUMP                             ; [+7]
       93 GETUPVAL                         R7 1
       94 GETTABLEKS                       R7 R7 K30 ["_DEPRECATED_buildProperties"]
       96 MOVE                             R8 R2
       97 MOVE                             R9 R0
       98 MOVE                             R10 R1
       99 CALL                             R7 3 1
      100 MOVE                             R8 R3
      101 CALL                             R6 2 1
      102 SETTABLEKS                       R6 R5 K16 ["Children"]
      104 RETURN                           R5 1

PROTO_6:
        0 DUPTABLE                         R2 K5 [{"Id", "Metadata", "Name", "Value", "Children"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K6 ["createItemId"]
        4 MOVE                             R4 R0
        5 LOADK                            R5 K7 ["@Empty"]
        6 CALL                             R3 2 1
        7 SETTABLEKS                       R3 R2 K0 ["Id"]
        9 GETUPVAL                         R4 1
       10 JUMPIFNOT                        R4 ; [+2]
       11 DUPTABLE                         R3 K12 [{["RowType"] = "Property", ["IsUnset"] = False}]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R3
       14 SETTABLEKS                       R3 R2 K1 ["Metadata"]
       16 DUPTABLE                         R3 K15 [{["Schema"], ["Value"] = ""}]
       17 GETUPVAL                         R4 2
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K16 ["PropertyNameSchema"]
       21 DUPTABLE                         R6 K18 [{"StyleRuleInfo"}]
       22 SETTABLEKS                       R1 R6 K17 ["StyleRuleInfo"]
       24 CALL                             R4 2 1
       25 SETTABLEKS                       R4 R3 K13 ["Schema"]
       27 SETTABLEKS                       R3 R2 K2 ["Name"]
       29 DUPTABLE                         R3 K20 [{["Actions"], ["Schema"], ["Value"] = ""}]
       30 GETUPVAL                         R4 4
       31 GETTABLEKS                       R4 R4 K21 ["MoreAction"]
       33 SETTABLEKS                       R4 R3 K19 ["Actions"]
       35 DUPTABLE                         R4 K24 [{["Type"] = "Empty"}]
       36 SETTABLEKS                       R4 R3 K13 ["Schema"]
       38 SETTABLEKS                       R3 R2 K3 ["Value"]
       40 NEWTABLE                         R3 0 0
       42 SETTABLEKS                       R3 R2 K4 ["Children"]
       44 RETURN                           R2 1

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
       14 JUMPIFEQKNIL                     R2 ; [+148]
       16 GETUPVAL                         R9 4
       17 GETTABLEKS                       R9 R9 K1 ["parseAttributeName"]
       19 MOVE                             R10 R2
       20 CALL                             R9 1 1
       21 JUMPIFNOTEQKNIL                  R9 ; [+2]
       23 LOADB                            R8 0 +1
       24 LOADB                            R8 1
       25 GETUPVAL                         R9 5
       26 GETTABLEKS                       R9 R9 K2 ["getValueTypeSchema"]
       28 MOVE                             R10 R2
       29 CALL                             R9 1 1
       30 GETUPVAL                         R10 6
       31 JUMPIFNOT                        R10 ; [+11]
       32 GETUPVAL                         R10 6
       33 JUMPIFEQKS                       R10 K3 [""] ; [+9]
       35 GETUPVAL                         R10 5
       36 GETTABLEKS                       R10 R10 K4 ["getPropertySchema"]
       38 MOVE                             R11 R1
       39 GETUPVAL                         R12 6
       40 CALL                             R10 2 1
       41 MOVE                             R4 R10
       42 JUMP                             ; [+18]
       43 JUMPIF                           R8 ; [+7]
       44 GETUPVAL                         R10 5
       45 GETTABLEKS                       R10 R10 K4 ["getPropertySchema"]
       47 MOVE                             R11 R1
       48 LOADK                            R12 K3 [""]
       49 CALL                             R10 2 1
       50 MOVE                             R4 R10
       51 JUMPIF                           R4 ; [+9]
       52 GETUPVAL                         R10 5
       53 GETTABLEKS                       R10 R10 K5 ["PropertySchemas"]
       55 FASTCALL1                        TYPEOF R2 ; [+3]
       56 MOVE                             R12 R2
       57 GETIMPORT                        R11 K7 [typeof]
       59 CALL                             R11 1 1
       60 GETTABLE                         R4 R10 R11
       61 JUMPIF                           R4 ; [+7]
       62 JUMPIFNOTEQKS                    R1 K3 [""] ; [+3]
       64 LOADNIL                          R10
       65 RETURN                           R10 1
       66 GETUPVAL                         R10 5
       67 GETTABLEKS                       R4 R10 K8 ["TextSchema"]
       69 JUMPIFNOT                        R8 ; [+17]
       70 GETUPVAL                         R10 5
       71 GETTABLEKS                       R10 R10 K9 ["getPossiblePropertyTypes"]
       73 MOVE                             R11 R1
       74 CALL                             R10 1 1
       75 GETUPVAL                         R11 7
       76 GETUPVAL                         R12 5
       77 GETTABLEKS                       R12 R12 K10 ["TokenReferenceSchema"]
       79 DUPTABLE                         R13 K13 [{"Instance", "ExpectedTypes"}]
       80 GETUPVAL                         R14 3
       81 SETTABLEKS                       R14 R13 K11 ["Instance"]
       83 SETTABLEKS                       R10 R13 K12 ["ExpectedTypes"]
       85 CALL                             R11 2 1
       86 MOVE                             R4 R11
       87 GETTABLEKS                       R10 R4 K14 ["Validate"]
       89 MOVE                             R11 R2
       90 CALL                             R10 1 1
       91 JUMPIF                           R10 ; [+41]
       92 MOVE                             R10 R9
       93 JUMPIF                           R10 ; [+3]
       94 GETUPVAL                         R10 5
       95 GETTABLEKS                       R10 R10 K8 ["TextSchema"]
       97 DUPTABLE                         R11 K19 [{"Actions", "Schema", "Value", "ErrorMessage"}]
       98 GETUPVAL                         R12 8
       99 GETTABLEKS                       R12 R12 K20 ["MoreAction"]
      101 SETTABLEKS                       R12 R11 K15 ["Actions"]
      103 GETUPVAL                         R12 7
      104 MOVE                             R13 R10
      105 DUPTABLE                         R14 K23 [{["ErrorStyle"] = "PropertyCellError"}]
      106 CALL                             R12 2 1
      107 SETTABLEKS                       R12 R11 K16 ["Schema"]
      109 GETTABLEKS                       R13 R10 K14 ["Validate"]
      111 MOVE                             R14 R2
      112 CALL                             R13 1 1
      113 JUMPIFNOT                        R13 ; [+2]
      114 MOVE                             R12 R2
      115 JUMP                             ; [+5]
      116 FASTCALL1                        TOSTRING R2 ; [+3]
      117 MOVE                             R13 R2
      118 GETIMPORT                        R12 K25 [tostring]
      120 CALL                             R12 1 1
      121 SETTABLEKS                       R12 R11 K17 ["Value"]
      123 GETUPVAL                         R12 9
      124 LOADK                            R14 K26 ["Label"]
      125 LOADK                            R15 K27 ["ValueErrorIncorrectType"]
      126 NAMECALL                         R12 R12 K28 ["getText"]
      128 CALL                             R12 3 1
      129 SETTABLEKS                       R12 R11 K18 ["ErrorMessage"]
      131 MOVE                             R6 R11
      132 JUMP                             ; [+23]
      133 DUPTABLE                         R10 K29 [{"Actions", "Schema", "Value"}]
      134 GETUPVAL                         R11 8
      135 GETTABLEKS                       R11 R11 K20 ["MoreAction"]
      137 SETTABLEKS                       R11 R10 K15 ["Actions"]
      139 SETTABLEKS                       R4 R10 K16 ["Schema"]
      141 SETTABLEKS                       R2 R10 K17 ["Value"]
      143 MOVE                             R6 R10
      144 GETTABLEKS                       R10 R4 K30 ["GetChildren"]
      146 JUMPIFNOT                        R10 ; [+7]
      147 GETTABLEKS                       R10 R4 K30 ["GetChildren"]
      149 MOVE                             R11 R2
      150 MOVE                             R12 R5
      151 CALL                             R10 2 1
      152 MOVE                             R7 R10
      153 JUMP                             ; [+2]
      154 NEWTABLE                         R7 0 0
      156 GETUPVAL                         R10 10
      157 GETTABLEKS                       R10 R10 K31 ["_attachRowMetadata"]
      159 MOVE                             R11 R7
      160 DUPTABLE                         R12 K34 [{["RowType"] = "ValueChild"}]
      161 CALL                             R10 2 0
      162 JUMP                             ; [+12]
      163 DUPTABLE                         R8 K35 [{["Actions"], ["Schema"], ["Value"] = ""}]
      164 GETUPVAL                         R9 8
      165 GETTABLEKS                       R9 R9 K20 ["MoreAction"]
      167 SETTABLEKS                       R9 R8 K15 ["Actions"]
      169 GETUPVAL                         R9 5
      170 GETTABLEKS                       R9 R9 K36 ["ChildComponentSchema"]
      172 SETTABLEKS                       R9 R8 K16 ["Schema"]
      174 MOVE                             R6 R8
      175 JUMPIFEQKNIL                     R3 ; [+103]
      177 GETUPVAL                         R8 11
      178 GETTABLEKS                       R8 R8 K37 ["DEFAULT_TRANSITION_NAME"]
      180 JUMPIFEQ                         R1 R8 ; [+98]
      182 GETUPVAL                         R8 2
      183 GETTABLEKS                       R8 R8 K0 ["createItemId"]
      185 MOVE                             R9 R5
      186 LOADK                            R10 K38 ["@Transition"]
      187 CALL                             R8 2 1
      188 FASTCALL1                        TYPEOF R3 ; [+3]
      189 MOVE                             R11 R3
      190 GETIMPORT                        R10 K7 [typeof]
      192 CALL                             R10 1 1
      193 JUMPIFEQKS                       R10 K39 ["string"] ; [+2]
      195 LOADB                            R9 0 +1
      196 LOADB                            R9 1
      197 JUMPIFNOT                        R9 ; [+17]
      198 GETUPVAL                         R10 7
      199 GETUPVAL                         R11 5
      200 GETTABLEKS                       R11 R11 K10 ["TokenReferenceSchema"]
      202 DUPTABLE                         R12 K13 [{"Instance", "ExpectedTypes"}]
      203 GETUPVAL                         R13 3
      204 SETTABLEKS                       R13 R12 K11 ["Instance"]
      206 NEWTABLE                         R13 0 1
      208 LOADK                            R14 K40 ["TweenInfo"]
      209 SETLIST                          R13 R14 1 [1]
      211 SETTABLEKS                       R13 R12 K12 ["ExpectedTypes"]
      213 CALL                             R10 2 1
      214 JUMP                             ; [+3]
      215 GETUPVAL                         R10 5
      216 GETTABLEKS                       R10 R10 K41 ["TweenInfoSchema"]
      218 DUPTABLE                         R11 K46 [{"Id", "Metadata", "Name", "Value", "Children"}]
      219 SETTABLEKS                       R8 R11 K42 ["Id"]
      221 DUPTABLE                         R12 K49 [{["RowType"] = "Transition", ["TransitionPropertyName"]}]
      222 SETTABLEKS                       R1 R12 K48 ["TransitionPropertyName"]
      224 SETTABLEKS                       R12 R11 K43 ["Metadata"]
      226 DUPTABLE                         R12 K50 [{["Schema"], ["Value"] = "Transition"}]
      227 GETUPVAL                         R13 5
      228 GETTABLEKS                       R13 R13 K36 ["ChildComponentSchema"]
      230 SETTABLEKS                       R13 R12 K16 ["Schema"]
      232 SETTABLEKS                       R12 R11 K44 ["Name"]
      234 DUPTABLE                         R12 K29 [{"Actions", "Schema", "Value"}]
      235 GETUPVAL                         R13 8
      236 GETTABLEKS                       R13 R13 K20 ["MoreAction"]
      238 SETTABLEKS                       R13 R12 K15 ["Actions"]
      240 SETTABLEKS                       R10 R12 K16 ["Schema"]
      242 SETTABLEKS                       R3 R12 K17 ["Value"]
      244 SETTABLEKS                       R12 R11 K17 ["Value"]
      246 JUMPIF                           R9 ; [+14]
      247 GETTABLEKS                       R13 R10 K14 ["Validate"]
      249 MOVE                             R14 R3
      250 CALL                             R13 1 1
      251 JUMPIFNOT                        R13 ; [+9]
      252 GETTABLEKS                       R13 R10 K30 ["GetChildren"]
      254 JUMPIFNOT                        R13 ; [+6]
      255 GETTABLEKS                       R12 R10 K30 ["GetChildren"]
      257 MOVE                             R13 R3
      258 MOVE                             R14 R8
      259 CALL                             R12 2 1
      260 JUMP                             ; [+2]
      261 NEWTABLE                         R12 0 0
      263 SETTABLEKS                       R12 R11 K45 ["Children"]
      265 GETUPVAL                         R12 10
      266 GETTABLEKS                       R12 R12 K31 ["_attachRowMetadata"]
      268 GETTABLEKS                       R13 R11 K45 ["Children"]
      270 DUPTABLE                         R14 K34 [{["RowType"] = "ValueChild"}]
      271 CALL                             R12 2 0
      272 FASTCALL2                        TABLE_INSERT R7 R11 ; [+5]
      274 MOVE                             R13 R7
      275 MOVE                             R14 R11
      276 GETIMPORT                        R12 K53 [table.insert]
      278 CALL                             R12 2 0
      279 DUPTABLE                         R8 K46 [{"Id", "Metadata", "Name", "Value", "Children"}]
      280 SETTABLEKS                       R5 R8 K42 ["Id"]
      282 DUPTABLE                         R9 K56 [{["RowType"] = "Property", ["IsUnset"]}]
      283 JUMPIFEQKNIL                     R2 ; [+2]
      285 LOADB                            R10 0 +1
      286 LOADB                            R10 1
      287 SETTABLEKS                       R10 R9 K55 ["IsUnset"]
      289 SETTABLEKS                       R9 R8 K43 ["Metadata"]
      291 DUPTABLE                         R9 K57 [{"Schema", "Value"}]
      292 GETUPVAL                         R10 7
      293 GETUPVAL                         R11 5
      294 GETTABLEKS                       R11 R11 K58 ["PropertyNameSchema"]
      296 DUPTABLE                         R12 K60 [{"StyleRuleInfo"}]
      297 GETUPVAL                         R13 12
      298 SETTABLEKS                       R13 R12 K59 ["StyleRuleInfo"]
      300 CALL                             R10 2 1
      301 SETTABLEKS                       R10 R9 K16 ["Schema"]
      303 SETTABLEKS                       R1 R9 K17 ["Value"]
      305 SETTABLEKS                       R9 R8 K44 ["Name"]
      307 SETTABLEKS                       R6 R8 K17 ["Value"]
      309 SETTABLEKS                       R7 R8 K45 ["Children"]
      311 RETURN                           R8 1

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
       55 CAPTURE                          VAL R8
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          UPVAL U9
       58 CAPTURE                          VAL R2
       59 CAPTURE                          UPVAL U10
       60 CAPTURE                          UPVAL U0
       61 CAPTURE                          VAL R7
       62 CALL                             R9 2 1
       63 GETUPVAL                         R11 0
       64 GETTABLEKS                       R11 R11 K2 ["DEFAULT_TRANSITION_NAME"]
       66 GETTABLE                         R10 R4 R11
       67 JUMPIFNOT                        R10 ; [+108]
       68 GETUPVAL                         R11 5
       69 GETTABLEKS                       R11 R11 K8 ["createItemId"]
       71 MOVE                             R12 R0
       72 LOADK                            R13 K9 ["@DefaultTransition"]
       73 CALL                             R11 2 1
       74 LOADB                            R12 0
       75 FASTCALL1                        TYPEOF R10 ; [+3]
       76 MOVE                             R14 R10
       77 GETIMPORT                        R13 K11 [typeof]
       79 CALL                             R13 1 1
       80 JUMPIFNOTEQKS                    R13 K12 ["string"] ; [+10]
       82 GETUPVAL                         R13 6
       83 GETTABLEKS                       R13 R13 K13 ["parseAttributeName"]
       85 MOVE                             R14 R10
       86 CALL                             R13 1 1
       87 JUMPIFNOTEQKNIL                  R13 ; [+2]
       89 LOADB                            R12 0 +1
       90 LOADB                            R12 1
       91 JUMPIFNOT                        R12 ; [+16]
       92 GETUPVAL                         R13 8
       93 GETUPVAL                         R14 7
       94 GETTABLEKS                       R14 R14 K14 ["TokenReferenceSchema"]
       96 DUPTABLE                         R15 K17 [{"Instance", "ExpectedTypes"}]
       97 SETTABLEKS                       R1 R15 K15 ["Instance"]
       99 NEWTABLE                         R16 0 1
      101 LOADK                            R17 K18 ["TweenInfo"]
      102 SETLIST                          R16 R17 1 [1]
      104 SETTABLEKS                       R16 R15 K16 ["ExpectedTypes"]
      106 CALL                             R13 2 1
      107 JUMP                             ; [+3]
      108 GETUPVAL                         R13 7
      109 GETTABLEKS                       R13 R13 K19 ["TweenInfoSchema"]
      111 DUPTABLE                         R14 K25 [{"Id", "Metadata", "Name", "Value", "Children"}]
      112 SETTABLEKS                       R11 R14 K20 ["Id"]
      114 DUPTABLE                         R15 K29 [{["RowType"] = "Transition", ["TransitionPropertyName"]}]
      115 GETUPVAL                         R16 0
      116 GETTABLEKS                       R16 R16 K2 ["DEFAULT_TRANSITION_NAME"]
      118 SETTABLEKS                       R16 R15 K28 ["TransitionPropertyName"]
      120 SETTABLEKS                       R15 R14 K21 ["Metadata"]
      122 DUPTABLE                         R15 K31 [{["Schema"], ["Value"] = "Transition"}]
      123 GETUPVAL                         R16 7
      124 GETTABLEKS                       R16 R16 K32 ["ChildComponentSchema"]
      126 SETTABLEKS                       R16 R15 K30 ["Schema"]
      128 SETTABLEKS                       R15 R14 K22 ["Name"]
      130 DUPTABLE                         R15 K34 [{"Actions", "Schema", "Value"}]
      131 GETUPVAL                         R16 9
      132 GETTABLEKS                       R16 R16 K35 ["MoreAction"]
      134 SETTABLEKS                       R16 R15 K33 ["Actions"]
      136 SETTABLEKS                       R13 R15 K30 ["Schema"]
      138 SETTABLEKS                       R10 R15 K23 ["Value"]
      140 SETTABLEKS                       R15 R14 K23 ["Value"]
      142 JUMPIF                           R12 ; [+14]
      143 GETTABLEKS                       R16 R13 K36 ["Validate"]
      145 MOVE                             R17 R10
      146 CALL                             R16 1 1
      147 JUMPIFNOT                        R16 ; [+9]
      148 GETTABLEKS                       R16 R13 K37 ["GetChildren"]
      150 JUMPIFNOT                        R16 ; [+6]
      151 GETTABLEKS                       R15 R13 K37 ["GetChildren"]
      153 MOVE                             R16 R10
      154 MOVE                             R17 R11
      155 CALL                             R15 2 1
      156 JUMP                             ; [+2]
      157 NEWTABLE                         R15 0 0
      159 SETTABLEKS                       R15 R14 K24 ["Children"]
      161 GETUPVAL                         R15 10
      162 GETTABLEKS                       R15 R15 K38 ["_attachRowMetadata"]
      164 GETTABLEKS                       R16 R14 K24 ["Children"]
      166 DUPTABLE                         R17 K40 [{["RowType"] = "ValueChild"}]
      167 CALL                             R15 2 0
      168 LOADN                            R17 1
      169 FASTCALL3                        TABLE_INSERT R9 R17 R14
      171 MOVE                             R16 R9
      172 MOVE                             R18 R14
      173 GETIMPORT                        R15 K42 [table.insert]
      175 CALL                             R15 3 0
      176 MOVE                             R12 R9
      177 GETUPVAL                         R13 10
      178 GETTABLEKS                       R13 R13 K43 ["_buildEmptyRow"]
      180 MOVE                             R14 R0
      181 MOVE                             R15 R7
      182 CALL                             R13 2 -1
      183 FASTCALL                         TABLE_INSERT ; [+2]
      184 GETIMPORT                        R11 K42 [table.insert]
      186 CALL                             R11 -1 0
      187 RETURN                           R9 1

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
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K1 ["getValueTypeSchema"]
       15 MOVE                             R6 R2
       16 CALL                             R5 1 1
       17 GETUPVAL                         R6 3
       18 JUMPIFNOT                        R6 ; [+11]
       19 GETUPVAL                         R6 3
       20 JUMPIFEQKS                       R6 K2 [""] ; [+9]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R6 R6 K3 ["getPropertySchema"]
       25 MOVE                             R7 R1
       26 GETUPVAL                         R8 3
       27 CALL                             R6 2 1
       28 MOVE                             R3 R6
       29 JUMP                             ; [+18]
       30 JUMPIF                           R4 ; [+7]
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R6 R6 K3 ["getPropertySchema"]
       34 MOVE                             R7 R1
       35 LOADK                            R8 K2 [""]
       36 CALL                             R6 2 1
       37 MOVE                             R3 R6
       38 JUMPIF                           R3 ; [+9]
       39 GETUPVAL                         R6 2
       40 GETTABLEKS                       R6 R6 K4 ["PropertySchemas"]
       42 FASTCALL1                        TYPEOF R2 ; [+3]
       43 MOVE                             R8 R2
       44 GETIMPORT                        R7 K6 [typeof]
       46 CALL                             R7 1 1
       47 GETTABLE                         R3 R6 R7
       48 JUMPIF                           R3 ; [+7]
       49 JUMPIFNOTEQKS                    R1 K2 [""] ; [+3]
       51 LOADNIL                          R6
       52 RETURN                           R6 1
       53 GETUPVAL                         R6 2
       54 GETTABLEKS                       R3 R6 K7 ["TextSchema"]
       56 JUMPIFNOT                        R4 ; [+17]
       57 GETUPVAL                         R6 2
       58 GETTABLEKS                       R6 R6 K8 ["getPossiblePropertyTypes"]
       60 MOVE                             R7 R1
       61 CALL                             R6 1 1
       62 GETUPVAL                         R7 4
       63 GETUPVAL                         R8 2
       64 GETTABLEKS                       R8 R8 K9 ["TokenReferenceSchema"]
       66 DUPTABLE                         R9 K12 [{"Instance", "ExpectedTypes"}]
       67 GETUPVAL                         R10 5
       68 SETTABLEKS                       R10 R9 K10 ["Instance"]
       70 SETTABLEKS                       R6 R9 K11 ["ExpectedTypes"]
       72 CALL                             R7 2 1
       73 MOVE                             R3 R7
       74 GETUPVAL                         R6 6
       75 GETTABLEKS                       R6 R6 K13 ["createItemId"]
       77 GETUPVAL                         R7 5
       78 MOVE                             R8 R1
       79 CALL                             R6 2 1
       80 LOADNIL                          R7
       81 GETTABLEKS                       R8 R3 K14 ["Validate"]
       83 MOVE                             R9 R2
       84 CALL                             R8 1 1
       85 JUMPIF                           R8 ; [+41]
       86 MOVE                             R8 R5
       87 JUMPIF                           R8 ; [+3]
       88 GETUPVAL                         R8 2
       89 GETTABLEKS                       R8 R8 K7 ["TextSchema"]
       91 DUPTABLE                         R9 K19 [{"Actions", "Schema", "Value", "ErrorMessage"}]
       92 GETUPVAL                         R10 7
       93 GETTABLEKS                       R10 R10 K20 ["MoreAction"]
       95 SETTABLEKS                       R10 R9 K15 ["Actions"]
       97 GETUPVAL                         R10 4
       98 MOVE                             R11 R8
       99 DUPTABLE                         R12 K23 [{["ErrorStyle"] = "PropertyCellError"}]
      100 CALL                             R10 2 1
      101 SETTABLEKS                       R10 R9 K16 ["Schema"]
      103 GETTABLEKS                       R11 R8 K14 ["Validate"]
      105 MOVE                             R12 R2
      106 CALL                             R11 1 1
      107 JUMPIFNOT                        R11 ; [+2]
      108 MOVE                             R10 R2
      109 JUMP                             ; [+5]
      110 FASTCALL1                        TOSTRING R2 ; [+3]
      111 MOVE                             R11 R2
      112 GETIMPORT                        R10 K25 [tostring]
      114 CALL                             R10 1 1
      115 SETTABLEKS                       R10 R9 K17 ["Value"]
      117 GETUPVAL                         R10 8
      118 LOADK                            R12 K26 ["Label"]
      119 LOADK                            R13 K27 ["ValueErrorIncorrectType"]
      120 NAMECALL                         R10 R10 K28 ["getText"]
      122 CALL                             R10 3 1
      123 SETTABLEKS                       R10 R9 K18 ["ErrorMessage"]
      125 MOVE                             R7 R9
      126 JUMP                             ; [+11]
      127 DUPTABLE                         R8 K29 [{"Actions", "Schema", "Value"}]
      128 GETUPVAL                         R9 7
      129 GETTABLEKS                       R9 R9 K20 ["MoreAction"]
      131 SETTABLEKS                       R9 R8 K15 ["Actions"]
      133 SETTABLEKS                       R3 R8 K16 ["Schema"]
      135 SETTABLEKS                       R2 R8 K17 ["Value"]
      137 MOVE                             R7 R8
      138 DUPTABLE                         R8 K33 [{"Id", "Name", "Value", "Children"}]
      139 SETTABLEKS                       R6 R8 K30 ["Id"]
      141 DUPTABLE                         R9 K34 [{"Schema", "Value"}]
      142 GETUPVAL                         R10 4
      143 GETUPVAL                         R11 2
      144 GETTABLEKS                       R11 R11 K35 ["PropertyNameSchema"]
      146 DUPTABLE                         R12 K37 [{"StyleRuleInfo"}]
      147 GETUPVAL                         R13 9
      148 SETTABLEKS                       R13 R12 K36 ["StyleRuleInfo"]
      150 CALL                             R10 2 1
      151 SETTABLEKS                       R10 R9 K16 ["Schema"]
      153 SETTABLEKS                       R1 R9 K17 ["Value"]
      155 SETTABLEKS                       R9 R8 K31 ["Name"]
      157 SETTABLEKS                       R7 R8 K17 ["Value"]
      159 GETTABLEKS                       R10 R3 K14 ["Validate"]
      161 MOVE                             R11 R2
      162 CALL                             R10 1 1
      163 JUMPIFNOT                        R10 ; [+9]
      164 GETTABLEKS                       R10 R3 K38 ["GetChildren"]
      166 JUMPIFNOT                        R10 ; [+6]
      167 GETTABLEKS                       R9 R3 K38 ["GetChildren"]
      169 MOVE                             R10 R2
      170 MOVE                             R11 R6
      171 CALL                             R9 2 1
      172 JUMP                             ; [+2]
      173 NEWTABLE                         R9 0 0
      175 SETTABLEKS                       R9 R8 K32 ["Children"]
      177 RETURN                           R8 1

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
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U6
       28 CAPTURE                          VAL R1
       29 CAPTURE                          UPVAL U7
       30 CAPTURE                          UPVAL U8
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R6
       33 CALL                             R7 2 1
       34 MOVE                             R9 R7
       35 GETUPVAL                         R10 9
       36 GETTABLEKS                       R10 R10 K6 ["_buildEmptyRow"]
       38 MOVE                             R11 R0
       39 MOVE                             R12 R6
       40 CALL                             R10 2 -1
       41 FASTCALL                         TABLE_INSERT ; [+2]
       42 GETIMPORT                        R8 K8 [table.insert]
       44 CALL                             R8 -1 0
       45 RETURN                           R7 1

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
       43 GETTABLEKS                       R5 R5 K12 ["getFFlagStyleQuery"]
       45 CALL                             R4 1 1
       46 CALL                             R4 0 1
       47 GETIMPORT                        R5 K4 [require]
       49 GETTABLEKS                       R6 R0 K7 ["Packages"]
       51 GETTABLEKS                       R6 R6 K13 ["Dash"]
       53 CALL                             R5 1 1
       54 GETTABLEKS                       R6 R5 K14 ["append"]
       56 GETTABLEKS                       R7 R5 K15 ["collectArray"]
       58 GETTABLEKS                       R8 R5 K16 ["join"]
       60 GETTABLEKS                       R9 R5 K17 ["keys"]
       62 GETTABLEKS                       R10 R5 K18 ["map"]
       64 GETIMPORT                        R11 K4 [require]
       66 GETTABLEKS                       R12 R0 K10 ["Src"]
       68 GETTABLEKS                       R12 R12 K5 ["Util"]
       70 GETTABLEKS                       R12 R12 K19 ["MenuHelpers"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K4 [require]
       75 GETTABLEKS                       R13 R0 K10 ["Src"]
       77 GETTABLEKS                       R13 R13 K5 ["Util"]
       79 GETTABLEKS                       R13 R13 K20 ["SelectorHelpers"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K4 [require]
       84 GETTABLEKS                       R14 R0 K10 ["Src"]
       86 GETTABLEKS                       R14 R14 K5 ["Util"]
       88 GETTABLEKS                       R14 R14 K21 ["StyleQueryHelpers"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K4 [require]
       93 GETTABLEKS                       R15 R0 K10 ["Src"]
       95 GETTABLEKS                       R15 R15 K5 ["Util"]
       97 GETTABLEKS                       R15 R15 K22 ["StyleRuleHelpers"]
       99 CALL                             R14 1 1
      100 GETIMPORT                        R15 K4 [require]
      102 GETTABLEKS                       R16 R0 K10 ["Src"]
      104 GETTABLEKS                       R16 R16 K5 ["Util"]
      106 GETTABLEKS                       R16 R16 K23 ["StyleSchema"]
      108 CALL                             R15 1 1
      109 GETIMPORT                        R16 K4 [require]
      111 GETTABLEKS                       R17 R0 K10 ["Src"]
      113 GETTABLEKS                       R17 R17 K5 ["Util"]
      115 GETTABLEKS                       R17 R17 K24 ["Styling"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K4 [require]
      120 GETTABLEKS                       R18 R0 K10 ["Src"]
      122 GETTABLEKS                       R18 R18 K5 ["Util"]
      124 GETTABLEKS                       R18 R18 K25 ["TokenHelpers"]
      126 CALL                             R17 1 1
      127 GETIMPORT                        R18 K4 [require]
      129 GETTABLEKS                       R19 R0 K10 ["Src"]
      131 GETTABLEKS                       R19 R19 K5 ["Util"]
      133 GETTABLEKS                       R19 R19 K26 ["TreeTableHelpers"]
      135 CALL                             R18 1 1
      136 GETIMPORT                        R19 K4 [require]
      138 GETTABLEKS                       R20 R0 K10 ["Src"]
      140 GETTABLEKS                       R20 R20 K11 ["Flags"]
      142 GETTABLEKS                       R20 R20 K27 ["getFFlagStyleEditorSupportTransitions"]
      144 CALL                             R19 1 1
      145 CALL                             R19 0 1
      146 GETIMPORT                        R20 K4 [require]
      148 GETTABLEKS                       R21 R0 K10 ["Src"]
      150 GETTABLEKS                       R21 R21 K28 ["Types"]
      152 CALL                             R20 1 1
      153 NEWTABLE                         R21 32 0
      155 NEWTABLE                         R22 0 2
      157 DUPTABLE                         R23 K32 [{["Name"] = "Name", ["Key"] = "Name", ["Width"]}]
      158 GETIMPORT                        R24 K35 [UDim.new]
      160 LOADK                            R25 K36 [0.5]
      161 LOADN                            R26 0
      162 CALL                             R24 2 1
      163 SETTABLEKS                       R24 R23 K31 ["Width"]
      165 DUPTABLE                         R24 K38 [{["Name"] = "Value", ["Key"] = "Value", ["Width"]}]
      166 GETIMPORT                        R25 K35 [UDim.new]
      168 LOADK                            R26 K36 [0.5]
      169 LOADN                            R27 0
      170 CALL                             R25 2 1
      171 SETTABLEKS                       R25 R24 K31 ["Width"]
      173 SETLIST                          R22 R23 2 [1]
      175 SETTABLEKS                       R22 R21 K39 ["Columns"]
      177 LOADN                            R22 1
      178 SETTABLEKS                       R22 R21 K40 ["NAME_COLUMN_INDEX"]
      180 LOADN                            R22 2
      181 SETTABLEKS                       R22 R21 K41 ["VALUE_COLUMN_INDEX"]
      183 DUPCLOSURE                       R22 K42 [PROTO_0]
      184 SETTABLEKS                       R22 R21 K43 ["getItemChildren"]
      186 DUPCLOSURE                       R22 K44 [PROTO_1]
      187 SETTABLEKS                       R22 R21 K45 ["getItemId"]
      189 GETTABLEKS                       R22 R3 K34 ["new"]
      191 DUPTABLE                         R23 K48 [{"getChildren", "getId"}]
      192 GETTABLEKS                       R24 R21 K43 ["getItemChildren"]
      194 SETTABLEKS                       R24 R23 K46 ["getChildren"]
      196 GETTABLEKS                       R24 R21 K45 ["getItemId"]
      198 SETTABLEKS                       R24 R23 K47 ["getId"]
      200 CALL                             R22 1 1
      201 SETTABLEKS                       R22 R21 K9 ["EditTree"]
      203 DUPCLOSURE                       R23 K49 [PROTO_3]
      204 CAPTURE                          VAL R4
      205 CAPTURE                          VAL R14
      206 CAPTURE                          VAL R13
      207 CAPTURE                          VAL R21
      208 CAPTURE                          VAL R10
      209 SETTABLEKS                       R23 R21 K50 ["_getChildRows"]
      211 DUPCLOSURE                       R23 K51 [PROTO_4]
      212 CAPTURE                          VAL R18
      213 CAPTURE                          VAL R21
      214 CAPTURE                          VAL R19
      215 CAPTURE                          VAL R15
      216 CAPTURE                          VAL R11
      217 SETTABLEKS                       R23 R21 K52 ["_buildFolderRow"]
      219 DUPCLOSURE                       R23 K53 [PROTO_5]
      220 CAPTURE                          VAL R18
      221 CAPTURE                          VAL R21
      222 CAPTURE                          VAL R4
      223 CAPTURE                          VAL R13
      224 CAPTURE                          VAL R19
      225 CAPTURE                          VAL R11
      226 CAPTURE                          VAL R15
      227 CAPTURE                          VAL R6
      228 SETTABLEKS                       R23 R21 K54 ["_buildStyleRule"]
      230 DUPCLOSURE                       R23 K55 [PROTO_6]
      231 CAPTURE                          VAL R18
      232 CAPTURE                          VAL R19
      233 CAPTURE                          VAL R8
      234 CAPTURE                          VAL R15
      235 CAPTURE                          VAL R11
      236 SETTABLEKS                       R23 R21 K56 ["_buildEmptyRow"]
      238 DUPCLOSURE                       R23 K57 [PROTO_7]
      239 SETTABLEKS                       R23 R21 K58 ["_attachRowMetadata"]
      241 DUPCLOSURE                       R23 K59 [PROTO_9]
      242 CAPTURE                          VAL R1
      243 CAPTURE                          VAL R9
      244 CAPTURE                          VAL R16
      245 CAPTURE                          VAL R12
      246 CAPTURE                          VAL R7
      247 CAPTURE                          VAL R18
      248 CAPTURE                          VAL R17
      249 CAPTURE                          VAL R15
      250 CAPTURE                          VAL R8
      251 CAPTURE                          VAL R11
      252 CAPTURE                          VAL R21
      253 SETTABLEKS                       R23 R21 K60 ["_buildProperties"]
      255 DUPCLOSURE                       R23 K61 [PROTO_11]
      256 CAPTURE                          VAL R12
      257 CAPTURE                          VAL R9
      258 CAPTURE                          VAL R16
      259 CAPTURE                          VAL R7
      260 CAPTURE                          VAL R17
      261 CAPTURE                          VAL R15
      262 CAPTURE                          VAL R8
      263 CAPTURE                          VAL R18
      264 CAPTURE                          VAL R11
      265 CAPTURE                          VAL R21
      266 SETTABLEKS                       R23 R21 K62 ["_DEPRECATED_buildProperties"]
      268 DUPCLOSURE                       R23 K63 [PROTO_12]
      269 CAPTURE                          VAL R21
      270 SETTABLEKS                       R23 R21 K64 ["_buildInstance"]
      272 DUPCLOSURE                       R23 K65 [PROTO_13]
      273 CAPTURE                          VAL R21
      274 CAPTURE                          VAL R22
      275 SETTABLEKS                       R23 R21 K66 ["DEPRECATED_buildItems"]
      277 DUPCLOSURE                       R23 K67 [PROTO_14]
      278 CAPTURE                          VAL R4
      279 CAPTURE                          VAL R21
      280 CAPTURE                          VAL R22
      281 SETTABLEKS                       R23 R21 K68 ["buildItems"]
      283 DUPCLOSURE                       R23 K69 [PROTO_15]
      284 CAPTURE                          VAL R21
      285 SETTABLEKS                       R23 R21 K70 ["expandNewRows"]
      287 RETURN                           R21 1
