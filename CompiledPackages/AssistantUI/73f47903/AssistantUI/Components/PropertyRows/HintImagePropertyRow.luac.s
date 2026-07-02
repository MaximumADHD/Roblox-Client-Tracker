PROTO_0:
        0 DUPTABLE                         R0 K1 [{"Upload"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K2 ["Image"]
        3 LOADK                            R4 K3 ["Uploadf"]
        4 NAMECALL                         R1 R1 K4 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["Upload"]
        9 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["promptAndLoadImageAsync"]
        8 CALL                             R0 0 -1
        9 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["status"]
        3 JUMPIFNOTEQKS                    R0 K1 ["ok"] ; [+6]
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K2 ["value"]
        8 JUMPIFNOTEQKNIL                  R0 ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K2 ["value"]
       14 GETUPVAL                         R1 1
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 2
       18 LOADNIL                          R2
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 3
       21 GETTABLEKS                       R1 R1 K3 ["onChange"]
       23 JUMPIFNOT                        R1 ; [+5]
       24 GETUPVAL                         R1 3
       25 GETTABLEKS                       R1 R1 K3 ["onChange"]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 0
       29 GETUPVAL                         R1 3
       30 GETTABLEKS                       R1 R1 K4 ["definition"]
       32 GETTABLEKS                       R1 R1 K5 ["onChanged"]
       34 JUMPIFNOT                        R1 ; [+7]
       35 GETUPVAL                         R1 3
       36 GETTABLEKS                       R1 R1 K4 ["definition"]
       38 GETTABLEKS                       R1 R1 K5 ["onChanged"]
       40 MOVE                             R2 R0
       41 CALL                             R1 1 0
       42 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADNIL                          R1
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K0 ["onChange"]
        9 JUMPIFNOT                        R0 ; [+5]
       10 GETUPVAL                         R0 2
       11 GETTABLEKS                       R0 R0 K0 ["onChange"]
       13 LOADNIL                          R1
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K1 ["definition"]
       18 GETTABLEKS                       R0 R0 K2 ["onChanged"]
       20 JUMPIFNOT                        R0 ; [+7]
       21 GETUPVAL                         R0 2
       22 GETTABLEKS                       R0 R0 K1 ["definition"]
       24 GETTABLEKS                       R0 R0 K2 ["onChanged"]
       26 LOADNIL                          R1
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["isDisabled"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 GETIMPORT                        R1 K3 [os.clock]
       10 CALL                             R1 0 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       11 DUPCLOSURE                       R4 K3 [PROTO_0]
       12 CAPTURE                          UPVAL U3
       13 NEWTABLE                         R5 0 1
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K4 ["locale"]
       18 SETLIST                          R5 R6 1 [1]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R4 R4 K5 ["useState"]
       24 GETTABLEKS                       R5 R0 K6 ["value"]
       26 CALL                             R4 1 2
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R6 R6 K5 ["useState"]
       30 LOADNIL                          R7
       31 CALL                             R6 1 2
       32 GETUPVAL                         R8 4
       33 GETTABLEKS                       R8 R8 K7 ["useAsync"]
       35 NEWCLOSURE                       R9 P1
       36 CAPTURE                          VAL R6
       37 CAPTURE                          UPVAL U5
       38 NEWTABLE                         R10 0 1
       40 MOVE                             R11 R6
       41 SETLIST                          R10 R11 1 [1]
       43 CALL                             R8 2 1
       44 LOADB                            R9 0
       45 JUMPIFEQKNIL                     R8 ; [+7]
       47 GETTABLEKS                       R10 R8 K8 ["status"]
       49 JUMPIFEQKS                       R10 K9 ["loading"] ; [+2]
       51 LOADB                            R9 0 +1
       52 LOADB                            R9 1
       53 JUMPIFEQKNIL                     R8 ; [+8]
       55 GETTABLEKS                       R11 R8 K8 ["status"]
       57 JUMPIFNOTEQKS                    R11 K10 ["error"] ; [+4]
       59 GETTABLEKS                       R10 R8 K11 ["problem"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R10
       63 GETUPVAL                         R11 2
       64 GETTABLEKS                       R11 R11 K12 ["useEffect"]
       66 NEWCLOSURE                       R12 P2
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R0
       71 NEWTABLE                         R13 0 1
       73 MOVE                             R14 R8
       74 SETLIST                          R13 R14 1 [1]
       76 CALL                             R11 2 0
       77 GETUPVAL                         R11 2
       78 GETTABLEKS                       R11 R11 K13 ["useCallback"]
       80 NEWCLOSURE                       R12 P3
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R0
       84 NEWTABLE                         R13 0 2
       86 GETTABLEKS                       R14 R0 K14 ["onChange"]
       88 GETTABLEKS                       R15 R0 K15 ["definition"]
       90 GETTABLEKS                       R15 R15 K16 ["onChanged"]
       92 SETLIST                          R13 R14 2 [1]
       94 CALL                             R11 2 1
       95 GETUPVAL                         R12 2
       96 GETTABLEKS                       R12 R12 K13 ["useCallback"]
       98 NEWCLOSURE                       R13 P4
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R0
      101 CAPTURE                          VAL R7
      102 NEWTABLE                         R14 0 2
      104 MOVE                             R15 R9
      105 GETTABLEKS                       R16 R0 K17 ["isDisabled"]
      107 SETLIST                          R14 R15 2 [1]
      109 CALL                             R12 2 1
      110 GETUPVAL                         R13 6
      111 GETUPVAL                         R14 7
      112 DUPTABLE                         R15 K21 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["LayoutOrder"]}]
      113 GETTABLEKS                       R16 R0 K20 ["LayoutOrder"]
      115 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
      117 DUPTABLE                         R16 K25 [{"SizeConstraint", "PreviewOrButton", "ErrorLabel"}]
      118 GETUPVAL                         R17 6
      119 LOADK                            R18 K26 ["UISizeConstraint"]
      120 DUPTABLE                         R19 K28 [{"MinSize"}]
      121 GETIMPORT                        R20 K31 [Vector2.new]
      123 LOADN                            R21 0
      124 GETTABLEKS                       R22 R1 K32 ["Size"]
      126 GETTABLEKS                       R22 R22 K33 ["Size_1800"]
      128 CALL                             R20 2 1
      129 SETTABLEKS                       R20 R19 K27 ["MinSize"]
      131 CALL                             R17 2 1
      132 SETTABLEKS                       R17 R16 K22 ["SizeConstraint"]
      134 JUMPIFNOT                        R4 ; [+15]
      135 GETUPVAL                         R17 6
      136 GETUPVAL                         R18 8
      137 DUPTABLE                         R19 K36 [{"imageData", "onRemove", "LayoutOrder"}]
      138 GETTABLEKS                       R20 R4 K37 ["data"]
      140 SETTABLEKS                       R20 R19 K34 ["imageData"]
      142 SETTABLEKS                       R11 R19 K35 ["onRemove"]
      144 MOVE                             R20 R2
      145 CALL                             R20 0 1
      146 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      148 CALL                             R17 2 1
      149 JUMP                             ; [+60]
      150 GETUPVAL                         R17 6
      151 GETUPVAL                         R18 9
      152 DUPTABLE                         R19 K45 [{"text", "size", "variant", "width", "isLoading", "isDisabled", "onActivated", "testId", "LayoutOrder"}]
      153 GETTABLEKS                       R20 R3 K46 ["Upload"]
      155 SETTABLEKS                       R20 R19 K38 ["text"]
      157 GETUPVAL                         R20 0
      158 GETTABLEKS                       R20 R20 K47 ["Enums"]
      160 GETTABLEKS                       R20 R20 K48 ["InputSize"]
      162 GETTABLEKS                       R20 R20 K49 ["Small"]
      164 SETTABLEKS                       R20 R19 K39 ["size"]
      166 GETUPVAL                         R20 0
      167 GETTABLEKS                       R20 R20 K47 ["Enums"]
      169 GETTABLEKS                       R20 R20 K50 ["ButtonVariant"]
      171 GETTABLEKS                       R20 R20 K51 ["Standard"]
      173 SETTABLEKS                       R20 R19 K40 ["variant"]
      175 GETUPVAL                         R21 10
      176 CALL                             R21 0 1
      177 JUMPIFNOT                        R21 ; [+9]
      178 GETIMPORT                        R20 K53 [UDim.new]
      180 LOADN                            R21 0
      181 GETTABLEKS                       R22 R1 K32 ["Size"]
      183 GETTABLEKS                       R22 R22 K54 ["Size_2500"]
      185 CALL                             R20 2 1
      186 JUMP                             ; [+1]
      187 LOADNIL                          R20
      188 SETTABLEKS                       R20 R19 K41 ["width"]
      190 SETTABLEKS                       R9 R19 K42 ["isLoading"]
      192 GETTABLEKS                       R20 R0 K17 ["isDisabled"]
      194 SETTABLEKS                       R20 R19 K17 ["isDisabled"]
      196 SETTABLEKS                       R12 R19 K43 ["onActivated"]
      198 GETUPVAL                         R20 11
      199 GETTABLEKS                       R20 R20 K55 ["SegmentationPropertyRow"]
      201 GETTABLEKS                       R20 R20 K56 ["UploadButton"]
      203 SETTABLEKS                       R20 R19 K44 ["testId"]
      205 MOVE                             R20 R2
      206 CALL                             R20 0 1
      207 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      209 CALL                             R17 2 1
      210 SETTABLEKS                       R17 R16 K23 ["PreviewOrButton"]
      212 JUMPIFNOT                        R10 ; [+11]
      213 GETUPVAL                         R17 6
      214 GETUPVAL                         R18 12
      215 DUPTABLE                         R19 K59 [{["tag"] = "auto-xy text-body-small text-wrap text-align-x-left content-alert", ["Text"], ["LayoutOrder"]}]
      216 SETTABLEKS                       R10 R19 K58 ["Text"]
      218 MOVE                             R20 R2
      219 CALL                             R20 0 1
      220 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
      222 CALL                             R17 2 1
      223 JUMP                             ; [+1]
      224 LOADNIL                          R17
      225 SETTABLEKS                       R17 R16 K24 ["ErrorLabel"]
      227 CALL                             R13 3 -1
      228 RETURN                           R13 -1

PROTO_6:
        0 DUPTABLE                         R1 K7 [{"type", "label", "prop", "initialValue", "initialVisible", "registerSetVisible", "onChanged"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K8 ["ROW_TYPES"]
        4 GETTABLEKS                       R2 R2 K9 ["HintImage"]
        6 SETTABLEKS                       R2 R1 K0 ["type"]
        8 GETTABLEKS                       R2 R0 K1 ["label"]
       10 SETTABLEKS                       R2 R1 K1 ["label"]
       12 GETTABLEKS                       R2 R0 K2 ["prop"]
       14 SETTABLEKS                       R2 R1 K2 ["prop"]
       16 GETTABLEKS                       R2 R0 K3 ["initialValue"]
       18 SETTABLEKS                       R2 R1 K3 ["initialValue"]
       20 GETTABLEKS                       R2 R0 K4 ["initialVisible"]
       22 SETTABLEKS                       R2 R1 K4 ["initialVisible"]
       24 GETTABLEKS                       R2 R0 K5 ["registerSetVisible"]
       26 SETTABLEKS                       R2 R1 K5 ["registerSetVisible"]
       28 GETTABLEKS                       R2 R0 K6 ["onChanged"]
       30 SETTABLEKS                       R2 R1 K6 ["onChanged"]
       32 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["AttachedImagePreview"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Util"]
       25 GETTABLEKS                       R4 R4 K11 ["ImageAttachmentUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K12 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K14 ["Resources"]
       46 GETTABLEKS                       R7 R7 K15 ["Localization"]
       48 GETTABLEKS                       R7 R7 K16 ["Translator"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K17 ["Types"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K18 ["Flags"]
       60 GETTABLEKS                       R9 R9 K19 ["FFlagAssistantSegmentationUIFixes"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETIMPORT                        R10 K1 [script]
       67 GETTABLEKS                       R10 R10 K8 ["Parent"]
       69 GETTABLEKS                       R10 R10 K20 ["PropertyRowTypes"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R0 K10 ["Util"]
       76 GETTABLEKS                       R11 R11 K21 ["TestIds"]
       78 CALL                             R10 1 1
       79 GETTABLEKS                       R11 R2 K22 ["Button"]
       81 GETTABLEKS                       R12 R2 K23 ["Text"]
       83 GETTABLEKS                       R13 R2 K24 ["View"]
       85 GETTABLEKS                       R14 R5 K25 ["createNextOrder"]
       87 GETTABLEKS                       R15 R4 K26 ["createElement"]
       89 DUPCLOSURE                       R16 K27 [PROTO_5]
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R5
       95 CAPTURE                          VAL R3
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R13
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R12
      103 DUPCLOSURE                       R17 K28 [PROTO_6]
      104 CAPTURE                          VAL R9
      105 DUPTABLE                         R18 K31 [{"HintImagePropertyRow", "createRowDefinition"}]
      106 SETTABLEKS                       R16 R18 K29 ["HintImagePropertyRow"]
      108 SETTABLEKS                       R17 R18 K30 ["createRowDefinition"]
      110 RETURN                           R18 1
