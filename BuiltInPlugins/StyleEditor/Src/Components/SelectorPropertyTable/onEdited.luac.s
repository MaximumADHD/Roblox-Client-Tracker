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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["tableItems"]
        3 GETTABLEKS                       R4 R0 K1 ["path"]
        5 NAMECALL                         R1 R1 K2 ["getChild"]
        7 CALL                             R1 3 1
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R1 K3 ["Name"]
       12 GETTABLEKS                       R2 R3 K4 ["FullSpan"]
       14 JUMPIFNOT                        R2 ; [+131]
       15 GETTABLEKS                       R2 R1 K5 ["Instance"]
       17 JUMPIF                           R2 ; [+6]
       18 GETIMPORT                        R2 K7 [warn]
       20 LOADK                            R3 K8 ["Table row without valid StyleRule reference:"]
       21 MOVE                             R4 R1
       22 CALL                             R2 2 0
       23 RETURN                           R0 0
       24 GETTABLEKS                       R4 R1 K5 ["Instance"]
       26 JUMPIFNOTEQKNIL                  R4 ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       32 LOADK                            R4 K9 ["expecting valid instance"]
       33 GETIMPORT                        R2 K11 [assert]
       35 CALL                             R2 2 0
       36 GETTABLEKS                       R2 R0 K12 ["newValue"]
       38 GETUPVAL                         R3 1
       39 JUMPIFNOT                        R3 ; [+83]
       40 GETTABLEKS                       R3 R1 K5 ["Instance"]
       42 LOADK                            R5 K13 ["StyleRule"]
       43 NAMECALL                         R3 R3 K14 ["IsA"]
       45 CALL                             R3 2 1
       46 JUMPIFNOT                        R3 ; [+76]
       47 GETUPVAL                         R4 2
       48 GETTABLEKS                       R3 R4 K15 ["getQueryTypeFromSelector"]
       50 GETTABLEKS                       R5 R1 K5 ["Instance"]
       52 GETTABLEKS                       R4 R5 K16 ["Selector"]
       54 CALL                             R3 1 1
       55 LOADNIL                          R4
       56 JUMPIFNOT                        R3 ; [+10]
       57 GETUPVAL                         R6 2
       58 GETTABLEKS                       R5 R6 K17 ["getDataFromSelector"]
       60 GETTABLEKS                       R7 R1 K5 ["Instance"]
       62 GETTABLEKS                       R6 R7 K16 ["Selector"]
       64 MOVE                             R7 R3
       65 CALL                             R5 2 1
       66 MOVE                             R4 R5
       67 GETUPVAL                         R6 2
       68 GETTABLEKS                       R5 R6 K15 ["getQueryTypeFromSelector"]
       70 MOVE                             R6 R2
       71 CALL                             R5 1 1
       72 LOADNIL                          R6
       73 JUMPIFNOT                        R5 ; [+7]
       74 GETUPVAL                         R8 2
       75 GETTABLEKS                       R7 R8 K17 ["getDataFromSelector"]
       77 MOVE                             R8 R2
       78 MOVE                             R9 R5
       79 CALL                             R7 2 1
       80 MOVE                             R6 R7
       81 JUMPIFNOT                        R5 ; [+8]
       82 JUMPIFNOT                        R6 ; [+7]
       83 GETUPVAL                         R8 2
       84 GETTABLEKS                       R7 R8 K18 ["constructSelector"]
       86 MOVE                             R8 R5
       87 MOVE                             R9 R6
       88 CALL                             R7 2 1
       89 MOVE                             R2 R7
       90 GETTABLEKS                       R7 R0 K19 ["dispatch"]
       92 GETUPVAL                         R8 3
       93 GETTABLEKS                       R9 R1 K5 ["Instance"]
       95 MOVE                             R10 R2
       96 CALL                             R8 2 -1
       97 CALL                             R7 -1 0
       98 JUMPIFEQ                         R3 R5 ; [+8]
      100 GETIMPORT                        R7 K22 [task.defer]
      102 NEWCLOSURE                       R8 P0
      103 CAPTURE                          VAL R0
      104 CAPTURE                          UPVAL U4
      105 CALL                             R7 1 0
      106 JUMP                             ; [+24]
      107 JUMPIFNOT                        R3 ; [+23]
      108 JUMPIFNOT                        R5 ; [+22]
      109 JUMPIFNOT                        R4 ; [+21]
      110 JUMPIFNOT                        R6 ; [+20]
      111 GETUPVAL                         R8 2
      112 GETTABLEKS                       R7 R8 K23 ["syncQueryRuleSelectors"]
      114 GETTABLEKS                       R8 R1 K5 ["Instance"]
      116 MOVE                             R9 R4
      117 GETTABLEKS                       R10 R6 K3 ["Name"]
      119 GETTABLEKS                       R11 R0 K19 ["dispatch"]
      121 CALL                             R7 4 0
      122 JUMP                             ; [+8]
      123 GETTABLEKS                       R3 R0 K19 ["dispatch"]
      125 GETUPVAL                         R4 3
      126 GETTABLEKS                       R5 R1 K5 ["Instance"]
      128 MOVE                             R6 R2
      129 CALL                             R4 2 -1
      130 CALL                             R3 -1 0
      131 GETTABLEKS                       R4 R1 K3 ["Name"]
      133 GETTABLEKS                       R3 R4 K24 ["Value"]
      135 JUMPIFNOTEQ                      R2 R3 ; [+9]
      137 GETTABLEKS                       R3 R0 K25 ["setState"]
      139 NEWCLOSURE                       R4 P1
      140 CAPTURE                          UPVAL U5
      141 CAPTURE                          UPVAL U6
      142 CAPTURE                          UPVAL U0
      143 CAPTURE                          VAL R0
      144 CALL                             R3 1 0
      145 RETURN                           R0 0
      146 GETTABLEKS                       R3 R1 K3 ["Name"]
      148 GETTABLEKS                       R2 R3 K24 ["Value"]
      150 GETUPVAL                         R3 0
      151 GETTABLEKS                       R5 R0 K0 ["tableItems"]
      153 MOVE                             R6 R1
      154 NAMECALL                         R3 R3 K26 ["getParent"]
      156 CALL                             R3 3 1
      157 GETTABLEKS                       R4 R3 K5 ["Instance"]
      159 GETTABLEKS                       R6 R1 K27 ["SetParentValue"]
      161 FASTCALL1                        TYPEOF R6 ; [+2]
      162 GETIMPORT                        R5 K29 [typeof]
      164 CALL                             R5 1 1
      165 JUMPIFNOTEQKS                    R5 K30 ["function"] ; [+21]
      167 GETTABLEKS                       R5 R1 K27 ["SetParentValue"]
      169 GETTABLEKS                       R6 R0 K12 ["newValue"]
      171 CALL                             R5 1 1
      172 SETTABLEKS                       R5 R0 K12 ["newValue"]
      174 GETTABLEKS                       R5 R3 K3 ["Name"]
      176 GETTABLEKS                       R2 R5 K24 ["Value"]
      178 GETUPVAL                         R5 0
      179 GETTABLEKS                       R7 R0 K0 ["tableItems"]
      181 MOVE                             R8 R3
      182 NAMECALL                         R5 R5 K26 ["getParent"]
      184 CALL                             R5 3 1
      185 GETTABLEKS                       R4 R5 K5 ["Instance"]
      187 JUMPIF                           R4 ; [+6]
      188 GETIMPORT                        R5 K7 [warn]
      190 LOADK                            R6 K8 ["Table row without valid StyleRule reference:"]
      191 MOVE                             R7 R3
      192 CALL                             R5 2 0
      193 RETURN                           R0 0
      194 GETTABLEKS                       R5 R0 K12 ["newValue"]
      196 JUMPIFNOTEQKNIL                  R5 ; [+2]
      198 RETURN                           R0 0
      199 LOADB                            R5 0
      200 GETUPVAL                         R6 7
      201 JUMPIFNOT                        R6 ; [+77]
      202 GETIMPORT                        R6 K32 [tick]
      204 CALL                             R6 0 1
      205 GETTABLEKS                       R8 R1 K24 ["Value"]
      207 JUMPIFNOT                        R8 ; [+7]
      208 GETTABLEKS                       R9 R1 K24 ["Value"]
      210 GETTABLEKS                       R8 R9 K33 ["Schema"]
      212 GETTABLEKS                       R7 R8 K34 ["Type"]
      214 JUMP                             ; [+1]
      215 LOADNIL                          R7
      216 GETTABLEKS                       R9 R0 K35 ["lastEdit"]
      218 GETTABLEKS                       R8 R9 K36 ["instance"]
      220 JUMPIFNOT                        R8 ; [+40]
      221 GETTABLEKS                       R9 R0 K35 ["lastEdit"]
      223 GETTABLEKS                       R8 R9 K36 ["instance"]
      225 JUMPIFNOTEQ                      R8 R4 ; [+35]
      227 GETTABLEKS                       R9 R0 K35 ["lastEdit"]
      229 GETTABLEKS                       R8 R9 K37 ["propertyName"]
      231 JUMPIFNOTEQ                      R8 R2 ; [+29]
      233 GETTABLEKS                       R10 R0 K35 ["lastEdit"]
      235 GETTABLEKS                       R9 R10 K38 ["propertyValue"]
      237 FASTCALL1                        TYPEOF R9 ; [+2]
      238 GETIMPORT                        R8 K29 [typeof]
      240 CALL                             R8 1 1
      241 GETTABLEKS                       R10 R0 K12 ["newValue"]
      243 FASTCALL1                        TYPEOF R10 ; [+2]
      244 GETIMPORT                        R9 K29 [typeof]
      246 CALL                             R9 1 1
      247 JUMPIFNOTEQ                      R8 R9 ; [+13]
      249 GETTABLEKS                       R10 R0 K35 ["lastEdit"]
      251 GETTABLEKS                       R9 R10 K40 ["timeSec"]
      253 ADDK                             R8 R9 K39 [4]
      254 JUMPIFNOTLE                      R6 R8 ; [+6]
      256 GETUPVAL                         R9 8
      257 GETTABLE                         R8 R9 R7
      258 JUMPIFNOTEQKB                    R8 TRUE ; [+2]
      260 LOADB                            R5 1
      261 GETTABLEKS                       R8 R0 K35 ["lastEdit"]
      263 SETTABLEKS                       R4 R8 K36 ["instance"]
      265 GETTABLEKS                       R8 R0 K35 ["lastEdit"]
      267 SETTABLEKS                       R2 R8 K37 ["propertyName"]
      269 GETTABLEKS                       R8 R0 K35 ["lastEdit"]
      271 GETTABLEKS                       R9 R0 K12 ["newValue"]
      273 SETTABLEKS                       R9 R8 K38 ["propertyValue"]
      275 GETTABLEKS                       R8 R0 K35 ["lastEdit"]
      277 SETTABLEKS                       R6 R8 K40 ["timeSec"]
      279 GETTABLEKS                       R6 R0 K41 ["columnIndex"]
      281 GETUPVAL                         R8 9
      282 GETTABLEKS                       R7 R8 K42 ["NAME_COLUMN_INDEX"]
      284 JUMPIFNOTEQ                      R6 R7 ; [+11]
      286 GETTABLEKS                       R6 R0 K19 ["dispatch"]
      288 GETUPVAL                         R7 10
      289 MOVE                             R8 R4
      290 MOVE                             R9 R2
      291 GETTABLEKS                       R10 R0 K12 ["newValue"]
      293 CALL                             R7 3 -1
      294 CALL                             R6 -1 0
      295 RETURN                           R0 0
      296 GETTABLEKS                       R6 R0 K41 ["columnIndex"]
      298 GETUPVAL                         R8 9
      299 GETTABLEKS                       R7 R8 K43 ["VALUE_COLUMN_INDEX"]
      301 JUMPIFNOTEQ                      R6 R7 ; [+11]
      303 GETTABLEKS                       R6 R0 K19 ["dispatch"]
      305 GETUPVAL                         R7 11
      306 MOVE                             R8 R4
      307 MOVE                             R9 R2
      308 GETTABLEKS                       R10 R0 K12 ["newValue"]
      310 MOVE                             R11 R5
      311 CALL                             R7 4 -1
      312 CALL                             R6 -1 0
      313 RETURN                           R0 0

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
       45 GETTABLEKS                       R7 R0 K5 ["Src"]
       47 GETTABLEKS                       R6 R7 K13 ["Actions"]
       49 GETIMPORT                        R7 K4 [require]
       51 GETTABLEKS                       R9 R6 K14 ["Window"]
       53 GETTABLEKS                       R8 R9 K15 ["SetIsDirty"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K4 [require]
       58 GETTABLEKS                       R11 R0 K5 ["Src"]
       60 GETTABLEKS                       R10 R11 K16 ["Flags"]
       62 GETTABLEKS                       R9 R10 K17 ["getFFlagStyleEditorQueries"]
       64 CALL                             R8 1 1
       65 CALL                             R8 0 1
       66 GETIMPORT                        R9 K4 [require]
       68 GETTABLEKS                       R12 R0 K5 ["Src"]
       70 GETTABLEKS                       R11 R12 K16 ["Flags"]
       72 GETTABLEKS                       R10 R11 K18 ["getFFlagStyleEditorNumberSequenceUpdate"]
       74 CALL                             R9 1 1
       75 CALL                             R9 0 1
       76 GETIMPORT                        R10 K4 [require]
       78 GETTABLEKS                       R13 R0 K5 ["Src"]
       80 GETTABLEKS                       R12 R13 K6 ["Util"]
       82 GETTABLEKS                       R11 R12 K19 ["StyleQueryHelpers"]
       84 CALL                             R10 1 1
       85 GETIMPORT                        R11 K4 [require]
       87 GETTABLEKS                       R13 R0 K20 ["Packages"]
       89 GETTABLEKS                       R12 R13 K21 ["Dash"]
       91 CALL                             R11 1 1
       92 GETTABLEKS                       R12 R11 K22 ["join"]
       94 GETIMPORT                        R13 K4 [require]
       96 GETIMPORT                        R16 K1 [script]
       98 GETTABLEKS                       R15 R16 K2 ["Parent"]
      100 GETTABLEKS                       R14 R15 K23 ["Tree"]
      102 CALL                             R13 1 1
      103 GETTABLEKS                       R14 R13 K24 ["EditTree"]
      105 DUPTABLE                         R15 K29 [{"Slider", "Color", "ColorSequence", "NumberSequence"}]
      106 LOADB                            R16 1
      107 SETTABLEKS                       R16 R15 K25 ["Slider"]
      109 LOADB                            R16 1
      110 SETTABLEKS                       R16 R15 K26 ["Color"]
      112 LOADB                            R16 1
      113 SETTABLEKS                       R16 R15 K27 ["ColorSequence"]
      115 LOADB                            R16 1
      116 SETTABLEKS                       R16 R15 K28 ["NumberSequence"]
      118 DUPCLOSURE                       R16 K30 [PROTO_2]
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R7
      124 CAPTURE                          VAL R12
      125 CAPTURE                          VAL R1
      126 CAPTURE                          VAL R9
      127 CAPTURE                          VAL R15
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R4
      131 RETURN                           R16 1
