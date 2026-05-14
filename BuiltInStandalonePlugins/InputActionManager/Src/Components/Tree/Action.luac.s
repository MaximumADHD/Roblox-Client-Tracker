PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 JUMPIF                           R0 ; [+3]
        7 NEWTABLE                         R0 0 0
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K0 ["createNextOrder"]
       13 CALL                             R0 0 1
       14 NEWTABLE                         R1 1 0
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K1 ["KeyCode"]
       19 LENGTH                           R2 R3
       20 LOADN                            R3 1
       21 JUMPIFNOTLE                      R2 R3 ; [+47]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K2 ["CompoundDirection"]
       26 LENGTH                           R2 R3
       27 JUMPIFNOTEQKN                    R2 K3 [0] ; [+41]
       29 GETUPVAL                         R2 3
       30 GETTABLEKS                       R2 R2 K4 ["createElement"]
       32 GETUPVAL                         R3 4
       33 DUPTABLE                         R4 K10 [{"action", "bindings", "index", "LayoutOrder", "name"}]
       34 GETUPVAL                         R5 1
       35 SETTABLEKS                       R5 R4 K5 ["action"]
       37 GETUPVAL                         R7 0
       38 GETTABLEKS                       R7 R7 K1 ["KeyCode"]
       40 LENGTH                           R6 R7
       41 LOADN                            R7 0
       42 JUMPIFNOTLT                      R7 R6 ; [+6]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R6 R6 K1 ["KeyCode"]
       47 GETTABLEN                        R5 R6 1
       48 JUMP                             ; [+2]
       49 NEWTABLE                         R5 0 0
       51 SETTABLEKS                       R5 R4 K6 ["bindings"]
       53 LOADN                            R5 1
       54 SETTABLEKS                       R5 R4 K7 ["index"]
       56 MOVE                             R5 R0
       57 CALL                             R5 0 1
       58 SETTABLEKS                       R5 R4 K8 ["LayoutOrder"]
       60 GETUPVAL                         R5 1
       61 GETTABLEKS                       R5 R5 K9 ["name"]
       63 SETTABLEKS                       R5 R4 K9 ["name"]
       65 CALL                             R2 2 1
       66 SETTABLEKS                       R2 R1 K11 ["HeaderRow"]
       68 RETURN                           R1 1
       69 GETUPVAL                         R3 0
       70 GETTABLEKS                       R3 R3 K2 ["CompoundDirection"]
       72 LENGTH                           R2 R3
       73 LOADN                            R3 1
       74 JUMPIFNOTLE                      R2 R3 ; [+47]
       76 GETUPVAL                         R3 0
       77 GETTABLEKS                       R3 R3 K1 ["KeyCode"]
       79 LENGTH                           R2 R3
       80 JUMPIFNOTEQKN                    R2 K3 [0] ; [+41]
       82 GETUPVAL                         R2 3
       83 GETTABLEKS                       R2 R2 K4 ["createElement"]
       85 GETUPVAL                         R3 5
       86 DUPTABLE                         R4 K10 [{"action", "bindings", "index", "LayoutOrder", "name"}]
       87 GETUPVAL                         R5 1
       88 SETTABLEKS                       R5 R4 K5 ["action"]
       90 GETUPVAL                         R7 0
       91 GETTABLEKS                       R7 R7 K2 ["CompoundDirection"]
       93 LENGTH                           R6 R7
       94 LOADN                            R7 0
       95 JUMPIFNOTLT                      R7 R6 ; [+6]
       97 GETUPVAL                         R6 0
       98 GETTABLEKS                       R6 R6 K2 ["CompoundDirection"]
      100 GETTABLEN                        R5 R6 1
      101 JUMP                             ; [+2]
      102 NEWTABLE                         R5 0 0
      104 SETTABLEKS                       R5 R4 K6 ["bindings"]
      106 LOADN                            R5 1
      107 SETTABLEKS                       R5 R4 K7 ["index"]
      109 MOVE                             R5 R0
      110 CALL                             R5 0 1
      111 SETTABLEKS                       R5 R4 K8 ["LayoutOrder"]
      113 GETUPVAL                         R5 1
      114 GETTABLEKS                       R5 R5 K9 ["name"]
      116 SETTABLEKS                       R5 R4 K9 ["name"]
      118 CALL                             R2 2 1
      119 SETTABLEKS                       R2 R1 K11 ["HeaderRow"]
      121 RETURN                           R1 1
      122 GETUPVAL                         R2 3
      123 GETTABLEKS                       R2 R2 K4 ["createElement"]
      125 GETUPVAL                         R3 6
      126 DUPTABLE                         R4 K16 [{"action", "bindings", "depth", "expanded", "icon", "LayoutOrder", "name", "setExpanded"}]
      127 GETUPVAL                         R5 1
      128 SETTABLEKS                       R5 R4 K5 ["action"]
      130 GETUPVAL                         R5 0
      131 GETTABLEKS                       R5 R5 K17 ["All"]
      133 SETTABLEKS                       R5 R4 K6 ["bindings"]
      135 LOADN                            R5 1
      136 SETTABLEKS                       R5 R4 K12 ["depth"]
      138 GETUPVAL                         R5 7
      139 SETTABLEKS                       R5 R4 K13 ["expanded"]
      141 LOADK                            R5 K18 ["InputAction"]
      142 SETTABLEKS                       R5 R4 K14 ["icon"]
      144 MOVE                             R5 R0
      145 CALL                             R5 0 1
      146 SETTABLEKS                       R5 R4 K8 ["LayoutOrder"]
      148 GETUPVAL                         R5 1
      149 GETTABLEKS                       R5 R5 K9 ["name"]
      151 SETTABLEKS                       R5 R4 K9 ["name"]
      153 GETUPVAL                         R5 8
      154 SETTABLEKS                       R5 R4 K15 ["setExpanded"]
      156 CALL                             R2 2 1
      157 SETTABLEKS                       R2 R1 K11 ["HeaderRow"]
      159 GETUPVAL                         R2 7
      160 JUMPIF                           R2 ; [+1]
      161 RETURN                           R1 1
      162 GETUPVAL                         R2 0
      163 GETTABLEKS                       R2 R2 K1 ["KeyCode"]
      165 LOADNIL                          R3
      166 LOADNIL                          R4
      167 FORGPREP                         R2
      168 LOADK                            R8 K19 ["KeyCode_%*"]
      169 MOVE                             R10 R5
      170 NAMECALL                         R8 R8 K20 ["format"]
      172 CALL                             R8 2 1
      173 MOVE                             R7 R8
      174 GETUPVAL                         R8 3
      175 GETTABLEKS                       R8 R8 K4 ["createElement"]
      177 GETUPVAL                         R9 4
      178 DUPTABLE                         R10 K21 [{"action", "bindings", "index", "LayoutOrder"}]
      179 GETUPVAL                         R11 1
      180 SETTABLEKS                       R11 R10 K5 ["action"]
      182 SETTABLEKS                       R6 R10 K6 ["bindings"]
      184 SETTABLEKS                       R5 R10 K7 ["index"]
      186 MOVE                             R11 R0
      187 CALL                             R11 0 1
      188 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      190 CALL                             R8 2 1
      191 SETTABLE                         R8 R1 R7
      192 FORGLOOP                         R2 2 ; [-25]
      194 GETUPVAL                         R2 0
      195 GETTABLEKS                       R2 R2 K2 ["CompoundDirection"]
      197 LOADNIL                          R3
      198 LOADNIL                          R4
      199 FORGPREP                         R2
      200 LOADK                            R8 K22 ["CompoundDirection_%*"]
      201 MOVE                             R10 R5
      202 NAMECALL                         R8 R8 K20 ["format"]
      204 CALL                             R8 2 1
      205 MOVE                             R7 R8
      206 GETUPVAL                         R8 3
      207 GETTABLEKS                       R8 R8 K4 ["createElement"]
      209 GETUPVAL                         R9 5
      210 DUPTABLE                         R10 K21 [{"action", "bindings", "index", "LayoutOrder"}]
      211 GETUPVAL                         R11 1
      212 SETTABLEKS                       R11 R10 K5 ["action"]
      214 SETTABLEKS                       R6 R10 K6 ["bindings"]
      216 SETTABLEKS                       R5 R10 K7 ["index"]
      218 MOVE                             R11 R0
      219 CALL                             R11 0 1
      220 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      222 CALL                             R8 2 1
      223 SETTABLE                         R8 R1 R7
      224 FORGLOOP                         R2 2 ; [-25]
      226 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["uuid"]
        3 LOADK                            R3 K1 ["InputAction"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R4 R0 K0 ["uuid"]
       11 MOVE                             R5 R1
       12 LOADK                            R6 K1 ["InputAction"]
       13 CALL                             R3 3 2
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R1
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          UPVAL U6
       24 CAPTURE                          UPVAL U7
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R4
       27 NEWTABLE                         R7 0 2
       29 MOVE                             R8 R2
       30 MOVE                             R9 R3
       31 SETLIST                          R7 R8 2 [1]
       33 CALL                             R5 2 1
       34 JUMPIF                           R1 ; [+2]
       35 LOADNIL                          R6
       36 RETURN                           R6 1
       37 GETUPVAL                         R6 3
       38 GETTABLEKS                       R6 R6 K3 ["createElement"]
       40 GETUPVAL                         R7 8
       41 DUPTABLE                         R8 K7 [{"LayoutOrder", "tag", "testId"}]
       42 GETTABLEKS                       R9 R0 K4 ["LayoutOrder"]
       44 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       46 LOADK                            R9 K8 ["size-full-0 auto-y col"]
       47 SETTABLEKS                       R9 R8 K5 ["tag"]
       49 LOADK                            R10 K9 ["action-%*"]
       50 GETTABLEKS                       R12 R1 K10 ["name"]
       52 NAMECALL                         R10 R10 K11 ["format"]
       54 CALL                             R10 2 1
       55 MOVE                             R9 R10
       56 SETTABLEKS                       R9 R8 K6 ["testId"]
       58 MOVE                             R9 R5
       59 CALL                             R6 3 -1
       60 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["View"]
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Components"]
       36 GETTABLEKS                       R6 R6 K13 ["Tree"]
       38 GETTABLEKS                       R6 R6 K14 ["SummaryRow"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R7 R0 K11 ["Src"]
       45 GETTABLEKS                       R7 R7 K12 ["Components"]
       47 GETTABLEKS                       R7 R7 K13 ["Tree"]
       49 GETTABLEKS                       R7 R7 K15 ["CompoundDirectionBinding"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R8 R0 K11 ["Src"]
       56 GETTABLEKS                       R8 R8 K12 ["Components"]
       58 GETTABLEKS                       R8 R8 K13 ["Tree"]
       60 GETTABLEKS                       R8 R8 K16 ["KeyCodeBinding"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K5 [require]
       65 GETTABLEKS                       R9 R0 K11 ["Src"]
       67 GETTABLEKS                       R9 R9 K17 ["Types"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K5 [require]
       72 GETTABLEKS                       R10 R0 K11 ["Src"]
       74 GETTABLEKS                       R10 R10 K18 ["Hooks"]
       76 GETTABLEKS                       R10 R10 K19 ["useBindings"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K5 [require]
       81 GETTABLEKS                       R11 R0 K11 ["Src"]
       83 GETTABLEKS                       R11 R11 K18 ["Hooks"]
       85 GETTABLEKS                       R11 R11 K20 ["useExpanded"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K5 [require]
       90 GETTABLEKS                       R12 R0 K11 ["Src"]
       92 GETTABLEKS                       R12 R12 K18 ["Hooks"]
       94 GETTABLEKS                       R12 R12 K21 ["useItem"]
       96 CALL                             R11 1 1
       97 DUPCLOSURE                       R12 K22 [PROTO_1]
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R1
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R4
      107 RETURN                           R12 1
