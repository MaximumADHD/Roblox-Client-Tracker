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
        1 LOADB                            R2 1
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 NAMECALL                         R2 R2 K0 ["getValue"]
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R1 K1 ["current"]
       10 GETUPVAL                         R1 3
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R1 K1 ["current"]
       14 GETUPVAL                         R1 4
       15 GETTABLEKS                       R1 R1 K2 ["onEditStart"]
       17 CALL                             R1 0 0
       18 GETUPVAL                         R1 4
       19 GETTABLEKS                       R1 R1 K3 ["onChange"]
       21 GETUPVAL                         R2 2
       22 NAMECALL                         R2 R2 K0 ["getValue"]
       24 CALL                             R2 1 -1
       25 CALL                             R1 -1 0
       26 RETURN                           R0 0

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
       18 JUMPIFNOTEQKS                    R1 K8 ["Keyboard"] ; [+14]
       20 GETUPVAL                         R2 1
       21 NAMECALL                         R2 R2 K9 ["getValue"]
       23 CALL                             R2 1 1
       24 JUMPIFNOT                        R2 ; [+8]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K2 ["onChange"]
       28 MOVE                             R3 R0
       29 CALL                             R2 1 0
       30 GETUPVAL                         R2 2
       31 SETTABLEKS                       R0 R2 K10 ["current"]
       33 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 0
        3 JUMPIFNOT                        R0 ; [+24]
        4 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        6 GETIMPORT                        R2 K3 [Enum.KeyCode.Escape]
        8 JUMPIFNOTEQ                      R1 R2 ; [+19]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K4 ["current"]
       13 JUMPIFNOT                        R1 ; [+7]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K5 ["onChange"]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K4 ["current"]
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K6 ["onEditFinish"]
       24 GETIMPORT                        R2 K9 [Enum.FinishRecordingOperation.Cancel]
       26 CALL                             R1 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R1 3
       29 GETTABLEKS                       R1 R1 K4 ["current"]
       31 JUMPIFEQKNIL                     R1 ; [+8]
       33 GETUPVAL                         R1 2
       34 GETTABLEKS                       R1 R1 K5 ["onChange"]
       36 GETUPVAL                         R2 3
       37 GETTABLEKS                       R2 R2 K4 ["current"]
       39 CALL                             R1 1 0
       40 GETUPVAL                         R1 2
       41 GETTABLEKS                       R1 R1 K6 ["onEditFinish"]
       43 GETIMPORT                        R2 K11 [Enum.FinishRecordingOperation.Commit]
       45 CALL                             R1 1 0
       46 RETURN                           R0 0

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
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useRef"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["useBinding"]
       13 LOADB                            R4 0
       14 CALL                             R3 1 2
       15 GETTABLEKS                       R5 R0 K2 ["propertyPart"]
       17 DUPCLOSURE                       R7 K3 [PROTO_0]
       18 CAPTURE                          UPVAL U1
       19 NAMECALL                         R5 R5 K4 ["map"]
       21 CALL                             R5 2 1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K5 ["useCallback"]
       25 NEWCLOSURE                       R7 P1
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R1
       28 CAPTURE                          VAL R5
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R0
       31 NEWTABLE                         R8 0 1
       33 GETTABLEKS                       R9 R0 K6 ["onEditStart"]
       35 SETLIST                          R8 R9 1 [1]
       37 CALL                             R6 2 1
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       41 NEWCLOSURE                       R8 P2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R2
       45 NEWTABLE                         R9 0 3
       47 GETTABLEKS                       R10 R0 K6 ["onEditStart"]
       49 GETTABLEKS                       R11 R0 K7 ["onChange"]
       51 GETTABLEKS                       R12 R0 K8 ["onEditFinish"]
       53 SETLIST                          R9 R10 3 [1]
       55 CALL                             R7 2 1
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K5 ["useCallback"]
       59 NEWCLOSURE                       R9 P3
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R2
       64 NEWTABLE                         R10 0 2
       66 GETTABLEKS                       R11 R0 K7 ["onChange"]
       68 GETTABLEKS                       R12 R0 K8 ["onEditFinish"]
       70 SETLIST                          R10 R11 2 [1]
       72 CALL                             R8 2 1
       73 GETUPVAL                         R9 0
       74 GETTABLEKS                       R9 R9 K5 ["useCallback"]
       76 NEWCLOSURE                       R10 P4
       77 CAPTURE                          VAL R0
       78 CAPTURE                          UPVAL U1
       79 NEWTABLE                         R11 0 0
       81 CALL                             R9 2 1
       82 GETTABLEKS                       R10 R0 K9 ["slider"]
       84 JUMPIFNOT                        R10 ; [+4]
       85 GETTABLEKS                       R10 R0 K9 ["slider"]
       87 GETTABLEKS                       R10 R10 K10 ["step"]
       89 ORK                              R11 R10 K11 [1]
       90 GETTABLEKS                       R12 R0 K9 ["slider"]
       92 JUMPIFNOT                        R12 ; [+4]
       93 GETTABLEKS                       R12 R0 K9 ["slider"]
       95 GETTABLEKS                       R12 R12 K12 ["bounds"]
       97 GETTABLEKS                       R14 R0 K13 ["Visible"]
       99 JUMPIFEQKNIL                     R14 ; [+4]
      101 GETTABLEKS                       R13 R0 K13 ["Visible"]
      103 JUMP                             ; [+1]
      104 LOADB                            R13 1
      105 GETUPVAL                         R14 2
      106 GETUPVAL                         R15 3
      107 DUPTABLE                         R16 K18 [{["tag"] = "auto-y", ["Size"], ["LayoutOrder"], ["Visible"]}]
      108 GETIMPORT                        R17 K21 [UDim2.fromScale]
      110 LOADN                            R18 1
      111 LOADN                            R19 0
      112 CALL                             R17 2 1
      113 SETTABLEKS                       R17 R16 K16 ["Size"]
      115 GETTABLEKS                       R17 R0 K17 ["LayoutOrder"]
      117 SETTABLEKS                       R17 R16 K17 ["LayoutOrder"]
      119 SETTABLEKS                       R13 R16 K13 ["Visible"]
      121 DUPTABLE                         R17 K24 [{"Input", "Chip"}]
      122 GETUPVAL                         R18 2
      123 GETUPVAL                         R19 4
      124 DUPTABLE                         R20 K44 [{["value"], ["precision"] = 99, ["focusBehavior"], ["formatAsString"], ["variant"], ["isScrubbable"] = True, ["isDisabled"], ["onFocusGained"], ["onChanged"], ["onFocusLost"], ["step"], ["maximum"], ["minimum"], ["controlsVariant"], ["size"], ["width"], ["label"] = ""}]
      125 SETTABLEKS                       R5 R20 K25 ["value"]
      127 GETUPVAL                         R21 5
      128 GETTABLEKS                       R21 R21 K45 ["Highlight"]
      130 SETTABLEKS                       R21 R20 K28 ["focusBehavior"]
      132 SETTABLEKS                       R9 R20 K29 ["formatAsString"]
      134 GETUPVAL                         R21 6
      135 GETTABLEKS                       R21 R21 K46 ["Contrast"]
      137 SETTABLEKS                       R21 R20 K30 ["variant"]
      139 GETTABLEKS                       R21 R0 K47 ["readonly"]
      141 SETTABLEKS                       R21 R20 K33 ["isDisabled"]
      143 SETTABLEKS                       R6 R20 K34 ["onFocusGained"]
      145 SETTABLEKS                       R7 R20 K35 ["onChanged"]
      147 SETTABLEKS                       R8 R20 K36 ["onFocusLost"]
      149 SETTABLEKS                       R11 R20 K10 ["step"]
      151 MOVE                             R21 R12
      152 JUMPIFNOT                        R21 ; [+2]
      153 GETTABLEKS                       R21 R12 K48 ["max"]
      155 SETTABLEKS                       R21 R20 K37 ["maximum"]
      157 MOVE                             R21 R12
      158 JUMPIFNOT                        R21 ; [+2]
      159 GETTABLEKS                       R21 R12 K49 ["min"]
      161 SETTABLEKS                       R21 R20 K38 ["minimum"]
      163 GETUPVAL                         R21 7
      164 GETTABLEKS                       R21 R21 K50 ["None"]
      166 SETTABLEKS                       R21 R20 K39 ["controlsVariant"]
      168 GETUPVAL                         R21 8
      169 GETTABLEKS                       R21 R21 K51 ["XSmall"]
      171 SETTABLEKS                       R21 R20 K40 ["size"]
      173 GETIMPORT                        R21 K54 [UDim.new]
      175 LOADN                            R22 1
      176 LOADN                            R23 0
      177 CALL                             R21 2 1
      178 SETTABLEKS                       R21 R20 K41 ["width"]
      180 CALL                             R18 2 1
      181 SETTABLEKS                       R18 R17 K22 ["Input"]
      183 GETTABLEKS                       R18 R0 K55 ["chip"]
      185 JUMPIFNOT                        R18 ; [+39]
      186 GETUPVAL                         R18 2
      187 LOADK                            R19 K56 ["Frame"]
      188 DUPTABLE                         R20 K64 [{["BackgroundColor3"], ["Size"], ["Position"], ["AnchorPoint"], ["ZIndex"] = 2, ["BorderSizePixel"] = 0, ["Visible"]}]
      189 GETTABLEKS                       R21 R0 K55 ["chip"]
      191 GETTABLEKS                       R21 R21 K65 ["color"]
      193 SETTABLEKS                       R21 R20 K57 ["BackgroundColor3"]
      195 GETIMPORT                        R21 K66 [UDim2.new]
      197 LOADN                            R22 0
      198 LOADN                            R23 2
      199 LOADK                            R24 K67 [0.5]
      200 LOADN                            R25 0
      201 CALL                             R21 4 1
      202 SETTABLEKS                       R21 R20 K16 ["Size"]
      204 GETIMPORT                        R21 K21 [UDim2.fromScale]
      206 LOADN                            R22 0
      207 LOADK                            R23 K67 [0.5]
      208 CALL                             R21 2 1
      209 SETTABLEKS                       R21 R20 K58 ["Position"]
      211 GETIMPORT                        R21 K69 [Vector2.new]
      213 LOADN                            R22 0
      214 LOADK                            R23 K67 [0.5]
      215 CALL                             R21 2 1
      216 SETTABLEKS                       R21 R20 K59 ["AnchorPoint"]
      218 DUPCLOSURE                       R23 K70 [PROTO_5]
      219 NAMECALL                         R21 R3 K4 ["map"]
      221 CALL                             R21 2 1
      222 SETTABLEKS                       R21 R20 K13 ["Visible"]
      224 CALL                             R18 2 1
      225 SETTABLEKS                       R18 R17 K23 ["Chip"]
      227 CALL                             R14 3 -1
      228 RETURN                           R14 -1

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
       59 DUPCLOSURE                       R12 K22 [PROTO_6]
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
