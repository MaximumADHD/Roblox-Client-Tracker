PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Value"]
        3 JUMPIF                           R0 ; [+2]
        4 LOADK                            R0 K1 [""]
        5 RETURN                           R0 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["Value"]
        9 FASTCALL1                        TOSTRING R1 ; [+2]
       10 GETIMPORT                        R0 K3 [tostring]
       12 CALL                             R0 1 1
       13 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K1 ["Value"]
        4 ORK                              R2 R3 K0 [""]
        5 FASTCALL1                        TOSTRING R2 ; [+2]
        6 GETIMPORT                        R1 K3 [tostring]
        8 CALL                             R1 1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onChanged"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["getValue"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onOptionSelected"]
        3 JUMPIFNOT                        R1 ; [+10]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["onOptionSelected"]
        7 FASTCALL1                        TOSTRING R0 ; [+3]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R2 K2 [tostring]
       11 CALL                             R2 1 1
       12 CALL                             R1 1 0
       13 JUMP                             ; [+9]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K3 ["onChanged"]
       17 FASTCALL1                        TOSTRING R0 ; [+3]
       18 MOVE                             R3 R0
       19 GETIMPORT                        R2 K2 [tostring]
       21 CALL                             R2 1 1
       22 CALL                             R1 1 0
       23 GETUPVAL                         R1 1
       24 LOADB                            R2 0
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["Options"]
        5 JUMPIFNOT                        R1 ; [+19]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R1 R4 K0 ["Options"]
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 DUPTABLE                         R8 K3 [{"id", "text"}]
       13 SETTABLEKS                       R5 R8 K1 ["id"]
       15 SETTABLEKS                       R5 R8 K2 ["text"]
       17 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       19 MOVE                             R7 R0
       20 GETIMPORT                        R6 K6 [table.insert]
       22 CALL                             R6 2 0
       23 FORGLOOP                         R1 2 ; [-12]
       25 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [UDim.new]
        3 LOADN                            R3 0
        4 GETTABLEKS                       R5 R0 K3 ["AbsoluteSize"]
        6 GETTABLEKS                       R4 R5 K4 ["X"]
        8 CALL                             R2 2 -1
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useState"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 2
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K1 ["useRef"]
        8 LOADNIL                          R5
        9 CALL                             R4 1 1
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K2 ["useBinding"]
       13 GETTABLEKS                       R6 R0 K3 ["width"]
       15 CALL                             R5 1 2
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R7 R8 K4 ["useMemo"]
       19 NEWCLOSURE                       R8 P0
       20 CAPTURE                          VAL R0
       21 NEWTABLE                         R9 0 1
       23 GETTABLEKS                       R10 R0 K5 ["Value"]
       25 SETLIST                          R9 R10 1 [1]
       27 CALL                             R7 2 1
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R8 R9 K2 ["useBinding"]
       31 MOVE                             R9 R7
       32 CALL                             R8 1 2
       33 GETUPVAL                         R11 0
       34 GETTABLEKS                       R10 R11 K6 ["useEffect"]
       36 NEWCLOSURE                       R11 P1
       37 CAPTURE                          VAL R9
       38 CAPTURE                          VAL R0
       39 NEWTABLE                         R12 0 1
       41 GETTABLEKS                       R13 R0 K5 ["Value"]
       43 SETLIST                          R12 R13 1 [1]
       45 CALL                             R10 2 0
       46 GETUPVAL                         R11 0
       47 GETTABLEKS                       R10 R11 K7 ["useCallback"]
       49 NEWCLOSURE                       R11 P2
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R8
       52 NEWTABLE                         R12 0 2
       54 GETTABLEKS                       R13 R0 K8 ["onChanged"]
       56 MOVE                             R14 R8
       57 SETLIST                          R12 R13 2 [1]
       59 CALL                             R10 2 1
       60 GETUPVAL                         R12 0
       61 GETTABLEKS                       R11 R12 K7 ["useCallback"]
       63 NEWCLOSURE                       R12 P3
       64 CAPTURE                          VAL R0
       65 CAPTURE                          VAL R3
       66 NEWTABLE                         R13 0 3
       68 MOVE                             R14 R3
       69 GETTABLEKS                       R15 R0 K8 ["onChanged"]
       71 GETTABLEKS                       R16 R0 K9 ["onOptionSelected"]
       73 SETLIST                          R13 R14 3 [1]
       75 CALL                             R11 2 1
       76 GETUPVAL                         R13 0
       77 GETTABLEKS                       R12 R13 K7 ["useCallback"]
       79 NEWCLOSURE                       R13 P4
       80 CAPTURE                          VAL R3
       81 NEWTABLE                         R14 0 1
       83 MOVE                             R15 R3
       84 SETLIST                          R14 R15 1 [1]
       86 CALL                             R12 2 1
       87 GETUPVAL                         R14 0
       88 GETTABLEKS                       R13 R14 K4 ["useMemo"]
       90 NEWCLOSURE                       R14 P5
       91 CAPTURE                          VAL R0
       92 NEWTABLE                         R15 0 1
       94 GETTABLEKS                       R16 R0 K10 ["Options"]
       96 SETLIST                          R15 R16 1 [1]
       98 CALL                             R13 2 1
       99 LENGTH                           R14 R13
      100 JUMPIFNOTEQKN                    R14 K11 [0] ; [+42]
      102 GETUPVAL                         R15 0
      103 GETTABLEKS                       R14 R15 K12 ["createElement"]
      105 GETUPVAL                         R16 1
      106 GETTABLEKS                       R15 R16 K13 ["TextInput"]
      108 DUPTABLE                         R16 K22 [{"tag", "label", "size", "width", "text", "isDisabled", "onChanged", "onFocusLost", "LayoutOrder", "ref"}]
      109 LOADK                            R17 K23 ["shrink"]
      110 SETTABLEKS                       R17 R16 K14 ["tag"]
      112 LOADK                            R17 K24 [""]
      113 SETTABLEKS                       R17 R16 K15 ["label"]
      115 GETTABLEKS                       R17 R0 K16 ["size"]
      117 SETTABLEKS                       R17 R16 K16 ["size"]
      119 GETTABLEKS                       R17 R0 K3 ["width"]
      121 SETTABLEKS                       R17 R16 K3 ["width"]
      123 GETTABLEKS                       R17 R0 K5 ["Value"]
      125 SETTABLEKS                       R17 R16 K17 ["text"]
      127 GETTABLEKS                       R17 R0 K18 ["isDisabled"]
      129 SETTABLEKS                       R17 R16 K18 ["isDisabled"]
      131 SETTABLEKS                       R9 R16 K8 ["onChanged"]
      133 SETTABLEKS                       R10 R16 K19 ["onFocusLost"]
      135 GETTABLEKS                       R17 R0 K20 ["LayoutOrder"]
      137 SETTABLEKS                       R17 R16 K20 ["LayoutOrder"]
      139 SETTABLEKS                       R4 R16 K21 ["ref"]
      141 CALL                             R14 2 1
      142 RETURN                           R14 1
      143 GETUPVAL                         R15 0
      144 GETTABLEKS                       R14 R15 K12 ["createElement"]
      146 GETUPVAL                         R17 1
      147 GETTABLEKS                       R16 R17 K25 ["Popover"]
      149 GETTABLEKS                       R15 R16 K26 ["Root"]
      151 DUPTABLE                         R16 K28 [{"isOpen", "ref"}]
      152 SETTABLEKS                       R2 R16 K27 ["isOpen"]
      154 SETTABLEKS                       R1 R16 K21 ["ref"]
      156 DUPTABLE                         R17 K31 [{"TextInput", "Anchor", "Menu"}]
      157 GETUPVAL                         R19 0
      158 GETTABLEKS                       R18 R19 K12 ["createElement"]
      160 GETUPVAL                         R20 1
      161 GETTABLEKS                       R19 R20 K13 ["TextInput"]
      163 DUPTABLE                         R20 K35 [{"tag", "label", "size", "width", "text", "isDisabled", "iconTrailing", "onChanged", "onFocusLost", "onFocusGained", "onAbsoluteSizeChanged", "LayoutOrder", "ref"}]
      164 LOADK                            R21 K23 ["shrink"]
      165 SETTABLEKS                       R21 R20 K14 ["tag"]
      167 LOADK                            R21 K24 [""]
      168 SETTABLEKS                       R21 R20 K15 ["label"]
      170 GETTABLEKS                       R21 R0 K16 ["size"]
      172 SETTABLEKS                       R21 R20 K16 ["size"]
      174 GETTABLEKS                       R21 R0 K3 ["width"]
      176 SETTABLEKS                       R21 R20 K3 ["width"]
      178 GETTABLEKS                       R21 R0 K5 ["Value"]
      180 SETTABLEKS                       R21 R20 K17 ["text"]
      182 GETTABLEKS                       R21 R0 K18 ["isDisabled"]
      184 SETTABLEKS                       R21 R20 K18 ["isDisabled"]
      186 DUPTABLE                         R21 K38 [{"name", "onActivated"}]
      187 JUMPIFNOT                        R2 ; [+8]
      188 GETUPVAL                         R25 1
      189 GETTABLEKS                       R24 R25 K39 ["Enums"]
      191 GETTABLEKS                       R23 R24 K40 ["IconName"]
      193 GETTABLEKS                       R22 R23 K41 ["ChevronSmallUp"]
      195 JUMP                             ; [+7]
      196 GETUPVAL                         R25 1
      197 GETTABLEKS                       R24 R25 K39 ["Enums"]
      199 GETTABLEKS                       R23 R24 K40 ["IconName"]
      201 GETTABLEKS                       R22 R23 K42 ["ChevronSmallDown"]
      203 SETTABLEKS                       R22 R21 K36 ["name"]
      205 NEWCLOSURE                       R22 P6
      206 CAPTURE                          VAL R3
      207 CAPTURE                          VAL R2
      208 SETTABLEKS                       R22 R21 K37 ["onActivated"]
      210 SETTABLEKS                       R21 R20 K32 ["iconTrailing"]
      212 SETTABLEKS                       R9 R20 K8 ["onChanged"]
      214 SETTABLEKS                       R10 R20 K19 ["onFocusLost"]
      216 SETTABLEKS                       R12 R20 K33 ["onFocusGained"]
      218 NEWCLOSURE                       R21 P7
      219 CAPTURE                          VAL R6
      220 SETTABLEKS                       R21 R20 K34 ["onAbsoluteSizeChanged"]
      222 GETTABLEKS                       R21 R0 K20 ["LayoutOrder"]
      224 SETTABLEKS                       R21 R20 K20 ["LayoutOrder"]
      226 SETTABLEKS                       R4 R20 K21 ["ref"]
      228 CALL                             R18 2 1
      229 SETTABLEKS                       R18 R17 K13 ["TextInput"]
      231 GETUPVAL                         R19 0
      232 GETTABLEKS                       R18 R19 K12 ["createElement"]
      234 GETUPVAL                         R21 1
      235 GETTABLEKS                       R20 R21 K25 ["Popover"]
      237 GETTABLEKS                       R19 R20 K29 ["Anchor"]
      239 DUPTABLE                         R20 K44 [{"anchorRef"}]
      240 SETTABLEKS                       R4 R20 K43 ["anchorRef"]
      242 CALL                             R18 2 1
      243 SETTABLEKS                       R18 R17 K29 ["Anchor"]
      245 GETUPVAL                         R19 0
      246 GETTABLEKS                       R18 R19 K12 ["createElement"]
      248 GETUPVAL                         R21 1
      249 GETTABLEKS                       R20 R21 K25 ["Popover"]
      251 GETTABLEKS                       R19 R20 K45 ["Content"]
      253 DUPTABLE                         R20 K51 [{"hasArrow", "align", "side", "onPressedOutside", "radius"}]
      254 LOADB                            R21 0
      255 SETTABLEKS                       R21 R20 K46 ["hasArrow"]
      257 GETUPVAL                         R24 1
      258 GETTABLEKS                       R23 R24 K39 ["Enums"]
      260 GETTABLEKS                       R22 R23 K52 ["PopoverAlign"]
      262 GETTABLEKS                       R21 R22 K53 ["End"]
      264 SETTABLEKS                       R21 R20 K47 ["align"]
      266 GETUPVAL                         R21 2
      267 SETTABLEKS                       R21 R20 K48 ["side"]
      269 SETTABLEKS                       R12 R20 K49 ["onPressedOutside"]
      271 GETUPVAL                         R24 1
      272 GETTABLEKS                       R23 R24 K39 ["Enums"]
      274 GETTABLEKS                       R22 R23 K54 ["Radius"]
      276 GETTABLEKS                       R21 R22 K55 ["Medium"]
      278 SETTABLEKS                       R21 R20 K50 ["radius"]
      280 GETUPVAL                         R22 0
      281 GETTABLEKS                       R21 R22 K12 ["createElement"]
      283 GETUPVAL                         R25 1
      284 GETTABLEKS                       R24 R25 K56 ["UNSTABLE"]
      286 GETTABLEKS                       R23 R24 K57 ["BaseMenu"]
      288 GETTABLEKS                       R22 R23 K26 ["Root"]
      290 DUPTABLE                         R23 K61 [{"size", "couldGrow", "width", "items", "onActivated", "radius", "testId"}]
      291 GETTABLEKS                       R24 R0 K16 ["size"]
      293 SETTABLEKS                       R24 R23 K16 ["size"]
      295 LOADB                            R24 1
      296 SETTABLEKS                       R24 R23 K58 ["couldGrow"]
      298 SETTABLEKS                       R5 R23 K3 ["width"]
      300 SETTABLEKS                       R13 R23 K59 ["items"]
      302 SETTABLEKS                       R11 R23 K37 ["onActivated"]
      304 GETUPVAL                         R27 1
      305 GETTABLEKS                       R26 R27 K39 ["Enums"]
      307 GETTABLEKS                       R25 R26 K54 ["Radius"]
      309 GETTABLEKS                       R24 R25 K55 ["Medium"]
      311 SETTABLEKS                       R24 R23 K50 ["radius"]
      313 LOADK                            R25 K62 ["%*--menu"]
      314 GETTABLEKS                       R27 R0 K60 ["testId"]
      316 NAMECALL                         R25 R25 K63 ["format"]
      318 CALL                             R25 2 1
      319 MOVE                             R24 R25
      320 SETTABLEKS                       R24 R23 K60 ["testId"]
      322 CALL                             R21 2 -1
      323 CALL                             R18 -1 1
      324 SETTABLEKS                       R18 R17 K30 ["Menu"]
      326 CALL                             R14 3 1
      327 RETURN                           R14 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 DUPTABLE                         R3 K11 [{"position", "offset"}]
       22 GETTABLEKS                       R6 R1 K12 ["Enums"]
       24 GETTABLEKS                       R5 R6 K13 ["PopoverSide"]
       26 GETTABLEKS                       R4 R5 K14 ["Bottom"]
       28 SETTABLEKS                       R4 R3 K9 ["position"]
       30 LOADN                            R4 5
       31 SETTABLEKS                       R4 R3 K10 ["offset"]
       33 DUPCLOSURE                       R4 K15 [PROTO_8]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R3
       37 GETTABLEKS                       R5 R2 K16 ["memo"]
       39 GETTABLEKS                       R6 R2 K17 ["forwardRef"]
       41 MOVE                             R7 R4
       42 CALL                             R6 1 -1
       43 CALL                             R5 -1 -1
       44 RETURN                           R5 -1
