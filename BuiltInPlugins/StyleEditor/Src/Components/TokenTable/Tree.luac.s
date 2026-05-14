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
        9 DUPTABLE                         R3 K8 [{"Schema", "Value"}]
       10 GETUPVAL                         R4 1
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K9 ["TextSchema"]
       14 DUPTABLE                         R6 K11 [{"PlaceholderText"}]
       15 LOADK                            R7 K12 ["Add a Token..."]
       16 SETTABLEKS                       R7 R6 K10 ["PlaceholderText"]
       18 CALL                             R4 2 1
       19 SETTABLEKS                       R4 R3 K7 ["Schema"]
       21 LOADK                            R4 K13 [""]
       22 SETTABLEKS                       R4 R3 K2 ["Value"]
       24 SETTABLEKS                       R3 R2 K1 ["Name"]
       26 DUPTABLE                         R3 K15 [{"Actions", "Schema", "Value"}]
       27 GETUPVAL                         R4 3
       28 GETTABLEKS                       R4 R4 K16 ["MoreAction"]
       30 SETTABLEKS                       R4 R3 K14 ["Actions"]
       32 GETUPVAL                         R4 2
       33 GETTABLEKS                       R4 R4 K17 ["SelectTokenSchema"]
       35 SETTABLEKS                       R4 R3 K7 ["Schema"]
       37 ORK                              R4 R1 K13 [""]
       38 SETTABLEKS                       R4 R3 K2 ["Value"]
       40 SETTABLEKS                       R3 R2 K2 ["Value"]
       42 NEWTABLE                         R3 0 0
       44 SETTABLEKS                       R3 R2 K3 ["Children"]
       46 RETURN                           R2 1

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
       16 JUMPIFNOTEQKS                    R4 K4 ["string"] ; [+24]
       18 LOADN                            R6 1
       19 LOADN                            R7 1
       20 NAMECALL                         R4 R2 K5 ["sub"]
       22 CALL                             R4 3 1
       23 JUMPIFNOTEQKS                    R4 K6 ["$"] ; [+17]
       25 GETUPVAL                         R4 2
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K7 ["TokenReferenceSchema"]
       29 DUPTABLE                         R6 K11 [{"Instance", "ExpectedTypes", "HideSelfTokens"}]
       30 GETUPVAL                         R7 3
       31 SETTABLEKS                       R7 R6 K8 ["Instance"]
       33 LOADNIL                          R7
       34 SETTABLEKS                       R7 R6 K9 ["ExpectedTypes"]
       36 LOADB                            R7 1
       37 SETTABLEKS                       R7 R6 K10 ["HideSelfTokens"]
       39 CALL                             R4 2 1
       40 MOVE                             R3 R4
       41 GETTABLEKS                       R4 R3 K12 ["Validate"]
       43 MOVE                             R5 R2
       44 CALL                             R4 1 1
       45 JUMPIF                           R4 ; [+2]
       46 LOADNIL                          R4
       47 RETURN                           R4 1
       48 GETUPVAL                         R5 4
       49 JUMPIFNOT                        R5 ; [+8]
       50 JUMPIFNOTEQKNIL                  R2 ; [+5]
       52 GETTABLEKS                       R4 R3 K13 ["GetDefaultValue"]
       54 CALL                             R4 0 1
       55 JUMP                             ; [+3]
       56 MOVE                             R4 R2
       57 JUMP                             ; [+1]
       58 ORK                              R4 R2 K14 [""]
       59 GETUPVAL                         R5 5
       60 GETTABLEKS                       R5 R5 K15 ["createItemId"]
       62 GETUPVAL                         R6 3
       63 MOVE                             R7 R1
       64 CALL                             R5 2 1
       65 DUPTABLE                         R6 K20 [{"Id", "Name", "Value", "Children"}]
       66 SETTABLEKS                       R5 R6 K16 ["Id"]
       68 DUPTABLE                         R7 K22 [{"Schema", "Value"}]
       69 GETUPVAL                         R8 1
       70 GETTABLEKS                       R8 R8 K23 ["TextSchema"]
       72 SETTABLEKS                       R8 R7 K21 ["Schema"]
       74 SETTABLEKS                       R1 R7 K18 ["Value"]
       76 SETTABLEKS                       R7 R6 K17 ["Name"]
       78 DUPTABLE                         R7 K25 [{"Actions", "Schema", "Value"}]
       79 GETUPVAL                         R8 6
       80 GETTABLEKS                       R8 R8 K26 ["MoreAction"]
       82 SETTABLEKS                       R8 R7 K24 ["Actions"]
       84 SETTABLEKS                       R3 R7 K21 ["Schema"]
       86 SETTABLEKS                       R4 R7 K18 ["Value"]
       88 SETTABLEKS                       R7 R6 K18 ["Value"]
       90 GETTABLEKS                       R8 R3 K27 ["GetChildren"]
       92 JUMPIFNOT                        R8 ; [+6]
       93 GETTABLEKS                       R7 R3 K27 ["GetChildren"]
       95 MOVE                             R8 R2
       96 MOVE                             R9 R5
       97 CALL                             R7 2 1
       98 JUMP                             ; [+1]
       99 LOADNIL                          R7
      100 SETTABLEKS                       R7 R6 K19 ["Children"]
      102 RETURN                           R6 1

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
       17 DUPTABLE                         R6 K13 [{"Actions", "FullSpan", "OnClick", "Schema", "Selected", "Value"}]
       18 JUMPIFEQKNIL                     R1 ; [+3]
       20 LOADNIL                          R7
       21 JUMP                             ; [+3]
       22 GETUPVAL                         R7 2
       23 GETTABLEKS                       R7 R7 K14 ["MoreAction"]
       25 SETTABLEKS                       R7 R6 K7 ["Actions"]
       27 LOADB                            R7 1
       28 SETTABLEKS                       R7 R6 K8 ["FullSpan"]
       30 SETTABLEKS                       R2 R6 K9 ["OnClick"]
       32 SETTABLEKS                       R4 R6 K10 ["Schema"]
       34 SETTABLEKS                       R1 R6 K11 ["Selected"]
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R8 R8 K0 ["ThemeSchema"]
       39 JUMPIFNOTEQ                      R4 R8 ; [+3]
       41 MOVE                             R7 R0
       42 JUMP                             ; [+2]
       43 GETTABLEKS                       R7 R0 K3 ["Name"]
       45 SETTABLEKS                       R7 R6 K12 ["Value"]
       47 SETTABLEKS                       R6 R5 K3 ["Name"]
       49 JUMPIFNOT                        R0 ; [+6]
       50 GETUPVAL                         R6 3
       51 GETTABLEKS                       R6 R6 K15 ["_buildTokens"]
       53 MOVE                             R7 R0
       54 CALL                             R6 1 1
       55 JUMP                             ; [+2]
       56 NEWTABLE                         R6 0 0
       58 SETTABLEKS                       R6 R5 K4 ["Children"]
       60 GETTABLEKS                       R7 R5 K4 ["Children"]
       62 GETUPVAL                         R8 3
       63 GETTABLEKS                       R8 R8 K16 ["_buildEmptyRow"]
       65 MOVE                             R9 R0
       66 MOVE                             R10 R3
       67 CALL                             R8 2 -1
       68 FASTCALL                         TABLE_INSERT ; [+2]
       69 GETIMPORT                        R6 K19 [table.insert]
       71 CALL                             R6 -1 0
       72 NEWTABLE                         R6 0 1
       74 MOVE                             R7 R5
       75 SETLIST                          R6 R7 1 [1]
       77 GETUPVAL                         R7 4
       78 MOVE                             R9 R6
       79 NAMECALL                         R7 R7 K20 ["updatePaths"]
       81 CALL                             R7 2 -1
       82 RETURN                           R7 -1

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
       80 DUPTABLE                         R14 K25 [{"Name", "Key", "Width"}]
       81 LOADK                            R15 K22 ["Name"]
       82 SETTABLEKS                       R15 R14 K22 ["Name"]
       84 LOADK                            R15 K22 ["Name"]
       85 SETTABLEKS                       R15 R14 K23 ["Key"]
       87 GETIMPORT                        R15 K28 [UDim.new]
       89 LOADK                            R16 K29 [0.5]
       90 LOADN                            R17 0
       91 CALL                             R15 2 1
       92 SETTABLEKS                       R15 R14 K24 ["Width"]
       94 DUPTABLE                         R15 K25 [{"Name", "Key", "Width"}]
       95 LOADK                            R16 K30 ["Value"]
       96 SETTABLEKS                       R16 R15 K22 ["Name"]
       98 LOADK                            R16 K30 ["Value"]
       99 SETTABLEKS                       R16 R15 K23 ["Key"]
      101 GETIMPORT                        R16 K28 [UDim.new]
      103 LOADK                            R17 K29 [0.5]
      104 LOADN                            R18 0
      105 CALL                             R16 2 1
      106 SETTABLEKS                       R16 R15 K24 ["Width"]
      108 SETLIST                          R13 R14 2 [1]
      110 SETTABLEKS                       R13 R12 K31 ["Columns"]
      112 LOADN                            R13 1
      113 SETTABLEKS                       R13 R12 K32 ["NAME_COLUMN_INDEX"]
      115 LOADN                            R13 2
      116 SETTABLEKS                       R13 R12 K33 ["VALUE_COLUMN_INDEX"]
      118 DUPCLOSURE                       R13 K34 [PROTO_0]
      119 SETTABLEKS                       R13 R12 K35 ["getItemChildren"]
      121 DUPCLOSURE                       R13 K36 [PROTO_1]
      122 SETTABLEKS                       R13 R12 K37 ["getItemId"]
      124 GETTABLEKS                       R13 R2 K27 ["new"]
      126 DUPTABLE                         R14 K40 [{"getChildren", "getId"}]
      127 GETTABLEKS                       R15 R12 K35 ["getItemChildren"]
      129 SETTABLEKS                       R15 R14 K38 ["getChildren"]
      131 GETTABLEKS                       R15 R12 K37 ["getItemId"]
      133 SETTABLEKS                       R15 R14 K39 ["getId"]
      135 CALL                             R13 1 1
      136 SETTABLEKS                       R13 R12 K8 ["EditTree"]
      138 DUPCLOSURE                       R14 K41 [PROTO_2]
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R8
      143 SETTABLEKS                       R14 R12 K42 ["_buildEmptyRow"]
      145 DUPCLOSURE                       R14 K43 [PROTO_4]
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R9
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R10
      152 CAPTURE                          VAL R8
      153 SETTABLEKS                       R14 R12 K44 ["_buildTokens"]
      155 DUPCLOSURE                       R14 K45 [PROTO_5]
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R12
      160 CAPTURE                          VAL R13
      161 SETTABLEKS                       R14 R12 K46 ["buildTree"]
      163 RETURN                           R12 1
