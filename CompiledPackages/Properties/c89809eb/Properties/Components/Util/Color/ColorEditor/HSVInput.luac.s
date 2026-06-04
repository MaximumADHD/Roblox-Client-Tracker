PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 DUPTABLE                         R4 K2 [{"LayoutOrder", "tag"}]
        5 GETTABLEKS                       R5 R0 K3 ["layoutOrder"]
        7 SETTABLEKS                       R5 R4 K0 ["LayoutOrder"]
        9 LOADK                            R5 K4 ["size-full-full row"]
       10 SETTABLEKS                       R5 R4 K1 ["tag"]
       12 DUPTABLE                         R5 K8 [{"HBox", "SBox", "VBox"}]
       13 GETUPVAL                         R6 1
       14 GETUPVAL                         R7 3
       15 DUPTABLE                         R8 K13 [{"layoutOrder", "size", "text", "onFocused", "onFocusLost"}]
       16 MOVE                             R9 R1
       17 CALL                             R9 0 1
       18 SETTABLEKS                       R9 R8 K3 ["layoutOrder"]
       20 GETIMPORT                        R9 K16 [UDim2.fromScale]
       22 LOADK                            R10 K17 [0.333333333333333]
       23 LOADN                            R11 1
       24 CALL                             R9 2 1
       25 SETTABLEKS                       R9 R8 K9 ["size"]
       27 GETTABLEKS                       R10 R0 K18 ["hPart"]
       29 GETTABLEKS                       R10 R10 K19 ["multiple"]
       31 JUMPIFNOT                        R10 ; [+2]
       32 LOADK                            R9 K19 ["multiple"]
       33 JUMP                             ; [+8]
       34 GETIMPORT                        R9 K22 [string.format]
       36 LOADK                            R10 K23 ["%.2f"]
       37 GETTABLEKS                       R11 R0 K18 ["hPart"]
       39 GETTABLEKS                       R11 R11 K24 ["value"]
       41 CALL                             R9 2 1
       42 SETTABLEKS                       R9 R8 K10 ["text"]
       44 GETTABLEKS                       R9 R0 K11 ["onFocused"]
       46 SETTABLEKS                       R9 R8 K11 ["onFocused"]
       48 GETTABLEKS                       R9 R0 K12 ["onFocusLost"]
       50 SETTABLEKS                       R9 R8 K12 ["onFocusLost"]
       52 CALL                             R6 2 1
       53 SETTABLEKS                       R6 R5 K5 ["HBox"]
       55 GETUPVAL                         R6 1
       56 GETUPVAL                         R7 3
       57 DUPTABLE                         R8 K13 [{"layoutOrder", "size", "text", "onFocused", "onFocusLost"}]
       58 MOVE                             R9 R1
       59 CALL                             R9 0 1
       60 SETTABLEKS                       R9 R8 K3 ["layoutOrder"]
       62 GETIMPORT                        R9 K16 [UDim2.fromScale]
       64 LOADK                            R10 K17 [0.333333333333333]
       65 LOADN                            R11 1
       66 CALL                             R9 2 1
       67 SETTABLEKS                       R9 R8 K9 ["size"]
       69 GETTABLEKS                       R10 R0 K25 ["sPart"]
       71 GETTABLEKS                       R10 R10 K19 ["multiple"]
       73 JUMPIFNOT                        R10 ; [+2]
       74 LOADK                            R9 K19 ["multiple"]
       75 JUMP                             ; [+8]
       76 GETIMPORT                        R9 K22 [string.format]
       78 LOADK                            R10 K23 ["%.2f"]
       79 GETTABLEKS                       R11 R0 K25 ["sPart"]
       81 GETTABLEKS                       R11 R11 K24 ["value"]
       83 CALL                             R9 2 1
       84 SETTABLEKS                       R9 R8 K10 ["text"]
       86 GETTABLEKS                       R9 R0 K11 ["onFocused"]
       88 SETTABLEKS                       R9 R8 K11 ["onFocused"]
       90 GETTABLEKS                       R9 R0 K12 ["onFocusLost"]
       92 SETTABLEKS                       R9 R8 K12 ["onFocusLost"]
       94 CALL                             R6 2 1
       95 SETTABLEKS                       R6 R5 K6 ["SBox"]
       97 GETUPVAL                         R6 1
       98 GETUPVAL                         R7 3
       99 DUPTABLE                         R8 K13 [{"layoutOrder", "size", "text", "onFocused", "onFocusLost"}]
      100 MOVE                             R9 R1
      101 CALL                             R9 0 1
      102 SETTABLEKS                       R9 R8 K3 ["layoutOrder"]
      104 GETIMPORT                        R9 K16 [UDim2.fromScale]
      106 LOADK                            R10 K17 [0.333333333333333]
      107 LOADN                            R11 1
      108 CALL                             R9 2 1
      109 SETTABLEKS                       R9 R8 K9 ["size"]
      111 GETTABLEKS                       R10 R0 K26 ["vPart"]
      113 GETTABLEKS                       R10 R10 K19 ["multiple"]
      115 JUMPIFNOT                        R10 ; [+2]
      116 LOADK                            R9 K19 ["multiple"]
      117 JUMP                             ; [+8]
      118 GETIMPORT                        R9 K22 [string.format]
      120 LOADK                            R10 K23 ["%.2f"]
      121 GETTABLEKS                       R11 R0 K26 ["vPart"]
      123 GETTABLEKS                       R11 R11 K24 ["value"]
      125 CALL                             R9 2 1
      126 SETTABLEKS                       R9 R8 K10 ["text"]
      128 GETTABLEKS                       R9 R0 K11 ["onFocused"]
      130 SETTABLEKS                       R9 R8 K11 ["onFocused"]
      132 GETTABLEKS                       R9 R0 K12 ["onFocusLost"]
      134 SETTABLEKS                       R9 R8 K12 ["onFocusLost"]
      136 CALL                             R6 2 1
      137 SETTABLEKS                       R6 R5 K7 ["VBox"]
      139 CALL                             R2 3 -1
      140 RETURN                           R2 -1

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
