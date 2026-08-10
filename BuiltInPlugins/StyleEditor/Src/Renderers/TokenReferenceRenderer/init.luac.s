PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getAllAttributes"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Schema"]
        6 GETTABLEKS                       R1 R1 K2 ["Instance"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getDerivedAttributes"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Schema"]
        6 GETTABLEKS                       R1 R1 K2 ["Instance"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["validateToken"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETTABLEKS                       R3 R3 K1 ["Schema"]
        8 GETTABLEKS                       R3 R3 K2 ["ExpectedTypes"]
       10 CALL                             R0 3 2
       11 LOADNIL                          R2
       12 GETUPVAL                         R3 4
       13 GETTABLEKS                       R3 R3 K3 ["None"]
       15 JUMPIFNOTEQ                      R1 R3 ; [+12]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K4 ["getTokenSourceStyleSheet"]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R4 R4 K1 ["Schema"]
       23 GETTABLEKS                       R4 R4 K5 ["Instance"]
       25 GETUPVAL                         R5 2
       26 CALL                             R3 2 1
       27 MOVE                             R2 R3
       28 DUPTABLE                         R3 K10 [{"Name", "Value", "Error", "Source", "ExpectedTypes"}]
       29 GETUPVAL                         R4 2
       30 SETTABLEKS                       R4 R3 K6 ["Name"]
       32 SETTABLEKS                       R0 R3 K7 ["Value"]
       34 SETTABLEKS                       R1 R3 K8 ["Error"]
       36 SETTABLEKS                       R2 R3 K9 ["Source"]
       38 GETUPVAL                         R4 3
       39 GETTABLEKS                       R4 R4 K1 ["Schema"]
       41 GETTABLEKS                       R4 R4 K2 ["ExpectedTypes"]
       43 SETTABLEKS                       R4 R3 K2 ["ExpectedTypes"]
       45 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Value"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Value"]
        3 JUMPIFNOTEQ                      R0 R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K1 ["OnChanged"]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 GETTABLEKS                       R3 R0 K1 ["X"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["current"]
        8 GETTABLEKS                       R4 R4 K2 ["ContentWidth"]
       10 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       12 GETIMPORT                        R2 K5 [math.max]
       14 CALL                             R2 2 1
       15 SETTABLEKS                       R2 R1 K2 ["ContentWidth"]
       17 GETUPVAL                         R1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K0 ["current"]
       21 GETTABLEKS                       R2 R2 K6 ["ItemCount"]
       23 JUMPIFNOTEQ                      R1 R2 ; [+12]
       25 GETUPVAL                         R1 2
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K0 ["current"]
       29 GETTABLEKS                       R2 R2 K2 ["ContentWidth"]
       31 CALL                             R1 1 0
       32 GETUPVAL                         R1 0
       33 DUPTABLE                         R2 K8 [{["ContentWidth"] = 0, ["ItemCount"] = 0}]
       34 SETTABLEKS                       R2 R1 K0 ["current"]
       36 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U1
        4 GETUPVAL                         R5 2
        5 GETTABLEKS                       R5 R5 K0 ["createElement"]
        7 GETUPVAL                         R6 3
        8 DUPTABLE                         R7 K6 [{"TokenInfo", "OnActivated", "ErrorStyle", "LayoutOrder", "OnSizeChanged"}]
        9 GETTABLEKS                       R8 R0 K1 ["TokenInfo"]
       11 SETTABLEKS                       R8 R7 K1 ["TokenInfo"]
       13 SETTABLEKS                       R2 R7 K2 ["OnActivated"]
       15 GETUPVAL                         R8 4
       16 GETTABLEKS                       R8 R8 K7 ["Schema"]
       18 GETTABLEKS                       R8 R8 K3 ["ErrorStyle"]
       20 SETTABLEKS                       R8 R7 K3 ["ErrorStyle"]
       22 SETTABLEKS                       R1 R7 K4 ["LayoutOrder"]
       24 SETTABLEKS                       R4 R7 K5 ["OnSizeChanged"]
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

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
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K3 ["validateToken"]
       18 GETUPVAL                         R5 3
       19 MOVE                             R6 R3
       20 GETUPVAL                         R7 4
       21 GETTABLEKS                       R7 R7 K4 ["Schema"]
       23 GETTABLEKS                       R7 R7 K5 ["ExpectedTypes"]
       25 CALL                             R4 3 2
       26 GETUPVAL                         R6 5
       27 GETTABLEKS                       R6 R6 K6 ["None"]
       29 JUMPIFEQ                         R5 R6 ; [+3]
       31 LOADNIL                          R6
       32 RETURN                           R6 1
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R6 R6 K7 ["getTokenSourceStyleSheet"]
       36 GETUPVAL                         R7 4
       37 GETTABLEKS                       R7 R7 K4 ["Schema"]
       39 GETTABLEKS                       R7 R7 K8 ["Instance"]
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
       57 GETUPVAL                         R9 4
       58 GETTABLEKS                       R9 R9 K4 ["Schema"]
       60 GETTABLEKS                       R9 R9 K5 ["ExpectedTypes"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Schema"]
        3 GETTABLEKS                       R1 R1 K1 ["Instance"]
        5 JUMPIF                           R1 ; [+7]
        6 GETUPVAL                         R2 1
        7 DUPTABLE                         R3 K5 [{["ContentWidth"] = 0, ["ItemCount"] = 0}]
        8 SETTABLEKS                       R3 R2 K6 ["current"]
       10 NEWTABLE                         R2 0 0
       12 RETURN                           R2 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K7 ["parseAttributeName"]
       16 MOVE                             R4 R0
       17 CALL                             R3 1 1
       18 OR                               R2 R3 R0
       19 NAMECALL                         R2 R2 K8 ["lower"]
       21 CALL                             R2 1 1
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R4 R4 K0 ["Schema"]
       25 GETTABLEKS                       R4 R4 K9 ["HideSelfTokens"]
       27 JUMPIFNOT                        R4 ; [+2]
       28 GETUPVAL                         R3 3
       29 JUMP                             ; [+1]
       30 GETUPVAL                         R3 4
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K10 ["stripStyleEditorMetaAttributes"]
       34 MOVE                             R5 R3
       35 CALL                             R4 1 1
       36 GETUPVAL                         R5 5
       37 MOVE                             R6 R4
       38 NEWCLOSURE                       R7 P0
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          VAL R2
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          UPVAL U7
       45 CALL                             R5 2 1
       46 GETIMPORT                        R6 K13 [table.sort]
       48 MOVE                             R7 R5
       49 DUPCLOSURE                       R8 K14 [PROTO_9]
       50 CALL                             R6 2 0
       51 GETUPVAL                         R6 1
       52 DUPTABLE                         R7 K15 [{["ContentWidth"] = 0, ["ItemCount"]}]
       53 LENGTH                           R8 R5
       54 SETTABLEKS                       R8 R7 K4 ["ItemCount"]
       56 SETTABLEKS                       R7 R6 K6 ["current"]
       58 RETURN                           R5 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Value"]
        3 CALL                             R1 1 2
        4 GETUPVAL                         R3 0
        5 LOADN                            R4 0
        6 CALL                             R3 1 2
        7 GETUPVAL                         R5 1
        8 DUPTABLE                         R6 K4 [{["ContentWidth"] = 0, ["ItemCount"] = 0}]
        9 CALL                             R5 1 1
       10 GETUPVAL                         R6 1
       11 LOADNIL                          R7
       12 CALL                             R6 1 1
       13 GETUPVAL                         R7 2
       14 NEWCLOSURE                       R8 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R9 0 1
       19 GETTABLEKS                       R10 R0 K5 ["Schema"]
       21 GETTABLEKS                       R10 R10 K6 ["Instance"]
       23 SETLIST                          R9 R10 1 [1]
       25 CALL                             R7 2 1
       26 GETUPVAL                         R8 2
       27 NEWCLOSURE                       R9 P1
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R10 0 1
       32 GETTABLEKS                       R11 R0 K5 ["Schema"]
       34 GETTABLEKS                       R11 R11 K6 ["Instance"]
       36 SETLIST                          R10 R11 1 [1]
       38 CALL                             R8 2 1
       39 GETUPVAL                         R9 2
       40 NEWCLOSURE                       R10 P2
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U4
       46 NEWTABLE                         R11 0 4
       48 MOVE                             R12 R1
       49 GETTABLEKS                       R13 R0 K5 ["Schema"]
       51 GETTABLEKS                       R13 R13 K6 ["Instance"]
       53 GETTABLEKS                       R14 R0 K5 ["Schema"]
       55 GETTABLEKS                       R14 R14 K7 ["ExpectedTypes"]
       57 MOVE                             R15 R7
       58 SETLIST                          R11 R12 4 [1]
       60 CALL                             R9 2 1
       61 GETUPVAL                         R10 5
       62 NEWCLOSURE                       R11 P3
       63 CAPTURE                          VAL R2
       64 NEWTABLE                         R12 0 1
       66 MOVE                             R13 R2
       67 SETLIST                          R12 R13 1 [1]
       69 CALL                             R10 2 1
       70 GETUPVAL                         R11 6
       71 NEWCLOSURE                       R12 P4
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R0
       74 NEWTABLE                         R13 0 2
       76 GETTABLEKS                       R14 R0 K0 ["Value"]
       78 MOVE                             R15 R10
       79 SETLIST                          R13 R14 2 [1]
       81 CALL                             R11 2 0
       82 NEWCLOSURE                       R11 P5
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R2
       85 NEWCLOSURE                       R12 P6
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R4
       88 CAPTURE                          UPVAL U7
       89 CAPTURE                          UPVAL U8
       90 CAPTURE                          VAL R0
       91 GETUPVAL                         R13 5
       92 NEWCLOSURE                       R14 P7
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R5
       95 CAPTURE                          UPVAL U3
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R7
       98 CAPTURE                          UPVAL U9
       99 CAPTURE                          UPVAL U10
      100 CAPTURE                          UPVAL U4
      101 NEWTABLE                         R15 0 2
      103 GETTABLEKS                       R16 R0 K5 ["Schema"]
      105 GETTABLEKS                       R17 R0 K5 ["Schema"]
      107 GETTABLEKS                       R17 R17 K7 ["ExpectedTypes"]
      109 SETLIST                          R15 R16 2 [1]
      111 CALL                             R13 2 1
      112 GETTABLEKS                       R15 R9 K8 ["Error"]
      114 GETUPVAL                         R16 4
      115 GETTABLEKS                       R16 R16 K9 ["None"]
      117 JUMPIFNOTEQ                      R15 R16 ; [+2]
      119 LOADB                            R14 0 +1
      120 LOADB                            R14 1
      121 GETTABLEKS                       R15 R0 K5 ["Schema"]
      123 GETTABLEKS                       R15 R15 K10 ["Editing"]
      125 GETTABLEKS                       R17 R5 K11 ["current"]
      127 GETTABLEKS                       R17 R17 K3 ["ItemCount"]
      129 LOADN                            R18 0
      130 JUMPIFNOTLT                      R18 R17 ; [+3]
      132 LOADK                            R16 K12 [∞]
      133 JUMP                             ; [+1]
      134 MOVE                             R16 R3
      135 GETUPVAL                         R17 7
      136 GETTABLEKS                       R17 R17 K13 ["createElement"]
      138 GETUPVAL                         R18 11
      139 NEWTABLE                         R19 0 0
      141 DUPTABLE                         R20 K16 [{"Input", "Tooltip"}]
      142 GETUPVAL                         R21 7
      143 GETTABLEKS                       R21 R21 K13 ["createElement"]
      145 GETUPVAL                         R22 12
      146 NEWTABLE                         R23 16 0
      148 SETTABLEKS                       R13 R23 K17 ["GetAutocompleteItems"]
      150 SETTABLEKS                       R12 R23 K18 ["OnRenderAutocompleteItem"]
      152 GETTABLEKS                       R24 R0 K19 ["Disabled"]
      154 SETTABLEKS                       R24 R23 K19 ["Disabled"]
      156 DUPTABLE                         R24 K22 [{"ItemHeight", "Width"}]
      157 GETTABLEKS                       R25 R0 K5 ["Schema"]
      159 GETTABLEKS                       R25 R25 K20 ["ItemHeight"]
      161 SETTABLEKS                       R25 R24 K20 ["ItemHeight"]
      163 SETTABLEKS                       R16 R24 K21 ["Width"]
      165 SETTABLEKS                       R24 R23 K23 ["DropdownMenuProps"]
      167 SETTABLEKS                       R10 R23 K24 ["OnTextChanged"]
      169 SETTABLEKS                       R11 R23 K25 ["OnFocusLost"]
      171 GETTABLEKS                       R25 R0 K26 ["AutomaticSize"]
      173 JUMPIFNOT                        R25 ; [+10]
      174 GETIMPORT                        R24 K29 [UDim2.new]
      176 LOADN                            R25 1
      177 LOADN                            R26 0
      178 LOADN                            R27 0
      179 GETTABLEKS                       R29 R0 K31 ["MinimumHeight"]
      181 ORK                              R28 R29 K30 [24]
      182 CALL                             R24 4 1
      183 JUMP                             ; [+5]
      184 GETIMPORT                        R24 K33 [UDim2.fromScale]
      186 LOADN                            R25 1
      187 LOADN                            R26 1
      188 CALL                             R24 2 1
      189 SETTABLEKS                       R24 R23 K34 ["Size"]
      191 SETTABLEKS                       R15 R23 K35 ["ShouldFocus"]
      193 SETTABLEKS                       R1 R23 K36 ["Text"]
      195 SETTABLEKS                       R6 R23 K37 ["ForwardRef"]
      197 GETUPVAL                         R24 7
      198 GETTABLEKS                       R24 R24 K38 ["Tag"]
      200 JUMPIFNOT                        R14 ; [+5]
      201 GETTABLEKS                       R25 R0 K5 ["Schema"]
      203 GETTABLEKS                       R25 R25 K39 ["ErrorStyle"]
      205 JUMP                             ; [+1]
      206 LOADNIL                          R25
      207 SETTABLE                         R25 R23 R24
      208 CALL                             R21 2 1
      209 SETTABLEKS                       R21 R20 K14 ["Input"]
      211 GETUPVAL                         R21 7
      212 GETTABLEKS                       R21 R21 K13 ["createElement"]
      214 GETUPVAL                         R22 13
      215 DUPTABLE                         R23 K41 [{"TokenInfo", "ErrorStyle"}]
      216 SETTABLEKS                       R9 R23 K40 ["TokenInfo"]
      218 GETTABLEKS                       R24 R0 K5 ["Schema"]
      220 GETTABLEKS                       R24 R24 K39 ["ErrorStyle"]
      222 SETTABLEKS                       R24 R23 K39 ["ErrorStyle"]
      224 CALL                             R21 2 1
      225 SETTABLEKS                       R21 R20 K15 ["Tooltip"]
      227 CALL                             R17 3 -1
      228 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["useState"]
       18 GETTABLEKS                       R3 R1 K8 ["useEffect"]
       20 GETTABLEKS                       R4 R1 K9 ["useMemo"]
       22 GETTABLEKS                       R5 R1 K10 ["useRef"]
       24 GETTABLEKS                       R6 R1 K11 ["useCallback"]
       26 GETIMPORT                        R7 K4 [require]
       28 GETTABLEKS                       R8 R0 K5 ["Packages"]
       30 GETTABLEKS                       R8 R8 K12 ["Framework"]
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R8 R7 K13 ["UI"]
       35 GETTABLEKS                       R8 R8 K14 ["Pane"]
       37 GETTABLEKS                       R9 R7 K13 ["UI"]
       39 GETTABLEKS                       R9 R9 K15 ["TextInput"]
       41 GETIMPORT                        R10 K4 [require]
       43 GETTABLEKS                       R11 R0 K5 ["Packages"]
       45 GETTABLEKS                       R11 R11 K16 ["Dash"]
       47 CALL                             R10 1 1
       48 GETTABLEKS                       R11 R10 K17 ["collectArray"]
       50 GETIMPORT                        R12 K4 [require]
       52 GETIMPORT                        R13 K1 [script]
       54 GETTABLEKS                       R13 R13 K18 ["TokenAutocompleteItem"]
       56 CALL                             R12 1 1
       57 GETIMPORT                        R13 K4 [require]
       59 GETIMPORT                        R14 K1 [script]
       61 GETTABLEKS                       R14 R14 K19 ["TokenTooltip"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K4 [require]
       66 GETIMPORT                        R15 K1 [script]
       68 GETTABLEKS                       R15 R15 K20 ["Types"]
       70 CALL                             R14 1 1
       71 GETIMPORT                        R15 K4 [require]
       73 GETTABLEKS                       R16 R0 K21 ["Src"]
       75 GETTABLEKS                       R16 R16 K22 ["Util"]
       77 GETTABLEKS                       R16 R16 K23 ["escapeStringPattern"]
       79 CALL                             R15 1 1
       80 GETIMPORT                        R16 K4 [require]
       82 GETTABLEKS                       R17 R0 K21 ["Src"]
       84 GETTABLEKS                       R17 R17 K22 ["Util"]
       86 GETTABLEKS                       R17 R17 K24 ["TokenHelpers"]
       88 CALL                             R16 1 1
       89 GETIMPORT                        R17 K4 [require]
       91 GETTABLEKS                       R18 R0 K21 ["Src"]
       93 GETTABLEKS                       R18 R18 K25 ["Enums"]
       95 GETTABLEKS                       R18 R18 K26 ["TokenValidationError"]
       97 CALL                             R17 1 1
       98 GETIMPORT                        R18 K4 [require]
      100 GETTABLEKS                       R19 R0 K21 ["Src"]
      102 GETTABLEKS                       R19 R19 K20 ["Types"]
      104 CALL                             R18 1 1
      105 GETIMPORT                        R19 K4 [require]
      107 GETTABLEKS                       R20 R0 K21 ["Src"]
      109 GETTABLEKS                       R20 R20 K27 ["Renderers"]
      111 GETTABLEKS                       R20 R20 K28 ["RendererTypes"]
      113 CALL                             R19 1 1
      114 DUPCLOSURE                       R20 K29 [PROTO_11]
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R4
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R17
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R15
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R13
      129 RETURN                           R20 1
