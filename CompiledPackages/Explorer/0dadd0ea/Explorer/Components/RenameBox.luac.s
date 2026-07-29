PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        9 LOADK                            R3 K1 ["TextBox not mounted"]
       10 GETIMPORT                        R1 K3 [assert]
       12 CALL                             R1 2 0
       13 NAMECALL                         R1 R0 K4 ["CaptureFocus"]
       15 CALL                             R1 1 0
       16 LOADN                            R1 1
       17 SETTABLEKS                       R1 R0 K5 ["SelectionStart"]
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["current"]
        3 JUMPIFNOT                        R3 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R3 R0 K1 ["Text"]
        7 JUMPIFEQKNIL                     R2 ; [+7]
        9 GETTABLEKS                       R4 R2 K2 ["KeyCode"]
       11 GETIMPORT                        R5 K5 [Enum.KeyCode.Escape]
       13 JUMPIFNOTEQ                      R4 R5 ; [+6]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K6 ["onCancel"]
       18 CALL                             R4 0 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K7 ["onRenameComplete"]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Text"]
        3 CALL                             R1 1 1
        4 SETTABLEKS                       R1 R0 K0 ["Text"]
        6 GETTABLEKS                       R2 R0 K0 ["Text"]
        8 FASTCALL2K                       STRING_SUB R2 K1 ; [+4]
       10 LOADK                            R3 K1 [-1]
       11 GETIMPORT                        R1 K4 [string.sub]
       13 CALL                             R1 2 1
       14 JUMPIFNOTEQKS                    R1 K5 ["\t"] ; [+27]
       16 GETTABLEKS                       R2 R0 K0 ["Text"]
       18 LOADN                            R3 1
       19 LOADN                            R4 -2
       20 FASTCALL                         STRING_SUB ; [+2]
       21 GETIMPORT                        R1 K4 [string.sub]
       23 CALL                             R1 3 1
       24 JUMPIFNOTEQKS                    R1 K6 [""] ; [+2]
       26 GETUPVAL                         R1 1
       27 SETTABLEKS                       R1 R0 K0 ["Text"]
       29 GETUPVAL                         R2 2
       30 LOADB                            R3 1
       31 SETTABLEKS                       R3 R2 K7 ["current"]
       33 NAMECALL                         R2 R0 K8 ["ReleaseFocus"]
       35 CALL                             R2 1 0
       36 GETUPVAL                         R2 3
       37 GETTABLEKS                       R2 R2 K9 ["iterateRenameBox"]
       39 MOVE                             R3 R1
       40 LOADN                            R4 1
       41 CALL                             R2 2 0
       42 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R2 K3 [Enum.KeyCode.Tab]
        4 JUMPIFNOTEQ                      R1 R2 ; [+7]
        6 GETIMPORT                        R4 K6 [Enum.ModifierKey.Shift]
        8 NAMECALL                         R2 R0 K7 ["IsModifierKeyDown"]
       10 CALL                             R2 2 1
       11 JUMPIF                           R2 ; [+8]
       12 GETIMPORT                        R2 K9 [Enum.KeyCode.Up]
       14 JUMPIFEQ                         R1 R2 ; [+5]
       16 GETIMPORT                        R2 K11 [Enum.KeyCode.Down]
       18 JUMPIFNOTEQ                      R1 R2 ; [+33]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K12 ["current"]
       23 JUMPIFNOTEQKNIL                  R2 ; [+2]
       25 RETURN                           R0 0
       26 GETUPVAL                         R3 1
       27 LOADB                            R4 1
       28 SETTABLEKS                       R4 R3 K12 ["current"]
       30 NAMECALL                         R3 R2 K13 ["ReleaseFocus"]
       32 CALL                             R3 1 0
       33 GETIMPORT                        R3 K11 [Enum.KeyCode.Down]
       35 JUMPIFNOTEQ                      R1 R3 ; [+9]
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R3 R3 K14 ["iterateRenameBox"]
       40 GETTABLEKS                       R4 R2 K15 ["Text"]
       42 LOADN                            R5 1
       43 CALL                             R3 2 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R3 2
       46 GETTABLEKS                       R3 R3 K14 ["iterateRenameBox"]
       48 GETTABLEKS                       R4 R2 K15 ["Text"]
       50 LOADN                            R5 -1
       51 CALL                             R3 2 0
       52 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["session"]
        3 GETTABLEKS                       R0 R0 K1 ["setArrowKeysEnabled"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["session"]
        3 GETTABLEKS                       R0 R0 K1 ["setArrowKeysEnabled"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 NEWCLOSURE                       R0 P0
        8 CAPTURE                          UPVAL U0
        9 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["initialText"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["useRef"]
        9 LOADB                            R3 0
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["useRef"]
       14 LOADNIL                          R4
       15 CALL                             R3 1 1
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R3
       21 NEWTABLE                         R6 0 0
       23 CALL                             R4 2 0
       24 GETUPVAL                         R4 0
       25 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       27 NEWCLOSURE                       R5 P1
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R6 0 2
       32 GETTABLEKS                       R7 R0 K5 ["onRenameComplete"]
       34 GETTABLEKS                       R8 R0 K6 ["onCancel"]
       36 SETLIST                          R6 R7 2 [1]
       38 CALL                             R4 2 1
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       42 NEWCLOSURE                       R6 P2
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R0
       47 NEWTABLE                         R7 0 2
       49 MOVE                             R8 R1
       50 GETTABLEKS                       R9 R0 K7 ["iterateRenameBox"]
       52 SETLIST                          R7 R8 2 [1]
       54 CALL                             R5 2 1
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R6 R6 K8 ["useContext"]
       58 GETUPVAL                         R7 2
       59 GETTABLEKS                       R7 R7 K9 ["Context"]
       61 CALL                             R6 1 1
       62 GETUPVAL                         R7 3
       63 GETTABLEKS                       R8 R6 K10 ["inputBeganSignal"]
       65 NEWCLOSURE                       R9 P3
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R0
       69 NEWTABLE                         R10 0 1
       71 GETTABLEKS                       R11 R0 K7 ["iterateRenameBox"]
       73 SETLIST                          R10 R11 1 [1]
       75 CALL                             R7 3 0
       76 GETUPVAL                         R7 0
       77 GETTABLEKS                       R7 R7 K3 ["useEffect"]
       79 NEWCLOSURE                       R8 P4
       80 CAPTURE                          VAL R0
       81 NEWTABLE                         R9 0 1
       83 GETTABLEKS                       R10 R0 K11 ["session"]
       85 SETLIST                          R9 R10 1 [1]
       87 CALL                             R7 2 0
       88 GETUPVAL                         R7 4
       89 CALL                             R7 0 1
       90 GETUPVAL                         R8 5
       91 GETUPVAL                         R9 6
       92 NEWTABLE                         R10 1 0
       94 GETUPVAL                         R11 0
       95 GETTABLEKS                       R11 R11 K12 ["Tag"]
       97 LOADK                            R12 K13 ["X-Fill Explorer-RenameBox"]
       98 SETTABLE                         R12 R10 R11
       99 DUPTABLE                         R11 K16 [{"Background", "TextBox"}]
      100 GETUPVAL                         R12 5
      101 GETUPVAL                         R13 6
      102 NEWTABLE                         R14 2 0
      104 MOVE                             R15 R7
      105 CALL                             R15 0 1
      106 SETTABLEKS                       R15 R14 K17 ["ZIndex"]
      108 GETUPVAL                         R15 0
      109 GETTABLEKS                       R15 R15 K12 ["Tag"]
      111 LOADK                            R16 K18 ["Explorer-RenameBox-Background Explorer-BG-Surface100"]
      112 SETTABLE                         R16 R14 R15
      113 DUPTABLE                         R15 K20 [{"BackgroundInner"}]
      114 GETUPVAL                         R16 5
      115 GETUPVAL                         R17 6
      116 NEWTABLE                         R18 1 0
      118 GETUPVAL                         R19 0
      119 GETTABLEKS                       R19 R19 K12 ["Tag"]
      121 LOADK                            R20 K21 ["Explorer-RenameBox-BackgroundInner"]
      122 SETTABLE                         R20 R18 R19
      123 CALL                             R16 2 1
      124 SETTABLEKS                       R16 R15 K19 ["BackgroundInner"]
      126 CALL                             R12 3 1
      127 SETTABLEKS                       R12 R11 K14 ["Background"]
      129 GETUPVAL                         R12 5
      130 LOADK                            R13 K15 ["TextBox"]
      131 NEWTABLE                         R14 16 0
      133 LOADB                            R15 0
      134 SETTABLEKS                       R15 R14 K22 ["ClearTextOnFocus"]
      136 LOADB                            R15 1
      137 SETTABLEKS                       R15 R14 K23 ["ShouldEmitTabEvents"]
      139 LOADB                            R15 1
      140 SETTABLEKS                       R15 R14 K24 ["ShouldEmitUpAndDownArrowEvents"]
      142 SETTABLEKS                       R1 R14 K25 ["Text"]
      144 MOVE                             R15 R7
      145 CALL                             R15 0 1
      146 SETTABLEKS                       R15 R14 K17 ["ZIndex"]
      148 SETTABLEKS                       R3 R14 K26 ["ref"]
      150 GETUPVAL                         R15 0
      151 GETTABLEKS                       R15 R15 K27 ["Change"]
      153 GETTABLEKS                       R15 R15 K25 ["Text"]
      155 SETTABLE                         R5 R14 R15
      156 GETUPVAL                         R15 0
      157 GETTABLEKS                       R15 R15 K28 ["Event"]
      159 GETTABLEKS                       R15 R15 K29 ["FocusLost"]
      161 SETTABLE                         R4 R14 R15
      162 GETUPVAL                         R15 0
      163 GETTABLEKS                       R15 R15 K12 ["Tag"]
      165 GETUPVAL                         R17 7
      166 CALL                             R17 0 1
      167 JUMPIFNOT                        R17 ; [+2]
      168 LOADK                            R16 K30 ["Explorer-Content-Muted"]
      169 JUMP                             ; [+6]
      170 GETUPVAL                         R17 8
      171 CALL                             R17 0 1
      172 JUMPIFNOT                        R17 ; [+2]
      173 LOADK                            R16 K31 ["DEPRECATED_Explorer-Text-Size-14 Explorer-Content-Muted"]
      174 JUMP                             ; [+1]
      175 LOADNIL                          R16
      176 SETTABLE                         R16 R14 R15
      177 CALL                             R12 2 1
      178 SETTABLEKS                       R12 R11 K15 ["TextBox"]
      180 CALL                             R8 3 -1
      181 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["RpcTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K10 ["Components"]
       30 GETTABLEKS                       R5 R5 K11 ["Contexts"]
       32 GETTABLEKS                       R5 R5 K12 ["WindowInputContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Util"]
       39 GETTABLEKS                       R6 R6 K14 ["createNextOrder"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Util"]
       46 GETTABLEKS                       R7 R7 K15 ["formatInstanceName"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K16 ["Flags"]
       53 GETTABLEKS                       R8 R8 K17 ["getFFlagExplorerFixBlurryTextHopefully"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K16 ["Flags"]
       60 GETTABLEKS                       R9 R9 K18 ["getFFlagExplorerUseBuilderSans"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K19 ["Hooks"]
       67 GETTABLEKS                       R10 R10 K20 ["useEventConnection"]
       69 CALL                             R9 1 1
       70 GETTABLEKS                       R10 R1 K21 ["UI"]
       72 GETTABLEKS                       R10 R10 K22 ["Pane"]
       74 GETTABLEKS                       R11 R2 K23 ["createElement"]
       76 DUPCLOSURE                       R12 K24 [PROTO_6]
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R7
       86 RETURN                           R12 1
