PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnChanged"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useCallback"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R4 0 1
       11 GETTABLEKS                       R5 R0 K2 ["OnChanged"]
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K3 ["Hooks"]
       19 GETTABLEKS                       R3 R3 K4 ["useDefaultTags"]
       21 GETTABLEKS                       R4 R0 K5 ["tags"]
       23 GETUPVAL                         R6 3
       24 CALL                             R6 0 1
       25 JUMPIFNOT                        R6 ; [+2]
       26 LOADK                            R5 K6 ["row auto-y gap-small size-full-700 align-y-center"]
       27 JUMP                             ; [+1]
       28 LOADK                            R5 K7 ["row auto-y gap-small size-full-700 align-y-center flex-x-between"]
       29 CALL                             R3 2 1
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R4 R4 K8 ["createElement"]
       33 GETUPVAL                         R5 2
       34 GETTABLEKS                       R5 R5 K9 ["View"]
       36 DUPTABLE                         R6 K13 [{"tag", "LayoutOrder", "testId"}]
       37 SETTABLEKS                       R3 R6 K10 ["tag"]
       39 GETTABLEKS                       R7 R0 K11 ["LayoutOrder"]
       41 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       43 GETTABLEKS                       R7 R0 K12 ["testId"]
       45 SETTABLEKS                       R7 R6 K12 ["testId"]
       47 DUPTABLE                         R7 K17 [{"CompositorNodeInputLabel", "Input", "PinChildren"}]
       48 GETTABLEKS                       R8 R0 K18 ["Label"]
       50 JUMPIFNOT                        R8 ; [+40]
       51 LOADB                            R8 0
       52 GETTABLEKS                       R9 R0 K18 ["Label"]
       54 JUMPIFEQKS                       R9 K19 [""] ; [+36]
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K8 ["createElement"]
       59 GETUPVAL                         R9 4
       60 DUPTABLE                         R10 K22 [{"tag", "Text", "LayoutOrder", "isDisabled"}]
       61 NEWTABLE                         R11 4 0
       63 LOADB                            R12 1
       64 SETTABLEKS                       R12 R11 K23 ["fill text-body-small text-align-x-left text-truncate-split"]
       66 GETUPVAL                         R12 3
       67 CALL                             R12 0 1
       68 SETTABLEKS                       R12 R11 K24 ["auto-y"]
       70 GETUPVAL                         R13 3
       71 CALL                             R13 0 1
       72 NOT                              R12 R13
       73 SETTABLEKS                       R12 R11 K25 ["auto-xy"]
       75 SETTABLEKS                       R11 R10 K10 ["tag"]
       77 GETTABLEKS                       R11 R0 K18 ["Label"]
       79 SETTABLEKS                       R11 R10 K20 ["Text"]
       81 MOVE                             R11 R1
       82 CALL                             R11 0 1
       83 SETTABLEKS                       R11 R10 K11 ["LayoutOrder"]
       85 GETTABLEKS                       R12 R0 K27 ["IsDisabled"]
       87 ORK                              R11 R12 K26 [False]
       88 SETTABLEKS                       R11 R10 K21 ["isDisabled"]
       90 CALL                             R8 2 1
       91 SETTABLEKS                       R8 R7 K14 ["CompositorNodeInputLabel"]
       93 GETUPVAL                         R8 1
       94 GETTABLEKS                       R8 R8 K8 ["createElement"]
       96 GETUPVAL                         R9 5
       97 DUPTABLE                         R10 K30 [{"IsParameterOverridden", "OnParameterOverrideRevert"}]
       98 GETTABLEKS                       R11 R0 K28 ["IsParameterOverridden"]
      100 SETTABLEKS                       R11 R10 K28 ["IsParameterOverridden"]
      102 GETTABLEKS                       R11 R0 K29 ["OnParameterOverrideRevert"]
      104 SETTABLEKS                       R11 R10 K29 ["OnParameterOverrideRevert"]
      106 GETUPVAL                         R11 1
      107 GETTABLEKS                       R11 R11 K8 ["createElement"]
      109 GETUPVAL                         R12 2
      110 GETTABLEKS                       R12 R12 K9 ["View"]
      112 DUPTABLE                         R13 K32 [{["tag"] = "fill row items-stretch align-y-center auto-y"}]
      113 DUPTABLE                         R14 K34 [{"Button"}]
      114 GETUPVAL                         R15 1
      115 GETTABLEKS                       R15 R15 K8 ["createElement"]
      117 GETUPVAL                         R16 2
      118 GETTABLEKS                       R16 R16 K33 ["Button"]
      120 DUPTABLE                         R17 K41 [{["text"] = "Trigger", ["variant"], ["size"], ["fillBehavior"], ["isDisabled"], ["onActivated"]}]
      121 GETTABLEKS                       R19 R0 K42 ["Value"]
      123 JUMPIFNOTEQKB                    R19 TRUE ; [+9]
      125 GETUPVAL                         R18 2
      126 GETTABLEKS                       R18 R18 K43 ["Enums"]
      128 GETTABLEKS                       R18 R18 K44 ["ButtonVariant"]
      130 GETTABLEKS                       R18 R18 K45 ["Emphasis"]
      132 JUMP                             ; [+7]
      133 GETUPVAL                         R18 2
      134 GETTABLEKS                       R18 R18 K43 ["Enums"]
      136 GETTABLEKS                       R18 R18 K44 ["ButtonVariant"]
      138 GETTABLEKS                       R18 R18 K46 ["Standard"]
      140 SETTABLEKS                       R18 R17 K37 ["variant"]
      142 GETUPVAL                         R18 2
      143 GETTABLEKS                       R18 R18 K43 ["Enums"]
      145 GETTABLEKS                       R18 R18 K47 ["InputSize"]
      147 GETTABLEKS                       R18 R18 K48 ["XSmall"]
      149 SETTABLEKS                       R18 R17 K38 ["size"]
      151 GETUPVAL                         R18 2
      152 GETTABLEKS                       R18 R18 K43 ["Enums"]
      154 GETTABLEKS                       R18 R18 K49 ["FillBehavior"]
      156 GETTABLEKS                       R18 R18 K50 ["Fill"]
      158 SETTABLEKS                       R18 R17 K39 ["fillBehavior"]
      160 GETTABLEKS                       R19 R0 K27 ["IsDisabled"]
      162 ORK                              R18 R19 K26 [False]
      163 SETTABLEKS                       R18 R17 K21 ["isDisabled"]
      165 SETTABLEKS                       R2 R17 K40 ["onActivated"]
      167 CALL                             R15 2 1
      168 SETTABLEKS                       R15 R14 K33 ["Button"]
      170 CALL                             R11 3 -1
      171 CALL                             R8 -1 1
      172 SETTABLEKS                       R8 R7 K15 ["Input"]
      174 GETUPVAL                         R8 1
      175 GETTABLEKS                       R8 R8 K8 ["createElement"]
      177 LOADK                            R9 K51 ["Folder"]
      178 NEWTABLE                         R10 0 0
      180 GETTABLEKS                       R11 R0 K52 ["children"]
      182 CALL                             R8 3 1
      183 SETTABLEKS                       R8 R7 K16 ["PinChildren"]
      185 CALL                             R4 3 -1
      186 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["CompositorNodeProperty"]
       20 GETTABLEKS                       R3 R3 K10 ["InputPropertyField"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Components"]
       27 GETTABLEKS                       R4 R4 K9 ["CompositorNodeProperty"]
       29 GETTABLEKS                       R4 R4 K11 ["PropertyLabel"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Parent"]
       36 GETTABLEKS                       R5 R5 K12 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Parent"]
       43 GETTABLEKS                       R6 R6 K13 ["ReactUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K14 ["Flags"]
       50 GETTABLEKS                       R7 R7 K15 ["getFFlagAnimGraphUINodeFieldLayout"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K16 [PROTO_1]
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R2
       60 RETURN                           R7 1
