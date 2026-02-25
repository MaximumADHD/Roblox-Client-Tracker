PROTO_0:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["Get"]
        4 CALL                             R1 1 1
        5 JUMP                             ; [+7]
        6 GETIMPORT                        R2 K2 [game]
        8 GETTABLEKS                       R1 R2 K3 ["Workspace"]
       10 NAMECALL                         R1 R1 K4 ["GetChildren"]
       12 CALL                             R1 1 1
       13 NEWTABLE                         R2 0 0
       15 MOVE                             R3 R1
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 FORGPREP                         R3
       19 NAMECALL                         R8 R7 K5 ["GetDescendants"]
       21 CALL                             R8 1 3
       22 FORGPREP                         R8
       23 LOADK                            R15 K6 ["Attachment"]
       24 NAMECALL                         R13 R12 K7 ["IsA"]
       26 CALL                             R13 2 1
       27 JUMPIFNOT                        R13 ; [+69]
       28 GETTABLEKS                       R13 R12 K8 ["Parent"]
       30 JUMPIFEQKNIL                     R13 ; [+66]
       32 LOADK                            R16 K9 ["BasePart"]
       33 NAMECALL                         R14 R13 K7 ["IsA"]
       35 CALL                             R14 2 1
       36 JUMPIFNOT                        R14 ; [+60]
       37 GETTABLEKS                       R14 R13 K8 ["Parent"]
       39 JUMPIFEQKNIL                     R14 ; [+57]
       41 GETTABLEKS                       R18 R12 K10 ["Name"]
       43 LOADK                            R20 K6 ["Attachment"]
       44 LOADK                            R21 K11 [""]
       45 NAMECALL                         R18 R18 K12 ["gsub"]
       47 CALL                             R18 3 1
       48 MOVE                             R16 R18
       49 LOADK                            R17 K13 ["_Att"]
       50 CONCAT                           R15 R16 R17
       51 GETTABLE                         R16 R2 R14
       52 JUMPIFEQKNIL                     R16 ; [+4]
       54 GETTABLE                         R17 R16 R15
       55 JUMPIFNOTEQKNIL                  R17 ; [+41]
       57 GETIMPORT                        R17 K16 [Instance.new]
       59 LOADK                            R18 K17 ["Part"]
       60 CALL                             R17 1 1
       61 SETTABLEKS                       R15 R17 K10 ["Name"]
       63 LOADK                            R18 K18 [{0.1, 0.1, 0.1}]
       64 SETTABLEKS                       R18 R17 K19 ["Size"]
       66 LOADB                            R18 0
       67 SETTABLEKS                       R18 R17 K20 ["CanCollide"]
       69 LOADB                            R18 1
       70 SETTABLEKS                       R18 R17 K21 ["Anchored"]
       72 GETIMPORT                        R18 K23 [Color3.new]
       74 LOADN                            R19 1
       75 LOADN                            R20 1
       76 LOADN                            R21 1
       77 CALL                             R18 3 1
       78 SETTABLEKS                       R18 R17 K24 ["Color"]
       80 GETIMPORT                        R18 K28 [Enum.PartType.Ball]
       82 SETTABLEKS                       R18 R17 K29 ["Shape"]
       84 JUMPIFNOTEQKNIL                  R16 ; [+4]
       86 NEWTABLE                         R16 0 0
       88 SETTABLE                         R16 R2 R14
       89 LOADB                            R18 1
       90 SETTABLE                         R18 R16 R15
       91 SETTABLEKS                       R13 R17 K8 ["Parent"]
       93 GETTABLEKS                       R18 R12 K30 ["WorldCFrame"]
       95 SETTABLEKS                       R18 R17 K31 ["CFrame"]
       97 FORGLOOP                         R8 2 ; [-75]
       99 FORGLOOP                         R3 2 ; [-81]
      101 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_0]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
