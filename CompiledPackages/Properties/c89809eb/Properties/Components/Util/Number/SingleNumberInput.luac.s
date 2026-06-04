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
      119 DUPTABLE                         R18 K39 [{"value", "precision", "focusBehavior", "formatAsString", "isScrubbable", "isDisabled", "onFocusGained", "onChanged", "onFocusLost", "step", "maximum", "minimum", "controlsVariant", "size", "width", "label"}]
      120 SETTABLEKS                       R3 R18 K24 ["value"]
      122 LOADN                            R19 99
      123 SETTABLEKS                       R19 R18 K25 ["precision"]
      125 GETUPVAL                         R19 5
      126 GETTABLEKS                       R19 R19 K40 ["Highlight"]
      128 SETTABLEKS                       R19 R18 K26 ["focusBehavior"]
      130 SETTABLEKS                       R7 R18 K27 ["formatAsString"]
      132 LOADB                            R19 1
      133 SETTABLEKS                       R19 R18 K28 ["isScrubbable"]
      135 GETTABLEKS                       R19 R0 K41 ["readonly"]
      137 SETTABLEKS                       R19 R18 K29 ["isDisabled"]
      139 SETTABLEKS                       R4 R18 K30 ["onFocusGained"]
      141 SETTABLEKS                       R5 R18 K31 ["onChanged"]
      143 SETTABLEKS                       R6 R18 K32 ["onFocusLost"]
      145 SETTABLEKS                       R9 R18 K9 ["step"]
      147 MOVE                             R19 R10
      148 JUMPIFNOT                        R19 ; [+2]
      149 GETTABLEKS                       R19 R10 K42 ["max"]
      151 SETTABLEKS                       R19 R18 K33 ["maximum"]
      153 MOVE                             R19 R10
      154 JUMPIFNOT                        R19 ; [+2]
      155 GETTABLEKS                       R19 R10 K43 ["min"]
      157 SETTABLEKS                       R19 R18 K34 ["minimum"]
      159 GETUPVAL                         R19 6
      160 GETTABLEKS                       R19 R19 K44 ["None"]
      162 SETTABLEKS                       R19 R18 K35 ["controlsVariant"]
      164 GETUPVAL                         R19 7
      165 GETTABLEKS                       R19 R19 K45 ["XSmall"]
      167 SETTABLEKS                       R19 R18 K36 ["size"]
      169 GETIMPORT                        R19 K48 [UDim.new]
      171 LOADN                            R20 1
      172 LOADN                            R21 0
      173 CALL                             R19 2 1
      174 SETTABLEKS                       R19 R18 K37 ["width"]
      176 LOADK                            R19 K49 [""]
      177 SETTABLEKS                       R19 R18 K38 ["label"]
      179 CALL                             R16 2 1
      180 SETTABLEKS                       R16 R15 K21 ["Input"]
      182 GETTABLEKS                       R16 R0 K50 ["chip"]
      184 JUMPIFNOT                        R16 ; [+36]
      185 GETUPVAL                         R16 2
      186 LOADK                            R17 K51 ["Frame"]
      187 DUPTABLE                         R18 K56 [{"BackgroundColor3", "Size", "Position", "AnchorPoint", "ZIndex"}]
      188 GETTABLEKS                       R19 R0 K50 ["chip"]
      190 GETTABLEKS                       R19 R19 K57 ["color"]
      192 SETTABLEKS                       R19 R18 K52 ["BackgroundColor3"]
      194 GETIMPORT                        R19 K58 [UDim2.new]
      196 LOADN                            R20 0
      197 LOADN                            R21 1
      198 LOADK                            R22 K59 [0.5]
      199 LOADN                            R23 0
      200 CALL                             R19 4 1
      201 SETTABLEKS                       R19 R18 K14 ["Size"]
      203 GETIMPORT                        R19 K20 [UDim2.fromScale]
      205 LOADN                            R20 0
      206 LOADK                            R21 K59 [0.5]
      207 CALL                             R19 2 1
      208 SETTABLEKS                       R19 R18 K53 ["Position"]
      210 GETIMPORT                        R19 K61 [Vector2.new]
      212 LOADN                            R20 0
      213 LOADK                            R21 K59 [0.5]
      214 CALL                             R19 2 1
      215 SETTABLEKS                       R19 R18 K54 ["AnchorPoint"]
      217 LOADN                            R19 2
      218 SETTABLEKS                       R19 R18 K55 ["ZIndex"]
      220 CALL                             R16 2 1
      221 SETTABLEKS                       R16 R15 K22 ["Chip"]
      223 CALL                             R12 3 -1
      224 RETURN                           R12 -1

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
       45 GETTABLEKS                       R8 R8 K18 ["NumberInputControlsVariant"]
       47 GETTABLEKS                       R9 R1 K17 ["Enums"]
       49 GETTABLEKS                       R9 R9 K19 ["InputSize"]
       51 GETTABLEKS                       R10 R1 K17 ["Enums"]
       53 GETTABLEKS                       R10 R10 K20 ["InputFocusBehavior"]
       55 DUPCLOSURE                       R11 K21 [PROTO_5]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R9
       64 RETURN                           R11 1
