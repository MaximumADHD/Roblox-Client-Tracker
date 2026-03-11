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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 GETTABLEKS                       R3 R0 K1 ["X"]
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R5 R6 K0 ["current"]
        8 GETTABLEKS                       R4 R5 K2 ["ContentWidth"]
       10 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       12 GETIMPORT                        R2 K5 [math.max]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K2 ["ContentWidth"]
       17 GETUPVAL                         R1 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K0 ["current"]
       21 GETTABLEKS                       R2 R3 K6 ["ItemCount"]
       23 JUMPIFNOTEQ                      R1 R2 ; [+18]
       25 GETUPVAL                         R1 2
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K0 ["current"]
       29 GETTABLEKS                       R2 R3 K2 ["ContentWidth"]
       31 CALL                             R1 1 0
       32 GETUPVAL                         R1 0
       33 DUPTABLE                         R2 K7 [{"ContentWidth", "ItemCount"}]
       34 LOADN                            R3 0
       35 SETTABLEKS                       R3 R2 K2 ["ContentWidth"]
       37 LOADN                            R3 0
       38 SETTABLEKS                       R3 R2 K6 ["ItemCount"]
       40 SETTABLEKS                       R2 R1 K0 ["current"]
       42 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R5 0
        1 JUMPIFNOT                        R5 ; [+5]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 JUMP                             ; [+1]
        7 LOADNIL                          R4
        8 GETUPVAL                         R6 3
        9 GETTABLEKS                       R5 R6 K0 ["createElement"]
       11 GETUPVAL                         R6 4
       12 DUPTABLE                         R7 K6 [{"TokenInfo", "OnActivated", "ErrorStyle", "LayoutOrder", "OnSizeChanged"}]
       13 GETTABLEKS                       R8 R0 K1 ["TokenInfo"]
       15 SETTABLEKS                       R8 R7 K1 ["TokenInfo"]
       17 SETTABLEKS                       R2 R7 K2 ["OnActivated"]
       19 GETUPVAL                         R10 5
       20 GETTABLEKS                       R9 R10 K7 ["Schema"]
       22 GETTABLEKS                       R8 R9 K3 ["ErrorStyle"]
       24 SETTABLEKS                       R8 R7 K3 ["ErrorStyle"]
       26 SETTABLEKS                       R1 R7 K4 ["LayoutOrder"]
       28 SETTABLEKS                       R4 R7 K5 ["OnSizeChanged"]
       30 CALL                             R5 2 -1
       31 RETURN                           R5 -1

