PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["onChange"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+20]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["current"]
        7 GETTABLEKS                       R0 R1 K1 ["setSelectionStart"]
        9 LOADN                            R1 0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K0 ["current"]
       14 GETTABLEKS                       R0 R1 K2 ["setCursorPosition"]
       16 GETUPVAL                         R4 1
       17 FASTCALL1                        TOSTRING R4 ; [+2]
       18 GETIMPORT                        R3 K5 [tostring]
       20 CALL                             R3 1 1
       21 LENGTH                           R2 R3
       22 ADDK                             R1 R2 K3 [1]
       23 CALL                             R0 1 0
       24 GETUPVAL                         R1 2
       25 GETTABLEKS                       R0 R1 K6 ["onFocusGained"]
       27 CALL                             R0 0 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onFocusLost"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["value"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["useRef"]
        9 LOADNIL                          R4
       10 CALL                             R3 1 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K3 ["useCallback"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R6 0 2
       19 GETTABLEKS                       R7 R0 K4 ["onChange"]
       21 MOVE                             R8 R1
       22 SETLIST                          R6 R7 2 [1]
       24 CALL                             R4 2 1
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K3 ["useCallback"]
       28 NEWCLOSURE                       R6 P1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R7 0 2
       34 MOVE                             R8 R1
       35 GETTABLEKS                       R9 R0 K5 ["onFocusGained"]
       37 SETLIST                          R7 R8 2 [1]
       39 CALL                             R5 2 1
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R6 R7 K3 ["useCallback"]
       43 NEWCLOSURE                       R7 P2
       44 CAPTURE                          VAL R0
       45 NEWTABLE                         R8 0 1
       47 GETTABLEKS                       R9 R0 K6 ["onFocusLost"]
       49 SETLIST                          R8 R9 1 [1]
       51 CALL                             R6 2 1
       52 GETTABLEKS                       R8 R0 K7 ["size"]
       54 JUMPIFNOT                        R8 ; [+3]
       55 GETTABLEKS                       R7 R0 K7 ["size"]
       57 JUMP                             ; [+5]
       58 GETIMPORT                        R7 K10 [UDim.new]
       60 LOADN                            R8 1
       61 LOADN                            R9 0
       62 CALL                             R7 2 1
       63 GETUPVAL                         R9 0
       64 GETTABLEKS                       R8 R9 K11 ["createElement"]
       66 GETUPVAL                         R9 1
       67 DUPTABLE                         R10 K15 [{"tag", "Size", "LayoutOrder"}]
       68 LOADK                            R11 K16 ["auto-y"]
       69 SETTABLEKS                       R11 R10 K12 ["tag"]
       71 GETIMPORT                        R11 K18 [UDim2.new]
       73 MOVE                             R12 R7
       74 GETIMPORT                        R13 K10 [UDim.new]
       76 LOADN                            R14 0
       77 LOADN                            R15 0
       78 CALL                             R13 2 -1
       79 CALL                             R11 -1 1
       80 SETTABLEKS                       R11 R10 K13 ["Size"]
       82 GETTABLEKS                       R11 R0 K19 ["layoutOrder"]
       84 SETTABLEKS                       R11 R10 K14 ["LayoutOrder"]
       86 DUPTABLE                         R11 K22 [{"Input", "Chip"}]
       87 GETUPVAL                         R13 0
       88 GETTABLEKS                       R12 R13 K11 ["createElement"]
       90 GETUPVAL                         R13 2
       91 DUPTABLE                         R14 K34 [{"textBoxRef", "controlsVariant", "value", "precision", "isScrubbable", "isDisabled", "width", "onChanged", "onFocusGained", "onFocusLost", "label", "size", "step", "maximum", "minimum"}]
       92 SETTABLEKS                       R3 R14 K23 ["textBoxRef"]
       94 GETUPVAL                         R16 3
       95 GETTABLEKS                       R15 R16 K35 ["None"]
       97 SETTABLEKS                       R15 R14 K24 ["controlsVariant"]
       99 GETTABLEKS                       R16 R0 K36 ["multiple"]
      101 JUMPIF                           R16 ; [+2]
      102 MOVE                             R15 R1
      103 JUMP                             ; [+1]
      104 LOADN                            R15 0
      105 SETTABLEKS                       R15 R14 K1 ["value"]
      107 LOADN                            R15 2
      108 SETTABLEKS                       R15 R14 K25 ["precision"]
      110 LOADB                            R15 0
      111 SETTABLEKS                       R15 R14 K26 ["isScrubbable"]
      113 GETTABLEKS                       R16 R0 K37 ["editable"]
      115 NOT                              R15 R16
      116 SETTABLEKS                       R15 R14 K27 ["isDisabled"]
      118 GETIMPORT                        R15 K10 [UDim.new]
      120 LOADN                            R16 1
      121 LOADN                            R17 0
      122 CALL                             R15 2 1
      123 SETTABLEKS                       R15 R14 K28 ["width"]
      125 SETTABLEKS                       R4 R14 K29 ["onChanged"]
      127 SETTABLEKS                       R5 R14 K5 ["onFocusGained"]
      129 SETTABLEKS                       R6 R14 K6 ["onFocusLost"]
      131 LOADK                            R15 K38 [""]
      132 SETTABLEKS                       R15 R14 K30 ["label"]
      134 GETUPVAL                         R16 4
      135 GETTABLEKS                       R15 R16 K39 ["XSmall"]
      137 SETTABLEKS                       R15 R14 K7 ["size"]
      139 GETTABLEKS                       R16 R0 K31 ["step"]
      141 ORK                              R15 R16 K40 [1]
      142 SETTABLEKS                       R15 R14 K31 ["step"]
      144 GETTABLEKS                       R16 R0 K41 ["max"]
      146 JUMPIFNOT                        R16 ; [+3]
      147 GETTABLEKS                       R15 R0 K41 ["max"]
      149 JUMP                             ; [+1]
      150 LOADNIL                          R15
      151 SETTABLEKS                       R15 R14 K32 ["maximum"]
      153 GETTABLEKS                       R16 R0 K42 ["min"]
      155 JUMPIFNOT                        R16 ; [+3]
      156 GETTABLEKS                       R15 R0 K42 ["min"]
      158 JUMP                             ; [+1]
      159 LOADNIL                          R15
      160 SETTABLEKS                       R15 R14 K33 ["minimum"]
      162 CALL                             R12 2 1
      163 SETTABLEKS                       R12 R11 K20 ["Input"]
      165 GETTABLEKS                       R13 R0 K43 ["color"]
      167 JUMPIFNOT                        R13 ; [+37]
      168 GETUPVAL                         R13 0
      169 GETTABLEKS                       R12 R13 K11 ["createElement"]
      171 LOADK                            R13 K44 ["Frame"]
      172 DUPTABLE                         R14 K49 [{"BackgroundColor3", "Size", "Position", "AnchorPoint", "ZIndex"}]
      173 GETTABLEKS                       R15 R0 K43 ["color"]
      175 SETTABLEKS                       R15 R14 K45 ["BackgroundColor3"]
      177 GETIMPORT                        R15 K18 [UDim2.new]
      179 LOADN                            R16 0
      180 LOADN                            R17 1
      181 LOADK                            R18 K50 [0.5]
      182 LOADN                            R19 0
      183 CALL                             R15 4 1
      184 SETTABLEKS                       R15 R14 K13 ["Size"]
      186 GETIMPORT                        R15 K52 [UDim2.fromScale]
      188 LOADN                            R16 0
      189 LOADK                            R17 K50 [0.5]
      190 CALL                             R15 2 1
      191 SETTABLEKS                       R15 R14 K46 ["Position"]
      193 GETIMPORT                        R15 K54 [Vector2.new]
      195 LOADN                            R16 0
      196 LOADK                            R17 K50 [0.5]
      197 CALL                             R15 2 1
      198 SETTABLEKS                       R15 R14 K47 ["AnchorPoint"]
      200 LOADN                            R15 2
      201 SETTABLEKS                       R15 R14 K48 ["ZIndex"]
      203 CALL                             R12 2 1
      204 JUMP                             ; [+1]
      205 LOADNIL                          R12
      206 SETTABLEKS                       R12 R11 K21 ["Chip"]
      208 CALL                             R8 3 -1
      209 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["NumberInput"]
       23 GETTABLEKS                       R4 R1 K10 ["View"]
       25 GETTABLEKS                       R6 R1 K11 ["Enums"]
       27 GETTABLEKS                       R5 R6 K12 ["NumberInputControlsVariant"]
       29 GETTABLEKS                       R7 R1 K11 ["Enums"]
       31 GETTABLEKS                       R6 R7 K13 ["InputSize"]
       33 DUPCLOSURE                       R7 K14 [PROTO_3]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R6
       39 RETURN                           R7 1
