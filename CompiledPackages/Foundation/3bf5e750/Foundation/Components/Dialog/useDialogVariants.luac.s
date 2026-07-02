PROTO_0:
        0 DUPTABLE                         R1 K11 [{"backdrop", "shadow", "container", "inner", "body", "heroMediaWrapper", "title", "titleText", "content", "contentText", "actionsLabel"}]
        1 DUPTABLE                         R2 K13 [{"backgroundStyle"}]
        2 GETTABLEKS                       R3 R0 K14 ["Color"]
        4 GETTABLEKS                       R3 R3 K15 ["Common"]
        6 GETTABLEKS                       R3 R3 K16 ["Backdrop"]
        8 SETTABLEKS                       R3 R2 K12 ["backgroundStyle"]
       10 SETTABLEKS                       R2 R1 K0 ["backdrop"]
       12 DUPTABLE                         R2 K20 [{["tag"] = "auto-xy", ["imageStyle"]}]
       13 GETTABLEKS                       R3 R0 K14 ["Color"]
       15 GETTABLEKS                       R3 R3 K21 ["Extended"]
       17 GETTABLEKS                       R3 R3 K22 ["Black"]
       19 GETTABLEKS                       R3 R3 K23 ["Black_15"]
       21 SETTABLEKS                       R3 R2 K19 ["imageStyle"]
       23 SETTABLEKS                       R2 R1 K1 ["shadow"]
       25 DUPTABLE                         R2 K25 [{["tag"] = "size-full-full col align-x-center align-y-center"}]
       26 SETTABLEKS                       R2 R1 K2 ["container"]
       28 DUPTABLE                         R2 K27 [{["tag"] = "size-full-0 auto-y shrink-1 bg-surface-100 clip"}]
       29 SETTABLEKS                       R2 R1 K3 ["inner"]
       31 DUPTABLE                         R2 K28 [{"tag"}]
       32 LOADK                            R4 K29 ["size-full auto-y col padding-bottom-xlarge %*"]
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K30 ["FoundationDialogBodyUpdate"]
       36 JUMPIFNOT                        R7 ; [+2]
       37 LOADK                            R6 K31 ["gap-xlarge"]
       38 JUMP                             ; [+1]
       39 LOADK                            R6 K32 [""]
       40 NAMECALL                         R4 R4 K33 ["format"]
       42 CALL                             R4 2 1
       43 MOVE                             R3 R4
       44 SETTABLEKS                       R3 R2 K17 ["tag"]
       46 SETTABLEKS                       R2 R1 K4 ["body"]
       48 DUPTABLE                         R2 K35 [{["tag"] = "auto-y size-full-full position-top-center shrink"}]
       49 SETTABLEKS                       R2 R1 K5 ["heroMediaWrapper"]
       51 DUPTABLE                         R2 K37 [{["tag"] = "size-full-0 auto-y"}]
       52 SETTABLEKS                       R2 R1 K6 ["title"]
       54 DUPTABLE                         R2 K39 [{["tag"] = "size-full-0 auto-y content-emphasized text-wrap text-align-x-left"}]
       55 SETTABLEKS                       R2 R1 K7 ["titleText"]
       57 DUPTABLE                         R2 K41 [{["tag"] = "auto-y size-full fill"}]
       58 SETTABLEKS                       R2 R1 K8 ["content"]
       60 DUPTABLE                         R2 K43 [{["tag"] = "text-wrap text-align-x-left text-align-y-top auto-y size-full-0"}]
       61 SETTABLEKS                       R2 R1 K9 ["contentText"]
       63 DUPTABLE                         R2 K45 [{["tag"] = "text-align-x-left text-wrap text-align-y-top auto-y size-full-0 text-body-small"}]
       64 SETTABLEKS                       R2 R1 K10 ["actionsLabel"]
       66 NEWTABLE                         R2 4 0
       68 GETUPVAL                         R3 1
       69 GETTABLEKS                       R3 R3 K46 ["Small"]
       71 DUPTABLE                         R4 K49 [{"shadow", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
       72 DUPTABLE                         R5 K51 [{["tag"] = "padding-large"}]
       73 SETTABLEKS                       R5 R4 K1 ["shadow"]
       75 DUPTABLE                         R5 K54 [{["maxWidth"], ["tag"] = "radius-medium"}]
       76 GETUPVAL                         R7 2
       77 GETUPVAL                         R8 1
       78 GETTABLEKS                       R8 R8 K46 ["Small"]
       80 GETTABLE                         R6 R7 R8
       81 SETTABLEKS                       R6 R5 K52 ["maxWidth"]
       83 SETTABLEKS                       R5 R4 K3 ["inner"]
       85 DUPTABLE                         R5 K28 [{"tag"}]
       86 LOADK                            R7 K55 ["padding-x-large %*"]
       87 GETUPVAL                         R10 0
       88 GETTABLEKS                       R10 R10 K30 ["FoundationDialogBodyUpdate"]
       90 JUMPIFNOT                        R10 ; [+2]
       91 LOADK                            R9 K32 [""]
       92 JUMP                             ; [+1]
       93 LOADK                            R9 K56 ["gap-large"]
       94 NAMECALL                         R7 R7 K33 ["format"]
       96 CALL                             R7 2 1
       97 MOVE                             R6 R7
       98 SETTABLEKS                       R6 R5 K17 ["tag"]
      100 SETTABLEKS                       R5 R4 K4 ["body"]
      102 DUPTABLE                         R5 K58 [{"offset"}]
      103 GETTABLEKS                       R6 R0 K59 ["Size"]
      105 GETTABLEKS                       R6 R6 K60 ["Size_300"]
      107 SETTABLEKS                       R6 R5 K57 ["offset"]
      109 SETTABLEKS                       R5 R4 K47 ["closeAffordance"]
      111 DUPTABLE                         R5 K62 [{["tag"] = "radius-medium", ["offsetX"]}]
      112 GETTABLEKS                       R6 R0 K63 ["Padding"]
      114 GETTABLEKS                       R6 R6 K64 ["Large"]
      116 SETTABLEKS                       R6 R5 K61 ["offsetX"]
      118 SETTABLEKS                       R5 R4 K48 ["heroMedia"]
      120 DUPTABLE                         R5 K66 [{["tag"] = "text-heading-small"}]
      121 SETTABLEKS                       R5 R4 K7 ["titleText"]
      123 DUPTABLE                         R5 K68 [{["tag"] = "text-body-medium"}]
      124 SETTABLEKS                       R5 R4 K9 ["contentText"]
      126 DUPTABLE                         R5 K70 [{["tag"] = "padding-top-large"}]
      127 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      129 SETTABLE                         R4 R2 R3
      130 GETUPVAL                         R3 1
      131 GETTABLEKS                       R3 R3 K71 ["Medium"]
      133 DUPTABLE                         R4 K49 [{"shadow", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      134 DUPTABLE                         R5 K73 [{["tag"] = "padding-xlarge"}]
      135 SETTABLEKS                       R5 R4 K1 ["shadow"]
      137 DUPTABLE                         R5 K75 [{["maxWidth"], ["tag"] = "radius-large"}]
      138 GETUPVAL                         R7 2
      139 GETUPVAL                         R8 1
      140 GETTABLEKS                       R8 R8 K71 ["Medium"]
      142 GETTABLE                         R6 R7 R8
      143 SETTABLEKS                       R6 R5 K52 ["maxWidth"]
      145 SETTABLEKS                       R5 R4 K3 ["inner"]
      147 DUPTABLE                         R5 K28 [{"tag"}]
      148 LOADK                            R7 K76 ["padding-x-xlarge %*"]
      149 GETUPVAL                         R10 0
      150 GETTABLEKS                       R10 R10 K30 ["FoundationDialogBodyUpdate"]
      152 JUMPIFNOT                        R10 ; [+2]
      153 LOADK                            R9 K32 [""]
      154 JUMP                             ; [+1]
      155 LOADK                            R9 K31 ["gap-xlarge"]
      156 NAMECALL                         R7 R7 K33 ["format"]
      158 CALL                             R7 2 1
      159 MOVE                             R6 R7
      160 SETTABLEKS                       R6 R5 K17 ["tag"]
      162 SETTABLEKS                       R5 R4 K4 ["body"]
      164 DUPTABLE                         R5 K58 [{"offset"}]
      165 GETTABLEKS                       R6 R0 K59 ["Size"]
      167 GETTABLEKS                       R6 R6 K77 ["Size_400"]
      169 SETTABLEKS                       R6 R5 K57 ["offset"]
      171 SETTABLEKS                       R5 R4 K47 ["closeAffordance"]
      173 DUPTABLE                         R5 K78 [{["tag"] = "radius-large", ["offsetX"]}]
      174 GETTABLEKS                       R6 R0 K63 ["Padding"]
      176 GETTABLEKS                       R6 R6 K79 ["XLarge"]
      178 SETTABLEKS                       R6 R5 K61 ["offsetX"]
      180 SETTABLEKS                       R5 R4 K48 ["heroMedia"]
      182 DUPTABLE                         R5 K81 [{["tag"] = "text-heading-medium"}]
      183 SETTABLEKS                       R5 R4 K7 ["titleText"]
      185 DUPTABLE                         R5 K68 [{["tag"] = "text-body-medium"}]
      186 SETTABLEKS                       R5 R4 K9 ["contentText"]
      188 DUPTABLE                         R5 K83 [{["tag"] = "padding-top-xlarge"}]
      189 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      191 SETTABLE                         R4 R2 R3
      192 GETUPVAL                         R3 1
      193 GETTABLEKS                       R3 R3 K64 ["Large"]
      195 DUPTABLE                         R4 K49 [{"shadow", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      196 DUPTABLE                         R5 K73 [{["tag"] = "padding-xlarge"}]
      197 SETTABLEKS                       R5 R4 K1 ["shadow"]
      199 DUPTABLE                         R5 K75 [{["maxWidth"], ["tag"] = "radius-large"}]
      200 GETUPVAL                         R7 2
      201 GETUPVAL                         R8 1
      202 GETTABLEKS                       R8 R8 K64 ["Large"]
      204 GETTABLE                         R6 R7 R8
      205 SETTABLEKS                       R6 R5 K52 ["maxWidth"]
      207 SETTABLEKS                       R5 R4 K3 ["inner"]
      209 DUPTABLE                         R5 K28 [{"tag"}]
      210 LOADK                            R7 K76 ["padding-x-xlarge %*"]
      211 GETUPVAL                         R10 0
      212 GETTABLEKS                       R10 R10 K30 ["FoundationDialogBodyUpdate"]
      214 JUMPIFNOT                        R10 ; [+2]
      215 LOADK                            R9 K32 [""]
      216 JUMP                             ; [+1]
      217 LOADK                            R9 K31 ["gap-xlarge"]
      218 NAMECALL                         R7 R7 K33 ["format"]
      220 CALL                             R7 2 1
      221 MOVE                             R6 R7
      222 SETTABLEKS                       R6 R5 K17 ["tag"]
      224 SETTABLEKS                       R5 R4 K4 ["body"]
      226 DUPTABLE                         R5 K58 [{"offset"}]
      227 GETTABLEKS                       R6 R0 K59 ["Size"]
      229 GETTABLEKS                       R6 R6 K77 ["Size_400"]
      231 SETTABLEKS                       R6 R5 K57 ["offset"]
      233 SETTABLEKS                       R5 R4 K47 ["closeAffordance"]
      235 DUPTABLE                         R5 K78 [{["tag"] = "radius-large", ["offsetX"]}]
      236 GETTABLEKS                       R6 R0 K63 ["Padding"]
      238 GETTABLEKS                       R6 R6 K79 ["XLarge"]
      240 SETTABLEKS                       R6 R5 K61 ["offsetX"]
      242 SETTABLEKS                       R5 R4 K48 ["heroMedia"]
      244 DUPTABLE                         R5 K85 [{["tag"] = "text-heading-large"}]
      245 SETTABLEKS                       R5 R4 K7 ["titleText"]
      247 DUPTABLE                         R5 K87 [{["tag"] = "text-body-large"}]
      248 SETTABLEKS                       R5 R4 K9 ["contentText"]
      250 DUPTABLE                         R5 K83 [{["tag"] = "padding-top-xlarge"}]
      251 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      253 SETTABLE                         R4 R2 R3
      254 DUPTABLE                         R3 K90 [{"common", "size"}]
      255 SETTABLEKS                       R1 R3 K88 ["common"]
      257 SETTABLEKS                       R2 R3 K89 ["size"]
      259 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["useVariants"]
        5 LOADK                            R2 K1 ["Dialog"]
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 CALL                             R1 3 1
        9 GETUPVAL                         R2 3
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 4
       12 GETTABLEKS                       R4 R1 K2 ["common"]
       14 GETTABLEKS                       R6 R1 K3 ["size"]
       16 GETTABLEKS                       R7 R2 K4 ["responsiveSize"]
       18 GETTABLE                         R5 R6 R7
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Enums"]
       18 GETTABLEKS                       R3 R3 K9 ["DialogSize"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Utility"]
       25 GETTABLEKS                       R4 R4 K11 ["composeStyleVariant"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Providers"]
       32 GETTABLEKS                       R5 R5 K13 ["Style"]
       34 GETTABLEKS                       R5 R5 K14 ["Tokens"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Utility"]
       41 GETTABLEKS                       R6 R6 K15 ["Flags"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K12 ["Providers"]
       48 GETTABLEKS                       R7 R7 K13 ["Style"]
       50 GETTABLEKS                       R7 R7 K16 ["useTokens"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K12 ["Providers"]
       57 GETTABLEKS                       R8 R8 K13 ["Style"]
       59 GETTABLEKS                       R8 R8 K17 ["VariantsContext"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETIMPORT                        R9 K1 [script]
       66 GETTABLEKS                       R9 R9 K18 ["Parent"]
       68 GETTABLEKS                       R9 R9 K19 ["useDialog"]
       70 CALL                             R8 1 1
       71 NEWTABLE                         R9 4 0
       73 GETTABLEKS                       R10 R2 K20 ["Small"]
       75 LOADN                            R11 320
       76 SETTABLE                         R11 R9 R10
       77 GETTABLEKS                       R10 R2 K21 ["Medium"]
       79 LOADN                            R11 480
       80 SETTABLE                         R11 R9 R10
       81 GETTABLEKS                       R10 R2 K22 ["Large"]
       83 LOADN                            R11 640
       84 SETTABLE                         R11 R9 R10
       85 DUPCLOSURE                       R10 K23 [PROTO_0]
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R9
       89 DUPCLOSURE                       R11 K24 [PROTO_1]
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R8
       94 CAPTURE                          VAL R3
       95 SETGLOBAL                        R11 K25 ["useDialogVariants"]
       97 DUPTABLE                         R11 K27 [{"useDialogVariants", "DIALOG_SIZES"}]
       98 GETGLOBAL                        R12 K25 ["useDialogVariants"]
      100 SETTABLEKS                       R12 R11 K25 ["useDialogVariants"]
      102 SETTABLEKS                       R9 R11 K26 ["DIALOG_SIZES"]
      104 RETURN                           R11 1
