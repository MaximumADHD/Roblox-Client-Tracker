PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onModelChanged"]
        3 FASTCALL1                        TOSTRING R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [tostring]
        7 CALL                             R2 1 1
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R3 R0 K2 ["model"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K3 ["RbxTexture2"]
       12 JUMPIFEQ                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 NEWTABLE                         R3 0 2
       18 DUPTABLE                         R4 K8 [{"id", "text", "trailing", "isChecked"}]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K9 ["RbxTexture1"]
       22 SETTABLEKS                       R5 R4 K4 ["id"]
       24 GETUPVAL                         R5 3
       25 MOVE                             R6 R1
       26 LOADK                            R7 K10 ["TextureGen"]
       27 LOADK                            R8 K11 ["ModelFastTitle"]
       28 LOADK                            R9 K12 ["Fast (1K diffuse map, 30 sec)"]
       29 CALL                             R5 4 1
       30 SETTABLEKS                       R5 R4 K5 ["text"]
       32 DUPTABLE                         R5 K15 [{["type"] = "Hint", ["text"]}]
       33 GETUPVAL                         R6 3
       34 MOVE                             R7 R1
       35 LOADK                            R8 K10 ["TextureGen"]
       36 LOADK                            R9 K16 ["ModelFastDescription"]
       37 LOADK                            R10 K17 ["Quick flat texture. Great for trying ideas."]
       38 CALL                             R6 4 1
       39 SETTABLEKS                       R6 R5 K5 ["text"]
       41 SETTABLEKS                       R5 R4 K6 ["trailing"]
       43 NOT                              R5 R2
       44 SETTABLEKS                       R5 R4 K7 ["isChecked"]
       46 DUPTABLE                         R5 K8 [{"id", "text", "trailing", "isChecked"}]
       47 GETUPVAL                         R6 2
       48 GETTABLEKS                       R6 R6 K3 ["RbxTexture2"]
       50 SETTABLEKS                       R6 R5 K4 ["id"]
       52 GETUPVAL                         R6 3
       53 MOVE                             R7 R1
       54 LOADK                            R8 K10 ["TextureGen"]
       55 LOADK                            R9 K18 ["ModelQualityTitle"]
       56 LOADK                            R10 K19 ["Quality (4K, PBR, minutes)"]
       57 CALL                             R6 4 1
       58 SETTABLEKS                       R6 R5 K5 ["text"]
       60 DUPTABLE                         R6 K15 [{["type"] = "Hint", ["text"]}]
       61 GETUPVAL                         R7 3
       62 MOVE                             R8 R1
       63 LOADK                            R9 K10 ["TextureGen"]
       64 LOADK                            R10 K20 ["ModelQualityDescription"]
       65 LOADK                            R11 K21 ["Detailed realistic texture. Great for final assets."]
       66 CALL                             R7 4 1
       67 SETTABLEKS                       R7 R6 K5 ["text"]
       69 SETTABLEKS                       R6 R5 K6 ["trailing"]
       71 SETTABLEKS                       R2 R5 K7 ["isChecked"]
       73 SETLIST                          R3 R4 2 [1]
       75 GETUPVAL                         R4 0
       76 GETTABLEKS                       R4 R4 K22 ["createElement"]
       78 GETUPVAL                         R5 4
       79 DUPTABLE                         R6 K30 [{"LayoutOrder", "text", "items", "onActivated", "disabled", "width", "badge", "testId"}]
       80 GETTABLEKS                       R7 R0 K23 ["LayoutOrder"]
       82 SETTABLEKS                       R7 R6 K23 ["LayoutOrder"]
       84 LOADK                            R9 K10 ["TextureGen"]
       85 JUMPIFNOT                        R2 ; [+2]
       86 LOADK                            R10 K31 ["ModelQuality"]
       87 JUMP                             ; [+1]
       88 LOADK                            R10 K32 ["ModelFast"]
       89 NAMECALL                         R7 R1 K33 ["getText"]
       91 CALL                             R7 3 1
       92 SETTABLEKS                       R7 R6 K5 ["text"]
       94 SETTABLEKS                       R3 R6 K24 ["items"]
       96 NEWCLOSURE                       R7 P0
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R7 R6 K25 ["onActivated"]
      100 GETTABLEKS                       R7 R0 K26 ["disabled"]
      102 SETTABLEKS                       R7 R6 K26 ["disabled"]
      104 GETUPVAL                         R7 5
      105 SETTABLEKS                       R7 R6 K27 ["width"]
      107 JUMPIFNOT                        R2 ; [+7]
      108 GETUPVAL                         R7 3
      109 MOVE                             R8 R1
      110 LOADK                            R9 K34 ["Common"]
      111 LOADK                            R10 K35 ["Beta"]
      112 LOADK                            R11 K35 ["Beta"]
      113 CALL                             R7 4 1
      114 JUMP                             ; [+1]
      115 LOADNIL                          R7
      116 SETTABLEKS                       R7 R6 K28 ["badge"]
      118 GETTABLEKS                       R7 R0 K29 ["testId"]
      120 SETTABLEKS                       R7 R6 K29 ["testId"]
      122 CALL                             R4 2 -1
      123 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Gen3d"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       30 GETTABLEKS                       R3 R3 K11 ["Localization"]
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Packages"]
       36 GETTABLEKS                       R5 R5 K12 ["Gen3dCore"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K13 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["CoreGuiComponents"]
       45 GETTABLEKS                       R6 R6 K15 ["ComposerMenu"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K13 ["Src"]
       52 GETTABLEKS                       R7 R7 K16 ["Util"]
       54 GETTABLEKS                       R7 R7 K17 ["getLocalizedTextOrDefault"]
       56 CALL                             R6 1 1
       57 GETTABLEKS                       R7 R4 K18 ["Constants"]
       59 GETTABLEKS                       R7 R7 K19 ["Enums"]
       61 GETTABLEKS                       R7 R7 K20 ["TextureGenModel"]
       63 GETIMPORT                        R8 K23 [UDim.new]
       65 LOADN                            R9 0
       66 LOADN                            R10 500
       67 CALL                             R8 2 1
       68 DUPCLOSURE                       R9 K24 [PROTO_1]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R8
       75 RETURN                           R9 1
