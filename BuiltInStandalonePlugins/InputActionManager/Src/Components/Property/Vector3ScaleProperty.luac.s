PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onChanged"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["value"]
        6 GETTABLEKS                       R4 R4 K2 ["Y"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K1 ["value"]
       11 GETTABLEKS                       R5 R5 K3 ["Z"]
       13 FASTCALL3                        VECTOR R0 R4 R5
       15 MOVE                             R3 R0
       16 GETIMPORT                        R2 K6 [Vector3.new]
       18 CALL                             R2 3 1
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onChanged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["value"]
        6 GETTABLEKS                       R3 R3 K2 ["X"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K1 ["value"]
       11 GETTABLEKS                       R5 R5 K3 ["Z"]
       13 FASTCALL3                        VECTOR R3 R0 R5
       15 MOVE                             R4 R0
       16 GETIMPORT                        R2 K6 [Vector3.new]
       18 CALL                             R2 3 1
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onChanged"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["value"]
        6 GETTABLEKS                       R3 R3 K2 ["X"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K1 ["value"]
       11 GETTABLEKS                       R4 R4 K3 ["Y"]
       13 FASTCALL3                        VECTOR R3 R4 R0
       15 MOVE                             R5 R0
       16 GETIMPORT                        R2 K6 [Vector3.new]
       18 CALL                             R2 3 1
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 1
        7 LOADB                            R4 0
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 1
       10 LOADB                            R6 0
       11 CALL                             R5 1 2
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K1 ["useEventCallback"]
       15 NEWCLOSURE                       R8 P0
       16 CAPTURE                          VAL R0
       17 CALL                             R7 1 1
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K1 ["useEventCallback"]
       21 NEWCLOSURE                       R9 P1
       22 CAPTURE                          VAL R0
       23 CALL                             R8 1 1
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R9 R9 K1 ["useEventCallback"]
       27 NEWCLOSURE                       R10 P2
       28 CAPTURE                          VAL R0
       29 CALL                             R9 1 1
       30 GETUPVAL                         R10 2
       31 GETTABLEKS                       R10 R10 K2 ["createElement"]
       33 GETUPVAL                         R11 3
       34 DUPTABLE                         R12 K7 [{["LayoutOrder"], ["tag"] = "row auto-y gap-small", ["Size"]}]
       35 GETTABLEKS                       R13 R0 K3 ["LayoutOrder"]
       37 SETTABLEKS                       R13 R12 K3 ["LayoutOrder"]
       39 GETIMPORT                        R13 K10 [UDim2.fromOffset]
       41 LOADN                            R14 200
       42 LOADN                            R15 0
       43 CALL                             R13 2 1
       44 SETTABLEKS                       R13 R12 K6 ["Size"]
       46 DUPTABLE                         R13 K14 [{"X", "Y", "Z"}]
       47 GETUPVAL                         R14 2
       48 GETTABLEKS                       R14 R14 K2 ["createElement"]
       50 GETUPVAL                         R15 4
       51 DUPTABLE                         R16 K25 [{["label"] = "X", ["LayoutOrder"], ["onChanged"], ["onReturnPressed"], ["precision"] = 2, ["size"], ["testId"], ["textBoxRef"], ["value"], ["width"]}]
       52 MOVE                             R17 R1
       53 CALL                             R17 0 1
       54 SETTABLEKS                       R17 R16 K3 ["LayoutOrder"]
       56 SETTABLEKS                       R7 R16 K16 ["onChanged"]
       58 SETTABLEKS                       R4 R16 K17 ["onReturnPressed"]
       60 GETUPVAL                         R17 5
       61 GETTABLEKS                       R17 R17 K26 ["Small"]
       63 SETTABLEKS                       R17 R16 K20 ["size"]
       65 LOADK                            R17 K27 ["%*-x"]
       66 GETTABLEKS                       R19 R0 K28 ["menuOption"]
       68 NAMECALL                         R17 R17 K29 ["format"]
       70 CALL                             R17 2 1
       71 SETTABLEKS                       R17 R16 K21 ["testId"]
       73 SETTABLEKS                       R2 R16 K22 ["textBoxRef"]
       75 GETTABLEKS                       R17 R0 K23 ["value"]
       77 GETTABLEKS                       R17 R17 K11 ["X"]
       79 SETTABLEKS                       R17 R16 K23 ["value"]
       81 GETUPVAL                         R18 6
       82 CALL                             R18 0 1
       83 JUMPIFNOT                        R18 ; [+6]
       84 GETIMPORT                        R17 K32 [UDim.new]
       86 LOADN                            R18 0
       87 LOADN                            R19 65
       88 CALL                             R17 2 1
       89 JUMPIF                           R17 ; [+5]
       90 GETIMPORT                        R17 K32 [UDim.new]
       92 LOADK                            R18 K33 [0.33]
       93 LOADN                            R19 0
       94 CALL                             R17 2 1
       95 SETTABLEKS                       R17 R16 K24 ["width"]
       97 CALL                             R14 2 1
       98 SETTABLEKS                       R14 R13 K11 ["X"]
      100 GETUPVAL                         R14 2
      101 GETTABLEKS                       R14 R14 K2 ["createElement"]
      103 GETUPVAL                         R15 4
      104 DUPTABLE                         R16 K34 [{["label"] = "Y", ["LayoutOrder"], ["onChanged"], ["onReturnPressed"], ["precision"] = 2, ["size"], ["testId"], ["textBoxRef"], ["value"], ["width"]}]
      105 MOVE                             R17 R1
      106 CALL                             R17 0 1
      107 SETTABLEKS                       R17 R16 K3 ["LayoutOrder"]
      109 SETTABLEKS                       R8 R16 K16 ["onChanged"]
      111 SETTABLEKS                       R6 R16 K17 ["onReturnPressed"]
      113 GETUPVAL                         R17 5
      114 GETTABLEKS                       R17 R17 K26 ["Small"]
      116 SETTABLEKS                       R17 R16 K20 ["size"]
      118 LOADK                            R17 K35 ["%*-y"]
      119 GETTABLEKS                       R19 R0 K28 ["menuOption"]
      121 NAMECALL                         R17 R17 K29 ["format"]
      123 CALL                             R17 2 1
      124 SETTABLEKS                       R17 R16 K21 ["testId"]
      126 SETTABLEKS                       R3 R16 K22 ["textBoxRef"]
      128 GETTABLEKS                       R17 R0 K23 ["value"]
      130 GETTABLEKS                       R17 R17 K12 ["Y"]
      132 SETTABLEKS                       R17 R16 K23 ["value"]
      134 GETUPVAL                         R18 6
      135 CALL                             R18 0 1
      136 JUMPIFNOT                        R18 ; [+6]
      137 GETIMPORT                        R17 K32 [UDim.new]
      139 LOADN                            R18 0
      140 LOADN                            R19 65
      141 CALL                             R17 2 1
      142 JUMPIF                           R17 ; [+5]
      143 GETIMPORT                        R17 K32 [UDim.new]
      145 LOADK                            R18 K33 [0.33]
      146 LOADN                            R19 0
      147 CALL                             R17 2 1
      148 SETTABLEKS                       R17 R16 K24 ["width"]
      150 CALL                             R14 2 1
      151 SETTABLEKS                       R14 R13 K12 ["Y"]
      153 GETUPVAL                         R14 2
      154 GETTABLEKS                       R14 R14 K2 ["createElement"]
      156 GETUPVAL                         R15 4
      157 DUPTABLE                         R16 K36 [{["label"] = "Z", ["LayoutOrder"], ["onChanged"], ["onReturnPressed"], ["precision"] = 2, ["size"], ["testId"], ["textBoxRef"], ["value"], ["width"]}]
      158 MOVE                             R17 R1
      159 CALL                             R17 0 1
      160 SETTABLEKS                       R17 R16 K3 ["LayoutOrder"]
      162 SETTABLEKS                       R9 R16 K16 ["onChanged"]
      164 GETTABLEKS                       R17 R0 K37 ["onCommit"]
      166 SETTABLEKS                       R17 R16 K17 ["onReturnPressed"]
      168 GETUPVAL                         R17 5
      169 GETTABLEKS                       R17 R17 K26 ["Small"]
      171 SETTABLEKS                       R17 R16 K20 ["size"]
      173 LOADK                            R17 K38 ["%*-z"]
      174 GETTABLEKS                       R19 R0 K28 ["menuOption"]
      176 NAMECALL                         R17 R17 K29 ["format"]
      178 CALL                             R17 2 1
      179 SETTABLEKS                       R17 R16 K21 ["testId"]
      181 SETTABLEKS                       R5 R16 K22 ["textBoxRef"]
      183 GETTABLEKS                       R17 R0 K23 ["value"]
      185 GETTABLEKS                       R17 R17 K13 ["Z"]
      187 SETTABLEKS                       R17 R16 K23 ["value"]
      189 GETUPVAL                         R18 6
      190 CALL                             R18 0 1
      191 JUMPIFNOT                        R18 ; [+6]
      192 GETIMPORT                        R17 K32 [UDim.new]
      194 LOADN                            R18 0
      195 LOADN                            R19 65
      196 CALL                             R17 2 1
      197 JUMPIF                           R17 ; [+5]
      198 GETIMPORT                        R17 K32 [UDim.new]
      200 LOADK                            R18 K33 [0.33]
      201 LOADN                            R19 0
      202 CALL                             R17 2 1
      203 SETTABLEKS                       R17 R16 K24 ["width"]
      205 CALL                             R14 2 1
      206 SETTABLEKS                       R14 R13 K13 ["Z"]
      208 CALL                             R10 3 -1
      209 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K10 ["Src"]
       39 GETTABLEKS                       R6 R6 K12 ["Hooks"]
       41 GETTABLEKS                       R6 R6 K13 ["Property"]
       43 GETTABLEKS                       R6 R6 K14 ["useAutofocus"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R1 K15 ["Enums"]
       48 GETTABLEKS                       R6 R6 K16 ["InputSize"]
       50 GETTABLEKS                       R7 R1 K17 ["NumberInput"]
       52 GETTABLEKS                       R8 R1 K18 ["View"]
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R0 K10 ["Src"]
       58 GETTABLEKS                       R10 R10 K19 ["Flags"]
       60 GETTABLEKS                       R10 R10 K20 ["getFFlagIAMVector2Vector3Sizing"]
       62 CALL                             R9 1 1
       63 DUPCLOSURE                       R10 K21 [PROTO_3]
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R9
       71 RETURN                           R10 1
