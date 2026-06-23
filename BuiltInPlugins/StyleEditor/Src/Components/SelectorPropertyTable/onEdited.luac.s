PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["dispatch"]
        3 GETUPVAL                         R1 1
        4 LOADB                            R2 1
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"Schema"}]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K2 ["SelectorSchema"]
        5 DUPTABLE                         R4 K4 [{"Editing"}]
        6 LOADB                            R5 0
        7 SETTABLEKS                       R5 R4 K3 ["Editing"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K0 ["Schema"]
       12 GETUPVAL                         R2 2
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K5 ["path"]
       18 LOADN                            R7 1
       19 NAMECALL                         R2 R2 K6 ["updateCell"]
       21 CALL                             R2 5 -1
       22 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+76]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["getQueryTypeFromSelector"]
        5 GETTABLEKS                       R4 R1 K1 ["Instance"]
        7 GETTABLEKS                       R4 R4 K2 ["Selector"]
        9 CALL                             R3 1 1
       10 JUMPIFNOT                        R3 ; [+10]
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K3 ["getDataFromSelector"]
       14 GETTABLEKS                       R5 R1 K1 ["Instance"]
       16 GETTABLEKS                       R5 R5 K2 ["Selector"]
       18 MOVE                             R6 R3
       19 CALL                             R4 2 1
       20 JUMP                             ; [+1]
       21 LOADNIL                          R4
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K0 ["getQueryTypeFromSelector"]
       25 MOVE                             R6 R2
       26 CALL                             R5 1 1
       27 JUMPIFNOT                        R5 ; [+7]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K3 ["getDataFromSelector"]
       31 MOVE                             R7 R2
       32 MOVE                             R8 R5
       33 CALL                             R6 2 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R6
       36 JUMPIFNOT                        R5 ; [+8]
       37 JUMPIFNOT                        R6 ; [+7]
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R7 R7 K4 ["constructSelector"]
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
       66 GETUPVAL                         R7 1
       67 GETTABLEKS                       R7 R7 K9 ["syncQueryRuleSelectors"]
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
       86 GETTABLEKS                       R3 R1 K10 ["Name"]
       88 GETTABLEKS                       R3 R3 K11 ["Value"]
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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K3 ["FolderSchema"]
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
       18 GETUPVAL                         R6 4
       19 GETTABLEKS                       R6 R6 K6 ["path"]
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
       10 GETTABLEKS                       R2 R1 K3 ["Name"]
       12 GETTABLEKS                       R2 R2 K4 ["FullSpan"]
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
       79 GETTABLEKS                       R2 R1 K3 ["Name"]
       81 GETTABLEKS                       R2 R2 K19 ["Value"]
       83 GETUPVAL                         R3 0
       84 GETTABLEKS                       R5 R0 K0 ["tableItems"]
       86 MOVE                             R6 R1
       87 NAMECALL                         R3 R3 K20 ["getParent"]
       89 CALL                             R3 3 1
       90 GETTABLEKS                       R4 R3 K5 ["Instance"]
       92 GETTABLEKS                       R7 R1 K21 ["SetParentValue"]
       94 FASTCALL1                        TYPEOF R7 ; [+2]
       95 GETIMPORT                        R6 K23 [typeof]
       97 CALL                             R6 1 1
       98 JUMPIFEQKS                       R6 K24 ["function"] ; [+2]
      100 LOADB                            R5 0 +1
      101 LOADB                            R5 1
      102 GETUPVAL                         R6 6
      103 JUMPIFNOT                        R6 ; [+14]
      104 MOVE                             R6 R3
      105 JUMPIF                           R4 ; [+12]
      106 JUMPIFNOT                        R6 ; [+11]
      107 GETUPVAL                         R7 0
      108 GETTABLEKS                       R9 R0 K0 ["tableItems"]
      110 MOVE                             R10 R6
      111 NAMECALL                         R7 R7 K20 ["getParent"]
      113 CALL                             R7 3 1
      114 MOVE                             R6 R7
      115 GETTABLEKS                       R4 R6 K5 ["Instance"]
      117 JUMPBACK                         ; [-13]
      118 JUMPIFNOT                        R5 ; [+22]
      119 GETTABLEKS                       R6 R1 K21 ["SetParentValue"]
      121 GETTABLEKS                       R7 R0 K14 ["newValue"]
      123 CALL                             R6 1 1
      124 SETTABLEKS                       R6 R0 K14 ["newValue"]
      126 GETTABLEKS                       R6 R3 K3 ["Name"]
      128 GETTABLEKS                       R2 R6 K19 ["Value"]
      130 GETUPVAL                         R6 6
      131 JUMPIF                           R6 ; [+9]
      132 GETUPVAL                         R6 0
      133 GETTABLEKS                       R8 R0 K0 ["tableItems"]
      135 MOVE                             R9 R3
      136 NAMECALL                         R6 R6 K20 ["getParent"]
      138 CALL                             R6 3 1
      139 GETTABLEKS                       R4 R6 K5 ["Instance"]
      141 JUMPIF                           R4 ; [+6]
      142 GETIMPORT                        R6 K7 [warn]
      144 LOADK                            R7 K8 ["Table row without valid StyleRule reference:"]
      145 MOVE                             R8 R3
      146 CALL                             R6 2 0
      147 RETURN                           R0 0
      148 LOADK                            R8 K12 ["StyleRule"]
      149 NAMECALL                         R6 R4 K13 ["IsA"]
      151 CALL                             R6 2 1
      152 JUMPIF                           R6 ; [+6]
      153 GETIMPORT                        R6 K7 [warn]
      155 LOADK                            R7 K25 ["Attempted to edit property on a non-StyleRule instance:"]
      156 MOVE                             R8 R4
      157 CALL                             R6 2 0
      158 RETURN                           R0 0
      159 GETTABLEKS                       R6 R0 K14 ["newValue"]
      161 JUMPIFNOTEQKNIL                  R6 ; [+2]
      163 RETURN                           R0 0
      164 LOADB                            R6 0
      165 GETUPVAL                         R7 7
      166 JUMPIFNOT                        R7 ; [+77]
      167 GETIMPORT                        R7 K27 [tick]
      169 CALL                             R7 0 1
      170 GETTABLEKS                       R9 R1 K19 ["Value"]
      172 JUMPIFNOT                        R9 ; [+7]
      173 GETTABLEKS                       R8 R1 K19 ["Value"]
      175 GETTABLEKS                       R8 R8 K28 ["Schema"]
      177 GETTABLEKS                       R8 R8 K29 ["Type"]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R8
      181 GETTABLEKS                       R9 R0 K30 ["lastEdit"]
      183 GETTABLEKS                       R9 R9 K31 ["instance"]
      185 JUMPIFNOT                        R9 ; [+40]
      186 GETTABLEKS                       R9 R0 K30 ["lastEdit"]
      188 GETTABLEKS                       R9 R9 K31 ["instance"]
      190 JUMPIFNOTEQ                      R9 R4 ; [+35]
      192 GETTABLEKS                       R9 R0 K30 ["lastEdit"]
      194 GETTABLEKS                       R9 R9 K32 ["propertyName"]
      196 JUMPIFNOTEQ                      R9 R2 ; [+29]
      198 GETTABLEKS                       R10 R0 K30 ["lastEdit"]
      200 GETTABLEKS                       R10 R10 K33 ["propertyValue"]
      202 FASTCALL1                        TYPEOF R10 ; [+2]
      203 GETIMPORT                        R9 K23 [typeof]
      205 CALL                             R9 1 1
      206 GETTABLEKS                       R11 R0 K14 ["newValue"]
      208 FASTCALL1                        TYPEOF R11 ; [+2]
      209 GETIMPORT                        R10 K23 [typeof]
      211 CALL                             R10 1 1
      212 JUMPIFNOTEQ                      R9 R10 ; [+13]
      214 GETTABLEKS                       R10 R0 K30 ["lastEdit"]
      216 GETTABLEKS                       R10 R10 K35 ["timeSec"]
      218 ADDK                             R9 R10 K34 [4]
      219 JUMPIFNOTLE                      R7 R9 ; [+6]
      221 GETUPVAL                         R10 8
      222 GETTABLE                         R9 R10 R8
      223 JUMPIFNOTEQKB                    R9 TRUE ; [+2]
      225 LOADB                            R6 1
      226 GETTABLEKS                       R9 R0 K30 ["lastEdit"]
      228 SETTABLEKS                       R4 R9 K31 ["instance"]
      230 GETTABLEKS                       R9 R0 K30 ["lastEdit"]
      232 SETTABLEKS                       R2 R9 K32 ["propertyName"]
      234 GETTABLEKS                       R9 R0 K30 ["lastEdit"]
      236 GETTABLEKS                       R10 R0 K14 ["newValue"]
      238 SETTABLEKS                       R10 R9 K33 ["propertyValue"]
      240 GETTABLEKS                       R9 R0 K30 ["lastEdit"]
      242 SETTABLEKS                       R7 R9 K35 ["timeSec"]
      244 GETTABLEKS                       R7 R0 K36 ["columnIndex"]
      246 GETUPVAL                         R8 9
      247 GETTABLEKS                       R8 R8 K37 ["NAME_COLUMN_INDEX"]
      249 JUMPIFNOTEQ                      R7 R8 ; [+11]
      251 GETTABLEKS                       R7 R0 K17 ["dispatch"]
      253 GETUPVAL                         R8 10
      254 MOVE                             R9 R4
      255 MOVE                             R10 R2
      256 GETTABLEKS                       R11 R0 K14 ["newValue"]
      258 CALL                             R8 3 -1
      259 CALL                             R7 -1 0
      260 RETURN                           R0 0
      261 GETTABLEKS                       R7 R0 K36 ["columnIndex"]
      263 GETUPVAL                         R8 9
      264 GETTABLEKS                       R8 R8 K38 ["VALUE_COLUMN_INDEX"]
      266 JUMPIFNOTEQ                      R7 R8 ; [+93]
      268 JUMPIFNOT                        R5 ; [+8]
      269 GETTABLEKS                       R7 R3 K19 ["Value"]
      271 JUMPIFNOT                        R7 ; [+12]
      272 GETTABLEKS                       R7 R3 K19 ["Value"]
      274 GETTABLEKS                       R7 R7 K28 ["Schema"]
      276 JUMP                             ; [+7]
      277 GETTABLEKS                       R7 R1 K19 ["Value"]
      279 JUMPIFNOT                        R7 ; [+4]
      280 GETTABLEKS                       R7 R1 K19 ["Value"]
      282 GETTABLEKS                       R7 R7 K28 ["Schema"]
      284 JUMPIFNOT                        R7 ; [+17]
      285 GETTABLEKS                       R8 R7 K39 ["Validate"]
      287 JUMPIFNOT                        R8 ; [+14]
      288 GETTABLEKS                       R8 R7 K39 ["Validate"]
      290 GETTABLEKS                       R9 R0 K14 ["newValue"]
      292 CALL                             R8 1 1
      293 JUMPIF                           R8 ; [+8]
      294 GETIMPORT                        R8 K7 [warn]
      296 GETTABLEKS                       R9 R0 K14 ["newValue"]
      298 LOADK                            R10 K40 ["is an invalid value for property"]
      299 MOVE                             R11 R2
      300 CALL                             R8 3 0
      301 RETURN                           R0 0
      302 GETUPVAL                         R8 6
      303 JUMPIFNOT                        R8 ; [+46]
      304 JUMPIFNOT                        R5 ; [+3]
      305 GETTABLEKS                       R8 R3 K41 ["Metadata"]
      307 JUMP                             ; [+2]
      308 GETTABLEKS                       R8 R1 K41 ["Metadata"]
      310 JUMPIFNOTEQKNIL                  R8 ; [+2]
      312 LOADB                            R10 0 +1
      313 LOADB                            R10 1
      314 FASTCALL2K                       ASSERT R10 K42 ; [+4]
      316 LOADK                            R11 K42 ["expecting valid edit behavior"]
      317 GETIMPORT                        R9 K11 [assert]
      319 CALL                             R9 2 0
      320 GETTABLEKS                       R9 R8 K43 ["RowType"]
      322 JUMPIFNOTEQKS                    R9 K44 ["Transition"] ; [+12]
      324 GETTABLEKS                       R9 R0 K17 ["dispatch"]
      326 GETUPVAL                         R10 11
      327 MOVE                             R11 R4
      328 GETTABLEKS                       R12 R8 K45 ["TransitionPropertyName"]
      330 GETTABLEKS                       R13 R0 K14 ["newValue"]
      332 CALL                             R10 3 -1
      333 CALL                             R9 -1 0
      334 RETURN                           R0 0
      335 GETTABLEKS                       R9 R8 K43 ["RowType"]
      337 JUMPIFNOTEQKS                    R9 K46 ["Property"] ; [+22]
      339 GETTABLEKS                       R9 R0 K17 ["dispatch"]
      341 GETUPVAL                         R10 12
      342 MOVE                             R11 R4
      343 MOVE                             R12 R2
      344 GETTABLEKS                       R13 R0 K14 ["newValue"]
      346 MOVE                             R14 R6
      347 CALL                             R10 4 -1
      348 CALL                             R9 -1 0
      349 RETURN                           R0 0
      350 GETTABLEKS                       R8 R0 K17 ["dispatch"]
      352 GETUPVAL                         R9 12
      353 MOVE                             R10 R4
      354 MOVE                             R11 R2
      355 GETTABLEKS                       R12 R0 K14 ["newValue"]
      357 MOVE                             R13 R6
      358 CALL                             R9 4 -1
      359 CALL                             R8 -1 0
      360 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Util"]
       17 GETTABLEKS                       R2 R2 K7 ["StyleSchema"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R2 R0 K5 ["Src"]
       22 GETTABLEKS                       R2 R2 K8 ["Thunks"]
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R2 K9 ["Change"]
       28 GETTABLEKS                       R4 R4 K10 ["SetStyleRuleSelector"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R5 R2 K9 ["Change"]
       35 GETTABLEKS                       R5 R5 K11 ["SetStyleRuleProperty"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K4 [require]
       40 GETTABLEKS                       R6 R2 K9 ["Change"]
       42 GETTABLEKS                       R6 R6 K12 ["SetStyleRulePropertyTransition"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K4 [require]
       47 GETTABLEKS                       R7 R2 K9 ["Change"]
       49 GETTABLEKS                       R7 R7 K13 ["RenameStyleRuleProperty"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K4 [require]
       54 GETTABLEKS                       R8 R2 K9 ["Change"]
       56 GETTABLEKS                       R8 R8 K14 ["RenameFolder"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R8 R0 K5 ["Src"]
       61 GETTABLEKS                       R8 R8 K15 ["Actions"]
       63 GETIMPORT                        R9 K4 [require]
       65 GETTABLEKS                       R10 R8 K16 ["Window"]
       67 GETTABLEKS                       R10 R10 K17 ["SetIsDirty"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K4 [require]
       72 GETTABLEKS                       R11 R0 K5 ["Src"]
       74 GETTABLEKS                       R11 R11 K18 ["Flags"]
       76 GETTABLEKS                       R11 R11 K19 ["getFFlagStyleQuery"]
       78 CALL                             R10 1 1
       79 CALL                             R10 0 1
       80 GETIMPORT                        R11 K4 [require]
       82 GETTABLEKS                       R12 R0 K5 ["Src"]
       84 GETTABLEKS                       R12 R12 K18 ["Flags"]
       86 GETTABLEKS                       R12 R12 K20 ["getFFlagStyleEditorNumberSequenceUpdate"]
       88 CALL                             R11 1 1
       89 CALL                             R11 0 1
       90 GETIMPORT                        R12 K4 [require]
       92 GETTABLEKS                       R13 R0 K5 ["Src"]
       94 GETTABLEKS                       R13 R13 K18 ["Flags"]
       96 GETTABLEKS                       R13 R13 K21 ["getFFlagStyleEditorSupportTransitions"]
       98 CALL                             R12 1 1
       99 CALL                             R12 0 1
      100 GETIMPORT                        R13 K4 [require]
      102 GETTABLEKS                       R14 R0 K5 ["Src"]
      104 GETTABLEKS                       R14 R14 K6 ["Util"]
      106 GETTABLEKS                       R14 R14 K22 ["StyleQueryHelpers"]
      108 CALL                             R13 1 1
      109 GETIMPORT                        R14 K4 [require]
      111 GETTABLEKS                       R15 R0 K23 ["Packages"]
      113 GETTABLEKS                       R15 R15 K24 ["Dash"]
      115 CALL                             R14 1 1
      116 GETTABLEKS                       R15 R14 K25 ["join"]
      118 GETIMPORT                        R16 K4 [require]
      120 GETIMPORT                        R17 K1 [script]
      122 GETTABLEKS                       R17 R17 K2 ["Parent"]
      124 GETTABLEKS                       R17 R17 K26 ["Tree"]
      126 CALL                             R16 1 1
      127 GETTABLEKS                       R17 R16 K27 ["EditTree"]
      129 DUPTABLE                         R18 K32 [{"Slider", "Color", "ColorSequence", "NumberSequence"}]
      130 LOADB                            R19 1
      131 SETTABLEKS                       R19 R18 K28 ["Slider"]
      133 LOADB                            R19 1
      134 SETTABLEKS                       R19 R18 K29 ["Color"]
      136 LOADB                            R19 1
      137 SETTABLEKS                       R19 R18 K30 ["ColorSequence"]
      139 LOADB                            R19 1
      140 SETTABLEKS                       R19 R18 K31 ["NumberSequence"]
      142 DUPCLOSURE                       R19 K33 [PROTO_2]
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R13
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R15
      148 CAPTURE                          VAL R1
      149 CAPTURE                          VAL R17
      150 DUPCLOSURE                       R20 K34 [PROTO_4]
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R17
      155 DUPCLOSURE                       R21 K35 [PROTO_5]
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R10
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R7
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R1
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R18
      165 CAPTURE                          VAL R16
      166 CAPTURE                          VAL R6
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R4
      169 RETURN                           R21 1
