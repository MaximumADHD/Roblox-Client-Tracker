PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+52]
        2 GETIMPORT                        R0 K2 [Path2DControlPoint.new]
        4 GETIMPORT                        R1 K5 [UDim2.fromScale]
        6 LOADN                            R2 0
        7 LOADN                            R3 1
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [UDim2.fromScale]
       11 LOADN                            R3 0
       12 LOADN                            R4 0
       13 CALL                             R2 2 1
       14 GETIMPORT                        R3 K5 [UDim2.fromScale]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K7 ["value"]
       19 DIVK                             R4 R5 K6 [10]
       20 LOADN                            R5 0
       21 CALL                             R3 2 -1
       22 CALL                             R0 -1 1
       23 GETIMPORT                        R1 K2 [Path2DControlPoint.new]
       25 GETIMPORT                        R2 K5 [UDim2.fromScale]
       27 LOADN                            R3 1
       28 LOADN                            R4 0
       29 CALL                             R2 2 1
       30 GETIMPORT                        R3 K5 [UDim2.fromScale]
       32 LOADN                            R4 0
       33 LOADN                            R5 0
       34 CALL                             R3 2 1
       35 GETIMPORT                        R4 K5 [UDim2.fromScale]
       37 LOADN                            R5 0
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R7 R7 K7 ["value"]
       41 DIVK                             R6 R7 K6 [10]
       42 CALL                             R4 2 -1
       43 CALL                             R1 -1 1
       44 GETUPVAL                         R2 0
       45 NEWTABLE                         R4 0 2
       47 MOVE                             R5 R0
       48 MOVE                             R6 R1
       49 SETLIST                          R4 R5 2 [1]
       51 NAMECALL                         R2 R2 K8 ["SetControlPoints"]
       53 CALL                             R2 2 0
       54 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R3 R3 K1 ["useState"]
        9 LOADNIL                          R4
       10 CALL                             R3 1 2
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R7 0 2
       19 MOVE                             R8 R3
       20 GETTABLEKS                       R9 R0 K3 ["value"]
       22 SETLIST                          R7 R8 2 [1]
       24 CALL                             R5 2 0
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K4 ["createElement"]
       28 GETUPVAL                         R6 3
       29 DUPTABLE                         R7 K8 [{["LayoutOrder"], ["tag"] = "auto-xy row gap-small align-y-center"}]
       30 GETTABLEKS                       R8 R0 K5 ["LayoutOrder"]
       32 SETTABLEKS                       R8 R7 K5 ["LayoutOrder"]
       34 DUPTABLE                         R8 K12 [{"Curve", "Number", "Slider"}]
       35 GETUPVAL                         R9 2
       36 GETTABLEKS                       R9 R9 K4 ["createElement"]
       38 LOADK                            R10 K13 ["Frame"]
       39 DUPTABLE                         R11 K17 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"]}]
       40 MOVE                             R12 R1
       41 CALL                             R12 0 1
       42 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       44 GETIMPORT                        R12 K20 [UDim2.new]
       46 LOADN                            R13 0
       47 LOADN                            R14 32
       48 LOADN                            R15 0
       49 LOADN                            R16 32
       50 CALL                             R12 4 1
       51 SETTABLEKS                       R12 R11 K16 ["Size"]
       53 DUPTABLE                         R12 K22 [{"Path"}]
       54 GETUPVAL                         R13 2
       55 GETTABLEKS                       R13 R13 K4 ["createElement"]
       57 LOADK                            R14 K23 ["Path2D"]
       58 DUPTABLE                         R15 K26 [{"Color3", "ref"}]
       59 GETIMPORT                        R16 K28 [Color3.fromRGB]
       61 LOADN                            R17 255
       62 LOADN                            R18 255
       63 LOADN                            R19 255
       64 CALL                             R16 3 1
       65 SETTABLEKS                       R16 R15 K24 ["Color3"]
       67 SETTABLEKS                       R4 R15 K25 ["ref"]
       69 CALL                             R13 2 1
       70 SETTABLEKS                       R13 R12 K21 ["Path"]
       72 CALL                             R9 3 1
       73 SETTABLEKS                       R9 R8 K9 ["Curve"]
       75 GETUPVAL                         R9 2
       76 GETTABLEKS                       R9 R9 K4 ["createElement"]
       78 GETUPVAL                         R10 4
       79 DUPTABLE                         R11 K41 [{["label"] = "", ["LayoutOrder"], ["onChanged"], ["onReturnPressed"], ["precision"] = 0, ["range"], ["size"], ["step"] = 1, ["testId"], ["textBoxRef"], ["value"], ["width"]}]
       80 MOVE                             R12 R1
       81 CALL                             R12 0 1
       82 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       84 GETTABLEKS                       R12 R0 K31 ["onChanged"]
       86 SETTABLEKS                       R12 R11 K31 ["onChanged"]
       88 GETTABLEKS                       R12 R0 K42 ["onCommit"]
       90 SETTABLEKS                       R12 R11 K32 ["onReturnPressed"]
       92 GETIMPORT                        R12 K44 [NumberRange.new]
       94 LOADN                            R13 1
       95 LOADN                            R14 10
       96 CALL                             R12 2 1
       97 SETTABLEKS                       R12 R11 K35 ["range"]
       99 GETUPVAL                         R12 5
      100 GETTABLEKS                       R12 R12 K45 ["Small"]
      102 SETTABLEKS                       R12 R11 K36 ["size"]
      104 LOADK                            R12 K46 ["%*-number"]
      105 GETTABLEKS                       R14 R0 K47 ["menuOption"]
      107 NAMECALL                         R12 R12 K48 ["format"]
      109 CALL                             R12 2 1
      110 SETTABLEKS                       R12 R11 K38 ["testId"]
      112 SETTABLEKS                       R2 R11 K39 ["textBoxRef"]
      114 GETTABLEKS                       R12 R0 K3 ["value"]
      116 SETTABLEKS                       R12 R11 K3 ["value"]
      118 GETIMPORT                        R12 K50 [UDim.new]
      120 LOADN                            R13 0
      121 LOADN                            R14 80
      122 CALL                             R12 2 1
      123 SETTABLEKS                       R12 R11 K40 ["width"]
      125 CALL                             R9 2 1
      126 SETTABLEKS                       R9 R8 K10 ["Number"]
      128 GETUPVAL                         R9 2
      129 GETTABLEKS                       R9 R9 K4 ["createElement"]
      131 GETUPVAL                         R10 6
      132 DUPTABLE                         R11 K52 [{["LayoutOrder"], ["onValueChanged"], ["range"], ["step"] = 1, ["testId"], ["value"], ["width"]}]
      133 MOVE                             R12 R1
      134 CALL                             R12 0 1
      135 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
      137 GETTABLEKS                       R12 R0 K31 ["onChanged"]
      139 SETTABLEKS                       R12 R11 K51 ["onValueChanged"]
      141 GETIMPORT                        R12 K44 [NumberRange.new]
      143 LOADN                            R13 1
      144 LOADN                            R14 10
      145 CALL                             R12 2 1
      146 SETTABLEKS                       R12 R11 K35 ["range"]
      148 LOADK                            R12 K53 ["%*-slider"]
      149 GETTABLEKS                       R14 R0 K47 ["menuOption"]
      151 NAMECALL                         R12 R12 K48 ["format"]
      153 CALL                             R12 2 1
      154 SETTABLEKS                       R12 R11 K38 ["testId"]
      156 GETTABLEKS                       R12 R0 K3 ["value"]
      158 SETTABLEKS                       R12 R11 K3 ["value"]
      160 GETIMPORT                        R12 K50 [UDim.new]
      162 LOADN                            R13 0
      163 LOADN                            R14 200
      164 CALL                             R12 2 1
      165 SETTABLEKS                       R12 R11 K40 ["width"]
      167 CALL                             R9 2 1
      168 SETTABLEKS                       R9 R8 K11 ["Slider"]
      170 CALL                             R5 3 -1
      171 RETURN                           R5 -1

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
       52 GETTABLEKS                       R8 R1 K18 ["Slider"]
       54 GETTABLEKS                       R9 R1 K19 ["View"]
       56 DUPCLOSURE                       R10 K20 [PROTO_1]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R8
       64 RETURN                           R10 1
