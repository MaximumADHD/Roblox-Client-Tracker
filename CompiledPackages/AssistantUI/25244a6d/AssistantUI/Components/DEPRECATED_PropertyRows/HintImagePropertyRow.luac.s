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
       15 LOADNIL                          R2
       16 CALL                             R1 1 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K3 ["FFlagAssistantHintImageAsUri"]
       20 JUMPIFNOT                        R1 ; [+31]
       21 GETUPVAL                         R1 3
       22 GETTABLEKS                       R1 R1 K4 ["storeImage"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 1
       26 GETUPVAL                         R2 4
       27 MOVE                             R3 R1
       28 CALL                             R2 1 0
       29 GETUPVAL                         R2 5
       30 GETTABLEKS                       R2 R2 K5 ["onChange"]
       32 JUMPIFNOT                        R2 ; [+5]
       33 GETUPVAL                         R2 5
       34 GETTABLEKS                       R2 R2 K5 ["onChange"]
       36 MOVE                             R3 R1
       37 CALL                             R2 1 0
       38 GETUPVAL                         R2 5
       39 GETTABLEKS                       R2 R2 K6 ["definition"]
       41 GETTABLEKS                       R2 R2 K7 ["onChanged"]
       43 JUMPIFNOT                        R2 ; [+33]
       44 GETUPVAL                         R2 5
       45 GETTABLEKS                       R2 R2 K6 ["definition"]
       47 GETTABLEKS                       R2 R2 K7 ["onChanged"]
       49 MOVE                             R3 R1
       50 CALL                             R2 1 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R1 4
       53 MOVE                             R2 R0
       54 CALL                             R1 1 0
       55 GETUPVAL                         R1 5
       56 GETTABLEKS                       R1 R1 K5 ["onChange"]
       58 JUMPIFNOT                        R1 ; [+5]
       59 GETUPVAL                         R1 5
       60 GETTABLEKS                       R1 R1 K5 ["onChange"]
       62 MOVE                             R2 R0
       63 CALL                             R1 1 0
       64 GETUPVAL                         R1 5
       65 GETTABLEKS                       R1 R1 K6 ["definition"]
       67 GETTABLEKS                       R1 R1 K7 ["onChanged"]
       69 JUMPIFNOT                        R1 ; [+7]
       70 GETUPVAL                         R1 5
       71 GETTABLEKS                       R1 R1 K6 ["definition"]
       73 GETTABLEKS                       R1 R1 K7 ["onChanged"]
       75 MOVE                             R2 R0
       76 CALL                             R1 1 0
       77 RETURN                           R0 0

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
       27 LOADNIL                          R6
       28 GETUPVAL                         R7 4
       29 GETTABLEKS                       R7 R7 K7 ["FFlagAssistantHintImageAsUri"]
       31 JUMPIFNOT                        R7 ; [+7]
       32 GETUPVAL                         R7 5
       33 GETTABLEKS                       R7 R7 K8 ["resolveImage"]
       35 MOVE                             R8 R4
       36 CALL                             R7 1 1
       37 MOVE                             R6 R7
       38 JUMP                             ; [+13]
       39 FASTCALL1                        TYPEOF R4 ; [+3]
       40 MOVE                             R8 R4
       41 GETIMPORT                        R7 K10 [typeof]
       43 CALL                             R7 1 1
       44 JUMPIFNOTEQKS                    R7 K11 ["string"] ; [+6]
       46 GETIMPORT                        R7 K13 [error]
       48 LOADK                            R8 K14 ["hint image URI unexpected when FFlagAssistantHintImageAsUri is off"]
       49 CALL                             R7 1 0
       50 JUMP                             ; [+1]
       51 MOVE                             R6 R4
       52 GETUPVAL                         R7 2
       53 GETTABLEKS                       R7 R7 K5 ["useState"]
       55 LOADNIL                          R8
       56 CALL                             R7 1 2
       57 GETUPVAL                         R9 6
       58 GETTABLEKS                       R9 R9 K15 ["useAsync"]
       60 NEWCLOSURE                       R10 P1
       61 CAPTURE                          VAL R7
       62 CAPTURE                          UPVAL U7
       63 NEWTABLE                         R11 0 1
       65 MOVE                             R12 R7
       66 SETLIST                          R11 R12 1 [1]
       68 CALL                             R9 2 1
       69 LOADB                            R10 0
       70 JUMPIFEQKNIL                     R9 ; [+7]
       72 GETTABLEKS                       R11 R9 K16 ["status"]
       74 JUMPIFEQKS                       R11 K17 ["loading"] ; [+2]
       76 LOADB                            R10 0 +1
       77 LOADB                            R10 1
       78 JUMPIFEQKNIL                     R9 ; [+8]
       80 GETTABLEKS                       R12 R9 K16 ["status"]
       82 JUMPIFNOTEQKS                    R12 K12 ["error"] ; [+4]
       84 GETTABLEKS                       R11 R9 K18 ["problem"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R11
       88 GETUPVAL                         R12 2
       89 GETTABLEKS                       R12 R12 K19 ["useEffect"]
       91 NEWCLOSURE                       R13 P2
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R8
       94 CAPTURE                          UPVAL U4
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          VAL R5
       97 CAPTURE                          VAL R0
       98 NEWTABLE                         R14 0 1
      100 MOVE                             R15 R9
      101 SETLIST                          R14 R15 1 [1]
      103 CALL                             R12 2 0
      104 GETUPVAL                         R12 2
      105 GETTABLEKS                       R12 R12 K20 ["useCallback"]
      107 NEWCLOSURE                       R13 P3
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R0
      111 NEWTABLE                         R14 0 2
      113 GETTABLEKS                       R15 R0 K21 ["onChange"]
      115 GETTABLEKS                       R16 R0 K22 ["definition"]
      117 GETTABLEKS                       R16 R16 K23 ["onChanged"]
      119 SETLIST                          R14 R15 2 [1]
      121 CALL                             R12 2 1
      122 GETUPVAL                         R13 2
      123 GETTABLEKS                       R13 R13 K20 ["useCallback"]
      125 NEWCLOSURE                       R14 P4
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R0
      128 CAPTURE                          VAL R8
      129 NEWTABLE                         R15 0 2
      131 MOVE                             R16 R10
      132 GETTABLEKS                       R17 R0 K24 ["isDisabled"]
      134 SETLIST                          R15 R16 2 [1]
      136 CALL                             R13 2 1
      137 GETUPVAL                         R14 8
      138 GETUPVAL                         R15 9
      139 DUPTABLE                         R16 K28 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["LayoutOrder"]}]
      140 GETTABLEKS                       R17 R0 K27 ["LayoutOrder"]
      142 SETTABLEKS                       R17 R16 K27 ["LayoutOrder"]
      144 DUPTABLE                         R17 K32 [{"SizeConstraint", "PreviewOrButton", "ErrorLabel"}]
      145 GETUPVAL                         R18 8
      146 LOADK                            R19 K33 ["UISizeConstraint"]
      147 DUPTABLE                         R20 K35 [{"MinSize"}]
      148 GETIMPORT                        R21 K38 [Vector2.new]
      150 LOADN                            R22 0
      151 GETTABLEKS                       R23 R1 K39 ["Size"]
      153 GETTABLEKS                       R23 R23 K40 ["Size_1800"]
      155 CALL                             R21 2 1
      156 SETTABLEKS                       R21 R20 K34 ["MinSize"]
      158 CALL                             R18 2 1
      159 SETTABLEKS                       R18 R17 K29 ["SizeConstraint"]
      161 JUMPIFNOT                        R6 ; [+15]
      162 GETUPVAL                         R18 8
      163 GETUPVAL                         R19 10
      164 DUPTABLE                         R20 K43 [{"imageData", "onRemove", "LayoutOrder"}]
      165 GETTABLEKS                       R21 R6 K44 ["data"]
      167 SETTABLEKS                       R21 R20 K41 ["imageData"]
      169 SETTABLEKS                       R12 R20 K42 ["onRemove"]
      171 MOVE                             R21 R2
      172 CALL                             R21 0 1
      173 SETTABLEKS                       R21 R20 K27 ["LayoutOrder"]
      175 CALL                             R18 2 1
      176 JUMP                             ; [+61]
      177 GETUPVAL                         R18 8
      178 GETUPVAL                         R19 11
      179 DUPTABLE                         R20 K52 [{"text", "size", "variant", "width", "isLoading", "isDisabled", "onActivated", "testId", "LayoutOrder"}]
      180 GETTABLEKS                       R21 R3 K53 ["Upload"]
      182 SETTABLEKS                       R21 R20 K45 ["text"]
      184 GETUPVAL                         R21 0
      185 GETTABLEKS                       R21 R21 K54 ["Enums"]
      187 GETTABLEKS                       R21 R21 K55 ["InputSize"]
      189 GETTABLEKS                       R21 R21 K56 ["Small"]
      191 SETTABLEKS                       R21 R20 K46 ["size"]
      193 GETUPVAL                         R21 0
      194 GETTABLEKS                       R21 R21 K54 ["Enums"]
      196 GETTABLEKS                       R21 R21 K57 ["ButtonVariant"]
      198 GETTABLEKS                       R21 R21 K58 ["Standard"]
      200 SETTABLEKS                       R21 R20 K47 ["variant"]
      202 GETUPVAL                         R22 4
      203 GETTABLEKS                       R22 R22 K59 ["FFlagAssistantSegmentationUIFixes"]
      205 JUMPIFNOT                        R22 ; [+9]
      206 GETIMPORT                        R21 K61 [UDim.new]
      208 LOADN                            R22 0
      209 GETTABLEKS                       R23 R1 K39 ["Size"]
      211 GETTABLEKS                       R23 R23 K62 ["Size_2500"]
      213 CALL                             R21 2 1
      214 JUMP                             ; [+1]
      215 LOADNIL                          R21
      216 SETTABLEKS                       R21 R20 K48 ["width"]
      218 SETTABLEKS                       R10 R20 K49 ["isLoading"]
      220 GETTABLEKS                       R21 R0 K24 ["isDisabled"]
      222 SETTABLEKS                       R21 R20 K24 ["isDisabled"]
      224 SETTABLEKS                       R13 R20 K50 ["onActivated"]
      226 GETUPVAL                         R21 12
      227 GETTABLEKS                       R21 R21 K63 ["SegmentationPropertyRow"]
      229 GETTABLEKS                       R21 R21 K64 ["UploadButton"]
      231 SETTABLEKS                       R21 R20 K51 ["testId"]
      233 MOVE                             R21 R2
      234 CALL                             R21 0 1
      235 SETTABLEKS                       R21 R20 K27 ["LayoutOrder"]
      237 CALL                             R18 2 1
      238 SETTABLEKS                       R18 R17 K30 ["PreviewOrButton"]
      240 JUMPIFNOT                        R11 ; [+11]
      241 GETUPVAL                         R18 8
      242 GETUPVAL                         R19 13
      243 DUPTABLE                         R20 K67 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-alert", ["Text"], ["LayoutOrder"]}]
      244 SETTABLEKS                       R11 R20 K66 ["Text"]
      246 MOVE                             R21 R2
      247 CALL                             R21 0 1
      248 SETTABLEKS                       R21 R20 K27 ["LayoutOrder"]
      250 CALL                             R18 2 1
      251 JUMP                             ; [+1]
      252 LOADNIL                          R18
      253 SETTABLEKS                       R18 R17 K31 ["ErrorLabel"]
      255 CALL                             R14 3 -1
      256 RETURN                           R14 -1

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
       30 GETTABLEKS                       R5 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R5 K12 ["ImageContentStore"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["React"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K8 ["Parent"]
       46 GETTABLEKS                       R7 R7 K14 ["ReactUtils"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K15 ["Resources"]
       53 GETTABLEKS                       R8 R8 K16 ["Localization"]
       55 GETTABLEKS                       R8 R8 K17 ["Translator"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K18 ["Types"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETTABLEKS                       R10 R0 K19 ["Flags"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETIMPORT                        R11 K1 [script]
       72 GETTABLEKS                       R11 R11 K8 ["Parent"]
       74 GETTABLEKS                       R11 R11 K20 ["PropertyRowTypes"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K10 ["Util"]
       81 GETTABLEKS                       R12 R12 K21 ["TestIds"]
       83 CALL                             R11 1 1
       84 GETTABLEKS                       R12 R2 K22 ["Button"]
       86 GETTABLEKS                       R13 R2 K23 ["Text"]
       88 GETTABLEKS                       R14 R2 K24 ["View"]
       90 GETTABLEKS                       R15 R6 K25 ["createNextOrder"]
       92 GETTABLEKS                       R16 R5 K26 ["createElement"]
       94 DUPCLOSURE                       R17 K27 [PROTO_5]
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R15
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R16
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R13
      109 DUPCLOSURE                       R18 K28 [PROTO_6]
      110 CAPTURE                          VAL R10
      111 DUPTABLE                         R19 K31 [{"HintImagePropertyRow", "createRowDefinition"}]
      112 SETTABLEKS                       R17 R19 K29 ["HintImagePropertyRow"]
      114 SETTABLEKS                       R18 R19 K30 ["createRowDefinition"]
      116 RETURN                           R19 1
