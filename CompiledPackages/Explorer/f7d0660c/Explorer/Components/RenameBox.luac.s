PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["current"]
        3 JUMPIFNOT                        R3 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R3 R0 K1 ["Text"]
        7 JUMPIFEQKNIL                     R2 ; [+7]
        9 GETTABLEKS                       R4 R2 K2 ["KeyCode"]
       11 GETIMPORT                        R5 K5 [Enum.KeyCode.Escape]
       13 JUMPIFNOTEQ                      R4 R5 ; [+6]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K6 ["onCancel"]
       18 CALL                             R4 0 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R4 R5 K7 ["onRenameComplete"]
       23 MOVE                             R5 R3
       24 CALL                             R4 1 0
       25 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R2 R0 K0 ["Text"]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K0 ["Text"]
        9 GETTABLEKS                       R2 R0 K0 ["Text"]
       11 FASTCALL2K                       STRING_SUB R2 K1 ; [+4]
       13 LOADK                            R3 K1 [-1]
       14 GETIMPORT                        R1 K4 [string.sub]
       16 CALL                             R1 2 1
       17 JUMPIFNOTEQKS                    R1 K5 ["\t"] ; [+27]
       19 GETTABLEKS                       R2 R0 K0 ["Text"]
       21 LOADN                            R3 1
       22 LOADN                            R4 254
       23 FASTCALL                         STRING_SUB ; [+2]
       24 GETIMPORT                        R1 K4 [string.sub]
       26 CALL                             R1 3 1
       27 JUMPIFNOTEQKS                    R1 K6 [""] ; [+2]
       29 GETUPVAL                         R1 2
       30 SETTABLEKS                       R1 R0 K0 ["Text"]
       32 GETUPVAL                         R2 3
       33 LOADB                            R3 1
       34 SETTABLEKS                       R3 R2 K7 ["current"]
       36 NAMECALL                         R2 R0 K8 ["ReleaseFocus"]
       38 CALL                             R2 1 0
       39 GETUPVAL                         R3 4
       40 GETTABLEKS                       R2 R3 K9 ["iterateRenameBox"]
       42 MOVE                             R3 R1
       43 LOADN                            R4 1
       44 CALL                             R2 2 0
       45 RETURN                           R0 0

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
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K12 ["current"]
       23 JUMPIFNOTEQKNIL                  R2 ; [+2]
       25 RETURN                           R0 0
       26 GETUPVAL                         R3 1
       27 LOADB                            R4 1
       28 SETTABLEKS                       R4 R3 K12 ["current"]
       30 NAMECALL                         R3 R2 K13 ["ReleaseFocus"]
       32 CALL                             R3 1 0
       33 GETIMPORT                        R3 K11 [Enum.KeyCode.Down]
       35 JUMPIFNOTEQ                      R1 R3 ; [+9]
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R3 R4 K14 ["iterateRenameBox"]
       40 GETTABLEKS                       R4 R2 K15 ["Text"]
       42 LOADN                            R5 1
       43 CALL                             R3 2 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R4 2
       46 GETTABLEKS                       R3 R4 K14 ["iterateRenameBox"]
       48 GETTABLEKS                       R4 R2 K15 ["Text"]
       50 LOADN                            R5 255
       51 CALL                             R3 2 0
       52 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["session"]
        3 GETTABLEKS                       R0 R1 K1 ["setArrowKeysEnabled"]
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["session"]
        3 GETTABLEKS                       R0 R1 K1 ["setArrowKeysEnabled"]
        5 LOADB                            R1 0
        6 CALL                             R0 1 0
        7 NEWCLOSURE                       R0 P0
        8 CAPTURE                          UPVAL U0
        9 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["initialText"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["useRef"]
        9 LOADB                            R3 0
       10 CALL                             R2 1 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K2 ["useRef"]
       14 LOADNIL                          R4
       15 CALL                             R3 1 1
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K3 ["useEffect"]
       19 NEWCLOSURE                       R5 P0
       20 CAPTURE                          VAL R3
       21 NEWTABLE                         R6 0 0
       23 CALL                             R4 2 0
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R4 R5 K4 ["useCallback"]
       27 NEWCLOSURE                       R5 P1
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R0
       30 NEWTABLE                         R6 0 2
       32 GETTABLEKS                       R7 R0 K5 ["onRenameComplete"]
       34 GETTABLEKS                       R8 R0 K6 ["onCancel"]
       36 SETLIST                          R6 R7 2 [1]
       38 CALL                             R4 2 1
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R5 R6 K4 ["useCallback"]
       42 NEWCLOSURE                       R6 P2
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R0
       48 NEWTABLE                         R7 0 2
       50 MOVE                             R8 R1
       51 GETTABLEKS                       R9 R0 K7 ["iterateRenameBox"]
       53 SETLIST                          R7 R8 2 [1]
       55 CALL                             R5 2 1
       56 GETUPVAL                         R7 0
       57 GETTABLEKS                       R6 R7 K8 ["useContext"]
       59 GETUPVAL                         R8 3
       60 GETTABLEKS                       R7 R8 K9 ["Context"]
       62 CALL                             R6 1 1
       63 GETUPVAL                         R7 4
       64 GETTABLEKS                       R8 R6 K10 ["inputBeganSignal"]
       66 NEWCLOSURE                       R9 P3
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R0
       70 NEWTABLE                         R10 0 1
       72 GETTABLEKS                       R11 R0 K7 ["iterateRenameBox"]
       74 SETLIST                          R10 R11 1 [1]
       76 CALL                             R7 3 0
       77 GETUPVAL                         R8 0
       78 GETTABLEKS                       R7 R8 K3 ["useEffect"]
       80 NEWCLOSURE                       R8 P4
       81 CAPTURE                          VAL R0
       82 NEWTABLE                         R9 0 1
       84 GETTABLEKS                       R10 R0 K11 ["session"]
       86 SETLIST                          R9 R10 1 [1]
       88 CALL                             R7 2 0
       89 GETUPVAL                         R7 5
       90 CALL                             R7 0 1
       91 GETUPVAL                         R8 6
       92 GETUPVAL                         R9 7
       93 NEWTABLE                         R10 1 0
       95 GETUPVAL                         R12 0
       96 GETTABLEKS                       R11 R12 K12 ["Tag"]
       98 LOADK                            R12 K13 ["X-Fill Explorer-RenameBox"]
       99 SETTABLE                         R12 R10 R11
      100 DUPTABLE                         R11 K16 [{"Background", "TextBox"}]
      101 GETUPVAL                         R12 6
      102 GETUPVAL                         R13 7
      103 NEWTABLE                         R14 2 0
      105 MOVE                             R15 R7
      106 CALL                             R15 0 1
      107 SETTABLEKS                       R15 R14 K17 ["ZIndex"]
      109 GETUPVAL                         R16 0
      110 GETTABLEKS                       R15 R16 K12 ["Tag"]
      112 LOADK                            R16 K18 ["Explorer-RenameBox-Background Explorer-BG-Surface100"]
      113 SETTABLE                         R16 R14 R15
      114 DUPTABLE                         R15 K20 [{"BackgroundInner"}]
      115 GETUPVAL                         R16 6
      116 GETUPVAL                         R17 7
      117 NEWTABLE                         R18 1 0
      119 GETUPVAL                         R20 0
      120 GETTABLEKS                       R19 R20 K12 ["Tag"]
      122 LOADK                            R20 K21 ["Explorer-RenameBox-BackgroundInner"]
      123 SETTABLE                         R20 R18 R19
      124 CALL                             R16 2 1
      125 SETTABLEKS                       R16 R15 K19 ["BackgroundInner"]
      127 CALL                             R12 3 1
      128 SETTABLEKS                       R12 R11 K14 ["Background"]
      130 GETUPVAL                         R12 6
      131 LOADK                            R13 K15 ["TextBox"]
      132 NEWTABLE                         R14 16 0
      134 LOADB                            R15 0
      135 SETTABLEKS                       R15 R14 K22 ["ClearTextOnFocus"]
      137 LOADB                            R15 1
      138 SETTABLEKS                       R15 R14 K23 ["ShouldEmitTabEvents"]
      140 LOADB                            R15 1
      141 SETTABLEKS                       R15 R14 K24 ["ShouldEmitUpAndDownArrowEvents"]
      143 SETTABLEKS                       R1 R14 K25 ["Text"]
      145 MOVE                             R15 R7
      146 CALL                             R15 0 1
      147 SETTABLEKS                       R15 R14 K17 ["ZIndex"]
      149 SETTABLEKS                       R3 R14 K26 ["ref"]
      151 GETUPVAL                         R17 0
      152 GETTABLEKS                       R16 R17 K27 ["Change"]
      154 GETTABLEKS                       R15 R16 K25 ["Text"]
      156 SETTABLE                         R5 R14 R15
      157 GETUPVAL                         R17 0
      158 GETTABLEKS                       R16 R17 K28 ["Event"]
      160 GETTABLEKS                       R15 R16 K29 ["FocusLost"]
      162 SETTABLE                         R4 R14 R15
      163 GETUPVAL                         R16 0
      164 GETTABLEKS                       R15 R16 K12 ["Tag"]
      166 GETUPVAL                         R17 8
      167 CALL                             R17 0 1
      168 JUMPIFNOT                        R17 ; [+2]
      169 LOADK                            R16 K30 ["Explorer-Content-Muted"]
      170 JUMP                             ; [+6]
      171 GETUPVAL                         R17 9
      172 CALL                             R17 0 1
      173 JUMPIFNOT                        R17 ; [+2]
      174 LOADK                            R16 K31 ["DEPRECATED_Explorer-Text-Size-14 Explorer-Content-Muted"]
      175 JUMP                             ; [+1]
      176 LOADNIL                          R16
      177 SETTABLE                         R16 R14 R15
      178 CALL                             R12 2 1
      179 SETTABLEKS                       R12 R11 K15 ["TextBox"]
      181 CALL                             R8 3 -1
      182 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["RpcTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R7 R0 K10 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["Contexts"]
       32 GETTABLEKS                       R5 R6 K12 ["WindowInputContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K13 ["Util"]
       39 GETTABLEKS                       R6 R7 K14 ["createNextOrder"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K13 ["Util"]
       46 GETTABLEKS                       R7 R8 K15 ["formatInstanceName"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R9 R0 K16 ["Flags"]
       53 GETTABLEKS                       R8 R9 K17 ["getFFlagExplorerFixBlurryTextHopefully"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R10 R0 K16 ["Flags"]
       60 GETTABLEKS                       R9 R10 K18 ["getFFlagExplorerFormatInstanceName"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R11 R0 K16 ["Flags"]
       67 GETTABLEKS                       R10 R11 K19 ["getFFlagExplorerUseBuilderSans"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R12 R0 K20 ["Hooks"]
       74 GETTABLEKS                       R11 R12 K21 ["useEventConnection"]
       76 CALL                             R10 1 1
       77 GETTABLEKS                       R12 R1 K22 ["UI"]
       79 GETTABLEKS                       R11 R12 K23 ["Pane"]
       81 GETTABLEKS                       R12 R2 K24 ["createElement"]
       83 DUPCLOSURE                       R13 K25 [PROTO_6]
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R10
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R7
       94 RETURN                           R13 1
