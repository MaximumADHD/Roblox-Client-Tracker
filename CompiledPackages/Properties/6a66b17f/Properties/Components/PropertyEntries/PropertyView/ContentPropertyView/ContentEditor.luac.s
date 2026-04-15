PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["onFocused"]
        6 JUMPIFNOT                        R1 ; [+4]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K0 ["onFocused"]
       10 CALL                             R1 0 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K1 ["current"]
       14 JUMPIFNOT                        R1 ; [+3]
       15 NAMECALL                         R2 R1 K2 ["ReleaseFocus"]
       17 CALL                             R2 1 0
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R2 R3 K1 ["current"]
       21 JUMPIFNOT                        R2 ; [+3]
       22 NAMECALL                         R3 R2 K3 ["CaptureFocus"]
       24 CALL                             R3 1 0
       25 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 LOADB                            R4 0
        2 CALL                             R3 1 0
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["onFocusLost"]
        6 JUMPIFNOT                        R3 ; [+4]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K0 ["onFocusLost"]
       10 CALL                             R3 0 0
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K1 ["setContentProperty"]
       14 JUMPIFEQKNIL                     R3 ; [+7]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K1 ["setContentProperty"]
       19 GETTABLEKS                       R4 R0 K2 ["Text"]
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["Text"]
        3 GETTABLEKS                       R3 R0 K0 ["Text"]
        5 LENGTH                           R2 R3
        6 ADDK                             R1 R2 K1 [1]
        7 SETTABLEKS                       R1 R0 K2 ["CursorPosition"]
        9 LOADN                            R1 14
       10 SETTABLEKS                       R1 R0 K3 ["SelectionStart"]
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K1 ["useRef"]
       13 LOADNIL                          R5
       14 CALL                             R4 1 1
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K2 ["useCallback"]
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R4
       23 NEWTABLE                         R7 0 1
       25 GETTABLEKS                       R8 R0 K3 ["onFocused"]
       27 SETLIST                          R7 R8 1 [1]
       29 CALL                             R5 2 1
       30 GETUPVAL                         R7 0
       31 GETTABLEKS                       R6 R7 K2 ["useCallback"]
       33 NEWCLOSURE                       R7 P1
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R8 0 2
       38 GETTABLEKS                       R9 R0 K4 ["onFocusLost"]
       40 GETTABLEKS                       R10 R0 K5 ["setContentProperty"]
       42 SETLIST                          R8 R9 2 [1]
       44 CALL                             R6 2 1
       45 GETTABLEKS                       R8 R0 K6 ["asset"]
       47 JUMPIFNOT                        R8 ; [+10]
       48 LOADK                            R8 K7 ["rbxassetid://%*"]
       49 GETTABLEKS                       R11 R0 K6 ["asset"]
       51 GETTABLEKS                       R10 R11 K8 ["id"]
       53 NAMECALL                         R8 R8 K9 ["format"]
       55 CALL                             R8 2 1
       56 MOVE                             R7 R8
       57 JUMP                             ; [+1]
       58 LOADK                            R7 K10 ["rbxassetid://"]
       59 GETUPVAL                         R9 0
       60 GETTABLEKS                       R8 R9 K2 ["useCallback"]
       62 NEWCLOSURE                       R9 P2
       63 CAPTURE                          VAL R7
       64 NEWTABLE                         R10 0 1
       66 MOVE                             R11 R7
       67 SETLIST                          R10 R11 1 [1]
       69 CALL                             R8 2 1
       70 LOADNIL                          R9
       71 GETTABLEKS                       R10 R0 K6 ["asset"]
       73 JUMPIFNOT                        R10 ; [+14]
       74 LOADK                            R10 K11 ["%* (%*)"]
       75 GETTABLEKS                       R13 R0 K6 ["asset"]
       77 GETTABLEKS                       R12 R13 K12 ["name"]
       79 GETTABLEKS                       R14 R0 K6 ["asset"]
       81 GETTABLEKS                       R13 R14 K8 ["id"]
       83 NAMECALL                         R10 R10 K9 ["format"]
       85 CALL                             R10 3 1
       86 MOVE                             R9 R10
       87 JUMP                             ; [+1]
       88 LOADK                            R9 K13 [""]
       89 GETUPVAL                         R10 1
       90 GETUPVAL                         R12 0
       91 GETTABLEKS                       R11 R12 K14 ["Fragment"]
       93 NEWTABLE                         R12 0 0
       95 DUPTABLE                         R13 K17 [{"Display", "Input"}]
       96 GETUPVAL                         R14 1
       97 GETUPVAL                         R15 2
       98 DUPTABLE                         R16 K22 [{"size", "text", "visible", "onFocused", "textBoxRef"}]
       99 GETIMPORT                        R17 K25 [UDim2.fromScale]
      101 LOADN                            R18 1
      102 LOADN                            R19 1
      103 CALL                             R17 2 1
      104 SETTABLEKS                       R17 R16 K18 ["size"]
      106 SETTABLEKS                       R9 R16 K19 ["text"]
      108 NOT                              R17 R1
      109 SETTABLEKS                       R17 R16 K20 ["visible"]
      111 SETTABLEKS                       R5 R16 K3 ["onFocused"]
      113 SETTABLEKS                       R3 R16 K21 ["textBoxRef"]
      115 CALL                             R14 2 1
      116 SETTABLEKS                       R14 R13 K15 ["Display"]
      118 GETUPVAL                         R14 1
      119 GETUPVAL                         R15 2
      120 DUPTABLE                         R16 K26 [{"size", "text", "visible", "textBoxRef", "onFocused", "onFocusLost"}]
      121 GETIMPORT                        R17 K25 [UDim2.fromScale]
      123 LOADN                            R18 1
      124 LOADN                            R19 1
      125 CALL                             R17 2 1
      126 SETTABLEKS                       R17 R16 K18 ["size"]
      128 LOADK                            R17 K13 [""]
      129 SETTABLEKS                       R17 R16 K19 ["text"]
      131 SETTABLEKS                       R1 R16 K20 ["visible"]
      133 SETTABLEKS                       R4 R16 K21 ["textBoxRef"]
      135 SETTABLEKS                       R8 R16 K3 ["onFocused"]
      137 SETTABLEKS                       R6 R16 K4 ["onFocusLost"]
      139 CALL                             R14 2 1
      140 SETTABLEKS                       R14 R13 K16 ["Input"]
      142 CALL                             R10 3 -1
      143 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R5 R0 K7 ["Components"]
       13 GETTABLEKS                       R4 R5 K8 ["Util"]
       15 GETTABLEKS                       R3 R4 K9 ["PlaceholderTextBox"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["React"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K11 ["createElement"]
       25 DUPCLOSURE                       R5 K12 [PROTO_3]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R2
       29 RETURN                           R5 1
