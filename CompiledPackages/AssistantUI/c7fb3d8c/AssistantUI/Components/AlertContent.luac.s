PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 NEWTABLE                         R0 4 0
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K0 ["auto-xy text-body-small text-wrap text-align-x-left radius-small"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K1 ["Disabled"]
       13 SETTABLEKS                       R1 R0 K2 ["content-muted"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K1 ["Disabled"]
       18 NOT                              R1 R2
       19 SETTABLEKS                       R1 R0 K3 ["content-action-link"]
       21 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+3]
        2 NEWTABLE                         R0 0 0
        4 RETURN                           R0 1
        5 NEWTABLE                         R0 4 0
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K0 ["auto-xy text-body-small text-wrap text-align-x-left radius-small"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K1 ["Disabled"]
       13 SETTABLEKS                       R1 R0 K2 ["content-muted"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K1 ["Disabled"]
       18 NOT                              R1 R2
       19 SETTABLEKS                       R1 R0 K3 ["content-action-link"]
       21 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["ButtonContent"]
        2 GETTABLEKS                       R2 R0 K1 ["SecondaryButtonContent"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["useMemo"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R1
        9 NEWTABLE                         R5 0 1
       11 MOVE                             R6 R1
       12 SETLIST                          R5 R6 1 [1]
       14 CALL                             R3 2 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R4 R5 K2 ["useMemo"]
       18 NEWCLOSURE                       R5 P1
       19 CAPTURE                          VAL R2
       20 NEWTABLE                         R6 0 1
       22 MOVE                             R7 R2
       23 SETLIST                          R6 R7 1 [1]
       25 CALL                             R4 2 1
       26 GETUPVAL                         R5 1
       27 CALL                             R5 0 1
       28 GETUPVAL                         R6 2
       29 GETUPVAL                         R7 3
       30 DUPTABLE                         R8 K5 [{"tag", "LayoutOrder"}]
       31 LOADK                            R9 K6 ["row size-full-0 auto-y padding-x-medium padding-y-small gap-small align-y-center radius-medium stroke-standard stroke-default"]
       32 SETTABLEKS                       R9 R8 K3 ["tag"]
       34 GETTABLEKS                       R9 R0 K4 ["LayoutOrder"]
       36 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       38 DUPTABLE                         R9 K13 [{"Icon", "Text", "TextButton", "SecondaryTextButton", "Spacer", "CloseButton"}]
       39 GETUPVAL                         R10 2
       40 GETUPVAL                         R11 4
       41 DUPTABLE                         R12 K15 [{"tag", "Image", "LayoutOrder"}]
       42 LOADK                            R13 K16 ["size-500-500 content-system-warning"]
       43 SETTABLEKS                       R13 R12 K3 ["tag"]
       45 LOADK                            R13 K17 ["icons/status/error_large"]
       46 SETTABLEKS                       R13 R12 K14 ["Image"]
       48 MOVE                             R13 R5
       49 CALL                             R13 0 1
       50 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
       52 CALL                             R10 2 1
       53 SETTABLEKS                       R10 R9 K7 ["Icon"]
       55 GETUPVAL                         R10 2
       56 GETUPVAL                         R11 5
       57 DUPTABLE                         R12 K18 [{"tag", "Text", "LayoutOrder"}]
       58 LOADK                            R13 K19 ["auto-xy shrink text-body-small text-wrap text-align-x-left"]
       59 SETTABLEKS                       R13 R12 K3 ["tag"]
       61 GETTABLEKS                       R13 R0 K8 ["Text"]
       63 SETTABLEKS                       R13 R12 K8 ["Text"]
       65 MOVE                             R13 R5
       66 CALL                             R13 0 1
       67 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
       69 CALL                             R10 2 1
       70 SETTABLEKS                       R10 R9 K8 ["Text"]
       72 MOVE                             R10 R1
       73 JUMPIFNOT                        R10 ; [+37]
       74 GETUPVAL                         R10 2
       75 GETUPVAL                         R11 5
       76 DUPTABLE                         R12 K24 [{"tag", "Text", "RichText", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
       77 SETTABLEKS                       R3 R12 K3 ["tag"]
       79 LOADK                            R14 K25 ["<u>%*</u>"]
       80 GETTABLEKS                       R16 R1 K8 ["Text"]
       82 NAMECALL                         R14 R14 K26 ["format"]
       84 CALL                             R14 2 1
       85 MOVE                             R13 R14
       86 SETTABLEKS                       R13 R12 K8 ["Text"]
       88 LOADB                            R13 1
       89 SETTABLEKS                       R13 R12 K20 ["RichText"]
       91 GETTABLEKS                       R13 R1 K27 ["Disabled"]
       93 SETTABLEKS                       R13 R12 K21 ["isDisabled"]
       95 GETTABLEKS                       R13 R1 K28 ["OnClick"]
       97 SETTABLEKS                       R13 R12 K22 ["onActivated"]
       99 MOVE                             R13 R5
      100 CALL                             R13 0 1
      101 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
      103 GETUPVAL                         R15 6
      104 GETTABLEKS                       R14 R15 K29 ["Alert"]
      106 GETTABLEKS                       R13 R14 K30 ["Continue"]
      108 SETTABLEKS                       R13 R12 K23 ["testId"]
      110 CALL                             R10 2 1
      111 SETTABLEKS                       R10 R9 K9 ["TextButton"]
      113 MOVE                             R10 R2
      114 JUMPIFNOT                        R10 ; [+37]
      115 GETUPVAL                         R10 2
      116 GETUPVAL                         R11 5
      117 DUPTABLE                         R12 K24 [{"tag", "Text", "RichText", "isDisabled", "onActivated", "LayoutOrder", "testId"}]
      118 SETTABLEKS                       R4 R12 K3 ["tag"]
      120 LOADK                            R14 K25 ["<u>%*</u>"]
      121 GETTABLEKS                       R16 R2 K8 ["Text"]
      123 NAMECALL                         R14 R14 K26 ["format"]
      125 CALL                             R14 2 1
      126 MOVE                             R13 R14
      127 SETTABLEKS                       R13 R12 K8 ["Text"]
      129 LOADB                            R13 1
      130 SETTABLEKS                       R13 R12 K20 ["RichText"]
      132 GETTABLEKS                       R13 R2 K27 ["Disabled"]
      134 SETTABLEKS                       R13 R12 K21 ["isDisabled"]
      136 GETTABLEKS                       R13 R2 K28 ["OnClick"]
      138 SETTABLEKS                       R13 R12 K22 ["onActivated"]
      140 MOVE                             R13 R5
      141 CALL                             R13 0 1
      142 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
      144 GETUPVAL                         R15 6
      145 GETTABLEKS                       R14 R15 K29 ["Alert"]
      147 GETTABLEKS                       R13 R14 K31 ["EditApiKeys"]
      149 SETTABLEKS                       R13 R12 K23 ["testId"]
      151 CALL                             R10 2 1
      152 SETTABLEKS                       R10 R9 K10 ["SecondaryTextButton"]
      154 GETUPVAL                         R10 2
      155 GETUPVAL                         R11 3
      156 DUPTABLE                         R12 K5 [{"tag", "LayoutOrder"}]
      157 LOADK                            R13 K32 ["fill"]
      158 SETTABLEKS                       R13 R12 K3 ["tag"]
      160 MOVE                             R13 R5
      161 CALL                             R13 0 1
      162 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
      164 CALL                             R10 2 1
      165 SETTABLEKS                       R10 R9 K11 ["Spacer"]
      167 GETUPVAL                         R10 2
      168 GETUPVAL                         R11 7
      169 DUPTABLE                         R12 K35 [{"icon", "LayoutOrder", "tag", "iconTag", "onActivated", "testId"}]
      170 LOADK                            R13 K36 ["icons/navigation/close"]
      171 SETTABLEKS                       R13 R12 K33 ["icon"]
      173 MOVE                             R13 R5
      174 CALL                             R13 0 1
      175 SETTABLEKS                       R13 R12 K4 ["LayoutOrder"]
      177 LOADK                            R13 K37 ["size-600-600 radius-small align-x-center align-y-center"]
      178 SETTABLEKS                       R13 R12 K3 ["tag"]
      180 LOADK                            R13 K38 ["size-300-300 content-emphasis"]
      181 SETTABLEKS                       R13 R12 K34 ["iconTag"]
      183 GETTABLEKS                       R13 R0 K39 ["OnClose"]
      185 SETTABLEKS                       R13 R12 K22 ["onActivated"]
      187 GETUPVAL                         R15 6
      188 GETTABLEKS                       R14 R15 K29 ["Alert"]
      190 GETTABLEKS                       R13 R14 K40 ["Close"]
      192 SETTABLEKS                       R13 R12 K23 ["testId"]
      194 CALL                             R10 2 1
      195 SETTABLEKS                       R10 R9 K12 ["CloseButton"]
      197 CALL                             R6 3 -1
      198 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R3 K7 ["CustomIconButton"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Util"]
       39 GETTABLEKS                       R6 R7 K13 ["TestIds"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R2 K14 ["Image"]
       44 GETTABLEKS                       R7 R2 K15 ["Text"]
       46 GETTABLEKS                       R8 R2 K16 ["View"]
       48 GETTABLEKS                       R9 R4 K17 ["createNextOrder"]
       50 GETTABLEKS                       R10 R3 K18 ["createElement"]
       52 DUPCLOSURE                       R11 K19 [PROTO_2]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R1
       61 GETTABLEKS                       R12 R3 K20 ["memo"]
       63 MOVE                             R13 R11
       64 CALL                             R12 1 -1
       65 RETURN                           R12 -1
