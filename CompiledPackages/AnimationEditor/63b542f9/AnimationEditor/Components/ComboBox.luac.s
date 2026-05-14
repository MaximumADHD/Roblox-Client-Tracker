PROTO_0:
        0 JUMPIFNOT                        R0 ; [+1]
        1 JUMPIF                           R1 ; [+2]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 GETIMPORT                        R2 K1 [pairs]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 3
        8 FORGPREP_NEXT                    R2
        9 GETTABLEKS                       R7 R6 K2 ["id"]
       11 JUMPIFNOTEQ                      R7 R1 ; [+2]
       13 RETURN                           R6 1
       14 GETTABLEKS                       R7 R6 K3 ["items"]
       16 JUMPIFNOT                        R7 ; [+7]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R8 R6 K3 ["items"]
       20 MOVE                             R9 R1
       21 CALL                             R7 2 1
       22 JUMPIFNOT                        R7 ; [+1]
       23 RETURN                           R7 1
       24 FORGLOOP                         R2 2 ; [-16]
       26 LOADNIL                          R2
       27 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R2 1
        4 GETIMPORT                        R3 K1 [pairs]
        6 MOVE                             R4 R0
        7 CALL                             R3 1 3
        8 FORGPREP_NEXT                    R3
        9 GETTABLEKS                       R8 R7 K2 ["id"]
       11 JUMPIFNOT                        R8 ; [+29]
       12 DUPTABLE                         R10 K6 [{"id", "text", "icon", "isDisabled"}]
       13 GETTABLEKS                       R11 R7 K2 ["id"]
       15 SETTABLEKS                       R11 R10 K2 ["id"]
       17 JUMPIFNOT                        R1 ; [+4]
       18 MOVE                             R11 R1
       19 MOVE                             R12 R7
       20 CALL                             R11 1 1
       21 JUMP                             ; [+2]
       22 GETTABLEKS                       R11 R7 K3 ["text"]
       24 SETTABLEKS                       R11 R10 K3 ["text"]
       26 GETTABLEKS                       R11 R7 K4 ["icon"]
       28 SETTABLEKS                       R11 R10 K4 ["icon"]
       30 GETTABLEKS                       R11 R7 K5 ["isDisabled"]
       32 SETTABLEKS                       R11 R10 K5 ["isDisabled"]
       34 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       36 MOVE                             R9 R2
       37 GETIMPORT                        R8 K9 [table.insert]
       39 CALL                             R8 2 0
       40 JUMP                             ; [+21]
       41 GETTABLEKS                       R8 R7 K10 ["items"]
       43 JUMPIFNOT                        R8 ; [+18]
       44 DUPTABLE                         R10 K12 [{"title", "items"}]
       45 GETTABLEKS                       R11 R7 K11 ["title"]
       47 SETTABLEKS                       R11 R10 K11 ["title"]
       49 GETUPVAL                         R11 0
       50 GETTABLEKS                       R12 R7 K10 ["items"]
       52 MOVE                             R13 R1
       53 CALL                             R11 2 1
       54 SETTABLEKS                       R11 R10 K10 ["items"]
       56 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       58 MOVE                             R9 R2
       59 GETIMPORT                        R8 K9 [table.insert]
       61 CALL                             R8 2 0
       62 FORGLOOP                         R3 2 ; [-54]
       64 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Value"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADK                            R0 K1 [""]
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 1
        8 JUMPIFNOT                        R0 ; [+32]
        9 GETUPVAL                         R0 2
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K2 ["Options"]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["Value"]
       16 CALL                             R0 2 1
       17 JUMPIFNOT                        R0 ; [+15]
       18 GETUPVAL                         R1 3
       19 JUMPIF                           R1 ; [+10]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K3 ["formatAsString"]
       23 JUMPIFNOT                        R1 ; [+6]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K3 ["formatAsString"]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 -1
       29 RETURN                           R1 -1
       30 GETTABLEKS                       R1 R0 K4 ["text"]
       32 RETURN                           R1 1
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K0 ["Value"]
       36 FASTCALL1                        TOSTRING R2 ; [+2]
       37 GETIMPORT                        R1 K6 [tostring]
       39 CALL                             R1 1 1
       40 RETURN                           R1 1
       41 GETUPVAL                         R1 0
       42 GETTABLEKS                       R1 R1 K0 ["Value"]
       44 FASTCALL1                        TOSTRING R1 ; [+2]
       45 GETIMPORT                        R0 K6 [tostring]
       47 CALL                             R0 1 1
       48 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Options"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Value"]
        7 CALL                             R0 2 1
        8 JUMPIFNOT                        R0 ; [+3]
        9 GETTABLEKS                       R1 R0 K2 ["icon"]
       11 RETURN                           R1 1
       12 LOADNIL                          R1
       13 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+23]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["Options"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["Value"]
       10 CALL                             R0 2 1
       11 GETUPVAL                         R1 3
       12 JUMPIFNOT                        R0 ; [+3]
       13 GETTABLEKS                       R2 R0 K2 ["text"]
       15 JUMP                             ; [+8]
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K1 ["Value"]
       19 ORK                              R3 R4 K3 [""]
       20 FASTCALL1                        TOSTRING R3 ; [+2]
       21 GETIMPORT                        R2 K5 [tostring]
       23 CALL                             R2 1 1
       24 CALL                             R1 1 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R0 3
       27 GETUPVAL                         R3 2
       28 GETTABLEKS                       R3 R3 K1 ["Value"]
       30 ORK                              R2 R3 K3 [""]
       31 FASTCALL1                        TOSTRING R2 ; [+2]
       32 GETIMPORT                        R1 K5 [tostring]
       34 CALL                             R1 1 1
       35 CALL                             R0 1 0
       36 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+13]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onChanged"]
        6 LOADNIL                          R1
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K1 ["getValue"]
       10 CALL                             R2 1 -1
       11 CALL                             R0 -1 0
       12 GETUPVAL                         R0 3
       13 LOADB                            R1 0
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 1
       17 GETTABLEKS                       R0 R0 K0 ["onChanged"]
       19 GETUPVAL                         R1 2
       20 NAMECALL                         R1 R1 K1 ["getValue"]
       22 CALL                             R1 1 -1
       23 CALL                             R0 -1 0
       24 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+13]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onChanged"]
        6 FASTCALL1                        TOSTRING R0 ; [+3]
        7 MOVE                             R3 R0
        8 GETIMPORT                        R2 K2 [tostring]
       10 CALL                             R2 1 1
       11 LOADNIL                          R3
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 2
       14 CALL                             R1 0 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K3 ["onOptionSelected"]
       19 JUMPIFNOT                        R1 ; [+10]
       20 GETUPVAL                         R1 1
       21 GETTABLEKS                       R1 R1 K3 ["onOptionSelected"]
       23 FASTCALL1                        TOSTRING R0 ; [+3]
       24 MOVE                             R3 R0
       25 GETIMPORT                        R2 K2 [tostring]
       27 CALL                             R2 1 1
       28 CALL                             R1 1 0
       29 JUMP                             ; [+9]
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R1 R1 K0 ["onChanged"]
       33 FASTCALL1                        TOSTRING R0 ; [+3]
       34 MOVE                             R3 R0
       35 GETIMPORT                        R2 K2 [tostring]
       37 CALL                             R2 1 1
       38 CALL                             R1 1 0
       39 GETUPVAL                         R1 3
       40 LOADB                            R2 0
       41 CALL                             R1 1 0
       42 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+9]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["Options"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["formatAsString"]
       10 CALL                             R0 2 1
       11 RETURN                           R0 1
       12 NEWTABLE                         R0 0 0
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K0 ["Options"]
       17 JUMPIFNOT                        R1 ; [+19]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K0 ["Options"]
       21 LOADNIL                          R2
       22 LOADNIL                          R3
       23 FORGPREP                         R1
       24 DUPTABLE                         R8 K4 [{"id", "text"}]
       25 SETTABLEKS                       R5 R8 K2 ["id"]
       27 SETTABLEKS                       R5 R8 K3 ["text"]
       29 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       31 MOVE                             R7 R0
       32 GETIMPORT                        R6 K7 [table.insert]
       34 CALL                             R6 2 0
       35 FORGLOOP                         R1 2 ; [-12]
       37 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [UDim.new]
        3 LOADN                            R3 0
        4 GETTABLEKS                       R4 R0 K3 ["AbsoluteSize"]
        6 GETTABLEKS                       R4 R4 K4 ["X"]
        8 CALL                             R2 2 -1
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["useRef"]
        8 LOADNIL                          R5
        9 CALL                             R4 1 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["useBinding"]
       13 GETTABLEKS                       R6 R0 K3 ["width"]
       15 CALL                             R5 1 2
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K0 ["useState"]
       19 LOADB                            R8 0
       20 CALL                             R7 1 2
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K4 ["useMemo"]
       24 NEWCLOSURE                       R10 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R7
       29 NEWTABLE                         R11 0 4
       31 GETUPVAL                         R12 1
       32 CALL                             R12 0 1
       33 GETTABLEKS                       R13 R0 K5 ["Options"]
       35 GETTABLEKS                       R14 R0 K6 ["Value"]
       37 MOVE                             R15 R7
       38 SETLIST                          R11 R12 4 [1]
       40 CALL                             R9 2 1
       41 GETUPVAL                         R10 0
       42 GETTABLEKS                       R10 R10 K2 ["useBinding"]
       44 MOVE                             R11 R9
       45 CALL                             R10 1 2
       46 GETUPVAL                         R12 0
       47 GETTABLEKS                       R12 R12 K4 ["useMemo"]
       49 NEWCLOSURE                       R13 P1
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          VAL R0
       52 NEWTABLE                         R14 0 2
       54 GETTABLEKS                       R15 R0 K5 ["Options"]
       56 GETTABLEKS                       R16 R0 K6 ["Value"]
       58 SETLIST                          R14 R15 2 [1]
       60 CALL                             R12 2 1
       61 GETUPVAL                         R13 0
       62 GETTABLEKS                       R13 R13 K7 ["useEffect"]
       64 NEWCLOSURE                       R14 P2
       65 CAPTURE                          UPVAL U1
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R11
       69 NEWTABLE                         R15 0 3
       71 GETUPVAL                         R16 1
       72 CALL                             R16 0 1
       73 GETTABLEKS                       R17 R0 K5 ["Options"]
       75 GETTABLEKS                       R18 R0 K6 ["Value"]
       77 SETLIST                          R15 R16 3 [1]
       79 CALL                             R13 2 0
       80 GETUPVAL                         R13 0
       81 GETTABLEKS                       R13 R13 K8 ["useCallback"]
       83 NEWCLOSURE                       R14 P3
       84 CAPTURE                          VAL R3
       85 NEWTABLE                         R15 0 1
       87 MOVE                             R16 R3
       88 SETLIST                          R15 R16 1 [1]
       90 CALL                             R13 2 1
       91 GETUPVAL                         R14 0
       92 GETTABLEKS                       R14 R14 K8 ["useCallback"]
       94 NEWCLOSURE                       R15 P4
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R8
       97 NEWTABLE                         R16 0 2
       99 MOVE                             R17 R13
      100 MOVE                             R18 R8
      101 SETLIST                          R16 R17 2 [1]
      103 CALL                             R14 2 1
      104 GETUPVAL                         R15 0
      105 GETTABLEKS                       R15 R15 K8 ["useCallback"]
      107 NEWCLOSURE                       R16 P5
      108 CAPTURE                          UPVAL U1
      109 CAPTURE                          VAL R0
      110 CAPTURE                          VAL R10
      111 CAPTURE                          VAL R8
      112 NEWTABLE                         R17 0 4
      114 GETUPVAL                         R18 1
      115 CALL                             R18 0 1
      116 GETTABLEKS                       R19 R0 K9 ["onChanged"]
      118 MOVE                             R20 R10
      119 MOVE                             R21 R8
      120 SETLIST                          R17 R18 4 [1]
      122 CALL                             R15 2 1
      123 GETUPVAL                         R16 0
      124 GETTABLEKS                       R16 R16 K8 ["useCallback"]
      126 NEWCLOSURE                       R17 P6
      127 CAPTURE                          UPVAL U1
      128 CAPTURE                          VAL R0
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R3
      131 NEWTABLE                         R18 0 4
      133 GETUPVAL                         R19 1
      134 CALL                             R19 0 1
      135 GETTABLEKS                       R20 R0 K9 ["onChanged"]
      137 GETTABLEKS                       R21 R0 K10 ["onOptionSelected"]
      139 MOVE                             R22 R13
      140 SETLIST                          R18 R19 4 [1]
      142 CALL                             R16 2 1
      143 GETUPVAL                         R17 0
      144 GETTABLEKS                       R17 R17 K4 ["useMemo"]
      146 NEWCLOSURE                       R18 P7
      147 CAPTURE                          UPVAL U1
      148 CAPTURE                          UPVAL U3
      149 CAPTURE                          VAL R0
      150 NEWTABLE                         R19 0 3
      152 GETUPVAL                         R20 1
      153 CALL                             R20 0 1
      154 GETTABLEKS                       R21 R0 K5 ["Options"]
      156 GETTABLEKS                       R22 R0 K11 ["formatAsString"]
      158 SETLIST                          R19 R20 3 [1]
      160 CALL                             R17 2 1
      161 LENGTH                           R18 R17
      162 JUMPIFNOTEQKN                    R18 K12 [0] ; [+73]
      164 GETUPVAL                         R18 0
      165 GETTABLEKS                       R18 R18 K13 ["createElement"]
      167 GETUPVAL                         R19 4
      168 GETTABLEKS                       R19 R19 K14 ["TextInput"]
      170 DUPTABLE                         R20 K26 [{"tag", "label", "size", "width", "text", "isDisabled", "leadingIcon", "onChanged", "onFocusGained", "onFocusLost", "placeholder", "LayoutOrder", "ref"}]
      171 LOADK                            R21 K27 ["shrink"]
      172 SETTABLEKS                       R21 R20 K15 ["tag"]
      174 LOADK                            R21 K28 [""]
      175 SETTABLEKS                       R21 R20 K16 ["label"]
      177 GETTABLEKS                       R21 R0 K17 ["size"]
      179 SETTABLEKS                       R21 R20 K17 ["size"]
      181 GETTABLEKS                       R21 R0 K3 ["width"]
      183 SETTABLEKS                       R21 R20 K3 ["width"]
      185 GETUPVAL                         R23 1
      186 CALL                             R23 0 1
      187 JUMPIFNOT                        R23 ; [+2]
      188 MOVE                             R22 R9
      189 JUMP                             ; [+2]
      190 GETTABLEKS                       R22 R0 K6 ["Value"]
      192 ORK                              R21 R22 K28 [""]
      193 SETTABLEKS                       R21 R20 K18 ["text"]
      195 GETTABLEKS                       R21 R0 K19 ["isDisabled"]
      197 SETTABLEKS                       R21 R20 K19 ["isDisabled"]
      199 GETUPVAL                         R22 1
      200 CALL                             R22 0 1
      201 JUMPIFNOT                        R22 ; [+2]
      202 MOVE                             R21 R12
      203 JUMP                             ; [+1]
      204 LOADNIL                          R21
      205 SETTABLEKS                       R21 R20 K20 ["leadingIcon"]
      207 SETTABLEKS                       R11 R20 K9 ["onChanged"]
      209 GETUPVAL                         R22 1
      210 CALL                             R22 0 1
      211 JUMPIFNOT                        R22 ; [+2]
      212 MOVE                             R21 R14
      213 JUMP                             ; [+1]
      214 LOADNIL                          R21
      215 SETTABLEKS                       R21 R20 K21 ["onFocusGained"]
      217 SETTABLEKS                       R15 R20 K22 ["onFocusLost"]
      219 GETUPVAL                         R22 1
      220 CALL                             R22 0 1
      221 JUMPIFNOT                        R22 ; [+3]
      222 GETTABLEKS                       R21 R0 K23 ["placeholder"]
      224 JUMP                             ; [+1]
      225 LOADNIL                          R21
      226 SETTABLEKS                       R21 R20 K23 ["placeholder"]
      228 GETTABLEKS                       R21 R0 K24 ["LayoutOrder"]
      230 SETTABLEKS                       R21 R20 K24 ["LayoutOrder"]
      232 SETTABLEKS                       R4 R20 K25 ["ref"]
      234 CALL                             R18 2 1
      235 RETURN                           R18 1
      236 GETUPVAL                         R18 0
      237 GETTABLEKS                       R18 R18 K13 ["createElement"]
      239 GETUPVAL                         R19 4
      240 GETTABLEKS                       R19 R19 K29 ["Popover"]
      242 GETTABLEKS                       R19 R19 K30 ["Root"]
      244 DUPTABLE                         R20 K32 [{"isOpen", "ref"}]
      245 SETTABLEKS                       R2 R20 K31 ["isOpen"]
      247 SETTABLEKS                       R1 R20 K25 ["ref"]
      249 DUPTABLE                         R21 K35 [{"TextInput", "Anchor", "Menu"}]
      250 GETUPVAL                         R22 0
      251 GETTABLEKS                       R22 R22 K13 ["createElement"]
      253 GETUPVAL                         R23 4
      254 GETTABLEKS                       R23 R23 K14 ["TextInput"]
      256 DUPTABLE                         R24 K38 [{"tag", "label", "size", "width", "text", "isDisabled", "iconTrailing", "leadingIcon", "onChanged", "onFocusLost", "onFocusGained", "onAbsoluteSizeChanged", "placeholder", "LayoutOrder", "ref"}]
      257 LOADK                            R25 K27 ["shrink"]
      258 SETTABLEKS                       R25 R24 K15 ["tag"]
      260 LOADK                            R25 K28 [""]
      261 SETTABLEKS                       R25 R24 K16 ["label"]
      263 GETTABLEKS                       R25 R0 K17 ["size"]
      265 SETTABLEKS                       R25 R24 K17 ["size"]
      267 GETTABLEKS                       R25 R0 K3 ["width"]
      269 SETTABLEKS                       R25 R24 K3 ["width"]
      271 GETUPVAL                         R27 1
      272 CALL                             R27 0 1
      273 JUMPIFNOT                        R27 ; [+2]
      274 MOVE                             R26 R9
      275 JUMP                             ; [+2]
      276 GETTABLEKS                       R26 R0 K6 ["Value"]
      278 ORK                              R25 R26 K28 [""]
      279 SETTABLEKS                       R25 R24 K18 ["text"]
      281 GETTABLEKS                       R25 R0 K19 ["isDisabled"]
      283 SETTABLEKS                       R25 R24 K19 ["isDisabled"]
      285 DUPTABLE                         R25 K41 [{"name", "onActivated"}]
      286 JUMPIFNOT                        R2 ; [+8]
      287 GETUPVAL                         R26 4
      288 GETTABLEKS                       R26 R26 K42 ["Enums"]
      290 GETTABLEKS                       R26 R26 K43 ["IconName"]
      292 GETTABLEKS                       R26 R26 K44 ["ChevronSmallUp"]
      294 JUMP                             ; [+7]
      295 GETUPVAL                         R26 4
      296 GETTABLEKS                       R26 R26 K42 ["Enums"]
      298 GETTABLEKS                       R26 R26 K43 ["IconName"]
      300 GETTABLEKS                       R26 R26 K45 ["ChevronSmallDown"]
      302 SETTABLEKS                       R26 R25 K39 ["name"]
      304 NEWCLOSURE                       R26 P8
      305 CAPTURE                          VAL R3
      306 CAPTURE                          VAL R2
      307 SETTABLEKS                       R26 R25 K40 ["onActivated"]
      309 SETTABLEKS                       R25 R24 K36 ["iconTrailing"]
      311 GETUPVAL                         R26 1
      312 CALL                             R26 0 1
      313 JUMPIFNOT                        R26 ; [+2]
      314 MOVE                             R25 R12
      315 JUMP                             ; [+1]
      316 LOADNIL                          R25
      317 SETTABLEKS                       R25 R24 K20 ["leadingIcon"]
      319 SETTABLEKS                       R11 R24 K9 ["onChanged"]
      321 SETTABLEKS                       R15 R24 K22 ["onFocusLost"]
      323 GETUPVAL                         R26 1
      324 CALL                             R26 0 1
      325 JUMPIFNOT                        R26 ; [+2]
      326 MOVE                             R25 R14
      327 JUMP                             ; [+1]
      328 MOVE                             R25 R13
      329 SETTABLEKS                       R25 R24 K21 ["onFocusGained"]
      331 NEWCLOSURE                       R25 P9
      332 CAPTURE                          VAL R6
      333 SETTABLEKS                       R25 R24 K37 ["onAbsoluteSizeChanged"]
      335 GETUPVAL                         R26 1
      336 CALL                             R26 0 1
      337 JUMPIFNOT                        R26 ; [+3]
      338 GETTABLEKS                       R25 R0 K23 ["placeholder"]
      340 JUMP                             ; [+1]
      341 LOADNIL                          R25
      342 SETTABLEKS                       R25 R24 K23 ["placeholder"]
      344 GETTABLEKS                       R25 R0 K24 ["LayoutOrder"]
      346 SETTABLEKS                       R25 R24 K24 ["LayoutOrder"]
      348 SETTABLEKS                       R4 R24 K25 ["ref"]
      350 CALL                             R22 2 1
      351 SETTABLEKS                       R22 R21 K14 ["TextInput"]
      353 GETUPVAL                         R22 0
      354 GETTABLEKS                       R22 R22 K13 ["createElement"]
      356 GETUPVAL                         R23 4
      357 GETTABLEKS                       R23 R23 K29 ["Popover"]
      359 GETTABLEKS                       R23 R23 K33 ["Anchor"]
      361 DUPTABLE                         R24 K47 [{"anchorRef"}]
      362 SETTABLEKS                       R4 R24 K46 ["anchorRef"]
      364 CALL                             R22 2 1
      365 SETTABLEKS                       R22 R21 K33 ["Anchor"]
      367 GETUPVAL                         R22 0
      368 GETTABLEKS                       R22 R22 K13 ["createElement"]
      370 GETUPVAL                         R23 4
      371 GETTABLEKS                       R23 R23 K29 ["Popover"]
      373 GETTABLEKS                       R23 R23 K48 ["Content"]
      375 DUPTABLE                         R24 K54 [{"hasArrow", "align", "side", "onPressedOutside", "radius"}]
      376 LOADB                            R25 0
      377 SETTABLEKS                       R25 R24 K49 ["hasArrow"]
      379 GETUPVAL                         R25 4
      380 GETTABLEKS                       R25 R25 K42 ["Enums"]
      382 GETTABLEKS                       R25 R25 K55 ["PopoverAlign"]
      384 GETTABLEKS                       R25 R25 K56 ["End"]
      386 SETTABLEKS                       R25 R24 K50 ["align"]
      388 GETUPVAL                         R25 5
      389 SETTABLEKS                       R25 R24 K51 ["side"]
      391 SETTABLEKS                       R13 R24 K52 ["onPressedOutside"]
      393 GETUPVAL                         R25 4
      394 GETTABLEKS                       R25 R25 K42 ["Enums"]
      396 GETTABLEKS                       R25 R25 K57 ["Radius"]
      398 GETTABLEKS                       R25 R25 K58 ["Medium"]
      400 SETTABLEKS                       R25 R24 K53 ["radius"]
      402 GETUPVAL                         R25 0
      403 GETTABLEKS                       R25 R25 K13 ["createElement"]
      405 GETUPVAL                         R26 4
      406 GETTABLEKS                       R26 R26 K59 ["UNSTABLE"]
      408 GETTABLEKS                       R26 R26 K60 ["BaseMenu"]
      410 GETTABLEKS                       R26 R26 K30 ["Root"]
      412 DUPTABLE                         R27 K64 [{"size", "couldGrow", "width", "items", "onActivated", "radius", "testId"}]
      413 GETTABLEKS                       R28 R0 K17 ["size"]
      415 SETTABLEKS                       R28 R27 K17 ["size"]
      417 LOADB                            R28 1
      418 SETTABLEKS                       R28 R27 K61 ["couldGrow"]
      420 SETTABLEKS                       R5 R27 K3 ["width"]
      422 SETTABLEKS                       R17 R27 K62 ["items"]
      424 SETTABLEKS                       R16 R27 K40 ["onActivated"]
      426 GETUPVAL                         R28 4
      427 GETTABLEKS                       R28 R28 K42 ["Enums"]
      429 GETTABLEKS                       R28 R28 K57 ["Radius"]
      431 GETTABLEKS                       R28 R28 K58 ["Medium"]
      433 SETTABLEKS                       R28 R27 K53 ["radius"]
      435 LOADK                            R29 K65 ["%*--menu"]
      436 GETTABLEKS                       R31 R0 K63 ["testId"]
      438 NAMECALL                         R29 R29 K66 ["format"]
      440 CALL                             R29 2 1
      441 MOVE                             R28 R29
      442 SETTABLEKS                       R28 R27 K63 ["testId"]
      444 CALL                             R25 2 -1
      445 CALL                             R22 -1 1
      446 SETTABLEKS                       R22 R21 K34 ["Menu"]
      448 CALL                             R18 3 1
      449 RETURN                           R18 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Flags"]
       25 GETTABLEKS                       R4 R4 K10 ["getFFlagAnimGraphUIGraphComboBox"]
       27 CALL                             R3 1 1
       28 DUPTABLE                         R4 K13 [{"position", "offset"}]
       29 GETTABLEKS                       R5 R1 K14 ["Enums"]
       31 GETTABLEKS                       R5 R5 K15 ["PopoverSide"]
       33 GETTABLEKS                       R5 R5 K16 ["Bottom"]
       35 SETTABLEKS                       R5 R4 K11 ["position"]
       37 LOADN                            R5 5
       38 SETTABLEKS                       R5 R4 K12 ["offset"]
       40 DUPCLOSURE                       R5 K17 [PROTO_0]
       41 CAPTURE                          VAL R5
       42 DUPCLOSURE                       R6 K18 [PROTO_1]
       43 CAPTURE                          VAL R6
       44 DUPCLOSURE                       R7 K19 [PROTO_12]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R4
       51 GETTABLEKS                       R8 R2 K20 ["memo"]
       53 GETTABLEKS                       R9 R2 K21 ["forwardRef"]
       55 MOVE                             R10 R7
       56 CALL                             R9 1 -1
       57 CALL                             R8 -1 -1
       58 RETURN                           R8 -1
