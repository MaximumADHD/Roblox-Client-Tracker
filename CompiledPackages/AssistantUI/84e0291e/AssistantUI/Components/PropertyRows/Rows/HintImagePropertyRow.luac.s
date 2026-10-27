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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["value"]
        3 FASTCALL1                        TYPEOF R1 ; [+2]
        4 GETIMPORT                        R0 K2 [typeof]
        6 CALL                             R0 1 1
        7 JUMPIFNOTEQKS                    R0 K3 ["string"] ; [+9]
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K4 ["getImage"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K0 ["value"]
       15 CALL                             R0 1 -1
       16 RETURN                           R0 -1
       17 GETUPVAL                         R0 0
       18 GETTABLEKS                       R0 R0 K0 ["value"]
       20 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["promptAndLoadImageAsync"]
        8 CALL                             R0 0 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["status"]
        3 JUMPIFEQKS                       R0 K1 ["ok"] ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["value"]
        9 JUMPIFNOTEQKNIL                  R0 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K3 ["interactable"]
       15 JUMPIF                           R1 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 2
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 GETUPVAL                         R1 3
       21 LOADNIL                          R2
       22 CALL                             R1 1 0
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K4 ["setValue"]
       26 MOVE                             R2 R0
       27 CALL                             R1 1 0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["interactable"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 LOADNIL                          R1
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K1 ["setValue"]
       14 LOADNIL                          R1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["interactable"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 2
        8 GETIMPORT                        R1 K3 [os.clock]
       10 CALL                             R1 0 -1
       11 CALL                             R0 -1 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useMemo"]
        9 DUPCLOSURE                       R3 K3 [PROTO_0]
       10 CAPTURE                          UPVAL U2
       11 NEWTABLE                         R4 0 1
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K4 ["locale"]
       16 SETLIST                          R4 R5 1 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K5 ["useState"]
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U3
       25 CALL                             R3 1 2
       26 LOADB                            R5 0
       27 JUMPIFNOTEQKNIL                  R3 ; [+16]
       29 LOADB                            R5 0
       30 GETTABLEKS                       R7 R0 K6 ["value"]
       32 FASTCALL1                        TYPEOF R7 ; [+2]
       33 GETIMPORT                        R6 K8 [typeof]
       35 CALL                             R6 1 1
       36 JUMPIFNOTEQKS                    R6 K9 ["string"] ; [+7]
       38 GETTABLEKS                       R6 R0 K6 ["value"]
       40 JUMPIFNOTEQKS                    R6 K10 [""] ; [+2]
       42 LOADB                            R5 0 +1
       43 LOADB                            R5 1
       44 GETUPVAL                         R6 1
       45 GETTABLEKS                       R6 R6 K5 ["useState"]
       47 LOADNIL                          R7
       48 CALL                             R6 1 2
       49 GETUPVAL                         R8 4
       50 GETTABLEKS                       R8 R8 K11 ["useAsync"]
       52 NEWCLOSURE                       R9 P2
       53 CAPTURE                          VAL R6
       54 CAPTURE                          UPVAL U5
       55 NEWTABLE                         R10 0 1
       57 MOVE                             R11 R6
       58 SETLIST                          R10 R11 1 [1]
       60 CALL                             R8 2 1
       61 GETTABLEKS                       R10 R8 K12 ["status"]
       63 JUMPIFEQKS                       R10 K13 ["loading"] ; [+2]
       65 LOADB                            R9 0 +1
       66 LOADB                            R9 1
       67 GETTABLEKS                       R11 R8 K12 ["status"]
       69 JUMPIFNOTEQKS                    R11 K14 ["error"] ; [+4]
       71 GETTABLEKS                       R10 R8 K15 ["problem"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R10
       75 GETUPVAL                         R11 1
       76 GETTABLEKS                       R11 R11 K16 ["useEffect"]
       78 NEWCLOSURE                       R12 P3
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R7
       83 NEWTABLE                         R13 0 3
       85 MOVE                             R14 R8
       86 GETTABLEKS                       R15 R0 K17 ["interactable"]
       88 GETTABLEKS                       R16 R0 K18 ["setValue"]
       90 SETLIST                          R13 R14 3 [1]
       92 CALL                             R11 2 0
       93 GETUPVAL                         R11 1
       94 GETTABLEKS                       R11 R11 K19 ["useCallback"]
       96 NEWCLOSURE                       R12 P4
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R7
      100 NEWTABLE                         R13 0 2
      102 GETTABLEKS                       R14 R0 K17 ["interactable"]
      104 GETTABLEKS                       R15 R0 K18 ["setValue"]
      106 SETLIST                          R13 R14 2 [1]
      108 CALL                             R11 2 1
      109 GETUPVAL                         R12 1
      110 GETTABLEKS                       R12 R12 K19 ["useCallback"]
      112 NEWCLOSURE                       R13 P5
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R7
      116 NEWTABLE                         R14 0 2
      118 MOVE                             R15 R9
      119 GETTABLEKS                       R16 R0 K17 ["interactable"]
      121 SETLIST                          R14 R15 2 [1]
      123 CALL                             R12 2 1
      124 GETUPVAL                         R13 6
      125 CALL                             R13 0 1
      126 GETUPVAL                         R14 7
      127 GETUPVAL                         R15 8
      128 DUPTABLE                         R16 K23 [{["tag"] = "col gap-xxsmall size-full-0 auto-y", ["LayoutOrder"]}]
      129 GETTABLEKS                       R17 R0 K22 ["LayoutOrder"]
      131 SETTABLEKS                       R17 R16 K22 ["LayoutOrder"]
      133 DUPTABLE                         R17 K27 [{"SizeConstraint", "PreviewOrButton", "ErrorLabel"}]
      134 GETUPVAL                         R18 7
      135 LOADK                            R19 K28 ["UISizeConstraint"]
      136 DUPTABLE                         R20 K30 [{"MinSize"}]
      137 GETIMPORT                        R21 K33 [Vector2.new]
      139 LOADN                            R22 0
      140 GETTABLEKS                       R23 R1 K34 ["Size"]
      142 GETTABLEKS                       R23 R23 K35 ["Size_1800"]
      144 CALL                             R21 2 1
      145 SETTABLEKS                       R21 R20 K29 ["MinSize"]
      147 CALL                             R18 2 1
      148 SETTABLEKS                       R18 R17 K24 ["SizeConstraint"]
      150 JUMPIFNOT                        R3 ; [+21]
      151 GETUPVAL                         R18 7
      152 GETUPVAL                         R19 9
      153 DUPTABLE                         R20 K38 [{"imageData", "onRemove", "LayoutOrder"}]
      154 GETTABLEKS                       R21 R3 K39 ["data"]
      156 SETTABLEKS                       R21 R20 K36 ["imageData"]
      158 GETTABLEKS                       R22 R0 K17 ["interactable"]
      160 JUMPIFNOT                        R22 ; [+2]
      161 MOVE                             R21 R11
      162 JUMP                             ; [+1]
      163 LOADNIL                          R21
      164 SETTABLEKS                       R21 R20 K37 ["onRemove"]
      166 MOVE                             R21 R13
      167 CALL                             R21 0 1
      168 SETTABLEKS                       R21 R20 K22 ["LayoutOrder"]
      170 CALL                             R18 2 1
      171 JUMP                             ; [+84]
      172 JUMPIFNOT                        R5 ; [+21]
      173 GETUPVAL                         R18 7
      174 GETUPVAL                         R19 10
      175 DUPTABLE                         R20 K42 [{["tag"] = "radius-medium", ["Size"], ["Image"], ["LayoutOrder"]}]
      176 GETIMPORT                        R21 K45 [UDim2.fromOffset]
      178 LOADN                            R22 48
      179 LOADN                            R23 48
      180 CALL                             R21 2 1
      181 SETTABLEKS                       R21 R20 K34 ["Size"]
      183 GETUPVAL                         R21 11
      184 GETTABLEKS                       R21 R21 K46 ["UNAVAILABLE_IMAGE"]
      186 SETTABLEKS                       R21 R20 K41 ["Image"]
      188 MOVE                             R21 R13
      189 CALL                             R21 0 1
      190 SETTABLEKS                       R21 R20 K22 ["LayoutOrder"]
      192 CALL                             R18 2 1
      193 JUMP                             ; [+62]
      194 GETUPVAL                         R18 7
      195 GETUPVAL                         R19 12
      196 DUPTABLE                         R20 K55 [{"text", "size", "variant", "width", "isLoading", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      197 GETTABLEKS                       R21 R2 K56 ["Upload"]
      199 SETTABLEKS                       R21 R20 K47 ["text"]
      201 GETUPVAL                         R21 0
      202 GETTABLEKS                       R21 R21 K57 ["Enums"]
      204 GETTABLEKS                       R21 R21 K58 ["InputSize"]
      206 GETTABLEKS                       R21 R21 K59 ["Small"]
      208 SETTABLEKS                       R21 R20 K48 ["size"]
      210 GETUPVAL                         R21 0
      211 GETTABLEKS                       R21 R21 K57 ["Enums"]
      213 GETTABLEKS                       R21 R21 K60 ["ButtonVariant"]
      215 GETTABLEKS                       R21 R21 K61 ["Standard"]
      217 SETTABLEKS                       R21 R20 K49 ["variant"]
      219 GETUPVAL                         R22 13
      220 GETTABLEKS                       R22 R22 K62 ["FFlagAssistantSegmentationUIFixes"]
      222 JUMPIFNOT                        R22 ; [+9]
      223 GETIMPORT                        R21 K64 [UDim.new]
      225 LOADN                            R22 0
      226 GETTABLEKS                       R23 R1 K34 ["Size"]
      228 GETTABLEKS                       R23 R23 K65 ["Size_2500"]
      230 CALL                             R21 2 1
      231 JUMP                             ; [+1]
      232 LOADNIL                          R21
      233 SETTABLEKS                       R21 R20 K50 ["width"]
      235 SETTABLEKS                       R9 R20 K51 ["isLoading"]
      237 GETTABLEKS                       R22 R0 K17 ["interactable"]
      239 NOT                              R21 R22
      240 SETTABLEKS                       R21 R20 K52 ["isDisabled"]
      242 SETTABLEKS                       R12 R20 K53 ["onActivated"]
      244 MOVE                             R21 R13
      245 CALL                             R21 0 1
      246 SETTABLEKS                       R21 R20 K22 ["LayoutOrder"]
      248 GETUPVAL                         R21 14
      249 GETTABLEKS                       R21 R21 K66 ["SegmentationPropertyRow"]
      251 GETTABLEKS                       R21 R21 K67 ["UploadButton"]
      253 SETTABLEKS                       R21 R20 K54 ["testId"]
      255 CALL                             R18 2 1
      256 SETTABLEKS                       R18 R17 K25 ["PreviewOrButton"]
      258 JUMPIFNOT                        R10 ; [+11]
      259 GETUPVAL                         R18 7
      260 GETUPVAL                         R19 15
      261 DUPTABLE                         R20 K70 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left content-alert", ["Text"], ["LayoutOrder"]}]
      262 SETTABLEKS                       R10 R20 K69 ["Text"]
      264 MOVE                             R21 R13
      265 CALL                             R21 0 1
      266 SETTABLEKS                       R21 R20 K22 ["LayoutOrder"]
      268 CALL                             R18 2 1
      269 JUMP                             ; [+1]
      270 LOADNIL                          R18
      271 SETTABLEKS                       R18 R17 K26 ["ErrorLabel"]
      273 CALL                             R14 3 -1
      274 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactUtils"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["AttachedImagePreview"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Constants"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Flags"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R9 R0 K14 ["Util"]
       45 GETTABLEKS                       R9 R9 K15 ["ImageAttachmentUtils"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K6 [require]
       50 GETTABLEKS                       R10 R0 K14 ["Util"]
       52 GETTABLEKS                       R10 R10 K16 ["ImageContentStore"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K6 [require]
       57 GETIMPORT                        R11 K1 [script]
       59 GETTABLEKS                       R11 R11 K4 ["Parent"]
       61 GETTABLEKS                       R11 R11 K4 ["Parent"]
       63 GETTABLEKS                       R11 R11 K17 ["PropertyRowTypes"]
       65 CALL                             R10 1 1
       66 GETIMPORT                        R11 K6 [require]
       68 GETTABLEKS                       R12 R0 K14 ["Util"]
       70 GETTABLEKS                       R12 R12 K18 ["TestIds"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R13 R0 K19 ["Resources"]
       77 GETTABLEKS                       R13 R13 K20 ["Localization"]
       79 GETTABLEKS                       R13 R13 K21 ["Translator"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K22 ["Types"]
       86 CALL                             R13 1 1
       87 GETTABLEKS                       R14 R2 K23 ["Button"]
       89 GETTABLEKS                       R15 R2 K24 ["Image"]
       91 GETTABLEKS                       R16 R2 K25 ["Text"]
       93 GETTABLEKS                       R17 R2 K26 ["View"]
       95 GETTABLEKS                       R18 R4 K27 ["createNextOrder"]
       97 GETTABLEKS                       R19 R3 K28 ["createElement"]
       99 DUPCLOSURE                       R20 K29 [PROTO_6]
      100 CAPTURE                          VAL R2
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R18
      107 CAPTURE                          VAL R19
      108 CAPTURE                          VAL R17
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R15
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R11
      115 CAPTURE                          VAL R16
      116 RETURN                           R20 1
