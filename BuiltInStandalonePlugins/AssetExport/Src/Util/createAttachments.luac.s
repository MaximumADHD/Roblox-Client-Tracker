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
       31 JUMPIFNOT                        R15 ; [+132]
       32 GETTABLEKS                       R15 R14 K7 ["Parent"]
       34 JUMPIFEQKNIL                     R15 ; [+129]
       36 LOADK                            R18 K8 ["BasePart"]
       37 NAMECALL                         R16 R15 K6 ["IsA"]
       39 CALL                             R16 2 1
       40 JUMPIFNOT                        R16 ; [+123]
       41 GETTABLEKS                       R16 R15 K7 ["Parent"]
       43 JUMPIFEQKNIL                     R16 ; [+120]
       45 GETTABLEKS                       R18 R14 K9 ["Name"]
       47 LOADK                            R20 K5 ["Attachment"]
       48 LOADK                            R21 K10 [""]
       49 NAMECALL                         R18 R18 K11 ["gsub"]
       51 CALL                             R18 3 1
       52 LOADK                            R19 K12 ["_Att"]
       53 CONCAT                           R17 R18 R19
       54 GETTABLE                         R18 R3 R17
       55 JUMPIFNOTEQKNIL                  R18 ; [+108]
       57 GETIMPORT                        R18 K15 [Instance.new]
       59 LOADK                            R19 K16 ["Part"]
       60 CALL                             R18 1 1
       61 SETTABLEKS                       R17 R18 K9 ["Name"]
       63 LOADK                            R19 K17 [{0.1, 0.1, 0.1}]
       64 SETTABLEKS                       R19 R18 K18 ["Size"]
       66 LOADB                            R19 0
       67 SETTABLEKS                       R19 R18 K19 ["CanCollide"]
       69 LOADB                            R19 1
       70 SETTABLEKS                       R19 R18 K20 ["Anchored"]
       72 GETIMPORT                        R19 K22 [Color3.new]
       74 LOADN                            R20 1
       75 LOADN                            R21 1
       76 LOADN                            R22 1
       77 CALL                             R19 3 1
       78 SETTABLEKS                       R19 R18 K23 ["Color"]
       80 GETIMPORT                        R19 K27 [Enum.PartType.Ball]
       82 SETTABLEKS                       R19 R18 K28 ["Shape"]
       84 GETTABLE                         R19 R2 R16
       85 JUMPIFNOTEQKNIL                  R19 ; [+4]
       87 NEWTABLE                         R19 0 0
       89 SETTABLE                         R19 R2 R16
       90 GETTABLEKS                       R21 R15 K9 ["Name"]
       92 GETTABLE                         R20 R19 R21
       93 JUMPIFNOTEQKNIL                  R20 ; [+37]
       95 GETIMPORT                        R21 K15 [Instance.new]
       97 LOADK                            R22 K29 ["Folder"]
       98 CALL                             R21 1 1
       99 GETTABLEKS                       R23 R15 K9 ["Name"]
      101 LOADK                            R24 K30 ["_attachments"]
      102 CONCAT                           R22 R23 R24
      103 SETTABLEKS                       R22 R21 K9 ["Name"]
      105 LOADK                            R24 K31 ["AttachmentFolder"]
      106 LOADB                            R25 1
      107 NAMECALL                         R22 R21 K32 ["SetAttribute"]
      109 CALL                             R22 3 0
      110 MOVE                             R25 R9
      111 NAMECALL                         R23 R16 K33 ["IsDescendantOf"]
      113 CALL                             R23 2 1
      114 JUMPIFNOT                        R23 ; [+2]
      115 MOVE                             R22 R16
      116 JUMP                             ; [+1]
      117 MOVE                             R22 R9
      118 SETTABLEKS                       R22 R21 K7 ["Parent"]
      120 DUPTABLE                         R22 K36 [{"created", "folder"}]
      121 NEWTABLE                         R23 0 0
      123 SETTABLEKS                       R23 R22 K34 ["created"]
      125 SETTABLEKS                       R21 R22 K35 ["folder"]
      127 MOVE                             R20 R22
      128 GETTABLEKS                       R22 R15 K9 ["Name"]
      130 SETTABLE                         R20 R19 R22
      131 GETTABLEKS                       R21 R20 K34 ["created"]
      133 LOADB                            R22 1
      134 SETTABLE                         R22 R21 R17
      135 LOADB                            R21 1
      136 SETTABLE                         R21 R3 R17
      137 GETIMPORT                        R21 K38 [Color3.fromRGB]
      139 MODK                             R22 R4 K39 [256]
      140 DIVK                             R25 R4 K39 [256]
      141 FASTCALL1                        MATH_FLOOR R25 ; [+2]
      142 GETIMPORT                        R24 K42 [math.floor]
      144 CALL                             R24 1 1
      145 MODK                             R23 R24 K39 [256]
      146 DIVK                             R26 R4 K43 [65536]
      147 FASTCALL1                        MATH_FLOOR R26 ; [+2]
      148 GETIMPORT                        R25 K42 [math.floor]
      150 CALL                             R25 1 1
      151 MODK                             R24 R25 K39 [256]
      152 CALL                             R21 3 1
      153 SETTABLEKS                       R21 R18 K23 ["Color"]
      155 GETTABLEKS                       R21 R20 K35 ["folder"]
      157 SETTABLEKS                       R21 R18 K7 ["Parent"]
      159 GETTABLEKS                       R21 R14 K44 ["WorldCFrame"]
      161 SETTABLEKS                       R21 R18 K45 ["CFrame"]
      163 ADDK                             R4 R4 K46 [1]
      164 FORGLOOP                         R10 2 ; [-138]
      166 FORGLOOP                         R5 2 ; [-144]
      168 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
