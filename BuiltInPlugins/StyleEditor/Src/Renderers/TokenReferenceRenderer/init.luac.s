PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getAllAttributes"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Schema"]
        6 GETTABLEKS                       R1 R2 K2 ["Instance"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["getDerivedAttributes"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Schema"]
        6 GETTABLEKS                       R1 R2 K2 ["Instance"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["validateToken"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R5 3
        6 GETTABLEKS                       R4 R5 K1 ["Schema"]
        8 GETTABLEKS                       R3 R4 K2 ["ExpectedTypes"]
       10 CALL                             R0 3 2
       11 LOADNIL                          R2
       12 GETUPVAL                         R4 4
       13 GETTABLEKS                       R3 R4 K3 ["None"]
       15 JUMPIFNOTEQ                      R1 R3 ; [+12]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K4 ["getTokenSourceStyleSheet"]
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R5 R6 K1 ["Schema"]
       23 GETTABLEKS                       R4 R5 K5 ["Instance"]
       25 GETUPVAL                         R5 2
       26 CALL                             R3 2 1
       27 MOVE                             R2 R3
       28 DUPTABLE                         R3 K10 [{"Name", "Value", "Error", "Source", "ExpectedTypes"}]
       29 GETUPVAL                         R4 2
       30 SETTABLEKS                       R4 R3 K6 ["Name"]
       32 SETTABLEKS                       R0 R3 K7 ["Value"]
       34 SETTABLEKS                       R1 R3 K8 ["Error"]
       36 SETTABLEKS                       R2 R3 K9 ["Source"]
       38 GETUPVAL                         R6 3
       39 GETTABLEKS                       R5 R6 K1 ["Schema"]
       41 GETTABLEKS                       R4 R5 K2 ["ExpectedTypes"]
       43 SETTABLEKS                       R4 R3 K2 ["ExpectedTypes"]
       45 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["Value"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Value"]
        3 JUMPIFNOTEQ                      R0 R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 CALL                             R2 1 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K1 ["OnChanged"]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["createElement"]
        3 GETUPVAL                         R5 1
        4 DUPTABLE                         R6 K5 [{"TokenInfo", "OnActivated", "ErrorStyle", "LayoutOrder"}]
        5 GETTABLEKS                       R7 R0 K1 ["TokenInfo"]
        7 SETTABLEKS                       R7 R6 K1 ["TokenInfo"]
        9 SETTABLEKS                       R2 R6 K2 ["OnActivated"]
       11 GETUPVAL                         R9 2
       12 GETTABLEKS                       R8 R9 K6 ["Schema"]
       14 GETTABLEKS                       R7 R8 K3 ["ErrorStyle"]
       16 SETTABLEKS                       R7 R6 K3 ["ErrorStyle"]
       18 SETTABLEKS                       R1 R6 K4 ["LayoutOrder"]
       20 CALL                             R4 2 -1
       21 RETURN                           R4 -1

PROTO_7:
        0 NAMECALL                         R2 R0 K0 ["lower"]
        2 CALL                             R2 1 1
        3 GETUPVAL                         R5 0
        4 GETUPVAL                         R6 1
        5 CALL                             R5 1 -1
        6 NAMECALL                         R3 R2 K1 ["find"]
        8 CALL                             R3 -1 1
        9 JUMPIF                           R3 ; [+2]
       10 LOADNIL                          R3
       11 RETURN                           R3 1
       12 LOADK                            R4 K2 ["$"]
       13 MOVE                             R5 R0
       14 CONCAT                           R3 R4 R5
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K3 ["validateToken"]
       18 GETUPVAL                         R5 3
       19 MOVE                             R6 R3
       20 GETUPVAL                         R9 4
       21 GETTABLEKS                       R8 R9 K4 ["Schema"]
       23 GETTABLEKS                       R7 R8 K5 ["ExpectedTypes"]
       25 CALL                             R4 3 2
       26 GETUPVAL                         R7 5
       27 GETTABLEKS                       R6 R7 K6 ["None"]
       29 JUMPIFEQ                         R5 R6 ; [+3]
       31 LOADNIL                          R6
       32 RETURN                           R6 1
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R6 R7 K7 ["getTokenSourceStyleSheet"]
       36 GETUPVAL                         R9 4
       37 GETTABLEKS                       R8 R9 K4 ["Schema"]
       39 GETTABLEKS                       R7 R8 K8 ["Instance"]
       41 MOVE                             R8 R3
       42 CALL                             R6 2 1
       43 DUPTABLE                         R7 K12 [{"Id", "Value", "TokenInfo"}]
       44 SETTABLEKS                       R3 R7 K9 ["Id"]
       46 SETTABLEKS                       R3 R7 K10 ["Value"]
       48 DUPTABLE                         R8 K16 [{"Name", "Value", "Error", "Source", "ExpectedTypes"}]
       49 SETTABLEKS                       R3 R8 K13 ["Name"]
       51 SETTABLEKS                       R4 R8 K10 ["Value"]
       53 SETTABLEKS                       R5 R8 K14 ["Error"]
       55 SETTABLEKS                       R6 R8 K15 ["Source"]
       57 GETUPVAL                         R11 4
       58 GETTABLEKS                       R10 R11 K4 ["Schema"]
       60 GETTABLEKS                       R9 R10 K5 ["ExpectedTypes"]
       62 SETTABLEKS                       R9 R8 K5 ["ExpectedTypes"]
       64 SETTABLEKS                       R8 R7 K11 ["TokenInfo"]
       66 RETURN                           R7 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Schema"]
        3 GETTABLEKS                       R1 R2 K1 ["Instance"]
        5 JUMPIF                           R1 ; [+3]
        6 NEWTABLE                         R2 0 0
        8 RETURN                           R2 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K2 ["parseAttributeName"]
       12 MOVE                             R4 R0
       13 CALL                             R3 1 1
       14 OR                               R2 R3 R0
       15 NAMECALL                         R2 R2 K3 ["lower"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K0 ["Schema"]
       21 GETTABLEKS                       R4 R5 K4 ["HideSelfTokens"]
       23 JUMPIFNOT                        R4 ; [+2]
       24 GETUPVAL                         R3 2
       25 JUMP                             ; [+1]
       26 GETUPVAL                         R3 3
       27 GETUPVAL                         R5 1
       28 GETTABLEKS                       R4 R5 K5 ["stripStyleEditorMetaAttributes"]
       30 MOVE                             R5 R3
       31 CALL                             R4 1 1
       32 GETUPVAL                         R5 4
       33 MOVE                             R6 R4
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R2
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          VAL R3
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U6
       41 CALL                             R5 2 -1
       42 RETURN                           R5 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Value"]
        3 CALL                             R1 1 2
        4 GETUPVAL                         R3 1
        5 LOADNIL                          R4
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 2
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R6 0 1
       13 GETTABLEKS                       R8 R0 K1 ["Schema"]
       15 GETTABLEKS                       R7 R8 K2 ["Instance"]
       17 SETLIST                          R6 R7 1 [1]
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 2
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R7 0 1
       26 GETTABLEKS                       R9 R0 K1 ["Schema"]
       28 GETTABLEKS                       R8 R9 K2 ["Instance"]
       30 SETLIST                          R7 R8 1 [1]
       32 CALL                             R5 2 1
       33 GETUPVAL                         R6 2
       34 NEWCLOSURE                       R7 P2
       35 CAPTURE                          UPVAL U3
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U4
       40 NEWTABLE                         R8 0 4
       42 MOVE                             R9 R1
       43 GETTABLEKS                       R11 R0 K1 ["Schema"]
       45 GETTABLEKS                       R10 R11 K2 ["Instance"]
       47 GETTABLEKS                       R12 R0 K1 ["Schema"]
       49 GETTABLEKS                       R11 R12 K3 ["ExpectedTypes"]
       51 MOVE                             R12 R4
       52 SETLIST                          R8 R9 4 [1]
       54 CALL                             R6 2 1
       55 GETUPVAL                         R7 5
       56 NEWCLOSURE                       R8 P3
       57 CAPTURE                          VAL R2
       58 NEWTABLE                         R9 0 1
       60 MOVE                             R10 R2
       61 SETLIST                          R9 R10 1 [1]
       63 CALL                             R7 2 1
       64 GETUPVAL                         R8 6
       65 NEWCLOSURE                       R9 P4
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R0
       68 NEWTABLE                         R10 0 2
       70 GETTABLEKS                       R11 R0 K0 ["Value"]
       72 MOVE                             R12 R7
       73 SETLIST                          R10 R11 2 [1]
       75 CALL                             R8 2 0
       76 NEWCLOSURE                       R8 P5
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R2
       79 NEWCLOSURE                       R9 P6
       80 CAPTURE                          UPVAL U7
       81 CAPTURE                          UPVAL U8
       82 CAPTURE                          VAL R0
       83 GETUPVAL                         R10 5
       84 NEWCLOSURE                       R11 P7
       85 CAPTURE                          VAL R0
       86 CAPTURE                          UPVAL U3
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R4
       89 CAPTURE                          UPVAL U9
       90 CAPTURE                          UPVAL U10
       91 CAPTURE                          UPVAL U4
       92 NEWTABLE                         R12 0 2
       94 GETTABLEKS                       R13 R0 K1 ["Schema"]
       96 GETTABLEKS                       R15 R0 K1 ["Schema"]
       98 GETTABLEKS                       R14 R15 K3 ["ExpectedTypes"]
      100 SETLIST                          R12 R13 2 [1]
      102 CALL                             R10 2 1
      103 GETTABLEKS                       R12 R6 K4 ["Error"]
      105 GETUPVAL                         R14 4
      106 GETTABLEKS                       R13 R14 K5 ["None"]
      108 JUMPIFNOTEQ                      R12 R13 ; [+2]
      110 LOADB                            R11 0 +1
      111 LOADB                            R11 1
      112 GETTABLEKS                       R13 R0 K1 ["Schema"]
      114 GETTABLEKS                       R12 R13 K6 ["Editing"]
      116 GETUPVAL                         R14 7
      117 GETTABLEKS                       R13 R14 K7 ["createElement"]
      119 GETUPVAL                         R14 11
      120 NEWTABLE                         R15 0 0
      122 DUPTABLE                         R16 K10 [{"Input", "Tooltip"}]
      123 GETUPVAL                         R18 7
      124 GETTABLEKS                       R17 R18 K7 ["createElement"]
      126 GETUPVAL                         R18 12
      127 NEWTABLE                         R19 16 0
      129 SETTABLEKS                       R10 R19 K11 ["GetAutocompleteItems"]
      131 SETTABLEKS                       R9 R19 K12 ["OnRenderAutocompleteItem"]
      133 GETTABLEKS                       R20 R0 K13 ["Disabled"]
      135 SETTABLEKS                       R20 R19 K13 ["Disabled"]
      137 DUPTABLE                         R20 K16 [{"ItemHeight", "UseAutoWidth"}]
      138 GETTABLEKS                       R22 R0 K1 ["Schema"]
      140 GETTABLEKS                       R21 R22 K14 ["ItemHeight"]
      142 SETTABLEKS                       R21 R20 K14 ["ItemHeight"]
      144 GETUPVAL                         R22 13
      145 JUMPIFNOT                        R22 ; [+2]
      146 LOADB                            R21 1
      147 JUMP                             ; [+1]
      148 LOADNIL                          R21
      149 SETTABLEKS                       R21 R20 K15 ["UseAutoWidth"]
      151 SETTABLEKS                       R20 R19 K17 ["DropdownMenuProps"]
      153 SETTABLEKS                       R7 R19 K18 ["OnTextChanged"]
      155 SETTABLEKS                       R8 R19 K19 ["OnFocusLost"]
      157 GETTABLEKS                       R21 R0 K20 ["AutomaticSize"]
      159 JUMPIFNOT                        R21 ; [+10]
      160 GETIMPORT                        R20 K23 [UDim2.new]
      162 LOADN                            R21 1
      163 LOADN                            R22 0
      164 LOADN                            R23 0
      165 GETTABLEKS                       R25 R0 K25 ["MinimumHeight"]
      167 ORK                              R24 R25 K24 [24]
      168 CALL                             R20 4 1
      169 JUMP                             ; [+5]
      170 GETIMPORT                        R20 K27 [UDim2.fromScale]
      172 LOADN                            R21 1
      173 LOADN                            R22 1
      174 CALL                             R20 2 1
      175 SETTABLEKS                       R20 R19 K28 ["Size"]
      177 SETTABLEKS                       R12 R19 K29 ["ShouldFocus"]
      179 SETTABLEKS                       R1 R19 K30 ["Text"]
      181 SETTABLEKS                       R3 R19 K31 ["ForwardRef"]
      183 GETUPVAL                         R21 7
      184 GETTABLEKS                       R20 R21 K32 ["Tag"]
      186 JUMPIFNOT                        R11 ; [+5]
      187 GETTABLEKS                       R22 R0 K1 ["Schema"]
      189 GETTABLEKS                       R21 R22 K33 ["ErrorStyle"]
      191 JUMP                             ; [+1]
      192 LOADNIL                          R21
      193 SETTABLE                         R21 R19 R20
      194 CALL                             R17 2 1
      195 SETTABLEKS                       R17 R16 K8 ["Input"]
      197 GETUPVAL                         R18 7
      198 GETTABLEKS                       R17 R18 K7 ["createElement"]
      200 GETUPVAL                         R18 14
      201 DUPTABLE                         R19 K35 [{"TokenInfo", "ErrorStyle"}]
      202 SETTABLEKS                       R6 R19 K34 ["TokenInfo"]
      204 GETTABLEKS                       R21 R0 K1 ["Schema"]
      206 GETTABLEKS                       R20 R21 K33 ["ErrorStyle"]
      208 SETTABLEKS                       R20 R19 K33 ["ErrorStyle"]
      210 CALL                             R17 2 1
      211 SETTABLEKS                       R17 R16 K9 ["Tooltip"]
      213 CALL                             R13 3 -1
      214 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["useState"]
       18 GETTABLEKS                       R3 R1 K8 ["useEffect"]
       20 GETTABLEKS                       R4 R1 K9 ["useMemo"]
       22 GETTABLEKS                       R5 R1 K10 ["useRef"]
       24 GETTABLEKS                       R6 R1 K11 ["useCallback"]
       26 GETIMPORT                        R7 K4 [require]
       28 GETTABLEKS                       R9 R0 K5 ["Packages"]
       30 GETTABLEKS                       R8 R9 K12 ["Framework"]
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R9 R7 K13 ["UI"]
       35 GETTABLEKS                       R8 R9 K14 ["Pane"]
       37 GETTABLEKS                       R10 R7 K13 ["UI"]
       39 GETTABLEKS                       R9 R10 K15 ["TextInput"]
       41 GETIMPORT                        R10 K4 [require]
       43 GETTABLEKS                       R12 R0 K5 ["Packages"]
       45 GETTABLEKS                       R11 R12 K16 ["Dash"]
       47 CALL                             R10 1 1
       48 GETTABLEKS                       R11 R10 K17 ["collectArray"]
       50 GETIMPORT                        R12 K4 [require]
       52 GETIMPORT                        R14 K1 [script]
       54 GETTABLEKS                       R13 R14 K18 ["TokenAutocompleteItem"]
       56 CALL                             R12 1 1
       57 GETIMPORT                        R13 K4 [require]
       59 GETIMPORT                        R15 K1 [script]
       61 GETTABLEKS                       R14 R15 K19 ["TokenTooltip"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K4 [require]
       66 GETIMPORT                        R16 K1 [script]
       68 GETTABLEKS                       R15 R16 K20 ["Types"]
       70 CALL                             R14 1 1
       71 GETIMPORT                        R15 K4 [require]
       73 GETTABLEKS                       R18 R0 K21 ["Src"]
       75 GETTABLEKS                       R17 R18 K22 ["Util"]
       77 GETTABLEKS                       R16 R17 K23 ["escapeStringPattern"]
       79 CALL                             R15 1 1
       80 GETIMPORT                        R16 K4 [require]
       82 GETTABLEKS                       R19 R0 K21 ["Src"]
       84 GETTABLEKS                       R18 R19 K22 ["Util"]
       86 GETTABLEKS                       R17 R18 K24 ["TokenHelpers"]
       88 CALL                             R16 1 1
       89 GETIMPORT                        R17 K4 [require]
       91 GETTABLEKS                       R20 R0 K21 ["Src"]
       93 GETTABLEKS                       R19 R20 K25 ["Enums"]
       95 GETTABLEKS                       R18 R19 K26 ["TokenValidationError"]
       97 CALL                             R17 1 1
       98 GETIMPORT                        R18 K4 [require]
      100 GETTABLEKS                       R20 R0 K21 ["Src"]
      102 GETTABLEKS                       R19 R20 K20 ["Types"]
      104 CALL                             R18 1 1
      105 GETIMPORT                        R19 K4 [require]
      107 GETTABLEKS                       R22 R0 K21 ["Src"]
      109 GETTABLEKS                       R21 R22 K27 ["Renderers"]
      111 GETTABLEKS                       R20 R21 K28 ["RendererTypes"]
      113 CALL                             R19 1 1
      114 GETIMPORT                        R20 K30 [game]
      116 LOADK                            R22 K31 ["StyleEditorFixTokenTruncate"]
      117 LOADB                            R23 0
      118 NAMECALL                         R20 R20 K32 ["DefineFastFlag"]
      120 CALL                             R20 3 1
      121 DUPCLOSURE                       R21 K33 [PROTO_9]
      122 CAPTURE                          VAL R2
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R16
      126 CAPTURE                          VAL R17
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R12
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R15
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R20
      136 CAPTURE                          VAL R13
      137 RETURN                           R21 1
