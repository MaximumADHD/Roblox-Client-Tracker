PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["multiple"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADN                            R1 0
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R2 R0 K1 ["value"]
        8 CALL                             R1 1 1
        9 FASTCALL1                        TONUMBER R1 ; [+3]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K3 [tonumber]
       13 CALL                             R2 1 1
       14 FASTCALL1                        TYPEOF R2 ; [+3]
       15 MOVE                             R6 R2
       16 GETIMPORT                        R5 K5 [typeof]
       18 CALL                             R5 1 1
       19 JUMPIFEQKS                       R5 K6 ["number"] ; [+2]
       21 LOADB                            R4 0 +1
       22 LOADB                            R4 1
       23 FASTCALL2K                       ASSERT R4 K7 ; [+4]
       25 LOADK                            R5 K7 ["somehow we formatted a number, then converted it back to a number, but did not get back a number"]
       26 GETIMPORT                        R3 K9 [assert]
       28 CALL                             R3 2 0
       29 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R2 R2 K0 ["getValue"]
        4 CALL                             R2 1 1
        5 SETTABLEKS                       R2 R1 K1 ["current"]
        7 GETUPVAL                         R1 2
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R1 K1 ["current"]
       11 GETUPVAL                         R1 3
       12 GETTABLEKS                       R1 R1 K2 ["onEditStart"]
       14 CALL                             R1 0 0
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K3 ["onChange"]
       18 GETUPVAL                         R2 1
       19 NAMECALL                         R2 R2 K0 ["getValue"]
       21 CALL                             R2 1 -1
       22 CALL                             R1 -1 0
       23 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKS                    R1 K0 ["Drag"] ; [+17]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["onEditStart"]
        5 CALL                             R2 0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["onChange"]
        9 MOVE                             R3 R0
       10 CALL                             R2 1 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["onEditFinish"]
       14 GETIMPORT                        R3 K7 [Enum.FinishRecordingOperation.Commit]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0
       18 JUMPIFNOTEQKS                    R1 K8 ["Keyboard"] ; [+9]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K2 ["onChange"]
       23 MOVE                             R3 R0
       24 CALL                             R2 1 0
       25 GETUPVAL                         R2 1
       26 SETTABLEKS                       R0 R2 K9 ["current"]
       28 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+24]
        1 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        3 GETIMPORT                        R2 K3 [Enum.KeyCode.Escape]
        5 JUMPIFNOTEQ                      R1 R2 ; [+19]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K4 ["current"]
       10 JUMPIFNOT                        R1 ; [+7]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K5 ["onChange"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K4 ["current"]
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K6 ["onEditFinish"]
       21 GETIMPORT                        R2 K9 [Enum.FinishRecordingOperation.Cancel]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R1 R1 K4 ["current"]
       28 JUMPIFEQKNIL                     R1 ; [+8]
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R1 R1 K5 ["onChange"]
       33 GETUPVAL                         R2 2
       34 GETTABLEKS                       R2 R2 K4 ["current"]
       36 CALL                             R1 1 0
       37 GETUPVAL                         R1 1
       38 GETTABLEKS                       R1 R1 K6 ["onEditFinish"]
       40 GETIMPORT                        R2 K11 [Enum.FinishRecordingOperation.Commit]
       42 CALL                             R1 1 0
       43 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["propertyPart"]
        3 NAMECALL                         R2 R2 K1 ["getValue"]
        5 CALL                             R2 1 1
        6 GETTABLEKS                       R2 R2 K2 ["multiple"]
        8 JUMPIFNOT                        R2 ; [+2]
        9 LOADK                            R1 K3 ["-"]
       10 RETURN                           R1 1
       11 GETUPVAL                         R1 1
       12 MOVE                             R2 R0
       13 CALL                             R1 1 1
       14 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useRef"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R0 K1 ["propertyPart"]
       12 DUPCLOSURE                       R5 K2 [PROTO_0]
       13 CAPTURE                          UPVAL U1
       14 NAMECALL                         R3 R3 K3 ["map"]
       16 CALL                             R3 2 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R3
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R0
       25 NEWTABLE                         R6 0 1
       27 GETTABLEKS                       R7 R0 K5 ["onEditStart"]
       29 SETLIST                          R6 R7 1 [1]
       31 CALL                             R4 2 1
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       35 NEWCLOSURE                       R6 P2
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R2
       38 NEWTABLE                         R7 0 3
       40 GETTABLEKS                       R8 R0 K5 ["onEditStart"]
       42 GETTABLEKS                       R9 R0 K6 ["onChange"]
       44 GETTABLEKS                       R10 R0 K7 ["onEditFinish"]
       46 SETLIST                          R7 R8 3 [1]
       48 CALL                             R5 2 1
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       52 NEWCLOSURE                       R7 P3
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R2
       56 NEWTABLE                         R8 0 2
       58 GETTABLEKS                       R9 R0 K6 ["onChange"]
       60 GETTABLEKS                       R10 R0 K7 ["onEditFinish"]
       62 SETLIST                          R8 R9 2 [1]
       64 CALL                             R6 2 1
       65 GETUPVAL                         R7 0
       66 GETTABLEKS                       R7 R7 K4 ["useCallback"]
       68 NEWCLOSURE                       R8 P4
       69 CAPTURE                          VAL R0
       70 CAPTURE                          UPVAL U1
       71 NEWTABLE                         R9 0 0
       73 CALL                             R7 2 1
       74 GETTABLEKS                       R8 R0 K8 ["slider"]
       76 JUMPIFNOT                        R8 ; [+4]
       77 GETTABLEKS                       R8 R0 K8 ["slider"]
       79 GETTABLEKS                       R8 R8 K9 ["step"]
       81 ORK                              R9 R8 K10 [1]
       82 GETTABLEKS                       R10 R0 K8 ["slider"]
       84 JUMPIFNOT                        R10 ; [+4]
       85 GETTABLEKS                       R10 R0 K8 ["slider"]
       87 GETTABLEKS                       R10 R10 K11 ["bounds"]
       89 GETTABLEKS                       R12 R0 K12 ["Visible"]
       91 JUMPIFEQKNIL                     R12 ; [+4]
       93 GETTABLEKS                       R11 R0 K12 ["Visible"]
       95 JUMP                             ; [+1]
       96 LOADB                            R11 1
       97 GETUPVAL                         R12 2
       98 GETUPVAL                         R13 3
       99 DUPTABLE                         R14 K16 [{"tag", "Size", "LayoutOrder", "Visible"}]
      100 LOADK                            R15 K17 ["auto-y"]
      101 SETTABLEKS                       R15 R14 K13 ["tag"]
      103 GETIMPORT                        R15 K20 [UDim2.fromScale]
      105 LOADN                            R16 1
      106 LOADN                            R17 0
      107 CALL                             R15 2 1
      108 SETTABLEKS                       R15 R14 K14 ["Size"]
      110 GETTABLEKS                       R15 R0 K15 ["LayoutOrder"]
      112 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
      114 SETTABLEKS                       R11 R14 K12 ["Visible"]
      116 DUPTABLE                         R15 K23 [{"Input", "Chip"}]
      117 GETUPVAL                         R16 2
      118 GETUPVAL                         R17 4
      119 DUPTABLE                         R18 K40 [{"value", "precision", "focusBehavior", "formatAsString", "variant", "isScrubbable", "isDisabled", "onFocusGained", "onChanged", "onFocusLost", "step", "maximum", "minimum", "controlsVariant", "size", "width", "label"}]
      120 SETTABLEKS                       R3 R18 K24 ["value"]
      122 LOADN                            R19 99
      123 SETTABLEKS                       R19 R18 K25 ["precision"]
      125 GETUPVAL                         R19 5
      126 GETTABLEKS                       R19 R19 K41 ["Highlight"]
      128 SETTABLEKS                       R19 R18 K26 ["focusBehavior"]
      130 SETTABLEKS                       R7 R18 K27 ["formatAsString"]
      132 GETUPVAL                         R19 6
      133 GETTABLEKS                       R19 R19 K42 ["Contrast"]
      135 SETTABLEKS                       R19 R18 K28 ["variant"]
      137 LOADB                            R19 1
      138 SETTABLEKS                       R19 R18 K29 ["isScrubbable"]
      140 GETTABLEKS                       R19 R0 K43 ["readonly"]
      142 SETTABLEKS                       R19 R18 K30 ["isDisabled"]
      144 SETTABLEKS                       R4 R18 K31 ["onFocusGained"]
      146 SETTABLEKS                       R5 R18 K32 ["onChanged"]
      148 SETTABLEKS                       R6 R18 K33 ["onFocusLost"]
      150 SETTABLEKS                       R9 R18 K9 ["step"]
      152 MOVE                             R19 R10
      153 JUMPIFNOT                        R19 ; [+2]
      154 GETTABLEKS                       R19 R10 K44 ["max"]
      156 SETTABLEKS                       R19 R18 K34 ["maximum"]
      158 MOVE                             R19 R10
      159 JUMPIFNOT                        R19 ; [+2]
      160 GETTABLEKS                       R19 R10 K45 ["min"]
      162 SETTABLEKS                       R19 R18 K35 ["minimum"]
      164 GETUPVAL                         R19 7
      165 GETTABLEKS                       R19 R19 K46 ["None"]
      167 SETTABLEKS                       R19 R18 K36 ["controlsVariant"]
      169 GETUPVAL                         R19 8
      170 GETTABLEKS                       R19 R19 K47 ["XSmall"]
      172 SETTABLEKS                       R19 R18 K37 ["size"]
      174 GETIMPORT                        R19 K50 [UDim.new]
      176 LOADN                            R20 1
      177 LOADN                            R21 0
      178 CALL                             R19 2 1
      179 SETTABLEKS                       R19 R18 K38 ["width"]
      181 LOADK                            R19 K51 [""]
      182 SETTABLEKS                       R19 R18 K39 ["label"]
      184 CALL                             R16 2 1
      185 SETTABLEKS                       R16 R15 K21 ["Input"]
      187 GETTABLEKS                       R16 R0 K52 ["chip"]
      189 JUMPIFNOT                        R16 ; [+36]
      190 GETUPVAL                         R16 2
      191 LOADK                            R17 K53 ["Frame"]
      192 DUPTABLE                         R18 K58 [{"BackgroundColor3", "Size", "Position", "AnchorPoint", "ZIndex"}]
      193 GETTABLEKS                       R19 R0 K52 ["chip"]
      195 GETTABLEKS                       R19 R19 K59 ["color"]
      197 SETTABLEKS                       R19 R18 K54 ["BackgroundColor3"]
      199 GETIMPORT                        R19 K60 [UDim2.new]
      201 LOADN                            R20 0
      202 LOADN                            R21 1
      203 LOADK                            R22 K61 [0.5]
      204 LOADN                            R23 0
      205 CALL                             R19 4 1
      206 SETTABLEKS                       R19 R18 K14 ["Size"]
      208 GETIMPORT                        R19 K20 [UDim2.fromScale]
      210 LOADN                            R20 0
      211 LOADK                            R21 K61 [0.5]
      212 CALL                             R19 2 1
      213 SETTABLEKS                       R19 R18 K55 ["Position"]
      215 GETIMPORT                        R19 K63 [Vector2.new]
      217 LOADN                            R20 0
      218 LOADK                            R21 K61 [0.5]
      219 CALL                             R19 2 1
      220 SETTABLEKS                       R19 R18 K56 ["AnchorPoint"]
      222 LOADN                            R19 2
      223 SETTABLEKS                       R19 R18 K57 ["ZIndex"]
      225 CALL                             R16 2 1
      226 SETTABLEKS                       R16 R15 K22 ["Chip"]
      228 CALL                             R12 3 -1
      229 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["PropertyTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K6 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Util"]
       30 GETTABLEKS                       R5 R5 K11 ["NumberDisplay"]
       32 GETTABLEKS                       R5 R5 K12 ["Formatting"]
       34 GETTABLEKS                       R5 R5 K13 ["formatForSingleInput"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R3 K14 ["createElement"]
       39 GETTABLEKS                       R6 R1 K15 ["NumberInput"]
       41 GETTABLEKS                       R7 R1 K16 ["View"]
       43 GETTABLEKS                       R8 R1 K17 ["Enums"]
       45 GETTABLEKS                       R8 R8 K18 ["InputFocusBehavior"]
       47 GETTABLEKS                       R9 R1 K17 ["Enums"]
       49 GETTABLEKS                       R9 R9 K19 ["InputSize"]
       51 GETTABLEKS                       R10 R1 K17 ["Enums"]
       53 GETTABLEKS                       R10 R10 K20 ["InputVariant"]
       55 GETTABLEKS                       R11 R1 K17 ["Enums"]
       57 GETTABLEKS                       R11 R11 K21 ["NumberInputControlsVariant"]
       59 DUPCLOSURE                       R12 K22 [PROTO_5]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R9
       69 RETURN                           R12 1
