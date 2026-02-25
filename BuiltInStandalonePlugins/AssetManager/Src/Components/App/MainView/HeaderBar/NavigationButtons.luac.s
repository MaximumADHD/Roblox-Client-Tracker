PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["backHistory"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["forwardHistory"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["backHistory"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["forwardHistory"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["use"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["use"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 2
       10 GETUPVAL                         R5 3
       11 CALL                             R5 0 1
       12 JUMPIFNOT                        R5 ; [+139]
       13 GETUPVAL                         R6 4
       14 GETTABLEKS                       R5 R6 K1 ["createElement"]
       16 GETUPVAL                         R7 5
       17 GETTABLEKS                       R6 R7 K2 ["View"]
       19 DUPTABLE                         R7 K5 [{"LayoutOrder", "tag"}]
       20 GETTABLEKS                       R8 R0 K3 ["LayoutOrder"]
       22 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       24 LOADK                            R8 K6 ["size-0 auto-xy row"]
       25 SETTABLEKS                       R8 R7 K4 ["tag"]
       27 DUPTABLE                         R8 K9 [{"BackButton", "ForwardButton"}]
       28 GETUPVAL                         R10 4
       29 GETTABLEKS                       R9 R10 K1 ["createElement"]
       31 GETUPVAL                         R11 5
       32 GETTABLEKS                       R10 R11 K10 ["Tooltip"]
       34 DUPTABLE                         R11 K13 [{"LayoutOrder", "title", "side"}]
       35 LOADN                            R12 1
       36 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
       38 LOADK                            R14 K14 ["Navigation"]
       39 LOADK                            R15 K15 ["GoBack"]
       40 NAMECALL                         R12 R1 K16 ["getText"]
       42 CALL                             R12 3 1
       43 SETTABLEKS                       R12 R11 K11 ["title"]
       45 GETUPVAL                         R15 5
       46 GETTABLEKS                       R14 R15 K17 ["Enums"]
       48 GETTABLEKS                       R13 R14 K18 ["PopoverSide"]
       50 GETTABLEKS                       R12 R13 K19 ["Bottom"]
       52 SETTABLEKS                       R12 R11 K12 ["side"]
       54 GETUPVAL                         R13 4
       55 GETTABLEKS                       R12 R13 K1 ["createElement"]
       57 GETUPVAL                         R14 5
       58 GETTABLEKS                       R13 R14 K20 ["IconButton"]
       60 DUPTABLE                         R14 K25 [{"icon", "size", "onActivated", "isDisabled"}]
       61 GETUPVAL                         R18 5
       62 GETTABLEKS                       R17 R18 K17 ["Enums"]
       64 GETTABLEKS                       R16 R17 K26 ["IconName"]
       66 GETTABLEKS                       R15 R16 K27 ["ChevronLargeLeft"]
       68 SETTABLEKS                       R15 R14 K21 ["icon"]
       70 GETUPVAL                         R18 5
       71 GETTABLEKS                       R17 R18 K17 ["Enums"]
       73 GETTABLEKS                       R16 R17 K28 ["IconSize"]
       75 GETTABLEKS                       R15 R16 K29 ["XSmall"]
       77 SETTABLEKS                       R15 R14 K22 ["size"]
       79 NEWCLOSURE                       R15 P0
       80 CAPTURE                          VAL R2
       81 SETTABLEKS                       R15 R14 K23 ["onActivated"]
       83 SETTABLEKS                       R3 R14 K24 ["isDisabled"]
       85 CALL                             R12 2 -1
       86 CALL                             R9 -1 1
       87 SETTABLEKS                       R9 R8 K7 ["BackButton"]
       89 GETUPVAL                         R10 4
       90 GETTABLEKS                       R9 R10 K1 ["createElement"]
       92 GETUPVAL                         R11 5
       93 GETTABLEKS                       R10 R11 K10 ["Tooltip"]
       95 DUPTABLE                         R11 K13 [{"LayoutOrder", "title", "side"}]
       96 LOADN                            R12 2
       97 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
       99 LOADK                            R14 K14 ["Navigation"]
      100 LOADK                            R15 K30 ["GoForward"]
      101 NAMECALL                         R12 R1 K16 ["getText"]
      103 CALL                             R12 3 1
      104 SETTABLEKS                       R12 R11 K11 ["title"]
      106 GETUPVAL                         R15 5
      107 GETTABLEKS                       R14 R15 K17 ["Enums"]
      109 GETTABLEKS                       R13 R14 K18 ["PopoverSide"]
      111 GETTABLEKS                       R12 R13 K19 ["Bottom"]
      113 SETTABLEKS                       R12 R11 K12 ["side"]
      115 GETUPVAL                         R13 4
      116 GETTABLEKS                       R12 R13 K1 ["createElement"]
      118 GETUPVAL                         R14 5
      119 GETTABLEKS                       R13 R14 K20 ["IconButton"]
      121 DUPTABLE                         R14 K25 [{"icon", "size", "onActivated", "isDisabled"}]
      122 GETUPVAL                         R18 5
      123 GETTABLEKS                       R17 R18 K17 ["Enums"]
      125 GETTABLEKS                       R16 R17 K26 ["IconName"]
      127 GETTABLEKS                       R15 R16 K31 ["ChevronLargeRight"]
      129 SETTABLEKS                       R15 R14 K21 ["icon"]
      131 GETUPVAL                         R18 5
      132 GETTABLEKS                       R17 R18 K17 ["Enums"]
      134 GETTABLEKS                       R16 R17 K28 ["IconSize"]
      136 GETTABLEKS                       R15 R16 K29 ["XSmall"]
      138 SETTABLEKS                       R15 R14 K22 ["size"]
      140 NEWCLOSURE                       R15 P1
      141 CAPTURE                          VAL R2
      142 SETTABLEKS                       R15 R14 K23 ["onActivated"]
      144 SETTABLEKS                       R4 R14 K24 ["isDisabled"]
      146 CALL                             R12 2 -1
      147 CALL                             R9 -1 1
      148 SETTABLEKS                       R9 R8 K8 ["ForwardButton"]
      150 CALL                             R5 3 -1
      151 RETURN                           R5 -1
      152 GETUPVAL                         R6 4
      153 GETTABLEKS                       R5 R6 K1 ["createElement"]
      155 GETUPVAL                         R7 5
      156 GETTABLEKS                       R6 R7 K2 ["View"]
      158 DUPTABLE                         R7 K5 [{"LayoutOrder", "tag"}]
      159 GETTABLEKS                       R8 R0 K3 ["LayoutOrder"]
      161 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
      163 LOADK                            R8 K6 ["size-0 auto-xy row"]
      164 SETTABLEKS                       R8 R7 K4 ["tag"]
      166 DUPTABLE                         R8 K9 [{"BackButton", "ForwardButton"}]
      167 GETUPVAL                         R10 4
      168 GETTABLEKS                       R9 R10 K1 ["createElement"]
      170 GETUPVAL                         R11 5
      171 GETTABLEKS                       R10 R11 K20 ["IconButton"]
      173 DUPTABLE                         R11 K32 [{"LayoutOrder", "icon", "size", "onActivated", "isDisabled"}]
      174 LOADN                            R12 1
      175 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
      177 GETUPVAL                         R15 5
      178 GETTABLEKS                       R14 R15 K17 ["Enums"]
      180 GETTABLEKS                       R13 R14 K26 ["IconName"]
      182 GETTABLEKS                       R12 R13 K27 ["ChevronLargeLeft"]
      184 SETTABLEKS                       R12 R11 K21 ["icon"]
      186 GETUPVAL                         R15 5
      187 GETTABLEKS                       R14 R15 K17 ["Enums"]
      189 GETTABLEKS                       R13 R14 K28 ["IconSize"]
      191 GETTABLEKS                       R12 R13 K29 ["XSmall"]
      193 SETTABLEKS                       R12 R11 K22 ["size"]
      195 NEWCLOSURE                       R12 P2
      196 CAPTURE                          VAL R2
      197 SETTABLEKS                       R12 R11 K23 ["onActivated"]
      199 SETTABLEKS                       R3 R11 K24 ["isDisabled"]
      201 CALL                             R9 2 1
      202 SETTABLEKS                       R9 R8 K7 ["BackButton"]
      204 GETUPVAL                         R10 4
      205 GETTABLEKS                       R9 R10 K1 ["createElement"]
      207 GETUPVAL                         R11 5
      208 GETTABLEKS                       R10 R11 K20 ["IconButton"]
      210 DUPTABLE                         R11 K32 [{"LayoutOrder", "icon", "size", "onActivated", "isDisabled"}]
      211 LOADN                            R12 2
      212 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
      214 GETUPVAL                         R15 5
      215 GETTABLEKS                       R14 R15 K17 ["Enums"]
      217 GETTABLEKS                       R13 R14 K26 ["IconName"]
      219 GETTABLEKS                       R12 R13 K31 ["ChevronLargeRight"]
      221 SETTABLEKS                       R12 R11 K21 ["icon"]
      223 GETUPVAL                         R15 5
      224 GETTABLEKS                       R14 R15 K17 ["Enums"]
      226 GETTABLEKS                       R13 R14 K28 ["IconSize"]
      228 GETTABLEKS                       R12 R13 K29 ["XSmall"]
      230 SETTABLEKS                       R12 R11 K22 ["size"]
      232 NEWCLOSURE                       R12 P3
      233 CAPTURE                          VAL R2
      234 SETTABLEKS                       R12 R11 K23 ["onActivated"]
      236 SETTABLEKS                       R4 R11 K24 ["isDisabled"]
      238 CALL                             R9 2 1
      239 SETTABLEKS                       R9 R8 K8 ["ForwardButton"]
      241 CALL                             R5 3 -1
      242 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R9 R0 K12 ["Src"]
       36 GETTABLEKS                       R8 R9 K13 ["Controllers"]
       38 GETTABLEKS                       R7 R8 K14 ["ExplorerController"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R10 R0 K12 ["Src"]
       45 GETTABLEKS                       R9 R10 K15 ["Hooks"]
       47 GETTABLEKS                       R8 R9 K16 ["useCurrentScopeHistory"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R11 R0 K12 ["Src"]
       54 GETTABLEKS                       R10 R11 K17 ["Flags"]
       56 GETTABLEKS                       R9 R10 K18 ["getFFlagAmrNavButtonTooltips"]
       58 CALL                             R8 1 1
       59 DUPCLOSURE                       R9 K19 [PROTO_4]
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R7
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R2
       66 RETURN                           R9 1
