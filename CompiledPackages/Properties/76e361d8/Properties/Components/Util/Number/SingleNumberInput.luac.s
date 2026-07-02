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
       99 DUPTABLE                         R14 K17 [{["tag"] = "auto-y", ["Size"], ["LayoutOrder"], ["Visible"]}]
      100 GETIMPORT                        R15 K20 [UDim2.fromScale]
      102 LOADN                            R16 1
      103 LOADN                            R17 0
      104 CALL                             R15 2 1
      105 SETTABLEKS                       R15 R14 K15 ["Size"]
      107 GETTABLEKS                       R15 R0 K16 ["LayoutOrder"]
      109 SETTABLEKS                       R15 R14 K16 ["LayoutOrder"]
      111 SETTABLEKS                       R11 R14 K12 ["Visible"]
      113 DUPTABLE                         R15 K23 [{"Input", "Chip"}]
      114 GETUPVAL                         R16 2
      115 GETUPVAL                         R17 4
      116 DUPTABLE                         R18 K43 [{["value"], ["precision"] = 99, ["focusBehavior"], ["formatAsString"], ["variant"], ["isScrubbable"] = True, ["isDisabled"], ["onFocusGained"], ["onChanged"], ["onFocusLost"], ["step"], ["maximum"], ["minimum"], ["controlsVariant"], ["size"], ["width"], ["label"] = ""}]
      117 SETTABLEKS                       R3 R18 K24 ["value"]
      119 GETUPVAL                         R19 5
      120 GETTABLEKS                       R19 R19 K44 ["Highlight"]
      122 SETTABLEKS                       R19 R18 K27 ["focusBehavior"]
      124 SETTABLEKS                       R7 R18 K28 ["formatAsString"]
      126 GETUPVAL                         R19 6
      127 GETTABLEKS                       R19 R19 K45 ["Contrast"]
      129 SETTABLEKS                       R19 R18 K29 ["variant"]
      131 GETTABLEKS                       R19 R0 K46 ["readonly"]
      133 SETTABLEKS                       R19 R18 K32 ["isDisabled"]
      135 SETTABLEKS                       R4 R18 K33 ["onFocusGained"]
      137 SETTABLEKS                       R5 R18 K34 ["onChanged"]
      139 SETTABLEKS                       R6 R18 K35 ["onFocusLost"]
      141 SETTABLEKS                       R9 R18 K9 ["step"]
      143 MOVE                             R19 R10
      144 JUMPIFNOT                        R19 ; [+2]
      145 GETTABLEKS                       R19 R10 K47 ["max"]
      147 SETTABLEKS                       R19 R18 K36 ["maximum"]
      149 MOVE                             R19 R10
      150 JUMPIFNOT                        R19 ; [+2]
      151 GETTABLEKS                       R19 R10 K48 ["min"]
      153 SETTABLEKS                       R19 R18 K37 ["minimum"]
      155 GETUPVAL                         R19 7
      156 GETTABLEKS                       R19 R19 K49 ["None"]
      158 SETTABLEKS                       R19 R18 K38 ["controlsVariant"]
      160 GETUPVAL                         R19 8
      161 GETTABLEKS                       R19 R19 K50 ["XSmall"]
      163 SETTABLEKS                       R19 R18 K39 ["size"]
      165 GETIMPORT                        R19 K53 [UDim.new]
      167 LOADN                            R20 1
      168 LOADN                            R21 0
      169 CALL                             R19 2 1
      170 SETTABLEKS                       R19 R18 K40 ["width"]
      172 CALL                             R16 2 1
      173 SETTABLEKS                       R16 R15 K21 ["Input"]
      175 GETTABLEKS                       R16 R0 K54 ["chip"]
      177 JUMPIFNOT                        R16 ; [+33]
      178 GETUPVAL                         R16 2
      179 LOADK                            R17 K55 ["Frame"]
      180 DUPTABLE                         R18 K61 [{["BackgroundColor3"], ["Size"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 2}]
      181 GETTABLEKS                       R19 R0 K54 ["chip"]
      183 GETTABLEKS                       R19 R19 K62 ["color"]
      185 SETTABLEKS                       R19 R18 K56 ["BackgroundColor3"]
      187 GETIMPORT                        R19 K63 [UDim2.new]
      189 LOADN                            R20 0
      190 LOADN                            R21 1
      191 LOADK                            R22 K64 [0.5]
      192 LOADN                            R23 0
      193 CALL                             R19 4 1
      194 SETTABLEKS                       R19 R18 K15 ["Size"]
      196 GETIMPORT                        R19 K20 [UDim2.fromScale]
      198 LOADN                            R20 0
      199 LOADK                            R21 K64 [0.5]
      200 CALL                             R19 2 1
      201 SETTABLEKS                       R19 R18 K57 ["Position"]
      203 GETIMPORT                        R19 K66 [Vector2.new]
      205 LOADN                            R20 0
      206 LOADK                            R21 K64 [0.5]
      207 CALL                             R19 2 1
      208 SETTABLEKS                       R19 R18 K58 ["AnchorPoint"]
      210 CALL                             R16 2 1
      211 SETTABLEKS                       R16 R15 K22 ["Chip"]
      213 CALL                             R12 3 -1
      214 RETURN                           R12 -1

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
