PROTO_0:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["FormatStringKey"]
        8 JUMPIFNOT                        R2 ; [+18]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["FormatStringKey"]
       12 LOADK                            R4 K3 ["^Studio%.Ribbon%.Plugin%."]
       13 LOADK                            R5 K4 [""]
       14 NAMECALL                         R2 R2 K5 ["gsub"]
       16 CALL                             R2 3 1
       17 GETUPVAL                         R3 1
       18 LOADK                            R5 K6 ["Plugin"]
       19 MOVE                             R6 R2
       20 DUPTABLE                         R7 K8 [{"amount"}]
       21 SETTABLEKS                       R1 R7 K7 ["amount"]
       23 NAMECALL                         R3 R3 K9 ["getText"]
       25 CALL                             R3 4 -1
       26 RETURN                           R3 -1
       27 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+79]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["round"]
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["Value"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["Precision"]
       11 CALL                             R0 2 1
       12 GETUPVAL                         R1 3
       13 GETUPVAL                         R2 4
       14 MOVE                             R3 R0
       15 CALL                             R2 1 -1
       16 CALL                             R1 -1 0
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K0 ["round"]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K1 ["Value"]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K4 ["Increment"]
       26 ORK                              R4 R5 K3 [1]
       27 ADD                              R2 R3 R4
       28 GETUPVAL                         R3 2
       29 GETTABLEKS                       R3 R3 K2 ["Precision"]
       31 CALL                             R1 2 1
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R2 R2 K5 ["Minimum"]
       35 JUMPIFNOTLT                      R2 R1 ; [+10]
       37 GETUPVAL                         R2 2
       38 GETTABLEKS                       R2 R2 K6 ["Maximum"]
       40 JUMPIFNOTLE                      R1 R2 ; [+5]
       42 GETUPVAL                         R2 5
       43 LOADB                            R3 0
       44 CALL                             R2 1 0
       45 JUMP                             ; [+3]
       46 GETUPVAL                         R2 5
       47 LOADB                            R3 1
       48 CALL                             R2 1 0
       49 GETUPVAL                         R2 1
       50 GETTABLEKS                       R2 R2 K0 ["round"]
       52 GETUPVAL                         R4 2
       53 GETTABLEKS                       R4 R4 K1 ["Value"]
       55 GETUPVAL                         R6 2
       56 GETTABLEKS                       R6 R6 K4 ["Increment"]
       58 ORK                              R5 R6 K3 [1]
       59 SUB                              R3 R4 R5
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R4 R4 K2 ["Precision"]
       63 CALL                             R2 2 1
       64 GETUPVAL                         R3 2
       65 GETTABLEKS                       R3 R3 K5 ["Minimum"]
       67 JUMPIFNOTLT                      R3 R2 ; [+10]
       69 GETUPVAL                         R3 2
       70 GETTABLEKS                       R3 R3 K6 ["Maximum"]
       72 JUMPIFNOTLE                      R2 R3 ; [+5]
       74 GETUPVAL                         R3 6
       75 LOADB                            R4 0
       76 CALL                             R3 1 0
       77 RETURN                           R0 0
       78 GETUPVAL                         R3 6
       79 LOADB                            R4 1
       80 CALL                             R3 1 0
       81 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Disabled"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 FASTCALL1                        TONUMBER R0 ; [+3]
        6 MOVE                             R2 R0
        7 GETIMPORT                        R1 K2 [tonumber]
        9 CALL                             R1 1 1
       10 JUMPIFEQKNIL                     R1 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 JUMPIF                           R2 ; [+10]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K3 ["Maximum"]
       18 JUMPIFLT                         R3 R1 ; [+6]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K4 ["Minimum"]
       23 JUMPIFNOTLE                      R1 R3 ; [+27]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K3 ["Maximum"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K5 ["round"]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K6 ["Value"]
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R7 R7 K7 ["Precision"]
       37 CALL                             R5 2 -1
       38 FASTCALL                         MATH_MIN ; [+2]
       39 GETIMPORT                        R3 K10 [math.min]
       41 CALL                             R3 -1 1
       42 GETUPVAL                         R4 2
       43 GETUPVAL                         R5 3
       44 MOVE                             R6 R3
       45 CALL                             R5 1 -1
       46 CALL                             R4 -1 0
       47 GETUPVAL                         R4 4
       48 LOADB                            R5 1
       49 CALL                             R4 1 0
       50 JUMP                             ; [+31]
       51 GETUPVAL                         R4 0
       52 GETTABLEKS                       R4 R4 K3 ["Maximum"]
       54 GETUPVAL                         R5 1
       55 GETTABLEKS                       R5 R5 K5 ["round"]
       57 MOVE                             R6 R1
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R7 R7 K7 ["Precision"]
       61 CALL                             R5 2 -1
       62 FASTCALL                         MATH_MIN ; [+2]
       63 GETIMPORT                        R3 K10 [math.min]
       65 CALL                             R3 -1 1
       66 GETUPVAL                         R4 0
       67 GETTABLEKS                       R4 R4 K11 ["OnValueChanged"]
       69 MOVE                             R5 R1
       70 GETUPVAL                         R6 0
       71 GETTABLEKS                       R6 R6 K12 ["Uri"]
       73 CALL                             R4 2 0
       74 GETUPVAL                         R4 2
       75 GETUPVAL                         R5 3
       76 MOVE                             R6 R3
       77 CALL                             R5 1 -1
       78 CALL                             R4 -1 0
       79 GETUPVAL                         R4 4
       80 LOADB                            R5 0
       81 CALL                             R4 1 0
       82 GETUPVAL                         R3 5
       83 LOADB                            R4 0
       84 CALL                             R3 1 0
       85 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Disabled"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADK                            R1 K1 [""]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 LOADB                            R1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Disabled"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 FASTCALL1                        TONUMBER R0 ; [+3]
        6 MOVE                             R2 R0
        7 GETIMPORT                        R1 K2 [tonumber]
        9 CALL                             R1 1 1
       10 JUMPIFEQKNIL                     R1 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 JUMPIF                           R2 ; [+10]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K3 ["Maximum"]
       18 JUMPIFLT                         R3 R1 ; [+6]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K4 ["Minimum"]
       23 JUMPIFNOTLE                      R1 R3 ; [+5]
       25 GETUPVAL                         R3 1
       26 LOADB                            R4 1
       27 CALL                             R3 1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R3 1
       30 LOADB                            R4 0
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Disabled"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["Value"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["Increment"]
       13 ORK                              R2 R3 K2 [1]
       14 ADD                              R0 R1 R2
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K4 ["Minimum"]
       18 JUMPIFNOTLT                      R1 R0 ; [+26]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K5 ["Maximum"]
       23 JUMPIFNOTLE                      R0 R1 ; [+21]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K6 ["OnValueChanged"]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K5 ["Maximum"]
       31 FASTCALL2                        MATH_MIN R3 R0 ; [+4]
       33 MOVE                             R4 R0
       34 GETIMPORT                        R2 K9 [math.min]
       36 CALL                             R2 2 1
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K10 ["Uri"]
       40 CALL                             R1 2 0
       41 GETUPVAL                         R1 2
       42 LOADB                            R2 0
       43 CALL                             R1 1 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R1 2
       46 LOADB                            R2 1
       47 CALL                             R1 1 0
       48 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Disabled"]
        3 JUMPIF                           R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["Value"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["Increment"]
       13 ORK                              R2 R3 K2 [1]
       14 SUB                              R0 R1 R2
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K4 ["Minimum"]
       18 JUMPIFNOTLT                      R1 R0 ; [+26]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K5 ["Maximum"]
       23 JUMPIFNOTLE                      R0 R1 ; [+21]
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K6 ["OnValueChanged"]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R3 R3 K5 ["Maximum"]
       31 FASTCALL2                        MATH_MIN R3 R0 ; [+4]
       33 MOVE                             R4 R0
       34 GETIMPORT                        R2 K9 [math.min]
       36 CALL                             R2 2 1
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K10 ["Uri"]
       40 CALL                             R1 2 0
       41 GETUPVAL                         R1 2
       42 LOADB                            R2 0
       43 CALL                             R1 1 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R1 2
       46 LOADB                            R2 1
       47 CALL                             R1 1 0
       48 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["useState"]
        8 LOADB                            R4 0
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["useState"]
       13 LOADK                            R6 K1 [""]
       14 CALL                             R5 1 2
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R7 R7 K0 ["useState"]
       18 LOADB                            R8 0
       19 CALL                             R7 1 2
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R9 R9 K0 ["useState"]
       23 LOADB                            R10 0
       24 CALL                             R9 1 2
       25 GETUPVAL                         R11 1
       26 NAMECALL                         R11 R11 K2 ["use"]
       28 CALL                             R11 1 1
       29 GETUPVAL                         R12 2
       30 GETTABLEKS                       R13 R0 K3 ["Uri"]
       32 CALL                             R12 1 1
       33 GETTABLEKS                       R14 R0 K4 ["Visible"]
       35 JUMPIFEQKNIL                     R14 ; [+4]
       37 GETTABLEKS                       R13 R0 K4 ["Visible"]
       39 JUMP                             ; [+1]
       40 LOADB                            R13 1
       41 JUMPIF                           R13 ; [+2]
       42 LOADNIL                          R14
       43 RETURN                           R14 1
       44 GETUPVAL                         R14 0
       45 GETTABLEKS                       R14 R14 K5 ["useCallback"]
       47 NEWCLOSURE                       R15 P0
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R11
       50 NEWTABLE                         R16 0 2
       52 GETTABLEKS                       R17 R11 K6 ["locale"]
       54 GETTABLEKS                       R18 R0 K7 ["FormatStringKey"]
       56 SETLIST                          R16 R17 2 [1]
       58 CALL                             R14 2 1
       59 GETUPVAL                         R15 3
       60 NEWCLOSURE                       R16 P1
       61 CAPTURE                          VAL R3
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R14
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R10
       68 NEWTABLE                         R17 0 2
       70 GETTABLEKS                       R18 R0 K8 ["Value"]
       72 GETTABLEKS                       R19 R11 K6 ["locale"]
       74 SETLIST                          R17 R18 2 [1]
       76 CALL                             R15 2 0
       77 GETTABLEKS                       R16 R0 K9 ["Icon"]
       79 JUMPIFNOT                        R16 ; [+7]
       80 GETTABLEKS                       R15 R0 K9 ["Icon"]
       82 LOADK                            R17 K10 ["/"]
       83 NAMECALL                         R15 R15 K11 ["find"]
       85 CALL                             R15 2 1
       86 JUMP                             ; [+1]
       87 LOADNIL                          R15
       88 GETTABLEKS                       R17 R0 K9 ["Icon"]
       90 JUMPIFNOT                        R17 ; [+12]
       91 JUMPIFNOT                        R15 ; [+3]
       92 GETTABLEKS                       R16 R0 K9 ["Icon"]
       94 JUMP                             ; [+9]
       95 GETUPVAL                         R16 5
       96 GETTABLEKS                       R16 R16 K12 ["getPathForIcon"]
       98 GETTABLEKS                       R17 R0 K9 ["Icon"]
      100 LOADK                            R18 K13 ["Small"]
      101 CALL                             R16 2 1
      102 JUMP                             ; [+1]
      103 LOADNIL                          R16
      104 GETUPVAL                         R17 0
      105 GETTABLEKS                       R17 R17 K14 ["createElement"]
      107 GETUPVAL                         R18 6
      108 NEWTABLE                         R19 16 0
      110 SETTABLEKS                       R12 R19 K15 ["ForwardRef"]
      112 GETTABLEKS                       R20 R0 K16 ["Disabled"]
      114 SETTABLEKS                       R20 R19 K16 ["Disabled"]
      116 GETTABLEKS                       R21 R0 K18 ["LayoutOrder"]
      118 ORK                              R20 R21 K17 [1]
      119 SETTABLEKS                       R20 R19 K18 ["LayoutOrder"]
      121 SETTABLEKS                       R5 R19 K19 ["Text"]
      123 NEWCLOSURE                       R20 P2
      124 CAPTURE                          VAL R0
      125 CAPTURE                          UPVAL U4
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R14
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R4
      130 SETTABLEKS                       R20 R19 K20 ["OnFocusLost"]
      132 NEWCLOSURE                       R20 P3
      133 CAPTURE                          VAL R0
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R4
      136 SETTABLEKS                       R20 R19 K21 ["OnFocused"]
      138 NEWCLOSURE                       R20 P4
      139 CAPTURE                          VAL R0
      140 CAPTURE                          VAL R2
      141 SETTABLEKS                       R20 R19 K22 ["OnTextChanged"]
      143 JUMPIFNOT                        R16 ; [+2]
      144 GETUPVAL                         R20 7
      145 JUMP                             ; [+1]
      146 LOADNIL                          R20
      147 SETTABLEKS                       R20 R19 K23 ["LeadingComponent"]
      149 NEWTABLE                         R20 4 0
      151 SETTABLEKS                       R16 R20 K24 ["Image"]
      153 GETIMPORT                        R21 K27 [UDim2.fromOffset]
      155 LOADN                            R22 16
      156 LOADN                            R23 16
      157 CALL                             R21 2 1
      158 SETTABLEKS                       R21 R20 K28 ["Size"]
      160 GETUPVAL                         R21 0
      161 GETTABLEKS                       R21 R21 K29 ["Tag"]
      163 GETTABLEKS                       R23 R0 K16 ["Disabled"]
      165 JUMPIFNOT                        R23 ; [+2]
      166 LOADK                            R22 K30 ["Component-RibbonSpinboxLeftIcon State-Disabled"]
      167 JUMP                             ; [+1]
      168 LOADNIL                          R22
      169 SETTABLE                         R22 R20 R21
      170 SETTABLEKS                       R20 R19 K31 ["LeadingComponentProps"]
      172 GETUPVAL                         R20 8
      173 SETTABLEKS                       R20 R19 K32 ["TrailingComponent"]
      175 DUPTABLE                         R20 K37 [{"Disabled", "DisabledUp", "DisabledDown", "LayoutOrder", "OnClickUp", "OnClickDown"}]
      176 GETTABLEKS                       R21 R0 K16 ["Disabled"]
      178 SETTABLEKS                       R21 R20 K16 ["Disabled"]
      180 SETTABLEKS                       R7 R20 K33 ["DisabledUp"]
      182 SETTABLEKS                       R9 R20 K34 ["DisabledDown"]
      184 GETTABLEKS                       R23 R0 K18 ["LayoutOrder"]
      186 ORK                              R22 R23 K17 [1]
      187 ADDK                             R21 R22 K17 [1]
      188 SETTABLEKS                       R21 R20 K18 ["LayoutOrder"]
      190 NEWCLOSURE                       R21 P5
      191 CAPTURE                          VAL R0
      192 CAPTURE                          VAL R7
      193 CAPTURE                          VAL R2
      194 SETTABLEKS                       R21 R20 K35 ["OnClickUp"]
      196 NEWCLOSURE                       R21 P6
      197 CAPTURE                          VAL R0
      198 CAPTURE                          VAL R9
      199 CAPTURE                          VAL R2
      200 SETTABLEKS                       R21 R20 K36 ["OnClickDown"]
      202 SETTABLEKS                       R20 R19 K38 ["TrailingComponentProps"]
      204 GETTABLEKS                       R21 R0 K39 ["IsShort"]
      206 JUMPIFNOT                        R21 ; [+2]
      207 GETUPVAL                         R20 9
      208 JUMP                             ; [+5]
      209 JUMPIFEQKNIL                     R16 ; [+3]
      211 GETUPVAL                         R20 10
      212 JUMP                             ; [+1]
      213 GETUPVAL                         R20 11
      214 SETTABLEKS                       R20 R19 K28 ["Size"]
      216 LOADB                            R20 1
      217 SETTABLEKS                       R20 R19 K40 ["OverrideTags"]
      219 LOADK                            R20 K41 ["Component-RibbonSpinboxWrapper X-Row X-Middle"]
      220 SETTABLEKS                       R20 R19 K42 ["PaneTags"]
      222 GETUPVAL                         R20 0
      223 GETTABLEKS                       R20 R20 K29 ["Tag"]
      225 GETUPVAL                         R21 12
      226 LOADK                            R23 K43 ["Component-RibbonSpinbox data-testid=%*"]
      227 GETUPVAL                         R25 13
      228 GETTABLEKS                       R26 R0 K3 ["Uri"]
      230 CALL                             R25 1 1
      231 NAMECALL                         R23 R23 K44 ["format"]
      233 CALL                             R23 2 1
      234 MOVE                             R22 R23
      235 GETTABLEKS                       R24 R0 K16 ["Disabled"]
      237 JUMPIFNOT                        R24 ; [+2]
      238 LOADK                            R23 K45 ["State-Disabled"]
      239 JUMP                             ; [+1]
      240 LOADK                            R23 K46 ["State-Default"]
      241 JUMPIFNOT                        R3 ; [+2]
      242 LOADK                            R24 K47 ["State-Focus"]
      243 JUMP                             ; [+1]
      244 LOADNIL                          R24
      245 CALL                             R21 3 1
      246 SETTABLE                         R21 R19 R20
      247 CALL                             R17 2 -1
      248 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useEffect"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["Hooks"]
       25 GETTABLEKS                       R4 R4 K11 ["useWidgetRef"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K12 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Util"]
       33 GETTABLEKS                       R6 R6 K14 ["IconHelper"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K12 ["Src"]
       40 GETTABLEKS                       R7 R7 K13 ["Util"]
       42 GETTABLEKS                       R7 R7 K15 ["uriToTestId"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R8 R0 K6 ["Packages"]
       49 GETTABLEKS                       R8 R8 K16 ["Framework"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R7 K17 ["ContextServices"]
       54 GETTABLEKS                       R9 R8 K18 ["Localization"]
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R11 R0 K12 ["Src"]
       60 GETTABLEKS                       R11 R11 K19 ["Components"]
       62 GETTABLEKS                       R11 R11 K20 ["RibbonSpinboxController"]
       64 CALL                             R10 1 1
       65 GETTABLEKS                       R11 R7 K21 ["Styling"]
       67 GETTABLEKS                       R12 R11 K22 ["joinTags"]
       69 GETIMPORT                        R13 K5 [require]
       71 GETTABLEKS                       R14 R0 K12 ["Src"]
       73 GETTABLEKS                       R14 R14 K23 ["Resources"]
       75 GETTABLEKS                       R14 R14 K24 ["PluginStyles"]
       77 CALL                             R13 1 1
       78 LOADK                            R16 K25 ["SpinboxDefaultSize"]
       79 NAMECALL                         R14 R13 K26 ["GetAttribute"]
       81 CALL                             R14 2 1
       82 LOADK                            R17 K27 ["SpinboxShortSize"]
       83 NAMECALL                         R15 R13 K26 ["GetAttribute"]
       85 CALL                             R15 2 1
       86 LOADK                            R18 K28 ["SpinboxWithIconSize"]
       87 NAMECALL                         R16 R13 K26 ["GetAttribute"]
       89 CALL                             R16 2 1
       90 GETTABLEKS                       R17 R7 K29 ["UI"]
       92 GETTABLEKS                       R18 R17 K30 ["TextInput"]
       94 GETTABLEKS                       R19 R17 K31 ["Image"]
       96 GETTABLEKS                       R20 R7 K13 ["Util"]
       98 GETTABLEKS                       R21 R20 K32 ["Math"]
      100 DUPCLOSURE                       R22 K33 [PROTO_7]
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R4
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R21
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R18
      108 CAPTURE                          VAL R19
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R16
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R6
      115 RETURN                           R22 1
