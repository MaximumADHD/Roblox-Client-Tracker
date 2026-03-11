PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["dispatch"]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"Schema"}]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K2 ["SelectorSchema"]
        5 DUPTABLE                         R4 K4 [{"Editing"}]
        6 LOADB                            R5 0
        7 SETTABLEKS                       R5 R4 K3 ["Editing"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K0 ["Schema"]
       12 GETUPVAL                         R2 2
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 GETUPVAL                         R7 3
       16 GETTABLEKS                       R6 R7 K5 ["path"]
       18 LOADN                            R7 1
       19 NAMECALL                         R2 R2 K6 ["updateCell"]
       21 CALL                             R2 5 -1
       22 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+76]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["getQueryTypeFromSelector"]
        5 GETTABLEKS                       R5 R1 K1 ["Instance"]
        7 GETTABLEKS                       R4 R5 K2 ["Selector"]
        9 CALL                             R3 1 1
       10 JUMPIFNOT                        R3 ; [+10]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K3 ["getDataFromSelector"]
       14 GETTABLEKS                       R6 R1 K1 ["Instance"]
       16 GETTABLEKS                       R5 R6 K2 ["Selector"]
       18 MOVE                             R6 R3
       19 CALL                             R4 2 1
       20 JUMP                             ; [+1]
       21 LOADNIL                          R4
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R5 R6 K0 ["getQueryTypeFromSelector"]
       25 MOVE                             R6 R2
       26 CALL                             R5 1 1
       27 JUMPIFNOT                        R5 ; [+7]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R6 R7 K3 ["getDataFromSelector"]
       31 MOVE                             R7 R2
       32 MOVE                             R8 R5
       33 CALL                             R6 2 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R6
       36 JUMPIFNOT                        R5 ; [+8]
       37 JUMPIFNOT                        R6 ; [+7]
       38 GETUPVAL                         R8 1
       39 GETTABLEKS                       R7 R8 K4 ["constructSelector"]
       41 MOVE                             R8 R5
       42 MOVE                             R9 R6
       43 CALL                             R7 2 1
       44 MOVE                             R2 R7
       45 GETTABLEKS                       R7 R0 K5 ["dispatch"]
       47 GETUPVAL                         R8 2
       48 GETTABLEKS                       R9 R1 K1 ["Instance"]
       50 MOVE                             R10 R2
       51 CALL                             R8 2 -1
       52 CALL                             R7 -1 0
       53 JUMPIFEQ                         R3 R5 ; [+8]
       55 GETIMPORT                        R7 K8 [task.defer]
       57 NEWCLOSURE                       R8 P0
       58 CAPTURE                          VAL R0
       59 CAPTURE                          UPVAL U3
       60 CALL                             R7 1 0
       61 JUMP                             ; [+24]
       62 JUMPIFNOT                        R3 ; [+23]
       63 JUMPIFNOT                        R5 ; [+22]
       64 JUMPIFNOT                        R4 ; [+21]
       65 JUMPIFNOT                        R6 ; [+20]
       66 GETUPVAL                         R8 1
       67 GETTABLEKS                       R7 R8 K9 ["syncQueryRuleSelectors"]
       69 GETTABLEKS                       R8 R1 K1 ["Instance"]
       71 MOVE                             R9 R4
       72 GETTABLEKS                       R10 R6 K10 ["Name"]
       74 GETTABLEKS                       R11 R0 K5 ["dispatch"]
       76 CALL                             R7 4 0
       77 JUMP                             ; [+8]
       78 GETTABLEKS                       R3 R0 K5 ["dispatch"]
       80 GETUPVAL                         R4 2
       81 GETTABLEKS                       R5 R1 K1 ["Instance"]
       83 MOVE                             R6 R2
       84 CALL                             R4 2 -1
       85 CALL                             R3 -1 0
       86 GETTABLEKS                       R4 R1 K10 ["Name"]
       88 GETTABLEKS                       R3 R4 K11 ["Value"]
       90 JUMPIFNOTEQ                      R2 R3 ; [+9]
       92 GETTABLEKS                       R3 R0 K12 ["setState"]
       94 NEWCLOSURE                       R4 P1
       95 CAPTURE                          UPVAL U4
       96 CAPTURE                          UPVAL U5
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          VAL R0
       99 CALL                             R3 1 0
      100 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"Schema", "Value"}]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K3 ["FolderSchema"]
        5 DUPTABLE                         R4 K5 [{"Editing"}]
        6 LOADB                            R5 0
        7 SETTABLEKS                       R5 R4 K4 ["Editing"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K0 ["Schema"]
       12 GETUPVAL                         R2 2
       13 SETTABLEKS                       R2 R1 K1 ["Value"]
       15 GETUPVAL                         R2 3
       16 MOVE                             R4 R0
       17 MOVE                             R5 R1
       18 GETUPVAL                         R7 4
       19 GETTABLEKS                       R6 R7 K6 ["path"]
       21 LOADN                            R7 1
       22 NAMECALL                         R2 R2 K7 ["updateCell"]
       24 CALL                             R2 5 -1
       25 RETURN                           R2 -1

PROTO_4:
        0 JUMPIFEQKS                       R2 K0 [""] ; [+9]
        2 GETTABLEKS                       R3 R0 K1 ["dispatch"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R5 R1 K2 ["Instance"]
        7 MOVE                             R6 R2
        8 CALL                             R4 2 -1
        9 CALL                             R3 -1 0
       10 GETTABLEKS                       R3 R0 K3 ["setState"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R0
       18 CALL                             R3 1 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["tableItems"]
        3 GETTABLEKS                       R4 R0 K1 ["path"]
        5 NAMECALL                         R1 R1 K2 ["getChild"]
        7 CALL                             R1 3 1
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R1 K3 ["Name"]
       12 GETTABLEKS                       R2 R3 K4 ["FullSpan"]
       14 JUMPIFNOT                        R2 ; [+64]
       15 GETTABLEKS                       R2 R1 K5 ["Instance"]
       17 JUMPIF                           R2 ; [+6]
       18 GETIMPORT                        R2 K7 [warn]
       20 LOADK                            R3 K8 ["Table row without valid StyleRule reference:"]
       21 MOVE                             R4 R1
       22 CALL                             R2 2 0
       23 RETURN                           R0 0
       24 GETTABLEKS                       R3 R1 K5 ["Instance"]
       26 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       28 LOADK                            R4 K9 ["expecting valid instance"]
       29 GETIMPORT                        R2 K11 [assert]
       31 CALL                             R2 2 0
       32 GETTABLEKS                       R2 R1 K5 ["Instance"]
       34 LOADK                            R4 K12 ["StyleRule"]
       35 NAMECALL                         R2 R2 K13 ["IsA"]
       37 CALL                             R2 2 1
       38 JUMPIF                           R2 ; [+2]
       39 GETUPVAL                         R2 1
       40 JUMPIF                           R2 ; [+7]
       41 GETUPVAL                         R2 2
       42 MOVE                             R3 R0
       43 MOVE                             R4 R1
       44 GETTABLEKS                       R5 R0 K14 ["newValue"]
       46 CALL                             R2 3 0
       47 RETURN                           R0 0
       48 GETTABLEKS                       R2 R1 K5 ["Instance"]
       50 LOADK                            R4 K15 ["Folder"]
       51 NAMECALL                         R2 R2 K13 ["IsA"]
       53 CALL                             R2 2 1
       54 JUMPIFNOT                        R2 ; [+23]
       55 GETUPVAL                         R2 1
       56 JUMPIFNOT                        R2 ; [+21]
       57 GETTABLEKS                       R2 R0 K14 ["newValue"]
       59 JUMPIFEQKS                       R2 K16 [""] ; [+9]
       61 GETTABLEKS                       R3 R0 K17 ["dispatch"]
       63 GETUPVAL                         R4 3
       64 GETTABLEKS                       R5 R1 K5 ["Instance"]
       66 MOVE                             R6 R2
       67 CALL                             R4 2 -1
       68 CALL                             R3 -1 0
       69 GETTABLEKS                       R3 R0 K18 ["setState"]
       71 NEWCLOSURE                       R4 P0
       72 CAPTURE                          UPVAL U4
       73 CAPTURE                          UPVAL U5
       74 CAPTURE                          VAL R2
       75 CAPTURE                          UPVAL U0
       76 CAPTURE                          VAL R0
       77 CALL                             R3 1 0
       78 RETURN                           R0 0
       79 GETTABLEKS                       R3 R1 K3 ["Name"]
       81 GETTABLEKS                       R2 R3 K19 ["Value"]
       83 GETUPVAL                         R3 0
       84 GETTABLEKS                       R5 R0 K0 ["tableItems"]
       86 MOVE                             R6 R1
       87 NAMECALL                         R3 R3 K20 ["getParent"]
       89 CALL                             R3 3 1
       90 GETTABLEKS                       R4 R3 K5 ["Instance"]
       92 GETTABLEKS                       R6 R1 K21 ["SetParentValue"]
       94 FASTCALL1                        TYPEOF R6 ; [+2]
       95 GETIMPORT                        R5 K23 [typeof]
       97 CALL                             R5 1 1
       98 JUMPIFNOTEQKS                    R5 K24 ["function"] ; [+21]
      100 GETTABLEKS                       R5 R1 K21 ["SetParentValue"]
      102 GETTABLEKS                       R6 R0 K14 ["newValue"]
      104 CALL                             R5 1 1
      105 SETTABLEKS                       R5 R0 K14 ["newValue"]
      107 GETTABLEKS                       R5 R3 K3 ["Name"]
      109 GETTABLEKS                       R2 R5 K19 ["Value"]
      111 GETUPVAL                         R5 0
      112 GETTABLEKS                       R7 R0 K0 ["tableItems"]
      114 MOVE                             R8 R3
      115 NAMECALL                         R5 R5 K20 ["getParent"]
      117 CALL                             R5 3 1
      118 GETTABLEKS                       R4 R5 K5 ["Instance"]
      120 JUMPIF                           R4 ; [+6]
      121 GETIMPORT                        R5 K7 [warn]
      123 LOADK                            R6 K8 ["Table row without valid StyleRule reference:"]
      124 MOVE                             R7 R3
      125 CALL                             R5 2 0
      126 RETURN                           R0 0
      127 LOADK                            R7 K12 ["StyleRule"]
      128 NAMECALL                         R5 R4 K13 ["IsA"]
      130 CALL                             R5 2 1
      131 JUMPIF                           R5 ; [+6]
      132 GETIMPORT                        R5 K7 [warn]
      134 LOADK                            R6 K25 ["Attempted to edit property on a non-StyleRule instance:"]
      135 MOVE                             R7 R4
      136 CALL                             R5 2 0
      137 RETURN                           R0 0
      138 GETTABLEKS                       R5 R0 K14 ["newValue"]
      140 JUMPIFNOTEQKNIL                  R5 ; [+2]
      142 RETURN                           R0 0
      143 LOADB                            R5 0
      144 GETUPVAL                         R6 6
      145 JUMPIFNOT                        R6 ; [+77]
      146 GETIMPORT                        R6 K27 [tick]
      148 CALL                             R6 0 1
      149 GETTABLEKS                       R8 R1 K19 ["Value"]
      151 JUMPIFNOT                        R8 ; [+7]
      152 GETTABLEKS                       R9 R1 K19 ["Value"]
      154 GETTABLEKS                       R8 R9 K28 ["Schema"]
      156 GETTABLEKS                       R7 R8 K29 ["Type"]
      158 JUMP                             ; [+1]
      159 LOADNIL                          R7
      160 GETTABLEKS                       R9 R0 K30 ["lastEdit"]
      162 GETTABLEKS                       R8 R9 K31 ["instance"]
      164 JUMPIFNOT                        R8 ; [+40]
      165 GETTABLEKS                       R9 R0 K30 ["lastEdit"]
      167 GETTABLEKS                       R8 R9 K31 ["instance"]
      169 JUMPIFNOTEQ                      R8 R4 ; [+35]
      171 GETTABLEKS                       R9 R0 K30 ["lastEdit"]
      173 GETTABLEKS                       R8 R9 K32 ["propertyName"]
      175 JUMPIFNOTEQ                      R8 R2 ; [+29]
      177 GETTABLEKS                       R10 R0 K30 ["lastEdit"]
      179 GETTABLEKS                       R9 R10 K33 ["propertyValue"]
      181 FASTCALL1                        TYPEOF R9 ; [+2]
      182 GETIMPORT                        R8 K23 [typeof]
      184 CALL                             R8 1 1
      185 GETTABLEKS                       R10 R0 K14 ["newValue"]
      187 FASTCALL1                        TYPEOF R10 ; [+2]
      188 GETIMPORT                        R9 K23 [typeof]
      190 CALL                             R9 1 1
      191 JUMPIFNOTEQ                      R8 R9 ; [+13]
      193 GETTABLEKS                       R10 R0 K30 ["lastEdit"]
      195 GETTABLEKS                       R9 R10 K35 ["timeSec"]
      197 ADDK                             R8 R9 K34 [4]
      198 JUMPIFNOTLE                      R6 R8 ; [+6]
      200 GETUPVAL                         R9 7
      201 GETTABLE                         R8 R9 R7
      202 JUMPIFNOTEQKB                    R8 TRUE ; [+2]
      204 LOADB                            R5 1
      205 GETTABLEKS                       R8 R0 K30 ["lastEdit"]
      207 SETTABLEKS                       R4 R8 K31 ["instance"]
      209 GETTABLEKS                       R8 R0 K30 ["lastEdit"]
      211 SETTABLEKS                       R2 R8 K32 ["propertyName"]
      213 GETTABLEKS                       R8 R0 K30 ["lastEdit"]
      215 GETTABLEKS                       R9 R0 K14 ["newValue"]
      217 SETTABLEKS                       R9 R8 K33 ["propertyValue"]
      219 GETTABLEKS                       R8 R0 K30 ["lastEdit"]
      221 SETTABLEKS                       R6 R8 K35 ["timeSec"]
      223 GETTABLEKS                       R6 R0 K36 ["columnIndex"]
      225 GETUPVAL                         R8 8
      226 GETTABLEKS                       R7 R8 K37 ["NAME_COLUMN_INDEX"]
      228 JUMPIFNOTEQ                      R6 R7 ; [+11]
      230 GETTABLEKS                       R6 R0 K17 ["dispatch"]
      232 GETUPVAL                         R7 9
      233 MOVE                             R8 R4
      234 MOVE                             R9 R2
      235 GETTABLEKS                       R10 R0 K14 ["newValue"]
      237 CALL                             R7 3 -1
      238 CALL                             R6 -1 0
      239 RETURN                           R0 0
      240 GETTABLEKS                       R6 R0 K36 ["columnIndex"]
      242 GETUPVAL                         R8 8
      243 GETTABLEKS                       R7 R8 K38 ["VALUE_COLUMN_INDEX"]
      245 JUMPIFNOTEQ                      R6 R7 ; [+11]
      247 GETTABLEKS                       R6 R0 K17 ["dispatch"]
      249 GETUPVAL                         R7 10
      250 MOVE                             R8 R4
      251 MOVE                             R9 R2
      252 GETTABLEKS                       R10 R0 K14 ["newValue"]
      254 MOVE                             R11 R5
      255 CALL                             R7 4 -1
      256 CALL                             R6 -1 0
      257 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Util"]
       17 GETTABLEKS                       R2 R3 K7 ["StyleSchema"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R2 R3 K8 ["Thunks"]
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R5 R2 K9 ["Change"]
       28 GETTABLEKS                       R4 R5 K10 ["SetStyleRuleSelector"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R6 R2 K9 ["Change"]
       35 GETTABLEKS                       R5 R6 K11 ["SetStyleRuleProperty"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K4 [require]
       40 GETTABLEKS                       R7 R2 K9 ["Change"]
       42 GETTABLEKS                       R6 R7 K12 ["RenameStyleRuleProperty"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R8 R2 K9 ["Change"]
       49 GETTABLEKS                       R7 R8 K13 ["RenameFolder"]
       51 CALL                             R6 1 1
       52 GETTABLEKS                       R8 R0 K5 ["Src"]
       54 GETTABLEKS                       R7 R8 K14 ["Actions"]
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R10 R7 K15 ["Window"]
       60 GETTABLEKS                       R9 R10 K16 ["SetIsDirty"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R12 R0 K5 ["Src"]
       67 GETTABLEKS                       R11 R12 K17 ["Flags"]
       69 GETTABLEKS                       R10 R11 K18 ["getFFlagStyleQuery"]
       71 CALL                             R9 1 1
       72 CALL                             R9 0 1
       73 GETIMPORT                        R10 K4 [require]
       75 GETTABLEKS                       R13 R0 K5 ["Src"]
       77 GETTABLEKS                       R12 R13 K17 ["Flags"]
       79 GETTABLEKS                       R11 R12 K19 ["getFFlagStyleEditorNumberSequenceUpdate"]
       81 CALL                             R10 1 1
       82 CALL                             R10 0 1
       83 GETIMPORT                        R11 K4 [require]
       85 GETTABLEKS                       R14 R0 K5 ["Src"]
       87 GETTABLEKS                       R13 R14 K6 ["Util"]
       89 GETTABLEKS                       R12 R13 K20 ["StyleQueryHelpers"]
       91 CALL                             R11 1 1
       92 GETIMPORT                        R12 K4 [require]
       94 GETTABLEKS                       R14 R0 K21 ["Packages"]
       96 GETTABLEKS                       R13 R14 K22 ["Dash"]
       98 CALL                             R12 1 1
       99 GETTABLEKS                       R13 R12 K23 ["join"]
      101 GETIMPORT                        R14 K4 [require]
      103 GETIMPORT                        R17 K1 [script]
      105 GETTABLEKS                       R16 R17 K2 ["Parent"]
      107 GETTABLEKS                       R15 R16 K24 ["Tree"]
      109 CALL                             R14 1 1
      110 GETTABLEKS                       R15 R14 K25 ["EditTree"]
      112 DUPTABLE                         R16 K30 [{"Slider", "Color", "ColorSequence", "NumberSequence"}]
      113 LOADB                            R17 1
      114 SETTABLEKS                       R17 R16 K26 ["Slider"]
      116 LOADB                            R17 1
      117 SETTABLEKS                       R17 R16 K27 ["Color"]
      119 LOADB                            R17 1
      120 SETTABLEKS                       R17 R16 K28 ["ColorSequence"]
      122 LOADB                            R17 1
      123 SETTABLEKS                       R17 R16 K29 ["NumberSequence"]
      125 DUPCLOSURE                       R17 K31 [PROTO_2]
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R11
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R15
      133 DUPCLOSURE                       R18 K32 [PROTO_4]
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R1
      137 CAPTURE                          VAL R15
      138 DUPCLOSURE                       R19 K33 [PROTO_5]
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R14
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R4
      150 RETURN                           R19 1
