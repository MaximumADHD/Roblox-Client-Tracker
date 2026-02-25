PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEN                        R0 R1 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["showSaveToRoblox"]
        5 NEWTABLE                         R2 0 1
        7 GETTABLEKS                       R3 R0 K1 ["instance"]
        9 SETLIST                          R2 R3 1 [1]
       11 GETTABLEKS                       R3 R0 K2 ["assetType"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 1
        4 LENGTH                           R0 R1
        5 JUMPIFNOTEQKN                    R0 K0 [1] ; [+11]
        7 GETIMPORT                        R0 K3 [task.spawn]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CALL                             R0 1 0
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R0 R1 K4 ["close"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K0 ["showSaveToRoblox"]
        7 NEWTABLE                         R6 0 1
        9 GETTABLEKS                       R7 R4 K1 ["instance"]
       11 SETLIST                          R6 R7 1 [1]
       13 GETTABLEKS                       R7 R4 K2 ["assetType"]
       15 GETUPVAL                         R10 0
       16 LENGTH                           R9 R10
       17 JUMPIFNOTEQ                      R3 R9 ; [+2]
       19 LOADB                            R8 0 +1
       20 LOADB                            R8 1
       21 CALL                             R5 3 0
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R5 R6 K3 ["onUGCSubmitCompleted"]
       25 NAMECALL                         R5 R5 K4 ["Wait"]
       27 CALL                             R5 1 1
       28 JUMPIF                           R5 ; [+2]
       29 FORGLOOP                         R0 2 ; [-26]
       31 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["close"]
        3 CALL                             R1 0 0
        4 JUMPIFNOTEQKS                    R0 K1 ["cancel"] ; [+2]
        6 RETURN                           R0 0
        7 GETIMPORT                        R1 K4 [task.spawn]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["SubmitDialog"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R4 R0 K2 ["avatar"]
       12 CALL                             R3 1 1
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K3 ["useState"]
       16 MOVE                             R5 R3
       17 CALL                             R4 1 2
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R6 R7 K4 ["useContext"]
       21 GETUPVAL                         R7 4
       22 CALL                             R6 1 1
       23 GETUPVAL                         R8 3
       24 GETTABLEKS                       R7 R8 K5 ["useEffect"]
       26 NEWCLOSURE                       R8 P0
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R0
       31 NEWTABLE                         R9 0 1
       33 MOVE                             R10 R3
       34 SETLIST                          R9 R10 1 [1]
       36 CALL                             R7 2 0
       37 GETUPVAL                         R8 3
       38 GETTABLEKS                       R7 R8 K3 ["useState"]
       40 LOADN                            R8 0
       41 CALL                             R7 1 2
       42 LENGTH                           R11 R3
       43 LOADN                            R12 0
       44 JUMPIFLT                         R12 R11 ; [+2]
       46 LOADB                            R10 0 +1
       47 LOADB                            R10 1
       48 FASTCALL2K                       ASSERT R10 K6 ; [+4]
       50 LOADK                            R11 K6 ["No available publish choices"]
       51 GETIMPORT                        R9 K8 [assert]
       53 CALL                             R9 2 0
       54 LENGTH                           R9 R3
       55 JUMPIFNOTEQKN                    R9 K9 [1] ; [+3]
       57 LOADNIL                          R9
       58 RETURN                           R9 1
       59 GETUPVAL                         R10 3
       60 GETTABLEKS                       R9 R10 K10 ["createElement"]
       62 GETUPVAL                         R10 5
       63 DUPTABLE                         R11 K19 [{"key", "Enabled", "Modal", "Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose"}]
       64 LOADK                            R12 K1 ["SubmitDialog"]
       65 SETTABLEKS                       R12 R11 K11 ["key"]
       67 LOADB                            R12 1
       68 SETTABLEKS                       R12 R11 K12 ["Enabled"]
       70 LOADB                            R12 1
       71 SETTABLEKS                       R12 R11 K13 ["Modal"]
       73 LOADK                            R14 K1 ["SubmitDialog"]
       74 LOADK                            R15 K14 ["Title"]
       75 NAMECALL                         R12 R1 K20 ["getText"]
       77 CALL                             R12 3 1
       78 SETTABLEKS                       R12 R11 K14 ["Title"]
       80 GETIMPORT                        R12 K23 [Vector2.new]
       82 GETTABLEKS                       R13 R2 K24 ["Width"]
       84 MOVE                             R14 R7
       85 CALL                             R12 2 1
       86 SETTABLEKS                       R12 R11 K15 ["MinContentSize"]
       88 NEWTABLE                         R12 0 2
       90 DUPTABLE                         R13 K27 [{"Key", "Text"}]
       91 LOADK                            R14 K28 ["cancel"]
       92 SETTABLEKS                       R14 R13 K25 ["Key"]
       94 LOADK                            R16 K1 ["SubmitDialog"]
       95 LOADK                            R17 K29 ["Cancel"]
       96 NAMECALL                         R14 R1 K20 ["getText"]
       98 CALL                             R14 3 1
       99 SETTABLEKS                       R14 R13 K26 ["Text"]
      101 DUPTABLE                         R14 K32 [{"Key", "Text", "Style", "StyleModifier"}]
      102 LOADK                            R15 K33 ["ok"]
      103 SETTABLEKS                       R15 R14 K25 ["Key"]
      105 LOADK                            R17 K1 ["SubmitDialog"]
      106 LOADK                            R18 K34 ["OK"]
      107 NAMECALL                         R15 R1 K20 ["getText"]
      109 CALL                             R15 3 1
      110 SETTABLEKS                       R15 R14 K26 ["Text"]
      112 LOADK                            R15 K35 ["RoundPrimary"]
      113 SETTABLEKS                       R15 R14 K30 ["Style"]
      115 GETIMPORT                        R16 K37 [next]
      117 MOVE                             R17 R4
      118 CALL                             R16 1 1
      119 JUMPIFNOTEQKNIL                  R16 ; [+5]
      121 GETUPVAL                         R16 6
      122 GETTABLEKS                       R15 R16 K38 ["Disabled"]
      124 JUMP                             ; [+1]
      125 LOADNIL                          R15
      126 SETTABLEKS                       R15 R14 K31 ["StyleModifier"]
      128 SETLIST                          R12 R13 2 [1]
      130 SETTABLEKS                       R12 R11 K16 ["Buttons"]
      132 NEWCLOSURE                       R12 P1
      133 CAPTURE                          VAL R0
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R6
      136 SETTABLEKS                       R12 R11 K17 ["OnButtonPressed"]
      138 GETTABLEKS                       R12 R0 K39 ["close"]
      140 SETTABLEKS                       R12 R11 K18 ["OnClose"]
      142 GETUPVAL                         R13 3
      143 GETTABLEKS                       R12 R13 K10 ["createElement"]
      145 GETUPVAL                         R13 7
      146 DUPTABLE                         R14 K44 [{"avatar", "setHeight", "availableChoices", "publishChoices", "setPublishChoices"}]
      147 GETTABLEKS                       R15 R0 K2 ["avatar"]
      149 SETTABLEKS                       R15 R14 K2 ["avatar"]
      151 SETTABLEKS                       R8 R14 K40 ["setHeight"]
      153 SETTABLEKS                       R3 R14 K41 ["availableChoices"]
      155 SETTABLEKS                       R4 R14 K42 ["publishChoices"]
      157 SETTABLEKS                       R5 R14 K43 ["setPublishChoices"]
      159 CALL                             R12 2 -1
      160 CALL                             R9 -1 -1
      161 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Resources"]
       27 GETTABLEKS                       R4 R5 K11 ["Theme"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R6 K12 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K9 ["Src"]
       41 GETTABLEKS                       R7 R8 K13 ["Components"]
       43 GETTABLEKS                       R6 R7 K14 ["StudioAssetServiceContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R8 K1 [script]
       50 GETTABLEKS                       R7 R8 K15 ["SubmitInner"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETIMPORT                        R9 K1 [script]
       57 GETTABLEKS                       R8 R9 K16 ["useAvailableSubmitChoices"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R1 K17 ["UI"]
       62 GETTABLEKS                       R9 R8 K18 ["StyledDialog"]
       64 GETTABLEKS                       R11 R1 K19 ["ContextServices"]
       66 GETTABLEKS                       R10 R11 K20 ["Localization"]
       68 GETTABLEKS                       R12 R1 K19 ["ContextServices"]
       70 GETTABLEKS                       R11 R12 K21 ["Stylizer"]
       72 GETTABLEKS                       R13 R1 K22 ["Util"]
       74 GETTABLEKS                       R12 R13 K23 ["StyleModifier"]
       76 DUPCLOSURE                       R13 K24 [PROTO_4]
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R12
       84 CAPTURE                          VAL R6
       85 RETURN                           R13 1
