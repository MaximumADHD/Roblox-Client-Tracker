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
        0 DUPTABLE                         R2 K4 [{"Id", "Name", "Value", "Children"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K5 ["createItemId"]
        4 MOVE                             R4 R0
        5 LOADK                            R5 K6 ["@Empty"]
        6 CALL                             R3 2 1
        7 SETTABLEKS                       R3 R2 K0 ["Id"]
        9 DUPTABLE                         R3 K9 [{["Schema"], ["Value"] = ""}]
       10 GETUPVAL                         R4 1
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K10 ["TextSchema"]
       14 DUPTABLE                         R6 K13 [{["PlaceholderText"] = "Add a Token..."}]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R3 K7 ["Schema"]
       18 SETTABLEKS                       R3 R2 K1 ["Name"]
       20 DUPTABLE                         R3 K15 [{"Actions", "Schema", "Value"}]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K16 ["MoreAction"]
       24 SETTABLEKS                       R4 R3 K14 ["Actions"]
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K17 ["SelectTokenSchema"]
       29 SETTABLEKS                       R4 R3 K7 ["Schema"]
       31 ORK                              R4 R1 K8 [""]
       32 SETTABLEKS                       R4 R3 K2 ["Value"]
       34 SETTABLEKS                       R3 R2 K2 ["Value"]
       36 NEWTABLE                         R3 0 0
       38 SETTABLEKS                       R3 R2 K3 ["Children"]
       40 RETURN                           R2 1

PROTO_3:
        0 JUMPIFNOTEQKS                    R1 K0 ["StyleCategory"] ; [+3]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETUPVAL                         R3 0
        5 GETTABLE                         R2 R3 R1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["getAttributeSchema"]
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 FASTCALL1                        TYPEOF R2 ; [+3]
       12 MOVE                             R5 R2
       13 GETIMPORT                        R4 K3 [typeof]
       15 CALL                             R4 1 1
       16 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+18]
       18 LOADN                            R6 1
       19 LOADN                            R7 1
       20 NAMECALL                         R4 R2 K5 ["sub"]
       22 CALL                             R4 3 1
       23 JUMPIFNOTEQKS                    R4 K6 ["$"] ; [+11]
       25 GETUPVAL                         R4 2
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K7 ["TokenReferenceSchema"]
       29 DUPTABLE                         R6 K13 [{["Instance"], ["ExpectedTypes"] = , ["HideSelfTokens"] = True}]
       30 GETUPVAL                         R7 3
       31 SETTABLEKS                       R7 R6 K8 ["Instance"]
       33 CALL                             R4 2 1
       34 MOVE                             R3 R4
       35 GETTABLEKS                       R4 R3 K14 ["Validate"]
       37 MOVE                             R5 R2
       38 CALL                             R4 1 1
       39 JUMPIF                           R4 ; [+2]
       40 LOADNIL                          R4
       41 RETURN                           R4 1
       42 GETUPVAL                         R5 4
       43 JUMPIFNOT                        R5 ; [+8]
       44 JUMPIFNOTEQKNIL                  R2 ; [+5]
       46 GETTABLEKS                       R4 R3 K15 ["GetDefaultValue"]
       48 CALL                             R4 0 1
       49 JUMP                             ; [+3]
       50 MOVE                             R4 R2
       51 JUMP                             ; [+1]
       52 ORK                              R4 R2 K16 [""]
       53 GETUPVAL                         R5 5
       54 GETTABLEKS                       R5 R5 K17 ["createItemId"]
       56 GETUPVAL                         R6 3
       57 MOVE                             R7 R1
       58 CALL                             R5 2 1
       59 DUPTABLE                         R6 K22 [{"Id", "Name", "Value", "Children"}]
       60 SETTABLEKS                       R5 R6 K18 ["Id"]
       62 DUPTABLE                         R7 K24 [{"Schema", "Value"}]
       63 GETUPVAL                         R8 1
       64 GETTABLEKS                       R8 R8 K25 ["TextSchema"]
       66 SETTABLEKS                       R8 R7 K23 ["Schema"]
       68 SETTABLEKS                       R1 R7 K20 ["Value"]
       70 SETTABLEKS                       R7 R6 K19 ["Name"]
       72 DUPTABLE                         R7 K27 [{"Actions", "Schema", "Value"}]
       73 GETUPVAL                         R8 6
       74 GETTABLEKS                       R8 R8 K28 ["MoreAction"]
       76 SETTABLEKS                       R8 R7 K26 ["Actions"]
       78 SETTABLEKS                       R3 R7 K23 ["Schema"]
       80 SETTABLEKS                       R4 R7 K20 ["Value"]
       82 SETTABLEKS                       R7 R6 K20 ["Value"]
       84 GETTABLEKS                       R8 R3 K29 ["GetChildren"]
       86 JUMPIFNOT                        R8 ; [+6]
       87 GETTABLEKS                       R7 R3 K29 ["GetChildren"]
       89 MOVE                             R8 R2
       90 MOVE                             R9 R5
       91 CALL                             R7 2 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R7
       94 SETTABLEKS                       R7 R6 K21 ["Children"]
       96 RETURN                           R6 1

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["GetAttributes"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 0
        4 MOVE                             R3 R1
        5 CALL                             R2 1 1
        6 GETIMPORT                        R3 K3 [table.sort]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 0
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R2
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          UPVAL U5
       19 CAPTURE                          UPVAL U6
       20 CALL                             R3 2 1
       21 RETURN                           R3 1

PROTO_5:
        0 JUMPIFEQKNIL                     R1 ; [+5]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K0 ["ThemeSchema"]
        5 JUMP                             ; [+3]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["SelectorSchema"]
        9 DUPTABLE                         R5 K5 [{"Id", "Name", "Children"}]
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K6 ["createItemId"]
       13 MOVE                             R7 R0
       14 CALL                             R6 1 1
       15 SETTABLEKS                       R6 R5 K2 ["Id"]
       17 DUPTABLE                         R6 K14 [{["Actions"], ["FullSpan"] = True, ["OnClick"], ["Schema"], ["Selected"], ["Value"]}]
       18 JUMPIFEQKNIL                     R1 ; [+3]
       20 LOADNIL                          R7
       21 JUMP                             ; [+3]
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K15 ["MoreAction"]
       25 SETTABLEKS                       R7 R6 K7 ["Actions"]
       27 SETTABLEKS                       R2 R6 K10 ["OnClick"]
       29 SETTABLEKS                       R4 R6 K11 ["Schema"]
       31 SETTABLEKS                       R1 R6 K12 ["Selected"]
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K0 ["ThemeSchema"]
       36 JUMPIFNOTEQ                      R4 R8 ; [+3]
       38 MOVE                             R7 R0
       39 JUMP                             ; [+2]
       40 GETTABLEKS                       R7 R0 K3 ["Name"]
       42 SETTABLEKS                       R7 R6 K13 ["Value"]
       44 SETTABLEKS                       R6 R5 K3 ["Name"]
       46 JUMPIFNOT                        R0 ; [+6]
       47 GETUPVAL                         R6 3
       48 GETTABLEKS                       R6 R6 K16 ["_buildTokens"]
       50 MOVE                             R7 R0
       51 CALL                             R6 1 1
       52 JUMP                             ; [+2]
       53 NEWTABLE                         R6 0 0
       55 SETTABLEKS                       R6 R5 K4 ["Children"]
       57 GETTABLEKS                       R7 R5 K4 ["Children"]
       59 GETUPVAL                         R8 3
       60 GETTABLEKS                       R8 R8 K17 ["_buildEmptyRow"]
       62 MOVE                             R9 R0
       63 MOVE                             R10 R3
       64 CALL                             R8 2 -1
       65 FASTCALL                         TABLE_INSERT ; [+2]
       66 GETIMPORT                        R6 K20 [table.insert]
       68 CALL                             R6 -1 0
       69 NEWTABLE                         R6 0 1
       71 MOVE                             R7 R5
       72 SETLIST                          R6 R7 1 [1]
       74 GETUPVAL                         R7 4
       75 MOVE                             R9 R6
       76 NAMECALL                         R7 R7 K21 ["updatePaths"]
       78 CALL                             R7 2 -1
       79 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Util"]
       20 GETTABLEKS                       R2 R2 K8 ["EditTree"]
       22 GETIMPORT                        R3 K10 [game]
       24 LOADK                            R5 K11 ["StyleEditorFixBoolToken"]
       25 LOADB                            R6 0
       26 NAMECALL                         R3 R3 K12 ["DefineFastFlag"]
       28 CALL                             R3 3 1
       29 GETIMPORT                        R4 K4 [require]
       31 GETTABLEKS                       R5 R0 K5 ["Packages"]
       33 GETTABLEKS                       R5 R5 K13 ["Dash"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K14 ["collectArray"]
       38 GETTABLEKS                       R6 R4 K15 ["keys"]
       40 GETTABLEKS                       R7 R4 K16 ["join"]
       42 GETIMPORT                        R8 K4 [require]
       44 GETTABLEKS                       R9 R0 K17 ["Src"]
       46 GETTABLEKS                       R9 R9 K7 ["Util"]
       48 GETTABLEKS                       R9 R9 K18 ["MenuHelpers"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K4 [require]
       53 GETTABLEKS                       R10 R0 K17 ["Src"]
       55 GETTABLEKS                       R10 R10 K7 ["Util"]
       57 GETTABLEKS                       R10 R10 K19 ["StyleSchema"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K4 [require]
       62 GETTABLEKS                       R11 R0 K17 ["Src"]
       64 GETTABLEKS                       R11 R11 K7 ["Util"]
       66 GETTABLEKS                       R11 R11 K20 ["TreeTableHelpers"]
       68 CALL                             R10 1 1
       69 GETIMPORT                        R11 K4 [require]
       71 GETTABLEKS                       R12 R0 K17 ["Src"]
       73 GETTABLEKS                       R12 R12 K21 ["Types"]
       75 CALL                             R11 1 1
       76 NEWTABLE                         R12 16 0
       78 NEWTABLE                         R13 0 2
       80 DUPTABLE                         R14 K25 [{["Name"] = "Name", ["Key"] = "Name", ["Width"]}]
       81 GETIMPORT                        R15 K28 [UDim.new]
       83 LOADK                            R16 K29 [0.5]
       84 LOADN                            R17 0
       85 CALL                             R15 2 1
       86 SETTABLEKS                       R15 R14 K24 ["Width"]
       88 DUPTABLE                         R15 K31 [{["Name"] = "Value", ["Key"] = "Value", ["Width"]}]
       89 GETIMPORT                        R16 K28 [UDim.new]
       91 LOADK                            R17 K29 [0.5]
       92 LOADN                            R18 0
       93 CALL                             R16 2 1
       94 SETTABLEKS                       R16 R15 K24 ["Width"]
       96 SETLIST                          R13 R14 2 [1]
       98 SETTABLEKS                       R13 R12 K32 ["Columns"]
      100 LOADN                            R13 1
      101 SETTABLEKS                       R13 R12 K33 ["NAME_COLUMN_INDEX"]
      103 LOADN                            R13 2
      104 SETTABLEKS                       R13 R12 K34 ["VALUE_COLUMN_INDEX"]
      106 DUPCLOSURE                       R13 K35 [PROTO_0]
      107 SETTABLEKS                       R13 R12 K36 ["getItemChildren"]
      109 DUPCLOSURE                       R13 K37 [PROTO_1]
      110 SETTABLEKS                       R13 R12 K38 ["getItemId"]
      112 GETTABLEKS                       R13 R2 K27 ["new"]
      114 DUPTABLE                         R14 K41 [{"getChildren", "getId"}]
      115 GETTABLEKS                       R15 R12 K36 ["getItemChildren"]
      117 SETTABLEKS                       R15 R14 K39 ["getChildren"]
      119 GETTABLEKS                       R15 R12 K38 ["getItemId"]
      121 SETTABLEKS                       R15 R14 K40 ["getId"]
      123 CALL                             R13 1 1
      124 SETTABLEKS                       R13 R12 K8 ["EditTree"]
      126 DUPCLOSURE                       R14 K42 [PROTO_2]
      127 CAPTURE                          VAL R10
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R8
      131 SETTABLEKS                       R14 R12 K43 ["_buildEmptyRow"]
      133 DUPCLOSURE                       R14 K44 [PROTO_4]
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R8
      141 SETTABLEKS                       R14 R12 K45 ["_buildTokens"]
      143 DUPCLOSURE                       R14 K46 [PROTO_5]
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R12
      148 CAPTURE                          VAL R13
      149 SETTABLEKS                       R14 R12 K47 ["buildTree"]
      151 RETURN                           R12 1
