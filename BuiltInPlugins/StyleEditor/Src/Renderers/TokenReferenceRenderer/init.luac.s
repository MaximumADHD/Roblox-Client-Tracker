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
        0 GETUPVAL                         R5 0
        1 JUMPIFNOT                        R5 ; [+5]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 JUMP                             ; [+1]
        7 LOADNIL                          R4
        8 GETUPVAL                         R5 3
        9 GETTABLEKS                       R5 R5 K0 ["createElement"]
       11 GETUPVAL                         R6 4
       12 DUPTABLE                         R7 K6 [{"TokenInfo", "OnActivated", "ErrorStyle", "LayoutOrder", "OnSizeChanged"}]
       13 GETTABLEKS                       R8 R0 K1 ["TokenInfo"]
       15 SETTABLEKS                       R8 R7 K1 ["TokenInfo"]
       17 SETTABLEKS                       R2 R7 K2 ["OnActivated"]
       19 GETUPVAL                         R8 5
       20 GETTABLEKS                       R8 R8 K7 ["Schema"]
       22 GETTABLEKS                       R8 R8 K3 ["ErrorStyle"]
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
        5 JUMPIF                           R1 ; [+9]
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+4]
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K5 [{["ContentWidth"] = 0, ["ItemCount"] = 0}]
       10 SETTABLEKS                       R3 R2 K6 ["current"]
       12 NEWTABLE                         R2 0 0
       14 RETURN                           R2 1
       15 GETUPVAL                         R3 3
       16 GETTABLEKS                       R3 R3 K7 ["parseAttributeName"]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 1
       20 OR                               R2 R3 R0
       21 NAMECALL                         R2 R2 K8 ["lower"]
       23 CALL                             R2 1 1
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K0 ["Schema"]
       27 GETTABLEKS                       R4 R4 K9 ["HideSelfTokens"]
       29 JUMPIFNOT                        R4 ; [+2]
       30 GETUPVAL                         R3 4
       31 JUMP                             ; [+1]
       32 GETUPVAL                         R3 5
       33 GETUPVAL                         R4 3
       34 GETTABLEKS                       R4 R4 K10 ["stripStyleEditorMetaAttributes"]
       36 MOVE                             R5 R3
       37 CALL                             R4 1 1
       38 GETUPVAL                         R5 6
       39 MOVE                             R6 R4
       40 NEWCLOSURE                       R7 P0
       41 CAPTURE                          UPVAL U7
       42 CAPTURE                          VAL R2
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R3
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U8
       47 CALL                             R5 2 1
       48 GETUPVAL                         R6 1
       49 JUMPIFNOT                        R6 ; [+12]
       50 GETIMPORT                        R6 K13 [table.sort]
       52 MOVE                             R7 R5
       53 DUPCLOSURE                       R8 K14 [PROTO_9]
       54 CALL                             R6 2 0
       55 GETUPVAL                         R6 2
       56 DUPTABLE                         R7 K15 [{["ContentWidth"] = 0, ["ItemCount"]}]
       57 LENGTH                           R8 R5
       58 SETTABLEKS                       R8 R7 K4 ["ItemCount"]
       60 SETTABLEKS                       R7 R6 K6 ["current"]
       62 RETURN                           R5 1

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
       86 CAPTURE                          UPVAL U7
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R4
       89 CAPTURE                          UPVAL U8
       90 CAPTURE                          UPVAL U9
       91 CAPTURE                          VAL R0
       92 GETUPVAL                         R13 5
       93 NEWCLOSURE                       R14 P7
       94 CAPTURE                          VAL R0
       95 CAPTURE                          UPVAL U7
       96 CAPTURE                          VAL R5
       97 CAPTURE                          UPVAL U3
       98 CAPTURE                          VAL R8
       99 CAPTURE                          VAL R7
      100 CAPTURE                          UPVAL U10
      101 CAPTURE                          UPVAL U11
      102 CAPTURE                          UPVAL U4
      103 NEWTABLE                         R15 0 2
      105 GETTABLEKS                       R16 R0 K5 ["Schema"]
      107 GETTABLEKS                       R17 R0 K5 ["Schema"]
      109 GETTABLEKS                       R17 R17 K7 ["ExpectedTypes"]
      111 SETLIST                          R15 R16 2 [1]
      113 CALL                             R13 2 1
      114 GETTABLEKS                       R15 R9 K8 ["Error"]
      116 GETUPVAL                         R16 4
      117 GETTABLEKS                       R16 R16 K9 ["None"]
      119 JUMPIFNOTEQ                      R15 R16 ; [+2]
      121 LOADB                            R14 0 +1
      122 LOADB                            R14 1
      123 GETTABLEKS                       R15 R0 K5 ["Schema"]
      125 GETTABLEKS                       R15 R15 K10 ["Editing"]
      127 GETUPVAL                         R17 7
      128 JUMPIFNOT                        R17 ; [+11]
      129 GETTABLEKS                       R17 R5 K11 ["current"]
      131 GETTABLEKS                       R17 R17 K3 ["ItemCount"]
      133 LOADN                            R18 0
      134 JUMPIFNOTLT                      R18 R17 ; [+3]
      136 LOADK                            R16 K12 [∞]
      137 JUMP                             ; [+3]
      138 MOVE                             R16 R3
      139 JUMP                             ; [+1]
      140 LOADNIL                          R16
      141 GETUPVAL                         R17 8
      142 GETTABLEKS                       R17 R17 K13 ["createElement"]
      144 GETUPVAL                         R18 12
      145 NEWTABLE                         R19 0 0
      147 DUPTABLE                         R20 K16 [{"Input", "Tooltip"}]
      148 GETUPVAL                         R21 8
      149 GETTABLEKS                       R21 R21 K13 ["createElement"]
      151 GETUPVAL                         R22 13
      152 NEWTABLE                         R23 16 0
      154 SETTABLEKS                       R13 R23 K17 ["GetAutocompleteItems"]
      156 SETTABLEKS                       R12 R23 K18 ["OnRenderAutocompleteItem"]
      158 GETTABLEKS                       R24 R0 K19 ["Disabled"]
      160 SETTABLEKS                       R24 R23 K19 ["Disabled"]
      162 DUPTABLE                         R24 K23 [{"ItemHeight", "Width", "UseAutoWidth"}]
      163 GETTABLEKS                       R25 R0 K5 ["Schema"]
      165 GETTABLEKS                       R25 R25 K20 ["ItemHeight"]
      167 SETTABLEKS                       R25 R24 K20 ["ItemHeight"]
      169 GETUPVAL                         R26 7
      170 JUMPIFNOT                        R26 ; [+2]
      171 MOVE                             R25 R16
      172 JUMP                             ; [+1]
      173 LOADNIL                          R25
      174 SETTABLEKS                       R25 R24 K21 ["Width"]
      176 GETUPVAL                         R26 7
      177 JUMPIF                           R26 ; [+4]
      178 GETUPVAL                         R26 14
      179 JUMPIFNOT                        R26 ; [+2]
      180 LOADB                            R25 1
      181 JUMP                             ; [+1]
      182 LOADNIL                          R25
      183 SETTABLEKS                       R25 R24 K22 ["UseAutoWidth"]
      185 SETTABLEKS                       R24 R23 K24 ["DropdownMenuProps"]
      187 SETTABLEKS                       R10 R23 K25 ["OnTextChanged"]
      189 SETTABLEKS                       R11 R23 K26 ["OnFocusLost"]
      191 GETTABLEKS                       R25 R0 K27 ["AutomaticSize"]
      193 JUMPIFNOT                        R25 ; [+10]
      194 GETIMPORT                        R24 K30 [UDim2.new]
      196 LOADN                            R25 1
      197 LOADN                            R26 0
      198 LOADN                            R27 0
      199 GETTABLEKS                       R29 R0 K32 ["MinimumHeight"]
      201 ORK                              R28 R29 K31 [24]
      202 CALL                             R24 4 1
      203 JUMP                             ; [+5]
      204 GETIMPORT                        R24 K34 [UDim2.fromScale]
      206 LOADN                            R25 1
      207 LOADN                            R26 1
      208 CALL                             R24 2 1
      209 SETTABLEKS                       R24 R23 K35 ["Size"]
      211 SETTABLEKS                       R15 R23 K36 ["ShouldFocus"]
      213 SETTABLEKS                       R1 R23 K37 ["Text"]
      215 SETTABLEKS                       R6 R23 K38 ["ForwardRef"]
      217 GETUPVAL                         R24 8
      218 GETTABLEKS                       R24 R24 K39 ["Tag"]
      220 JUMPIFNOT                        R14 ; [+5]
      221 GETTABLEKS                       R25 R0 K5 ["Schema"]
      223 GETTABLEKS                       R25 R25 K40 ["ErrorStyle"]
      225 JUMP                             ; [+1]
      226 LOADNIL                          R25
      227 SETTABLE                         R25 R23 R24
      228 CALL                             R21 2 1
      229 SETTABLEKS                       R21 R20 K14 ["Input"]
      231 GETUPVAL                         R21 8
      232 GETTABLEKS                       R21 R21 K13 ["createElement"]
      234 GETUPVAL                         R22 15
      235 DUPTABLE                         R23 K42 [{"TokenInfo", "ErrorStyle"}]
      236 SETTABLEKS                       R9 R23 K41 ["TokenInfo"]
      238 GETTABLEKS                       R24 R0 K5 ["Schema"]
      240 GETTABLEKS                       R24 R24 K40 ["ErrorStyle"]
      242 SETTABLEKS                       R24 R23 K40 ["ErrorStyle"]
      244 CALL                             R21 2 1
      245 SETTABLEKS                       R21 R20 K15 ["Tooltip"]
      247 CALL                             R17 3 -1
      248 RETURN                           R17 -1

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
      114 GETIMPORT                        R20 K30 [game]
      116 LOADK                            R22 K31 ["StyleEditorFixTokenTruncate"]
      117 LOADB                            R23 0
      118 NAMECALL                         R20 R20 K32 ["DefineFastFlag"]
      120 CALL                             R20 3 1
      121 GETIMPORT                        R21 K4 [require]
      123 GETTABLEKS                       R22 R0 K21 ["Src"]
      125 GETTABLEKS                       R22 R22 K33 ["Flags"]
      127 GETTABLEKS                       R22 R22 K34 ["getFFlagStyleEditorFixTokenMenuGrow"]
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
