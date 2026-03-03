PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R6 1
        7 MOVE                             R8 R5
        8 NAMECALL                         R6 R6 K0 ["getScopeWithUid"]
       10 CALL                             R6 2 1
       11 JUMPIF                           R6 ; [+10]
       12 GETUPVAL                         R7 2
       13 LOADK                            R9 K1 ["Could not find source %* in search ScopeSelector"]
       14 MOVE                             R11 R5
       15 NAMECALL                         R9 R9 K2 ["format"]
       17 CALL                             R9 2 1
       18 MOVE                             R8 R9
       19 LOADK                            R9 K3 ["WARN"]
       20 CALL                             R7 2 0
       21 JUMP                             ; [+87]
       22 GETUPVAL                         R7 3
       23 GETUPVAL                         R9 4
       24 GETTABLEKS                       R8 R9 K4 ["Name"]
       26 JUMPIFEQ                         R7 R8 ; [+15]
       28 GETIMPORT                        R7 K7 [string.find]
       30 GETIMPORT                        R8 K9 [string.lower]
       32 GETTABLEKS                       R9 R6 K4 ["Name"]
       34 CALL                             R8 1 1
       35 GETIMPORT                        R9 K9 [string.lower]
       37 GETUPVAL                         R10 3
       38 CALL                             R9 1 -1
       39 CALL                             R7 -1 1
       40 JUMPIFEQKNIL                     R7 ; [+68]
       42 GETTABLEKS                       R8 R6 K10 ["Type"]
       44 GETUPVAL                         R11 5
       45 GETTABLEKS                       R10 R11 K11 ["ScopeType"]
       47 GETTABLEKS                       R9 R10 K12 ["Universe"]
       49 JUMPIFNOTEQ                      R8 R9 ; [+11]
       51 GETUPVAL                         R8 6
       52 GETTABLEKS                       R7 R8 K13 ["get"]
       54 GETUPVAL                         R10 6
       55 GETTABLEKS                       R9 R10 K14 ["AvailableImages"]
       57 GETTABLEKS                       R8 R9 K12 ["Universe"]
       59 CALL                             R7 1 1
       60 JUMP                             ; [+28]
       61 GETTABLEKS                       R8 R6 K10 ["Type"]
       63 GETUPVAL                         R11 5
       64 GETTABLEKS                       R10 R11 K11 ["ScopeType"]
       66 GETTABLEKS                       R9 R10 K15 ["Group"]
       68 JUMPIFNOTEQ                      R8 R9 ; [+11]
       70 GETUPVAL                         R8 6
       71 GETTABLEKS                       R7 R8 K13 ["get"]
       73 GETUPVAL                         R10 6
       74 GETTABLEKS                       R9 R10 K14 ["AvailableImages"]
       76 GETTABLEKS                       R8 R9 K15 ["Group"]
       78 CALL                             R7 1 1
       79 JUMP                             ; [+9]
       80 GETUPVAL                         R8 6
       81 GETTABLEKS                       R7 R8 K13 ["get"]
       83 GETUPVAL                         R10 6
       84 GETTABLEKS                       R9 R10 K14 ["AvailableImages"]
       86 GETTABLEKS                       R8 R9 K16 ["User"]
       88 CALL                             R7 1 1
       89 DUPTABLE                         R10 K20 [{"Key", "Label", "Icon"}]
       90 GETTABLEKS                       R11 R6 K21 ["Id"]
       92 SETTABLEKS                       R11 R10 K17 ["Key"]
       94 GETTABLEKS                       R11 R6 K4 ["Name"]
       96 SETTABLEKS                       R11 R10 K18 ["Label"]
       98 DUPTABLE                         R11 K23 [{"Image"}]
       99 SETTABLEKS                       R7 R11 K22 ["Image"]
      101 SETTABLEKS                       R11 R10 K19 ["Icon"]
      103 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
      105 MOVE                             R9 R0
      106 GETIMPORT                        R8 K26 [table.insert]
      108 CALL                             R8 2 0
      109 FORGLOOP                         R1 2 ; [-104]
      111 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R1 R2 K1 ["Name"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 3
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R2 R3 K2 ["Uid"]
       15 NAMECALL                         R0 R0 K3 ["setScope"]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R0 R1 K0 ["current"]
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R1 R2 K1 ["Name"]
       24 SETTABLEKS                       R1 R0 K4 ["Text"]
       26 GETUPVAL                         R0 4
       27 LOADB                            R1 0
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETIMPORT                        R0 K3 [string.lower]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K0 ["current"]
       11 GETTABLEKS                       R1 R2 K4 ["Text"]
       13 CALL                             R0 1 1
       14 GETUPVAL                         R1 1
       15 LOADNIL                          R2
       16 LOADNIL                          R3
       17 FORGPREP                         R1
       18 GETUPVAL                         R6 2
       19 MOVE                             R8 R5
       20 NAMECALL                         R6 R6 K5 ["getScopeWithUid"]
       22 CALL                             R6 2 1
       23 GETIMPORT                        R7 K3 [string.lower]
       25 GETTABLEKS                       R8 R6 K6 ["Name"]
       27 CALL                             R7 1 1
       28 JUMPIFNOTEQ                      R7 R0 ; [+26]
       30 GETUPVAL                         R7 3
       31 MOVE                             R9 R5
       32 NAMECALL                         R7 R7 K7 ["setScope"]
       34 CALL                             R7 2 0
       35 GETUPVAL                         R7 4
       36 LOADB                            R8 0
       37 CALL                             R7 1 0
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R8 R9 K0 ["current"]
       41 GETTABLEKS                       R7 R8 K4 ["Text"]
       43 GETTABLEKS                       R8 R6 K6 ["Name"]
       45 JUMPIFEQ                         R7 R8 ; [+8]
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R7 R8 K0 ["current"]
       50 GETTABLEKS                       R8 R6 K6 ["Name"]
       52 SETTABLEKS                       R8 R7 K4 ["Text"]
       54 RETURN                           R0 0
       55 FORGLOOP                         R1 2 ; [-38]
       57 GETUPVAL                         R1 5
       58 CALL                             R1 0 0
       59 RETURN                           R0 0

PROTO_3:
        0 JUMPIF                           R0 ; [+3]
        1 GETUPVAL                         R1 0
        2 LOADN                            R2 0
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        7 GETTABLEKS                       R2 R3 K1 ["X"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 LOADB                            R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 2
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 JUMPIF                           R0 ; [+2]
        5 GETUPVAL                         R0 2
        6 CALL                             R0 0 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["current"]
        9 GETTABLEKS                       R2 R0 K1 ["Label"]
       11 SETTABLEKS                       R2 R1 K2 ["Text"]
       13 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 3
       11 CALL                             R4 0 1
       12 GETUPVAL                         R6 4
       13 GETTABLEKS                       R5 R6 K1 ["useRef"]
       15 LOADNIL                          R6
       16 CALL                             R5 1 1
       17 GETUPVAL                         R7 4
       18 GETTABLEKS                       R6 R7 K1 ["useRef"]
       20 LOADNIL                          R7
       21 CALL                             R6 1 1
       22 GETUPVAL                         R7 5
       23 LOADK                            R8 K2 [""]
       24 CALL                             R7 1 2
       25 GETUPVAL                         R10 4
       26 GETTABLEKS                       R9 R10 K3 ["useState"]
       28 LOADB                            R10 0
       29 CALL                             R9 1 2
       30 GETUPVAL                         R12 4
       31 GETTABLEKS                       R11 R12 K3 ["useState"]
       33 LOADB                            R12 0
       34 CALL                             R11 1 2
       35 GETUPVAL                         R14 4
       36 GETTABLEKS                       R13 R14 K3 ["useState"]
       38 LOADB                            R14 0
       39 CALL                             R13 1 2
       40 GETTABLEKS                       R16 R3 K4 ["SearchOptions"]
       42 GETTABLEKS                       R15 R16 K5 ["ScopeInfo"]
       44 GETUPVAL                         R16 6
       45 NEWCLOSURE                       R17 P0
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U7
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R15
       51 CAPTURE                          UPVAL U8
       52 CAPTURE                          UPVAL U9
       53 NEWTABLE                         R18 0 2
       55 MOVE                             R19 R7
       56 MOVE                             R20 R3
       57 SETLIST                          R18 R19 2 [1]
       59 CALL                             R16 2 1
       60 GETUPVAL                         R17 10
       61 NEWCLOSURE                       R18 P1
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R15
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R14
       67 NEWTABLE                         R19 0 2
       69 MOVE                             R20 R5
       70 MOVE                             R21 R15
       71 SETLIST                          R19 R20 2 [1]
       73 CALL                             R17 2 1
       74 GETUPVAL                         R18 10
       75 NEWCLOSURE                       R19 P2
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R14
       81 CAPTURE                          VAL R17
       82 NEWTABLE                         R20 0 3
       84 MOVE                             R21 R5
       85 MOVE                             R22 R4
       86 MOVE                             R23 R15
       87 SETLIST                          R20 R21 3 [1]
       89 CALL                             R18 2 1
       90 GETUPVAL                         R19 5
       91 LOADN                            R20 0
       92 CALL                             R19 1 2
       93 GETUPVAL                         R21 10
       94 NEWCLOSURE                       R22 P3
       95 CAPTURE                          VAL R20
       96 NEWTABLE                         R23 0 0
       98 CALL                             R21 2 1
       99 GETUPVAL                         R23 4
      100 GETTABLEKS                       R22 R23 K6 ["createElement"]
      102 GETUPVAL                         R23 11
      103 NEWTABLE                         R24 4 0
      105 SETTABLEKS                       R6 R24 K7 ["ref"]
      107 GETTABLEKS                       R25 R0 K8 ["LayoutOrder"]
      109 SETTABLEKS                       R25 R24 K8 ["LayoutOrder"]
      111 GETUPVAL                         R27 4
      112 GETTABLEKS                       R26 R27 K9 ["Change"]
      114 GETTABLEKS                       R25 R26 K10 ["AbsoluteSize"]
      116 SETTABLE                         R21 R24 R25
      117 GETUPVAL                         R26 4
      118 GETTABLEKS                       R25 R26 K11 ["Tag"]
      120 LOADK                            R26 K12 ["X-FitY"]
      121 SETTABLE                         R26 R24 R25
      122 DUPTABLE                         R25 K16 [{"SourceDropdown", "CaretIcon", "Menu"}]
      123 GETUPVAL                         R27 4
      124 GETTABLEKS                       R26 R27 K6 ["createElement"]
      126 GETUPVAL                         R27 12
      127 NEWTABLE                         R28 8 0
      129 SETTABLEKS                       R5 R28 K7 ["ref"]
      131 GETTABLEKS                       R31 R3 K4 ["SearchOptions"]
      133 GETTABLEKS                       R30 R31 K5 ["ScopeInfo"]
      135 GETTABLEKS                       R29 R30 K17 ["Name"]
      137 SETTABLEKS                       R29 R28 K18 ["Text"]
      139 NEWCLOSURE                       R29 P4
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R14
      142 CAPTURE                          VAL R12
      143 SETTABLEKS                       R29 R28 K19 ["OnFocused"]
      145 NEWCLOSURE                       R29 P5
      146 CAPTURE                          VAL R10
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R18
      149 SETTABLEKS                       R29 R28 K20 ["OnFocusLost"]
      151 NEWCLOSURE                       R29 P6
      152 CAPTURE                          VAL R12
      153 CAPTURE                          VAL R8
      154 SETTABLEKS                       R29 R28 K21 ["OnTextChanged"]
      156 GETUPVAL                         R30 4
      157 GETTABLEKS                       R29 R30 K11 ["Tag"]
      159 LOADK                            R30 K22 ["X-AnchorCenter"]
      160 SETTABLE                         R30 R28 R29
      161 CALL                             R26 2 1
      162 SETTABLEKS                       R26 R25 K13 ["SourceDropdown"]
      164 GETUPVAL                         R27 4
      165 GETTABLEKS                       R26 R27 K6 ["createElement"]
      167 GETUPVAL                         R27 13
      168 NEWTABLE                         R28 1 0
      170 GETUPVAL                         R30 4
      171 GETTABLEKS                       R29 R30 K11 ["Tag"]
      173 LOADK                            R30 K23 ["ArrowIcon anchor-center-right am-position-center-right-xoffset-small"]
      174 SETTABLE                         R30 R28 R29
      175 CALL                             R26 2 1
      176 SETTABLEKS                       R26 R25 K14 ["CaretIcon"]
      178 GETUPVAL                         R27 4
      179 GETTABLEKS                       R26 R27 K6 ["createElement"]
      181 GETUPVAL                         R27 14
      182 DUPTABLE                         R28 K28 [{"Items", "Hide", "OnFocusLost", "OnItemActivated", "Width"}]
      183 SETTABLEKS                       R16 R28 K24 ["Items"]
      185 NOT                              R29 R13
      186 SETTABLEKS                       R29 R28 K25 ["Hide"]
      188 NEWCLOSURE                       R29 P7
      189 CAPTURE                          VAL R12
      190 CAPTURE                          VAL R9
      191 CAPTURE                          VAL R18
      192 SETTABLEKS                       R29 R28 K20 ["OnFocusLost"]
      194 NEWCLOSURE                       R29 P8
      195 CAPTURE                          VAL R5
      196 SETTABLEKS                       R29 R28 K26 ["OnItemActivated"]
      198 SETTABLEKS                       R19 R28 K27 ["Width"]
      200 CALL                             R26 2 1
      201 SETTABLEKS                       R26 R25 K15 ["Menu"]
      203 CALL                             R22 3 -1
      204 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R5 K10 ["Types"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["UI"]
       30 GETTABLEKS                       R5 R4 K12 ["Image"]
       32 GETTABLEKS                       R6 R4 K13 ["Pane"]
       34 GETTABLEKS                       R7 R4 K14 ["DropdownMenu"]
       36 GETTABLEKS                       R8 R4 K15 ["TextInput"]
       38 GETIMPORT                        R9 K5 [require]
       40 GETTABLEKS                       R12 R0 K9 ["Src"]
       42 GETTABLEKS                       R11 R12 K16 ["Controllers"]
       44 GETTABLEKS                       R10 R11 K17 ["ExplorerController"]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K5 [require]
       49 GETTABLEKS                       R13 R0 K9 ["Src"]
       51 GETTABLEKS                       R12 R13 K16 ["Controllers"]
       53 GETTABLEKS                       R11 R12 K18 ["SearchController"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K5 [require]
       58 GETTABLEKS                       R14 R0 K9 ["Src"]
       60 GETTABLEKS                       R13 R14 K19 ["Hooks"]
       62 GETTABLEKS                       R12 R13 K20 ["useSearchInfo"]
       64 CALL                             R11 1 1
       65 GETIMPORT                        R12 K5 [require]
       67 GETTABLEKS                       R15 R0 K9 ["Src"]
       69 GETTABLEKS                       R14 R15 K19 ["Hooks"]
       71 GETTABLEKS                       R13 R14 K21 ["useSourceList"]
       73 CALL                             R12 1 1
       74 GETTABLEKS                       R13 R1 K22 ["useState"]
       76 GETTABLEKS                       R14 R1 K23 ["useMemo"]
       78 GETTABLEKS                       R15 R1 K24 ["useCallback"]
       80 GETIMPORT                        R16 K5 [require]
       82 GETTABLEKS                       R19 R0 K9 ["Src"]
       84 GETTABLEKS                       R18 R19 K25 ["Util"]
       86 GETTABLEKS                       R17 R18 K26 ["Images"]
       88 CALL                             R16 1 1
       89 GETIMPORT                        R17 K5 [require]
       91 GETTABLEKS                       R20 R0 K9 ["Src"]
       93 GETTABLEKS                       R19 R20 K25 ["Util"]
       95 GETTABLEKS                       R18 R19 K27 ["logIfDebug"]
       97 CALL                             R17 1 1
       98 DUPCLOSURE                       R18 K28 [PROTO_9]
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R17
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R16
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R7
      114 RETURN                           R18 1
