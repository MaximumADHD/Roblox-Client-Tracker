PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["Name"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getValue"]
        3 CALL                             R0 1 1
        4 JUMPIFEQKNIL                     R0 ; [+16]
        6 LOADK                            R4 K1 ["%s"]
        7 LOADK                            R5 K2 [""]
        8 NAMECALL                         R2 R0 K3 ["gsub"]
       10 CALL                             R2 3 1
       11 LENGTH                           R1 R2
       12 LOADN                            R2 0
       13 JUMPIFNOTLT                      R2 R1 ; [+7]
       15 GETUPVAL                         R1 1
       16 JUMPIFEQ                         R0 R1 ; [+4]
       18 GETUPVAL                         R1 2
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 3
       22 GETUPVAL                         R2 1
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["useBinding"]
       11 GETTABLEKS                       R4 R0 K3 ["Name"]
       13 CALL                             R3 1 2
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K4 ["useEffect"]
       17 NEWCLOSURE                       R6 P0
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R7 0 2
       22 GETTABLEKS                       R8 R0 K3 ["Name"]
       24 MOVE                             R9 R4
       25 SETLIST                          R7 R8 2 [1]
       27 CALL                             R5 2 0
       28 GETTABLEKS                       R5 R0 K5 ["OnRename"]
       30 GETTABLEKS                       R6 R0 K3 ["Name"]
       32 GETUPVAL                         R7 2
       33 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       35 NEWCLOSURE                       R8 P1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R4
       40 NEWTABLE                         R9 0 4
       42 MOVE                             R10 R5
       43 MOVE                             R11 R6
       44 MOVE                             R12 R3
       45 MOVE                             R13 R4
       46 SETLIST                          R9 R10 4 [1]
       48 CALL                             R7 2 1
       49 GETUPVAL                         R8 2
       50 GETTABLEKS                       R8 R8 K7 ["createElement"]
       52 GETUPVAL                         R9 0
       53 GETTABLEKS                       R9 R9 K8 ["View"]
       55 DUPTABLE                         R10 K15 [{["tag"], ["Size"], ["LayoutOrder"], ["testId"] = "input-name-field", ["padding"]}]
       56 NEWTABLE                         R11 2 0
       58 LOADB                            R12 1
       59 SETTABLEKS                       R12 R11 K16 ["align-y-center"]
       61 NOT                              R12 R2
       62 SETTABLEKS                       R12 R11 K17 ["fill"]
       64 SETTABLEKS                       R11 R10 K9 ["tag"]
       66 JUMPIFNOT                        R2 ; [+8]
       67 GETIMPORT                        R11 K20 [UDim2.new]
       69 LOADK                            R12 K21 [0.5]
       70 LOADN                            R13 0
       71 LOADN                            R14 0
       72 LOADN                            R15 0
       73 CALL                             R11 4 1
       74 JUMP                             ; [+1]
       75 LOADNIL                          R11
       76 SETTABLEKS                       R11 R10 K10 ["Size"]
       78 GETTABLEKS                       R11 R0 K11 ["LayoutOrder"]
       80 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       82 DUPTABLE                         R11 K23 [{"left"}]
       83 GETIMPORT                        R12 K25 [UDim.new]
       85 LOADN                            R13 0
       86 GETTABLEKS                       R15 R1 K26 ["Padding"]
       88 GETTABLEKS                       R15 R15 K27 ["XSmall"]
       90 MINUS                            R14 R15
       91 CALL                             R12 2 1
       92 SETTABLEKS                       R12 R11 K22 ["left"]
       94 SETTABLEKS                       R11 R10 K14 ["padding"]
       96 DUPTABLE                         R11 K29 [{"Input"}]
       97 GETUPVAL                         R12 2
       98 GETTABLEKS                       R12 R12 K7 ["createElement"]
      100 GETUPVAL                         R13 0
      101 GETTABLEKS                       R13 R13 K30 ["TextInput"]
      103 DUPTABLE                         R14 K40 [{["text"], ["onChanged"], ["onFocusLost"], ["label"] = "", ["size"], ["width"], ["hasError"], ["focusBehavior"]}]
      104 SETTABLEKS                       R3 R14 K31 ["text"]
      106 SETTABLEKS                       R4 R14 K32 ["onChanged"]
      108 SETTABLEKS                       R7 R14 K33 ["onFocusLost"]
      110 GETUPVAL                         R15 0
      111 GETTABLEKS                       R15 R15 K41 ["Enums"]
      113 GETTABLEKS                       R15 R15 K42 ["InputSize"]
      115 GETTABLEKS                       R15 R15 K27 ["XSmall"]
      117 SETTABLEKS                       R15 R14 K36 ["size"]
      119 GETIMPORT                        R15 K25 [UDim.new]
      121 LOADN                            R16 1
      122 LOADN                            R17 0
      123 CALL                             R15 2 1
      124 SETTABLEKS                       R15 R14 K37 ["width"]
      126 GETTABLEKS                       R15 R0 K43 ["HasDuplicateName"]
      128 SETTABLEKS                       R15 R14 K38 ["hasError"]
      130 GETUPVAL                         R15 0
      131 GETTABLEKS                       R15 R15 K41 ["Enums"]
      133 GETTABLEKS                       R15 R15 K44 ["InputFocusBehavior"]
      135 GETTABLEKS                       R15 R15 K45 ["Highlight"]
      137 SETTABLEKS                       R15 R14 K39 ["focusBehavior"]
      139 CALL                             R12 2 1
      140 SETTABLEKS                       R12 R11 K28 ["Input"]
      142 CALL                             R8 3 -1
      143 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["NodeGraphing"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["getFFlagAnimGraphUINodeFieldLayout"]
       30 DUPCLOSURE                       R5 K11 [PROTO_2]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R4
       33 CAPTURE                          VAL R3
       34 GETTABLEKS                       R6 R3 K12 ["memo"]
       36 MOVE                             R7 R5
       37 CALL                             R6 1 -1
       38 RETURN                           R6 -1