PROTO_8:
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

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["Value"]
        2 GETTABLEKS                       R4 R1 K0 ["Value"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Schema"]
        3 GETTABLEKS                       R1 R2 K1 ["Instance"]
        5 JUMPIF                           R1 ; [+15]
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+10]
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K4 [{"ContentWidth", "ItemCount"}]
       10 LOADN                            R4 0
       11 SETTABLEKS                       R4 R3 K2 ["ContentWidth"]
       13 LOADN                            R4 0
       14 SETTABLEKS                       R4 R3 K3 ["ItemCount"]
       16 SETTABLEKS                       R3 R2 K5 ["current"]
       18 NEWTABLE                         R2 0 0
       20 RETURN                           R2 1
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R3 R4 K6 ["parseAttributeName"]
       24 MOVE                             R4 R0
       25 CALL                             R3 1 1
       26 OR                               R2 R3 R0
       27 NAMECALL                         R2 R2 K7 ["lower"]
       29 CALL                             R2 1 1
       30 GETUPVAL                         R6 0
       31 GETTABLEKS                       R5 R6 K0 ["Schema"]
       33 GETTABLEKS                       R4 R5 K8 ["HideSelfTokens"]
       35 JUMPIFNOT                        R4 ; [+2]
       36 GETUPVAL                         R3 4
       37 JUMP                             ; [+1]
       38 GETUPVAL                         R3 5
       39 GETUPVAL                         R5 3
       40 GETTABLEKS                       R4 R5 K9 ["stripStyleEditorMetaAttributes"]
       42 MOVE                             R5 R3
       43 CALL                             R4 1 1
       44 GETUPVAL                         R5 6
       45 MOVE                             R6 R4
       46 NEWCLOSURE                       R7 P0
       47 CAPTURE                          UPVAL U7
       48 CAPTURE                          VAL R2
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          VAL R3
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          UPVAL U8
       53 CALL                             R5 2 1
       54 GETUPVAL                         R6 1
       55 JUMPIFNOT                        R6 ; [+15]
       56 GETIMPORT                        R6 K12 [table.sort]
       58 MOVE                             R7 R5
       59 DUPCLOSURE                       R8 K13 [PROTO_9]
       60 CALL                             R6 2 0
       61 GETUPVAL                         R6 2
       62 DUPTABLE                         R7 K4 [{"ContentWidth", "ItemCount"}]
       63 LOADN                            R8 0
       64 SETTABLEKS                       R8 R7 K2 ["ContentWidth"]
       66 LENGTH                           R8 R5
       67 SETTABLEKS                       R8 R7 K3 ["ItemCount"]
       69 SETTABLEKS                       R7 R6 K5 ["current"]
       71 RETURN                           R5 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Value"]
        3 CALL                             R1 1 2
        4 GETUPVAL                         R3 0
        5 LOADN                            R4 0
        6 CALL                             R3 1 2
        7 GETUPVAL                         R5 1
        8 DUPTABLE                         R6 K3 [{"ContentWidth", "ItemCount"}]
        9 LOADN                            R7 0
       10 SETTABLEKS                       R7 R6 K1 ["ContentWidth"]
       12 LOADN                            R7 0
       13 SETTABLEKS                       R7 R6 K2 ["ItemCount"]
       15 CALL                             R5 1 1
       16 GETUPVAL                         R6 1
       17 LOADNIL                          R7
       18 CALL                             R6 1 1
       19 GETUPVAL                         R7 2
       20 NEWCLOSURE                       R8 P0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R9 0 1
       25 GETTABLEKS                       R11 R0 K4 ["Schema"]
       27 GETTABLEKS                       R10 R11 K5 ["Instance"]
       29 SETLIST                          R9 R10 1 [1]
       31 CALL                             R7 2 1
       32 GETUPVAL                         R8 2
       33 NEWCLOSURE                       R9 P1
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R10 0 1
       38 GETTABLEKS                       R12 R0 K4 ["Schema"]
       40 GETTABLEKS                       R11 R12 K5 ["Instance"]
       42 SETLIST                          R10 R11 1 [1]
       44 CALL                             R8 2 1
       45 GETUPVAL                         R9 2
       46 NEWCLOSURE                       R10 P2
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U4
       52 NEWTABLE                         R11 0 4
       54 MOVE                             R12 R1
       55 GETTABLEKS                       R14 R0 K4 ["Schema"]
       57 GETTABLEKS                       R13 R14 K5 ["Instance"]
       59 GETTABLEKS                       R15 R0 K4 ["Schema"]
       61 GETTABLEKS                       R14 R15 K6 ["ExpectedTypes"]
       63 MOVE                             R15 R7
       64 SETLIST                          R11 R12 4 [1]
       66 CALL                             R9 2 1
       67 GETUPVAL                         R10 5
       68 NEWCLOSURE                       R11 P3
       69 CAPTURE                          VAL R2
       70 NEWTABLE                         R12 0 1
       72 MOVE                             R13 R2
       73 SETLIST                          R12 R13 1 [1]
       75 CALL                             R10 2 1
       76 GETUPVAL                         R11 6
       77 NEWCLOSURE                       R12 P4
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R0
       80 NEWTABLE                         R13 0 2
       82 GETTABLEKS                       R14 R0 K0 ["Value"]
       84 MOVE                             R15 R10
       85 SETLIST                          R13 R14 2 [1]
       87 CALL                             R11 2 0
       88 NEWCLOSURE                       R11 P5
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R2
       91 NEWCLOSURE                       R12 P6
       92 CAPTURE                          UPVAL U7
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R4
       95 CAPTURE                          UPVAL U8
       96 CAPTURE                          UPVAL U9
       97 CAPTURE                          VAL R0
       98 GETUPVAL                         R13 5
       99 NEWCLOSURE                       R14 P7
      100 CAPTURE                          VAL R0
      101 CAPTURE                          UPVAL U7
      102 CAPTURE                          VAL R5
      103 CAPTURE                          UPVAL U3
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R7
      106 CAPTURE                          UPVAL U10
      107 CAPTURE                          UPVAL U11
      108 CAPTURE                          UPVAL U4
      109 NEWTABLE                         R15 0 2
      111 GETTABLEKS                       R16 R0 K4 ["Schema"]
      113 GETTABLEKS                       R18 R0 K4 ["Schema"]
      115 GETTABLEKS                       R17 R18 K6 ["ExpectedTypes"]
      117 SETLIST                          R15 R16 2 [1]
      119 CALL                             R13 2 1
      120 GETTABLEKS                       R15 R9 K7 ["Error"]
      122 GETUPVAL                         R17 4
      123 GETTABLEKS                       R16 R17 K8 ["None"]
      125 JUMPIFNOTEQ                      R15 R16 ; [+2]
      127 LOADB                            R14 0 +1
      128 LOADB                            R14 1
      129 GETTABLEKS                       R16 R0 K4 ["Schema"]
      131 GETTABLEKS                       R15 R16 K9 ["Editing"]
      133 GETUPVAL                         R17 7
      134 JUMPIFNOT                        R17 ; [+11]
      135 GETTABLEKS                       R18 R5 K10 ["current"]
      137 GETTABLEKS                       R17 R18 K2 ["ItemCount"]
      139 LOADN                            R18 0
      140 JUMPIFNOTLT                      R18 R17 ; [+3]
      142 LOADK                            R16 K11 [∞]
      143 JUMP                             ; [+3]
      144 MOVE                             R16 R3
      145 JUMP                             ; [+1]
      146 LOADNIL                          R16
      147 GETUPVAL                         R18 8
      148 GETTABLEKS                       R17 R18 K12 ["createElement"]
      150 GETUPVAL                         R18 12
      151 NEWTABLE                         R19 0 0
      153 DUPTABLE                         R20 K15 [{"Input", "Tooltip"}]
      154 GETUPVAL                         R22 8
      155 GETTABLEKS                       R21 R22 K12 ["createElement"]
      157 GETUPVAL                         R22 13
      158 NEWTABLE                         R23 16 0
      160 SETTABLEKS                       R13 R23 K16 ["GetAutocompleteItems"]
      162 SETTABLEKS                       R12 R23 K17 ["OnRenderAutocompleteItem"]
      164 GETTABLEKS                       R24 R0 K18 ["Disabled"]
      166 SETTABLEKS                       R24 R23 K18 ["Disabled"]
      168 DUPTABLE                         R24 K22 [{"ItemHeight", "Width", "UseAutoWidth"}]
      169 GETTABLEKS                       R26 R0 K4 ["Schema"]
      171 GETTABLEKS                       R25 R26 K19 ["ItemHeight"]
      173 SETTABLEKS                       R25 R24 K19 ["ItemHeight"]
      175 GETUPVAL                         R26 7
      176 JUMPIFNOT                        R26 ; [+2]
      177 MOVE                             R25 R16
      178 JUMP                             ; [+1]
      179 LOADNIL                          R25
      180 SETTABLEKS                       R25 R24 K20 ["Width"]
      182 GETUPVAL                         R26 7
      183 JUMPIF                           R26 ; [+4]
      184 GETUPVAL                         R26 14
      185 JUMPIFNOT                        R26 ; [+2]
      186 LOADB                            R25 1
      187 JUMP                             ; [+1]
      188 LOADNIL                          R25
      189 SETTABLEKS                       R25 R24 K21 ["UseAutoWidth"]
      191 SETTABLEKS                       R24 R23 K23 ["DropdownMenuProps"]
      193 SETTABLEKS                       R10 R23 K24 ["OnTextChanged"]
      195 SETTABLEKS                       R11 R23 K25 ["OnFocusLost"]
      197 GETTABLEKS                       R25 R0 K26 ["AutomaticSize"]
      199 JUMPIFNOT                        R25 ; [+10]
      200 GETIMPORT                        R24 K29 [UDim2.new]
      202 LOADN                            R25 1
      203 LOADN                            R26 0
      204 LOADN                            R27 0
      205 GETTABLEKS                       R29 R0 K31 ["MinimumHeight"]
      207 ORK                              R28 R29 K30 [24]
      208 CALL                             R24 4 1
      209 JUMP                             ; [+5]
      210 GETIMPORT                        R24 K33 [UDim2.fromScale]
      212 LOADN                            R25 1
      213 LOADN                            R26 1
      214 CALL                             R24 2 1
      215 SETTABLEKS                       R24 R23 K34 ["Size"]
      217 SETTABLEKS                       R15 R23 K35 ["ShouldFocus"]
      219 SETTABLEKS                       R1 R23 K36 ["Text"]
      221 SETTABLEKS                       R6 R23 K37 ["ForwardRef"]
      223 GETUPVAL                         R25 8
      224 GETTABLEKS                       R24 R25 K38 ["Tag"]
      226 JUMPIFNOT                        R14 ; [+5]
      227 GETTABLEKS                       R26 R0 K4 ["Schema"]
      229 GETTABLEKS                       R25 R26 K39 ["ErrorStyle"]
      231 JUMP                             ; [+1]
      232 LOADNIL                          R25
      233 SETTABLE                         R25 R23 R24
      234 CALL                             R21 2 1
      235 SETTABLEKS                       R21 R20 K13 ["Input"]
      237 GETUPVAL                         R22 8
      238 GETTABLEKS                       R21 R22 K12 ["createElement"]
      240 GETUPVAL                         R22 15
      241 DUPTABLE                         R23 K41 [{"TokenInfo", "ErrorStyle"}]
      242 SETTABLEKS                       R9 R23 K40 ["TokenInfo"]
      244 GETTABLEKS                       R25 R0 K4 ["Schema"]
      246 GETTABLEKS                       R24 R25 K39 ["ErrorStyle"]
      248 SETTABLEKS                       R24 R23 K39 ["ErrorStyle"]
      250 CALL                             R21 2 1
      251 SETTABLEKS                       R21 R20 K14 ["Tooltip"]
      253 CALL                             R17 3 -1
      254 RETURN                           R17 -1

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
      121 GETIMPORT                        R21 K4 [require]
      123 GETTABLEKS                       R24 R0 K21 ["Src"]
      125 GETTABLEKS                       R23 R24 K33 ["Flags"]
      127 GETTABLEKS                       R22 R23 K34 ["getFFlagStyleEditorFixTokenMenuGrow"]
      129 CALL                             R21 1 1
      130 CALL                             R21 0 1
      131 DUPCLOSURE                       R22 K35 [PROTO_11]
      132 CAPTURE                          VAL R2
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R21
      140 CAPTURE                          VAL R1
      141 CAPTURE                          VAL R12
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R9
      146 CAPTURE                          VAL R20
      147 CAPTURE                          VAL R13
      148 RETURN                           R22 1
