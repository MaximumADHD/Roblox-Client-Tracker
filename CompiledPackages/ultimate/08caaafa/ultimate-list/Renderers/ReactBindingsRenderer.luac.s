PROTO_0:
        0 FASTCALL1                        TOSTRING R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [tostring]
        4 CALL                             R2 1 1
        5 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["elementsDisplayedHint"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["dimensions"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["virtualizedListController"]
       11 GETTABLEKS                       R3 R3 K3 ["getWindowSize"]
       13 CALL                             R3 0 1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K4 ["direction"]
       17 CALL                             R1 3 1
       18 JUMPIFNOTEQKNIL                  R1 ; [+2]
       20 RETURN                           R0 1
       21 LOADN                            R4 1
       22 MOVE                             R2 R1
       23 LOADN                            R3 1
       24 FORNPREP                         R2
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K5 ["createBinding"]
       28 DUPTABLE                         R6 K7 [{"contents"}]
       29 DUPTABLE                         R7 K9 [{"type"}]
       30 LOADK                            R8 K10 ["vacant"]
       31 SETTABLEKS                       R8 R7 K8 ["type"]
       33 SETTABLEKS                       R7 R6 K6 ["contents"]
       35 CALL                             R5 1 2
       36 DUPTABLE                         R9 K13 [{"binding", "set"}]
       37 SETTABLEKS                       R5 R9 K11 ["binding"]
       39 SETTABLEKS                       R6 R9 K12 ["set"]
       41 FASTCALL2                        TABLE_INSERT R0 R9 ; [+4]
       43 MOVE                             R8 R0
       44 GETIMPORT                        R7 K16 [table.insert]
       46 CALL                             R7 2 0
       47 FORNLOOP                         R2
       48 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R0 R1
        5 GETIMPORT                        R1 K4 [table.move]
        7 GETUPVAL                         R2 0
        8 LOADN                            R3 1
        9 GETUPVAL                         R5 0
       10 LENGTH                           R4 R5
       11 LENGTH                           R6 R0
       12 ADDK                             R5 R6 K5 [1]
       13 MOVE                             R6 R0
       14 CALL                             R1 5 0
       15 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["virtualizedListController"]
        3 GETTABLEKS                       R0 R0 K1 ["get"]
        5 CALL                             R0 0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["virtualizedListController"]
        9 GETTABLEKS                       R1 R1 K2 ["getRange"]
       11 CALL                             R1 0 1
       12 NEWTABLE                         R2 0 0
       14 MOVE                             R3 R0
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 GETUPVAL                         R8 1
       19 MOVE                             R9 R7
       20 GETTABLEKS                       R12 R1 K4 ["X"]
       22 SUBK                             R11 R12 K3 [1]
       23 ADD                              R10 R6 R11
       24 CALL                             R8 2 1
       25 SETTABLE                         R6 R2 R8
       26 FORGLOOP                         R3 2 ; [-9]
       28 NEWTABLE                         R3 0 0
       30 NEWTABLE                         R4 0 0
       32 NEWTABLE                         R5 0 0
       34 GETUPVAL                         R6 2
       35 LOADNIL                          R7
       36 LOADNIL                          R8
       37 FORGPREP                         R6
       38 GETTABLEKS                       R11 R10 K5 ["binding"]
       40 NAMECALL                         R11 R11 K6 ["getValue"]
       42 CALL                             R11 1 1
       43 GETTABLEKS                       R12 R11 K7 ["contents"]
       45 GETTABLEKS                       R12 R12 K8 ["type"]
       47 JUMPIFNOTEQKS                    R12 K9 ["vacant"] ; [+10]
       49 GETTABLEKS                       R14 R10 K10 ["set"]
       51 FASTCALL2                        TABLE_INSERT R4 R14 ; [+4]
       53 MOVE                             R13 R4
       54 GETIMPORT                        R12 K13 [table.insert]
       56 CALL                             R12 2 0
       57 JUMP                             ; [+53]
       58 GETTABLEKS                       R12 R11 K7 ["contents"]
       60 GETTABLEKS                       R12 R12 K14 ["key"]
       62 GETTABLE                         R13 R2 R12
       63 JUMPIFNOTEQKNIL                  R13 ; [+14]
       65 GETUPVAL                         R14 3
       66 LOADK                            R15 K15 ["%s is now dead"]
       67 MOVE                             R16 R12
       68 CALL                             R14 2 0
       69 GETTABLEKS                       R16 R10 K10 ["set"]
       71 FASTCALL2                        TABLE_INSERT R3 R16 ; [+4]
       73 MOVE                             R15 R3
       74 GETIMPORT                        R14 K13 [table.insert]
       76 CALL                             R14 2 0
       77 JUMP                             ; [+33]
       78 LOADNIL                          R14
       79 SETTABLE                         R14 R2 R12
       80 GETTABLE                         R14 R0 R13
       81 GETTABLEKS                       R15 R11 K7 ["contents"]
       83 GETTABLEKS                       R15 R15 K16 ["value"]
       85 JUMPIFEQ                         R15 R14 ; [+25]
       87 GETUPVAL                         R15 3
       88 LOADK                            R16 K17 ["%s existed, but changed"]
       89 MOVE                             R17 R12
       90 CALL                             R15 2 0
       91 GETTABLEKS                       R15 R10 K10 ["set"]
       93 DUPTABLE                         R16 K18 [{"contents"}]
       94 DUPTABLE                         R17 K20 [{"type", "index", "key", "value"}]
       95 LOADK                            R18 K21 ["full"]
       96 SETTABLEKS                       R18 R17 K8 ["type"]
       98 GETTABLEKS                       R20 R1 K4 ["X"]
      100 SUBK                             R19 R20 K3 [1]
      101 ADD                              R18 R13 R19
      102 SETTABLEKS                       R18 R17 K19 ["index"]
      104 SETTABLEKS                       R12 R17 K14 ["key"]
      106 SETTABLEKS                       R14 R17 K16 ["value"]
      108 SETTABLEKS                       R17 R16 K7 ["contents"]
      110 CALL                             R15 1 0
      111 FORGLOOP                         R6 2 ; [-74]
      113 GETUPVAL                         R6 3
      114 LOADK                            R7 K22 ["%d total setters, %d dead setters, %d vacant setters"]
      115 GETUPVAL                         R9 2
      116 LENGTH                           R8 R9
      117 LENGTH                           R9 R3
      118 LENGTH                           R10 R4
      119 CALL                             R6 4 0
      120 MOVE                             R6 R2
      121 LOADNIL                          R7
      122 LOADNIL                          R8
      123 FORGPREP                         R6
      124 JUMPIFNOTEQKNIL                  R10 ; [+2]
      126 LOADB                            R12 0 +1
      127 LOADB                            R12 1
      128 FASTCALL2K                       ASSERT R12 K23 ; [+4]
      130 LOADK                            R13 K23 ["Luau"]
      131 GETIMPORT                        R11 K25 [assert]
      133 CALL                             R11 2 0
      134 GETTABLE                         R11 R0 R10
      135 DUPTABLE                         R12 K18 [{"contents"}]
      136 DUPTABLE                         R13 K20 [{"type", "index", "key", "value"}]
      137 LOADK                            R14 K21 ["full"]
      138 SETTABLEKS                       R14 R13 K8 ["type"]
      140 GETTABLEKS                       R16 R1 K4 ["X"]
      142 SUBK                             R15 R16 K3 [1]
      143 ADD                              R14 R10 R15
      144 SETTABLEKS                       R14 R13 K19 ["index"]
      146 SETTABLEKS                       R9 R13 K14 ["key"]
      148 SETTABLEKS                       R11 R13 K16 ["value"]
      150 SETTABLEKS                       R13 R12 K7 ["contents"]
      152 GETIMPORT                        R13 K27 [table.remove]
      154 MOVE                             R14 R3
      155 CALL                             R13 1 1
      156 JUMPIFEQKNIL                     R13 ; [+9]
      158 GETUPVAL                         R14 3
      159 LOADK                            R15 K28 ["%s is filling dead spot"]
      160 MOVE                             R16 R9
      161 CALL                             R14 2 0
      162 MOVE                             R14 R13
      163 MOVE                             R15 R12
      164 CALL                             R14 1 0
      165 JUMP                             ; [+30]
      166 GETIMPORT                        R14 K27 [table.remove]
      168 MOVE                             R15 R4
      169 CALL                             R14 1 1
      170 JUMPIFEQKNIL                     R14 ; [+9]
      172 GETUPVAL                         R15 3
      173 LOADK                            R16 K29 ["%s is filling vacant spot"]
      174 MOVE                             R17 R9
      175 CALL                             R15 2 0
      176 MOVE                             R15 R14
      177 MOVE                             R16 R12
      178 CALL                             R15 1 0
      179 JUMP                             ; [+16]
      180 GETUPVAL                         R15 4
      181 GETTABLEKS                       R15 R15 K30 ["createBinding"]
      183 MOVE                             R16 R12
      184 CALL                             R15 1 2
      185 DUPTABLE                         R19 K31 [{"binding", "set"}]
      186 SETTABLEKS                       R15 R19 K5 ["binding"]
      188 SETTABLEKS                       R16 R19 K10 ["set"]
      190 FASTCALL2                        TABLE_INSERT R5 R19 ; [+4]
      192 MOVE                             R18 R5
      193 GETIMPORT                        R17 K13 [table.insert]
      195 CALL                             R17 2 0
      196 FORGLOOP                         R6 2 ; [-73]
      198 LENGTH                           R6 R5
      199 LOADN                            R7 0
      200 JUMPIFNOTLT                      R7 R6 ; [+13]
      202 GETUPVAL                         R6 3
      203 LOADK                            R7 K32 ["Needed to create %d more bindings to fit, there will be %d setters"]
      204 LENGTH                           R8 R5
      205 LENGTH                           R10 R5
      206 GETUPVAL                         R12 2
      207 LENGTH                           R11 R12
      208 ADD                              R9 R10 R11
      209 CALL                             R6 3 0
      210 GETUPVAL                         R6 5
      211 NEWCLOSURE                       R7 P0
      212 CAPTURE                          VAL R5
      213 CALL                             R6 1 0
      214 MOVE                             R6 R3
      215 LOADNIL                          R7
      216 LOADNIL                          R8
      217 FORGPREP                         R6
      218 MOVE                             R11 R10
      219 DUPTABLE                         R12 K18 [{"contents"}]
      220 DUPTABLE                         R13 K33 [{"type"}]
      221 LOADK                            R14 K9 ["vacant"]
      222 SETTABLEKS                       R14 R13 K8 ["type"]
      224 SETTABLEKS                       R13 R12 K7 ["contents"]
      226 CALL                             R11 1 0
      227 FORGLOOP                         R6 2 ; [-10]
      229 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["virtualizedListController"]
        3 GETTABLEKS                       R0 R0 K1 ["bindToUpdate"]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["contents"]
        2 GETTABLEKS                       R1 R1 K1 ["type"]
        4 JUMPIFNOTEQKS                    R1 K2 ["vacant"] ; [+13]
        6 DUPTABLE                         R1 K5 [{"size", "position"}]
        7 GETIMPORT                        R2 K8 [UDim2.new]
        9 CALL                             R2 0 1
       10 SETTABLEKS                       R2 R1 K3 ["size"]
       12 GETIMPORT                        R2 K8 [UDim2.new]
       14 CALL                             R2 0 1
       15 SETTABLEKS                       R2 R1 K4 ["position"]
       17 RETURN                           R1 1
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K9 ["getUDimRect"]
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R2 R2 K10 ["dimensions"]
       24 GETTABLEKS                       R3 R0 K0 ["contents"]
       26 GETTABLEKS                       R3 R3 K11 ["value"]
       28 GETTABLEKS                       R4 R0 K0 ["contents"]
       30 GETTABLEKS                       R4 R4 K12 ["index"]
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K13 ["virtualizedListController"]
       35 GETTABLEKS                       R5 R5 K14 ["getWindowSize"]
       37 CALL                             R5 0 1
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K15 ["direction"]
       41 CALL                             R1 5 -1
       42 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["position"]
        3 MOVE                             R4 R1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K1 ["direction"]
        7 CALL                             R2 3 -1
        8 RETURN                           R2 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["size"]
        2 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["contents"]
        2 GETTABLEKS                       R2 R2 K1 ["type"]
        4 JUMPIFEQKS                       R2 K2 ["full"] ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["contents"]
        2 GETTABLEKS                       R2 R2 K1 ["type"]
        4 JUMPIFNOTEQKS                    R2 K2 ["full"] ; [+6]
        6 GETTABLEKS                       R1 R0 K0 ["contents"]
        8 GETTABLEKS                       R1 R1 K3 ["value"]
       10 RETURN                           R1 1
       11 LOADNIL                          R1
       12 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CALL                             R1 1 2
        8 GETTABLEKS                       R3 R0 K1 ["getKey"]
       10 JUMPIF                           R3 ; [+1]
       11 GETUPVAL                         R3 2
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K2 ["useEffect"]
       15 NEWCLOSURE                       R5 P1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R3
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R6 0 3
       24 GETTABLEKS                       R7 R0 K3 ["virtualizedListController"]
       26 MOVE                             R8 R3
       27 MOVE                             R9 R1
       28 SETLIST                          R6 R7 3 [1]
       30 CALL                             R4 2 0
       31 NEWTABLE                         R4 0 0
       33 MOVE                             R5 R1
       34 LOADNIL                          R6
       35 LOADNIL                          R7
       36 FORGPREP                         R5
       37 GETTABLEKS                       R10 R9 K4 ["binding"]
       39 NEWCLOSURE                       R13 P2
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          VAL R0
       42 NAMECALL                         R11 R10 K5 ["map"]
       44 CALL                             R11 2 1
       45 LOADK                            R13 K6 ["Item%*"]
       46 MOVE                             R15 R8
       47 NAMECALL                         R13 R13 K7 ["format"]
       49 CALL                             R13 2 1
       50 MOVE                             R12 R13
       51 GETUPVAL                         R13 4
       52 LOADK                            R14 K8 ["Frame"]
       53 DUPTABLE                         R15 K13 [{"BackgroundTransparency", "Position", "Size", "Visible"}]
       54 LOADN                            R16 1
       55 SETTABLEKS                       R16 R15 K9 ["BackgroundTransparency"]
       57 GETUPVAL                         R16 5
       58 NEWCLOSURE                       R17 P3
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          VAL R0
       61 MOVE                             R18 R11
       62 GETTABLEKS                       R19 R0 K14 ["scrollAxisBinding"]
       64 CALL                             R16 3 1
       65 SETTABLEKS                       R16 R15 K10 ["Position"]
       67 DUPCLOSURE                       R18 K15 [PROTO_7]
       68 NAMECALL                         R16 R11 K5 ["map"]
       70 CALL                             R16 2 1
       71 SETTABLEKS                       R16 R15 K11 ["Size"]
       73 DUPCLOSURE                       R18 K16 [PROTO_8]
       74 NAMECALL                         R16 R10 K5 ["map"]
       76 CALL                             R16 2 1
       77 SETTABLEKS                       R16 R15 K12 ["Visible"]
       79 DUPTABLE                         R16 K18 [{"Content"}]
       80 GETTABLEKS                       R17 R0 K19 ["callback"]
       82 DUPCLOSURE                       R20 K20 [PROTO_9]
       83 NAMECALL                         R18 R10 K5 ["map"]
       85 CALL                             R18 2 -1
       86 CALL                             R17 -1 1
       87 SETTABLEKS                       R17 R16 K17 ["Content"]
       89 CALL                             R13 3 1
       90 SETTABLE                         R13 R4 R12
       91 FORGLOOP                         R5 2 ; [-55]
       93 GETUPVAL                         R5 4
       94 GETUPVAL                         R6 0
       95 GETTABLEKS                       R6 R6 K21 ["Fragment"]
       97 NEWTABLE                         R7 0 0
       99 MOVE                             R8 R4
      100 CALL                             R5 3 -1
      101 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ultimate-list"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Dimensions"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Dimensions"]
       16 GETTABLEKS                       R3 R3 K7 ["DimensionsMethods"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K8 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K6 ["Dimensions"]
       30 GETTABLEKS                       R5 R5 K10 ["adjustPositionToScrollAxis"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Util"]
       37 GETTABLEKS                       R6 R6 K12 ["createDebugLogger"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K13 ["createVirtualizedListController"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K11 ["Util"]
       49 GETTABLEKS                       R8 R8 K14 ["joinAndMapBindings"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R3 K15 ["createElement"]
       54 MOVE                             R9 R5
       55 LOADK                            R10 K16 ["ReactBindingsRenderer"]
       56 CALL                             R9 1 1
       57 DUPCLOSURE                       R10 K17 [PROTO_0]
       58 DUPCLOSURE                       R11 K18 [PROTO_10]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R4
       66 GETTABLEKS                       R12 R3 K19 ["memo"]
       68 MOVE                             R13 R11
       69 CALL                             R12 1 1
       70 MOVE                             R11 R12
       71 RETURN                           R11 1
