PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setPipeline"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["option"]
        6 GETTABLEKS                       R1 R1 K2 ["value"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R4 R0 K2 ["option"]
       10 GETTABLEKS                       R4 R4 K3 ["value"]
       12 JUMPIFNOTEQKNIL                  R4 ; [+2]
       14 LOADB                            R3 0 +1
       15 LOADB                            R3 1
       16 MOVE                             R4 R3
       17 JUMPIFNOT                        R4 ; [+10]
       18 GETTABLEKS                       R5 R0 K4 ["pipeline"]
       20 GETTABLEKS                       R6 R0 K2 ["option"]
       22 GETTABLEKS                       R6 R6 K3 ["value"]
       24 JUMPIFEQ                         R5 R6 ; [+2]
       26 LOADB                            R4 0 +1
       27 LOADB                            R4 1
       28 GETUPVAL                         R5 2
       29 GETTABLEKS                       R5 R5 K5 ["createElement"]
       31 GETUPVAL                         R6 3
       32 DUPTABLE                         R7 K10 [{"tag", "LayoutOrder", "onActivated", "testId"}]
       33 NEWTABLE                         R8 2 0
       35 LOADB                            R9 1
       36 SETTABLEKS                       R9 R8 K11 ["row align-y-center gap-medium size-full-0 auto-y padding-small radius-medium"]
       38 SETTABLEKS                       R4 R8 K12 ["bg-shift-200"]
       40 SETTABLEKS                       R8 R7 K6 ["tag"]
       42 GETTABLEKS                       R8 R0 K13 ["order"]
       44 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       46 GETTABLEKS                       R9 R0 K2 ["option"]
       48 GETTABLEKS                       R9 R9 K3 ["value"]
       50 JUMPIFEQKNIL                     R9 ; [+4]
       52 NEWCLOSURE                       R8 P0
       53 CAPTURE                          VAL R0
       54 JUMP                             ; [+1]
       55 LOADNIL                          R8
       56 SETTABLEKS                       R8 R7 K8 ["onActivated"]
       58 JUMPIFNOT                        R4 ; [+9]
       59 LOADK                            R8 K14 ["avatar-chat-pipeline--item-%*--selected"]
       60 GETTABLEKS                       R10 R0 K2 ["option"]
       62 GETTABLEKS                       R10 R10 K3 ["value"]
       64 NAMECALL                         R8 R8 K15 ["format"]
       66 CALL                             R8 2 1
       67 JUMP                             ; [+11]
       68 JUMPIFNOT                        R3 ; [+9]
       69 LOADK                            R8 K16 ["avatar-chat-pipeline--item-%*"]
       70 GETTABLEKS                       R10 R0 K2 ["option"]
       72 GETTABLEKS                       R10 R10 K3 ["value"]
       74 NAMECALL                         R8 R8 K15 ["format"]
       76 CALL                             R8 2 1
       77 JUMP                             ; [+1]
       78 LOADK                            R8 K17 ["avatar-chat-pipeline--item-full"]
       79 SETTABLEKS                       R8 R7 K9 ["testId"]
       81 DUPTABLE                         R8 K20 [{"Badge", "Copy"}]
       82 GETUPVAL                         R9 2
       83 GETTABLEKS                       R9 R9 K5 ["createElement"]
       85 GETUPVAL                         R10 3
       86 DUPTABLE                         R11 K22 [{"tag", "Size", "LayoutOrder"}]
       87 NEWTABLE                         R12 4 0
       89 LOADB                            R13 1
       90 SETTABLEKS                       R13 R12 K23 ["align-x-center align-y-center radius-small"]
       92 SETTABLEKS                       R4 R12 K24 ["bg-system-contrast"]
       94 NOT                              R13 R4
       95 SETTABLEKS                       R13 R12 K25 ["bg-shift-300"]
       97 SETTABLEKS                       R12 R11 K6 ["tag"]
       99 GETIMPORT                        R12 K28 [UDim2.fromOffset]
      101 LOADN                            R13 24
      102 LOADN                            R14 24
      103 CALL                             R12 2 1
      104 SETTABLEKS                       R12 R11 K21 ["Size"]
      106 MOVE                             R12 R2
      107 CALL                             R12 0 1
      108 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
      110 DUPTABLE                         R12 K30 [{"Number"}]
      111 GETUPVAL                         R13 2
      112 GETTABLEKS                       R13 R13 K5 ["createElement"]
      114 GETUPVAL                         R14 4
      115 DUPTABLE                         R15 K32 [{"tag", "Text"}]
      116 NEWTABLE                         R16 4 0
      118 LOADB                            R17 1
      119 SETTABLEKS                       R17 R16 K33 ["auto-xy text-label-small"]
      121 SETTABLEKS                       R4 R16 K34 ["content-inverse-emphasis"]
      123 NOT                              R18 R4
      124 AND                              R17 R18 R3
      125 SETTABLEKS                       R17 R16 K35 ["content-emphasis"]
      127 NOT                              R17 R3
      128 SETTABLEKS                       R17 R16 K36 ["content-muted"]
      130 SETTABLEKS                       R16 R15 K6 ["tag"]
      132 GETTABLEKS                       R17 R0 K13 ["order"]
      134 FASTCALL1                        TOSTRING R17 ; [+2]
      135 GETIMPORT                        R16 K38 [tostring]
      137 CALL                             R16 1 1
      138 SETTABLEKS                       R16 R15 K31 ["Text"]
      140 CALL                             R13 2 1
      141 SETTABLEKS                       R13 R12 K29 ["Number"]
      143 CALL                             R9 3 1
      144 SETTABLEKS                       R9 R8 K18 ["Badge"]
      146 GETUPVAL                         R9 2
      147 GETTABLEKS                       R9 R9 K5 ["createElement"]
      149 GETUPVAL                         R10 3
      150 DUPTABLE                         R11 K40 [{["tag"] = "col grow gap-xxsmall auto-y", ["LayoutOrder"]}]
      151 MOVE                             R12 R2
      152 CALL                             R12 0 1
      153 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
      155 DUPTABLE                         R12 K43 [{"Title", "Detail"}]
      156 GETUPVAL                         R13 2
      157 GETTABLEKS                       R13 R13 K5 ["createElement"]
      159 GETUPVAL                         R14 4
      160 DUPTABLE                         R15 K44 [{"tag", "Text", "LayoutOrder"}]
      161 NEWTABLE                         R16 4 0
      163 LOADB                            R17 1
      164 SETTABLEKS                       R17 R16 K45 ["auto-xy text-label-medium text-wrap text-align-x-left"]
      166 SETTABLEKS                       R3 R16 K35 ["content-emphasis"]
      168 NOT                              R17 R3
      169 SETTABLEKS                       R17 R16 K36 ["content-muted"]
      171 SETTABLEKS                       R16 R15 K6 ["tag"]
      173 LOADK                            R18 K46 ["AvatarChatScreen"]
      174 GETTABLEKS                       R19 R0 K2 ["option"]
      176 GETTABLEKS                       R19 R19 K47 ["titleKey"]
      178 NAMECALL                         R16 R1 K48 ["getText"]
      180 CALL                             R16 3 1
      181 SETTABLEKS                       R16 R15 K31 ["Text"]
      183 MOVE                             R16 R2
      184 CALL                             R16 0 1
      185 SETTABLEKS                       R16 R15 K7 ["LayoutOrder"]
      187 CALL                             R13 2 1
      188 SETTABLEKS                       R13 R12 K41 ["Title"]
      190 GETUPVAL                         R13 2
      191 GETTABLEKS                       R13 R13 K5 ["createElement"]
      193 GETUPVAL                         R14 4
      194 DUPTABLE                         R15 K44 [{"tag", "Text", "LayoutOrder"}]
      195 NEWTABLE                         R16 4 0
      197 LOADB                            R17 1
      198 SETTABLEKS                       R17 R16 K49 ["auto-xy text-body-small text-wrap text-align-x-left"]
      200 SETTABLEKS                       R3 R16 K50 ["content-default"]
      202 NOT                              R17 R3
      203 SETTABLEKS                       R17 R16 K36 ["content-muted"]
      205 SETTABLEKS                       R16 R15 K6 ["tag"]
      207 LOADK                            R18 K46 ["AvatarChatScreen"]
      208 GETTABLEKS                       R19 R0 K2 ["option"]
      210 GETTABLEKS                       R19 R19 K51 ["detailKey"]
      212 NAMECALL                         R16 R1 K48 ["getText"]
      214 CALL                             R16 3 1
      215 SETTABLEKS                       R16 R15 K31 ["Text"]
      217 MOVE                             R16 R2
      218 CALL                             R16 0 1
      219 SETTABLEKS                       R16 R15 K7 ["LayoutOrder"]
      221 CALL                             R13 2 1
      222 SETTABLEKS                       R13 R12 K42 ["Detail"]
      224 CALL                             R9 3 1
      225 SETTABLEKS                       R9 R8 K19 ["Copy"]
      227 CALL                             R5 3 -1
      228 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K11 ["Text"]
       37 GETTABLEKS                       R6 R4 K12 ["View"]
       39 GETTABLEKS                       R7 R1 K13 ["ContextServices"]
       41 GETTABLEKS                       R7 R7 K14 ["Localization"]
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K15 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Types"]
       49 CALL                             R8 1 1
       50 DUPCLOSURE                       R9 K17 [PROTO_1]
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R5
       56 RETURN                           R9 1
