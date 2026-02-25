PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Schema"]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R2 R2 K1 ["use"]
        5 CALL                             R2 1 1
        6 LOADNIL                          R3
        7 GETTABLEKS                       R4 R1 K2 ["CanConfirm"]
        9 JUMPIFNOT                        R4 ; [+37]
       10 NEWTABLE                         R4 0 2
       12 DUPTABLE                         R5 K5 [{"Type", "Text"}]
       13 LOADK                            R6 K6 ["Label"]
       14 SETTABLEKS                       R6 R5 K3 ["Type"]
       16 LOADK                            R8 K7 ["Viewport"]
       17 LOADK                            R9 K8 ["ConfirmMessage"]
       18 NAMECALL                         R6 R2 K9 ["getText"]
       20 CALL                             R6 3 1
       21 SETTABLEKS                       R6 R5 K4 ["Text"]
       23 DUPTABLE                         R6 K12 [{"Enabled", "OnClick", "Type", "Text"}]
       24 GETTABLEKS                       R8 R0 K13 ["Disabled"]
       26 NOT                              R7 R8
       27 SETTABLEKS                       R7 R6 K10 ["Enabled"]
       29 GETTABLEKS                       R7 R1 K11 ["OnClick"]
       31 SETTABLEKS                       R7 R6 K11 ["OnClick"]
       33 LOADK                            R7 K14 ["TextButton"]
       34 SETTABLEKS                       R7 R6 K3 ["Type"]
       36 LOADK                            R9 K7 ["Viewport"]
       37 LOADK                            R10 K15 ["Confirm"]
       38 NAMECALL                         R7 R2 K9 ["getText"]
       40 CALL                             R7 3 1
       41 SETTABLEKS                       R7 R6 K4 ["Text"]
       43 SETLIST                          R4 R5 2 [1]
       45 MOVE                             R3 R4
       46 JUMP                             ; [+39]
       47 GETTABLEKS                       R4 R1 K16 ["CanRegenerate"]
       49 JUMPIFNOT                        R4 ; [+36]
       50 NEWTABLE                         R4 0 2
       52 DUPTABLE                         R5 K5 [{"Type", "Text"}]
       53 LOADK                            R6 K6 ["Label"]
       54 SETTABLEKS                       R6 R5 K3 ["Type"]
       56 LOADK                            R8 K7 ["Viewport"]
       57 LOADK                            R9 K17 ["RegenerateMessage"]
       58 NAMECALL                         R6 R2 K9 ["getText"]
       60 CALL                             R6 3 1
       61 SETTABLEKS                       R6 R5 K4 ["Text"]
       63 DUPTABLE                         R6 K12 [{"Enabled", "OnClick", "Type", "Text"}]
       64 GETTABLEKS                       R8 R0 K13 ["Disabled"]
       66 NOT                              R7 R8
       67 SETTABLEKS                       R7 R6 K10 ["Enabled"]
       69 GETTABLEKS                       R7 R1 K18 ["OnRegenerate"]
       71 SETTABLEKS                       R7 R6 K11 ["OnClick"]
       73 LOADK                            R7 K14 ["TextButton"]
       74 SETTABLEKS                       R7 R6 K3 ["Type"]
       76 LOADK                            R9 K7 ["Viewport"]
       77 LOADK                            R10 K19 ["Regenerate"]
       78 NAMECALL                         R7 R2 K9 ["getText"]
       80 CALL                             R7 3 1
       81 SETTABLEKS                       R7 R6 K4 ["Text"]
       83 SETLIST                          R4 R5 2 [1]
       85 MOVE                             R3 R4
       86 GETUPVAL                         R5 1
       87 GETTABLEKS                       R4 R5 K20 ["createElement"]
       89 GETUPVAL                         R5 2
       90 DUPTABLE                         R6 K22 [{"Size"}]
       91 GETIMPORT                        R7 K25 [UDim2.new]
       93 LOADN                            R8 1
       94 LOADN                            R9 0
       95 LOADN                            R10 0
       96 LOADN                            R11 32
       97 CALL                             R7 4 1
       98 SETTABLEKS                       R7 R6 K21 ["Size"]
      100 DUPTABLE                         R7 K28 [{"Button", "Toolbar"}]
      101 GETTABLEKS                       R9 R1 K2 ["CanConfirm"]
      103 JUMPIFNOT                        R9 ; [+40]
      104 GETUPVAL                         R9 1
      105 GETTABLEKS                       R8 R9 K20 ["createElement"]
      107 GETUPVAL                         R9 3
      108 DUPTABLE                         R10 K31 [{"Disabled", "OnClick", "Size", "Style", "Text", "TextXAlignment"}]
      109 GETTABLEKS                       R11 R0 K13 ["Disabled"]
      111 SETTABLEKS                       R11 R10 K13 ["Disabled"]
      113 GETTABLEKS                       R11 R1 K11 ["OnClick"]
      115 SETTABLEKS                       R11 R10 K11 ["OnClick"]
      117 GETIMPORT                        R11 K25 [UDim2.new]
      119 LOADN                            R12 1
      120 LOADN                            R13 0
      121 LOADN                            R14 0
      122 LOADN                            R15 32
      123 CALL                             R11 4 1
      124 SETTABLEKS                       R11 R10 K21 ["Size"]
      126 GETTABLEKS                       R12 R0 K13 ["Disabled"]
      128 JUMPIFNOT                        R12 ; [+2]
      129 LOADNIL                          R11
      130 JUMP                             ; [+1]
      131 LOADK                            R11 K32 ["PrimaryBrand"]
      132 SETTABLEKS                       R11 R10 K29 ["Style"]
      134 GETTABLEKS                       R11 R1 K6 ["Label"]
      136 SETTABLEKS                       R11 R10 K4 ["Text"]
      138 GETIMPORT                        R11 K35 [Enum.TextXAlignment.Center]
      140 SETTABLEKS                       R11 R10 K30 ["TextXAlignment"]
      142 CALL                             R8 2 1
      143 JUMP                             ; [+1]
      144 LOADNIL                          R8
      145 SETTABLEKS                       R8 R7 K26 ["Button"]
      147 JUMPIFNOT                        R3 ; [+9]
      148 GETUPVAL                         R9 1
      149 GETTABLEKS                       R8 R9 K20 ["createElement"]
      151 GETUPVAL                         R9 4
      152 DUPTABLE                         R10 K37 [{"HorizontalItems"}]
      153 SETTABLEKS                       R3 R10 K36 ["HorizontalItems"]
      155 CALL                             R8 2 1
      156 JUMP                             ; [+1]
      157 LOADNIL                          R8
      158 SETTABLEKS                       R8 R7 K27 ["Toolbar"]
      160 CALL                             R4 3 -1
      161 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["ContextServices"]
       16 GETTABLEKS                       R2 R3 K9 ["Localization"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Packages"]
       22 GETTABLEKS                       R4 R5 K10 ["ViewportToolingFramework"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Packages"]
       29 GETTABLEKS                       R5 R6 K11 ["React"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R6 R1 K12 ["UI"]
       34 GETTABLEKS                       R5 R6 K13 ["IconButton"]
       36 GETTABLEKS                       R7 R1 K12 ["UI"]
       38 GETTABLEKS                       R6 R7 K14 ["Pane"]
       40 GETTABLEKS                       R8 R1 K15 ["Util"]
       42 GETTABLEKS                       R7 R8 K16 ["StyleModifier"]
       44 GETTABLEKS                       R8 R3 K17 ["Toolbar"]
       46 DUPCLOSURE                       R9 K18 [PROTO_0]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R8
       52 RETURN                           R9 1
