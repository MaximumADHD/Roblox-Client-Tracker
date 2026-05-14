PROTO_0:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["Get"]
        4 CALL                             R1 1 1
        5 JUMP                             ; [+8]
        6 NEWTABLE                         R1 0 1
        8 GETIMPORT                        R2 K2 [game]
       10 GETTABLEKS                       R2 R2 K3 ["Workspace"]
       12 SETLIST                          R1 R2 1 [1]
       14 NEWTABLE                         R2 0 0
       16 NEWTABLE                         R3 0 0
       18 LOADN                            R4 0
       19 MOVE                             R5 R1
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 NAMECALL                         R10 R9 K4 ["GetDescendants"]
       25 CALL                             R10 1 3
       26 FORGPREP                         R10
       27 LOADK                            R17 K5 ["Attachment"]
       28 NAMECALL                         R15 R14 K6 ["IsA"]
       30 CALL                             R15 2 1
       31 JUMPIFNOT                        R15 ; [+133]
       32 GETTABLEKS                       R15 R14 K7 ["Parent"]
       34 JUMPIFEQKNIL                     R15 ; [+130]
       36 LOADK                            R18 K8 ["BasePart"]
       37 NAMECALL                         R16 R15 K6 ["IsA"]
       39 CALL                             R16 2 1
       40 JUMPIFNOT                        R16 ; [+124]
       41 GETTABLEKS                       R16 R15 K7 ["Parent"]
       43 JUMPIFEQKNIL                     R16 ; [+121]
       45 GETTABLEKS                       R20 R14 K9 ["Name"]
       47 LOADK                            R22 K5 ["Attachment"]
       48 LOADK                            R23 K10 [""]
       49 NAMECALL                         R20 R20 K11 ["gsub"]
       51 CALL                             R20 3 1
       52 MOVE                             R18 R20
       53 LOADK                            R19 K12 ["_Att"]
       54 CONCAT                           R17 R18 R19
       55 GETTABLE                         R18 R3 R17
       56 JUMPIFNOTEQKNIL                  R18 ; [+108]
       58 GETIMPORT                        R18 K15 [Instance.new]
       60 LOADK                            R19 K16 ["Part"]
       61 CALL                             R18 1 1
       62 SETTABLEKS                       R17 R18 K9 ["Name"]
       64 LOADK                            R19 K17 [{0.1, 0.1, 0.1}]
       65 SETTABLEKS                       R19 R18 K18 ["Size"]
       67 LOADB                            R19 0
       68 SETTABLEKS                       R19 R18 K19 ["CanCollide"]
       70 LOADB                            R19 1
       71 SETTABLEKS                       R19 R18 K20 ["Anchored"]
       73 GETIMPORT                        R19 K22 [Color3.new]
       75 LOADN                            R20 1
       76 LOADN                            R21 1
       77 LOADN                            R22 1
       78 CALL                             R19 3 1
       79 SETTABLEKS                       R19 R18 K23 ["Color"]
       81 GETIMPORT                        R19 K27 [Enum.PartType.Ball]
       83 SETTABLEKS                       R19 R18 K28 ["Shape"]
       85 GETTABLE                         R19 R2 R16
       86 JUMPIFNOTEQKNIL                  R19 ; [+4]
       88 NEWTABLE                         R19 0 0
       90 SETTABLE                         R19 R2 R16
       91 GETTABLEKS                       R21 R15 K9 ["Name"]
       93 GETTABLE                         R20 R19 R21
       94 JUMPIFNOTEQKNIL                  R20 ; [+37]
       96 GETIMPORT                        R21 K15 [Instance.new]
       98 LOADK                            R22 K29 ["Folder"]
       99 CALL                             R21 1 1
      100 GETTABLEKS                       R23 R15 K9 ["Name"]
      102 LOADK                            R24 K30 ["_attachments"]
      103 CONCAT                           R22 R23 R24
      104 SETTABLEKS                       R22 R21 K9 ["Name"]
      106 LOADK                            R24 K31 ["AttachmentFolder"]
      107 LOADB                            R25 1
      108 NAMECALL                         R22 R21 K32 ["SetAttribute"]
      110 CALL                             R22 3 0
      111 MOVE                             R25 R9
      112 NAMECALL                         R23 R16 K33 ["IsDescendantOf"]
      114 CALL                             R23 2 1
      115 JUMPIFNOT                        R23 ; [+2]
      116 MOVE                             R22 R16
      117 JUMP                             ; [+1]
      118 MOVE                             R22 R9
      119 SETTABLEKS                       R22 R21 K7 ["Parent"]
      121 DUPTABLE                         R22 K36 [{"created", "folder"}]
      122 NEWTABLE                         R23 0 0
      124 SETTABLEKS                       R23 R22 K34 ["created"]
      126 SETTABLEKS                       R21 R22 K35 ["folder"]
      128 MOVE                             R20 R22
      129 GETTABLEKS                       R22 R15 K9 ["Name"]
      131 SETTABLE                         R20 R19 R22
      132 GETTABLEKS                       R21 R20 K34 ["created"]
      134 LOADB                            R22 1
      135 SETTABLE                         R22 R21 R17
      136 LOADB                            R21 1
      137 SETTABLE                         R21 R3 R17
      138 GETIMPORT                        R21 K38 [Color3.fromRGB]
      140 MODK                             R22 R4 K39 [256]
      141 DIVK                             R25 R4 K39 [256]
      142 FASTCALL1                        MATH_FLOOR R25 ; [+2]
      143 GETIMPORT                        R24 K42 [math.floor]
      145 CALL                             R24 1 1
      146 MODK                             R23 R24 K39 [256]
      147 DIVK                             R26 R4 K43 [65536]
      148 FASTCALL1                        MATH_FLOOR R26 ; [+2]
      149 GETIMPORT                        R25 K42 [math.floor]
      151 CALL                             R25 1 1
      152 MODK                             R24 R25 K39 [256]
      153 CALL                             R21 3 1
      154 SETTABLEKS                       R21 R18 K23 ["Color"]
      156 GETTABLEKS                       R21 R20 K35 ["folder"]
      158 SETTABLEKS                       R21 R18 K7 ["Parent"]
      160 GETTABLEKS                       R21 R14 K44 ["WorldCFrame"]
      162 SETTABLEKS                       R21 R18 K45 ["CFrame"]
      164 ADDK                             R4 R4 K46 [1]
      165 FORGLOOP                         R10 2 ; [-139]
      167 FORGLOOP                         R5 2 ; [-145]
      169 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
