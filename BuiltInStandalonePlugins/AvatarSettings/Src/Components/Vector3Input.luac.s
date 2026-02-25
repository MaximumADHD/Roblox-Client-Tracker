PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 JUMPIFNOT                        R1 ; [+4]
        4 JUMPIFNOT                        R2 ; [+3]
        5 LOADB                            R3 1
        6 MOVE                             R4 R2
        7 RETURN                           R3 2
        8 LOADB                            R3 0
        9 LOADN                            R4 0
       10 RETURN                           R3 2

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 2
        3 JUMPIFNOT                        R3 ; [+4]
        4 JUMPIFNOT                        R4 ; [+3]
        5 LOADB                            R1 1
        6 MOVE                             R2 R4
        7 JUMP                             ; [+2]
        8 LOADB                            R1 0
        9 LOADN                            R2 0
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K0 ["setValue"]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R7 R8 K1 ["value"]
       18 GETTABLEKS                       R6 R7 K2 ["Y"]
       20 GETUPVAL                         R9 1
       21 GETTABLEKS                       R8 R9 K1 ["value"]
       23 GETTABLEKS                       R7 R8 K3 ["Z"]
       25 FASTCALL3                        VECTOR R2 R6 R7
       27 MOVE                             R5 R2
       28 GETIMPORT                        R4 K6 [Vector3.new]
       30 CALL                             R4 3 1
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 2
        3 JUMPIFNOT                        R3 ; [+4]
        4 JUMPIFNOT                        R4 ; [+3]
        5 LOADB                            R1 1
        6 MOVE                             R2 R4
        7 JUMP                             ; [+2]
        8 LOADB                            R1 0
        9 LOADN                            R2 0
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K0 ["setValue"]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K1 ["value"]
       18 GETTABLEKS                       R5 R6 K2 ["X"]
       20 GETUPVAL                         R9 1
       21 GETTABLEKS                       R8 R9 K1 ["value"]
       23 GETTABLEKS                       R7 R8 K3 ["Z"]
       25 FASTCALL3                        VECTOR R5 R2 R7
       27 MOVE                             R6 R2
       28 GETIMPORT                        R4 K6 [Vector3.new]
       30 CALL                             R4 3 1
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 2
        3 JUMPIFNOT                        R3 ; [+4]
        4 JUMPIFNOT                        R4 ; [+3]
        5 LOADB                            R1 1
        6 MOVE                             R2 R4
        7 JUMP                             ; [+2]
        8 LOADB                            R1 0
        9 LOADN                            R2 0
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K0 ["setValue"]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K1 ["value"]
       18 GETTABLEKS                       R5 R6 K2 ["X"]
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R7 R8 K1 ["value"]
       23 GETTABLEKS                       R6 R7 K3 ["Y"]
       25 FASTCALL3                        VECTOR R5 R6 R2
       27 MOVE                             R7 R2
       28 GETIMPORT                        R4 K6 [Vector3.new]
       30 CALL                             R4 3 1
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 LOADB                            R1 0
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K0 ["General"]
        9 LOADK                            R5 K1 ["InvalidInput"]
       10 NAMECALL                         R2 R2 K2 ["getText"]
       12 CALL                             R2 3 -1
       13 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 LOADB                            R1 0
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K0 ["General"]
        9 LOADK                            R5 K1 ["InvalidInput"]
       10 NAMECALL                         R2 R2 K2 ["getText"]
       12 CALL                             R2 3 -1
       13 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+2]
        4 LOADB                            R1 1
        5 RETURN                           R1 1
        6 LOADB                            R1 0
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K0 ["General"]
        9 LOADK                            R5 K1 ["InvalidInput"]
       10 NAMECALL                         R2 R2 K2 ["getText"]
       12 CALL                             R2 3 -1
       13 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETIMPORT                        R3 K3 [UDim2.fromOffset]
        8 LOADN                            R4 48
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K4 ["STANDARD_HEIGHT"]
       12 CALL                             R3 2 1
       13 DUPCLOSURE                       R4 K5 [PROTO_0]
       14 CAPTURE                          UPVAL U3
       15 NEWCLOSURE                       R5 P1
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R0
       18 NEWCLOSURE                       R6 P2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R0
       21 NEWCLOSURE                       R7 P3
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          VAL R0
       24 GETUPVAL                         R8 4
       25 GETUPVAL                         R9 5
       26 NEWTABLE                         R10 4 0
       28 GETUPVAL                         R12 6
       29 GETTABLEKS                       R11 R12 K6 ["Tag"]
       31 LOADK                            R12 K7 ["X-Left X-RowM"]
       32 SETTABLE                         R12 R10 R11
       33 GETTABLEKS                       R11 R0 K8 ["layoutOrder"]
       35 SETTABLEKS                       R11 R10 K9 ["LayoutOrder"]
       37 GETIMPORT                        R11 K13 [Enum.AutomaticSize.XY]
       39 SETTABLEKS                       R11 R10 K11 ["AutomaticSize"]
       41 DUPTABLE                         R11 K18 [{"xInput", "yInput", "zInput", "Descriptor"}]
       42 GETUPVAL                         R12 4
       43 GETUPVAL                         R13 7
       44 DUPTABLE                         R14 K25 [{"LayoutOrder", "Size", "Text", "OnEnter", "OnFocusLost", "PlaceholderText", "OnValidateText"}]
       45 MOVE                             R15 R2
       46 CALL                             R15 0 1
       47 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
       49 SETTABLEKS                       R3 R14 K19 ["Size"]
       51 GETTABLEKS                       R17 R0 K26 ["value"]
       53 GETTABLEKS                       R16 R17 K27 ["X"]
       55 FASTCALL1                        TOSTRING R16 ; [+2]
       56 GETIMPORT                        R15 K29 [tostring]
       58 CALL                             R15 1 1
       59 SETTABLEKS                       R15 R14 K20 ["Text"]
       61 SETTABLEKS                       R5 R14 K21 ["OnEnter"]
       63 SETTABLEKS                       R5 R14 K22 ["OnFocusLost"]
       65 GETUPVAL                         R16 8
       66 CALL                             R16 0 1
       67 JUMPIFNOT                        R16 ; [+2]
       68 LOADNIL                          R15
       69 JUMP                             ; [+1]
       70 LOADK                            R15 K27 ["X"]
       71 SETTABLEKS                       R15 R14 K23 ["PlaceholderText"]
       73 NEWCLOSURE                       R15 P4
       74 CAPTURE                          UPVAL U3
       75 CAPTURE                          VAL R1
       76 SETTABLEKS                       R15 R14 K24 ["OnValidateText"]
       78 CALL                             R12 2 1
       79 SETTABLEKS                       R12 R11 K14 ["xInput"]
       81 GETUPVAL                         R12 4
       82 GETUPVAL                         R13 7
       83 DUPTABLE                         R14 K25 [{"LayoutOrder", "Size", "Text", "OnEnter", "OnFocusLost", "PlaceholderText", "OnValidateText"}]
       84 MOVE                             R15 R2
       85 CALL                             R15 0 1
       86 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
       88 SETTABLEKS                       R3 R14 K19 ["Size"]
       90 GETTABLEKS                       R17 R0 K26 ["value"]
       92 GETTABLEKS                       R16 R17 K30 ["Y"]
       94 FASTCALL1                        TOSTRING R16 ; [+2]
       95 GETIMPORT                        R15 K29 [tostring]
       97 CALL                             R15 1 1
       98 SETTABLEKS                       R15 R14 K20 ["Text"]
      100 SETTABLEKS                       R6 R14 K21 ["OnEnter"]
      102 SETTABLEKS                       R6 R14 K22 ["OnFocusLost"]
      104 GETUPVAL                         R16 8
      105 CALL                             R16 0 1
      106 JUMPIFNOT                        R16 ; [+2]
      107 LOADNIL                          R15
      108 JUMP                             ; [+1]
      109 LOADK                            R15 K30 ["Y"]
      110 SETTABLEKS                       R15 R14 K23 ["PlaceholderText"]
      112 NEWCLOSURE                       R15 P5
      113 CAPTURE                          UPVAL U3
      114 CAPTURE                          VAL R1
      115 SETTABLEKS                       R15 R14 K24 ["OnValidateText"]
      117 CALL                             R12 2 1
      118 SETTABLEKS                       R12 R11 K15 ["yInput"]
      120 GETUPVAL                         R12 4
      121 GETUPVAL                         R13 7
      122 DUPTABLE                         R14 K25 [{"LayoutOrder", "Size", "Text", "OnEnter", "OnFocusLost", "PlaceholderText", "OnValidateText"}]
      123 MOVE                             R15 R2
      124 CALL                             R15 0 1
      125 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
      127 SETTABLEKS                       R3 R14 K19 ["Size"]
      129 GETTABLEKS                       R17 R0 K26 ["value"]
      131 GETTABLEKS                       R16 R17 K31 ["Z"]
      133 FASTCALL1                        TOSTRING R16 ; [+2]
      134 GETIMPORT                        R15 K29 [tostring]
      136 CALL                             R15 1 1
      137 SETTABLEKS                       R15 R14 K20 ["Text"]
      139 SETTABLEKS                       R7 R14 K21 ["OnEnter"]
      141 SETTABLEKS                       R7 R14 K22 ["OnFocusLost"]
      143 GETUPVAL                         R16 8
      144 CALL                             R16 0 1
      145 JUMPIFNOT                        R16 ; [+2]
      146 LOADNIL                          R15
      147 JUMP                             ; [+1]
      148 LOADK                            R15 K31 ["Z"]
      149 SETTABLEKS                       R15 R14 K23 ["PlaceholderText"]
      151 NEWCLOSURE                       R15 P6
      152 CAPTURE                          UPVAL U3
      153 CAPTURE                          VAL R1
      154 SETTABLEKS                       R15 R14 K24 ["OnValidateText"]
      156 CALL                             R12 2 1
      157 SETTABLEKS                       R12 R11 K16 ["zInput"]
      159 GETUPVAL                         R12 4
      160 LOADK                            R13 K32 ["TextLabel"]
      161 NEWTABLE                         R14 8 0
      163 GETUPVAL                         R16 6
      164 GETTABLEKS                       R15 R16 K6 ["Tag"]
      166 LOADK                            R16 K33 ["Component-TextLabel"]
      167 SETTABLE                         R16 R14 R15
      168 MOVE                             R15 R2
      169 CALL                             R15 0 1
      170 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
      172 GETIMPORT                        R15 K3 [UDim2.fromOffset]
      174 LOADN                            R16 0
      175 LOADN                            R17 28
      176 CALL                             R15 2 1
      177 SETTABLEKS                       R15 R14 K19 ["Size"]
      179 GETTABLEKS                       R15 R0 K34 ["text"]
      181 SETTABLEKS                       R15 R14 K20 ["Text"]
      183 GETIMPORT                        R15 K35 [Enum.AutomaticSize.X]
      185 SETTABLEKS                       R15 R14 K11 ["AutomaticSize"]
      187 CALL                             R12 2 1
      188 SETTABLEKS                       R12 R11 K17 ["Descriptor"]
      190 CALL                             R8 3 -1
      191 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K6 ["Src"]
       41 GETTABLEKS                       R7 R8 K7 ["Util"]
       43 GETTABLEKS                       R6 R7 K13 ["isValidNumberInput"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R9 R0 K6 ["Src"]
       50 GETTABLEKS                       R8 R9 K14 ["Flags"]
       52 GETTABLEKS                       R7 R8 K15 ["getFFlagAvatarSettingsRemoveVector3PlaceholderLabels"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R2 K16 ["ContextServices"]
       57 GETTABLEKS                       R8 R7 K17 ["Localization"]
       59 GETTABLEKS                       R9 R2 K18 ["UI"]
       61 GETTABLEKS                       R10 R9 K19 ["Pane"]
       63 GETTABLEKS                       R11 R9 K20 ["TextInput"]
       65 GETTABLEKS                       R12 R4 K21 ["createNextOrder"]
       67 GETTABLEKS                       R13 R3 K22 ["createElement"]
       69 DUPCLOSURE                       R14 K23 [PROTO_7]
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R12
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R13
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R6
       79 RETURN                           R14 1
