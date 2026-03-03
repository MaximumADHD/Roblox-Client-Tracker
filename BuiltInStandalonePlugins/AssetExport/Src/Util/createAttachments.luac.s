PROTO_0:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["Get"]
        4 CALL                             R1 1 1
        5 JUMP                             ; [+8]
        6 NEWTABLE                         R1 0 1
        8 GETIMPORT                        R3 K2 [game]
       10 GETTABLEKS                       R2 R3 K3 ["Workspace"]
       12 SETLIST                          R1 R2 1 [1]
       14 NEWTABLE                         R2 0 0
       16 LOADN                            R3 0
       17 MOVE                             R4 R1
       18 LOADNIL                          R5
       19 LOADNIL                          R6
       20 FORGPREP                         R4
       21 NAMECALL                         R9 R8 K4 ["GetDescendants"]
       23 CALL                             R9 1 3
       24 FORGPREP                         R9
       25 LOADK                            R16 K5 ["Attachment"]
       26 NAMECALL                         R14 R13 K6 ["IsA"]
       28 CALL                             R14 2 1
       29 JUMPIFNOT                        R14 ; [+143]
       30 GETTABLEKS                       R14 R13 K7 ["Parent"]
       32 JUMPIFEQKNIL                     R14 ; [+140]
       34 LOADK                            R17 K8 ["BasePart"]
       35 NAMECALL                         R15 R14 K6 ["IsA"]
       37 CALL                             R15 2 1
       38 JUMPIFNOT                        R15 ; [+134]
       39 GETTABLEKS                       R15 R14 K7 ["Parent"]
       41 JUMPIFEQKNIL                     R15 ; [+131]
       43 GETTABLEKS                       R19 R13 K9 ["Name"]
       45 LOADK                            R21 K5 ["Attachment"]
       46 LOADK                            R22 K10 [""]
       47 NAMECALL                         R19 R19 K11 ["gsub"]
       49 CALL                             R19 3 1
       50 MOVE                             R17 R19
       51 LOADK                            R18 K12 ["_Att"]
       52 CONCAT                           R16 R17 R18
       53 GETTABLE                         R17 R2 R15
       54 JUMPIFEQKNIL                     R17 ; [+14]
       56 GETTABLEKS                       R19 R14 K9 ["Name"]
       58 GETTABLE                         R18 R17 R19
       59 JUMPIFEQKNIL                     R18 ; [+9]
       61 GETTABLEKS                       R21 R14 K9 ["Name"]
       63 GETTABLE                         R20 R17 R21
       64 GETTABLEKS                       R19 R20 K13 ["created"]
       66 GETTABLE                         R18 R19 R16
       67 JUMPIFNOTEQKNIL                  R18 ; [+105]
       69 GETIMPORT                        R18 K16 [Instance.new]
       71 LOADK                            R19 K17 ["Part"]
       72 CALL                             R18 1 1
       73 SETTABLEKS                       R16 R18 K9 ["Name"]
       75 LOADK                            R19 K18 [{0.1, 0.1, 0.1}]
       76 SETTABLEKS                       R19 R18 K19 ["Size"]
       78 LOADB                            R19 0
       79 SETTABLEKS                       R19 R18 K20 ["CanCollide"]
       81 LOADB                            R19 1
       82 SETTABLEKS                       R19 R18 K21 ["Anchored"]
       84 GETIMPORT                        R19 K23 [Color3.new]
       86 LOADN                            R20 1
       87 LOADN                            R21 1
       88 LOADN                            R22 1
       89 CALL                             R19 3 1
       90 SETTABLEKS                       R19 R18 K24 ["Color"]
       92 GETIMPORT                        R19 K28 [Enum.PartType.Ball]
       94 SETTABLEKS                       R19 R18 K29 ["Shape"]
       96 JUMPIFNOTEQKNIL                  R17 ; [+4]
       98 NEWTABLE                         R17 0 0
      100 SETTABLE                         R17 R2 R15
      101 GETTABLEKS                       R20 R14 K9 ["Name"]
      103 GETTABLE                         R19 R17 R20
      104 JUMPIFNOTEQKNIL                  R19 ; [+37]
      106 GETIMPORT                        R20 K16 [Instance.new]
      108 LOADK                            R21 K30 ["Folder"]
      109 CALL                             R20 1 1
      110 GETTABLEKS                       R22 R14 K9 ["Name"]
      112 LOADK                            R23 K31 ["_attachments"]
      113 CONCAT                           R21 R22 R23
      114 SETTABLEKS                       R21 R20 K9 ["Name"]
      116 LOADK                            R23 K32 ["AttachmentFolder"]
      117 LOADB                            R24 1
      118 NAMECALL                         R21 R20 K33 ["SetAttribute"]
      120 CALL                             R21 3 0
      121 MOVE                             R24 R8
      122 NAMECALL                         R22 R15 K34 ["IsDescendantOf"]
      124 CALL                             R22 2 1
      125 JUMPIFNOT                        R22 ; [+2]
      126 MOVE                             R21 R15
      127 JUMP                             ; [+1]
      128 MOVE                             R21 R8
      129 SETTABLEKS                       R21 R20 K7 ["Parent"]
      131 DUPTABLE                         R21 K36 [{"created", "folder"}]
      132 NEWTABLE                         R22 0 0
      134 SETTABLEKS                       R22 R21 K13 ["created"]
      136 SETTABLEKS                       R20 R21 K35 ["folder"]
      138 MOVE                             R19 R21
      139 GETTABLEKS                       R21 R14 K9 ["Name"]
      141 SETTABLE                         R19 R17 R21
      142 GETTABLEKS                       R20 R19 K13 ["created"]
      144 LOADB                            R21 1
      145 SETTABLE                         R21 R20 R16
      146 GETIMPORT                        R20 K38 [Color3.fromRGB]
      148 MODK                             R21 R3 K39 [256]
      149 DIVK                             R24 R3 K39 [256]
      150 FASTCALL1                        MATH_FLOOR R24 ; [+2]
      151 GETIMPORT                        R23 K42 [math.floor]
      153 CALL                             R23 1 1
      154 MODK                             R22 R23 K39 [256]
      155 DIVK                             R25 R3 K43 [65536]
      156 FASTCALL1                        MATH_FLOOR R25 ; [+2]
      157 GETIMPORT                        R24 K42 [math.floor]
      159 CALL                             R24 1 1
      160 MODK                             R23 R24 K39 [256]
      161 CALL                             R20 3 1
      162 SETTABLEKS                       R20 R18 K24 ["Color"]
      164 GETTABLEKS                       R20 R19 K35 ["folder"]
      166 SETTABLEKS                       R20 R18 K7 ["Parent"]
      168 GETTABLEKS                       R20 R13 K44 ["WorldCFrame"]
      170 SETTABLEKS                       R20 R18 K45 ["CFrame"]
      172 ADDK                             R3 R3 K46 [1]
      173 FORGLOOP                         R9 2 ; [-149]
      175 FORGLOOP                         R4 2 ; [-155]
      177 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
