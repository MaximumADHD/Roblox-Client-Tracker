PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K3 [{[1], ["tag"] = "row size-full-full"}]
        5 GETTABLEKS                       R5 R0 K4 ["layoutOrder"]
        7 SETTABLEKS                       R5 R4 K0 ["LayoutOrder"]
        9 DUPTABLE                         R5 K8 [{"HBox", "SBox", "VBox"}]
       10 GETUPVAL                         R6 1
       11 GETUPVAL                         R7 3
       12 DUPTABLE                         R8 K13 [{"layoutOrder", "size", "text", "onFocused", "onFocusLost"}]
       13 MOVE                             R9 R1
       14 CALL                             R9 0 1
       15 SETTABLEKS                       R9 R8 K4 ["layoutOrder"]
       17 GETIMPORT                        R9 K16 [UDim2.fromScale]
       19 LOADK                            R10 K17 [0.333333333333333]
       20 LOADN                            R11 1
       21 CALL                             R9 2 1
       22 SETTABLEKS                       R9 R8 K9 ["size"]
       24 GETTABLEKS                       R10 R0 K18 ["hPart"]
       26 GETTABLEKS                       R10 R10 K19 ["multiple"]
       28 JUMPIFNOT                        R10 ; [+2]
       29 LOADK                            R9 K19 ["multiple"]
       30 JUMP                             ; [+8]
       31 GETIMPORT                        R9 K22 [string.format]
       33 LOADK                            R10 K23 ["%.2f"]
       34 GETTABLEKS                       R11 R0 K18 ["hPart"]
       36 GETTABLEKS                       R11 R11 K24 ["value"]
       38 CALL                             R9 2 1
       39 SETTABLEKS                       R9 R8 K10 ["text"]
       41 GETTABLEKS                       R9 R0 K11 ["onFocused"]
       43 SETTABLEKS                       R9 R8 K11 ["onFocused"]
       45 GETTABLEKS                       R9 R0 K12 ["onFocusLost"]
       47 SETTABLEKS                       R9 R8 K12 ["onFocusLost"]
       49 CALL                             R6 2 1
       50 SETTABLEKS                       R6 R5 K5 ["HBox"]
       52 GETUPVAL                         R6 1
       53 GETUPVAL                         R7 3
       54 DUPTABLE                         R8 K13 [{"layoutOrder", "size", "text", "onFocused", "onFocusLost"}]
       55 MOVE                             R9 R1
       56 CALL                             R9 0 1
       57 SETTABLEKS                       R9 R8 K4 ["layoutOrder"]
       59 GETIMPORT                        R9 K16 [UDim2.fromScale]
       61 LOADK                            R10 K17 [0.333333333333333]
       62 LOADN                            R11 1
       63 CALL                             R9 2 1
       64 SETTABLEKS                       R9 R8 K9 ["size"]
       66 GETTABLEKS                       R10 R0 K25 ["sPart"]
       68 GETTABLEKS                       R10 R10 K19 ["multiple"]
       70 JUMPIFNOT                        R10 ; [+2]
       71 LOADK                            R9 K19 ["multiple"]
       72 JUMP                             ; [+8]
       73 GETIMPORT                        R9 K22 [string.format]
       75 LOADK                            R10 K23 ["%.2f"]
       76 GETTABLEKS                       R11 R0 K25 ["sPart"]
       78 GETTABLEKS                       R11 R11 K24 ["value"]
       80 CALL                             R9 2 1
       81 SETTABLEKS                       R9 R8 K10 ["text"]
       83 GETTABLEKS                       R9 R0 K11 ["onFocused"]
       85 SETTABLEKS                       R9 R8 K11 ["onFocused"]
       87 GETTABLEKS                       R9 R0 K12 ["onFocusLost"]
       89 SETTABLEKS                       R9 R8 K12 ["onFocusLost"]
       91 CALL                             R6 2 1
       92 SETTABLEKS                       R6 R5 K6 ["SBox"]
       94 GETUPVAL                         R6 1
       95 GETUPVAL                         R7 3
       96 DUPTABLE                         R8 K13 [{"layoutOrder", "size", "text", "onFocused", "onFocusLost"}]
       97 MOVE                             R9 R1
       98 CALL                             R9 0 1
       99 SETTABLEKS                       R9 R8 K4 ["layoutOrder"]
      101 GETIMPORT                        R9 K16 [UDim2.fromScale]
      103 LOADK                            R10 K17 [0.333333333333333]
      104 LOADN                            R11 1
      105 CALL                             R9 2 1
      106 SETTABLEKS                       R9 R8 K9 ["size"]
      108 GETTABLEKS                       R10 R0 K26 ["vPart"]
      110 GETTABLEKS                       R10 R10 K19 ["multiple"]
      112 JUMPIFNOT                        R10 ; [+2]
      113 LOADK                            R9 K19 ["multiple"]
      114 JUMP                             ; [+8]
      115 GETIMPORT                        R9 K22 [string.format]
      117 LOADK                            R10 K23 ["%.2f"]
      118 GETTABLEKS                       R11 R0 K26 ["vPart"]
      120 GETTABLEKS                       R11 R11 K24 ["value"]
      122 CALL                             R9 2 1
      123 SETTABLEKS                       R9 R8 K10 ["text"]
      125 GETTABLEKS                       R9 R0 K11 ["onFocused"]
      127 SETTABLEKS                       R9 R8 K11 ["onFocused"]
      129 GETTABLEKS                       R9 R0 K12 ["onFocusLost"]
      131 SETTABLEKS                       R9 R8 K12 ["onFocusLost"]
      133 CALL                             R6 2 1
      134 SETTABLEKS                       R6 R5 K7 ["VBox"]
      136 CALL                             R2 3 -1
      137 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Color"]
       15 GETTABLEKS                       R2 R2 K9 ["ColorEditor"]
       17 GETTABLEKS                       R2 R2 K10 ["ChannelInput"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R3 R0 K11 ["Parent"]
       24 GETTABLEKS                       R3 R3 K12 ["Foundation"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K13 ["PropertyTypes"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K11 ["Parent"]
       36 GETTABLEKS                       R5 R5 K14 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K11 ["Parent"]
       43 GETTABLEKS                       R6 R6 K15 ["ReactUtils"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R2 K16 ["View"]
       48 GETTABLEKS                       R7 R4 K17 ["createElement"]
       50 GETTABLEKS                       R8 R5 K18 ["createNextOrder"]
       52 DUPCLOSURE                       R9 K19 [PROTO_0]
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R1
       57 RETURN                           R9 1
