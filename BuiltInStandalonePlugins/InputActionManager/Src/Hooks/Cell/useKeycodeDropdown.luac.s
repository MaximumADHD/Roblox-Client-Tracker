PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["binding"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["property"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["schema"]
        4 GETUPVAL                         R2 2
        5 GETUPVAL                         R3 3
        6 GETUPVAL                         R4 4
        7 CALL                             R0 4 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 NOT                              R1 R0
        1 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 LOADK                            R1 K0 [""]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 DUPCLOSURE                       R1 K1 [PROTO_2]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 [""]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_5:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["number"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Expected id to be a number"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 GETIMPORT                        R1 K8 [Enum.KeyCode]
       17 MOVE                             R3 R0
       18 NAMECALL                         R1 R1 K9 ["FromValue"]
       20 CALL                             R1 2 1
       21 LOADK                            R5 K10 ["Invalid keycode value: %*"]
       22 MOVE                             R7 R0
       23 NAMECALL                         R5 R5 K11 ["format"]
       25 CALL                             R5 2 1
       26 MOVE                             R4 R5
       27 FASTCALL2                        ASSERT R1 R4 ; [+4]
       29 MOVE                             R3 R1
       30 GETIMPORT                        R2 K5 [assert]
       32 CALL                             R2 2 0
       33 GETUPVAL                         R2 0
       34 GETUPVAL                         R3 1
       35 GETTABLEKS                       R3 R3 K12 ["updateBinding"]
       37 GETUPVAL                         R4 2
       38 MOVE                             R5 R1
       39 CALL                             R2 3 0
       40 GETUPVAL                         R2 3
       41 LOADK                            R3 K13 [""]
       42 CALL                             R2 1 0
       43 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["score"]
        2 GETTABLEKS                       R3 R1 K0 ["score"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+14]
        6 GETTABLEKS                       R3 R0 K1 ["item"]
        8 GETTABLEKS                       R3 R3 K2 ["text"]
       10 GETTABLEKS                       R4 R1 K1 ["item"]
       12 GETTABLEKS                       R4 R4 K2 ["text"]
       14 JUMPIFLT                         R3 R4 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 RETURN                           R2 1
       19 GETTABLEKS                       R3 R0 K0 ["score"]
       21 GETTABLEKS                       R4 R1 K0 ["score"]
       23 JUMPIFLT                         R3 R4 ; [+2]
       25 LOADB                            R2 0 +1
       26 LOADB                            R2 1
       27 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        3 GETUPVAL                         R0 1
        4 RETURN                           R0 1
        5 GETIMPORT                        R0 K3 [string.lower]
        7 GETUPVAL                         R1 0
        8 CALL                             R0 1 1
        9 NEWTABLE                         R1 0 0
       11 GETUPVAL                         R2 2
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+104]
       14 NEWTABLE                         R2 0 0
       16 GETUPVAL                         R3 1
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 GETIMPORT                        R8 K6 [Enum.KeyCode]
       22 GETTABLEKS                       R10 R7 K7 ["text"]
       24 NAMECALL                         R8 R8 K8 ["FromName"]
       26 CALL                             R8 2 1
       27 JUMPIFNOT                        R8 ; [+6]
       28 GETUPVAL                         R9 3
       29 MOVE                             R11 R8
       30 NAMECALL                         R9 R9 K9 ["GetStringForKeyCode"]
       32 CALL                             R9 2 1
       33 JUMP                             ; [+1]
       34 LOADNIL                          R9
       35 GETIMPORT                        R10 K11 [string.find]
       37 GETIMPORT                        R11 K3 [string.lower]
       39 GETTABLEKS                       R12 R7 K7 ["text"]
       41 CALL                             R11 1 1
       42 MOVE                             R12 R0
       43 LOADN                            R13 1
       44 LOADB                            R14 1
       45 CALL                             R10 4 1
       46 JUMPIFNOT                        R9 ; [+8]
       47 GETIMPORT                        R11 K11 [string.find]
       49 MOVE                             R12 R9
       50 MOVE                             R13 R0
       51 LOADN                            R14 1
       52 LOADB                            R15 1
       53 CALL                             R11 4 1
       54 JUMP                             ; [+1]
       55 LOADNIL                          R11
       56 JUMPIFNOT                        R10 ; [+9]
       57 JUMPIFNOT                        R11 ; [+8]
       58 FASTCALL2                        MATH_MIN R10 R11 ; [+5]
       60 MOVE                             R13 R10
       61 MOVE                             R14 R11
       62 GETIMPORT                        R12 K14 [math.min]
       64 CALL                             R12 2 1
       65 JUMP                             ; [+18]
       66 JUMPIFNOT                        R10 ; [+2]
       67 MOVE                             R12 R10
       68 JUMP                             ; [+15]
       69 JUMPIFNOT                        R11 ; [+2]
       70 MOVE                             R12 R11
       71 JUMP                             ; [+12]
       72 GETIMPORT                        R13 K3 [string.lower]
       74 GETTABLEKS                       R14 R7 K7 ["text"]
       76 CALL                             R13 1 1
       77 JUMPIFEQ                         R13 R0 ; [+3]
       79 JUMPIFNOTEQ                      R9 R0 ; [+3]
       81 LOADN                            R12 0
       82 JUMP                             ; [+1]
       83 LOADNIL                          R12
       84 JUMPIFNOT                        R12 ; [+11]
       85 DUPTABLE                         R15 K17 [{"item", "score"}]
       86 SETTABLEKS                       R7 R15 K15 ["item"]
       88 SETTABLEKS                       R12 R15 K16 ["score"]
       90 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       92 MOVE                             R14 R2
       93 GETIMPORT                        R13 K20 [table.insert]
       95 CALL                             R13 2 0
       96 FORGLOOP                         R3 2 ; [-77]
       98 GETIMPORT                        R3 K22 [table.sort]
      100 MOVE                             R4 R2
      101 DUPCLOSURE                       R5 K23 [PROTO_6]
      102 CALL                             R3 2 0
      103 MOVE                             R3 R2
      104 LOADNIL                          R4
      105 LOADNIL                          R5
      106 FORGPREP                         R3
      107 GETTABLEKS                       R10 R7 K15 ["item"]
      109 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      111 MOVE                             R9 R1
      112 GETIMPORT                        R8 K20 [table.insert]
      114 CALL                             R8 2 0
      115 FORGLOOP                         R3 2 ; [-9]
      117 RETURN                           R1 1
      118 GETUPVAL                         R2 1
      119 LOADNIL                          R3
      120 LOADNIL                          R4
      121 FORGPREP                         R2
      122 GETIMPORT                        R7 K6 [Enum.KeyCode]
      124 GETTABLEKS                       R9 R6 K7 ["text"]
      126 NAMECALL                         R7 R7 K8 ["FromName"]
      128 CALL                             R7 2 1
      129 GETIMPORT                        R8 K11 [string.find]
      131 GETIMPORT                        R9 K3 [string.lower]
      133 GETTABLEKS                       R10 R6 K7 ["text"]
      135 CALL                             R9 1 1
      136 MOVE                             R10 R0
      137 LOADN                            R11 1
      138 LOADB                            R12 1
      139 CALL                             R8 4 1
      140 JUMPIF                           R8 ; [+16]
      141 JUMPIFNOT                        R7 ; [+22]
      142 GETIMPORT                        R8 K11 [string.find]
      144 GETIMPORT                        R9 K3 [string.lower]
      146 GETUPVAL                         R10 3
      147 MOVE                             R12 R7
      148 NAMECALL                         R10 R10 K9 ["GetStringForKeyCode"]
      150 CALL                             R10 2 -1
      151 CALL                             R9 -1 1
      152 MOVE                             R10 R0
      153 LOADN                            R11 1
      154 LOADB                            R12 1
      155 CALL                             R8 4 1
      156 JUMPIFNOT                        R8 ; [+7]
      157 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
      159 MOVE                             R9 R1
      160 MOVE                             R10 R6
      161 GETIMPORT                        R8 K20 [table.insert]
      163 CALL                             R8 2 0
      164 FORGLOOP                         R2 2 ; [-43]
      166 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K1 ["Context"]
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          VAL R0
       20 NEWTABLE                         R6 0 2
       22 GETTABLEKS                       R7 R0 K3 ["binding"]
       24 GETTABLEKS                       R8 R0 K4 ["property"]
       26 SETLIST                          R6 R7 2 [1]
       28 CALL                             R4 2 1
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R5 R5 K2 ["useMemo"]
       32 NEWCLOSURE                       R6 P1
       33 CAPTURE                          UPVAL U4
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R3
       38 NEWTABLE                         R7 0 4
       40 GETTABLEKS                       R8 R0 K5 ["schema"]
       42 MOVE                             R9 R1
       43 MOVE                             R10 R4
       44 MOVE                             R11 R3
       45 SETLIST                          R7 R8 4 [1]
       47 CALL                             R5 2 2
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R7 R7 K6 ["useState"]
       51 LOADB                            R8 0
       52 CALL                             R7 1 2
       53 GETUPVAL                         R9 0
       54 GETTABLEKS                       R9 R9 K6 ["useState"]
       56 LOADK                            R10 K7 [""]
       57 CALL                             R9 1 2
       58 GETUPVAL                         R11 5
       59 GETTABLEKS                       R11 R11 K8 ["useEventCallback"]
       61 NEWCLOSURE                       R12 P2
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R8
       65 CALL                             R11 1 1
       66 GETUPVAL                         R12 5
       67 GETTABLEKS                       R12 R12 K8 ["useEventCallback"]
       69 NEWCLOSURE                       R13 P3
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R10
       72 CALL                             R12 1 1
       73 GETUPVAL                         R13 0
       74 GETTABLEKS                       R13 R13 K9 ["useRef"]
       76 LOADNIL                          R14
       77 CALL                             R13 1 1
       78 GETUPVAL                         R14 5
       79 GETTABLEKS                       R14 R14 K8 ["useEventCallback"]
       81 NEWCLOSURE                       R15 P4
       82 CAPTURE                          UPVAL U6
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R10
       86 CALL                             R14 1 1
       87 GETUPVAL                         R15 0
       88 GETTABLEKS                       R15 R15 K2 ["useMemo"]
       90 NEWCLOSURE                       R16 P5
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R5
       93 CAPTURE                          UPVAL U7
       94 CAPTURE                          UPVAL U8
       95 NEWTABLE                         R17 0 2
       97 MOVE                             R18 R9
       98 MOVE                             R19 R5
       99 SETLIST                          R17 R18 2 [1]
      101 CALL                             R15 2 1
      102 DUPTABLE                         R16 K19 [{"currentIcon", "filterText", "inputRef", "isOpen", "items", "onCloseMenu", "onFilterTextChanged", "onItemChanged", "onOpenActivated"}]
      103 SETTABLEKS                       R6 R16 K10 ["currentIcon"]
      105 SETTABLEKS                       R9 R16 K11 ["filterText"]
      107 SETTABLEKS                       R13 R16 K12 ["inputRef"]
      109 SETTABLEKS                       R7 R16 K13 ["isOpen"]
      111 SETTABLEKS                       R15 R16 K14 ["items"]
      113 SETTABLEKS                       R12 R16 K15 ["onCloseMenu"]
      115 SETTABLEKS                       R10 R16 K16 ["onFilterTextChanged"]
      117 SETTABLEKS                       R14 R16 K17 ["onItemChanged"]
      119 SETTABLEKS                       R11 R16 K18 ["onOpenActivated"]
      121 RETURN                           R16 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UserInputService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["InputActionManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["ReactUtils"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K13 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Contexts"]
       33 GETTABLEKS                       R5 R5 K15 ["InputConfiguration"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K13 ["Src"]
       40 GETTABLEKS                       R6 R6 K14 ["Contexts"]
       42 GETTABLEKS                       R6 R6 K16 ["SchemaConfiguration"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K13 ["Src"]
       49 GETTABLEKS                       R7 R7 K17 ["Types"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R1 K13 ["Src"]
       56 GETTABLEKS                       R8 R8 K18 ["Util"]
       58 GETTABLEKS                       R8 R8 K19 ["Cell"]
       60 GETTABLEKS                       R8 R8 K20 ["getKeycodeDropdownItems"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K9 [require]
       65 GETTABLEKS                       R9 R1 K13 ["Src"]
       67 GETTABLEKS                       R9 R9 K18 ["Util"]
       69 GETTABLEKS                       R9 R9 K19 ["Cell"]
       71 GETTABLEKS                       R9 R9 K21 ["applyBindingKeycode"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K9 [require]
       76 GETTABLEKS                       R10 R1 K13 ["Src"]
       78 GETTABLEKS                       R10 R10 K18 ["Util"]
       80 GETTABLEKS                       R10 R10 K19 ["Cell"]
       82 GETTABLEKS                       R10 R10 K22 ["getBindingKeycodeValue"]
       84 CALL                             R9 1 1
       85 GETTABLEKS                       R10 R1 K13 ["Src"]
       87 GETTABLEKS                       R10 R10 K23 ["Flags"]
       89 GETIMPORT                        R11 K9 [require]
       91 GETTABLEKS                       R12 R10 K24 ["getFFlagIAMDropdownStabilityImprovements"]
       93 CALL                             R11 1 1
       94 DUPCLOSURE                       R12 K25 [PROTO_8]
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R11
      103 CAPTURE                          VAL R0
      104 RETURN                           R12 1
