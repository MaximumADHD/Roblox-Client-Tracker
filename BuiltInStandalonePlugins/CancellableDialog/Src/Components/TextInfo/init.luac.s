PROTO_0:
        0 GETIMPORT                        R0 K2 [os.time]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K3 ["current"]
        6 GETTABLEKS                       R1 R2 K4 ["IsLoaded"]
        8 JUMPIF                           R1 ; [+11]
        9 GETIMPORT                        R2 K2 [os.time]
       11 CALL                             R2 0 1
       12 SUB                              R1 R2 R0
       13 LOADN                            R2 1
       14 JUMPIFNOTLT                      R1 R2 ; [+5]
       16 GETIMPORT                        R1 K7 [task.wait]
       18 CALL                             R1 0 0
       19 JUMPBACK                         ; [-17]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K8 ["OnShown"]
       23 CALL                             R1 0 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K3 ["Cancel"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K4 ["Destroy"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        9 LOADK                            R2 K1 ["LoadingIcon was not mounted by useEffect"]
       10 GETIMPORT                        R0 K3 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["current"]
       17 GETUPVAL                         R3 2
       18 DUPTABLE                         R4 K5 [{"Rotation"}]
       19 LOADN                            R5 104
       20 SETTABLEKS                       R5 R4 K4 ["Rotation"]
       22 NAMECALL                         R0 R0 K6 ["Create"]
       24 CALL                             R0 4 1
       25 NAMECALL                         R1 R0 K7 ["Play"]
       27 CALL                             R1 1 0
       28 GETIMPORT                        R1 K10 [task.spawn]
       30 NEWCLOSURE                       R2 P0
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          UPVAL U3
       33 CALL                             R1 1 1
       34 NEWCLOSURE                       R2 P1
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R0
       37 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useRef"]
        7 LOADNIL                          R3
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K2 ["useEffect"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 NEWTABLE                         R5 0 0
       19 CALL                             R3 2 0
       20 GETTABLEKS                       R4 R0 K3 ["Title"]
       22 JUMPIFEQKS                       R4 K4 [""] ; [+2]
       24 LOADB                            R3 0 +1
       25 LOADB                            R3 1
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R4 R5 K5 ["createElement"]
       29 LOADK                            R5 K6 ["Frame"]
       30 NEWTABLE                         R6 4 0
       32 GETTABLEKS                       R7 R0 K7 ["Size"]
       34 SETTABLEKS                       R7 R6 K7 ["Size"]
       36 GETTABLEKS                       R7 R0 K8 ["LayoutOrder"]
       38 SETTABLEKS                       R7 R6 K8 ["LayoutOrder"]
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R7 R8 K9 ["Tag"]
       43 LOADK                            R8 K10 ["X-FitY X-Column Component-TextInfo"]
       44 SETTABLE                         R8 R6 R7
       45 DUPTABLE                         R7 K13 [{"TitleFrame", "StatusTextFrame"}]
       46 GETUPVAL                         R9 1
       47 GETTABLEKS                       R8 R9 K5 ["createElement"]
       49 LOADK                            R9 K6 ["Frame"]
       50 NEWTABLE                         R10 2 0
       52 NAMECALL                         R11 R1 K14 ["getNextOrder"]
       54 CALL                             R11 1 1
       55 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       57 GETUPVAL                         R12 1
       58 GETTABLEKS                       R11 R12 K9 ["Tag"]
       60 LOADK                            R12 K15 ["X-FitY X-Column"]
       61 SETTABLE                         R12 R10 R11
       62 DUPTABLE                         R11 K18 [{"Title", "TitleShimmer", "Subtitle"}]
       63 JUMPIF                           R3 ; [+22]
       64 GETUPVAL                         R13 1
       65 GETTABLEKS                       R12 R13 K5 ["createElement"]
       67 LOADK                            R13 K19 ["TextLabel"]
       68 NEWTABLE                         R14 4 0
       70 GETTABLEKS                       R15 R0 K3 ["Title"]
       72 SETTABLEKS                       R15 R14 K20 ["Text"]
       74 NAMECALL                         R15 R1 K14 ["getNextOrder"]
       76 CALL                             R15 1 1
       77 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
       79 GETUPVAL                         R16 1
       80 GETTABLEKS                       R15 R16 K9 ["Tag"]
       82 LOADK                            R16 K21 ["X-FitY TitleText"]
       83 SETTABLE                         R16 R14 R15
       84 CALL                             R12 2 1
       85 JUMP                             ; [+1]
       86 LOADNIL                          R12
       87 SETTABLEKS                       R12 R11 K3 ["Title"]
       89 JUMPIFNOT                        R3 ; [+21]
       90 GETUPVAL                         R13 1
       91 GETTABLEKS                       R12 R13 K5 ["createElement"]
       93 GETUPVAL                         R13 4
       94 DUPTABLE                         R14 K22 [{"Size", "LayoutOrder"}]
       95 GETIMPORT                        R15 K24 [UDim2.new]
       97 LOADK                            R16 K25 [0.65]
       98 LOADN                            R17 0
       99 LOADN                            R18 0
      100 LOADN                            R19 20
      101 CALL                             R15 4 1
      102 SETTABLEKS                       R15 R14 K7 ["Size"]
      104 NAMECALL                         R15 R1 K14 ["getNextOrder"]
      106 CALL                             R15 1 1
      107 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
      109 CALL                             R12 2 1
      110 JUMP                             ; [+1]
      111 LOADNIL                          R12
      112 SETTABLEKS                       R12 R11 K16 ["TitleShimmer"]
      114 GETUPVAL                         R13 1
      115 GETTABLEKS                       R12 R13 K5 ["createElement"]
      117 LOADK                            R13 K19 ["TextLabel"]
      118 NEWTABLE                         R14 4 0
      120 GETTABLEKS                       R15 R0 K17 ["Subtitle"]
      122 SETTABLEKS                       R15 R14 K20 ["Text"]
      124 NAMECALL                         R15 R1 K14 ["getNextOrder"]
      126 CALL                             R15 1 1
      127 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
      129 GETUPVAL                         R16 1
      130 GETTABLEKS                       R15 R16 K9 ["Tag"]
      132 LOADK                            R16 K26 ["X-FitY SubtitleText"]
      133 SETTABLE                         R16 R14 R15
      134 CALL                             R12 2 1
      135 SETTABLEKS                       R12 R11 K17 ["Subtitle"]
      137 CALL                             R8 3 1
      138 SETTABLEKS                       R8 R7 K11 ["TitleFrame"]
      140 GETUPVAL                         R9 1
      141 GETTABLEKS                       R8 R9 K5 ["createElement"]
      143 LOADK                            R9 K6 ["Frame"]
      144 NEWTABLE                         R10 2 0
      146 NAMECALL                         R11 R1 K14 ["getNextOrder"]
      148 CALL                             R11 1 1
      149 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
      151 GETUPVAL                         R12 1
      152 GETTABLEKS                       R11 R12 K9 ["Tag"]
      154 LOADK                            R12 K27 ["X-FitY X-Row StatusTextFrame"]
      155 SETTABLE                         R12 R10 R11
      156 DUPTABLE                         R11 K30 [{"IconContainer", "StatusText"}]
      157 GETUPVAL                         R13 1
      158 GETTABLEKS                       R12 R13 K5 ["createElement"]
      160 LOADK                            R13 K6 ["Frame"]
      161 NEWTABLE                         R14 1 0
      163 GETUPVAL                         R16 1
      164 GETTABLEKS                       R15 R16 K9 ["Tag"]
      166 LOADK                            R16 K31 ["LoadingIconContainer"]
      167 SETTABLE                         R16 R14 R15
      168 DUPTABLE                         R15 K33 [{"LoadingIcon"}]
      169 GETUPVAL                         R17 1
      170 GETTABLEKS                       R16 R17 K5 ["createElement"]
      172 LOADK                            R17 K34 ["ImageLabel"]
      173 NEWTABLE                         R18 4 0
      175 NAMECALL                         R19 R1 K14 ["getNextOrder"]
      177 CALL                             R19 1 1
      178 SETTABLEKS                       R19 R18 K8 ["LayoutOrder"]
      180 SETTABLEKS                       R2 R18 K35 ["ref"]
      182 GETUPVAL                         R20 1
      183 GETTABLEKS                       R19 R20 K9 ["Tag"]
      185 LOADK                            R20 K32 ["LoadingIcon"]
      186 SETTABLE                         R20 R18 R19
      187 CALL                             R16 2 1
      188 SETTABLEKS                       R16 R15 K32 ["LoadingIcon"]
      190 CALL                             R12 3 1
      191 SETTABLEKS                       R12 R11 K28 ["IconContainer"]
      193 GETUPVAL                         R13 1
      194 GETTABLEKS                       R12 R13 K5 ["createElement"]
      196 LOADK                            R13 K19 ["TextLabel"]
      197 NEWTABLE                         R14 4 0
      199 GETTABLEKS                       R15 R0 K36 ["Status"]
      201 SETTABLEKS                       R15 R14 K20 ["Text"]
      203 NAMECALL                         R15 R1 K14 ["getNextOrder"]
      205 CALL                             R15 1 1
      206 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
      208 GETIMPORT                        R15 K24 [UDim2.new]
      210 LOADN                            R16 1
      211 GETUPVAL                         R18 5
      212 MINUS                            R17 R18
      213 LOADN                            R18 0
      214 LOADN                            R19 0
      215 CALL                             R15 4 1
      216 SETTABLEKS                       R15 R14 K7 ["Size"]
      218 GETUPVAL                         R16 1
      219 GETTABLEKS                       R15 R16 K9 ["Tag"]
      221 LOADK                            R16 K37 ["X-FitY StatusText"]
      222 SETTABLE                         R16 R14 R15
      223 CALL                             R12 2 1
      224 SETTABLEKS                       R12 R11 K29 ["StatusText"]
      226 CALL                             R8 3 1
      227 SETTABLEKS                       R8 R7 K12 ["StatusTextFrame"]
      229 CALL                             R4 3 -1
      230 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CancellableDialog"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R4 K10 ["LayoutOrderIterator"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R7 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R7 K12 ["Components"]
       31 GETTABLEKS                       R5 R6 K13 ["Shimmer"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETIMPORT                        R7 K1 [script]
       38 GETTABLEKS                       R6 R7 K14 ["styles"]
       40 CALL                             R5 1 1
       41 LOADK                            R11 K15 ["IconSize"]
       42 NAMECALL                         R9 R5 K16 ["GetAttribute"]
       44 CALL                             R9 2 1
       45 GETTABLEKS                       R8 R9 K17 ["X"]
       47 GETTABLEKS                       R7 R8 K18 ["Offset"]
       49 LOADK                            R11 K19 ["IconToContentPadding"]
       50 NAMECALL                         R9 R5 K16 ["GetAttribute"]
       52 CALL                             R9 2 1
       53 GETTABLEKS                       R8 R9 K18 ["Offset"]
       55 ADD                              R6 R7 R8
       56 GETIMPORT                        R7 K21 [game]
       58 LOADK                            R9 K22 ["TweenService"]
       59 NAMECALL                         R7 R7 K23 ["GetService"]
       61 CALL                             R7 2 1
       62 GETIMPORT                        R8 K26 [TweenInfo.new]
       64 LOADN                            R9 2
       65 GETIMPORT                        R10 K30 [Enum.EasingStyle.Linear]
       67 GETIMPORT                        R11 K33 [Enum.EasingDirection.In]
       69 LOADN                            R12 255
       70 CALL                             R8 4 1
       71 DUPCLOSURE                       R9 K34 [PROTO_3]
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R6
       78 RETURN                           R9 1
