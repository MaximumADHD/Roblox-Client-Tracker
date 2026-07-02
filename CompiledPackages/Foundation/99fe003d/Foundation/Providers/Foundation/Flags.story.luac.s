PROTO_0:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["key"]
        2 GETTABLEKS                       R4 R1 K0 ["key"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 CALL                             R1 1 3
        6 FORGPREP_NEXT                    R1
        7 GETUPVAL                         R6 1
        8 JUMPIFEQKS                       R6 K2 [""] ; [+13]
       10 GETIMPORT                        R6 K5 [string.find]
       12 GETIMPORT                        R7 K7 [string.lower]
       14 MOVE                             R8 R4
       15 CALL                             R7 1 1
       16 GETIMPORT                        R8 K7 [string.lower]
       18 GETUPVAL                         R9 1
       19 CALL                             R8 1 -1
       20 CALL                             R6 -1 1
       21 JUMPIFNOT                        R6 ; [+11]
       22 DUPTABLE                         R8 K10 [{"key", "value"}]
       23 SETTABLEKS                       R4 R8 K8 ["key"]
       25 SETTABLEKS                       R5 R8 K9 ["value"]
       27 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       29 MOVE                             R7 R0
       30 GETIMPORT                        R6 K13 [table.insert]
       32 CALL                             R6 2 0
       33 FORGLOOP                         R1 2 ; [-27]
       35 GETIMPORT                        R1 K15 [table.sort]
       37 MOVE                             R2 R0
       38 DUPCLOSURE                       R3 K16 [PROTO_1]
       39 CALL                             R1 2 0
       40 RETURN                           R0 1

PROTO_3:
        0 LOADN                            R0 0
        1 GETUPVAL                         R1 0
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETTABLEKS                       R6 R5 K0 ["value"]
        7 JUMPIFNOT                        R6 ; [+1]
        8 ADDK                             R0 R0 K1 [1]
        9 FORGLOOP                         R1 2 ; [-5]
       11 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 NAMECALL                         R0 R0 K2 ["SetFastFlagForTesting"]
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 GETIMPORT                        R2 K1 [pcall]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 SETTABLE                         R3 R1 R2
        7 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 SETTABLE                         R0 R2 R1
        3 GETIMPORT                        R2 K1 [pcall]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 CALL                             R2 1 0
        9 GETUPVAL                         R1 2
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

PROTO_9:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLEKS                       R7 R6 K3 ["key"]
       10 GETUPVAL                         R8 1
       11 SETTABLE                         R8 R1 R7
       12 FORGLOOP                         R2 2 ; [-5]
       14 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 LENGTH                           R2 R3
        3 JUMPIFLT                         R1 R2 ; [+2]
        5 LOADB                            R0 0 +1
        6 LOADB                            R0 1
        7 GETUPVAL                         R1 1
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 FORGPREP                         R1
       11 GETTABLEKS                       R6 R5 K0 ["key"]
       13 GETUPVAL                         R7 2
       14 SETTABLE                         R0 R7 R6
       15 GETIMPORT                        R7 K2 [pcall]
       17 NEWCLOSURE                       R8 P0
       18 CAPTURE                          VAL R6
       19 CAPTURE                          VAL R0
       20 CALL                             R7 1 0
       21 FORGLOOP                         R1 2 ; [-11]
       23 GETUPVAL                         R1 3
       24 NEWCLOSURE                       R2 P1
       25 CAPTURE                          UPVAL U1
       26 CAPTURE                          VAL R0
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K6 [{"key", "isChecked", "onActivated", "label", "LayoutOrder"}]
        5 GETTABLEKS                       R5 R0 K1 ["key"]
        7 SETTABLEKS                       R5 R4 K1 ["key"]
        9 GETTABLEKS                       R5 R0 K7 ["value"]
       11 SETTABLEKS                       R5 R4 K2 ["isChecked"]
       13 GETTABLEKS                       R6 R0 K1 ["key"]
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R6
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R5 R4 K3 ["onActivated"]
       21 GETTABLEKS                       R5 R0 K1 ["key"]
       23 SETTABLEKS                       R5 R4 K4 ["label"]
       25 SETTABLEKS                       R1 R4 K5 ["LayoutOrder"]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 LOADK                            R1 K1 [""]
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 DUPCLOSURE                       R3 K2 [PROTO_0]
        9 CAPTURE                          UPVAL U1
       10 CALL                             R2 1 2
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K3 ["useMemo"]
       14 NEWCLOSURE                       R5 P1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R6 0 2
       19 MOVE                             R7 R0
       20 MOVE                             R8 R2
       21 SETLIST                          R6 R7 2 [1]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K3 ["useMemo"]
       27 NEWCLOSURE                       R6 P2
       28 CAPTURE                          VAL R4
       29 NEWTABLE                         R7 0 1
       31 MOVE                             R8 R4
       32 SETLIST                          R7 R8 1 [1]
       34 CALL                             R5 2 1
       35 DUPCLOSURE                       R6 K4 [PROTO_5]
       36 CAPTURE                          UPVAL U1
       37 NEWCLOSURE                       R7 P4
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          VAL R3
       40 NEWCLOSURE                       R8 P5
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R4
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          VAL R3
       45 LENGTH                           R10 R4
       46 LOADN                            R11 0
       47 JUMPIFLT                         R11 R10 ; [+2]
       49 LOADB                            R9 0 +1
       50 LOADB                            R9 1
       51 MOVE                             R10 R9
       52 JUMPIFNOT                        R10 ; [+5]
       53 LENGTH                           R11 R4
       54 JUMPIFEQ                         R5 R11 ; [+2]
       56 LOADB                            R10 0 +1
       57 LOADB                            R10 1
       58 LOADB                            R11 0
       59 LOADN                            R12 0
       60 JUMPIFNOTLT                      R12 R5 ; [+6]
       62 LENGTH                           R12 R4
       63 JUMPIFLT                         R5 R12 ; [+2]
       65 LOADB                            R11 0 +1
       66 LOADB                            R11 1
       67 JUMPIFNOT                        R10 ; [+7]
       68 LOADK                            R13 K5 ["Unselect all (%*)"]
       69 LENGTH                           R15 R4
       70 NAMECALL                         R13 R13 K6 ["format"]
       72 CALL                             R13 2 1
       73 MOVE                             R12 R13
       74 JUMP                             ; [+15]
       75 JUMPIFNOT                        R11 ; [+8]
       76 LOADK                            R13 K7 ["Select all (%*/%*)"]
       77 MOVE                             R15 R5
       78 LENGTH                           R16 R4
       79 NAMECALL                         R13 R13 K6 ["format"]
       81 CALL                             R13 3 1
       82 MOVE                             R12 R13
       83 JUMP                             ; [+6]
       84 LOADK                            R13 K8 ["Select all (%*)"]
       85 LENGTH                           R15 R4
       86 NAMECALL                         R13 R13 K6 ["format"]
       88 CALL                             R13 2 1
       89 MOVE                             R12 R13
       90 GETUPVAL                         R13 0
       91 GETTABLEKS                       R13 R13 K9 ["createElement"]
       93 GETUPVAL                         R14 2
       94 DUPTABLE                         R15 K12 [{["tag"] = "col gap-medium auto-xy"}]
       95 DUPTABLE                         R16 K16 [{"Search", "SelectAll", "List"}]
       96 GETUPVAL                         R17 0
       97 GETTABLEKS                       R17 R17 K9 ["createElement"]
       99 GETUPVAL                         R18 3
      100 DUPTABLE                         R19 K24 [{["text"], ["onChanged"], ["label"] = "Search", ["placeholder"] = "Search flags...", ["LayoutOrder"] = 1}]
      101 SETTABLEKS                       R0 R19 K17 ["text"]
      103 SETTABLEKS                       R1 R19 K18 ["onChanged"]
      105 CALL                             R17 2 1
      106 SETTABLEKS                       R17 R16 K13 ["Search"]
      108 GETUPVAL                         R17 0
      109 GETTABLEKS                       R17 R17 K9 ["createElement"]
      111 GETUPVAL                         R18 4
      112 DUPTABLE                         R19 K30 [{["isChecked"], ["isIndeterminate"], ["isDisabled"], ["onActivated"], ["label"], ["LayoutOrder"] = 2}]
      113 SETTABLEKS                       R10 R19 K25 ["isChecked"]
      115 SETTABLEKS                       R11 R19 K26 ["isIndeterminate"]
      117 NOT                              R20 R9
      118 SETTABLEKS                       R20 R19 K27 ["isDisabled"]
      120 SETTABLEKS                       R8 R19 K28 ["onActivated"]
      122 SETTABLEKS                       R12 R19 K19 ["label"]
      124 CALL                             R17 2 1
      125 SETTABLEKS                       R17 R16 K14 ["SelectAll"]
      127 GETUPVAL                         R17 0
      128 GETTABLEKS                       R17 R17 K9 ["createElement"]
      130 GETUPVAL                         R18 2
      131 DUPTABLE                         R19 K33 [{["tag"] = "col gap-small auto-xy", ["LayoutOrder"] = 3}]
      132 GETUPVAL                         R20 5
      133 GETTABLEKS                       R20 R20 K34 ["map"]
      135 MOVE                             R21 R4
      136 NEWCLOSURE                       R22 P6
      137 CAPTURE                          UPVAL U0
      138 CAPTURE                          UPVAL U4
      139 CAPTURE                          UPVAL U1
      140 CAPTURE                          VAL R3
      141 CALL                             R20 2 -1
      142 CALL                             R17 -1 1
      143 SETTABLEKS                       R17 R16 K15 ["List"]
      145 CALL                             R13 3 -1
      146 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Providers"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["Checkbox"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["Dash"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Utility"]
       27 GETTABLEKS                       R4 R4 K11 ["Flags"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K6 [require]
       32 GETTABLEKS                       R5 R0 K4 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K6 [require]
       39 GETTABLEKS                       R6 R0 K7 ["Components"]
       41 GETTABLEKS                       R6 R6 K13 ["TextInput"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K6 [require]
       46 GETTABLEKS                       R7 R0 K7 ["Components"]
       48 GETTABLEKS                       R7 R7 K14 ["View"]
       50 CALL                             R6 1 1
       51 DUPCLOSURE                       R7 K15 [PROTO_12]
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R2
       58 DUPTABLE                         R8 K19 [{["story"], ["summary"] = "Toggling a flag here should update its state for other stories"}]
       59 SETTABLEKS                       R7 R8 K16 ["story"]
       61 RETURN                           R8 1
