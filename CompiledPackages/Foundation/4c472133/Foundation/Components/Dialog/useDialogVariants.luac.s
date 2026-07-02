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
       25 DUPTABLE                         R2 K25 [{["tag"] = "col align-x-center align-y-center size-full-full"}]
       26 SETTABLEKS                       R2 R1 K2 ["container"]
       28 DUPTABLE                         R2 K27 [{["tag"] = "shrink-1 size-full-0 auto-y clip bg-surface-100"}]
       29 SETTABLEKS                       R2 R1 K3 ["inner"]
       31 DUPTABLE                         R2 K29 [{["tag"] = "col size-full auto-y padding-bottom-xlarge"}]
       32 SETTABLEKS                       R2 R1 K4 ["body"]
       34 DUPTABLE                         R2 K31 [{["tag"] = "shrink position-top-center size-full-full auto-y"}]
       35 SETTABLEKS                       R2 R1 K5 ["heroMediaWrapper"]
       37 DUPTABLE                         R2 K33 [{["tag"] = "size-full-0 auto-y"}]
       38 SETTABLEKS                       R2 R1 K6 ["title"]
       40 DUPTABLE                         R2 K34 [{"tag"}]
       41 LOADK                            R4 K35 ["size-full-0 auto-y text-wrap text-align-x-left %*"]
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R7 R7 K36 ["FoundationDialogTitleEmphasisFix"]
       45 JUMPIFNOT                        R7 ; [+2]
       46 LOADK                            R6 K37 ["content-emphasis"]
       47 JUMP                             ; [+1]
       48 LOADK                            R6 K38 ["content-emphasized"]
       49 NAMECALL                         R4 R4 K39 ["format"]
       51 CALL                             R4 2 1
       52 MOVE                             R3 R4
       53 SETTABLEKS                       R3 R2 K17 ["tag"]
       55 SETTABLEKS                       R2 R1 K7 ["titleText"]
       57 DUPTABLE                         R2 K41 [{["tag"] = "fill size-full auto-y"}]
       58 SETTABLEKS                       R2 R1 K8 ["content"]
       60 DUPTABLE                         R2 K43 [{["tag"] = "size-full-0 auto-y text-wrap text-align-x-left text-align-y-top"}]
       61 SETTABLEKS                       R2 R1 K9 ["contentText"]
       63 DUPTABLE                         R2 K45 [{["tag"] = "size-full-0 auto-y text-body-small text-wrap text-align-x-left text-align-y-top"}]
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
       85 DUPTABLE                         R5 K56 [{["tag"] = "gap-large padding-x-large"}]
       86 SETTABLEKS                       R5 R4 K4 ["body"]
       88 DUPTABLE                         R5 K58 [{"offset"}]
       89 GETTABLEKS                       R6 R0 K59 ["Size"]
       91 GETTABLEKS                       R6 R6 K60 ["Size_300"]
       93 SETTABLEKS                       R6 R5 K57 ["offset"]
       95 SETTABLEKS                       R5 R4 K47 ["closeAffordance"]
       97 DUPTABLE                         R5 K62 [{["tag"] = "radius-medium", ["offsetX"]}]
       98 GETTABLEKS                       R6 R0 K63 ["Padding"]
      100 GETTABLEKS                       R6 R6 K64 ["Large"]
      102 SETTABLEKS                       R6 R5 K61 ["offsetX"]
      104 SETTABLEKS                       R5 R4 K48 ["heroMedia"]
      106 DUPTABLE                         R5 K66 [{["tag"] = "text-heading-small"}]
      107 SETTABLEKS                       R5 R4 K7 ["titleText"]
      109 DUPTABLE                         R5 K68 [{["tag"] = "text-body-medium"}]
      110 SETTABLEKS                       R5 R4 K9 ["contentText"]
      112 DUPTABLE                         R5 K70 [{["tag"] = "padding-top-large"}]
      113 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      115 SETTABLE                         R4 R2 R3
      116 GETUPVAL                         R3 1
      117 GETTABLEKS                       R3 R3 K71 ["Medium"]
      119 DUPTABLE                         R4 K49 [{"shadow", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      120 DUPTABLE                         R5 K73 [{["tag"] = "padding-xlarge"}]
      121 SETTABLEKS                       R5 R4 K1 ["shadow"]
      123 DUPTABLE                         R5 K75 [{["maxWidth"], ["tag"] = "radius-large"}]
      124 GETUPVAL                         R7 2
      125 GETUPVAL                         R8 1
      126 GETTABLEKS                       R8 R8 K71 ["Medium"]
      128 GETTABLE                         R6 R7 R8
      129 SETTABLEKS                       R6 R5 K52 ["maxWidth"]
      131 SETTABLEKS                       R5 R4 K3 ["inner"]
      133 DUPTABLE                         R5 K77 [{["tag"] = "gap-xlarge padding-x-xlarge"}]
      134 SETTABLEKS                       R5 R4 K4 ["body"]
      136 DUPTABLE                         R5 K58 [{"offset"}]
      137 GETTABLEKS                       R6 R0 K59 ["Size"]
      139 GETTABLEKS                       R6 R6 K78 ["Size_400"]
      141 SETTABLEKS                       R6 R5 K57 ["offset"]
      143 SETTABLEKS                       R5 R4 K47 ["closeAffordance"]
      145 DUPTABLE                         R5 K79 [{["tag"] = "radius-large", ["offsetX"]}]
      146 GETTABLEKS                       R6 R0 K63 ["Padding"]
      148 GETTABLEKS                       R6 R6 K80 ["XLarge"]
      150 SETTABLEKS                       R6 R5 K61 ["offsetX"]
      152 SETTABLEKS                       R5 R4 K48 ["heroMedia"]
      154 DUPTABLE                         R5 K82 [{["tag"] = "text-heading-medium"}]
      155 SETTABLEKS                       R5 R4 K7 ["titleText"]
      157 DUPTABLE                         R5 K68 [{["tag"] = "text-body-medium"}]
      158 SETTABLEKS                       R5 R4 K9 ["contentText"]
      160 DUPTABLE                         R5 K84 [{["tag"] = "padding-top-xlarge"}]
      161 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      163 SETTABLE                         R4 R2 R3
      164 GETUPVAL                         R3 1
      165 GETTABLEKS                       R3 R3 K64 ["Large"]
      167 DUPTABLE                         R4 K49 [{"shadow", "inner", "body", "closeAffordance", "heroMedia", "titleText", "contentText", "actionsLabel"}]
      168 DUPTABLE                         R5 K73 [{["tag"] = "padding-xlarge"}]
      169 SETTABLEKS                       R5 R4 K1 ["shadow"]
      171 DUPTABLE                         R5 K75 [{["maxWidth"], ["tag"] = "radius-large"}]
      172 GETUPVAL                         R7 2
      173 GETUPVAL                         R8 1
      174 GETTABLEKS                       R8 R8 K64 ["Large"]
      176 GETTABLE                         R6 R7 R8
      177 SETTABLEKS                       R6 R5 K52 ["maxWidth"]
      179 SETTABLEKS                       R5 R4 K3 ["inner"]
      181 DUPTABLE                         R5 K77 [{["tag"] = "gap-xlarge padding-x-xlarge"}]
      182 SETTABLEKS                       R5 R4 K4 ["body"]
      184 DUPTABLE                         R5 K58 [{"offset"}]
      185 GETTABLEKS                       R6 R0 K59 ["Size"]
      187 GETTABLEKS                       R6 R6 K78 ["Size_400"]
      189 SETTABLEKS                       R6 R5 K57 ["offset"]
      191 SETTABLEKS                       R5 R4 K47 ["closeAffordance"]
      193 DUPTABLE                         R5 K79 [{["tag"] = "radius-large", ["offsetX"]}]
      194 GETTABLEKS                       R6 R0 K63 ["Padding"]
      196 GETTABLEKS                       R6 R6 K80 ["XLarge"]
      198 SETTABLEKS                       R6 R5 K61 ["offsetX"]
      200 SETTABLEKS                       R5 R4 K48 ["heroMedia"]
      202 DUPTABLE                         R5 K86 [{["tag"] = "text-heading-large"}]
      203 SETTABLEKS                       R5 R4 K7 ["titleText"]
      205 DUPTABLE                         R5 K88 [{["tag"] = "text-body-large"}]
      206 SETTABLEKS                       R5 R4 K9 ["contentText"]
      208 DUPTABLE                         R5 K84 [{["tag"] = "padding-top-xlarge"}]
      209 SETTABLEKS                       R5 R4 K10 ["actionsLabel"]
      211 SETTABLE                         R4 R2 R3
      212 DUPTABLE                         R3 K91 [{"common", "size"}]
      213 SETTABLEKS                       R1 R3 K89 ["common"]
      215 SETTABLEKS                       R2 R3 K90 ["size"]
      217 RETURN                           R3 1

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
