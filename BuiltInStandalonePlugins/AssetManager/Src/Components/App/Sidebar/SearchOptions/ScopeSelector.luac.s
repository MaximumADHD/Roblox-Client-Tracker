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
       11 GETUPVAL                         R7 2
       12 GETUPVAL                         R9 3
       13 GETTABLEKS                       R8 R9 K1 ["Name"]
       15 JUMPIFEQ                         R7 R8 ; [+15]
       17 GETIMPORT                        R7 K4 [string.find]
       19 GETIMPORT                        R8 K6 [string.lower]
       21 GETTABLEKS                       R9 R6 K1 ["Name"]
       23 CALL                             R8 1 1
       24 GETIMPORT                        R9 K6 [string.lower]
       26 GETUPVAL                         R10 2
       27 CALL                             R9 1 -1
       28 CALL                             R7 -1 1
       29 JUMPIFEQKNIL                     R7 ; [+68]
       31 GETTABLEKS                       R8 R6 K7 ["Type"]
       33 GETUPVAL                         R11 4
       34 GETTABLEKS                       R10 R11 K8 ["ScopeType"]
       36 GETTABLEKS                       R9 R10 K9 ["Universe"]
       38 JUMPIFNOTEQ                      R8 R9 ; [+11]
       40 GETUPVAL                         R8 5
       41 GETTABLEKS                       R7 R8 K10 ["get"]
       43 GETUPVAL                         R10 5
       44 GETTABLEKS                       R9 R10 K11 ["AvailableImages"]
       46 GETTABLEKS                       R8 R9 K9 ["Universe"]
       48 CALL                             R7 1 1
       49 JUMP                             ; [+28]
       50 GETTABLEKS                       R8 R6 K7 ["Type"]
       52 GETUPVAL                         R11 4
       53 GETTABLEKS                       R10 R11 K8 ["ScopeType"]
       55 GETTABLEKS                       R9 R10 K12 ["Group"]
       57 JUMPIFNOTEQ                      R8 R9 ; [+11]
       59 GETUPVAL                         R8 5
       60 GETTABLEKS                       R7 R8 K10 ["get"]
       62 GETUPVAL                         R10 5
       63 GETTABLEKS                       R9 R10 K11 ["AvailableImages"]
       65 GETTABLEKS                       R8 R9 K12 ["Group"]
       67 CALL                             R7 1 1
       68 JUMP                             ; [+9]
       69 GETUPVAL                         R8 5
       70 GETTABLEKS                       R7 R8 K10 ["get"]
       72 GETUPVAL                         R10 5
       73 GETTABLEKS                       R9 R10 K11 ["AvailableImages"]
       75 GETTABLEKS                       R8 R9 K13 ["User"]
       77 CALL                             R7 1 1
       78 DUPTABLE                         R10 K17 [{"Key", "Label", "Icon"}]
       79 GETTABLEKS                       R11 R6 K18 ["Id"]
       81 SETTABLEKS                       R11 R10 K14 ["Key"]
       83 GETTABLEKS                       R11 R6 K1 ["Name"]
       85 SETTABLEKS                       R11 R10 K15 ["Label"]
       87 DUPTABLE                         R11 K20 [{"Image"}]
       88 SETTABLEKS                       R7 R11 K19 ["Image"]
       90 SETTABLEKS                       R11 R10 K16 ["Icon"]
       92 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
       94 MOVE                             R9 R0
       95 GETIMPORT                        R8 K23 [table.insert]
       97 CALL                             R8 2 0
       98 FORGLOOP                         R1 2 ; [-93]
      100 RETURN                           R0 1

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
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R15
       50 CAPTURE                          UPVAL U7
       51 CAPTURE                          UPVAL U8
       52 NEWTABLE                         R18 0 2
       54 MOVE                             R19 R7
       55 MOVE                             R20 R3
       56 SETLIST                          R18 R19 2 [1]
       58 CALL                             R16 2 1
       59 GETUPVAL                         R17 9
       60 NEWCLOSURE                       R18 P1
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R15
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R14
       66 NEWTABLE                         R19 0 2
       68 MOVE                             R20 R5
       69 MOVE                             R21 R15
       70 SETLIST                          R19 R20 2 [1]
       72 CALL                             R17 2 1
       73 GETUPVAL                         R18 9
       74 NEWCLOSURE                       R19 P2
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R14
       80 CAPTURE                          VAL R17
       81 NEWTABLE                         R20 0 3
       83 MOVE                             R21 R5
       84 MOVE                             R22 R4
       85 MOVE                             R23 R15
       86 SETLIST                          R20 R21 3 [1]
       88 CALL                             R18 2 1
       89 GETUPVAL                         R19 5
       90 LOADN                            R20 0
       91 CALL                             R19 1 2
       92 GETUPVAL                         R21 9
       93 NEWCLOSURE                       R22 P3
       94 CAPTURE                          VAL R20
       95 NEWTABLE                         R23 0 0
       97 CALL                             R21 2 1
       98 GETUPVAL                         R23 4
       99 GETTABLEKS                       R22 R23 K6 ["createElement"]
      101 GETUPVAL                         R23 10
      102 NEWTABLE                         R24 4 0
      104 SETTABLEKS                       R6 R24 K7 ["ref"]
      106 GETTABLEKS                       R25 R0 K8 ["LayoutOrder"]
      108 SETTABLEKS                       R25 R24 K8 ["LayoutOrder"]
      110 GETUPVAL                         R27 4
      111 GETTABLEKS                       R26 R27 K9 ["Change"]
      113 GETTABLEKS                       R25 R26 K10 ["AbsoluteSize"]
      115 SETTABLE                         R21 R24 R25
      116 GETUPVAL                         R26 4
      117 GETTABLEKS                       R25 R26 K11 ["Tag"]
      119 LOADK                            R26 K12 ["X-FitY"]
      120 SETTABLE                         R26 R24 R25
      121 DUPTABLE                         R25 K16 [{"SourceDropdown", "CaretIcon", "Menu"}]
      122 GETUPVAL                         R27 4
      123 GETTABLEKS                       R26 R27 K6 ["createElement"]
      125 GETUPVAL                         R27 11
      126 NEWTABLE                         R28 8 0
      128 SETTABLEKS                       R5 R28 K7 ["ref"]
      130 GETTABLEKS                       R31 R3 K4 ["SearchOptions"]
      132 GETTABLEKS                       R30 R31 K5 ["ScopeInfo"]
      134 GETTABLEKS                       R29 R30 K17 ["Name"]
      136 SETTABLEKS                       R29 R28 K18 ["Text"]
      138 NEWCLOSURE                       R29 P4
      139 CAPTURE                          VAL R10
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R12
      142 SETTABLEKS                       R29 R28 K19 ["OnFocused"]
      144 NEWCLOSURE                       R29 P5
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R18
      148 SETTABLEKS                       R29 R28 K20 ["OnFocusLost"]
      150 NEWCLOSURE                       R29 P6
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R8
      153 SETTABLEKS                       R29 R28 K21 ["OnTextChanged"]
      155 GETUPVAL                         R30 4
      156 GETTABLEKS                       R29 R30 K11 ["Tag"]
      158 LOADK                            R30 K22 ["X-AnchorCenter"]
      159 SETTABLE                         R30 R28 R29
      160 CALL                             R26 2 1
      161 SETTABLEKS                       R26 R25 K13 ["SourceDropdown"]
      163 GETUPVAL                         R27 4
      164 GETTABLEKS                       R26 R27 K6 ["createElement"]
      166 GETUPVAL                         R27 12
      167 NEWTABLE                         R28 1 0
      169 GETUPVAL                         R30 4
      170 GETTABLEKS                       R29 R30 K11 ["Tag"]
      172 LOADK                            R30 K23 ["ArrowIcon anchor-center-right am-position-center-right-xoffset-small"]
      173 SETTABLE                         R30 R28 R29
      174 CALL                             R26 2 1
      175 SETTABLEKS                       R26 R25 K14 ["CaretIcon"]
      177 GETUPVAL                         R27 4
      178 GETTABLEKS                       R26 R27 K6 ["createElement"]
      180 GETUPVAL                         R27 13
      181 DUPTABLE                         R28 K28 [{"Items", "Hide", "OnFocusLost", "OnItemActivated", "Width"}]
      182 SETTABLEKS                       R16 R28 K24 ["Items"]
      184 NOT                              R29 R13
      185 SETTABLEKS                       R29 R28 K25 ["Hide"]
      187 NEWCLOSURE                       R29 P7
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R9
      190 CAPTURE                          VAL R18
      191 SETTABLEKS                       R29 R28 K20 ["OnFocusLost"]
      193 NEWCLOSURE                       R29 P8
      194 CAPTURE                          VAL R5
      195 SETTABLEKS                       R29 R28 K26 ["OnItemActivated"]
      197 SETTABLEKS                       R19 R28 K27 ["Width"]
      199 CALL                             R26 2 1
      200 SETTABLEKS                       R26 R25 K15 ["Menu"]
      202 CALL                             R22 3 -1
      203 RETURN                           R22 -1

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
       89 DUPCLOSURE                       R17 K27 [PROTO_9]
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R13
       96 CAPTURE                          VAL R14
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R16
       99 CAPTURE                          VAL R15
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R7
      104 RETURN                           R17 1
