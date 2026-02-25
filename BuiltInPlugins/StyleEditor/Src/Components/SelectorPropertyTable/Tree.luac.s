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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createItemId"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R4 R5 K1 ["getOrderedStyleRules"]
        9 MOVE                             R5 R0
       10 CALL                             R4 1 1
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          UPVAL U3
       13 CAPTURE                          VAL R1
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R4 R0 K2 ["SelectorError"]
       17 GETUPVAL                         R5 4
       18 JUMPIF                           R5 ; [+14]
       19 JUMPIFNOTEQKS                    R4 K3 [""] ; [+13]
       21 GETUPVAL                         R6 5
       22 GETTABLEKS                       R5 R6 K4 ["DEPRECATED_isNestedPseudoInstance"]
       24 MOVE                             R6 R0
       25 CALL                             R5 1 1
       26 JUMPIFNOT                        R5 ; [+6]
       27 LOADK                            R7 K5 ["Label"]
       28 LOADK                            R8 K6 ["NestedPseudoInstanceError"]
       29 NAMECALL                         R5 R1 K7 ["getText"]
       31 CALL                             R5 3 1
       32 MOVE                             R4 R5
       33 DUPTABLE                         R5 K12 [{"Id", "Name", "Instance", "Children"}]
       34 SETTABLEKS                       R2 R5 K8 ["Id"]
       36 DUPTABLE                         R6 K18 [{"ErrorMessage", "FullSpan", "Actions", "Schema", "Value"}]
       37 SETTABLEKS                       R4 R6 K13 ["ErrorMessage"]
       39 LOADB                            R7 1
       40 SETTABLEKS                       R7 R6 K14 ["FullSpan"]
       42 GETUPVAL                         R8 6
       43 GETTABLEKS                       R7 R8 K19 ["FullSpanMoreAction"]
       45 SETTABLEKS                       R7 R6 K15 ["Actions"]
       47 GETUPVAL                         R8 7
       48 GETTABLEKS                       R7 R8 K20 ["SelectorSchema"]
       50 SETTABLEKS                       R7 R6 K16 ["Schema"]
       52 GETTABLEKS                       R7 R0 K21 ["Selector"]
       54 SETTABLEKS                       R7 R6 K17 ["Value"]
       56 SETTABLEKS                       R6 R5 K9 ["Name"]
       58 SETTABLEKS                       R0 R5 K10 ["Instance"]
       60 GETUPVAL                         R6 8
       61 GETUPVAL                         R8 3
       62 GETTABLEKS                       R7 R8 K22 ["_buildProperties"]
       64 MOVE                             R8 R2
       65 MOVE                             R9 R0
       66 CALL                             R7 2 1
       67 MOVE                             R8 R3
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R5 K11 ["Children"]
       71 RETURN                           R5 1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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
       34 GETTABLEKS                       R6 R0 K5 ["Packages"]
       36 GETTABLEKS                       R5 R6 K12 ["Dash"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K13 ["append"]
       41 GETTABLEKS                       R6 R4 K14 ["collectArray"]
       43 GETTABLEKS                       R7 R4 K15 ["join"]
       45 GETTABLEKS                       R8 R4 K16 ["keys"]
       47 GETTABLEKS                       R9 R4 K17 ["map"]
       49 GETIMPORT                        R10 K4 [require]
       51 GETTABLEKS                       R13 R0 K9 ["Src"]
       53 GETTABLEKS                       R12 R13 K7 ["Util"]
       55 GETTABLEKS                       R11 R12 K18 ["MenuHelpers"]
       57 CALL                             R10 1 1
       58 GETIMPORT                        R11 K4 [require]
       60 GETTABLEKS                       R14 R0 K9 ["Src"]
       62 GETTABLEKS                       R13 R14 K7 ["Util"]
       64 GETTABLEKS                       R12 R13 K19 ["SelectorHelpers"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K4 [require]
       69 GETTABLEKS                       R15 R0 K9 ["Src"]
       71 GETTABLEKS                       R14 R15 K7 ["Util"]
       73 GETTABLEKS                       R13 R14 K20 ["StyleRuleHelpers"]
       75 CALL                             R12 1 1
       76 GETIMPORT                        R13 K4 [require]
       78 GETTABLEKS                       R16 R0 K9 ["Src"]
       80 GETTABLEKS                       R15 R16 K7 ["Util"]
       82 GETTABLEKS                       R14 R15 K21 ["StyleSchema"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K4 [require]
       87 GETTABLEKS                       R17 R0 K9 ["Src"]
       89 GETTABLEKS                       R16 R17 K7 ["Util"]
       91 GETTABLEKS                       R15 R16 K22 ["Styling"]
       93 CALL                             R14 1 1
       94 GETIMPORT                        R15 K4 [require]
       96 GETTABLEKS                       R18 R0 K9 ["Src"]
       98 GETTABLEKS                       R17 R18 K7 ["Util"]
      100 GETTABLEKS                       R16 R17 K23 ["TokenHelpers"]
      102 CALL                             R15 1 1
      103 GETIMPORT                        R16 K4 [require]
      105 GETTABLEKS                       R19 R0 K9 ["Src"]
      107 GETTABLEKS                       R18 R19 K7 ["Util"]
      109 GETTABLEKS                       R17 R18 K24 ["TreeTableHelpers"]
      111 CALL                             R16 1 1
      112 GETIMPORT                        R17 K4 [require]
      114 GETTABLEKS                       R19 R0 K9 ["Src"]
      116 GETTABLEKS                       R18 R19 K25 ["Types"]
      118 CALL                             R17 1 1
      119 NEWTABLE                         R18 16 0
      121 NEWTABLE                         R19 0 2
      123 DUPTABLE                         R20 K29 [{"Name", "Key", "Width"}]
      124 LOADK                            R21 K26 ["Name"]
      125 SETTABLEKS                       R21 R20 K26 ["Name"]
      127 LOADK                            R21 K26 ["Name"]
      128 SETTABLEKS                       R21 R20 K27 ["Key"]
      130 GETIMPORT                        R21 K32 [UDim.new]
      132 LOADK                            R22 K33 [0.5]
      133 LOADN                            R23 0
      134 CALL                             R21 2 1
      135 SETTABLEKS                       R21 R20 K28 ["Width"]
      137 DUPTABLE                         R21 K29 [{"Name", "Key", "Width"}]
      138 LOADK                            R22 K34 ["Value"]
      139 SETTABLEKS                       R22 R21 K26 ["Name"]
      141 LOADK                            R22 K34 ["Value"]
      142 SETTABLEKS                       R22 R21 K27 ["Key"]
      144 GETIMPORT                        R22 K32 [UDim.new]
      146 LOADK                            R23 K33 [0.5]
      147 LOADN                            R24 0
      148 CALL                             R22 2 1
      149 SETTABLEKS                       R22 R21 K28 ["Width"]
      151 SETLIST                          R19 R20 2 [1]
      153 SETTABLEKS                       R19 R18 K35 ["Columns"]
      155 LOADN                            R19 1
      156 SETTABLEKS                       R19 R18 K36 ["NAME_COLUMN_INDEX"]
      158 LOADN                            R19 2
      159 SETTABLEKS                       R19 R18 K37 ["VALUE_COLUMN_INDEX"]
      161 DUPCLOSURE                       R19 K38 [PROTO_0]
      162 SETTABLEKS                       R19 R18 K39 ["getItemChildren"]
      164 DUPCLOSURE                       R19 K40 [PROTO_1]
      165 SETTABLEKS                       R19 R18 K41 ["getItemId"]
      167 GETTABLEKS                       R19 R2 K31 ["new"]
      169 DUPTABLE                         R20 K44 [{"getChildren", "getId"}]
      170 GETTABLEKS                       R21 R18 K39 ["getItemChildren"]
      172 SETTABLEKS                       R21 R20 K42 ["getChildren"]
      174 GETTABLEKS                       R21 R18 K41 ["getItemId"]
      176 SETTABLEKS                       R21 R20 K43 ["getId"]
      178 CALL                             R19 1 1
      179 SETTABLEKS                       R19 R18 K8 ["EditTree"]
      181 DUPCLOSURE                       R20 K45 [PROTO_3]
      182 CAPTURE                          VAL R16
      183 CAPTURE                          VAL R9
      184 CAPTURE                          VAL R12
      185 CAPTURE                          VAL R18
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R10
      189 CAPTURE                          VAL R13
      190 CAPTURE                          VAL R5
      191 SETTABLEKS                       R20 R18 K46 ["_buildStyleRule"]
      193 DUPCLOSURE                       R20 K47 [PROTO_4]
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R7
      196 CAPTURE                          VAL R13
      197 CAPTURE                          VAL R10
      198 SETTABLEKS                       R20 R18 K48 ["_buildEmptyRow"]
      200 DUPCLOSURE                       R20 K49 [PROTO_6]
      201 CAPTURE                          VAL R11
      202 CAPTURE                          VAL R8
      203 CAPTURE                          VAL R14
      204 CAPTURE                          VAL R6
      205 CAPTURE                          VAL R15
      206 CAPTURE                          VAL R13
      207 CAPTURE                          VAL R7
      208 CAPTURE                          VAL R16
      209 CAPTURE                          VAL R10
      210 CAPTURE                          VAL R18
      211 SETTABLEKS                       R20 R18 K50 ["_buildProperties"]
      213 DUPCLOSURE                       R20 K51 [PROTO_7]
      214 CAPTURE                          VAL R18
      215 CAPTURE                          VAL R19
      216 SETTABLEKS                       R20 R18 K52 ["buildItems"]
      218 DUPCLOSURE                       R20 K53 [PROTO_8]
      219 CAPTURE                          VAL R18
      220 SETTABLEKS                       R20 R18 K54 ["expandNewRows"]
      222 RETURN                           R18 1
