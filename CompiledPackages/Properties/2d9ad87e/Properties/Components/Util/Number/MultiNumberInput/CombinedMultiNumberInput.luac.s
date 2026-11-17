PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEN                        R4 R1 1
        2 GETTABLEKS                       R4 R4 K0 ["name"]
        4 GETTABLE                         R3 R0 R4
        5 GETTABLEKS                       R3 R3 K1 ["value"]
        7 CALL                             R2 1 1
        8 LOADN                            R5 2
        9 LENGTH                           R3 R1
       10 LOADN                            R4 1
       11 FORNPREP                         R3
       12 MOVE                             R6 R2
       13 LOADK                            R7 K2 [", "]
       14 GETUPVAL                         R8 0
       15 GETTABLE                         R10 R1 R5
       16 GETTABLEKS                       R10 R10 K0 ["name"]
       18 GETTABLE                         R9 R0 R10
       19 GETTABLEKS                       R9 R9 K1 ["value"]
       21 CALL                             R8 1 1
       22 CONCAT                           R2 R6 R8
       23 FORNLOOP                         R3
       24 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["Visible"]
        8 JUMPIFNOT                        R0 ; [+7]
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K0 ["current"]
       12 NAMECALL                         R0 R0 K2 ["focus"]
       14 CALL                             R0 1 0
       15 RETURN                           R0 0
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K0 ["current"]
       19 NAMECALL                         R0 R0 K3 ["releaseFocus"]
       21 CALL                             R0 1 0
       22 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R1 K1 ["Cancel"] ; [+11]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K2 ["editProperty"]
        7 DUPTABLE                         R2 K5 [{[1] = "Cancel", ["part"] = }]
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K6 ["finishCombinedEdit"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 1
       15 JUMPIFNOT                        R1 ; [+88]
       16 GETUPVAL                         R1 2
       17 JUMPIFNOT                        R1 ; [+53]
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K7 ["predictOrCreateExpression"]
       21 GETTABLEKS                       R2 R0 K3 ["part"]
       23 GETTABLEKS                       R2 R2 K8 ["value"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K9 ["predictFromExpressionResults"]
       28 CALL                             R1 2 1
       29 GETTABLEKS                       R2 R1 K0 ["type"]
       31 JUMPIFNOTEQKS                    R2 K10 ["error"] ; [+8]
       33 GETUPVAL                         R2 4
       34 GETTABLEKS                       R2 R2 K11 ["warn"]
       36 GETTABLEKS                       R3 R1 K12 ["warning"]
       38 CALL                             R2 1 0
       39 JUMP                             ; [+26]
       40 GETTABLEKS                       R2 R1 K8 ["value"]
       42 JUMPIFEQKNIL                     R2 ; [+23]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K2 ["editProperty"]
       47 DUPTABLE                         R3 K13 [{"type", "part"}]
       48 GETTABLEKS                       R4 R0 K0 ["type"]
       50 SETTABLEKS                       R4 R3 K0 ["type"]
       52 DUPTABLE                         R4 K15 [{"name", "value"}]
       53 GETTABLEKS                       R5 R0 K3 ["part"]
       55 GETTABLEKS                       R5 R5 K14 ["name"]
       57 SETTABLEKS                       R5 R4 K14 ["name"]
       59 GETTABLEKS                       R5 R1 K8 ["value"]
       61 SETTABLEKS                       R5 R4 K8 ["value"]
       63 SETTABLEKS                       R4 R3 K3 ["part"]
       65 CALL                             R2 1 0
       66 GETUPVAL                         R2 0
       67 GETTABLEKS                       R2 R2 K6 ["finishCombinedEdit"]
       69 CALL                             R2 0 0
       70 RETURN                           R0 0
       71 GETUPVAL                         R1 0
       72 GETTABLEKS                       R1 R1 K2 ["editProperty"]
       74 DUPTABLE                         R2 K13 [{"type", "part"}]
       75 GETTABLEKS                       R3 R0 K0 ["type"]
       77 SETTABLEKS                       R3 R2 K0 ["type"]
       79 DUPTABLE                         R3 K15 [{"name", "value"}]
       80 GETTABLEKS                       R4 R0 K3 ["part"]
       82 GETTABLEKS                       R4 R4 K14 ["name"]
       84 SETTABLEKS                       R4 R3 K14 ["name"]
       86 GETUPVAL                         R4 3
       87 GETTABLEKS                       R4 R4 K16 ["createExpressionFromText"]
       89 GETTABLEKS                       R5 R0 K3 ["part"]
       91 GETTABLEKS                       R5 R5 K8 ["value"]
       93 CALL                             R4 1 1
       94 SETTABLEKS                       R4 R3 K8 ["value"]
       96 SETTABLEKS                       R3 R2 K3 ["part"]
       98 CALL                             R1 1 0
       99 GETUPVAL                         R1 0
      100 GETTABLEKS                       R1 R1 K6 ["finishCombinedEdit"]
      102 CALL                             R1 0 0
      103 RETURN                           R0 0
      104 GETUPVAL                         R1 5
      105 GETTABLEKS                       R3 R0 K3 ["part"]
      107 GETTABLEKS                       R3 R3 K8 ["value"]
      109 ORK                              R2 R3 K17 [""]
      110 CALL                             R1 1 1
      111 GETTABLEN                        R3 R1 1
      112 FASTCALL1                        TONUMBER R3 ; [+2]
      113 GETIMPORT                        R2 K19 [tonumber]
      115 CALL                             R2 1 1
      116 GETUPVAL                         R3 6
      117 MOVE                             R4 R1
      118 GETUPVAL                         R6 0
      119 GETTABLEKS                       R6 R6 K20 ["partConfigs"]
      121 LENGTH                           R5 R6
      122 CALL                             R3 2 1
      123 LENGTH                           R4 R1
      124 JUMPIFNOTEQKN                    R4 K21 [1] ; [+27]
      126 JUMPIFEQKNIL                     R2 ; [+25]
      128 JUMPIFNOT                        R3 ; [+23]
      129 GETUPVAL                         R4 0
      130 GETTABLEKS                       R4 R4 K20 ["partConfigs"]
      132 LOADNIL                          R5
      133 LOADNIL                          R6
      134 FORGPREP                         R4
      135 GETUPVAL                         R9 0
      136 GETTABLEKS                       R9 R9 K2 ["editProperty"]
      138 DUPTABLE                         R10 K23 [{[1] = "Stage", ["part"]}]
      139 DUPTABLE                         R11 K15 [{"name", "value"}]
      140 GETTABLEKS                       R12 R8 K14 ["name"]
      142 SETTABLEKS                       R12 R11 K14 ["name"]
      144 SETTABLEKS                       R2 R11 K8 ["value"]
      146 SETTABLEKS                       R11 R10 K3 ["part"]
      148 CALL                             R9 1 0
      149 FORGLOOP                         R4 2 ; [-15]
      151 JUMP                             ; [+29]
      152 JUMPIFNOT                        R3 ; [+28]
      153 GETUPVAL                         R4 0
      154 GETTABLEKS                       R4 R4 K20 ["partConfigs"]
      156 LOADNIL                          R5
      157 LOADNIL                          R6
      158 FORGPREP                         R4
      159 GETTABLE                         R10 R1 R7
      160 FASTCALL1                        TONUMBER R10 ; [+2]
      161 GETIMPORT                        R9 K19 [tonumber]
      163 CALL                             R9 1 1
      164 GETUPVAL                         R10 0
      165 GETTABLEKS                       R10 R10 K2 ["editProperty"]
      167 DUPTABLE                         R11 K23 [{[1] = "Stage", ["part"]}]
      168 DUPTABLE                         R12 K15 [{"name", "value"}]
      169 GETTABLEKS                       R13 R8 K14 ["name"]
      171 SETTABLEKS                       R13 R12 K14 ["name"]
      173 ORK                              R13 R9 K24 [0]
      174 SETTABLEKS                       R13 R12 K8 ["value"]
      176 SETTABLEKS                       R12 R11 K3 ["part"]
      178 CALL                             R10 1 0
      179 FORGLOOP                         R4 2 ; [-21]
      181 GETUPVAL                         R4 0
      182 GETTABLEKS                       R4 R4 K2 ["editProperty"]
      184 DUPTABLE                         R5 K26 [{[1] = "Commit"}]
      185 CALL                             R4 1 0
      186 GETUPVAL                         R4 0
      187 GETTABLEKS                       R4 R4 K6 ["finishCombinedEdit"]
      189 CALL                             R4 0 0
      190 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["parts"]
        2 GETTABLEKS                       R2 R2 K1 ["value"]
        4 GETTABLEKS                       R2 R2 K2 ["multiple"]
        6 JUMPIFNOT                        R2 ; [+2]
        7 LOADK                            R1 K3 [""]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R2 R0 K0 ["parts"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K4 ["partConfigs"]
       15 CALL                             R1 2 1
       16 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useSignalBinding"]
       10 GETTABLEKS                       R3 R0 K3 ["getInfo"]
       12 CALL                             R2 1 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K4 ["useSignalState"]
       16 GETTABLEKS                       R4 R0 K3 ["getInfo"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R3 R3 K5 ["readonly"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K6 ["useRef"]
       24 LOADNIL                          R5
       25 CALL                             R4 1 1
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K7 ["useEffect"]
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R7 0 1
       34 GETTABLEKS                       R8 R0 K8 ["Visible"]
       36 SETLIST                          R7 R8 1 [1]
       38 CALL                             R5 2 0
       39 GETUPVAL                         R5 3
       40 NEWCLOSURE                       R6 P1
       41 CAPTURE                          VAL R0
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          UPVAL U8
       48 CALL                             R5 1 1
       49 GETUPVAL                         R6 9
       50 GETUPVAL                         R7 10
       51 DUPTABLE                         R8 K12 [{"text", "readonly", "editText", "textBoxRef", "Visible"}]
       52 NEWCLOSURE                       R11 P2
       53 CAPTURE                          UPVAL U11
       54 CAPTURE                          VAL R0
       55 NAMECALL                         R9 R2 K13 ["map"]
       57 CALL                             R9 2 1
       58 SETTABLEKS                       R9 R8 K9 ["text"]
       60 SETTABLEKS                       R3 R8 K5 ["readonly"]
       62 SETTABLEKS                       R5 R8 K10 ["editText"]
       64 SETTABLEKS                       R4 R8 K11 ["textBoxRef"]
       66 GETTABLEKS                       R9 R0 K8 ["Visible"]
       68 SETTABLEKS                       R9 R8 K8 ["Visible"]
       70 CALL                             R6 2 -1
       71 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Guest"]
       13 GETTABLEKS                       R3 R3 K8 ["CapturableWarnings"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Util"]
       20 GETTABLEKS                       R4 R4 K10 ["NumberDisplay"]
       22 GETTABLEKS                       R4 R4 K11 ["Parsing"]
       24 GETTABLEKS                       R4 R4 K12 ["MultiInput"]
       26 GETTABLEKS                       R4 R4 K13 ["DEPRECATED_stringsFromMultiInputString"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R0 K14 ["Components"]
       33 GETTABLEKS                       R5 R5 K15 ["EditorTextbox"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K6 [require]
       38 GETTABLEKS                       R6 R0 K16 ["Flags"]
       40 GETTABLEKS                       R6 R6 K17 ["EngineFeatureLuauExpressionReferencesMethod"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R7 R0 K9 ["Util"]
       47 GETTABLEKS                       R7 R7 K18 ["Expressions"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K6 [require]
       52 GETTABLEKS                       R8 R0 K16 ["Flags"]
       54 GETTABLEKS                       R8 R8 K19 ["LuauExpressionsEnabled"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K6 [require]
       59 GETTABLEKS                       R9 R0 K14 ["Components"]
       61 GETTABLEKS                       R9 R9 K9 ["Util"]
       63 GETTABLEKS                       R9 R9 K20 ["Number"]
       65 GETTABLEKS                       R9 R9 K21 ["MultiNumberInput"]
       67 GETTABLEKS                       R9 R9 K22 ["NumberPartInput"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K6 [require]
       72 GETTABLEKS                       R10 R0 K23 ["PropertyEditorTypes"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K6 [require]
       77 GETTABLEKS                       R11 R1 K24 ["React"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K6 [require]
       82 GETTABLEKS                       R12 R0 K25 ["RpcTypes"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K6 [require]
       87 GETTABLEKS                       R13 R1 K26 ["SignalsReact"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K6 [require]
       92 GETTABLEKS                       R14 R0 K9 ["Util"]
       94 GETTABLEKS                       R14 R14 K10 ["NumberDisplay"]
       96 GETTABLEKS                       R14 R14 K11 ["Parsing"]
       98 GETTABLEKS                       R14 R14 K12 ["MultiInput"]
      100 GETTABLEKS                       R14 R14 K27 ["anyValidNumbers"]
      102 CALL                             R13 1 1
      103 GETIMPORT                        R14 K6 [require]
      105 GETTABLEKS                       R15 R0 K9 ["Util"]
      107 GETTABLEKS                       R15 R15 K10 ["NumberDisplay"]
      109 GETTABLEKS                       R15 R15 K28 ["Formatting"]
      111 GETTABLEKS                       R15 R15 K29 ["formatForMultiInput"]
      113 CALL                             R14 1 1
      114 GETIMPORT                        R15 K6 [require]
      116 GETTABLEKS                       R16 R0 K30 ["Hooks"]
      118 GETTABLEKS                       R16 R16 K31 ["useFinalValue"]
      120 CALL                             R15 1 1
      121 GETTABLEKS                       R16 R10 K32 ["createElement"]
      123 DUPCLOSURE                       R17 K33 [PROTO_0]
      124 CAPTURE                          VAL R14
      125 DUPCLOSURE                       R18 K34 [PROTO_4]
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R12
      129 CAPTURE                          VAL R15
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R6
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R17
      138 GETTABLEKS                       R19 R10 K35 ["memo"]
      140 MOVE                             R20 R18
      141 CALL                             R19 1 -1
      142 RETURN                           R19 -1
