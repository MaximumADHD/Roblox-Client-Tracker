PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["popError"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 LOADB                            R1 1
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETUPVAL                         R2 1
        5 JUMPIFNOT                        R2 ; [+10]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R0 R2 K0 ["mainContentSize"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K1 ["browserVisible"]
       12 JUMPIFNOTEQKB                    R2 FALSE ; [+9]
       14 LOADB                            R1 0
       15 JUMP                             ; [+6]
       16 GETIMPORT                        R2 K4 [UDim2.fromScale]
       18 LOADN                            R3 1
       19 LOADN                            R4 1
       20 CALL                             R2 2 1
       21 MOVE                             R0 R2
       22 GETIMPORT                        R2 K6 [UDim2.new]
       24 CALL                             R2 0 1
       25 JUMPIFNOTEQ                      R0 R2 ; [+3]
       27 LOADNIL                          R2
       28 RETURN                           R2 1
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R2 R2 K7 ["createElement"]
       32 GETUPVAL                         R3 3
       33 DUPTABLE                         R4 K10 [{"LayoutOrder", "Size"}]
       34 GETUPVAL                         R5 4
       35 NAMECALL                         R5 R5 K11 ["getNextOrder"]
       37 CALL                             R5 1 1
       38 SETTABLEKS                       R5 R4 K8 ["LayoutOrder"]
       40 SETTABLEKS                       R0 R4 K9 ["Size"]
       42 DUPTABLE                         R5 K14 [{"Alert", "Content"}]
       43 GETUPVAL                         R7 5
       44 JUMPIFNOT                        R7 ; [+28]
       45 GETUPVAL                         R6 2
       46 GETTABLEKS                       R6 R6 K7 ["createElement"]
       48 GETUPVAL                         R7 6
       49 DUPTABLE                         R8 K20 [{"Description", "OnClose", "Style", "Title", "ZIndex"}]
       50 GETUPVAL                         R9 5
       51 SETTABLEKS                       R9 R8 K15 ["Description"]
       53 NEWCLOSURE                       R9 P0
       54 CAPTURE                          UPVAL U7
       55 SETTABLEKS                       R9 R8 K16 ["OnClose"]
       57 LOADK                            R9 K21 ["AppError"]
       58 SETTABLEKS                       R9 R8 K17 ["Style"]
       60 GETUPVAL                         R9 8
       61 LOADK                            R11 K22 ["App"]
       62 LOADK                            R12 K23 ["ErrorAlertTitle"]
       63 NAMECALL                         R9 R9 K24 ["getText"]
       65 CALL                             R9 3 1
       66 SETTABLEKS                       R9 R8 K18 ["Title"]
       68 LOADN                            R9 2
       69 SETTABLEKS                       R9 R8 K19 ["ZIndex"]
       71 CALL                             R6 2 1
       72 JUMP                             ; [+1]
       73 LOADNIL                          R6
       74 SETTABLEKS                       R6 R5 K12 ["Alert"]
       76 GETUPVAL                         R6 2
       77 GETTABLEKS                       R6 R6 K7 ["createElement"]
       79 GETUPVAL                         R7 3
       80 DUPTABLE                         R8 K28 [{"HorizontalAlignment", "Layout", "VerticalAlignment"}]
       81 GETIMPORT                        R9 K31 [Enum.HorizontalAlignment.Left]
       83 SETTABLEKS                       R9 R8 K25 ["HorizontalAlignment"]
       85 GETIMPORT                        R9 K34 [Enum.FillDirection.Vertical]
       87 SETTABLEKS                       R9 R8 K26 ["Layout"]
       89 GETIMPORT                        R9 K36 [Enum.VerticalAlignment.Top]
       91 SETTABLEKS                       R9 R8 K27 ["VerticalAlignment"]
       93 DUPTABLE                         R9 K39 [{"Prompt", "Browser"}]
       94 GETUPVAL                         R10 2
       95 GETTABLEKS                       R10 R10 K7 ["createElement"]
       97 GETUPVAL                         R11 9
       98 DUPTABLE                         R12 K41 [{"LayoutOrder", "Size", "isDisabled"}]
       99 GETUPVAL                         R13 4
      100 NAMECALL                         R13 R13 K11 ["getNextOrder"]
      102 CALL                             R13 1 1
      103 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
      105 GETUPVAL                         R13 10
      106 GETTABLEKS                       R13 R13 K42 ["PromptSize"]
      108 SETTABLEKS                       R13 R12 K9 ["Size"]
      110 GETUPVAL                         R14 5
      111 JUMPIFNOTEQKNIL                  R14 ; [+2]
      113 LOADB                            R13 0 +1
      114 LOADB                            R13 1
      115 SETTABLEKS                       R13 R12 K40 ["isDisabled"]
      117 CALL                             R10 2 1
      118 SETTABLEKS                       R10 R9 K37 ["Prompt"]
      120 GETUPVAL                         R10 2
      121 GETTABLEKS                       R10 R10 K7 ["createElement"]
      123 GETUPVAL                         R11 11
      124 DUPTABLE                         R12 K10 [{"LayoutOrder", "Size"}]
      125 GETUPVAL                         R13 4
      126 NAMECALL                         R13 R13 K11 ["getNextOrder"]
      128 CALL                             R13 1 1
      129 SETTABLEKS                       R13 R12 K8 ["LayoutOrder"]
      131 JUMPIFNOT                        R1 ; [+4]
      132 GETUPVAL                         R13 10
      133 GETTABLEKS                       R13 R13 K43 ["BrowserSize"]
      135 JUMP                             ; [+3]
      136 GETUPVAL                         R13 10
      137 GETTABLEKS                       R13 R13 K44 ["BrowserHiddenSize"]
      139 SETTABLEKS                       R13 R12 K9 ["Size"]
      141 CALL                             R10 2 1
      142 SETTABLEKS                       R10 R9 K38 ["Browser"]
      144 CALL                             R6 3 1
      145 SETTABLEKS                       R6 R5 K13 ["Content"]
      147 CALL                             R2 3 -1
      148 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+20]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+18]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["createElement"]
        7 GETUPVAL                         R1 3
        8 DUPTABLE                         R2 K3 [{"LayoutOrder", "Size"}]
        9 GETUPVAL                         R3 4
       10 NAMECALL                         R3 R3 K4 ["getNextOrder"]
       12 CALL                             R3 1 1
       13 SETTABLEKS                       R3 R2 K1 ["LayoutOrder"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K5 ["editorSize"]
       18 SETTABLEKS                       R3 R2 K2 ["Size"]
       20 CALL                             R0 2 -1
       21 RETURN                           R0 -1
       22 LOADNIL                          R0
       23 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["selectedMaterial"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R4 R3 K2 ["errorMessage"]
       14 GETUPVAL                         R5 3
       15 GETUPVAL                         R6 4
       16 CALL                             R5 1 2
       17 GETUPVAL                         R7 5
       18 GETTABLEKS                       R7 R7 K3 ["new"]
       20 CALL                             R7 0 1
       21 GETUPVAL                         R8 6
       22 LOADK                            R10 K4 ["App"]
       23 MOVE                             R11 R0
       24 NAMECALL                         R8 R8 K5 ["use"]
       26 CALL                             R8 3 1
       27 GETUPVAL                         R9 7
       28 NAMECALL                         R9 R9 K5 ["use"]
       30 CALL                             R9 1 1
       31 NEWCLOSURE                       R10 P0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R6
       34 CAPTURE                          UPVAL U0
       35 CAPTURE                          UPVAL U8
       36 CAPTURE                          VAL R7
       37 CAPTURE                          VAL R4
       38 CAPTURE                          UPVAL U9
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R9
       41 CAPTURE                          UPVAL U10
       42 CAPTURE                          VAL R8
       43 CAPTURE                          UPVAL U11
       44 NEWCLOSURE                       R11 P1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R6
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U12
       49 CAPTURE                          VAL R7
       50 GETUPVAL                         R12 13
       51 GETTABLEKS                       R12 R12 K6 ["join"]
       53 DUPTABLE                         R13 K11 [{"HorizontalAlignment", "Layout", "Style", "VerticalAlignment"}]
       54 GETIMPORT                        R14 K14 [Enum.HorizontalAlignment.Left]
       56 SETTABLEKS                       R14 R13 K7 ["HorizontalAlignment"]
       58 JUMPIFNOT                        R6 ; [+3]
       59 GETTABLEKS                       R14 R6 K15 ["fillDirection"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R14
       63 SETTABLEKS                       R14 R13 K8 ["Layout"]
       65 LOADK                            R14 K16 ["Box"]
       66 SETTABLEKS                       R14 R13 K9 ["Style"]
       68 GETIMPORT                        R14 K18 [Enum.VerticalAlignment.Top]
       70 SETTABLEKS                       R14 R13 K10 ["VerticalAlignment"]
       72 MOVE                             R14 R5
       73 CALL                             R12 2 1
       74 GETUPVAL                         R13 0
       75 GETTABLEKS                       R13 R13 K19 ["createElement"]
       77 GETUPVAL                         R14 8
       78 MOVE                             R15 R12
       79 DUPTABLE                         R16 K22 [{"MainContent", "Editor"}]
       80 MOVE                             R17 R10
       81 CALL                             R17 0 1
       82 SETTABLEKS                       R17 R16 K20 ["MainContent"]
       84 JUMPIFNOT                        R2 ; [+17]
       85 JUMPIFNOT                        R6 ; [+16]
       86 GETUPVAL                         R17 0
       87 GETTABLEKS                       R17 R17 K19 ["createElement"]
       89 GETUPVAL                         R18 12
       90 DUPTABLE                         R19 K25 [{"LayoutOrder", "Size"}]
       91 NAMECALL                         R20 R7 K26 ["getNextOrder"]
       93 CALL                             R20 1 1
       94 SETTABLEKS                       R20 R19 K23 ["LayoutOrder"]
       96 GETTABLEKS                       R20 R6 K27 ["editorSize"]
       98 SETTABLEKS                       R20 R19 K24 ["Size"]
      100 CALL                             R17 2 1
      101 JUMP                             ; [+1]
      102 LOADNIL                          R17
      103 SETTABLEKS                       R17 R16 K21 ["Editor"]
      105 CALL                             R13 3 -1
      106 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETTABLEKS                       R6 R4 K12 ["Stylizer"]
       34 GETTABLEKS                       R7 R2 K13 ["UI"]
       36 GETTABLEKS                       R7 R7 K14 ["Alert"]
       38 GETTABLEKS                       R8 R2 K13 ["UI"]
       40 GETTABLEKS                       R8 R8 K15 ["Pane"]
       42 GETTABLEKS                       R9 R2 K16 ["Util"]
       44 GETTABLEKS                       R9 R9 K17 ["LayoutOrderIterator"]
       46 GETTABLEKS                       R10 R0 K18 ["Src"]
       48 GETTABLEKS                       R10 R10 K19 ["Components"]
       50 GETIMPORT                        R11 K5 [require]
       52 GETTABLEKS                       R12 R10 K20 ["Browser"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K5 [require]
       57 GETTABLEKS                       R13 R10 K21 ["Editor"]
       59 CALL                             R12 1 1
       60 GETIMPORT                        R13 K5 [require]
       62 GETTABLEKS                       R14 R10 K22 ["Prompt"]
       64 CALL                             R13 1 1
       65 GETIMPORT                        R14 K5 [require]
       67 GETTABLEKS                       R15 R0 K18 ["Src"]
       69 GETTABLEKS                       R15 R15 K23 ["Hooks"]
       71 GETTABLEKS                       R15 R15 K24 ["useResponsiveLayout"]
       73 CALL                             R14 1 1
       74 GETIMPORT                        R15 K5 [require]
       76 GETTABLEKS                       R16 R0 K18 ["Src"]
       78 GETTABLEKS                       R16 R16 K25 ["Resources"]
       80 GETTABLEKS                       R16 R16 K26 ["AppLayout"]
       82 CALL                             R15 1 1
       83 GETIMPORT                        R16 K5 [require]
       85 GETTABLEKS                       R17 R0 K18 ["Src"]
       87 GETTABLEKS                       R17 R17 K25 ["Resources"]
       89 GETTABLEKS                       R17 R17 K27 ["Theme"]
       91 CALL                             R16 1 1
       92 GETIMPORT                        R17 K5 [require]
       94 GETTABLEKS                       R18 R0 K18 ["Src"]
       96 GETTABLEKS                       R18 R18 K16 ["Util"]
       98 GETTABLEKS                       R18 R18 K28 ["GenerationContext"]
      100 CALL                             R17 1 1
      101 GETIMPORT                        R18 K5 [require]
      103 GETTABLEKS                       R19 R0 K18 ["Src"]
      105 GETTABLEKS                       R19 R19 K16 ["Util"]
      107 GETTABLEKS                       R19 R19 K29 ["PreviewContext"]
      109 CALL                             R18 1 1
      110 DUPCLOSURE                       R19 K30 [PROTO_3]
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R18
      113 CAPTURE                          VAL R17
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R6
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R7
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R1
      125 RETURN                           R19 1
