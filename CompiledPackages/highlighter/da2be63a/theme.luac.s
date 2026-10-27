PROTO_0:
        0 LOADK                            R1 K0 ["<font color=\"#%*\">"]
        1 NAMECALL                         R3 R0 K1 ["ToHex"]
        3 CALL                             R3 1 1
        4 NAMECALL                         R1 R1 K2 ["format"]
        6 CALL                             R1 2 1
        7 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       11 LOADK                            R3 K3 ["Theme.setColors expects a table"]
       12 GETIMPORT                        R1 K5 [assert]
       14 CALL                             R1 2 0
       15 MOVE                             R1 R0
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 JUMPIFEQKNIL                     R5 ; [+14]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K6 ["tokenColors"]
       24 SETTABLE                         R5 R6 R4
       25 GETUPVAL                         R6 1
       26 LOADK                            R7 K7 ["<font color=\"#%*\">"]
       27 NAMECALL                         R9 R5 K8 ["ToHex"]
       29 CALL                             R9 1 1
       30 NAMECALL                         R7 R7 K9 ["format"]
       32 CALL                             R7 2 1
       33 SETTABLE                         R7 R6 R4
       34 FORGLOOP                         R1 2 ; [-16]
       36 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["tokenColors"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOTEQKNIL                  R1 ; [+7]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["tokenColors"]
        9 GETTABLEKS                       R2 R2 K1 ["iden"]
       11 RETURN                           R2 1
       12 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["iden"]
        7 RETURN                           R2 1
        8 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R0 16 0
        2 GETUPVAL                         R1 0
        3 GETIMPORT                        R3 K3 [Enum.StudioStyleGuideColor.ScriptBackground]
        5 NAMECALL                         R1 R1 K4 ["GetColor"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K5 ["background"]
       10 GETUPVAL                         R1 0
       11 GETIMPORT                        R3 K7 [Enum.StudioStyleGuideColor.ScriptText]
       13 NAMECALL                         R1 R1 K4 ["GetColor"]
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K8 ["iden"]
       18 GETUPVAL                         R1 0
       19 GETIMPORT                        R3 K10 [Enum.StudioStyleGuideColor.ScriptKeyword]
       21 NAMECALL                         R1 R1 K4 ["GetColor"]
       23 CALL                             R1 2 1
       24 SETTABLEKS                       R1 R0 K11 ["keyword"]
       26 GETUPVAL                         R1 0
       27 GETIMPORT                        R3 K13 [Enum.StudioStyleGuideColor.ScriptBuiltInFunction]
       29 NAMECALL                         R1 R1 K4 ["GetColor"]
       31 CALL                             R1 2 1
       32 SETTABLEKS                       R1 R0 K14 ["builtin"]
       34 GETUPVAL                         R1 0
       35 GETIMPORT                        R3 K16 [Enum.StudioStyleGuideColor.ScriptLuauKeyword]
       37 NAMECALL                         R1 R1 K4 ["GetColor"]
       39 CALL                             R1 2 1
       40 SETTABLEKS                       R1 R0 K17 ["type"]
       42 GETUPVAL                         R1 0
       43 GETIMPORT                        R3 K19 [Enum.StudioStyleGuideColor.ScriptString]
       45 NAMECALL                         R1 R1 K4 ["GetColor"]
       47 CALL                             R1 2 1
       48 SETTABLEKS                       R1 R0 K20 ["string"]
       50 GETUPVAL                         R1 0
       51 GETIMPORT                        R3 K22 [Enum.StudioStyleGuideColor.ScriptNumber]
       53 NAMECALL                         R1 R1 K4 ["GetColor"]
       55 CALL                             R1 2 1
       56 SETTABLEKS                       R1 R0 K23 ["number"]
       58 GETUPVAL                         R1 0
       59 GETIMPORT                        R3 K25 [Enum.StudioStyleGuideColor.ScriptComment]
       61 NAMECALL                         R1 R1 K4 ["GetColor"]
       63 CALL                             R1 2 1
       64 SETTABLEKS                       R1 R0 K26 ["comment"]
       66 GETUPVAL                         R1 0
       67 GETIMPORT                        R3 K28 [Enum.StudioStyleGuideColor.ScriptOperator]
       69 NAMECALL                         R1 R1 K4 ["GetColor"]
       71 CALL                             R1 2 1
       72 SETTABLEKS                       R1 R0 K29 ["operator"]
       74 GETUPVAL                         R1 0
       75 GETIMPORT                        R3 K31 [Enum.StudioStyleGuideColor.ScriptBool]
       77 NAMECALL                         R1 R1 K4 ["GetColor"]
       79 CALL                             R1 2 1
       80 SETTABLEKS                       R1 R0 K32 ["custom"]
       82 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["Theme"]
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K1 ["setColors"]
        7 GETUPVAL                         R1 3
        8 CALL                             R1 0 1
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 4
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K1 [settings]
        2 CALL                             R0 0 1
        3 GETTABLEKS                       R0 R0 K2 ["Studio"]
        5 GETTABLEKS                       R1 R0 K3 ["Theme"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          REF R1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K4 ["setColors"]
       12 MOVE                             R4 R2
       13 CALL                             R4 0 1
       14 CALL                             R3 1 0
       15 GETUPVAL                         R3 1
       16 JUMPIFEQKNIL                     R3 ; [+5]
       18 GETUPVAL                         R3 1
       19 NAMECALL                         R3 R3 K5 ["Disconnect"]
       21 CALL                             R3 1 0
       22 GETTABLEKS                       R3 R0 K6 ["ThemeChanged"]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          REF R1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U2
       30 NAMECALL                         R3 R3 K7 ["Connect"]
       32 CALL                             R3 2 1
       33 SETUPVAL                         R3 1
       34 CLOSEUPVALS                      R1
       35 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["IsStudio"]
        3 CALL                             R1 1 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 GETIMPORT                        R1 K2 [pcall]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 1
       14 JUMPIFNOT                        R1 ; [+2]
       15 MOVE                             R2 R0
       16 CALL                             R2 0 0
       17 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K9 ["types"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 0 10
       18 LOADK                            R3 K10 ["background"]
       19 LOADK                            R4 K11 ["iden"]
       20 LOADK                            R5 K12 ["keyword"]
       21 LOADK                            R6 K13 ["builtin"]
       22 LOADK                            R7 K14 ["type"]
       23 LOADK                            R8 K15 ["string"]
       24 LOADK                            R9 K16 ["number"]
       25 LOADK                            R10 K17 ["comment"]
       26 LOADK                            R11 K18 ["operator"]
       27 LOADK                            R12 K19 ["custom"]
       28 SETLIST                          R2 R3 10 [1]
       30 DUPTABLE                         R3 K22 [{"tokenNames", "tokenColors"}]
       31 SETTABLEKS                       R2 R3 K20 ["tokenNames"]
       33 NEWTABLE                         R4 16 0
       35 GETIMPORT                        R5 K25 [Color3.fromRGB]
       37 LOADN                            R6 30
       38 LOADN                            R7 32
       39 LOADN                            R8 37
       40 CALL                             R5 3 1
       41 SETTABLEKS                       R5 R4 K10 ["background"]
       43 GETIMPORT                        R5 K25 [Color3.fromRGB]
       45 LOADN                            R6 210
       46 LOADN                            R7 211
       47 LOADN                            R8 220
       48 CALL                             R5 3 1
       49 SETTABLEKS                       R5 R4 K11 ["iden"]
       51 GETIMPORT                        R5 K25 [Color3.fromRGB]
       53 LOADN                            R6 235
       54 LOADN                            R7 121
       55 LOADN                            R8 115
       56 CALL                             R5 3 1
       57 SETTABLEKS                       R5 R4 K12 ["keyword"]
       59 GETIMPORT                        R5 K25 [Color3.fromRGB]
       61 LOADN                            R6 143
       62 LOADN                            R7 180
       63 LOADN                            R8 255
       64 CALL                             R5 3 1
       65 SETTABLEKS                       R5 R4 K13 ["builtin"]
       67 GETIMPORT                        R5 K25 [Color3.fromRGB]
       69 LOADN                            R6 82
       70 LOADN                            R7 139
       71 LOADN                            R8 255
       72 CALL                             R5 3 1
       73 SETTABLEKS                       R5 R4 K14 ["type"]
       75 GETIMPORT                        R5 K25 [Color3.fromRGB]
       77 LOADN                            R6 142
       78 LOADN                            R7 233
       79 LOADN                            R8 182
       80 CALL                             R5 3 1
       81 SETTABLEKS                       R5 R4 K15 ["string"]
       83 GETIMPORT                        R5 K25 [Color3.fromRGB]
       85 LOADN                            R6 242
       86 LOADN                            R7 186
       87 LOADN                            R8 42
       88 CALL                             R5 3 1
       89 SETTABLEKS                       R5 R4 K16 ["number"]
       91 GETIMPORT                        R5 K25 [Color3.fromRGB]
       93 LOADN                            R6 106
       94 LOADN                            R7 111
       95 LOADN                            R8 129
       96 CALL                             R5 3 1
       97 SETTABLEKS                       R5 R4 K17 ["comment"]
       99 GETIMPORT                        R5 K25 [Color3.fromRGB]
      101 LOADN                            R6 180
      102 LOADN                            R7 186
      103 LOADN                            R8 218
      104 CALL                             R5 3 1
      105 SETTABLEKS                       R5 R4 K18 ["operator"]
      107 GETIMPORT                        R5 K25 [Color3.fromRGB]
      109 LOADN                            R6 158
      110 LOADN                            R7 119
      111 LOADN                            R8 255
      112 CALL                             R5 3 1
      113 SETTABLEKS                       R5 R4 K19 ["custom"]
      115 SETTABLEKS                       R4 R3 K21 ["tokenColors"]
      117 MOVE                             R4 R2
      118 LOADNIL                          R5
      119 LOADNIL                          R6
      120 FORGPREP                         R4
      121 GETTABLEKS                       R10 R3 K21 ["tokenColors"]
      123 GETTABLE                         R9 R10 R8
      124 JUMPIFNOTEQKNIL                  R9 ; [+2]
      126 LOADB                            R11 0 +1
      127 LOADB                            R11 1
      128 LOADK                            R12 K26 ["Theme.tokenColors is missing an entry for %*"]
      129 MOVE                             R14 R8
      130 NAMECALL                         R12 R12 K27 ["format"]
      132 CALL                             R12 2 1
      133 FASTCALL2                        ASSERT R11 R12 ; [+3]
      135 GETIMPORT                        R10 K29 [assert]
      137 CALL                             R10 2 0
      138 FORGLOOP                         R4 2 ; [-18]
      140 LOADNIL                          R4
      141 NEWTABLE                         R5 0 0
      143 DUPCLOSURE                       R6 K30 [PROTO_0]
      144 GETTABLEKS                       R7 R3 K21 ["tokenColors"]
      146 LOADNIL                          R8
      147 LOADNIL                          R9
      148 FORGPREP                         R7
      149 LOADK                            R12 K31 ["<font color=\"#%*\">"]
      150 NAMECALL                         R14 R11 K32 ["ToHex"]
      152 CALL                             R14 1 1
      153 NAMECALL                         R12 R12 K27 ["format"]
      155 CALL                             R12 2 1
      156 SETTABLE                         R12 R5 R10
      157 FORGLOOP                         R7 2 ; [-9]
      159 DUPCLOSURE                       R7 K33 [PROTO_1]
      160 CAPTURE                          VAL R3
      161 CAPTURE                          VAL R5
      162 SETTABLEKS                       R7 R3 K34 ["setColors"]
      164 DUPCLOSURE                       R7 K35 [PROTO_2]
      165 CAPTURE                          VAL R3
      166 SETTABLEKS                       R7 R3 K36 ["getColor"]
      168 DUPCLOSURE                       R7 K37 [PROTO_3]
      169 CAPTURE                          VAL R5
      170 SETTABLEKS                       R7 R3 K38 ["getOpenTag"]
      172 NEWCLOSURE                       R7 P4
      173 CAPTURE                          VAL R0
      174 CAPTURE                          VAL R3
      175 CAPTURE                          REF R4
      176 SETTABLEKS                       R7 R3 K39 ["matchStudioSettings"]
      178 CLOSEUPVALS                      R4
      179 RETURN                           R3 1
