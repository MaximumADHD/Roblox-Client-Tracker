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
       81 GETIMPORT                        R17 K32 [UDim.new]
       83 LOADK                            R18 K33 [0.33]
       84 LOADN                            R19 0
       85 CALL                             R17 2 1
       86 SETTABLEKS                       R17 R16 K24 ["width"]
       88 CALL                             R14 2 1
       89 SETTABLEKS                       R14 R13 K11 ["X"]
       91 GETUPVAL                         R14 2
       92 GETTABLEKS                       R14 R14 K2 ["createElement"]
       94 GETUPVAL                         R15 4
       95 DUPTABLE                         R16 K34 [{["label"] = "Y", ["LayoutOrder"], ["onChanged"], ["onReturnPressed"], ["precision"] = 2, ["size"], ["testId"], ["textBoxRef"], ["value"], ["width"]}]
       96 MOVE                             R17 R1
       97 CALL                             R17 0 1
       98 SETTABLEKS                       R17 R16 K3 ["LayoutOrder"]
      100 SETTABLEKS                       R8 R16 K16 ["onChanged"]
      102 SETTABLEKS                       R6 R16 K17 ["onReturnPressed"]
      104 GETUPVAL                         R17 5
      105 GETTABLEKS                       R17 R17 K26 ["Small"]
      107 SETTABLEKS                       R17 R16 K20 ["size"]
      109 LOADK                            R17 K35 ["%*-y"]
      110 GETTABLEKS                       R19 R0 K28 ["menuOption"]
      112 NAMECALL                         R17 R17 K29 ["format"]
      114 CALL                             R17 2 1
      115 SETTABLEKS                       R17 R16 K21 ["testId"]
      117 SETTABLEKS                       R3 R16 K22 ["textBoxRef"]
      119 GETTABLEKS                       R17 R0 K23 ["value"]
      121 GETTABLEKS                       R17 R17 K12 ["Y"]
      123 SETTABLEKS                       R17 R16 K23 ["value"]
      125 GETIMPORT                        R17 K32 [UDim.new]
      127 LOADK                            R18 K33 [0.33]
      128 LOADN                            R19 0
      129 CALL                             R17 2 1
      130 SETTABLEKS                       R17 R16 K24 ["width"]
      132 CALL                             R14 2 1
      133 SETTABLEKS                       R14 R13 K12 ["Y"]
      135 GETUPVAL                         R14 2
      136 GETTABLEKS                       R14 R14 K2 ["createElement"]
      138 GETUPVAL                         R15 4
      139 DUPTABLE                         R16 K36 [{["label"] = "Z", ["LayoutOrder"], ["onChanged"], ["onReturnPressed"], ["precision"] = 2, ["size"], ["testId"], ["textBoxRef"], ["value"], ["width"]}]
      140 MOVE                             R17 R1
      141 CALL                             R17 0 1
      142 SETTABLEKS                       R17 R16 K3 ["LayoutOrder"]
      144 SETTABLEKS                       R9 R16 K16 ["onChanged"]
      146 GETTABLEKS                       R17 R0 K37 ["onCommit"]
      148 SETTABLEKS                       R17 R16 K17 ["onReturnPressed"]
      150 GETUPVAL                         R17 5
      151 GETTABLEKS                       R17 R17 K26 ["Small"]
      153 SETTABLEKS                       R17 R16 K20 ["size"]
      155 LOADK                            R17 K38 ["%*-z"]
      156 GETTABLEKS                       R19 R0 K28 ["menuOption"]
      158 NAMECALL                         R17 R17 K29 ["format"]
      160 CALL                             R17 2 1
      161 SETTABLEKS                       R17 R16 K21 ["testId"]
      163 SETTABLEKS                       R5 R16 K22 ["textBoxRef"]
      165 GETTABLEKS                       R17 R0 K23 ["value"]
      167 GETTABLEKS                       R17 R17 K13 ["Z"]
      169 SETTABLEKS                       R17 R16 K23 ["value"]
      171 GETIMPORT                        R17 K32 [UDim.new]
      173 LOADK                            R18 K33 [0.33]
      174 LOADN                            R19 0
      175 CALL                             R17 2 1
      176 SETTABLEKS                       R17 R16 K24 ["width"]
      178 CALL                             R14 2 1
      179 SETTABLEKS                       R14 R13 K13 ["Z"]
      181 CALL                             R10 3 -1
      182 RETURN                           R10 -1

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
       54 DUPCLOSURE                       R9 K19 [PROTO_3]
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R6
       61 RETURN                           R9 1
